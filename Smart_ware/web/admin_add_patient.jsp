<%-- 

    Document   : Addmin Add patient

    Created on : Dec 8, 2020, 3:07:12 PM

    Author     : Yonis and Abdullah
    
    Notice: needs existing foreign key to work, either create a new entry in the original table or change the input of your foreign key

--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                                            <a href="admin_doc_schedule.jsp" class="nav-link "> <span class="title">Doctor Schedule</span>
                                            </a>
                                        </li>
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
                                            <a href="admin_services_payments.jsp" class="nav-link "> <span class="title">Add Payments</span>
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
                        <div class="page-bar">
                            <div class="page-title-breadcrumb">
                                <div class=" pull-left">
                                    <div class="page-title">Add Patient</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="admin_dashboard.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li><a class="parent-item" href="#">Patient</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">Add Patient</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Basic Information</header>
                                        <button id = "panel-button" 
                                                class = "mdl-button mdl-js-button mdl-button--icon pull-right" 
                                                data-upgraded = ",MaterialButton">
                                            <i class = "material-icons">more_vert</i>
                                        </button>
                                        <ul class = "mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                                            data-mdl-for = "panel-button">
                                            <li class = "mdl-menu__item"><i class="material-icons">assistant_photo</i>Action</li>
                                            <li class = "mdl-menu__item"><i class="material-icons">print</i>Another action</li>
                                            <li class = "mdl-menu__item"><i class="material-icons">favorite</i>Something else here</li>
                                        </ul>
                                    </div>
                                    <div class="card-body" id="bar-parent">
                                        <form action ="AddPat" method="post">
                                        <table>
                                            <tr> <td> patient name: </td><td><input type="text" name="patientname"></td></tr>
                                            <tr> <td> patient address: </td><td><input type="text" name="patientaddress"></td></tr>
                                            <tr> <td> Private or NHS: </td><td><input type="text" name="patienttype"></td></tr>
                                            <tr> <td> username: </td><td><input type="text" name="username"></td></tr>
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
        <script src="assets/plugins/jquery-validation/js/jquery.validate.min.js" ></script>
        <script src="assets/plugins/jquery-validation/js/additional-methods.min.js" ></script>
        <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.js"></script>
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
