<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/newbody2.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cliente | Revisar cita</title>
        <link rel="stylesheet" href="css/estilos7.css">
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
    </head>
    <body>
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
                
         <%--Formulario de cita--%>   
         <div  class="form-register">
        <form name="fruser" method="post" action="cita.jsp" >
         <center>
        <h1>Revise su Cita</h1>
        
        <b>DNI:                 </b><input type="text" name="dni"    id="dni"   class="controls" placeholder="Ingrese su DNI"       maxlength="8"><br>
        <input type="submit" value="Buscar citas" onclick="return validar()" class="botons" style="margin: 5px"><br>
        <input type="button" value="Cancelar"   onClick="window.location.href='index.jsp'"  class="botons" style="margin: 5px">
        </form>
         </div>
        
<div class="scroll">
                    
<!--Creacion de la tabla de citas-->                  
                <table border="1" width="90%" id="full">
                    <thead>
                    <tr>
                    <center>
                        <th>NOMBRE</th><th>DNI</th><th>TELÉFONO</th><th>PAQUETE</th><th>FECHA</th><th>HORA</th>
                    </center>
                </tr></thead>
        <div class="container mt-4" id="titulo1">
            <h3><strong>Listado de Citas:</strong></h3>
        </div>
        <tbody>
            
<!--Ejecuta el comando a la base de datos para obtener los valores completos de las citas-->            
        <%
        String dni=request.getParameter("dni");
        if(dni!=null){
try{
            PreparedStatement pst = conex.prepareStatement("select nomape, dni_cli, telf, pack, fecha, hora from cita where DNI_CLI="+dni+"");
            ResultSet rs = pst.executeQuery();
        %>
        
        <%
        while(rs.next()) {
            
            String nomape=rs.getString(1);
            String dni_cli=rs.getString(2);
            String telf=rs.getString(3);
            String pack=rs.getString(4);
            String fecha=rs.getString(5);
            String hora=rs.getString(6);
        %>
        <tr>
            
            <td><%= rs.getString("nomape")%></td>
            <td><%= rs.getString("dni_cli")%></td>
            <td><%= rs.getString("telf")%></td>
            <td><%= rs.getString("pack")%></td>
            <td><%= rs.getString("fecha")%></td>
            <td><%= rs.getString("hora")%></td>
            
        </tr>
        <%
            }
        %>
    </table>
        <%
            }
            catch(Exception e){
                out.println(e);
                out.println("Something was wrong!! Please try again");
            }}
        %>               
                </div>
    </body>
    <script>
        function validar(){
        dni  = document.getElementById("dni").value;
        	    console.log(dni);

            if(dni.length===0){
            swal('ERROR','Por favor, ingrese su DNI');
            return false;}}
        
    </script>
</html>