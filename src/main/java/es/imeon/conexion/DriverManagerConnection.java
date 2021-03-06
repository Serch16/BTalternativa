package es.imeon.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import es.imeon.helper.Conexion;

public class DriverManagerConnection implements GenericConnection {

    @Override
    public Connection crearConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://" + Conexion.getDatabaseHost() + ":" + Conexion.getDatabasePort() + "/" + Conexion.getDatabaseName(), Conexion.getDatabaseLogin(), Conexion.getDatabasePassword());
            return connection;
        } catch (ClassNotFoundException | SQLException ex) {
            throw new RuntimeException(ex);
        }
    }

}