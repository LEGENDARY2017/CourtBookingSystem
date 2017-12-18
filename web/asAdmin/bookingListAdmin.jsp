<%-- 
    Document   : userList.jsp
    Created on : Nov 28, 2017, 9:13:21 AM
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

        <jsp:include page="headerAdmin.jsp"></jsp:include>

            <article id="main">
                <header>
                    <h2>List of Booking</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">
                            
                                
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Booking id</th>
                                            <th>Court id</th>
                                            <th>Username</th>
                                            <th>Staff ID</th>
                                            <th>Date Book</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Feedback</th>
                                        </tr>

                                    </thead>
                                <c:forEach items="${BookingList}" var="booking" >
                                    <tbody>

                                        <tr>
                                            <td>${booking.bookingid}</td>
                                            <td>${booking.courtid}</td>
                                            <td>${booking.username}</td>
                                            <td>${booking.staffid}</td>
                                            <td>${booking.dateBook}</td>
                                            <td>${booking.start}</td>
                                            <td>${booking.end}</td>
                                            <td>${booking.feedback}</td>

                                            <td>
                                                <a href="EditUser?username=${user.username}" class="button ">Edit</a>
                                                <a href="DeleteUser?username=${user.username}" class="button ">Delete</a>
                                            </td>
                                        </tr>


                                    </tbody>
                                </c:forEach>
                            </table>
                            
                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>