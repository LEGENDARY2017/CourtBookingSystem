<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 21-Nov-2017, 00:47:26
    Author     : nsyhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>UTM Court Booking System</title>
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
                    <h2>BOOKING FORM</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">
                        <section>
                            <form method="post" action="${pageContext.request.contextPath}/AddBooking">
                                <div class="row uniform">    
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="courtid" id="courtid" placeholder="Court ID"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="staffid" id="staffid" placeholder="Staff ID"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="username" id="username" placeholder="Username"/>
                                    </div>
                                    <div class="12u 12u$(xsmall)">
                                        <input type="text" name="dateBook" id="dateBook" placeholder="Date to book"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="start" id="start" placeholder="Start time"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="end" id="end" placeholder="End Time"/>
                                    </div>
                                    

                                    <div class="12u">
                                        <ul class="actions">
                                            <li><input type="submit" value="Add Booking" class="fit special" /></li>
                                            <li><input type="reset"  value="Reset" class=" fit special"/></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                                        </section>
                                    </div>
                                    </section>
                                    </body>
                                    </html>