package com.Test.MobiSoft;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.MobiSoft.LoginServlet;

public class LoginServletTest {
    private LoginServlet loginServlet;

    @Before
    public void setUp() {
        loginServlet = new LoginServlet();
    }

    @After
    public void tearDown() {
        loginServlet = null;
    }

    @Test
    public void testIsValidUserWithValidCredentials() {
        // Test with valid username and password
        assertTrue(loginServlet.isValidUser("user1", "pass1"));
    }

    @Test
    public void testIsValidUserWithInvalidCredentials() {
        // Test with invalid username and password
        assertFalse(loginServlet.isValidUser("user1", "wrongpass"));
    }

    @Test
    public void testIsValidUsers() {
        // Test isValidUsers method
        assertTrue(loginServlet.isValidUsers(2, 3));
        assertFalse(loginServlet.isValidUsers(1, 1));
    }
}
