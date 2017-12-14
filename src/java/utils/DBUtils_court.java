/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import beans.CourtDetail;
/**
 *
 * @author Lenovo
 */
public class DBUtils_court {
    
    public static List<CourtDetail> queryCourt(Connection conn) throws SQLException {
        String sql = "Select a.courtid, a.courtType, a.date, a.timeslot, a.staffid from court a ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<CourtDetail> list = new ArrayList<CourtDetail>();
        while (rs.next()) {
            String courtid = rs.getString("courtid");
            String courtType = rs.getString("courtType");
            String timeslot = rs.getString("timeslot");
            
            CourtDetail court = new CourtDetail();
            court.setCourtid(courtid);
            court.setCourtType(courtType);
            court.setTimeslot(timeslot);
                       
            list.add(court);
        }
        return list;
    }
 
     public static CourtDetail findCourt(Connection conn, String courtid) throws SQLException {
        String sql = "Select a.courtid, a.courtType, a.timeslot, from court a where a.courtid=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, courtid);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String courtType = rs.getString("courtType");
            CourtDetail court = new CourtDetail(courtid, courtType);
            return court;
        }
        return null;
    }
 

    public static void insertCourt(Connection conn, CourtDetail court) throws SQLException {
        String sql = "Insert into court(courtid, courtType) values (?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, court.getCourtid());
        pstm.setString(2, court.getCourtType());
         
        pstm.executeUpdate();
    }
 
    public static void deleteCourt(Connection conn, String courtid) throws SQLException {
        String sql = "Delete From court where courtid= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, courtid);
 
        pstm.executeUpdate();
    }
    
}
