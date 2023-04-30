<?php

namespace App\Http\Controllers;

use App\Models\JobPortal;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Auth;

class StudentController extends Controller
{
    function dashboard()
    {
        return view('studentpanel.dashboard.index');
    }


    function job_portal_list()
    {
        $job_portals = JobPortal::where('status', 1)->orderby('id', 'desc')->get();
        return view('studentpanel.job_portal.index', compact('job_portals'));
    }

    function job_portal_view($id)
    {
        $job_portal = JobPortal::find($id);
        return view('studentpanel.job_portal.view', compact('job_portal'));
    }
    function profile()
    {
        return view('studentpanel.profile.index',[
            'user'=> Auth::user()
        ]);
    }

    function profile_edit()
    {
        return view('studentpanel.profile.edit',[
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

        return redirect()->route('student_profile')->with('success', 'Your Profile has been updated!');
    }
}
