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
 
    /*public static Admin findUser(Connection conn, //
            String username, String password) throws SQLException {
 
        String sql = "Select * from user a " //
                + " where a.username = ? and a.password= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
        pstm.setString(2, password);
        ResultSet rs = pstm.executeQuery();
 
        if (rs.next()) {
            String name = rs.getString("name");
            String matricNo = rs.getString("matricNo");
            String faculty = rs.getString("faculty");
            String email = rs.getString("email");
            String contactNo = rs.getString("contactNo");
            UserAccount user = new UserAccount();
            user.setUsername(username);
            user.setPassword(password);
            user.setName(name);
            user.setMatricNo(matricNo);
            user.setFaculty(faculty);
            user.setEmail(email);
            user.setContactNo(contactNo);
            return user;
        }
        return null;
    }
 
   /* public static UserAccount findUser(Connection conn, String username) throws SQLException {
 
        String sql = "Select * from user a "//
                + " where a.username = ? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, username);
 
        ResultSet rs = pstm.executeQuery();
 
        while (rs.next()) {
            String password = rs.getString("password");
            String name = rs.getString("name");
            String matricNo = rs.getString("matricNo");
            String faculty = rs.getString("faculty");
            String email = rs.getString("email");
            String contactNo = rs.getString("contactNo");
            UserAccount user = new UserAccount(username,password,name,matricNo,faculty,email,contactNo);
            
            return user;
        }
        return null;
    }*/
    
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

     
    /*public static void updateUser(Connection conn, UserAccount user) throws SQLException {
        String sql = "Update user set password =?, email =?, ContactNo=? where uesrname=? ";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, user.getPassword());
        pstm.setString(2, user.getEmail());
        pstm.setString(3, user.getContactNo());
        pstm.setString(4, user.getUsername());
        pstm.executeUpdate();
    }*/
 
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
 
    /*public static void deleteUser(Connection conn, String username) throws SQLException {
        String sql = "Delete from user where username= ?";
 
        PreparedStatement pstm = conn.prepareStatement(sql);
 
        pstm.setString(1, username);
 
        pstm.executeUpdate();
    }*/

  
    
    
}
