<%-- 
    Document   : Cart
    Created on : Oct 31, 2020, 9:42:21 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
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

                                            <a href="Login2.jsp" class="dropdown-item">Login</a>
                                            <a href="SignIn2.jsp" class="dropdown-item">Sign in</a>
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
        <div class="shopping-cart">
            <div class="px-4 px-lg-0">

                <div class="pb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

                                <!-- Shopping cart table -->
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="p-2 px-3 text-uppercase">Sản Phẩm</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Đơn Giá</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Số Lượng</div>
                                                </th>
                                                <th scope="col" class="border-0 bg-light">
                                                    <div class="py-2 text-uppercase">Xóa</div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${list}" var="o">
                                                <tr>
                                                    <th scope="row">
                                                        <div class="p-2">
                                                            <img src="${o.image}" alt="" width="70" class="img-fluid rounded shadow-sm">
                                                            <div class="ml-3 d-inline-block align-middle">
                                                                <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">${o.name}</a></h5><span class="text-muted font-weight-normal font-italic"></span>
                                                            </div>
                                                        </div>
                                                    </th>
                                                    <td class="align-middle"><strong>${o.price}</strong></td>
                                                    <td class="align-middle">
                                                        <a href="sub?id=${o.id}"><button class="btnSub">-</button></a> <strong>${o.amount}</strong>
                                                        <a href="cart?id=${o.id}"><button class="btnAdd">+</button></a>
                                                    </td>
                                                            <td class="align-middle"><a href="remove?id=${o.id}" class="text-dark">
                                                        <button type="button" class="btn btn-danger">Delete</button>
                                                        </a>
                                                    </td>
                                                </tr> 
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- End -->
                            </div>
                        </div>

                        <div class="row py-5 p-4 bg-white rounded shadow-sm">
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Voucher</div>
                                <div class="p-4">
                                    <div class="input-group mb-4 border rounded-pill p-2">
                                        <input type="text" placeholder="Sorry Hiện Tại đã Hết Mã Khuyến Mãi !!!" aria-describedby="button-addon3" class="form-control border-0">
                                        <div class="input-group-append border-0">
                                            <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>Sử dụng</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">Thành tiền</div>
                                <div class="p-4">
                                    <ul class="list-unstyled mb-4">
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng tiền hàng</strong><strong>${total}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Phí vận chuyển</strong><strong>Free ship</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">VAT</strong><strong>${vat}</strong></li>
                                        <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">Tổng thanh toán</strong>
                                            <h5 class="font-weight-bold">${sum} $</h5>
                                        </li>
                                    </ul><a href="Order.jsp" class="btn btn-dark rounded-pill py-2 btn-block">Mua hàng</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
                                           
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    </body>

</html>
</html>
