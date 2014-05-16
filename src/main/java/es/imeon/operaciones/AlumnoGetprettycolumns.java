package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AlumnoGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"ID\", \"ID Usuario\", \"DNI\", \"Núm. Exp.\", \"Nombre\", \"P. Ape\", "
                    + "\"S. Ape\", \"Sexo\", \"Domicilio\", \"Cod. Postal\", \"Población\", \"Provincia\", "
                    + "\"Teléfono\", \"Em@il\", \"Validado\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("AlumnoGetpagesJson: View Error: " + e.getMessage());
        }
    }
}
