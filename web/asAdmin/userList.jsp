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
         <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
                            
                                <form action="${pageContext.request.contextPath}/SortList" method="post">
                                <div class="row uniform">    
                                   
                                     <div class="6u 12u$(xsmall)">
                                        <div class="select-wrapper" >
                                            <select name="faculty">
                                                <c:forEach items="${requestScope.UserList}" var ="user">
                                                <option value="${user.faculty}">${user.faculty}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                     
                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" class="fit special" value="Search"/></li>
                                            <li><a href="${pageContext.request.contextPath}/UserList" class="button fit special">Back</a></li>                                       
                                    
                                        </ul>
                                    </div>
                                   
                                        
                                </div>
                                </form>
                                <table table="event" class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Full Name</th>
                                            <th>Matric No</th>
                                            <th>Faculty</th>
                                            <th>Email</th>
                                            <th>Contact No</th>
                                        </tr>

                                    </thead>
                                <c:forEach items="${UserList}" var="user" >
                                    <tbody>

                                        <tr>
                                            <td>${user.username}</td>
                                            <td>${user.name}</td>
                                            <td>${user.matricNo}</td>
                                            <td>${user.faculty}</td>
                                            <td>${user.email}</td>
                                            <td>${user.contactNo}</td>

                                            <td>
                                                <a href="EditUser?username=${user.username}" class="button ">Edit</a>
                                                <a href="DeleteUser?username=${user.username}" class="button ">Delete</a>
                                            </td>
                                        </tr>


                                    </tbody>
                                </c:forEach>
                            </table>
                            <ul class="actions">
                                <li><a href="${pageContext.request.contextPath}/CreateUser" class="button special">Add User</a></li>                                       
                            </ul>
                        </div>

                    </section>
                </div>
            </section>
    </body>
</html>