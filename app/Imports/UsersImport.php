<?php

namespace App\Imports;

use App\Models\User;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Concerns\ToCollection;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Maatwebsite\Excel\Concerns\ToModel;

class UsersImport implements ToCollection, WithHeadingRow
{
    private $password;

    public function collection(Collection $rows)
    {
        foreach ($rows as $row) {
            User::updateOrCreate(
                [
                    'id' => $row['id']
                ],
                [
                    'name' => $row['name'],
                    'job_title' => $row['job_title'],
                    'email' => $row['email'],
                    'phone_number' => '+' . $row['phone_number'],
                    'provider' => $row['provider'],
                    'country' => $row['country'],
                    'site' => $row['site'],
                    'dept' => $row['dept'],
                    'supervisor_email' => $row['supervisor_email'],
                    'password'  =>  $this->password,
                ]
            );
        }
    }
    public function __construct()
    {
        $this->password = Hash::make(123456);
    }
    // /**
    //  * @param array $row
    //  *
    //  * @return \Illuminate\Database\Eloquent\Model|null
    //  */
    // public function model(array $row)
    // {
    //     $user = User::findorFail($row['id']);
    //     if ($user) {
    //         $user->update([
    //             'name' => $row['name'],
    //             'job_title' => $row['job_title'],
    //             'email' => $row['email'],
    //             'phone_number' => '+' . $row['phone_number'],
    //             'provider' => $row['provider'],
    //             'country' => $row['country'],
    //             'site' => $row['site'],
    //             'dept' => $row['dept'],
    //             'supervisor_email' => $row['supervisor_email'],
    //         ]);

    //     }

    //     return new User([

    //     ]);
    // }
}
