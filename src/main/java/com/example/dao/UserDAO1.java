package com.example.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO1 {

    // Database URL, username, and password should be configured according to your setup
    private static final String URL = "jdbc:mysql://localhost:3306/db";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    // JDBC driver class
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    // Method to authenticate a user
    public boolean authenticateUser(String username, String password) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        boolean isAuthenticated = false;

        try {
            // Load JDBC driver
            Class.forName(DRIVER);

            // Establish connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // SQL query to find the user
            String sql = "SELECT * FROM employee WHERE username = ? AND password = ?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);

            resultSet = preparedStatement.executeQuery();
            isAuthenticated = resultSet.next(); // If result set has at least one row, authentication is successful

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (resultSet != null) resultSet.close();
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isAuthenticated;
    }
}
