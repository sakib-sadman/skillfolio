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
    {{--  <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span>Roles</h4>  --}}

    <!-- Basic Layout & Basic with Icons -->
    <div class="row">
        <!-- Basic Layout -->
        <div class="col-md-12 col-lg-6" id="RoleTable">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">All Roles</h5>
                    <button class="btn btn-sm btn-primary" onclick="show('RoleTable','RoleForm')">Add New</button>
                </div>
                <div class="table-responsive text-nowrap">
                    <table class="table">
                      <thead >
                        <tr>
                          <th>SL</th>
                          <th>Name</th>
                          <th>Actions</th>
                        </tr>
                      </thead>
                        <tbody class="table-border-bottom-0">
                            @if ($roles->isNotEmpty())
                                    @foreach ($roles as $key => $data)
                                        <tr>
                                            <td>{{ $key+1 }}</td>
                                            <td><strong>{{ $data->name }}</strong></td>                                        
                                            <td>
                                                <a onclick="editRoleContent({{ $data->id }}, 'RoleTable', 'RoleEditForm')" class="btn btn-sm btn-warning"><i class="fa fa-pencil" style="color: white;"></i></a>
                                                <a href="{{ route('role_delete', $data->id) }}" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></a>
                                            </td>
                                        </tr>
                                @endforeach
                            @endif
                        </tbody>
                    </table>
                  </div>
            </div>
        </div>

        <div class="col-md-12 col-lg-6" id="RoleForm" style="display: none;">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Create New Role</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('role_add') }}" method="POST">
                        @csrf
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="basic-default-name"
                                    placeholder="admin,faculty,student" name="name" required />
                            </div>
                        </div>                        
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-primary btn-sm">Submit</button>
                                <button class="btn btn-dark btn-sm" onclick="show('RoleForm','RoleTable')">Back</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-12 col-lg-6" id="RoleEditForm" style="display: none;">
            <div class="card mb-4">
                <div class="card-header d-flex align-items-center justify-content-between">
                    <h5 class="mb-0">Edit Role</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('role_update') }}" method="POST">
                        @csrf

                        <input type="hidden" id="role_form_id" name="role_id" >
                        <div class="row mb-3">
                            <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control"
                                    placeholder="admin,faculty,student" name="name" id="role_form_name" required />
                            </div>
                        </div>                        
                        <div class="row justify-content-end">
                            <div class="col-sm-10">
                                <button type="submit" class="btn btn-success btn-sm">Save Changes</button>
                                <button class="btn btn-dark btn-sm" onclick="show('RoleEditForm','RoleTable')">Back</button>
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
    <script>
        $('#notificationAlert').delay(3000).fadeOut('slow');     
        function show(x,y)
        {
            let xx = document.getElementById(x);
            let yy = document.getElementById(y);

            xx.style.display = 'none';
            yy.style.display = 'block';
        }

        function editRoleContent(id, x, y)
        {
            show(x,y);

            var BaseUrl = window.location.origin;
            var apiURL = BaseUrl+'/admin/get-role/'+id;

            var role_form_id = document.getElementById('role_form_id');
            var role_form_name = document.getElementById('role_form_name');
            // console.log(apiURL, id)

            axios.get(apiURL)
            .then(function (response) {
                // console.log( response.data.data['id'],  response.data.data['name'])
                
                role_form_id.value = response.data.data['id']
                role_form_name.value = response.data.data['name']
            })
            .catch(function (error) {
                console.log(error)
            });
        }

        function editPermissionContent(id, x, y)
        {
            show(x,y);

            var BaseUrl = window.location.origin;
            var apiURL = BaseUrl+'/admin/get-permission/'+id;

            var permission_form_id = document.getElementById('permission_form_id');
            var permission_form_name = document.getElementById('permission_form_name');
            // console.log(apiURL, id)

            axios.get(apiURL)
            .then(function (response) {
                // console.log( response.data.data['id'],  response.data.data['name'])
                
                permission_form_id.value = response.data.data['id']
                permission_form_name.value = response.data.data['name']
            })
            .catch(function (error) {
                console.log(error)
            });
        }

        function AssignPermission(id,name,x)
        {
            document.getElementById(x).style = 'block';

            document.getElementById('RoleNameToAssign').innerHTML= name;
            document.getElementById('SelectedROLE').value= id;       
        }

       
    </script>
@endsection