package com.MobiSoft;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private static final String jdbcUrl = "jdbc:mysql://localhost:3306/mobisoft";
    private static final String username = "root";
    private static final String password = "admin";

    public List<Product> getProductsByMake(String make) throws Exception {
        List<Product> products = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String query = "SELECT * FROM products WHERE make LIKE ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + make + "%");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String model = resultSet.getString("model");
                double price = resultSet.getDouble("price");
                Product product = new Product( model, price);
                products.add(product);
            }
        }

        return products;
    }

    public List<Product> getProductsByModel(String model) throws Exception {
        List<Product> products = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(jdbcUrl, username, password)) {
            String query = "SELECT * FROM products WHERE model LIKE ?";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, "%" + model + "%");

            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                String make = resultSet.getString("make");
                double price = resultSet.getDouble("price");
                Product product = new Product(model, price);
                products.add(product);
            }
        }

        return products;
    }
}

