<?php 
    include("conexionsql.php");
    
?>
<<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Busqueda de reserva</title>
</head>
<body>
    <form action="menuActualizar.php" method="POST">
<label>Introduzca su DNI</label>
<input type="text" name="buscar">
<a href="menuActualizar.php>" >Buscar</a>
</form>
</body>
</html>
  