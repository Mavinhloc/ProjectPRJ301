<%-- 
    Document   : Login
    Created on : Jul 5, 2023, 6:18:56 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="assets/css/login.css"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <link rel="stylesheet" href="/style.css">
        <title>Login/Register Form</title>
    </head>
    <body>
        <div id="logreg-forms">
            <form class="form-signin" action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <p>${mess}</p>
                <input name="user" type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus="">
                <input name="pass" type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
                <hr>
                <!-- <p>Don't have an account!</p>  -->
                <button class="btn btn-primary btn-block" type="button" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

            <form action="signup" method="post" class="form-signup">
                <input name="user"type="text" id="user-name" class="form-control" placeholder="Full name" required="" autofocus="">
                <input name="pass"type="password" id="user-pass" class="form-control" placeholder="Password" required autofocus="">
                <input name="repass"type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required autofocus="">

                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
                <a href="#" id="cancel_signup"><i class="fas fa-angle-left"></i> Back</a>
            </form>
            <br>

        </div>
        <p style="text-align:center">
            <a href="http://bit.ly/2RjWFMfunction toggleResetPswd(e){
               e.preventDefault();
               $('#logreg-forms .form-signin').toggle() // display:block or none
               $('#logreg-forms .form-reset').toggle() // display:block or none
               }

               function toggleSignUp(e){
               e.preventDefault();
               $('#logreg-forms .form-signin').toggle(); // display:block or none
               $('#logreg-forms .form-signup').toggle(); // display:block or none
               }

               $(()=>{
               // Login Register Form
               $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
               $('#logreg-forms #cancel_reset').click(toggleResetPswd);
               $('#logreg-forms #btn-signup').click(toggleSignUp);
               $('#logreg-forms #cancel_signup').click(toggleSignUp);
               </p>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="/script.js"></script>
            <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="assets/js/loginjs.js"></script>
</body>
</html>