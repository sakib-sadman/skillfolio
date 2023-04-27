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
    <div class="d-flex justify-content-between">
        <div>
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Skills /</span> list</h4>
        </div>
        <div class="my-auto">
            <a href="{{ route('student-skills.create') }}">
                <button class="btn btn-info rounded-pill">Apply for Skill</button>
            </a>
        </div>
    </div>
    <!-- Basic Bootstrap Table -->
    <div class="card">

        <div class="table-responsive text-nowrap p-4">
            <table class="table" id="DataTable">
                <thead>
                    <tr>
                        <th>SL</th>
                        <th>Course</th>
                        <th>Faculty</th>
                        <th>Grade</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @if ($student_skills->isNotEmpty())

                    @foreach ($student_skills as $key=> $data)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $data->course_name ?? ''}}</td>
                        <td>{{ $data->faculty->name ?? ''}}</td>
                        <td>{{ $data->course_grade ?? '' }}</td>
                       
                     
                        <td>{{ date('h:ia', strtotime($data->created_at))  }} <br>
                            {{date('d M, Y', strtotime($data->created_at)) }}
                        </td>
                        <td><span class="badge bg-label-{{ $data->status == 0 ? 'warning' : ($data->status == 1 ? 'success' : 'danger') }} me-1">{{ $data->status == 0 ? 'Pending' : ($data->status == 1 ? 'Accepted' : 'Declined') }}</span></td>
                        <td>
                            <a href="{{ route('student-skills.show', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-share" aria-hidden="true"></i></a>  

                            {{--  <a href="#" onclick="if(!confirm('Are you sure you want to delete this Application?')){event.preventDefault();}else{document.getElementById('delete-form-{{ $key }}').submit();}"
                                    class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>
                            </a>
                                
                            <form id="delete-form-{{ $key }}" action="{{route('student-skills.destroy', $data->id)}}" method="POST" style="display: none;">
                                @csrf
                                @method('DELETE')
                            </form>  --}}

                           

                        </td>
                    </tr>
                    @endforeach

                    @endif

                </tbody>
            </table>
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
    });
</script>
@endsection