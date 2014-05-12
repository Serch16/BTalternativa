package net.daw.dao;

import net.daw.bean.OfertaBean;
import net.daw.helper.Conexion;

public class OfertaDao extends GenericDaoImplementation<OfertaBean> {

    public OfertaDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion, "oferta");
    }
}
