package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class Orders {

    private String Name;
    private String Address;
    private String Email;
    private String PhoneNo;
    private Integer Pincode;
    private String City;
    private String state;
    private Users user;
    
    public Orders(){
        // No parameterized Constructor..
    }


    public Orders(String name, String address, String email, String phoneNo, Integer pincode, String city,
            String state,Users user) {
        this.Name = name;
        this.Address = address;
        this.Email = email;
        this.PhoneNo = phoneNo;
        this.Pincode = pincode;
        this.City = city;
        this.state = state;
        this.user = user;
    }

    public boolean addOrder() {

          boolean flag = false;

           try {

                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecart1?user=root&password=9009");

                String query = "insert into Orders(name, address, email, phone_no, city, state, user_id) values(?,?,?,?,?,?,?)";

                PreparedStatement pst = con.prepareStatement(query);

                pst.setString(1, Name);
                pst.setString(2, Address);
                pst.setString(3,Email);
                pst.setString(4, PhoneNo);
                pst.setString(5, City);
                pst.setString(6, state);
                pst.setInt(7,user.getUser_id());

               int count = pst.executeUpdate();

               con.close();

               if(count ==  1) {
                flag = true;
               }

           } catch(SQLException|ClassNotFoundException e) {

              e.printStackTrace();
           }
                
           return flag;
    } 



    // Generating Getter Setters

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public String getPhoneNo() {
        return PhoneNo;
    }

    public void setPhoneNo(String phoneNo) {
        PhoneNo = phoneNo;
    }

    public Integer getPincode() {
        return Pincode;
    }

    public void setPincode(Integer pincode) {
        Pincode = pincode;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        City = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

}
