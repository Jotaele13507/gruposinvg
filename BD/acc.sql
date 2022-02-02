-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-02-2021 a las 15:54:58
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `acc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposinvg`
--

CREATE TABLE `gruposinvg` (
  `id` int(11) NOT NULL,
  `unidad_acad` text COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_grupo` text COLLATE utf8_spanish2_ci NOT NULL,
  `acronimo` text COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_creacion` year(4) NOT NULL,
  `obj_grupo` text COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `gruposinvg`
--

INSERT INTO `gruposinvg` (`id`, `unidad_acad`, `nombre_grupo`, `acronimo`, `fecha_creacion`, `obj_grupo`) VALUES
(1, 'Facultad de Arquitectura', 'Robótica', 'hgjhg', 2021, 'Ninguno'),
(2, 'Facultad de Arquitectura', 'Robótica', 'RB', 2021, 'Ninguno');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `gruposinvg`
--
ALTER TABLE `gruposinvg`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `gruposinvg`
--
ALTER TABLE `gruposinvg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
