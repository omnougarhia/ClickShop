package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;

import models.Products;

@WebServlet("/addproduct.do")

public class AddProductServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response )throws IOException, ServletException{
       System.out.println("8888888");
        String name = request.getParameter("productname");
        Integer quantity = Integer.parseInt(request.getParameter("quantity"));  
        Integer price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");

        System.out.println("iiiiiiiiiiii");
        Products products = new Products(name, price, quantity, description);
System.out.println("ppppppppppppppppp");
        if(products.AddProducts()) {
System.out.println("jjjjjjjjjjjjj");
              request.setAttribute("success", "Successfully Product Added");
              request.getRequestDispatcher("addproduct.jsp").forward(request,response);
            
        }  else {

              request.setAttribute("failed", "Product Not Added");

        }
    }
}
