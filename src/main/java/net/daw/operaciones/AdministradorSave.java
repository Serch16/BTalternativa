package net.daw.operaciones;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.AdministradorBean;
import net.daw.dao.AdministradorDao;
import net.daw.helper.Conexion;
import net.daw.helper.EncodingUtil;

public class AdministradorSave implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            AdministradorDao oAdministradorDAO = new AdministradorDao(Conexion.getConection());
            AdministradorBean oAdministrador = new AdministradorBean();
            Gson gson=  new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oAdministrador = gson.fromJson(jason, oAdministrador.getClass());
            Map<String, String> data = new HashMap<>();
            if (oAdministrador != null) {
                oAdministradorDAO.set(oAdministrador);
                data.put("status", "200");
                data.put("message", Integer.toString(oAdministrador.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("AdministradorSaveJson: View Error: " + e.getMessage());
        }
    }
}
