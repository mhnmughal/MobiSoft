package com.Test.MobiSoft;

import static org.junit.Assert.assertEquals;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.MobiSoft.Product;

public class ProductTest {
    private Product product;

    @Before
    public void setUp() {
        product = new Product("Test Product", 99.99);
    }

    @After
    public void tearDown() {
        product = null;
    }

    @Test
    public void testGetName() {
        // Test the getName() method
        assertEquals("Test Product", product.getName());
    }

    @Test
    public void testGetPrice() {
        // Test the getPrice() method
        assertEquals(99.99, product.getPrice(), 0.001);
    }
}