<%-- 
    Document   : listAdmin.jsp
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
                    <h2>List of Admin</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Staff ID</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Contact Number</th>
                                        </tr>

                                    </thead>
                                <c:forEach items="${adminList}" var="admin" >
                                    <tbody>

                                        <tr>
                                            <td>${admin.staffid}</td>
                                            <td>${admin.name}</td>
                                            <td>${admin.email}</td>
                                            <td>${admin.contactNo}</td>

                                            <!--<td>
                                                <a href="../EditCourtServlet">
                                                    <img src="../images/pencil-edit-button.png" alt/>
                                                </a>
                                                <a href="../deleteCourtServlet">
                                                    <img src="../images/rubbish-bin.png" alt/>
                                                </a>
                                            </td>-->
                                        </tr>


                                    </tbody>
                                </c:forEach>
                            </table>

                            <img src="images/plus.png" alt/><a href="createAdmin">Add Admin </a>                       

                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>