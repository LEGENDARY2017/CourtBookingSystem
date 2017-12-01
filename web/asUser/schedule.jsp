<%-- 
    Document   : schedule
    Created on : Nov 22, 2017, 11:09:25 PM
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

    <body class="landing">

        <!-- Wrapper -->
        <div id="page-wrapper">

            <jsp:include page="headerUser.jsp"></jsp:include>

            <section id="banner">

                <article id="main">
                    <header>
                        <h2>COURT SCHEDULE</h2>
                        <p>You can look at the schedule and book it at the same time</p>
                    </header>
                </article>
            </section>
            
            <section class="wrapper style5">
                <div class="inner">

                    <section>
                        <form action="/" method="post">
                            <div class="row uniform">    
                                <div class="6u 12u$(xsmall)">
                                    <input type="text" name="date" id="date" placeholder="Date"/>
                                </div>
                                <div class="6u 12u$(xsmall)">
                                    <div class="select-wrapper" >
                                        <select  id="typecourt" name="typecourt">
                                            <option value="">-Type of court-</option>
                                            <option value="1">Badminton Court</option>
                                            <option value="2">Ping Pong Court</option>
                                            <option value="3">VolleyBall Court</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="12u$">
                                    <ul class="actions">
                                        <li><input type="submit" class="special" value="View Schedule"/></li>
                                    </ul>
                                </div>
                            </div>
                        </form>
                    </section>

                    <section>
                        <div class="table-wrapper">                                
                            <table class="alt">
                                <thead>
                                    <tr>
                                        <th>Time</th>
                                        <th>Court 1</th>
                                        <th>Court 2</th>
                                        <th>Court 3</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>   
                                        <td class=" header">
                                            8:00 am - 9:00 am
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="bookingForm.jsp">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            9:00 am - 10:00 am
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            10:00 am - 11:00am
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            11:00 am - 12:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            12:00 pm - 1:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            1:00 pm - 2:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            2:00 pm - 3:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            3:00 pm - 4:00pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            4:00 pm - 5:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>                                     

                                    <tr>   
                                        <td class=" header">
                                            5:00 pm - 6:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            6:00 pm - 7:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            7:00 pm - 8:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            8:00 pm - 9:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            9:00 pm - 10:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>

                                    <tr>   
                                        <td class=" header">
                                            10:00 pm - 11:00 pm
                                        </td>
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>   
                                        <td class="table-data  book-click" title="Click to book">
                                            <a href="">&nbsp;</a>   
                                        </td>  
                                    </tr>                                        
                                </tbody>
                            </table>
                        </div>
                    </section>
                </div>
            </section>


    </body>
</html>
