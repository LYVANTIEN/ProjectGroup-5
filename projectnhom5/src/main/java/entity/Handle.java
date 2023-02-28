/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class Handle {
   private String Handle;
  private String ID;

    public Handle() {
    }

    public Handle(String Handle, String ID) {
        this.Handle = Handle;
        this.ID = ID;
    }

    public String getHandle() {
        return Handle;
    }

    public void setHandle(String Handle) {
        this.Handle = Handle;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    @Override
    public String toString() {
        return "Handle{" + "Handle=" + Handle + ", ID=" + ID + '}';
    }
  
   
   
}
