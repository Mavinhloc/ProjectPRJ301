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
                            <a href="#editModal"  class="btn" data-bs-toggle="modal"><button class="edit-button btn btn-primary">Edit</button></a>
                            <a href="deleteAccount?aid=${o.id}"><button class="delete-button btn btn-danger">Delete</button></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Edit Modal -->
        <div id="editModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 class="modal-title">Edit User</h2>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <form action="editAccount" method="post">
                            <div class="mb-3">
                                <label for="edit-username" class="form-label">Username:</label>
                                <input type="text" id="edit-username" name="username" class="form-control" required>
                            </div>

                            <div class="mb-3">
                                <label for="edit-password" class="form-label">Password:</label>
                                <input type="password" id="edit-password" name="password" class="form-control" required>
                            </div>

                            <div class="mb-3 form-check">
                                <input type="checkbox" id="edit-seller" name="isSell" class="form-check-input">
                                <label for="edit-seller" class="form-check-label">Seller</label>
                            </div>

                            <div class="mb-3 form-check">
                                <input type="checkbox" id="edit-admin" name="isAdmin" class="form-check-input">
                                <label for="edit-admin" class="form-check-label">Admin</label>
                            </div>

                            <button type="submit" class="btn btn-primary">Save</button>
                            <button type="button" class="btn btn-secondary cancel-button" data-bs-dismiss="modal">Cancel</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- Include Bootstrap JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Include your JavaScript code here -->
        <script src="script.js"></script>
    </body>
</html>

