<%-- 
    Document   : addAdmin
    Created on : 28-Nov-2017, 01:57:15
    Author     : nsyhd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
            
            <article id="main">
                <header>
                    <h2>Manage System</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section class='special'>

                            <ul class="icons major">
                                <li>
                                    <span>
                                        <img src=".../images/admin.png" alt/>
                                    </span>
                                    <br>
                                    <ul class="actions">
                                        <li><a href="${pageContext.request.contextPath}/adminList" class="button special">Manage Admin</a></li>                                       
                                    </ul>
                                </li>
                                <li>
                                    <span>                                       
                                        <img src=".../images/court.png"/>                                        
                                    </span>
                                    <br>
                                    <ul class="actions">
                                        <li><a href="${pageContext.request.contextPath}/CourtList"  class="button special">Manage Court</a></li>                                       
                                    </ul>
                                </li>                           
                                <li>
                                    <span>                                        
                                        <img src=".../images/user.png"/>                                       
                                    </span>
                                    <br>
                                    <ul class="actions">
                                        <li><a href="${pageContext.request.contextPath}/UserList"  class="button special">Manage User</a></li>                                       
                                    </ul>
                                </li>   
                                <li>
                                    <span>                                        
                                        <img src=".../images/schedule.png"/>                                       
                                    </span>
                                    <br>
                                    <ul class="actions">
                                        <li><a href="bookingListAdmin.jsp" class="button special">Manage Booking</a></li>                                       
                                    </ul>
                                </li>   
                              
                            </ul>
                        </section>

                    </div>
                </section>
            </article>

    </body>
</html>
