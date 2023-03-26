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
    <div class="row">
        <div class="col-md-12 mb-3">
            <div class="d-flex justify-content-between align-items-center">
                <h4 class="card-title"></h4>
                <div class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="job-search">
                </div>
            </div>
        </div>
        @if ($job_portals->isNotEmpty())
    
            @foreach ($job_portals as $key => $data)
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">{{ $data->job_title ?? '' }}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">{{ $data->company_name ?? '' }}</h6>
                        <p class="card-text">{{ $data->job_description ?? '' }}</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Deadline: {{ date('d M, Y', strtotime($data->created_at))  ?? '' }}</li>
                        <li class="list-group-item">Salary: {{ $data->job_salary ?? '' }}</li>
                        <li class="list-group-item">Post Date: {{ date('d M, Y', strtotime($data->created_at))  }}</li>
                        <li class="list-group-item">Status: 
                            <a href="{{ route('job-portal-switch', $data->id) }}" onclick="return window.confirm('Confirm to make Job {{ $data->status == 1 ? 'Deactive' : 'Active' }}!')">
                                <span class="badge bg-label-{{ $data->status == 1 ? 'primary' : 'danger' }} me-1">{{ $data->status == 1 ? 'Active' : 'Deactive' }}</span>
                            </a>
                        </li>
                    </ul>
                    <div class="card-body">
                        <a href="{{ route('job-portal.edit', $data->id) }}" class="card-link"><i class="fa fa-pencil"></i> Edit</a>  
                        <a href="#" onclick="if(!confirm('Are you sure you want to delete this Job News?')){event.preventDefault();}else{document.getElementById('delete-form-{{ $key }}').submit();}"
                            class="card-link text-danger"><i class="fa fa-trash"></i> Delete
                        </a>                      
                    </div>
                    <form id="delete-form-{{ $key }}" action="{{route('job-portal.destroy', $data->id)}}" method="POST" style="display: none;">
                        @csrf
                        @method('DELETE')
                    </form>
                </div>
            </div>
            @endforeach
    
        @endif
    
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

<script>
  $(document).ready(function() {
        $('#job-search').on('keyup', function () {
            var value = $(this).val().toLowerCase();
            if (value.length == 0) {
                $('.card').fadeIn();
            } else {
                $('.card').each(function () {
                    if ($(this).text().toLowerCase().indexOf(value) > -1) {
                        $(this).fadeIn();
                    } else {
                        $(this).fadeOut();
                    }
                });
            }
        });
    });
</script>
@endsection