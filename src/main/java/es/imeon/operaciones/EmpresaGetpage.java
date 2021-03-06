package es.imeon.operaciones;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import es.imeon.bean.EmpresaBean;
import es.imeon.dao.EmpresaDao;
import es.imeon.helper.Conexion;
import es.imeon.helper.FilterBean;

public class EmpresaGetpage implements GenericOperation {

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String data;
        try {
            int rpp;
            if (request.getParameter("rpp") == null) {
                rpp = 10;
            } else {
                rpp = Integer.parseInt(request.getParameter("rpp"));
            }
            int page;
            if (request.getParameter("page") == null) {
                page = 1;
            } else {
                page = Integer.parseInt(request.getParameter("page"));
            }
            ArrayList<FilterBean> alFilter = new ArrayList<>();
            if (request.getParameter("filter") != null) {
                if (request.getParameter("filteroperator") != null) {
                    if (request.getParameter("filtervalue") != null) {
                        FilterBean oFilterBean = new FilterBean();
                        oFilterBean.setFilter(request.getParameter("filter"));
                        oFilterBean.setFilterOperator(request.getParameter("filteroperator"));
                        oFilterBean.setFilterValue(request.getParameter("filtervalue"));
                        oFilterBean.setFilterOrigin("user");
                        alFilter.add(oFilterBean);
                    }
                }
            }
            if (request.getParameter("systemfilter") != null) {
                if (request.getParameter("systemfilteroperator") != null) {
                    if (request.getParameter("systemfiltervalue") != null) {
                        FilterBean oFilterBean = new FilterBean();
                        oFilterBean.setFilter(request.getParameter("systemfilter"));
                        oFilterBean.setFilterOperator(request.getParameter("systemfilteroperator"));
                        oFilterBean.setFilterValue(request.getParameter("systemfiltervalue"));
                        oFilterBean.setFilterOrigin("system");
                        alFilter.add(oFilterBean);
                    }
                }
            }
            HashMap<String, String> hmOrder = new HashMap<>();

            if (request.getParameter("order") != null) {
                if (request.getParameter("ordervalue") != null) {
                    hmOrder.put(request.getParameter("order"), request.getParameter("ordervalue"));
                } else {
                    hmOrder = null;
                }
            } else {
                hmOrder = null;
            }
            EmpresaDao oEmpresaDAO = new EmpresaDao(Conexion.getConection());
            List<EmpresaBean> oEmpresas = oEmpresaDAO.getPage(rpp, page, alFilter, hmOrder);
//            GsonBuilder gsonBuilder = new GsonBuilder();
//            gsonBuilder.setDateFormat("dd/MM/yyyy");
//            Gson gson = gsonBuilder.create();
//            data = gson.toJson(oEmpresas);
//            data = "{\"list\":" + data + "}";
            data = new Gson().toJson(oEmpresas);
            data = "{\"list\":" + data + "}";
            return data;
        } catch (Exception e) {
            throw new ServletException("EmpresaGetJson: View Error: " + e.getMessage());
        }
    }
}