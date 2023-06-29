
<?php
include "conexionsql.php";

// Realizar la consulta SELECT con una condición de unión
$query = "SELECT nombre_res, dni_res, hora_res FROM reserva ";
$result = mysqli_query($conexion, $query);

// Verificar si hay resultados y mostrarlos en una tabla
if (mysqli_num_rows($result) > 0) {
    echo "<table>";
    echo "<tr><th>Nombre</th><th>DNI</th><th>Horario de reserva</th></tr>";
    while ($row = mysqli_fetch_assoc($result)) {
        echo "<tr>";
        echo "<td>" . $row["nombre_res"] . "</td>";
        echo "<td>" . $row["dni_res"] . "</td>";
        echo "<td>" . $row["hora_res"] . "</td>";
        echo "</tr>";
    }
    echo "</table>";
} else {
    echo "No se encontraron registros.";
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Modifique su reserva</title>
</head>
<body>
    <p >¿Desea editar su reserva?</p>
    <input type="submit" name="Borrar">
    <input type="submit" name="Editar">
</body>
</html>
