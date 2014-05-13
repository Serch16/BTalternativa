<%@page import="net.daw.helper.Conexion"%>
<%@page import="net.daw.dao.ProfesorDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%
    ProfesorDao oProfesorDao = new ProfesorDao(Conexion.getConection());
    ArrayList<String> alColumnsNames = (ArrayList<String>) oProfesorDao.getColumnsNames();
    Iterator<String> oIterador = alColumnsNames.listIterator();
    String strNombreMantenimiento = "profesor";
%>
<div id="<%=strNombreMantenimiento%>_list">
    <!-- Estás en... -->
    <ul class="breadcrumb">
        <li><a href="#">Administración</a> <span class="divider">/</span></li>
        <li class="active">Profesor</li>
    </ul>           <!-- // Estás en... -->
    <div class="row-fluids">
        <!-- Columna información izquierda -->
        <div class="span3">
            <!-- Registros por página -->
            <div class="well sidebar-nav">
                <legend>Registros por página</legend> 
                <form class="navbar-form" action="Controller" method="post" id="nrrpForm" >
                    <fieldset>
                        <select  id="rpp" name="nrpp" value="select" class="span12">                        
                            <option>5</option>
                            <option selected>10</option>
                        </select>               
                    </fieldset>
                </form>
            </div>          <!-- // Registros por página -->
            <!-- Creación de usuario -->
            <div class="well sidebar-nav">
                <button class="btn btn-block" id="crear">Crear <%=strNombreMantenimiento%></button>
            </div>          <!-- // Creación de usuario -->
            <!-- Filtro -->
            <div class="well sidebar-nav">
                <legend>Filtro</legend> 
                <form class="navbar-form pull-right" action="Controller" method="post" id="empresaForm">
                    <fieldset>
                        <select id="selectFilter" name="filter"  class="span12">
                            <%
                                while (oIterador.hasNext()) {
                                    String strNombreColumna = oIterador.next();
                                    String strNombreColumnaPretty = strNombreColumna.charAt(0) + strNombreColumna.substring(1);
                            %>
                            <option value="<%=strNombreColumna%>"><%=strNombreColumnaPretty%></option>
                            <% }%>
                        </select>
                        <span>
                            <select id="selectFilteroperator" name="filteroperator" class="span12">
                                <option>like</option>
                                <option>notlike</option>
                                <option>equals</option>
                                <option>notequalto</option>
                                <option>less</option>
                                <option>lessorequal</option>
                                <option>greater</option>
                                <option>greaterorequal</option> 
                            </select>
                            <input id="inputFiltervalue" name="filtervalue" type="text" size="20" maxlength="50" value="" class="span12"/>
                        </span>
                        <span>
                            <input type="submit" class="btn-block" id="btnFiltrar" name="btnFiltrar" value="Filtrar <%=strNombreMantenimiento%>" />
                        </span>
                    </fieldset>
                </form>
                <!-- Información del filtro -->
                <div id="order"></div>
                <div id="filter"></div>            
                <div id="registers"></div>          <!-- // Información del filtro -->   
            </div>          <!-- Filtro -->
        </div>          <!-- // Columna información izquierda -->
        <!-- Información específica usuario -->
        <div class="span9">
            <div class="row-fluid">
                <!-- Paginación -->
                <div class="span2"></div>
                <div class="span8">
                    <div id="pagination"></div>
                </div>
                <div class="span2"></div>           <!-- // Paginación -->
            </div>
            <div id="datos"></div>
            <div id="datos2"></div>
        </div>          <!-- // Información específica usuario -->
    </div>
    <!-- Modales -->
    <div id="modal01" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header"></div>
        <div class="modal-body"></div>
        <div class="modal-footer"></div>
    </div>
    <div id="modal02" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header"></div>
        <div class="modal-body"></div>
        <div class="modal-footer"></div>
    </div>          <!-- // Modales -->
</div>