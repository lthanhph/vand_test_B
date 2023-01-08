<?php

namespace App\Repositories;

use App\Models\User;
use Illuminate\Support\Str;

class UserRepository
{
    public $rules = [
        'name' => 'required|max:50',
        'email' => 'required|max:50|email|unique:users,email',
        'password' => 'required|min:3|max:255',
        'gender' => 'required|numeric',
        'address' => 'required',
        'phone' => 'required|numeric',
    ];

    public $loginRules = [
        'email' => 'required|max:50|email|exists:users,email',
        'password' => 'required|min:3|max:255'
    ];

    public function generateApiToken() {
        $apiToken = Str::random(50);
        $user = $this->getByApiToken($apiToken);

        if (!empty($user)) {
            $try = 1;
            $max = 10;
            while($try <= $max) {
                $apiToken = Str::random(50);
                $user = $this->getByApiToken($apiToken);

                if (empty($user)) {
                    break;
                } else if ($try == $max) {
                    return false;
                }

                $try++;
            }
        }

        return $apiToken;
    }

    public function getByEmail($email) 
    {
        return User::where('email', $email)->first();
    }

    public function getByApiToken($apiToken) 
    {
        return User::where('api_token', $apiToken)->first();
    }

    public function create($input)
    {
        $input['api_token'] = $this->generateApiToken();
        return User::create($input);
    }
}