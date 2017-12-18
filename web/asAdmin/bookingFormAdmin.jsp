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
                            <h3 class="major">Booking Form</h3>
                            <form method="post" action="${pageContext.request.contextPath}/AddBooking">
                            <label for="court">Court</label>
                            <div class="field half first">

                                <div class="select-wrapper" >
                                    <input type="text" name="courtid" value="" />
                                </div>
                            </div>
                            <div class="field half first">
                                <label for="staffid">Staff ID</label>
                                <input type="text" name="staffud" id="staffid" value=""/>
                            </div>
                            <div class="field half first">
                                <label for="date">Date</label>
                                <input type="date" name="date" id="date" value=""/>
                            </div>
                            <div class="field half first">
                                <label for="start">Start Time</label>
                                <div class="select-wrapper">
                                    <select name="start" id="start">
                                        <option value="1">8AM</option>
                                        <option value="2">9AM</option>
                                        <option value="3">10AM</option>
                                        <option value="4">11AM</option>
                                        <option value="5">12PM</option>
                                        <option value="6">1PM</option>
                                        <option value="7">2PM</option>
                                        <option value="8">3PM</option>
                                        <option value="9">4PM</option>
                                        <option value="10">5PM</option>
                                        <option value="10">6PM</option>
                                        <option value="10">7PM</option>
                                        <option value="10">8PM</option>
                                        <option value="10">9PM</option>
                                        <option value="10">10PM</option>
                                        <option value="10">11PM</option>
                                    </select>
                                </div>

                                <div class="field half first">
                                    <label for="end">End Time</label>
                                    <div class="select-wrapper">
                                        <select name="end" id="end">
                                            <option value="1">8AM</option>
                                            <option value="2">9AM</option>
                                            <option value="3">10AM</option>
                                            <option value="4">11AM</option>
                                            <option value="5">12PM</option>
                                            <option value="6">1PM</option>
                                            <option value="7">2PM</option>
                                            <option value="8">3PM</option>
                                            <option value="9">4PM</option>
                                            <option value="10">5PM</option>
                                            <option value="10">6PM</option>
                                            <option value="10">7PM</option>
                                            <option value="10">8PM</option>
                                            <option value="10">9PM</option>
                                            <option value="10">10PM</option>
                                            <option value="10">11PM</option>
                                        </select>
                                    </div>
                                </div><br>
                                <ul class="actions">
                                    <li><input type="submit" value="Submit" class="special" /></li>
                                    <li><input type="reset" value="Reset" /></li>
                                </ul>
                        </form>
                    </section>
                </div>
            </section>
    </body>
</html>