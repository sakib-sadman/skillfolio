<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;
class LoginController extends Controller
{

    function account_create(Request $request){
        $request->validate([
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->password =  Hash::make($request->password);
        $user->status =  0;
        $user->address =  $request->address ?? null;
        $user->phone =  $request->phone ?? null;
        $user->gender =  $request->gender ?? null;
        $user->save();
     
        $user->assignRole('student');

        return back()->with('success', 'User created successfully.');
    }
    function registration()
    {
        return view('auth.register');
      
    }

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
