package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.dao.UsuarioDao;
import es.imeon.helper.Conexion;

public class UsuarioGetcolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<String> alColumns = null;
        try {
            UsuarioDao oUsuarioDAO = new UsuarioDao(Conexion.getConection());
            alColumns = oUsuarioDAO.getColumnsNames();
            String data = new Gson().toJson(alColumns);
            data = "{\"data\":" + data + "}";
            return data;
        } catch (Exception e) {
            throw new ServletException("UsuarioGetcolumnsJson: View Error: " + e.getMessage());
        }
    }
}