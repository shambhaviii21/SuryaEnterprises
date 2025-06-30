package servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentSuccess")
public class PaymentSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentId = request.getParameter("payment_id");
        String amount = request.getParameter("amount");
        
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO orders (payment_id, amount, order_date) VALUES (?, ?, NOW())";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, paymentId);
            stmt.setString(2, amount);
            stmt.executeUpdate();

            // Optional: Clear cart
            PreparedStatement clearCart = conn.prepareStatement("DELETE FROM cart");
            clearCart.executeUpdate();

            response.sendRedirect("thankyou.jsp?pid=" + paymentId);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
