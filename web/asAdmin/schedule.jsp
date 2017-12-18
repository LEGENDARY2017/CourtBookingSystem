<%-- 
    Document   : schedule
    Created on : Nov 22, 2017, 11:09:25 PM
    Author     : yanaramli22
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

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
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    </head>

    <body class="landing">

        <!-- Wrapper -->
        <div id="page-wrapper">

            <jsp:include page="headerAdmin.jsp"></jsp:include>

                <section id="banner">

                    <article id="main">
                        <header>
                            <h2>COURT SCHEDULE</h2>
                            <p>You can look at the schedule and book it at the same time</p>
                        </header>
                    </article>
                </section>

                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">

                                <form action="${pageContext.request.contextPath}/SortDate" method="post">
                                <div class="row uniform">    

                                    <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select name="dateBook">
                                                <c:forEach items="${requestScope.BookingList}" var ="booking">
                                                    <option value="${booking.dateBook}">${booking.dateBook}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="fit special" value="Search"/></li>
                                            <li><a href="${pageContext.request.contextPath}/UserList" class="button fit special">Back</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                            <table table="schedule" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Court ID</th>
                                        <th>Date</th>
                                        <th>Start Time</th>
                                        <th>End Time</th>

                                    </tr>

                                </thead>
                                <c:forEach items="${BookingList}" var="booking" >
                                    <tbody>

                                        <tr>
                                            <td>${booking.courtid}</td>
                                            <td>${booking.dateBook}</td>
                                            <td>${booking.start}</td>
                                            <td>${booking.end}</td>

                                        </tr>
                                    </tbody>
                                </c:forEach>

                            </table>
                            <ul class="actions">
                                <li><a href="${pageContext.request.contextPath}/AddBooking" class="button special">Book Court</a></li>                                       
                            </ul>
                        </div>

                    </section>
                </div>
            </section>



        </div>
    </body>
</html>
