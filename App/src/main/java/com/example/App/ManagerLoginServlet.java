package com.example.App;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "com.example.App.ManagerLoginServlet", value = "/com.example.App.ManagerLoginServlet")
public class ManagerLoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmployeeDao employeeDao = new EmployeeDao();

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        response.setContentType("text/html");

        RequestDispatcher dispatcher = request.getRequestDispatcher("/managerLogin.jsp");
        dispatcher.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String email = request.getParameter("email");
        String password = request.getParameter("passd");
        Employee employee = null;

        try {
            employee = employeeDao.managerLoggingIn(email, password);
        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        }

        if(employee != null && employee.getEmployeeID() > 0 && !employee.getIsManager()) {
            session.setAttribute("uid", employee.getEmployeeID());
            session.setAttribute("name", employee.getName());
            RequestDispatcher dispatcher = request.getRequestDispatcher("/managerLogin.jsp");
            dispatcher.forward(request, response);
        } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/managerLogin.jsp");
            dispatcher.forward(request, response);
        }
    }
}