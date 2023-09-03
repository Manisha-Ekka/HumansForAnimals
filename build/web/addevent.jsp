<%-- 
    Document   : addevent
    Created on : Mar 30, 2023, 7:08:28 PM
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
        <%@include file="forall/adminnavbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5 mb-5">
                        <div class="card-header text-center text-white bg-custom">
                            <i class="fa fa-exclamation-triangle fa-2x" aria-hidden="true"></i>
                            <h4>Event</h4>
                        </div>
                        <div class="card-body">
                            <form action="AddEvent" method="post">
                                <div class="input-group mb-3">
                                    <div class="input-group-prepend">
                                        <label class="input-group-text" for="inputGroupSelect01">Event</label>
                                    </div>
                                    <select class="custom-select" id="inputGroupSelect01" name="event">
                                        <option selected>Choose</option>
                                        <option value="Vaccination drive">Vaccination drive</option>
                                        <option value="Awareness Camp">Awareness Camp</option>
                                        <option value="Adoption Camp">Adoption Camp</option>
                                    </select>
                                </div>
                    
                                <div class="form-group text-green">
                                    <label for="location">Location</label>
                                    <input type="text" class="form-control" name="location" required>
                                </div>
                                
                                <div class="form-group text-green">
                                    <label for="date">Date</label>
                                    <input type="datetime-local" class="form-control" name="date">
                                </div>
                                
                                <div class="mb-3">
                                    <label for="TextArea" class="form-label text-green">Description</label>
                                    <textarea class="form-control" id="TextArea" name="description" rows="3"></textarea>
                                </div>

                                <button type="submit" id="submitForm">Submit</button>
                                <script>
                                    $("#submitForm").click(function () {
                                        alert("The event has been successfully added");
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

