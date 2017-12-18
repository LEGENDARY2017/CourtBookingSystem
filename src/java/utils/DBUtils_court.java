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

import beans.Court;
/**
 *
 * @author Lenovo
 */
public class DBUtils_court {
    
    
       public static List<Court> queryCourt(Connection conn) throws SQLException {
        String sql = "Select * from court  ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Court> list = new ArrayList<>();
        while (rs.next()) {
            String courtid = rs.getString("courtid");
            String courtType = rs.getString("courtType");
            String status = rs.getString("status");
            String statusDesc = rs.getString("statusDesc");
            Court court = new Court();
            court.setCourtid(courtid);
            court.setCourtType(courtType);
            court.setStatus(status);
            court.setStatusDesc(statusDesc);
            
            list.add(court);
        }
        return list;
    }
 
    public static Court findCourt(Connection conn, String courtid) throws SQLException {
        String sql = "Select * from court a where a.courtid=?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, courtid);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String courtType = rs.getString("courtType");
            String status = rs.getString("status");
            String statusDesc = rs.getString("statusDesc");
            Court court = new Court(courtid, courtType, status, statusDesc);
            return court;
        }
        return null;
    }
 
    public static void updateCourt(Connection conn, Court court) throws SQLException {
        String sql = "Update court set courtType=? , status =? , statusDesc=? where courtid=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, court.getCourtType());
        pstm.setString(2, court.getStatus());
        pstm.setString(3, court.getStatusDesc());
        pstm.setString(4, court.getCourtid());
        pstm.executeUpdate();
    }
 
    public static void insertCourt(Connection conn, Court court) throws SQLException {
        String sql = "Insert into court(courtid, courtType, status, statusDesc) values (?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, court.getCourtid());
        pstm.setString(2, court.getCourtType());
        pstm.setString(3, court.getStatus());
        pstm.setString(4, court.getStatusDesc());
 
        pstm.executeUpdate();
    }
 
    public static void deleteCourt(Connection conn, String courtid) throws SQLException {
        String sql = "Delete From court where courtid= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, courtid);
 
        pstm.executeUpdate();
    }
}