

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
        Dimension by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
    <head>
        <title>UTM Court Booking System</title>
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

                <!--Banner-->
                <section id="banner">
                    <div class="inner">
                        <h2>UTM Court Booking</h2><br>
                        <h2>WELCOME <b>${loginedAdmin.name}</b> </h2>
                </div>
                <a href="#one" class="more scrolly">Go</a>
            </section>

            <!-- One -->
            <section id="one" class="wrapper style1 special">
                <div class="inner">                    
                    <ul class="icons major actions">
                        <li>
                            <span>
                                <img src="images/schedule.png" alt/><br>
                                <a href="schedule.jsp" class="button special">Schedule</a> 
                            </span> 
                        </li>
                        <li>
                            <span>
                                <img src="images/event.png" alt/><br>
                                <a href="eventAdmin.jsp" class="button special">Event</a>   
                            </span>
                        </li>
                    </ul>
                    <ul class="icons major actions">
                        <li>
                            <span>
                                <img src="images/history.png" alt/><br>
                                <a href="adminHistory.jsp" class="button special">History</a>   
                            </span>
                        </li>
                        <li>
                            <span>                                
                                <img src="images/manage.png" alt/><br>  
                                <a href="asAdmin/manage.jsp" class="button special">Manage System</a>    
                            </span>
                        </li>
                    </ul>
                </div>
            </section>

            <!-- Footer -->
            <footer id="footer">
                <ul class="copyright">
                    <li>&copy; Untitled</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                </ul>
            </footer>

        </div>
    </body>
</html>

