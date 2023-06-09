package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;

@WebServlet("/")
public class ProductServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
       
        request.getRequestDispatcher("").forward(request, response);
    
        }

    public void doPost(HttpServletRequest request , HttpServletResponse response )throws IOException, ServletException{
    
         
    }  
}
