<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart | Surya Enterprises</title>
    <link rel="stylesheet" href="css/cartstyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div id="cart-page">
        <h1>Your Cart</h1>
        <div id="cart-container">
            <table id="cart-table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <%
                    int totalItems = 0;
                    double totalPrice = 0;
                %>
                <tbody id="cart-items">
                    <%
                        String url = "jdbc:mysql://localhost:3306/ecommerce"; 
                        String user = "root"; 
                        String password = "kuhu2104"; 
                        Connection conn = null;
                        PreparedStatement pst = null;
                        ResultSet rs = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection(url, user, password);
                            pst = conn.prepareStatement("SELECT * FROM cart");
                            rs = pst.executeQuery();
                            while (rs.next()) {
                                int id = rs.getInt("id");
                                String name = rs.getString("product_name");
                                double price = rs.getDouble("price");
                                int quantity = rs.getInt("quantity");
                                double total = price * quantity;
                                totalItems += quantity;
                                totalPrice += total;
                    %>
                    <tr data-id="<%= id %>">
                        <td><%= name %></td>
                        <td class="unit-price">₹<%= price %></td>
                        <td><input type="number" class="quantity" value="<%= quantity %>" min="1" data-id="<%= id %>"></td>
                        <td class="total-price"><%= total %></td>
                        <td><button class="remove-btn" data-id="<%= id %>"><i class="ri-delete-bin-line"></i></button></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        } finally {
                            try {
                                if (rs != null) rs.close();
                                if (pst != null) pst.close();
                                if (conn != null) conn.close();
                            } catch (SQLException ex) {
                                ex.printStackTrace();
                            }
                        }
                    %>
                </tbody>
            </table>
        </div>
        
        <div id="cart-summary">
            <h2>Cart Summary</h2>
            <p>Total Items: <span id="total-items"><%= totalItems %></span></p>
            <p>Total Price: <span id="total-price"><%= String.format("%.2f", totalPrice) %></span></p>
            <a href="checkout.jsp">
    <button id="checkout-btn">Proceed to Checkout</button>
</a>

        </div>
    </div>

    <script src="js/cart.js"></script>
    
</body>
</html>
