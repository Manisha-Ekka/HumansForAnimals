<%-- 
    Document   : post
    Created on : Mar 29, 2023, 8:46:21 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <%@include file="forall/allcss.jsp" %>
        <style type="text/css">
            .back-img{
                background: url("img/report.jpg");
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
        <%@include file="forall/usernavbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-3 mb-3">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-exclamation-triangle fa-2x" aria-hidden="true"></i>
                            <h4>Report a case</h4>
                        </div>
                        <div class="card-body">
                            <form action="PostIssue" method="post">
                                <div class="form-group text-green">
                                    <label for="Name">Name</label>
                                    <input type="text" class="form-control" name="name" required>
                                </div>
                                <div class="form-group text-green">
                                    <label for="Phone">Phone</label>
                                    <input type="text" class="form-control" name="phone">
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">Issue</label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="issue">
                                        <option selected>Select Issue</option>
                                        <option value="animal abuse">Animal Abuse</option>
                                        <option value="rescue">Rescue</option>
                                        <option value="adoption">Adoption</option>
                                    </select>
                                </div>
                                <div class="form-group text-green">
                                    <label for="location">Location</label>
                                    <input type="text" class="form-control" name="location" required>
                                </div>
                                <div class="form-group text-green">
                                    <label for="landmark">Landmark</label>
                                    <input type="text" class="form-control" name="landmark">
                                </div>

                                <div class="mb-3">
                                    <label for="TextArea" class="form-label text-green">Description</label>
                                    <textarea class="form-control" id="TextArea" name="description" rows="3"></textarea>
                                </div>
                                <button type="submit" id="submitForm">Submit</button>
                                <script>
                                    $("#submitForm").click(function () {
                                        alert("The issue has been successfully submitted");
                                    });
                                </script>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%@include file="forall/foot.jsp"%>
    </body>
</html>
