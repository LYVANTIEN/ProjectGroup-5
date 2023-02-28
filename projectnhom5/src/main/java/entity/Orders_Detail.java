/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class Orders_Detail {
    private int orders_detail_ID;
    private String orders_ID;
    private float orders_detail_size;
    private int orders_detail_amount;
    private String orders_detail_note;
    private float orders_detail_price;

    public Orders_Detail() {
    }

    public Orders_Detail(int orders_detail_ID, String orders_ID, float orders_detail_size, int orders_detail_amount, String orders_detail_note, float orders_detail_price) {
        this.orders_detail_ID = orders_detail_ID;
        this.orders_ID = orders_ID;
        this.orders_detail_size = orders_detail_size;
        this.orders_detail_amount = orders_detail_amount;
        this.orders_detail_note = orders_detail_note;
        this.orders_detail_price = orders_detail_price;
    }

    public int getOrders_detail_ID() {
        return orders_detail_ID;
    }

    public void setOrders_detail_ID(int orders_detail_ID) {
        this.orders_detail_ID = orders_detail_ID;
    }

    public String getOrders_ID() {
        return orders_ID;
    }

    public void setOrders_ID(String orders_ID) {
        this.orders_ID = orders_ID;
    }

    public float getOrders_detail_size() {
        return orders_detail_size;
    }

    public void setOrders_detail_size(float orders_detail_size) {
        this.orders_detail_size = orders_detail_size;
    }

    public int getOrders_detail_amount() {
        return orders_detail_amount;
    }

    public void setOrders_detail_amount(int orders_detail_amount) {
        this.orders_detail_amount = orders_detail_amount;
    }

    public String getOrders_detail_note() {
        return orders_detail_note;
    }

    public void setOrders_detail_note(String orders_detail_note) {
        this.orders_detail_note = orders_detail_note;
    }

    public float getOrders_detail_price() {
        return orders_detail_price;
    }

    public void setOrders_detail_price(float orders_detail_price) {
        this.orders_detail_price = orders_detail_price;
    }
    
}
