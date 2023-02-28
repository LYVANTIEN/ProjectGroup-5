
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
        <title>Orders Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>






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
            .page-title{
                text-align: center;
                font-size: 28px;
                color: #31708f;
            }

        </style>
    </head>
    <body>

        <div class="preloader">
            <div class="lds-ripple">
                <div class="lds-pos"></div>
                <div class="lds-pos"></div>
            </div>
        </div>

        <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
             data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">

            <?php include 'includes/topbar.php'?>
            <?php include 'includes/sidebar.php'?>


            <div class="page-wrapper">

                <div class="page-breadcrumb">
                    <div class="row align-items-center">
                        <div class="col-md-6 col-8 align-self-center">
                            <h3 class="page-title mb-0 p-0"><i class="mdi me-2 mdi-file-multiple"></i> Order</h3>
                            <div class="d-flex align-items-center">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="listproduct">Home</a></li>
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
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <div class="container-fluid">

                        <div class="row">
                            <!-- column -->
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6><i class="fa fa-money fa-3x text-info"> JSP 36,000.00</i></h6>
                                        <h6 class="card-subtitle">Total Amount</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6><i class="fa fa-money fa-3x text-success"> JSP 20,000.00</i></h6>
                                        <h6 class="card-subtitle">Total Paid</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="card">
                                    <div class="card-body">
                                        <h6><i class="fa fa-money fa-3x text-warning"> JSP 29,000.00</i></h6>
                                        <h6 class="card-subtitle">Total Due</h6>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h4 class="card-title"><i class="mdi me-2 mdi-file-multiple"></i> Invoice List</h4>
                                        <div class="table-responsive">
                                            <table class="table user-table">
                                                <thead>
                                                    <tr>
                                                        <th class="border-top-0">ID_Order</th>
                                                        <th class="border-top-0">User_ID</th>
                                                        <th class="border-top-0">Name</th>
                                                        <th class="border-top-0">Phone</th>
                                                        <th class="border-top-0">Email</th>
                                                        <th class="border-top-0">Address</th>
                                                        <th class="border-top-0">Price</th>
                                                        <th class="border-top-0">Note</th>
                                                        <th class="border-top-0">date</th>
                                                        <th class="border-top-0">Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${list}" var="o">
                                                        <tr>
                                                            <td>${o.id}</td>
                                                            <td>${o.user_id}</td>
                                                            <td>${o.name}</td>
                                                            <td>${o.phone}</td>
                                                            <td>${o.email}</td>
                                                            <td>${o.address}</td>
                                                            <td>${o.price}$</td>
                                                            <td>${o.note}</td>
                                                            <td>${o.date}</td>
                                                            <td>${o.status}</td>
                                                            <td>
                                                                <a href="loadupdate?pid=${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                            </td>
                                                            <td>
                                                                <a href="deleteorder?pid=${o.id}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                            </td>

                                                        </tr>

                                                    </c:forEach>


                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>
    </body>
</html>