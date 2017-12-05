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
                    <h2>ADD USER</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <form action="${pageContext.request.contextPath}/CreateUser" method="post">
                                <div class="row uniform">    
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="name" id="name" placeholder="Name"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="matricNo" id="matricNo" placeholder="Matric No"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="faculty" id="faculty" placeholder="Faculty"/>
                                    </div>
                                    <div class="12u 12u$(xsmall)">
                                        <input type="email" name="email" id="email" placeholder="Email"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="username" id="username" placeholder="Username"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="password" id="password" placeholder="Password"/>
                                    </div>
                                    <div class="4u 12u$(xsmall)">
                                        <input type="text" name="contactNo" id="contactNo" placeholder="Contact Number"/>
                                    </div>
                                    
                                    
                                    
                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="special" value="Add New User"/></li>
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
