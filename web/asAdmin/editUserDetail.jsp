<%-- 
    Document   : editprofile
    Created on : Nov 28, 2017, 2:23:11 AM
    Author     : yanaramli22
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

      <c:if test="${not empty user}">
                <form action="${pageContext.request.contextPath}/EditUser" method="post">
               
                <h1>Personal Detail</h1>
               
                <div class="row">
     
                <div class="text-center">
                    <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                    <h6>Upload a different photo...</h6>
          
                    <input type="file" class="form-control">
                </div>
                </div>
                    
                <input type="hidden" name="username" value="${user.username}" />
                <div class="field half first">
                    <label for="password" class="col-sm-sm">Password</label>
                    <input type="password" name="password" id="password" class="col-sm-sm" value="${user.password}"/>
                </div>
                
                <div class="field half first">
                    <label for="contactNo">Contact Number</label>
                    <input type="text" name="contactNo" id="contactNo" value="${user.contactNo}"/>
                </div>
               
                <div class="field half first">
                    <label for="email">Email</label>
                    <input type="text" name="email" id="email" value="${user.email}"/>
                </div>
                <br>    
                <div class="field half first">
                <ul class="actions">
                    <li><input type="submit" value="Submit" class="special" /></li>
                    <li><a href="${pageContext.request.contextPath}/UserList">Cancel</a></li>
                </ul
                </div>  
                 
            </form>
        </section>
        </div>
   
    </body>
</html>
      
     