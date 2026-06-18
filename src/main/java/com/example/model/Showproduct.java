package com.example.model; // Adjust the package name as needed

public class Showproduct {
    private int productId;
    private String productName;
    private String description;
    private String category;
    private double price;
    private int stockLevel;

    // Default constructor
    public Showproduct() {
    }

    // Getter and Setter methods
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStockLevel() {
        return stockLevel;
    }

    public void setStockLevel(int stockLevel) {
        this.stockLevel = stockLevel;
    }

    @Override
    public String toString() {
        return "Showproduct{" +
               "productId=" + productId +
               ", productName='" + productName + '\'' +
               ", description='" + description + '\'' +
               ", category='" + category + '\'' +
               ", price=" + price +
               ", stockLevel=" + stockLevel +
               '}';
    }
}
