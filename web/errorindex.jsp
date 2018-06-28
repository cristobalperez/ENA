<%-- 
    Document   : errorindex
    Created on : 27-06-2018, 15:56:05
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
             <%
        if(request.getParameter("msg").equals("1")){
        %>
        <h1>Error, usuario y/o contraseña no registrado</h1>
        <a href="index.jsp">Volver al log-in</a>
        <%
        }%>
    </body>
</html>
