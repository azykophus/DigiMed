-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: localhost    Database: pharmacy
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `pharmacist`
--

DROP TABLE IF EXISTS `pharmacist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pharmacist` (
  `pharmacist_id` int NOT NULL,
  `pharmacist_name` varchar(45) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  PRIMARY KEY (`pharmacist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pharmacist`
--

LOCK TABLES `pharmacist` WRITE;
/*!40000 ALTER TABLE `pharmacist` DISABLE KEYS */;
INSERT INTO `pharmacist` VALUES (1,'Rayna Shoemark',42549),(2,'Salli Dabernott',46550),(3,'Diann Morales',14304),(4,'Alfi Grieves',40611),(5,'Aharon Claeskens',24393),(6,'Marketa Blacksland',18588),(7,'Heall Keeltagh',36436),(8,'Ardyth Bloxham',18118),(9,'Moyra Saggs',32142),(10,'Carey Broadwood',31924),(11,'Hermione Pagitt',40340),(12,'Baron Skelhorne',37560),(13,'Vita Mulran',31537),(14,'Cordie Readhead',38460),(15,'Gertrud Briffett',23410),(16,'Chevy Buterton',32494),(17,'Knox Camier',43540),(18,'Ilysa Clingan',45478),(19,'Shantee Dolby',34464),(20,'Adelle Braunlein',41846),(21,'Lanae Purseglove',46099),(22,'Gav Sallings',21614),(23,'Elsey Botcherby',41665),(24,'Kurt Streather',34987),(25,'Iver Itzig',46561),(26,'Antone Dericut',33223),(27,'Mitch Rasp',22970),(28,'Trace Tackle',45086),(29,'Mel Willgoose',26875),(30,'Ferrel Salterne',21927),(31,'Shell Plom',25019),(32,'Ashil Baterip',19139),(33,'Chrysler Splaven',17459),(34,'Kay Reedyhough',28357),(35,'Germaine Howsden',18723),(36,'Dalila Allsworth',17797),(37,'Alessandra Pirolini',30544),(38,'Florina McNicol',42718),(39,'Dora Seward',20998),(40,'Evelin Ciccetti',12827),(41,'Brigida Boles',14116),(42,'Raquel Johnsee',48943),(43,'Hort Kidston',45237),(44,'Jobi Sargeaunt',48616),(45,'Gerrie Juden',38217),(46,'Joella McCandless',41523),(47,'Fitzgerald Hinchshaw',21840),(48,'Hesther Manketell',21686),(49,'Dotti Coolican',29863),(50,'Elinore Lynthal',39732),(51,'Fanni Fulleylove',21486),(52,'Monti Petzolt',20704),(53,'Taddeusz Cassie',29418),(54,'Linoel Swyndley',34685),(55,'Alanah Bernaldez',26446),(56,'Josephina Kliment',17877),(57,'Clerissa Jenkinson',31628),(58,'Nero Teodori',37731),(59,'Theodora Tosh',22975),(60,'Stacey Astell',12508),(61,'Lezlie Hoolaghan',47678),(62,'Bernelle Lynd',35649),(63,'Ruby Nolder',48956),(64,'Nowell Hutten',31522),(65,'Goldie Scruton',22523),(66,'Raimund Tilson',20999),(67,'Gauthier Gisbourn',46281),(68,'Giffy Gosneye',31245),(69,'Sibelle Le Marquand',27949),(70,'Aliza Gedge',47209),(71,'Dun Vina',30995),(72,'Edita Beckworth',28144),(73,'Pryce de Merida',20557),(74,'Scarface McFetrich',44250),(75,'Ddene Shieldon',30323),(76,'Woody Lindfors',40990),(77,'Maurice Sired',36015),(78,'Billy Bolitho',13868),(79,'Giselle Joynson',25865),(80,'Danita Messier',16674),(81,'Georgine Carrodus',23441),(82,'Giuditta Kindley',12356),(83,'Derk Simenel',43770),(84,'Kaela Daoust',31027),(85,'Karoline Stancliffe',12612),(86,'Vladamir Le Gallo',17443),(87,'Claire Chinery',12491),(88,'Valene Chesnut',10979),(89,'Hewitt MacNamee',47032),(90,'Sande Carwithen',36457),(91,'Ilyse Rayer',25024),(92,'Cass Coard',47142),(93,'Obed Gentsch',30382),(94,'Gideon Denson',35140),(95,'Anabal Secret',25547),(96,'Augustin Wanklin',42677),(97,'Kearney Mewha',41241),(98,'Byrle Trowsdale',48809),(99,'Steve Sesons',18570),(100,'Grace Noni',36757);
/*!40000 ALTER TABLE `pharmacist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 15:52:15
