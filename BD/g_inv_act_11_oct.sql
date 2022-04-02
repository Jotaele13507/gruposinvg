-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-10-2021 a las 00:02:12
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET
  AUTOCOMMIT = 0;
START TRANSACTION;
SET
  time_zone = "+00:00";
  /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
  /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
  /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
  /*!40101 SET NAMES utf8mb4 */;
--
  -- Base de datos: `g_inv`
  --
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
    `obj_grupo` varchar(1500) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `gruposinv`
  --
INSERT INTO
  `gruposinv` (
    `id_grupo`,
    `id_usuario`,
    `unidad_acad`,
    `nombre_grupo`,
    `acronimo`,
    `fecha_creacion`,
    `obj_grupo`
  )
VALUES
  (4, 11, 'Medicina', 'Opac', 'a', 'a', 'a'),
  (5, 13, 'Faeco', 'CEU', 'b', 'b', 'b'),
  (
    6,
    15,
    'Facultad de Informática, Electrónica y Comunicació',
    'Fiec',
    'LQS',
    '2021',
    'Dormir'
  ),
  (
    7,
    17,
    'Facultad de Farmacia',
    'OTRI',
    'Otri',
    '2021',
    'Nada'
  ),
  (
    8,
    18,
    'Facultad de Informática',
    'Dark',
    'll',
    '2021',
    'aprender más'
  ),
  (
    9,
    12,
    'Arquitectura',
    'MED',
    'ide',
    '2019',
    'khk'
  ),
  (
    10,
    34,
    'Arquitectura',
    'CAPAC',
    'ide',
    '2019',
    'Obtener una revista cientÃ­fica'
  );
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `invg`
  --
  CREATE TABLE `invg` (
    `secuencia` int(11) NOT NULL,
    `unidad_acad` varchar(50) NOT NULL,
    `nombre_grupo` varchar(50) NOT NULL,
    `nombre_coor` varchar(50) NOT NULL,
    `acronimo` varchar(50) NOT NULL,
    `fecha_creacion` varchar(10) NOT NULL,
    `obj_grupo` varchar(700) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `invg`
  --
INSERT INTO
  `invg` (
    `secuencia`,
    `unidad_acad`,
    `nombre_grupo`,
    `nombre_coor`,
    `acronimo`,
    `fecha_creacion`,
    `obj_grupo`
  )
VALUES
  (1, 'a', 'b', 'c', 'd', 'e', 'f');
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `logogi`
  --
  CREATE TABLE `logogi` (
    `id_logo` int(11) NOT NULL,
    `id_usuariol` int(11) NOT NULL,
    `dir_logo` varchar(100) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `logogi`
  --
INSERT INTO
  `logogi` (`id_logo`, `id_usuariol`, `dir_logo`)
VALUES
  (1, 11, 'logo_grupos/Beca.jpg'),
  (
    3,
    13,
    'logo_grupos/1243px-Harley_davidson_logo.jpg'
  ),
  (
    4,
    15,
    'logo_grupos/WhatsApp Image 2021-02-02 at 4.16.02 PM.jpeg'
  ),
  (6, 17, 'logo_grupos/FB_IMG_1599150833140.jpg'),
  (
    7,
    16,
    'logo_grupos/WhatsApp Image 2021-04-05 at 10.00.27 PM.jpeg'
  ),
  (10, 12, 'logo_grupos/MAPA_PROCESOS.jpg');
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `miembroginv`
  --
  CREATE TABLE `miembroginv` (
    `id_miembro` int(11) NOT NULL,
    `id_usuario` int(11) NOT NULL,
    `cedula_int` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `nombre_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `apellido_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `estatus_int` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `grado_int` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `inst_int` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `area_int` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `tel_int` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `mail_int` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `id_grupo` int(50) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `miembroginv`
  --
INSERT INTO
  `miembroginv` (
    `id_miembro`,
    `id_usuario`,
    `cedula_int`,
    `nombre_int`,
    `apellido_int`,
    `estatus_int`,
    `grado_int`,
    `inst_int`,
    `area_int`,
    `tel_int`,
    `mail_int`,
    `id_grupo`
  )
VALUES
  (
    2,
    13,
    '8-825-724',
    'Oralia',
    'Suarez',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'farmacia',
    '5235322',
    'jorgeluissanchezrodriguez',
    0
  ),
  (
    11,
    11,
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    0
  ),
  (
    12,
    15,
    '8-876-2080',
    'Johana ',
    'López',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'Comprar por internet',
    '6666-6666',
    'johatzel@mail.com',
    0
  ),
  (
    13,
    17,
    '8-877-111',
    'Jorge',
    'Sanchez',
    'Estudiante',
    'Ingeniero',
    'Universidad de Panamá',
    'Robots',
    '6666-6666',
    'jorge@mail.com',
    0
  ),
  (
    14,
    18,
    '8-654-653',
    'Esther',
    'Díaz',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'Robotica',
    '63026514',
    'lourdes-34417@gmail.com',
    6
  ),
  (
    15,
    12,
    '8-920-640',
    'lourdes',
    'moreno',
    'estudiante',
    '11',
    'universidad',
    'c.sociales',
    '6302-6514',
    'lourdes.34417@gmail.com',
    7
  ),
  (
    16,
    12,
    '123-456',
    'Ã¨dgÃ r',
    'pÃ©reÃ©z',
    'estudiante',
    '11',
    'universidad',
    'c.sociales',
    '6302-6514',
    'lourdes@gmail.com',
    7
  ),
  (
    18,
    12,
    '8-152-43',
    'Solangel',
    'Torres',
    'estudiante',
    '23',
    'universidad',
    'c.sociales',
    '6202-6814',
    'lourdes.morenod@up.ac.pa',
    9
  ),
  (
    19,
    12,
    '9-324-23',
    'jael',
    'sam',
    'estudiante',
    'indefinido',
    'universidad',
    'nada',
    '654-983',
    'jael67@up.ac.pa',
    7
  ),
  (
    25,
    12,
    '78990',
    '5555',
    '5555',
    'estudiante',
    '23',
    'universidad',
    'c.sociales',
    '654-983',
    'lid@up.ac.pa',
    7
  ),
  (
    27,
    12,
    '9-234-234',
    'lala',
    'lale',
    'nada',
    '22',
    'universidad',
    'no se nada',
    '123-234',
    'laks@up.ac.pa',
    7
  ),
  (
    37,
    15,
    '8-945-783',
    'Egard',
    'Repez',
    'estudiante',
    '12',
    'universidad',
    'c.sociales',
    '654-983',
    'edgra@de.com',
    6
  );
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `proyegi`
  --
  CREATE TABLE `proyegi` (
    `id_titulo` int(11) NOT NULL,
    `id_usuariot` int(11) NOT NULL,
    `tit_inv` varchar(100) NOT NULL,
    `obj_inv` varchar(700) NOT NULL,
    `estado` varchar(50) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `proyegi`
  --
INSERT INTO
  `proyegi` (
    `id_titulo`,
    `id_usuariot`,
    `tit_inv`,
    `obj_inv`,
    `estado`
  )
VALUES
  (
    19,
    12,
    'La informatica en el Futuro',
    'Conocer el futuro de la tecnologia ',
    'En curso'
  ),
  (
    20,
    12,
    'Neurociencia',
    'Conocer cuanto dolor sienten los bebes',
    'Reciente'
  );
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `usuarios`
  --
  CREATE TABLE `usuarios` (
    `id` int(11) NOT NULL,
    `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
    `cedula` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
    `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
    `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
    `privilegio` int(2) NOT NULL,
    `fecha_registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8 COLLATE = utf8_spanish_ci;
--
  -- Volcado de datos para la tabla `usuarios`
  --
INSERT INTO
  `usuarios` (
    `id`,
    `nombre`,
    `cedula`,
    `usuario`,
    `email`,
    `password`,
    `privilegio`,
    `fecha_registro`
  )
VALUES
  (
    11,
    'Jorge Sánchez',
    '8-877-111',
    'jota',
    'sanchez.jorge.luisr@gmail.com',
    'abc',
    1,
    '2020-07-01 19:38:19'
  ),
  (
    12,
    'Maximo',
    '',
    'Admin',
    'jorgeluissanchezrodriguez@gmail.com',
    'admin',
    1,
    '2020-07-01 22:05:29'
  ),
  (
    13,
    'Andres',
    '8-152-43',
    'andi',
    'Andresmail@mail.com',
    '456',
    1,
    '2020-08-06 19:37:15'
  ),
  (
    14,
    'Jorge Santana',
    '',
    'santana',
    'santana@mail.com',
    'abc',
    1,
    '2021-02-10 07:50:23'
  ),
  (
    15,
    'Johana Lopez',
    '8-876-2080',
    'johatzel',
    'johatzel@gmail.com',
    'jorgeesmipapi',
    1,
    '2021-02-14 02:04:07'
  ),
  (
    16,
    'Solangel Torres',
    '8-152-43',
    'sol',
    'solangel@mail.com',
    '260493',
    2,
    '2021-02-21 21:41:51'
  ),
  (
    17,
    'Oralia Suarez',
    '8-825-724',
    'Oralia',
    'oralia@mail.com',
    'anakilula',
    1,
    '2021-02-24 22:21:18'
  ),
  (
    18,
    'Lourdes Moreno',
    '8-920-640',
    'lule',
    'lule.0110@hotmail.com',
    '123',
    1,
    '2021-05-18 13:46:41'
  ),
  (
    19,
    'Narelis Santons',
    '',
    'NareS',
    'lourdes.morenod@up.ac.pa',
    '12345',
    1,
    '2021-05-28 15:38:29'
  ),
  (
    20,
    'YUUI',
    '',
    'jota',
    'Hjs@jgm.com',
    'CD',
    1,
    '2021-06-28 15:54:44'
  ),
  (
    21,
    'hectors',
    '',
    'hector',
    'hector@up.ac.pa',
    '12345',
    2,
    '2021-08-18 18:55:06'
  ),
  (
    28,
    'jota ele',
    '',
    'joji',
    'lms@up.ac.pa',
    '12345',
    2,
    '2021-08-27 15:37:44'
  ),
  (
    29,
    'jkgjkm',
    '8-945-783',
    '12345',
    'dfgh@up.ac.pa',
    '12345',
    2,
    '2021-08-27 16:26:37'
  ),
  (
    34,
    'esther',
    '8-920-640',
    'esther',
    'lou@up.ac.pa',
    '12345',
    1,
    '2021-09-01 12:34:26'
  ),
  (
    46,
    'alsk',
    '8-930-674',
    'uyes',
    'als@up.ac.pa',
    '23sd',
    2,
    '2021-09-27 14:19:21'
  );
--
  -- Índices para tablas volcadas
  --
  --
  -- Indices de la tabla `gruposinv`
  --
ALTER TABLE
  `gruposinv`
ADD
  PRIMARY KEY (`id_grupo`),
ADD
  KEY `fk_id_usuario` (`id_usuario`);
--
  -- Indices de la tabla `invg`
  --
ALTER TABLE
  `invg`
ADD
  PRIMARY KEY (`secuencia`);
--
  -- Indices de la tabla `logogi`
  --
ALTER TABLE
  `logogi`
ADD
  PRIMARY KEY (`id_logo`),
ADD
  KEY `fk_id_usuariol` (`id_usuariol`);
--
  -- Indices de la tabla `miembroginv`
  --
ALTER TABLE
  `miembroginv`
ADD
  PRIMARY KEY (`id_miembro`),
ADD
  KEY `fk_id_grupo` (`id_usuario`);
--
  -- Indices de la tabla `proyegi`
  --
ALTER TABLE
  `proyegi`
ADD
  PRIMARY KEY (`id_titulo`),
ADD
  KEY `fk_id_usuariot` (`id_usuariot`);
--
  -- Indices de la tabla `usuarios`
  --
ALTER TABLE
  `usuarios`
ADD
  PRIMARY KEY (`id`) USING BTREE,
ADD
  UNIQUE KEY `nombre` (`nombre`);
--
  -- AUTO_INCREMENT de las tablas volcadas
  --
  --
  -- AUTO_INCREMENT de la tabla `gruposinv`
  --
ALTER TABLE
  `gruposinv`
MODIFY
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 11;
--
  -- AUTO_INCREMENT de la tabla `invg`
  --
ALTER TABLE
  `invg`
MODIFY
  `secuencia` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;
--
  -- AUTO_INCREMENT de la tabla `logogi`
  --
ALTER TABLE
  `logogi`
MODIFY
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 11;
--
  -- AUTO_INCREMENT de la tabla `miembroginv`
  --
ALTER TABLE
  `miembroginv`
MODIFY
  `id_miembro` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 38;
--
  -- AUTO_INCREMENT de la tabla `proyegi`
  --
ALTER TABLE
  `proyegi`
MODIFY
  `id_titulo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 21;
--
  -- AUTO_INCREMENT de la tabla `usuarios`
  --
ALTER TABLE
  `usuarios`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 47;
--
  -- Restricciones para tablas volcadas
  --
  --
  -- Filtros para la tabla `gruposinv`
  --
ALTER TABLE
  `gruposinv`
ADD
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
--
  -- Filtros para la tabla `logogi`
  --
ALTER TABLE
  `logogi`
ADD
  CONSTRAINT `fk_id_usuariol` FOREIGN KEY (`id_usuariol`) REFERENCES `usuarios` (`id`);
--
  -- Filtros para la tabla `miembroginv`
  --
ALTER TABLE
  `miembroginv`
ADD
  CONSTRAINT `fk_id_grupo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
--
  -- Filtros para la tabla `proyegi`
  --
ALTER TABLE
  `proyegi`
ADD
  CONSTRAINT `fk_id_usuariot` FOREIGN KEY (`id_usuariot`) REFERENCES `usuarios` (`id`);
COMMIT;
  /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
  /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
  /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;