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
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `available` int(1) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Киселёв Егор Олегович',19,1,1,1,1),(2,'Зубов Виктор Михайлович',65,33,1,2,2),(3,'Лебедев Андрей Андреевич',28,7,1,3,3),(4,'Евсеев Никита Алексеевич',31,6,1,4,4),(5,'Яковлев Юрий Вениаминович',57,28,1,5,5),(6,'Щербаков Игорь Евгеньевич',26,3,1,6,6),(7,'Гаврилов Иван Александрович',36,15,1,7,7),(8,'Лихачёв Никита Валерьевич',20,2,1,8,8),(9,'Фомин Николай Сергеевич',44,19,1,9,9),(10,'Веселов Дмитрий Артемьевич',25,6,1,10,10),(11,'Поляков Владимир Васильевич',34,6,1,11,11),(12,'Молчанов Антон Кириллович',30,11,1,12,12),(13,'Царицын Владислав Семёнович',25,4,1,13,13),(14,'Суворов Артём Афанасьевич',31,9,1,14,14),(15,'Болотников Сергей Андреевич',44,23,1,15,15),(16,'Никитин Валерий Александрович',22,2,1,16,16),(17,'Котов Иван Антонович',26,5,1,17,17),(18,'Миронов Алексей Кириллович',34,8,1,18,18),(19,'Петухов Алексей Петрович',29,3,1,19,19),(20,'Аветисян Гагик Арменович',20,1,1,20,20),(21,'Кравченко Павел Андреевич',21,2,1,21,21),(22,'Сновский Александр Юрьевич',22,3,1,22,22),(23,'Михайлов Павел Сергеевич',20,1,1,23,23),(24,'Мухаммедов Саид Музафарович',33,12,1,24,24),(25,'Кикабидзе Вахтанг Зурабович',45,20,1,25,25);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
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
