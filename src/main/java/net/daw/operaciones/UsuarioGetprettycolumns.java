package net.daw.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UsuarioGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"Id.\", \"Usuario\", \"Contraseña\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("UsuarioGetpagesJson: View Error: " + e.getMessage());
        }
    }
}
