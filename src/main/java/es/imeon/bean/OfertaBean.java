package es.imeon.bean;

import java.util.Date;

public class OfertaBean {

    private Integer id = 0;
    private Integer id_empresa = 0;
    private Date fechapubli;
    private String puesto = "";
    private String categoria = "";
    private Integer vacantes = 0;
    private String descripcion = "";
    private String requisitos = "";
    private String experiencia = "";
    private Integer salario = 0;
    private String poblacion = "";
    private String provincia = "";

    public OfertaBean() {
    }

    public OfertaBean(Integer id) {
        this.id = id;
    }

    /**
     * @return the id
     */
    public Integer getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * @return the id_empresa
     */
    public Integer getId_empresa() {
        return id_empresa;
    }

    /**
     * @param id_empresa the id_empresa to set
     */
    public void setId_empresa(Integer id_empresa) {
        this.id_empresa = id_empresa;
    }

    /**
     * @return the fechapubli
     */
    public Date getFechapubli() {
        return fechapubli;
    }

    /**
     * @param fechapubli the fechapubli to set
     */
    public void setFechapubli(Date fechapubli) {
        this.fechapubli = fechapubli;
    }

    /**
     * @return the puesto
     */
    public String getPuesto() {
        return puesto;
    }

    /**
     * @param puesto the puesto to set
     */
    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the vacantes
     */
    public Integer getVacantes() {
        return vacantes;
    }

    /**
     * @param vacantes the vacantes to set
     */
    public void setVacantes(Integer vacantes) {
        this.vacantes = vacantes;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the requisitos
     */
    public String getRequisitos() {
        return requisitos;
    }

    /**
     * @param requisitos the requisitos to set
     */
    public void setRequisitos(String requisitos) {
        this.requisitos = requisitos;
    }

    /**
     * @return the experiencia
     */
    public String getExperiencia() {
        return experiencia;
    }

    /**
     * @param experiencia the experiencia to set
     */
    public void setExperiencia(String experiencia) {
        this.experiencia = experiencia;
    }

    /**
     * @return the salario
     */
    public Integer getSalario() {
        return salario;
    }

    /**
     * @param salario the salario to set
     */
    public void setSalario(Integer salario) {
        this.salario = salario;
    }

    /**
     * @return the poblacion
     */
    public String getPoblacion() {
        return poblacion;
    }

    /**
     * @param poblacion the poblacion to set
     */
    public void setPoblacion(String poblacion) {
        this.poblacion = poblacion;
    }

    /**
     * @return the provincia
     */
    public String getProvincia() {
        return provincia;
    }

    /**
     * @param provincia the provincia to set
     */
    public void setProvincia(String provincia) {
        this.provincia = provincia;
    }
}
