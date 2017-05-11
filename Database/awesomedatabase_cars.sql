-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: awesomedatabase
-- ------------------------------------------------------
-- Server version	5.6.35-log

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
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_number` varchar(9) DEFAULT NULL,
  `model` varchar(25) DEFAULT NULL,
  `color` varchar(12) DEFAULT NULL,
  `carcase` varchar(10) DEFAULT NULL,
  `passenger` int(11) NOT NULL,
  `comfort_rate` int(11) NOT NULL,
  `baby_seat` int(11) DEFAULT NULL,
  `wide_trunk` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'P235OK77','Volkswagen Polo','Белый','Седан',4,2,1,0),(2,'A673HC99','Hyundai Solaris','Серый','Седан',4,2,1,0),(3,'B723TO197','Kia Rio','Синий','Седан',4,2,0,0),(4,'C568KM777','Renault Logan','Серебристый','Седан',4,2,0,0),(5,'T725AC97','Chevrolet Lacetti','Белый','Универсал',4,2,1,1),(6,'X435HC199','Lada Granta','Черный','Седан',4,1,0,0),(7,'H124EE97','Ford S-Max','Желтый','Минивэн',7,3,2,1),(8,'T323AT199','Nissan Teana','Черный','Седан',4,4,0,0),(9,'K555MP77','Mercedes-Benz S-Class','Черный','Седан',4,5,0,0),(10,'A671AB77','Chevrolet Cruze','Желтый','Универсал',4,2,1,1),(11,'H809TH77','Volkswagen Caravelle','Серебристый','Минивэн',8,3,2,1),(12,'P325YC177','Lada Vesta','Серебристый','Седан',4,2,1,0),(13,'A234HB197','Volga 3110','Жёлтый','Универсал',6,1,2,1),(14,'C674KK99','Volga 3110','Жёлтый','Седан',4,1,0,1),(15,'B879EA77','Lada 2115','Синий','Седан',4,1,1,0),(16,'T345TO77','Lada Priora','Чёрный','Седан',4,1,0,0),(17,'O444PP97','Hyndai Solaris','Жёлтый','Седан',4,2,1,0),(18,'E789OO99','Hyndai Solaris','Жёлтый','Седан',4,2,0,0),(19,'T675YE99','Kia Rio','Синий','Седан',4,2,1,0),(20,'E454ET97','Kia Rio','Жёлтый','Седан',4,2,0,0),(21,'K767KT177','Renault Fluence','Черный','Седан',4,3,0,0),(22,'O546PY199','Skoda Octavia','Жёлтый','Седан',4,2,1,0),(23,'H768HT777','Skoda Superb','Чёрный','Седан',4,3,0,0),(24,'K634PO777','Audi A4','Красный','Седан',4,4,1,0),(25,'E888EE777','Infiniti Q50','Синий','Седан',4,5,1,1);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-11 22:28:59
