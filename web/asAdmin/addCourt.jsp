<%-- 
    Document   : addAdmin
    Created on : 28-Nov-2017, 01:57:15
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

        <!-- Wrapper -->
        <div id="page-wrapper">

            <!-- Header -->
            <header id="header" class="alt">
                <h1><a href="homeview.jsp">UTM Court Booking</a></h1>
                <nav id="nav">
                    <ul>
                        <li class="special">
                            <a href="#menu" class="menuToggle"><span>Menu</span></a>
                            <div id="menu">
                                <ul>
                                    <li><a href="homeview.jsp">Home</a></li>
                                    <li><a href="schedule.jsp">Schedule</a></li>
                                    <li><a href="event.jsp">Event</a></li>
                                    <li><a href="history/reportType.jsp">History</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
            </header>

            <article id="main">
                <header>
                    <h2>ADD COURT</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <form action="${pageContext.request.contextPath}/CreateCourt" method="post">
                                <div class="row uniform">    
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="courtid" id="courtid" placeholder="Court ID"/>
                                    </div>
                                     <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select  name="courtType">
                                                <option value="">-Type of court-</option>
                                                <option value="Badminton">Badminton Court</option>
                                                <option value="PingPong">Ping Pong Court</option>
                                                <option value="VolleyBall">VolleyBall Court</option>
                                            </select>
                                        </div>
                                    </div>
                                     <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select  name="status">
                                                <option value="">-Status-</option>
                                                <option value="OPEN">OPEN</option>
                                                <option value="CLOSED">CLOSED</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="statusDesc" id="statusDesc" placeholder="Status Description"/>
                                    </div>
                                                                       
                                    
                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="special" value="Add New Court"/></li>
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </section>

                    </div>
                </section>
            </article>

    </body>
</html>
