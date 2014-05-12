package net.daw.helper;

public class Conexion {

    public static enum Tipo_conexion {

        DataSource,
        DriverManager
    };

    public static Tipo_conexion getConection() {
        return Tipo_conexion.DataSource;
    }

    public static String getDatabaseName() {
        return "bolsa";
    }

    public static String getDatabaseLogin() {
        return "root";
    }

    public static String getDatabasePassword() {
        return "bitnami";
    }

    public static String getDatabasePort() {
        return "3306";
    }

    public static String getDatabaseHost() {
        return "localhost";
    }
}
