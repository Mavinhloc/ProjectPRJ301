<%-- 
    Document   : ManageProduct
    Created on : Jul 7, 2023, 1:56:11 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Product CRUD</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    </head>
    <body>
        <h2>Product CRUD</h2>

        <table>
            <thead>
                <tr>
                    <th><input type="checkbox" id="selectAll"></th>
                    <th>Product ID</th>
                    <th>Product Name</th>
                    <th>Product Image</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><input type="checkbox" class="productCheckbox"></td>
                    <td>1</td>
                    <td>Product 1</td>
                    <td><img src="product1.jpg" alt="Product 1" class="productImage"></td>
                    <td>$10.99</td>
                    <td>
                        <button class="deleteButton"><i class="fas fa-times"></i></button>
                        <button class="editButton"><i class="fas fa-pencil-alt"></i></button>
                    </td>
                </tr>
                <!-- Additional rows for other products -->
            </tbody>
        </table>

        <script src="script.js"></script>
    </body>
</html>


