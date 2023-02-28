/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGO VU HUY
 */
public class Orders {
    private String orders_ID;
    private String orders_date;
    private String orders_exported_date;
    private String orders_completed_date;
    private String orders_delivery_center;
    private String orders_pay_method;
    private String orders_status;
    private int user_ID;
    private String shoes_ID;

    public Orders() {
    }

    public Orders(String orders_ID, String orders_date, String orders_exported_date, String orders_completed_date, String orders_delivery_center, String orders_pay_method, String orders_status, int user_ID, String shoes_ID) {
        this.orders_ID = orders_ID;
        this.orders_date = orders_date;
        this.orders_exported_date = orders_exported_date;
        this.orders_completed_date = orders_completed_date;
        this.orders_delivery_center = orders_delivery_center;
        this.orders_pay_method = orders_pay_method;
        this.orders_status = orders_status;
        this.user_ID = user_ID;
        this.shoes_ID = shoes_ID;
    }

    public String getOrders_ID() {
        return orders_ID;
    }

    public void setOrders_ID(String orders_ID) {
        this.orders_ID = orders_ID;
    }

    public String getOrders_date() {
        return orders_date;
    }

    public void setOrders_date(String orders_date) {
        this.orders_date = orders_date;
    }

    public String getOrders_exported_date() {
        return orders_exported_date;
    }

    public void setOrders_exported_date(String orders_exported_date) {
        this.orders_exported_date = orders_exported_date;
    }

    public String getOrders_completed_date() {
        return orders_completed_date;
    }

    public void setOrders_completed_date(String orders_completed_date) {
        this.orders_completed_date = orders_completed_date;
    }

    public String getOrders_delivery_center() {
        return orders_delivery_center;
    }

    public void setOrders_delivery_center(String orders_delivery_center) {
        this.orders_delivery_center = orders_delivery_center;
    }

    public String getOrders_pay_method() {
        return orders_pay_method;
    }

    public void setOrders_pay_method(String orders_pay_method) {
        this.orders_pay_method = orders_pay_method;
    }

    public String getOrders_status() {
        return orders_status;
    }

    public void setOrders_status(String orders_status) {
        this.orders_status = orders_status;
    }

    public int getUser_ID() {
        return user_ID;
    }

    public void setUser_ID(int user_ID) {
        this.user_ID = user_ID;
    }

    public String getShoes_ID() {
        return shoes_ID;
    }

    public void setShoes_ID(String shoes_ID) {
        this.shoes_ID = shoes_ID;
    }
    
}
