/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import beans.UserAccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import utils.DBUtils;
import utils.MyUtils;

/**
 *
 * @author yanaramli22
 */
/*public class loginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     
    
     @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward to /WEB-INF/views/loginView.jsp
        // (Users can not access directly into JSP pages placed in WEB-INF)
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("login.jsp");
 
        dispatcher.forward(request, response);
 
    }
    
     @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String a = request.getParameter("username");
        String b = request.getParameter("password");
        String c = "";
        Statement stmt = null;
        Statement stmt2 = null;
        String username = "";
        UserAccount user = null;
        
         
        Connection conn = MyUtils.getStoredConnection(request);
         try {
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
                        
                        MyUtils.storeLoginedUser(session, user);
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
}*/

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class loginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public loginServlet() {
        super();
    }
 
    // Show Login page.
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        // Forward to /WEB-INF/views/loginView.jsp
        // (Users can not access directly into JSP pages placed in WEB-INF)
        RequestDispatcher dispatcher //
                = this.getServletContext().getRequestDispatcher("/login.jsp");
 
        dispatcher.forward(request, response);
 
    }
 
    // When the user enters userName & password, and click Submit.
    // This method will be executed.
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
 
        UserAccount user = null;
        boolean hasError = false;
        String errorString = null;
 
        if (username == null || password == null || username.length() == 0 || password.length() == 0) {
            hasError = true;
            errorString = "Required username and password!";
        } else {
            Connection conn = MyUtils.getStoredConnection(request);
            try {
                // Find the user in the DB.
                user = DBUtils.findUser(conn, username, password);
 
                if (user == null) {
                    hasError = true;
                    errorString = "User Name or password invalid";
                }
            } catch (SQLException e) {
                e.printStackTrace();
                hasError = true;
                errorString = e.getMessage();
            }
        }
        // If error, forward to /WEB-INF/views/login.jsp
        if (hasError) {
            user = new UserAccount();
            user.setUsername(username);
            user.setPassword(password);
 
            // Store information in request attribute, before forward.
            request.setAttribute("errorString", errorString);
            request.setAttribute("user", user);
 
            // Forward to /WEB-INF/views/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/login.jsp");
 
            dispatcher.forward(request, response);
        }
        // If no error
        // Store user information in Session
        // And redirect to userInfo page.
        else {
            HttpSession session = request.getSession();
            MyUtils.storeLoginedUser(session, user);
 
            
            // Redirect to userInfo page.
            response.sendRedirect(request.getContextPath() + "/HomeUser");
        }
    }
 
}


        