/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageUser;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import utils.DBUtils_user;
import utils.MyUtils;


@WebServlet(urlPatterns = { "/DeleteUser" })
public class DeleteUserServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public DeleteUserServlet() {
        super();
    }
 
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String username = (String) request.getParameter("username");
 
        String errorString = null;
 
        try {
            DBUtils_user.deleteUser(conn, username);
        } catch (SQLException | NullPointerException e) {
            e.printStackTrace();
            errorString = e.getMessage();
            PrintWriter out = response.getWriter();
            out.println("<p style='color: red;'>"+errorString+"</p>");
        }
         
        // If has an error, redirecte to the error page.
        if (errorString != null) {
            // Store the information in the request attribute, before forward to views.
            request.setAttribute("errorString", errorString);
            // 
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/deleteUserError.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.        
        else {
            response.sendRedirect(request.getContextPath() + "/UserList");
        }
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}
