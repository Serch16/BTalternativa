package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfesorGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
           String data = "{\"data\": [\"Id.\", \"Id. Usuario\", \"Nombre\", \"Apellido\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("ProfesorGetpagesJson: View Error: " + e.getMessage());
        }
    }
}