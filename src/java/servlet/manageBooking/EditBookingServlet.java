/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageBooking;

import beans.Booking;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.DBUtils_booking;
import utils.MyUtils;
 

/**
 *
 * @author Shameera
 */
@WebServlet(urlPatterns = {"/EditBooking"})
public class EditBookingServlet extends HttpServlet {

      private static final long serialVersionUID = 1L;
 
    public EditBookingServlet() {
        super();
    }
 
    // Show product edit page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String bookingid = (String) request.getParameter("bookingid");
 
        Booking booking = null;
 
        String errorString = null;
 
       try {
       booking = DBUtils_booking.findBooking(conn, bookingid);
       } catch (SQLException e) {
         e.printStackTrace();
            errorString = e.getMessage();
        }
 
        // If no error.
        // The product does not exist to edit.
        // Redirect to productList page.
        if (errorString != null && booking == null) {
            response.sendRedirect(request.getServletPath() + "/BookingList");
            return;
        }
 
        // Store errorString in request attribute, before forward to views.
        request.setAttribute("errorString", errorString);
        request.setAttribute("booking", booking);
 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/editBookingDetail.jsp");
        dispatcher.forward(request, response);
 
    }
 
    // After the user modifies the product information, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String courtid = (String) request.getParameter("courtid");
        String staffid = (String) request.getParameter("staffid");
        String username = (String) request.getParameter("username");
        String dateBook = (String) request.getParameter("dateBook");
        String start = (String) request.getParameter("start");
        String end = (String) request.getParameter("end");
        String feedback = (String) request.getParameter("feedback");
        
        Booking booking = new Booking ( courtid,  username,  staffid,  dateBook,  start,  end,  feedback);
 
        String errorString = null;
 
        try {
            DBUtils_booking.updateBooking(conn, booking);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
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
