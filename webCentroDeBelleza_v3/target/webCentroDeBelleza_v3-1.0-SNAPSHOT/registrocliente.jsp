
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NBC | Registrate para acceder</title>
        
<%--Estilos para la alerta y el registro--%>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="css/estiloregis.css">
        
    </head>
    <body>
        
<%--Envio y validacion a la base de datos--%>
        <%
        String name=request.getParameter("nombre");
        String dni=request.getParameter("dni");
        String telf=request.getParameter("telef");
        if(name!= null){
            String qry="insert into cliente(NOMAPE,DNI,TELF) values('"+name+"','"+dni+"','"+telf+"')";
            sql.executeUpdate(qry);
        %>

<%--Mensaje de registro exitoso--%>       
    <center>     
            <div class='citare'>
                <p class='reser'>Usuario registrado</p>
            </div>
            <input type="button" value="Aceptar" onClick="window.location.href='login2.jsp'" class="aceptar" style="margin: 5px">
    </center>
        <%
        }else{
        %>
        
<%--Cuadro de publicidad de la empresa--%>
        <div class="item" id="item1">
            <h1>...</h1><br>
                <h2>...</h2>                      
        </div>

<%--Ingreso de datos--%>        
        <section id="form-register">
        <div  class="form-register">
            <form name="fruser" method="post" action="registrocliente.jsp" class="registro">
                <center><h4>REGISTRE SU CUENTA</h4></center>
            <b>INGRESE SUS DATOS:   </b><br><br>
            <b>Nombres y Apellidos: </b><input type="text" name="nombre" id="noma"  class="controls" placeholder="Ingrese sus datos"><br>
            <b>DNI:                 </b><input type="text" name="dni"    id="dni"   class="controls" placeholder="Ingrese su DNI"       maxlength="8"><br>
            <b>Telefono:            </b><input type="text" name="telef"  id="tel"   class="controls" placeholder="Ingrese su Telefono"  maxlength="9"><br>
            <br>
            <center><input type="submit" value="Registrar" onclick="return validar()"                  class="botons" style="margin: 5px"><br>
                    <input type="button" value="Cancelar"   onClick="window.location.href='index.jsp'"  class="botons" style="margin: 5px">
                    <br><br><a>¿Ya tienes una cuenta? </a><a href="login2.jsp">Inicia sesion aquí</a></center>
        </form>
        <%}//else%>
        </div>
        <div class="izquierda"></div>
        </section>
    </body>
        
<%--JavaScript para evitar errores con valores nulos--%>
        <script>
        function validar(){
            noma  = document.getElementById("noma").value;
            dni   = document.getElementById("dni").value;
            tel   = document.getElementById("tel").value;

            console.log(noma);
            console.log(dni);
            console.log(tel);

            if(noma.length===0){
                swal('ERROR','Por favor, ingrese sus Nombres y Apellidos');
            return false;}

            if(dni.length===0){
                swal('ERROR','Por favor, ingrese su DNI');
            return false;}

            if(tel.length===0){
                swal('ERROR','Por favor, ingrese su número de TELEFONO');
            return false;}
                        }        
                    
        </script> 
</html>