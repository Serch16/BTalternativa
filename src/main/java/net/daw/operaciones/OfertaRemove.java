package net.daw.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.OfertaBean;
import net.daw.dao.OfertaDao;
import net.daw.helper.Conexion;

public class OfertaRemove implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            OfertaDao oOfertaDAO = new OfertaDao(Conexion.getConection());
            OfertaBean oOferta = new OfertaBean();                                           
            oOferta.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oOferta != null) {
                oOfertaDAO.remove(oOferta);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oOferta.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("OfertaRemoveJson: View Error: " + e.getMessage());
        }
    }
}