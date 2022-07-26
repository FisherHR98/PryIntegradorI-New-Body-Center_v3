<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conexion.jsp" %>
<html>
    <head>
        <script type="text/javascript">
                history.forward();
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="imagenes/logo1.png" type="image/png"/>
        <title>New Body Center</title>
    </head>
    <body>
        
<!--Barra Superior-->
<nav class="navbar navbar-dark bg-dark"><a href="registro.jsp">NUEVA CITA</a>
            
          


            <div class="dropdown" id="perfil">
                <a style="color: white" href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">PERFIL</a>
                <div class="dropdown-menu text-center">
                    <a><img src="imagenes/usuario.png" height="80" width="80"/></a><br>
                    <a>${dni_cli}</a>
                    <div class="dropdown-divider"></div>
                    <a href="Controlador?accion=Salir" class="dropdown-item">CERRAR SESIÓN</a>
                </div>  
            </div>
        </nav>
                    
 <!--Mensaje de Bienvenida-->
        <div class="container mt-4" id="encabezado2">
            <h2><b>Bienvenido usuario : </b><strong>${dni_cli}</strong></h2>
        </div>
        
<!--Mensaje de Flujo de Clientes-->
        <div class="container mt-4" id="titulo1">
            <h3><strong>Citas Realizadas:</strong></h3>
        </div>
        <div class="container mt-4" id="tabla">
            <table border="2" id="flujo">
                <!--Se define las celdas superiores-->
                <thead>
        <tr>
            <center>
        <th>Total de citas</th>
        </tr>
                </thead>
                
<!--Conexion y obtension de la hora con la base de datos-->
            <tbody>
        <%
        try{
            int n1=0;
            PreparedStatement pst = conex.prepareStatement("select count(dni_cli) from cita where DNI_CLI='"+request.getSession().getAttribute("dni_cli")+"'");
            ResultSet rs = pst.executeQuery();

        %>
        <%
            if(rs.next()) {
        %>
        
 <!--Se muestran la cantidad de citas por flujo de horarios-->      
        <tr>
            <td><%= n1=rs.getInt(1)%></td>
        </tr>
        <%
                          }
        %>
            </table><br><br>
        
        <%
        }
        catch(Exception e){
            out.println(e);
            out.println("Something was wrong!! Please try again");
        }
        %>
            </center>
                <br>
        <div class="container mt-4" id="tabla">
            <table border="2" id="flujo">
                <!--Se define las celdas superiores-->

      <!--TABLA CITAS MAÑANA-->             
<div class="container mt-4" id="tabla">
            <table border="2" id="flujo">
                <!--Se define las celdas superiores-->
                <br>
                <div class="scroll">
                    
<!--Creacion de la tabla de citas-->                  
                <table border="1" width="90%" id="full">
                    <thead>
        <tr>
        <center>
            <th>ID</th><th>NOMAPE</th><th>DNI</th><th>TELF</th><th>PACK</th><th>FECHA</th><th>HORA</th>
        </center>
                </tr></thead>
        <div class="container mt-4" id="titulo1">
            <h3><strong>Citas hasta ahora:</strong></h3>
        </div>
        <tbody>
            
<!--Ejecuta el comando a la base de datos mediante lenguaje sql-->          
        <%
        try{
            PreparedStatement pst = conex.prepareStatement("select * from cita where DNI_CLI='"+request.getSession().getAttribute("dni_cli")+"'");
            ResultSet rs = pst.executeQuery();
        %>
        
        <%
        while(rs.next()) {
            String id=rs.getString(1);
            String nomape=rs.getString(2);
            String dni_cli=rs.getString(3);
            String telf=rs.getString(4);
            String pack=rs.getString(5);
            String fecha=rs.getString(6);
            String hora=rs.getString(7);
        %>
        <tr>
            <td><%= id %></td>
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
            }
        %>               
                </div>  
         <br>
                
              
                </div>  
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>