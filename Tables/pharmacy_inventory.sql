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
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `medicine_id` int NOT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`medicine_id`),
  KEY `price` (`price`),
  KEY `inv_medicine_name_idx` (`medicine_name`),
  KEY `description_idx` (`description`),
  CONSTRAINT `description` FOREIGN KEY (`description`) REFERENCES `medicine` (`description`),
  CONSTRAINT `inv_medicine_name` FOREIGN KEY (`medicine_name`) REFERENCES `medicine` (`medicine_name`),
  CONSTRAINT `inv_price` FOREIGN KEY (`price`) REFERENCES `medicine` (`price`),
  CONSTRAINT `medicine_id` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`medicine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1017,'CLOZAPINE','CLOZAPINE',111,65),(1264,'REFRESH OPTIVE Advanced','carboxymethylcellulose sodium, glycerin, and polysorbate 80',264,60),(1278,'MonoNessa','norgestimate and ethinyl estradiol',217,63),(1445,'methylphenidate hcl','methylphenidate hcl',182,90),(1564,'Solar Protection Formula TiZO2 Light Skin Formula','Titanium Dioxide, Zinc Oxide',76,33),(1598,'Cocoa','Titanium Dioxide, Octinoxate/EthylhexylMehtoxycinnamate',268,65),(1627,'Nutri-Tab OB plus DHA','SODIUM ASCORBATE, CHOLECALCIFEROL, .ALPHA.-TOCOPHEROL ACETATE, D-',227,27),(1640,'Treatment Set TS348490','Treatment Set TS348490',197,61),(1713,'Nitroglycerin','nitroglycerin',266,66),(1753,'up and up ibuprofen','Ibuprofen',141,29),(1761,'Quetiapine Fumarate','Quetiapine Fumarate',247,27),(1841,'Anti-Diarrheal','LOPERAMIDE HYDROCHLORIDE',297,57),(2072,'Mucinex Fast-Max','Guaifenesin, Phenylephrine Hydrochloride, and Dextromethorphan hydrobromide',108,11),(2344,'MP','Achyrocline satureioides, Arctostaphylos uva-ursi, Cassia occidentalis, Mirailis jalapa',96,55),(2391,'Flawless Finish Dual Perfection Makeup SPF 8 Ivory','Titanium Dioxide',250,49),(2422,'ELF Tinted Moisturizer SPF 20','OXYBENZONE',171,74),(2846,'ASPERGILLUS NIGER VAR NIGER','ASPERGILLUS NIGER',69,92),(2875,'Givenchy TEINT COUTURE Long Wearing Fluid Foundation','TITANIUM DIOXIDE',55,40),(2953,'Prednisone','Prednisone',152,47),(2958,'Orapred','prednisolone sodium phosphate',70,17),(2997,'LUMENE PREMIUM BEAUTY REJUVENATING DAY','AVOBENZONE, OCTINOXATE, OCTISALATE, OXYBENZONE',283,19),(3191,'OXYCODONE HYDROCHLORIDE','OXYCODONE HYDROCHLORIDE',290,40),(3206,'Chlorpromazine Hydrochloride','Chlorpromazine Hydrochloride',274,0),(3305,'Ambien CR','zolpidem tartrate',265,49),(3380,'Nicardipine HCl','Nicardipine HCl',223,17),(3399,'Carbon Dioxide-Oxygen-Nitrogen Mixture','Carbon Dioxide-Oxygen-Nitrogen Mixture',241,89),(3521,'Rain Breeze Toothpaste','SODIUM FLUORIDE',141,14),(3676,'Losartan Potassium and Hydrochlorothiazide','Losartan Potassium and Hydrochlorothiazide',170,87),(3767,'Loratadineantihistamine','Loratadine',212,38),(3793,'Cefazolin','Cefazolin',79,69),(3840,'Lisinopril','Lisinopril',105,75),(3886,'tizanidine hydrochloride','tizanidine hydrochloride',148,12),(3909,'Cashew Nut Meat','Cashew Nut Meat',157,39),(3947,'Dandruff','Pyrithione zinc',271,2),(3994,'Ammonia Inhalants','Ammonia Inhalants',120,97),(3995,'ATORVASTATIN CALCIUM','ATORVASTATIN CALCIUM',210,74),(3996,'oxybutynin chloride','oxybutynin chloride',222,48),(4197,'Dexamethasone Sodium Phosphate','Dexamethasone Sodium Phosphate',24,43),(4199,'Glimepiride','Glimepiride',133,48),(4227,'Sulfamethoxazole and Trimethoprim','Sulfamethoxazole and Trimethoprim',209,73),(4295,'Koh Gen Do Aqua Foundation','Aqua Foundation',22,68),(4360,'Terazol 3','TERCONAZOLE',251,84),(4423,'DELFLEX','Dextrose Monohydrate, Sodium Chloride, Calcium Chloride, Magnesium Chloride, Sodium Lactate',157,23),(4429,'Acyclovir','Acyclovir',252,92),(4453,'GENOTROPIN','somatropin',152,94),(4486,'Diuretic','Apis Melifica, Berberis vulgaris, Nelleborus niger, Juniperus communis',21,22),(4507,'Haloperidol','Haloperidol',211,43),(4677,'potassium chloride','potassium chloride',192,90),(4728,'Spherusol','Coccidioides immitis Spherule-Derived Skin Test Antigen',275,66),(4859,'Formu Care Anti Itch','Hydrocortisone',169,60),(4890,'Midazolam Hydrochloride','MIDAZOLAM HYDROCHLORIDE',92,72),(4945,'Ramipril','Ramipril',129,16),(4957,'Trihexyphenidyl Hydrochloride','Trihexyphenidyl Hydrochloride',233,51),(5073,'ALL PURPOSE CLEANER','BENZALKONIUM CHLORIDE',131,36),(5332,'topcare cold','Acetaminophen, Chlorpheniramine maleate, Dextromethorphan HBr',99,91),(5431,'good neighbor pharmacy nose','Phenylephrine hydrochloride',223,59),(5475,'R-Tanna','Phenylephrine Tannate and Chlorpheniramine Tannate',179,38),(5683,'Alprazolam','Alprazolam',229,11),(5714,'Relief Towelette','witch hazel',262,17),(5860,'LYM','Arnica montana, Calendula officinalis, Echinacea, Hydrastis canadensis, Myrrha',186,65),(5889,'Lisinopril','Lisinopril',165,22),(6053,'Terocin','Methyl Salicylate, Capsaicin, Menthol and Lidocaine Hydrochloride',243,81),(6091,'Isosorbide Mononitrate','isosorbide mononitrate',150,51),(6245,'Simvastatin','Simvastatin',234,11),(6390,'Stavudine','Stavudine',291,37),(6504,'A-D-D','A-D-D',271,35),(6537,'Oxycodone Hydrochloride','Oxycodone Hydrochloride',111,68),(6744,'Phenazopyridine Hydrochloride','Phenazopyridine',291,46),(6965,'SohMed Alertness Aid','Caffeine',234,76),(7128,'Mucinex','Guaifenesin',296,36),(7372,'Naproxen','Naproxen',268,96),(7571,'bareMinerals Prime Time BB Primer Daily Defense Broad Spectrum SPF 30','Titanium Dioxide and Zinc Oxide',252,75),(7691,'Goodys','acetaminophen, aspirin, and caffeine',223,10),(7777,'Pollens - Trees, Linden (Basswood) Tilia americana','Linden (Basswood) Tilia americana',95,59),(7875,'venlafaxine hydrochloride','venlafaxine hydrochloride',296,84),(7889,'Vecuronium Bromide','Vecuronium Bromide',44,35),(8028,'Candesartan cilexetil','Candesartan cilexetil',192,16),(8062,'AMPHADASE','hyaluronidase',213,46),(8094,'CLE DE PEAU BEAUTE REFINING FLUID FOUNDATION','OCTINOXATE',104,26),(8227,'ALTERNARIA TENUIS','ALTERNARIA TENUIS',138,87),(8326,'Doxycycline Hyclate','Doxycycline Hyclate',153,4),(8331,'Badger SPF 30 Aloe Sunscreen','Zinc Oxide',119,14),(8343,'Curvularia','Curvularia',182,49),(8344,'Lisinopril and Hydrochlorothiazide','Lisinopril and Hydrochlorothiazide',262,42),(8388,'TOPIRAMATE','TOPIRAMATE',76,68),(8401,'Glipizide','Glipizide',196,76),(8560,'Personal Care Pyrithione Zinc Dandruff','PYRITHIONE ZINC',166,53),(8592,'Propranolol Hydrochloride','propranolol hydrochloride',24,16),(8622,'Minoxidil','Minoxidil',109,50),(8705,'Acetaldehyde','Acetaldehyde',124,48),(8904,'SunMark Night Time Sleep Aid','Diphenhydramine Hydrochloride',205,32),(8952,'Tussi Pres','guaifenesin, phenylephrine hydrochloride, dextromethorphan hydrobromide',209,95),(9019,'EQUATE','BENZALKONIUM CHLORIDE',266,32),(9031,'ARC 42 Essential First Aid Items','ISOPROPYL ALCOHOL',206,57),(9343,'Poplar','Poplar',191,42),(9520,'Mexiletine Hydrochloride','Mexiletine Hydrochloride',245,89),(9544,'Lotrel','amlodipine besylate and benazepril hydrochloride',212,45),(9642,'Koh Gen Do Maifanshi Makeup Color Base','zinc oxide, titanium dioxide',182,79),(9836,'Zephrex-D','Pseudoephedrine Hydrochloride',230,12),(9942,'Ciprofloxacin','Ciprofloxacin Hydrochloride',139,28);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
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
