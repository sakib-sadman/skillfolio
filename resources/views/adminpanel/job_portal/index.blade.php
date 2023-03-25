@extends('layouts.adminpanel.master')


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
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Job Portal /</span> list</h4>
        </div>
        <div class="my-auto">
            <a href="{{ route('job-portal.create') }}">
                <button class="btn btn-info rounded-pill">Add Job Portal</button>
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
                        <th>Title</th>
                        <th>Company</th>
                        <th>Apply Deadline</th>
                        <th>Salary</th>
                        <th>Post Date</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody class="table-border-bottom-0">
                    @if ($job_portals->isNotEmpty())

                    @foreach ($job_portals as $key=> $data)
                    <tr>
                        <td>{{ $key+1 }}</td>
                        <td>{{ $data->job_title ?? '' }}</td>
                        <td>{{ $data->company_name ?? '' }}</td>
                        <td>{{ date('d M, Y', strtotime( $data->job_deadline))  ?? '' }}</td>
                        <td>{{ $data->job_salary ?? '' }}</td>
                        <td>{{ date('h:ia', strtotime($data->created_at))  }} <br>
                            {{ date('d M, Y', strtotime($data->created_at))  }}
                        </td>
                        <td> 
                            @if ($data->status == 1)
                                <a href="{{route('job-portal-switch', $data->id)}}">
                                    <span class="badge bg-label-primary me-1">Active</span>
                                </a>
                            @elseif($data->status == 0)
                                <a href="{{route('job-portal-switch', $data->id)}}">
                                    <span class="badge bg-label-danger me-1">Deactive</span>
                                </a>
                            @endif
                            
                            
                        </td>
                        <td>
                            
                            <a href="{{ route('job-portal.edit', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></a>  
                            <a href="#" onclick="if(!confirm('Are you sure you want to delete this Job News?')){event.preventDefault();}else{document.getElementById('delete-form-{{ $key }}').submit();}"
                                    class="btn btn-danger btn-sm"><i class="fa fa-trash"></i>
                            </a>
                                
                            <form id="delete-form-{{ $key }}" action="{{route('job-portal.destroy', $data->id)}}" method="POST" style="display: none;">
                                @csrf
                                @method('DELETE')
                            </form>

                           

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