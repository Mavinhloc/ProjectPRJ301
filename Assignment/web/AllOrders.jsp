
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Order History</title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
        <link rel="stylesheet" href="assets/css/maincss.css">
        <link rel="stylesheet" href="assets/css/owl-carousel.css">
        <link rel="stylesheet" href="assets/css/lightbox.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/cart.css"/>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h1>All Orders</h1>

            <table>
                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Address</th>
                        <th>Amount</th>
                        <th>Order Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listO}" var="order">
                    <tr>
                        <td>${order.orderID}</td>
                        <td>${order.address}</td>
                        <td>${order.amount}</td>
                        <td>${order.orderDate}</td>
                        <td>${order.status}</td>
                        <td>
                            <a href="updateOrder?orderid=${order.orderID}"><button class="editButton"><i class="fas fa-pencil-alt"></i></button></a>
                            <a href="deleteOrder?pid=${order.productID}&orderID=${order.orderID}" onclick="return confirm('Are you sure you want to delete this item?')"><button class="deleteButton"><i class="fas fa-times"></i></button></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

