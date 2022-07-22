<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="imagenes/logo1.png" type="image/png"/>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Cita</title>
        
        <%--Estilos para la alerta y el registro--%>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

      <link href="css/estilos8.css" rel="stylesheet" type="text/css"/>
        <title>New Body Center</title>
    </head>
    <body >
        
<!--Barra Superior-->
        <nav class="navbar navbar-dark bg-dark"><a class="nav-link dropdown-toggle" href="FlujoClientes.jsp" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          INICIO
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
           <a class="dropdown-item" href="FlujoClientes.jsp"">Inicio</a>
          <a class="dropdown-item" href="admincitas.jsp">Lista de citas</a>
          <a class="dropdown-item" href="adminregistro.jsp">Registro de Clientes</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="adminimp.jsp">Imprimir</a>
        </div>
            <div class="dropdown" id="perfil">
                <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">PERFIL</a>
                <div class="dropdown-menu text-center">
                    <a><img src="imagenes/usuario.png" height="80" width="80"/></a><br>
                    <a>${codigo}</a>
                    <div class="dropdown-divider"></div>
                    <a href="Controlador?accion=Salir" class="dropdown-item">CERRAR SESIÓN</a>
                </div>  
            </div>
        </nav>
                    <br>

      
        
        <section id="form-register">
        <div  class="form-register">
            <form name="fruser" method="post" action="registro.jsp" class="registro">

            <b>Fecha:</b><br><i>Seleccione la fecha para la consulta</i><br> <input type="date" id="fecha" name="fecha" class="controls2">
            <br>
            <center><input type="submit" value="Crear Cita" class="botons" style="margin: 5px"><br>
                    
        </form>
       
        </div>
        <div class="izquierda"></div>
        </section>
    </body>
    
     <%--Evitar errores con valores nulos--%>
        <script>
        document.getElementById('fecha').min = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
           
        
             
        </script> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            </body>
</html>