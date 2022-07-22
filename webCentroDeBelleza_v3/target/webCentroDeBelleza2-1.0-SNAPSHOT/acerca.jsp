<%-- 
    Document   : acerca
    Created on : 22/06/2022, 02:29:42 AM
    Author     : ASUS F15
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Body Center | Acerca de</title>
        <link rel="stylesheet" href="css/estilos6.css">
    </head>
    <body>
        <%--Menu superior --%>
        <div id="menu" class="container">
            <ul>
                <li><a href="#" onClick="window.location.href='index.jsp'">Inicio</a></li>
                <li><a href="#" onClick="window.location.href='servicios.jsp'">Servicios</a></li>
                <li><a href="#" onClick="window.location.href='especialistas.jsp'">Especialistas</a></li>
                <li><a href="#" onClick="window.location.href='contactanos.jsp'">Contáctanos</a></li>
                <li><a href="#" onClick="window.location.href='acerca.jsp'">Acerca de</a></li>
                
            <%--Login--%>
                <li class="login"><a href="#" onClick="window.location.href='login.jsp'">Administración</a></li>
                <li class="login"><a href="#" onClick="window.location.href='cita.jsp'">Revisa tu cita</a></li>
            </ul>
        </div>
        <h1>AQUI IRA UNA DESCRIPCION DE LA EMPRESA, JUNTO A SU MISION Y VISION</h1>
    </body>
</html>
