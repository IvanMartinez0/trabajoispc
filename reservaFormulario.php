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
    <title>Document</title>
</head>
<header>
    <div class="contenedor">
        <h id="titulo">Restaurant</h>
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
                            <a href="#" class="ancla-menu">Promos</a>
                        </li>
                    
                        <li class="menu-li">
                            <a href="#" class="ancla-menu">Desayuno/Merienda</a>
                        </li>

                        <li class="menu-li">
                            <a href="#" class="ancla-menu">Almuerzo/Cena</a>
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
    <div class="caja-formulario">
        <div class="subCaja-formularios">
            <div class="formulario">
                <form action="#">
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
                        <label>Horarios disponibles</label>
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
                    <label>Mesas disponibles para:</label>
				<select name="mesas">

				<?php
						
						$query="SELECT * FROM mesas order by 2";
					
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
				</select>
                </form>
            </div>
        </div>
        <div class="botones" type="submit">
            <button>enviar</button>
        </div>
    </div>
</body>
    <footer>
        <ul>
            <li><a href="index.html">Inicio</a></li>
            <li><a href="QuienesSomos.html">Quienes Somos?</a></li>
            <li><a href="ListaPrecio.html">Lista De Precios</a></li>
            <li><a href="#">Reservas</a></li>
        </ul>
    </footer>
</html>
