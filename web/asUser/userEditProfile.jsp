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
            <h3 class="major">Edit Profile</h3>
            <form method="post" action="#">
                
                
               
                <h1>Personal Detail</h1>
               
                <div class="row">
     
                <div class="text-center">
                    <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                    <h6>Upload a different photo...</h6>
          
                    <input type="file" class="form-control">
                </div>
                </div>
                    
                <c:forEach items="${UserList}" var="user" >
                <div class="field half first">
                    <label for="name" class="col-sm-sm">Name</label>
                    <input type="text" name="name" id="name" class="col-sm-sm" value="${user.name}"/>
                </div>
                
                <div class="field half first">
                    <label for="name" class="col-sm-sm">Password</label>
                    <input type="password" name="name" id="name" class="col-sm-sm" value="${user.password}"/>
                </div>
                
                <div class="field half first">
                    <label for="date">Contact Number</label>
                    <input type="text" name="contactNo" id="contactNo" value="${user.contactNo}"/>
                </div>
               
                <div class="field half first">
                    <label for="desc">Email</label>
                    <input type="text" name="email" id="email" value="${user.email}"/>
                </div>
                <br>    
                <div class="field half first">
                <ul class="actions">
                    <li><input type="submit" value="Submit" class="special" /></li>
                    <li><input type="reset" value="Reset" /></li>
                </ul
                </div>
                </c:forEach>    
                 
            </form>
        </section>
        </div>
   
    </body>
</html>
      
     