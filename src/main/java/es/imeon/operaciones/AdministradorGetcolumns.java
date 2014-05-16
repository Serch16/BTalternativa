package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.dao.AdministradorDao;
import es.imeon.helper.Conexion;

public class AdministradorGetcolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<String> alColumns = null;
        try {
            AdministradorDao oAdministradorDAO = new AdministradorDao(Conexion.getConection());
            alColumns = oAdministradorDAO.getColumnsNames();
            String data = new Gson().toJson(alColumns);
            data = "{\"data\":" + data + "}";
            return data;
        } catch (Exception e) {
            throw new ServletException("AdministradorGetcolumnsJson: View Error: " + e.getMessage());
        }
    }
}