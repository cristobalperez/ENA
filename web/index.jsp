<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio</title>
    </head>
    <body>
        <div class="div">
            <center>
                <h1>Autentificación</h1>
<form class="form-horizontal" action="Revisar.jsp">
  <div class="form-group">
    <label class="control-label col-sm-2">Usuario: </label>
    <div class="col-sm-10">
      <input name="username"type="text" class="form-control" id="email" placeholder="Enter username">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Password:</label>
    <div class="col-sm-10"> 
      <input name="password"type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox"> Recordar</label>
      </div>
    </div>
  </div>
  <div class="form-group"> 
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Ingresar</button>
    </div>
  </div>
</form>
             </center>
        </div>

    </body>
</html>
