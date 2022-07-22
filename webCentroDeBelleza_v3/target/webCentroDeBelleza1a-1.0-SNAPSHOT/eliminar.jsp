<%-- 
    Document   : eliminar
    Created on : 27/05/2022, 03:22:13 AM
    Author     : ASUS F15
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>


<%@include file="conexion.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
String cod=request.getParameter("cod");
Connection cnx=null;
ResultSet rs=null;
Statement sta=null;

try{
Class.forName("com.mysql.jdbc.Driver");
cnx=DriverManager.getConnection("jdbc:mysql://localhost/bdnewbodycenter","root","");
sta=cnx.createStatement();

sta.executeUpdate("delete from cita where ID='"+cod+"'");

request.getRequestDispatcher("FlujoClientes.jsp").forward(request, response);
sta.close();
rs.close();
cnx.close();

}catch(Exception e){out.print(e+"");}

%>
    </body>
    
    
</html>
