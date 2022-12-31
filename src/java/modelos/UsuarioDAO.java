
// Class UsuarioDAO

package modelos;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

public class UsuarioDAO implements DAO<Usuario> {
    
    Connection conexion;

    public UsuarioDAO() throws ClassNotFoundException {
        Conexion con = new Conexion();
        conexion = con.getConexion();
    }    
    
    // Guardar Nuevo Usuario
    @Override
    public void save(Usuario usuario) throws SQLException { 
        
        String query = "INSERT INTO usuarios";
	query += " (nombre, apellido, email, password)";
	query += " values (?,?,?,?)";

        PreparedStatement ps;
        
	ps = conexion.prepareStatement(query);

	ps.setString(1, usuario.getNombre());
	ps.setString(2, usuario.getApellido());
	ps.setString(3, usuario.getEmail());
	ps.setString(4, usuario.getPassword());

	ps.executeUpdate();

	conexion.close(); 
    }

    // Actualizar Nuevo Usuario    
    @Override
    public void update(Usuario usuario) throws SQLException {
    }
    
    // Eliminar Usuario x Id
    @Override
    public void delete(int id) throws SQLException {
    }
    
    // Ver Usuario x Id
    @Override
    public Usuario getById(int id) throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    // Listar Usuarios
    @Override
    public List<Usuario> getAll() throws SQLException {
        throw new UnsupportedOperationException("Not supported yet."); 
    }
    
}
