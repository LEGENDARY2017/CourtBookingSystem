<%-- 
    Document   : profleUser
    Created on : Nov 28, 2017, 1:35:07 AM
    Author     : yanaramli22
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UTM Court Booking</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <link rel="stylesheet" href="assets/css/main.css" />

        <!-- Scripts -->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/jquery.scrollex.min.js"></script>
        <script src="assets/js/jquery.scrolly.min.js"></script>
        <script src="assets/js/skel.min.js"></script>
        <script src="assets/js/util.js"></script>
        <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
        <script src="assets/js/main.js"></script>
    </head>
    <body>
        <jsp:include page="headerUser.jsp"></jsp:include>
        <section class="wrapper ">
            <div class="inner">
                <div class="container">
                    <div class="row">
                        <div class="col-md-5  toppad  pull-right col-md-offset-3 ">
                            <A href="UpdateProfile?username=${user.username}">Edit Profile</A>

                            <br>

                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >



                            <div class="panel panel-info">
                                <p style="color: red;">${errorString}</p>

                                 <c:if test="${not empty user}">
                                <div class="panel-heading">
                                    <h3 class="panel-title">User Profile</h3>
                                </div>
                                
                                
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="/images/female.png" class="img-circle img-responsive"> </div>
                                        
                                        
                                        <div class=" col-md-9 col-lg-9 "> 
                                            <table class="table table-user-information">
                                                <tbody>
                                                    <tr>
                                                        <td>Name:</td>
                                                        <td>${user.name}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Password:</td>
                                                        <td>${user.password}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Matric Number:</td>
                                                        <td>${user.matricNo}</td>
                                                    </tr>
                                                     <tr>
                                                        <td>Faculty:</td>
                                                        <td>${user.faculty}</td>
                                                    </tr>
                                                    <tr>
                                                        <td>Email:</td>
                                                        <td>${user.email}</td>
                                                    </tr>


                                                    <tr>
                                                        <td>Contact Number:</td>
                                                        <td>${user.contactNo}</td>
                                                    </tr>



                                                </tbody>
                                            </table>
                                            </c:if>
                                            <ul class="actions">
                                                <li><button type="button" onclick=>View <a href="#">History</a></button></li>
                                                <li><button type="button" onclick=>View <a href="#">Booking</a></button></li>
                                            </ul>


                                        </div>

                                        </section>
                                    </div>
                                    </body>
                                    </html>
