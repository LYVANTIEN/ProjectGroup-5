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

            /* Set black background color, white text and some padding */
 
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
            .container{
                text-align: center;

            }
            body {
                text-align: center !important;
            }
            .home-product-item__sale-off {
                position: absolute;
                top: 0px;
                right: 6px;
                width: 60px;
                height: 48px;
                background-color: #e3cd06;
                line-height: 2.8rem;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            .home-product-item__sale-off-percent {
                font-size: 1.3rem;
                font-weight: 600;
                color: red;
                margin-bottom: -24px;

            }

            .home-product-item__sale-off-label {
                margin-top: 2px;
                font-size: 1.4rem;
                color: var(--white-color);
                font-weight: 410;
            }

            .home-product-item__sale-off::after {
                content: "";
                display: block;
                border-width: 0 23px 4px;
                border-style: solid;
                border-color: transparent #e3cd06 transparent #e3cd06;
                position: absolute;
                bottom: -4px;
            }
            .price-store{
                color: #fc5939;
                font-size: 1.4rem;
                font-weight: 410;
            }
            .card-title-name{
                color: #282828;
            }
            .xoachamcham{
                list-style-type: disc;
            }
            .anhbia img{
                height: 700px;

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
            .pagination{
                display: flex;
                justify-content: center;
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
        <div class="carousel slide" data-bs-ride="carousel">
            <ul class="carousel-indicators">
                <li data-bs-target="#slides" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#slides" data-bs-slide-to="1"></li>
                <li data-bs-target="#slides" data-bs-slide-to="2"></li>
            </ul>
            <div class="">
                <div class="active anhbia">
                    <img src="https://i.pinimg.com/originals/c9/15/e8/c915e88d5c6b50c1910b777eaf4f94cc.gif" width="100%"
                         alt="slider-img-0">
                    <div class="carousel-caption">
                        <h3 style="color: white;font-weight:bolder;font-style : italic ; ">The Classic Style But The Best </h3> 
                        <button type="button" class="btn btn-outline-light btn-lg">View all</button>
                        <button type="button" class="btn btn-success btn-lg">Get started</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 3. Introduction -->
        <div class="container-fluid padding">
            <div class="row introduction text-center">
                <div class="col-12">
                    <h1 class="introduction-heading">How to Nikes is established?</h1>
                    <hr>
                    <p>Every little bit of the UltraRange re-thought, re-engineered, and re-built with sustainability in
                        mind, because how we get there is just as important as where we're going.</p>
              
                </div>
            </div>
        </div>
        <div class="container-fluid padding">
            <div class="row text-center padding">
                <div class="col col-xs-12 col-sm-6 col-md-4">
                    <img class="logo-img"
                         src="https://static.nike.com/a/images/f_auto/dpr_1.5,cs_srgb/w_314,c_limit/fba709f4-e070-40f6-a25c-2b4699826f39/nike-just-do-it.jpg"
                         alt="">
                    <h3>Member Shop</h3>
                    <p>Shop Member-exclusive styles.</p>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-4">
                    <img class="logo-img"
                         src="https://static.nike.com/a/images/f_auto/dpr_1.5,cs_srgb/w_314,c_limit/f739a452-a66e-46de-a6c5-d0e6bca3ca09/nike-just-do-it.jpg"
                         alt="">
                    <h3>Shipping as It Should Be</h3>
                    <p>Free standard shipping on all orders.</p>
                </div>
                <div class="col col-xs-12 col-sm-6 col-md-4">
                    <img class="logo-img"
                         src="https://static.nike.com/a/images/f_auto/dpr_1.5,cs_srgb/w_314,c_limit/6a646dd4-24e4-4d14-847f-84c9f8311635/nike-just-do-it.jpg"
                         alt="">
                    <h3>Nike By You</h3>
                    <p>Customize your so-you shoe.</p>
                </div>
            </div>
        </div>

        <div class="container ">
            <hr class="indicator-2">
            <div class="row padding">
                <div class="col col-md-8">
                    <ul class="nav nav-tabs home-product-list">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Shoes</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button"
                               aria-expanded="false">Tees</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">T-shirt</a></li>
                                <li><a class="dropdown-item" href="#">Tees</a></li>
                                <li><a class="dropdown-item" href="#">Basic tees</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Others</a></li>
                            </ul>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="#">Sweater</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled">Pants</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Others</a>
                        </li>
                    </ul>
                </div>
                <form action="search" method="post" class="form-inline my-3 my-lg-2">
                    <div class="input-group input-group-sm">
                        <input name="txt" type="text" class="form-control" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-secondary btn-number">
                                <i class="fa fa-search"></i>
                            </button>
                        </div>
                    </div>
                    <a class="btn btn-success btn-sm ml-2" href="cart">
                        <i class="fa fa-shopping-cart"></i> Cart
                        <span class="badge badge-light"></span>
                    </a>
                </form>
            </div>
        </div>

        <!-- 4. Card -->
        <div class="container">
            <div class="row mb-3 padding">
                <c:forEach items="${requestScope.listpp}" var="o">
                    <div class="col-md-4">
                        <div class="card">
                            <img class="card-img-top"
                                 src="${o.image}"
                                 alt="">
                            <div class="card-body">

                                <h5 class="card-title">${o.name}</h4>
                                    <p class="card-text">${o.title}</p>
                                    <p class="card-text price-store"><strong>${o.price} $</strong></p>
                                    <div class="home-product-item__sale-off">
                                        <span class="home-product-item__sale-off-percent">30%</span>
                                        <span class="home-product-item__sale-off-label">SALE</span>
                                    </div>
                                    <c:if test="${sessionScope.acc == null}">
                                        <a href="Login2.jsp"class="btn btn-outline-info "> Sign In to Buy ${sessionScope.acc.user}</a>
                                    </c:if>
                                    <c:if test="${sessionScope.acc != null}">

                                        <a href="detail?pid=${o.id}"class="btn btn-outline-info">Buy </a>

                                    </c:if>
                                    <c:if test="${sessionScope.acc != null}">

                                        <a href="cart?id=${o.id}"class="btn btn-success">Add To Cart </a>

                                    </c:if>

                            </div>
                        </div>
                    </div>
                </c:forEach>

            </div>
        </div>
        <nav aria-lable="...">
            <ul class="pagination pagination-lg">
            <c:forEach begin ="1" end ="${endP}" var="i">
                <li class="page-item ${tag == i?"active":""}"><a class="page-link" href="listproduct?index=${i}">${i}</a></li>
            </c:forEach>
        </ul>
            </nav>
        <script src="./js/bootstrap.js"></script>
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>

</html>