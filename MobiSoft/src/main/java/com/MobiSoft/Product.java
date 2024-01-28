package com.MobiSoft;

public class Product {
    private String name;
    private double price;

    // Constructor
    public Product(String name, double price) {
        this.name = name;
        this.price = price;
    }

    // Getter method for name
    public String getName() {
        return name;
    }

    // Getter method for price
    public double getPrice() {
        return price;
    }
}

