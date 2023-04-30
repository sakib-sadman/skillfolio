<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleManagementController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\JobPortalController;
use Illuminate\Support\Facades\Auth;



/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes(['verify' => true]);
Route::get('/', function () {
    return redirect()->route('admin_dashboard');
});

Route::get('/home', function () {
    return redirect()->route('admin_dashboard');
});

Route::post('/user-login', [LoginController::class, 'LOGIN'])->name('LOGIN');



#~~~~~~~~~~~~ all admin panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'admin','middleware' => ['auth', 'role:admin']], function() {
    

    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('admin_dashboard');

    Route::get('/profile', [ProfileController::class, 'profile'])->name('profile');
    Route::get('/profile/edit', [ProfileController::class, 'profile_edit'])->name('profile_edit');
    Route::post('/profile/update', [ProfileController::class, 'profile_update'])->name('profile_update');


    Route::get('/role-management', [RoleManagementController::class, 'index'])->name('role_management');
    Route::post('/role-management/add', [RoleManagementController::class, 'role_add'])->name('role_add');
    Route::get('/role-management/delete/{id}', [RoleManagementController::class, 'role_delete'])->name('role_delete');
    Route::post('/role-management/update', [RoleManagementController::class, 'role_update'])->name('role_update');
    Route::get('/get-role/{id}', [RoleManagementController::class, 'get_role'])->name('get_role');
    
    Route::resource('users', UserController::class);  
    Route::resource('job-portal', JobPortalController::class);  
    Route::get('/job-portal/switch/{id}', [JobPortalController::class, 'job_portal_switch'])->name('job-portal-switch');

    Route::get('/user-account-status/{id}', [UserController::class, 'user_account_status_toggle'])->name('user-account-status-toggle');
 });



 
#~~~~~~~~~~~~ all faculty panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'faculty','middleware' => ['auth', 'role:faculty']], function() {
    Route::get('/dashboard', [FacultyController::class, 'dashboard'])->name('faculty_dashboard');

    Route::get('/profile', [FacultyController::class, 'profile'])->name('faculty_profile');
    Route::get('/profile/edit', [FacultyController::class, 'profile_edit'])->name('faculty_profile_edit');
    Route::post('/profile/update', [FacultyController::class, 'profile_update'])->name('faculty_profile_update');

});


#~~~~~~~~~~~~ all student panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'student','middleware' => ['auth', 'role:student']], function() {
    
    Route::get('/dashboard', [StudentController::class, 'dashboard'])->name('student_dashboard');

    Route::get('/profile', [StudentController::class, 'profile'])->name('student_profile');
    Route::get('/profile/edit', [StudentController::class, 'profile_edit'])->name('student_profile_edit');
    Route::post('/profile/update', [StudentController::class, 'profile_update'])->name('student_profile_update');


    Route::get('/job-portal/list', [StudentController::class, 'job_portal_list'])->name('student-job-portal-list');
    Route::get('/job-portal/{id}/view', [StudentController::class, 'job_portal_view'])->name('student-job-portal-view');

    
    Route::post('/info/work-experience/insert',[StudentController::class, 'AdminInfoInsertWorkExperience'])->name('AdminInfoInsertWorkExperience');
    Route::get('/info/work/delete/{id}', [StudentController::class, 'AdminWorkDelete'])->name('AdminWorkDelete');
    Route::post('/info/work/edit', [StudentController::class, 'AdminWorkEdit'])->name('AdminWorkEdit');

    Route::post('/info/education/insert', [StudentController::class, 'AdminInfoInsertEducation'])->name('AdminInfoInsertEducation');
    Route::get('/info/education/delete/{id}', [StudentController::class, 'AdminEducationDelete'])->name('AdminEducationDelete');
    Route::post('/info/education/edit', [StudentController::class, 'AdminEducationEdit'])->name('AdminEducationEdit');

    Route::get('/info/training/delete/{id}', [StudentController::class, 'AdminTrainingDelete'])->name('AdminTrainingDelete');
    Route::post('/info/training/insert', [StudentController::class, 'AdminInfoInsertTraining'])->name('AdminInfoInsertTraining');
    Route::post('/info/training/edit', [StudentController::class, 'AdminTrainingEdit'])->name('AdminTrainingEdit');

});