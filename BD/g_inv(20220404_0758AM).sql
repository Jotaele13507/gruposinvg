-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-04-2022 a las 14:56:59
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `g_inv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotogrupo`
--

CREATE TABLE `fotogrupo` (
  `id_fotogrupo` int(11) NOT NULL,
  `id_usuariof` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `dir_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gruposinv`
--

CREATE TABLE `gruposinv` (
  `id_grupo` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `unidad_acad` varchar(50) NOT NULL,
  `nombre_grupo` varchar(50) NOT NULL,
  `acronimo` varchar(50) NOT NULL,
  `fecha_creacion` varchar(50) NOT NULL,
  `obj_grupo` longtext NOT NULL,
  `dir_logo` varchar(255) DEFAULT NULL,
  `dir_fotogrupo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logogi`
--

CREATE TABLE `logogi` (
  `id_logo` int(11) NOT NULL,
  `id_usuariol` int(11) NOT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `dir_logo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembroginv`
--

CREATE TABLE `miembroginv` (
  `id_miembro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_grupo` int(50) DEFAULT NULL,
  `cedula_int` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `apellido_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `estatus_int` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `grado_int` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `inst_int` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `area_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `tel_int` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci DEFAULT NULL,
  `mail_int` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyegi`
--

CREATE TABLE `proyegi` (
  `id_titulo` int(11) NOT NULL,
  `id_usuariot` int(11) NOT NULL,
  `id_grupo` int(11) DEFAULT NULL,
  `tit_inv` longtext NOT NULL,
  `obj_inv` varchar(700) NOT NULL,
  `estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cedula` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` int(2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `cedula`, `usuario`, `email`, `password`, `privilegio`, `fecha_registro`) VALUES
(1, 'Jorge Luis Sánchez', '8-871-952', 'admin', 'jorge.sanchezr@up.ac.pa', 'Jhamany13911', 1, '2022-04-02 01:54:20'),
(2, 'Carlos Manuel Gómez Rudy', '3-112-34', 'cgomez', 'carlos.gomezr@up.ac.pa', '123.abc.', 1, '2022-04-02 01:57:54'),
(3, 'Estelina Ortega Jalil de Gómez', '3-120-34', 'eortega', 'estelina.ortega@up.ac.pa', '123.abc.', 2, '2022-04-02 02:13:45'),
(4, 'Griselda B. Arteaga', 'N-19-1191', 'garteaga', 'griselda.arteaga@up.ac.pa', '123.abc.', 1, '2022-04-02 02:29:18');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fotogrupo`
--
ALTER TABLE `fotogrupo`
  ADD PRIMARY KEY (`id_fotogrupo`),
  ADD KEY `fk_id_usuariof` (`id_usuariof`);

--
-- Indices de la tabla `gruposinv`
--
ALTER TABLE `gruposinv`
  ADD PRIMARY KEY (`id_grupo`),
  ADD KEY `fk_id_usuario` (`id_usuario`);

--
-- Indices de la tabla `logogi`
--
ALTER TABLE `logogi`
  ADD PRIMARY KEY (`id_logo`),
  ADD KEY `fk_id_usuariol` (`id_usuariol`);

--
-- Indices de la tabla `miembroginv`
--
ALTER TABLE `miembroginv`
  ADD PRIMARY KEY (`id_miembro`),
  ADD KEY `fk_id_grupo` (`id_usuario`);

--
-- Indices de la tabla `proyegi`
--
ALTER TABLE `proyegi`
  ADD PRIMARY KEY (`id_titulo`),
  ADD KEY `fk_id_usuariot` (`id_usuariot`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fotogrupo`
--
ALTER TABLE `fotogrupo`
  MODIFY `id_fotogrupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `gruposinv`
--
ALTER TABLE `gruposinv`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `logogi`
--
ALTER TABLE `logogi`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `miembroginv`
--
ALTER TABLE `miembroginv`
  MODIFY `id_miembro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyegi`
--
ALTER TABLE `proyegi`
  MODIFY `id_titulo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `fotogrupo`
--
ALTER TABLE `fotogrupo`
  ADD CONSTRAINT `fk_id_usuariof` FOREIGN KEY (`id_usuariof`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `gruposinv`
--
ALTER TABLE `gruposinv`
  ADD CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `logogi`
--
ALTER TABLE `logogi`
  ADD CONSTRAINT `fk_id_usuariol` FOREIGN KEY (`id_usuariol`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `miembroginv`
--
ALTER TABLE `miembroginv`
  ADD CONSTRAINT `fk_id_grupo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `proyegi`
--
ALTER TABLE `proyegi`
  ADD CONSTRAINT `fk_id_usuariot` FOREIGN KEY (`id_usuariot`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
