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
public class Admin {
    private String staffid;
    private String name;
    private String password;
    private String email;
    private String contactNo;
    
     public Admin() {

    }

    public Admin(String staffid, String name, String password,String email, String contactNo) {
        
        this.staffid = staffid;
        this.name = name;
        this.password = password;
        this.email = email;
        this.contactNo = contactNo;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }
    
    
}
