<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 21-Nov-2017, 00:47:26
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
        
        <jsp:include page="headerUser.jsp"></jsp:include>

        <article id="main">
            <header>
                <h2>BOOKING FORM</h2>
                <p></p>
            </header>
            <section class="wrapper style5">
                <div class="inner">
                    <section>
                        <h3 class="major">Booking Form</h3>
                        <form method="post" action="${pageContext.request.contextPath}/AddBookingUser">
                            
                        </form>
                    </section>
                </div>
            </section>
    </body>
</html>