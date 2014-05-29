package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.InscritosBean;
import es.imeon.dao.InscritosDao;
import es.imeon.helper.Conexion;

public class InscritosRemove implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            InscritosDao oInscritosDAO = new InscritosDao(Conexion.getConection());
            InscritosBean oInscritos = new InscritosBean();                                           
            oInscritos.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oInscritos != null) {
                oInscritosDAO.remove(oInscritos);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oInscritos.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("InscritosRemoveJson: View Error: " + e.getMessage());
        }
    }
}