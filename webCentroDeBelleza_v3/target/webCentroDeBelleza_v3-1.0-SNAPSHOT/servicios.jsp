
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Body Center | Servicios</title>
        <link rel="stylesheet" href="css/estilos3.css">
    </head>
    <body>
<%--AQUI IRIA EL MODULO DE DATOS DE SERVICIOS QUE BRINDA LA EMPRESA--%>        
        <%--Menu superior --%>
        <div id="menu" class="container">
            <ul>
                <li><a href="#" onClick="window.location.href='index.jsp'">Inicio</a></li>
                <li><a href="#" onClick="window.location.href='servicios.jsp'">Servicios</a></li>
                <li><a href="#" onClick="window.location.href='especialistas.jsp'">Especialistas</a></li>
                <li><a href="#" onClick="window.location.href='contactanos.jsp'">Contáctanos</a></li>
                <li><a href="#" onClick="window.location.href='acerca.jsp'">Acerca de</a></li>
                
            <%--Login--%>
                                <li class="login"><a href="#">Login</a>
                    <ul class="menu-vertical">
                        <li><a href="#" onClick="window.location.href='login.jsp'">Administración</a></li>
                        <br>
                        <li><a href="#" onClick="window.location.href='login2.jsp'">Cliente</a></li>
                    </ul>               
                </li>
            </ul>
        </div>
                
                
        <h1>Nuestros Servicios</h1>
                <div class="galeria">
            <div>
            <img src="imagenes/copia.png" alt="">
                <p>PAQUETE 1</p>
                <a>Escribir informacion del paquete</a>
            </div>

            <div class="foto">
            <img src="imagenes/copia.png" alt="">
                <p>PAQUETE 1</p>
                <a>Escribir informacion del paquete</a>
            </div>

            <div class="foto">
            <img src="imagenes/copia.png" alt="">
                <p>PAQUETE 1</p>
                <a>Escribir informacion del paquete</a>
            </div>

            <div class="foto">
            <img src="imagenes/copia.png" alt="">
                <p>PAQUETE 1</p>
                <a>Escribir informacion del paquete</a>
            </div>

            <div class="foto">
            <img src="imagenes/copia.png" alt="">
                <p>PAQUETE 1</p>
                <a>Escribir informacion del paquete</a>
            </div>
        </div>
    </body>
</html>
