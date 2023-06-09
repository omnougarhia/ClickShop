package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Users;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.*;

@WebServlet("/signIn.do")

public class SignInServlet  extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response )throws IOException, ServletException{
      
        HttpSession session = request.getSession();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");


         Users user = new Users();

         user.setEmail(email);
         user.setPassword(password);

         if(user.SignIn()) {
              session.setAttribute("user", user);
              session.setAttribute("success", "yes");
              response.sendRedirect("index.jsp");

         }else{
            request.setAttribute("er", "yes");
            request.getRequestDispatcher("signIn.jsp").forward(request, response);
         }
        
    }
}
