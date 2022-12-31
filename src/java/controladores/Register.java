
// Servlet REGISTER

package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Usuario;
import modelos.UsuarioDAO;


@WebServlet(name = "Register", urlPatterns = {"/register"})
public class Register extends HttpServlet {
    
    //private static final long serialVersionUID = 1L;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Register at " + request.getContextPath() + "</h1>");
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
        RequestDispatcher disp = null;
        String nombreUsuario = (String) request.getParameter("nombre");
        String apellidoUsuario = (String) request.getParameter("apellido");
        String emailUsuario = (String) request.getParameter("email");
        String passwordUsuario = (String) request.getParameter("password");        
        
        Usuario usuario = new Usuario();
	usuario.setNombre(nombreUsuario);        
	usuario.setApellido(apellidoUsuario);
        usuario.setEmail(emailUsuario);
	usuario.setPassword(passwordUsuario);	
                
        /*try {
            usuarioDAO = new UsuarioDAO();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }*/
        
        try {
            UsuarioDAO usuarioDAO = new UsuarioDAO();
            usuarioDAO.save(usuario);
            Class.forName("com.mysql.jdbc.Driver");
            Connection coneccion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectcac","root","1234");       
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.getRequestDispatcher("/index.jsp").forward(request, response); 
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }


}
