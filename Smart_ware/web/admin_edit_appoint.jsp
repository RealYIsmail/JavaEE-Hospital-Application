

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Edit Appointment</title><!-- google font -->
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
                        <div class="page-bar">
                            <div class="page-title-breadcrumb">
                                <div class=" pull-left">
                                    <div class="page-title">Edit Appointment</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="patient_dashboard.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">Edit Appointment</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="card card-box">
                                    <div class="card-head">
                                        <header>Edit Appointment</header>                                       
                                    </div>
                                    <div class="card-body" id="bar-parent">
                                        <form action="#" id="form_sample_1" class="form-horizontal">
                                            <div class="form-body">
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Title
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <select class="form-control input-height" name="select">
                                                            <option value="">Select...</option>
                                                            <option value="Category 1">Miss</option>
                                                            <option value="Category 2">Mr.</option>
                                                            <option selected="selected" value="Category 3">Mrs.</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">First Name
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <input type="text" name="firstname" data-required="1" placeholder="enter first name" value="John" class="form-control input-height" /> </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Last Name
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <input type="text" name="lastname" data-required="1" placeholder="enter last name" value="Smith" class="form-control input-height" /> </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Date Of Appointment
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <div class="input-group date form_date " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                                            <input class="form-control input-height" size="16" placeholder="date of appointment" type="text" value="23/04/2017">
                                                            <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        </div>
                                                        <input type="hidden" id="dtp_input2" value="" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">From</label>
                                                    <div class="col-md-5">
                                                        <div class="row">
                                                            <div class="col-md-5">
                                                                <input class="form-control input-height" type="time" value="13:45:00" id="example-time-input">
                                                            </div>
                                                            <label class="control-label small-label col-md-2">To</label>
                                                            <div class="col-md-5">
                                                                <input class="form-control input-height" type="time" value="13:45:00" id="example-time-input2">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Address
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <textarea name="address" placeholder="address" class="form-control-textarea" rows="5" >A-32, Malbar Flat, Washington DC.</textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Date Of Birth
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <div class="input-group date form_date " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                                            <input class="form-control input-height" size="16" placeholder="date of appointment" type="text" value="21/06/1986">
                                                            <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        </div>
                                                        <input type="hidden" id="dtp_input5" value="" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Mobile No.
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <input name="number" type="text" placeholder="mobile number" value="1234567890" class="form-control input-height" /> </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Email
                                                    </label>
                                                    <div class="col-md-5">
                                                        <div class="input-group">
                                                            <span class="input-group-addon">
                                                                <i class="fa fa-envelope"></i>
                                                            </span>
                                                            <input type="text" class="form-control input-height" name="email" value="test@example.com" placeholder="Email Address"> </div>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Consulting Doctor
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <select class="form-control input-height" name="select">
                                                            <option value="">Select...</option>
                                                            <option value="Category 1">Dr. Rajesh</option>
                                                            <option selected="selected" value="Category 2">Dr. Sarah Smith</option>
                                                            <option value="Category 3">Dr. John Deo</option>
                                                            <option value="Category 3">Dr. Jay Soni</option>
                                                            <option value="Category 3">Dr. Jacob Ryan</option>
                                                            <option value="Category 3">Dr. Megha Trivedi</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Injury/Condition
                                                    </label>
                                                    <div class="col-md-5">
                                                        <input name="creditcard" type="text" placeholder="Injury/Condition" value="fever" class="form-control input-height" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Therapy Started Date
                                                        <span class="required"> * </span>
                                                    </label>
                                                    <div class="col-md-5">
                                                        <div class="input-group date form_date " data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                                                            <input class="form-control input-height" size="16" placeholder="date of appointment" type="text" value="07/03/2017">
                                                            <span class="input-group-addon"><span class="fa fa-calendar"></span></span>
                                                        </div>
                                                        <input type="hidden" id="dtp_input3" value="" />
                                                    </div>
                                                </div>
                                                <div class="form-group row">
                                                    <label class="control-label col-md-3">Note 
                                                    </label>
                                                    <div class="col-md-5">
                                                        <textarea name="address" class="form-control-textarea" placeholder="note" rows="5">nothing</textarea>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <div class="row">
                                                    <div class="offset-md-3 col-md-9">
                                                        <button type="submit" class="btn btn-info">Submit</button>
                                                        <button type="button" class="btn btn-default">Cancel</button>
                                                    </div>
                                                </div>
                                            </div>
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
