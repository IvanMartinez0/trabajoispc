<?php
include("conexionsql.php");
 
$buscar = $_POST['buscar'];

$sql = "SELECT reserva.id_res, reserva.nombre_res, reserva.apellido_res, reserva.dni_res, reserva.tel_res, mesa.capacidad_mesa, horario.hora, reserva.fecha_res 
        FROM reserva 
        JOIN horario ON reserva.id_res = horario.id_hora 
        JOIN mesa ON reserva.id_res = mesa.id_mesa 
        WHERE reserva.dni_res LIKE '$buscar%'";

$query = mysqli_query($conexion, $sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../css/style.css" rel="stylesheet">
    <title>Listas de reservas</title>
</head>
<header>
    <div class="contenedor">
        <h id="titulo">Parrilla de papá Seba</h>
        <a href="#menu" class="nav_menu">
            <img src="../img/menu.svg" class="icono">
        </a>
        <a href="#" class="nav_menu nav_menu--segundo">
            <img src="../img/cerrar.svg" class="icono">
        </a>

        <ul class="menu_desplegable" id="menu">
            <li class="lista-desplegable">
                <a href="#" class="desplegable-link">
                    <img src="../img/home.svg" alt="icono-desplegable">
                    <span class="desplegable-span">Inicio</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="" class="desplegable-link">
                    <img src="../img/platillo.png" alt="icono-desplegable">
                    <span class="desplegable-span">Menu</span>
                    <img src="../img/flecha2.png" alt="" class="flecha">

                    <input type="checkbox" class="desplegable-check">
                </a>

                <div class="contenido-menu">
                    <ul class="sub-menu">
                        <li class="menu-li">
                            <a href="menuPromo.html" class="ancla-menu">Promos</a>
                        </li>
                    
                        <li class="menu-li">
                            <a href="menuDesayuno.html" class="ancla-menu">Desayuno/Merienda</a>
                        </li>

                        <li class="menu-li">
                            <a href="menuAlmuerzo.html" class="ancla-menu">Almuerzo/Cena</a>
                        </li>
                        </li>
                    </ul>
                </div>
            </li>

            <li class="lista-desplegable">
                <a href="reservaFormulario.php" class="desplegable-link">
                    <img src="../img/reserva.png" alt="icono-desplegable">
                    <span class="desplegable-span">Reserva</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="quienesSomos.html" class="desplegable-link">
                    <img src="../img/quienes-somos.png" alt="icono-desplegable">
                    <span class="desplegable-span">Quienes Somos?</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="#" class="desplegable-link">
                    <img src="../img/ayuda.png" alt="icono-desplegable">
                    <span class="desplegable-span">Ayuda</span>
                </a>
            </li>
        </ul>
    </div>
</header>
<body>
    <div class="fondo">
    </div>
    <div class="contenido">

    </div>
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
                    <th><?= $row['capacidad_mesa'] ?></th>
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

