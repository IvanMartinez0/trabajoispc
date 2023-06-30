<?php

include("conexionsql.php");


$id=$_GET["id_res"];

$sql="DELETE FROM reserva WHERE id_res='$id'";
$query = mysqli_query($conexion, $sql);

if($query){
    Header("Location: menuActualizar.php");
}else{

}

?>