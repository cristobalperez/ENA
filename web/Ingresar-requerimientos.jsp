<%-- 
    Document   : Ingresar-requerimientos
    Created on : 08-06-2018, 16:09:20
    Author     : O.B.A
--%>

<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

     

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script language="javascript" type="text/javascript">  
      var xmlHttp  
      var xmlHttp
      function select_value1(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="Ger.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChange;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
     

      function stateChange(){   
      if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("depto").innerHTML=xmlHttp.responseText   
      }   
      }
       var xmlHttp  
      var xmlHttp
            function select_value2(str){
      if (typeof XMLHttpRequest != "undefined"){
      xmlHttp= new XMLHttpRequest();
      }
      else if (window.ActiveXObject){
      xmlHttp= new ActiveXObject("Microsoft.XMLHTTP");
      }
      if (xmlHttp==null){
      alert("Browser does not support XMLHTTP Request")
      return;
      } 
      var url="enc.jsp";
      url +="?count=" +str;
      xmlHttp.onreadystatechange = stateChangeEnca;
      xmlHttp.open("GET", url, true);
      xmlHttp.send(null);
      }
      
      function stateChangeEnca(){   
      if(xmlHttp.readyState==4 || xmlHttp.readyState=="complete"){   
      document.getElementById("encargado").innerHTML=xmlHttp.responseText 
      }   
      } 
      </script>
        <title>JSP Page</title>
    </head>
    <body>
        <label>Gerencia: </label>
   
        <select name="Gerencia" onchange="select_value1(this.value)">
            <option value="">- Seleccionar -</option>
            <%
          
            String sql1="SELECT * FROM gerencia;";
           
             Connection conn=null;
             Statement st = null;
            try {
             Class.forName("com.mysql.jdbc.Driver").newInstance();
             conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");
             st= conn.createStatement();
                 ResultSet rs1=st.executeQuery(sql1);
                while(rs1.next()){
                    %>
                    <option value="<%= rs1.getString("id")%>"><%=rs1.getString("gerencia")%></option>
            <%
                }
                rs1.close();
conn.close();
st.close();
                } catch (SQLException ex) {
st.close();
                conn.close();
                    throw new SQLException (ex);
  
                }
                
            %>
            </select>  
                   <br>  
      <div id='depto'> 
          <label>Departamento:</label>
      <select name='depto' >  
      <option value='-1'>- Seleccionar -</option>  
      </select>  
      </div> 

             <label>Asignado a: </label>
   
        <select name="Asignado" onchange="Select_value2(this.value)">
            <option value="">- Seleccionar -</option>
            <%
          
            String sql2="SELECT * FROM asignado;";
           
             Connection conn2=null;
             Statement st2 = null;
            try {
             conn2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimientos","root","");
             st2= conn2.createStatement();
                 ResultSet rs2=st2.executeQuery(sql2);
                while(rs2.next()){
                    %>
                    <option value="<%= rs2.getString("id")%>"><%=rs2.getString("asignado")%></option>
            <%
                }
                rs2.close();
conn2.close();
st2.close();
                } catch (SQLException ex) {
st2.close();
                conn2.close();
                    throw new SQLException (ex);
  
                }
                
            %>
            </select>  
            
                     
      <br>  
      
      <div id='encargado'>  
      
          <label>Encargado:
              <select name='enca' >  
      <option value='-1'>- Seleccionar -</option>  
      </select>  
      </div> 
      
      <p>Requerimiento: <input name='Requerimiento' placeholder ='Ingrese descripción del requerimiento' height="50000">
            
       
</body>
    
</html>
