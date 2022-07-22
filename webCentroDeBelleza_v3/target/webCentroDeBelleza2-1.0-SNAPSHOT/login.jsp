
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="imagenes/newbody2.png">
        <title>Administración | Login</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="loginbox">
            <img src="imagenes/unnamed.png" alt="" class="avatar">
            <h1>Login</h1>
            <form action="Controlador" method="POST">                                
                <p>Usuario</p>
                    <input class="form-control" type="text" name="txtcode" placeholder="Ingrese código" id="codigo">
                <p>Contraseña</p>
                    <input class="form-control" type="password" name="txtpassw" placeholder="Ingrese contraseña" id="passw">
                    <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar" id="boton">
                    <input type="button" value="Cancelar"   onClick="window.location.href='index.jsp'"  class="botons" style="margin: 5px">
            </form>
        </div>
    </body>
</html>
