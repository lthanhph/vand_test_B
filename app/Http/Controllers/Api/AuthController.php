<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use App\Repositories\UserRepository;

class AuthController extends Controller
{
    private $repository;
    public function __construct()
    {
        $this->repository = new UserRepository();
    }

    public function login(Request $request)
    {
        $validator = Validator::make(
            $request->all(), 
            $this->repository->loginRules, 
            ['email.exists' => 'User\'s email is not exist']
        );

        if ($validator->fails()) {
            return response([
                'code' => 400,
                'message' => $validator->errors()->first()
            ]);
        }

        $input = $validator->validated();

        if (Auth::attempt($input)) {
            $user = $this->repository->getByEmail($input['email']);

            return response()->json([
                'code' => 200,
                'message' => 'login success',
                'data' => $user,
            ]);
        }

        return response()->json([
            'code' => 400,
            'message' => 'login failed! email or password is invalid'
        ]);
    }

    public function register(Request $request)
    {
        $validator = Validator::make(
            $request->all(),
            $this->repository->rules,
        );
        
        if ($validator->fails()) {
            return response()->json([
                'code' => 400,
                'message' => $validator->errors()->first(),
            ]);
        }

        $input = $validator->validated();
        $user = $this->repository->create($input);

        return response()->json([
            'code' => 200,
            'message' => 'register success',
            'data' => $user,
        ]);
    }
}
