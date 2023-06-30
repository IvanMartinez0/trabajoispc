<?php

include("conexionsql.php");

$id = $_POST['id_res'];
$nombre = $_POST['Nombre'];
$apellido = $_POST['Apellido'];
$dni = $_POST['DNI'];
$telefono = $_POST['Telefono'];
$mesa = $_POST["Mesa"];
$horario = $_POST["Horario"];
$fecha = $_POST["fecha"];

$sql = "UPDATE reserva SET nombre_res='$nombre', apellido_res='$apellido', dni_res='$dni', tel_res='$telefono', mesa_res='$mesa', hora_res='$horario', fecha_res='$fecha' WHERE id_res='$id'";
$query = mysqli_query($conexion, $sql);

if ($query) {
    Header("Location: menuActualizar.php");
} else {
    // Manejar el error aquí
}

?>
