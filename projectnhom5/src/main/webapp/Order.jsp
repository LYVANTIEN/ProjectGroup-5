
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags-->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Colorlib Templates">
        <meta name="author" content="Colorlib">
        <meta name="keywords" content="Colorlib Templates">

        <!-- Title Page-->
        <title>Order</title>

        <!-- Icons font CSS-->
        <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
        <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
        <!-- Font special for pages-->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Vendor CSS-->
        <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
        <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <!-- Main CSS-->
        <link href="css/main.css" rel="stylesheet" media="all">
        <style type="text/css">
            .error {
                color: red;
            }
            .design{
                width:412px;
                margin:10vh auto;
                transition: all 0.3s cubic-bezier(.25,.8,.25,1);
                background: rgba(0,0,0,.2);
                box-shadow: 0 15px 25px rgba(0,0,0,1.5);
                font-family: cursive;
                overflow: hidden;
                text-align: center  ;
                margin-top: 140px;
            }
            .name{
                color: white;
                margin-right: 220px;
            }
            .name1{
                color: white;
                margin-right: 225px;
            }
            .nameaddress{
                color: white;
                margin-right: 205px;
            }


            .title{
                text-align: center;
                color: white;
                font-weight:bolder;

            }
            .btn--red{
                color: white;
            }
            .input--style-5{
                color: black;
                width: 270px;
                height: 27px;
            }

            body {
                background-image: url('https://sneakerdaily.vn/wp-content/uploads/2020/06/diem-mat-30-logo-nike.jpg');
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }
            .order{
                text-align:center;
            }
            .input--style-4{
                width: 270px;
                height: 50px;
            }
            .input-group-desc{

            }


        </style>

        <script type="text/javascript">
            var patt_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var patt_phone = /^0[1-9]\d{8,10}$/;

            

            function checklastname() {
                Ln = document.getElementById("txtlastname").value;
                document.getElementById("txtLastnameMessage").innerHTML =
                        Ln.trim() == "" ? "Name can't be empty" : "";
                return  Ln != "";
            }

            function checkaddress() {
                Ad = document.getElementById("txtaddress").value;
                document.getElementById("txtAddressMessage").innerHTML =
                        Ad.trim() == "" ? "Address can't be empty" : "";
                return Ad != "";
            }

            function checkEmail() {
                email = document.getElementById("txtemail").value;
                document.getElementById("txtEmailMessage").innerHTML =
                        (patt_email.test(email) == false) ? "Email is invalid" : "";
                return patt_email.test(email);
            }

            function checkPhone() {
                phone = document.getElementById("txtphone").value;
                document.getElementById("txtPhoneMessage").innerHTML =
                        (patt_phone.test(phone) == false) ? "Phone is invalid" : "";
                return patt_phone.test(phone);
            }
         
            function checkAllData() {
               
                isValidLastname = checklastname();
                isValidAddress = checkaddress();
                isValidEmail = checkEmail();
                isValidPhone = checkPhone();

                isValid = 
                       isValidLastname &&
                        isValidAddress &&
                        isValidEmail &&
                        isValidPhone;
                errorMessage = document.getElementById("txtError");
               
                if (isValid == true) {
                  alert("Thanks, Order Successfull!");
                    return true;
                } else if (isValid == false) {
                    alert("Please enter full information!");
                    return false;
                }
                return false;
            }
        </script>
    </head>
    <body>

        <div class="design">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Order Form</h2>
                </div>
                <div class="card-body">
                    <form method="POST" onsubmit="return checkAllData()" action="order">
                        <div class="form-row m-b-55">

                            <input type="hidden" name="sum" value="${sessionScope.sum}">
                            <input type="hidden" name="sum" value="${sessionScope.acc.id}">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="name" id="txtlastname" placeholder="Name"onblur="checklastname()" required/>

                                            <div class="error" id="txtLastnameMessage"></div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="nameaddress" name="txtaddress" >Address</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="address" id="txtaddress" placeholder="Your Address" onblur="checkaddress()" required>
                                    <div class="error" id="txtAddressMessage"></div>

                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name1" name="email">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" id="txtemail" placeholder="name@gmail.com" onblur="checkEmail()" required/>
                                    <div class="error" id="txtEmailMessage"></div>

                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name" name="phone">Phone</div>
                            <div class="value">
                                <div class="refine">
                                    <div class="input-group-desc">
                                        <input class="input--style-5" type="text" name="phone" id="txtphone" placeholder="Phone Number" onblur="checkPhone()" required/>
                                        <div class="error" id="txtPhoneMessage"></div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name" name="note">Note</div>
                            <div class="value">
                                <div class="refine">
                                    <div class="input-group-desc">
                                        <textarea class="input--style-4" type="text" name="note" id="txtnote" placeholder="Your note" required></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div>
                            <button class="order" type="submit"onclick="checkAllData();">Order</button>
                        </div>
                        <tr>
                            <td class="error" colspan="2" id="txtError"></td>
                        </tr>
                    </form>
                </div>
            </div>
        </div>

        <!-- Jquery JS-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <!-- Vendor JS-->
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/datepicker/moment.min.js"></script>
        <script src="vendor/datepicker/daterangepicker.js"></script>

        <!-- Main JS-->
        <script src="js/global.js"></script>

    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
<!-- end document-->
