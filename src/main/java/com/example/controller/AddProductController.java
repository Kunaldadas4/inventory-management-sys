package com.example.controller;

import com.example.dao.AddProductDAO;
import com.example.model.Product;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



public class AddProductController extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
		String productidstr=request.getParameter("productid");
        String productname = request.getParameter("productname");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        String priceStr = request.getParameter("price");
        String stocklevelStr = request.getParameter("stocklevel");

        // Convert price and stocklevel to appropriate types
        double price = Double.parseDouble(priceStr);
        int stocklevel = Integer.parseInt(stocklevelStr);
        int productid=Integer.parseInt(productidstr);


        // Create Product object
        Product product = new Product();
        product.setProductid(productid);
        product.setProductname(productname);
        product.setDescription(description);
        product.setCategory(category);
        product.setPrice(price);
        product.setStocklevel(stocklevel);

        // Add product to database
        AddProductDAO addProductDAO = new AddProductDAO();
        boolean isAdded = addProductDAO.addProduct(product);

        // Forward to the appropriate page based on the result
        if (isAdded) {
            request.getRequestDispatcher("success.jsp").forward(request, response);
        } else {
            request.getRequestDispatcher("addproductdata.jsp?error=failed").forward(request, response);
        }
    }
}
