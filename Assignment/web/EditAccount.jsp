<%-- 
    Document   : EditAccount
    Created on : Jul 9, 2023, 4:20:02 PM
    Author     : ASUS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit User</title>
    <link rel="stylesheet" href="assets/css/editaccount.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="form-container">
        <h2>Edit User</h2>
        <form id="edit-form" action="editAccount" method="post">
            <div class="form-group">
                <label for="edit-username">User ID:</label>
                <input value="${detail.id}" type="text" id="edit-username" name="id" class="form-control" readonly required>
            </div>
            <div class="form-group">
                <label for="edit-username">Username:</label>
                <input value="${detail.username}" type="text" id="edit-username" name="username" class="form-control" required>
            </div>

            <div class="form-group">
                <label for="edit-password">Password:</label>
                <input value="${detail.password}" type="password" id="edit-password" name="password" class="form-control" required>
            </div>

            <div class="form-group form-check">
                <input type="checkbox" id="edit-seller" name="isSell" class="form-check-input">
                <label for="edit-seller" class="form-check-label">Seller</label>
            </div>

            <div class="form-group form-check">
                <input type="checkbox" id="edit-admin" name="isAdmin" class="form-check-input">
                <label for="edit-admin" class="form-check-label">Admin</label>
            </div>

            <button type="submit" id="save-button" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-secondary cancel-button">Cancel</button>
        </form>
    </div>

    <script>
        document.getElementById('save-button').addEventListener('click', function() {
            // Get the checkbox elements
            var sellerCheckbox = document.getElementById('edit-seller');
            var adminCheckbox = document.getElementById('edit-admin');

            // Convert checkbox values to numbers
            var isSeller = sellerCheckbox.checked ? 1 : 0;
            var isAdmin = adminCheckbox.checked ? 1 : 0;

            // Set the converted values as hidden fields in the form
            var form = document.getElementById('edit-form');
            var isSellerInput = document.createElement('input');
            isSellerInput.type = 'hidden';
            isSellerInput.name = 'isSeller';
            isSellerInput.value = isSeller;
            form.appendChild(isSellerInput);

            var isAdminInput = document.createElement('input');
            isAdminInput.type = 'hidden';
            isAdminInput.name = 'isAdmin';
            isAdminInput.value = isAdmin;
            form.appendChild(isAdminInput);

            // Submit the form
            form.submit();
        });
    </script>
</body>
</html>

