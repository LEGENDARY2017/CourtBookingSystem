<%-- 
    Document   : addAdmin
    Created on : 28-Nov-2017, 01:57:15
    Author     : nsyhd
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
        <div id="page-wrapper">
            <jsp:include page="headerAdmin.jsp"></jsp:include>

                <article id="main">
                    <header>
                        <h2>EDIT COURT DETAILS</h2>
                    </header>
                    <section class="wrapper style5">
                        <div class="inner" >

                            <c:if test="${not empty court}">
                            <form action="${pageContext.request.contextPath}/EditCourt" method="post">

                                <h1>Court Detail</h1>
                                <input type="hidden" name="courtid" value="${court.courtid}" />
                                <div class="row uniform">    

                                    <div class="6u 12u(xsmall)">
                                        <label for="courtType">Court Type</label>
                                        <b>${court.courtType}</b>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="courtType">Change To</label>
                                        <select  name="courtType" id="courtType">
                                            <option value="">-Type Of Court-</option>
                                            <option value="Badminton">Badminton Court</option>
                                            <option value="PingPong">Ping Pong Court</option>
                                            <option value="VolleyBall">VolleyBall Court</option>
                                        </select>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="status">Status</label>
                                        <select  name="status" id="status">
                                            <option value="">-Status-</option>
                                            <option value="OPEN">OPEN</option>
                                            <option value="CLOSED">CLOSED</option>
                                        </select>
                                    </div>

                                    <div class="6u 12u(xsmall)">
                                        <label for="Desciption">Description</label>
                                        <input type="text" name="statusDesc" id="statusDesc" value="${court.statusDesc}"/>
                                    </div>
                                </div>

                                <br>

                                <div class="12u">
                                    <ul class="actions">
                                        <li><input type="submit" value="Submit" class="fit special" /></li>
                                        <li><a href="${pageContext.request.contextPath}/CourtList" class="button fit special">Cancel</a></li>
                                    </ul>
                                </div>
                            </form>
                        </c:if>
                    </div>
                </section>
            </article>
        </div>
    </body>
</html>
