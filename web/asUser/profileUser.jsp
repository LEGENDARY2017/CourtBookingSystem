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

        <jsp:include page="headerUser.jsp"></jsp:include>

            <article id="main">
                <header>
                    <h2>Profile</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <section>
                            <c:if test="${not empty user}">
                            <div>
                                <center><h2>${user.name}</h2>
                                    <img src="images/admin.png"><br>
                                    <a href="UpdateProfile?username=${user.username}" class="button">Edit Profile</a></center>
                            </div>

                            <div class=" col-md-9 col-lg-9 "> 
                                <table class="table table-user-information">
                                    <tbody>

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
                            </div>
                        </c:if>
                    </section>
                    <ul class="actions">
                        <center>
                            <li><a href="#" class="button">History</a>
                            <li><a href="#" class="button">Booking</a>
                        </center>
                    </ul>
            </section>
        </article>
    </body>
</html>
