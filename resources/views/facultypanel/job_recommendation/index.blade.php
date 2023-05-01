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
    
    <div class="row">
        <div class="col-md-6">
            <div class="d-flex justify-content-between">
                <div>
                    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Job Recommendation /</span> list</h4>
                </div>
              
            </div>
            <!-- Basic Bootstrap Table -->
            <div class="card">
        
                <div class="table-responsive text-nowrap p-4">
                    <table class="table" id="DataTable">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Student</th>
                                <th>Apply Date</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @if ($pending_job_recommendations->isNotEmpty())
        
                            @foreach ($pending_job_recommendations as $key=> $data)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $data->user->name ?? ''}}</td>
                             
                                <td>{{ date('h:ia', strtotime($data->created_at))  }} <br>
                                    {{date('d M, Y', strtotime($data->created_at)) }}
                                </td>
                                <td><span class="badge bg-label-{{ $data->status == 0 ? 'warning' : ($data->status == 1 ? 'success' : 'danger') }} me-1">{{ $data->status == 0 ? 'Pending' : ($data->status == 1 ? 'Accepted' : 'Declined') }}</span></td>
                                <td>
                                    <a href="{{ route('recommendation_view', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-share" aria-hidden="true"></i></a>  
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
        <div class="col-md-6">
            <div class="d-flex justify-content-between">
                <div>
                    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Job Recommendation /</span> list</h4>
                </div>
              
            </div>
            <!-- Basic Bootstrap Table -->
            <div class="card">
        
                <div class="table-responsive text-nowrap p-4">
                    <table class="table" id="DataTable">
                        <thead>
                            <tr>
                                <th>SL</th>
                                <th>Student</th>
                                <th>Apply Date</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @if ($accpetedDeclined_job_recommendations->isNotEmpty())
        
                            @foreach ($accpetedDeclined_job_recommendations as $key=> $data)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $data->user->name ?? ''}}</td>
                             
                                <td>{{ date('h:ia', strtotime($data->created_at))  }} <br>
                                    {{date('d M, Y', strtotime($data->created_at)) }}
                                </td>
                                <td><span class="badge bg-label-{{ $data->status == 0 ? 'warning' : ($data->status == 1 ? 'success' : 'danger') }} me-1">{{ $data->status == 0 ? 'Pending' : ($data->status == 1 ? 'Accepted' : 'Declined') }}</span></td>
                                <td>
                                    <a href="{{ route('recommendation_view', $data->id) }}" class="btn btn-primary btn-sm"><i class="fa fa-share" aria-hidden="true"></i></a>  
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
    </div>
    


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