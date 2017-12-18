/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageEvent;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import beans.Event;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DBUtils_event;
import utils.MyUtils;
 
@WebServlet(urlPatterns = { "/EditEvent" })
public class EditEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

/**
 *
 * @author nsyhd
 */
public EditEventServlet() {
     super();
     
}
      // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String eventid = (String) request.getParameter("eventid");
 
        Event event = null;
 
        String errorString = null;
 
       try {
       event = DBUtils_event.findEvent(conn, eventid);
       } catch (SQLException e) {
         e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && event == null) {
            response.sendRedirect(request.getServletPath() + "/EventList");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("event", event);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/editEventDetail.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the product information, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
       String eventid = (String) request.getParameter("eventid");
        String organizer =(String) request.getParameter("organizer"); 
        String name =(String) request.getParameter("name");
        String eventDate =(String) request.getParameter("eventDate");
        String startTime =(String) request.getParameter("startTime");
        String endTime =(String) request.getParameter("endTime");
        String description =(String) request.getParameter("description");
        String courtid =(String) request.getParameter("courtid");
        String staffid =(String) request.getParameter("staffid");
        Event event = new Event ( eventid, organizer, name, eventDate, startTime, endTime, description, courtid, staffid);
 
        String errorString = null;
 
        try {
            DBUtils_event.updateEvent(conn, event);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("event", event);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/deleteUserError.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/EventList");
        }
    }
 
}
