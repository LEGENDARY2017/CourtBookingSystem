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
                                    <c:forEach items="${CourtList}" var="court" >
                                    <tbody>
                                    
                                    <td>${court.courtid}</td>
                                    <td>${court.courtType}</td>
                                    <td>
                                        <a href="EditUser?username=${user.username}">Edit</a>
                                        <a href="DeleteUser?username=${user.username}">Delete</a>
                                    </td>
                                    </tbody>
                                    </c:forEach>
                            </table>


                            <img src="../images/plus.png" alt/><a href="${pageContext.request.contextPath}/createCourt" >Add Court </a>                       


                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>