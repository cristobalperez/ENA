<%-- 
    Document   : Revisar
    Created on : 27-06-2018, 14:55:00
    Author     : O.B.A
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username= request.getParameter("username");
            String password= request.getParameter("password");
            String query = "SELECT * FROM usuario where username='"+username+"' and password='"+password+"';"; 
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
          try {
                Class.forName("com.mysql.jdbc.Driver");
                con= DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");
                st= con.createStatement();
                rs= st.executeQuery(query);
                if(rs.next()){
                    response.sendRedirect("menu.jsp");
                }else{
                    response.sendRedirect("errorindex.jsp?msg=1");
                }
              } catch (SQLException ex) {
                  throw new SQLException (ex);
              }
  
        %>
    </body>
</html>
