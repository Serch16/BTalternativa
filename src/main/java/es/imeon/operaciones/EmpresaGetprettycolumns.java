package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmpresaGetprettycolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        try {
            String data = "{\"data\": [\"Id.\",\"Id. Usuario\", \"Empresa\", \"cif\", \"direccion\", \"localidad\", \"provincia\", \"pais\", \"telefono\", \"fax\", \"actividad\", \"nombrecontacto\", \"emailcontacto\", \"validada\"]}";
            return data;
        } catch (Exception e) {
            throw new ServletException("EmpresaGetpagesJson: View Error: " + e.getMessage());
        }
    }
}