package net.daw.dao;

import net.daw.bean.AdministradorBean;
import net.daw.bean.UsuarioBean;
import net.daw.helper.Conexion;

public class AdministradorDao extends GenericDaoImplementation<AdministradorBean> {

    public AdministradorDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion, "administrador");
    }

    public AdministradorBean getFromId_usuario(UsuarioBean oUsuarioBean) throws Exception {
        AdministradorBean oAdministradorBean = new AdministradorBean();
        if (oUsuarioBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_usuario = Integer.toString(oUsuarioBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("administrador", "id_usuario", id_usuario));
                oAdministradorBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("AdministradorDao.getAdministrador: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oAdministradorBean.setId(0);
        }
        return oAdministradorBean;
    }
}
