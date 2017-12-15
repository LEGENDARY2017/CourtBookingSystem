/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageAdmin;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

import beans.Admin;
import javax.servlet.annotation.WebServlet;
import utils.DBUtils_admin;
import utils.MyUtils;

/**
 *
 * @author yanaramli22
 */

@WebServlet(urlPatterns = { "/createAdmin" })
public class CreateAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CreateAdminServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/addAdmin.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the user information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String staffid = (String) request.getParameter("staffid");
        String name = (String) request.getParameter("name");
        String password = (String) request.getParameter("password");        
        String email = (String) request.getParameter("email");
        String contactNo = (String) request.getParameter("contactNo");
        
        Admin admin = new Admin (staffid, name, password, email, contactNo );
 
        String errorString = null;
 
        // Password is the string literal [a-zA-Z_0-9]
        // with at least 1 character
        String regex = "\\w+";
 
        if (password == null || !password.matches(regex)) {
            errorString = "Password invalid!";
        }
 
        if (errorString == null) {
            try {
                DBUtils_admin.insertAdmin(conn, admin);
            } catch (SQLException e) {
                errorString = e.getMessage();
            }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("admin", admin);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/addAdmin.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/adminList");
        }
    }
}
