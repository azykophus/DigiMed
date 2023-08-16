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
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `medicine_id` int NOT NULL,
  `medicine_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`medicine_id`),
  KEY `medicine_name` (`medicine_name`),
  KEY `price` (`price`),
  KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1017,'CLOZAPINE','CLOZAPINE',111),(1264,'REFRESH OPTIVE Advanced','carboxymethylcellulose sodium, glycerin, and polysorbate 80',264),(1278,'MonoNessa','norgestimate and ethinyl estradiol',217),(1445,'methylphenidate hcl','methylphenidate hcl',182),(1564,'Solar Protection Formula TiZO2 Light Skin Formula','Titanium Dioxide, Zinc Oxide',76),(1598,'Cocoa','Titanium Dioxide, Octinoxate/EthylhexylMehtoxycinnamate',268),(1627,'Nutri-Tab OB plus DHA','SODIUM ASCORBATE, CHOLECALCIFEROL, .ALPHA.-TOCOPHEROL ACETATE, D-',227),(1640,'Treatment Set TS348490','Treatment Set TS348490',197),(1713,'Nitroglycerin','nitroglycerin',266),(1753,'up and up ibuprofen','Ibuprofen',141),(1761,'Quetiapine Fumarate','Quetiapine Fumarate',247),(1841,'Anti-Diarrheal','LOPERAMIDE HYDROCHLORIDE',297),(2072,'Mucinex Fast-Max','Guaifenesin, Phenylephrine Hydrochloride, and Dextromethorphan hydrobromide',108),(2344,'MP','Achyrocline satureioides, Arctostaphylos uva-ursi, Cassia occidentalis, Mirailis jalapa',96),(2391,'Flawless Finish Dual Perfection Makeup SPF 8 Ivory','Titanium Dioxide',250),(2422,'ELF Tinted Moisturizer SPF 20','OXYBENZONE',171),(2846,'ASPERGILLUS NIGER VAR NIGER','ASPERGILLUS NIGER',69),(2875,'Givenchy TEINT COUTURE Long Wearing Fluid Foundation','TITANIUM DIOXIDE',55),(2953,'Prednisone','Prednisone',152),(2958,'Orapred','prednisolone sodium phosphate',70),(2997,'LUMENE PREMIUM BEAUTY REJUVENATING DAY','AVOBENZONE, OCTINOXATE, OCTISALATE, OXYBENZONE',283),(3191,'OXYCODONE HYDROCHLORIDE','OXYCODONE HYDROCHLORIDE',290),(3206,'Chlorpromazine Hydrochloride','Chlorpromazine Hydrochloride',274),(3305,'Ambien CR','zolpidem tartrate',265),(3380,'Nicardipine HCl','Nicardipine HCl',223),(3399,'Carbon Dioxide-Oxygen-Nitrogen Mixture','Carbon Dioxide-Oxygen-Nitrogen Mixture',241),(3521,'Rain Breeze Toothpaste','SODIUM FLUORIDE',141),(3676,'Losartan Potassium and Hydrochlorothiazide','Losartan Potassium and Hydrochlorothiazide',170),(3767,'Loratadineantihistamine','Loratadine',212),(3793,'Cefazolin','Cefazolin',79),(3840,'Lisinopril','Lisinopril',105),(3886,'tizanidine hydrochloride','tizanidine hydrochloride',148),(3909,'Cashew Nut Meat','Cashew Nut Meat',157),(3947,'Dandruff','Pyrithione zinc',271),(3994,'Ammonia Inhalants','Ammonia Inhalants',120),(3995,'ATORVASTATIN CALCIUM','ATORVASTATIN CALCIUM',210),(3996,'oxybutynin chloride','oxybutynin chloride',222),(4197,'Dexamethasone Sodium Phosphate','Dexamethasone Sodium Phosphate',24),(4199,'Glimepiride','Glimepiride',133),(4227,'Sulfamethoxazole and Trimethoprim','Sulfamethoxazole and Trimethoprim',209),(4295,'Koh Gen Do Aqua Foundation','Aqua Foundation',22),(4360,'Terazol 3','TERCONAZOLE',251),(4423,'DELFLEX','Dextrose Monohydrate, Sodium Chloride, Calcium Chloride, Magnesium Chloride, Sodium Lactate',157),(4429,'Acyclovir','Acyclovir',252),(4453,'GENOTROPIN','somatropin',152),(4486,'Diuretic','Apis Melifica, Berberis vulgaris, Nelleborus niger, Juniperus communis',21),(4507,'Haloperidol','Haloperidol',211),(4677,'potassium chloride','potassium chloride',192),(4728,'Spherusol','Coccidioides immitis Spherule-Derived Skin Test Antigen',275),(4859,'Formu Care Anti Itch','Hydrocortisone',169),(4890,'Midazolam Hydrochloride','MIDAZOLAM HYDROCHLORIDE',92),(4945,'Ramipril','Ramipril',129),(4957,'Trihexyphenidyl Hydrochloride','Trihexyphenidyl Hydrochloride',233),(5073,'ALL PURPOSE CLEANER','BENZALKONIUM CHLORIDE',131),(5332,'topcare cold','Acetaminophen, Chlorpheniramine maleate, Dextromethorphan HBr',99),(5431,'good neighbor pharmacy nose','Phenylephrine hydrochloride',223),(5475,'R-Tanna','Phenylephrine Tannate and Chlorpheniramine Tannate',179),(5683,'Alprazolam','Alprazolam',229),(5714,'Relief Towelette','witch hazel',262),(5860,'LYM','Arnica montana, Calendula officinalis, Echinacea, Hydrastis canadensis, Myrrha',186),(5889,'Lisinopril','Lisinopril',165),(6053,'Terocin','Methyl Salicylate, Capsaicin, Menthol and Lidocaine Hydrochloride',243),(6091,'Isosorbide Mononitrate','isosorbide mononitrate',150),(6245,'Simvastatin','Simvastatin',234),(6390,'Stavudine','Stavudine',291),(6504,'A-D-D','A-D-D',271),(6537,'Oxycodone Hydrochloride','Oxycodone Hydrochloride',111),(6744,'Phenazopyridine Hydrochloride','Phenazopyridine',291),(6965,'SohMed Alertness Aid','Caffeine',234),(7128,'Mucinex','Guaifenesin',296),(7372,'Naproxen','Naproxen',268),(7571,'bareMinerals Prime Time BB Primer Daily Defense Broad Spectrum SPF 30','Titanium Dioxide and Zinc Oxide',252),(7691,'Goodys','acetaminophen, aspirin, and caffeine',223),(7777,'Pollens - Trees, Linden (Basswood) Tilia americana','Linden (Basswood) Tilia americana',95),(7875,'venlafaxine hydrochloride','venlafaxine hydrochloride',296),(7889,'Vecuronium Bromide','Vecuronium Bromide',44),(8028,'Candesartan cilexetil','Candesartan cilexetil',192),(8062,'AMPHADASE','hyaluronidase',213),(8094,'CLE DE PEAU BEAUTE REFINING FLUID FOUNDATION','OCTINOXATE',104),(8227,'ALTERNARIA TENUIS','ALTERNARIA TENUIS',138),(8326,'Doxycycline Hyclate','Doxycycline Hyclate',153),(8331,'Badger SPF 30 Aloe Sunscreen','Zinc Oxide',119),(8343,'Curvularia','Curvularia',182),(8344,'Lisinopril and Hydrochlorothiazide','Lisinopril and Hydrochlorothiazide',262),(8388,'TOPIRAMATE','TOPIRAMATE',76),(8401,'Glipizide','Glipizide',196),(8560,'Personal Care Pyrithione Zinc Dandruff','PYRITHIONE ZINC',166),(8592,'Propranolol Hydrochloride','propranolol hydrochloride',24),(8622,'Minoxidil','Minoxidil',109),(8705,'Acetaldehyde','Acetaldehyde',124),(8904,'SunMark Night Time Sleep Aid','Diphenhydramine Hydrochloride',205),(8952,'Tussi Pres','guaifenesin, phenylephrine hydrochloride, dextromethorphan hydrobromide',209),(9019,'EQUATE','BENZALKONIUM CHLORIDE',266),(9031,'ARC 42 Essential First Aid Items','ISOPROPYL ALCOHOL',206),(9343,'Poplar','Poplar',191),(9520,'Mexiletine Hydrochloride','Mexiletine Hydrochloride',245),(9544,'Lotrel','amlodipine besylate and benazepril hydrochloride',212),(9642,'Koh Gen Do Maifanshi Makeup Color Base','zinc oxide, titanium dioxide',182),(9836,'Zephrex-D','Pseudoephedrine Hydrochloride',230),(9942,'Ciprofloxacin','Ciprofloxacin Hydrochloride',139);
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
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
