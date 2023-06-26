-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2023 a las 20:55:06
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `restaurante`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesa`
--

CREATE TABLE `mesa` (
  `id_mesa` int(11) NOT NULL,
  `capacidad_mesa` varchar(30) NOT NULL,
  `num_mesa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `mesa`
--

INSERT INTO `mesa` (`id_mesa`, `capacidad_mesa`, `num_mesa`) VALUES
(1, '5', '1'),
(2, '4', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_prod` int(11) NOT NULL,
  `nombre_prod` varchar(30) NOT NULL,
  `precio_prod` varchar(30) NOT NULL,
  `descrip_prod` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_prod`, `nombre_prod`, `precio_prod`, `descrip_prod`) VALUES
(1, 'milanesa a la napolitana', '1100', 'milanesa de pollo a la napolitana'),
(2, 'papas fritas pequeñas', '350', 'paquete de papas fritas tamaño pequeño');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promo`
--

CREATE TABLE `promo` (
  `id_promo` int(11) NOT NULL,
  `nombre_promo` varchar(30) NOT NULL,
  `descripcion_promo` text NOT NULL,
  `precio_promo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `promo`
--

INSERT INTO `promo` (`id_promo`, `nombre_promo`, `descripcion_promo`, `precio_promo`) VALUES
(1, 'desayuno', 'cafe mediano + 2 criollos + una factura', '780'),
(2, 'almuerzo', 'milanesa de carne + papas hervidas + gaseosa a eleccion', '2400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva`
--

CREATE TABLE `reserva` (
  `id_res` int(11) NOT NULL,
  `nombre_res` varchar(30) NOT NULL,
  `dni_res` varchar(30) NOT NULL,
  `fecha_reserva` date NOT NULL,
  `hora_reserva` varchar(11) NOT NULL,
  `mesa_reserva` int(11) NOT NULL,
  `apellido_res` varchar(30) NOT NULL,
  `tel_res` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaaurante`
--

CREATE TABLE `restaaurante` (
  `id_rest` int(11) NOT NULL,
  `producto_rest` int(11) NOT NULL,
  `promo-rest` int(11) NOT NULL,
  `reserva_rest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `mesa`
--
ALTER TABLE `mesa`
  ADD PRIMARY KEY (`id_mesa`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_prod`);

--
-- Indices de la tabla `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id_promo`);

--
-- Indices de la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD PRIMARY KEY (`id_res`),
  ADD KEY `mesa_reserva` (`mesa_reserva`);

--
-- Indices de la tabla `restaaurante`
--
ALTER TABLE `restaaurante`
  ADD PRIMARY KEY (`id_rest`),
  ADD KEY `producto_rest` (`producto_rest`),
  ADD KEY `promo-rest` (`promo-rest`),
  ADD KEY `reserva_rest` (`reserva_rest`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `mesa`
--
ALTER TABLE `mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `promo`
--
ALTER TABLE `promo`
  MODIFY `id_promo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reserva`
--
ALTER TABLE `reserva`
  MODIFY `id_res` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `restaaurante`
--
ALTER TABLE `restaaurante`
  MODIFY `id_rest` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `reserva`
--
ALTER TABLE `reserva`
  ADD CONSTRAINT `reserva_ibfk_1` FOREIGN KEY (`mesa_reserva`) REFERENCES `mesa` (`id_mesa`);

--
-- Filtros para la tabla `restaaurante`
--
ALTER TABLE `restaaurante`
  ADD CONSTRAINT `restaaurante_ibfk_1` FOREIGN KEY (`promo-rest`) REFERENCES `promo` (`id_promo`),
  ADD CONSTRAINT `restaaurante_ibfk_2` FOREIGN KEY (`producto_rest`) REFERENCES `producto` (`id_prod`),
  ADD CONSTRAINT `restaaurante_ibfk_3` FOREIGN KEY (`reserva_rest`) REFERENCES `reserva` (`id_res`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
