/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package es.imeon.dao;

import es.imeon.bean.EmpresaBean;
import es.imeon.bean.UsuarioBean;
import es.imeon.helper.Conexion;

/**
 *
 * @author AntonioNP
 */
public class EmpresaDao extends GenericDaoImplementation<EmpresaBean>{
    
    public EmpresaDao(Conexion.Tipo_conexion tipo_conexion) throws Exception{
        super(tipo_conexion, "empresa");
    }
    
    public EmpresaBean getFromId_usuario(UsuarioBean oUsuarioBean) throws Exception {
        EmpresaBean oEmpresaBean = new EmpresaBean();
        if (oUsuarioBean.getId() > 0) {
            try {
                oMysql.conexion(enumTipoConexion);
                String id_usuario = Integer.toString(oUsuarioBean.getId());
                Integer id_user = Integer.parseInt(oMysql.getId("empresa", "id_usuario", id_usuario));
                oEmpresaBean.setId(id_user);
            } catch (Exception e) {
                throw new Exception("EmpresaDao.getEmpresa: Error: " + e.getMessage());
            } finally {
                oMysql.desconexion();
            }
        } else {
            oEmpresaBean.setId(0);
        }
        return oEmpresaBean;
    }
}
