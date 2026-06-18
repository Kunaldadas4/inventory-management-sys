package com.example.controller;

import com.example.dao.UserDAO1;


import com.example.model.LoginUser;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Create LoginUser object
        LoginUser loginUser = new LoginUser();
        loginUser.setUsername(username);
        loginUser.setPassword(password);

        // Authenticate user
        UserDAO1 userDAO = new UserDAO1();
        boolean isAuthenticated = userDAO.authenticateUser(loginUser.getUsername(), loginUser.getPassword());

        // Forward to the appropriate page based on the result
        if (isAuthenticated) {
            request.getRequestDispatcher("home.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("login.jsp?error=invalid").forward(request, response);
        }
    }
}
