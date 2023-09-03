<%-- 
    Document   : post_review
    Created on : Mar 30, 2023, 3:07:39 AM
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
                background: url("img/rating.jpg");
                width: 100%;
                height: 100%;
                background-size: cover;
            }
            .card{
                border-radius: 5px;
                backdrop-filter: blur(14px);
                background-color: rgba(255, 255, 255, 0.2);
            }
            *{
                margin: 0;
                padding: 0;
            }
            .rate {
                float: left;
                height: 46px;
                padding: 0 10px;
            }
            .rate:not(:checked) > input {
                position:absolute;
                top:-9999px;
            }
            .rate:not(:checked) > label {
                float:right;
                width:1em;
                overflow:hidden;
                white-space:nowrap;
                cursor:pointer;
                font-size:30px;
                color:#ccc;
            }
            .rate:not(:checked) > label:before {
                content: '★ ';
            }
            .rate > input:checked ~ label {
                color: #ffc700;
            }
            .rate:not(:checked) > label:hover,
            .rate:not(:checked) > label:hover ~ label {
                color: #deb217;
            }
            .rate > input:checked + label:hover,
            .rate > input:checked + label:hover ~ label,
            .rate > input:checked ~ label:hover,
            .rate > input:checked ~ label:hover ~ label,
            .rate > label:hover ~ input:checked ~ label {
                color: #c59b08;
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
                            <i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
                            <h4>Your Review</h4>
                        </div>
                        <div class="card-body">
                            <form action="PostReview" method="post">
                                <div class="form-group text-green">
                                    <label for="Name">Name</label>
                                    <input type="text" class="form-control" name="name" required>
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


                                    <div class="mb-3">
                                        <label for="TextArea" class="form-label text-green">Detailed Review</label>
                                        <textarea class="form-control" id="TextArea" name="detail" rows="3"></textarea>
                                    </div>
                                    <div class="rate">
                                        <input type="radio" id="star5" name="rate" value="5" />
                                        <label for="star5" title="text">5 stars</label>
                                        <input type="radio" id="star4" name="rate" value="4" />
                                        <label for="star4" title="text">4 stars</label>
                                        <input type="radio" id="star3" name="rate" value="3" />
                                        <label for="star3" title="text">3 stars</label>
                                        <input type="radio" id="star2" name="rate" value="2" />
                                        <label for="star2" title="text">2 stars</label>
                                        <input type="radio" id="star1" name="rate" value="1" />
                                        <label for="star1" title="text">1 star</label>
                                    </div><br><br>
                                    <button type="submit" id="submitForm" style="margin-left: 40%">Submit</button>
                                    <script>
                                        $("#submitForm").click(function () {
                                            alert("Thank you for your valuable review!");
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

