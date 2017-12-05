<%-- 
    Document   : listAdmin.jsp
    Created on : Nov 28, 2017, 9:13:21 AM
    Author     : yanaramli22
--%>

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
                    <h2>List of User</h2>
                    <p></p>
                </header>
                <section class="wrapper style5">
                    <div class="inner">

                        <section>
                            <div class="table-wrapper">
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Full Name</th>
                                            <th>Matric Number</th>
                                            <th>Faculty</th>
                                            <th>Phone Number</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                         <c:forEach items="${userList}" var="user" >                                    
                                    <tr>
                                        <td>${user.username}</td>
                                        <td>${user.name}</td>
                                        <td>${user.matricNo}</td>
                                        <td>${adusermin.faculty}</td>
                                        <td>${user.contactNo}</td>
                                        <td>
                                            <a href="../EditUserServlet">
                                                <img src="../images/pencil-edit-button.png" alt/>
                                            </a>
                                            <a href="../DeleteUserServlet">
                                                <img src="../images/rubbish-bin.png" alt/>
                                            </a>
                                        </td>
                                       
                                </tbody>
                            </table>


                            <a href="userAdd.jsp">
                                <img src="images/plus.png" alt/>Add User
                            </a>

                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>