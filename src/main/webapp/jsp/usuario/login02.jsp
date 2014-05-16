<%@page import="es.imeon.bean.UsuarioBean"%>
<% UsuarioBean oUsuario = (UsuarioBean) request.getSession().getAttribute("usuarioBean"); %>
<% if (oUsuario == null) { %>
<h2>Problema de autenticaci�n</h2>
<h4>"Usuario" o "Contrase�a" incorrectos.</h4>
<% } else {%>
<h3>�Bienvenid@, <%=oUsuario.getLogin()%>!</h3>
<h4>Has accedido a la bolsa de trabajo del CIPFP Ausi�s March. </h4>
<%
    if (oUsuario.getTipoUsuario().toString() == "Administrador") {
%>

<p>Tienes acceso total a todos los menus de administraci�n dado que tu rol es: Administrador.</p>
<%
    } else if (oUsuario.getTipoUsuario().toString() == "Profesor") {
%>
<p>Tienes acceso a los menus de administraci�n de "Usuario", "Alumno", "Empresa" y "Oferta", dado que tu rol es: Profesor.</p>
<%
    } else if (oUsuario.getTipoUsuario().toString() == "Alumno") {
%>
<p>Como alumno del centro tienes acceso a las ofertas de trabajo que se publiquen en nuestro portal. 
    Utiliza el men� superior para navegar por la web.</p>
<%
    } else if (oUsuario.getTipoUsuario().toString() == "Empresa") {
%>
<p>Tienes acceso a los menus de administraci�n de "Alumno", "Empresa" y "Oferta", dado que tu rol es: Empresa.</p>
<%
    }
%>
<%
    }
%>