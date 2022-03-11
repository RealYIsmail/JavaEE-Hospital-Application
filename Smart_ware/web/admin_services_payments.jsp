

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
        <!-- icons -->
        <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--bootstrap -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- Material Design Lite CSS -->
        <link href="assets/plugins/material/material.min.css" rel="stylesheet" >
        <link href="assets/css/material_style.css" rel="stylesheet">
        <!-- Theme Styles -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/theme-color.css" rel="stylesheet" type="text/css" />

        <style>
            .row {
                margin-bottom: 20px;
            }

            .button.button-small {
                height: 30px;
                line-height: 30px;
                padding: 0px 10px;
            }

            td input[type=text],
            td select {
                width: 100%;
                height: 30px;
                margin: 0;
                padding: 2px 8px;
            }

            th:last-child {
                text-align: right;
            }

            td:last-child {
                text-align: right;
            }

            td:last-child .button {
                width: 30px;
                height: 30px;
                text-align: center;
                padding: 0px;
                margin-bottom: 0px;
                margin-right: 5px;
                background-color: #FFF;
            }

            td:last-child .button .fa {
                line-height: 30px;
                width: 30px;
            }
        </style>

    </head>
    <body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-color logo-dark">
        <div class="page-wrapper">
            <!-- start header -->
            <div class="page-header navbar navbar-fixed-top">
                <div class="page-header-inner ">
                    <!-- logo start -->
                    <div class="page-logo">
                        <a href="Doctor_dashboard.jsp">
                            <img alt="" src="assets/img/logo.png">
                            <span class="logo-default" >Smart Ware</span> </a>
                    </div>
                    <!-- logo end -->
                    <ul class="nav navbar-nav navbar-left in">
                        <li><a href="#" class="menu-toggler sidebar-toggler font-size-20"><i class="fa fa-exchange" aria-hidden="true"></i></a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-left in">
                        <!-- start full screen button -->
                        <li><a href="javascript:;" class="fullscreen-click font-size-20"><i class="fa fa-arrows-alt"></i></a></li>
                        <!-- end full screen button -->
                    </ul>
                    <!-- start mobile menu -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                        <span></span>
                    </a>
                    <!-- end mobile menu -->

                </div>
            </div>
            <!-- end header -->
            <!-- start page container -->
            <div class="page-container">
                <!-- start sidebar menu -->
                <div class="sidebar-container">
                    <div class="sidemenu-container navbar-collapse collapse fixed-menu">
                        <div id="remove-scroll" class="left-sidemenu">
                            <ul class="sidemenu  page-header-fixed slimscroll-style" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                                <li class="sidebar-toggler-wrapper hide">
                                    <div class="sidebar-toggler">
                                        <span></span>
                                    </div>
                                </li>
                                <li class="sidebar-user-panel">
                                    <div class="user-panel">
                                        <div class="pull-left info">
                                            <p> Dashboard</p>
                                            <small>Doctor's</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"><i class="material-icons">assignment</i>
                                        <span class="title">Appointment</span><span class="arrow"></span></a>
                                    <ul class="sub-menu">

                                        <li class="nav-item  ">
                                            <a href="admin_edit_appoint.jsp" class="nav-link "> <span class="title">Edit Appointment</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_appointments.jsp" class="nav-link "> <span class="title">View All Appointment</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">person</i>
                                        <span class="title">Doctors</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_show_doctors.jsp" class="nav-link "> <span class="title">All Doctor</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_add_doctor.jsp" class="nav-link "> <span class="title">Add Doctor</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_edit_doctor.jsp" class="nav-link "> <span class="title">Edit Doctor</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">accessible</i>
                                        <span class="title">Patients</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_show_patient.jsp" class="nav-link "> <span class="title">All Patients</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_add_patient.jsp" class="nav-link "> <span class="title">Add Patient</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_edit_patient.jsp" class="nav-link "> <span class="title">Edit Patient</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">monetization_on</i>
                                        <span class="title">Payments</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_services_payments.jsp" class="nav-link "> <span class="title">Services Charges</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item  ">
                                    <a href="Login.jsp" class="nav-link "><i class="material-icons">power_settings_new</i>
                                        <span class="title">Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- end sidebar menu -->
                <!-- start page content -->
                <div class="page-content-wrapper">
                    <div class="page-content">
                        <!-- Editable table -->
                        <div class="container">

                            <div class="row">
                                <div class="col-md-12">
                                    <br>
                                    <button class="btn btn-default pull-right add-row"><i class="fa fa-plus"></i>&nbsp;&nbsp; Add Row</button>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered" id="editableTable">
                                        <thead>
                                            <tr>
                                                <th>Service Name</th>
                                                <th>Date</th>
                                                <th>Services Charges</th>
                                                <th>Admin Name</th>
                                                <th>Edit</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr data-id="1">
                                                <td data-field="name">Dental Surgery</td>
                                                <td data-field="birthday">May 19, 2015</td>
                                                <td data-field="age">£ 26</td>
                                                <td data-field="sex">Abdullah</td>
                                                <td>
                                                    <a class="button button-small edit" title="Edit">
                                                        <i class="fa fa-pencil"></i>
                                                    </a>

                                                    <a class="button button-small edit" title="Delete">
                                                        <i class="fa fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            <tr data-id="2">
                                                <td data-field="name">Heart operation</td>
                                                <td data-field="birthday">May 20, 2015</td>
                                                <td data-field="age">£ 42</td>
                                                <td data-field="sex">Abdullah</td>
                                                <td>
                                                    <a class="button button-small edit" title="Edit">
                                                        <i class="fa fa-pencil"></i>
                                                    </a> <a class="button button-small edit" title="Delete">
                                                        <i class="fa fa-trash"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <!-- Editable table -->
                    </div>
                </div>
                <!-- end page content -->

            </div>
            <!-- end page container -->
            <!-- start footer -->
            <div class="page-footer">
                <div class="page-footer-inner"> 2020 &copy; smart ware
                </div>
                <div class="scroll-to-top">
                    <i class="material-icons">eject</i>
                </div>
            </div>
            <!-- end footer -->
        </div>
        <!-- js part -->     
        <script src="assets/plugins/jquery/jquery.min.js" ></script>

        <script src="assets/js/pages/edit_table.js" ></script>
        <script src="assets/plugins/popper/popper.min.js" ></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.min.js" ></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
        <!-- bootstrap -->
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" ></script>
        <!-- Common js-->
        <script src="assets/js/app.js" ></script>
        <script src="assets/js/layout.js" ></script>
        <script src="assets/js/theme-color.js" ></script>
        <!-- Material -->
        <script src="assets/plugins/material/material.min.js"></script>

    </body>
</html>
