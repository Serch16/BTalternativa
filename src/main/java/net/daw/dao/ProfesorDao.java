package net.daw.dao;

import net.daw.bean.ProfesorBean;
import net.daw.bean.UsuarioBean;
import net.daw.helper.Conexion;

public class ProfesorDao extends GenericDaoImplementation<ProfesorBean>{
    
    public ProfesorDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "profesor");
    }
    
    public ProfesorBean getFromId_usuario(UsuarioBean oUsuarioBean) throws Exception {
        ProfesorBean oProfesorBean = new ProfesorBean();
        if (oUsuarioBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_usuario = Integer.toString(oUsuarioBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("profesor", "id_usuario", id_usuario));
                oProfesorBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("ProfesorDao.getProfesor: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oProfesorBean.setId(0);
        }
        return oProfesorBean;
    }
}
