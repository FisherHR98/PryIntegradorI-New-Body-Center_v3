<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Body Center</title>
        <link rel="stylesheet" href="css/estilos1.css">
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
        
        <%--Presentación de la página--%>
    <center>
        <div id="inicio">
            <a class='New'>New Body Center</a><br>
            <a class="bienvenido">Centro Especializado en Cirugía y Medicina Estética</a><br><br><br><br>
        
        <%--Direccionamiento de registro--%>
            <center>
            <input type="button" value="Reserve su cita"   onClick="window.location.href='registro.jsp'"  class="botons" style="margin: 5px">
            </center>
        
        </div>
    </center>
    </body>
</html>
