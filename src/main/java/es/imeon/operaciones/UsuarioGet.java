package es.imeon.operaciones;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.Gson;
import es.imeon.bean.UsuarioBean;
import es.imeon.dao.UsuarioDao;
import es.imeon.helper.Conexion;

public class UsuarioGet implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;
        try {
            if (request.getParameter("id") == null) {
                data = "{\"error\":\"id is mandatory\"}";
            } else {
                UsuarioDao oUsuarioDAO = new UsuarioDao(Conexion.getConection());
                UsuarioBean oUsuario = new UsuarioBean();
                oUsuario.setId(Integer.parseInt(request.getParameter("id")));
                oUsuarioDAO.get(oUsuario);
                data = new Gson().toJson(oUsuario);
            }
            return data;
        } catch (Exception e) {
            throw new ServletException("LenguajeGetJson: View Error: " + e.getMessage());
        }
    }
}