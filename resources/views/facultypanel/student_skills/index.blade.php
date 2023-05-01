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
  
    <!-- Basic Bootstrap Table -->
    <div class="row">
        <div class="col-md-6">
            <div>
                <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Skills /</span> Pending</h4>
            </div>
            <div class="card">
                    <div class="table-responsive text-nowrap p-4">
                        <table class="table" id="DataTable">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Student</th>
                                    <th>Course</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                                @if ($skills_pending->isNotEmpty())

                                @foreach ($skills_pending as $key=> $data)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ $data->user->name ?? ''}}</td>
                                    <td>{{ $data->course_name ?? ''}}</td>
                                    <td><span class="badge bg-label-{{ $data->status == 0 ? 'warning' : ($data->status == 1 ? 'success' : 'danger') }} me-1">{{ $data->status == 0 ? 'Pending' : ($data->status == 1 ? 'Accepted' : 'Declined') }}</span></td>
                                    <td>
                                        <a href="{{ route('student_skills_show', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-share" aria-hidden="true"></i></a>  

                                        <a href="{{route('student_skills_delete', $data->id)}}" onclick="confirm('Are you sure you want to delete this Application?')"
                                                class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>
                                        </a>
                                      

                                    

                                    </td>
                                </tr>
                                @endforeach

                                @endif

                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
         <div class="col-md-6">
            <div>
                <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Skills /</span> Approved or Declined</h4>
            </div>
            <div class="card">
                    <div class="table-responsive text-nowrap p-4">
                        <table class="table" id="DataTable1">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Student</th>
                                    <th>Course</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody class="table-border-bottom-0">
                                @if ($skills_approved_or_declined->isNotEmpty())

                                @foreach ($skills_approved_or_declined as $key=> $data)
                                <tr>
                                    <td>{{ $key+1 }}</td>
                                    <td>{{ $data->user->name ?? ''}}</td>
                                    <td>{{ $data->course_name ?? ''}}</td>
                                    <td><span class="badge bg-label-{{ $data->status == 0 ? 'warning' : ($data->status == 1 ? 'success' : 'danger') }} me-1">{{ $data->status == 0 ? 'Pending' : ($data->status == 1 ? 'Accepted' : 'Declined') }}</span></td>
                                    <td>
                                        <a href="{{ route('student_skills_show', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-share" aria-hidden="true"></i></a>  
                                    </td>
                                </tr>
                                @endforeach

                                @endif

                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
    <!--/ Basic Bootstrap Table -->



</div>
@endsection

@section('header_css')
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
@endsection

@section('footer_js')
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
<script>
    $('#notificationAlert').delay(3000).fadeOut('slow');
    $(document).ready(function () {
        $('#DataTable').DataTable();
        $('#DataTable1').DataTable();
    });
</script>
@endsection