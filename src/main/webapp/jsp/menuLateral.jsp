<%@page import="es.imeon.bean.UsuarioBean"%>
<%UsuarioBean oUsuario = (UsuarioBean) request.getSession().getAttribute("usuarioBean"); %>
<!-- Men� navegaci�n interior -->
<div class="masthead">
    <h3 class="muted"><img alt="logo instituto" src="img/solologo.png" id="solologo"> CIPFP Ausi�s March, bolsa de trabajo</h3>
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
                        <%
                            if (oUsuario.getTipoUsuario().toString() == "Administrador") {
                        %>
                        <li><a id="lnkUsuario" href="#">Usuario</a></li>
                        <li><a id="lnkProfesor" href="#">Profesor</a></li>
                        <li><a id="lnkAlumno" href="#">Alumno</a></li>
                        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
                        <li><a id="lnkOferta" href="#">Oferta</a></li>
                        <li><a id="lnkEstado" href="#">Estado oferta</a></li>
                        <li><a id="lnkInscritos" href="#">Inscritos</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=empleopub$">Empleo p�blico</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=0rilab�oral">Orientaci�n laboral</a></li>
                            <%
                            } else if (oUsuario.getTipoUsuario().toString() == "Profesor") {
                            %>
                        <li><a id="lnkUsuario" href="#">Usuario</a></li>
                        <li><a id="lnkAlumno" href="#">Alumno</a></li>
                        <li><a id="lnkEmpresa" href="#">Empresa</a></li>
                        <li><a id="lnkOferta" href="#">Oferta</a></li>
                        <li><a id="lnkInscritos" href="#">Inscritos</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=empleopub$">Empleo p�blico</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=0rilab�oral">Orientaci�n laboral</a></li>
                            <%
                            } else if ((oUsuario.getTipoUsuario().toString() == "Alumno") || (oUsuario.getTipoUsuario().toString() == "Empresa")) {
                            %>
                        <li><a id="lnkOferta" href="#">Oferta</a></li>
                        <li><a id="lnkInscritos" href="#">Inscritos</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=empleopub$">Empleo p�blico</a></li>
                        <li><a href="jsp?ob=usuario&amp;op=0rilab�oral">Orientaci�n laboral</a></li>
                            <%
                                }
                            %>
                    </ul>
                    <ul class="nav pull-right">
                        <li class="divider-vertical"></li>
                        <li><a id="lnkLogout" href="jsp?ob=usuario&op=logout">Cerrar sesi�n</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
</div>