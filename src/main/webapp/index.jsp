<%@page import="net.daw.bean.UsuarioBean"%>
<%UsuarioBean user = (UsuarioBean) request.getSession().getAttribute("usuarioBean");%>

<!DOCTYPE html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        <style>
            body {
                padding-top: 60px;
                padding-bottom: 40px;
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/baseBT.css">
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.1/themes/base/jquery-ui.css"/>
        <title>CIPFP Ausiàs March | Bolsa de trabajo</title>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="js/vendor/jquery-1.10.2.min.js"><\/script>')</script>
        <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.10.1/jquery-ui.js"></script>
        <script src="./js/vendor/jquery.validate.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
        <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->


        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container-fluid">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span> 
                        <span class="icon-bar"></span>
                    </a> 
                    <!--<a class="brand" href="jsp"><img id="logoinstituto" src="img/solologo.png"> CIPFP Ausiàs March</a>     -->              
                    <div class="nav-collapse collapse">
                        <%if (user != null) {%>
                        <jsp:include page="jsp/menuSuperior.jsp" />   
                        <% }%>
                        <jsp:include page="jsp/usuario/infologin.jsp" />                        
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="row-fluid">
                <%
                    if (user != null) {
                        out.print("<div class=\"span2\">");
                %>
                <jsp:include page="jsp/menuLateral.jsp" />
                <%
                        out.print("</div>");
                    }
                %>
                <%
                    if (user != null) {
                        out.print("<div class=\"span10\">");
                        out.print("<div id=\"indexContenido\"></div>");
                    } else {
                        out.print("<div class=\"span12\">");
                    }
                %>
                <div id="indexContenidoJsp">
                    <jsp:include page='<%=(String) request.getAttribute("contenido")%>' />                
                </div>
                <%
                    out.print("</div>");
                %>    
                <div class="row-fluid">
                    <div class="span12"><hr><footer><p>&copy; Sergio Martín (2014)</p></footer></div>   
                </div>
            </div>
        </div> 


        <!--Código HTML de la política de cookies -->
        <div class="cookiesms" id="cookie1">
            <p>Utilizamos cookies propias para mejorar nuestros servicios. Si continúa navegando, 
                consideramos que acepta su uso. Puede obtener más información, o bien conocer cómo 
                cambiar la configuración, en nuestra 
                <a href="url-politica-de-cookies">Política de cookies</a>
                <br/>
                <button onclick="controlcookies()">Aceptar</button>
            </p>
            <div  class="cookies2" onmouseover="document.getElementById('cookie1').style.bottom = '0px';">Uso de cookies </div>
        </div>
        <script type="text/javascript">
            if (localStorage.controlcookie > 0) {
                document.getElementById('cookie1').style.bottom = '-92px';
            }
        </script><!-- Fin del código de cookies --->    

        <!-- carga de javascript -->
        <script src="js/vendor/bootstrap.min.js"></script>

        <script src="js/vendor/bootstrap-transition.js"></script>
        <script src="js/vendor/bootstrap-alert.js"></script>
        <script src="js/vendor/bootstrap-modal.js"></script>
        <script src="js/vendor/bootstrap-dropdown.js"></script>
        <script src="js/vendor/bootstrap-scrollspy.js"></script>
        <script src="js/vendor/bootstrap-tab.js"></script>
        <script src="js/vendor/bootstrap-tooltip.js"></script>
        <script src="js/vendor/bootstrap-popover.js"></script>
        <script src="js/vendor/bootstrap-button.js"></script>
        <script src="js/vendor/bootstrap-collapse.js"></script>
        <script src="js/vendor/bootstrap-carousel.js"></script>
        <script src="js/vendor/bootstrap-typeahead.js"></script>    

        <script src="js/util.js" charset="UTF-8"></script>
        <script src="js/main.js" charset="UTF-8"></script>

        <script src="js/control/alumno.js" charset="UTF-8"></script>
        <script src="js/control/empresa.js" charset="UTF-8"></script>
        <script src="js/control/profesor.js" charset="UTF-8"></script>
        <script src="js/control/usuario.js" charset="UTF-8"></script>
        <script src="js/control/oferta.js" charset="UTF-8"></script>

        <script>
            $(document).ready(function() {
                inicializacion();
                $('#lnkAlumno').unbind('click');
                $('#lnkAlumno').click(function() {
                    var alumno = objeto('alumno', '<%=request.getContextPath()%>');
                    var alumnoView = vista(alumno, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(alumnoView.getEmptyList());

                    var alumnoControl = control_alumno_list('<%=request.getContextPath()%>');
                    alumnoControl.inicia(alumnoView, 1, null, null, 10, null, null, null, null);
                    return false;
                });

                $('#lnkUsuario').unbind('click');
                $('#lnkUsuario').click(function() {
                    var usuario = objeto('usuario', '<%=request.getContextPath()%>');
                    var usuarioView = vista(usuario, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(usuarioView.getEmptyList());

                    var usuarioControl = control_usuario_list('<%=request.getContextPath()%>');
                    usuarioControl.inicia(usuarioView, 1, null, null, 10, null, null, null, null);
                    return false;
                });

                $('#lnkEmpresa').unbind('click');
                $('#lnkEmpresa').click(function() {
                    var empresa = objeto('empresa', '<%=request.getContextPath()%>');
                    var empresaView = vista(empresa, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(empresaView.getEmptyList());

                    var empresaControl = control_empresa_list('<%=request.getContextPath()%>');
                    empresaControl.inicia(empresaView, 1, null, null, 10, null, null, null, null);
                    return false;
                });

                $('#lnkProfesor').unbind('click');
                $('#lnkProfesor').click(function() {
                    var profesor = objeto('profesor', '<%=request.getContextPath()%>');
                    var profesorView = vista(profesor, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(profesorView.getEmptyList());

                    var profesorControl = control_profesor_list('<%=request.getContextPath()%>');
                    profesorControl.inicia(profesorView, 1, null, null, 10, null, null, null, null);
                    return false;
                });

                $('#lnkOferta').unbind('click');
                $('#lnkOferta').click(function() {
                    var oferta = objeto('oferta', '<%=request.getContextPath()%>');
                    var ofertaView = vista(oferta, '<%=request.getContextPath()%>');

                    $('#indexContenidoJsp').empty();
                    $('#indexContenido').empty().append(ofertaView.getEmptyList());

                    var ofertaControl = control_oferta_list('<%=request.getContextPath()%>');
                    ofertaControl.inicia(ofertaView, 1, null, null, 10, null, null, null, null);
                    return false;
                });

            });
        </script>

        <!-- SCRIPT CONTROL DE COOKIES -->
        <script type="text/javascript">
            function controlcookies() {
                // si variable no existe se crea (al clicar en Aceptar)
                localStorage.controlcookie = (localStorage.controlcookie || 0);

                localStorage.controlcookie++; // incrementamos cuenta de la cookie
                cookie1.style.display = 'none'; // Esconde la política de cookies
            }
        </script>

    </body>
</html>

