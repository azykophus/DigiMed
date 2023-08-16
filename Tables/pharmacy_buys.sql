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
-- Table structure for table `buys`
--

DROP TABLE IF EXISTS `buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buys` (
  `customer_id` int NOT NULL,
  `medicine_id` int DEFAULT NULL,
  `prescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `buys_medicine_id_idx` (`medicine_id`),
  CONSTRAINT `buys_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  CONSTRAINT `buys_medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buys`
--

LOCK TABLES `buys` WRITE;
/*!40000 ALTER TABLE `buys` DISABLE KEYS */;
INSERT INTO `buys` VALUES (1063,1017,'Yes'),(1156,1264,'Yes'),(1211,1278,'Yes'),(1596,1445,'Yes'),(1644,1564,'Yes'),(1652,1598,'Yes'),(1838,1627,'Yes'),(1887,1640,'Yes'),(1961,1713,'Yes'),(2018,1753,'Yes'),(2043,1761,'Yes'),(2071,1841,'Yes'),(2221,2072,'No'),(2257,2344,'Yes'),(2289,2391,'Yes'),(2452,2422,'Yes'),(2582,2846,'Yes'),(2585,2875,'Yes'),(2614,2953,'Yes'),(2738,2958,'Yes'),(2844,2997,'Yes'),(2894,3191,'No'),(3025,3206,'Yes'),(3070,3305,'Yes'),(3073,3380,'No'),(3361,3399,'No'),(3539,3521,'Yes'),(3556,3676,'No'),(3774,3767,'Yes'),(3834,3793,'Yes'),(3887,3840,'Yes'),(3888,3886,'No'),(3940,3909,'Yes'),(4066,3947,'No'),(4094,3994,'Yes'),(4140,3995,'No'),(4190,3996,'Yes'),(4320,4197,'Yes'),(4335,4199,'Yes'),(4415,4227,'Yes'),(4416,4295,'Yes'),(4657,4360,'Yes'),(4668,4423,'Yes'),(4778,4429,'No'),(4799,4453,'Yes'),(5145,4486,'Yes'),(5265,4507,'No'),(5266,4677,'Yes'),(5279,4728,'Yes'),(5335,4859,'Yes'),(5516,4890,'Yes'),(5526,4945,'Yes'),(5591,4957,'Yes'),(5638,5073,'No'),(5657,5332,'Yes'),(5702,5431,'Yes'),(5735,5475,'Yes'),(5940,5683,'Yes'),(5994,5714,'Yes'),(6017,5860,'No'),(6129,5889,'Yes'),(6314,6053,'Yes'),(6360,6091,'Yes'),(6409,6245,'Yes'),(6464,6390,'Yes'),(6468,6504,'No'),(6504,6537,'Yes'),(6680,6744,'Yes'),(6704,6965,'Yes'),(6715,7128,'Yes'),(6776,7372,'Yes'),(6878,7571,'Yes'),(6966,7691,'Yes'),(7039,7777,'Yes'),(7085,7875,'Yes'),(7267,7889,'Yes'),(7357,8028,'Yes'),(7384,8062,'Yes'),(7462,8094,'Yes'),(7497,8227,'Yes'),(7669,8326,'Yes'),(7773,8331,'Yes'),(7876,8343,'Yes'),(7909,8344,'Yes'),(7920,8388,'Yes'),(7957,8401,'No'),(7978,8560,'Yes'),(8248,8592,'Yes'),(8621,8622,'Yes'),(8691,8705,'Yes'),(8777,8904,'Yes'),(9139,8952,'Yes'),(9249,9019,'Yes'),(9286,9031,'Yes'),(9321,9343,'Yes'),(9419,9520,'Yes'),(9445,9544,'Yes'),(9524,9642,'Yes'),(9584,9836,'Yes'),(9670,9942,'No');
/*!40000 ALTER TABLE `buys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-18 15:52:14
