package es.imeon.operaciones;

import com.google.gson.Gson;
//import com.google.gson.GsonBuilder;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.EmpresaBean;
import es.imeon.dao.EmpresaDao;
import es.imeon.helper.Conexion;
import es.imeon.helper.EncodingUtil;

public class EmpresaSave implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        try {
            EmpresaDao oEmpresaDAO = new EmpresaDao(Conexion.getConection());
            EmpresaBean oEmpresa = new EmpresaBean();
//          Gson gson = new GsonBuilder().setDateFormat("dd/MM/yyyy").create();
            Gson gson = new Gson();
            String jason = request.getParameter("json");
            jason = EncodingUtil.decodeURIComponent(jason);
            oEmpresa = gson.fromJson(jason, oEmpresa.getClass());
            Map<String, String> data = new HashMap<>();
            if (oEmpresa != null) {
                oEmpresa = oEmpresaDAO.set(oEmpresa);
                data.put("status", "200");
                data.put("message", Integer.toString(oEmpresa.getId()));
            } else {
                data.put("status", "error");
                data.put("message", "error");
            }
            String resultado = gson.toJson(data);
            return resultado;
        } catch (Exception e) {
            throw new ServletException("EmpresaSaveJson: View Error: " + e.getMessage());
        }
    }
}