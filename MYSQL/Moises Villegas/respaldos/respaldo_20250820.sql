-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: bd_movi_30482481
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(80) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `correo_electronico` text DEFAULT NULL,
  `telf_hab` varchar(11) DEFAULT NULL,
  `telf_cel` varchar(11) DEFAULT NULL,
  `telf_ofi` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`) USING HASH,
  KEY `correo_electronico_2` (`correo_electronico`(768))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'YOLANDA','TORTOZA','CATIA LA MAR','yt@hotmail.com','02123741234',NULL,NULL),(2,'LIBIA','COLS','GUARENAS','lc@gmail.com','02123534100',NULL,NULL),(3,'Movi','Games','Antimano','moviby2004gmail.com','+58 0424-15',NULL,NULL),(4,'LAURA','GONZALEZ','DOS CAMINOS','lg@gmail.com','02121234567','04149876543','02122345678');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (13,1,'nevera',500.25,6),(14,1,'cocina a gas',300.74,12),(15,1,'lavadora',350.39,3),(16,1,'secadora',750.00,0),(17,2,'Aire acondicionado',450.00,75),(18,2,'cocina electrica',425.00,2),(19,3,'lavadora',700.00,6),(20,3,'congelador',250.74,6),(21,4,'nevera',650.25,9),(22,4,'cocina a gas',280.75,6),(23,4,'lavadora',450.50,5),(24,4,'secadora',550.00,5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos1`
--

DROP TABLE IF EXISTS `productos1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `proveedor_id` (`proveedor_id`),
  CONSTRAINT `productos1_ibfk_1` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores1` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos1`
--

LOCK TABLES `productos1` WRITE;
/*!40000 ALTER TABLE `productos1` DISABLE KEYS */;
INSERT INTO `productos1` VALUES (5,22,'Aire acondicionado',450.00,75),(6,22,'cocina electrica',425.00,2),(7,3,'lavadora',700.00,6),(8,3,'congelador',250.74,6),(9,4,'nevera',650.25,9),(10,4,'cocina a gas',280.75,6),(11,4,'lavadora',450.50,5),(12,4,'secadora',550.00,5);
/*!40000 ALTER TABLE `productos1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos2`
--

DROP TABLE IF EXISTS `productos2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proveedor_id` int(11) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precio` decimal(13,2) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos2`
--

LOCK TABLES `productos2` WRITE;
/*!40000 ALTER TABLE `productos2` DISABLE KEYS */;
INSERT INTO `productos2` VALUES (1,1,'NEVERA',500.25,6),(2,1,'COCINA A GAS',300.75,12),(3,1,'LAVADORA',350.50,3),(4,1,'SECADORA',750.00,3),(5,2,'AIRE ACONDICIONADO',450.75,4),(6,2,'COCINA ELECTRICA',425.00,2),(7,3,'LAVADORA',700.00,6),(8,3,'CONGELADOR',250.75,5),(9,4,'NEVERA',650.25,9),(10,4,'COCINA A GAS',280.75,6),(11,4,'LAVADORA',450.50,5),(12,4,'SECADORA',550.00,5),(13,99,'NEVERA',650.25,9),(14,100,'COCINA A GAS',280.75,6),(15,101,'LAVADORA',450.50,5),(16,102,'SECADORA',550.00,5);
/*!40000 ALTER TABLE `productos2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `apellido` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo_electronico` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'GE','AV. LECUNA',NULL,'02124431234','info@ge.com'),(2,'MABE','AV. R?MULO GALLEGOS',NULL,'02122631234','info@mabe.com'),(3,'WHIRPOOL','AV. FRANCISCO DE MIRANDA',NULL,'02122062140','info@whirpool.com'),(4,'SIRAGON','AV. LIBERTADOR',NULL,'02127531234','info@sirangon.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores1`
--

DROP TABLE IF EXISTS `proveedores1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo_electronico` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores1`
--

LOCK TABLES `proveedores1` WRITE;
/*!40000 ALTER TABLE `proveedores1` DISABLE KEYS */;
INSERT INTO `proveedores1` VALUES (3,'WHIRPOOL','AV. FRANCISCO DE MIRANDA','02122062140','info@whirpool.com'),(4,'SIRAGON','AV. LIBERTADOR','02127531234','info@sirangon.com'),(22,'MABE','AV. R?MULO GALLEGOS','02122631234','info@mabe.com');
/*!40000 ALTER TABLE `proveedores1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores2`
--

DROP TABLE IF EXISTS `proveedores2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) DEFAULT NULL,
  `direccion` text DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `correo_electronico` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo_electronico` (`correo_electronico`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores2`
--

LOCK TABLES `proveedores2` WRITE;
/*!40000 ALTER TABLE `proveedores2` DISABLE KEYS */;
INSERT INTO `proveedores2` VALUES (1,'GE','AV. LECUNA','02124431234','info@ge.com'),(2,'MABE','AV. R?MULO GALLEGOS','02122631234','info@mabe.com'),(3,'WHIRPOOL','AV. FRANCISCO DE MIRANDA','02122062140','info@whirpool.com'),(4,'SIRAGON','AV. LIBERTADOR','02127531234','info@sirangon.com'),(5,'LG','AV. PRESIDENTE MEDINA','02123631234','info@lg.com'),(6,'DAMASCO','AV. ROOSVELT','02124062140','info@damasco.com'),(7,'HIER','AV. PPAL. DEL VALLE','02127531234','info@hier.com');
/*!40000 ALTER TABLE `proveedores2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `view_full_join_proveedores2_productos2`
--

DROP TABLE IF EXISTS `view_full_join_proveedores2_productos2`;
/*!50001 DROP VIEW IF EXISTS `view_full_join_proveedores2_productos2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_full_join_proveedores2_productos2` AS SELECT
 1 AS `proveedor`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_inner_join_proveedores2_productos2`
--

DROP TABLE IF EXISTS `view_inner_join_proveedores2_productos2`;
/*!50001 DROP VIEW IF EXISTS `view_inner_join_proveedores2_productos2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_inner_join_proveedores2_productos2` AS SELECT
 1 AS `proveedor`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_left_join_proveedores2_productos2`
--

DROP TABLE IF EXISTS `view_left_join_proveedores2_productos2`;
/*!50001 DROP VIEW IF EXISTS `view_left_join_proveedores2_productos2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_left_join_proveedores2_productos2` AS SELECT
 1 AS `proveedor`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `view_right_join_proveedores2_productos2`
--

DROP TABLE IF EXISTS `view_right_join_proveedores2_productos2`;
/*!50001 DROP VIEW IF EXISTS `view_right_join_proveedores2_productos2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_right_join_proveedores2_productos2` AS SELECT
 1 AS `proveedor`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `existencia` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_proveedores_productos`
--

DROP TABLE IF EXISTS `vista_proveedores_productos`;
/*!50001 DROP VIEW IF EXISTS `vista_proveedores_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_proveedores_productos` AS SELECT
 1 AS `proveedor`,
  1 AS `producto`,
  1 AS `precio`,
  1 AS `cantidad` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vista_resumen_productos`
--

DROP TABLE IF EXISTS `vista_resumen_productos`;
/*!50001 DROP VIEW IF EXISTS `vista_resumen_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vista_resumen_productos` AS SELECT
 1 AS `articulo`,
  1 AS `precio_minimo`,
  1 AS `precio_maximo`,
  1 AS `precio_promedio` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_full_join_proveedores2_productos2`
--

/*!50001 DROP VIEW IF EXISTS `view_full_join_proveedores2_productos2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_full_join_proveedores2_productos2` AS select `proveedores2`.`nombre` AS `proveedor`,`productos2`.`nombre` AS `producto`,`productos2`.`precio` AS `precio`,`productos2`.`cantidad` AS `existencia` from (`productos2` left join `proveedores2` on(`proveedores2`.`id` = `productos2`.`proveedor_id`)) union select `proveedores2`.`nombre` AS `proveedor`,`productos2`.`nombre` AS `producto`,`productos2`.`precio` AS `precio`,`productos2`.`cantidad` AS `existencia` from (`productos2` left join `proveedores2` on(`proveedores2`.`id` = `productos2`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_inner_join_proveedores2_productos2`
--

/*!50001 DROP VIEW IF EXISTS `view_inner_join_proveedores2_productos2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_inner_join_proveedores2_productos2` AS select `proveedores2`.`nombre` AS `proveedor`,`productos2`.`nombre` AS `producto`,`productos2`.`precio` AS `precio`,`productos2`.`cantidad` AS `existencia` from (`proveedores2` join `productos2` on(`proveedores2`.`id` = `productos2`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_left_join_proveedores2_productos2`
--

/*!50001 DROP VIEW IF EXISTS `view_left_join_proveedores2_productos2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_left_join_proveedores2_productos2` AS select `proveedores2`.`nombre` AS `proveedor`,`productos2`.`nombre` AS `producto`,`productos2`.`precio` AS `precio`,`productos2`.`cantidad` AS `existencia` from (`proveedores2` left join `productos2` on(`proveedores2`.`id` = `productos2`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_right_join_proveedores2_productos2`
--

/*!50001 DROP VIEW IF EXISTS `view_right_join_proveedores2_productos2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_right_join_proveedores2_productos2` AS select `proveedores2`.`nombre` AS `proveedor`,`productos2`.`nombre` AS `producto`,`productos2`.`precio` AS `precio`,`productos2`.`cantidad` AS `existencia` from (`productos2` left join `proveedores2` on(`proveedores2`.`id` = `productos2`.`proveedor_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_proveedores_productos`
--

/*!50001 DROP VIEW IF EXISTS `vista_proveedores_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_proveedores_productos` AS select `a`.`nombre` AS `proveedor`,`b`.`nombre` AS `producto`,`b`.`precio` AS `precio`,`b`.`cantidad` AS `cantidad` from (`proveedores` `a` join `productos` `b`) where `a`.`id` = `b`.`proveedor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vista_resumen_productos`
--

/*!50001 DROP VIEW IF EXISTS `vista_resumen_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vista_resumen_productos` AS select `vista_proveedores_productos`.`producto` AS `articulo`,min(`vista_proveedores_productos`.`precio`) AS `precio_minimo`,max(`vista_proveedores_productos`.`precio`) AS `precio_maximo`,round(avg(`vista_proveedores_productos`.`precio`),2) AS `precio_promedio` from `vista_proveedores_productos` group by `vista_proveedores_productos`.`producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-20 11:45:08
