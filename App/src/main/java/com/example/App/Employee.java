package com.example.App;

public class Employee {
    private int employeeID;
    private String name;
    private String email;
    private String password;
    private boolean isManager;

    public Employee() {
        this.employeeID = 0;
        this.name = "";
        this.email = "";
        this.password = "";
        this.isManager = false;
    }//Employee (default)

    public Employee(int employeeID, String name, String email, String password, boolean isManager) {
        this.employeeID = employeeID;
        this.name = name;
        this.email = email;
        this.password = password;
        this.isManager = isManager;
    }//Employee

    public int getEmployeeID() {
        return employeeID;
    }

    public void setEmployeeID(int employeeID) {
        this.employeeID = employeeID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name =  name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean getIsManager() {
        return isManager;
    }

    public void setIsManager(boolean isManager) {
        this.isManager = isManager;
    }
}
