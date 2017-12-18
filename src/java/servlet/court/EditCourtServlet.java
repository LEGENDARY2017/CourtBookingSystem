/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.court;

import servlet.manageUser.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import beans.Court;
import utils.DBUtils_court;
import utils.MyUtils;
 
@WebServlet(urlPatterns = { "/EditCourt" })
public class EditCourtServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public EditCourtServlet() {
        super();
    }
 
    // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String courtid = (String) request.getParameter("courtid");
 
        Court court = null;
        String errorString = null;
 
       try {
       court = DBUtils_court.findCourt(conn, courtid);
       } catch (SQLException e) {
         e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && court == null) {
            response.sendRedirect(request.getServletPath() + "/CourtList");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("court", court);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/editCourtDetail.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the product information, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String courtid = (String) request.getParameter("courtid");
        String courtType = (String) request.getParameter("courtType");
        String status = (String) request.getParameter("status");
        String statusDesc = (String) request.getParameter("statusDesc");
        
        Court court = new Court (courtid,courtType,status, statusDesc );
 
        String errorString = null;
 
        try {
            DBUtils_court.updateCourt(conn, court);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("court", court);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/editCourtDetail.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/CourtList");
        }
    }
 
}
