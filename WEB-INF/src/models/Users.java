package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

// This Technique is called as Encapsulation... 
public class Users {

    private int User_id;
    private String Name;
    private String Password;
    private String Email;

    public Users(String Name, String Password, String Email) {
        this.Name = Name;
        this.Password = Password;
        this.Email = Email;
    }

    public Users() {
        // No Parameterized Constructor;
    }

    public boolean signUp() {
        boolean flag = false;

        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecart1?user=root&password=9009");

            String Query = "insert into users(name , email , password) values(?,?,?)";

            PreparedStatement pst = con.prepareStatement(Query);

            pst.setString(1, Name);
            pst.setString(2, Password);
            pst.setString(3, Email);

            int count = pst.executeUpdate();

            if (count == 1) {
                flag = true;
            }

            con.close();

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        return flag;
    }

    public boolean SignIn() {
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecart1?user=root&password=9009");

            String Query = "select * from users where email = ? and password = ?";

            PreparedStatement pst = con.prepareStatement(Query);

            pst.setString(1, Email);
            pst.setString(2, Password);

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                User_id = rs.getInt(1);
                Name = rs.getString(2);
                Password = rs.getString(3);

                flag = true;
            }
            con.close();

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean deleteAccount() {
        boolean flag = false;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecart1?user=root&password=9009");

            String Query = "delete from users where email = ?";

            PreparedStatement pst = con.prepareStatement(Query);

            pst.setString(1, Email);

            int count = pst.executeUpdate();
            if (count == 1) {
                flag = true;
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {

            e.printStackTrace();

        }
        return flag;
    }

    // Getter Setters

    public int getUser_id() {
        return User_id;
    }

    public void setUser_id(int user_id) {
        User_id = user_id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

}