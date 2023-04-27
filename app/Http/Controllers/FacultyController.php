<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\Hash;
class FacultyController extends Controller
{

    function recommendation_faculty_revoke_decision($id)
    {
        $job_recommendation = JobRecommendation::where('id',$id)->first();
        $job_recommendation->status = 0;
        $job_recommendation->save();

        return back()->with('success', 'Recommendation Revoked to Pending');

    }
    function recommendation_faculty_approve($id)
    {
        $job_recommendation = JobRecommendation::where('id',$id)->first();
        $job_recommendation->status = 1;
        $job_recommendation->save();

        return back()->with('success', 'Recommendation Accepted');

    }

    function recommendation_faculty_decline($id)
    {
        $job_recommendation = JobRecommendation::where('id',$id)->first();
        $job_recommendation->status = -1;
        $job_recommendation->save();

        return back()->with('success', 'Recommendation Declined');

    }

    function recommendation_view($id)
    {

        $job_recommendation = JobRecommendation::where('id',$id)->where('faculty_id', Auth::id())->first();
        $user = User::with('works','education', 'training','image')->find($job_recommendation->user_id);
        return view('facultypanel.job_recommendation.view', compact('job_recommendation','user'));


    }
    function recommendation_list(){
        $job_recommendations = JobRecommendation::where('faculty_id', Auth::id())->get();

        $pending_job_recommendations = $job_recommendations->where('status', 0);
        $accpetedDeclined_job_recommendations = $job_recommendations->where('status','!=', 0);
        return view('facultypanel.job_recommendation.index', compact('pending_job_recommendations','accpetedDeclined_job_recommendations' ));
    }


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
