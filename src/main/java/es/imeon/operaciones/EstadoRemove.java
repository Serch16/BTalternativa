package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.EstadoBean;
import es.imeon.dao.EstadoDao;
import es.imeon.helper.Conexion;

public class EstadoRemove implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            EstadoDao oEstadoDAO = new EstadoDao(Conexion.getConection());
            EstadoBean oEstado = new EstadoBean();
            oEstado.setId(Integer.parseInt(request.getParameter("id")));
            Map<String, String> data = new HashMap<>();
            if (oEstado != null) {
                oEstadoDAO.remove(oEstado);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oEstado.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("EstadoRemoveJson: View Error: " + e.getMessage());
        }
    }
}