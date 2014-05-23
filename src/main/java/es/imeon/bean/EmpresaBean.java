package es.imeon.bean;

public class EmpresaBean {

    private Integer id = 0;
    private Integer id_usuario = 0;
    private String nombre = "";
    private String cif = "";
    private String direccion = "";
    private String cpostal = "";
    private String localidad = "";
    private String provincia = "";
    private String web = "";
    private String telefono = "";
    private String telefono2 = "";
    private String sector = "";
    private String nombrecontacto = "";

    public EmpresaBean() {
    }

    public EmpresaBean(Integer id) {
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
     * @return the id_usuario
     */
    public Integer getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(Integer id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the cif
     */
    public String getCif() {
        return cif;
    }

    /**
     * @param cif the cif to set
     */
    public void setCif(String cif) {
        this.cif = cif;
    }

    /**
     * @return the direccion
     */
    public String getDireccion() {
        return direccion;
    }

    /**
     * @param direccion the direccion to set
     */
    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    /**
     * @return the cpostal
     */
    public String getCpostal() {
        return cpostal;
    }

    /**
     * @param cpostal the cpostal to set
     */
    public void setCpostal(String cpostal) {
        this.cpostal = cpostal;
    }

    /**
     * @return the localidad
     */
    public String getLocalidad() {
        return localidad;
    }

    /**
     * @param localidad the localidad to set
     */
    public void setLocalidad(String localidad) {
        this.localidad = localidad;
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

    /**
     * @return the web
     */
    public String getWeb() {
        return web;
    }

    /**
     * @param web the web to set
     */
    public void setWeb(String web) {
        this.web = web;
    }

    /**
     * @return the telefono
     */
    public String getTelefono() {
        return telefono;
    }

    /**
     * @param telefono the telefono to set
     */
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    /**
     * @return the telefono2
     */
    public String getTelefono2() {
        return telefono2;
    }

    /**
     * @param telefono2 the telefono2 to set
     */
    public void setTelefono2(String telefono2) {
        this.telefono2 = telefono2;
    }

    /**
     * @return the sector
     */
    public String getSector() {
        return sector;
    }

    /**
     * @param sector the sector to set
     */
    public void setSector(String sector) {
        this.sector = sector;
    }

    /**
     * @return the nombrecontacto
     */
    public String getNombrecontacto() {
        return nombrecontacto;
    }

    /**
     * @param nombrecontacto the nombrecontacto to set
     */
    public void setNombrecontacto(String nombrecontacto) {
        this.nombrecontacto = nombrecontacto;
    }

}
