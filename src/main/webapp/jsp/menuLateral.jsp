<%@page import="net.daw.bean.UsuarioBean"%>
<%UsuarioBean oUsuario = (UsuarioBean) request.getSession().getAttribute("usuarioBean"); %>

<%
    if (oUsuario.getTipoUsuario().toString() == "Administrador") {
%>
<!-- Menú navegación interior -->
<div class="masthead">
    <h3 class="muted"><img alt="logo instituto" src="img/solologo.png" id="solologo"> CIPFP Ausiàs March: <small>Administrador del sistema</small></h3>
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <div class="container">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li><a id="lnkUsuario" href="#">Usuario</a></li>
                        <li><a id="lnkProfesor" href="#">Profesor</a></li>
                        <li><a id="lnkAlumno" href="#">Alumno</a></li>
                        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
                        <li><a id="lnkOferta" href="#">Oferta</a></li>
                        <li><a id="lnkEmpresa" href="#">Empleo público</a></li>
                        <li><a href="#about">Orientación laboral</a></li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="divider-vertical"></li>
                        <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Cerrar sesión</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</div>
<%
} else if (oUsuario.getTipoUsuario().toString() == "Profesor") {
%>
<!-- Menú navegación interior -->
<div class="masthead">
    <h3 class="muted"><img alt="logo instituto" src="img/solologo.png" id="solologo"> CIPFP Ausiàs March: <small>Administrador de la bolsa de trabajo</small></h3>
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <div class="container">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li><a id="lnkUsuario" href="#">Usuario</a></li>
                        <li><a id="lnkAlumno" href="#">Alumno</a></li>
                        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
                        <li><a id="lnkOferta" href="#">Oferta</a></li>
                        <li><a id="lnkEmpresa" href="#">Empleo público</a></li>
                        <li><a href="#about">Orientación laboral</a></li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="divider-vertical"></li>
                        <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Cerrar sesión</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</div>
<%
} else if ((oUsuario.getTipoUsuario().toString() == "Alumno") || (oUsuario.getTipoUsuario().toString() == "Empresa")) {
%>
<!-- Menú navegación interior -->
<div class="masthead">
    <h3 class="muted"><img alt="logo instituto" src="img/solologo.png" id="solologo"> CIPFP Ausiàs March: <small>Usuario</small></h3>
    <div class="navbar navbar-inverse">
        <div class="navbar-inner">
            <div class="container">
                <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- <a class="brand" href="#">Project name</a>  -->
                <div class="nav-collapse collapse">
                    <ul class="nav">
                        <li><a id="lnkOferta" href="#">Ofertas de trabajo</a></li>
                        <li><a id="lnkEmpresa" href="#">Empleo público</a></li>
                        <li><a href="#about">Orientación laboral</a></li>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="divider-vertical"></li>
                        <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Cerrar sesión</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</div>
<%
    }
%>