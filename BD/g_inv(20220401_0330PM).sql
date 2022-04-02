-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-04-2022 a las 22:29:46
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.0.13
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  -- Estructura de tabla para la tabla `fotogrupo`
  --
  CREATE TABLE `fotogrupo` (
    `id_fotogrupo` int(11) NOT NULL,
    `id_usuariof` int(11) NOT NULL,
    `id_grupo` int(11) NOT NULL,
    `dir_foto` varchar(255) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `fotogrupo`
  --
INSERT INTO
  `fotogrupo` (
    `id_fotogrupo`,
    `id_usuariof`,
    `id_grupo`,
    `dir_foto`
  )
VALUES
  (1, 49, 17, 'foto_grupos/grupo.jpg');
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
    `obj_grupo`,
    `dir_logo`,
    `dir_fotogrupo`
  )
VALUES
  (
    4,
    11,
    'Medicina',
    'Opac',
    'a',
    'a',
    'a',
    NULL,
    NULL
  ),
  (5, 13, 'Faeco', 'CEU', 'b', 'b', 'b', NULL, NULL),
  (
    6,
    15,
    'Facultad de Informática, Electrónica y Comunicació',
    'Fiec',
    'LQS',
    '2021',
    'Dormir',
    NULL,
    NULL
  ),
  (
    7,
    17,
    'Facultad de Farmacia',
    'OTRI',
    'Otri',
    '2021',
    'Nada',
    NULL,
    NULL
  ),
  (
    8,
    18,
    'Facultad de Informática',
    'Dark',
    'll',
    '2021',
    'aprender más',
    NULL,
    NULL
  ),
  (
    9,
    12,
    'Arquitectura',
    'MED',
    'ide',
    '2019',
    'khk',
    NULL,
    NULL
  ),
  (
    10,
    34,
    'Arquitectura',
    'CAPAC',
    'ide',
    '2019',
    'Obtener una revista cientÃ­fica',
    NULL,
    NULL
  ),
  (
    11,
    20,
    'DSFDS',
    'fsdfdsf',
    'sdfds',
    '2022',
    'sdfhsdjfkhsdjfldsf',
    NULL,
    NULL
  ),
  (
    12,
    63,
    'Facultad de Arquitectura',
    'Arte y Diseño',
    'AD',
    '2022',
    'Lorem Ipsun',
    NULL,
    NULL
  ),
  (
    13,
    64,
    'Facultad de Comunicación Social',
    'UP CIENTIFICA',
    'UPC',
    '2021',
    'Objetivo',
    NULL,
    NULL
  ),
  (
    14,
    16,
    'FSDF',
    'SDFDSF',
    'SDFDS',
    '2222',
    'FSDFSDFSFSF',
    NULL,
    NULL
  ),
  (
    15,
    21,
    'sfdsd',
    'sdfdsf',
    'fsfs',
    '2223',
    'sdfsdfsfdsfs',
    NULL,
    NULL
  ),
  (
    16,
    28,
    'Facultad de Medicina Veterinaria',
    'Grupo 1',
    'G1',
    '2022',
    'Pasar el año',
    NULL,
    NULL
  ),
  (
    17,
    49,
    'Centro Regional Universitario de Colón',
    'Sistemas Logísticos y Análisis Empresarial',
    'SisLAE ',
    '2021',
    'Analizar sistemas logísticos y empresariales mediante el análisis avanzado de datos, estadística multivariante y modelos de pronósticos con el propósito de diseñar sistemas de negocios más eficientes.',
    NULL,
    NULL
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
    `id_grupo` int(11) DEFAULT NULL,
    `dir_logo` varchar(100) NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `logogi`
  --
INSERT INTO
  `logogi` (`id_logo`, `id_usuariol`, `id_grupo`, `dir_logo`)
VALUES
  (1, 11, 0, 'logo_grupos/Beca.jpg'),
  (
    3,
    13,
    0,
    'logo_grupos/1243px-Harley_davidson_logo.jpg'
  ),
  (
    4,
    15,
    0,
    'logo_grupos/WhatsApp Image 2021-02-02 at 4.16.02 PM.jpeg'
  ),
  (6, 17, 0, 'logo_grupos/FB_IMG_1599150833140.jpg'),
  (
    7,
    16,
    0,
    'logo_grupos/WhatsApp Image 2021-04-05 at 10.00.27 PM.jpeg'
  ),
  (10, 12, 0, 'logo_grupos/MAPA_PROCESOS.jpg'),
  (
    11,
    63,
    0,
    'logo_grupos/WhatsApp Image 2022-02-28 at 5.06.08 PM.jpeg'
  ),
  (
    12,
    64,
    0,
    'logo_grupos/WhatsApp Image 2022-02-28 at 5.06.08 PM.jpeg'
  ),
  (
    13,
    49,
    17,
    'logo_grupos/Logo SisLAE color_001.png'
  );
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
    `tel_int` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
    `mail_int` varchar(25) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
  ) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
--
  -- Volcado de datos para la tabla `miembroginv`
  --
INSERT INTO
  `miembroginv` (
    `id_miembro`,
    `id_usuario`,
    `id_grupo`,
    `cedula_int`,
    `nombre_int`,
    `apellido_int`,
    `estatus_int`,
    `grado_int`,
    `inst_int`,
    `area_int`,
    `tel_int`,
    `mail_int`
  )
VALUES
  (
    2,
    13,
    5,
    '8-825-724',
    'Oralia',
    'Suarez',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'farmacia',
    '5235322',
    'jorgeluissanchezrodriguez'
  ),
  (
    11,
    11,
    4,
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i'
  ),
  (
    12,
    15,
    6,
    '8-876-2080',
    'Johana ',
    'López',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'Comprar por internet',
    '6666-6666',
    'johatzel@mail.com'
  ),
  (
    13,
    17,
    7,
    '8-877-111',
    'Jorge',
    'Sanchez',
    'Estudiante',
    'Ingeniero',
    'Universidad de Panamá',
    'Robots',
    '6666-6666',
    'jorge@mail.com'
  ),
  (
    14,
    18,
    8,
    '8-654-653',
    'Esther',
    'Díaz',
    'Estudiante',
    'Licenciatura',
    'Universidad de Panamá',
    'Robotica',
    '63026514',
    'lourdes-34417@gmail.com'
  ),
  (
    15,
    12,
    9,
    '8-920-640',
    'lourdes',
    'moreno',
    'estudiante',
    '11',
    'universidad',
    'c.sociales',
    '6302-6514',
    'lourdes.34417@gmail.com'
  ),
  (
    16,
    12,
    9,
    '123-456',
    'Edgar',
    'Perez',
    'estudiante',
    '11',
    'universidad',
    'c.sociales',
    '6302-6514',
    'lourdes@gmail.com'
  ),
  (
    18,
    12,
    9,
    '8-152-43',
    'Solangel',
    'Torres',
    'estudiante',
    '23',
    'universidad',
    'c.sociales',
    '6202-6814',
    'lourdes.morenod@up.ac.pa'
  ),
  (
    19,
    12,
    9,
    '9-324-23',
    'jael',
    'sam',
    'estudiante',
    'indefinido',
    'universidad',
    'nada',
    '654-983',
    'jael67@up.ac.pa'
  ),
  (
    25,
    12,
    9,
    '78990',
    '5555',
    '5555',
    'estudiante',
    '23',
    'universidad',
    'c.sociales',
    '654-983',
    'lid@up.ac.pa'
  ),
  (
    27,
    12,
    9,
    '9-234-234',
    'lala',
    'lale',
    'nada',
    '22',
    'universidad',
    'no se nada',
    '123-234',
    'laks@up.ac.pa'
  ),
  (
    37,
    15,
    6,
    '8-945-783',
    'Egard',
    'Repez',
    'estudiante',
    '12',
    'universidad',
    'c.sociales',
    '654-983',
    'edgra@de.com'
  ),
  (
    38,
    11,
    4,
    '8-123-987',
    'Manuela',
    'Londoño',
    'Estudiante',
    'Licenciada',
    'Universidad de Panamá',
    'Repostería',
    '66655544',
    'manuela@mail.com'
  ),
  (
    39,
    63,
    12,
    '8-945-783',
    'fulano',
    'de tal',
    'Estudiante',
    'Liceciatura',
    'Universidad de Panamá',
    'Diseño Grafico',
    '555-4455',
    'fulano@mail.com'
  ),
  (
    40,
    64,
    13,
    '7-85-96',
    'Genesis',
    'Rodriguez',
    'Estudiante',
    'Magister',
    'Universidad de Chile',
    'Comunicación Social',
    '4572547',
    'genesis@mail.com'
  ),
  (
    41,
    28,
    16,
    '8-492-221',
    'Petronilo',
    'De la guardia II',
    'Estudiante',
    'Bachiller',
    'Universidad de Panamá',
    'Mejora de pasto',
    '68125397',
    'petronilo@delaguardia.com'
  );
-- --------------------------------------------------------
  --
  -- Estructura de tabla para la tabla `proyegi`
  --
  CREATE TABLE `proyegi` (
    `id_titulo` int(11) NOT NULL,
    `id_usuariot` int(11) NOT NULL,
    `id_grupo` int(11) DEFAULT NULL,
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
    `id_grupo`,
    `tit_inv`,
    `obj_inv`,
    `estado`
  )
VALUES
  (
    19,
    12,
    9,
    'La informatica en el Futuro',
    'Conocer el futuro de la tecnologia ',
    'En curso'
  ),
  (
    20,
    12,
    9,
    'Neurociencia',
    'Conocer cuanto dolor sienten los bebes',
    'Reciente'
  ),
  (
    21,
    63,
    12,
    '¿ Por qué nadie es mas fuerte que goku?',
    'Conocer por qué nadie le gana a goku',
    'En curso'
  ),
  (
    22,
    64,
    13,
    'Mercadeo',
    'Conocer los medios de mercadeo de panamá',
    'Reciente'
  ),
  (24, 11, 15, 'hola', 'hola mundo', 'Reciente'),
  (
    25,
    28,
    16,
    'Proyecto 1',
    'Ayudar a un amigo en su proyecto llamado proyecto 1',
    'En curso'
  );
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
    'Maximo Escobar',
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
    1,
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
    1,
    '2021-08-18 18:55:06'
  ),
  (
    28,
    'jota ele',
    '',
    'joji',
    'lms@up.ac.pa',
    '12345',
    1,
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
  ),
  (
    47,
    'Esther Diaz',
    '8-933-1167',
    'lu97',
    'lule.0110@hotmail.com',
    '12345',
    2,
    '2021-10-11 15:15:28'
  ),
  (
    48,
    'Jorge Sanrana',
    '8-871-952',
    'santanj',
    'sanchez.jorge.luisr@gmail.com',
    'jhamany13911',
    2,
    '2021-10-11 19:00:00'
  ),
  (
    49,
    'Carlos Manuel Gómez Rudy',
    '3-112-034',
    '3-112-34',
    'carlos.gomezr@up.ac.pa',
    'Carlos0990',
    1,
    '2021-10-14 23:57:21'
  ),
  (
    50,
    'Angel Javier Vega',
    '9-122-1691',
    '4A6EJ47V',
    'angel.vega@up.ac.pa',
    'CCIMBIO-CRUV-UP',
    2,
    '2021-10-17 02:51:48'
  ),
  (
    51,
    'Jericó Clement',
    '3-744-1626',
    'Jericó.C',
    'jerico.clement@up.ac.pa',
    'Antoniovega1102@',
    2,
    '2021-10-20 23:05:53'
  ),
  (
    52,
    'Yarien Moreno',
    'PE-12-154',
    'yarien.moreno',
    'yarien.moreno@up.ac.pa',
    'Kaori012154',
    2,
    '2021-11-08 17:31:53'
  ),
  (
    53,
    'luis augusto morales estrada',
    '9-710-342',
    'agos1923',
    'augusto_morales@hotmail.com',
    'atlana1323.',
    2,
    '2021-11-20 08:55:56'
  ),
  (
    54,
    'Olmedo Moreno Almanza',
    '8-810-1032',
    'omorenoa',
    'olmedo.moreno@up.ac.pa',
    'Panama05*',
    2,
    '2021-11-22 17:17:15'
  ),
  (
    55,
    'Rosargelina Singh Aguilar',
    '8-709-288',
    'rsingh',
    'r.singhaguilar0819@gmail.com',
    '0805',
    2,
    '2021-11-23 19:50:38'
  ),
  (
    56,
    'gilberto Welsh',
    '8-309-932',
    'gilwelsh',
    'gilberto.welsh@up.ac.pa',
    'pillat06',
    2,
    '2021-12-06 19:41:03'
  ),
  (
    57,
    'eduardo xavier amador ceron',
    'pe-2-838',
    'xamador',
    'eduardo.amador@up.ac.pa',
    'chingadax1',
    2,
    '2021-12-09 21:14:56'
  ),
  (
    58,
    'CINDY ESQUIVEL',
    '4-704-73',
    '4-704-73',
    'cindy.esquivel@up.ac.pa',
    'Cindye1977.',
    2,
    '2022-01-05 14:04:05'
  ),
  (
    59,
    'CARMEN DE TYLER',
    '9-132-528',
    'carmentyler',
    'profesora.carmen.tyler@gmail.com',
    'amor4410',
    2,
    '2022-01-22 14:35:00'
  ),
  (
    60,
    'Zuleika María Jiménez',
    '8-837-372',
    'ZuleikaM26',
    'zuleika.jimenez@up.ac.pa',
    'Pzuly-2020',
    2,
    '2022-01-26 20:53:06'
  ),
  (
    61,
    'yuhatrjt',
    '',
    'yuhatrjt',
    '',
    'DBEzxS',
    2,
    '2022-01-27 08:20:40'
  ),
  (
    62,
    'Manuela Londoño',
    '8-123-987',
    'manuela',
    'manuela@mail.com',
    '123456',
    2,
    '2022-03-07 14:14:01'
  ),
  (
    63,
    'Diana Tobar',
    '4-444-4444',
    'dianatoto',
    'diana@mail.com',
    '123.abc.',
    1,
    '2022-03-11 13:29:23'
  ),
  (
    64,
    'Bladimir Cedeño',
    '9-999-994',
    'bladimir',
    'bladimir@mail.com',
    '123.abc.',
    1,
    '2022-03-11 15:10:16'
  ),
  (
    69,
    'Estelina Ortega Jalil de Gómez',
    'estelina.ortega@up.ac.pa',
    'estelinaortega',
    '3-120-34',
    '123.abc.',
    2,
    '2022-03-28 14:43:30'
  );
--
  -- Índices para tablas volcadas
  --
  --
  -- Indices de la tabla `fotogrupo`
  --
ALTER TABLE
  `fotogrupo`
ADD
  PRIMARY KEY (`id_fotogrupo`),
ADD
  KEY `fk_id_usuariof` (`id_usuariof`);
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
  -- AUTO_INCREMENT de la tabla `fotogrupo`
  --
ALTER TABLE
  `fotogrupo`
MODIFY
  `id_fotogrupo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 2;
--
  -- AUTO_INCREMENT de la tabla `gruposinv`
  --
ALTER TABLE
  `gruposinv`
MODIFY
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 18;
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
  AUTO_INCREMENT = 15;
--
  -- AUTO_INCREMENT de la tabla `miembroginv`
  --
ALTER TABLE
  `miembroginv`
MODIFY
  `id_miembro` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 42;
--
  -- AUTO_INCREMENT de la tabla `proyegi`
  --
ALTER TABLE
  `proyegi`
MODIFY
  `id_titulo` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 26;
--
  -- AUTO_INCREMENT de la tabla `usuarios`
  --
ALTER TABLE
  `usuarios`
MODIFY
  `id` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 70;
--
  -- Restricciones para tablas volcadas
  --
  --
  -- Filtros para la tabla `fotogrupo`
  --
ALTER TABLE
  `fotogrupo`
ADD
  CONSTRAINT `fk_id_usuariof` FOREIGN KEY (`id_usuariof`) REFERENCES `usuarios` (`id`);
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