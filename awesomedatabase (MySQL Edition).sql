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
  `reg_number` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `color` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `carcase` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `passenger` int(11) NOT NULL,
  `comfort_rate` int(11) NOT NULL,
  `baby_sit` int(11) NOT NULL,
  `wide_trunk` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cars`
--

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;
INSERT INTO `cars` VALUES (1,'P235OK77','Volkswagen Polo','Белый','Седан',5,2,1,0),(2,'A673HC99','Hyundai Solaris','Серый','Седан',5,2,1,0),(3,'B723TO197','Kia Rio','Синий','Седан',5,2,0,0),(4,'C568KM777','Renault Logan','Серебристый','Седан',5,2,0,0),(5,'T725AC97','Chevrolet Lacetti','Белый','Универсал',5,2,1,1),(6,'X435HC199','Lada Granta','Черный','Седан',5,1,0,0),(7,'H124EE97','Ford S-Max','Желтый','Минивэн',7,3,1,1),(8,'T323AT199','Nissan Teana','Черный','Седан',5,4,0,0),(9,'K555MP77','Mercedes-Benz S-Class','Черный','Седан',5,5,0,0),(10,'A671AB77','Chevrolet Cruze','Желтый','Универсал',5,2,1,1),(11,'H809TH77','Volkswagen Caravelle','Серебристый','Минивэн',8,3,1,1),(12,'P325YC177','Lada Vesta','Серебристый','Седан',5,2,1,0);
/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `first_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `father_name` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `available` int(1) NOT NULL,
  `working_time` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (1,'Киселёв','Егор','Олегович',19,1,1,8,1,1),(2,'Зубов','Виктор','Михайлович',65,33,1,8,2,2),(3,'Лебедев','Андрей','Андреевич',28,7,1,8,3,3),(4,'Евсеев','Никита','Алексеевич',31,6,1,8,4,4),(5,'Яковлев','Юрий','Вениаминович',57,28,1,8,5,5),(6,'Щербаков','Игорь','Евгеньевич',26,3,1,8,6,6),(7,'Гаврилов','Иван','Александрович',36,15,1,8,7,7),(8,'Лихачёв','Никита','Валерьевич',20,2,1,8,8,8),(9,'Фомин','Николай','Сергеевич',44,19,1,8,9,9),(10,'Веселов','Дмитрий','Артемьевич',25,6,1,8,10,10),(11,'Поляков','Владимир','Васильевич',34,6,1,8,11,11),(12,'Молчанов','Антон','Кириллович',30,11,1,8,12,12);
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `adress` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Мытищи-Сити'),(2,'Вече МИЭМа'),(3,'БК'),(4,'Платформа Молодёжка'),(5,'Дубки-Таун'),(6,'Шаурма-Плейс'),(7,'Кафе \"Варяги\"'),(8,'ЖЭК'),(9,'Славянский Бульвар'),(10,'ЮСБ-Порт'),(11,'Кинотеатр \"Греки\"'),(12,'Рублинштейна, 24'),(13,'Частная клиника \"Палата №6\"'),(14,'Кладбище \"Светлый путь\"'),(15,'Шаверма-Пойнт');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `created` datetime NOT NULL,
  `start_id` int(11) NOT NULL,
  `finish_id` int(11) NOT NULL,
  `DATE_TIME` time NOT NULL,
  `comfort_rate` int(1) NOT NULL,
  `passengers` int(1) NOT NULL,
  `wide_trunk` int(1) NOT NULL,
  `baby_seat` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2017-03-08 04:34:36',12,2,'02:00:00',1,1,1,0),(2,'2017-03-08 04:54:15',3,2,'13:40:00',1,5,1,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-08  5:04:51
