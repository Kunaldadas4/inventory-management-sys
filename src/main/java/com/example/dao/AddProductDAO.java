	package com.example.dao;

import com.example.model.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddProductDAO {

	// Database URL, username, and password should be configured according to your
	// setup
	private static final String URL = "jdbc:mysql://localhost:3306/db";
	private static final String USER = "root";
	private static final String PASSWORD = "";

	// JDBC driver class
	private static final String DRIVER = "com.mysql.jdbc.Driver";

	// Method to add a product
	public boolean addProduct(Product product) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		boolean isAdded = false;

		try {
			// Load JDBC driver
			Class.forName(DRIVER);

			// Establish connection
			connection = DriverManager.getConnection(URL, USER, PASSWORD);

			// SQL query to insert product
			String sql = "INSERT INTO products (id,productname, description, category, price, stock_level) VALUES (?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,product.getProductid());
			preparedStatement.setString(2, product.getProductname());
			preparedStatement.setString(3, product.getDescription());
			preparedStatement.setString(4, product.getCategory());
			preparedStatement.setDouble(5, product.getPrice());
			preparedStatement.setInt(6, product.getStocklevel());	

			int rowsAffected = preparedStatement.executeUpdate();
			isAdded = rowsAffected > 0; // If rowsAffected > 0, the product was added successfully

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			// Close resources
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return isAdded;
	}
}
