<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\StudentSkills;
use App\Models\User;
use Auth;
class StudentSkillsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $student_skills = StudentSkills::with('faculty:id,name')->where('user_id', Auth::id())->orderby('id', 'desc')->get();
        return view('studentpanel.student_skills.index',compact('student_skills'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
     public function create()
    {
        $faculties = User::role('faculty')->get();
        return view('studentpanel.student_skills.create',compact('faculties'));
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
            'course_name' => 'required',
            'course_grade' => 'required',
            'course_completed' => 'required',
        ]);


        $student_skill = new StudentSkills();
        $student_skill->course_name = $request->course_name;
        $student_skill->course_grade = $request->course_grade;
        $student_skill->course_completed = $request->course_completed;
        $student_skill->faculty_id = $request->faculty_id;
        $student_skill->user_id = Auth::id();
        $student_skill->save();

        return back()->with('success', 'Your Application Has been Submited Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        // return
        $student_skill = StudentSkills::find($id);
        $faculties = User::role('faculty')->get();
        return view('studentpanel.student_skills.show', [
            'student_skill' => $student_skill,
            'faculties' => $faculties
        ]);
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
        $student_skill = StudentSkills::find($id);
        $student_skill->delete();
        return back()->with('success', 'Application has been removed Successfully!');
    }
}
