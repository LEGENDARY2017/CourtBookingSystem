<%-- 
    Document   : editEventDetails
    Created on : 17-Dec-2017, 20:19:28
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
            <h3 class="major">Edit Event Detail</h3>
            <p style="color: red;">${errorString}</p>

      <c:if test="${not empty user}">
                <form action="${pageContext.request.contextPath}/EditEvent" method="post">

               
                                <div class="row uniform">    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="eventid" value="${event.eventid}" placeholder="Event ID"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="timeslot" value="${event.timeslot}" placeholder="Timeslot"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="courtid" value="${event.courtid}" placeholder="Court ID"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="staffid" value="${event.staffid}" placeholder="Staff ID"/>
                                    </div>
                                    
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="name" value="${event.name}" placeholder="Event Name"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="eventDate" value="${event.eventDate}" placeholder="Event Date"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <input type="text" name="description" value="${event.description}" placeholder="Description"/>
                                    </div>
                             
                                    <div class="6u 12u$">
                                        <ul class="actions">
                                            <li><input type="submit" value="Submit" class="special" /></li>
                                            <li><a href="${pageContext.request.contextPath}/eventList">Cancel</a></li>
                                            
                                        </ul>
                                    </div>
                                </div>
                            </form>
                        </section>

                    </div>
                </section>


    </body>
</html>

