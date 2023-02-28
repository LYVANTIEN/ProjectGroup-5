/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class ShowOrder {
    private int id;
    private String date;
    private int user_id;
    private long price;
    private String name;
    private String email;
    private String phone;
    private String address;
    private String note;
    private String status;


    public ShowOrder() {
    }

    public ShowOrder(int id, String date, int user_id, long price, String name, String email, String phone, String address, String note, String status ) {
        this.id = id;
        this.date = date;
        this.user_id = user_id;
        this.price = price;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.note = note;
        this.status = status;
  
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }


    

    
}
