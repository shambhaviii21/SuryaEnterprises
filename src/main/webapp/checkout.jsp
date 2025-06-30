<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout | Surya Enterprises</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Fonts and Styles -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #f8f9fa;
            padding-top: 50px;
        }

        .checkout-container {
            max-width: 900px;
            margin: auto;
            background: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        h2 {
            font-weight: 600;
            margin-bottom: 30px;
            text-align: center;
        }

        label {
            font-weight: 500;
        }

        .order-summary {
            background-color: #f1f1f1;
            padding: 20px;
            border-radius: 10px;
        }

        .btn-checkout {
            background-color: black;
            color: white;
            border: none;
            width: 100%;
            padding: 12px;
            border-radius: 6px;
            font-size: 1.1rem;
        }

        .btn-checkout:hover {
            background-color: #333;
        }

        .total-label {
            font-weight: 600;
        }
    </style>
</head>
<body>

<div class="checkout-container">
    <h2>Checkout</h2>

    <!-- Customer Info -->
    <form id="checkout-form">
        <div class="row mb-4">
            <div class="col-md-6">
                <label for="name" class="form-label">Full Name</label>
                <input type="text" id="name" class="form-control" placeholder="Enter your name" required>
            </div>
            <div class="col-md-6">
                <label for="contact" class="form-label">Phone Number</label>
                <input type="text" id="contact" class="form-control" placeholder="Enter your number" required>
            </div>
        </div>
        <div class="mb-4">
            <label for="email" class="form-label">Email address</label>
            <input type="email" id="email" class="form-control" placeholder="Enter your email" required>
        </div>
    </form>

    <!-- Order Summary -->
    <div class="order-summary my-4">
        <h5>Order Summary</h5>
        <%
            double total = 0;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce", "root", "kuhu2104");
                PreparedStatement pst = con.prepareStatement("SELECT * FROM cart");
                ResultSet rs = pst.executeQuery();
        %>
        <ul class="list-group list-group-flush">
            <% while(rs.next()) {
                String pname = rs.getString("product_name");
                int qty = rs.getInt("quantity");
                double price = rs.getDouble("price");
                double subtotal = qty * price;
                total += subtotal;
            %>
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <%= pname %> × <%= qty %>
                    <span>₹<%= subtotal %></span>
                </li>
            <% } %>
        </ul>
        <hr>
        <div class="d-flex justify-content-between">
            <span class="total-label">Total:</span>
            <span class="total-label">₹<%= String.format("%.2f", total) %></span>
        </div>
        <%
            rs.close();
            pst.close();
            con.close();
        } catch(Exception e) {
            out.println("<p>Error fetching order details.</p>");
            e.printStackTrace();
        }
        %>
    </div>


    <!-- Razorpay Button -->
    <button id="rzp-button" class="btn-checkout">Proceed to Pay</button>
</div>

<!-- Razorpay Script -->
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script src="js/payment.js"></script>

</body>
</html>
