package com.example.App;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeDao {
    private final String jdbcUrl = "jdbc:mysql://localhost:3306/work";
    private final String dbUser = "Owner";
    private final String dbPass = "MisterOwner!.";
    private final String encrypt = "19oPwKJK";

    public Employee managerLoggingIn(String email, String password) throws ClassNotFoundException {
        Employee manager = null;
        Class.forName("com.mysql.jdbc.Driver");

        try {
            Connection conn = DriverManager.getConnection(jdbcUrl, dbUser, dbPass);
            String LOGIN_INFO_SQL;
            LOGIN_INFO_SQL = "SELECT employeeID, name, isManager FROM `employee` WHERE email = ? AND password = aes_encrypt(?, ?)";
            PreparedStatement loginStatement = conn.prepareStatement(LOGIN_INFO_SQL);
            loginStatement.setString(1, email);
            loginStatement.setString(2, password);
            loginStatement.setString(3, encrypt);
            ResultSet rs = loginStatement.executeQuery();

            if(rs.next()) {
                int employeeID = rs.getInt("employeeID");
                String name = rs.getString("name");
                boolean isManager = rs.getBoolean("isManager");
                manager = new Employee(employeeID, name, email, password, isManager);
            }
        } catch(SQLException e) {
            System.out.println("SQL Error in managerLoggingIn");
        }
        return manager;
    }
}
