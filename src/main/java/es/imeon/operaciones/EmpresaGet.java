package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import es.imeon.bean.EmpresaBean;
import es.imeon.dao.EmpresaDao;
import es.imeon.helper.Conexion;

public class EmpresaGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;
        try {
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                EmpresaDao oEmpresaDAO = new EmpresaDao(Conexion.getConection());
                EmpresaBean oEmpresa = new EmpresaBean();
                oEmpresa.setId(Integer.parseInt(request.getParameter("id")));
                oEmpresaDAO.get(oEmpresa);
//                GsonBuilder gsonBuilder = new GsonBuilder();
//                gsonBuilder.setDateFormat("dd/MM/yyyy");
//                Gson gson = gsonBuilder.create();
//                data = gson.toJson(oEmpresa);
                data = new Gson().toJson(oEmpresa);
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("EmpresaGetJson: View Error: " + e.getMessage());
        }
    }
}