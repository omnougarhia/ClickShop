package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import models.Cart;
import models.Users;

import javax.servlet.ServletException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

@WebServlet("/addcart.do")
public class  AddToCartServlet extends HttpServlet {

       public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
   
                   response.setContentType("text/html");

                   HttpSession session = request.getSession();

                   Users user = (Users)session.getAttribute("user");

                   if(user != null ) {

                   

                   try(PrintWriter out = response.getWriter()) {

                    ArrayList<Cart> cartList = new ArrayList<>();

                    int id = Integer.parseInt(request.getParameter("id"));
                    String name = request.getParameter("name");
                    int price = Integer.parseInt(request.getParameter("price"));
                    String category = request.getParameter("category");
                    System.out.println(id);

                    Cart cm = new Cart();
                    cm.setId(id);
                    cm.setName(name);
                    cm.setPrice(price);
                    cm.setCategory(category);
                    cm.setQuantity(1);


                    session.getAttribute("cart-list");

                    ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");

                    if(cart_list == null) {

                         cartList.add(cm);
                         session.setAttribute("cart-list",cartList);
                         // out.print("Session Created and Added To list");
                         response.sendRedirect("cart.jsp");
                    } else {
                         cartList = cart_list;
                         boolean exist = false;

                         for(Cart c : cartList) {
                               if(c.getId() == id) {
                                   exist = true;
                                   out.println("<h3 style = 'color:crimson; text-align:center'>Item already exist in Cart. <a href='cart.jsp'>Go to Cart Page</a> </h3>");
                               }

                         }
                               if(!exist) {
                                   cartList.add(cm);
                                   response.sendRedirect("cart.jsp");
                               }
                          }
                     

                   }

               } else {
                    request.getRequestDispatcher("signIn.jsp").forward(request, response);
               }

       }
    
}
