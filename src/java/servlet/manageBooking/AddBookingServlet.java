/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageBooking;

import beans.Booking;
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
import utils.DBUtils_booking;
import beans.UserAccount;
import utils.MyUtils;

/**
 *
 * @author amyliaahamad
 */

@WebServlet(urlPatterns = { "/AddBooking" })
public class AddBookingServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public AddBookingServlet() {
        super();
    }
 
    // Show product creation page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/bookingFormAdmin.jsp");
        dispatcher.forward(request, response);
    }
 
    // When the user enters the user information, and click Submit.
    // This method will be called.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String courtid = (String) request.getParameter("courtid");
        String username = (String) request.getParameter("username");
        String staffid = (String) request.getParameter("staffid");
        String dateBook = (String) request.getParameter("dateBook");
        String start = (String) request.getParameter("start");
        String end = (String) request.getParameter("end");
        String feedback = (String) request.getParameter("feedback");
        
        Booking booking = new Booking ( courtid,  username,  staffid,  dateBook,  start,  end,  feedback);
 
        String errorString = null;
 
        
        if (errorString == null) {
            try {
                DBUtils_booking.insertBookingAdmin(conn, booking);
            } catch (SQLException e) {
                errorString = e.getMessage();
            }
        }
 
        // Store infomation to request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("booking", booking);
 
        // If error, forward to Edit page.
        if (errorString != null) {
            RequestDispatcher dispatcher = request.getServletContext()
                    .getRequestDispatcher("/asAdmin/deleteUserError.jsp");
            dispatcher.forward(request, response);
        }
        // If everything nice.
        // Redirect to the product listing page.
        else {
            response.sendRedirect(request.getContextPath() + "/BookingList");
        }
    }
}
