/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageAdmin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import beans.Admin;
import utils.DBUtils_admin;
import utils.MyUtils;
 
@WebServlet(urlPatterns = { "/EditAdmin" })
public class EditAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public EditAdminServlet() {
        super();
    }
 
    // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String staffid = (String) request.getParameter("staffid");
 
        Admin admin = null;
 
        String errorString = null;
 
       try {
        admin = DBUtils_admin.findAdmin(conn, staffid);
       } catch (SQLException e) {
         e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && admin == null) {
            response.sendRedirect(request.getServletPath() + "/adminList");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("admin", admin);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/editAdminDetail.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the product information, and click Submit.
    // This method will be executed.
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
 
        try {
            DBUtils_admin.updateAdmin(conn, admin);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("admin", admin);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/editAdminDetail.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/adminList");
        }
    }
 
}
