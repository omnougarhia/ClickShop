package models;

import java.util.ArrayList;

public class Cart {
  
       private Integer Id;
       private String Name;
       private Integer Quantity;
       private Integer Price;
       private String Category;
       
      
      
       public double getTotalCartPrice(ArrayList<Cart> cartList) {

              double sum = 0;

              for(Cart c : cartList) {
                 sum += c.getPrice();
              }


             return sum;
       } 
       
      
       public String getCategory() {
        return Category;
    }




    public void setCategory(String category) {
        Category = category;
    }




    public Cart(){
        

       }


       

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public Integer getQuantity() {
        return Quantity;
    }

    public void setQuantity(Integer quantity) {
        Quantity = quantity;
    }

    public Integer getPrice() {
        return Price;
    }

    public void setPrice(Integer price) {
        Price = price;
    }


}
