<%-- 

    Document   : Register

    Created on : Dec 8, 2020, 3:07:12 PM

    Author     : Yonis and Abdullah
    
    Notice: It does work but you will have to change the URL when you run this file, by adding ?inputteduname=x where x is an number 

--%>



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
                <table>
                    <tr> <td> Username: </td><td><input type="text" name="Username"></td></tr>
                    <tr> <td> Roles: </td><td><input type="text" name="roles"></td></tr>
                    <tr> <td> Password: </td><td><input type="password" name="password"></td></tr>
                    <tr> <td></td><td><input type="submit" value="Register"></td></tr>
                            
                </table>                
            </form>

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
