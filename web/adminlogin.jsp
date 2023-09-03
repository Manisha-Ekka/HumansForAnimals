<%-- 
    Document   : adminlogin
    Created on : Mar 29, 2023, 3:49:33 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <%@include file="forall/allcss.jsp" %>

        <style type="text/css">
            .back-img{
                background: url("img/login-bg.jpg");
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
        <%@include file="forall/navbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-user-circle-o fa-2x" aria-hidden="true"></i>
                            <h4>Admin Login</h4>
                        </div>
                        <div class="card-body">
                            <form>
                                <div class="form-group text-white">
                                    <label for="Email">Email address</label>
                                    <input type="email" class="form-control" name="user_email" placeholder="Enter email">
                                </div>
                                <div class="form-group text-white">
                                    <label for="Password">Password</label>
                                    <input type="password" class="form-control" name="user_pass" placeholder="Password">
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%@include file="forall/foot.jsp"%>
    </body>
</html>
