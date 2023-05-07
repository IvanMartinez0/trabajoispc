-- Estructura de tabla para la tabla `alumno`
--
CREATE TABLE `alumno` (
                 
  `Id_Alumno` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Alumno` varchar(50) NOT NULL,
  `Apellido_Alumno` varchar(50) NOT NULL,
  `Cuil_Alumno` varchar(50) NOT NULL,
  `Genero_Alumno` int(5) NOT NULL,
  `FecNac_Alumno` date NOT NULL,
  `Correo_Alumno` varchar(50) NOT NULL,
  `Telefono_Alumno` varchar(50) NOT NULL,
  `Curso_Alumno` int(50) NOT NULL,
  `Turno_Alumno` int(50) NOT NULL,
  `Barrio_Alumno` int(50) NOT NULL,
  `Ciudad_Alumno` int(50) NOT NULL,
  `Calle_Alumno` varchar(50) NOT NULL,
  `Altura_Alumno` varchar(50) NOT NULL,
  `Manzana_Alumno` varchar(10) NOT NULL,
  `Dpto_Alumno` varchar(10) NOT NULL,
  `Piso_Alumno` varchar(10) NOT NULL,
  `CodPos_Alumno` varchar(10) NOT NULL,
  `Esp_Alumno` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Estructura de tabla para la tabla `barrio`
--

CREATE TABLE `barrio` (
  `Id_Barrio` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Barrio` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `Id_Cargo` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Cargo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `ciudad`
--
CREATE TABLE `ciudad` (
  `Id_Ciudad` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
-- --------------------------------------------------------
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `Id_Curso` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Curso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `Id_Especialidad` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Especialidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Genero` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `Id_Materia` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Materia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `Id_Personal` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Personal` varchar(30) NOT NULL,
  `Apellido_Personal` varchar(30) NOT NULL,
  `Cuil_Personal` varchar(30) NOT NULL,
  `FecNac_Personal` date NOT NULL,
  `Telefono_personal` varchar(30) NOT NULL,
  `Correo_Personal` varchar(30) NOT NULL,
  `Genero_Personal` int(5) NOT NULL,
  `Barrio_Personal` int(50) NOT NULL,
  `Calle_Personal` varchar(30) NOT NULL,
  `Ciudad_Personal` int(50) NOT NULL,
  `CodPos_Personal` varchar(10) NOT NULL,
  `Piso_Personal` varchar(10) NOT NULL,
  `Dpto_Personal` varchar(11) NOT NULL,
  `Cargo_Personal` int(11) NOT NULL,
  `Curso_Personal` int(11) NOT NULL,
  `Turno_Personal` int(10) NOT NULL,
  `Altura_Personal` varchar(10) NOT NULL,
  `Manzana_Personal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Id_Turno` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `Nombre_Turno` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD KEY `Curso_Alumno` (`Curso_Alumno`),
  ADD KEY `Genero_Alumno` (`Genero_Alumno`),
  ADD KEY `Turno_Alumno` (`Turno_Alumno`),
  ADD KEY `Barrio_Alumno` (`Barrio_Alumno`),
  ADD KEY `Ciudad_Alumno` (`Ciudad_Alumno`),
  ADD KEY `Esp_Alumno` (`Esp_Alumno`);


--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD KEY `Genero_Personal` (`Genero_Personal`),
  ADD KEY `Barrio_Persona` (`Barrio_Personal`),
  ADD KEY `Barrio_Personal` (`Barrio_Personal`),
  ADD KEY `Ciudad_Personal` (`Ciudad_Personal`),
  ADD KEY `Cargo_Personal` (`Cargo_Personal`),
  ADD KEY `Curso_Personal` (`Curso_Personal`),
  ADD KEY `Turno_Personal` (`Turno_Personal`),



-- Relaciones de la tabla `alumno`

ALTER TABLE `alumno`
  ADD CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`Turno_Alumno`) REFERENCES `turno` (`Id_Turno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_2` FOREIGN KEY (`Curso_Alumno`) REFERENCES `cursos` (`Id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_3` FOREIGN KEY (`Genero_Alumno`) REFERENCES `genero` (`Id_Genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_4` FOREIGN KEY (`Barrio_Alumno`) REFERENCES `barrio` (`Id_Barrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_5` FOREIGN KEY (`Ciudad_Alumno`) REFERENCES `ciudad` (`Id_Ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `alumno_ibfk_6` FOREIGN KEY (`Esp_Alumno`) REFERENCES `especialidad` (`Id_Especialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--Relaciones de la tabla personal
ALTER TABLE `personal`
  ADD CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`Cargo_Personal`) REFERENCES `cargo` (`Id_Cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_2` FOREIGN KEY (`Turno_Personal`) REFERENCES `turno` (`Id_Turno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_3` FOREIGN KEY (`Barrio_Personal`) REFERENCES `barrio` (`Id_Barrio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_4` FOREIGN KEY (`Ciudad_Personal`) REFERENCES `ciudad` (`Id_Ciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `personal_ibfk_5` FOREIGN KEY (`Curso_Personal`) REFERENCES `cursos` (`Id_Curso`) ON DELETE NO ACTION ON UPDATE NO ACTION;
  ADD CONSTRAINT `personal_ibfk_6` FOREIGN KEY (`Genero_Personal`) REFERENCES `genero` (`Id_Genero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
COMMIT;
