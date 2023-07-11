/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Account> getAllAccount() {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getTop3() {
        List<Product> list = new ArrayList<>();
        String query = "select top 3 * from product";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getNext3Product(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "order by id\n"
                + "OFFSET ? ROWS\n"
                + "FETCH NEXT 3 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Product> getAllProductByCategoryID(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product \n"
                + "where cateID = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Product getAllProductById(String id) {
        String query = "select * from product \n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product \n"
                + "where [name] like ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + txtSearch + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Account login(String user, String pass) {
        String query = "select * from Account \n"
                + "where [user] = ? "
                + "and pass = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public Account checkExistAccount(String user) {
        String query = "select * from Account \n"
                + "where [user] = ? ";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void signup(String user, String pass) {
        String query = "insert into Account \n"
                + "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Product> getAllProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where [sell_ID] = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from product\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void deleteAccount(String aid) {
        String query = "delete from Account\n"
                + "where uID = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void deleteCart(String cid) {
        String query = "delete from Cart\n"
                + "where ProductID = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Account getAllAccountByID(String id) {
        String query = "select * from Account\n"
                + "where [uID] = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)
                );
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertProduct(String name, String image, String price, String title, String description, String category, int sid) {
        String query = "INSERT INTO product ([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES (?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
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
                + "[price] = ?,\n"
                + "[title] = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
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

    public void editAccount(String username, String password, String isSell, String isAdmin, String aid) {
        String query = "UPDATE [dbo].[Account]\n"
                + "   SET [user] = ?\n"
                + "      ,[pass] = ?\n"
                + "      ,[isSell] = ?\n"
                + "      ,[isAdmin] = ?\n"
                + " WHERE [uID] = ?";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.setString(3, isSell);
            ps.setString(4, isAdmin);
            ps.setString(5, aid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int getTotalProduct() {
        String query = "select count (*) from product";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
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
                + "order by id\n"
                + "OFFSET ? ROWS FETCH NEXT 10 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 10);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)
                ));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void addToCart(int userID, int productID) {
        String query = "INSERT INTO Cart "
                + "(AccountID, ProductID, Amount)"
                + " VALUES (?, ?, 1)";
        try {
            conn = new DBContext().getConnection();//ket noi SQL
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            ps.setInt(2, productID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public List<Cart> getAllProductInCart(int userID) {
        List<Cart> cartItems = new ArrayList<>();
        String query = "SELECT c.AccountID, c.ProductID, c.Amount, p.image, p.name, p.price "
                + "FROM Cart c "
                + "JOIN product p ON c.ProductID = p.id "
                + "JOIN Account a ON c.AccountID = a.uID "
                + "WHERE a.uID = ?";

        try {
            conn = new DBContext().getConnection();  // Get database connection
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();

            while (rs.next()) {
                int accountID = rs.getInt("AccountID");
            int productID = rs.getInt("ProductID");
            int amount = rs.getInt("Amount");
            String image = rs.getString("image");
            String name = rs.getString("name");
            double price = rs.getDouble("price");

            Cart cartItem = new Cart(accountID, productID, amount);
            cartItem.setImage(image);
            cartItem.setName(name);
            cartItem.setPrice(price);
            cartItems.add(cartItem);
            }
        } catch (Exception e) {
        } 
        return cartItems;
    }

    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.pagingProduct(4);
        for (Product o : list) {
            System.out.println(o);
        }
    }
}
