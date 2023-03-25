<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class LoginController extends Controller
{
    function LOGIN(Request $req)
    {

            $req->validate([
                'email' => 'required|email',
                'password' => 'required'
            ]);

        $remember_me = $req->has('remember_me') ? true : false;
        if (Auth::attempt(array('email' => $req->email, 'password' => $req->password), $remember_me)) {

            if(Auth::user()->status != 1)
            {
                Auth::logout();
                return back()->with('error', "Your account is disabled! Please contact the admistration");
            }

            if(Auth::user()->hasRole('admin')){
                return redirect()->route('admin_dashboard');
            }
            else if(Auth::user()->hasRole('student')){

                return redirect()->route('student_dashboard');
            }
            else if(Auth::user()->hasRole('faculty')){

                return redirect()->route('faculty_dashboard');
            }
            else{
                Auth::logout();
                return back()->with('error', "These credentials doesn't match with our records");
            }


        } else {
            return back()->with('error', "These credentials doesn't match with our records");
        }
    }



    function LOGOUT()
    {
        Auth::logout();
        return redirect()->route('adminlogin');
    }
}
