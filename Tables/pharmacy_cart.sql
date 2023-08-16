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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cart_id` int NOT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_amount` int DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `total_amount` (`total_amount`),
  KEY `price_idx` (`price`),
  KEY `medicine_name_idx` (`medicine_name`),
  CONSTRAINT `medicine_name` FOREIGN KEY (`medicine_name`) REFERENCES `medicine` (`medicine_name`),
  CONSTRAINT `price` FOREIGN KEY (`price`) REFERENCES `medicine` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1156,'CLOZAPINE',111,8,888),(1157,'REFRESH OPTIVE Advanced',264,10,2640),(1254,'MonoNessa',217,2,434),(1263,'methylphenidate hcl',182,1,182),(1789,'Solar Protection Formula TiZO2 Light Skin Formula',76,3,228),(1793,'Cocoa',268,3,804),(1842,'Nutri-Tab OB plus DHA',227,6,1362),(2106,'Treatment Set TS348490',197,4,788),(2129,'Nitroglycerin',266,4,1064),(2179,'up and up ibuprofen',141,1,141),(2190,'Quetiapine Fumarate',247,7,1729),(2200,'Anti-Diarrheal',297,4,1188),(2270,'Mucinex Fast-Max',108,4,432),(2348,'MP',96,10,960),(2409,'Flawless Finish Dual Perfection Makeup SPF 8 Ivory',250,7,1750),(2556,'ELF Tinted Moisturizer SPF 20',171,2,342),(2601,'ASPERGILLUS NIGER VAR NIGER',69,9,621),(2706,'Givenchy TEINT COUTURE Long Wearing Fluid Foundation',55,2,110),(2719,'Prednisone',152,10,1520),(2772,'Orapred',70,2,140),(3072,'LUMENE PREMIUM BEAUTY REJUVENATING DAY',283,10,2830),(3116,'OXYCODONE HYDROCHLORIDE',290,9,2610),(3279,'Chlorpromazine Hydrochloride',274,1,274),(3282,'Ambien CR',265,10,2650),(3292,'Nicardipine HCl',223,2,446),(3330,'Carbon Dioxide-Oxygen-Nitrogen Mixture',241,10,2410),(3395,'Rain Breeze Toothpaste',141,1,141),(3401,'Losartan Potassium and Hydrochlorothiazide',170,7,1190),(3425,'Loratadineantihistamine',212,4,848),(3496,'Cefazolin',79,4,316),(3516,'Lisinopril',105,2,210),(3572,'tizanidine hydrochloride',148,5,740),(3605,'Cashew Nut Meat',157,3,471),(3695,'Dandruff',271,2,542),(3985,'Ammonia Inhalants',120,2,240),(4033,'ATORVASTATIN CALCIUM',210,2,420),(4060,'oxybutynin chloride',222,9,1998),(4206,'Dexamethasone Sodium Phosphate',24,2,48),(4223,'Glimepiride',133,6,798),(4317,'Sulfamethoxazole and Trimethoprim',209,4,836),(4425,'Koh Gen Do Aqua Foundation',22,4,88),(4483,'Terazol 3',251,6,1506),(4562,'DELFLEX',157,7,1099),(4765,'Acyclovir',252,1,252),(4833,'GENOTROPIN',152,9,1368),(4879,'Diuretic',21,2,42),(5035,'Haloperidol',211,10,2110),(5151,'potassium chloride',192,10,1920),(5176,'Spherusol',275,4,1100),(5303,'Formu Care Anti Itch',169,9,1521),(5338,'Midazolam Hydrochloride',92,3,276),(5359,'Ramipril',129,7,903),(5459,'Trihexyphenidyl Hydrochloride',233,10,2330),(5504,'ALL PURPOSE CLEANER',131,6,786),(5547,'topcare cold',99,10,990),(5702,'good neighbor pharmacy nose',223,4,892),(5719,'R-Tanna',179,7,1253),(5761,'Alprazolam',229,1,229),(5888,'Relief Towelette',262,9,2358),(6024,'LYM',186,6,1116),(6029,'Lisinopril',165,9,1485),(6047,'Terocin',243,10,2430),(6243,'Isosorbide Mononitrate',150,3,450),(6285,'Simvastatin',234,7,1638),(6363,'Stavudine',291,7,2037),(6695,'A-D-D',271,5,1355),(6729,'Oxycodone Hydrochloride',111,5,555),(6765,'Phenazopyridine Hydrochloride',291,10,2910),(6859,'SohMed Alertness Aid',234,7,1638),(6916,'Mucinex',296,1,296),(6976,'Naproxen',268,4,1072),(7068,'bareMinerals Prime Time BB Primer Daily Defense Broad Spectrum SPF 30',252,6,1512),(7187,'Goodys',223,5,1115),(7341,'Pollens - Trees, Linden (Basswood) Tilia americana',95,8,760),(7398,'venlafaxine hydrochloride',296,1,296),(7451,'Vecuronium Bromide',44,6,264),(7552,'Candesartan cilexetil',192,9,1728),(7698,'AMPHADASE',213,5,1065),(7762,'CLE DE PEAU BEAUTE REFINING FLUID FOUNDATION',104,5,520),(7821,'ALTERNARIA TENUIS',138,5,690),(7822,'Doxycycline Hyclate',153,3,459),(7858,'Badger SPF 30 Aloe Sunscreen',119,1,119),(8030,'Curvularia',182,3,546),(8279,'Lisinopril and Hydrochlorothiazide',262,7,1834),(8326,'TOPIRAMATE',76,6,456),(8397,'Glipizide',196,4,784),(8416,'Personal Care Pyrithione Zinc Dandruff',166,5,830),(8547,'Propranolol Hydrochloride',24,9,216),(8724,'Minoxidil',109,3,327),(8826,'Acetaldehyde',124,7,868),(9068,'SunMark Night Time Sleep Aid',205,9,1845),(9204,'Tussi Pres',209,4,836),(9281,'EQUATE',266,1,266),(9302,'ARC 42 Essential First Aid Items',206,6,1236),(9355,'Poplar',191,8,1528),(9380,'Mexiletine Hydrochloride',245,4,980),(9577,'Lotrel',212,3,636),(9586,'Koh Gen Do Maifanshi Makeup Color Base',182,5,910),(9668,'Zephrex-D',230,10,2300),(9955,'Ciprofloxacin',139,3,417);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
