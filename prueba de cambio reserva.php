<?php
include "conexionsql.php";

$sql= "SELECT `nombre_res`,`apellido_res`,`dni_res`,`tel_res`,`fecha_res`,`hora_res`,`mesa_res` FROM reserva"; /*se piden los datos que se van a mostrar*/
$query= mysqli_query($conexion,$sql);/*la coneccion*/


  ?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifique su reserva</title>
</head>
<body>
    <div>
        
<form action="">
    <h1>Editar Reserva</h1>
<input type="text" name="Nombre" placeholder="Nombre">
<input type="text" name="apellido" placeholder="apellido">
<input type="text" name="DNI" placeholder="dni">
<input type="text" name="telefono" placeholder="telefono">
<input type="date" name="fecha" placeholder="fecha">
<input type="text" name="hora" placeholder="horario">
<input type="text" name="mesa" placeholder="mesa">
<input type="submit" name="Modificar">


</form>

    </div>
    <div>
        
<table>
    <thead>
        <tr>
            <th>Nombre</th>
            <th>Aoellido</th>
            <th>DNI</th>
            <th>Telefono</th>
            <th>Fecha</th>
            <th>Horario</th>
            <th>Mesa</th>
        </tr>
    </thead>
    <tbody>
        <?php while($row = mysqli_fetch_array($query)):   /*bucle while que imprime los datos de las personas */?>
        <tr>
        <th> <?= $row ['nombre_res']; /*al usar el comando = $row se ahorra el "echo" */ ?></th>
        <th><?= $row ['apellido_res'] ?></th>
        <th><?= $row ['dni_res'] ?></th>
        <th><?= $row ['tel_res'] ?></th>
        <th><?= $row ['fecha_res'] ?></th>
        <th><?= $row ['hora_res'] ?></th>
        <th><?= $row ['mesa_res'] ?></th>
        <th>Editar</th>
        <th>Eliminar</th>
    </tr>
<?php endwhile;  /*finalizacion del bucle*/?>
    </tbody>
</table>

    </div>
</body>
</html>

