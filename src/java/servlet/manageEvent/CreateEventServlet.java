/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageEvent;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import javax.servlet.RequestDispatcher;

import beans.Event;
import java.sql.SQLException;
/*import java.util.logging.Logger;*/
import javax.servlet.annotation.WebServlet;
import utils.DBUtils_event;
import utils.MyUtils;


/**
 *
 * @author nsyhd
 */
@WebServlet(urlPatterns = { "/CreateEvent" })
public class CreateEventServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public CreateEventServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/addEvent.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the user information, and click Submit.
    // This method will be called.
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
 
            if (errorString == null) {
            try {
                DBUtils_event.insertEvent(conn, event);
            } catch (SQLException e) {
                errorString = e.getMessage();
            }
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
