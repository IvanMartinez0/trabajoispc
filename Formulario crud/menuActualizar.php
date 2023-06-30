<?php
include("conexionsql.php");
 
$buscar = $_POST['buscar'];

$sql = "SELECT reserva.id_res, reserva.nombre_res, reserva.apellido_res, reserva.dni_res, reserva.tel_res, reserva.mesa_res, horario.hora, reserva.fecha_res FROM reserva JOIN horario ON reserva.id_res = horario.id_hora WHERE dni_res like '$buscar%'";
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
                <th>Fecha</th>
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
                    <th><?= $row['hora'] ?></th>
                    <th><?= $row['fecha_res'] ?></th>
                    <th><a href="actualizarReserva.php?id_res=<?= $row['id_res'] ?>" class="users-table--edit">Editar</a></th>
                    <th><a href="eliminarReserva.php?id_res=<?= $row['id_res'] ?>" class="users-table--delete">Eliminar</a></th>
                </tr>
            <?php endwhile; ?>
        </tbody>
    </table>
</body>

</html>

</html>
