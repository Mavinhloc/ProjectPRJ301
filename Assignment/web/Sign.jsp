<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css">
</head>
<body>
    <div class="wrapper">
        <form class="form-signup">
            <h1 class="signup-heading">Sign Up</h1>
            <input type="text" id="username" name="username" placeholder="Username" required><br>

            <input type="email" id="email" name="email" placeholder="Email" required><br>

            <input type="password" id="password" name="password" placeholder="Password" required><br>

            <input type="submit" value="Sign Up" class="signup-submit">
        </form>

        <p class="signup-login-link">Already have an account? <a href="login.jsp">Log in</a></p>
    </div>
</body>
</html>
