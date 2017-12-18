/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author yanaramli22
 */
public class Booking {

    private String bookingid;
    private String courtid;
    private String username;
    private String staffid;
    private String dateBook;
    private String start;
    private String end;
    private String feedback;
    
    public Booking() {

    }

    public Booking(String courtid, String username, String staffid, String dateBook, String start, String end, String feedback) {
        this.courtid = courtid;
        this.staffid = staffid;
        this.username = username;
        this.dateBook = dateBook;
        this.start = start;
        this.end = end;
         this.feedback = feedback;
    }
 
      public String getBookingid() {
        return bookingid;
    }

    public void setBookingid(String bookingid) {
        this.bookingid = bookingid;
    }

    public String getCourtid() {
        return courtid;
    }

    public void setCourtid(String courtid) {
        this.courtid = courtid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid;
    }

    public String getDateBook() {
        return dateBook;
    }

    public void setDateBook(String dateBook) {
        this.dateBook = dateBook;
    }

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getEnd() {
        return end;
    }

    public void setEnd(String end) {
        this.end = end;
    }
    
    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
    
}
