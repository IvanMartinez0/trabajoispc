/*Creacion de la tabla mesa*/
CREATE TABLE `mesa` (
  `id_mesa` int(11) primary key NOT NULL AUTO_INCREMENT,
  `capacidad_mesa` varchar(30) NOT NULL,
  `num_mesa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Creacion de la tabla producto*/
CREATE TABLE `producto` (
  `id_prod` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_prod` varchar(30) NOT NULL,
  `precio_prod` varchar(30) NOT NULL,
  `descrip_prod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

/*Creacion de la tabla promo*/
CREATE TABLE `promo` (
  `id_promo` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_promo` varchar(30) NOT NULL,
  `descripcion_promo` text NOT NULL,
  `precio_promo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


/* Creacion de la tabla reserva */
CREATE TABLE `reserva` (
  `id_promo` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_res` varchar(30) NOT NULL,
  `dni_res` varchar(30) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_reserva` varchar(11) NOT NULL,
  `mesa_reserva` int(11) NOT NULL,
  `apellido_res` varchar(30) NOT NULL,
  `tel_res` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


INSERT INTO `promo` (`nombre_promo`,`descripcion_promo`,`precio_promo`) VALUES
('desayuno','cafe mediano + 2 criollos + una factura','780'),
('almuerzo','milanesa de carne + papas hervidas + gaseosa a eleccion','2400');

INSERT INTO `producto` (`nombre_prod`, `precio_prod`,`descrip_prod`) VALUES
('milanesa a la napolitana','1100','milanesa de pollo a la napolitana'),
('papas fritas pequeñas','350','paquete de papas fritas tamaño pequeño');

INSERT INTO `mesa` (`capacidad_mesa`, `num_mesa`) VALUES
('5', '1'),
('4', '2');
