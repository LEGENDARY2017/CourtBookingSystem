/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import beans.Booking;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Shameera
 */
public class DBUtils_booking {

//     public static Booking findBooking(Connection conn, //
//            String bookingid, String password) throws SQLException {
// 
//        String sql = "Select * from Booking a " //
//                + " where a.staffid = ? and a.password= ?";
// 
//        PreparedStatement pstm = conn.prepareStatement(sql);
//        pstm.setString(1, staffid);
//        pstm.setString(2, password);
//        ResultSet rs = pstm.executeQuery();
// 
//        if (rs.next()) {
//            String name = rs.getString("name");
//            String email = rs.getString("email");
//            String contactNo = rs.getString("contactNo");
//            Booking Booking = new Booking();
//            Booking.setStaffid(staffid);
//            Booking.setName(name);
//            Booking.setPassword(password);
//            Booking.setEmail(email);
//            Booking.setContactNo(contactNo);
//            return Booking;
//        }
//        return null;
//    }
    public static Booking findBooking(Connection conn, String bookingid) throws SQLException {

        String sql = "Select * from Booking a where a.bookingid = ? ";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, bookingid);

        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            String courtid = rs.getString("courtid");
            String username = rs.getString("username");
            String staffid = rs.getString("staffid");
            String dateBook = rs.getString("dateBook");
            String start = rs.getString("start");
            String end = rs.getString("end");
            String feedback = rs.getString("feedback");
            Booking Booking = new Booking();
            Booking.setCourtid(courtid);
            Booking.setUsername(username);
            Booking.setStaffid(staffid);
            Booking.setDateBook(dateBook);
            Booking.setStart(start);
            Booking.setEnd(end);
            Booking.setFeedback(feedback);
            return Booking;
        }
        return null;
    }

    /*public static List<Booking> queryBooking(Connection conn) throws SQLException {
        String sql = "Select * from booking";

        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Booking> booking = new ArrayList<>();
        while (rs.next()) {
            String courtid = rs.getString("courtid");
            String username = rs.getString("username");
            String staffid = rs.getString("staffid");
            String dateBook = rs.getString("dateBook");
            String start = rs.getString("start");
            String end = rs.getString("end");
            String feedback = rs.getString("feedback");
            Booking Booking = new Booking();
            Booking.setCourtid(courtid);
            Booking.setUsername(username);
            Booking.setStaffid(staffid);
            Booking.setDateBook(dateBook);
            Booking.setStart(start);
            Booking.setEnd(end);
            Booking.setFeedback(feedback);
            
            booking.add(Booking);
        }
        return booking;
    }*/
    
    public static List<Booking> queryBooking(Connection conn) throws SQLException {
        String sql = "Select * from booking";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Booking> list = new ArrayList<>();
        while (rs.next()) {
            String bookingid = rs.getString("bookingid");
            String courtid = rs.getString("courtid");
            String username = rs.getString("username");
            String staffid = rs.getString("staffid");
            String dateBook = rs.getString("dateBook");
            String start = rs.getString("start");
            String end = rs.getString("end");
            String feedback = rs.getString("feedback");
            Booking Booking = new Booking();
            Booking.setBookingid(bookingid);
            Booking.setCourtid(courtid);
            Booking.setUsername(username);
            Booking.setStaffid(staffid);
            Booking.setDateBook(dateBook);
            Booking.setStart(start);
            Booking.setEnd(end);
            Booking.setFeedback(feedback);
            
            list.add(Booking);
        }
        return list;
    }

    public static List<Booking> querySortBooking(Connection conn, String dateBook) throws SQLException {
        String sql = "Select * from booking a where a.dateBook=?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, dateBook);
        
        ResultSet rs = pstm.executeQuery();
        List<Booking> booking = new ArrayList<>();
        while (rs.next()) {
            String bookingid = rs.getString("bookingid");
            String courtid = rs.getString("courtid");
            String username = rs.getString("username");
            String staffid = rs.getString("staffid");
            String start = rs.getString("start");
            String end = rs.getString("end");
            String feedback = rs.getString("feedback");
            Booking Booking = new Booking();
            Booking.setBookingid(bookingid);
            Booking.setCourtid(courtid);
            Booking.setUsername(username);
            Booking.setStaffid(staffid);
            Booking.setDateBook(dateBook);
            Booking.setStart(start);
            Booking.setEnd(end);
            Booking.setFeedback(feedback);
            
            booking.add(Booking);
        }
        return booking;
    }

    public static void updateBooking(Connection conn, Booking booking) throws SQLException {
        String sql = "Update Booking set courtid =?, username=?, staffid=?, dateBook=?, start=?, end=?, feedback=? where bookingid=? ";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, booking.getCourtid());
        pstm.setString(2, booking.getUsername());
        pstm.setString(3, booking.getStaffid());
        pstm.setString(4, booking.getDateBook());
        pstm.setString(5, booking.getStart());
        pstm.setString(6, booking.getEnd());
        pstm.setString(7, booking.getFeedback());
        pstm.executeUpdate();
    }

    public static void insertBooking(Connection conn, Booking booking) throws SQLException {
        String sql = "Insert into Booking(courtid, staffid, dateBook, start, end) values (?,?,?,?,?)";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, booking.getCourtid());
        pstm.setString(2, booking.getStaffid());
        pstm.setString(3, booking.getDateBook());
        pstm.setString(4, booking.getStart());
        pstm.setString(5, booking.getEnd());

        pstm.executeUpdate();
    }

    public static void deleteBooking(Connection conn, String bookingid) throws SQLException {
        String sql = "Delete from Booking where bookingid= ?";

        PreparedStatement pstm = conn.prepareStatement(sql);

        pstm.setString(1, bookingid);

        pstm.executeUpdate();
    }
}
