package com.taxi.booking.controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;

import com.taxi.booking.model.User;
import com.taxi.booking.service.AuthenticationService;
import com.taxi.booking.service.LoginService;

public class LoginServlet extends HttpServlet {

    private final AuthenticationService loginService;

    public LoginServlet() {
        this.loginService = new LoginService();
    }

    LoginServlet(AuthenticationService loginService) {
        this.loginService = loginService;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/plain;charset=UTF-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (username != null) {
            username = username.trim();
        }
        if (password != null) {
            password = password.trim();
        }

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        System.out.println("Username : '" + user.getUsername() + "'");
        System.out.println("Password : '" + user.getPassword() + "'");

        boolean valid = loginService.authenticate(user);

        if (valid) {
            user.setRole("user");
            user.setStatus("active");

            HttpSession session = request.getSession(true);
            session.setAttribute("username", user.getUsername());
            session.setAttribute("role", user.getRole());
            session.setAttribute("status", user.getStatus());

            String contextPath = request.getContextPath();
            String redirectPath = (contextPath == null || contextPath.isBlank())
                    ? "dashboard.jsp"
                    : contextPath + "/dashboard.jsp";

            response.sendRedirect(redirectPath);
            return;
        }

        response.getWriter().println("Invalid Username or Password");
    }
}
