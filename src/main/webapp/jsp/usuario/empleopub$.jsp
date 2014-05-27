<%@page import="es.imeon.bean.UsuarioBean"%>
<%UsuarioBean oUsuario = (UsuarioBean) request.getSession().getAttribute("usuarioBean"); %>
<!-- Est�s en... -->
<ul class="breadcrumb">
    Est�s en:
    <li><a href="jsp">CIPFP Ausi�s March</a><span class="divider">/</span></li>
    <li class="active">Empleo p�blico</li>
</ul>           <!-- // Est�s en... -->
<div class="row-fluid">
    <div class="span9">
        <div class="alert">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <strong>�Importante!</strong>
            <p>P�gina pendiente de programaci�n, disculpen las molestias.</p>
        </div>
        <%
            if (oUsuario != null && oUsuario.getTipoUsuario().toString() == "Administrador") {
        %>
        <div class="row-fluid">
            <div class="span12">
                <div class="alert alert-info">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>  
                    <form class="form-horizontal" action="#" id="formulario" name="formulario">
                        <legend>Introducir oferta empleo p�blico</legend>
                        <div class="control-group">
                            <label class="control-label"  for="inputEmpleo">Empleo:</label>
                            <div class="controls">
                                <input type="text" id="empleo" name="empleo" size="15" placeholder="" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"  for="inputNumplazas">N�mero de plazas:</label>
                            <div class="controls">
                                <input type="text" id="numplazas" name="numplazas" size="5" placeholder="" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"  for="inputEntidad">Entidad:</label>
                            <div class="controls">
                                <input type="text" id="entidad" name="entidad" size="15" placeholder="" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"  for="inputEstudios">Estudios requeridos:</label>
                            <div class="controls">
                                <input type="text" id="estudios" name="estudios" size="15" placeholder="" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label"  for="inputInstancias">Presentaci�n instancias:</label>
                            <div class="controls">
                                <input type="text" id="instancias" name="instancias" size="15" placeholder="" />
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn submitForm">Introducir</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <%
            }
        %>
        <div class="row-fluid">
            <div class="span3">
                <div class="filtro well sidebar-nav hidden-phone hidden-tablet">
                    <legend>Puestos ofertados</legend>
                    <fieldset>
                        <label class="checkbox">
                            <input type="checkbox" value="">
                            Guard�a Civil
                        </label>
                        <label class="checkbox">
                            <input type="checkbox" value="">
                            Policia Municipal
                        </label>
                    </fieldset>
                </div> 
            </div>
            <div class="span9">
                <h4 class="subra">�ltimas convocatorias de empleo p�blico</h4>
                <table class="table table-bordered">
                    <caption>�Nueva!</caption>
                    <thead>
                        <tr>
                            <th class="celdaroja">Guard�a Civil. Escala de Cabos y Guard�as</th>
                            <th>489 plazas</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Direcci�n General Guard�a Civil</td>
                            <td class="celdagris">Instancias hasta el</td>
                        </tr>
                        <tr>
                            <td class="celdagris">Grupo C1 - Bachiller o T�cnico (Graduado ESO o equivalente)</td>
                            <td>10-06-2014</td>
                        </tr>
                    </tbody>
                </table>
                <table class="table table-bordered">
                    <caption></caption>
                    <thead>
                        <tr>
                            <th class="celdaroja">Policia Municipal. Ayuntamiento de Madrid</th>
                            <th>203 plazas</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Ayuntamiento de Madrid (Madrid)</td>
                            <td class="celdagris">Instancias hasta el</td>
                        </tr>
                        <tr>
                            <td class="celdagris">Grupo C2 - Graduado en ESO (Graduado escolar o equivalente)</td>
                            <td>11-06-2014</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="span3 hidden-phone"><img src="img/banner2.png"></div>
</div>