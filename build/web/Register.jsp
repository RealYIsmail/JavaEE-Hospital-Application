

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
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
                    <form action ="RegisterDoc" method="post">
                        <span class="login100-form-title p-b-34 p-t-27">
                            Registration
                        </span>
                        <div class="row">
                            <div class="wrap-input100 validate-input" data-validate = "Enter username">
                                <input class="input100" type="text" name="Username" placeholder="Username">
                                <span class="focus-input100" data-placeholder="&#xf207;"></span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="wrap-input100 validate-input" data-validate = "Enter Role">
                                <input class="input100" type="text" name="roles" placeholder="Role">
                                <span class="focus-input100" data-placeholder="&#xf207;"></span>
                            </div>
                        </div> 
                        <div class="row">
                            <div class="wrap-input100 validate-input" data-validate="Enter password">
                                <input class="input100" type="password" name="password" placeholder="password">
                                <span class="focus-input100" data-placeholder="&#xf191;"></span>
                            </div>
                        </div>
                        <div class="contact100-form-checkbox">

                            <div class="container-login100-form-btn">
                                <button class="login100-form-btn" type="submit" value="Register">
                                    Register
                                </button>
                            </div>
                    </form>
                    <div class="text-center p-t-30">
                        <a class="txt1" href="Home.jsp">
                            You already have a account? Login here
                        </a>
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
