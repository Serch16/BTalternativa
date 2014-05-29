package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import es.imeon.bean.InscritosBean;
import es.imeon.dao.InscritosDao;
import es.imeon.helper.Conexion;

public class InscritosGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;         
        try {            
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                InscritosDao oInscritosDAO = new InscritosDao(Conexion.getConection());
                InscritosBean oInscritos = new InscritosBean();
                oInscritos.setId(Integer.parseInt(request.getParameter("id")));
                oInscritosDAO.get(oInscritos);
                GsonBuilder gsonBuilder = new GsonBuilder();
                gsonBuilder.setDateFormat("dd/MM/yyyy");
                Gson gson = gsonBuilder.create();
                data = gson.toJson(oInscritos);
                
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("InscritosGetJson: View Error: " + e.getMessage());
        }
    }
}