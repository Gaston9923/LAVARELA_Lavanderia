
package Controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class GestorDBConexion {
    
    private Connection conexion;
    
    public Connection getConexion() {
        return conexion;
    }
    
    public void abrirConexion() {
        try {
            String url = "jdbc:sqlserver://localhost:1433;databaseName=BDLAVARELA";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
            conexion = DriverManager.getConnection(url, "sa", "230799");
            System.out.println("Se conectó a la BD");
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | SQLException e) {
            System.out.println("Error en la conexión");
        }
    }
    
    public void cerrarConexion() {
        try {
            conexion.close();
            System.out.println("Conexión cerrada");

        } catch (SQLException e) {
            System.out.println("Error al cerrar conexión");
        }
    }
    
}
