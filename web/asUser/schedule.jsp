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

            <jsp:include page="headerUser.jsp"></jsp:include>

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
                            <form action="${pageContext.request.contextPath}/BookingList" method="post">
                            <div class="row uniform">    
                                <div class="6u 12u$(xsmall)" style="color: fa-calendar">
                                    <input type="date" name="date" id="date" value="dd/mm/yyyy" placeholder="Date"/>
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <div class="select-wrapper" >
                                        <select  id="typecourt" name="typecourt">
                                            <option value="">-Type of court-</option>
                                            <option value="1">Badminton Court</option>
                                            <option value="2">Ping Pong Court</option>
                                            <option value="3">VolleyBall Court</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" class="special" value="View Schedule"/></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>

                    


                    </body>
                    </html>
