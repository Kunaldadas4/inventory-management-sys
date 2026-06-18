
package com.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteProductDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/db";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    // Method to delete a product by product name
    public boolean deleteProduct(String productname) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean isDeleted = false;

        try {
            // Load JDBC driver
            Class.forName(DRIVER);

            // Establish connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // SQL query to delete product
            String sql = "DELETE FROM products WHERE productname = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, productname);

            int rowsAffected = preparedStatement.executeUpdate();
            isDeleted = rowsAffected > 0; // If rowsAffected > 0, the product was deleted successfully
 
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isDeleted;
    }
}


