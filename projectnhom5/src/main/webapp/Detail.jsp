<html lang="en">

    <head>
        <title>Harvest vase</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <link href="https://fonts.googleapis.com/css?family=Bentham|Playfair+Display|Raleway:400,500|Suranna|Trocchi" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <style type="text/css">

            /* 
      * Design by Robert Mayer:https://goo.gl/CJ7yC8
      *
      *I intentionally left out the line that was supposed to be below the subheader simply because I don't like how it looks.
      *
      * Chronicle Display Roman font was substituted for similar fonts from Google Fonts.
      */

            body {
                background-color: #fdf1ec;
            }

            .wrapper {
                height: 420px;
                width: 654px;
                margin: 50px auto;
                border-radius: 7px 7px 7px 7px;
                /* VIA CSS MATIC https://goo.gl/cIbnS */
                -webkit-box-shadow: 0px 14px 32px 0px rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0px 14px 32px 0px rgba(0, 0, 0, 0.15);
                box-shadow: 0px 14px 32px 0px rgba(0, 0, 0, 0.15);
            }

            .product-img {
                float: right;
                height: 420px;
                width: 327px;
            }

            .product-img img {
                border-radius: 7px 0 0 7px;
            }

            .product-info {
                float: left;
                height: 420px;
                width: 327px;
                border-radius: 0 7px 10px 7px;
                background-color: #ffffff;
            }

            .product-text {
                height: 300px;
                width: 327px;
            }

            .product-text h1 {
                margin: 0 0 0 38px;
                padding-top: 52px;
                font-size: 34px;
                color: #474747;
            }

            .product-text h1,
            .product-price-btn p {
                font-family: 'Bentham', serif;
            }

            .product-text h2 {
                margin: 0 0 47px 38px;
                font-size: 13px;
                font-family: 'Raleway', sans-serif;
                font-weight: 400;
                text-transform: uppercase;
                color: #d2d2d2;
                letter-spacing: 0.2em;
            }

            .product-text p {
                height: 125px;
                margin: 0 0 0 38px;
                font-family: 'Playfair Display', serif;
                color: #8d8d8d;
                line-height: 1.7em;
                font-size: 15px;
                font-weight: lighter;
                overflow: hidden;
            }

            .product-price-btn {
                height: 103px;
                width: 327px;
                margin-top: 17px;
                position: relative;
            }

            .product-price-btn p {
                display: inline-block;
                position: absolute;
                top: -13px;
                height: 50px;
                font-family: 'Trocchi', serif;
                margin: 0 0 0 38px;
                font-size: 28px;
                font-weight: lighter;
                color: #474747;
            }

            span {
                display: inline-block;
                height: 50px;
                font-family: 'Suranna', serif;
                font-size: 34px;
            }

            .product-price-btn button {
                float: right;
                display: inline-block;
                height: 50px;
                width: 176px;
                margin: 0 40px 0 16px;
                box-sizing: border-box;
                border: transparent;
                border-radius: 60px;
                font-family: 'Raleway', sans-serif;
                font-size: 14px;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 0.2em;
                color: #ffffff;
                background-color: #9cebd5;
                cursor: pointer;
                outline: none;
            }

            .product-price-btn button:hover {
                background-color: #79b0a1;
            }
            .img-big-wrap img{
                width: 100%;
                height: 45%;
            }
            .text-uppercase{
                margin-left:100px;
            }
            .container{
                height: 691px;
            }
            .inforta{
                margin-bottom: 30px;
                font-size: 18px;
            }
            .titlecmt{
                margin-top: -50px;
                padding: 5px 8px;
                width: 100%;
                height: 6%;
                background: #E9F7FA;
                border-top: 3px #24C3FD solid;
            }
            span {
                display: inline-block;
                height: 50px;
                font-family: 'Suranna', serif;
                font-size: 16px;
            }
            .param-inline{
                display: flex;
            }
            .size{
                margin-left: 4px;
                margin-right: 6px;
                margin-top: 2px;
                font-size: 22px;


            }
            .form-control {
                margin-top: 4px;
            }
            .text-uppercase{
                color: #ffffff!important;
                background-color:#fb6e2e!important;
            }
            body{
                margin-top:20px;
            }

            .content-item {
                padding:30px 0;
                background-color:#FFFFFF;
            }

            .content-item.grey {
                background-color:#F0F0F0;
                padding:50px 0;
                height:100%;
            }

            .content-item h2 {
                font-weight:700;
                font-size:35px;
                line-height:45px;
                text-transform:uppercase;
                margin:20px 0;
            }

            .content-item h3 {
                font-weight:400;
                font-size:20px;
                color:#555555;
                margin:10px 0 15px;
                padding:0;
            }

            .content-headline {
                height:1px;
                text-align:center;
                margin:20px 0 70px;
            }

            .content-headline h2 {
                background-color:#FFFFFF;
                display:inline-block;
                margin:-20px auto 0;
                padding:0 20px;
            }

            .grey .content-headline h2 {
                background-color:#F0F0F0;
            }

            .content-headline h3 {
                font-size:14px;
                color:#AAAAAA;
                display:block;
            }


            body{
                margin-top:20px;
            }

            .comment-wrapper .panel-body {
                max-height:650px;
                overflow:auto;
            }

            .comment-wrapper .media-list .media img {
                width:64px;
                height:64px;
                border:2px solid #e5e7e8;
            }

            .comment-wrapper .media-list .media {
                border-bottom:1px dashed #efefef;
                margin-bottom:25px;
            }
            .textcontent{
                width: 500px;
                height: 65px;
                padding-bottom: 36px;
            }
            .post{
                display: flex;
                justify-content: right;

            }
            .comment{
                display: flex;
                justify-content: center;
            }
        </style>
        <script type="text/javascript">
            function Comment()
            {
                var xhttp;
                var username = document.myform.username.value;
                var content = document.myform.content.value;
                var url = "commentcontroller?username=" + username + "&content=" + content;
                if (window.XMLHttpRequest)
                {
                    xhttp = new XMLHttpRequest();
                } else {
                    xhttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
                xhttp.onreadystatechange = function ()
                {
                    if (xhttp.readyState === 4)
                    {
                        var data = xhttp.responseText;
                        document.getElementById("mycomment").innerHTML = data;
                    }
                };
                xhttp.open("POST", url, true);
                xhttp.send();
            }

        </script>
    </head>


    <body>

        <jsp:include page="Menu.jsp"></jsp:include>
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="container-title">
                            <div class="card">
                                <div class="row">
                                    <aside class="col-sm-5 border-right">
                                        <article class="gallery-wrap"> 
                                            <div class="img-big-wrap">
                                                <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h3 class="title mb-3">${detail.name}</h3>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency"style="font-size: 33px" >$</span><span class="num" style="font-size: 33px;">${detail.price}</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Description</dt>
                                            <dd><p>
                                                    ${detail.description}
                                                </p></dd>
                                        </dl>
                                        <span style="font-family:inherit;color: #686868; " class="inforta">
                                            Or
                                            <span class="inforta" style="color: black">
                                                <b>Prepay 200&nbsp;$ x3 Stage </b>
                                            </span>
                                            With
                                            <a class="fundiin__action"><span class="inforta" style="color:#24c3fd;font-weight:700"> MoMo </span></a>
                                            <a class="fdn-guide-url" style="text-decoration: underline;color: #686868" target="_blank"> Learn About(?)</a>
                                        </span>

                                        <div class="titlecmt">
                                            <svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg" style="vertical-align: middle;">
                                            <path d="M11.8008 1.49589L9.86532 3.42795C9.54811 3.74573 9.11771 3.92455 8.66871 3.92511H5.6206C5.17138 3.92511 4.74057 4.10356 4.42292 4.42121C4.10528 4.73885 3.92683 5.16967 3.92683 5.61889V8.66699C3.92626 9.11599 3.74744 9.5464 3.42967 9.86361L1.49589 11.8025C1.17837 12.1202 1 12.5509 1 13C1 13.4491 1.17837 13.8798 1.49589 14.1975L3.4331 16.133C3.59021 16.2901 3.71483 16.4767 3.79984 16.682C3.88485 16.8873 3.92858 17.1074 3.92854 17.3296V20.3777C3.92854 21.3137 4.68628 22.0715 5.62231 22.0715H8.67042C9.11958 22.0715 9.54988 22.2497 9.86703 22.5686L11.8042 24.5041C12.1219 24.8216 12.5526 25 13.0017 25C13.4508 25 13.8816 24.8216 14.1992 24.5041L16.1347 22.5669C16.4522 22.2498 16.8825 22.0716 17.3313 22.0715H20.3794C20.8286 22.0715 21.2594 21.893 21.5771 21.5754C21.8947 21.2577 22.0732 20.8269 22.0732 20.3777V17.3296C22.0732 16.8804 22.2515 16.4501 22.5703 16.133L24.5058 14.1958C24.8233 13.8781 25.0017 13.4474 25.0017 12.9983C25.0017 12.5492 24.8233 12.1184 24.5058 11.8008L22.5686 9.86532C22.2515 9.54783 22.0733 9.11746 22.0732 8.66871V5.6206C22.0732 5.17138 21.8947 4.74057 21.5771 4.42292C21.2594 4.10528 20.8286 3.92683 20.3794 3.92683H17.3313C16.8823 3.92626 16.4519 3.74744 16.1347 3.42967L14.1958 1.49589C13.8781 1.17837 13.4474 1 12.9983 1C12.5492 1 12.1184 1.17837 11.8008 1.49589Z" fill="white" stroke="black" stroke-width="1.5"></path>
                                            <circle cx="9.8002" cy="9.8002" r="0.85" stroke="black" stroke-width="1.5"></circle>
                                            <path d="M17.0501 16.2001C17.0501 16.6695 16.6695 17.0501 16.2001 17.0501C15.7307 17.0501 15.3501 16.6695 15.3501 16.2001C15.3501 15.7307 15.7307 15.3501 16.2001 15.3501C16.6695 15.3501 17.0501 15.7307 17.0501 16.2001Z" stroke="black" stroke-width="1.5"></path>
                                            <line x1="17.7998" y1="9.26086" x2="10.0605" y2="17.0002" stroke="black" stroke-width="1.5" stroke-linecap="round"></line>
                                            </svg>
                                            <span><b> Discount up to <span class="promo-price" style="color:#FF003D;font-weight:700;">$10</span> for orders from $30 when paying via <span style="color: #24c3fd">MoMo</span></b></span>
                                        </div>



                                        <hr>
                                        <div class="row">
                                            <div class="col-sm-5">
                                                <dl class="param param-inline">
                                                    <span class="size">Size:</span>
                                                    <dd>
                                                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                                            <label class="btn btn-outline-info active">
                                                                <input type="radio" name="options" id="option1" autocomplete="off" checked> 36
                                                            </label>
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option2" autocomplete="off"> 37
                                                            </label>
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option3" autocomplete="off"> 38
                                                            </label>
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option3" autocomplete="off"> 39
                                                            </label>
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option3" autocomplete="off"> 40
                                                            </label>
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option3" autocomplete="off"> 41
                                                            </label> 
                                                            <label class="btn btn-outline-info">
                                                                <input type="radio" name="options" id="option3" autocomplete="off"> 42
                                                            </label>
                                                        </div>

                                                    </dd>
                                                </dl>  <!-- item-property .// -->
                                            </div> <!-- col.// -->

                                        </div> <!-- row.// -->
                                        <hr>
                                        <a href="Order.jsp" class="btn btn-lg text-uppercase"> Buy now </a>
                                        <div class="product_meta">



                                            <span class="sku_wrapper" style="color: #848485;">Mã: <span class="sku" data-o_content="FD4326_121">FD 4326-121</span></span>





                                            <span class="posted_in">Brand: <a href="https://sneakerdaily.vn/thuong-hieu/jordan/" rel="tag">Jordan</a></span>
                                        </div>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->


                    </div>
                </div>
            </div>
        </div>

        <div class="container" style="padding-top: 40px;padding-left: 20px;">
            <div class="row bootstrap snippets bootdeys">
                <div class="col-md-12 col-sm-12">
                    <div class="comment-wrapper">
                        <div class="panel panel-info">
                            <div class="panel-heading">

                                <h2 style = "font-family:Lucida Bright,arial,helvetica;">Customer Product Reviews</h2>       

                            </div>


                            <div class="panel-body">
                                <form name="myform"> 
                                    <div class="input-group mb-3">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text" id="basic-addon1">@</span>
                                        </div>
                                        <input type="text" name="username" class="form-control" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
                                    </div>
                                    <textarea name="content" class="form-control" placeholder="write a comment..." rows="3"></textarea>
                                    <br>
                                    <button type="button" class="btn btn-info pull-right" onclick="Comment()">Post</button>
                                </form>  
                                <div id="mycomment">

                                </div>

                                <div class="clearfix"></div>

                                <hr>

                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </body>

</html>