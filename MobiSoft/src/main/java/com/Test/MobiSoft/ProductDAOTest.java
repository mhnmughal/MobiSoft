package com.Test.MobiSoft;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.MobiSoft.Product;
import com.MobiSoft.ProductDAO;

public class ProductDAOTest {
    private ProductDAO productDAO;

    @Before
    public void setUp() {
        productDAO = new ProductDAO();
    }

    @After
    public void tearDown() {
        productDAO = null;
    }

    @Test
    public void testGetProductsByMake() throws Exception {
        // Test the getProductsByMake() method
        List<Product> products = productDAO.getProductsByMake("TestMake");
        assertEquals(0, products.size());
    }

    @Test
    public void testGetProductsByModel() throws Exception {
        // Test the getProductsByModel() method
        List<Product> products = productDAO.getProductsByModel("TestModel");
        assertEquals(0, products.size());
    }
}
