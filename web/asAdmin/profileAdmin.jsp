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
    <body class="landing">
        <jsp:include page="headerAdmin.jsp"></jsp:include>
            <article id="main">
                <header>
                    <h2>Profile</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <section>
                            <c:if test="${not empty admin}">
                            <div>
                                <center><h2>${admin.name}</h2>
                                    <img src="images/user.png"><br>
                                    <a href="UpdateAdminProfile?staffid=${admin.staffid}" class="button">Edit Profile</a></center>
                            </div>
                            <div class=" col-md-9 col-lg-9 "> 
                                <table class="table table-user-information">
                                    <tbody>

                                        <tr>
                                            <td>Password:</td>
                                            <td>${admin.password}</td>
                                        </tr>

                                        <tr>
                                            <td>Email:</td>
                                            <td>${admin.email}</td>
                                        </tr>

                                        <tr>
                                            <td>Contact Number:</td>
                                            <td>${admin.contactNo}</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </c:if>
                    </section>
                </div>
            </section>
        </article>
    </body>
</html>
