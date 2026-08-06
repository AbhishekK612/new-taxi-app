package com.taxi.booking.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection {

    private static final String DEFAULT_DB_HOST = "localhost";
    private static final String DEFAULT_DB_PORT = "3306";
    private static final String DEFAULT_DB_NAME = "taxi_booking";
    private static final String DEFAULT_DB_USER = "root";
    private static final String DEFAULT_DB_PASSWORD = "root";

    public static Connection getConnection() {

        Properties props = loadDbProperties();

        String host = getConfigValue("DB_HOST", props, DEFAULT_DB_HOST);
        String port = getConfigValue("DB_PORT", props, DEFAULT_DB_PORT);
        String dbName = getConfigValue("DB_NAME", props, DEFAULT_DB_NAME);
        String user = getConfigValue("DB_USER", props, DEFAULT_DB_USER);
        String password = getConfigValue("DB_PASSWORD", props, DEFAULT_DB_PASSWORD);

        String url = buildUrl(host, port, dbName);

        // Debug Information
        System.out.println("========================================");
        System.out.println("Database Configuration");
        System.out.println("========================================");
        System.out.println("Host        : " + host);
        System.out.println("Port        : " + port);
        System.out.println("Database    : " + dbName);
        System.out.println("Username    : " + user);
        System.out.println("Password    : [" + password + "]");
        System.out.println("Password Len: " + (password == null ? 0 : password.length()));
        System.out.println("URL         : " + url);
        System.out.println("========================================");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(url, user, password);

            System.out.println("========================================");
            System.out.println("✓ Database Connected Successfully!");
            System.out.println("========================================");

            return con;

        } catch (ClassNotFoundException e) {

            System.err.println("MySQL JDBC Driver not found.");
            e.printStackTrace();

        } catch (Exception e) {

            System.err.println("========================================");
            System.err.println("Database Connection Failed");
            System.err.println("========================================");
            System.err.println("Reason : " + e.getMessage());
            e.printStackTrace();

        }

        return null;
    }

    private static Properties loadDbProperties() {

        Properties properties = new Properties();

        try (InputStream stream = DBConnection.class.getResourceAsStream("/db.properties")) {

            if (stream != null) {
                properties.load(stream);
                System.out.println("Loaded db.properties successfully.");
            } else {
                System.out.println("db.properties NOT found in classpath.");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return properties;
    }

    private static String getConfigValue(String envKey, Properties props, String defaultValue) {

        String envValue = System.getenv(envKey);

        if (envValue != null && !envValue.trim().isEmpty()) {
            System.out.println(envKey + " loaded from Environment Variable.");
            return envValue;
        }

        String propertyKey = envKey.toLowerCase().replace("_", ".");

        String propertyValue = props.getProperty(propertyKey);

        if (propertyValue != null && !propertyValue.trim().isEmpty()) {
            System.out.println(propertyKey + " loaded from db.properties.");
            return propertyValue;
        }

        System.out.println(propertyKey + " using DEFAULT value.");

        return defaultValue;
    }

    private static String buildUrl(String host, String port, String dbName) {

        return "jdbc:mysql://"
                + host
                + ":"
                + port
                + "/"
                + dbName
                + "?useSSL=false"
                + "&allowPublicKeyRetrieval=true"
                + "&serverTimezone=UTC";
    }
}