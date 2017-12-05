/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageUser;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

import utils.MyUtils_user;
import utils.DBUtils_user;
import beans.UserAccount;

/**
 *
 * @author amyliaahamad
 */
public class CreateUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CreateUserServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/userAdd.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the user information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils_user.getStoredConnection(request);
 
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        String name = (String) request.getParameter("name");
        String matricNo = (String) request.getParameter("matricNo");
        String faculty = (String) request.getParameter("faculty");
        String email = (String) request.getParameter("email");
        String contactNo = (String) request.getParameter("contactNo");
        
        UserAccount user = new UserAccount (username,password, name, matricNo, faculty, email, contactNo );
 
        String errorString = null;
 
        // Password is the string literal [a-zA-Z_0-9]
        // with at least 1 character
        String regex = "\\w+";
 
        if (password == null || !password.matches(regex)) {
            errorString = "Password invalid!";
        }
 
        if (errorString == null) {
            try {
                DBUtils_user.insertUser(conn, user);
            } catch (SQLException e) {
                errorString = e.getMessage();
            }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("user", user);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/userAdd.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/UserList");
        }
    }
}
