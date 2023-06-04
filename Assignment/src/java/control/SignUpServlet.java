package control;

import context.DBContext;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name="SignUpServlet", urlPatterns={"/signup"})
public class SignUpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Create an instance of your DBContext class
        DBContext dbContext = new DBContext();

        try {
            // Get a connection to the database using the DBContext class
            Connection conn = dbContext.getConnection();

            // Create the SQL query to insert user data into the 'users' table
            String sql = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

            // Create a PreparedStatement to safely execute the SQL query
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, email);
            pstmt.setString(3, password);

            // Execute the query
            pstmt.executeUpdate();

            // Close the PreparedStatement and database connection
            pstmt.close();
            conn.close();

            // Redirect to a success page or perform any other necessary actions
            response.sendRedirect("login.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            // Handle any errors that may occur during the database operation
            // You can redirect to an error page or display an error message
        }
    }
}
