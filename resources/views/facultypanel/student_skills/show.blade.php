
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
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Student Skill / </span> Apply Data</h4>
    <div class="row">
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">View Information</h5>
                </div>
                <div class="card-body">
                    {{-- <form action="{{ route('student-course.edit') }}" method="POST" enctype="multipart/form-data">
                        @csrf --}}


                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-name"
                                    placeholder="John Doe" value="{{ $student->name ?? '' }}" name="name" disabled />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-phone">Phone</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-phone"
                                    placeholder="017*******" value="{{ $student->phone ?? '' }}" name="phone" disabled />
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-email">Email</label>
                            <div class="col-sm-10">
                                <div class="input-group input-group-merge">
                                    <input type="email" id="basic-default-email" class="form-control"
                                        placeholder="admin@gmail.com" aria-label="john.doe"
                                        aria-describedby="basic-default-email2" value="{{ $student->email ?? ''  }}" name="email" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-course-name">Course Name <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-course-name" placeholder="Enter Course Name"
                                    name="course_name" value="{{ $student_skill->course_name ?? '' }}" disabled />
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="asd1" class="col-sm-2 form-label">Faculty <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <select class="form-select" id="asd1" name="faculty_id" disabled>
                                    @if ($faculties->isNotEmpty())
                                        @foreach ($faculties as $data)
                                            <option value="{{ $data->id }}" @if ($data->id == $student_skill->faculty_id) selected @endif>{{$data->name}}</option>                                        
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label for="asd1" class="col-sm-2 form-label">Course Grade <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <select class="form-select" id="asd1" name="course_grade" disabled>
                                    <option value="A" @if ('A' == $student_skill->course_grade) selected @endif>A</option>
                                    <option value="A-" @if ('A-' == $student_skill->course_grade) selected @endif>A-</option>
                                    <option value="B+" @if ('B+' == $student_skill->course_grade) selected @endif>A+</option>
                                    <option value="B" @if ('B' == $student_skill->course_grade) selected @endif>B</option>
                                    <option value="B-" @if ('B-' == $student_skill->course_grade) selected @endif>B-</option>
                                    <option value="C+" @if ('C+' == $student_skill->course_grade) selected @endif>C+</option>
                                    <option value="C" @if ('C' == $student_skill->course_grade) selected @endif>C</option>
                                    <option value="C-" @if ('C-' == $student_skill->course_grade) selected @endif>C-</option>
                                    <option value="D" @if ('D' == $student_skill->course_grade) selected @endif>D</option>
                                    <option value="F" @if ('F' == $student_skill->course_grade) selected @endif>F</option>
                                </select>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-course-completion">Course Completion <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <input type="date" class="form-control" id="basic-default-course-completion" placeholder="Enter Course completion"
                                    name="course_completed"  value="{{ $student_skill->course_completed ?? '' }}" disabled />
                            </div>
                        </div>


                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-course-completion">Status</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-course-completion" placeholder="Enter Course completion"
                                    name="status"  value="{{ $student_skill->status == 0 ? 'Pending' : ($student_skill->status == 1 ? 'Accepted' : 'Declined') }}" disabled />
                            </div>
                        </div>


                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                @if ($student_skill->status == 0)
                                    <a href="{{ route('student_skills_approve', $student_skill->id) }}" onclick="confirm('Are you sure your want to Approve this Application?')" class="btn btn-success btn-sm">Accept</a>
                                    <a href="{{ route('student_skills_decline', $student_skill->id) }}" onclick="confirm('Are you sure your want to Decline this Application?')" class="btn btn-danger btn-sm">Decline</a>
                                    
                                @endif
                                <a href="{{ route('student_skills_list') }}" class="btn btn-dark btn-sm">Back to List</a>
                            </div>
                        </div>

                    {{--  </form>  --}}
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