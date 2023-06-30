<?php 
    include("conexionsql.php");
    

    $id_res=$_GET['id_res'];

    $sql = "SELECT reserva.id_res, reserva.nombre_res, reserva.apellido_res, reserva.dni_res, reserva.tel_res, mesa.capacidad_mesa, horario.hora, reserva.fecha_res

     FROM reserva JOIN horario ON reserva.id_res = horario.id_hora JOIN mesa ON reserva.id_res = mesa.id_mesa

     WHERE reserva.id_res=$id_res";
    $query=mysqli_query($conexion, $sql);

    $row=mysqli_fetch_array($query);
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="css/style.css" rel="stylesheet">
        <title>Editar reserva</title>
        
    </head>
    <body>
        <div class="users-form"> 
            <form action="editarReserva.php" method="POST">
               <input type="hidden" name="id_res" value="<?= $row['id_res']?>">
                <input type="text" name="Nombre" placeholder="Nombre" value="<?= $row['nombre_res']?>">
                <input type="text" name="Apellido" placeholder="Apellido" value="<?= $row['apellido_res']?>">
                <input type="text" name="DNI" placeholder="DNI" value="<?= $row['dni_res']?>">
                <input type="text" name="Telefono" placeholder="Telefono" value="<?= $row['tel_res']?>">
                <input type="text" name="Mesa" placeholder="Mesa" value="<?= $row['capacidad_mesa']?>">
                <input type="text" name="Horario" placeholder="Horario" value="<?= $row['hora']?>">
                <input type="date" name="Fecha" placeholder="fecha" value="<?= $row['fecha_res']?>">



 ?>
                <input type="submit" value="Actualizar">
            </form>
        </div>
    </body>
</html>
