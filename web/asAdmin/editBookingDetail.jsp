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
                        <h2>EDIT BOOKING DETAILS</h2>
                    </header>
                    <section class="wrapper style5">

                        <div class="inner">

                            <c:if test="${not empty booking}">
                            <form action="${pageContext.request.contextPath}/EditBooking" method="post">

                                <h1>BOOKING Details</h1>

                                <div class="row uniform">

                                    <input type="hidden" name="bookingid" value="${booking.bookingid}" />
                                    
                                    <div class="6u 12u(xsmall)">
                                        <label for="staffid" >Staff ID</label>
                                        <input type="text" name="staffid" id="staffid" value="${booking.staffid}" disabled/>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="username">username</label>
                                        <input type="text" name="username" id="username" value="${booking.username}" disabled/>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="dateBook">Date to Book</label>
                                        <input type="text" name="dateBook" id="dateBook" value="${booking.dateBook}"/>
                                    </div>
                                    <div class="6u 12u(xsmall)">
                                        <label for="start">Start</label>
                                        <input type="text" name="start" id="start" value="${booking.start}"/>
                                    </div>
                                    <div class="6u 12u(xsmall)">
                                        <label for="end">End</label>
                                        <input type="text" name="end" id="end" value="${booking.end}"/>
                                    </div>
                                    <br>   

                                    <div class="12u">
                                        <ul class="actions">
                                            <li><input type="submit" value="Submit" class="fit special" /></li>
                                            <li><a href="${pageContext.request.contextPath}/BookingList" class="button fit special">Cancel</a></li>
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

