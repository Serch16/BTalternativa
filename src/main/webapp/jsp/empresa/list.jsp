<%@page import="es.imeon.helper.Conexion"%>
<%@page import="es.imeon.dao.EmpresaDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%
    EmpresaDao oEmpresaDao = new EmpresaDao(Conexion.getConection());
    ArrayList<String> alColumnsNames = (ArrayList<String>) oEmpresaDao.getColumnsNames();
    Iterator<String> oIterador = alColumnsNames.listIterator();
    String strNombreMantenimiento = "empresa";
%>
<div id="<%=strNombreMantenimiento%>_list">
    <!-- Est�s en... -->
    <ul class="breadcrumb">
        <li>Est�s en:</li>
        <li><a href="jsp">B.T. CIPFP Ausi�s March</a><span class="divider">/</span></li>
        <li class="active">Admin. Empresa</li>
    </ul>           <!-- // Est�s en... -->
    <div class="row-fluids">
        <!-- Columna informaci�n izquierda -->
        <div class="span3">
            <!-- Registros por p�gina -->
            <div class="well sidebar-nav">
                <legend>Registros por p�gina</legend> 
                <form class="navbar-form" action="Controller" method="post" id="nrrpForm" >
                    <fieldset>
                        <select  id="rpp" name="nrpp" value="select" class="span12">                        
                            <option>5</option>
                            <option selected>10</option>
                            <option>20</option>
                            <option>50</option>
                            <option>100</option>
                        </select>               
                    </fieldset>
                </form>
            </div>          <!-- // Registros por p�gina -->
            <!-- Creaci�n de empresa -->
            <div class="well sidebar-nav hidden-phone creacion">
                <button class="btn btn-block" id="crear">Crear <%=strNombreMantenimiento%></button>
            </div>          <!-- // Creaci�n de empresa -->
            <!-- Filtro -->
            <div class="filtro well sidebar-nav hidden-phone hidden-tablet">
                <legend>Filtro</legend>            
                <div id="registers"></div>     
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
                                <option>contiene</option>
                                <option>no contiene</option>
                                <option>igual a</option>
                                <option>diferente a</option>
                                <option>menor a</option>
                                <option>menor o igual a</option>
                                <option>mayor a</option>
                                <option>mayor o igual a</option> 
                            </select>
                            <input id="inputFiltervalue" name="filtervalue" type="text" size="20" maxlength="50" value="" class="span12"/>
                        </span>
                        <span>
                            <input type="submit" class="btn-block" id="btnFiltrar" name="btnFiltrar" value="Filtrar <%=strNombreMantenimiento%>" />
                        </span>
                    </fieldset>
                </form>
                <!-- Informaci�n del filtro -->
                <div id="order"></div>
                <div id="filter"></div>      <!-- // Informaci�n del filtro -->   
            </div>          <!-- Filtro -->
        </div>          <!-- // Columna informaci�n izquierda -->
        <!-- Informaci�n espec�fica usuario -->
        <div class="span9">
            <div class="row-fluid">
                <!-- Paginaci�n -->
                <div class="span2 hidden-phone hidden-tablet"></div>
                <div class="span8">
                    <div id="pagination"></div>
                </div>
                <div class="span2 hidden-phone hidden-tablet"></div>           <!-- // Paginaci�n -->
            </div>
            <div id="datos"></div>
            <div id="datos2"></div>
        </div>          <!-- // Informaci�n espec�fica usuario -->
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