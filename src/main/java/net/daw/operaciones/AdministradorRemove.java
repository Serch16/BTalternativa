/*
package net.daw.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.AdministradorBean;
import net.daw.dao.AdministradorDao;
import net.daw.helper.Conexion;

public class AdministradorRemove implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            AdministradorDao oAdministradorDAO = new AdministradorDao(Conexion.getConection());
            AdministradorBean oAdministrador = new AdministradorBean();                                           
            oAdministrador.setId(Integer.parseInt(request.getParameter("id")));            
            Map<String, String> data = new HashMap<>();
            if (oAdministrador != null) {
                oAdministradorDAO.remove(oAdministrador);
                data.put("status", "200");
                data.put("message", "se ha eliminado el registro con id=" + oAdministrador.getId());
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            Gson gson = new Gson();
            String resultado = gson.toJson(data);
            return resultado;        
        } catch (Exception e) {
            throw new ServletException("AdministradorRemoveJson: View Error: " + e.getMessage());
        }
    }
}
*/