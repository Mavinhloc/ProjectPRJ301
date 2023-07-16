
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Order History</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            h1 {
                text-align: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 10px;
                text-align: left;
            }

            th {
                background-color: #f2f2f2;
                font-weight: bold;
            }

            tr:nth-child(even) {
                background-color: #f9f9f9;
            }

        </style>
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/maincss.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">

        <link rel="stylesheet" type="text/css" href="assets/css/cart.css"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
                    </tr>
                </c:forEach>
            </tbody>

        </table>
        <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>

