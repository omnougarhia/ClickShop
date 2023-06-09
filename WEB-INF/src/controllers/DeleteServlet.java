package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;

import models.Users;

import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/del.do")

public class DeleteServlet extends HttpServlet {
    public void doGet(HttpServletRequest request , HttpServletResponse response )throws IOException, ServletException{

        HttpSession session = request.getSession();
        
      Users user =  (Users)session.getAttribute("user");
    
      user.deleteAccount();

 
       request.getRequestDispatcher("signup.jsp").forward(request, response);
    }   
}
