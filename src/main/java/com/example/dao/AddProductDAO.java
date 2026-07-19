	package com.example.dao;

import com.example.model.Product;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class AddProductDAO {

			private static final String URL =
			"jdbc:mysql://tokaido.proxy.rlwy.net:38953/railway?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";

			private static final String USER = "root";

			private static final String PASSWORD = "XqWYRurpdWpjhNxofvATWTxkxkSzCjDe";

			private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
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
			String sql = "INSERT INTO products (productid,productname, description, category, price, stocklevel) VALUES (?, ?, ?, ?, ?, ?)";
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
