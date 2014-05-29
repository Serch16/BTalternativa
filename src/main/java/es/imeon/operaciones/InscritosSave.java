package es.imeon.operaciones;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.InscritosBean;
import es.imeon.dao.InscritosDao;
import es.imeon.helper.Conexion;
import es.imeon.helper.EncodingUtil;

public class InscritosSave implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            InscritosDao oInscritosDAO = new InscritosDao(Conexion.getConection());
            InscritosBean oInscritos = new InscritosBean();
            Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oInscritos = gson.fromJson(jason, oInscritos.getClass());
            Map<String, String> data = new HashMap<>();
            if (oInscritos != null) {
                oInscritos = oInscritosDAO.set(oInscritos);
                data.put("status", "200");
                data.put("message", Integer.toString(oInscritos.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("InscritosSaveJson: View Error: " + e.getMessage());
        }
    }
}