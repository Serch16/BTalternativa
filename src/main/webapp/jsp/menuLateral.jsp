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
        <li><a id="lnkOferta" href="#">Oferta</a></li>
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
        <li><a id="lnkOferta" href="#">Oferta</a></li>
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
        <li><a id="lnkOferta" href="#">Oferta</a></li>
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
        <li><a id="lnkOferta" href="#">Oferta</a></li>
    </ul>
</div>
<%
    }
%>