<%-- 
    Document   : userlogin
    Created on : Mar 29, 2023, 2:41:38 PM
    Author     : asus
--%>

<%-- 
    Document   : userlogin
    Created on : Mar 29, 2023, 2:41:38 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Login</title>
        <%@include file="forall/allcss.jsp" %>

        <style type="text/css">
            .back-img{
                background: url("img/abuse.jpg");
                width: 100%;
                height: 640px;
                background-size: cover;
            }
            .card{
                border-radius: 5px;
                backdrop-filter: blur(14px);
                background-color: rgba(255, 255, 255, 0.2);
            }
        </style>
    </head>
    <body>
        <input type="hidden" id="status" value="<%=request.getAttribute("status")%>">
        <%@include file="forall/navbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-circle-o fa-2x" aria-hidden="true"></i>
                            <h4>User Login</h4>
                        </div>
                        <div class="card-body">
                            <form method="post" action="Login">
                                <div class="form-group text-white">
                                    <label for="Email">Email address</label>
                                    <input type="email" class="form-control" name="user_email" placeholder="Enter email" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="Password">Password</label>
                                    <input type="password" class="form-control" name="user_pass" placeholder="Password" required>
                                </div>
                                <button type="submit" class="btn btn-primary text-center">Submit</button>
                                <div class="lgn-btn text-white text-center">
                                    <p>Not registered yet? <a href="register.jsp">Click here</a></p> 
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%@include file="forall/foot.jsp"%>
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="js/main.js"></script>
        <link rel="stylesheet" href="alert/dist/sweetalert.css">

        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "failed") {
                swal("Invalid Credentials", "Try again", "failed");
            }
        </script>
        <script type="text/javascript">
            var status = document.getElementById("status").value;
            if (status == "success") {
                swal("Successfully Logged In", "Welcome", "success");
            }
        </script>
        
    </body>
</html>
