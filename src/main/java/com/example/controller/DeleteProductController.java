package com.example.controller;

import com.example.dao.DeleteProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.example.model.DeleteProduct;



public class DeleteProductController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String productname = request.getParameter("productname");
       
        // Create DeleteProduct object
        DeleteProduct deleteProduct = new DeleteProduct();
        deleteProduct.setProductname(productname);
        

        // Delete product from database
        DeleteProductDAO deleteProductDAO = new DeleteProductDAO();
        boolean isDeleted = deleteProductDAO.deleteProduct(deleteProduct.getProductname());

        // Forward to the appropriate page based on the result
        if (isDeleted) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("deleteproductdata.jsp?error=failed").forward(request, response);
        }
    }
}

