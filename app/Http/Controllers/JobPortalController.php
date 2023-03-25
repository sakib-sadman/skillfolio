<?php

namespace App\Http\Controllers;

use App\Models\JobPortal;
use Illuminate\Http\Request;

class JobPortalController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $job_portals = JobPortal::orderBy('id', 'DESC')->get();
        return view('adminpanel.job_portal.index', compact('job_portals'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('adminpanel.job_portal.create');
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
            'job_title' => 'required',
            'job_location' => 'required',
            'company_name' => 'required',
            'job_salary' => 'required',
            'job_deadline' => 'required',
            'job_details' => 'required',
        ]);

        $job_portal = new JobPortal();
        $job_portal->job_title = $request->job_title;
        $job_portal->job_location = $request->job_location;
        $job_portal->company_name = $request->company_name;
        $job_portal->job_salary = $request->job_salary;
        $job_portal->job_deadline = $request->job_deadline;
        $job_portal->job_details = $request->job_details;
        $job_portal->save();

        return back()->with('success', 'Job Portal Added Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\JobPortal  $jobPortal
     * @return \Illuminate\Http\Response
     */
    public function show(JobPortal $jobPortal)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\JobPortal  $jobPortal
     * @return \Illuminate\Http\Response
     */
    public function edit(JobPortal $jobPortal)
    {
        $job_portal = $jobPortal;
        return view('adminpanel.job_portal.edit', compact('job_portal'));

    }


    public function job_portal_switch($id)
    {
        $job_portal = JobPortal::find($id);
        if ($job_portal->status == 1) {
            $job_portal->status = 0;
            $job_portal->save();
            return back()->with('success', 'Job Portal Deactivated Successfully');
        } else {
            $job_portal->status = 1;
            $job_portal->save();
            return back()->with('success', 'Job Portal Activated Successfully');
        }
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\JobPortal  $jobPortal
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, JobPortal $jobPortal)
    {
        $request->validate([
            'job_title' => 'required',
            'job_location' => 'required',
            'company_name' => 'required',
            'job_salary' => 'required',
            'job_deadline' => 'required',
            'job_details' => 'required',
        ]);

      
        $jobPortal->job_title = $request->job_title;
        $jobPortal->job_location = $request->job_location;
        $jobPortal->company_name = $request->company_name;
        $jobPortal->job_salary = $request->job_salary;
        $jobPortal->job_deadline = $request->job_deadline;
        $jobPortal->job_details = $request->job_details;
        $jobPortal->save();

        return back()->with('success', 'Job Portal Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\JobPortal  $jobPortal
     * @return \Illuminate\Http\Response
     */
    public function destroy(JobPortal $jobPortal)
    {
        $jobPortal->delete();
        return back()->with('success', 'Job Portal Deleted Successfully');
    }
}
