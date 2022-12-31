
// Config Conexion Class

/* Coneccion a base de datos */

package config;

import java.sql.Connection;
import java.sql.DriverManager;/*
import java.sql.PreparedStatement;*/
import java.sql.SQLException;


public class Conexion {
    
    public Connection getConexion() throws ClassNotFoundException{
        Connection conexion = null;        
        try {        
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectocac","root","1234");                        
        } catch(SQLException e){            
            System.out.println(e.toString());
            return null;              
        }   
        return conexion;        
    }
/*
    public PreparedStatement preparedStatement(String QUERY) throws ClassNotFoundException {
        Connection conexion = null; 
        try {        
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectoweb","root","DATOSsecretos@1232");                        
        } catch(SQLException e){            
            System.out.println(e.toString());
            return null;              
        }  
        return null;
    }
 */  
}
