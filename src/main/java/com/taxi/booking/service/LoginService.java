package com.taxi.booking.service;

import com.taxi.booking.model.User;
import com.taxi.booking.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginService implements AuthenticationService {

    @Override
    public boolean authenticate(User user) {

        if (user == null) {
            System.out.println("User object is null.");
            return false;
        }

        String username = user.getUsername();
        String password = user.getPassword();

        if (username == null || password == null) {
            System.out.println("Username or Password is null.");
            return false;
        }

        username = username.trim();
        password = password.trim();

        if (username.isEmpty() || password.isEmpty()) {
            System.out.println("Username or Password is empty.");
            return false;
        }

        String sql = "SELECT id, username, password FROM users WHERE username = ? AND password = ?";

        try (Connection con = DBConnection.getConnection()) {

            if (con == null) {
                System.out.println("Database connection failed.");
                return false;
            }

            try (PreparedStatement ps = con.prepareStatement(sql)) {

                ps.setString(1, username);
                ps.setString(2, password);

                System.out.println("======================================");
                System.out.println("Executing Login Query");
                System.out.println("Username : " + username);
                System.out.println("Password : " + password);
                System.out.println("======================================");

                try (ResultSet rs = ps.executeQuery()) {

                    if (rs.next()) {

                        System.out.println("========== LOGIN SUCCESS ==========");
                        System.out.println("ID       : " + rs.getInt("id"));
                        System.out.println("Username : " + rs.getString("username"));
                        System.out.println("===================================");

                        return true;
                    }

                    System.out.println("Login Failed - User Not Found.");
                    return false;
                }
            }

        } catch (Exception e) {

            System.out.println("LoginService Exception:");
            e.printStackTrace();
            return false;
        }
    }
}