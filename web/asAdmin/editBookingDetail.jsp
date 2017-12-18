<%-- 
    Document   : editBookingDetail
    Created on : Dec 18, 2017, 12:13:40 AM
    Author     : Shameera
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
                    <h3 class="major">Edit Booking Detail</h3>
                    <p style="color: red;">${errorString}</p>

                    <c:if test="${not empty booking}">
                        <form action="${pageContext.request.contextPath}/EditBooking" method="post">

                            <h1>Booking Detail</h1>
                            <div class="field half first">
                                <input type="hidden" name="bookingid" value="${booking.bookingid}" />
                                <input type="hidden" name="staffid" value="${booking.staffid}" />
                                <h6>
                                    <label for="courtid">Staff ID</label>
                                    <b>${booking.staffid}</b>
                                </h6>
                            </div>


                            <div class="field half first">
                                <label for="courtid"></label>
                                <c:forEach items="${courtList}" var="courtid" >
                                    <select name="courtid" id="courtid">
                                        <option><b>${court.courtType} ${court.courtid}</b></option>
                                    </select>
                                </c:forEach>
                            </div>
                            <br>
                            <div class="field half first">
                                <ul class="actions">
                                    <li><input type="submit" value="Submit" class="special" /></li>
                                    <li><a href="${pageContext.request.contextPath}/bookingListAdmin">Cancel</a></li>
                                </ul
                            </div>  

                        </form>
                </section>
            </div>
    </body>
</html>
