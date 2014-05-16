package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AlumnoGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"ID\", \"ID Usuario\", \"DNI\", \"Nombre\", \"P. Ape\", "
                    + "\"S. Ape\", \"Em@il\", \"Fecha Nto.\", \"País Nto.\", \"Género\", \"Domicilio\", "
                    + "\"Cod. Postal\", \"Localidad\", \"Provincia\", "
                    + "\"Teléfono\", \"Otro Telf.\", \"Expediente\", \"Familia\", \"Ciclo\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("AlumnoGetpagesJson: View Error: " + e.getMessage());
        }
    }
}