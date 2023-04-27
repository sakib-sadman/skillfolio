<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\StudentController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\RoleManagementController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\JobPortalController;
use App\Http\Controllers\StudentSkillsController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\JobRecommendationController;
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

    if (Auth::check()){
        if(Auth::user()->hasRole('admin')){
            return redirect()->route('admin_dashboard');
        }
        else if(Auth::user()->hasRole('student')){
            return redirect()->route('student_dashboard');
        }
        else if(Auth::user()->hasRole('faculty')){
            return redirect()->route('faculty_dashboard');
        }
    }else{
       return redirect()->route('admin_dashboard');

    }
      
});

Route::get('/home', function () {
    return redirect()->route('admin_dashboard');
});

Route::post('/user-login', [LoginController::class, 'LOGIN'])->name('LOGIN');
Route::post('/user-account-create', [LoginController::class, 'account_create'])->name('user-account-create');
Route::get('/user-registration', [LoginController::class, 'registration'])->name('registration');



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
    
    Route::get('/student-skills/list', [FacultyController::class, 'student_skills_list'])->name('student_skills_list');
    Route::get('/student-skills/{id}/show', [FacultyController::class, 'student_skills_show'])->name('student_skills_show');
    Route::get('/student-skills/{id}/delete', [FacultyController::class, 'student_skills_delete'])->name('student_skills_delete');
    
    Route::get('/student-skills/decline/{id}', [FacultyController::class, 'student_skills_decline'])->name('student_skills_decline');
    Route::get('/student-skills/approve/{id}', [FacultyController::class, 'student_skills_approve'])->name('student_skills_approve');

    Route::get('/student-job-recommendation/list', [FacultyController::class, 'recommendation_list'])->name('recommendation_list');
    Route::get('/student-job-recommendation/{id}/view', [FacultyController::class, 'recommendation_view'])->name('recommendation_view');
    Route::get('/student-job-recommendation/{id}/decline', [FacultyController::class, 'recommendation_faculty_decline'])->name('recommendation_faculty_decline');
    Route::get('/student-job-recommendation/{id}/approve', [FacultyController::class, 'recommendation_faculty_approve'])->name('recommendation_faculty_approve');
    Route::get('/student-job-recommendation/{id}/revoke', [FacultyController::class, 'recommendation_faculty_revoke_decision'])->name('recommendation_faculty_revoke_decision');

});


#~~~~~~~~~~~~ all student panel routes ~~~~~~~~~~~~~~

Route::group(['prefix' => 'student','middleware' => ['auth', 'role:student']], function() {
    
    Route::get('/dashboard', [StudentController::class, 'dashboard'])->name('student_dashboard');

    Route::get('/profile', [StudentController::class, 'profile'])->name('student_profile');
    Route::get('/profile/edit', [StudentController::class, 'profile_edit'])->name('student_profile_edit');
    Route::post('/profile/update', [StudentController::class, 'profile_update'])->name('student_profile_update');


    Route::get('/job-portal/list', [StudentController::class, 'job_portal_list'])->name('student-job-portal-list');
    Route::get('/job-portal/{id}/view', [StudentController::class, 'job_portal_view'])->name('student-job-portal-view');

    
    Route::post('/info/work-experience/insert',[StudentController::class, 'StudentInfoInsertWorkExperience'])->name('StudentInfoInsertWorkExperience');
    Route::get('/info/work/delete/{id}', [StudentController::class, 'StudentWorkDelete'])->name('StudentWorkDelete');
    Route::post('/info/work/edit', [StudentController::class, 'StudentWorkEdit'])->name('StudentWorkEdit');

    Route::post('/info/education/insert', [StudentController::class, 'StudentInfoInsertEducation'])->name('StudentInfoInsertEducation');
    Route::get('/info/education/delete/{id}', [StudentController::class, 'StudentEducationDelete'])->name('StudentEducationDelete');
    Route::post('/info/education/edit', [StudentController::class, 'StudentEducationEdit'])->name('StudentEducationEdit');

    Route::get('/info/training/delete/{id}', [StudentController::class, 'StudentTrainingDelete'])->name('StudentTrainingDelete');
    Route::post('/info/training/insert', [StudentController::class, 'StudentInfoInsertTraining'])->name('StudentInfoInsertTraining');
    Route::post('/info/training/edit', [StudentController::class, 'StudentTrainingEdit'])->name('StudentTrainingEdit');
    
    Route::resource('student-skills', StudentSkillsController::class);  
    
    Route::resource('job-recommendation', JobRecommendationController::class);  
    
    Route::get('/generate-cv', [StudentController::class, 'generate_cv'])->name('generate_cv');
});