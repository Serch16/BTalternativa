package es.imeon.dao;

import es.imeon.bean.EstadoBean;
import es.imeon.helper.Conexion;

public class EstadoDao extends GenericDaoImplementation<EstadoBean>{
    
    public EstadoDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "estado");
    }

}