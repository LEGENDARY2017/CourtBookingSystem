/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author nsyhd
 */
import beans.Event;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils_event {

    public static List<Event> queryEvent(Connection conn) throws SQLException {
        String sql = "Select * from event";

        PreparedStatement pstm = conn.prepareStatement(sql);

        ResultSet rs = pstm.executeQuery();
        List<Event> list = new ArrayList<>();
        while (rs.next()) {
            String eventid = rs.getString("eventid");
            String organizer = rs.getString("organizer");
            String name = rs.getString("name");
            String eventDate = rs.getString("eventDate");
            String startTime = rs.getString("startTime");
            String endTime = rs.getString("endTime");
            String description = rs.getString("description");
            String courtid = rs.getString("courtid");
            String staffid = rs.getString("staffid");
            Event event = new Event();
            event.setEventid(eventid);
            event.setOrganizer(organizer);
            event.setName(name);
            event.setEventDate(eventDate);
            event.setStartTime(startTime);
            event.setEndTime(endTime);
            event.setDescription(description);
            event.setCourtid(courtid);
            event.setStaffid(staffid);
            
            list.add (event);
        }
        return list;
            }
 
    public static Event findEvent(Connection conn, String eventid) throws SQLException {
        String sql = "Select * from event a where a.eventid=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, eventid);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String organizer = rs.getString("organizer");
            String name = rs.getString("name");
            String eventDate = rs.getString("eventDate");
            String startTime = rs.getString("startTime");
            String endTime = rs.getString("endTime");
            String description = rs.getString("description");
            String courtid = rs.getString("courtid");
            String staffid = rs.getString("staffid");
           Event event = new Event(eventid, organizer, name, eventDate, startTime, endTime, description, courtid, staffid);
           return event;
        }
        return null;
    }
 
    public static void updateEvent(Connection conn, Event event) throws SQLException {
        String sql = "Update event set organizer =?, name =?, eventDate =?, startTime =?, endTime =?, description =?, courtid=?, staffid=? where eventid=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, event.getOrganizer());
        pstm.setString(2, event.getName());
        pstm.setString(3, event.getEventDate());
        pstm.setString(4, event.getStartTime());
        pstm.setString(5, event.getEndTime());
        pstm.setString(6, event.getDescription());
        pstm.setString(7, event.getCourtid());
        pstm.setString(8, event.getStaffid());
        pstm.setString(9, event.getEventid());
        pstm.executeUpdate();
    }
 
    public static void insertEvent(Connection conn, Event event) throws SQLException {
        String sql = "Insert into event(eventid, organizer, name, eventDate, startTime, endTime, description, courtid, staffid) values (?,?,?,?,?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);

        
        pstm.setString(1, event.getEventid());
        pstm.setString(2, event.getOrganizer());
        pstm.setString(3, event.getName());
        pstm.setString(4, event.getEventDate());
        pstm.setString(5, event.getStartTime());
        pstm.setString(6, event.getEndTime());
        pstm.setString(7, event.getDescription());
        pstm.setString(8, event.getCourtid());
        pstm.setString(9, event.getStaffid());
 
        pstm.executeUpdate();
    }
 
    public static void deleteEvent(Connection conn, String eventid) throws SQLException {
        String sql = "Delete From event where eventid= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, eventid);
 
        pstm.executeUpdate();
    }
 
}
