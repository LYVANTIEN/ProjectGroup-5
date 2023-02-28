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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>Web-App_1</title>
        <style type="text/css">
            . kilimanjaro_area {
                position: relative;
                z-index: 1;
            }
            .foo_top_header_one {

                color: #fff;
            }
            .section_padding_100_70 {

            }
            .foo_top_header_one {
                color: #fff;
            }
            .kilimanjaro_part {
                margin-bottom: 30px;
                
            }
            .foo_top_header_one .kilimanjaro_part > h5 {
                color: #fff;
            }
            .kilimanjaro_part h4, .kilimanjaro_part h5 {
                margin-bottom: 30px;
            }
            .kilimanjaro_single_contact_info > p, .kilimanjaro_single_contact_info > h5, .kilimanjaro_blog_area > a, .foo_top_header_one .kilimanjaro_part > p {
                color: rgba(255,255,255,.5);
            }
            p, ul li, ol li {
                font-weight: 300;
            }
            ul {
                margin: 0;
                padding: 0;
            }
            .kilimanjaro_bottom_header_one {
                background-color: #111;
            }
            .section_padding_50 {
                padding: 50px 0;
            }
            .kilimanjaro_bottom_header_one p {
                color: #fff;
                margin: 0;
            }
            p, ul li, ol li {
                font-weight: 300;
            }
            .kilimanjaro_bottom_header_one a {
                color: inherit;
                font-size: 14px;
            }
            a, h1, h2, h3, h4, h5, h6 {
                font-weight: 400;
            }
            .m-top-15 {
                margin-top: 15px;
            }
            ul {
                margin: 0;
                padding: 0;
            }

            .kilimanjaro_widget > li {
                display: inline-block;
            }
            p, ul li, ol li {
                font-weight: 300;
            }
            ol li, ul li {
                list-style: outside none none;
            }
            .kilimanjaro_widget a {
                border: 1px solid #333;
                border-radius: 6px;
                color: #888;
                display: inline-block;
                font-size: 13px;
                margin-bottom: 4px;
                padding: 7px 12px;
            }
            ul {
                margin: 0;
                padding: 0;
            }
            .kilimanjaro_links a {
                border-bottom: 1px solid #333;
                color: rgba(255,255,255,.5);
                display: block;
                font-size: 13px;
                margin-bottom: 5px;
                padding-bottom: 10px;
            }
            .kilimanjaro_links a {
                color: rgba(255,255,255,.5);
                font-size: 13px;
            }
            top-15 {
                margin-top: 15px;
            }
            .foo_top_header_one .kilimanjaro_part > h5 {
                color: #fff;
            }
            .kilimanjaro_part h4, .kilimanjaro_part h5 {
                margin-bottom: 30px;
            }
            .kilimanjaro_social_links > li {
                display: inline-block;
            }
            p, ul li, ol li {
                font-weight: 300;
            }
            .kilimanjaro_social_links a {
                border: 1px solid #333;
                border-radius: 6px;
                color: #888;
                display: inline-block;
                font-size: 13px;
                margin-bottom: 3px;
                padding: 7px 12px;
            }
            .kilimanjaro_blog_area .kilimanjaro_date {
                color: #27ae60;
                font-size: 13px;
                margin-bottom: 5px;
            }
            .kilimanjaro_blog_area > p {
                color: rgba(255,255,255,.5);
                line-height: 1.3;
                margin-bottom: 0;
            }
            .kilimanjaro_works > a {
                display: inline-block;
                float: left;
                position: relative;
                width: 33.33333333%;
                z-index: 1;
            }
            .kilimanjaro_thumb img {
                left: 0;
                position: absolute;
                top: 0;
                width: 100px;
                height: 64px;
                margin-top: 10px;
            }
            .kilimanjaro_links a i {
                padding-right: 10px;
            }
            /* :: 18.0 Footer Area CSS */

            .footer_area {
                position: relative;
                z-index: 1;
            }
            .footer_bottom p > i,
            .footer_bottom p > a:hover {
                color: #27ae60;
            }

            .social_links_area {
                border-bottom: 1px solid rgba(255, 255, 255, 0.2);
                padding: 50px 0 30px 0;
                text-align: center;
                position: relative;
                z-index: 1;
            }
            .social_links_area > a:hover {
                color: #27ae60;
            }

            .inline-style .social_links_area > a:hover {
                background-color: transparent;
                color: #27ae60;
                border: 0px solid transparent;
            }
            .single_feature:hover .feature_text h4 {
                color: #27ae60;
            }
            .kilimanjaro_blog_area {
                border-bottom: 1px solid #333;
                margin-bottom: 15px;
                padding: 0 0 15px 90px;
                position: relative;
                z-index: 1;
            }
            .kilimanjaro_links a {
                border-bottom: 1px solid #333;
                color: rgba(255,255,255,.5);
                display: block;
                font-size: 13px;
                margin-bottom: 5px;
                padding-bottom: 10px;
            }
        </style>

    </head>

    <body>

        <script src="./js/bootstrap.js"></script>
        <footer class="kilimanjaro_area">
            <!-- Top Footer Area Start -->
            <div class="foo_top_header_one section_padding_100_70">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="kilimanjaro_part">
                                <h5>About Us</h5>
                                <p>We are a group of students working on an online sneaker project, aiming for a user-friendly website.</p>
                                <p>We completely creative, clean & 100% responsive website. Put your business into next level with us.</p>
                            </div>
                            <div class="kilimanjaro_part m-top-15">
                                <h5>Social Links</h5>
                                <ul class="kilimanjaro_social_links">
                                    <li><a href="https://www.facebook.com/nikesportswear/" target="_blank" ><i class="fa fa-facebook" aria-hidden="true"></i> Facebook</a></li>
                                    <li><a href="https://twitter.com/Nike" target="_blank" ><i class="fa fa-twitter" aria-hidden="true"></i> Twitter</a></li>
                                    <li><a href="https://www.youtube.com/user/nike" target="_blank" ><i class="fa fa-youtube" aria-hidden="true"></i> YouTube</a></li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="kilimanjaro_part">
                                <h5>Latest News</h5>
                                <div class="kilimanjaro_blog_area">
                                    <div class="kilimanjaro_thumb">
                                        <img class="img-fluid" src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Nike_Flagship_-_NYC_%2848155560636%29.jpg/270px-Nike_Flagship_-_NYC_%2848155560636%29.jpg" alt="">

                                    </div>
                                    <a href="#">Stores High growth rate</a>
                                    <p class="kilimanjaro_date">22 Jan 2022</p>
                                    <p>With the rapid increase in the worldwide market</p>
                                </div>
                                <div class="kilimanjaro_blog_area">
                                    <div class="kilimanjaro_thumb">
                                        <img class="img-fluid" src="https://nguyentuanhung.vn/wp-content/uploads/2019/08/nike-choi-lon-bung-no-sale-off-50-all-items-tren-toan-quoc-d82fb7f1636322532495041988.jpg" alt="">
                                    </div>
                                    <a href="#">Many discount brand black friday</a>
                                    <p class="kilimanjaro_date">07 April 2022</p>
                                    <p>Many products are sold out because they are so cheap</p>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-12 col-md-6 col-lg-3">
                            <div class="kilimanjaro_part">
                                <h5>Quick Contact</h5>
                                <div class="kilimanjaro_single_contact_info">
                                    <h5>Phone:</h5>
                                    <p>+84 9134 77124 <br> +84 7939 93821</p>
                                </div>
                                <div class="kilimanjaro_single_contact_info">
                                    <h5>Email:</h5>
                                    <p>vantien2112@gmail.com <br>ngovuhuy2016@gmail.com</p>
                                </div>
                            </div>
                            
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer Bottom Area Start -->

        </footer>
    </body>

</html>