package com.MobiSoft;
import java.util.ArrayList;

//Create a separate class to hold the list of products
public class ProductList {
    private ArrayList<Product> products;

    public ProductList() {
        products = new ArrayList<>();
        // Add products to the list
        products.add(new Product("LENOVO LEGION Y70", 999));
        products.add(new Product("Redmi Note 12R Pro", 179));
        products.add(new Product("Samsung Galaxy S23 Ultra", 249));
        products.add(new Product("Xiaomi 13", 359));
        products.add(new Product("OnePlus 10 pro", 499));
        products.add(new Product("Sony Xperia 1 V", 329));
    }

    public ArrayList<Product> getProducts() {
        return products;
    }
}

