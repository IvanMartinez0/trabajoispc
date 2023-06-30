<?php
include("conexionsql.php");
 

$sql = "SELECT * FROM reserva";
$query = mysqli_query($conexion, $sql);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/style.css" rel="stylesheet">
    <title>Listas de reservas</title>
</head>

<body>
 
        <h2>Reservas registradas</h2>
        <table>
            <thead>
                <tr>
                    
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>DNI</th>
                    <th>Telefono</th>
                    <th>Mesa</th>
                    <th>Horario</th>
                    <th>fecha</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = mysqli_fetch_array($query)): ?>
                    <tr>
                        
                        <th><?= $row['nombre_res'] ?></th>
                        <th><?= $row['apellido_res'] ?></th>
                        <th><?= $row['dni_res'] ?></th>
                        <th><?= $row['tel_res'] ?></th>
                        <th><?= $row['mesa_res'] ?></th>
                        <th><?= $row['hora_res'] ?></th>
                        <th><?= $row['fecha_res'] ?></th>
                        <th><a href="actualizarReserva.php?id_res=<?= $row['id_res']?>"class="users-table--edit">Editar</a></th> 
                        <th><a href="eliminarReserva.php?id_res=<?= $row['id_res'] ?>" class="users-table--delete" >Eliminar</a></th>
                    </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
    </div>

</body>

</html>