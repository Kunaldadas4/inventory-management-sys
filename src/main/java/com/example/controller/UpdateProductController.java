package com.example.controller;

import java.io.IOException;

import com.example.dao.UpdateProductDAO;
import com.example.model.UpdateProduct;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



public class UpdateProductController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        String productidStr = request.getParameter("productid");
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String priceStr = request.getParameter("price");
        String stocklevelStr = request.getParameter("stocklevel");

        // Convert price and stocklevel to appropriate types
        int productid = Integer.parseInt(productidStr);
        double price = Double.parseDouble(priceStr);
        int stocklevel = Integer.parseInt(stocklevelStr);

        // Create UpdateProduct object
        UpdateProduct updateProduct = new UpdateProduct();
        updateProduct.setProductid(productid);
        updateProduct.setProductname(productname);
        updateProduct.setDescription(description);
        updateProduct.setCategory(category);
        updateProduct.setPrice(price);
        updateProduct.setStocklevel(stocklevel);

        // Update product in database
        UpdateProductDAO updateProductDAO = new UpdateProductDAO();
        boolean isUpdated = updateProductDAO.updateProduct(updateProduct);

        // Forward to the appropriate page based on the result
        if (isUpdated) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("updateproductdata.jsp?error=failed").forward(request, response);
        }
    }
}
