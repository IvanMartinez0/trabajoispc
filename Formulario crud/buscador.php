<?php 
    include("conexionsql.php");
    
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Busqueda de reserva</title>
</head>
<body>
    <form action="menuActualizar.php" method="POST">
        <th>Ingrese su DNI </th>
<br>
<input type="text" name="buscar" placeholder="DNI sin puntos ni guiones">

<input type="submit" name="enviar">

</form>
</body>
</html>
  
