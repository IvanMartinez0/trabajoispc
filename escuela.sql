-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2023 a las 13:26:52
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
-- Base de datos: `escuelaivan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id_alum` int(11) NOT NULL,
  `nombre_alum` varchar(50) NOT NULL,
  `apellido_alum` varchar(50) NOT NULL,
  `cuil_alum` varchar(50) NOT NULL,
  `genero_alum` int(11) NOT NULL,
  `fecnac_alum` date NOT NULL,
  `correo_alum` varchar(50) NOT NULL,
  `telefono_alum` varchar(50) NOT NULL,
  `curso_alum` int(11) NOT NULL,
  `turno_alum` int(11) NOT NULL,
  `barrio_alum` int(11) NOT NULL,
  `ciudad_alum` int(11) NOT NULL,
  `calle_alum` varchar(50) NOT NULL,
  `altura_alum` varchar(50) NOT NULL,
  `manzana_alum` varchar(10) NOT NULL,
  `dpto_alum` varchar(10) NOT NULL,
  `piso_alum` varchar(10) NOT NULL,
  `codpos_alum` varchar(10) NOT NULL,
  `materia_alum` int(11) NOT NULL,
  `prov_alum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `id_aula` int(11) NOT NULL,
  `numero_aula` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `id_barrio` int(11) NOT NULL,
  `nombre_barrio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificacion`
--

CREATE TABLE `calificacion` (
  `id_calif` int(11) NOT NULL,
  `personal_calif` int(11) NOT NULL,
  `materia_calif` int(11) NOT NULL,
  `alumno_calif` int(11) NOT NULL,
  `curso_calif` int(11) NOT NULL,
  `nota` varchar(30) NOT NULL,
  `fecha_calif` date NOT NULL,
  `detalle_calif` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL,
  `nombre_cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id_cargo`, `nombre_cargo`) VALUES
(1, 'Profesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(11) NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id_curso` int(11) NOT NULL,
  `nombre_curso` varchar(50) NOT NULL,
  `esp_curso` int(5) NOT NULL,
  `aula_curso` int(5) NOT NULL,
  `ciclo_curso` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `id_esp` int(11) NOT NULL,
  `nombre_esp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL,
  `nombre_genero` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(11) NOT NULL,
  `curso_horario` int(5) NOT NULL,
  `aula_horario` int(5) NOT NULL,
  `inicio_horario` varchar(50) NOT NULL,
  `final_horario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(11) NOT NULL,
  `nombre_materia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `id_pers` int(11) NOT NULL,
  `nombre_pers` varchar(30) NOT NULL,
  `apellido_pers` varchar(30) NOT NULL,
  `cuil_pers` varchar(30) NOT NULL,
  `fecnac_pers` date NOT NULL,
  `telefono_pers` varchar(30) NOT NULL,
  `correo_pers` varchar(30) NOT NULL,
  `genero_pers` int(5) NOT NULL,
  `barrio_pers` int(50) NOT NULL,
  `calle_pers` varchar(30) NOT NULL,
  `ciudad_pers` int(50) NOT NULL,
  `codpos_pers` varchar(10) NOT NULL,
  `piso_pers` varchar(10) NOT NULL,
  `dpto_pers` varchar(11) NOT NULL,
  `cargo_pers` int(11) NOT NULL,
  `curso_pers` int(11) NOT NULL,
  `turno_pers` int(10) NOT NULL,
  `altura_pers` varchar(10) NOT NULL,
  `manzana_pers` varchar(10) NOT NULL,
  `horario_pers` int(5) NOT NULL,
  `prov_pers` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_prov` int(11) NOT NULL,
  `nombre_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `id_turno` int(11) NOT NULL,
  `nombre_turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id_alum`),
  ADD KEY `curso_alum` (`curso_alum`),
  ADD KEY `genero_alum` (`genero_alum`),
  ADD KEY `turno_alum` (`turno_alum`),
  ADD KEY `barrio_alum` (`barrio_alum`),
  ADD KEY `ciudad_alum` (`ciudad_alum`),
  ADD KEY `prov_alum` (`prov_alum`),
  ADD KEY `materia_alum` (`materia_alum`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id_aula`);

--
-- Indices de la tabla `barrio`
--
ALTER TABLE `barrio`
  ADD PRIMARY KEY (`id_barrio`);

--
-- Indices de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD PRIMARY KEY (`id_calif`),
  ADD KEY `personal_calif` (`personal_calif`),
  ADD KEY `materia_calif` (`materia_calif`),
  ADD KEY `alumno_calif` (`alumno_calif`),
  ADD KEY `curso_calif` (`curso_calif`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id_cargo`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `esp_curso` (`esp_curso`),
  ADD KEY `aula_curso` (`aula_curso`);

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`id_esp`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `curso_horario` (`curso_horario`),
  ADD KEY `aula_horario` (`aula_horario`),
  ADD KEY `aula_horario_2` (`aula_horario`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`id_pers`),
  ADD KEY `genero_Pers` (`genero_pers`),
  ADD KEY `barrio_Pers` (`barrio_pers`),
  ADD KEY `ciudad_Pers` (`ciudad_pers`),
  ADD KEY `cargo_Pers` (`cargo_pers`),
  ADD KEY `curso_pers` (`curso_pers`),
  ADD KEY `turno_Pers` (`turno_pers`),
  ADD KEY `horario_pers` (`horario_pers`),
  ADD KEY `prov_pers` (`prov_pers`);

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id_alum` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aula`
--
ALTER TABLE `aula`
  MODIFY `id_aula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `barrio`
--
ALTER TABLE `barrio`
  MODIFY `id_barrio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `calificacion`
--
ALTER TABLE `calificacion`
  MODIFY `id_calif` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id_cargo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `id_esp` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `id_pers` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`turno_alum`) REFERENCES `turno` (`id_turno`),
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`prov_alum`) REFERENCES `provincia` (`id_prov`),
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`genero_alum`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `alumno_ibfk_4` FOREIGN KEY (`curso_alum`) REFERENCES `curso` (`id_curso`),
  ADD CONSTRAINT `alumno_ibfk_5` FOREIGN KEY (`barrio_alum`) REFERENCES `barrio` (`id_barrio`),
  ADD CONSTRAINT `alumno_ibfk_6` FOREIGN KEY (`ciudad_alum`) REFERENCES `ciudad` (`id_ciudad`);

--
-- Filtros para la tabla `calificacion`
--
ALTER TABLE `calificacion`
  ADD CONSTRAINT `calificacion_ibfk_1` FOREIGN KEY (`materia_calif`) REFERENCES `materia` (`id_materia`),
  ADD CONSTRAINT `calificacion_ibfk_2` FOREIGN KEY (`personal_calif`) REFERENCES `personal` (`id_pers`),
  ADD CONSTRAINT `calificacion_ibfk_3` FOREIGN KEY (`alumno_calif`) REFERENCES `alumno` (`id_alum`),
  ADD CONSTRAINT `calificacion_ibfk_4` FOREIGN KEY (`curso_calif`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`esp_curso`) REFERENCES `especialidad` (`id_esp`),
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`aula_curso`) REFERENCES `aula` (`id_aula`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`aula_horario`) REFERENCES `aula` (`id_aula`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`curso_horario`) REFERENCES `curso` (`id_curso`);

--
-- Filtros para la tabla `personal`
--
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`curso_pers`) REFERENCES `curso` (`id_curso`),
  ADD CONSTRAINT `personal_ibfk_2` FOREIGN KEY (`prov_pers`) REFERENCES `provincia` (`id_prov`),
  ADD CONSTRAINT `personal_ibfk_3` FOREIGN KEY (`genero_pers`) REFERENCES `genero` (`id_genero`),
  ADD CONSTRAINT `personal_ibfk_4` FOREIGN KEY (`barrio_pers`) REFERENCES `barrio` (`id_barrio`),
  ADD CONSTRAINT `personal_ibfk_5` FOREIGN KEY (`ciudad_pers`) REFERENCES `ciudad` (`id_ciudad`),
  ADD CONSTRAINT `personal_ibfk_6` FOREIGN KEY (`cargo_pers`) REFERENCES `cargo` (`id_cargo`),
  ADD CONSTRAINT `personal_ibfk_7` FOREIGN KEY (`turno_pers`) REFERENCES `turno` (`id_turno`),
  ADD CONSTRAINT `personal_ibfk_8` FOREIGN KEY (`horario_pers`) REFERENCES `horario` (`id_horario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
