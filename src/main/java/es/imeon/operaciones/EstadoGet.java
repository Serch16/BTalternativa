package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import es.imeon.bean.EstadoBean;
import es.imeon.dao.EstadoDao;
import es.imeon.helper.Conexion;

public class EstadoGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;
        try {
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                EstadoDao oEstadoDAO = new EstadoDao(Conexion.getConection());
                EstadoBean oEstado = new EstadoBean();
                oEstado.setId(Integer.parseInt(request.getParameter("id")));
                oEstadoDAO.get(oEstado);
//                GsonBuilder gsonBuilder = new GsonBuilder();
//                gsonBuilder.setDateFormat("dd/MM/yyyy");
//                Gson gson = gsonBuilder.create();
//                data = gson.toJson(oEstado);
                data = new Gson().toJson(oEstado);
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("EstadoGetJson: View Error: " + e.getMessage());
        }
    }
}