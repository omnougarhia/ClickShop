<%@ page import="models.Users" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="models.Cart" %>

<% ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list"); 
    
         List<Cart> cartProduct = null;
           if(cart_list != null) {

              cartProduct = cart_list;
              session.setAttribute("cart_list", cart_list);
              Cart cart = new Cart();
          double total = cart.getTotalCartPrice(cart_list);
              request.setAttribute("total",total);
           }  


    %>


    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Add Tailwind CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.2.19/tailwind.min.css"
            integrity="sha512-KWahO8OxJxS0hSfhfj6E5V6XDEMQCn1V7J1PSy2skVzD5xI+95V7YxlZZoWgZAZ3q3f2AKcyHjs+WzEe1GjUIw=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="https://cdn.tailwindcss.com"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500&family=Roboto:wght@500;700&display=swap"
            rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://ompublicityjabalpur.com/css/style.css">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
            integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
            integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
            integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
            crossorigin="anonymous"></script>

        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
            integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />

        <title>Document</title>
        
        <style type="text/css">
             .table tbody td {
                vertical-align: middle;
             }

             .btn-incre, .btn-decre {
                 box-shadow: none;
                 font-size:25px;
             }
        </style>

    </head>

    <body>

        <!-- nav bar -->
        <nav class="flex items-center justify-between bg-white p-4 shadow-md">
            <a href="index.jsp" class="text-xl font-bold text-gray-800">Swift Cart</a>
            <ul class="flex">
                <li><a href="Orders" class="mx-4 text-gray-600 hover:text-gray-800"
                        style="font-family: cursive;">Orders</a></li>
                <li><a href="cart.jsp" class="mx-4 text-gray-600 hover:text-gray-800" style="font-family: cursive;">MyCart <span class="badge badge-danger">${ cart_list.size()}</span></a>
                </li>
            </ul>
            <% Users user=(Users)session.getAttribute("user"); %>
                <% if(user !=null) { %>
                    <div class="dropdown">
                        <button class="btn bg-primary text-white dropdown-toggle mr-5" type="button"
                            data-toggle="dropdown" aria-expanded="false">
                            <%= user.getName() %>
                        </button>
                        <div class="dropdown-menu">
                           
                            <a class="dropdown-item" href="del.do">Delete Account</a>
                            <a class="dropdown-item" href="logout.do">LogOut</a>
                        </div>
                    </div>

                    <% } else { %>
                        <button
                            class="rounded bg-blue-500 py-2 px-4 font-bold text-white hover:bg-blue-700 hover:text"><a
                                href="login-outer.jsp">
                                Sign In</a></button>
                        <% } %>





        </nav>
        <div class="container">
            <div class="d-flex py-3">
                <h1>Total Price: INR ${total}</h1> <a href="" class="mx-3 btn btn-primary">Check Out</a>
            </div>
            <table class="table table-loght">
                <thead>
                    <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Category</th>
                        <th scope="col">Price</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Buy Now</th>
                        <th scope="col">Cancel</th>
                    </tr>
                </thead>
                <tbody>
                    <% if(cart_list != null ){
                        for(Cart c: cartProduct) { %>

                            <tr>
                                <td><%= c.getName() %></td>
                                <td><%= c.getCategory() %></td>
                                <td><%= c.getPrice() %> INR</td>
                                <td>
                                    <form action="Order-Now" method="post" class="form-inline">
                                        <input type="hidden" name="id" value="<%= c.getId() %>" class="from-input">
                                        <div class="form-group d-flex justify-content-between">
                                            <a href="" class="btn btn-primary btn-sm btn-incre" href="#"><i
                                                class="fas fa-minus-square"></i></a>
                                            <input type="text" name="quantity" class="form-control" value="1" readonly>
                                            <a href="" class="btn btn-primary btn-sm btn-incre" href="#"><i
                                                class="fas fa-plus-square"></i></a>
                                        </div>
                                    </form>
                                </td>
                                <td><a class="btn btn-sm btn-danger">Buy Now</a></td>
                                <td><a href="remove-from cart?id=<%= c.getId() %> "class="btn btn-sm btn-danger">Remove</a></td>
                            </tr>

                  <%      }
                    } %>
                    
                </tbody>
            </table>
        </div>

    </body>

    </html>