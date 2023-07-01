<?php
include "conexionsql.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/reserva.css">
    <link rel="icon" href="icono.png">
    <title>Reserva</title>
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
                <a href="" class="desplegable-link">
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
                <a href="#" class="desplegable-link">
                    <img src="img/reserva.png" alt="icono-desplegable">
                    <span class="desplegable-span">Reserva</span>
                </a>
            </li>

            <li class="lista-desplegable">
                <a href="quienesSomos.html" class="desplegable-link">
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
    <div class="caja-formulario">
        <div class="subCaja-formularios">
            <div class="formulario">

                <form action="reservas.php" method="post">

                    <div class="grupo">
                        <input type="text" name="nombre" id="name" required><span class="barra"></span>
                        <label for="">Nombre</label>
                    </div>   

                    <div class="grupo">
                        <input type="text" name="apellido" id="name" required><span class="barra"></span>
                        <label for="">Apellido</label>
                    </div>

                    <div class="grupo">
                        <input type="number" name="telefono" id="name" required><span class="barra"></span>
                        <label for="">Telefono</label>
                    </div>

                    <div class="grupo">
                        <input type="number" name="dni" id="name" required><span class="barra"></span>
                        <label for="">D.N.I</label>
                    </div>

                    <div class="grupo">
                        <input type="date" name="fechas" id="name" required><span class="barra"></span>
                        <label for="">Fecha a asistir</label>
                    </div>

                    <div class="grupo">

                        <label class="segundo">Horarios disponibles</label>
                        <select name="horarios">
        
                        <?php
                                
                                $query="SELECT * FROM horario order by 2";
                            
                                $resultado=mysqli_query($conexion,$query);
        
                                $fila=mysqli_num_rows($resultado);
        
                                if($fila>0)
        
                                    {
                                        while($registro = mysqli_fetch_array ($resultado))
                                
                                            {
                                                echo '<option value="'.$registro[0].'">'.$registro[1].'</option>'; 
        
                                                
                                        
                                            }
                                    }
                                else
                                    {
                                        echo '<option> sin datos</option>';
                                    }
                            ?>
        
                        </select>
                    </div>

                    <div class="grupo">

                    <label class="segundo">Mesas disponibles para:</label>
				<select name="mesas">

				<?php
						
						$query="SELECT * FROM mesa order by 2";
					
						$resultado=mysqli_query($conexion,$query);

						$fila=mysqli_num_rows($resultado);

						if($fila>0)

							{
								while($registro = mysqli_fetch_array ($resultado))
						
									{
										echo '<option value="'.$registro[0].'">'.$registro[1].'</option>'; 

										
								
									}
							}
						else
							{
								echo '<option> sin datos</option>';
							}
					?>
                    </div>

                     <div class="botones">
            <input type="submit" name="Enviar" class="botones">
                    </div>
				</select>
                </form>
            </div>
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
                <li class="sub-footer"><a href="menuDesayuno.html">Desayuno/Merienda</a></li>
                <li class="sub-footer"><a href="#">Almuerzo/Cena</a></li>
                <li class="sub-footer"><a href="menuPromo.html">Promos</a></li>
            </div>
            <li><a href="Reserva.html">Reservas</a></li>
        </ul>
    </div>
</footer>
</html>
