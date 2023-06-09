package controllers;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;


@WebServlet("/logout.do")

public class LogOutServlet extends HttpServlet{

    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{

      HttpSession session = request.getSession();
      
      session.invalidate();  
      request.setAttribute("logout", "yes");
      request.getRequestDispatcher("signIn.jsp").forward(request, response);
    }
    
}
