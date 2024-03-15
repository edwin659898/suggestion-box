<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use AfricasTalking\SDK\AfricasTalking;
use App\Imports\UsersImport;
use App\Models\Suggestion;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;
use Inertia\Inertia;
use Illuminate\Support\Str;
use Maatwebsite\Excel\Facades\Excel;

class ResponseController extends Controller
{

    public function messages()
    {
        $startDate = Carbon::parse(request()->input('startDate'))->format('Y-m-d h:i:s');
        $endDate = Carbon::parse(request()->input('endDate'))->format('Y-m-d h:i:s');
        $messages = Suggestion::query()
            ->when(request()->input('term'), function ($query, $term) {
                $query->Where('query', 'like', "%{$term}%");
                $query->where('addressed', 'open');
                $query->orWhere('response', 'like', "%{$term}%");
                $query->orWhereHas('initiator', function ($query) use ($term) {
                    $query->where('name', 'like', "%{$term}%");
                    $query->orWhere('phone_number', 'like', "%{$term}%");
                    $query->orWhere('site', 'like', "%{$term}%");
                    $query->orWhere('dept', 'like', "%{$term}%");
                    $query->orWhere('supervisor_email', 'like', "%{$term}%");
                });
            })
            ->when(request()->input('site'), function ($query, $site) {
                $query->WhereHas('initiator', function ($query) use ($site) {
                    $query->Where('site', 'like', "%{$site}%");
                });
            })
            ->when(request()->input('endDate'), function ($query) use ($startDate, $endDate) {
                $query->whereBetween('created_at', [$startDate, $endDate]);
            })
            ->when(request()->input('dept'), function ($query, $dept) {
                $query->WhereHas('initiator', function ($query) use ($dept) {
                    $query->Where('dept', 'like', "%{$dept}%");
                });
                $query->orWhereHas('dept', function ($query) use ($dept) {
                    $query->Where('department', 'like', "%{$dept}%");
                });
            })
            ->where('addressed', 'open')
            ->latest()
            ->paginate(10)
            ->withQueryString()
            ->through(fn ($sugg) => [
                'id' => $sugg->id,
                'date' => $sugg->created_at->format('d/m/Y'),
                'user' => $sugg->initiator,
                'department' => $sugg->dept,
                'query' => Str::limit($sugg->query, 20),
                'type' => $sugg->type,
                'addressed' => $sugg->addressed,
                'response' => Str::limit($sugg->response, 20),
                'canSee' => [
                    $my_roles = \Arr::flatten(auth()->user()->roles->toArray()),
                    'HR' => in_array($sugg->access_role, $my_roles),
                    'CM' => in_array($sugg->access_role, $my_roles),
                ]
            ]);

        return Inertia::render('Admin/Message', [
            'Messages' => $messages,
            'filters' => request()->all('dept', 'site', 'term', 'startDate', 'endDate'),
        ]);
    }

    public function viewMsg($id)
    {
        $my_roles = \Arr::flatten(auth()->user()->roles->toArray());
        $message = Suggestion::findOrFail($id);
        if (!in_array($message->access_role, $my_roles)) {
            abort(403, 'Unauthorised access');
        }
        $message->load('initiator', 'dept');

        return Inertia::render('Admin/Respond', [
            'Message' => $message,
        ]);
    }

    public function closeMessage($id)
    {
        $message = Suggestion::findOrFail($id)->update(['addressed' => 'closed']);
        return back()->withFlash('message marked as addressed');
    }

    public function update(Request $request, $id)
    {
        $data = $request->validate(['response' => 'required']);
        $message = Suggestion::findorFail($id);
        $message->update($data);
        if ($message->initiator->country == 'Kenya') {
            $username = env('USERNAME_KE');
            $apiKey   = env('PASS_KE');
            $from = env('SENDER_KE');
        } else {
            $username = env('USERNAME_UG');
            $apiKey   = env('PASS_UG');
            $from = env('SENDER_UG');
        }

        $this->sendSMS($username, $apiKey, $from, $message);
        //Log::info($result);
        return back()->withFlash('Respose updated');
    }

    protected function sendSMS($username, $apiKey, $from, $message)
    {
        $AT       = new AfricasTalking($username, $apiKey);
        $sms      = $AT->sms();
        $result   = $sms->send([
            'from' => $from,
            'to'      => $message->initiator->phone_number,
            'message' => 'Response given to your query is "' . $message->response . '"',
        ]);
    }

    public function UploadUsers()
    {
        return Inertia::render('Admin/Upload');
    }

    public function storeUsers(Request $request)
    {
        \Excel::import(new UsersImport(), $request->file('users'));
        return redirect('users')->withFlash('Users Uploaaaaded');
    }
}
