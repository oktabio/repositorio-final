-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2022 a las 02:39:23
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `registro`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `correo` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `telefono` int(15) NOT NULL,
  `direccion` varchar(20) COLLATE utf8_spanish2_ci NOT NULL,
  `DNI` int(15) NOT NULL,
  `nacimiento` date NOT NULL,
  `curso` text COLLATE utf8_spanish2_ci NOT NULL,
  `turno` varchar(11) COLLATE utf8_spanish2_ci NOT NULL,
  `idturnos` int(50) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `correo`, `telefono`, `direccion`, `DNI`, `nacimiento`, `curso`, `turno`, `idturnos`) VALUES
(14, 'Octavio salinas', 'salinaso855@gmail.co', 1170073960, 'atalco 3143', 45524865, '0000-00-00', '7mo 5ta', 'vespertino', 0),
(16, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(17, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(18, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(19, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(20, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(21, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(22, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(23, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(24, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(25, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(26, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(27, 'eljfneljkf', 'ssss', 43545345, '343434', 435334534, '0000-00-00', '345', '2', NULL),
(28, 'octavio salinas', 'salinas0855@gmmail.com', 117073860, 'vv5345', 45524865, '2004-01-22', '7mo 5ta', '3', NULL),
(29, 'mauricio ', 'dlsdlsÃ±', 4455555, '4343', 4534534, '3444-05-31', '7mo 5ta', '3', NULL),
(30, 'mauricio ', 'dlsdlsÃ±', 4455555, '4343', 4534534, '3444-05-31', '7mo 5ta', '3', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `idturnos` int(50) NOT NULL,
  `turno` varchar(50) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`idturnos`, `turno`) VALUES
(1, 'Mañana'),
(2, 'Tarde'),
(3, 'Vespertino'),
(4, '2'),
(5, '2'),
(6, '2');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idturnos` (`idturnos`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`idturnos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `idturnos` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
