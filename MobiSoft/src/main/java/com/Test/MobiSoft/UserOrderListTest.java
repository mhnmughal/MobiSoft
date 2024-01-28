package com.Test.MobiSoft;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.MobiSoft.UserOrderList;

public class UserOrderListTest {
    private UserOrderList userOrderList;

    @Before
    public void setUp() {
        userOrderList = new UserOrderList();
    }

    @After
    public void tearDown() {
        userOrderList = null;
    }

    @Test
    public void testGetOrderList() {
        // Test the getOrderList() method
        ArrayList<String> orderList = userOrderList.getOrderList();
        assertNotNull(orderList);
        assertEquals(3, orderList.size());

        // You can add more assertions to check the contents of the order list
        // For example, you can check if specific orders are present in the list
        // and their details match the expected values.
    }

    @Test
    public void testGetCurrentDate() {
        // Test the getCurrentDate() method
        String currentDate = userOrderList.getCurrentDate();
        assertNotNull(currentDate);

        // You can add assertions to check the format of the current date or its validity.
    }
}