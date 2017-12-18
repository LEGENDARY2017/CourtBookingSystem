<%-- 
    Document   : schedule
    Created on : Nov 22, 2017, 11:09:25 PM
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
                                            <input type="date" name="date">
                                        </div>
                                    </div>
                                    <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select  name="faculty">
                                                <option value="">-Select Available Court-</option>
                                                <option value="B">Badminton Court</option>
                                                <option value="P">Ping Pong Court</option>
                                                <option value="V">Volleyball Court</option>
                                            </select>
                                        </div>
                                    </div>
                                        </div>
                                    </div>
                                     
                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="special" value="Search"/></li>
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

                    


                    </body>
                    </html>
