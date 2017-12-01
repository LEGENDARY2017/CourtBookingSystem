
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
    
    <body>

        <!-- Wrapper -->
        <div id="wrapper">

            <!-- Header -->
            <header id="header">
                <div class="logo">
                    <span class="icon fa-diamond"></span>
                </div>
                <div class="content">
                    <div class="inner">
                        <h1>UTM BOOKING COURT SYSTEM</h1>
                        <h3>USERNAME HISTORY</h3>
                        <h2><a href=".../homeview.jsp">Home</a></h2>
                        
                    </div>
                </div>
                <nav>
                    <ul>
                        <li><a href="#report">Monthly Report</a></li>
                        <li><a href="#faculty">Report by Faculty</a></li>
                        <li><a href="bookingHistory.jsp">Booking History</a></li>
                        <!--<li><a href="#elements">Elements</a></li>-->
                    </ul>
                </nav>
            </header>

            <!-- Main -->
            <div id="main">

                <!-- Intro -->
                <article id="report">
                    <jsp:include page="sortbyMonth.jsp"></jsp:include>
                    </article>

                    <!-- Work -->
                    <article id="faculty">
                    <jsp:include page="sortbyFaculty.jsp"></jsp:include>
                    </article>

                    <!-- About -->
                    <article id="history">
                    
                </article>

                <!-- Contact -->
                <article id="contact">
                    
                </article>

                <!-- Elements -->
                <article id="elements">
                    
                </article>


            </div>

            <!-- Footer -->
            <footer id="footer">
                <p class="copyright">&copy; Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
            </footer>

        </div>

        <!-- BG -->
        <div id="bg"></div>

      
    </body>
</html>

