package es.imeon.operaciones;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.imeon.bean.OfertaBean;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import es.imeon.dao.OfertaDao;
import es.imeon.helper.Conexion;

public class OfertaGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                OfertaDao oOfertaDAO = new OfertaDao(Conexion.getConection());
                OfertaBean oOferta = new OfertaBean();
                oOferta.setId(Integer.parseInt(request.getParameter("id")));
                oOfertaDAO.get(oOferta);                                
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oOferta);     
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("OfertaGetJson: View Error: " + e.getMessage());
        }
    }
}