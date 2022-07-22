<%-- 
    Document   : registro
    Created on : 4 may. 2022, 03:42:47
    Author     : ASUS F15
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Cita</title>
        
        <%--Estilos para la alerta y el registro--%>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="css/estilos2.css">
        
    </head>
    <body>
        
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
            <input type="button" value="Aceptar" onClick="window.location.href='index.jsp'" class="aceptar" style="margin: 5px">
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
            <form name="fruser" method="post" action="registro.jsp" class="registro">
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
                    <input type="button" value="Cancelar"   onClick="window.location.href='index.jsp'"  class="botons" style="margin: 5px"></center>
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
</html>