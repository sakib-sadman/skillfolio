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
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">User / </span> Edit</h4>
    <div class="row">
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">User Information</h5>
                </div>
                <div class="card-body">
                    
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-job-title">Job Title <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-job-title" placeholder="Enter Job Title"
                                    name="job_title" value="{{ $job_portal->job_title ?? '' }}" disabled />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-company-name">Company Name <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-company-name" placeholder="Enter Company Name"
                                    name="company_name" value="{{ $job_portal->company_name ?? '' }}" disabled />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-job-location">Job Location <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-job-location" placeholder="Enter Job location"
                                    name="job_location" value="{{ $job_portal->job_location ?? '' }}" disabled />
                            </div>
                        </div>

                         <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-job-salary">Job salary <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-job-salary" placeholder="Enter Salary Range"
                                    name="job_salary" value="{{ $job_portal->job_salary ?? '' }}" disabled />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-job-deadline">Application Deadline <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="basic-default-job-deadline" placeholder="Enter deadline"
                                    name="job_deadline" value="{{ $job_portal->job_deadline ?? '' }}" disabled />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-job-details">Job Details <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <textarea name="job_details" id="basic-default-editor1" class="form-control" cols="30" rows="10" disabled>{{ $job_portal->job_details ?? '' }}</textarea>
                            </div>
                        </div>
   

                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <a href="{{ route('student-job-portal-list') }}" class="btn btn-dark btn-sm">Back to List</a>
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
@endsection