
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
        <!-- icons -->
        <link href="fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!-- <link rel="stylesheet" href="../assets/plugins/iconic/css/material-design-iconic-font.min.css"> -->
        <link rel="stylesheet" href="cdnjs.cloudflare.com/ajax/libs/material-design-iconic-font/2.2.0/css/material-design-iconic-font.min.css">
        <!-- bootstrap -->
        <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- style -->
        <link rel="stylesheet" href="assets/css/pages/extra_pages.css">

    </head>
    <body>
        <div class="limiter">
            <div class="container-login100 page-background">
                <div class="wrap-login100">
                    <form class="login100-form validate-form">
                        <span class="login100-form-logo">
                            <img alt="" src="assets/img/hospital.png">
                        </span>
                        <span class="login100-form-title p-b-34 p-t-27">
                            Select Your Category
                        </span>
                        <div class="container-login100-form-btn">
                            <button onclick="location.href='Adminlogin.jsp'" type="button" class="btn btn-primary btn-block">Admin</button>      
                            <button onclick="location.href='Doctorlogin.jsp'" type="button" class="btn btn-primary btn-block">Doctor</button>
                            <button onclick="location.href='Nurselogin.jsp'" type="button" class="btn btn-primary  btn-block">Nurse</button>
                            <button onclick="location.href='Patientlogin.jsp'" type="button" class="btn btn-primary  btn-block">Patient</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- start js include path -->
        <script src="assets/plugins/jquery/jquery.min.js" ></script>
        <!-- bootstrap -->
        <script src="assets/plugins/bootstrap/js/bootstrap.min.js" ></script>
        <script src="assets/js/pages/extra_pages/extra_pages.js"></script>
        <!-- end js include path -->
    </body>
</html>
