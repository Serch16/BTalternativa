package net.daw.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class OfertaGetprettycolumns implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"Id.\", \"Id. Empresa\", \"Fecha publicación\", \"Puesto\", \"Categoría\", "
                    + "\"Vacantes\", \"Descripción\", \"Requisitos\", \"Experiencia\", \"Salario\", \"Población\", \"Provincia\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("OfertaGetprettycolumnsJson: View Error: " + e.getMessage());
        }
    }
}
