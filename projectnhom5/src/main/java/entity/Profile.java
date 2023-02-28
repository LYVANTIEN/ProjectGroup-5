/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class Profile {
    private int uID;
    private String Name;
    private int Number;
    private String Address;
    private String Email;
    private int Passwordprotected;

    public Profile() {
    }

    public Profile(int uID, String Name, int Number, String Address, String Email, int Passwordprotected) {
        this.uID = uID;
        this.Name = Name;
        this.Number = Number;
        this.Address = Address;
        this.Email = Email;
        this.Passwordprotected = Passwordprotected;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getNumber() {
        return Number;
    }

    public void setNumber(int Number) {
        this.Number = Number;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String Address) {
        this.Address = Address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public int getPasswordprotected() {
        return Passwordprotected;
    }

    public void setPasswordprotected(int Passwordprotected) {
        this.Passwordprotected = Passwordprotected;
    }

    @Override
    public String toString() {
        return "Profile{" + "uID=" + uID + ", Name=" + Name + ", Number=" + Number + ", Address=" + Address + ", Email=" + Email + ", Passwordprotected=" + Passwordprotected + '}';
    }
    
}
