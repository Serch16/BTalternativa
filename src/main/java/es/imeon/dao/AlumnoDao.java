package es.imeon.dao;

import es.imeon.bean.AlumnoBean;
import es.imeon.bean.UsuarioBean;
import es.imeon.helper.Conexion;

public class AlumnoDao extends GenericDaoImplementation<AlumnoBean> {

    public AlumnoDao(Conexion.Tipo_conexion tipoConexion) throws Exception {
        super(tipoConexion, "alumno");
    }

    public AlumnoBean getFromId_usuario(UsuarioBean oUsuarioBean) throws Exception {
        AlumnoBean oAlumnoBean = new AlumnoBean();
        if (oUsuarioBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_usuario = Integer.toString(oUsuarioBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("alumno", "id_usuario", id_usuario));
                oAlumnoBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("AlumnoDao.getAlumno: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oAlumnoBean.setId(0);
        }
        return oAlumnoBean;
    }
}