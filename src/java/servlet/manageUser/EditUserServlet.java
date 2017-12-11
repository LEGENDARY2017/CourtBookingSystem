/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageUser;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import beans.UserAccount;
import utils.DBUtils_user;
import utils.DBUtils;
import utils.MyUtils;
 
@WebServlet(urlPatterns = { "/EditUser" })
public class EditUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public EditUserServlet() {
        super();
    }
 
    // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String username = (String) request.getParameter("username");
 
        UserAccount user = null;
 
        String errorString = null;
 
       try {
       user = DBUtils.findUser(conn, username);
       } catch (SQLException e) {
         e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && user == null) {
            response.sendRedirect(request.getServletPath() + "/UserList");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("user", user);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/editUserDetail.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the product information, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String username = (String) request.getParameter("username");
        String password = (String) request.getParameter("password");
        String name = (String) request.getParameter("name");
        String matricNo = (String) request.getParameter("matricNo");
        String faculty = (String) request.getParameter("faculty");
        String email = (String) request.getParameter("email");
        String contactNo = (String) request.getParameter("contactNo");
        
        UserAccount user = new UserAccount (username,password, name, matricNo, faculty, email, contactNo );
 
        String errorString = null;
 
        try {
            DBUtils_user.updateUser(conn, user);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("user", user);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/editUserDetail.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/UserList");
        }
    }
 
}
