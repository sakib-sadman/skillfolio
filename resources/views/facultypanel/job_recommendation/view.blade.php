@extends('layouts.facultypanel.master')

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
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Job Recommendation / </span> Applcation</h4>
    <div class="row">
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Recommendation Letter</h5>
                </div>
                <div class="card-body">
                   
                        <div class="row mb-3">
                            <div class="col-sm-12">
                                <p>
                                    {!! $job_recommendation->recommendation_letter !!}
                                </p>
                            </div>
                        </div>


                        <div class="row justify-content-end">
                            <div class="col-sm-12">
                                <a href="{{ route('recommendation_list') }}" class="btn btn-dark btn-sm">Back to List</a>
                                @if ($job_recommendation->status == 0)
                                    <a href="{{ route('recommendation_faculty_approve', $job_recommendation->id) }}" class="btn btn-success btn-sm" onclick="confirm('Are you sure you want to Approve this Recommedation?')">Accept</a>
                                    <a href="{{ route('recommendation_faculty_decline', $job_recommendation->id) }}" class="btn btn-danger btn-sm" onclick="confirm('Are you sure you want to Declined this Recommedation?')">Decline</a>
                                @else 
                                    <a href="{{ route('recommendation_faculty_revoke_decision', $job_recommendation->id) }}" class="btn btn-primary btn-sm" onclick="confirm('Are you sure you want to Revoke you decision?')">Revoke Decision</a>

                                @endif
                            </div>
                        </div>
                </div>

            </div>
        </div>

    </div>

    <div class="row">
        <div class="col-md-6">
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Profile / </span> {{ $user->name }}</h4>
        </div>
        <div class="col-md-6">
             <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Other Information / </span> {{ $user->name }}</h4>            
        </div>
    </div>
    
    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-md-6 col-lg-6">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Student Profile</h5>
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
                    
                </div>
            </div>
        </div>

        <div class="col-md-6 col-lg-6">
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
                                                                    <p style="font-size:13px;">{{$data->job_description }}</p>
                                                                    <p style="font-size: 10px;">
                                                                        {{$data->start}} to {{$data->end}}                                                             
                                                                    </p>
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
              
                                                                  
                                                              </div>
                                                            @endforeach
                                                        @else
                                                            <div class="row tab-row">
                                                              <div class="col-12">
                                                                <b>No Data</b>
                                                              </div>
                                                            </div>
                                                        @endif

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
                                                                    {{ $data->description }}                                                            
                                                                </p> 
                                                                  
                                                                
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
<script src="https://cdn.ckeditor.com/ckeditor5/35.2.1/classic/ckeditor.js"></script>
<script>
    ClassicEditor
        .create( document.querySelector( '#basic-default-editor' ) )
        .catch( error => {
            console.error( error );
        } );
</script>
<script>
    $('#notificationAlert').delay(3000).fadeOut('slow');
</script>

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
