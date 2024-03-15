<?php

namespace App\Http\Controllers;

use AfricasTalking\SDK\AfricasTalking;
use App\Models\Department;
use App\Models\SMSProgress;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class TwoWaySMS extends Controller
{
    public function SendSMS($message, $phone_number, $country)
    {
        if ($country == 'Kenya') {
            $username = env('USERNAME_KE');
            $apiKey   = env('PASS_KE');
            $AT       = new AfricasTalking($username, $apiKey);
            $sms      = $AT->sms();
            $result   = $sms->send([
                'from' => '20384',
                'to'      => $phone_number,
                'message' => $message,
            ]);
        } else {
            $username = env('USERNAME_UG');
            $apiKey   = env('PASS_UG');
            $AT       = new AfricasTalking($username, $apiKey);
            $sms      = $AT->sms();
            $result   = $sms->send([
                'from' => '6115',
                'to'      => $phone_number,
                'message' => $message,
            ]);
        }
    }

    public function index(Request $request)
    {
        $incoming_text = $request['text'];
        $phone_number = $request['from'];
        $k = $phone_number;
        $a = substr($k, 1, 3);
        if ($a == '254') {
            $country = 'Kenya';
        } else {
            $country = 'Uganda';
        }

        $find_user = User::where('phone_number', $phone_number)->first();

        if (!$find_user) {
            $message = 'Sorry We are unable find this number on our database.Kindly contact HR for assistance';
            $this->SendSMS($message, $phone_number, $country);
        } else {
            $progress = SMSProgress::where('user_id', $find_user->id)->first();
            if ($progress) {
                if ($progress->progress == 1) {
                    $depts = Department::pluck('id')->toArray();
                    if (in_array((int)$incoming_text, $depts)) {
                        $this->sendType($find_user, $incoming_text, $country);
                    } else {
                        $this->WrongSelection($find_user, $country);
                    };
                } elseif ($progress->progress == 2) {
                    $array = [1, 2];
                    if (in_array((int)$incoming_text, $array)) {
                        $this->TypeQuery($find_user, $incoming_text, $country);
                    } else {
                        $this->WrongSelection($find_user, $country);
                    };
                } elseif ($progress->progress == 3) {
                    SMSProgress::where('user_id', $find_user->id)->first()->update(['progress' => '4', 'query' => $incoming_text]);
                    $this->EndIt($find_user, $country);
                }
            } else {
                $this->SelectDept($find_user, $country);
            }
        }
    }

    public function SelectDept($user, $country)
    {
        $array = [];
        $depts = Department::select('id', 'department')->get();
        foreach ($depts as $dept) {
            $array[$dept->id] = $dept->department;
        }
        $flattened = $array;
        array_walk($flattened, function (&$value, $key) {
            $value = "{$key}:{$value}";
        });
        $message = "Welcome to BGF suggestion box. Please select department in query\n" .
            implode("\n ", $flattened);
        $this->SendSMS($message, $user->phone_number, $country);
        SMSProgress::create(['user_id' => $user->id, 'progress' => '1']);
    }

    public function sendType($user, $incoming_text, $country)
    {
        $message = "1: Do you want HOD in Copy\n 2: Confidential Message";
        $this->SendSMS($message, $user->phone_number, $country);
        SMSProgress::where('user_id', $user->id)->first()->update(['progress' => '2', 'department_id' => $incoming_text]);
    }

    public function TypeQuery($user, $incoming_text, $country)
    {
        $message = 'Type your Message';
        $this->SendSMS($message, $user->phone_number, $country);
        SMSProgress::where('user_id', $user->id)->first()->update(['progress' => '3', 'type' => $incoming_text]);
    }

    public function EndIt($user, $country)
    {
        $message = 'Your message has been well received. We shall revert back';
        $this->SendSMS($message, $user->phone_number, $country);
    }

    public function WrongSelection($user, $country)
    {
        $message = 'Invalid choice please try again';
        $this->SendSMS($message, $user->phone_number, $country);
    }
}
