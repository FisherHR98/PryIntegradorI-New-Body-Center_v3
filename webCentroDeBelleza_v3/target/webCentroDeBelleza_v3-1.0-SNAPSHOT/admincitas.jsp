<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos7.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="imagenes/newbody2.png" type="image/png"/>

        <title>New Body Center</title>
    </head>
    <body>
        
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

        </nav>
                    
 <!--Mensaje de Bienvenida-->
        <div class="container mt-4" id="encabezado2">
            <h2><b>Bienvenido usuario : </b><strong>${codigo}</strong></h2>
        </div>
        
        <div class="container mt-4" id="tabla">
            <table border="2" id="flujo">
                <!--Se define las celdas superiores-->

                
                <br>
                <div class="scroll">
                    
<!--Creacion de la tabla de citas-->                  
               <%--Formulario de cita--%>   
               <div  class="form-register" style="margin: auto">
        <form name="fruser" method="post" action="admincitas.jsp">
         <center>
        <h1>Revise su Cita</h1>
        
        <b>DNI:                 </b><input type="text" name="dni"    id="dni"   class="controls" placeholder="Ingrese su DNI"       maxlength="20"><br>
        <input type="submit" value="Buscar citas" onclick="return validar()" class="botons" style="margin: 5px"><br>
        <input type="button" value="Cancelar"   onClick="window.location.href='admincitas.jsp'"  class="botons" style="margin: 5px">
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
            PreparedStatement pst = conex.prepareStatement("select nomape, dni_cli, telf, pack, fecha, hora from cita where dni_cli="+dni+"");
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