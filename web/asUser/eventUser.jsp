<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : index
    Created on : 21-Nov-2017, 00:47:26
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
        <jsp:include page="headerUser.jsp"></jsp:include>
        <section>
            <h3 class="major">Event Schedule</h3>
            <div class="table-wrapper">
                <table table="event" class="table table-striped">
                    <thead>
                        <tr>

                            <th>Event name</th>
                            <th>Event Date</th>
                            <th>Event Time</th>
                            <th>Description</th>                            
                            <th>Court ID</th>                            
                        </tr>

                    </thead>
                    <tbody>                        
                    <td>Sufkom</td>
                    <td>31/08/2017</td>
                    <td>0800am</td>
                    <td>FC punya</td>                        
                    <td>B1</td>                        
                    </tbody>
                </table>            



            </div>

        </section>
 
</body>
</html>