package com.taxi.booking.util;

import java.sql.*;
import com.taxi.booking.util.DBConnection;

public class TestConnection {

    public static void main(String[] args) {

        try {

            Connection con = DBConnection.getConnection();
            if (con == null) {
                System.err.println("DB connection failed. Check db.properties or environment variables.");
                return;
            }

            String sql = "SELECT * FROM users";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                System.out.println(
                        rs.getInt("id")
                                + " "
                                + rs.getString("username")
                                + " "
                                + rs.getString("password")
                );
            }

            rs.close();
            ps.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}