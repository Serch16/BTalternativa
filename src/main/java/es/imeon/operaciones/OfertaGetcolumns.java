package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.dao.OfertaDao;
import es.imeon.helper.Conexion;

public class OfertaGetcolumns implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<String> alColumns = null;
        try {
            OfertaDao oOfertaDAO = new OfertaDao(Conexion.getConection());
            alColumns = oOfertaDAO.getColumnsNames();
            String data = new Gson().toJson(alColumns);
            data = "{\"data\":" + data + "}";
            return data;
        } catch (Exception e) {
            throw new ServletException("OfertaGetcolumnsJson: View Error: " + e.getMessage());
        }
    }
}