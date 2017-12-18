/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet.manageBooking;

import beans.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
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
@WebServlet(urlPatterns = {"/SortDateUser"})
public class SortDateUserServlet extends HttpServlet {

private static final long serialVersionUID = 1L;
 
    public SortDateUserServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String errorString = null;
        List<Booking> booking = null;
        String courtid = request.getParameter("courtid");
        String dateBook = request.getParameter("dateBook");
        try {
            booking = DBUtils_booking.querySortBooking(conn, dateBook, courtid);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }
        // Store info in request attribute, before forward to views
        request.setAttribute("errorString", errorString);
        request.setAttribute("BookingList", booking);
         
        // Forward to 
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asUser/schedule.jsp");
        dispatcher.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
