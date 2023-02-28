<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>Login My Web</title>
        <style type="text/css">

            /* sign in FORM */
            #logreg-forms{
                background-color: #f3f3f3;

                width:412px;

                margin:10vh auto;

                box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
                transition: all 0.3s cubic-bezier(.25,.8,.25,1);
            }
            #logreg-forms form {
                width: 100%;
                max-width: 410px;
                padding: 15px;
                margin: auto;
            }
            #logreg-forms .form-control {
                position: relative;
                box-sizing: border-box;
                height: auto;
                padding: 10px;
                font-size: 16px;
            }
            #logreg-forms .form-control:focus {
                z-index: 2;
            }
            #logreg-forms .form-signin input[type="email"] {
                margin-bottom: -1px;
                border-bottom-right-radius: 0;
                border-bottom-left-radius: 0;
            }
            #logreg-forms .form-signin input[type="password"] {
                border-top-left-radius: 0;
                border-top-right-radius: 0;
            }

            #logreg-forms .social-login{
                width:390px;
                margin:0 auto;
                margin-bottom: 14px;
            }
            #logreg-forms .social-btn{
                font-weight: 100;
                color:white;
                width:190px;
                font-size: 0.9rem;
            }

            #logreg-forms a{
                display: block;
                padding-top:10px;
                color:lightseagreen;
            }

            #logreg-form .lines{
                width:200px;
                border:1px solid red;
            }


            #logreg-forms button[type="submit"]{
                margin-top:10px;
            }

            #logreg-forms .facebook-btn{
                background-color:#3C589C;
            }

            #logreg-forms .google-btn{
                background-color: #DF4B3B;
            }

            #logreg-forms .form-reset, #logreg-forms .form-signup{
                display: none;
            }

            #logreg-forms .form-signup .social-btn{
                width:210px;
            }

            #logreg-forms .form-signup input {
                margin-bottom: 2px;
            }

            .form-signup .social-login{
                width:210px !important;
                margin: 0 auto;
            }

            /* Mobile */

            @media screen and (max-width:500px){
                #logreg-forms{
                    width:300px;
                }

                #logreg-forms  .social-login{
                    width:200px;
                    margin:0 auto;
                    margin-bottom: 10px;
                }
                #logreg-forms  .social-btn{
                    font-size: 1.3rem;
                    font-weight: 100;
                    color:white;
                    width:200px;
                    height: 56px;

                }
                #logreg-forms .social-btn:nth-child(1){
                    margin-bottom: 5px;
                }
                #logreg-forms .social-btn span{
                    display: none;
                }
                #logreg-forms  .facebook-btn:after{
                    content:'Facebook';
                }

                #logreg-forms  .google-btn:after{
                    content:'Google+';
                }

            }

        </style>
    </head>

    <body style="
          background-image: url('https://i.pinimg.com/originals/1d/95/be/1d95be074c54816ff0fb60314aa1a8b8.gif');
          background-repeat: no-repeat;
          background-attachment: fixed;
          background-size: cover;">
        <div id="logreg-forms">
            <span style="color: red">${requestScope.message} </span>
            <form class="form-signin" action="updatestatus" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Update</h1>
                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input name="pid"type="text" class="form-control" placeholder="Status" value="${pid}" readonly="">
                    <input name="status"type="text" class="form-control" placeholder="Status" value="${status}">

                </div>
   
         
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> UpDate</button>
            
              
            </form>
            <h5 class="text-danger" style="margin-left: 50px;">${mess}</h5>





            <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="https://www.facebook.com/" class="text-dark"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="https://twitter.com/i/flow/login" class="text-dark"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="https://accounts.google.com/v3/signin/identifier?dsh=S1376457239%3A1666423386605908&continue=https%3A%2F%2Fwww.google.com.vn%2F&ec=GAZAmgQ&hl=vi&passive=true&flowName=GlifWebSignIn&flowEntry=ServiceLogin&ifkv=AQDHYWpa4n1UdzQJmnIziQgZeyCFkdqvNSAfHNSJVbbK5EdypegfHD4jUkH8ENLoRHGRYn4wS06XrA" class="text-dark"><i class="fab fa-google fa-lg"></i></a>
            </div>
            <br>

        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>
            function toggleResetPswd(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle() // display:block or none
                $('#logreg-forms .form-reset').toggle() // display:block or none
            }

            function toggleSignUp(e) {
                e.preventDefault();
                $('#logreg-forms .form-signin').toggle(); // display:block or none
                $('#logreg-forms .form-signup').toggle(); // display:block or none
            }

            $(() => {
                // Login Register Form
                $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
                $('#logreg-forms #cancel_reset').click(toggleResetPswd);
                $('#logreg-forms #btn-signup').click(toggleSignUp);
                $('#logreg-forms #cancel_signup').click(toggleSignUp);
            })
        </script>
    </body>
</html>