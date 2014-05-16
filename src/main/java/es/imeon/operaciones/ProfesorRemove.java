package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.ProfesorBean;
import es.imeon.dao.ProfesorDao;
import es.imeon.helper.Conexion;

public class ProfesorRemove implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            ProfesorDao oProfesorDAO = new ProfesorDao(Conexion.getConection());
            ProfesorBean oProfesor = new ProfesorBean();                                           
            oProfesor.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oProfesor != null) {
                oProfesorDAO.remove(oProfesor);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oProfesor.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("ProfesorRemoveJson: View Error: " + e.getMessage());
        }
    }
}