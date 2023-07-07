<%-- 
    Document   : AddProduct
    Created on : Jul 7, 2023, 9:36:56 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>New Product Form</title>
  <link rel="stylesheet" type="text/css" href="assets/css/addproduct.css">
</head>
<body>
  <h2>New Product Form</h2>

  <form class="product-form" action="submit-form.php" method="POST" enctype="multipart/form-data">
    <div class="form-group">
      <label for="name">Product Name</label>
      <input type="text" id="name" name="name" required>
    </div>
    <div class="form-group">
      <label for="image">Product Image</label>
      <input type="text" id="image" name="image" accept="image/*" required>
    </div>
    <div class="form-group">
      <label for="price">Price</label>
      <input type="number" id="price" name="price" step="0.01" required>
    </div>
    <div class="form-group">
      <label for="title">Product Title</label>
      <input type="text" id="title" name="title" required>
    </div>
    <div class="form-group">
      <label for="description">Product Description</label>
      <textarea id="description" name="description" required></textarea>
    </div>
    <div class="form-group">
      <label for="category">Category</label>
      <select id="category" name="category" required>
        <option value="">Select a category</option>
        <option value="Electronics">Electronics</option>
        <option value="Clothing">Clothing</option>
        <option value="Home">Home</option>
      </select>
    </div>
    <div class="button-group">
      <button type="submit" class="submit-btn">Submit</button>
      <button type="button" class="cancel-btn">Cancel</button>
    </div>
  </form>

  <script src="script.js"></script>
</body>
</html>
