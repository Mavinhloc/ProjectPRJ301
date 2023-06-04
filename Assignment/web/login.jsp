<%-- 
    Document   : login
    Created on : Jun 4, 2023, 12:32:19 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel='stylesheet' href='https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css'>
      <link rel="stylesheet" href="css/login.css">
  
  </head>
  <body>
 <main>
  <article>

  <div class="wrapper">
    <form class="form-signin">       
      <p class="log">Login</p>
      <h2 class="form-signin-heading"></h2>
      <input type="text" class="form-control" name="username" placeholder="Username" required="" autofocus="" />
      <input type="password" class="form-control" name="password" placeholder="Password" required=""/>      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <button class="submit" type="submit">Login</button>
      <br>
      <div class="Sign">
      <p>Don't have a account?</p>
      <a href="Sign.jsp">Sign Up</a>
      </div>
    </form>
  </div>
  </article>
 </main>

  </body>
</html>