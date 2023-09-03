<%-- 
    Document   : contact
    Created on : Mar 30, 2023, 11:26:47 PM
    Author     : asus
--%>

<%-- 
    Document   : about_us
    Created on : Mar 30, 2023, 9:53:08 PM
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="forall/allcss.jsp" %>
        <style>
            /*about-us*/
            *{
                padding: 0;
                margin: 0;
                font-family: 'Josefin Sans',  sans-serif;
                box-sizing: border-box;
            }

            .about{
                width: 100%;
                padding: 78px 0px;
                background-color: #191919;
            }

            .about img{
                height: auto;
                width: 420px;
            }

            .about-text{
                width: 550px;
            }

            .main{
                width: 1130px;
                max-width: 95%;
                margin: 0 auto;
                display: flex;
                align-items: center;
                justify-content: space-around;
            }

            .about-text h1{
                color: white;
                font-size: 80px;
                text-transform: capitalize;
                margin-bottom: 20px;
            }

            .about-text h5{
                color: #f9004d;
                font-size: 20px;
                margin-bottom: 20px;
                letter-spacing: 2px;
            }

            span{
                color: #f9004d;
            }

            .about-text p{
                color: #fcfc;
                letter-spacing: 1px;
                line-height: 28px;
                font-size: 18px;
                margin-bottom: 45px;
            }
        </style>

    </head>
    <body>
        <%@include file="forall/navbar.jsp" %>
        <section class="about">
            <div class="main">
                <img src="img/cow.jpg">
                <div class="about-text">
                    <p><h1>Connect with us </h1>
                    <h5>Phone: +00-00000 00000</h5>
                    <h5>Email: abcde@gmail.com</h5>
                    <h5>Location: HumansForAnimals, Raipur</h5></p>
                </div>
            </div>
        </section>

    </body>
</html>

