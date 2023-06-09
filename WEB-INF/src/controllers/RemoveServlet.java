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

@WebServlet("/remove-from cart")
public class RemoveServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");

        HttpSession session = request.getSession();

        Users user = (Users) session.getAttribute("user");

        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");
            if (id != null) {
                ArrayList<Cart> cart_List = (ArrayList<Cart>) request.getSession().getAttribute("cart-list");
                if (cart_List != null) {
                    for (Cart c : cart_List) {
                        if (c.getId() == Integer.parseInt(id)) {
                            cart_List.remove(cart_List.indexOf(c));
                            break;
                        }
                    }
                    response.sendRedirect("cart.jsp");
                }
            } else {
                response.sendRedirect("cart.jsp");
            }
        }
    }
}