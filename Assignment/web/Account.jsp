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
<!DOCTYPE html>
<html>
    <head>
        <title>User Management</title>
        <!-- Include your CSS stylesheets here -->
        <link rel="stylesheet" href="styles.css">
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
            <table>
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
                            <button class="edit-button">Edit</button>
                            <button class="delete-button">Delete</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!-- Edit Modal -->
        <div id="editModal" class="modal">
            <div class="modal-content">
                <h2>Edit User</h2>
                <form>
                    <label for="edit-username">Username:</label>
                    <input type="text" id="edit-username" name="edit-username" required>

                    <label for="edit-password">Password:</label>
                    <input type="password" id="edit-password" name="edit-password" required>

                    <label for="edit-seller">Seller:</label>
                    <input type="checkbox" id="edit-seller" name="edit-seller">

                    <label for="edit-admin">Admin:</label>
                    <input type="checkbox" id="edit-admin" name="edit-admin">

                    <button type="submit">Save</button>
                    <button class="cancel-button">Cancel</button>
                </form>
            </div>
        </div>
        <jsp:include page="Footer.jsp"></jsp:include>


        <!-- Include your JavaScript code here -->
        <script src="script.js"></script>
    </body>
</html>
