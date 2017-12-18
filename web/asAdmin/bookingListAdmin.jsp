<%-- 
    Document   : bookingListAdmin
    Created on : Nov 28, 2017, 9:21:08 AM
    Author     : amyliaahamad
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
    <body>
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
                                            <th>Booking ID</th>
                                            <th>Court ID</th>
                                            <th>Staff ID</th>
                                            <th>Date</th>
                                            <th>Time Slot</th>
                                            <th>FeedBack</th>
                                        </tr>

                                    </thead>
                                    <c:forEach items="${BookingList}" var="user" >
                                    <tbody>

                                        <tr>
                                            <td>${booking.bookingid}</td>
                                            <td>${booking.courtid}</td>
                                            <td>${booking.staffid}</td>
                                            <td>${booking.dateBook}</td>
                                            <td>${booking.timeslot}</td>
                                            <td>${booking.feedback}</td>

                                            <td>
                                                <a href="EditBooking?bookingid=${booking.bookingid}">Edit</a>
                                                <a href="DeleteBooking?bookingid=${booking.bookingid}">Delete</a>
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
