/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.court;

import beans.Court;
import servlet.manageUser.*;
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
import java.io.PrintWriter;
import utils.DBUtils_court;
import utils.MyUtils;

/**
 *
 * @author amyliaahamad
 */

@WebServlet(urlPatterns = { "/CreateCourt" })
public class CreateCourtServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CreateCourtServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/addCourt.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the user information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String courtid = (String) request.getParameter("courtid");
        String courtType = (String) request.getParameter("courtType");
        String status = (String) request.getParameter("status");
        String statusDesc = (String) request.getParameter("statusDesc");
        
        Court court = new Court (courtid, courtType, status, statusDesc);
 
        String errorString = null;
 
        // Password is the string literal [a-zA-Z_0-9]
        // with at least 1 character
        String regex = "\\w+";
 
        if (courtid == null || !courtid.matches(regex)) {
            errorString = "Court invalid!";
        }
 
        if (errorString == null) {
            try {
                DBUtils_court.insertCourt(conn, court);
            } catch (SQLException | NullPointerException e) {
            e.printStackTrace();
            errorString = e.getMessage();
            PrintWriter out = response.getWriter();
            out.println("<p style='color: red;'>"+errorString+"</p>");
        }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("court", court);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/deleteUserError.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/CourtList");
        }
    }
}
