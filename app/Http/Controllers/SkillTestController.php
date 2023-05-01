<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Models\User;
use App\Models\SkillTest;


class SkillTestController extends Controller
{
    function index()
    {

        $user = Auth::user()->load('skill_test');
        $skills = $user->skill_test;
        $participated_exam = false;
        
        if(!empty($user->skill_test)){
            $participated_exam = true;
            return view('studentpanel.skill_test.index', compact('skills', 'user', 'participated_exam'));
        }
        else{
            return view('studentpanel.skill_test.index', compact('skills', 'user','participated_exam'));
        }
        

    }

    function exam_submission(Request $request)
    {
        $user = Auth::user();
        $marks_obtained = 0;

        if($request->answer_1 == 'D'){
            $marks_obtained++;
        }
        if($request->answer_2 == 'D'){
            $marks_obtained++;
        }
        if($request->answer_3 == 'C'){
            $marks_obtained++;
        }
        if($request->answer_4 == 'C'){
            $marks_obtained++;
        }
        if($request->answer_5 == 'B'){
            $marks_obtained++;
        }

        $skill_test = new SkillTest;
        $skill_test->user_id = Auth::id();
        $skill_test->exam_participated_date = date('Y-m-d');
        $skill_test->marks_obtained = $marks_obtained;
        $skill_test->save();

        return redirect()->route('student_skill_test');
    
        
    }
}
