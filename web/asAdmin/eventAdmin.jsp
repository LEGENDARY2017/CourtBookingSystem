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
                <h2>Event</h2>
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
                                        <th>Event name</th>
                                        <th>Event Date</th>
                                        <th>Event Time</th>
                                        <th>Description</th>
                                        <th>Staff ID</th>
                                        <th>Court ID</th>
                                        <th>Action</th>
                                    </tr>

                                </thead>
                                <tbody>
                                <td>001</td>
                                <td>Sufkom</td>
                                <td>31/08/2017</td>
                                <td>0800am</td>
                                <td>FC punya</td>
                                <td>S01</td>
                                <td>B1</td>
                                <td><a href="bookingSystem.servlet.manageEvent.EditEventServlet">
                                        <img src="images/pencil-edit-button.png" alt/>
                                    </a>
                                    <a href="bookingSystem.servlet.manageEvent.deleteEventServlet">
                                        <img src="images/rubbish-bin.png" alt/>
                                    </a>
                                </td>
                                </tbody>
                            </table>


                            <a href="eventBooking.jsp">
                                <img src="images/plus.png" alt/>Add event
                            </a>

                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>