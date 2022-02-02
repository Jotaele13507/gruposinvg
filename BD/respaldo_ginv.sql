-- MySQL dump 10.16  Distrib 10.2.32-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: g_inv
-- ------------------------------------------------------
-- Server version	10.2.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gruposinv`
--

DROP TABLE IF EXISTS `gruposinv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposinv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `unidad_acad` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `nombre_grupo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `acronimo` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `fecha_creacion` year(4) NOT NULL,
  `obj_grupo` varchar(500) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_usuario_id` (`id_usuario`),
  CONSTRAINT `fk_usuario_id` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposinv`
--

LOCK TABLES `gruposinv` WRITE;
/*!40000 ALTER TABLE `gruposinv` DISABLE KEYS */;
INSERT INTO `gruposinv` VALUES (1,11,'Facultad de Informatica','Los Sabiondos','LS',2021,'NADA');
/*!40000 ALTER TABLE `gruposinv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gruposinvg`
--

DROP TABLE IF EXISTS `gruposinvg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gruposinvg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_acad` text NOT NULL,
  `nombre_grupo` text NOT NULL,
  `nombre_coor` text NOT NULL,
  `acronimo` text NOT NULL,
  `fecha_creacion` year(4) NOT NULL,
  `obj_grupo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposinvg`
--

LOCK TABLES `gruposinvg` WRITE;
/*!40000 ALTER TABLE `gruposinvg` DISABLE KEYS */;
INSERT INTO `gruposinvg` VALUES (6,'sdfsf','sdfsd','sdfs','sdfsdf',2021,'sdfsdfsdfs');
/*!40000 ALTER TABLE `gruposinvg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miembroginv`
--

DROP TABLE IF EXISTS `miembroginv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miembroginv` (
  `id_miembro` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id_miembro`),
  KEY `fk_id_grupo` (`id_usuario`),
  CONSTRAINT `fk_id_grupo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembroginv`
--

LOCK TABLES `miembroginv` WRITE;
/*!40000 ALTER TABLE `miembroginv` DISABLE KEYS */;
INSERT INTO `miembroginv` VALUES (13,11,'8-1014-2094','Jhamany Naomi','Sanchez','Estudiante','Licenciatura','San Jose de Malambo','Koreanos','65458745','jhamany@mail.com'),(14,11,'8-123-321','Daniel','Sugasti','Lic','Pregrado','UIP','Industrial','523-5670','daniel@hotmail.com'),(16,17,'8-216-530','Genesis','Cueto','Estudiante','licenciatura','Escuela Artes y Oficios','Arte','65786564','cuetogenesis@gmail.com'),(18,18,'8-898-7889','Andrea','Garcia','Docente','Maestría','Universidad Tecnologíca de Panamá','Diseño','392-7715','andreaacmerb28@gmail.com');
/*!40000 ALTER TABLE `miembroginv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` int(2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (11,'Jorge Sánchez','jota','sanchez.jorge.luisr@gmail.com','abc',1,'2020-07-01 19:38:19'),(17,'Jhamany','Jhamany','sanchezjhamany@gmail.com','13911Jhamany',1,'2021-02-10 02:09:43'),(18,'saturnina','saturnina','saturninaplutarca@gmail.com','plutarca123',1,'2021-02-12 17:45:44'),(19,'Hector Eduardo Velasco Rengifo','hectorveren','hectorveren@hotmail.com','12345',2,'2021-02-13 17:34:13'),(20,'Samuel Pinto','SamuelP','cidesu.pa@gmail.com','05jesus05',2,'2021-02-17 18:53:40'),(21,'José Rogelio Fung Corro','josefung','joserfungcorro@gmail.com','maria29311505',2,'2021-02-27 03:30:27'),(22,'mario pineda falconett','mpfalcon','mpfalcon@hotmail.com','maraldo01',2,'2021-03-03 14:20:09'),(23,'Edila Herrera','EdilaH','eherreradeleon@hotmail.com','Toby2704',2,'2021-03-09 21:24:15'),(24,'vilma','vilma','vilmavchc456@gmail.com','mariposaamarilla',2,'2021-03-10 18:55:07'),(25,'Monica Contreras','8-312-608','monica.contreras@up.ac.pa','Moni.,51',2,'2021-03-17 23:40:44'),(26,'Ana Morales','Amoralesa','anai.morales@up.ac.pa','Higinio16',2,'2021-03-26 18:10:58'),(27,'Jericó Clement','Jericó.C','jerico.clement@up.ac.pa','Antoniovega1102@',2,'2021-03-26 23:09:18'),(28,'Carlos Manuel Gómez Rudy','3-112-34','carlos.gomezr@up.ac.pa','Carlos0990',2,'2021-03-27 05:00:18'),(29,'Yostin Añino','Yostin60','yostin0660@gmail.com','Yoss123!',2,'2021-03-29 19:29:54'),(30,'Hildaura Acosta','hiacosta6','hildaura.depatino@up.ac.pa','ArJoRo6%',2,'2021-04-09 16:47:30'),(31,'aaron','aaronperez','aaron.perez@up.ac.pa','aaronperez',2,'2021-04-11 04:46:29'),(32,'Maricselis Diaz','MEdr172693','maricselis@hotmail.com','MEdr172693',2,'2021-04-16 22:10:12'),(33,'argelis delgado','isa11F22','delgadoargelis88@gmail.com','isa11F22',2,'2021-04-27 20:10:17'),(35,'Belen','belen11','belen.barreno@up.ac.pa','Quimica',2,'2021-04-30 07:54:28'),(36,'Jaquelen Tunon','3-116-819','jaquelen.tunon@up.ac.pa','123456',2,'2021-05-03 02:01:45'),(37,'RAUL FUENTES','rfuentes','fuenfossraul@gmail.com','123456',2,'2021-05-03 13:50:51'),(38,'francis correa','francis.correa@unachi.ac.pa','franciscorrea@unachi.ac.pa','0990Francis',2,'2021-05-07 04:53:11'),(39,'Victor Ortiz','victor','victor.ortiz@up.ac.pa','instituto',2,'2021-05-09 14:22:23'),(40,'Pedro Guillermo Mendez-Carvajal','1NFMLZ93','fcprimatespanama@gmail.com','MotaNegra55',2,'2021-05-15 06:24:44'),(41,'Evelyn Garcia','Evelyngarcia','evegarci@yahoo.com','Victor30',2,'2021-05-20 20:07:14'),(42,'Jerico','Jerico11','jericoclement@up.ac.pa','Ntoniovega1102@',2,'2021-05-24 03:36:01'),(43,'Cristina Garibaldi','cristina.garibaldi','cristina.garibaldi@up.ac.pa','Florentina14031936',2,'2021-06-02 20:44:24'),(44,'Cesar Amaya','cesar_lmx29','cesar.amaya@up.ac.pa','Panamalove29*',2,'2021-06-27 22:55:14'),(45,'Angel Javier Vega','CCIMBIO','angel.vega@up.ac.pa','CCIMBIO-CRUV-UP',2,'2021-07-19 03:06:01'),(46,'Lina Lay Mendivil','Lina_LayMendivil','lina.lay@up.ac.pa','Panama507',2,'2021-07-20 16:49:56'),(47,'Nivia J Rios Carrera','Nrios','toxogondii@gmail.com','Luis1512*',2,'2021-07-20 21:19:57'),(48,'Anabella Fong','Anabellafm','fonganabella@gmail.com','219918',2,'2021-07-22 07:16:29'),(49,'eduardo amador','xamador','eduardo.amador@up.ac.pa','chingadaX1',2,'2021-07-24 13:17:20'),(50,'ANGELICA PIERRE','ampwp53','angelica.pierre@up.ac.pa','sugarpop5',2,'2021-07-26 01:39:47'),(51,'Jorge Roquebert','jorge.roquebert@up.ac.pa','jorge.roquebert@up.ac.pa','Mani0626*',2,'2021-07-29 19:03:03'),(52,'Lourdes','lule11','lule.0110@hotmail.com','123',2,'2021-08-18 15:45:23'),(53,'Luis Carlos Rodríguez','luisc1426','luiscarlos1426@gmail.com','C0pep0da',2,'2021-09-02 14:25:07'),(54,'Franger Lezcano','Franger','lfralezcano@gmail.com','Panama09',2,'2021-09-10 19:59:02'),(55,'Neriberto De Mera','Neriberto','neriberto_demera@hotmail.com','Loco1984@',2,'2021-09-14 00:49:11'),(56,'Samantha Benítez','sam_betty15','samantha.benitez@up.ac.pa','marquez2315',2,'2021-09-14 21:27:28'),(59,'Edwin Pile','edwin','edwin.pilem@up.ac.pa','acontrasenhadaviceipup',2,'2021-09-18 22:35:20'),(61,'shafkynycg','shafkynycg','','yprfAd',2,'2021-10-06 12:53:16'),(62,'kotvnywaxi','kotvnywaxi','','MxyFX',2,'2021-10-06 23:27:47'),(63,'ceqlsf','ceqlsf','','9g4Nk',2,'2021-10-07 07:31:32');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-11 10:03:14
