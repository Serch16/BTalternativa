package es.imeon.dao;

import es.imeon.bean.OfertaBean;
import es.imeon.helper.Conexion;

public class OfertaDao extends GenericDaoImplementation<OfertaBean> {

    public OfertaDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion, "oferta");
    }
}