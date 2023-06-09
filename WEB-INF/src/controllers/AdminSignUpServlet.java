package controllers;

import models.*;
import utils.GRecaptcha;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/admin.do")
public class AdminSignUpServlet extends HttpServlet{

   public void doPost(HttpServletRequest request, HttpServletResponse response )throws IOException, ServletException{
       String responseToken = request.getParameter("g-recaptcha-response");
      
       if(GRecaptcha.verifyRecaptchaResponse(responseToken)){
       String name = request.getParameter("name");
       String email = request.getParameter("email");
       String password = request.getParameter("password");
    // Google Recaptcha Integration 
    

       System.out.println("hello");

       Admin admin = new Admin(name, email, password);
      
       if(admin.adminSignUp()){
           request.getRequestDispatcher("adminSignIn.jsp").forward(request, response);
           
        }else{
           request.getRequestDispatcher("adminSignUp.jsp").forward(request, response);
           
       }
   }
  }
}