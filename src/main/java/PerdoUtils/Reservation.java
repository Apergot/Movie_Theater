/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PerdoUtils;

/**
 *
 * @author Apergot
 */
public class Reservation {
    
    private String name;
    private String phone;
    private String email;
    private String date;
    private String time;
    private String id;

    public Reservation(String name, String phone, String email, String date, String time, String id) {
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.date = date;
        this.time = time;
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public String getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public String getDate() {
        return date;
    }

    public String getTime() {
        return time;
    }

    public String getId() {
        return id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setId(String id) {
        this.id = id;
    }
    
    
    
}
