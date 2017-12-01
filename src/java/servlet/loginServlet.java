/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author yanaramli22
 */
public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
              PrintWriter out = response.getWriter();
        String a = request.getParameter("username");
        String b = request.getParameter("password");
        String c = "";
        Statement stmt = null;
        Statement stmt2 = null;
        String username = "";

        try {
            Class.forName("com.mysql.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/utmcourt?useSSL=false", "root", "1234");
            stmt = conn.createStatement();

            String str1 = "select * from user";
            ResultSet rset = stmt.executeQuery(str1);

            stmt2 = conn.createStatement();
            String str2 = "select * from admin";
            ResultSet rset2 = stmt2.executeQuery(str2);

            while (rset2.next()) {
                if (a.equals(rset2.getString("staffid"))) {
                    if (b.equals(rset2.getString("password"))) {
                        response.sendRedirect("asAdmin/homeviewAdmin.jsp");
                    }
                }

            }

            while (rset.next()) {   // Move the cursor to the next row               
                //c = rset.getString("userType");
                if (a.equals(rset.getString("username"))) {
                    //out.print(rset.getString("success"));
                    if (b.equals(rset.getString("password"))) {
                        String d = rset.getString("name");
                        HttpSession session = request.getSession(true);
                        session.setAttribute("userSession", a);
                        session.setAttribute("userSessionName", d);
                        session.setAttribute("userType", c);
                        response.sendRedirect("asUser/homeviewUser.jsp");
                    } else
                        ;
                } else
                   ;
            }
            response.sendRedirect("login.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
