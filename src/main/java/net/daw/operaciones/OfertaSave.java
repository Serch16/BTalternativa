package net.daw.operaciones;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.daw.bean.OfertaBean;
import net.daw.dao.OfertaDao;
import net.daw.helper.Conexion;
import net.daw.helper.EncodingUtil;

public class OfertaSave implements GenericOperation {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            OfertaDao oOfertaDAO = new OfertaDao(Conexion.getConection());
            OfertaBean oOferta = new OfertaBean();
            Gson gson=  new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oOferta = gson.fromJson(jason, oOferta.getClass());
            Map<String, String> data = new HashMap<>();
            if (oOferta != null) {
                oOfertaDAO.set(oOferta);
                data.put("status", "200");
                data.put("message", Integer.toString(oOferta.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("OfertaSaveJson: View Error: " + e.getMessage());
        }
    }
}
