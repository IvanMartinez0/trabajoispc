<?php
$nombre_POST['nombre'];
$apellido_POST['apellido'];
$tel_POST['telefono'];
$dni_POST['dni'];
$fecha_POST['fecha'];


include "conexionsql.php";

if (!$conexion){
    die("Fallo la conexion".mysqli_connect_error());
}
else{
    echo "muchas gracias por su reserva!!";
    $query= "INSERT INTO `reservas`(`nombre_res`,`apellido_res`,`dni_res`,`tel_res`,`fecha_reserva`)
	 VALUES ('$nombre','$apellido','$tel','$dni','$fecha')";

	 echo $query;

	 $resultado= mysqli_query($conexion,$query);
	 mysqli_close($conexion);
}
