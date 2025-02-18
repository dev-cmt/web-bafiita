<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

class MemberMiddleware
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
        if (Auth::check()) {
            if (Auth::user()->status == '5') {
                // return redirect()->route('registation-payment.create');
                return redirect()->route('member_renew.create');
            }else{
                if (Auth::user()->status == '0') {
                    return redirect()->route('member-approve.padding');
                }else{
                    return $next($request);
                }
            }
        }
    }
}
