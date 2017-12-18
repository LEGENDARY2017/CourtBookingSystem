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
        <style>
            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                padding-top: 100px; /* Location of the box */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: rgb(0,0,0); /* Fallback color */
                background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
            }

            /* Modal Content */
            .modal-content {
                background-color: #E0FFFF;
                margin: auto;
                padding: 20px;
                border: 1px solid #888;
                width: 80%;
            }

            /* The Close Button */
            .close {
                color: #aaaaaa;
                float: right;
                font-size: 28px;
                font-weight: bold;
            }

            .close:hover,
            .close:focus {
                color: #000;
                text-decoration: none;
                cursor: pointer;


            }
        </style>


    </head>

    <body class="landing">

        <!-- The Modal -->
        <div id="myModal1" class="modal">

            <!-- Modal content -->
            <div class="modal-content">
                <span class="close">&times;</span>
                <h3 class="major" align="center">EDIT ADMIN DETAILS</h3>

                <c:if test="${not empty admin}">
                    <form action="${pageContext.request.contextPath}/EditAdmin" method="post">
                        <!--<h1>Personal Detail</h1>-->

                        <div class="row uniform">

                            <!--<div class="6u 12u(xsmall)">
                                <img src="//placehold.it/100" class="avatar img-circle" alt="avatar">
                                <h6>Upload a different photo...</h6>

                                <input type="file" class="form-control">
                            </div>

                            <input type="hidden" name="staffid" value="${admin.staffid}" />-->

                            <div class="6u 12u(xsmall)">
                                <label for="password" class="col-sm-sm">Password</label>
                                <input type="password" name="password" id="password" class="col-sm-sm" value="${admin.password}"/>
                            </div>

                            <div class="6u 12u(xsmall)">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" value="${admin.email}"/>
                            </div>

                            <div class="6u 12u(xsmall)">
                                <label for="contactNo">Contact Number</label>
                                <input type="text" name="contactNo" id="contactNo" value="${admin.contactNo}"/>
                            </div>
                        </div>

                        <br>
                        <div class="12u">
                            <ul class="actions">
                                <li><input type="submit" value="Submit" class="fit special" /></li>
                                <li><input type="cancel" class="special"/><a href="${pageContext.request.contextPath}/adminList"/>Cancel</li>
                            </ul>
                        </div>

                    </form>
                </c:if>
            </div>

            <script>
                // Get the modal
                var modal = document.getElementById('myModal1');

                // Get the button that opens the modal
                var btn = document.getElementById("myBtn1");

                // Get the <span> element that closes the modal
                var span = document.getElementsByClassName("close")[0];

                // When the user clicks the button, open the modal 
                btn.onclick = function () {
                    modal.style.display = "block";
                }

                // When the user clicks on <span> (x), close the modal
                span.onclick = function () {
                    modal.style.display = "none";
                }

                // When the user clicks anywhere outside of the modal, close it
                window.onclick = function (event) {
                    if (event.target == modal) {
                        modal.style.display = "none";
                    }
                }
            </script>


    </body>
</html>

