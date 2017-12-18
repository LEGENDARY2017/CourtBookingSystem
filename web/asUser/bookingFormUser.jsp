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
                    <h2>ADD BOOKING</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <form action="${pageContext.request.contextPath}/AddBookingUser" method="post">
                                <div class="row uniform">    
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="courtid" id="courtid" placeholder="Court ID"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="username" id="username" placeholder="Username"/>
                                    </div>
                                    <div class="12u 12u$(xsmall)">
                                        <input type="text" name="dateBook" id="dateBook" placeholder="Date to book"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="start" id="start" placeholder="Start Time"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="end" name="end" id="password" placeholder="End Time"/>
                                    </div>
                                    

                                    <div class="12u">
                                        <ul class="actions">
                                            <li><input type="submit" value="Add Booking" class="fit special" /></li>
                                            <li><input type="reset"  value="Reset" class=" fit special"/></li>
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
