
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient Dashboard</title>
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
        <!-- icons -->
        <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <!--bootstrap -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <!-- Material Design Lite CSS -->
        <link href="assets/plugins/material/material.min.css" rel="stylesheet" >
        <link href="assets/css/material_style.css" rel="stylesheet">
        <!-- Theme Styles -->
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />	
        <link href="assets/css/plugins.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/pages/formlayout.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/theme-color.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white dark-color logo-dark">
        <div class="page-wrapper">
            <!-- start header -->
            <div class="page-header navbar navbar-fixed-top">
                <div class="page-header-inner ">
                    <!-- logo start -->
                    <div class="page-logo">
                        <a href="patient_dashboard.jsp">
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
                                            <small>Patient's</small>
                                        </div>
                                    </div>
                                </li>

                                <li class="nav-item  ">
                                    <a href="patient_dashboard.jsp" class="nav-link nav-toggle"> <i class="material-icons">assignment</i>
                                        <span class="title">Book Appointment</span> 
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="edit_appointment.jsp" class="nav-link nav-toggle"> <i class="material-icons">assignment_late</i>
                                        <span class="title">Edit Appointment</span> 
                                    </a>
                                </li>

                                <li class="nav-item  ">
                                    <a href="view_appointment.jsp" class="nav-link nav-toggle"> <i class="material-icons">assignment_ind</i>
                                        <span class="title">View Appointment</span> 
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="maps.jsp" class="nav-link "><i class="material-icons">map</i>
                                        <span class="title">Google Maps</span>
                                    </a>
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
                        <div class="page-bar">
                            <div class="page-title-breadcrumb">
                                <div class=" pull-left">
                                    <div class="page-title">Book Appointment</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="patient_dashboard.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>                                    
                                    <li class="active">Book Appointment</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Book Appointment</header>                                        
                                    </div>
                                    <div class="card-body" id="bar-parent">
                                        <form action ="PatientDoc" method="post">
                                        <table>
                                            <tr> <td> dateofappointment </td><td><input type="text" name="dateofappointment"></td></tr>
                                            <tr> <td> start </td><td><input type="text" name="start"></td></tr>
                                            <tr> <td> Request </td><td><input type="text" name="Request"></td></tr>
                                            <tr> <td> employeeid </td><td><input type="number" name="employee"></td></tr>
                                            <tr> <td> patientid </td><td><input type="number" name="patient"></td></tr>
                                            <tr> <td></td><td><input type="submit" value="Submit"></td></tr>

                                        </table>                
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
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
        <!-- start js include path -->
        <script src="assets/plugins/jquery/jquery.min.js" ></script>
        <script src="assets/plugins/popper/popper.min.js" ></script>
        <script src="assets/plugins/jquery-blockui/jquery.blockui.min.js" ></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
        <script src="assets/plugins/jquery-validation/js/jquery.validate.min.js" ></script>
        <script src="assets/plugins/jquery-validation/js/additional-methods.min.js" ></script>
        <!-- bootstrap -->
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" ></script>
        <script src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
        <script src="assets/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker-init.js"></script>
        <!-- Common js-->
        <script src="assets/js/app.js" ></script>
        <script src="assets/js/pages/validation/form-validation.js" ></script>
        <script src="assets/js/layout.js" ></script>
        <script src="assets/js/theme-color.js" ></script>
        <!-- Material -->
        <script src="assets/plugins/material/material.min.js"></script>
        <!-- end js include path -->
    </body>
</html>
