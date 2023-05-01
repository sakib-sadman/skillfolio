<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>{{ config('app.name') }}</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="{{ asset('logo/favicon.png') }}" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
        rel="stylesheet" />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/vendor/fonts/boxicons.css') }}" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/vendor/css/core.css') }}"
        class="template-customizer-core-css" />
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/vendor/css/theme-default.css') }}"
        class="template-customizer-theme-css" />
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/css/demo.css') }}" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/vendor/libs/perfect-scrollbar/perfect-scrollbar.css') }}" />

    <!-- Page CSS -->
    <!-- Page -->
    <link rel="stylesheet" href="{{ asset('AdminPanelAsset/vendor/css/pages/page-auth.css') }}" />
    <!-- Helpers -->
    <script src="{{ asset('AdminPanelAsset/vendor/js/helpers.js') }}"></script>


    <script src="{{ asset('AdminPanelAsset/js/config.js') }}"></script>
</head>

<body>
    <!-- Content -->

    <div class="container-xxl">
        <div class="authentication-wrapper authentication-basic container-p-y">
            <div class="authentication-inner">
                <!-- Register -->
                <div class="card">
                    <div class="card-body ">

                        <h4 class="mb-2 text-center">Welcome to {{ config('app.name') }}!</h4>
                        <p class="mb-4 text-center">Please sign-up to your account</p>
                           
                                @if($errors->any())
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div id="notificationAlertError" style="display: block;">
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
                               @if (\Session::has('success'))
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div id="notificationAlertSuccess" style="display: block;">
                                                <div class="alert alert-warning">
                                                    <span style="color:black;">
                                                        {!! \Session::get('success') !!}
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                @endif
                        <form id="formAuthentication" class="mb-3" action="{{ route('user-account-create') }}" method="POST">
                            @csrf
                            <div class="mb-3">
                                <label for="name" class="form-label">Name</label>
                                <input type="text" class="form-control" id="name" name="name"
                                    placeholder="Enter your name" autofocus  required/>
                            </div>

                            <div class="mb-3">
                                <label for="email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="email" name="email"
                                    placeholder="Enter your email" autofocus required />
                            </div>

                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone</label>
                                <input type="text" class="form-control" id="phone" name="phone"
                                    placeholder="Enter your phone" autofocus required/>
                            </div>


                            <div class="mb-3">
                                <label for="Gender" class="form-label">Gender</label>
                                <select name="gender" class="form-select">
                                    <option value="" disabled selected>--select one--</option>
                                    <option value="male">Male</option>
                                    <option value="female">female</option>
                                </select>
                                
                            </div>

                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <textarea name="address" class="form-control" cols="30" rows="10"></textarea>
                            </div>

                            
                         
                            <div class="mb-3 form-password-toggle">
                                <div class="d-flex justify-content-between">
                                    <label class="form-label" for="password">Password</label>
                                   
                                </div>
                                <div class="input-group input-group-merge">
                                    <input type="password" id="password" class="form-control" name="password"
                                        aria-describedby="password" required />
                                    <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                </div>
                            </div>
                           
                            <div class="mb-3">
                                <button class="btn btn-success d-grid w-100" type="submit">Sign up</button>
                            </div>
                            
                          

                        </form>

                        <p class="text-center">
                            <span>Already have account?</span>
                            <a href="{{route('student_dashboard')}}">
                                <span>Sign In</span>
                            </a>
                        </p>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- / Content -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="{{ asset('AdminPanelAsset/vendor/libs/jquery/jquery.js') }}"></script>
    <script src="{{ asset('AdminPanelAsset/vendor/libs/popper/popper.js') }}"></script>
    <script src="{{ asset('AdminPanelAsset/vendor/js/bootstrap.js') }}"></script>
    <script src="{{ asset('AdminPanelAsset/vendor/libs/perfect-scrollbar/perfect-scrollbar.js') }}"></script>

    <script src="{{ asset('AdminPanelAsset/vendor/js/menu.js') }}"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="{{ asset('AdminPanelAsset/js/main.js') }}"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>

    <script>
         $('#notificationAlertSuccess').delay(5000).fadeOut('slow');     
         $('#notificationAlertError').delay(5000).fadeOut('slow');     
    </script>
</body>

</html>