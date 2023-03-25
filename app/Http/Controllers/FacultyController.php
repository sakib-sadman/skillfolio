<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
class FacultyController extends Controller
{
    function dashboard()
    {
        return view('facultypanel.dashboard.index');
    }

     function profile()
    {
        return view('facultypanel.profile.index',[
            'user'=> Auth::user()
        ]);
    }

    function profile_edit()
    {
        return view('facultypanel.profile.edit',[
            'user'=> Auth::user()
        ]);
    }

    function profile_update(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'phone' => 'required',
            'gender' => 'required',            
        ]);

      

        $user = Auth::user();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->phone =  $request->phone;
        $user->gender =  $request->gender;
            
        if(isset($request->password)){
            $user->password =  Hash::make($request->password);
            
        }
        $user->save();

        return redirect()->route('faculty_profile')->with('success', 'Your Profile has been updated!');
    }
}
