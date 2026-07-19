
package com.example.dao;

import com.example.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDAO {

    // Database URL, username, and password should be configured based on your database setup
	private static final String URL =
			"jdbc:mysql://tokaido.proxy.rlwy.net:38953/railway?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

			private static final String USER = "root";

			private static final String PASSWORD = "XqWYRurpdWpjhNxofvATWTxkxkSzCjDe";

			private static final String DRIVER = "com.mysql.cj.jdbc.Driver";

    public boolean insertUser(User user) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        boolean isInserted = false;


        try {
            // Load JDBC driver
            Class.forName(DRIVER);

            // Establish connection
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // SQL query to insert user data
            String sql = "INSERT INTO employee VALUES (?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            // Set parameters
            preparedStatement.setString(1, user.getName());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getUsername());
            preparedStatement.setString(4, user.getPassword());


            // Execute update
            int rowsAffected = preparedStatement.executeUpdate();
//            System.out.println("done!");
            isInserted = (rowsAffected > 0);

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

        return isInserted;
    }
}
