<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Repositories\UserRepository;

class CheckApiToken
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $userRepository = new UserRepository();
        $user = $userRepository->getByApiToken($request->api_token);

        if (!empty($user)) {
            return $next($request);
        }

        return response()->json([
            'code' => 400,
            'message' => 'Api Token is invalid'
        ]); 
    }
}
