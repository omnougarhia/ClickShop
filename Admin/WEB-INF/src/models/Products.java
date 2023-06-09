package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Products {

    private int Product_id;
    private String Product_name;
    private Integer Product_price;
    private Integer Product_Quantity;
    private String description;

    public Products( String Product_name, Integer Product_price, Integer Product_Quantity, String description) {

        
        this.Product_name = Product_name;
        this.Product_price = Product_price;
        this.Product_Quantity = Product_Quantity;
        this.description = description;
    }

    public boolean AddProducts(){

        boolean flag = false;

        try{

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Ecart?user=root&password=OmSql877@");

            String query = "insert into products(prod_name , prod_price , prod_quantity, description) values(?,?,?,?)";


            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, Product_name);
            ps.setInt(2, Product_price);
            ps.setInt(3, Product_Quantity);
            ps.setString(4, description);
        

           int count  = ps.executeUpdate();
           if(count==1){
            flag = true;
           }

          con.close();

        }catch(ClassNotFoundException| SQLException e){
            e.printStackTrace();

        }
        return flag;
    }

    // Getters and Setters;

    public int getProduct_id() {
        return Product_id;
    }

    public void setProduct_id(int product_id) {
        Product_id = product_id;
    }

    public String getProduct_name() {
        return Product_name;
    }

    public void setProduct_name(String product_name) {
        Product_name = product_name;
    }

    public Integer getProduct_price() {
        return Product_price;
    }

    public void setProduct_price(Integer product_price) {
        Product_price = product_price;
    }

    public Integer getProduct_Quantity() {
        return Product_Quantity;
    }

    public void setProduct_Quantity(Integer product_Quantity) {
        Product_Quantity = product_Quantity;
    }

}
