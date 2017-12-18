<%-- 
    Document   : userList.jsp
    Created on : Nov 28, 2017, 9:13:21 AM
    Author     : yanaramli22
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>

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
                    <h2>List of Court</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Court ID <a href="SortCourt?courtid=${court.courtid}"><img src="images/sort.png"></a></th>
                                        <th>Court Type <a href="SortCourt?courtType=${court.courtType}"><img src="images/sort.png"></a></th>
                                        <th>Status <a href="SortCourt?status=${court.status}"><img src="images/sort.png"></a></th>
                                        <th>Description <a href="SortCourt?statusDesc=${court.statusDesc}"><img src="images/sort.png"></a></th>
                                        </tr>

                                    </thead>
                                <c:forEach items="${CourtList}" var="court" >
                                    <tbody>

                                        <tr>
                                            <td>${court.courtid}</td>
                                            <td>${court.courtType}</td>
                                            <td>${court.status}</td>
                                            <td>${court.statusDesc}</td>

                                            <td>
<<<<<<< HEAD
                                                    <a href="EditCourt?courtid=${court.courtid}"><img src="images/pencil-edit-button.png"></a>
                                                    <a href="DeleteCourt?courtid=${court.courtid}"><img src="images/rubbish-bin.png"></a>
=======
               
                                            </td>
                                        </tr>


                                    </tbody>
                                </c:forEach>
                            </table>
                                
                                <ul class="actions">
                                    <li><a href="${pageContext.request.contextPath}/CreateCourt" class="button special">Add Court</a></li>                                       
                                </ul>
                        </div>

                    </section>
                </div>
            </section>
        </article>
    </body>
</html>
