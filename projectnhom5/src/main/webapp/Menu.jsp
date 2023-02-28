<%-- 
    Document   : Home
    Created on : Oct 5, 2022, 1:50:24 PM
    Author     : NGO VU HUY
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>Web-App_1</title>
        <style type="text/css">
        footer {
                background-color: #555;
                color: white;
                padding: 15px;

            }
            .navbar {
                background-color: rgb(27, 26, 26) !important;
                opacity: 0.8;
            }

            .carousel-inner img {
                width: 80%;
            }

            .carousel-caption h1 {
                text-transform: uppercase;
                text-shadow: 5px 5px 15px rgb(27, 25, 25);
            }

            .introduction .col-12 hr {
                border-top: 2px solid #333;
                margin: 10px auto;
                width: 50%;
            }


            .logo-img {
                width: 300px;
                height: 300px;
            }
 .btn-group>.btn:first-child {
                margin-left: 40px !important;
            }
            .card {
                transition: transform linear 0.1s;
            }

            .card:hover {
                transform: translateY(-6px);
            }
            .indicator-2 {
                border-top: 2px solid #333;
                margin: 20px auto;
                width: 100%;
            }

            .home-product-list {
                margin: 20px 0;
            }

            .searching {
                margin-top: 24px;
            }
            .carousel-item img{
                position:relative;
                float:left;
                width: 661px;
                height: 465px;
                margin-right:-100%;
                -webkit-backface-visibility:hidden;
                backface-visibility:hidden;
                transition:transform .6s ease-in-out
            }
            .card-text {
                display: block;
                --line-height: 20px;
                line-height: var(--line-height);
                height: var(--line-height);
                overflow: hidden;
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
            }
            .card-img-top{
                width: 100%;
                height: 168px;
            }
            .card-title{
                display: block;
                --line-height: 20px;
                line-height: var(--line-height);
                height: var(--line-height);
                overflow: hidden;
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 2;
            }
             .active{
                font-size: 15px;
            }
            .paing{
                margin-left: 5px;
            }
            .btn-group>.btn:first-child {
                margin-left: 40px !important;
            }
            .cartbodyclass{
                margin-bottom:
            }
        </style>


    </head>
<body>
    <!-- 1. Navigation -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark sticky-top">
            <!-- Container full screen -->
            <div class=" container-fluid">
                <a href="" class="abc"></a>

                <!-- Logo brand -->
                <a href="listproduct" class="navbar-branch">
                    <img src="https://c.static-nike.com/a/images/w_1200,c_limit/bzl2wmsfh7kgdkufrrjq/seo-title.jpg" 
                         alt="logo-icon" height="50px">

                </a>
                <!-- Navigation button -->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
                        aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Navigation list-->
                <div class="row justify-content-between">
                    <div class="col-md-6.5">
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ml-auto">
                                <c:if test="${sessionScope.acc.isSell == 1}">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Manager
                                        </button>
                                        <div class="dropdown-menu">

                                            <a href="manager" class="dropdown-item">Manager Product</a>

                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.acc.isAdmin == 2}">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            Manager
                                        </button>
                                        <div class="dropdown-menu">
                                            <a href="accountadmin" class="dropdown-item">Manager Account</a>
                                            <a href="admin" class="dropdown-item">Manager Product</a>
                                            <a href="show_order" class="dropdown-item">Manager Order</a>
                                        </div>
                                    </div>
                                </c:if>

                            </ul>
                        </div>
                    </div>
                    <div class="home col-md-5.5">
                        <div class="collapse navbar-collapse" id="navbarResponsive">
                            <ul class="navbar-nav ml-auto">

                                <c:if test="${sessionScope.acc == null}">
                                    <div class="btn-group">

                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-user"> Xin Chào</i> 
                                        </button>
                                        <div class="dropdown-menu">

                                            <a href="Login2.jsp" class="dropdown-item">Login</a>
                                            <a href="SignIn2.jsp" class="dropdown-item">Sign in</a>
                                            <a href="#" class="dropdown-item">Forget Password</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="logout" class="dropdown-item">Blog</a>
                                        </div>
                                    </div><
                                </c:if>
                                <c:if test="${sessionScope.acc != null}">

                                    <a class="btn btn-warning btn-sm ml-2" href="cart">
                                        <i class="fa fa-shopping-cart" style="padding-top: 8px;"></i> Cart
                                        <span class="badge badge-light"></span>
                                    </a>


                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-user"></i> ${sessionScope.acc.user}
                                        </button>
                                        <div class="dropdown-menu">
                                            <a href="profile?id=${o.uID}" class="dropdown-item"style="color: green;">Profile</a>
                                            <a href="change" class="dropdown-item"style="color: green;">Change PassWord</a>
                                            <a href="HistoryOrders.jsp" class="dropdown-item"style="color: green;">History Orders</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="logout" class="dropdown-item" style="color: red;">Log Out</a>
                                        </div>
                                    </div>

                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </nav>

    <!-- 2. Slider-->

    <!-- 3. Introduction -->
   



    <!-- 4. Card -->
   <!-- 
 
   
   
   
     -->
    <script src="./js/bootstrap.js"></script>
</body>

</html>