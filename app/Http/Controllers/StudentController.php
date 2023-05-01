<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Auth;
class StudentController extends Controller
{
    function dashboard()
    {
        return view('studentpanel.dashboard.index');
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

        // return
        $user = User::with('works','education', 'training')->find(Auth::id());
        return view('studentpanel.profile.index',[
            'user'=> $user
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



    function AdminInfoInsertWorkExperience(Request $req)
    {
        $req->validate([          
            'work_place' => 'required',
            'start_year' => 'required',
            'designation' => 'required'
        ]); 


        $work = new WorkExperience;
        $work->work_place = $req->work_place;
        $work->designation = $req->designation;
        $work->start = $req->start_year;
        $work->job_description = $req->job_description;
        $work->user_id = Auth::id();

        if(isset($req->end_year))
        {
            $work->end = $req->end_year;
        }
        else{
            $work->end = 'present';
        }

        $work->save();
        return back();
    }

    function AdminWorkDelete($id)
    {
        $work = WorkExperience::find($id);

        if(!empty($work))
        {
            $work->delete();
            
            return back();

        }
        else{
            return view('404NotFound');
        }   
    }


    function AdminWorkEdit(Request $req)
    {
        $work = WorkExperience::where('id' , $req->workID)->where('user_id', Auth::id())->first();
        $work->work_place = $req->edit_work_place;
        $work->designation = $req->edit_designation;
        $work->start = $req->edit_start_year;
        $work->job_description = $req->edit_job_description;
        
        if(isset($req->present))
        {
            $work->end = 'present';
        }
        else{
            $work->end = $req->edit_end_year;

        }


        $work->save();
        return back();
    }


    function AdminInfoInsertEducation(Request $req)
    {
        $req->validate([          
            'institution' => 'required',
            'degree' => 'required',
            'major' => 'required',
            'ed_start' => 'required'
            
        ]); 

        $education = new Education;
        $education->institution = $req->institution;
        $education->degree = $req->degree;
        $education->major = $req->major;
        $education->start = $req->ed_start;
        $education->user_id = Auth::id();

        if(isset($req->ed_end)){
            $education->end = $req->ed_end;
        }
        else{
            $education->end = 'present';
        }

        $education->save();
        return back();
    }


    function AdminEducationDelete($id)
    {
        $education = Education::find($id);

        if(!empty($education))
        {
            $education->delete();
            
            return back();

        }
        else{
            return view('404NotFound');
        }   
    }


    function AdminEducationEdit(Request $req)
    {
        $education = Education::where('id', $req->educationID)->first();
        $education->institution = $req->edit_institution;
        $education->degree = $req->edit_degree;
        $education->major = $req->edit_major;
        $education->start = $req->edit_start;
        if(isset($req->present))
        {
            $education->end = 'present';
        }
        else{
            $education->end = $req->edit_end;
        }
        $education->save();
        return back();


    }


    function AdminTrainingDelete($id)
    {
        $training = Training::find($id);

        if(!empty($training))
        {
            $training->delete();
            
            return back();

        }
        else{
            return view('404NotFound');
        }  
    }


    function AdminInfoInsertTraining(Request $req)
    {
        $req->validate([          
            'title' => 'required',
            'institution' => 'required',
            'training_date' => 'required',
            'duration' => 'required'            
        ]); 

        $train = new Training();
        $train->title = $req->title;
        $train->user_id = Auth::id();
        $train->institution = $req->institution;
        $train->training_date = $req->training_date;
        $train->duration = $req->duration;
        $train->description = $req->description;
        $train->save();
        return back();
    }


    function AdminTrainingEdit(Request $req)
    {
        $train = Training::where('id',$req->trainingID)->first();
        $train->title = $req->edit_training_title;
        $train->institution = $req->edit_training_institution;
        $train->training_date = $req->edit_training_training_date;
        $train->duration = $req->edit_training_duration;
        $train->description = $req->edit_training_description;
        $train->save();
        return back();
    }


    function AdminInfoProfilePicture(Request $req)
    {
        
        if($req->hasFile('image'))
        {
            $user = User::where('id', Auth::id())->first();

            if(isset($user->image)){
                //deleting the previous profile picture
                $old_img_location = public_path('images/profile/'.$user->image);
                if(file_exists($old_img_location)){
                unlink($old_img_location);
                }    
            }
                       


            $image= $req->file('image');
            $IMGNAME = Str::random(10).'.'. $image->getClientOriginalExtension();       
    
            $thumbnail_location = 'images/profile/';
    
            //Make Directory 
            File::makeDirectory($thumbnail_location, $mode=0777, true, true);        
            //save Image to the thumbnail path
            Image::make($image)->save(public_path($thumbnail_location.$IMGNAME));
           
            $user->image = $IMGNAME;
            $user->save();
        }
       
        return back();
    }
}
