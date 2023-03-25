<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Illuminate\Support\Facades\Hash;

use App\Models\User;
class AdminController extends Controller
{
    function dashboard()
    {
        return view('adminpanel.dashboard.index');
    }

}
