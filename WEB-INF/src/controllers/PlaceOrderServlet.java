package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Orders;
import models.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.*;
import java.io.IOException;



@WebServlet("/Buy.do")


public class PlaceOrderServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws IOException,ServletException{

             request.getRequestDispatcher("buypage.jsp").forward(request, response);
       
       
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
  
       HttpSession session = request.getSession();
                
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String phone_no = request.getParameter("phone");
       Integer pincode = Integer.parseInt(request.getParameter("pincode"));
       String city = request.getParameter("city");
       String state = request.getParameter("state");
       String address = request.getParameter("address");  

       Users user = (Users)session.getAttribute("user");

       System.out.println(address);

       Orders order = new Orders(name, address, email,phone_no, pincode, city, state,user);

       order.addOrder();

       response.sendRedirect("index.jsp");


    }
}
