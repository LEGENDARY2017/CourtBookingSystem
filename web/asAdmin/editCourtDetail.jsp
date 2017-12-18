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


    <body>
        <section class="wrapper ">
            <div class="inner">
                <section>
                    <h3 class="major">Edit User Detail</h3>
                    <p style="color: red;">${errorString}</p>

                    <c:if test="${not empty court}">
                        <form action="${pageContext.request.contextPath}/EditCourt" method="post">

                            <h1>Court Detail</h1>
                            <input type="hidden" name="courtid" value="${court.courtid}" />
                            <div class="row uniform">    

                                <div class="field half first">
                                    <label for="courtType">Court Type</label>
                                    <b>${court.courtType}</b>
                                </div>

                                <div class="field half first">
                                    <label for="courtType">Change To</label>
                                    <select  name="courtType" id="courtType">
                                        <option value="Badminton">Badminton Court</option>
                                        <option value="PingPong">Ping Pong Court</option>
                                        <option value="VolleyBall">VolleyBall Court</option>
                                    </select>
                                </div>

                                <div class="field half first">
                                    <label for="status">Status</label>
                                    <select  name="status" id="status">
                                        <option value="open">Open</option>
                                        <option value="close">Close</option>
                                    </select>
                                </div>

                                <div class="field half first">
                                    <label for="Desciption">Description</label>
                                    <input type="text" name="statusDesc" id="statusDesc" value="${court.statusDesc}"/>
                                </div>
                            </div>
                            <div class="field half first">
                                <br>
                                <ul class="actions">
                                    <li><input type="submit" value="Submit" class="special" /></li>
                                    <li><a href="${pageContext.request.contextPath}/CourtList">Cancel</a></li>
                                </ul>
                            </div>
                        </form>
                    </c:if>
                </section>

            </div>
        </section>
    </article>

</body>
</html>
