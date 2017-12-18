<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 21-Nov-2017, 00:47:26
    Author     : nsyhd
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
    </head>


 <body class="landing">

        <jsp:include page="headerAdmin.jsp"></jsp:include>

            <article id="main">
                <header>
                    <h2>List of Event</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Event ID</th>
                                            <th>Event Organizer</th>
                                            <th>Event Name</th>
                                            <th>Date</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Description</th>
                                            <th>Court ID</th>
                                            <th>Staff ID</th>
                                        </tr>

                                    </thead>
                                <c:forEach items="${EventList}" var="event" >
                                    <tbody>

                                        <tr>
                                            <td>${event.eventid}</td>
                                            <td>${event.organizer}</td>
                                            <td>${event.name}</td>
                                            <td>${event.eventDate}</td>
                                            <td>${event.startTime}</td>
                                            <td>${event.endTime}</td>
                                            <td>${event.description}</td>
                                            <td>${event.courtid}</td>
                                            <td>${event.staffid}</td>

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