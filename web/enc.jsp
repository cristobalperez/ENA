<%-- 
    Document   : enc
    Created on : 27-06-2018, 22:55:16
    Author     : O.B.A
--%>

  <%@page import="java.sql.*"%>
<%
String id=request.getParameter("count");  
 String buffer="<label> Encargado: <select name='encargado' id='encargado'><option value='-2'>- Seleccionar -</option>";  

 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("SELECT * FROM encargado WHERE id_asignado='"+id+"';");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString("id")+"'>"+rs.getString("encargado")+"</option>";
   }  
 buffer=buffer+"</select>";  
 
 response.getWriter().println(buffer); 
  %>
