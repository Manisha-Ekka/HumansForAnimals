<%-- 
    Document   : register
    Created on : Mar 29, 2023, 2:41:57 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <%@include file="forall/allcss.jsp" %>

        <style type="text/css">
            .back-img{
                background: url("img/reg-bg.jpg");
                width: 100%;
                height: 100%;
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
                <div class="col-md-5 offset-md-4">
                    <div class="card mt-2 mb-2">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                            <h4>Registration</h4>
                        </div>
                        <div class="card-body">
                            <form action="Registration" method="post">
                                <div class="form-group text-white">
                                    <label for="Fname">First name</label>
                                    <input type="text" maxlength="15" class="form-control" name="fname" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="Lname">Last name</label>
                                    <input type="text" maxlength="15" class="form-control" name="lname" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" name="user_email" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="Password">Password</label>
                                    <input type="password" minlength="8" class="form-control" name="user_pass" placeholder="*****************" password>
                                </div>
                                <div class="form-group text-white">
                                    <label for="Password">Confirm Password</label>
                                    <input type="password" class="form-control" name="user_pass1" placeholder="*****************">
                                </div>


                                <div class="btn-group btn-group-toggle text-white" data-toggle="buttons">Gender  <br>
                                    <label class="btn btn-secondary btn-sm">
                                        <input type="radio" name="gender" value="male" autocomplete="off" > Male
                                    </label>
                                    <label class="btn btn-secondary btn-sm">
                                        <input type="radio" name="gender" value="female" autocomplete="off"> Female
                                    </label>
                                    <label class="btn btn-secondary btn-sm">
                                        <input type="radio" name="gender" value="others" autocomplete="off"> Others
                                    </label>
                                </div>
                                <br><br>
                                <center><button type="submit" class="btn btn-primary">Register</button></center>
                                <div class="lgn-btn text-white text-center">
                                    <p>Already registered? <a href="userlogin.jsp">Login</a></p> 
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
            if (status == "success") {
                swal("Account created Successfully", "Please Login", "success");
            }
        </script>
    </body>

</html>
