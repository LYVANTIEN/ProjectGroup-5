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
            body {
                background: rgb(99, 39, 120)
            }

            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(99, 39, 120);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 18px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
            .error{
                color: red;
                margin-left: 25px;
            }
        </style>
        <script type="text/javascript">
            var patt_email = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            var patt_phone = /^0[1-9]\d{8,10}$/;
            var patt_protect = /^[0-9]\d{2,4}$/;
            function checklastname() {
                Ln = document.getElementById("txtlastname").value;
                document.getElementById("txtLastnameMessage").innerHTML =
                        Ln.trim() == "" ? "Sorry Name can't be empty" : "";
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
             function checkProtected() {
                protected = document.getElementById("txtprotect").value;
                document.getElementById("txtProtectMessage").innerHTML =
                        (patt_protect.test(protected) == false) ? "Protect is invalid" : "";
                return patt_protect.test(protected);
            }
      
            function checkAllData() {

                isValidLastname = checklastname();
                isValidAddress = checkaddress();
                isValidEmail = checkEmail();
                isValidPhone = checkPhone();
                isValidProtect = checkProtected();
                isValid =
                        isValidLastname &&
                        isValidAddress &&
                        isValidEmail &&
                        isValidPhone &&
                        isValidProtect;
                errorMessage = document.getElementById("txtError");
                if (isValid == true) {
                    alert("Thanks, Update Profile Sucessful!");
                    return true;
                } else if (isValid == false) {
                    alert("Please Enter Full information!");
                    return false;
                }
                return false;
            }
        </script>
    </head>
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg"><span class="font-weight-bold">Ngo Vu Huy</span><span class="text-black-50">ngovuhuy2016@gmail.com</span></n></div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                    </div>
                    <form method="POST" onsubmit="return checkAllData()" action="saveprofile">
                          <c:forEach items="${requestScope.listpro}" var="o">
                        <div class="row mt-3">
                             
                            <div class="col-md-12"><label class="labels">Name</label><input type="text" name="name" id="txtlastname" class="form-control" placeholder="" value="${o.name}" onblur="checklastname()" required/></div>
                            <div class="error" id="txtLastnameMessage"></div>
                            <div class="col-md-12"><label class="name labels">Your Number</label><input type="text" name="phone" id="txtphone"  class="form-control" placeholder=""value="${o.number}" onblur="checkPhone()" required/></div>
                              <div class="error" id="txtPhoneMessage"></div>
                            <div class="col-md-12"><label class="labels">Address</label><input  type="text" name="address" id="txtaddress" class="form-control" placeholder="" value="${o.address}" onblur="checkaddress()" required/></div>
                            <div class="error" id="txtAddressMessage"></div>
                            <div class="col-md-12"><label class="labels">Email</label><input type="email" name="email" id="txtemail"  class="form-control" placeholder="Enter Email" value="${o.email}" onblur="checkEmail()" required/></div>
                                   <div class="error" id="txtEmailMessage"></div>
                            <div class="col-md-12"><label class="labels">Password-Protected.</label><input type="text" name="protected" id="txtprotect" class="form-control" placeholder="" value="${o.passwordprotected}" onblur="checkProtected()" required/></div>
                               <div class="error" id="txtProtectMessage"></div>
                                
                        </div>
                         </c:forEach>
                        <div class="row mt-3">
                            <div class="col-md-6"><label class="labels">Country:</label>
                                <select>
                                    <option>VietNam</option>
                                    <option>USA</option>
                                    <option>Thailand</option>
                                    <option>Jappan</option>
                                    <option>China</option>
                                    <option>Campuchia</option>
                                    <option>Malaysia</option>
                                </select>
                            </div>

                        </div>
                        <div class="mt-5 text-center"><button class="order btn btn-primary profile-button" type="submit"onclick="checkAllData();">Save Profile</button></div>
                    </form>
                </div>
            </div>
            <div class="col-md-4">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span><span class="border px-3 p-1 add-experience"><i class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                    <div class="col-md-12"><label class="labels">UserName</label><input type="text" class="form-control" placeholder="" value="${sessionScope.acc.user}" readonly=""></div> <br>
                    <div class="col-md-12"><label class="labels">PassWord</label><input type="text" class="form-control" placeholder="" value="${sessionScope.acc.pass}" readonly=""></div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</head>
<body>


</body>

</html>