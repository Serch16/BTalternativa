package es.imeon.bean;

import java.util.Date;

public class InscritosBean {

    private Integer id = 0;
    private Integer id_oferta = 0;
    private Integer id_alumno = 0;
    private Date fecha;
    private Integer id_estado = 0;

    public InscritosBean() {
    }

    public InscritosBean(Integer id) {
        this.id = id;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the id_oferta
     */
    public Integer getId_oferta() {
        return id_oferta;
    }

    /**
     * @param id_oferta the id_oferta to set
     */
    public void setId_oferta(Integer id_oferta) {
        this.id_oferta = id_oferta;
    }

    /**
     * @return the id_alumno
     */
    public Integer getId_alumno() {
        return id_alumno;
    }

    /**
     * @param id_alumno the id_alumno to set
     */
    public void setId_alumno(Integer id_alumno) {
        this.id_alumno = id_alumno;
    }

    /**
     * @return the id_estado
     */
    public Integer getId_estado() {
        return id_estado;
    }

    /**
     * @param id_estado the id_estado to set
     */
    public void setId_estado(Integer id_estado) {
        this.id_estado = id_estado;
    }

    /**
     * @return the fecha
     */
    public Date getFecha() {
        return fecha;
    }

    /**
     * @param fecha the fecha to set
     */
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
}