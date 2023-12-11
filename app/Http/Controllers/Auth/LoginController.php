<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

class LoginController extends Controller
{
  

    use AuthenticatesUsers;

    /**
     * 
     *
     * @var string
     */
    // protected $redirectTo = RouteServiceProvider::HOME;
    protected function authenticated()
    {
        if(Auth::user()->role_as == '1') //1 = Admin Login
        {
            return redirect('dashboard')->with('status','Welcome to your dashboard');
        }
        elseif(Auth::user()->role_as == '0') // Normal User Login
        {
            return redirect('/')->with('status','Logged in successfully');
        }
    }
    /**
     * 
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}

