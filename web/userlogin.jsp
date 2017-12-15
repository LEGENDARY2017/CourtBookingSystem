<%-- 
    Document   : login
    Created on : Nov 23, 2017, 1:44:16 AM
    Author     : amyliaahamad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE HTML>

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

            <!-- Header -->
            <header id="header" class="alt">
                <h1><a href="index.jsp">UTM Court BOOKING</a></h1>
                <nav id="nav">
                    <ul>
                        <li class="special">
                            <a href="#menu" class="menuToggle"><span>Menu</span></a>
                            <div id="menu">
                                <ul>
                                    <li><a href="index.jsp">Home</a></li>                                    
                                </ul>
                            </div>
                        </li>
                    </ul>
                </nav>
            </header>

            <!-- Banner -->
            <section id="banner">
                <div class="inner">
                    <h2>UTM Court Booking</h2>
                    <section class="wrapper ">
                        <div class="inner">
                            <h3>USER LOGIN</h3>
                            <form method="post" action="UserloginServlet">
                                <div class="row uniform">
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="username" id="username" placeholder="Username" />
                                    </div>

                                    <div class="6u 12u$(xsmall)">                             
                                        <input type="password" name="password" id="password" placeholder="Password" />
                                    </div>
                                 
                                    <ul class="actions">
                                        <li><input type="submit" value="Login" class="special" /></li>
                                   
                                    </ul>
                                </div>
                            </form>
                        </div>
                    </section>
                </div>

            </section>
        </div>
    </body>
</html>


