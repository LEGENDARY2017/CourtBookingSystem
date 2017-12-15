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
                <h1><a href="index.html">UTM Court BOOKING</a></h1>
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
                            <h3>WHO ARE YOU ?</h3>
                            
                                    <span>
                                        <img src="images/admin.png" alt/>
                                    </span>
                                    <span>
                                        <img src="images/admin.png" alt/>
                                    </span>
                                    <br>
                                    <ul class="actions">
                                        <li><a href="${pageContext.request.contextPath}/AdminloginServlet" class="button special">Admin</a></li>                                       
                                    
                                        <li><a href="${pageContext.request.contextPath}/UserloginServlet" class="button special">User</a></li>                                       
                                    </ul>
                                
                                
                            </form>
                        </div>
                    </section>
                </div>

            </section>
        </div>
    </body>
</html>


