
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="imagenes/newbody2.png">
        <title>New Body Center</title>
        <link rel="stylesheet" href="css/style2.css">
    </head>
    <body>
<%--FORMULARIO DEL LOGIN DEL CLIENTE--%>
        <div class="loginbox">
            <img src="imagenes/unnamed.png" alt="" class="avatar">
            <h1>Inicie Sesión</h1><br>
            <form action="Controlador3" method="POST">                                
                <p>Usuario</p>
                    <input class="form-control" type="text" name="txtdni" placeholder="DNI" id="codigo" maxlength="8">
                <p>Contraseña</p>
                    <input class="form-control" type="password" name="txttelf" placeholder="Celular" id="passw" maxlength="9">
<%--Botones de validación y de Cancelar--%>                    
                    <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar" id="boton">
                    <input type="button" value="Cancelar"   onClick="window.location.href='index.jsp'"  class="botons" style="margin: 5px">
                    <center><a>¿Nuevo usuario? </a><a href="registrocliente.jsp"><b>Crea una cuenta aquí</b></a></center>
            </form>
        </div>
    </body>
</html>
