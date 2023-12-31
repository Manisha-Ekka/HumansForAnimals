
<%-- 
    Document   : index
    Created on : Mar 19, 2023, 12:12:19 PM
    Author     : asus
--%>
<%
    if (session.getAttribute("user_email") == null) {
        response.sendRedirect("userlogin.jsp");
    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>Animal Welfare</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/brands.min.css" integrity="sha512-9YHSK59/rjvhtDcY/b+4rdnl0V4LPDWdkKceBl8ZLF5TB6745ml1AfluEU6dFWqwDw9lPvnauxFgpKvJqp7jiQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <%@include file="forall/allcss.jsp"%>

        <style type="text/css">
            .back-img{
                background: url("img/puppies1.jpg");
                width: 100%;
                height: 840px;
                background-size: cover;
            }

            h1 {
                text-align: center;
                color: #fff;
            }
            h1 span {
                background-color: #000000;
                color: white;
            }

            // colour stuff
            @white: #ffffff;
            @lightBG: #dce1df;
            @salmon: #ff6666;

            @teal: #0096a0;
            @tealMid: #0ebac7;
            @tealContrast: #33ffff;
            @tealShade:	#007c85;

            @darkGrey: #4f585e;

            body {
                background: @lightBG;
                color: @darkGrey;
                font-family: 'Source Sans Pro', sans-serif;
                text-rendering: optimizeLegibility;
            }

            a.btn {
                background: @teal;
                border-radius: 4px;
                box-shadow: 0 2px 0px 0 rgba(0,0,0,0.25);
                color: @white;
                display: inline-block;
                padding: 6px 30px 8px;
                position: relative;
                text-decoration: none;
                transition: all 0.1s 0s ease-out;
            }

            .no-touch a.btn:hover {
                background: lighten(@teal,2.5);
                box-shadow: 0px 8px 2px 0 rgba(0, 0, 0, 0.075);
                transform: translateY(-2px);
                transition: all 0.25s 0s ease-out;
            }

            .no-touch a.btn:active,
            a.btn:active {
                background: darken(@teal,2.5);
                box-shadow: 0 1px 0px 0 rgba(255,255,255,0.25);
                transform: translate3d(0,1px,0);
                transition: all 0.025s 0s ease-out;
            }

            div.cards {
                margin: 80px auto;
                max-width: 960px;
                text-align: center;
            }

            div.card {
                background: @white;
                display: inline-block;
                margin: 8px;
                max-width: 300px;
                perspective: 1000;
                position: relative;
                text-align: left;
                transition: all 0.3s 0s ease-in;
                width: 300px;
                z-index: 1;

                img {
                    max-width: 300px;
                }

                .card__image-holder {
                    background: rgba(0,0,0,0.1);
                    height: 0;
                    padding-bottom: 75%;
                }

                div.card-title {
                    background: @white;
                    padding: 6px 15px 10px;
                    position: relative;
                    z-index: 0;

                    a.toggle-info {
                        border-radius: 32px;
                        height: 32px;
                        padding: 0;
                        position: absolute;
                        right: 15px;
                        top: 10px;
                        width: 32px;

                        span {
                            background: @white;
                            display: block;
                            height: 2px;
                            position: absolute;
                            top: 16px;
                            transition: all 0.15s 0s ease-out;
                            width: 12px;
                        }

                        span.left {
                            right: 14px;
                            transform: rotate(45deg);
                        }
                        span.right {
                            left: 14px;
                            transform: rotate(-45deg);
                        }
                    }

                    h2 {
                        font-size: 24px;
                        font-weight: 700;
                        letter-spacing: -0.05em;
                        margin: 0;
                        padding: 0;

                        small {
                            display: block;
                            font-size: 18px;
                            font-weight: 600;
                            letter-spacing: -0.025em;
                        }
                    }
                }

                div.card-description {
                    padding: 0 15px 10px;
                    position: relative;
                    font-size: 14px;
                }

                div.card-actions {
                    box-shadow: 0 2px 0px 0 rgba(0,0,0,0.075);
                    padding: 10px 15px 20px;
                    text-align: center;
                }

                div.card-flap {
                    background: darken(@white,15);
                    position: absolute;
                    width: 100%;
                    transform-origin: top;
                    transform: rotateX(-90deg);
                }
                div.flap1 {
                    transition: all 0.3s 0.3s ease-out;
                    z-index: -1;
                }
                div.flap2 {
                    transition: all 0.3s 0s ease-out;
                    z-index: -2;
                }

            }

            div.cards.showing {
                div.card {
                    cursor: pointer;
                    opacity: 0.6;
                    transform: scale(0.88);
                }
            }

            .no-touch  div.cards.showing {
                div.card:hover {
                    opacity: 0.94;
                    transform: scale(0.92);
                }
            }

            div.card.show {
                opacity: 1 !important;
                transform: scale(1) !important;

                div.card-title {
                    a.toggle-info {
                        background: @salmon !important;
                        span {
                            top: 15px;
                        }
                        span.left {
                            right: 10px;
                        }
                        span.right {
                            left: 10px;
                        }
                    }
                }
                div.card-flap {
                    background: @white;
                    transform: rotateX(0deg);
                }
                div.flap1 {
                    transition: all 0.3s 0s ease-out;
                }
                div.flap2 {
                    transition: all 0.3s 0.2s ease-out;
                }
            }

            .card-title{
                background-color:black;
                color:white;
                padding:15px;
            }
            .fa-square-caret-down{
                font-size:35px ;
                text-align: center;
                background-color: white;
                margin-top: 10px;
                margin-bottom: 10px;
            }
            .button{
                display: flex;
                justify-content: center;

            }
            .card{
                background-color:black;

            }

            .main{
                margin-top : -50px;

            }

        </style>

    </head>
    <body>
        <!-- Navigation Bar -->
        <%@include file="forall/navbar.jsp" %>

        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-white"><span>HUMANS for ANIMALS</span>
                    <a href="#"><i class="fa fa-handshake-o fa-2x" style="color: whitesmoke" aria-hidden="true"></i></a></h1>
                <h2 class="text-white">Because every life counts</h2><br><br>



                <div class="cards  main">

                    <div class="card">
                        <div class="card__image-holder">
                            <img class="card__image img-fluid"  src="img/kitten.jpg" alt="wave" />
                        </div>
                        <div class="card-title">
                            <h2>
                                Wildlife Protection Act, 1972
                                
                            </h2>
                            <!-- animation -->
                            <a class="button" data-bs-toggle="collapse" href="#Example" role="button" aria-expanded="false" aria-controls="collapseExample">
                                <i class="fa-solid fa-square-caret-down rounded text-dark"></i>
                            </a>
                            <div class="collapse" id="Example">
                                <div class="">
                                    Hunting of certain wild species, including Indian Elephants, Indian Lions, Snow Leopards, Tigers, Great Indian Bustards, etc., is prohibited by Section 9 of the Wildlife Protection Act of 1972.
                                </div>
                            </div>

                            <!-- animation -->

                        </div>

                    </div>


                    <!--card 2 start -->


                    <div class="card">
                        <div class="card__image-holder">
                            <img class="card__image img-fluid" src="img/help.jpg" alt="beach" />
                        </div>
                        <div class="card-title">
                            <h2>
                                The Prevention of Cruelty to Animals Act of 1960
                            </h2>
                            <!-- animation -->
                            <p>
                                <a class="button" data-bs-toggle="collapse" href="#collapse" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    <i class="fa-solid fa-square-caret-down rounded text-dark"></i>

                                </a>

                            </p>
                            <div class="collapse" id="collapse">
                                <div class="">
                                    It was passed by the Indian Parliament in 1960 to amend the laws about the prevention of cruelty to animals and to prevent the infliction of needless pain or suffering on animals.
                                </div>
                            </div>

                            <!-- animation -->

                        </div>

                    </div>

                    <!--card 2 end-->




                    <!--card 3 -->

                    <div class="card">
                        <div class="card__image-holder">
                            <img class="card__image img-fluid" src="img/ab1.jpg" alt="mountain" />
                        </div>
                        <div class="card-title">
                            <!-- animation -->
                            <h2>
                                Indian Penal Code (IPC): Section 428 || Section 249
                            </h2>
                            <p>
                                <a class="button" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
                                    <i class="fa-solid fa-square-caret-down rounded text-dark"></i>
                                </a>

                            </p>
                            <div class="collapse" id="collapseExample">
                                <div class="">
                                    Section 428 – Mischief by killing or maiming animal of the value of ten rupees<br>
                                    Section 249 – Mischief by killing or maiming cattle, etc of any value or any animal of the value of fifty rupees
                                </div>
                            </div>

                            <!-- animation -->

                        </div>

                    </div>



                </div>
            </div>


























        </div>



        <!-- Footer -->
        <%@include file="forall/foot.jsp"%>
        <script>
            $(document).ready(function () {
                var zindex = 10;

                $("div.card").click(function (e) {
                    e.preventDefault();

                    var isShowing = False;

                    if ($(this).hasClass("show")) {
                        isShowing = True
                    }

                    if ($("div.cards").hasClass("showing")) {
                        // a card is already in view
                        $("div.card.show")
                                .removeClass("show");

                        if (isShowing) {
                            // this card was showing - reset the grid
                            $("div.cards")
                                    .removeClass("showing");
                        } else {
                            // this card isn't showing - get in with it
                            $(this)
                                    .css({zIndex: zindex})
                                    .addClass("show");

                        }

                        zindex++;

                    } else {
                        // no cards in view
                        $("div.cards")
                                .addClass("showing");
                        $(this)
                                .css({zIndex: zindex})
                                .addClass("show");

                        zindex++;
                    }

                });
            });
        </script>
    </body>
</html>
