package com.Test.MobiSoft;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.MobiSoft.Product;
import com.MobiSoft.ProductList;

public class ProductListTest {
    private ProductList productList;

    @Before
    public void setUp() {
        productList = new ProductList();
    }

    @After
    public void tearDown() {
        productList = null;
    }

    @Test
    public void testGetProducts() {
        // Test the getProducts() method
        ArrayList<Product> products = productList.getProducts();
        assertNotNull(products);
        assertEquals(6, products.size());

       
    }
}
