package com.MobiSoft;

import java.util.ArrayList;

public class UserOrderList {
	 public ArrayList<String> getOrderList() {
	        // In a real application, this method could fetch the order list from a database or other data source
	        // For testing purposes, we can return a mock order list
	        ArrayList<String> orderList = new ArrayList<>();
	        orderList.add("Order 1");
	        orderList.add("Order 2");
	        orderList.add("Order 3");
	        return orderList;
	    }

	    // Utility method to get the current date in the format "dd-MM-yyyy"
	    public String getCurrentDate() {
	        java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("dd-MM-yyyy");
	        return sdf.format(new java.util.Date());
	    }
}


