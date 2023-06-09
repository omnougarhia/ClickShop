package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/adminSignIn.do")

public class AdminSignInServlet  extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response )throws IOException, ServletException{
      
        System.out.println("skjfhsdhf");
        HttpSession session = request.getSession();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");


         Admin admin = new Admin();

         admin.setEmail(email);
         admin.setPassword(password);
         System.out.println("om singrore");

         if(admin.adminSignIn()) {
              System.out.println("uusduusuuds");
              session.setAttribute("admin", admin);
              request.setAttribute("success", "yes");
              getServletContext().setAttribute("admin",admin);
              response.sendRedirect("http://localhost:8080/addmin1/");
            //   request.getRequestDispatcher("index.jsp").forward(request, response);

         }else{
            request.setAttribute("er", "yes");
            request.getRequestDispatcher("signIn.jsp").forward(request, response);
         }
        
    }
}
