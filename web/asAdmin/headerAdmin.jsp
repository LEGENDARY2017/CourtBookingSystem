<%-- 
    Document   : headerAdmin
    Created on : Nov 28, 2017, 5:43:09 AM
    Author     : yanaramli22
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Header -->
<header id="header" class="alt">
    <h1><a href="index.jsp">UTM Court Booking</a></h1>
    <nav id="nav">
        <ul>
            <li class="special">
                <a href="#menu" class="menuToggle"><span>Menu</span></a>
                <div id="menu">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/HomeAdmin">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/ProfileAdmin">Profile Admin</a></li>
                        <li><a href="schedule.jsp">Schedule</a></li>
                        <li><a href="eventAdmin.jsp">Event</a></li>
                        <li><a href="adminHistory.jsp">History</a></li>
                        <li><a href="manage.jsp">Manage System</a></li>   
                        <li><a href="LogoutServlet">Logout</a></li>   
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
                        
                        
</header>
