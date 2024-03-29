<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>{{ config('app.name') }} | Student Panel</title>

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
    <link rel="stylesheet" href="/AdminPanelAsset/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/AdminPanelAsset/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/AdminPanelAsset/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/AdminPanelAsset/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/AdminPanelAsset/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <link rel="stylesheet" href="/AdminPanelAsset/vendor/libs/apex-charts/apex-charts.css" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
        integrity="sha256-eZrrJcwDc/3uDhsdt61sL2oOBY362qM3lon1gyExkL0=" crossorigin="anonymous">
    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/AdminPanelAsset/vendor/js/helpers.js"></script>
    <script src="/AdminPanelAsset/js/config.js"></script>

    @yield('header_css')
</head>

<body>
    <!-- Layout wrapper -->
    <div class="layout-wrapper layout-content-navbar">
        <div class="layout-container">
            <!-- Menu -->

            <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
                <div class="app-brand demo">
                    <a href="{{ route('student_dashboard') }}" class="app-brand-link">
                        <img src="/logo/favicon.png" style="max-width:50px;" alt="">
                        <span class="app-brand-text demo menu-text fw-bolder ms-2">Dashboard</span>
                    </a>

                    <a href="{{ route('student_dashboard') }}"
                        class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
                        <i class="bx bx-chevron-left bx-sm align-middle"></i>
                    </a>
                </div>

                <div class="menu-inner-shadow"></div>

                <ul class="menu-inner py-1">
                    <!-- Dashboard -->
                    <li class="menu-item {{ Request::routeIs('student_dashboard') ? 'active' : '' }}">
                        <a href="{{ route('student_dashboard') }}" class="menu-link ">
                            <i class="menu-icon tf-icons bx bx-home-circle"></i>
                            <div data-i18n="Analytics">Dashboard</div>
                        </a>
                    </li>

                    <li class="menu-header small text-uppercase">
                        <span class="menu-header-text">Activities</span>
                    </li>
                    <li class="menu-item {{ Request::routeIs('student_profile.*') ? 'active' : '' }}">
                        <a href="{{ route('student_profile') }}" class="menu-link">
                            <i class="menu-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z" />
                                  </svg>
                                  
                            </i>
                            <div data-i18n="Analytics">Profile Info</div>
                        </a>
                    </li>
 
                    <li class="menu-item {{ Request::routeIs('student-job-portal-list.*') || Request::routeIs('student-job-portal-view.*') ? 'active' : '' }}">
                        <a href="{{ route('student-job-portal-list') }}" class="menu-link">
                            <i class="menu-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                                    <path stroke-linecap="round" stroke-linejoin="round" d="M13.5 16.875h3.375m0 0h3.375m-3.375 0V13.5m0 3.375v3.375M6 10.5h2.25a2.25 2.25 0 002.25-2.25V6a2.25 2.25 0 00-2.25-2.25H6A2.25 2.25 0 003.75 6v2.25A2.25 2.25 0 006 10.5zm0 9.75h2.25A2.25 2.25 0 0010.5 18v-2.25a2.25 2.25 0 00-2.25-2.25H6a2.25 2.25 0 00-2.25 2.25V18A2.25 2.25 0 006 20.25zm9.75-9.75H18a2.25 2.25 0 002.25-2.25V6A2.25 2.25 0 0018 3.75h-2.25A2.25 2.25 0 0013.5 6v2.25a2.25 2.25 0 002.25 2.25z" />
                                </svg>
                            </i>
                            <div data-i18n="Analytics">Job Portal</div>
                        </a>
                    </li>


                  
                   






                </ul>
            </aside>
            <!-- / Menu -->

            <!-- Layout container -->
            <div class="layout-page">
                <!-- Navbar -->

                <nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
                    id="layout-navbar">
                    <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
                        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                            <i class="bx bx-menu bx-sm"></i>
                        </a>
                    </div>

                    <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">


                        <ul class="navbar-nav flex-row align-items-center ms-auto">
                            <!-- User -->
                            <li class="nav-item navbar-dropdown dropdown-user dropdown">
                                <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);"
                                    data-bs-toggle="dropdown">
                                    <div class="avatar">
                                        <img src="/logo/user-logo.jpg" alt class="w-px-40 h-auto rounded-circle" />
                                    </div>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end">
                                    <li>
                                        <a class="dropdown-item" href="{{ route('student_profile') }}">
                                            <div class="d-flex">
                                                <div class="flex-shrink-0 me-3">
                                                    <div class="avatar">
                                                        <img src="/logo/user-logo.jpg" alt="avatar"
                                                            class="w-px-40 h-auto rounded-circle" />
                                                    </div>
                                                </div>
                                                <div class="flex-grow-1">
                                                    <span class="fw-semibold d-block">{{ Auth::user()->name }}</span>
                                                    <small
                                                        style="color:blue;">{{ Auth::user()->getRoleNames()[0] }}</small>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="dropdown-divider"></div>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="{{ route('student_profile') }}">
                                            <i class="bx bx-user me-2"></i>
                                            <span class="align-middle">My Profile</span>
                                        </a>
                                    </li>


                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();"
                                            class="dropdown-item">
                                            <i class="bx bx-power-off me-2"></i>
                                            <span class="align-middle">Log Out </span>
                                            <form id="logout-form" action="{{route('logout')}}" method="POST"
                                                style="display: none;">
                                                @csrf
                                            </form>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <!--/ User -->
                        </ul>
                    </div>
                </nav>

                <!-- / Navbar -->

                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->

                    @yield('content')

                    <!-- / Content -->

                    <!-- Footer -->
                    <footer class="content-footer footer bg-footer-theme">
                        <div
                            class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                            <div class="mb-2 mb-md-0">
                                © 2023, developed with <i class="fa fa-heart" style="color: red;"></i> by <a href="#" class="footer-link fw-bolder">Castor</a>
                            </div>

                        </div>
                    </footer>
                    <!-- / Footer -->

                    <div class="content-backdrop fade"></div>
                </div>
                <!-- Content wrapper -->
            </div>
            <!-- / Layout page -->
        </div>

        <!-- Overlay -->
        <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->



    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/AdminPanelAsset/vendor/libs/jquery/jquery.js"></script>
    <script src="/AdminPanelAsset/vendor/libs/popper/popper.js"></script>
    <script src="/AdminPanelAsset/vendor/js/bootstrap.js"></script>
    <script src="/AdminPanelAsset/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/AdminPanelAsset/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="/AdminPanelAsset/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="/AdminPanelAsset/js/main.js"></script>

    <!-- Page JS -->
    <script src="/AdminPanelAsset/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>


 
    <script src="https://unpkg.com/axios/dist/axios.min.js" defer></script>

    @yield('footer_js')
</body>


</html>