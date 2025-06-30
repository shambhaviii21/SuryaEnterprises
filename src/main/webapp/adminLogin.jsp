<%-- <!DOCTYPE html>
<html>
<head>
    <title>Admin Login - Surya Enterprises</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <input type="text" name="username" placeholder="Enter username" required><br>
            <input type="password" name="password" placeholder="Enter password" required><br>
            <button type="submit">Login</button>
        </form>
        <% if (request.getAttribute("error") != null) { %>
            <p style="color:red;"><%= request.getAttribute("error") %></p>
        <% } %>
    </div>
</body>
</html>
 --%>
 
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login - Surya Enterprises</title>
    <link rel="stylesheet" href="css/styles.css">
    <style>
        /* Full-page background image */
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            background: url('pictures/loginpage.png') no-repeat center center fixed; /* Replace with your background image */
            background-size: cover;
            font-family: 'Arial', sans-serif;
        }

        /* Center the login container */
        .login-container {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: rgba(0, 0, 0, 0.8); /* Dark overlay for contrast */
            color: white;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.5);
            width: 350px;
            text-align: center;
        }

        .login-container h2 {
            font-size: 26px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 15px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            background-color: rgba(255, 255, 255, 0.9);
            color: #333;
            font-size: 16px;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0px 0px 5px rgba(0, 123, 255, 0.6);
        }

        .login-container button {
            width: 100%;
            padding: 12px;
            background-color: #FFFFFF;
            border: none;
            border-radius: 8px;
            color: black;
            font-size: 18px;
            transition: background-color 0.3s, color 0.3s;
        }

        .login-container button:hover {
            background-color: #343a40;
            color: white;
        }

        .login-container p {
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        .login-container .form-group {
            margin-bottom: 20px;
        }

        /* Add responsive styles for smaller screens */
        @media (max-width: 600px) {
            .login-container {
                width: 80%;
                padding: 30px;
            }

            .login-container h2 {
                font-size: 22px;
            }
        }

    </style>
</head>
<body>
    <div class="login-container">
        <h2>Admin Login</h2>
        <form action="AdminLoginServlet" method="post">
            <div class="form-group">
                <input type="text" name="username" placeholder="Enter username" required><br>
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Enter password" required><br>
            </div>
            <button type="submit">Login</button>
        </form>
        <% if (request.getAttribute("error") != null) { %>
            <p><%= request.getAttribute("error") %></p>
        <% } %>
    </div>
</body>
</html>
 