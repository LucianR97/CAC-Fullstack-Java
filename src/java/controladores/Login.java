
// Servlet LOGIN

package controladores;

import config.Conexion;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "Login", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String emailUsuario = (String) request.getParameter("email");
        String passwordUsuario = (String) request.getParameter("password");
        HttpSession session = request.getSession();
        RequestDispatcher disp = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection coneccion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectocac","root","1234");
            final String QUERY = "SELECT * FROM usuarios WHERE email = ? AND password = ?";
            PreparedStatement preState = coneccion.prepareStatement(QUERY);
            preState.setString(1,emailUsuario);
            preState.setString(2,passwordUsuario);
            ResultSet rs = preState.executeQuery();

            if (rs.next()){
                session.setAttribute("email", rs.getString(1));
                request.getRequestDispatcher("/index.jsp").forward(request, response);                
            } else {
                session.setAttribute("status", "Usuario No Registrado");
                request.getRequestDispatcher("/register.jsp").forward(request, response);
            }
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
