@extends('layouts.studentpanel.master')

@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    @if (\Session::has('success'))
        <div class="row">
            <div class="col-md-12">
                <div id="notificationAlert" style="display: block;">

                    <div class="alert alert-warning">
                        <span style="color:black;">
                            {!! \Session::get('success') !!}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    @endif
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Profile / </span> {{ Auth::user()->name }}</h4>

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-md-12 col-lg-12">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">User Profile</h5>
                </div>
                <div class="card-body">
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="basic-default-name" placeholder="John Doe"
                                value="{{ $user->name }}" name="name" disabled />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-phone">Phone</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="basic-default-phone" placeholder="017*******"
                                value="{{ $user->phone }}" name="phone" disabled />
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-email">Email</label>
                        <div class="col-sm-10">
                            <div class="input-group input-group-merge">
                                <input type="email" id="basic-default-email" class="form-control"
                                    placeholder="Student@gmail.com" aria-label="john.doe"
                                    aria-describedby="basic-default-email2" value="{{ $user->email }}" name="email"
                                    disabled />
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-phone">Gender</label>
                        <div class="col-sm-10">
                            <select class="form-select" id="exampleFormControlSelect1"
                                aria-label="Default select example" disabled>
                                <option selected>Open this select menu</option>
                                <option value="male" @if ($user->gender == 'male') selected @endif>Male</option>
                                <option value="female" @if ($user->gender == 'female') selected @endif>Female</option>
                                <option value="others" @if ($user->gender == 'others') selected @endif>others</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-phone">Image</label>
                        <div class="col-sm-10">
                            <img src="{{ Storage::url($user->image->url ?? '')  }}" alt="User Image" style="max-width:250px;">
                        </div>
                    </div>
                    <div class="row justify-content-end">
                        <div class="col-sm-10">
                            <a href="{{ route('student_profile_edit') }}">
                                <button class="btn btn-success btn-sm">Make Changes</button>
                            </a>
                                <a href="{{ route('generate_cv') }}" target="_blank" class="btn btn-sm btn-primary">Download CV</a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>


      <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Other Information / </span> {{ Auth::user()->name }}</h4>
        
        <div>
            <div class="bg-white">
                <div class="main-content bg-white">
                    <div class="section__content section__content--p30">
                        <div class="container-fluid">
                              <div class="row bg-white">
                                  <div class="col-12 bg-white">
                                      <div class="tab-section">
                                          <div class="tab">
                                              <button class="tablinks active" onclick="openTab(event, 'Work_Experience')">Work Experience</button>
                                              <button class="tablinks" onclick="openTab(event, 'Education')">Education</button>
                                              <button class="tablinks" onclick="openTab(event, 'Training')">Training</button>

                                          </div>
      
                                          <div id="Work_Experience" class="tabcontent" >
                                              <div class="tabcontent-details">                                        
                                                <div class="tabcontent-row">
                                                    <div class="col-12 ">
                                                      @if ($user->works->isNotEmpty())
                                                        @foreach ($user->works as $data)
                                                          <div class="row tab-row">
                                                                <div class="col-1">
                                                                    <a>
                                                                        <i class="fa fa-briefcase" style="font-size: 20px;"></i> 
                                                                    </a>
                                                                </div>
                                                                <div class="col-8 col-md-8">
                                                                    <p style="font-weight: bold;font-size:15px">{{ $data->designation }} &nbsp;|&nbsp; {{ $data->work_place }}</p>
                                                                    <p style="font-size:13px;"> {{ Str::limit($data->job_description, 50,'.....') }}  <span style="color: blue;cursor:pointer;" onclick="Show('WorkPlaceEditForm-{{$data->id}}')" >See more</span></p>
                                                                    <p style="font-size: 10px;">
                                                                        {{$data->start}} to {{$data->end}}                                                             
                                                                    </p>
                                                                </div>
            
                                                                <div class="col-1 d-flex">
                                                                    <a>
                                                                      <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="Show('WorkPlaceEditForm-{{$data->id}}')" style="cursor:pointer;color:blue;"></i>                                                          
                                                                    </a>
                                                                    &nbsp;&nbsp;
                                                                    <a href="{{ route('StudentWorkDelete', $data->id) }}">
                                                                      <i class="fa fa-trash" style="color:red;"></i>                                                            
                                                                  </a>
                                                                </div>
                                                          </div>
                                                        @endforeach
                                                      @else
                                                          <div class="row tab-row">
                                                            <div class="col">
                                                              <b>No Data</b>
                                                            </div>
                                                          </div>
                                                      @endif
                                                          
                                                      
                                                      
                                                      <div class="row tab-row">
                                                          <div class="col-12">
                                                            <p style="color: blue;cursor:pointer;font-weight:bold;" onclick="Show('WorkPlaceForm')"><i class="fa fa-plus" aria-hidden="true"></i>&nbsp;Add More</p>
                                                          </div>
                                                      </div>


                                                      <div class="row tab-row mt-3" id="WorkPlaceForm" style="display: none;">
                                                          <div class="col-12 bg-dark mb-3">
                                                            <h4 class="text-white">Add new Work Experience</h4>
                                                          </div>  
                                                    
                                                          <form action="{{ route('StudentInfoInsertWorkExperience') }}" method="POST">
                                                            @csrf
                                                            
                                                            <div class="row">
                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <label>Work Place</label>
                                                                    <input type="text" name="work_place" class="form-control" placeholder="Work place" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label>Start</label>
                                                                    <input type="number" id="start_year" name="start_year" class="form-control" placeholder="start year">
                                                                </div>
                                                              </div>
    
                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <label>Designation</label>
                                                                    <input type="text" name="designation" class="form-control" placeholder="Designation" required>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                      <div class="col-6">
                                                                        <label>End</label> 
                                                                      </div>
                                                                      <div class="col-6">
                                                                        <label for="present">Present</label>
                                                                        <input type="checkbox" value="present" name="present" id="present" onclick="Show('end_year')">
                                                                      </div>
                                                                    </div>
                                                                    <input type="text" id="end_year" name="end_year" class="form-control" placeholder="end year" style="display:block;">                                                                  
                                                                </div>
                                                              </div>


                                                              <div class="col-12">
                                                                <div class="form-group">
                                                                    <label>Job Description</label>
                                                                    <textarea name="job_description" id="" cols="90" rows="8" class="form-control" ></textarea>

                                                                </div>
                                                              </div>

                                                              <div class="col-12 mt-3">
                                                                <button class="btn btn-primary btn-sm" type="submit">Submit</button>
                                                              </div>

                                                            </div>
                                                            

                                                          </form>
                                                        
                                                      </div>


                                                      @if ($user->works->isNotEmpty())
                                                          @foreach ($user->works as $data)
                                                              <div class="row tab-row mt-3" id="WorkPlaceEditForm-{{ $data->id }}" style="display: none;">
                                                                <div class="col-12 bg-dark mb-3">
                                                                  <h4 class="text-white">Edit Work Experience</h4>
                                                                </div>  
                                                          
                                                                <form action="{{ route('StudentWorkEdit') }}" method="POST">
                                                                  @csrf
                                                                  
                                                                  <input type="hidden" value="{{ $data->id }}" name="workID">
                                                                  <div class="row">
                                                                    <div class="col-6">
                                                                      <div class="form-group">
                                                                          <label>Work Place</label>
                                                                          <input type="text" value="{{ $data->work_place }}" name="edit_work_place" class="form-control" placeholder="Work place" required>
                                                                      </div>
                                                                      <div class="form-group">
                                                                          <label>Start</label>
                                                                          <input type="text" value="{{ $data->start }}" id="edit_start_year" name="edit_start_year" class="form-control" placeholder="start year">
                                                                      </div>
                                                                    </div>
          
                                                                    <div class="col-6">
                                                                      <div class="form-group">
                                                                          <label>Designation</label>
                                                                          <input type="text" value="{{ $data->designation }}" name="edit_designation" class="form-control" placeholder="Designation" required>                              
                                                                        </div>

                                                                      
                                                                      @if ($data->end == 'present')
                                                                        <div class="form-group">
                                                                            <div class="row">
                                                                              <div class="col-6">
                                                                                <label>End</label> 
                                                                              </div>
                                                                              <div class="col-6">
                                                                                <label for="present">Present</label>
                                                                                <input type="checkbox" value="present" name="present" checked id="present" onclick="Show('edit_end_year-{{$data->id}}')">
                                                                              </div>
                                                                            </div>
                                                                            <input type="text" id="edit_end_year-{{$data->id}}" value="{{ $data->end }}" name="edit_end_year" class="form-control" placeholder="end year" style="display:none;">                                                                  
                                                                        </div>
                                                                      @else
                                                                        <div class="form-group">
                                                                            <div class="row">
                                                                              <div class="col-6">
                                                                                <label>End</label> 
                                                                              </div>
                                                                              <div class="col-6">
                                                                                <label for="present">Present</label>
                                                                                <input type="checkbox" value="present" name="present" id="present" onclick="Show('edit2_end_year-{{$data->id}}')">
                                                                              </div>
                                                                            </div>
                                                                            <input type="text" id="edit2_end_year-{{$data->id}}" value="{{ $data->end }}" name="edit_end_year" class="form-control" placeholder="end year" style="display:block;">                                                                  
                                                                        </div>
                                                                      @endif
                                                                      
                                                                    </div>
        
        
                                                                    <div class="col-12">
                                                                      <div class="form-group">
                                                                          <label>Job Description</label>
                                                                          <textarea name="edit_job_description" class="form-control" cols="90" rows="5">{{ $data->job_description }}</textarea>
                                                                      </div>
                                                                    </div>
        
                                                                    <div class="col-12">
                                                                      <button class="btn btn-success btn-sm" type="submit">Update</button>
                                                                      &nbsp;
                                                                  </form>
                                                                  
                                                                      <a onclick="Show('WorkPlaceEditForm-{{$data->id}}')" class="btn btn-dark btn-sm" style="color: white;">Back</a>
                                                                    </div>
                                                                  </div>
                                                            </div>
                                                          @endforeach
                                                      @endif
                                                    
                                                    </div>  
                                                </div>
                                              </div>                                    
                                          </div> 
      
                                          <div id="Education" class="tabcontent" style="display: none;" >
                                              <div class="tabcontent-details">                                        
                                                <div class="tabcontent-row">
                                                    <div class="col-12">
                                                        @if ($user->education->isNotEmpty())
                                                            @foreach ($user->education as $data)
                                                              <div class="row tab-row">
                                                                  <div class="col-1 col-md-1">
                                                                      <a>
                                                                          <i class="fa fa-graduation-cap" style="font-size: 20px;"></i> 
                                                                      </a>
                                                                  </div>
                                                                  <div class="col-8 col-md-8">
                                                                    <p style="font-weight: bold;font-size:15px">{{ $data->institution }}</p>
                                                                    <p style="font-size:13px;"> {{$data->degree}} &nbsp;|&nbsp; {{$data->major}} </p>
                                                                    <p style="font-size: 10px;">
                                                                        {{$data->start}} to {{$data->end}}                                                             
                                                                    </p> 
                                                                    
                                                                  
                                                                  </div>
              
                                                                  <div class="col-1 d-flex">
                                                                    <a>
                                                                      <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="Show('EducationEditForm-{{$data->id}}')" style="cursor:pointer;color:blue;"></i>                                                          
                                                                    </a>
                                                                    &nbsp;&nbsp;
                                                                    <a href="{{ route('StudentEducationDelete', $data->id) }}">
                                                                      <i class="fa fa-trash" style="color:red;"></i>                                                            
                                                                  </a>
                                                                </div>
                                                              </div>
                                                            @endforeach
                                                        @else
                                                            <div class="row tab-row">
                                                              <div class="col-12">
                                                                <b>No Data</b>
                                                              </div>
                                                            </div>
                                                        @endif

                                                        @if ($user->education->isNotEmpty())
                                                              @foreach ($user->education as $data)
                                                                  <div class="row tab-row mt-3" id="EducationEditForm-{{ $data->id }}" style="display: none;">
                                                                    <div class="col-12 bg-dark mb-3">
                                                                      <h4 class="text-white">Edit Education</h4>
                                                                    </div>  
                                                              
                                                                    <form action="{{ route('StudentEducationEdit') }}" method="POST">
                                                                      @csrf
                                                                      
                                                                      <input type="hidden" value="{{ $data->id }}" name="educationID">
                                                                      <div class="row">
                                                                        <div class="col-12">
                                                                          <div class="form-group">
                                                                              <label>Institution</label>
                                                                              <input type="text" value="{{ $data->institution }}" name="edit_institution" class="form-control" placeholder="Institution" required>
                                                                          </div>
                                                                        </div>
              
                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Degree</label>
                                                                              <input type="text" value="{{ $data->degree }}" name="edit_degree" class="form-control" placeholder="Degree" required>                              
                                                                          </div>
                                                                        </div> 

                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Major</label>
                                                                              <input type="text" value="{{ $data->major }}" name="edit_major" class="form-control" placeholder="Major" required>                              
                                                                          </div>
                                                                        </div>

                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Start</label>
                                                                              <input type="text" value="{{ $data->start }}" name="edit_start" class="form-control" placeholder="Start" required>                              
                                                                          </div>
                                                                        </div>

                                                                        <div class="col-6">
                                                                          @if ($data->end == 'present')
                                                                              <div class="row">
                                                                                <div class="col-6">
                                                                                  <label>End</label> 
                                                                                </div>
                                                                                <div class="col-6">
                                                                                  <label for="present">Present</label>
                                                                                  <input type="checkbox" value="present" name="present" checked id="present" onclick="Show('edit_ed_end-{{$data->id}}')">
                                                                                </div>
                                                                            </div>
                                                                            <input type="text" id="edit_ed_end-{{$data->id}}" value="{{ $data->end }}" name="edit_end" class="form-control" placeholder="end year" style="display:none;">                                                                  

                                                                          @else
                                                                            <div class="row">
                                                                                <div class="col-6">
                                                                                  <label>End</label> 
                                                                                </div>
                                                                                <div class="col-6">
                                                                                  <label for="present">Present</label>
                                                                                  <input type="checkbox" value="present" name="present" id="present" onclick="Show('edit2_ed_end-{{$data->id}}')">
                                                                                </div>
                                                                            </div>
                                                                            <input type="text" id="edit2_ed_end-{{$data->id}}" value="{{ $data->end }}" name="edit_end" class="form-control" placeholder="end year" style="display:block;">                                                                  

                                                                          @endif 
                                                                      </div>
                                                                        
                                                        
                                                                        <div class="col-12">
                                                                          <button class="btn btn-sm btn-success" type="submit">Update</button>
                                                                          &nbsp;
                                                                      </form>
                                                                      
                                                                          <a onclick="Show('EducationEditForm-{{$data->id}}')" class="btn btn-dark btn-sm" style="color: white;">Back</a>
                                                                        </div>
                                                                      </div>
                                                                </div>
                                                              @endforeach
                                                          @endif


                                                        <div class="row tab-row">
                                                            <div class="col-12">
                                                              <p style="color: blue;cursor:pointer;font-weight:bold;" onclick="Show('EducationForm')"><i class="fa fa-plus" aria-hidden="true" ></i>&nbsp;Add More</p>
                                                            </div>
                                                        </div>


                                                        <div class="row tab-row mt-3" id="EducationForm" style="display: none;">
                                                          <div class="col-12 bg-dark mb-3">
                                                            <h4 class="text-white">Add new Education</h4>
                                                          </div>  
                                                    
                                                          <form action="{{ route('StudentInfoInsertEducation') }}" method="POST">
                                                            @csrf
                                                            
                                                            <div class="row">
                                                              <div class="col-12">
                                                                <div class="form-group">
                                                                    <label>Institution</label>
                                                                    <input type="text" name="institution" class="form-control" placeholder="Institution" required>
                                                                </div>
                                                              </div>

                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <label>Degree</label>
                                                                    <input type="text" name="degree" class="form-control" placeholder="Degree" required>
                                                                </div>
                                                              </div>
    
                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <label>Major</label>
                                                                    <input type="text" name="major" class="form-control" placeholder="Major" required>
                                                                </div>
                                                              </div>

                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <label>Start</label>
                                                                    <input type="text" name="ed_start" id="ed_start" class="form-control" placeholder="Start" required>
                                                                </div>
                                                              </div>

                                                              <div class="col-6">
                                                                <div class="form-group">
                                                                    <div class="row">
                                                                      <div class="col-6">
                                                                        <label>End</label> 
                                                                      </div>
                                                                      <div class="col-6">
                                                                        <label for="present">Present</label>
                                                                        <input type="checkbox" value="present" name="present" id="ed_present" onclick="Show('ed_end')">
                                                                      </div>
                                                                    </div>
                                                                    <input type="text" id="ed_end" name="ed_end" class="form-control" placeholder="end year" style="display:block;">                                                                  
                                                                </div>  
                                                              </div>
                                                              

                                                              <div class="col-12">
                                                                <button class="btn btn-primary btn-sm" type="submit">Submit</button>
                                                              </div>

                                                            </div>
                                                            

                                                          </form>
                                                        
                                                      </div>
                                                        
                                                    </div>  
                                                </div>
                                              </div>                                    
                                          </div> 

                                          <div id="Training" class="tabcontent" style="display: none;" >
                                            <div class="tabcontent-details">                                        
                                              <div class="tabcontent-row">
                                                  <div class="col-12">
                                                      @if ($user->training->isNotEmpty())
                                                          @foreach ($user->training as $data)
                                                            <div class="row tab-row">
                                                                <div class="col-1 col-md-1">
                                                                    <a>
                                                                        <i class="fa fa-graduation-cap" style="font-size: 20px;"></i> 
                                                                    </a>
                                                                </div>
                                                                <div class="col-8 col-md-8">
                                                                  <p style="font-weight: bold;font-size:15px">{{ $data->title }}</p>
                                                                  <p style="font-size:13px;"> {{$data->institution}}</p>
                                                                  <p style="font-size: 11px;">
                                                                    Duration: {{$data->duration}}   
                                                                  </p>
                                                                  <p style="font-size: 10px;">                                                                    
                                                                      {{ $data->training_date}}                                                       
                                                                  </p> 
                                                                  
                                                                  <p style="font-size: 10px;">
                                                                    {{Str::limit($data->description, 50,'.....')}}                                                            
                                                                </p> 
                                                                  
                                                                
                                                                </div>
            
                                                                <div class="col-1 d-flex">
                                                                  <a>
                                                                    <i class="fa fa-pencil-square-o" aria-hidden="true" onclick="Show('TrainingEditForm-{{$data->id}}')" style="cursor:pointer;color:blue;"></i>                                                          
                                                                  </a>
                                                                  &nbsp;&nbsp;
                                                                  <a href="{{ route('StudentTrainingDelete', $data->id) }}">
                                                                    <i class="fa fa-trash" style="color:red;"></i>                                                            
                                                                </a>
                                                              </div>
                                                            </div>
                                                          @endforeach
                                                      @else
                                                          <div class="row tab-row">
                                                            <div class="col-12">
                                                              <b>No Data</b>
                                                            </div>
                                                          </div>
                                                      @endif

                                                      @if ($user->training->isNotEmpty())
                                                            @foreach ($user->training as $data)
                                                                <div class="row tab-row mt-3" id="TrainingEditForm-{{ $data->id }}" style="display: none;">
                                                                  <div class="col-12 bg-dark mb-3">
                                                                    <h4 class="text-white">Edit Training</h4>
                                                                  </div>  
                                                            
                                                                  <form action="{{ route('StudentTrainingEdit') }}" method="POST">
                                                                    @csrf
                                                                    
                                                                    <input type="hidden" value="{{ $data->id }}" name="trainingID">
                                                                      <div class="row">
                                                                        <div class="col-12">
                                                                          <div class="form-group">
                                                                              <label>Training Title</label>
                                                                              <input type="text" name="edit_training_title" value="{{ $data->title }}" class="form-control" placeholder="Title" required>
                                                                          </div>
                                                                        </div>

                                                                        <div class="col-12">
                                                                          <div class="form-group">
                                                                              <label>Institution</label>
                                                                              <input type="text" name="edit_training_institution" value="{{ $data->institution }}" class="form-control" placeholder="Institution" required>
                                                                          </div>
                                                                        </div>

                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Training Date</label>
                                                                              <input type="date" name="edit_training_training_date" value="{{ $data->training_date }}" class="form-control" required>
                                                                          </div>
                                                                        </div>

                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Duration</label>
                                                                              <input type="text" name="edit_training_duration" value="{{ $data->duration }}" class="form-control" placeholder="duration" required>
                                                                          </div>
                                                                        </div>


                                                                        <div class="col-6">
                                                                          <div class="form-group">
                                                                              <label>Description</label>
                                                                              <textarea name="edit_training_description" class="form-control" cols="100" rows="5">{{ $data->description }}</textarea>
                                                                          </div>
                                                                        </div>


                                                                    
                                                      
                                                                      <div class="col-12">
                                                                        <button class="btn btn-success btn-sm" type="submit">Update</button>
                                                                        &nbsp;
                                                                        </form>
                                                                    
                                                                        <a onclick="Show('TrainingEditForm-{{$data->id}}')" class="btn btn-sm btn-dark" style="color: white;">Back</a>
                                                                      </div>
                                                                    </div>
                                                                  </div>
                                                            @endforeach
                                                        @endif


                                                      <div class="row tab-row">
                                                          <div class="col-12">
                                                            <p style="color: blue;cursor:pointer;font-weight:bold;" onclick="Show('TrainingForm')"><i class="fa fa-plus" aria-hidden="true" ></i>&nbsp;Add More</p>
                                                          </div>
                                                      </div>


                                                      <div class="row tab-row mt-3" id="TrainingForm" style="display: none;">
                                                        <div class="col-12 bg-dark mb-3">
                                                          <h4 class="text-white">Add new Training</h4>
                                                        </div>  
                                                  
                                                        <form action="{{ route('StudentInfoInsertTraining') }}" method="POST">
                                                          @csrf
                                                          
                                                          <div class="row">
                                                            <div class="col-12">
                                                              <div class="form-group">
                                                                  <label>Training Title</label>
                                                                  <input type="text" name="title" class="form-control" placeholder="Title" required>
                                                              </div>
                                                            </div>

                                                            <div class="col-12">
                                                              <div class="form-group">
                                                                  <label>Institution</label>
                                                                  <input type="text" name="institution" class="form-control" placeholder="Institution" required>
                                                              </div>
                                                            </div>

                                                            <div class="col-6">
                                                              <div class="form-group">
                                                                  <label>Training date</label>
                                                                  <input type="date" name="training_date" class="form-control " required>
                                                              </div>
                                                            </div>

                                                            <div class="col-6">
                                                              <div class="form-group">
                                                                  <label>Duration</label>
                                                                  <input type="text" name="duration" class="form-control" placeholder="duration" required>
                                                              </div>
                                                            </div>

                                                            <div class="col-6">
                                                              <div class="form-group">
                                                                  <label>Description</label>
                                                                  <textarea name="description" class="form-control" cols="80" rows="5"></textarea>
                                                              </div>
                                                            </div>

                                                            
                                                            

                                                            <div class="col-12">
                                                              <button class="btn btn-sm btn-primary" type="submit">Submit</button>
                                                            </div>

                                                          </div>
                                                          

                                                        </form>
                                                      
                                                    </div>
                                                      
                                                  </div>  
                                              </div>
                                            </div>                                    
                                        </div> 


                                      </div>
                                  </div>                            
                              </div>
                        </div>
                    </div>
                </div>
            </div>
          </div>
    </div>

</div>

@endsection

@section('footer_js')
  
    <script>

     
        function ShowName() {
            var x = document.getElementById("NAMEFORM");
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function ShowPhone() {
            var x = document.getElementById("PHONEFORM");
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function ShowEmail() {
            var x = document.getElementById("EMAILFORM");
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function ShowAddress() {
            var x = document.getElementById("ADDRESSFORM");
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function ShowAbout() {
            var x = document.getElementById("ABOUTFORM");
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function ShowSocial(data) {
            var x = document.getElementById(data);
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }
        function Show(data) {
            var x = document.getElementById(data);
            if (x.style.display === "none") {
            x.style.display = "block";         
            } else {
            x.style.display = "none";
            }
        }

    </script>   
    <script>
       $('#notificationAlert').delay(3000).fadeOut('slow');     
    </script>
    <script>
        function openTab(evt, tabName) {
        // Declare all variables
        var i, tabcontent, tablinks;
        // Get all elements with class="tabcontent" and hide them
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        // Get all elements with class="tablinks" and remove the class "active"
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        // Show the current tab, and add an "active" class to the link that opened the tab
        document.getElementById(tabName).style.display = "block";
        evt.currentTarget.className += " active";
        }
    </script>
@endsection
