<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="conexion.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos7.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="imagenes/newbody2.png" type="image/png"/>

        <title>New Body Center</title>
        <style>
            @media print {
                .form-register{
                    display: none;
                }
            }
       </style>
    </head>
    <body>
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
    

                
         <%--Formulario de cita--%>   
         <div  class="form-register">
        <form name="fruser" method="post" action="adminimp.jsp">
       <center><h4>INGRESE FECHA</h4></center>                      
        </b><input type="text" name="ndia"    id="dia"   class="controls" placeholder="Ingrese dia"      maxlength="2">
        <input type="text" name="nmonth"  id="month" class="controls" placeholder="Ingrese mes"      maxlength="2">
        <input type="text" name="nyear"   id="year"  class="controls" placeholder="Ingrese año"      maxlength="4">
        <input type="submit" value="Buscar citas" onclick="return validar()" class="botons" style="margin: 5px"><br>
        <input type="submit" value="Imprimir" onclick="print()" class="botons" style="margin: 5px"><br>
        <input type="button" value="Cancelar"   onClick="window.location.href='adminimp.jsp'"  class="botons" style="margin: 5px">
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
        String dia1=request.getParameter("ndia");
        String year1=request.getParameter("nyear");
        String month1=request.getParameter("nmonth");
        if(dia1!=null){
            try{
            
            PreparedStatement pst = conex.prepareStatement("select nomape, dni_cli, telf, pack, fecha, hora from cita where FECHA LIKE ('"+year1+"%') and FECHA LIKE ('%"+month1+"%') and FECHA LIKE ('%"+dia1+"') ORDER BY `hora` ASC ");
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
            dia1  = document.getElementById("ndia").value;
            year1   = document.getElementById("nyear").value;
            month1   = document.getElementById("nmonth").value;
            console.log(dia);
            console.log(year);
            console.log(month);
 

            if(dia.length===0){
            swal('ERROR','Por favor, ingrese dia');
            return false;}

            if(year.length===0){
            swal('ERROR','Por favor, ingrese year');
            return false;}

            if(month.length===0){
            swal('ERROR','Por favor, escoja month de su cita');
            return false;}

        }  
        
    </script>
</html>