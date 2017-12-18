<%-- 
Document   : editprofile
Created on : Nov 28, 2017, 2:23:11 AM
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
        <div id="page-wrapper">
            <jsp:include page="headerAdmin.jsp"></jsp:include>

                <article id="main">
                    <header>
                        <h2>EDIT USER DETAILS</h2>
                    </header>
                    <section class="wrapper style5">

                        <div class="inner">

                            <c:if test="${not empty user}">
                            <form action="${pageContext.request.contextPath}/EditUser" method="post">

                                <h1>Personal Details</h1>

                                <div class="row uniform">

                                    <input type="hidden" name="username" value="${user.username}" />
                                    <div class="6u 12u(xsmall)">
                                        <label for="name" >Name</label>
                                        <input type="text" name="name" id="name" value="${user.name}" disabled/>
                                    </div>
                                    <div class="6u 12u(xsmall)">
                                        <label for="password" >Password</label>
                                        <input type="password" name="password" id="password" value="${user.password}"/>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="contactNo">Contact Number</label>
                                        <input type="text" name="contactNo" id="contactNo" value="${user.contactNo}"/>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="email">Email</label>
                                        <input type="text" name="email" id="email" value="${user.email}"/>
                                    </div>
                                    <br>   

                                    <div class="12u">
                                        <ul class="actions">
                                            <li><input type="submit" value="Submit" class="fit special" /></li>
                                            <li><a href="${pageContext.request.contextPath}/UserList" class="button fit special">Cancel</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </c:if>
                    </div>
                </section>
            </article>
        </div>
    </body>
</html>

