package models;

public class Products {

    private int Product_id;
    private String Product_name;
    private String Product_price;
    private String Product_Quantity;

    public Products(Integer Product_id, String Product_name, String Product_price, String Product_Quantity) {

        this.Product_id = Product_id;
        this.Product_name = Product_name;
        this.Product_price = Product_price;
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

    public String getProduct_price() {
        return Product_price;
    }

    public void setProduct_price(String product_price) {
        Product_price = product_price;
    }

    public String getProduct_Quantity() {
        return Product_Quantity;
    }

    public void setProduct_Quantity(String product_Quantity) {
        Product_Quantity = product_Quantity;
    }

}
