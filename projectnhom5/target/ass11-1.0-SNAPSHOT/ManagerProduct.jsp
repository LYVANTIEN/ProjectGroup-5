
<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Account</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
     img{
                width: 200px;
                height: 120px;
            }
            .container-fluid {
                width: 629px;
                height: 33px;
                }
                .container-fluid img{
                    width: 88px;
                    height: 23px;
                    }
             footer {
                background-color: #555;
                color: white;
                padding: 15px;

            }
             body{
                        text-align: center !important;
                    }
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
        </style>
    </head>
    <body>
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

                                            <a href="Login.jsp" class="dropdown-item">Login</a>
                                            <a href="SignIn.jsp" class="dropdown-item">Sign in</a>
                                            <a href="#" class="dropdown-item">Forget Password</a>
                                            <div class="dropdown-divider"></div>
                                            <a href="logout" class="dropdown-item">Blog</a>
                                        </div>
                                    </div><
                                </c:if>
                                <c:if test="${sessionScope.acc != null}">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <i class="fa fa-user"></i> ${sessionScope.acc.user}
                                        </button>
                                        <div class="dropdown-menu">
                                            <a href="#" class="dropdown-item"style="color: green;">Profile</a>
                                            <a href="#" class="dropdown-item"style="color: green;">Change PassWord</a>
                                            <a href="#" class="dropdown-item"style="color: green;">History Orders</a>
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
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="AddProduct.jsp" class="btn btn-success"   >Add Product</a>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ListP}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.id}</td>
                                <td>${o.name}</td>
                                <td>
                                    <img src="${o.image}">
                                </td>
                                <td>${o.price} $</td>
                                <td>
                                    <a href="loadProduct?pid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item active"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
    
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <textarea class="form-control" required></textarea>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" class="form-control" required>
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Delete Modal HTML -->
        <div id="deleteEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Delete Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <p>Are you sure you want to delete these Records?</p>
                            <p class="text-warning"><small>This action cannot be undone.</small></p>
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-danger" value="Delete">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>
        </script>
           <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>