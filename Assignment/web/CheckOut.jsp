<%-- 
    Document   : CheckOut
    Created on : Jul 17, 2023, 12:35:44 AM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="checkout" method="post">
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" required></textarea>
            </div>
            <div class="form-group">
                <label for="paymentmethod">Payment Method:</label>
                <input type="text" id="paymentmethod" name="paymentmethod" required>
            </div>
            <button type="submit">Checkout</button>
        </form>
    </body>
</html>
