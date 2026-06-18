package com.example.model;

public class UpdateProduct {
    private int productid;
    private String productname;
    private String description;
    private String category;
    private double price;
    private int stocklevel;

    // Default constructor
    public UpdateProduct() {
    }

    // Getter and setter for productid
    public int getProductid() {
        return productid;
    }

    public void setProductid(int productid) {
        this.productid = productid;
    }

    // Getter and setter for productname
    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname;
    }

    // Getter and setter for description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter and setter for category
    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    // Getter and setter for price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Getter and setter for stocklevel
    public int getStocklevel() {
        return stocklevel;
    }

    public void setStocklevel(int stocklevel) {
        this.stocklevel = stocklevel;
    }
}
