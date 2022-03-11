

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Invoice payment</title>
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
                                            <small>Doctor's</small>
                                        </div>
                                    </div>
                                </li>

                                <li class="nav-item  ">
                                    <a href="Doctor_dashboard.jsp" class="nav-link nav-toggle"> <i class="material-icons">accessible</i>
                                        <span class="title">Scheduled Patients</span> 
                                    </a>
                                </li>
                                <li class="nav-item  ">
                                    <a href="surgery.jsp" class="nav-link nav-toggle"> <i class="material-icons">content_cut</i>
                                        <span class="title">Surgery Schedule</span> 
                                    </a>
                                </li>

                                <li class="nav-item  ">
                                    <a href="Create_report.jsp" class="nav-link nav-toggle"> <i class="material-icons">assignment</i>
                                        <span class="title">Create Report</span> 
                                    </a>
                                </li>

                                <li class="nav-item  ">
                                    <a href="generate_prescription.jsp" class="nav-link nav-toggle"> <i class="material-icons">assignment_ind</i>
                                        <span class="title">Generate prescription</span> 
                                    </a>
                                </li>

                                <li class="nav-item  ">
                                    <a href="#" class="nav-link nav-toggle"> <i class="material-icons">monetization_on</i>
                                        <span class="title">Payments</span> <span class="arrow"></span>
                                    </a>
                                    <ul class="sub-menu">
                                        <li class="nav-item  ">
                                            <a href="add_payment.jsp" class="nav-link "> <span class="title">Add Payments</span>
                                            </a>
                                        </li>
                                        <li class="nav-item  ">
                                            <a href="invoice_payment.jsp" class="nav-link "> <span class="title">Patient Invoice</span>
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
                                    <div class="page-title">Patient's Invoice</div>
                                </div>
                                <ol class="breadcrumb page-breadcrumb pull-right">
                                    <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="Doctor_dashboard.jsp">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    <li><a class="parent-item" href="#">Payments</a>&nbsp;<i class="fa fa-angle-right"></i>
                                    </li>
                                    <li class="active">Invoice</li>
                                </ol>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="white-box">
                                    <h3><b>INVOICE</b> <span class="pull-right">#345766</span></h3>
                                    <hr>
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="pull-left">
                                                <address>
                                                    <img src="assets/img/logo.png" alt="logo" class="logo-default" /> <span><strong> Smart ware </strong></span>
                                                    <p class="text-muted m-l-5">
                                                        D 103, Sunray, <br> Opp. Town Hall, <br>
                                                        Sardar Patel Road, <br> Ahmedabad - 380015
                                                    </p>
                                                </address>
                                            </div>
                                            <div class="pull-right text-right">
                                                <address>
                                                    <p class="addr-font-h3">To,</p>
                                                    <p class="font-bold addr-font-h4">Jayesh Patel</p>
                                                    <p class="text-muted m-l-30">
                                                        207, Prem Sagar Appt., <br> Near Income Tax Office, <br>
                                                        Ashram Road, <br> Ahmedabad - 380057
                                                    </p>
                                                    <p class="m-t-30">
                                                        <b>Invoice Date :</b> <i class="fa fa-calendar"></i> 14th
                                                        July 2017
                                                    </p>
                                                    <p>
                                                        <b>Due Date :</b> <i class="fa fa-calendar"></i> 24th July
                                                        2017
                                                    </p>
                                                </address>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="table-responsive m-t-40">
                                                <table class="table table-hover">
                                                    <thead>
                                                        <tr>
                                                            <th class="text-center">#</th>
                                                            <th>Item Name</th>
                                                            <th class="text-right">Quantity</th>
                                                            <th class="text-right">Unit Cost</th>
                                                            <th class="text-right">Charges</th>
                                                            <th class="text-right">Discount</th>
                                                            <th class="text-right">Total</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-center">1</td>
                                                            <td>Visiting Charges</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right"> £100</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right"> £100</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-center">2</td>
                                                            <td>Medicines</td>
                                                            <td class="text-right">10</td>
                                                            <td class="text-right"> £15</td>
                                                            <td class="text-right"> £150</td>
                                                            <td class="text-right">5</td>
                                                            <td class="text-right"> £1000</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-center">3</td>
                                                            <td>X-ray Reports</td>
                                                            <td class="text-right">4</td>
                                                            <td class="text-right"> £600</td>
                                                            <td class="text-right"> £70</td>
                                                            <td class="text-right">5</td>
                                                            <td class="text-right"> £1200</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-center">4</td>
                                                            <td>MRI</td>
                                                            <td class="text-right">2</td>
                                                            <td class="text-right"> £245</td>
                                                            <td class="text-right"> £125</td>
                                                            <td class="text-right">10</td>
                                                            <td class="text-right"> £480</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-center">5</td>
                                                            <td>Other Charges</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right">-</td>
                                                            <td class="text-right"> £300</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="pull-right m-t-30 text-right">
                                                <p>Sub - Total amount:  £2600</p>
                                                <p>Discount :  £100 </p>
                                                <p>vat (10%) :  £160 </p>
                                                <hr>
                                                <h3><b>Total :</b>  £2760</h3> </div>
                                            <div class="clearfix"></div>
                                            <hr>
                                            <div class="text-right">
                                                <button class="btn btn-danger" type="submit"> Proceed to payment </button>
                                                <button onclick="javascript:window.print();" class="btn btn-default btn-outline" type="button"> <span><i class="fa fa-print"></i> Print</span> </button>
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
        <!-- end js include path -->
    </body>
</html>
