package com.example.dao;

import com.example.model.UpdateProduct;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateProductDAO {

    private static final String URL = "jdbc:mysql://localhost:3306/db";
    private static final String USER = "root";
    private static final String PASSWORD = "";
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    // Method to update product information
    public boolean updateProduct(UpdateProduct updateProduct) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean isUpdated = false;

        try {
            // Load JDBC driver
            Class.forName(DRIVER);

            // Establish connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // SQL query to update product
            String sql = "UPDATE products SET productname = ?,description=?,category=?,price=?,stock_level=? WHERE id = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, updateProduct.getProductname());
            preparedStatement.setString(2, updateProduct.getDescription());
            preparedStatement.setString(3, updateProduct.getCategory());
            preparedStatement.setDouble(4, updateProduct.getPrice());
            preparedStatement.setInt(5, updateProduct.getStocklevel());	
            preparedStatement.setInt(6, updateProduct.getProductid());

            int rowsAffected = preparedStatement.executeUpdate();
            isUpdated = rowsAffected > 0; // If rowsAffected > 0, the product was updated successfully

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

        return isUpdated;
    }
}
