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
    <div class="caja-menu">
        <p>...</p>
    </div>
        <div class="caja-titulo">
            <p id="titulo">Restaurant</p>
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
        <div class="botones">
            <button>enviar</button>
        </div>
    </div>
</body>
    <footer>
        <ul>
            <li><a href="@">Inicio</a></li>
            <li><a href="QuienesSomos.html">Quienes Somos?</a></li>
            <li><a href="ListaPrecio.html">Lista De Precios</a></li>
            <li><a href="Reserva.html">Reservas</a></li>
        </ul>
    </footer>
</html>
