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
        String sql = "Select a.eventid, a.timeslot, a.courtid, a.staffid, a.name, a.eventDate, a.description from event a ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Event> list = new ArrayList<Event>();
        while (rs.next()) {
            
        String eventid = rs.getString("eventid");
        String timeslot = rs.getString("timeslot");
        String name = rs.getString("name");
        String courtid = rs.getString("courtid");
        String staffid = rs.getString("staffid");
        String eventDate = rs.getString("eventDate");
        String description = rs.getString("description");
        
            
        Event event = new Event();
        event.setEventid(eventid);
        event.setTimeslot(timeslot);
        event.setCourtid(courtid);
        event.setStaffid(staffid);
        event.setName(name);
        event.setEventDate(eventDate);
        event.setDescription(description);               
        list.add(event);
        }
        return list;
    }
 
      public static Event findEvent(Connection conn, String eventid) throws SQLException {
 
        String sql = "Select * from event a where a.eventid = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, eventid);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {

        
        String timeslot = rs.getString("timeslot");
        String courtid = rs.getString("courtid");
        String staffid = rs.getString("staffid");
        String name = rs.getString("name");
        String eventDate = rs.getString("eventDate");
        String description = rs.getString("description");   
        Event event = new Event();
        event.setEventid(eventid);
        event.setTimeslot(timeslot);
        event.setCourtid(courtid);
        event.setStaffid(staffid);
        event.setName(name);
        event.setEventDate(eventDate);
        event.setDescription(description);  
            return event;
        }
        return null;
    }
 

    public static void insertEvent(Connection conn, Event event) throws SQLException {
        String sql = "Insert into event(eventid,timeslot,name,courtid,staffid,eventDate,description) values (?,?,?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, event.getEventid());
        pstm.setString(2, event.getTimeslot());
        pstm.setString(4, event.getCourtid());
        pstm.setString(5, event.setStaffid());
        pstm.setString(3, event.getName());
        pstm.setString(6, event.getEventDate());
        pstm.setString(7, event.getDescription());
         
        pstm.executeUpdate();
    }
 
    public static void deleteEvent(Connection conn, String eventid) throws SQLException {
        String sql = "Delete From event where eventid= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, eventid);
 
        pstm.executeUpdate();
    }

    public static void updateEvent(Connection conn, Event event) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
    
}
