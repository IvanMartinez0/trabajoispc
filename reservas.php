<?php

include "conexionsql.php";

if (!$conexion){
    die("Fallo la conexion".mysqli_connect_error());
}
else{
    echo "muchas gracias por su reserva!!";
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $tel = $_POST['telefono'];
    $dni = $_POST['dni'];
    $fecha = $_POST['fechas'];
	$mesa = $_POST['mesas'];
    $horario = $_POST['horarios'];

    $query= "INSERT INTO `reserva`(nombre_res,apellido_res,dni_res,tel_res,fecha_res,mesa_res,hora_res)
	 VALUES ('$nombre','$apellido','$dni','$tel','$fecha','$mesa','$horario')";

	 echo $query;

	 $resultado=mysqli_query($conexion,$query);
     mysqli_close($conexion);
}
?>
