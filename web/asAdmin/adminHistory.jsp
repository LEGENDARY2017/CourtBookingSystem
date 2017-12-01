<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : schedule
    Created on : Nov 22, 2017, 11:09:25 PM
    Author     : yanaramli22
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

            <jsp:include page="headerAdmin.jsp"></jsp:include>
            
            <article id="main">
                <header>
                    <h2>HISTORY</h2>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <form action="/" method="post">
                                  
                                    <div class="12u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select  id="sort" name="sort">
                                                <option value="">-Sort By-</option>
                                                <option value="1">Matric Number</option>
                                                <option value="2">Username</option>
                                                <option value="3">Month</option>
                                                <option value="4">Faculty</option>
                                                <option value="5">Court</option>
                                                <option value="6">Event</option>
                                            </select>
                                        </div>
                                    </div>
                               

                                    <div class="12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="special" value="View History"/></li>
                                        </ul>
                                    </div>
                                
                            </form>
                        </section>

                    </div>
                </section>
            </article>

    </body>
</html>
