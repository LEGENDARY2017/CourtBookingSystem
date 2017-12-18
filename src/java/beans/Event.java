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
public class Event {

    private String eventid;
    private String timeslot;
    private String courtid;
    private String staffid;
    private String name;
    private String eventDate;
    private String description;

    public Event() {

    }

    public Event(String eventid, String timeslot, String courtid, String staffid, String name, String eventDate, String description) {
        this.eventid = eventid;
        this.timeslot = timeslot;
        this.courtid = courtid;
        this.staffid = staffid;
        this.name = name;
        this.eventDate = eventDate;
        this.description = description;

    }

    public String getEventid() {
        return eventid;
    }

    public void setEventid(String eventid) {
        this.eventid = eventid;
    }

    public String getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(String timeslot) {
        this.timeslot = timeslot;
    }
    
    public String getCourtid() {
        return courtid;
    }

    public void setCourtid(String courtid) {
        this.courtid = courtid;
    }
    
    public String getStaffid() {
        return staffid;
    }

    public void setStaffid(String staffid) {
        this.staffid = staffid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEventDate() {
        return eventDate;
    }

    public void setEventDate(String eventDate) {
        this.eventDate = eventDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String setStaffid() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    

    

}
