/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageAdmin;

import beans.Admin;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.MyUtils;

/**
 *
 * @author amyliaahamad
 */
@WebServlet(urlPatterns = { "/HomeAdmin" })
public class homeAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public homeAdminServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
 
        // Check User has logged on
        Admin admin = MyUtils.getLoginedAdmin(session);
 
        // Not logged in
        if (admin == null) {
            // Redirect to login page.
            response.sendRedirect(request.getContextPath() + "/loginServlet");
            return;
        }
        // Store info to the request attribute before forwarding.
        request.setAttribute("admin", admin);
 
        // If the user has logged in, then forward to the page
        // /WEB-INF/views/userInfoView.jsp
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/asAdmin/homeviewAdmin.jsp");
        dispatcher.forward(request, response);
 
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}

