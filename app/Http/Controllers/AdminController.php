<?php

namespace App\Http\Controllers;

use App\Models\JobPortal;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

use App\Models\User;
class AdminController extends Controller
{
    function dashboard()
    {
        $totalUser = User::all()->count() ?? 0;
        $totalJobportal = JobPortal::where('status', 1)->count() ?? 0;
        return view('adminpanel.dashboard.index',compact('totalUser','totalJobportal'));
    }

}
