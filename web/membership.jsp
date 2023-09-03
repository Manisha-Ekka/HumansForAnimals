<%-- 
    Document   : membership
    Created on : Mar 30, 2023, 2:16:26 PM
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
                background: url("img/member.jpg");
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
                            <i class="fa fa-users fa-2x" aria-hidden="true"></i>
                            <h4>Become a member</h4>
                        </div>
                        <div class="card-body">
                            <form action="Membership" method="post">
                                <div class="form-group text-white">
                                    <label for="Name">Name</label>
                                    <input type="text" class="form-control" name="name" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="Phone">Phone</label>
                                    <input type="text" class="form-control" name="phone" required>
                                </div>

                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text text-dark" for="inputGroupSelect01">Area of interest</label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="interest">
                                        <option selected>Select</option>
                                        <option value="feeding">Feeding</option>
                                        <option value="rescue">Rescue</option>
                                        <option value="adoption">Adoption</option>
                                        <option value="campaign">Campaign Organization</option>
                                    </select>
                                </div>
                                <div class="form-group text-white">
                                    <label for="residence">Residence</label>
                                    <input type="text" class="form-control" name="residence" required>
                                </div>
                                <div class="form-group text-white">
                                    <label for="experience">Experience</label>
                                    <input type="text" class="form-control" name="experience" required>
                                </div>

                                <div class="mb-3">
                                    <label for="TextArea" class="form-label text-white">Why do you want to join this NGO? (in less than 100 characters)</label>
                                    <textarea class="form-control" id="TextArea" name="description" rows="3" required></textarea>
                                </div>
                                <button type="submit" id="submitForm" style="margin-left: 40%">Submit</button>
                                <script>
                                    $("#submitForm").click(function () {
                                        alert("The application has been successfully submitted");
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

