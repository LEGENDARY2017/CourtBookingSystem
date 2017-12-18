/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author amyliaahamad
 */
public class Court {
    private String courtid;
    private String courtType;
    private String status;
    private String statusDesc;
    
    public Court()
    {}
    
    public Court ( String courtid, String courtType, String status, String statusDesc )
    {
        this.courtid = courtid;
        this.courtType = courtType;
        this.status = status;
        this.statusDesc = statusDesc;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatusDesc() {
        return statusDesc;
    }

    public void setStatusDesc(String statusDesc) {
        this.statusDesc = statusDesc;
    }

    
   
}
