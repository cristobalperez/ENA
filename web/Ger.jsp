<%-- 
    Document   : Ger
    Created on : 26-06-2018, 23:02:53
    Author     : O.B.A
--%>

<%@page import="java.sql.*"%>
<%
String id=request.getParameter("count");  
 String buffer="<label>Departamento: <select name='depto' ><option value='-1'>- Seleccionar -</option>";  

 Class.forName("com.mysql.jdbc.Driver").newInstance();  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("SELECT * FROM departamento where id_gerencia='"+id+"' ;");  
   while(rs.next()){
   buffer=buffer+"<option value='"+rs.getString(1)+"'>"+rs.getString("departamento")+"</option>";  
   }  
 buffer=buffer+"</select>";  
 
 response.getWriter().println(buffer); 

 %>
   