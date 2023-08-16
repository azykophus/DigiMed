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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `email_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1063,'Julianne','Cardno','4972439453','Suite 16','jcardnoj@google.fr'),(1156,'Aharon','Kemmish','8452080742','1st Floor','akemmish22@nationalgeographic.com'),(1211,'Alva','Vedekhin','8818976378','Suite 68','avedekhinm@pen.io'),(1596,'Horatio','Laffranconi','9428003179','16th Floor','hlaffranconi1@webnode.com'),(1644,'Lilian','Creus','7959556492','Suite 43','lcreus2e@symantec.com'),(1652,'Dyana','Bonnell','7807062313','Apt 1056','dbonnell1p@simplemachines.org'),(1838,'Tito','Addison','3105522772','PO Box 92050','taddison12@edublogs.org'),(1887,'Selene','Shepley','7626761979','Suite 35','sshepleyo@scribd.com'),(1961,'Charmane','Betser','6941628698','Apt 1068','cbetser1v@zdnet.com'),(2018,'Cosmo','Brownbridge','7781291994','Apt 877','cbrownbridge7@upenn.edu'),(2043,'Agna','Andreu','3068255189','PO Box 95422','aandreu28@reddit.com'),(2071,'Colet','Caudelier','6223439344','Apt 466','ccaudelieri@bravesites.com'),(2221,'Lynette','Ayers','1474133726','Suite 5','layers0@sciencedaily.com'),(2257,'Selina','Staneland','3035740699','Apt 635','sstaneland13@nature.com'),(2289,'Mirelle','Rustedge','4414860993','Apt 115','mrustedge27@yale.edu'),(2452,'Teodor','Toffanelli','4461420577','PO Box 94238','ttoffanelli1q@spotify.com'),(2582,'Francisca','McAllester','9531435799','PO Box 1214','fmcallester18@google.com.au'),(2585,'Maribel','Vinck','7497182570','11th Floor','mvinck1j@123-reg.co.uk'),(2614,'Mattias','Kohrs','6183316187','Room 1470','mkohrs1w@cocolog-nifty.com'),(2738,'Toby','Stammirs','1943425197','20th Floor','tstammirs20@google.com'),(2844,'Marina','Astlet','5396543521','1st Floor','mastlet2q@go.com'),(2894,'Denis','Omar','7914214175','PO Box 37339','domar2p@clickbank.net'),(3025,'Orelle','Keely','7351242725','Apt 908','okeely2r@abc.net.au'),(3070,'Austina','Divill','5699278835','PO Box 98457','adivill2j@amazon.co.uk'),(3073,'Chandler','Fowles','3853609974','Apt 66','cfowles1d@businesswire.com'),(3361,'Aurore','Billitteri','3163470924','8th Floor','abillitteria@live.com'),(3539,'Kathye','Quaife','5358145251','Suite 78','kquaifeq@geocities.com'),(3556,'Lorita','Bowker','3667197762','Apt 225','lbowker2k@google.com'),(3774,'Janith','Fidal','5959138968','PO Box 26319','jfidal1i@yellowbook.com'),(3834,'Renae','Nowell','8338847184','PO Box 45069','rnowelly@wiley.com'),(3887,'Reamonn','Rout','6523931968','Room 1386','rroutp@mlb.com'),(3888,'Ginnifer','Crowest','4662694644','10th Floor','gcrowest1l@booking.com'),(3940,'Debi','Bohike','5213574795','1st Floor','dbohike5@shutterfly.com'),(4066,'Helene','Jopp','4816257794','PO Box 56104','hjopp4@skyrock.com'),(4094,'Stevena','Raulston','9486748244','PO Box 31334','sraulston2c@ftc.gov'),(4140,'Ninette','Sparrow','6144393665','PO Box 93599','nsparrown@vistaprint.com'),(4190,'Remus','Goering','5754195796','16th Floor','rgoeringb@google.co.uk'),(4320,'Beatrix','McTrustie','6767928259','Apt 635','bmctrustie10@360.cn'),(4335,'Ebba','McIvor','9403004766','16th Floor','emcivor1y@bluehost.com'),(4415,'Sadye','Simononsky','8571365603','Room 1845','ssimononsky1a@uol.com.br'),(4416,'Abbie','Vasichev','8736683685','Room 702','avasichevu@cbsnews.com'),(4657,'Ev','Hussy','5706940325','Room 1101','ehussy9@cornell.edu'),(4668,'Gal','Butter','9206962770','Apt 1207','gbutterr@youtu.be'),(4778,'Bale','Fassmann','6382901901','Apt 362','bfassmann1n@ft.com'),(4799,'Dougy','Trorey','8157021873','Apt 295','dtrorey1h@issuu.com'),(5145,'Hedy','Peller','8845500392','PO Box 78846','hpeller6@japanpost.jp'),(5265,'Dianemarie','Pieper','8127183487','Room 1371','dpieperl@acquirethisname.com'),(5266,'Ema','Pawelke','5079736753','7th Floor','epawelkez@opensource.org'),(5279,'Estell','Boeck','4924351818','Room 1466','eboeck2o@sphinn.com'),(5335,'Jaquenetta','Blaze','2066464450','Apt 604','jblaze1m@ebay.com'),(5516,'Grenville','Downgate','8003410524','Suite 3','gdowngate19@slashdot.org'),(5526,'Ignacius','Haskell','5868863566','15th Floor','ihaskellh@typepad.com'),(5591,'Sherri','Woodthorpe','3491664410','20th Floor','swoodthorpe8@hatena.ne.jp'),(5638,'Electra','Lathom','5925693982','Apt 1584','elathom1g@bluehost.com'),(5657,'Wynne','Gayler','5454568927','Apt 1707','wgayler2b@berkeley.edu'),(5702,'Melloney','Napthine','9427726919','Apt 450','mnapthine29@is.gd'),(5735,'Gerri','Woolaston','3516885769','Suite 71','gwoolaston14@alexa.com'),(5940,'Blake','Maro','4853029012','14th Floor','bmaro24@timesonline.co.uk'),(5994,'Hildegarde','Spavon','5101315230','Room 1761','hspavon1c@buzzfeed.com'),(6017,'Mill','Lowndsbrough','4598829268','Apt 1018','mlowndsbroughv@mozilla.com'),(6129,'Sara-ann','Milmo','9592493496','9th Floor','smilmo1u@patch.com'),(6314,'Aristotle','De Filippi','7064374445','PO Box 8577','adefilippi23@chron.com'),(6360,'Tate','Bugdale','8842658419','Room 672','tbugdale25@abc.net.au'),(6409,'Kincaid','Ellard','8968152904','Apt 1627','kellard2i@nhs.uk'),(6464,'Paula','Baxill','1032929585','17th Floor','pbaxille@surveymonkey.com'),(6468,'Audrye','Manneville','2397954529','PO Box 53553','amanneville3@miitbeian.gov.cn'),(6504,'Temp','Veryan','4568136549','Apt 1190','tveryan2f@irs.gov'),(6680,'Ulla','Hoodless','5508448998','Room 1687','uhoodless21@histats.com'),(6704,'Candis','Hinkes','4579004688','1st Floor','chinkes11@google.com.br'),(6715,'Hazlett','Washington','2605308474','Suite 39','hwashington17@gravatar.com'),(6776,'Edi','Tapply','9139597398','PO Box 5806','etapply1t@cbc.ca'),(6878,'Jayme','Swyn','7953814698','Apt 1108','jswyn2m@ocn.ne.jp'),(6966,'Agustin','Smeeton','3704936668','PO Box 70838','asmeeton1r@friendfeed.com'),(7039,'Mirilla','Crystal','3814595905','9th Floor','mcrystalt@addthis.com'),(7085,'Gayelord','Valasek','7017862516','PO Box 11591','gvalasek1k@yahoo.com'),(7267,'Rube','Rawnsley','5319584428','14th Floor','rrawnsley1x@sciencedirect.com'),(7357,'Kristian','Strainge','2986476981','Apt 1365','kstrainge1b@mapquest.com'),(7384,'Marcelline','Mussilli','5327233082','Suite 79','mmussillix@bandcamp.com'),(7462,'Jillana','Dodd','8184970284','Apt 609','jdodd2d@mlb.com'),(7497,'Grete','McRuvie','6167314529','Room 1449','gmcruvie2h@imdb.com'),(7669,'Kingsley','Cuvley','1524207000','Apt 1269','kcuvley2n@pcworld.com'),(7773,'Jennie','Yukhnov','6396744049','PO Box 79585','jyukhnovw@paginegialle.it'),(7876,'Torre','McFie','8314203172','PO Box 7702','tmcfies@topsy.com'),(7909,'Zacherie','Mathon','5273335412','Apt 611','zmathon26@feedburner.com'),(7920,'Rayna','Tompkinson','9037732142','Room 1486','rtompkinson1f@cnn.com'),(7957,'Konstantine','Vitet','7976430874','Apt 124','kvitetc@desdev.cn'),(7978,'Nedi','Gerrad','1253227849','16th Floor','ngerrad15@last.fm'),(8248,'Sebastian','Bridgement','8865575495','Suite 73','sbridgement2l@craigslist.org'),(8621,'Meyer','Birdsall','9453900432','Apt 498','mbirdsallf@free.fr'),(8691,'Emlynn','Buxey','6472957817','9th Floor','ebuxeyk@deliciousdays.com'),(8777,'Piotr','Eirwin','9008693927','Room 149','peirwin1s@wsj.com'),(9139,'Barnebas','Birtchnell','4192155519','PO Box 48367','bbirtchnell1z@domainmarket.com'),(9249,'Kiah','Borlease','8439017310','Apt 1187','kborlease2g@mysql.com'),(9286,'Karlyn','Casburn','2133488380','PO Box 52309','kcasburn1o@netlog.com'),(9321,'Paddy','Cecil','3986381375','Room 805','pcecild@sohu.com'),(9419,'Freida','Lyburn','6127923146','4th Floor','flyburn1e@dion.ne.jp'),(9445,'Brade','Headings','8515599926','Room 1689','bheadings2@nature.com'),(9524,'Ario','Thornthwaite','8127977243','17th Floor','athornthwaiteg@about.me'),(9584,'Kristofor','Halford','1522582064','Apt 965','khalford16@istockphoto.com'),(9670,'Vito','Goneau','9521815654','Room 910','vgoneau2a@cmu.edu');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
