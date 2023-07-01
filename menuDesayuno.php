<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/lista.css">
    <title>Menu</title>
</head>
<header>
    <div class="contenedor">
        <a href="index.html" class="Direccion">
        <h id="titulo">Parrilla de papá Seba</h>
        </a>
        <a href="#menu" class="nav_menu">
            <img src="img/menu.svg" class="icono">
        </a>
        <a href="#" class="nav_menu nav_menu--segundo">
            <img src="img/cerrar.svg" class="icono">
        </a>

        <ul class="menu_desplegable" id="menu">
            <li class="lista-desplegable">
                <a href="index.html" class="desplegable-link">
                    <img src="img/home.svg" alt="icono-desplegable">
                    <span class="desplegable-span">Inicio</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="#" class="desplegable-link">
                    <img src="img/platillo.png" alt="icono-desplegable">
                    <span class="desplegable-span">Menu</span>
                    <img src="img/flecha2.png" alt="" class="flecha">

                    <input type="checkbox" class="desplegable-check">
                </a>

                <div class="contenido-menu">
                    <ul class="sub-menu">
                        <li class="menu-li">
                            <a href="menuPromo.html" class="ancla-menu">Promos</a>
                        </li>
                    
                        <li class="menu-li">
                            <a href="#" class="ancla-menu">Desayuno/Merienda</a>
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
                    <img src="img/reserva.png" alt="icono-desplegable">
                    <span class="desplegable-span">Reserva</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="#" class="desplegable-link">
                    <img src="img/quienes-somos.png" alt="icono-desplegable">
                    <span class="desplegable-span">Quienes Somos?</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="#" class="desplegable-link">
                    <img src="img/ayuda.png" alt="icono-desplegable">
                    <span class="desplegable-span">Ayuda</span>
                </a>
            </li>
        </ul>
    </div>
</header>
<body>
        <div class="fondo">
        </div>
        <div class="caja">
            <img src="img/cartelera2.jpg" alt="" class="foto">
        </div>
        <div class="cajaP">
            <?php 
    include "conexionsql.php";
    $sql = "SELECT * FROM producto";
    $query = mysqli_query($conexion, $sql);
    while ($row = mysqli_fetch_array($query)): 
    ?>
    <ul>
        <li><?= $row['nombre_prod'] ?></li> 
        <?= $row['descrip_prod'] ?>
    </ul>
    <?php endwhile; // Se quita el cierre de la llave extra y se añade "endwhile" ?>
        </div>
    </div>
</body>
<footer>
    <div class="derechos">
        <p id="derechos">Copyright © 2023 IPETyM 246. All rights reserved.</p>
    </div>

    <div class="link">
        <ul>
            <li><a href="index.html">Inicio</a></li>
            <li><a href="QuienesSomos.html">Quienes Somos?</a></li>
            <div class="caja-footer">
                <p>MENU</p>
                <li class="sub-footer"><a href="#">Desayuno/Merienda</a></li>
                <li class="sub-footer"><a href="menuAlmuerzo.html">Almuerzo/Cena</a></li>
                <li class="sub-footer"><a href="menuPromo.html">Promos</a></li>
            </div>
            <li><a href="Reserva.html">Reservas</a></li>
        </ul>
    </div>
</footer>
</html>