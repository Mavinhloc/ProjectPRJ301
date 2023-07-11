<%-- 
    Document   : Account
    Created on : Jul 8, 2023, 9:21:56 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

<link rel="stylesheet" href="assets/css/maincss.css">

<link rel="stylesheet" href="assets/css/owl-carousel.css">

<link rel="stylesheet" href="assets/css/lightbox.css">

<link rel="stylesheet" type="text/css" href="assets/css/cart.css"/>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">




<!DOCTYPE html>
<html>
    <head>
        <title>User Management</title>
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <h1>User Management</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Seller</th>
                        <th>Admin</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listA}" var="o">
                    <tr>
                        <td>${o.id}</td>
                        <td>${o.username}</td>
                        <td>${o.password}</td>
                        <td>${o.isSell}</td>
                        <td>${o.isAdmin}</td>
                        <td>
                            <a href="loadAccount?aid=${o.id}"  class="btn"><button class="edit-button btn btn-primary">Edit</button></a>
                            <a href="deleteAccount?aid=${o.id}" onclick="return confirm('Are you sure you want to delete this item?')"><button class="delete-button btn btn-danger">Delete</button></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- Include Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Include your JavaScript code here -->
        <script src="script.js"></script>
    </body>
</html>

