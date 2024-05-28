-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spa_los_robles
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idcliente` int NOT NULL AUTO_INCREMENT,
  `nombreyapellido` varchar(100) DEFAULT 'a_confirmar',
  `dni` varchar(8) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `idspa` int DEFAULT '1',
  PRIMARY KEY (`idcliente`),
  UNIQUE KEY `dni` (`dni`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='almacena informacion sobre clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Franklin Shoulder','71080193','fshoulder0@twitpic.com','3908630312',1),(2,'Piotr Jendrach','30833498','pjendrach1@diigo.com','6852900398',1),(3,'Elston Jakoubec','15883339','ejakoubec2@harvard.edu','5535325422',1),(4,'Mile Bockett','19958063','mbockett3@cafepress.com','2666179532',1),(5,'Aurilia Tawn','91741011','atawn4@moonfruit.com','6151147219',1),(6,'Gawain Trusler','51496421','gtrusler5@rakuten.co.jp','9562201635',1),(7,'Judie Yaus','39138445','jyaus6@google.nl','0982122500',1),(8,'Giacinta Camock','75708678','gcamock7@prnewswire.com','4967142834',1),(9,'Berte Viste','43707576','bviste8@canalblog.com','7240299155',1),(10,'Nicki Rappa','31437997','nrappa9@cnet.com','1419100300',1),(11,'Linoel Ellson','15912456','lellsona@edublogs.org','9231905260',1),(12,'Alex Gulley','04904106','agulleyb@google.es','1947114832',1),(13,'Obidiah Pinilla','46542370','opinillac@rakuten.co.jp','1097323188',1),(14,'Cyrillus Greenaway','56881364','cgreenawayd@360.cn','8960700665',1),(15,'Ramon McCall','39551950','rmccalle@dell.com','8524591188',1),(16,'Blair Helstrom','60420613','bhelstromf@youtube.com','3972516797',1),(17,'Rodrigo McIlwain','88091802','rmcilwaing@hao123.com','1110392672',1),(18,'Karly Vasyukhnov','11758629','kvasyukhnovh@goo.gl','8770975930',1),(19,'Christy Mottinelli','92027215','cmottinellii@weibo.com','9838948632',1),(20,'Jillana Kedie','35593050','jkediej@moonfruit.com','8184387814',1),(21,'Kary Monery','90867955','kmoneryk@google.com.hk','5618375605',1),(22,'Frants Fidelus','51137324','ffidelusl@java.com','3386125093',1),(23,'Monro Colston','48962573','mcolstonm@timesonline.co.uk','3163767923',1),(24,'Pepi Marthen','90447517','pmarthenn@blogtalkradio.com','6673934581',1),(25,'Lissie Aird','10104360','lairdo@goo.gl','6588110847',1),(26,'Collette Cano','91383006','ccanop@microsoft.com','2446027121',1),(27,'Bette-ann Kingcote','22384963','bkingcoteq@twitpic.com','9444792250',1),(28,'Teador Culy','73078834','tculyr@behance.net','0933153015',1),(29,'Karil Luetkemeyers','88559571','kluetkemeyerss@cdc.gov','8137249125',1),(30,'Clementia Costar','02972280','ccostart@twitpic.com','3534004353',1),(31,'Les Balch','24165084','lbalchu@paginegialle.it','4815380074',1),(32,'Korrie Neller','58420034','knellerv@state.tx.us','0861879511',1),(33,'Ulick Durn','17780596','udurnw@rediff.com','0001169874',1),(34,'Enoch Jamme','28302055','ejammex@php.net','6068398021',1),(35,'Coral Pow','67461500','cpowy@whitehouse.gov','9181444028',1),(36,'Madel Manolov','08958522','mmanolovz@rambler.ru','6711974204',1),(37,'Garrett Threadgill','38442824','gthreadgill10@kickstarter.com','5063557872',1),(38,'Colby Kunes','22995930','ckunes11@umn.edu','8796129018',1),(39,'Hugo Parkman','18899054','hparkman12@dell.com','1644071649',1),(40,'Remus Turpin','47991229','rturpin13@about.me','7702917059',1),(41,'Modestia Fozzard','47290914','mfozzard14@squidoo.com','3039561618',1),(42,'Dell Grimes','79443839','dgrimes15@aboutads.info','9208023141',1),(43,'Danyelle Cornbill','98182832','dcornbill16@berkeley.edu','5042015043',1),(44,'Gordan Winsom','05014708','gwinsom17@sakura.ne.jp','3431899161',1),(45,'Arie Twort','18747650','atwort18@weebly.com','5796230816',1),(46,'Vasilis McNeish','70673042','vmcneish19@ftc.gov','9659525400',1),(47,'Shane Commins','45629080','scommins1a@ftc.gov','1170374743',1),(48,'Keary Carnilian','71855115','kcarnilian1b@printfriendly.com','9416822876',1),(49,'Ynes Dreinan','89151728','ydreinan1c@twitter.com','1876183268',1),(50,'Quill Sollime','09020822','qsollime1d@tinyurl.com','1293788678',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleado` (
  `idempleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `cuil` varchar(11) NOT NULL,
  `fechacontratacion` datetime DEFAULT NULL,
  `idspa` int DEFAULT '1',
  PRIMARY KEY (`idempleado`),
  UNIQUE KEY `correo` (`correo`),
  KEY `FK_EMPLEADO_CLIENTE` (`idspa`),
  CONSTRAINT `FK_EMPLEADO_CLIENTE` FOREIGN KEY (`idspa`) REFERENCES `spa` (`idspa`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='almacena informacion sobre los empleados';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (1,'Hall Seally','hseally0@wikipedia.org','7746700586','0099 Harper Junction','77372564200','2024-02-21 10:47:33',1),(2,'Stella Chatburn','schatburn1@prlog.org','0689276508','76316 Karstens Park','87865032280','2023-12-06 06:53:09',1),(3,'Galvan Roxbee','groxbee2@google.co.uk','4130979701','785 Ludington Drive','65133123578','2024-01-29 13:18:35',1),(4,'Gwenora Scorrer','gscorrer3@friendfeed.com','8614634056','58394 Bonner Hill','20131077266','2023-12-09 21:53:10',1),(5,'Deerdre Cheverell','dcheverell4@auda.org.au','6739311137','8347 Northland Crossing','06803005287','2023-11-30 02:28:35',1),(6,'Alfredo Di Francesco','adi5@umich.edu','6156910263','2608 Evergreen Lane','37792187468','2024-01-09 07:52:49',1),(7,'Siegfried Bellis','sbellis6@shinystat.com','1175207551','31 Oriole Circle','14980665691','2023-11-29 23:45:35',1),(8,'Padraig Cuxon','pcuxon7@springer.com','0150093470','916 Sunbrook Terrace','35960132505','2024-01-07 11:33:29',1),(9,'Aurilia Rozenzweig','arozenzweig8@tinyurl.com','5054815643','2 Anhalt Alley','22856699437','2024-02-14 14:13:14',1),(10,'Bennett Mathelon','bmathelon9@taobao.com','9623442556','61409 Merrick Place','98711508332','2024-01-30 05:37:04',1),(11,'Kurtis Paeckmeyer','kpaeckmeyera@flavors.me','9754894728','6 Carioca Parkway','32276032460','2023-12-10 01:20:25',1),(12,'Sax Joist','sjoistb@hostgator.com','1295956934','42 Dayton Place','91236287409','2024-01-05 10:09:04',1),(13,'Charles Criag','ccriagc@twitter.com','8606633208','6191 Erie Circle','50034754155','2023-12-14 06:46:40',1),(14,'Nomi Mustoe','nmustoed@is.gd','8314641200','254 Basil Road','87264723642','2023-12-22 11:45:40',1),(15,'Eimile Whitloe','ewhitloee@devhub.com','5071836912','1 Troy Circle','28353746895','2024-02-07 10:06:23',1);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habitacion`
--

DROP TABLE IF EXISTS `habitacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habitacion` (
  `idhabitacion` int NOT NULL AUTO_INCREMENT,
  `numerohabitacion` int NOT NULL,
  `tipohabitacion` varchar(50) NOT NULL,
  `preciohabitacion` decimal(10,2) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `idspa` int DEFAULT '1',
  PRIMARY KEY (`idhabitacion`),
  KEY `FK_SPA_HABITACION` (`idspa`),
  CONSTRAINT `FK_SPA_HABITACION` FOREIGN KEY (`idspa`) REFERENCES `spa` (`idspa`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='almacena informacion sobre la habitacion y disponibilidad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habitacion`
--

LOCK TABLES `habitacion` WRITE;
/*!40000 ALTER TABLE `habitacion` DISABLE KEYS */;
INSERT INTO `habitacion` VALUES (1,1,'TRIPLE',200.00,0,1),(2,2,'DOBLE',160.00,1,1),(3,3,'TRIPLE',200.00,1,1),(4,4,'TRIPLE',200.00,0,1),(5,5,'DOBLE',250.00,0,1),(6,6,'TRIPLE',200.00,0,1),(7,7,'DOBLE',150.00,1,1),(8,8,'TRIPLE',200.00,0,1),(9,9,'DOBLE',150.00,1,1),(10,10,'TRIPLE',200.00,0,1),(11,11,'TRIPLE',200.00,0,1),(12,12,'TRIPLE',200.00,1,1),(13,13,'DOBLE',150.00,0,1),(14,14,'DOBLE',150.00,1,1),(15,15,'TRIPLE',200.00,1,1),(16,16,'TRIPLE',200.00,0,1),(17,17,'DOBLE',150.00,1,1),(18,18,'TRIPLE',200.00,1,1),(19,19,'DOBLE',200.00,1,1),(20,20,'TRIPLE',250.00,1,1),(21,21,'DOBLE',200.00,1,1),(22,22,'TRIPLE',250.00,1,1),(23,23,'TRIPLE',250.00,1,1),(24,24,'DOBLE',200.00,1,1),(25,25,'TRIPLE',250.00,0,1),(26,26,'TRIPLE',250.00,1,1),(27,27,'TRIPLE',250.00,1,1),(28,28,'TRIPLE',250.00,0,1),(29,29,'DOBLE',200.00,0,1),(30,30,'DOBLE',200.00,0,1);
/*!40000 ALTER TABLE `habitacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `verifica_disponibilidad` BEFORE INSERT ON `habitacion` FOR EACH ROW BEGIN 
DECLARE habitacion INT;
SELECT disponible INTO habitacion 
FROM habitacion
WHERE idhabitacion = NEW.idhabitacion;
IF disponible = O THEN 
SIGNAL SQLSTATE "45000"
SET MESSAGE_TEXT = "LA HABITACION SELECCIONADA NO ESTA DISPONIBLE";
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `actualizar_disponibilidad` AFTER INSERT ON `habitacion` FOR EACH ROW BEGIN
UPDATE disponible
SET disponible = 0
WHERE idhabitacion = NEW.idhabitacion;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `idreserva` int NOT NULL AUTO_INCREMENT,
  `idcliente` int DEFAULT NULL,
  `idempleado` int DEFAULT NULL,
  `idhabitacion` int DEFAULT NULL,
  `fechaentrada` datetime NOT NULL,
  `fechasalida` datetime NOT NULL,
  `cancelacion` datetime DEFAULT NULL,
  `formadepago` varchar(50) DEFAULT 'EFECTIVO',
  `idspa` int DEFAULT '1',
  PRIMARY KEY (`idreserva`),
  KEY `FK_RESERVA_CLIENTE` (`idcliente`),
  KEY `FK_RESERVA_HABITACION` (`idhabitacion`),
  KEY `FK_RESERVA_EMPLEADO` (`idempleado`),
  CONSTRAINT `FK_RESERVA_CLIENTE` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `FK_RESERVA_EMPLEADO` FOREIGN KEY (`idempleado`) REFERENCES `empleado` (`idempleado`),
  CONSTRAINT `FK_RESERVA_HABITACION` FOREIGN KEY (`idhabitacion`) REFERENCES `habitacion` (`idhabitacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='almacena informacion sobre las reservas en general';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spa`
--

DROP TABLE IF EXISTS `spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spa` (
  `idspa` int NOT NULL DEFAULT '1',
  `direccion` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `TELEFONO` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idspa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='almacena informacion sobre el SPA';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spa`
--

LOCK TABLES `spa` WRITE;
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
INSERT INTO `spa` VALUES (1,'AVENIDA MITRE 2380','SPA_LOS_ROBLES@GMAIL.COM','1160459709');
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_count_reserva_2024`
--

DROP TABLE IF EXISTS `vw_count_reserva_2024`;
/*!50001 DROP VIEW IF EXISTS `vw_count_reserva_2024`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_count_reserva_2024` AS SELECT 
 1 AS `idhabitacion`,
 1 AS `idreserva`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_habitaciones_disponibles`
--

DROP TABLE IF EXISTS `vw_habitaciones_disponibles`;
/*!50001 DROP VIEW IF EXISTS `vw_habitaciones_disponibles`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_habitaciones_disponibles` AS SELECT 
 1 AS `Numero_habitacion`,
 1 AS `Disponibilidad`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_personal`
--

DROP TABLE IF EXISTS `vw_personal`;
/*!50001 DROP VIEW IF EXISTS `vw_personal`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_personal` AS SELECT 
 1 AS `ID_empleado`,
 1 AS `Nombre_Apellido`,
 1 AS `N_cuil`,
 1 AS `fecha_de_contratacion`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_reserva_cliente`
--

DROP TABLE IF EXISTS `vw_reserva_cliente`;
/*!50001 DROP VIEW IF EXISTS `vw_reserva_cliente`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_reserva_cliente` AS SELECT 
 1 AS `idreserva`,
 1 AS `idhabitacion`,
 1 AS `nombreyapellido`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'spa_los_robles'
--

--
-- Dumping routines for database 'spa_los_robles'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_precio_final_habitacion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_precio_final_habitacion`(
	preciohabitacion DECIMAL (10,2)
    , fechaentrada DATE 
    , fechasalida DATE
    , formadepago VARCHAR (20)) RETURNS decimal(10,2)
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'ESTA FUNCION ME RETORNA EL PRECIO FINAL DE LA HABITACION'
BEGIN
DECLARE preciofinal DECIMAL (10,2);
DECLARE diasreserva INT ;
SET diasreserva = DATEDIFF(fechasalida, fechaentrada);
SET preciofinal = preciohabitacion * diasreserva ;

IF diasreserva <= 0 THEN
	SIGNAL SQLSTATE '45000'
	SET MESSAGE_TEXT = 'Error: La fecha de salida debe ser posterior a la fecha de entrada.';

ELSEIF formadepago = "Efectivo_o_Transferencia" THEN
	SET preciofinal = preciofinal * 0.90 ; -- descuento del 10 % --
ELSEIF formadepago = "Tarjeta_credito" THEN
	SET preciofinal = preciofinal * 1.35 ; -- recargo del 35%-- 
END IF; 
RETURN preciofinal; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_empleados_vacaciones_antiguedad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_empleados_vacaciones_antiguedad`(fechacontratacion date) RETURNS int
    READS SQL DATA
    DETERMINISTIC
    COMMENT 'ESTA FUNCION ME RETORNA LOS DIAS DE VACACIONES DE LOS EMPLEADOS'
BEGIN
	DECLARE DIAS_VACACIONES INT;
    DECLARE ANTIGUEDAD INT;
    SET ANTIGUEDAD = timestampdiff(year,fechacontratacion,CURDATE());

IF ANTIGUEDAD <= 5 THEN SET DIAS_VACACIONES = 14;
	ELSEIF ANTIGUEDAD between 5 and 10 THEN SET DIAS_VACACIONES = 21 ; 
	ELSEIF ANTIGUEDAD between 10 and 20 THEN SET DIAS_VACACIONES = 28;
	ELSEIF ANTIGUEDAD > 20 THEN SET DIAS_VACACIONES = 35;
    else set ANTIGUEDAD = 0 ;
END IF;
return dias_vacaciones ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_gestionarReserva` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_gestionarReserva`(
IN idcliente INT,
IN idhabitacion INT,
IN fechaentrada DATE,
IN fechasalida DATE
)
BEGIN
DECLARE disponible INT; 
-- verificar si la habitacion esta disponible para hacer la reserva las fechas seleccionadas --
SELECT COUNT(*) INTO disponible
FROM habitacion
WHERE idhabitacion = idhabitacion
AND ((fechaentrada BETWEEN fechaentrada AND fechasalida)
OR (fechasalida BETWEEN fechaentrada AND fechasalida));
-- si la habitacion esta disponible realiza la reserva -- 
IF disponible = 0 THEN
INSERT INTO reserva (idcliente, idhabitacion, fechaentrada, fechasalida)
VALUES (idcliente, idhabitacion, fechaentrada, fechasalida); 
SELECT  "RESERVA REALIZADA CORRECTAMENTE" ;
ELSE 
SIGNAL SQLSTATE "45000" 
SET message_text = "LO SENTIMOS,LA HABITACION NO ESTA DISPONIBLE";
END IF; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_count_reserva_2024`
--

/*!50001 DROP VIEW IF EXISTS `vw_count_reserva_2024`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_count_reserva_2024` AS select `reserva`.`idhabitacion` AS `idhabitacion`,count(1) AS `idreserva` from `reserva` where (`reserva`.`fechaentrada` between '2024-01-01' and '2024-12-31') group by `reserva`.`idhabitacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_habitaciones_disponibles`
--

/*!50001 DROP VIEW IF EXISTS `vw_habitaciones_disponibles`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_habitaciones_disponibles` AS select `habitacion`.`idhabitacion` AS `Numero_habitacion`,(case when (`habitacion`.`disponible` = 1) then 'Disponible' else 'No_Disponible' end) AS `Disponibilidad` from `habitacion` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_personal`
--

/*!50001 DROP VIEW IF EXISTS `vw_personal`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_personal` AS select `empleado`.`idempleado` AS `ID_empleado`,`empleado`.`nombre` AS `Nombre_Apellido`,`empleado`.`cuil` AS `N_cuil`,`empleado`.`fechacontratacion` AS `fecha_de_contratacion` from `empleado` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_reserva_cliente`
--

/*!50001 DROP VIEW IF EXISTS `vw_reserva_cliente`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reserva_cliente` AS select `reserva`.`idreserva` AS `idreserva`,`reserva`.`idhabitacion` AS `idhabitacion`,`cliente`.`nombreyapellido` AS `nombreyapellido` from (`reserva` join `cliente` on((`reserva`.`idcliente` = `cliente`.`idcliente`))) */;
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

-- Dump completed on 2024-05-28 19:34:18
