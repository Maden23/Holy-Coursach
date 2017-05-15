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
  `passengers` int(11) DEFAULT NULL,
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
INSERT INTO `drivers` VALUES (1,'Киселёв Егор Олегович',19,1,1,1,1),(2,'Зубов Виктор Михайлович',65,33,0,2,2),(3,'Лебедев Андрей Андреевич',28,7,1,3,60),(4,'Евсеев Никита Алексеевич',31,6,1,4,7),(5,'Яковлев Юрий Вениаминович',57,28,1,5,5),(6,'Щербаков Игорь Евгеньевич',26,3,1,6,6),(7,'Гаврилов Иван Александрович',36,15,0,7,90),(8,'Лихачёв Никита Валерьевич',20,2,1,8,8),(9,'Фомин Николай Сергеевич',44,19,1,9,9),(10,'Веселов Дмитрий Артемьевич',25,6,0,10,52),(11,'Поляков Владимир Васильевич',34,6,0,11,11),(12,'Молчанов Антон Кириллович',30,11,1,12,12),(13,'Царицын Владислав Семёнович',25,4,0,13,13),(14,'Суворов Артём Афанасьевич',31,9,1,14,14),(15,'Болотников Сергей Андреевич',44,23,1,15,15),(16,'Никитин Валерий Александрович',22,2,1,16,16),(17,'Котов Иван Антонович',26,5,1,17,52),(18,'Миронов Алексей Кириллович',34,8,1,18,18),(19,'Петухов Алексей Петрович',29,3,1,19,19),(20,'Аветисян Гагик Арменович',20,1,1,20,20),(21,'Кравченко Павел Андреевич',21,2,1,21,21),(22,'Сновский Александр Юрьевич',22,3,1,22,93),(23,'Михайлов Павел Сергеевич',20,1,1,23,23),(24,'Мухаммедов Саид Музафарович',33,12,1,24,24),(25,'Кикабидзе Вахтанг Зурабович',45,20,1,25,25);
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edges`
--

LOCK TABLES `edges` WRITE;
/*!40000 ALTER TABLE `edges` DISABLE KEYS */;
INSERT INTO `edges` VALUES (1,2,3,8),(2,3,4,9),(3,52,3,5),(4,52,4,5),(5,4,5,7),(6,6,7,3),(7,7,8,6),(8,8,9,10),(9,14,77,3),(10,6,2,9),(11,8,3,11),(12,9,4,20),(13,10,6,15),(14,10,11,7),(15,11,8,16),(16,11,12,2),(17,66,9,8),(18,12,66,3),(19,66,5,9),(20,76,13,5),(22,64,65,10),(23,64,10,15),(24,65,12,4),(25,65,11,5),(26,5,55,8),(27,57,55,8),(28,5,48,5),(29,48,55,7),(30,5,49,9),(31,49,48,8),(35,15,65,20),(36,15,16,13),(37,16,17,10),(38,17,58,12),(40,58,57,6),(41,58,59,7),(42,59,18,10),(43,18,19,14),(44,19,20,13),(45,20,21,18),(47,59,61,12),(49,26,22,12),(50,22,20,11),(51,26,27,11),(53,22,23,10),(54,27,23,15),(55,23,24,7),(56,24,25,4),(57,21,24,15),(58,27,28,17),(59,50,45,4),(61,61,30,14),(62,30,26,6),(63,30,31,9),(64,31,32,12),(65,32,35,18),(67,35,34,9),(68,34,33,12),(69,31,33,16),(72,38,37,13),(73,37,36,7),(74,36,62,12),(75,61,62,7),(76,62,40,14),(77,62,63,5),(78,50,46,5),(79,40,41,5),(80,41,42,4),(82,39,43,11),(83,63,44,8),(84,44,45,20),(85,40,45,11),(89,46,47,4),(91,49,50,12),(93,53,2,9),(94,3,51,3),(95,53,54,5),(97,53,51,10),(98,51,4,11),(99,55,56,5),(100,55,63,7),(101,48,63,8),(102,57,60,5),(103,60,56,8),(104,56,63,7),(105,57,1,11),(106,60,1,12),(107,56,1,10),(108,63,1,13),(109,62,1,13),(110,61,1,18),(111,59,1,12),(112,58,1,12),(113,67,68,3),(114,68,69,2),(115,69,70,5),(116,70,71,4),(117,71,72,4),(118,72,73,7),(119,73,74,4),(120,74,75,5),(121,75,100,2),(122,100,76,3),(123,76,77,3),(124,77,78,4),(125,78,79,4),(126,79,80,5),(127,80,81,3),(128,81,82,5),(129,82,83,6),(130,83,84,6),(131,84,85,7),(132,85,86,3),(133,86,87,4),(134,87,88,4),(135,88,89,6),(136,89,90,2),(137,90,91,5),(138,91,92,7),(139,92,93,10),(140,93,94,5),(141,94,95,4),(142,95,96,7),(143,96,97,6),(144,97,98,7),(145,98,99,2),(146,99,67,12),(147,2,69,2),(148,6,71,2),(149,10,74,5),(150,64,100,6),(151,65,76,6),(152,14,78,3),(153,21,84,3),(154,25,87,2),(155,28,88,5),(156,88,29,6),(157,90,32,9),(158,92,35,7),(159,94,37,8),(160,38,95,2),(161,95,39,2),(162,42,96,3),(163,96,43,2),(164,97,41,6),(165,98,47,2),(166,16,81,10),(167,14,15,4),(168,57,66,4),(169,16,20,5),(170,66,17,6),(171,17,19,5),(172,19,30,7),(173,33,36,4),(174,36,40,6),(175,42,38,5),(176,32,28,4);
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
  `adress` varchar(22) DEFAULT NULL,
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Кремль',262,269),(2,'Медведково',295,108),(3,'Свиблово',287,145),(4,'ВДНХ',280,174),(5,'Проспект Мира',269,218),(6,'Алтуфьево',238,94),(7,'Бибирево',237,115),(8,'Отрадное',236,134),(9,'Тимирязевский',232,175),(10,'Речной вокзал',162,145),(11,'Войковский',175,177),(12,'Сокол',187,202),(13,'Митино',93,151),(14,'Строгино',123,204),(15,'Кунцево',145,209),(16,'Фили',183,269),(17,'Москва-Сити',213,260),(18,'Парк Горького',251,290),(19,'Стадион Лужники',220,303),(20,'МГУ',197,327),(21,'Тропарево',169,387),(22,'Новые Черемушки',222,352),(23,'Коньково',207,378),(24,'Ясенево',208,423),(25,'Битцевский парк',219,445),(26,'Нагорный',261,369),(27,'Чертаново',259,395),(28,'Бирюлёво',252,435),(29,'Южное Бутово',236,514),(30,'Нагатино',262,344),(31,'Коломенское',288,350),(32,'Царицыно',287,408),(33,'Печатники',335,339),(34,'Люблино',338,365),(35,'Марьино',342,390),(36,'Текстильщики',332,315),(37,'Кузьминки',354,320),(38,'Выхино',388,313),(39,'Жулебино',410,325),(40,'Шоссе Энтузиастов',346,259),(41,'Перово',370,251),(42,'Новогирево',387,276),(43,'Новокосино',418,273),(44,'Бауманский',292,233),(45,'Измайлово',344,228),(46,'Первомайский',366,199),(47,'Щелковский',390,195),(48,'Площадь трех вокзалов',278,247),(49,'Сокольники',314,217),(50,'Черкизовский',343,209),(51,'Ростокино',291,159),(52,'Ботанический сад',269,159),(53,'Ярославский',316,131),(54,'Мытищи',353,87),(55,'Чистые пруды',267,243),(56,'Лубянка',270,256),(57,'Тверская улица',245,245),(58,'Арбат',239,260),(59,'Храм Христа Спасителя',248,275),(60,'Большой театр',261,256),(61,'Павелецкий вокзал',278,284),(62,'Таганская улица',283,271),(63,'Курский вокзал',284,256),(64,'Тушино',149,150),(65,'Покровское-Стрешнево',148,186),(66,'Динамо',224,228),(67,'Ярославское шоссе',329,114),(68,'Перловка',313,101),(69,'Осташковское шоссе',294,98),(70,'Нагорное',266,94),(71,'Алтуфьевское шоссе',239,82),(72,'Дмитровское шоссе',210,86),(73,'Ховрино',170,108),(74,'Ленинградское шоссе',145,115),(75,'Путилково',119,132),(76,'Волоколамское шоссе',112,172),(77,'Мякинино',110,193),(78,'Новорижское шоссе',98,222),(79,'Рублёвское шоссе',95,253),(80,'Можайское шоссе',101,290),(81,'Минское шоссе',107,311),(82,'Сколково',124,338),(83,'Боровское шоссе',138,370),(84,'Киевское шоссе',155,398),(85,'Калужское шоссе',176,431),(86,'Бутовский лесопарк',188,447),(87,'Северное Бутово',216,459),(88,'Симферопольское шоссе',244,470),(89,'Булатниково',288,475),(90,'Трасса М4',303,471),(91,'Каширское шоссе',332,452),(92,'Бесединское шоссе',365,424),(93,'Котельники',403,377),(94,'Волгоградский проспект',400,344),(95,'Рязанское шоссе',400,318),(96,'Носовихинское шоссе',404,275),(97,'Горьковское шоссе',406,238),(98,'Щёлковское шоссе',401,194),(99,'Лосиный остров',400,181),(100,'Братцево',112,150);
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
  `comfort_rate` int(1) NOT NULL,
  `passengers` int(1) NOT NULL,
  `wide_trunk` int(1) NOT NULL,
  `baby_seat` int(1) NOT NULL,
  `driver` int(11) DEFAULT NULL,
  `completed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2017-03-08 04:34:36',12,2,1,1,1,0,10,NULL),(2,'2017-03-08 04:54:15',3,2,1,5,1,0,3,NULL),(3,'2017-03-14 19:15:38',66,52,2,2,1,0,10,1),(4,'2017-03-14 23:09:43',44,15,1,1,0,0,4,1),(5,'2017-03-15 08:58:23',6,11,2,2,0,0,4,1),(6,'2017-03-15 11:46:37',7,7,1,1,0,0,4,1),(7,'2017-03-15 14:29:22',14,1,3,8,1,0,1,1),(8,'2017-03-15 15:27:21',14,60,4,1,0,1,3,1),(9,'2017-03-15 15:54:36',14,1,5,1,0,0,4,1),(10,'2017-04-12 16:04:15',6,7,3,1,0,0,7,1),(11,'2017-04-18 12:53:56',6,7,2,3,1,0,NULL,NULL),(12,'2017-04-18 12:54:03',6,7,2,3,1,0,4,1),(13,'2017-04-18 12:54:23',6,28,2,3,1,0,4,1),(14,'2017-04-18 12:54:34',58,28,2,3,1,0,4,NULL),(15,'2017-04-18 13:02:47',28,26,1,1,0,0,NULL,NULL),(16,'2017-04-18 13:04:02',7,66,1,1,0,0,4,NULL),(17,'2017-04-18 13:09:01',60,63,1,1,0,0,NULL,NULL),(18,'2017-04-18 13:10:29',25,34,1,1,0,0,4,NULL),(19,'2017-04-18 13:11:01',15,44,1,1,0,0,7,1),(20,'2017-04-18 13:14:13',28,31,3,3,1,0,12,1),(21,'2017-04-28 13:04:55',48,59,1,3,1,0,4,NULL),(22,'2017-04-28 13:30:00',6,58,1,1,0,0,NULL,NULL),(23,'2017-04-28 13:30:11',6,58,1,1,0,1,4,NULL),(24,'2017-04-28 13:30:24',6,58,1,1,0,1,6,1),(25,'2017-04-28 13:30:37',6,58,1,1,1,1,2,NULL),(26,'2017-04-28 13:30:47',6,58,1,1,1,1,6,1),(27,'2017-04-30 12:47:23',3,54,2,2,1,0,NULL,NULL),(28,'2017-05-06 14:36:34',25,58,2,1,0,0,6,NULL),(29,'2017-05-06 14:39:39',58,10,1,2,0,0,6,NULL),(30,'2017-05-06 14:41:29',6,84,1,1,0,0,11,NULL),(31,'2017-05-06 14:46:02',58,34,1,1,0,0,6,NULL),(32,'2017-05-06 15:32:10',28,97,2,3,0,0,6,NULL),(33,'2017-05-06 15:35:05',6,7,1,1,0,0,8,1),(34,'2017-05-06 15:40:44',58,24,1,1,0,0,6,NULL),(35,'2017-05-06 15:46:43',44,94,1,1,0,0,6,NULL),(36,'2017-05-06 15:48:57',44,92,1,1,0,0,6,NULL),(37,'2017-05-06 16:53:01',28,29,1,1,0,0,6,NULL),(38,'2017-05-06 17:00:32',20,6,1,1,0,0,6,NULL),(39,'2017-05-06 17:02:25',58,44,1,1,0,0,6,NULL),(40,'2017-05-06 17:03:53',92,52,1,1,0,0,6,NULL),(41,'2017-05-06 17:12:35',71,97,1,1,0,0,6,NULL),(42,'2017-05-06 17:13:13',58,77,1,1,0,0,6,NULL),(43,'2017-05-06 17:17:44',58,94,1,1,0,0,4,NULL),(44,'2017-05-06 17:17:56',92,63,1,1,0,0,6,NULL),(45,'2017-05-06 17:28:12',44,100,1,1,0,0,6,1),(46,'2017-05-06 17:28:32',71,4,3,2,1,0,6,NULL),(47,'2017-05-06 18:12:39',44,25,1,1,0,0,8,1),(48,'2017-05-06 18:13:46',38,25,3,1,1,0,8,1),(49,'2017-05-10 14:08:17',58,83,3,1,0,0,8,1),(50,'2017-05-10 14:08:36',83,71,1,1,0,0,12,1),(51,'2017-05-10 14:08:51',62,58,1,1,0,0,12,1),(52,'2017-05-10 14:09:13',36,44,3,3,1,0,12,1),(53,'2017-05-10 14:09:34',23,29,3,1,0,2,12,NULL),(54,'2017-05-11 19:32:53',97,44,3,1,0,0,15,NULL),(55,'2017-05-11 19:33:23',11,83,3,3,0,1,20,NULL),(56,'2017-05-12 16:22:08',89,90,2,3,0,1,11,NULL),(63,'2017-05-12 16:22:08',89,90,2,3,0,1,9,NULL),(69,'2017-05-12 16:22:08',89,90,2,3,0,1,7,1),(70,'2017-05-12 16:22:08',89,90,2,3,0,1,7,1),(84,'2017-05-13 00:47:37',71,86,1,1,0,0,6,NULL),(89,'2017-05-13 16:22:45',44,27,5,7,0,0,7,NULL),(90,'2017-05-13 16:23:10',44,27,3,7,0,0,11,NULL),(92,'2017-05-13 21:19:58',44,52,3,2,0,1,17,1),(103,'2017-05-13 22:39:54',6,4,2,3,1,0,NULL,NULL),(104,'2017-05-13 22:42:36',2,63,1,3,0,1,NULL,NULL),(105,'2017-05-13 22:44:52',15,54,2,1,0,0,NULL,NULL),(106,'2017-05-13 23:06:54',94,5,2,3,0,2,7,NULL),(107,'2017-05-13 23:08:32',90,42,2,3,0,2,13,NULL),(111,'2017-05-15 00:20:21',91,93,2,3,0,1,22,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'awesomedatabase'
--
/*!50003 DROP PROCEDURE IF EXISTS `all_roads` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `all_roads`()
BEGIN
	select x1, y1, x2, y2 from 
	(select x as x1, y as y1, edges.id_edge as id from locations
				inner join edges on id = edges.first_node
				order by id)
	t1,
	(select x as x2, y as y2, edges.id_edge as id from locations
				inner join edges on id = edges.second_node
				order by id)
	t2
	where t1.id = t2.id
	order by t1.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `create_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_order`(created datetime, start_id int, finish_id int,
comfort_rate int, passengers int, wide_trunk int, baby_seat int)
BEGIN
INSERT INTO Orders (created, start_id, finish_id,  comfort_rate, passengers, wide_trunk, baby_seat)
VALUES  (created, start_id, finish_id, comfort_rate, passengers, wide_trunk, baby_seat);
select id from orders order by id desc limit 1; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_matching_driver` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_matching_driver`(distance_array varchar(500), order_id int)
BEGIN
declare driver_id int;
drop temporary table if exists driver_search;
create temporary table driver_search (id int, available int, dist int, comfort_rate int, passengers int, baby_seat int, wide_trunk int, name varchar (50), model varchar(25), color varchar(12), reg_number varchar(9));

-- Расформироваем строку в таблицу driver_dist (id-distance)
call get_drivers_distance_data (distance_array);
 
-- Объединяем таблицы driver_dist, driver, cars -> driver_search
insert into driver_search
	select d.id as id, available, dist, comfort_rate, passengers, baby_seat, wide_trunk, name, model, color, reg_number  
		from drivers d join cars c on d.car_id = c.id
					   join driver_dist t on d.id = t.id;
-- Выводим данные подходщего водителя
select ds.id, dist, name, model, color, reg_number from driver_search as ds
	inner join orders o where o.id = order_id and 
		ds.available = 1 and ds.passengers >= o.passengers and ds.baby_seat >= o.baby_seat and ds.wide_trunk >= o.wide_trunk and abs(ds.comfort_rate-o.comfort_rate) <= 1
    order by dist
    limit 1;
set driver_id = (select ds.id from driver_search as ds
	inner join orders o where o.id = order_id and 
		ds.available = 1 and ds.passengers >= o.passengers and ds.baby_seat >= o.baby_seat and ds.wide_trunk >= o.wide_trunk and abs(ds.comfort_rate-o.comfort_rate) <= 1
    order by dist
    limit 1);
if driver_id is not null then
    update drivers set available = 0 where id = driver_id;
    update orders set driver = driver_id where id = order_id;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `finish_order` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `finish_order`(order_id int)
BEGIN
declare dr int;
declare new_location int;
update orders set completed = 1 where id = order_id;
set dr = (select driver from orders where id = order_id);
set new_location = (select finish_id from orders where id = order_id);
update drivers set location = new_location, available = 1 where id = dr;
select id, x, y from locations where id = new_location;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_drivers_distance_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_drivers_distance_data`(distance_array varchar(500))
BEGIN
declare i int;
declare count int;
declare coma_position int;
declare dist_str varchar (5);

drop temporary table if exists driver_dist;

-- заносим в таблицу id всех водителей
create temporary table driver_dist (id int, dist int)
	as (select id from drivers order by id);
    
-- разбиваем строку distance_array на отдельные числа
set i = 1;
set count = (select count(id) from driver_dist);
separation: loop
	if i <= count then
	-- находим первую запятую
        set coma_position = locate(',', distance_array);
	-- копируем все до запятой
        set dist_str = substring(distance_array from 1 for coma_position-1);
	-- преобразуем в число и заносим в таблицу
        update driver_dist set dist = (cast(dist_str as unsigned))
			where dist is NULL 
            order by id limit 1;		-- первая запись, где нет значения dist	
	-- оставляем все, что после запятой
        set distance_array = substring(distance_array from coma_position+1);
        set i = i + 1;     
	else
		leave separation;        
	end if;    
end loop;

-- результат
select * from driver_dist;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-15 17:20:47
