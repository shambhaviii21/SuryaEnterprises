package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    private static final String ADMIN_USER = "suryaenterprises";
    private static final String ADMIN_PASS = "surya"; 

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        if (ADMIN_USER.equals(user) && ADMIN_PASS.equals(pass)) {
            HttpSession session = request.getSession();
            session.setAttribute("adminLoggedIn", true);
            response.sendRedirect("index.jsp"); 
        } else {
            request.setAttribute("error", "Invalid username or password!");
            request.getRequestDispatcher("adminLogin.jsp").forward(request, response);
        }
    }
}
