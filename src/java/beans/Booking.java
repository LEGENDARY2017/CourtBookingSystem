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
    private String timeslot;
    private String feedback;
    
    public Booking() {

    }

    public Booking(String bookingid, String courtid, String username, String dateBook, String timeslot, String feedback) {
        this.bookingid = bookingid;
        this.courtid = courtid;
        this.username = username;
        this.dateBook = dateBook;
        this.timeslot = timeslot;
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

    public String getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(String timeslot) {
        this.timeslot = timeslot;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
    
}
