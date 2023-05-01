<?php

namespace App\Http\Controllers;
use Illuminate\Validation\Rule;
use Illuminate\Validation\Validator;
use Illuminate\Http\Request;
use Auth;
use Illuminate\Support\Facades\DB;
use App\Models\User;
use App\Models\JobRecommendation;
class JobRecommendationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $job_recommendations = JobRecommendation::orderBy('id','desc')->get();
        return view('studentpanel.job_recommendation.index',compact('job_recommendations'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $faculties = User::role('faculty')->get();
        return view('studentpanel.job_recommendation.create',compact('faculties'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {  
        $request->validate([
            'faculty_id' => [
                'required',
                function ($attribute, $value, $fail) {
                    $exists = DB::table('job_recommendations')
                        ->where('faculty_id', $value)
                        ->where('user_id', Auth::id())
                        ->exists();

                    if ($exists) {
                        $fail('You have already submitted a recommendation for this faculty.');
                    }
                },
            ],
            'recommendation_letter' => 'required',
        ]);
        $job_recommendation = new JobRecommendation();
        $job_recommendation->user_id = Auth::id();
        $job_recommendation->faculty_id = $request->faculty_id;
        $job_recommendation->recommendation_letter = $request->recommendation_letter;
        $job_recommendation->save();

        return back()->with('success','Job Recommendation has been sent successfully');


    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $job_recommendation = JobRecommendation::find($id);
         $faculties = User::role('faculty')->get();
        return view('studentpanel.job_recommendation.show',compact('job_recommendation','faculties'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
    }
}
