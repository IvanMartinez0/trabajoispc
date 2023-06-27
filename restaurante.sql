
CREATE TABLE `mesa` (
  `id_mesa` int(11) primary key NOT NULL,
  `capacidad_mesa` varchar(30) NOT NULL,
  `num_mesa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO `mesa` (`id_mesa`, `capacidad_mesa`, `num_mesa`) VALUES
(1, '5', '1'),
(2, '4', '2');

CREATE TABLE `producto` (
  `id_prod` int(11) primary key NOT NULL,
  `nombre_prod` varchar(30) NOT NULL,
  `precio_prod` varchar(30) NOT NULL,
  `descrip_prod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



INSERT INTO `producto` ( `id_prod`, `nombre_prod`, `precio_prod`, `descrip_prod`) VALUES
(1,'milanesa a la napolitana', '1100', 'milanesa de pollo a la napolitana'),
(2,'papas fritas pequeñas', '350', 'paquete de papas fritas tamaño pequeño');

CREATE TABLE `promo` (
  `id_promo` int(11) primary key NOT NULL,
  `nombre_promo` varchar(30) NOT NULL,
  `descripcion_promo` text NOT NULL,
  `precio_promo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;



INSERT INTO `promo` (`id_promo`,`nombre_promo`, `descripcion_promo`, `precio_promo`) VALUES
(1,'desayuno', 'cafe mediano + 2 criollos + una factura', '780'),
(2,'almuerzo', 'milanesa de carne + papas hervidas + gaseosa a eleccion', '2400');



CREATE TABLE `reserva` (
  `id_res` int(11) primary key NOT NULL,
  `nombre_res` varchar(30) NOT NULL,
  `dni_res` varchar(30) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_reserva` varchar(11) NOT NULL,
  `mesa_reserva` int(11) NOT NULL,
  `apellido_res` varchar(30) NOT NULL,
  `tel_res` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;


CREATE TABLE `restaurante` (
  `id_rest` int(11) primary key NOT NULL,
  `producto_rest` int(11) NOT NULL,
  `promo-rest` int(11) NOT NULL,
  `reserva_rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


ALTER TABLE `reserva`
 
  ADD KEY `mesa_reserva` (`mesa_reserva`);


ALTER TABLE `restaurante`

  ADD KEY `producto_rest` (`producto_rest`),
  ADD KEY `promo-rest` (`promo-rest`),
  ADD KEY `reserva_rest` (`reserva_rest`);

ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`mesa_reserva`) REFERENCES `mesa` (`id_mesa`);

ALTER TABLE `restaurante`
  ADD CONSTRAINT `restaurante_ibfk_1` FOREIGN KEY (`promo-rest`) REFERENCES `promo` (`id_promo`),
  ADD CONSTRAINT `restaurante_ibfk_2` FOREIGN KEY (`producto_rest`) REFERENCES `producto` (`id_prod`),
  ADD CONSTRAINT `restaurante_ibfk_3` FOREIGN KEY (`reserva_rest`) REFERENCES `reserva` (`id_res`);
COMMIT;
