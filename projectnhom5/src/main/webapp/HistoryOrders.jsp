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
        <title>Profile</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <title>Web-App_1</title>
        <style type="text/css">
            @import url('https://fonts.googleapis.com/css?family=Assistant');
body{
    background:#eee;
}
.card {
    box-shadow: 0 20px 27px 0 rgb(0 0 0 / 5%);
}
.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: 1rem;
}
.text-reset {
    --bs-text-opacity: 1;
    color: inherit!important;
}
a {
    color: #5465ff;
    text-decoration: none;
}
                  </style>
        <script type="text/javascript">
     $(document).ready(function(){

$('.toggle-btn').click(function() {
$(this).toggleClass('active').siblings().removeClass('active');
});

});
        </script>
    </head>
    <body>
<div class="container-fluid">

<div class="container">
  <!-- Title -->
  <div class="d-flex justify-content-between align-items-center py-3">
    <h2 class="h5 mb-0"><a href="#" class="text-muted"></a> Order #161</h2>
  </div>

  <!-- Main content -->
  <div class="row">
    <div class="col-lg-8">
      <!-- Details -->
      <div class="card mb-4">
        <div class="card-body">
          <div class="mb-3 d-flex justify-content-between">
            <div>
              <span class="me-3">22-11-2021</span>
              <span class="me-3">#16123222</span>
              <span class="me-3">Visa -1234</span>
              <span class="badge rounded-pill bg-info">SHIPPING</span>
            </div>
            <div class="d-flex">
                <button class="btn btn-link p-0 me-3 d-none d-lg-block btn-icon-text"><i class="bi bi-download"></i> <span class="text"><a><a href="listproduct" target="target" style="color: red">Home</a></span></button>
              <div class="dropdown">
                <button class="btn btn-link p-0 text-muted" type="button" data-bs-toggle="dropdown">
                  <i class="bi bi-three-dots-vertical"></i>
                </button>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li><a class="dropdown-item" href="#"><i class="bi bi-pencil"></i> Edit</a></li>
                  <li><a class="dropdown-item" href="#"><i class="bi bi-printer"></i> Print</a></li>
                </ul>
              </div>
            </div>
          </div>
          <table class="table table-borderless">
            <tbody>
              <tr>
                <td>
                  <div class="d-flex mb-2">
                    <div class="flex-shrink-0">
                      <img src="https://product.hstatic.net/200000384421/product/air-jordan-1-retro-high-og-black_7b08fbf96a864c1ca5a89bce4bbe3b7a_large.png" alt="" width="35" class="img-fluid">
                    </div>
                    <div class="flex-lg-grow-1 ms-3">
                      <h6 class="small mb-0"><a href="#" class="text-reset">Nike Air Jordan 1 Retro High GG</a></h6>
                      <span class="small">Size: 42</span>
                    </div>
                  </div>
                </td>
                <td>1</td>
                <td class="text-end">$799</td>
              </tr>
              <tr>
                <td>
                  <div class="d-flex mb-2">
                    <div class="flex-shrink-0">
                      <img src="https://product.hstatic.net/200000384421/product/755953_01.jpg_9cb7f94ac28449ce967bb69d92ff5a9a_673a7accdb0e4f89bfb466644859c6d6_large.png" alt="" width="35" class="img-fluid">
                    </div>
                    <div class="flex-lg-grow-1 ms-3">
                      <h6 class="small mb-0"><a href="#" class="text-reset">Nike Air Jordan 2 Mid GS 'Purple Blue'</a></h6>
                      <span class="small">Size: 41</span>
                    </div>
                  </div>
                </td>
                <td>1</td>
                <td class="text-end">$1,505</td>
              </tr>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="2">Subtotal</td>
                <td class="text-end">$2,304</td>
              </tr>
              <tr>
                <td colspan="2">Shipping</td>
                <td class="text-end">$20.00</td>
              </tr>
              <tr>
                <td colspan="2">Discount (Code: HUYDEPTRAI)</td>
                <td class="text-danger text-end">-$10.00</td>
              </tr>
              <tr class="fw-bold">
                <td colspan="2">TOTAL</td>
                <td class="text-end">$2,294</td>
              </tr>
            </tfoot>
          </table>
        </div>
      </div>
      <!-- Payment -->
      <div class="card mb-4">
        <div class="card-body">
          <div class="row">
            <div class="col-lg-6">
              <h3 class="h6">Payment Method</h3>
              <p>Visa -1234 <br>
              Total: $169,98 <span class="badge bg-success rounded-pill">PAID</span></p>
            </div>
            <div class="col-lg-6">
              <h3 class="h6">Billing address</h3>
              <address>
                <strong>Duy Pham</strong><br>
                300 Nguyen Van Cu, Ninh Kieu<br>
                Can Tho, CA 94103<br>
                <abbr title="Phone">Phone:</abbr> 036 4372 560
              </address>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-lg-4">
      <!-- Customer Notes -->
      <div class="card mb-4">
        <div class="card-body">
          <h3 class="h6">Customer Notes</h3>
          <p>Sed enim, faucibus litora velit vestibulum habitasse. Cras lobortis cum sem aliquet mauris rutrum. Sollicitudin. Morbi, sem tellus vestibulum porttitor.</p>
        </div>
      </div>
      <div class="card mb-4">
        <!-- Shipping information -->
        <div class="card-body">
          <h3 class="h6">Shipping Information</h3>
          <strong>FedEx</strong>
          <span><a href="#" class="text-decoration-underline" target="_blank">FF1234567890</a> <i class="bi bi-box-arrow-up-right"></i> </span>
          <hr>
          <h3 class="h6">Address</h3>
          <address>
            <strong>Duy Pham</strong><br>
          300 Nguyen Van Cu, Ninh Kieu<br>
            Can Tho, CA 94103<br>
          <abbr title="Phone">Phone:</abbr> 036 4372 560
          </address>
        </div>
      </div>
    </div>
  </div>
</div>
  </div>
</body>

</html>