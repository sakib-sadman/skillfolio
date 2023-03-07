<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class RoleManagementController extends Controller
{
    function index()
    {
        // return
        $roles = Role::with('permissions')->get();
        $permissions = Permission::all();


        return view('adminpanel.role.index', compact('roles','permissions'));
    }

    function role_add(Request $request)
    {
        $request->validate([
            'name' => 'required',
        ]);
        Role::create(['name' =>  strtolower($request->name)]);
        return back()->with('success', 'Successfully Role has been created!');
    }

    function role_delete($id)
    {
        $role = Role::findById($id);
        $role->delete();
        return back()->with('success', 'Successfully Role has been deleted!');

    }

    function get_role($id)
    {
        $role = Role::findById($id);

        return response()->json([
            'data' => $role
        
        ]);

    }

    function role_update(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'role_id' => 'required'
        ]);
        $role = Role::findById($request->role_id);
        $role->name = strtolower($request->name);
        $role->save();

        return back()->with('success', 'Successfully Role has been updated!');
    }






}
