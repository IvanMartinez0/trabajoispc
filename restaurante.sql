
CREATE TABLE `menu` ( /*creacion de la tabla mesa*/
  `id_menu` int(11) primary key NOT NULL AUTO_INCREMENT,
  `tipo_menu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

INSERT INTO `menu` (`id_menu`, `tipo_menu`) VALUES /* llenado de los campos */
(1, 'almuerzo'),
(2, 'merienda');

CREATE TABLE `mesa` ( /*creacion de la tabla mesa*/
  `id_mesa` int(11) primary key NOT NULL AUTO_INCREMENT,
  `capacidad_mesa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje de la tabla*/

INSERT INTO `mesa` (`id_mesa`, `capacidad_mesa`) VALUES /* llenado de los campos */
(1, '5 personas -- Exterior'),
(2, '5 personas -- Interior'),
(3, '6 personas -- Exterior'),
(4, '6 personas -- Interior'),
(5, '4 personas -- Exterior'),
(6, '4 personas -- Interior'),
(7, '2 personas -- Exterior'),
(8, '2 personas -- Interior');

CREATE TABLE `horario` ( /*creacion de la tabla horario*/
  `id_hora` int(11) primary key NOT NULL AUTO_INCREMENT,
  `hora` varchar(15) NOT NULL
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje de la tabla*/

  INSERT INTO `horario` (`id_hora`, `hora`) VALUES /* llenado de los campos */

(1, '10:00'),
(2, '10:30'),
(3, '11:00'),
(4, '11:30'),
(5, '12:00'),
(6, '12:30');


CREATE TABLE `producto` (
  `id_prod` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_prod` varchar(50) NOT NULL,
  `precio_prod` varchar(30) NOT NULL,
  `descrip_prod` text NOT NULL,
  `menu_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*declaracion del lenguaje de la tabla*/

INSERT INTO `producto` (`id_prod`, `nombre_prod`, `precio_prod`, `descrip_prod`, `menu_prod`) VALUES
(1, 'Sandwich de pollo a la parrilla', '1400 pesos', 'Sandwich de pollo cocinado en parrilla con pan de salvado y aderezos a elección', '1'),
(2, 'Sandwich de jamon y queso', '1160 pesos', 'Sandwich de jamon y queso tostado', '1'),
(3, 'Ensalada cesar', '950 pesos', 'Ensalada cesar con lechuga romana y croûtons con jugo de limón, aceite de oliva, huevo, salsa Worcestershire, anchoas, ajo, mostaza de Dijon, queso parmesano y pimienta negra', '1'),
(4, 'Ensalada de espinaca y fresas', '1200 pesos', 'Ensalada de espinaca, fresas, nueces, queso de cabra, vinagre balsámico, miel, aceite de oliva extra virgen, sal y pimienta negra', '1'),
(5, 'Tarta de frutilla', '1100 pesos', 'Tarta de frutilla de harina de trigo, ralladura de limón, manteca, azúcar, yema de huevo, crema de leche, frutilla y azúcar impalpable', '2'),
(6, 'Tarta de durazno', '1250 pesos', 'Tarta de durazno con harina de trigo, ralladura de limón, manteca, azúcar, yema de huevo, crema de leche, duraznos y azúcar impalpable', '2'),
(7, 'Choripan', '550 pesos', 'Choripan con chorizo porcino, pan flauta, aderezos a gusto y chimichurri', '1'),
(8, 'Empanada de jamon y queso/carne', '200 pesos', 'Empanada de jamon y queso fresco con huevo / carne molida condimentada con cebolla, pimienta y huevo', '1'),
(9, 'Empanada arabe', '220 pesos', 'Empanada arabe de carne molida con huevo, cebolla y jugo de limón', '1'),
(10, 'Spaguetti a la bolognesa', '1500 pesos', 'Fideos spaguetti con salsa de tomate y condimentada con ajo, sal, aceite de oliva, laurel, albahaca y queso a gusto', '1'),
(11, 'Cafe con leche grande', '550 pesos', 'Cafe con leche', '2'),
(12, 'Batido de frutas Mix', '600 pesos', 'Batido de frutas tropicales combinado con leche y crema', '2');


CREATE TABLE `promo` ( /*creacion de la tabla promo*/
  `id_promo` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_promo` varchar(30) NOT NULL,
  `descrip_promo` text NOT NULL,
  `precio_promo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje*/

INSERT INTO `promo` (`id_promo`,`nombre_promo`, `descrip_promo`, `precio_promo`) VALUES /*llenado de datos*/
(1,'desayuno', 'cafe mediano + 2 criollos + una factura', '780 pesos'),
(2,'almuerzo', 'milanesa de carne + papas hervidas + gaseosa a eleccion', '2400 pesos');

CREATE TABLE `reserva` ( /*creacion de la tabla reserva*/
  `id_res` int(11) primary key NOT NULL AUTO_INCREMENT,
  `nombre_res` varchar(30) NOT NULL,
  `apellido_res` varchar(30) NOT NULL,
  `dni_res` varchar(30) NOT NULL,
  `tel_res` varchar(30) NOT NULL,
  `fecha_res` date NOT NULL,
  `hora_res` int(11) NOT NULL,
  `mesa_res` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci; /*definicion del lenguaje*/

INSERT INTO `reserva` (`id_res`,`nombre_res`, `apellido_res`, `dni_res`,`tel_res`,`fecha_res`,`hora_res`,`mesa_res`) VALUES /*llenado de datos*/
(1,'Ivan Alejandro', 'Martinez','45816234','3515749074','2023/07/30','3','4'),
(2,'Dante Sebastian', 'Juarez','46321234','3512161814','2023/07/25','1','5'),
(3,'Manuel', 'Moreno','46233432','3517722174','2023/08/01','3','4'),
(4,'Joaquin', 'Ferreyra','461932143','3519983211','2023/07/16','2','1'),
(5,'Braian Sebastian', 'Valles','45943321','3512345677','2023/07/24','2','4'),
(6,'Lucas Martin', 'Perez','46243192','3514324524','2023/07/25','4','1'),
(7,'Agustin Natanael', 'Romero','4594432143','3514431134','2023/07/27','3','2'),
(8,'Lucia Rubi ', 'Solis ','454231332','352431382','2023/07/25','3','3');

CREATE TABLE `restaurante` ( /*creacion de la tabla restaurante*/
  `id_rest` int(11) primary key NOT NULL AUTO_INCREMENT,
  `producto_rest` int(11) NOT NULL,
  `promo-rest` int(11) NOT NULL,
  `reserva_rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci; /*definicion del idioma*/

ALTER TABLE `menu`
  ADD KEY `tipo_menu` (`tipo_menu`);

ALTER TABLE `reserva`
  ADD KEY `mesa_res` (`mesa_res`), /* definicion de la llave foranea*/
  ADD KEY `hora_res` (`hora_res`);

ALTER TABLE `restaurante`
  ADD KEY `producto_rest` (`producto_rest`), /* definicion de llave foranea*/
  ADD KEY `promo-rest` (`promo-rest`),
  ADD KEY `reserva_rest` (`reserva_rest`);

ALTER TABLE `reserva` /*relaciones de la tabla reserva */
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`mesa_res`) REFERENCES `mesa` (`id_mesa`),
  ADD CONSTRAINT `reserva_ibfk_2` FOREIGN KEY (`hora_res`) REFERENCES `horario` (`id_hora`);

ALTER TABLE `producto`
ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`menu_prod`) REFERENCES `menu` (`id_menu`);

ALTER TABLE `restaurante`
ADD CONSTRAINT `restaurante_ibfk_1` FOREIGN KEY (`promo-rest`) REFERENCES `promo` (`id_promo`),
ADD CONSTRAINT `restaurante_ibfk_2` FOREIGN KEY (`producto_rest`) REFERENCES `producto` (`id_prod`),
ADD CONSTRAINT `restaurante_ibfk_3` FOREIGN KEY (`reserva_rest`) REFERENCES `reserva` (`id_res`);
COMMIT;

