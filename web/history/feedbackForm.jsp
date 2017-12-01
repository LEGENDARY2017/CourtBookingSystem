<%-- 
    Document   : feedbackForm
    Created on : Nov 20, 2017, 11:33:17 PM
    Author     : amyliaahamad
--%>

<!DOCTYPE HTML>
<!--
        Dimension by HTML5 UP
        html5up.net | @ajlkn
        Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->

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
        <link rel="stylesheet" href="css/main.css" />
        <link rel="stylesheet" href="css/ie9.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css" />
        <noscript><link rel="stylesheet" href="css/noscript.css" /></noscript>
        <!-- Scripts -->
        <script src="js/jquery.min.js"></script>
        <script src="js/skel.min.js"></script>
        <script src="js/util.js"></script>
        <script src="js/main.js"></script>
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
                        <h3>FEEDBACK FORM</h3>
                        <h2><a href=".../homeview.jsp">Home</a></h2>
                        
                        <form method="post" action="bookingHistory" name="feedbackForm">
                        <div class="field">
                            <br><label for="message">Your feedback</label>
                            <textarea name="message" id="message" rows="4"></textarea>
                        </div>
                        <ul class="actions">
                            <li><input type="submit" value="Send Feedback" class="special" /></li>
                            <li><input type="reset" value="Reset" /></li>
                        </ul>
                        </form> 
                        
                    </div>
                </div>
                <nav>
                    <ul>
                        <li><a href="#report">Monthly Report</a></li>
                        <li><a href="#faculty">Report by Faculty</a></li>
                        <li><a href="#bookingHistory">Booking History</a></li>
                        <!--<li><a href="#elements">Elements</a></li>-->
                    </ul>
                </nav>
            </header>

            <!-- Main -->
            <div id="main">

                


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

