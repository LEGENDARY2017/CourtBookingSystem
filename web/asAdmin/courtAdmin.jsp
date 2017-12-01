<%-- 
    Document   : courtAdmin
    Created on : Nov 28, 2017, 9:13:21 AM
    Author     : Lenovo
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
        
        <jsp:include page="headerAdmin.jsp"></jsp:include>
        
        <article id="main">
            <header>
                <h2>Court</h2>
                <p></p>
            </header>
            <section class="wrapper style5">
                <div class="inner">

                    <section>
                        <div class="table-wrapper">
                            <table table="event" class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Court ID</th>
                                        <th>Court Type</th>
                                        <th>Action</th>
                                    </tr>

                                </thead>
                                <tbody>
                                    <c:forEach items="${courtList}" var="court" >
                                <td>${court.courtid}</td>
                                <td>${court.courtType}</td>
                                <td>
                                    <a href="deleteCourt?courtid=${court.courtid}">
                                        <img src="images/rubbish-bin.png" alt/>
                                    </a>
                                </td>
                                </c:forEach>
                                </tbody>
                            </table>


                            <a href="addCourt.jsp">
                                <img src="images/plus.png" alt/>Add court
                            </a>

                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>