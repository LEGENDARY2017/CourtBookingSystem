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
public class CourtDetail {

    private String courtid;
    private String courtType;

    private String timeslot;

    public CourtDetail() {

    }

    public CourtDetail(String id, String type) {
        courtid = id;
        courtType = type;
        timeslot = "8";
        // alleged date, timeslot and staffid should be here
    }

    public String getCourtid() {
        return courtid;
    }

    public void setCourtid(String courtid) {
        this.courtid = courtid;
    }

    public String getCourtType() {
        return courtType;
    }

    public void setCourtType(String courtType) {
        this.courtType = courtType;
    }

    public String getTimeslot() {
        return timeslot;
    }

    public void setTimeslot(String timeslot) {
        this.timeslot = timeslot;
    }

}
