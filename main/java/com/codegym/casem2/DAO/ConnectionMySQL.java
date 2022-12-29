package com.codegym.casem2.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionMySQL {
    public static Connection getConnection() {
        String jdbcURL = "jdbc:mysql://localhost:3306/client_manager";
        String jdbcUsername = "root";
        String jdbcPassword = "12345678";
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("error");
        }
        return connection;
    }
}
