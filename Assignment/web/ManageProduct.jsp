<%-- 
    Document   : ManageProduct
    Created on : Jul 7, 2023, 1:56:11 PM
    Author     : ASUS
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Product CRUD</title>
        <link rel="stylesheet" type="text/css" href="assets/css/style.css">
        
        <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

        <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

        <link rel="stylesheet" href="assets/css/maincss.css">

        <link rel="stylesheet" href="assets/css/owl-carousel.css">

        <link rel="stylesheet" href="assets/css/lightbox.css">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <jsp:include page="Header.jsp"></jsp:include>
            <h2>Product CRUD</h2>
            <button class="addProductButton">Add Product</button>
            <table>
                <thead>
                    <tr>
                        <th><input type="checkbox" id="selectAll"></th>
                        <th>ID</th>
                        <th>Product Name</th>
                        <th>Product Image</th>
                        <th>Price</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <c:forEach items="${listP}" var="o">
                    <tr>
                        <td><input type="checkbox" class="productCheckbox"></td>
                        <td>${o.id}</td>
                        <td><a href="detail?pid=${o.id}">${o.name}</a></td>
                        <td><img src="${o.image}" alt="Product 1" class="productImage"></td>
                        <td>${o.price} $</td>
                        <td>
                            <a href="delete?pid=${o.id}"><button class="deleteButton"><i class="fas fa-times"></i></button></a>
                            <a href="#"><button class="editButton"><i class="fas fa-pencil-alt"></i></button></a>
                        </td>
                    </tr>
                </c:forEach>
                <!-- Additional rows for other products -->
            </tbody>
        </table>
        <jsp:include page="Footer.jsp"></jsp:include>
<i

        <script src="script.js"></script>
    </body>
</html>


