-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: g_inv
-- ------------------------------------------------------
-- Server version	5.5.5-10.2.32-MariaDB

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
  `id_grupo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `unidad_acad` varchar(50) NOT NULL,
  `nombre_grupo` varchar(50) NOT NULL,
  `acronimo` varchar(50) NOT NULL,
  `fecha_creacion` varchar(50) NOT NULL,
  `obj_grupo` varchar(1500) NOT NULL,
  PRIMARY KEY (`id_grupo`),
  KEY `fk_id_usuario` (`id_usuario`),
  CONSTRAINT `fk_id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gruposinv`
--

LOCK TABLES `gruposinv` WRITE;
/*!40000 ALTER TABLE `gruposinv` DISABLE KEYS */;
INSERT INTO `gruposinv` VALUES (4,11,'Medicina','Opac','a','a','a'),(5,13,'Faeco','CEU','b','b','b'),(6,15,'Facultad de Informática, Electrónica y Comunicació','Fiec','LQS','2021','Dormir'),(7,17,'Facultad de Farmacia','OTRI','Otri','2021','Nada'),(8,18,'Facultad de Informática','Dark','ll','2021','aprender más'),(9,12,'Arquitectura','MED','ide','2019','khk'),(10,34,'Arquitectura','CAPAC','ide','2019','Obtener una revista cientÃ­fica');
/*!40000 ALTER TABLE `gruposinv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invg`
--

DROP TABLE IF EXISTS `invg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invg` (
  `secuencia` int(11) NOT NULL AUTO_INCREMENT,
  `unidad_acad` varchar(50) NOT NULL,
  `nombre_grupo` varchar(50) NOT NULL,
  `nombre_coor` varchar(50) NOT NULL,
  `acronimo` varchar(50) NOT NULL,
  `fecha_creacion` varchar(10) NOT NULL,
  `obj_grupo` varchar(700) NOT NULL,
  PRIMARY KEY (`secuencia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invg`
--

LOCK TABLES `invg` WRITE;
/*!40000 ALTER TABLE `invg` DISABLE KEYS */;
INSERT INTO `invg` VALUES (1,'a','b','c','d','e','f');
/*!40000 ALTER TABLE `invg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logogi`
--

DROP TABLE IF EXISTS `logogi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logogi` (
  `id_logo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuariol` int(11) NOT NULL,
  `dir_logo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_logo`),
  KEY `fk_id_usuariol` (`id_usuariol`),
  CONSTRAINT `fk_id_usuariol` FOREIGN KEY (`id_usuariol`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logogi`
--

LOCK TABLES `logogi` WRITE;
/*!40000 ALTER TABLE `logogi` DISABLE KEYS */;
INSERT INTO `logogi` VALUES (1,11,'img_guardadas/Beca.jpg'),(3,13,'img_guardadas/1243px-Harley_davidson_logo.jpg'),(4,15,'img_guardadas/WhatsApp Image 2021-02-02 at 4.16.02 PM.jpeg'),(6,17,'img_guardadas/FB_IMG_1599150833140.jpg'),(7,16,'img_guardadas/WhatsApp Image 2021-04-05 at 10.00.27 PM.jpeg'),(10,12,'img_guardadas/MAPA_PROCESOS.jpg');
/*!40000 ALTER TABLE `logogi` ENABLE KEYS */;
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
  `id_grupo` int(50) NOT NULL,
  PRIMARY KEY (`id_miembro`),
  KEY `fk_id_grupo` (`id_usuario`),
  CONSTRAINT `fk_id_grupo` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miembroginv`
--

LOCK TABLES `miembroginv` WRITE;
/*!40000 ALTER TABLE `miembroginv` DISABLE KEYS */;
INSERT INTO `miembroginv` VALUES (2,13,'8-825-724','Oralia','Suarez','Estudiante','Licenciatura','Universidad de Panamá','farmacia','5235322','jorgeluissanchezrodriguez',0),(11,11,'a','b','c','d','e','f','g','h','i',0),(12,15,'8-876-2080','Johana ','López','Estudiante','Licenciatura','Universidad de Panamá','Comprar por internet','6666-6666','johatzel@mail.com',0),(13,17,'8-877-111','Jorge','Sanchez','Estudiante','Ingeniero','Universidad de Panamá','Robots','6666-6666','jorge@mail.com',0),(14,18,'8-654-653','Esther','Díaz','Estudiante','Licenciatura','Universidad de Panamá','Robotica','63026514','lourdes-34417@gmail.com',6),(15,12,'8-920-640','lourdes','moreno','estudiante','11','universidad','c.sociales','6302-6514','lourdes.34417@gmail.com',7),(16,12,'123-456','Ã¨dgÃ r','pÃ©reÃ©z','estudiante','11','universidad','c.sociales','6302-6514','lourdes@gmail.com',7),(18,12,'8-152-43','Solangel','Torres','estudiante','23','universidad','c.sociales','6202-6814','lourdes.morenod@up.ac.pa',9),(19,12,'9-324-23','jael','sam','estudiante','indefinido','universidad','nada','654-983','jael67@up.ac.pa',7),(25,12,'78990','5555','5555','estudiante','23','universidad','c.sociales','654-983','lid@up.ac.pa',7),(27,12,'9-234-234','lala','lale','nada','22','universidad','no se nada','123-234','laks@up.ac.pa',7),(37,15,'8-945-783','Egard','Repez','estudiante','12','universidad','c.sociales','654-983','edgra@de.com',6);
/*!40000 ALTER TABLE `miembroginv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyegi`
--

DROP TABLE IF EXISTS `proyegi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyegi` (
  `id_titulo` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuariot` int(11) NOT NULL,
  `tit_inv` varchar(100) NOT NULL,
  `obj_inv` varchar(700) NOT NULL,
  `estado` varchar(50) NOT NULL,
  PRIMARY KEY (`id_titulo`),
  KEY `fk_id_usuariot` (`id_usuariot`),
  CONSTRAINT `fk_id_usuariot` FOREIGN KEY (`id_usuariot`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyegi`
--

LOCK TABLES `proyegi` WRITE;
/*!40000 ALTER TABLE `proyegi` DISABLE KEYS */;
INSERT INTO `proyegi` VALUES (19,12,'La informatica en el Futuro','Conocer el futuro de la tecnologia ','En curso'),(20,12,'Neurociencia','Conocer cuanto dolor sienten los bebes','Reciente');
/*!40000 ALTER TABLE `proyegi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish2_ci NOT NULL,
  `cedula` varchar(40) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `usuario` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `privilegio` int(2) NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (11,'Jorge Sánchez','8-877-111','jota','sanchez.jorge.luisr@gmail.com','abc',1,'2020-07-01 19:38:19'),(12,'Maximo','','Admin','jorgeluissanchezrodriguez@gmail.com','admin',1,'2020-07-01 22:05:29'),(13,'Andres','8-152-43','andi','Andresmail@mail.com','456',1,'2020-08-06 19:37:15'),(14,'Jorge Santana','','santana','santana@mail.com','abc',1,'2021-02-10 07:50:23'),(15,'Johana Lopez','8-876-2080','johatzel','johatzel@gmail.com','jorgeesmipapi',1,'2021-02-14 02:04:07'),(16,'Solangel Torres','8-152-43','sol','solangel@mail.com','260493',2,'2021-02-21 21:41:51'),(17,'Oralia Suarez','8-825-724','Oralia','oralia@mail.com','anakilula',1,'2021-02-24 22:21:18'),(18,'Lourdes Moreno','8-920-640','lule','lule.0110@hotmail.com','123',1,'2021-05-18 13:46:41'),(19,'Narelis Santons','','NareS','lourdes.morenod@up.ac.pa','12345',1,'2021-05-28 15:38:29'),(20,'YUUI','','jota','Hjs@jgm.com','CD',1,'2021-06-28 15:54:44'),(21,'hectors','','hector','hector@up.ac.pa','12345',2,'2021-08-18 18:55:06'),(28,'jota ele','','joji','lms@up.ac.pa','12345',2,'2021-08-27 15:37:44'),(29,'jkgjkm','8-945-783','12345','dfgh@up.ac.pa','12345',2,'2021-08-27 16:26:37'),(34,'esther','8-920-640','esther','lou@up.ac.pa','12345',1,'2021-09-01 12:34:26'),(46,'alsk','8-930-674','uyes','als@up.ac.pa','23sd',2,'2021-09-27 14:19:21'),(47,'Esther Diaz','8-933-1167','lu97','lule.0110@hotmail.com','12345',2,'2021-10-11 15:15:28'),(48,'Jorge Sanrana','8-871-952','santanj','sanchez.jorge.luisr@gmail.com','jhamany13911',2,'2021-10-11 19:00:00'),(49,'Carlos Manuel Gómez Rudy','3-112-034','3-112-34','carlos.gomezr@up.ac.pa','Carlos0990',2,'2021-10-14 23:57:21'),(50,'Angel Javier Vega','9-122-1691','4A6EJ47V','angel.vega@up.ac.pa','CCIMBIO-CRUV-UP',2,'2021-10-17 02:51:48'),(51,'Jericó Clement','3-744-1626','Jericó.C','jerico.clement@up.ac.pa','Antoniovega1102@',2,'2021-10-20 23:05:53'),(52,'Yarien Moreno','PE-12-154','yarien.moreno','yarien.moreno@up.ac.pa','Kaori012154',2,'2021-11-08 17:31:53'),(53,'luis augusto morales estrada','9-710-342','agos1923','augusto_morales@hotmail.com','atlana1323.',2,'2021-11-20 08:55:56'),(54,'Olmedo Moreno Almanza','8-810-1032','omorenoa','olmedo.moreno@up.ac.pa','Panama05*',2,'2021-11-22 17:17:15'),(55,'Rosargelina Singh Aguilar','8-709-288','rsingh','r.singhaguilar0819@gmail.com','0805',2,'2021-11-23 19:50:38'),(56,'gilberto Welsh','8-309-932','gilwelsh','gilberto.welsh@up.ac.pa','pillat06',2,'2021-12-06 19:41:03'),(57,'eduardo xavier amador ceron','pe-2-838','xamador','eduardo.amador@up.ac.pa','chingadax1',2,'2021-12-09 21:14:56'),(58,'CINDY ESQUIVEL','4-704-73','4-704-73','cindy.esquivel@up.ac.pa','Cindye1977.',2,'2022-01-05 14:04:05'),(59,'CARMEN DE TYLER','9-132-528','carmentyler','profesora.carmen.tyler@gmail.com','amor4410',2,'2022-01-22 14:35:00'),(60,'Zuleika María Jiménez','8-837-372','ZuleikaM26','zuleika.jimenez@up.ac.pa','Pzuly-2020',2,'2022-01-26 20:53:06'),(61,'yuhatrjt','','yuhatrjt','','DBEzxS',2,'2022-01-27 08:20:40');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'g_inv'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-31  7:56:14
