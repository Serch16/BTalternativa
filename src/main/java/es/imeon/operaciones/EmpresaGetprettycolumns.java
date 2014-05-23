package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpresaGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"Id.\",\"Usuario\", \"Empresa\", \"CIF\", \"Direccion\", \"C. Postal\", \"Localidad\", \"Provincia\", \"Web\", \"Teléfono\", \"Telf. Alter.\", \"Sector\", \"Nom. Contacto\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("EmpresaGetpagesJson: View Error: " + e.getMessage());
        }
    }
}