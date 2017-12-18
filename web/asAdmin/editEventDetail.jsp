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

                                <input type="hidden" name="eventid" value="${event.eventid}" />
                                <div class="row uniform">    
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="organizer" class="col-sm-sm">Organizer</label>
                                        <input type="text" name="organizer" id="organizer" value="${event.organizer}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="name" class="col-sm-sm">Event Name</label>
                                        <input type="text" name="name" id="name" value="${event.name}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="eventDate" class="col-sm-sm">Event Date</label>
                                        <input type="text" name="eventDate" id="eventDate" value="${event.eventDate}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="startTime" class="col-sm-sm">Start Time</label>
                                        <input type="text" name="startTime" id="startTime" value="${event.startTime}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="endTime" class="col-sm-sm">End Time</label>
                                        <input type="text" name="endTime" id="endTime" value="${event.endTime}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="description" class="col-sm-sm">Description</label>
                                        <input type="text" name="description" id="description" value="${event.description}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="courtid" class="col-sm-sm">Court ID</label>
                                        <input type="text" name="courtid" id="courtid" value="${event.courtid}"/>
                                    </div>
                                    
                                    <div class="6u 12u$(xsmall)">
                                        <label for="staffid" class="col-sm-sm">Staff ID</label>
                                        <input type="text" name="staffid" id="staffid" value="${event.staffid}"/>
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

