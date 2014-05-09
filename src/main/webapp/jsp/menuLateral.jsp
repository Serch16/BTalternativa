<%@page import="net.daw.bean.UsuarioBean"%>
<%UsuarioBean oUsuario = (UsuarioBean) request.getSession().getAttribute("usuarioBean"); %>

<div class="well sidebar-nav">
    <ul class="nav nav-list">
        <li class="nav-header">Usuario</li>
        <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Cerrar sesión</a></li>
        <li><a id="lnkHome"  href="jsp">Inicio</a></li>
    </ul>
</div>
<%
    if  (oUsuario.getTipoUsuario().toString() == "Empresa"){;
%>
<div class="well sidebar-nav">
    <ul class="nav nav-list"> 
        <li class="nav-header">Mantenimientos</li>
        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
        <li><a id="lnkAlumno" href="#">Alumno</a></li>
    </ul>
</div>
<%
} else if (oUsuario.getTipoUsuario().toString() == "Alumno"){
%>
<div class="well sidebar-nav">
    <ul class="nav nav-list"> 
        <li class="nav-header">Mantenimientos</li>
        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
        <li><a id="lnkAlumno" href="#">Alumno</a></li>
    </ul>
</div>
<%
    } else if (oUsuario.getTipoUsuario().toString() == "Profesor"){
%>
<div class="well sidebar-nav">
    <ul class="nav nav-list"> 
        <li class="nav-header">Mantenimientos</li>            
        <li><a id="lnkUsuario" href="#">Usuario</a></li>
        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
        <li><a id="lnkAlumno" href="#">Alumno</a></li>
    </ul>
</div>
<%
    } else if (oUsuario.getTipoUsuario().toString() == "Administrador"){
%>
<div class="well sidebar-nav">
    <ul class="nav nav-list"> 
        <li class="nav-header">Mantenimientos</li>            
        <li><a id="lnkUsuario" href="#">Usuario</a></li>
        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
        <li><a id="lnkAlumno" href="#">Alumno</a></li>
        <li><a id="lnkProfesor" href="#">Profesor</a></li>
    </ul>
</div>
<%
    }
%>

<!--
<li><a id="lnkLenguaje" href="#">Lenguaje</a></li>
<li><a id="lnkEstado" href="#">Estado</a></li>
<li><a id="lnkEntrada" href="#">Entrada</a></li>   
<li><a id="lnkHilo" href="#">Hilo</a></li>
<li><a id="lnkDocumento" href="#">Documento</a></li> 
<li><a id="lnkTipodocumento" href="#">Tipodocumento</a></li>
<li><a id="lnkActividad" href="#">Actividad</a></li>      
<li><a id="lnkVotodocumento" href="#">Votodocumento</a></li>
<li><a id="lnkComentario" href="#">Comentario</a></li>
<li><a id="lnkActividadoffline" href="#">Actividad offline</a></li>
<li><a id="lnkEntrega" href="#">Entrega</a></li>
<li><a id="lnkMetadocumento" href="#">Metadocumento</a></li>
<li><a id="lnkRepositorio" href="#">Repositorio</a></li>
<li><a id="lnkOpcion" href="#">Opcion</a></li>
<li><a id="lnkCuestionario" href="#">Cuestionario</a></li>
<li><a id="lnkPregunta" href="#">Pregunta</a></li>
<li><a id="lnkFollower" href="#">Follower</a></li>
<li><a id="lnkRequerimiento" href="#">Requerimiento</a></li>
<li><a id="lnkIncidencias" href="#">Incidencias</a></li>
<li><a id="lnkBacklog" href="#">Backlog</a></li>
-->