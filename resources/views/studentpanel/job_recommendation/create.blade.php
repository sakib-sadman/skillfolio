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
    @if($errors->any())
        <div class="row">
            <div class="col-md-12">
                <div id="notificationAlertErrors" style="display: block;">
                    <div class="alert alert-danger">
                        <ul>
                            @foreach($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    @endif
    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Job Recommendation / </span> Apply</h4>
    <div class="row">
        <div class="col-xxl">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Information</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('job-recommendation.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf

                        

                        <div class="row mb-3">
                            <label for="asd1" class="col-sm-2 form-label">Faculty <span style="color: red;">*</span></label>
                            <div class="col-sm-10">
                                <select class="form-select" id="asd1" name="faculty_id" required>
                                    <option value="" selected disabled>--select faculty--</option>
                                    @if ($faculties->isNotEmpty())
                                        @foreach ($faculties as $data)
                                            <option value="{{ $data->id }}">{{$data->name}}</option>                                        
                                        @endforeach
                                    @endif
                                </select>
                            </div>
                        </div>

                        

                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-course-completion">Recommendation Letter</label>
                            <div class="col-sm-10">
                                <textarea name="recommendation_letter" id="basic-default-editor" class="form-control" cols="30" rows="10"></textarea>
                            </div>
                        </div>


                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                                <a href="{{ route('job-recommendation.index') }}" class="btn btn-dark btn-sm">Back to List</a>
                            </div>
                        </div>
                    </form>
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
    $('#notificationAlertErrors').delay(3000).fadeOut('slow');
</script>
@endsection