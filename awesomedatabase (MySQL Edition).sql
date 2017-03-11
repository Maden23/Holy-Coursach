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
-- Table structure for table `edges`
--

DROP TABLE IF EXISTS `edges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edges` (
  `id_edge` int(11) NOT NULL AUTO_INCREMENT,
  `first_node` int(11) NOT NULL,
  `second_node` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  PRIMARY KEY (`id_edge`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edges`
--

LOCK TABLES `edges` WRITE;
/*!40000 ALTER TABLE `edges` DISABLE KEYS */;
INSERT INTO `edges` VALUES (1,2,3,1),(2,3,4,1),(3,52,3,1),(4,52,4,1),(5,4,5,1),(6,6,7,1),(7,7,8,1),(8,8,9,1),(9,9,5,1),(10,6,2,1),(11,8,3,1),(12,9,4,1),(13,10,6,1),(14,10,11,1),(15,11,8,1),(16,11,12,1),(17,12,9,1),(18,12,66,1),(19,66,5,1),(20,5,57,1),(21,66,57,1),(22,64,65,1),(23,64,10,1),(24,65,12,1),(25,65,57,1),(26,5,55,1),(27,57,55,1),(28,5,48,1),(29,48,55,1),(30,5,49,1),(31,49,48,1),(32,13,14,1),(33,14,15,1),(34,14,64,1),(35,15,65,1),(36,15,16,1),(37,16,17,1),(38,17,58,1),(39,16,58,1),(40,58,57,1),(41,58,59,1),(42,59,18,1),(43,18,19,1),(44,19,20,1),(45,20,21,1),(46,14,21,1),(47,59,61,1),(48,61,26,1),(49,26,22,1),(50,22,20,1),(51,26,27,1),(52,22,27,1),(53,22,23,1),(54,27,23,1),(55,23,24,1),(56,24,25,1),(57,21,25,1),(58,27,28,1),(59,28,29,1),(60,25,29,1),(61,61,30,1),(62,30,26,1),(63,30,31,1),(64,31,32,1),(65,32,35,1),(66,29,35,1),(67,35,34,1),(68,34,33,1),(69,31,33,1),(70,35,39,1),(71,39,38,1),(72,38,37,1),(73,37,36,1),(74,36,62,1),(75,61,62,1),(76,62,40,1),(77,62,63,1),(78,63,40,1),(79,40,41,1),(80,41,42,1),(81,42,43,1),(82,39,43,1),(83,63,44,1),(84,44,45,1),(85,40,45,1),(86,45,41,1),(87,45,46,1),(88,46,42,1),(89,46,47,1),(90,43,47,1),(91,49,50,1),(92,50,47,1),(93,47,2,1),(94,54,2,1),(95,54,47,1),(96,54,53,1),(97,53,51,1),(98,51,4,1),(99,55,56,1),(100,55,63,1),(101,48,63,1),(102,57,60,1),(103,60,56,1),(104,56,63,1),(105,57,1,1),(106,60,1,1),(107,56,1,1),(108,63,1,1),(109,62,1,1),(110,61,1,1),(111,59,1,1),(112,58,1,1);
/*!40000 ALTER TABLE `edges` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Кремль'),(2,'Медведково'),(3,'Свиблово'),(4,'ВДНХ'),(5,'Проспект Мира'),(6,'Алтуфьево'),(7,'Бибирево'),(8,'Отрадное'),(9,'Тимирязевский'),(10,'Речной вокзал'),(11,'Войковский'),(12,'Сокол'),(13,'Митино'),(14,'Строгино'),(15,'Кунцево'),(16,'Фили'),(17,'Москва-Сити'),(18,'Парк Горького'),(19,'Стадион Лужники'),(20,'МГУ'),(21,'Тропарево'),(22,'Новые Черемушки'),(23,'Коньково'),(24,'Ясенево'),(25,'Битцевский парк'),(26,'Нагорный'),(27,'Чертаново'),(28,'Бирюлово'),(29,'Бутово'),(30,'Нагатино'),(31,'Коломенское'),(32,'Царицыно'),(33,'Печатники'),(34,'Люблино'),(35,'Марьино'),(36,'Текстильщики'),(37,'Кузьминки'),(38,'Выхино'),(39,'Жулебино'),(40,'Шоссе Энтузиастов'),(41,'Перово'),(42,'Новогирево'),(43,'Новокосино'),(44,'Бауманский'),(45,'Измайлово'),(46,'Первомайский'),(47,'Щелковский'),(48,'Площадь трех вокзалов'),(49,'Сокольники'),(50,'Черкизовский'),(51,'Ростокино'),(52,'Ботанический сад'),(53,'Ярославский'),(54,'Мытищи'),(55,'Чистые пруды'),(56,'Лубянка'),(57,'Тверская улица'),(58,'Арбат'),(59,'Храм Христа Спасителя'),(60,'Большой театр'),(61,'Павелецкий вокзал'),(62,'Таганская улица'),(63,'Курский вокзал');
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

-- Dump completed on 2017-03-11 16:11:55
