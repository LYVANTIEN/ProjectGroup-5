/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Comment;
import entity.Handle;
import entity.Orders;
import entity.Product;
import entity.Profile;
import entity.ShowOrder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import static jdk.nashorn.internal.runtime.Debug.id;

/**
 *
 * @author NGO VU HUY
 */
public class DAO {

    Connection conn = null; // connect to SQL server
    PreparedStatement ps = null;
    PreparedStatement ps1 = null; // move query from Netbeen to SQl
    ResultSet rs = null; // save result query

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCatelogy() {
        List<Category> list = new ArrayList<>();
        String query = "select * from Category";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getProductByID(String id) {
        String query = "select * from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ShowOrder getOrderByID(String id) {
        String query = "select o.orders_ID, o.orders_date,o.user_ID,od.orders_detail_price,od.ten,od.gmail,od.sdt,od.diachi,od.orders_detail_note , o.orders_status\n"
                + "                from Orders o,Orders_Detail od\n"
                + "                where o.orders_ID = od.orders_ID AND o.orders_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ShowOrder(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getLong(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where name like ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass) {
        String query = "select * from Account\n"
                + "where [user] = ?\n"
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)));

            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account checkAccountExits(String user) {
        String query = "select * from Account\n"
                + "where [user] = ?\n";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String query = "insert into Account\n"
                + "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void insertProduct(String name, String image, String price, String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editProduct(String name, String image, String price, String title, String description, String category, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(String uID) {
        String query = "delete from Account\n"
                + "where uID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, uID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Profile> getProfile() {
        List<Profile> list = new ArrayList<>();
        String query = "Select a.uID, p.Name, p.Number, p.Address, p.Email, p.Passwordprotected\n"
                + "                from Profile p, Account a\n"
                + "                where a.uID = p.uID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Profile(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getInt(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void saveProfile(String Name, String Number, String Address, String Email, String Passwordprotected) {
        String query = "update Profile\n"
                + "set [Name] = ?,\n"
                + "[Number] = ?,\n"
                + "[Address] = ?,\n"
                + "[Email] = ?,\n"
                + "[Passwordprotected] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, Name);
            ps.setString(2, Number);
            ps.setString(3, Address);
            ps.setString(4, Email);
            ps.setString(5, Passwordprotected);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<ShowOrder> getOrderList() {
        List<ShowOrder> list = new ArrayList<>();
        String query = "select o.orders_ID, o.orders_date,o.user_ID,od.orders_detail_price,od.ten,od.gmail,od.sdt,od.diachi,od.orders_detail_note , o.orders_status\n"
                + "from Orders o,Orders_Detail od\n"
                + "where o.orders_ID = od.orders_ID ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ShowOrder(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getLong(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertAccount(String uID, String user, String pass, String isSell, String isAdmin) {
        String query = "SET IDENTITY_INSERT Account ON\n"
                + "INSERT [dbo].[Account]  \n"
                + "([uID], [user], [pass], [isSell], [isAdmin])\n"
                + "VALUES(?,?,?,?,?)\n"
                + "SET IDENTITY_INSERT Account OFF ";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, uID);
            ps.setString(2, user);
            ps.setString(3, pass);
            ps.setString(4, isSell);
            ps.setString(5, isAdmin);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void editAccount(String user, String pass, String isSell, String isAdmin, String uID) {
        String query = "update Account\n"
                + "set[user] = ?,\n"
                + "[pass] = ?,\n"
                + "[isSell] = ?,\n"
                + "[isAdmin] = ?\n"
                + "where uID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, isSell);
            ps.setString(4, isAdmin);
            ps.setString(5, uID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Profile getProfileByUID(String uID) {
        String query = "select * from Profile\n"
                + "where uID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, uID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Profile(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6));

            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account getAccountByUID(String uID) {
        String query = "select * from Account\n"
                + "where uID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, uID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {
        }
        return null;
    }

    public Product getProductCart(String txt) {
        String query = "select * from product where id = ?";
        List<Product> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, txt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        1);
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int getTotal() {
        String query = "SELECT COUNT(id) FROM dbo.Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

//    public void addOrder(String orders_ID, String orders_date, String orders_exported_date, String orders_completed_date, String orders_delivery_center, String orders_pay_method, String orders_status, int user_ID, String shoes_ID) {
//        LocalDate curDate = LocalDate.now();
//        String date = curDate.toString();
//        try {
//            String query = "insert into [Orders] value(?,?,?,?,?,?,?,?,?)";
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, orders_ID);
//            ps.setString(1, orders_date);
//            ps.setString(1, orders_exported_date);
//            ps.setString(1, orders_completed_date);
//            ps.setString(1, orders_delivery_center);
//            ps.setString(1, orders_pay_method);
//            ps.setString(1, orders_status);
//            ps.setInt(1, user_ID);
//            ps.setString(1, shoes_ID);
//            ps.executeUpdate();
//            String query1 = "select top 1 orders_ID form [Orders] order by orders_ID desc ";
//            ps1 = conn.prepareStatement(query1);
//            rs = ps.executeQuery();
//            //add bang orderdetail
//            if(rs.next()){
//                
//            }
//        } catch (Exception e) {
//        }
//    }
    public int getTotalProduct() {
        String query = "select count(*) from product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "ORDER BY id\n"
                + "OFFSET ? ROWS FETCH NEXT 9 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, (index - 1) * 9);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteOrder(String orders_ID) {
        String query = "delete from Orders_Detail\n"
                + "                where orders_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, orders_ID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Handle> getAllHandle() {
        List<Handle> list = new ArrayList<>();
        String query = "select * from Handle";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Handle(rs.getString(1),
                        rs.getString(2).trim()));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void UpDateOrderStatus(String id, String status) {
        String query = "update Orders set orders_status = ? WHERE orders_ID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setString(2, id);

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }


    public int addOrder(int id) {
        String query = "insert into [dbo].[Orders] (orders_date,user_ID,orders_status) values (GETDATE(),?,'Pending')";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setInt(1, id);
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public void addOrderDetail(Long sum, int id, String name, String phone, String email, String address, String note) {
        String query = "INSERT INTO [dbo].[Orders_Detail] ([orders_ID] ,[orders_detail_note] ,"
                + "[orders_detail_price] ,[sdt] ,[gmail] ,[ten] ,[diachi]) VALUES "
                + "(?,?,?,?,?,?,?)";

        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setLong(3, sum);
            ps.setInt(1, id);
            ps.setString(6, name);
            ps.setString(4, phone);
            ps.setString(5, email);
            ps.setString(7, address);
            ps.setString(2, note);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void changepass(Account a) {
        String query = "UPDATE Account SET pass = ? WHERE [user] = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
//            rs = ps.executeQuery();// chay cau lenh query nhan ket qua tra ve
            ps.setString(1, a.getPass());
            ps.setString(2, a.getUser());
            ps.executeUpdate();
        } catch (Exception e) {

        }

    }
    // them du lieu comment vao sql
     public void Insertcomment(Comment cmt) {
        String query = "insert into Comment(content,username) values (?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            String content = cmt.getContent();
            String username = cmt.getUsername();
            ps.setString(1, content);
            ps.setString(2, username);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
// hien thi du lieu
    public List<Comment> Displaycomment() {
        List<Comment> list = new ArrayList<>();
        String query = "select * from Comment";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Comment(rs.getString(1),rs.getString(2),
                        rs.getString(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
         List<Comment> list = dao.Displaycomment();
       for(Comment o: list){
           System.out.println(o);
       }
    }

}
