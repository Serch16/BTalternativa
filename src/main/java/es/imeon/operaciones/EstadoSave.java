package es.imeon.operaciones;

import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.EstadoBean;
import es.imeon.dao.EstadoDao;
import es.imeon.helper.Conexion;
import es.imeon.helper.EncodingUtil;

public class EstadoSave implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            EstadoDao oEstadoDAO = new EstadoDao(Conexion.getConection());
            EstadoBean oEstado = new EstadoBean();
//          Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oEstado = gson.fromJson(jason, oEstado.getClass());
            Map<String, String> data = new HashMap<>();
            if (oEstado != null) {
                oEstado = oEstadoDAO.set(oEstado);
                data.put("status", "200");
                data.put("message", Integer.toString(oEstado.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("EstadoSaveJson: View Error: " + e.getMessage());
        }
    }
}