package es.imeon.operaciones;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.imeon.bean.AdministradorBean;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import es.imeon.dao.AdministradorDao;
import es.imeon.helper.Conexion;

public class AdministradorGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                AdministradorDao oAdministradorDAO = new AdministradorDao(Conexion.getConection());
                AdministradorBean oAdministrador = new AdministradorBean();
                oAdministrador.setId(Integer.parseInt(request.getParameter("id")));
                oAdministradorDAO.get(oAdministrador);                                
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oAdministrador);     
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("AdministradorGetJson: View Error: " + e.getMessage());
        }
    }
}