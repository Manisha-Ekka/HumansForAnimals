<%-- 
    Document   : adminhome
    Created on : Mar 30, 2023, 3:49:48 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Admin Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="forall/allcss.jsp"%>

        <style type="text/css">
            .back-img{
                background: url("img/report.jpg");
                width: 100%;
                height: 640px;
                background-size: cover;
            }

            h1 {
                text-align: center;
                color: #fff;
            }
            h1 span {
                background-color: #000000;
            }
            .card{
                border-radius: 5px;
                backdrop-filter: blur(14px);
                background-color: rgba(255, 255, 255, 0.2);
            }
        </style>

    </head>
    <body>
        <!-- Navigation Bar -->
        <%@include file="forall/adminnavbar.jsp" %>
        
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white"><span>HUMANS for ANIMALS</span>
                    <a href="#"><i class="fa fa-handshake-o fa-2x" style="color: whitesmoke" aria-hidden="true"></i></a></h1>
                <h2 class="text-white">Because every life counts</h2><br><br>
                <h1></h1>
            </div>



            <div class="text-center">
                <a href="addevent.jsp" class="btn btn-light my-2 my-sm-0 mr-3"><h4>Add an Event</h4></a>
                
            </div>
        </div>



        <!-- Footer -->
        <%@include file="forall/foot.jsp"%>

    </body>
</html>
