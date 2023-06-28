
CREATE TABLE `mesa` ( /*creacion de la tabla mesa*/
  `id_mesa` int(11) primary key NOT NULL,
  `capacidad_mesa` varchar(15) NOT NULL,
  `num_mesa` varchar(5) NOT NULL,
  `tipo_mesa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje de la tabla*/

INSERT INTO `mesa` (`id_mesa`, `capacidad_mesa`, `num_mesa`,`tipo_mesa`) VALUES /* llenado de los campos */
(1, '5 personas', '5','exterior'),
(2, '5 personas', '6','exterior'),
(3, '5 personas', '7','exterior'),
(4, '5 personas', '8','exterior'),
(5, '4 personas', '2','interior'),
(6, '4 personas', '1','interior'),
(7, '4 personas', '3','interior'),
(8, '2 personas', '4','interior');

CREATE TABLE `horario` ( /*creacion de la tabla horario*/
  `id_hora` int(11) primary key NOT NULL,
  `hora` varchar(15) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje de la tabla*/

  INSERT INTO `horario` (`id_hora`, `hora`) VALUES /* llenado de los campos */
(1, '10:00'),
(2, '10:30'),
(3, '11:00'),
(4, '11:30'),
(5, '12:00'),
(6, '12:30');


CREATE TABLE `producto` ( /*creacion de la tabla producto */
  `id_prod` int(11) primary key NOT NULL,
  `nombre_prod` varchar(50) NOT NULL,
  `precio_prod` varchar(30) NOT NULL,
  `descrip_prod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*declaracion del lenguaje de la tabla*/

INSERT INTO `producto` ( `id_prod`, `nombre_prod`, `precio_prod`,`descrip_prod`) VALUES /*llenado de campos*/
(1,'Sandwich de pollo a la parrilla ', '1400 pesos ','Sandwich de pollo cosinado en parrilla con pan de salvado y aderezos a eleccion'),
(2,'Sandwich de jamon y queso ', '1160 pesos ','Sandwich de jamon y queso tostado'),
(3,'Ensalada cesar', '950 pesos ','Ensalada cesar con lechuga romana y croûtons con jugo de limón, aceite de oliva, huevo, salsa Worcestershire, anchoas, ajo, mostaza de Dijon, queso parmesano y pimienta negra'),
(4,'Ensalada de espinaca y fresas ', '1200 pesos ','Ensalada de espinaca, fresas, nueces, queso de cabra, vinagre balsamico, miel, aceite de oliva extra virgen, sal y pimienta negra'),
(5,'Tarta de frutilla ', '1100 pesos ','Tarta de frutilla de harina de trigo, ralladura de limon, manteca, azucar, yema de huevo, crema de leche, frutilla y azucar impalpable, '),
(6,'Tarta de durazno', '1250 pesos ','Tarta de frutilla con harina de trigo, ralladura de limon, manteca, azucar, yema de huevo, crema de leche, duraznos y azucar impalpable '),
(7,'Choripan ', '550 pesos ','Choripan con chorizo porcino, pan flauta, aderezos a gusto y chimichurri'),
(8,'Empanada de jamon y queso/carne', '200 pesos ','Empanada de jamon cosido y queso fresco con huevo / carne molida condimentada con cebolla, pimienta y huevo'),
(9,'Empanada arabe', '220 pesos ','Empanada arabe de carne molida con huevo, cebolla y jugo de limon'),
(10,'Spaguetti a la bolognesa', '1500 pesos ','Fideos spaguetti con salsa de tomate y condimentada con ajo, sal, aceite de oliva, laurel, albaca y queso a gusto');

CREATE TABLE `promo` ( /*creacion de la tabla promo*/
  `id_promo` int(11) primary key NOT NULL,
  `nombre_promo` varchar(30) NOT NULL,
  `descrip_promo` text NOT NULL,
  `precio_promo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje*/

INSERT INTO `promo` (`id_promo`,`nombre_promo`, `descrip_promo`, `precio_promo`) VALUES /*llenado de datos*/
(1,'desayuno', 'cafe mediano + 2 criollos + una factura', '780 pesos'),
(2,'almuerzo', 'milanesa de carne + papas hervidas + gaseosa a eleccion', '2400 pesos');

CREATE TABLE `reserva` ( /*creacion de la tabla reserva*/
  `id_res` int(11) primary key NOT NULL,
  `nombre_res` varchar(30) NOT NULL,
  `apellido_res` varchar(30) NOT NULL,
  `dni_res` varchar(30) NOT NULL,
  `tel_res` varchar(30) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_reserva` int(11) NOT NULL,
  `mesa_reserva` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje*/

INSERT INTO `reserva` (`id_res`,`nombre_res`, `apellido_res`, `dni_res`,`tel_res`,`fecha_reserva`,`hora_reserva`,`mesa_reserva`) VALUES /*llenado de datos*/
(1,'Ivan Alejandro', 'Martinez','45932126','3515739074','2023/07/30','3','4');

CREATE TABLE `restaurante` ( /*creacion de la tabla restaurante*/
  `id_rest` int(11) primary key NOT NULL,
  `producto_rest` int(11) NOT NULL,
  `promo-rest` int(11) NOT NULL,
  `reserva_rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci; /*definicion del idioma*/


ALTER TABLE `reserva`
  ADD KEY `mesa_reserva` (`mesa_reserva`), /* definicion de la llave foranea*/
  ADD KEY `hora_reserva` (`hora_reserva`);

ALTER TABLE `restaurante`
  ADD KEY `producto_rest` (`producto_rest`), /* definicion de llave foranea*/
  ADD KEY `promo-rest` (`promo-rest`),
  ADD KEY `reserva_rest` (`reserva_rest`);

ALTER TABLE `reserva` /*relaciones de la tabla reserva */
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`mesa_reserva`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`hora_reserva`) REFERENCES `horario` (`id_hora`);

ALTER TABLE `restaurante` /*relaciones de la tabla restaurante*/
  ADD CONSTRAINT `restaurante_ibfk_1` FOREIGN KEY (`promo-rest`) REFERENCES `promo` (`id_promo`),
  ADD CONSTRAINT `restaurante_ibfk_2` FOREIGN KEY (`producto_rest`) REFERENCES `producto` (`id_prod`),
  ADD CONSTRAINT `restaurante_ibfk_3` FOREIGN KEY (`reserva_rest`) REFERENCES `reserva` (`id_res`);
COMMIT;
