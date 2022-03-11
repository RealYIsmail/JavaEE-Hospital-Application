
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All patients</title>
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
                                            <small>Admin's</small>
                                        </div>
                                    </div>
                                </li>
                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"><i class="material-icons">assignment</i>
                                        <span class="title">Appointment</span><span class="arrow"></span></a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_edit_appoint.jsp" class="nav-link "> <span class="title">Delete An Appointment</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="SurgeryDoc" class="nav-link "> <span class="title">View All Appointment</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">person</i>
                                        <span class="title">Employee</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="adminshowdoc" class="nav-link "> <span class="title">All Employee</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_add_doctor.jsp" class="nav-link "> <span class="title">Add Employee</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_edit_doctor.jsp" class="nav-link "> <span class="title">Remove An Employee</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">person</i>
                                        <span class="title">User</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_add_user.jsp" class="nav-link "> <span class="title">Add User</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_edit_user.jsp" class="nav-link "> <span class="title">Edit User</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">alarm</i>
                                        <span class="title">Booking</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_add_booking.jsp" class="nav-link "> <span class="title">Add Booking slots</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="showBooking" class="nav-link "> <span class="title">View Booking slots</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_edit_booking.jsp" class="nav-link "> <span class="title">Remove Booking slots</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">content_cut</i>
                                        <span class="title">Operations</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="admin_add_operations.jsp" class="nav-link "> <span class="title">Add Operations</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="SurgeryDoc" class="nav-link "> <span class="title">View Operations</span>
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
                                            <a href="ShowPat" class="nav-link "> <span class="title">All Patients</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_add_patient.jsp" class="nav-link "> <span class="title">Add Patient</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="showNHS" class="nav-link " > <span class="title">NHS Patient</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="showprivate" class="nav-link "> <span class="title">Private Patient</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="calculateTurnover.jsp" class="nav-link "> <span class="title">Invoice</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="admin_remove_patient.jsp" class="nav-link "> <span class="title">Remove Patient</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="nav-item  ">
                                    <a href="Home.jsp" class="nav-link "><i class="material-icons">power_settings_new</i>
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
                                    <div class="page-title">Patients List</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="admin_dashboard.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li><a class="parent-item" href="#">Patients</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">NHS Patient List</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="tabbable-line">
                                    <ul class="nav nav-pills nav-pills-rose">
                                        <li class="nav-item tab-all"><a class="nav-link active show"
                                                                        href="#tab1" data-toggle="tab">List View</a></li>
                                        <li class="nav-item tab-all"><a class="nav-link" href="#tab2"
                                                                        data-toggle="tab">Grid View</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active fontawesome-demo" id="tab1">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="card  card-box">
                                                        <div class="card-head">
                                                            <header></header>
                                                            <div class="tools">
                                                                <a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
                                                                <a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
                                                                <a class="t-close btn-color fa fa-times" href="javascript:;"></a>
                                                            </div>
                                                        </div>
                                                        <div class="card-body ">
                                                            <div class="table-scrollable">
                                                                <table>
                                                                <% 
                                                                String details = (String) request.getAttribute("showNHS") ;
                                                                out.println("PatientID -- PatientName -- PatientType -- PatientDOB -- Username <br/>") ;
                                                                out.println(details);
                                                               %>

                                                                </table>
                                                                 
                                                               <button onclick="javascript:window.print();" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Print</span> </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
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
        <!-- js part -->     
        <script src="assets/plugins/jquery/jquery.min.js" ></script>

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
