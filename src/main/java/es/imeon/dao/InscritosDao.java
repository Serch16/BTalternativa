package es.imeon.dao;

import es.imeon.bean.InscritosBean;
import es.imeon.bean.UsuarioBean;
import es.imeon.helper.Conexion;

public class InscritosDao extends GenericDaoImplementation<InscritosBean>{
    
    public InscritosDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "inscritos");
    }
    
    public InscritosBean getFromId_usuario(UsuarioBean oUsuarioBean) throws Exception {
        InscritosBean oInscritosBean = new InscritosBean();
        if (oUsuarioBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_usuario = Integer.toString(oUsuarioBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("inscritos", "id_usuario", id_usuario));
                oInscritosBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("InscritosDao.getInscritos: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oInscritosBean.setId(0);
        }
        return oInscritosBean;
    }
}