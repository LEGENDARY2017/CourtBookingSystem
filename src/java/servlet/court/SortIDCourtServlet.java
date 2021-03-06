package servlet.court;

import servlet.manageUser.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import beans.Court;
import java.io.PrintWriter;
import utils.DBUtils_court;
import utils.MyUtils;


@WebServlet(urlPatterns = { "/SortCourtid" })
public class SortIDCourtServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    public SortIDCourtServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = MyUtils.getStoredConnection(request);
 
        String errorString = null;
        List<Court> list = null;
        
        try {
            list = DBUtils_court.sortCourtid(conn);
        } catch (SQLException | NullPointerException e) {
            e.printStackTrace();
            errorString = e.getMessage();
            PrintWriter out = response.getWriter();
            out.println("<p style='color: red;'>"+errorString+"</p>");
        }
        // Store info in request attribute, before forward to views
        request.setAttribute("errorString", errorString);
        request.setAttribute("CourtList", list);
         
        // Forward to /WEB-INF/views/productListView.jsp
        RequestDispatcher dispatcher = request.getServletContext()
                .getRequestDispatcher("/asAdmin/courtListSortID.jsp");
        dispatcher.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
 
}