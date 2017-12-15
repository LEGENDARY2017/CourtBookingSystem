/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;


/**
 *
 * @author yanaramli22
 */

import beans.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils_admin {
 
    public static Admin findAdmin(Connection conn, //
            String staffid, String password) throws SQLException {
 
        String sql = "Select * from admin a " //
                + " where a.staffid = ? and a.password= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, staffid);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String name = rs.getString("name");
            String email = rs.getString("email");
            String contactNo = rs.getString("contactNo");
            Admin admin = new Admin();
            admin.setStaffid(staffid);
            admin.setName(name);
            admin.setPassword(password);
            admin.setEmail(email);
            admin.setContactNo(contactNo);
            return admin;
        }
        return null;
    }
 
    public static Admin findAdmin(Connection conn, String staffid) throws SQLException {
 
        String sql = "Select * from admin a where a.staffid = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, staffid);
 
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String name = rs.getString("name");
            String password = rs.getString("password");
            String email = rs.getString("email");
            String contactNo = rs.getString("contactNo");
            Admin admin = new Admin();
            admin.setStaffid(staffid);
            admin.setName(name);
            admin.setPassword(password);
            admin.setEmail(email);
            admin.setContactNo(contactNo);
            return admin;
        }
        return null;
    }
    
    public static List<Admin> queryAdmin(Connection conn) throws SQLException {
        String sql = "Select * from admin";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        ResultSet rs = pstm.executeQuery();
        List<Admin> list = new ArrayList<>();
        while (rs.next()) {
            String staffid = rs.getString("staffid");
            String name = rs.getString("name");
            String email = rs.getString("email");
            String contactNo = rs.getString("contactNo");
            String password = rs.getString("password");
            Admin admin = new Admin();
            admin.setStaffid(staffid);
            admin.setName(name);
            admin.setEmail(email);
            admin.setContactNo(contactNo);
            admin.setPassword(password);
            list.add(admin);
        }
        return list;
    }

     
     public static void updateAdmin(Connection conn, Admin admin) throws SQLException {
        String sql = "Update admin set password =?, email=?, contactNo=? where staffid=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, admin.getPassword());
        pstm.setString(2, admin.getEmail());
        pstm.setString(3, admin.getContactNo());
        pstm.setString(4, admin.getStaffid());
        pstm.executeUpdate();
    }
 
    public static void insertAdmin(Connection conn, Admin admin) throws SQLException {
        String sql = "Insert into admin(staffid, name, password, email, contactNo) values (?,?,?,?,?)";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, admin.getStaffid());
        pstm.setString(2, admin.getName());
        pstm.setString(3, admin.getPassword());
        pstm.setString(4, admin.getEmail());
        pstm.setString(5, admin.getContactNo());
        
         
        pstm.executeUpdate();
    }
 
    public static void deleteAdmin(Connection conn, String staffid) throws SQLException {
        String sql = "Delete from admin where staffid= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, staffid);
 
        pstm.executeUpdate();
    }

  
    
    
}
