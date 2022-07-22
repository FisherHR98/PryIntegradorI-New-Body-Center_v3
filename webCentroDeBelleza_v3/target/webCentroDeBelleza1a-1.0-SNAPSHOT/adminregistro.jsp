<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos8.css" rel="stylesheet" type="text/css"/>
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
           <a class="dropdown-item" href="FlujoClientes.jsp">Inicio</a>
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
            <%--Envio y validacion a la base de datos--%>
        <%
        String name=request.getParameter("nombre");
        String dni=request.getParameter("dni");
        String telf=request.getParameter("telef");
        String pack=request.getParameter("Pack");
        String fecha=request.getParameter("fecha");
        String hora=request.getParameter("hora");
        if(hora!= null){
            String qry="insert into cita(NOMAPE,DNI_CLI,TELF,PACK,FECHA,HORA) values('"+name+"','"+dni+"','"+telf+"','"+pack+"','"+fecha+"','"+hora+"')";
            sql.executeUpdate(qry);
        %>
    <center>
            <div class='citare'>
                <p class='reser'>Cita reservada</p>
            </div>
            <input type="button" value="Aceptar" onClick="window.location.href='adminregistro.jsp'" class="aceptar" style="margin: 5px">
    </center>
        <%
        }else{
        %>
        
        <%--Caracteristicas del registro--%>
        <div class="item" id="item1">
            <h1>Informacion de Paquetes:</h1><br>
                <h2>Paquete 1: POSTLIPO (S/. 450)</h2>
                        <h3>&nbsp&nbsp-Ultracavitador</h3>
                        <h3>&nbsp&nbsp-Radiofrecuencia</h3><br>
                    <h2>Paquete 2: FLACIDEZ (S/. 450)</h2>
                        <h3>&nbsp&nbsp-Ondes rusas</h3>
                        <h3>&nbsp&nbsp-Radiofrecuencia</h3><br>
                    <h2>Paquete 3: REDUCTOR (S/. 450)</h2>
                        <h3>&nbsp&nbsp-Lipoláser</h3>
                        <h3>&nbsp&nbsp-Ondas rusas</h3><br>
                    <h2>Paquete 4: EMSCULT (S/. 550)</h2>
                        <h3>&nbsp&nbsp-Maquina Emscult</h3><br>
                    <h2>Paquete 5: PEPTONAS (S/. 1300)</h2>
                        <h3>&nbsp&nbsp-Vacuom</h3>
                        <h3>&nbsp&nbsp-Ondas Rusas</h3>
                        <h4><i>&nbsp&nbsp(La cantidad de peptonas varia dependiendo de la zona que &nbsp&nbspdesee trabajarse)</i></h4>
        </div>
        <section id="form-register">
        <div  class="form-register">
            <form name="fruser" method="post" action="adminregistro.jsp" class="registro">
                <center><h4>REGISTRO DE CITA</h4></center>
            <b>INGRESE SUS DATOS:   </b><br><br>
            <b>Nombres y Apellidos: </b><input type="text" name="nombre" id="noma"  class="controls" placeholder="Ingrese sus datos"><br>
            <b>DNI:                 </b><input type="text" name="dni"    id="dni"   class="controls" placeholder="Ingrese su DNI"       maxlength="8"><br>
            <b>Telefono:            </b><input type="text" name="telef"  id="tel"   class="controls" placeholder="Ingrese su Telefono"  maxlength="9"><br>
            <b>ESCOJA SU CITA       </b><br><br>
            <b>Paquetes:            </b><select name="Pack" id="pack" class="controls">
                <option value="" selected="selected">--Seleccione un paquete--</option>
                <option value="01">Paquete 1</option>
                <option value="02">Paquete 2</option>
                <option value="03">Paquete 3</option>
                <option value="04">Paquete 4</option>
                <option value="05">Paquete 5</option>
            </select><br>
            <b>Horario:</b><br><i>Nota: Horario de Atencion de 8am - 10pm</i><br> <input type="date" id="fecha" name="fecha" class="controls2"><input type="time" id="hora" name="hora" class="controls2" min="08:00" max="22:00">
            <br>
            <center><input type="submit" value="Crear Cita" onclick="return validar()"                  class="botons" style="margin: 5px"><br>
                    <input type="button" value="Cancelar"   onClick="window.location.href='adminregistro.jsp'"  class="botons" style="margin: 5px"></center>
        </form>
        <%}//else%>
        </div>
        <div class="izquierda"></div>
        </section>
    </body>
    
     <%--Evitar errores con valores nulos--%>
        <script>
        document.getElementById('fecha').min = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
            
            
        function validar(){
            noma  = document.getElementById("noma").value;
            dni   = document.getElementById("dni").value;
            tel   = document.getElementById("tel").value;
            pack  = document.getElementById("pack").value;
            fech  = document.getElementById("fecha").value;
            hor   = document.getElementById("hora").value;

            console.log(noma);
            console.log(dni);
            console.log(tel);
            console.log(pack);
            console.log(fech);
            console.log(hor);

            if(noma.length===0){
            swal('ERROR','Por favor, ingrese sus Nombres y Apellidos');
            return false;}

            if(dni.length===0){
            swal('ERROR','Por favor, ingrese su DNI');
            return false;}

            if(tel.length===0){
            swal('ERROR','Por favor, ingrese su número de TELEFONO');
            return false;}

            if(pack.length===0){
            swal('ERROR','Por favor, escoja un PAQUETE');
            return false;}

            if(fech.length===0){
            swal('ERROR','Por favor, escoja la FECHA de su cita');
            return false;}

            if(hor.length===0){
            swal('ERROR','Por favor, escoja la HORA de su cita');
            return false;}

        }  
        
             
        </script> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
            </body>
</html>