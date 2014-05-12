<%@page import="net.daw.bean.UsuarioBean"%>
<%UsuarioBean user = (UsuarioBean) request.getSession().getAttribute("usuarioBean");%>      

<p class="navbar-text pull-right">           
    <%if (user != null) {%>
    <%
        String us = user.getLogin();
        String usuario = us.substring(0, 1).toUpperCase() + us.substring(1);
        //String us = user.getNombre();
        //String usuario = us.substring(0, 1).toUpperCase() + us.substring(1);
%>
    Estás logueado como <%=usuario%> / <%=user.getTipoUsuario()%>
    <%} else {%>
    
<ul class="nav">
    <li><a class="navbar-link" href="jsp">Inicio</a></li>
    <li class="divider-vertical"></li>
    <li><a class="navbar-link" href="jsp?op=login01&ob=usuario">Acceder</a></li>
</ul>
    <%}%>
</p>