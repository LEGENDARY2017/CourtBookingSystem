<%-- 
    Document   : headerUser
    Created on : Nov 28, 2017, 5:56:24 AM
    Author     : yanaramli22
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
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
                        <li><a href="${pageContext.request.contextPath}/HomeUser">Home</a></li>
                        <li><a href="${pageContext.request.contextPath}/ProfileUser">Profile User</a></li>
                        <li><a href="schedule.jsp">Schedule</a></li>
                        <li><a href="eventUser.jsp">Event</a></li>
                        <li><a href="login.jsp">Logout</a></li>  
                    </ul>
                </div>
            </li>
        </ul>
    </nav>
</header>
