package com.example.controller;

import com.example.dao.UserDAO;
import com.example.model.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class SignupController extends jakarta.servlet.http.HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve form parameters
			

		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		// Create User object
		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setUsername(username);
		user.setPassword(password);

		// Insert user into the database
		UserDAO userDAO = new UserDAO();
		boolean isInserted = userDAO.insertUser(user);

		// Forward to the appropriate page based on the result
		if (isInserted) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("sign_up.jsp").forward(request, response);
		}
	}
}
