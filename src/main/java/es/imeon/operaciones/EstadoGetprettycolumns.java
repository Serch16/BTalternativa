package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EstadoGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
           String data = "{\"data\": [\"Id.\", \"Estado\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("InscritosGetpagesJson: View Error: " + e.getMessage());
        }
    }
}