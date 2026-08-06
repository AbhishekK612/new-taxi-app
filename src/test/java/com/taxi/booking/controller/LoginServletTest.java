package com.taxi.booking.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.junit.Before;
import org.junit.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.io.PrintWriter;
import java.io.StringWriter;

import com.taxi.booking.service.AuthenticationService;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

public class LoginServletTest {

    @Mock
    private HttpServletRequest request;

    @Mock
    private HttpServletResponse response;

    @Mock
    private HttpSession session;

    private LoginServlet servlet;
    private StringWriter responseWriter;

    @Before
    public void setUp() throws Exception {
        MockitoAnnotations.openMocks(this);
        AuthenticationService authService = new AuthenticationService() {
            @Override
            public boolean authenticate(com.taxi.booking.model.User user) {
                return "Alice".equals(user.getUsername()) && "alice123".equals(user.getPassword());
            }
        };
        servlet = new LoginServlet(authService);
        responseWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(responseWriter);
        when(request.getSession(true)).thenReturn(session);
        when(response.getWriter()).thenReturn(writer);
    }

    @Test
    public void testDoPostRedirectsToDashboardForValidCredentials() throws Exception {
        when(request.getParameter("username")).thenReturn("Alice");
        when(request.getParameter("password")).thenReturn("alice123");

        servlet.doPost(request, response);

        verify(response).sendRedirect("dashboard.jsp");
        verify(session).setAttribute("username", "Alice");
        verify(session).setAttribute("role", "user");
        verify(session).setAttribute("status", "active");
        verify(response, never()).getWriter();
    }

    @Test
    public void testDoPostRejectsInvalidCredentials() throws Exception {
        when(request.getParameter("username")).thenReturn("rahul");
        when(request.getParameter("password")).thenReturn("wrongpass");

        servlet.doPost(request, response);

        String output = responseWriter.toString().replace("\r\n", "\n");
        assertEquals("Invalid Username or Password\n", output);
        verify(response).getWriter();
    }
}
