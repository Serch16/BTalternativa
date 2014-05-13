package net.daw.operaciones;

import com.google.gson.Gson;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.dao.EmpresaDao;
import net.daw.helper.Conexion;

public class EmpresaGetcolumns implements GenericOperation{
     @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ArrayList<String> alColumns = null;
        try {
            EmpresaDao oEmpresaDAO = new EmpresaDao(Conexion.getConection());
            alColumns = oEmpresaDAO.getColumnsNames();
            String data = new Gson().toJson(alColumns);
            data = "{\"data\":" + data + "}";
            return data;
        } catch (Exception e) {
            throw new ServletException("EmpresaGetcolumnsJson: View Error: " + e.getMessage());
        }
    }
}
