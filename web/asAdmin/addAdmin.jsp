<%-- 
    Document   : addAdmin
    Created on : 28-Nov-2017, 01:57:15
    Author     : nsyhd
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
                        <h2>ADD ADMIN</h2>
                    </header>
                    <section class="wrapper style5">
                        <div class="inner">

                            <form method="post" action="${pageContext.request.contextPath}/createAdmin">


                            <div class="row uniform">  
                                <div class="6u 12u(xsmall)">
                                    <label for="staffID">Staff ID</label>
                                    <input type="text" name="staffid" id="staffid" required />
                                </div>

                                <div class="6u 12u(xsmall)">
                                    <label for="name">Full Name</label>
                                    <input type="text" name="name" id="name" required />                           
                                </div>

                                <div class="6u 12u$(xsmall)">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" id="password" required />                            
                                </div>

                                <div class="6u 12u$(xsmall)">
                                    <label for="email">Email</label>
                                    <input type="email" name="email" id="email" required />   
                                </div>

                                <div class="6u 12u$(xsmall)">
                                    <label for="contactNo">Contact Number</label>
                                    <input type="text" name="contactNo" id="contactNo" required />
                                </div>
                            </div>

                            <br>
                            <div class="12u">
                                <ul class="actions">
                                    <li><input type="submit" value="Add New Admin" class="fit special" /></li>
                                    <li><input type="reset"  value="Reset" class=" fit special"/></li>
                                </ul>
                            </div>

                        </form>
                    </div>
                </section>
            </article>
        </div>
    </body>
</html>
