package es.imeon.operaciones;

import com.google.gson.Gson;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.UsuarioBean;
import es.imeon.dao.UsuarioDao;
import es.imeon.helper.Conexion;
import es.imeon.helper.EncodingUtil;

public class UsuarioSave implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            UsuarioDao oUsuarioDAO = new UsuarioDao(Conexion.getConection());
            UsuarioBean oUsuario = new UsuarioBean();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oUsuario = gson.fromJson(jason, oUsuario.getClass());
            Map<String, String> data = new HashMap<>();
            if (oUsuario != null) {
                oUsuario = oUsuarioDAO.set(oUsuario);
                data.put("status", "200");
                data.put("message", Integer.toString(oUsuario.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("UsuarioSaveJson: View Error: " + e.getMessage());
        }
    }
}