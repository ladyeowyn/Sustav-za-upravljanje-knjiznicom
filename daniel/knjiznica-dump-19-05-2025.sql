CREATE DATABASE  IF NOT EXISTS `knjiznicadb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `knjiznicadb`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: knjiznicadb
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Temporary view structure for view `aktivne_posudbe_s_kaznama`
--

DROP TABLE IF EXISTS `aktivne_posudbe_s_kaznama`;
/*!50001 DROP VIEW IF EXISTS `aktivne_posudbe_s_kaznama`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `aktivne_posudbe_s_kaznama` AS SELECT 
 1 AS `PosudbaID`,
 1 AS `ClanID`,
 1 AS `Clan`,
 1 AS `Naslov`,
 1 AS `DatumPosudbe`,
 1 AS `RokVracanja`,
 1 AS `IznosKazneEUR`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `autori`
--

DROP TABLE IF EXISTS `autori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autori` (
  `AutorID` int NOT NULL AUTO_INCREMENT,
  `ImePrezime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Biografija` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`AutorID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autori`
--

LOCK TABLES `autori` WRITE;
/*!40000 ALTER TABLE `autori` DISABLE KEYS */;
INSERT INTO `autori` VALUES (1,'George Orwell','Britanski pisac poznat po distopijskim romanima 1984 i Životinjska farma.'),(2,'Jane Austen','Engleska književnica poznata po romanima Ponos i predrasude i Emma.'),(3,'Fyodor Dostoevsky','Ruski pisac čuven po djelima Zločin i kazna i Braća Karamazovi.'),(4,'Gabriel Garcia Marquez','Kolumbijski književnik, dobitnik Nobelove nagrade, autor Sto godina samoće.'),(5,'J.R.R. Tolkien','Britanski profesor i autor serijala Gospodar prstenova i Hobit.'),(6,'Haruki Murakami','Japanski pisac poznat po knjigama Norveška šuma i Kafka na žalu.'),(7,'Herman Melville','Američki pisac najpoznatiji po romanu Moby Dick.'),(8,'Franz Kafka','Češki pisac poznat po djelima Preobrazba i Proces.'),(9,'Leo Tolstoy','Ruski klasik, autor epskih romana Rat i mir i Ana Karenjina.'),(10,'Victor Hugo','Francuski književnik poznat po Jadnicima i Zvonaru crkve Notre-Dame.'),(11,'Oscar Wilde','Irski pisac i dramatičar poznat po Slici Doriana Graya.'),(12,'Virginia Woolf','Britanska spisateljica, autorica Vlastite sobe i Gospođe Dalloway.'),(13,'J.D. Salinger','Američki pisac poznat po romanu Lovac u žitu.'),(14,'Charles Dickens','Britanski autor poznat po Oliveru Twistu i Božićnoj priči.'),(15,'Aldous Huxley','Britanski pisac poznat po distopijskom romanu Vrli novi svijet.'),(16,'Arthur Conan Doyle','Britanski autor, tvorac slavnog detektiva Sherlocka Holmesa.'),(17,'Emily Bronte','Engleska književnica poznata po Orkanskim visovima.'),(18,'Ernest Hemingway','Američki pisac, dobitnik Nobelove nagrade, autor Starca i mora.'),(19,'Zadie Smith','Britanska književnica poznata po romanu Bijeli zubi.'),(20,'Yann Martel','Kanadski pisac, autor avanturističkog romana Život Pi.'),(21,'Frank Herbert','Američki pisac znanstvene fantastike, najpoznatiji po serijalu Dina.'),(22,'George R.R. Martin','Američki pisac, autor epske sage Pjesma leda i vatre.'),(23,'Mesa Selimovic','Bosanskohercegovački pisac, autor romana Derviš i smrt.'),(24,'Cormac McCarthy','Američki pisac, autor romana Cesta i Krvavi meridijan.'),(25,'Neil Gaiman','Britanski autor fantastičnih romana, uključujući Američke bogove.'),(26,'David Mitchell','Britanski pisac, najpoznatiji po romanu Atlas oblaka.'),(27,'Paulo Coelho','Brazilski autor duhovnih romana, poznat po Alkemičaru.'),(28,'Stephen King','Američki pisac horora, autor Isijavanja i To.'),(29,'Isaac Asimov','Američki pisac znanstvene fantastike, tvorac Zakona robotike.'),(30,'Agatha Christie','Britanska autorica kriminalističkih romana, stvorila Herculea Poirota.');
/*!40000 ALTER TABLE `autori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `broj_posudbi_po_izdavacu`
--

DROP TABLE IF EXISTS `broj_posudbi_po_izdavacu`;
/*!50001 DROP VIEW IF EXISTS `broj_posudbi_po_izdavacu`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `broj_posudbi_po_izdavacu` AS SELECT 
 1 AS `IzdavacID`,
 1 AS `Izdavac`,
 1 AS `BrojPosudbi`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `clanovi`
--

DROP TABLE IF EXISTS `clanovi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clanovi` (
  `ClanID` int NOT NULL AUTO_INCREMENT,
  `Ime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Prezime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kontakt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DatumPrijave` date DEFAULT NULL,
  PRIMARY KEY (`ClanID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clanovi`
--

LOCK TABLES `clanovi` WRITE;
/*!40000 ALTER TABLE `clanovi` DISABLE KEYS */;
INSERT INTO `clanovi` VALUES (1,'Dejan','Jelavić','060 169 435','2025-02-16'),(2,'Milka','Vučković','048 639 047','2020-07-22'),(3,'Zlatko','Bazjak','047 507 921','2023-04-23'),(4,'Patrik','Štefanec','048 596 649','2022-08-15'),(5,'Zdravko','Milatić','034 576 862','2021-06-12'),(6,'Maja','Colić','060 647 997','2021-12-14'),(7,'Marta','Harapin','097 8533 284','2022-10-19'),(8,'Matea','Kostelac','040 604 527','2020-03-23'),(9,'Tomo','Jurlina','072 341 350','2020-10-12'),(10,'Lara','Kevo','099 1779 424','2023-09-17'),(11,'Ljubica','Pešić','023 715 835','2023-03-14'),(12,'Nikša','Škrlin','095 7898 870','2021-02-28'),(13,'Zoran','Sinožić','091 5936 409','2023-01-29'),(14,'Dino','Čiš','01 0156 067','2021-08-21'),(15,'Jasna','Rumora','049 073 351','2024-04-20'),(16,'Mirjana','Boban','042 061 686','2024-03-14'),(17,'Mira','Legović','042 210 464','2020-07-31'),(18,'Luka','Božičević','047 423 633','2020-06-20'),(19,'Ivanka','Šuran','042 388 217','2020-03-24'),(20,'Rudolf','Lukša','051 776 700','2020-12-25'),(21,'Fran','Zebec','042 651 450','2021-09-17'),(22,'Dušan','Lasić','01 7103 595','2022-11-21'),(23,'Roko','Perić','035 086 031','2021-08-28'),(24,'Marijana','Abičić','020 674 632','2021-05-17'),(25,'Ilija','Radinović','023 785 673','2022-08-23'),(26,'Biljana','Marijanović','022 455 488','2021-08-08'),(27,'Petra','Stipanović','072 644 289','2021-08-27'),(28,'Filip','Crevar','043 579 254','2024-03-25'),(29,'Petar','Nikolić','049 384 616','2022-02-18'),(30,'Danica','Legović','020 772 916','2022-02-22'),(31,'Rudolf','Brandić','044 896 110','2024-05-15'),(32,'Jadranka','Halambek','052 264 657','2024-11-02'),(33,'Tomo','Majdenić','097 3931 033','2021-05-17'),(34,'Kate','Didović','048 352 085','2021-04-24'),(35,'Mara','Seničić','0800 93 84','2020-12-18'),(36,'Eva','Glavor','020 526 233','2022-05-07'),(37,'Snježana','Smoković','091 7970 608','2022-11-20'),(38,'Joško','Darojković','074 572 696','2020-04-16'),(39,'Mirko','Pavić','052 872 552','2022-07-16'),(40,'Andrea','Mirosavljević','022 357 014','2020-07-19'),(41,'Antonija','Pleše','044 496 410','2024-07-22'),(42,'Ruža','Radelić','095 3126 779','2023-08-07'),(43,'Štefanija','Stiperski','072 979 504','2021-05-30'),(44,'Damir','Barnaba','097 4998 339','2024-11-18'),(45,'Ivana','Jasprica','052 829 886','2022-11-16'),(46,'Suzana','Simić','051 575 956','2023-03-25'),(47,'Zoran','Raspor','031 883 167','2025-02-24'),(48,'Ivka','Matahlija','052 447 544','2024-05-02'),(49,'Leon','Ribić','034 551 152','2021-09-14'),(50,'Gordana','Županić','044 112 289','2020-10-27'),(51,'Pavao','Pavin','034 031 161','2022-09-08'),(52,'Anto','Kramarić','031 105 837','2025-02-05'),(53,'Katarina','Lukša','060 250 549','2022-06-22'),(54,'Rozalija','Ferenac','042 289 269','2024-09-07'),(55,'Boris','Tisaj','035 229 023','2024-01-03'),(56,'Katica','Grgurovac','01 1289 203','2020-05-15'),(57,'Tomo','Kelečić','048 212 585','2024-02-10'),(58,'Franciska','Škrtić','099 5712 944','2022-01-14'),(59,'Mare','Vela','020 062 255','2021-10-27'),(60,'Domagoj','Barić','01 5018 440','2021-06-24'),(61,'Katica','Batrnek','091 6384 847','2021-08-02'),(62,'Antonio','Živić','060 066 740','2020-11-22'),(63,'Mateo','Lucić','023 751 722','2024-12-03'),(64,'Toni','Horvatek','031 699 083','2020-09-28'),(65,'Marin','Gracin','031 647 137','2023-05-28'),(66,'Nataša','Marijanović','034 919 896','2021-11-19'),(67,'Anita','Macan','098 8556 608','2025-02-13'),(68,'Sandra','Špika','051 575 002','2024-08-07'),(69,'Mate','Hinić','099 0336 062','2022-04-23'),(70,'Mare','Šalić','01 7355 454','2020-07-11'),(71,'Hana','Zeba','032 809 010','2022-09-18'),(72,'Matija','Britvec','098 7773 368','2022-10-23'),(73,'Mislav','Golubić','074 141 428','2023-06-18'),(74,'Goran','Malnar','052 604 781','2021-10-24'),(75,'Mijo','Britvec','040 172 930','2023-11-20'),(76,'Zora','Rebić','099 4263 996','2022-07-14'),(77,'Mijo','Čupić','053 820 013','2022-07-23'),(78,'Matija','Barić','040 966 397','2022-08-07'),(79,'Duje','Norac','040 059 243','2024-07-19'),(80,'Ružica','Predovan','051 384 015','2024-02-24'),(81,'Božo','Trutanić','031 042 247','2022-11-17'),(82,'Luka','Miletić','044 388 299','2021-09-14'),(83,'Anton','Blažičko','051 193 019','2022-11-09'),(84,'Anđela','Prskalo','020 572 011','2020-10-22'),(85,'Ljiljana','Jurić','043 460 242','2020-08-28'),(86,'Milena','Dautović','092 6514 326','2022-12-07'),(87,'Štefica','Liber','051 500 616','2022-07-07'),(88,'Zvonko','Miše','091 2731 496','2025-02-03'),(89,'Janja','Matovina','020 811 732','2023-12-01'),(90,'Jasna','Bušljeta','034 339 151','2022-06-15'),(91,'Jelena','Hrvojić','053 685 278','2023-01-27'),(92,'Saša','Vincetić','031 441 164','2021-03-27'),(93,'Damir','Andrijević','095 6709 139','2020-05-17'),(94,'Janko','Petrović','040 797 427','2022-06-20'),(95,'Branka','Jurlina','040 114 695','2023-04-28'),(96,'Luka','Terzić','01 0385 550','2021-12-13'),(97,'Kate','Kocijančić','01 2489 237','2020-12-14'),(98,'Filip','Gregov','022 940 887','2023-09-23'),(99,'Milena','Dujmović','021 874 938','2024-10-11'),(100,'Dominik','Tudor','023 092 635','2020-09-06'),(101,'Stjepan','Meić','051 526 807','2025-01-04'),(102,'Milka','Žugec','048 076 180','2023-12-17'),(103,'Petra','Josipović','023 687 030','2021-05-28'),(104,'Nada','Nikolić','043 108 963','2024-11-27'),(105,'Milica','Gredičak','095 4212 161','2020-07-27'),(106,'Patrik','Peša','01 0017 914','2021-03-30'),(107,'Karla','Stojanov','023 808 805','2020-11-04'),(108,'Kata','Blagaić','048 427 368','2020-08-14'),(109,'Sara','Botić','052 693 132','2021-03-23'),(110,'Lea','Šelendić','021 553 179','2021-10-16'),(111,'Josip','Papak','023 904 398','2022-02-08'),(112,'Terezija','Burčul','01 8660 167','2021-12-19'),(113,'Vera','Radović','097 4459 391','2020-06-19'),(114,'Joso','Matahlija','052 303 899','2023-03-03'),(115,'Kate','Sedlar','053 798 666','2020-10-31'),(116,'Franjo','Božanić','01 9478 172','2020-07-16'),(117,'Slavko','Stipanović','098 7445 909','2023-08-05'),(118,'Barbara','Bradić','074 110 490','2020-10-22'),(119,'Maja','Sorić','0800 77 43','2023-01-10'),(120,'Mihael','Kinkela','095 5656 063','2021-08-14'),(121,'Mihael','Vukobratović','060 791 282','2024-09-07'),(122,'Biljana','Crevar','022 816 042','2025-02-20'),(123,'Božena','Klanac','035 675 701','2020-07-13'),(124,'Anto','Klarin','053 693 409','2023-10-26'),(125,'Suzana','Batrnek','023 843 910','2022-09-04'),(126,'Janko','Miklečić','033 310 330','2024-07-04'),(127,'Zdenka','Jelavić','01 2937 281','2023-03-28'),(128,'Ivan','Grubišić','092 8718 431','2020-07-25'),(129,'Anton','Turčinov','072 907 588','2021-11-04'),(130,'Anđela','Flego','034 714 960','2022-01-06'),(131,'Sandra','Ćorić','023 723 639','2022-01-09'),(132,'Mate','Sokač','032 350 737','2022-11-10'),(133,'Nikša','Jugovac','034 738 031','2022-02-23'),(134,'Patrik','Guberović','043 421 182','2021-10-19'),(135,'Hana','Čulina','020 700 460','2024-10-25'),(136,'Pero','Milovac','048 410 456','2024-10-31'),(137,'Anica','Barnaba','01 8324 496','2024-09-26'),(138,'Lara','Kaniški','020 655 507','2024-11-06'),(139,'Ivo','Vuljak','098 7964 243','2022-02-06'),(140,'Tea','Pedišić','053 123 973','2020-05-26'),(141,'Mile','Antić','033 019 017','2020-06-02'),(142,'Ivka','Debelić','044 533 622','2022-05-10'),(143,'Marijana','Žužić','031 617 081','2021-03-08'),(144,'Marijan','Risek','049 032 621','2025-02-28'),(145,'Kristina','Lukšić','023 735 368','2022-09-26'),(146,'Marin','Mikulandra','099 3340 191','2020-03-26'),(147,'Dino','Pešić','022 706 200','2021-09-30'),(148,'Mara','Karagić','072 504 731','2024-11-22'),(149,'Iva','Pajur','023 812 425','2022-10-20'),(150,'Kristijan','Brlek','020 140 902','2020-04-09'),(151,'Dalibor','Mimica','052 468 586','2022-01-04'),(152,'Hrvoje','Tudić','043 529 640','2023-07-01'),(153,'Dražen','Čović','032 977 748','2024-09-21'),(154,'Mato','Matokanović','091 3453 277','2021-07-02'),(155,'Roko','Antonić','098 8699 221','2021-04-29'),(156,'Veronika','Jurišić','020 440 452','2023-03-30'),(157,'Martin','Vidov','040 296 605','2023-01-25'),(158,'Petra','Balić','095 0344 259','2023-01-24'),(159,'Marina','Ercegović','021 293 694','2024-01-17'),(160,'Marta','Kokanović','022 048 782','2021-05-06'),(161,'Branka','Čargonja','032 459 207','2020-07-13'),(162,'Božica','Sever','052 412 908','2023-09-13'),(163,'Goran','Eršek','033 134 264','2021-07-04'),(164,'Valentina','Kovačić','095 8973 665','2023-02-19'),(165,'Marija','Morić','052 943 886','2022-12-01'),(166,'Marina','Kovaček','031 401 440','2024-06-14'),(167,'Nikša','Lazar','097 1111 288','2023-01-28'),(168,'Aldo','Drakulić','072 402 474','2021-10-28'),(169,'Dragica','Šelendić','032 891 567','2020-10-30'),(170,'Lovre','Meić','095 5581 099','2024-11-15'),(171,'Ilija','Damjanović','035 175 987','2023-12-14'),(172,'Andrea','Vidović','032 376 903','2025-01-08'),(173,'Lovre','Perkov','042 295 730','2022-12-05'),(174,'Karlo','Barbir','074 227 409','2023-01-26'),(175,'Nikša','Balatinac','01 9904 309','2025-02-18'),(176,'Dominik','Majdenić','032 327 157','2023-11-04'),(177,'Milka','Stančin','048 381 016','2021-03-17'),(178,'Igor','Palić','043 490 277','2023-08-26'),(179,'Kristina','Radinović','052 479 662','2020-07-03'),(180,'Zlatko','Šitum','035 072 888','2023-07-22'),(181,'Zdenka','Stančin','031 699 438','2023-09-08'),(182,'Dino','Miočić','092 0218 611','2020-07-26'),(183,'Milan','Toić','031 557 439','2021-08-17'),(184,'Miroslav','Sršen','048 356 642','2023-03-15'),(185,'Jasminka','Turina','097 1591 519','2022-03-29'),(186,'Hrvoje','Grgurević','044 513 277','2021-06-11'),(187,'Zorka','Pavelić','097 1886 114','2021-10-11'),(188,'Jure','Štimac','044 643 135','2022-02-11'),(189,'Jakov','Vučetić','092 4732 956','2024-10-20'),(190,'Anita','Bogović','033 021 782','2024-08-23'),(191,'Nika','Puharić','095 6445 132','2023-05-01'),(192,'Marija','Pleše','035 461 659','2023-08-11'),(193,'Dalibor','Bračun','020 105 474','2025-01-17'),(194,'Ljubica','Dragičević','035 182 349','2023-09-14'),(195,'Sara','Kraljić','023 861 034','2024-02-25'),(196,'Siniša','Pleše','049 214 429','2022-08-27'),(197,'Marica','Ljubetić','031 768 504','2024-12-21'),(198,'Draga','Sorić','023 715 119','2022-11-12'),(199,'Mara','Kostelac','099 4827 567','2020-04-01'),(200,'Marina','Putinja','020 813 118','2020-12-07');
/*!40000 ALTER TABLE `clanovi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dogadaji`
--

DROP TABLE IF EXISTS `dogadaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dogadaji` (
  `DogadajID` int NOT NULL AUTO_INCREMENT,
  `NazivDogadaja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Datum` date DEFAULT NULL,
  `Opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`DogadajID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dogadaji`
--

LOCK TABLES `dogadaji` WRITE;
/*!40000 ALTER TABLE `dogadaji` DISABLE KEYS */;
INSERT INTO `dogadaji` VALUES (1,'Predstavljanje nove knjige','2025-03-15','Autorsko predstavljanje nove knjige domaćeg pisca.'),(2,'Čitateljski klub','2025-03-20','Mjesečni sastanak čitateljskog kluba za raspravu o zadanoj knjizi.'),(3,'Radionica kreativnog pisanja','2025-04-05','Radionica za sve zainteresirane za razvijanje vještina pisanja.'),(4,'Dječja pričaonica','2025-04-10','Čitanje priča za djecu i kreativne aktivnosti.'),(5,'Književna večer s piscem','2025-04-18','Gostovanje poznatog književnika i razgovor o njegovim djelima.'),(6,'Povijesna predavanja','2025-04-25','Predavanje o hrvatskoj književnoj baštini.'),(7,'Natjecanje u recitiranju poezije','2025-05-02','Školsko natjecanje u kazivanju poezije.'),(8,'Tečaj brzog čitanja','2025-05-10','Radionica za poboljšanje tehnika brzog i učinkovitog čitanja.'),(9,'Književni kviz','2025-05-20','Natjecateljski kviz o književnim djelima i piscima.'),(10,'Humanitarna akcija - daruj knjigu','2025-05-30','Prikupljanje knjiga za školske i gradske knjižnice.'),(11,'Radionica ilustracije','2025-06-05','Kreativna radionica crtanja i ilustriranja knjiga.'),(12,'Predavanje o digitalnim knjigama','2025-06-15','Razgovor o prednostima i izazovima digitalnog izdavaštva.'),(13,'Tjedan poezije','2025-06-20','Čitanje poezije i gostovanje pjesnika.'),(14,'Book swap','2025-07-01','Razmjena knjiga među ljubiteljima čitanja.'),(15,'Ljetno čitanje u parku','2025-07-10','Organizirano čitanje i razgovor o knjigama na otvorenom.'),(16,'Noć knjige','2025-07-20','Cjelonoćno druženje uz knjige i čitanje.'),(17,'Strip radionica','2025-07-30','Uvod u crtanje stripova i stvaranje priča kroz slike.'),(18,'Mala škola pisanja priča','2025-08-05','Radionica za mlade autore u nastajanju.'),(19,'Diskusija o klasičnoj književnosti','2025-08-15','Otvorena rasprava o djelima svjetskih klasika.'),(20,'Gostovanje poznatog prevoditelja','2025-08-25','Razgovor o prevođenju i izazovima književnog prijevoda.'),(21,'Filmska večer - ekranizacije knjiga','2025-09-05','Prikaz filmova snimljenih prema književnim djelima.'),(22,'Radionica bajkopisanja','2025-09-15','Pisanje vlastitih bajki i priča za djecu.'),(23,'Tjedan znanstvene fantastike','2025-09-25','Predstavljanje SF književnosti i rasprave o najpoznatijim djelima.'),(24,'Kazališna adaptacija romana','2025-10-05','Predstavljanje kazališnih adaptacija književnih klasika.'),(25,'Poezija u pokretu','2025-10-15','Ulični performansi čitanja poezije na javnim mjestima.'),(26,'Pisanje eseja','2025-10-25','Radionica za učenike i studente o pisanju eseja.'),(27,'Predstavljanje domaćih autora','2025-11-05','Mladi autori predstavljaju svoja djela.'),(28,'Dan stripa','2025-11-15','Tribina o povijesti i značaju stripa.'),(29,'Edukacija o knjižnicama','2025-11-25','Kako koristiti resurse knjižnice za učenje i istraživanje.'),(30,'Čitanje na glas za slijepe i slabovidne','2025-12-05','Volontersko čitanje knjiga za osobe s oštećenjem vida.');
/*!40000 ALTER TABLE `dogadaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventar`
--

DROP TABLE IF EXISTS `inventar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventar` (
  `InventarID` int NOT NULL AUTO_INCREMENT,
  `KnjigaID` int NOT NULL,
  `DatumNabavke` date DEFAULT NULL,
  `Stanje` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`InventarID`),
  KEY `KnjigaID` (`KnjigaID`),
  CONSTRAINT `inventar_ibfk_1` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventar`
--

LOCK TABLES `inventar` WRITE;
/*!40000 ALTER TABLE `inventar` DISABLE KEYS */;
INSERT INTO `inventar` VALUES (1,1,'2024-10-30','Izgubljeno'),(2,2,'2023-09-24','Dobro'),(3,3,'2023-01-23','Oštećeno'),(4,4,'2024-09-05','Izgubljeno'),(5,5,'2022-12-09','Izgubljeno'),(6,6,'2021-11-02','Novo'),(7,7,'2024-06-23','Dobro'),(8,8,'2020-03-18','Izgubljeno'),(9,9,'2020-07-07','Oštećeno'),(10,10,'2019-11-09','Izgubljeno'),(11,11,'2020-02-20','Izgubljeno'),(12,12,'2019-11-12','Oštećeno'),(13,13,'2024-04-20','Izgubljeno'),(14,14,'2022-09-08','Izgubljeno'),(15,15,'2022-11-08','Izgubljeno'),(16,16,'2021-09-06','Novo'),(17,17,'2020-11-28','Oštećeno'),(18,18,'2021-08-11','Oštećeno'),(19,19,'2021-07-10','Dobro'),(20,20,'2024-02-14','Dobro'),(21,21,'2022-09-18','Oštećeno'),(22,22,'2020-04-30','Novo'),(23,23,'2022-02-16','Izgubljeno'),(24,24,'2024-08-07','Novo'),(25,25,'2024-01-22','Dobro'),(26,26,'2022-06-21','Novo'),(27,27,'2022-01-22','Oštećeno'),(28,28,'2020-12-11','Oštećeno'),(29,29,'2019-10-02','Oštećeno'),(30,30,'2020-08-19','Dobro'),(31,31,'2023-07-26','Oštećeno'),(32,32,'2021-07-12','Izgubljeno'),(33,33,'2022-08-30','Novo'),(34,34,'2020-05-29','Dobro'),(35,35,'2020-11-09','Dobro'),(36,36,'2024-08-25','Oštećeno'),(37,37,'2020-10-06','Oštećeno'),(38,38,'2022-01-10','Dobro'),(39,39,'2020-07-06','Novo'),(40,40,'2021-10-12','Dobro'),(41,41,'2021-01-23','Oštećeno'),(42,42,'2021-02-18','Oštećeno'),(43,43,'2021-08-04','Izgubljeno'),(44,44,'2024-05-17','Dobro'),(45,45,'2023-04-14','Izgubljeno'),(46,46,'2024-09-29','Novo'),(47,47,'2020-01-29','Oštećeno'),(48,48,'2020-04-14','Izgubljeno'),(49,49,'2023-06-18','Izgubljeno'),(50,50,'2019-10-08','Novo'),(51,51,'2019-10-06','Novo'),(52,52,'2021-10-09','Dobro'),(53,53,'2021-04-06','Izgubljeno'),(54,54,'2024-09-02','Oštećeno'),(55,55,'2023-12-26','Oštećeno'),(56,56,'2021-03-05','Oštećeno'),(57,57,'2019-12-27','Dobro'),(58,58,'2024-01-07','Izgubljeno'),(59,59,'2020-12-03','Novo'),(60,60,'2021-02-20','Oštećeno'),(61,61,'2023-04-05','Oštećeno'),(62,62,'2024-11-03','Dobro'),(63,63,'2023-04-26','Oštećeno'),(64,64,'2021-11-29','Novo'),(65,65,'2021-11-14','Novo'),(66,66,'2024-03-18','Oštećeno'),(67,67,'2022-05-09','Oštećeno'),(68,68,'2023-06-29','Novo'),(69,69,'2022-09-21','Dobro'),(70,70,'2023-08-22','Oštećeno'),(71,71,'2020-10-06','Dobro'),(72,72,'2021-06-13','Oštećeno'),(73,73,'2020-03-16','Oštećeno'),(74,74,'2022-08-11','Dobro'),(75,75,'2021-01-16','Novo'),(76,76,'2023-02-26','Oštećeno'),(77,77,'2024-10-01','Novo'),(78,78,'2021-01-19','Oštećeno'),(79,79,'2022-01-27','Oštećeno'),(80,80,'2019-10-28','Dobro'),(81,81,'2020-10-08','Oštećeno'),(82,82,'2021-12-04','Oštećeno'),(83,83,'2019-11-09','Novo'),(84,84,'2023-03-06','Oštećeno'),(85,85,'2023-04-21','Oštećeno'),(86,86,'2023-07-24','Oštećeno'),(87,87,'2021-04-03','Dobro'),(88,88,'2021-05-23','Dobro'),(89,89,'2023-08-17','Novo'),(90,90,'2020-10-12','Dobro'),(91,91,'2022-09-07','Novo'),(92,92,'2023-08-16','Dobro'),(93,93,'2022-05-20','Izgubljeno'),(94,94,'2019-12-05','Dobro'),(95,95,'2023-01-21','Novo'),(96,96,'2021-07-26','Izgubljeno'),(97,97,'2022-09-19','Novo'),(98,98,'2022-09-01','Novo'),(99,99,'2023-01-19','Dobro'),(100,100,'2021-05-29','Izgubljeno'),(101,101,'2022-11-11','Oštećeno'),(102,102,'2023-12-15','Novo'),(103,103,'2023-08-30','Dobro'),(104,104,'2024-09-13','Oštećeno'),(105,105,'2021-10-20','Izgubljeno'),(106,106,'2024-01-09','Izgubljeno'),(107,107,'2020-09-22','Izgubljeno'),(108,108,'2023-01-17','Dobro'),(109,109,'2020-03-15','Izgubljeno'),(110,110,'2024-07-30','Novo'),(111,111,'2019-10-20','Oštećeno'),(112,112,'2021-01-17','Dobro'),(113,113,'2022-04-25','Izgubljeno'),(114,114,'2020-09-09','Izgubljeno'),(115,115,'2024-03-05','Novo'),(116,116,'2023-08-26','Izgubljeno'),(117,117,'2024-05-29','Dobro'),(118,118,'2020-02-02','Novo'),(119,119,'2021-02-07','Oštećeno'),(120,120,'2021-11-08','Dobro'),(121,121,'2024-04-15','Oštećeno'),(122,122,'2021-07-04','Dobro'),(123,123,'2024-11-15','Dobro'),(124,124,'2020-03-01','Dobro'),(125,125,'2024-05-26','Novo'),(126,126,'2023-05-12','Izgubljeno'),(127,127,'2024-03-29','Dobro'),(128,128,'2020-08-07','Novo'),(129,129,'2022-11-25','Dobro'),(130,130,'2021-09-07','Oštećeno'),(131,131,'2020-02-22','Dobro'),(132,132,'2023-10-07','Oštećeno'),(133,133,'2024-08-08','Dobro'),(134,134,'2024-04-24','Dobro'),(135,135,'2022-01-14','Novo'),(136,136,'2020-07-12','Oštećeno'),(137,137,'2021-09-16','Dobro'),(138,138,'2021-10-22','Oštećeno'),(139,139,'2022-05-05','Dobro'),(140,140,'2022-02-21','Oštećeno'),(141,141,'2024-04-14','Dobro'),(142,142,'2024-02-03','Novo'),(143,143,'2022-07-03','Novo'),(144,144,'2021-03-19','Oštećeno'),(145,145,'2020-03-14','Izgubljeno'),(146,146,'2022-05-30','Oštećeno'),(147,147,'2023-08-01','Novo'),(148,148,'2021-06-23','Izgubljeno'),(149,149,'2023-05-21','Oštećeno'),(150,150,'2020-04-04','Oštećeno'),(151,151,'2024-03-19','Oštećeno'),(152,152,'2020-09-07','Novo'),(153,153,'2021-08-24','Dobro'),(154,154,'2024-09-21','Izgubljeno'),(155,155,'2024-06-21','Dobro'),(156,156,'2020-03-22','Novo'),(157,157,'2021-03-16','Oštećeno'),(158,158,'2021-07-02','Oštećeno'),(159,159,'2024-11-20','Novo'),(160,160,'2024-10-21','Novo'),(161,161,'2024-06-15','Novo'),(162,162,'2023-12-02','Izgubljeno'),(163,163,'2023-06-23','Novo'),(164,164,'2021-09-17','Oštećeno'),(165,165,'2024-03-24','Oštećeno'),(166,166,'2022-11-05','Izgubljeno'),(167,167,'2021-08-03','Oštećeno'),(168,168,'2023-02-20','Novo'),(169,169,'2022-10-05','Izgubljeno'),(170,170,'2022-07-12','Novo'),(171,171,'2019-12-16','Dobro'),(172,172,'2023-03-24','Izgubljeno'),(173,173,'2024-11-16','Oštećeno'),(174,174,'2022-12-17','Dobro'),(175,175,'2022-09-06','Dobro'),(176,176,'2021-12-29','Novo'),(177,177,'2021-11-04','Izgubljeno'),(178,178,'2023-10-10','Novo'),(179,179,'2023-09-09','Novo'),(180,180,'2020-02-24','Izgubljeno'),(181,181,'2020-12-25','Oštećeno'),(182,182,'2020-09-29','Dobro'),(183,183,'2020-06-10','Izgubljeno'),(184,184,'2022-06-03','Dobro'),(185,185,'2019-12-04','Izgubljeno'),(186,186,'2023-12-10','Novo'),(187,187,'2020-05-22','Oštećeno'),(188,188,'2024-01-26','Novo'),(189,189,'2020-07-23','Oštećeno'),(190,190,'2020-09-23','Izgubljeno'),(191,191,'2020-07-13','Oštećeno'),(192,192,'2023-03-13','Oštećeno'),(193,193,'2022-10-18','Dobro'),(194,194,'2021-08-26','Dobro'),(195,195,'2021-06-23','Oštećeno'),(196,196,'2023-01-13','Izgubljeno'),(197,197,'2021-11-16','Dobro'),(198,198,'2020-07-06','Dobro'),(199,199,'2021-03-01','Oštećeno'),(200,200,'2024-08-27','Izgubljeno');
/*!40000 ALTER TABLE `inventar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `izdavaci`
--

DROP TABLE IF EXISTS `izdavaci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `izdavaci` (
  `IzdavacID` int NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Adresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Kontakt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`IzdavacID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `izdavaci`
--

LOCK TABLES `izdavaci` WRITE;
/*!40000 ALTER TABLE `izdavaci` DISABLE KEYS */;
INSERT INTO `izdavaci` VALUES (1,'Školska knjiga','Masarykova 28, 10000 Zagreb','01 6130 000'),(2,'Algoritam','Gajeva 1, 10000 Zagreb','01 4816 100'),(3,'Profil','Kaptol 25, 10000 Zagreb','01 6303 000'),(4,'Mozaik knjiga','Slavonska avenija 4, 10000 Zagreb','01 6315 000'),(5,'VBZ','Ulica kneza Branimira 28, 10000 Zagreb','01 6112 998'),(6,'Fraktura','Ulica kneza Mislava 17, 10000 Zagreb','01 3357 971'),(7,'Ljevak','Trg bana Josipa Jelačića 17, 10000 Zagreb','01 4814 649'),(8,'Znanje','Slavonska avenija 2, 10000 Zagreb','01 6121 200'),(9,'Planetopija','Ilica 68, 10000 Zagreb','01 4846 197'),(10,'Sandorf','Ulica kneza Branimira 121, 10000 Zagreb','01 5813 058'),(11,'Srednja Europa','Savska cesta 50, 10000 Zagreb','01 3456 789'),(12,'Kašmir-Promet d.o.o.','Palmotićeva ulica 22, 10000 Zagreb','01 5678 123'),(13,'Pergamena d.o.o','Trg kralja Tomislava 12, 10000 Zagreb','01 6789 234'),(14,'Hangar 7','Maksimirska cesta 15, 10000 Zagreb','01 7890 345'),(15,'Harfa','Ilica 150, 10000 Zagreb','01 8901 456'),(16,'Hena Com','Zagrebačka avenija 104, 10000 Zagreb','01 9012 567'),(17,'Hoću knjigu','Avenija Dubrovnik 12, 10000 Zagreb','01 0123 678'),(18,'Hrvatska sveučilišna naklada','Vukovarska ulica 72, 10000 Zagreb','01 1234 789'),(19,'Ibis grafika','Martićeva ulica 17, 10000 Zagreb','01 2345 890'),(20,'Jesenski i Turk','Medulićeva ulica 14, 10000 Zagreb','01 3456 901');
/*!40000 ALTER TABLE `izdavaci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kasnovracanje`
--

DROP TABLE IF EXISTS `kasnovracanje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kasnovracanje` (
  `KasnoVracanjeID` int NOT NULL AUTO_INCREMENT,
  `PosudbaID` int NOT NULL,
  `DaniKasnjenja` int NOT NULL,
  `IznosKazne` decimal(10,2) NOT NULL,
  PRIMARY KEY (`KasnoVracanjeID`),
  KEY `PosudbaID` (`PosudbaID`),
  CONSTRAINT `kasnovracanje_ibfk_1` FOREIGN KEY (`PosudbaID`) REFERENCES `posudbe` (`PosudbaID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kasnovracanje`
--

LOCK TABLES `kasnovracanje` WRITE;
/*!40000 ALTER TABLE `kasnovracanje` DISABLE KEYS */;
INSERT INTO `kasnovracanje` VALUES (1,96,28,15.70),(2,16,15,13.29),(3,31,28,29.72),(4,159,19,34.00),(5,129,28,16.50),(6,116,5,9.17),(7,70,18,23.21),(8,171,20,28.21),(9,175,13,8.75),(10,46,1,1.23),(11,67,22,28.59),(12,183,5,6.90),(13,166,6,10.60),(14,79,9,17.75),(15,187,3,4.48),(16,178,27,33.11),(17,57,12,8.95),(18,153,28,51.96),(19,83,19,22.97),(20,69,22,38.42),(21,125,18,33.74),(22,17,12,9.10),(23,149,18,19.51),(24,94,14,20.79),(25,66,20,10.86),(26,61,7,12.57),(27,85,12,13.08),(28,68,15,12.66),(29,126,3,3.19),(30,133,29,20.33);
/*!40000 ALTER TABLE `kasnovracanje` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategorije`
--

DROP TABLE IF EXISTS `kategorije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorije` (
  `KategorijaID` int NOT NULL AUTO_INCREMENT,
  `Naziv` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Opis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`KategorijaID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategorije`
--

LOCK TABLES `kategorije` WRITE;
/*!40000 ALTER TABLE `kategorije` DISABLE KEYS */;
INSERT INTO `kategorije` VALUES (1,'Znanstvena fantastika','Priče o futurističkoj tehnologiji, svemirskim putovanjima i naprednim civilizacijama.'),(2,'Fantastika','Djela koja uključuju magiju, mitološka bića i nestvarne svjetove.'),(3,'Kriminalistika','Roman u kojem je središnji zaplet zločin i potraga za počiniteljem.'),(4,'Ljubavni roman','Priče koje naglašavaju romantične odnose i ljubavne zaplete.'),(5,'Povijesni roman','Radnja se odvija u prošlosti, često prikazujući stvarne povijesne događaje.'),(6,'Horor','Priče koje izazivaju strah, užas i napetost kod čitatelja.'),(7,'Psihološki triler','Napeti romani s naglaskom na mentalna stanja likova.'),(8,'Filozofski roman','Djela koja istražuju egzistencijalna i etička pitanja.'),(9,'Klasici','Književna djela koja su ostavila trajan utjecaj na svjetsku književnost.'),(10,'Avantura','Priče o putovanjima, istraživanjima i uzbudljivim događajima.'),(11,'Znanstvena fantastika','Priče o futurističkoj tehnologiji, svemirskim putovanjima i naprednim civilizacijama.'),(12,'Fantastika','Djela koja uključuju magiju, mitološka bića i nestvarne svjetove.'),(13,'Kriminalistika','Roman u kojem je središnji zaplet zločin i potraga za počiniteljem.'),(14,'Ljubavni roman','Priče koje naglašavaju romantične odnose i ljubavne zaplete.'),(15,'Povijesni roman','Radnja se odvija u prošlosti, često prikazujući stvarne povijesne događaje.'),(16,'Horor','Priče koje izazivaju strah, užas i napetost kod čitatelja.'),(17,'Psihološki triler','Napeti romani s naglaskom na mentalna stanja likova.'),(18,'Filozofski roman','Djela koja istražuju egzistencijalna i etička pitanja.'),(19,'Klasici','Književna djela koja su ostavila trajan utjecaj na svjetsku književnost.'),(20,'Avantura','Priče o putovanjima, istraživanjima i uzbudljivim događajima.'),(21,'Znanstvena fantastika','Priče o futurističkoj tehnologiji, svemirskim putovanjima i naprednim civilizacijama.'),(22,'Fantastika','Djela koja uključuju magiju, mitološka bića i nestvarne svjetove.'),(23,'Kriminalistika','Roman u kojem je središnji zaplet zločin i potraga za počiniteljem.'),(24,'Ljubavni roman','Priče koje naglašavaju romantične odnose i ljubavne zaplete.'),(25,'Povijesni roman','Radnja se odvija u prošlosti, često prikazujući stvarne povijesne događaje.'),(26,'Horor','Priče koje izazivaju strah, užas i napetost kod čitatelja.'),(27,'Psihološki triler','Napeti romani s naglaskom na mentalna stanja likova.'),(28,'Filozofski roman','Djela koja istražuju egzistencijalna i etička pitanja.'),(29,'Klasici','Književna djela koja su ostavila trajan utjecaj na svjetsku književnost.'),(30,'Avantura','Priče o putovanjima, istraživanjima i uzbudljivim događajima.');
/*!40000 ALTER TABLE `kategorije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kazne`
--

DROP TABLE IF EXISTS `kazne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kazne` (
  `KaznaID` int NOT NULL AUTO_INCREMENT,
  `PosudbaID` int NOT NULL,
  `Iznos` decimal(10,2) NOT NULL,
  `DatumIzdavanja` date DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`KaznaID`),
  KEY `PosudbaID` (`PosudbaID`),
  CONSTRAINT `kazne_ibfk_1` FOREIGN KEY (`PosudbaID`) REFERENCES `posudbe` (`PosudbaID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kazne`
--

LOCK TABLES `kazne` WRITE;
/*!40000 ALTER TABLE `kazne` DISABLE KEYS */;
INSERT INTO `kazne` VALUES (1,173,82.89,'2024-12-20','Plaćeno\r'),(2,70,22.70,'2024-08-11','Plaćeno\r'),(3,64,84.92,'2024-08-15','U obradi\r'),(4,179,14.44,'2024-08-09','Plaćeno\r'),(5,154,62.33,'2024-03-17','U obradi\r'),(6,92,73.38,'2024-10-21','Plaćeno\r'),(7,125,75.63,'2024-05-10','Plaćeno\r'),(8,123,94.59,'2024-06-30','U obradi\r'),(9,46,32.56,'2024-08-21','U obradi\r'),(10,192,49.74,'2024-09-02','Plaćeno\r'),(11,31,93.51,'2024-03-25','Neplaćeno\r'),(12,11,30.71,'2024-12-03','Plaćeno\r'),(13,36,17.21,'2024-11-20','Plaćeno\r'),(14,100,20.00,'2024-10-20','Plaćeno\r'),(15,101,56.60,'2025-01-18','Plaćeno\r'),(16,87,48.68,'2024-04-26','U obradi\r'),(17,154,55.79,'2024-04-27','Plaćeno\r'),(18,24,45.97,'2025-01-07','U obradi\r'),(19,111,71.96,'2024-06-13','Neplaćeno\r'),(20,108,74.84,'2025-02-12','Neplaćeno\r'),(21,139,22.95,'2025-01-02','Neplaćeno\r'),(22,113,50.61,'2024-08-23','U obradi\r'),(23,53,72.80,'2025-01-25','Neplaćeno\r'),(24,164,63.42,'2024-07-31','U obradi\r'),(25,193,76.32,'2025-01-07','Neplaćeno\r'),(26,101,30.16,'2024-08-30','Plaćeno\r'),(27,15,70.64,'2024-06-03','Neplaćeno\r'),(28,45,27.59,'2024-08-06','Neplaćeno\r'),(29,101,5.46,'2024-07-11','U obradi\r'),(30,6,72.87,'2024-07-16','Neplaćeno\r');
/*!40000 ALTER TABLE `kazne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knjigaautori`
--

DROP TABLE IF EXISTS `knjigaautori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knjigaautori` (
  `KnjigaID` int NOT NULL,
  `AutorID` int NOT NULL,
  PRIMARY KEY (`KnjigaID`,`AutorID`),
  KEY `AutorID` (`AutorID`),
  CONSTRAINT `knjigaautori_ibfk_1` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`),
  CONSTRAINT `knjigaautori_ibfk_2` FOREIGN KEY (`AutorID`) REFERENCES `autori` (`AutorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knjigaautori`
--

LOCK TABLES `knjigaautori` WRITE;
/*!40000 ALTER TABLE `knjigaautori` DISABLE KEYS */;
INSERT INTO `knjigaautori` VALUES (1,1),(6,1),(14,1),(20,1),(30,1),(36,1),(92,1),(106,1),(126,1),(160,1),(171,1),(178,1),(70,2),(84,2),(114,2),(152,2),(167,2),(15,3),(44,3),(61,3),(104,3),(159,3),(5,4),(47,4),(54,4),(71,4),(118,4),(174,4),(22,5),(57,5),(58,5),(62,5),(68,5),(120,5),(131,5),(145,5),(10,6),(39,6),(83,6),(90,6),(136,6),(196,6),(48,7),(64,7),(72,7),(127,7),(142,7),(23,8),(33,8),(43,8),(125,8),(8,9),(32,9),(34,9),(59,9),(121,9),(128,9),(133,9),(135,9),(184,9),(190,9),(200,9),(12,10),(55,10),(74,10),(176,10),(197,10),(19,11),(105,11),(11,12),(16,12),(67,12),(101,12),(166,12),(169,12),(185,12),(199,12),(18,13),(50,13),(51,13),(79,13),(109,13),(150,13),(7,14),(75,14),(76,14),(77,14),(112,14),(134,14),(191,14),(28,15),(111,15),(148,15),(154,15),(192,15),(17,16),(35,16),(60,16),(69,16),(119,16),(149,16),(153,16),(163,16),(188,16),(193,16),(195,16),(4,17),(38,17),(45,17),(56,17),(95,17),(140,17),(98,18),(99,18),(172,18),(181,18),(9,19),(27,19),(29,19),(31,19),(87,19),(103,19),(108,19),(124,19),(129,19),(143,19),(147,19),(170,19),(189,19),(13,20),(41,20),(89,20),(21,21),(37,21),(63,21),(65,21),(88,21),(102,21),(137,21),(155,21),(164,21),(177,21),(3,22),(86,22),(97,22),(100,22),(122,22),(138,22),(144,22),(25,23),(93,23),(94,23),(113,23),(194,23),(66,24),(78,24),(107,24),(116,24),(132,24),(175,24),(180,24),(40,25),(49,25),(53,25),(130,25),(146,25),(157,25),(162,25),(198,25),(24,26),(82,26),(110,26),(183,26),(186,26),(187,26),(26,27),(52,27),(85,27),(115,27),(141,27),(165,27),(168,27),(179,27),(42,28),(73,28),(80,28),(91,28),(2,29),(96,29),(123,29),(139,29),(151,29),(156,29),(158,29),(161,29),(173,29),(46,30),(81,30),(117,30),(182,30);
/*!40000 ALTER TABLE `knjigaautori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knjigadogadaji`
--

DROP TABLE IF EXISTS `knjigadogadaji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knjigadogadaji` (
  `KnjigaID` int NOT NULL,
  `DogadajID` int NOT NULL,
  PRIMARY KEY (`KnjigaID`,`DogadajID`),
  KEY `DogadajID` (`DogadajID`),
  CONSTRAINT `knjigadogadaji_ibfk_1` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`),
  CONSTRAINT `knjigadogadaji_ibfk_2` FOREIGN KEY (`DogadajID`) REFERENCES `dogadaji` (`DogadajID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knjigadogadaji`
--

LOCK TABLES `knjigadogadaji` WRITE;
/*!40000 ALTER TABLE `knjigadogadaji` DISABLE KEYS */;
INSERT INTO `knjigadogadaji` VALUES (179,1),(191,1),(116,3),(30,4),(56,5),(62,5),(148,6),(194,6),(21,7),(111,7),(4,8),(30,8),(35,9),(142,9),(52,10),(116,10),(37,13),(40,14),(74,14),(164,14),(186,14),(115,15),(167,15),(118,16),(13,17),(121,17),(48,18),(56,18),(75,18),(167,18),(154,19),(122,20),(8,21),(37,21),(179,21),(129,22),(170,22),(41,24),(48,24),(173,24),(142,25),(6,26),(36,26),(167,27),(25,28),(63,28),(127,29),(95,30),(128,30),(153,30);
/*!40000 ALTER TABLE `knjigadogadaji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knjige`
--

DROP TABLE IF EXISTS `knjige`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knjige` (
  `KnjigaID` int NOT NULL AUTO_INCREMENT,
  `Naslov` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ISBN` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `GodinaIzdavanja` year DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IzdavacID` int DEFAULT NULL,
  `KategorijaID` int DEFAULT NULL,
  PRIMARY KEY (`KnjigaID`),
  KEY `IzdavacID` (`IzdavacID`),
  KEY `KategorijaID` (`KategorijaID`),
  CONSTRAINT `fk_knjige_izdavac` FOREIGN KEY (`IzdavacID`) REFERENCES `izdavaci` (`IzdavacID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `knjige_ibfk_1` FOREIGN KEY (`IzdavacID`) REFERENCES `izdavaci` (`IzdavacID`),
  CONSTRAINT `knjige_ibfk_2` FOREIGN KEY (`KategorijaID`) REFERENCES `kategorije` (`KategorijaID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knjige`
--

LOCK TABLES `knjige` WRITE;
/*!40000 ALTER TABLE `knjige` DISABLE KEYS */;
INSERT INTO `knjige` VALUES (1,'Romeo i Julija','756-90-49802-3',1951,'Rezervirano',4,6),(2,'Noćni vlak za Lisabon','337-29-28163-4',1917,'Dostupno',4,3),(3,'Ponos i predrasude','797-27-87668-2',1962,'Posuđeno',9,30),(4,'Priručnik za anđele','274-47-99531-1',1991,'Dostupno',6,20),(5,'Veliki Gatsby','584-58-53712-1',1915,'Posuđeno',11,3),(6,'Gospodar prstenova','277-18-67202-2',1940,'Rezervirano',11,21),(7,'Rat i mir','120-61-17086-4',1961,'Dostupno',17,16),(8,'Moby Dick','718-60-93201-7',1970,'Dostupno',12,21),(9,'Doba nevinosti','256-72-18689-4',1930,'Posuđeno',8,28),(10,'Lovac u žitu','336-14-82707-1',1983,'Posuđeno',7,20),(11,'Povijest svijeta u 10 i pol poglavlja','449-64-11249-4',1958,'Dostupno',13,7),(12,'Noćni vlak za Lisabon','441-95-62611-8',1931,'Dostupno',13,18),(13,'Kraj igre','925-41-31910-3',1951,'Posuđeno',7,29),(14,'Drakula','395-35-67793-2',1980,'Posuđeno',5,30),(15,'Kraj igre','982-50-94094-4',1992,'Posuđeno',11,22),(16,'Gulliverova putovanja','830-32-61237-7',1905,'Dostupno',19,29),(17,'Jadnici','869-13-46094-5',1980,'Rezervirano',3,15),(18,'Mačak u čizmama','259-19-80722-9',1968,'Dostupno',1,24),(19,'Dina','891-25-47578-7',1949,'Posuđeno',6,23),(20,'Rat i mir','635-73-27818-1',1986,'Dostupno',5,8),(21,'Mali princ','824-74-67811-2',1999,'Posuđeno',14,9),(22,'Ubiti pticu rugalicu','482-99-61464-9',2017,'Dostupno',12,11),(23,'Šifra Leonarda da Vincija','982-24-75452-1',2012,'Dostupno',10,9),(24,'Snjeguljica','449-95-31400-7',1904,'Dostupno',17,8),(25,'Izgubljeni simbol','562-20-11817-5',1949,'Posuđeno',12,5),(26,'Tri mušketira','965-66-40757-2',1994,'Rezervirano',7,10),(27,'Harry Potter i plameni pehar','239-43-18796-8',1980,'Posuđeno',19,26),(28,'Gospodar prstenova','570-20-94563-5',1920,'Dostupno',9,12),(29,'To','866-44-45439-8',1945,'Dostupno',17,11),(30,'Alisa u zemlji čudesa','851-31-11785-2',1972,'Posuđeno',6,20),(31,'Razum i osjećaji','582-82-30614-7',1919,'Dostupno',3,4),(32,'Sudar kraljeva','685-19-69487-6',1932,'Posuđeno',12,15),(33,'Grofica Monte Cristo','283-51-56696-1',2004,'Dostupno',17,3),(34,'Inferno','419-63-47796-7',2020,'Rezervirano',15,4),(35,'Zvijezde sjaje na nebu','691-17-71787-4',1968,'Dostupno',17,15),(36,'Anna Karenjina','943-12-35649-2',2003,'Dostupno',12,27),(37,'Zlatokosa','788-99-20749-7',1919,'Rezervirano',20,17),(38,'Mali princ','442-39-58078-4',1964,'Dostupno',20,5),(39,'Noćni vlak za Lisabon','778-64-50484-8',1919,'Rezervirano',19,26),(40,'1984','965-94-70765-4',1956,'Dostupno',16,19),(41,'David Copperfield','627-39-16418-3',2017,'Rezervirano',12,4),(42,'Plavi anđeo','835-19-25063-7',1942,'Rezervirano',3,4),(43,'1984','324-86-78730-8',1924,'Dostupno',20,3),(44,'Gospodar muha','777-58-71065-5',2004,'Posuđeno',11,14),(45,'Pepeljuga','313-91-96715-2',1946,'Posuđeno',18,13),(46,'Put oko svijeta u 80 dana','483-96-95319-6',1949,'Posuđeno',2,19),(47,'Gospodin Nobody','534-17-86919-6',1959,'Rezervirano',11,14),(48,'Tamni monah','830-21-18778-6',1951,'Dostupno',2,16),(49,'Na zapadu ništa novo','917-12-47584-2',1974,'Rezervirano',3,9),(50,'Gospodar prstenova','675-80-65697-8',1955,'Dostupno',15,15),(51,'Crvenkapica','334-54-27010-7',2013,'Dostupno',10,18),(52,'Zelena milja','234-62-44384-1',1956,'Rezervirano',17,3),(53,'Njegova mračna tvar','661-45-54902-9',1992,'Rezervirano',1,14),(54,'Pustolovine Huckleberryja Finna','894-75-80164-6',1946,'Rezervirano',16,27),(55,'Pogled s mosta','789-45-63724-7',1953,'Dostupno',15,4),(56,'Put svile','292-53-98117-2',1987,'Rezervirano',1,8),(57,'Grofica Monte Cristo','721-10-22572-8',1909,'Posuđeno',20,1),(58,'Djevojka s tetovažom zmaja','565-51-82529-3',1911,'Posuđeno',18,13),(59,'Moje ime je crveno','316-92-68208-2',1939,'Posuđeno',2,14),(60,'Pustolovine Sherlocka Holmesa','455-14-18525-7',1995,'Rezervirano',3,21),(61,'Ivica i Marica','392-53-32785-9',1902,'Dostupno',11,4),(62,'Noćni vlak za Lisabon','932-95-76410-7',1983,'Dostupno',1,23),(63,'Pustolovine Sherlocka Holmesa','579-10-28883-3',2019,'Posuđeno',1,20),(64,'Gospodin Mercedes','826-99-64877-1',1949,'Dostupno',13,8),(65,'Tri mušketira','979-83-33359-5',1932,'Posuđeno',14,25),(66,'Sjene nad Balkanom','128-21-70984-7',1955,'Posuđeno',12,14),(67,'Pogled s mosta','677-19-34467-3',1935,'Dostupno',4,9),(68,'Grofica Monte Cristo','470-53-41150-6',1927,'Rezervirano',8,24),(69,'Izgubljeni simbol','795-75-63419-5',2022,'Posuđeno',16,6),(70,'Kuća duhova','390-64-45801-5',1992,'Posuđeno',5,28),(71,'Pepeljuga','713-91-71954-3',1953,'Rezervirano',8,19),(72,'Pustolovine Sherlocka Holmesa','930-58-86156-1',1915,'Posuđeno',19,1),(73,'Inferno','395-53-59048-9',2018,'Rezervirano',13,22),(74,'Ubiti pticu rugalicu','936-37-26154-6',2010,'Rezervirano',16,29),(75,'Snjeguljica','315-91-50177-4',1918,'Rezervirano',19,11),(76,'Bratstvo i jedinstvo','422-31-18848-1',1924,'Dostupno',10,10),(77,'Tajni agent','710-74-60367-2',1939,'Posuđeno',9,3),(78,'Ljepotica i zvijer','295-87-88995-5',1966,'Dostupno',10,23),(79,'Bezimeni grobovi','482-65-80097-3',1999,'Posuđeno',1,14),(80,'Oluja mačeva','568-93-31065-3',1923,'Posuđeno',1,6),(81,'Kuća duhova','922-95-27508-9',1969,'Rezervirano',14,8),(82,'Harry Potter i darovi smrti','519-82-55860-4',1953,'Rezervirano',1,20),(83,'Krila galeba','654-28-91592-2',2023,'Posuđeno',15,7),(84,'Ples zmajeva','650-17-29835-9',1963,'Posuđeno',10,15),(85,'Pustolovine Huckleberryja Finna','909-72-53608-4',2019,'Rezervirano',18,27),(86,'Tajni agent','200-29-70554-9',1995,'Posuđeno',7,9),(87,'Tihi američki','283-90-41659-5',2017,'Rezervirano',17,12),(88,'Božanstvena komedija','998-19-12417-1',1907,'Rezervirano',2,5),(89,'Anđeli i demoni','784-81-35343-9',1993,'Dostupno',12,10),(90,'Plavi anđeo','699-41-14086-4',1928,'Rezervirano',19,29),(91,'Orkanski visovi','665-61-30815-1',1957,'Dostupno',3,19),(92,'Sto godina samoće','764-54-85358-1',1961,'Rezervirano',2,11),(93,'Dnevnik Anne Frank','651-15-27450-7',1977,'Posuđeno',2,27),(94,'Grofica Monte Cristo','967-21-70892-9',2021,'Dostupno',5,16),(95,'Ponos i predrasude','466-73-70766-8',1923,'Dostupno',19,13),(96,'Petar Pan','721-45-70201-8',1952,'Rezervirano',20,29),(97,'Ivica i Marica','291-31-50117-9',1991,'Rezervirano',10,19),(98,'Bog malih stvari','753-68-96576-1',2009,'Dostupno',15,16),(99,'Kći Lotrščaka','771-87-37323-8',1938,'Dostupno',13,20),(100,'Opsada','617-73-35897-8',1913,'Rezervirano',4,24),(101,'Bratstvo i jedinstvo','778-96-42716-8',1906,'Posuđeno',13,7),(102,'To','604-42-56769-5',1901,'Posuđeno',3,3),(103,'Nebo u kavezu','989-66-80944-2',1908,'Posuđeno',1,1),(104,'Jantarni teleskop','306-75-39084-4',1923,'Posuđeno',16,10),(105,'Harry Potter i Princ miješane krvi','514-60-66131-6',2012,'Posuđeno',15,29),(106,'Žena u kavezu','601-54-95444-6',1927,'Posuđeno',3,7),(107,'Romeo i Julija','908-34-15655-4',1902,'Posuđeno',20,18),(108,'Sjećanje na moje tužne kurve','122-98-42075-8',1904,'Rezervirano',11,25),(109,'Crvenkapica','349-62-62517-9',1924,'Rezervirano',9,5),(110,'Harry Potter i odaja tajni','774-18-27514-2',2014,'Posuđeno',7,8),(111,'Zvijezde su slijedile mjesec','283-18-50171-5',1952,'Rezervirano',19,20),(112,'Gulliverova putovanja','873-54-29211-3',1995,'Dostupno',16,7),(113,'Knjiga o džungli','539-13-93253-5',1986,'Rezervirano',15,17),(114,'Tihi američki','165-85-20596-5',1995,'Rezervirano',11,14),(115,'Pogled s mosta','221-61-97214-5',1926,'Posuđeno',14,4),(116,'Zeleni dom','711-41-95559-7',1950,'Posuđeno',9,3),(117,'Ljepotica i zvijer','817-78-10882-6',1924,'Rezervirano',9,19),(118,'Petar Pan','399-69-21616-8',2016,'Posuđeno',2,13),(119,'Jantarni teleskop','719-81-14289-5',1954,'Rezervirano',16,30),(120,'Ples zmajeva','665-63-78308-4',2024,'Posuđeno',15,30),(121,'1984','806-14-67694-7',1910,'Rezervirano',3,4),(122,'Njegova mračna tvar','456-46-87554-4',1917,'Dostupno',20,20),(123,'Božanstvena komedija','930-57-65208-4',1983,'Rezervirano',10,29),(124,'Harry Potter i kamen mudraca','408-49-73753-9',1968,'Dostupno',7,1),(125,'Šifra Leonarda da Vincija','195-92-99067-5',1963,'Dostupno',8,27),(126,'Grofica Monte Cristo','440-93-15450-4',2005,'Posuđeno',18,26),(127,'Zločin i kazna','338-39-84645-2',1987,'Posuđeno',6,13),(128,'Hamlet','469-35-63335-3',2012,'Rezervirano',13,17),(129,'Orkanski visovi','550-60-34035-6',1978,'Rezervirano',19,11),(130,'Čarobnjak iz Oza','346-38-50540-3',1963,'Dostupno',10,18),(131,'Ples zmajeva','806-92-83981-9',1987,'Posuđeno',5,14),(132,'Harry Potter i zarobljenik Azkabana','728-97-46766-5',1937,'Dostupno',8,10),(133,'Jantarni teleskop','915-10-33598-2',1923,'Dostupno',19,12),(134,'Peti svjedok','784-39-64959-4',1910,'Rezervirano',15,20),(135,'Pustolovine Huckleberryja Finna','161-68-58274-7',2021,'Posuđeno',15,28),(136,'Djevojka s tetovažom zmaja','127-17-38794-9',1993,'Posuđeno',3,5),(137,'Veliki Gatsby','575-55-30294-9',2000,'Rezervirano',3,21),(138,'Put svile','861-80-80324-7',1915,'Rezervirano',4,24),(139,'Čovjek po imenu Ove','911-24-34734-8',1969,'Posuđeno',14,10),(140,'Harry Potter i odaja tajni','445-34-30738-7',1923,'Posuđeno',10,3),(141,'Snjeguljica','854-47-85749-6',2019,'Rezervirano',12,9),(142,'Hamlet','935-95-34058-8',1964,'Posuđeno',17,30),(143,'Mali princ','982-54-52855-1',1944,'Posuđeno',13,5),(144,'Patnje mladog Werthera','391-38-39144-3',2009,'Dostupno',1,21),(145,'Derviš i smrt','735-76-72299-3',1934,'Posuđeno',10,3),(146,'Sjena vjetra','597-21-51321-4',1951,'Rezervirano',20,4),(147,'Knjiga o džungli','707-95-45887-2',2012,'Posuđeno',4,10),(148,'Sjene nad Balkanom','257-31-64918-3',1970,'Dostupno',1,21),(149,'Gozba vrana','990-88-26258-3',2006,'Dostupno',5,18),(150,'Kapetanova kći','419-16-16564-3',1971,'Dostupno',1,19),(151,'Pogled s mosta','889-38-56180-1',1934,'Rezervirano',7,2),(152,'Božanstvena komedija','809-65-67667-5',2022,'Rezervirano',2,29),(153,'Derviš i smrt','299-43-47754-5',1940,'Posuđeno',7,8),(154,'Zeleni dom','129-79-96942-5',1986,'Posuđeno',10,29),(155,'Put oko svijeta u 80 dana','796-84-93778-9',2024,'Rezervirano',7,28),(156,'Krila galeba','819-72-78892-7',1980,'Posuđeno',9,8),(157,'Tihi američki','749-30-89265-3',1917,'Dostupno',11,7),(158,'Kraljević i prosjak','434-14-57378-7',1933,'Dostupno',17,11),(159,'Bezimeni grobovi','696-99-75135-5',1934,'Dostupno',3,20),(160,'Zvijezde sjaje na nebu','550-17-28661-8',1929,'Posuđeno',18,23),(161,'Otok s blagom','997-20-41168-4',1948,'Posuđeno',18,25),(162,'Na zapadu ništa novo','168-55-88195-5',2007,'Dostupno',6,18),(163,'Ponos i predrasude','412-36-42571-4',2023,'Dostupno',18,19),(164,'Snjeguljica','607-61-38191-3',1959,'Dostupno',14,30),(165,'Pogled s mosta','418-91-74445-4',1953,'Rezervirano',4,8),(166,'Priručnik za anđele','377-94-43478-2',1984,'Rezervirano',5,18),(167,'Emma','353-78-47845-6',1965,'Posuđeno',12,26),(168,'Bog malih stvari','190-96-13994-7',1976,'Rezervirano',17,13),(169,'Besmrtna Henrietta Lacks','900-69-30543-1',1999,'Posuđeno',7,22),(170,'Sto godina samoće','279-69-13240-6',1989,'Rezervirano',20,24),(171,'Mali princ','539-25-91816-2',1920,'Posuđeno',9,14),(172,'Moje ime je crveno','959-29-22454-5',1925,'Dostupno',10,30),(173,'David Copperfield','516-29-46953-6',1908,'Posuđeno',17,26),(174,'Harry Potter i zarobljenik Azkabana','401-62-86180-9',1970,'Posuđeno',20,3),(175,'Romeo i Julija','376-48-46695-1',1988,'Dostupno',15,27),(176,'Grofica Monte Cristo','402-82-56514-5',1945,'Rezervirano',17,23),(177,'Derviš i smrt','779-28-38613-4',1920,'Dostupno',3,2),(178,'Ljepotica i zvijer','693-65-46481-6',1988,'Rezervirano',12,26),(179,'To','632-88-45741-1',1904,'Rezervirano',2,12),(180,'Peti svjedok','529-23-28581-9',1948,'Dostupno',6,14),(181,'Mačak u čizmama','290-16-47120-3',1978,'Rezervirano',7,5),(182,'Orkanski visovi','204-10-18879-8',1937,'Posuđeno',13,22),(183,'Mrtve duše','820-57-20010-1',1955,'Posuđeno',11,14),(184,'Ilijada','247-72-18174-7',1938,'Posuđeno',20,4),(185,'Don Quijote','926-33-95053-7',1957,'Rezervirano',9,7),(186,'Tri mušketira','685-67-61604-3',1970,'Posuđeno',6,25),(187,'Alisa u zemlji čudesa','842-90-95781-7',1932,'Dostupno',18,4),(188,'Noćni vlak za Lisabon','384-43-87095-9',1997,'Posuđeno',8,4),(189,'Groblje kućnih ljubimaca','833-76-20719-1',1961,'Rezervirano',1,21),(190,'Ivica i Marica','984-50-92286-4',2000,'Dostupno',4,4),(191,'Lovac u žitu','254-73-95597-6',1985,'Posuđeno',16,10),(192,'Sto godina samoće','532-91-89831-4',1918,'Rezervirano',20,1),(193,'Čovjek po imenu Ove','507-97-72377-8',2018,'Posuđeno',13,26),(194,'Izgubljeni simbol','568-22-14880-5',2008,'Rezervirano',1,29),(195,'Ples zmajeva','922-66-85139-4',1921,'Rezervirano',19,16),(196,'Romeo i Julija','663-33-19413-2',2004,'Dostupno',6,21),(197,'Vlak u snijegu','585-16-46712-7',1938,'Posuđeno',2,19),(198,'Mrtve duše','723-83-72775-5',1975,'Posuđeno',3,21),(199,'David Copperfield','254-49-79945-1',1995,'Dostupno',1,24),(200,'Igra prijestolja','953-50-49123-9',1938,'Rezervirano',18,9);
/*!40000 ALTER TABLE `knjige` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `knjige_najvece_kasnjenje`
--

DROP TABLE IF EXISTS `knjige_najvece_kasnjenje`;
/*!50001 DROP VIEW IF EXISTS `knjige_najvece_kasnjenje`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `knjige_najvece_kasnjenje` AS SELECT 
 1 AS `Naslov`,
 1 AS `UkupnoDanaKasnjenja`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mjesecne_kazne`
--

DROP TABLE IF EXISTS `mjesecne_kazne`;
/*!50001 DROP VIEW IF EXISTS `mjesecne_kazne`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `mjesecne_kazne` AS SELECT 
 1 AS `god`,
 1 AS `mj`,
 1 AS `ukupno_kazni_eur`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `posudbe`
--

DROP TABLE IF EXISTS `posudbe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posudbe` (
  `PosudbaID` int NOT NULL AUTO_INCREMENT,
  `ClanID` int NOT NULL,
  `KnjigaID` int NOT NULL,
  `DatumPosudbe` date NOT NULL,
  `RokVracanja` date NOT NULL,
  `DatumVracanja` date DEFAULT NULL,
  `ZaposlenikID` int DEFAULT NULL,
  PRIMARY KEY (`PosudbaID`),
  KEY `ClanID` (`ClanID`),
  KEY `KnjigaID` (`KnjigaID`),
  KEY `ZaposlenikID` (`ZaposlenikID`),
  CONSTRAINT `fk_posudbe_clan` FOREIGN KEY (`ClanID`) REFERENCES `clanovi` (`ClanID`),
  CONSTRAINT `fk_posudbe_knjiga` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_posudbe_zaposlenik` FOREIGN KEY (`ZaposlenikID`) REFERENCES `zaposlenici` (`ZaposlenikID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `posudbe_ibfk_1` FOREIGN KEY (`ClanID`) REFERENCES `clanovi` (`ClanID`),
  CONSTRAINT `posudbe_ibfk_2` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`),
  CONSTRAINT `posudbe_ibfk_3` FOREIGN KEY (`ZaposlenikID`) REFERENCES `zaposlenici` (`ZaposlenikID`),
  CONSTRAINT `chk_datum_vracanja` CHECK (((`DatumVracanja` is null) or (`DatumVracanja` >= `DatumPosudbe`))),
  CONSTRAINT `chk_rok_posudbe` CHECK ((`RokVracanja` > `DatumPosudbe`))
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posudbe`
--

LOCK TABLES `posudbe` WRITE;
/*!40000 ALTER TABLE `posudbe` DISABLE KEYS */;
INSERT INTO `posudbe` VALUES (1,151,21,'2023-07-12','2023-08-26','2023-10-08',33),(2,26,123,'2024-07-26','2024-08-26',NULL,22),(3,141,2,'2023-07-25','2023-09-11','2023-10-28',24),(4,39,44,'2022-04-02','2022-04-16',NULL,24),(5,125,192,'2023-04-10','2023-05-09','2023-07-06',22),(6,170,176,'2025-01-10','2025-03-01',NULL,21),(7,30,141,'2023-12-03','2024-01-13','2024-02-19',44),(8,188,20,'2024-06-30','2024-08-23','2024-09-15',24),(9,56,59,'2022-02-24','2022-04-25','2022-05-31',16),(10,17,85,'2022-12-10','2023-01-06','2023-02-11',29),(11,97,18,'2020-12-16','2021-02-02',NULL,9),(12,113,141,'2021-08-12','2021-09-25','2021-09-22',22),(13,98,31,'2020-11-06','2020-12-10','2020-11-23',33),(14,7,138,'2020-08-17','2020-09-13','2020-11-03',6),(15,116,3,'2024-02-04','2024-03-21',NULL,12),(16,110,176,'2024-10-03','2024-12-02','2024-12-12',33),(17,122,153,'2020-03-26','2020-04-16','2020-06-15',18),(18,99,19,'2022-08-09','2022-08-31','2022-11-17',21),(19,20,183,'2020-11-23','2020-12-17',NULL,41),(20,189,171,'2024-11-29','2025-01-10','2025-01-09',48),(21,198,173,'2024-11-23','2024-12-12',NULL,36),(22,176,143,'2020-12-24','2021-02-15','2021-03-14',20),(23,6,170,'2022-05-04','2022-06-29','2022-06-09',29),(24,147,168,'2024-09-22','2024-10-10','2024-12-11',45),(25,8,36,'2025-01-01','2025-01-16','2025-02-16',14),(26,176,31,'2021-09-30','2021-10-18','2021-12-15',26),(27,24,67,'2022-04-02','2022-05-08',NULL,30),(28,176,56,'2022-03-21','2022-04-06','2022-04-15',19),(29,15,2,'2021-10-01','2021-11-08','2022-01-04',15),(30,56,163,'2020-06-23','2020-08-01','2020-08-21',11),(31,166,181,'2022-11-11','2023-01-04',NULL,20),(32,29,197,'2021-06-22','2021-07-30','2021-08-17',38),(33,71,54,'2021-06-08','2021-07-03',NULL,3),(34,3,133,'2024-05-18','2024-06-08','2024-06-15',33),(35,194,110,'2020-08-07','2020-09-06',NULL,37),(36,36,167,'2022-04-06','2022-05-08',NULL,36),(37,194,111,'2024-03-19','2024-05-09','2024-04-12',27),(38,104,155,'2023-05-17','2023-06-10','2023-07-16',3),(39,164,89,'2024-05-17','2024-06-16','2024-08-19',41),(40,15,200,'2022-01-08','2022-02-12','2022-04-07',22),(41,14,70,'2021-02-09','2021-03-24',NULL,7),(42,198,15,'2022-01-05','2022-02-21','2022-03-10',44),(43,39,31,'2024-01-25','2024-03-17','2024-03-04',16),(44,61,54,'2023-12-12','2024-01-01','2024-01-22',26),(45,160,43,'2023-10-16','2023-11-21','2023-12-13',22),(46,29,5,'2024-07-14','2024-09-04','2024-08-01',43),(47,56,129,'2021-03-14','2021-04-10','2021-05-16',34),(48,34,103,'2024-10-01','2024-10-31','2024-10-21',11),(49,53,191,'2021-06-17','2021-08-11',NULL,40),(50,169,53,'2021-10-19','2021-12-06',NULL,8),(51,38,89,'2024-12-13','2025-01-26','2025-01-06',1),(52,21,26,'2021-06-02','2021-06-19',NULL,30),(53,86,43,'2021-08-21','2021-09-13','2021-11-08',49),(54,191,64,'2024-11-01','2024-12-23','2025-02-08',47),(55,177,29,'2023-05-06','2023-06-10','2023-05-26',44),(56,42,60,'2024-11-08','2025-01-07',NULL,37),(57,11,100,'2024-06-10','2024-07-20','2024-08-18',44),(58,76,151,'2022-04-01','2022-05-04','2022-06-17',44),(59,148,62,'2023-04-07','2023-04-26','2023-05-07',41),(60,190,185,'2024-06-25','2024-08-17','2024-07-20',2),(61,94,134,'2022-04-30','2022-06-21','2022-06-07',2),(62,173,54,'2024-10-28','2024-11-30','2025-01-09',8),(63,19,153,'2021-05-03','2021-05-24','2021-06-18',36),(64,88,168,'2023-01-26','2023-02-24',NULL,50),(65,192,29,'2021-11-07','2021-11-24','2022-01-26',34),(66,124,166,'2021-03-30','2021-05-10','2021-05-22',31),(67,40,196,'2020-03-27','2020-05-20','2020-05-28',20),(68,168,65,'2024-01-23','2024-02-14','2024-02-12',11),(69,121,130,'2021-01-18','2021-02-06','2021-04-23',12),(70,140,21,'2020-05-22','2020-07-09','2020-07-15',8),(71,142,195,'2021-08-17','2021-10-15','2021-11-22',21),(72,197,56,'2023-12-22','2024-02-02',NULL,7),(73,41,187,'2022-01-21','2022-02-12',NULL,44),(74,185,180,'2024-11-02','2024-11-28','2024-12-24',20),(75,88,33,'2024-01-28','2024-02-25','2024-04-23',46),(76,21,87,'2020-04-19','2020-05-03','2020-06-19',25),(77,106,106,'2022-07-04','2022-08-22',NULL,6),(78,34,184,'2021-03-19','2021-04-28','2021-05-26',40),(79,42,167,'2024-05-13','2024-06-17','2024-07-23',24),(80,182,66,'2022-03-12','2022-04-04',NULL,40),(81,42,124,'2021-04-09','2021-04-30',NULL,46),(82,112,110,'2020-07-30','2020-09-13','2020-11-01',26),(83,191,85,'2022-07-04','2022-08-30','2022-08-17',8),(84,99,119,'2021-11-17','2021-12-13','2022-02-21',10),(85,140,165,'2020-04-19','2020-05-21','2020-07-07',6),(86,87,61,'2023-06-03','2023-07-24','2023-08-01',32),(87,78,187,'2020-10-25','2020-12-10',NULL,47),(88,137,45,'2024-07-18','2024-09-01','2024-08-05',47),(89,47,150,'2023-07-02','2023-08-28',NULL,38),(90,92,167,'2021-12-14','2022-02-04','2022-03-05',28),(91,29,90,'2021-11-17','2022-01-05','2021-12-24',36),(92,11,137,'2025-02-05','2025-03-20','2025-04-04',1),(93,105,190,'2022-11-06','2022-12-09','2023-02-08',5),(94,147,74,'2025-02-15','2025-03-01','2025-04-09',10),(95,73,88,'2024-11-25','2024-12-09','2025-01-31',50),(96,190,48,'2021-03-17','2021-05-13',NULL,34),(97,174,44,'2024-02-27','2024-03-24','2024-05-20',43),(98,69,81,'2022-09-24','2022-10-28','2022-11-14',7),(99,139,109,'2020-07-07','2020-08-29','2020-08-20',40),(100,176,21,'2021-10-07','2021-10-24',NULL,31),(101,91,145,'2021-06-27','2021-08-01','2021-09-28',14),(102,35,149,'2020-12-28','2021-01-13','2021-01-28',43),(103,112,5,'2023-09-02','2023-10-12','2023-11-17',34),(104,184,109,'2023-01-26','2023-03-21',NULL,48),(105,10,114,'2024-06-08','2024-07-16','2024-08-15',38),(106,151,177,'2022-02-11','2022-04-12','2022-03-25',26),(107,54,115,'2020-09-06','2020-10-26','2020-10-25',41),(108,148,97,'2020-06-08','2020-07-10',NULL,49),(109,148,151,'2022-06-29','2022-07-18','2022-08-26',24),(110,61,67,'2024-10-14','2024-12-12','2025-01-04',20),(111,156,111,'2023-11-20','2024-01-19','2024-02-09',25),(112,171,125,'2022-09-19','2022-10-14','2022-10-09',30),(113,48,132,'2024-12-18','2025-01-01','2025-03-19',19),(114,32,200,'2021-11-23','2021-12-07',NULL,42),(115,176,99,'2021-08-19','2021-09-20','2021-11-14',45),(116,171,93,'2022-05-17','2022-07-12','2022-07-29',9),(117,137,114,'2024-11-15','2024-12-07',NULL,8),(118,136,117,'2022-01-02','2022-02-22',NULL,41),(119,4,39,'2025-01-03','2025-02-17','2025-02-14',41),(120,177,179,'2024-10-01','2024-11-08','2024-12-16',40),(121,10,168,'2022-09-19','2022-11-10','2022-12-11',31),(122,135,16,'2022-03-13','2022-04-13',NULL,44),(123,11,99,'2021-08-26','2021-10-16','2021-12-03',2),(124,35,40,'2021-04-30','2021-06-22',NULL,24),(125,136,88,'2024-02-25','2024-04-01',NULL,36),(126,100,95,'2023-08-14','2023-09-24','2023-10-16',10),(127,55,67,'2024-06-14','2024-07-07',NULL,43),(128,119,8,'2023-06-05','2023-06-21',NULL,25),(129,2,102,'2021-08-13','2021-09-27','2021-10-07',45),(130,196,2,'2020-04-05','2020-06-02','2020-06-06',42),(131,66,45,'2022-12-03','2023-01-28','2023-02-13',18),(132,171,26,'2022-07-16','2022-08-25','2022-10-01',29),(133,113,144,'2021-05-21','2021-07-07','2021-06-21',26),(134,67,129,'2023-01-05','2023-01-31','2023-03-13',46),(135,126,78,'2022-10-11','2022-11-30','2022-12-03',34),(136,119,195,'2023-02-27','2023-04-17',NULL,14),(137,70,162,'2023-03-25','2023-05-21','2023-06-21',19),(138,119,176,'2023-12-08','2024-01-27','2024-02-24',44),(139,36,29,'2023-05-12','2023-07-05','2023-07-05',44),(140,144,46,'2020-10-15','2020-12-07','2020-12-09',47),(141,15,155,'2023-09-20','2023-10-23','2023-11-10',12),(142,84,42,'2020-11-22','2020-12-31',NULL,10),(143,1,134,'2024-06-06','2024-07-22','2024-08-30',50),(144,113,130,'2020-09-20','2020-10-24',NULL,50),(145,53,132,'2024-03-31','2024-05-01',NULL,44),(146,191,188,'2022-01-25','2022-03-11','2022-04-13',36),(147,154,78,'2024-05-12','2024-07-01','2024-06-17',38),(148,90,128,'2021-09-10','2021-10-28','2021-09-28',40),(149,156,27,'2021-10-15','2021-11-03','2022-01-01',24),(150,166,118,'2022-04-29','2022-05-15','2022-05-13',35),(151,48,103,'2023-03-30','2023-04-14','2023-05-04',2),(152,17,197,'2021-08-01','2021-08-15','2021-09-23',7),(153,116,200,'2022-06-30','2022-07-20','2022-08-13',27),(154,185,119,'2024-03-01','2024-04-13','2024-03-27',40),(155,64,185,'2021-01-23','2021-03-16',NULL,39),(156,15,14,'2021-05-01','2021-06-01','2021-07-15',23),(157,199,11,'2020-05-29','2020-07-09',NULL,49),(158,138,186,'2021-06-30','2021-08-03','2021-09-24',8),(159,84,128,'2020-07-30','2020-09-22','2020-09-30',33),(160,25,30,'2020-08-09','2020-08-24','2020-09-06',28),(161,194,66,'2021-10-07','2021-10-27','2021-12-28',18),(162,104,168,'2023-07-23','2023-09-10','2023-09-22',1),(163,149,53,'2021-05-07','2021-06-12','2021-06-22',15),(164,61,119,'2021-12-17','2022-02-09','2022-03-15',32),(165,119,35,'2022-03-26','2022-04-13',NULL,24),(166,70,109,'2024-11-07','2024-11-29','2024-12-26',18),(167,21,1,'2021-01-13','2021-02-28','2021-04-22',43),(168,119,198,'2024-01-05','2024-02-27',NULL,2),(169,135,16,'2022-03-27','2022-05-06',NULL,29),(170,104,142,'2022-12-10','2023-01-05','2023-03-02',47),(171,85,71,'2023-04-05','2023-05-12','2023-05-21',39),(172,60,94,'2020-04-03','2020-05-20','2020-04-17',37),(173,95,93,'2023-04-25','2023-06-12',NULL,4),(174,42,148,'2024-09-22','2024-11-20','2024-10-12',14),(175,35,48,'2022-10-25','2022-12-10','2023-01-04',11),(176,127,173,'2024-08-27','2024-09-18','2024-12-04',40),(177,62,148,'2021-09-26','2021-11-13','2021-11-10',26),(178,18,85,'2023-01-16','2023-03-02','2023-02-13',26),(179,88,32,'2023-07-22','2023-09-10','2023-09-29',35),(180,63,146,'2023-02-12','2023-03-17','2023-03-15',7),(181,54,75,'2024-03-11','2024-05-09','2024-06-05',44),(182,131,185,'2020-08-01','2020-08-29','2020-11-07',46),(183,177,164,'2020-07-19','2020-09-06','2020-09-13',34),(184,159,18,'2022-01-01','2022-02-22','2022-01-16',9),(185,181,36,'2022-06-27','2022-08-07','2022-10-04',50),(186,109,188,'2024-10-08','2024-11-05','2024-11-25',15),(187,163,94,'2020-11-10','2020-12-07','2021-01-04',22),(188,8,171,'2024-11-20','2024-12-29','2025-01-20',45),(189,143,25,'2022-11-07','2022-11-25','2022-12-22',23),(190,154,164,'2023-03-26','2023-04-19','2023-05-28',1),(191,73,190,'2023-02-07','2023-03-05','2023-03-10',5),(192,184,29,'2020-07-26','2020-08-16','2020-08-12',38),(193,197,185,'2020-05-20','2020-07-03','2020-08-14',20),(194,107,11,'2021-04-07','2021-05-25','2021-07-04',29),(195,73,89,'2024-06-05','2024-07-08',NULL,31),(196,156,40,'2021-01-30','2021-02-18','2021-04-19',29),(197,125,176,'2024-12-29','2025-01-31','2025-04-04',25),(198,97,176,'2020-04-27','2020-05-24','2020-07-14',41),(199,18,43,'2024-07-04','2024-08-28','2024-08-31',6),(200,3,185,'2024-05-25','2024-07-22',NULL,5);
/*!40000 ALTER TABLE `posudbe` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_posudbe_max_5` BEFORE INSERT ON `posudbe` FOR EACH ROW BEGIN
DECLARE broj_posudbi INT;
SELECT COUNT(*)
INTO broj_posudbi
FROM Posudbe
WHERE ClanID = NEW.ClanID
AND DatumVracanja IS NULL;
IF broj_posudbi >= 5 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Član ima već 5 aktivnih posudbi.';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_autorok_posudbe` BEFORE INSERT ON `posudbe` FOR EACH ROW BEGIN
IF NEW.RokVracanja IS NULL THEN
SET NEW.RokVracanja = DATE_ADD(NEW.DatumPosudbe, INTERVAL 21 DAY);
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `primjeri`
--

DROP TABLE IF EXISTS `primjeri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primjeri` (
  `PrimjerID` int NOT NULL AUTO_INCREMENT,
  `KnjigaID` int NOT NULL,
  `Lokacija` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PrimjerID`),
  KEY `KnjigaID` (`KnjigaID`),
  CONSTRAINT `primjeri_ibfk_1` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primjeri`
--

LOCK TABLES `primjeri` WRITE;
/*!40000 ALTER TABLE `primjeri` DISABLE KEYS */;
INSERT INTO `primjeri` VALUES (1,1,'Skladište','Rezervirano'),(2,2,'Polica B2','Dostupno'),(3,3,'Polica A1','Dostupno'),(4,4,'Polica C3','Posuđeno'),(5,5,'Skladište','Posuđeno'),(6,6,'Čitaonica','Dostupno'),(7,7,'Skladište','Dostupno'),(8,8,'Čitaonica','Oštećeno'),(9,9,'Skladište','Posuđeno'),(10,10,'Polica B2','Rezervirano'),(11,11,'Polica C3','Oštećeno'),(12,12,'Polica A1','Rezervirano'),(13,13,'Polica C3','Posuđeno'),(14,14,'Polica C3','Rezervirano'),(15,15,'Polica A1','Dostupno'),(16,16,'Polica B2','Oštećeno'),(17,17,'Skladište','Oštećeno'),(18,18,'Polica B2','Dostupno'),(19,19,'Polica B2','Posuđeno'),(20,20,'Polica A1','Rezervirano'),(21,21,'Skladište','Rezervirano'),(22,22,'Polica C3','Posuđeno'),(23,23,'Polica C3','Dostupno'),(24,24,'Polica B2','Oštećeno'),(25,25,'Skladište','Rezervirano'),(26,26,'Polica C3','Posuđeno'),(27,27,'Čitaonica','Dostupno'),(28,28,'Polica B2','Oštećeno'),(29,29,'Čitaonica','Dostupno'),(30,30,'Čitaonica','Rezervirano'),(31,31,'Polica A1','Oštećeno'),(32,32,'Polica A1','Rezervirano'),(33,33,'Polica A1','Dostupno'),(34,34,'Čitaonica','Rezervirano'),(35,35,'Skladište','Dostupno'),(36,36,'Polica A1','Oštećeno'),(37,37,'Polica B2','Posuđeno'),(38,38,'Polica A1','Rezervirano'),(39,39,'Čitaonica','Posuđeno'),(40,40,'Skladište','Posuđeno'),(41,41,'Polica B2','Oštećeno'),(42,42,'Skladište','Dostupno'),(43,43,'Polica A1','Rezervirano'),(44,44,'Čitaonica','Oštećeno'),(45,45,'Polica C3','Posuđeno'),(46,46,'Polica A1','Oštećeno'),(47,47,'Polica A1','Oštećeno'),(48,48,'Skladište','Dostupno'),(49,49,'Skladište','Rezervirano'),(50,50,'Polica B2','Rezervirano'),(51,51,'Polica B2','Posuđeno'),(52,52,'Polica C3','Dostupno'),(53,53,'Polica C3','Oštećeno'),(54,54,'Polica C3','Posuđeno'),(55,55,'Polica A1','Posuđeno'),(56,56,'Polica A1','Dostupno'),(57,57,'Skladište','Posuđeno'),(58,58,'Polica C3','Dostupno'),(59,59,'Polica B2','Posuđeno'),(60,60,'Polica C3','Posuđeno'),(61,61,'Polica A1','Posuđeno'),(62,62,'Čitaonica','Dostupno'),(63,63,'Čitaonica','Oštećeno'),(64,64,'Čitaonica','Rezervirano'),(65,65,'Polica C3','Oštećeno'),(66,66,'Polica A1','Posuđeno'),(67,67,'Polica A1','Rezervirano'),(68,68,'Čitaonica','Dostupno'),(69,69,'Skladište','Rezervirano'),(70,70,'Čitaonica','Rezervirano'),(71,71,'Čitaonica','Posuđeno'),(72,72,'Polica B2','Oštećeno'),(73,73,'Polica B2','Oštećeno'),(74,74,'Čitaonica','Posuđeno'),(75,75,'Skladište','Rezervirano'),(76,76,'Skladište','Dostupno'),(77,77,'Polica A1','Posuđeno'),(78,78,'Polica A1','Dostupno'),(79,79,'Polica C3','Rezervirano'),(80,80,'Polica A1','Posuđeno'),(81,81,'Polica B2','Dostupno'),(82,82,'Polica B2','Rezervirano'),(83,83,'Čitaonica','Rezervirano'),(84,84,'Čitaonica','Posuđeno'),(85,85,'Čitaonica','Rezervirano'),(86,86,'Skladište','Oštećeno'),(87,87,'Skladište','Posuđeno'),(88,88,'Polica A1','Posuđeno'),(89,89,'Skladište','Dostupno'),(90,90,'Skladište','Dostupno'),(91,91,'Polica A1','Posuđeno'),(92,92,'Polica A1','Rezervirano'),(93,93,'Polica B2','Rezervirano'),(94,94,'Čitaonica','Rezervirano'),(95,95,'Polica B2','Oštećeno'),(96,96,'Polica C3','Oštećeno'),(97,97,'Čitaonica','Rezervirano'),(98,98,'Polica B2','Rezervirano'),(99,99,'Čitaonica','Posuđeno'),(100,100,'Polica C3','Rezervirano'),(101,101,'Čitaonica','Rezervirano'),(102,102,'Polica B2','Dostupno'),(103,103,'Skladište','Rezervirano'),(104,104,'Čitaonica','Rezervirano'),(105,105,'Čitaonica','Dostupno'),(106,106,'Skladište','Dostupno'),(107,107,'Polica B2','Dostupno'),(108,108,'Polica C3','Rezervirano'),(109,109,'Polica A1','Posuđeno'),(110,110,'Čitaonica','Posuđeno'),(111,111,'Polica A1','Posuđeno'),(112,112,'Polica B2','Rezervirano'),(113,113,'Polica A1','Oštećeno'),(114,114,'Skladište','Posuđeno'),(115,115,'Polica A1','Oštećeno'),(116,116,'Skladište','Dostupno'),(117,117,'Polica B2','Oštećeno'),(118,118,'Polica B2','Oštećeno'),(119,119,'Polica A1','Oštećeno'),(120,120,'Čitaonica','Oštećeno'),(121,121,'Čitaonica','Dostupno'),(122,122,'Polica B2','Rezervirano'),(123,123,'Polica A1','Rezervirano'),(124,124,'Skladište','Posuđeno'),(125,125,'Polica A1','Dostupno'),(126,126,'Polica C3','Dostupno'),(127,127,'Polica C3','Dostupno'),(128,128,'Polica C3','Posuđeno'),(129,129,'Čitaonica','Oštećeno'),(130,130,'Čitaonica','Oštećeno'),(131,131,'Čitaonica','Posuđeno'),(132,132,'Čitaonica','Rezervirano'),(133,133,'Čitaonica','Oštećeno'),(134,134,'Polica C3','Oštećeno'),(135,135,'Polica B2','Rezervirano'),(136,136,'Polica A1','Oštećeno'),(137,137,'Polica C3','Oštećeno'),(138,138,'Polica C3','Oštećeno'),(139,139,'Skladište','Oštećeno'),(140,140,'Polica A1','Dostupno'),(141,141,'Skladište','Rezervirano'),(142,142,'Polica B2','Rezervirano'),(143,143,'Polica C3','Posuđeno'),(144,144,'Polica B2','Oštećeno'),(145,145,'Polica C3','Rezervirano'),(146,146,'Čitaonica','Posuđeno'),(147,147,'Skladište','Dostupno'),(148,148,'Skladište','Rezervirano'),(149,149,'Čitaonica','Dostupno'),(150,150,'Skladište','Rezervirano'),(151,151,'Polica B2','Posuđeno'),(152,152,'Polica A1','Posuđeno'),(153,153,'Polica A1','Dostupno'),(154,154,'Polica A1','Dostupno'),(155,155,'Čitaonica','Dostupno'),(156,156,'Polica A1','Rezervirano'),(157,157,'Polica B2','Oštećeno'),(158,158,'Čitaonica','Rezervirano'),(159,159,'Polica C3','Dostupno'),(160,160,'Polica C3','Posuđeno'),(161,161,'Polica B2','Rezervirano'),(162,162,'Polica A1','Dostupno'),(163,163,'Polica C3','Posuđeno'),(164,164,'Polica A1','Dostupno'),(165,165,'Skladište','Oštećeno'),(166,166,'Čitaonica','Rezervirano'),(167,167,'Skladište','Dostupno'),(168,168,'Polica C3','Dostupno'),(169,169,'Skladište','Rezervirano'),(170,170,'Polica B2','Rezervirano'),(171,171,'Polica C3','Dostupno'),(172,172,'Čitaonica','Dostupno'),(173,173,'Čitaonica','Posuđeno'),(174,174,'Polica A1','Dostupno'),(175,175,'Polica C3','Rezervirano'),(176,176,'Skladište','Oštećeno'),(177,177,'Skladište','Oštećeno'),(178,178,'Polica B2','Posuđeno'),(179,179,'Polica B2','Dostupno'),(180,180,'Polica A1','Rezervirano'),(181,181,'Polica B2','Oštećeno'),(182,182,'Skladište','Posuđeno'),(183,183,'Polica B2','Oštećeno'),(184,184,'Polica B2','Rezervirano'),(185,185,'Čitaonica','Dostupno'),(186,186,'Polica B2','Posuđeno'),(187,187,'Polica A1','Dostupno'),(188,188,'Polica B2','Posuđeno'),(189,189,'Čitaonica','Oštećeno'),(190,190,'Polica A1','Oštećeno'),(191,191,'Polica B2','Posuđeno'),(192,192,'Polica A1','Oštećeno'),(193,193,'Skladište','Oštećeno'),(194,194,'Čitaonica','Posuđeno'),(195,195,'Čitaonica','Rezervirano'),(196,196,'Polica C3','Rezervirano'),(197,197,'Polica A1','Posuđeno'),(198,198,'Polica C3','Dostupno'),(199,199,'Čitaonica','Rezervirano'),(200,200,'Polica A1','Posuđeno');
/*!40000 ALTER TABLE `primjeri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recenzije`
--

DROP TABLE IF EXISTS `recenzije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recenzije` (
  `RecenzijaID` int NOT NULL AUTO_INCREMENT,
  `KnjigaID` int NOT NULL,
  `ClanID` int NOT NULL,
  `Ocjena` int DEFAULT NULL,
  `Komentar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DatumRecenzije` date DEFAULT NULL,
  PRIMARY KEY (`RecenzijaID`),
  KEY `KnjigaID` (`KnjigaID`),
  KEY `ClanID` (`ClanID`),
  CONSTRAINT `recenzije_ibfk_1` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`),
  CONSTRAINT `recenzije_ibfk_2` FOREIGN KEY (`ClanID`) REFERENCES `clanovi` (`ClanID`),
  CONSTRAINT `recenzije_chk_1` CHECK ((`Ocjena` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recenzije`
--

LOCK TABLES `recenzije` WRITE;
/*!40000 ALTER TABLE `recenzije` DISABLE KEYS */;
INSERT INTO `recenzije` VALUES (1,133,119,2,'Nije loša, ali sam čitao i bolje.','2023-12-10'),(2,193,33,3,'Fantastično napisana, jedva čekam nastavak!','2023-12-13'),(3,177,190,4,'Jedna od najboljih knjiga koje sam pročitao.','2023-12-25'),(4,94,167,5,'Dosadnjikava, teško sam ju završio.','2024-03-26'),(5,9,53,2,'Vrlo edukativna i inspirativna.','2024-10-25'),(6,83,59,2,'Nije loša, ali sam čitao i bolje.','2024-07-26'),(7,151,187,1,'Nije loša, ali sam čitao i bolje.','2024-04-20'),(8,131,117,5,'Nije loša, ali sam čitao i bolje.','2024-09-21'),(9,19,53,5,'Jedna od najboljih knjiga koje sam pročitao.','2023-08-07'),(10,163,129,3,'Fantastično napisana, jedva čekam nastavak!','2023-12-07'),(11,88,116,5,'Jedna od najboljih knjiga koje sam pročitao.','2024-06-08'),(12,4,148,2,'Priča mi nije bila uvjerljiva.','2024-03-13'),(13,99,38,2,'Vrlo zanimljiva, ali malo predugačka.','2024-07-03'),(14,139,138,5,'Nije loša, ali sam čitao i bolje.','2023-12-13'),(15,69,195,3,'Priča mi nije bila uvjerljiva.','2024-08-05'),(16,123,180,2,'Dosadnjikava, teško sam ju završio.','2023-05-01'),(17,107,57,5,'Jedna od najboljih knjiga koje sam pročitao.','2023-04-08'),(18,8,182,3,'Nije loša, ali sam čitao i bolje.','2023-08-15'),(19,197,183,2,'Izvrsna knjiga, preporučujem svima!','2023-03-22'),(20,145,133,5,'Fantastično napisana, jedva čekam nastavak!','2023-09-09'),(21,19,105,4,'Sjajna priča, odlično razvijeni likovi.','2025-02-09'),(22,71,179,1,'Nisam uživao koliko sam očekivao.','2023-05-11'),(23,20,21,3,'Vrlo zanimljiva, ali malo predugačka.','2023-09-05'),(24,65,146,1,'Priča mi nije bila uvjerljiva.','2024-12-28'),(25,157,7,3,'Priča mi nije bila uvjerljiva.','2024-06-30'),(26,84,189,3,'Fantastično napisana, jedva čekam nastavak!','2024-02-05'),(27,69,112,4,'Priča mi nije bila uvjerljiva.','2023-08-28'),(28,189,192,4,'Vrlo edukativna i inspirativna.','2023-04-09'),(29,68,117,2,'Nisam uživao koliko sam očekivao.','2023-04-24'),(30,164,138,3,'Dosadnjikava, teško sam ju završio.','2023-06-29'),(31,57,56,5,'Izvrsna knjiga, preporučujem svima!','2025-03-10'),(32,40,107,3,'Izvrsna knjiga, preporučujem svima!','2023-09-26'),(33,73,65,2,'Fantastično napisana, jedva čekam nastavak!','2024-09-19'),(34,175,65,4,'Dosadnjikava, teško sam ju završio.','2024-01-11'),(35,45,76,1,'Vrlo edukativna i inspirativna.','2025-02-21'),(36,147,78,2,'Sjajna priča, odlično razvijeni likovi.','2024-06-30'),(37,69,150,3,'Dosadnjikava, teško sam ju završio.','2025-02-10'),(38,39,113,4,'Izvrsna knjiga, preporučujem svima!','2023-05-30'),(39,37,174,1,'Priča mi nije bila uvjerljiva.','2024-06-22'),(40,93,14,5,'Sjajna priča, odlično razvijeni likovi.','2025-01-31'),(41,72,113,5,'Priča mi nije bila uvjerljiva.','2023-03-28'),(42,2,180,5,'Sjajna priča, odlično razvijeni likovi.','2024-04-04'),(43,156,153,4,'Izvrsna knjiga, preporučujem svima!','2023-12-05'),(44,110,10,3,'Sjajna priča, odlično razvijeni likovi.','2024-11-28'),(45,116,187,1,'Fantastično napisana, jedva čekam nastavak!','2024-12-28'),(46,118,136,3,'Nisam uživao koliko sam očekivao.','2024-12-27'),(47,122,112,5,'Fantastično napisana, jedva čekam nastavak!','2024-03-05'),(48,175,121,5,'Nije loša, ali sam čitao i bolje.','2023-06-07'),(49,96,100,1,'Nisam uživao koliko sam očekivao.','2023-07-01'),(50,82,154,4,'Fantastično napisana, jedva čekam nastavak!','2024-07-24'),(51,73,147,4,'Vrlo edukativna i inspirativna.','2025-03-06'),(52,120,30,5,'Vrlo edukativna i inspirativna.','2023-10-08'),(53,142,66,2,'Dosadnjikava, teško sam ju završio.','2023-08-15'),(54,179,31,2,'Izvrsna knjiga, preporučujem svima!','2023-03-30'),(55,85,189,1,'Nisam uživao koliko sam očekivao.','2023-08-07'),(56,63,191,3,'Nije loša, ali sam čitao i bolje.','2024-08-18'),(57,134,164,3,'Vrlo zanimljiva, ali malo predugačka.','2024-01-18'),(58,56,4,5,'Sjajna priča, odlično razvijeni likovi.','2023-07-14'),(59,154,134,5,'Dosadnjikava, teško sam ju završio.','2023-10-19'),(60,34,155,4,'Vrlo zanimljiva, ali malo predugačka.','2023-07-24'),(61,184,153,5,'Priča mi nije bila uvjerljiva.','2024-10-22'),(62,65,171,1,'Dosadnjikava, teško sam ju završio.','2023-05-15'),(63,106,17,3,'Sjajna priča, odlično razvijeni likovi.','2024-06-27'),(64,80,113,2,'Vrlo zanimljiva, ali malo predugačka.','2023-03-31'),(65,39,133,4,'Sjajna priča, odlično razvijeni likovi.','2024-03-18'),(66,125,136,1,'Fantastično napisana, jedva čekam nastavak!','2023-10-07'),(67,55,27,1,'Vrlo zanimljiva, ali malo predugačka.','2024-02-25'),(68,175,93,5,'Priča mi nije bila uvjerljiva.','2023-09-27'),(69,178,153,4,'Sjajna priča, odlično razvijeni likovi.','2023-04-18'),(70,100,5,2,'Vrlo edukativna i inspirativna.','2025-02-26'),(71,25,1,4,'Izvrsna knjiga, preporučujem svima!','2023-06-24'),(72,125,108,5,'Jedna od najboljih knjiga koje sam pročitao.','2023-07-21'),(73,77,135,1,'Izvrsna knjiga, preporučujem svima!','2025-03-07'),(74,36,124,5,'Nije loša, ali sam čitao i bolje.','2024-02-03'),(75,160,116,1,'Izvrsna knjiga, preporučujem svima!','2023-06-10'),(76,15,33,3,'Nisam uživao koliko sam očekivao.','2023-05-11'),(77,155,52,5,'Vrlo zanimljiva, ali malo predugačka.','2024-02-15'),(78,33,66,5,'Jedna od najboljih knjiga koje sam pročitao.','2024-07-25'),(79,67,124,1,'Sjajna priča, odlično razvijeni likovi.','2024-07-21'),(80,138,176,1,'Izvrsna knjiga, preporučujem svima!','2023-05-13'),(81,28,42,3,'Jedna od najboljih knjiga koje sam pročitao.','2023-04-11'),(82,104,132,3,'Vrlo zanimljiva, ali malo predugačka.','2023-07-21'),(83,45,104,4,'Nije loša, ali sam čitao i bolje.','2024-01-21'),(84,104,124,5,'Vrlo edukativna i inspirativna.','2023-09-20'),(85,136,138,5,'Dosadnjikava, teško sam ju završio.','2023-11-14'),(86,87,17,2,'Vrlo edukativna i inspirativna.','2024-04-26'),(87,72,185,3,'Vrlo zanimljiva, ali malo predugačka.','2023-04-09'),(88,96,63,5,'Vrlo zanimljiva, ali malo predugačka.','2024-03-31'),(89,14,94,2,'Priča mi nije bila uvjerljiva.','2023-07-21'),(90,148,120,3,'Nisam uživao koliko sam očekivao.','2023-07-21'),(91,96,182,2,'Izvrsna knjiga, preporučujem svima!','2024-04-26'),(92,38,186,4,'Nije loša, ali sam čitao i bolje.','2023-04-22'),(93,144,84,3,'Jedna od najboljih knjiga koje sam pročitao.','2024-01-08'),(94,200,196,4,'Fantastično napisana, jedva čekam nastavak!','2023-11-11'),(95,100,157,5,'Sjajna priča, odlično razvijeni likovi.','2025-01-30'),(96,32,190,2,'Priča mi nije bila uvjerljiva.','2024-10-10'),(97,151,164,4,'Jedna od najboljih knjiga koje sam pročitao.','2025-02-18'),(98,135,84,1,'Jedna od najboljih knjiga koje sam pročitao.','2023-05-10'),(99,70,57,4,'Vrlo edukativna i inspirativna.','2024-01-19'),(100,166,193,2,'Dosadnjikava, teško sam ju završio.','2023-11-24');
/*!40000 ALTER TABLE `recenzije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rezervacije`
--

DROP TABLE IF EXISTS `rezervacije`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rezervacije` (
  `RezervacijaID` int NOT NULL AUTO_INCREMENT,
  `ClanID` int NOT NULL,
  `KnjigaID` int NOT NULL,
  `DatumRezervacije` date NOT NULL,
  `Status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`RezervacijaID`),
  KEY `ClanID` (`ClanID`),
  KEY `KnjigaID` (`KnjigaID`),
  CONSTRAINT `rezervacije_ibfk_1` FOREIGN KEY (`ClanID`) REFERENCES `clanovi` (`ClanID`),
  CONSTRAINT `rezervacije_ibfk_2` FOREIGN KEY (`KnjigaID`) REFERENCES `knjige` (`KnjigaID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rezervacije`
--

LOCK TABLES `rezervacije` WRITE;
/*!40000 ALTER TABLE `rezervacije` DISABLE KEYS */;
INSERT INTO `rezervacije` VALUES (1,193,109,'2024-07-17','Odobreno'),(2,115,130,'2024-04-20','Odobreno'),(3,38,20,'2024-12-21','Na čekanju'),(4,17,72,'2024-07-23','Odobreno'),(5,83,66,'2024-05-01','Na čekanju'),(6,188,120,'2024-11-19','Odbijeno'),(7,123,140,'2024-12-02','Odbijeno'),(8,20,107,'2024-08-27','Odobreno'),(9,143,104,'2024-10-14','Odbijeno'),(10,29,189,'2024-08-30','Na čekanju'),(11,174,92,'2024-12-07','Odobreno'),(12,56,15,'2024-06-30','Na čekanju'),(13,122,106,'2024-10-25','Odobreno'),(14,194,46,'2024-04-25','Završeno'),(15,75,21,'2024-08-05','Odobreno'),(16,171,103,'2024-05-26','Završeno'),(17,196,38,'2025-02-25','Završeno'),(18,189,124,'2024-04-26','Na čekanju'),(19,162,93,'2024-07-07','Odbijeno'),(20,175,21,'2024-10-17','Odbijeno'),(21,123,4,'2024-08-08','Završeno'),(22,173,190,'2024-09-20','Na čekanju'),(23,83,148,'2025-03-12','Završeno'),(24,31,170,'2024-06-16','Odobreno'),(25,161,168,'2025-01-12','Odbijeno'),(26,153,95,'2024-10-30','Završeno'),(27,4,7,'2024-07-14','Odbijeno'),(28,83,46,'2025-01-16','Odobreno'),(29,111,12,'2024-11-15','Odbijeno'),(30,27,156,'2024-03-23','Završeno'),(31,183,88,'2024-10-18','Odbijeno'),(32,25,28,'2024-10-11','Odbijeno'),(33,33,172,'2024-07-24','Završeno'),(34,72,178,'2024-08-05','Na čekanju'),(35,158,178,'2024-08-31','Odobreno'),(36,56,104,'2024-11-04','Odobreno'),(37,135,145,'2025-02-27','Završeno'),(38,142,106,'2024-12-28','Na čekanju'),(39,26,31,'2025-03-12','Završeno'),(40,123,23,'2024-05-07','Na čekanju'),(41,20,68,'2025-01-10','Završeno'),(42,99,18,'2024-09-26','Odbijeno'),(43,78,159,'2024-04-03','Odobreno'),(44,14,64,'2024-04-14','Završeno'),(45,6,26,'2024-05-17','Odobreno'),(46,157,81,'2024-06-12','Završeno'),(47,3,196,'2024-10-29','Odobreno'),(48,103,98,'2024-10-06','Odbijeno'),(49,102,43,'2024-09-29','Odobreno'),(50,43,39,'2024-05-09','Odbijeno'),(51,57,72,'2025-02-19','Na čekanju'),(52,108,43,'2024-07-09','Na čekanju'),(53,130,40,'2024-10-13','Na čekanju'),(54,83,127,'2024-03-28','Završeno'),(55,63,12,'2024-11-13','Odbijeno'),(56,124,107,'2024-10-08','Na čekanju'),(57,47,96,'2024-11-15','Završeno'),(58,167,161,'2024-07-24','Završeno'),(59,59,143,'2024-10-26','Na čekanju'),(60,186,95,'2024-10-09','Na čekanju'),(61,124,116,'2024-04-19','Na čekanju'),(62,148,149,'2024-04-19','Odobreno'),(63,176,162,'2024-07-22','Odobreno'),(64,8,38,'2024-10-25','Završeno'),(65,78,32,'2024-12-06','Odbijeno'),(66,110,102,'2024-11-03','Na čekanju'),(67,120,195,'2024-11-30','Odbijeno'),(68,51,134,'2024-07-19','Na čekanju'),(69,30,57,'2024-09-08','Odbijeno'),(70,198,86,'2024-04-30','Odbijeno'),(71,123,15,'2024-11-21','Odobreno'),(72,90,85,'2025-03-07','Odbijeno'),(73,3,64,'2024-11-12','Završeno'),(74,109,64,'2025-03-10','Odbijeno'),(75,188,130,'2024-06-01','Odbijeno'),(76,38,69,'2024-09-12','Na čekanju'),(77,185,44,'2024-10-22','Odobreno'),(78,179,96,'2024-09-09','Odobreno'),(79,151,30,'2025-02-27','Odobreno'),(80,168,43,'2025-01-01','Odobreno'),(81,119,69,'2024-08-15','Na čekanju'),(82,24,85,'2024-04-26','Odbijeno'),(83,164,85,'2024-09-03','Na čekanju'),(84,64,116,'2024-04-11','Odobreno'),(85,74,98,'2024-07-05','Završeno'),(86,95,195,'2024-12-03','Na čekanju'),(87,109,12,'2024-07-13','Odbijeno'),(88,60,10,'2024-10-16','Odbijeno'),(89,150,117,'2024-06-28','Odbijeno'),(90,197,158,'2025-01-26','Odbijeno'),(91,169,74,'2024-03-31','Na čekanju'),(92,197,84,'2024-11-30','Na čekanju'),(93,143,34,'2024-11-27','Na čekanju'),(94,23,29,'2024-06-29','Završeno'),(95,46,111,'2024-04-26','Odobreno'),(96,127,149,'2025-03-01','Završeno'),(97,58,127,'2025-02-01','Odobreno'),(98,121,21,'2024-08-29','Odobreno'),(99,165,152,'2024-10-22','Na čekanju'),(100,56,115,'2024-07-16','Završeno'),(101,27,42,'2025-03-08','Odobreno'),(102,110,138,'2024-12-17','Odobreno'),(103,37,107,'2024-12-04','Odbijeno'),(104,153,79,'2024-08-29','Odbijeno'),(105,165,179,'2024-06-12','Na čekanju'),(106,188,65,'2024-06-22','Na čekanju'),(107,4,135,'2024-08-18','Na čekanju'),(108,13,77,'2024-11-15','Odobreno'),(109,192,112,'2025-02-10','Na čekanju'),(110,23,71,'2024-08-29','Završeno'),(111,70,16,'2024-10-18','Odobreno'),(112,187,4,'2024-06-30','Odobreno'),(113,46,22,'2024-05-10','Odbijeno'),(114,13,47,'2025-02-27','Odobreno'),(115,138,127,'2024-09-09','Odobreno'),(116,137,186,'2024-03-23','Odbijeno'),(117,197,35,'2024-07-16','Odbijeno'),(118,189,158,'2024-03-28','Odbijeno'),(119,141,135,'2024-05-16','Odbijeno'),(120,40,12,'2025-02-28','Odobreno'),(121,4,178,'2024-08-23','Odobreno'),(122,154,70,'2024-07-01','Završeno'),(123,30,70,'2024-08-01','Odobreno'),(124,115,156,'2024-03-20','Na čekanju'),(125,200,87,'2024-07-14','Odbijeno'),(126,1,107,'2024-04-20','Završeno'),(127,40,21,'2024-04-27','Završeno'),(128,176,171,'2024-08-15','Na čekanju'),(129,174,3,'2024-07-16','Na čekanju'),(130,44,45,'2025-03-01','Na čekanju'),(131,134,172,'2024-11-02','Završeno'),(132,189,105,'2024-08-15','Odobreno'),(133,77,71,'2025-02-25','Odbijeno'),(134,190,122,'2024-07-11','Odbijeno'),(135,150,36,'2024-08-09','Odobreno'),(136,186,143,'2024-10-10','Odbijeno'),(137,68,172,'2024-04-12','Na čekanju'),(138,160,188,'2024-04-25','Odobreno'),(139,71,199,'2024-08-18','Odobreno'),(140,118,157,'2024-05-31','Odbijeno'),(141,97,26,'2024-07-31','Odobreno'),(142,96,54,'2024-07-26','Odbijeno'),(143,16,72,'2024-05-21','Na čekanju'),(144,179,145,'2024-07-15','Završeno'),(145,21,34,'2024-06-16','Odbijeno'),(146,73,89,'2024-12-12','Završeno'),(147,159,70,'2024-07-31','Odbijeno'),(148,115,112,'2024-09-02','Odobreno'),(149,145,32,'2024-10-06','Odobreno'),(150,2,170,'2024-04-21','Na čekanju'),(151,160,123,'2024-09-12','Odobreno'),(152,1,52,'2024-04-29','Odobreno'),(153,141,8,'2024-10-30','Na čekanju'),(154,52,39,'2025-03-11','Odobreno'),(155,146,31,'2024-12-22','Završeno'),(156,173,127,'2025-01-28','Na čekanju'),(157,142,26,'2024-03-28','Završeno'),(158,3,194,'2024-07-18','Na čekanju'),(159,148,55,'2025-02-10','Odobreno'),(160,61,169,'2024-12-29','Na čekanju'),(161,141,42,'2024-12-15','Na čekanju'),(162,108,182,'2024-12-17','Završeno'),(163,197,174,'2024-05-23','Odbijeno'),(164,122,91,'2024-04-28','Na čekanju'),(165,53,54,'2024-10-09','Na čekanju'),(166,122,6,'2024-06-03','Odbijeno'),(167,85,179,'2024-04-15','Odobreno'),(168,35,82,'2024-09-12','Na čekanju'),(169,104,89,'2025-03-01','Odobreno'),(170,150,130,'2024-06-14','Na čekanju'),(171,95,132,'2024-09-22','Završeno'),(172,196,70,'2025-02-07','Odbijeno'),(173,137,80,'2025-03-07','Odobreno'),(174,106,179,'2024-07-18','Na čekanju'),(175,54,87,'2024-10-29','Odobreno'),(176,47,133,'2025-03-05','Odobreno'),(177,158,102,'2024-07-28','Odobreno'),(178,82,72,'2024-07-22','Odobreno'),(179,34,115,'2024-12-17','Na čekanju'),(180,170,154,'2024-09-11','Odbijeno'),(181,123,108,'2024-08-07','Odbijeno'),(182,66,75,'2024-11-18','Završeno'),(183,7,161,'2025-03-08','Na čekanju'),(184,153,132,'2024-08-09','Završeno'),(185,127,91,'2024-11-22','Odbijeno'),(186,198,55,'2024-06-27','Odobreno'),(187,196,39,'2024-12-07','Odobreno'),(188,18,184,'2024-03-26','Odbijeno'),(189,93,69,'2024-09-10','Završeno'),(190,6,74,'2024-09-14','Na čekanju'),(191,17,152,'2024-07-28','Odbijeno'),(192,50,63,'2024-08-06','Odbijeno'),(193,97,55,'2025-01-16','Odbijeno'),(194,67,86,'2024-07-16','Završeno'),(195,88,72,'2024-10-09','Odobreno'),(196,166,6,'2024-12-06','Odbijeno'),(197,59,159,'2024-11-10','Odobreno'),(198,17,190,'2025-02-24','Završeno'),(199,123,149,'2024-04-13','Završeno'),(200,140,40,'2025-01-14','Odobreno');
/*!40000 ALTER TABLE `rezervacije` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rizicni_clanovi`
--

DROP TABLE IF EXISTS `rizicni_clanovi`;
/*!50001 DROP VIEW IF EXISTS `rizicni_clanovi`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rizicni_clanovi` AS SELECT 
 1 AS `ClanID`,
 1 AS `Clan`,
 1 AS `aktivne_posudbe`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `top_5_nakladnika`
--

DROP TABLE IF EXISTS `top_5_nakladnika`;
/*!50001 DROP VIEW IF EXISTS `top_5_nakladnika`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `top_5_nakladnika` AS SELECT 
 1 AS `IzdavacID`,
 1 AS `Naziv`,
 1 AS `broj_posudbi`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `zaposlenici`
--

DROP TABLE IF EXISTS `zaposlenici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zaposlenici` (
  `ZaposlenikID` int NOT NULL AUTO_INCREMENT,
  `Ime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uloga` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Kontakt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ZaposlenikID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zaposlenici`
--

LOCK TABLES `zaposlenici` WRITE;
/*!40000 ALTER TABLE `zaposlenici` DISABLE KEYS */;
INSERT INTO `zaposlenici` VALUES (1,'Matej Marić','Referent za korisnike','matej.marić@knjiznica.hr'),(2,'Nikola Radić','Tehnička podrška','nikola.radić@knjiznica.hr'),(3,'Karla Knežević','Voditelj knjižnice','karla.knežević@knjiznica.hr'),(4,'Karla Tomić','Arhivar','karla.tomić@knjiznica.hr'),(5,'Tomislav Knežević','Pomoćni knjižničar','tomislav.knežević@knjiznica.hr'),(6,'Katarina Sertić','Tehnička podrška','katarina.sertić@knjiznica.hr'),(7,'Luka Šimić','Arhivar','luka.šimić@knjiznica.hr'),(8,'Karla Tomić','Administrator','karla.tomić@knjiznica.hr'),(9,'Ana Tomić','Referent za korisnike','ana.tomić@knjiznica.hr'),(10,'Tihana Šimić','Voditelj knjižnice','tihana.šimić@knjiznica.hr'),(11,'Tihana Kovačević','Arhivar','tihana.kovačević@knjiznica.hr'),(12,'Tomislav Sertić','Administrator','tomislav.sertić@knjiznica.hr'),(13,'Luka Vidović','Voditelj knjižnice','luka.vidović@knjiznica.hr'),(14,'Marko Kovačević','Voditelj knjižnice','marko.kovačević@knjiznica.hr'),(15,'Domagoj Vidaković','Tehnička podrška','domagoj.vidaković@knjiznica.hr'),(16,'Domagoj Horvat','Tehnička podrška','domagoj.horvat@knjiznica.hr'),(17,'Tomislav Perić','Tehnička podrška','tomislav.perić@knjiznica.hr'),(18,'Petra Miletić','Knjižničar','petra.miletić@knjiznica.hr'),(19,'Lorena Grgić','Pomoćni knjižničar','lorena.grgić@knjiznica.hr'),(20,'Luka Miletić','Tehnička podrška','luka.miletić@knjiznica.hr'),(21,'Ana Tomić','Tehnička podrška','ana.tomić@knjiznica.hr'),(22,'Nikola Kovačević','Pomoćni knjižničar','nikola.kovačević@knjiznica.hr'),(23,'Lorena Lovrić','Voditelj knjižnice','lorena.lovrić@knjiznica.hr'),(24,'Stjepan Babić','Tehnička podrška','stjepan.babić@knjiznica.hr'),(25,'Matej Šimić','Administrator','matej.šimić@knjiznica.hr'),(26,'Katarina Lovrić','Referent za korisnike','katarina.lovrić@knjiznica.hr'),(27,'Juraj Grgić','Voditelj knjižnice','juraj.grgić@knjiznica.hr'),(28,'Marija Bogdanović','Tehnička podrška','marija.bogdanović@knjiznica.hr'),(29,'Lorena Marić','Voditelj knjižnice','lorena.marić@knjiznica.hr'),(30,'Luka Miletić','Pomoćni knjižničar','luka.miletić@knjiznica.hr'),(31,'Tomislav Kovačević','Referent za korisnike','tomislav.kovačević@knjiznica.hr'),(32,'Petra Horvat','Arhivar','petra.horvat@knjiznica.hr'),(33,'Tomislav Radić','Administrator','tomislav.radić@knjiznica.hr'),(34,'Matej Kovačević','Tehnička podrška','matej.kovačević@knjiznica.hr'),(35,'Ana Matić','Tehnička podrška','ana.matić@knjiznica.hr'),(36,'Andrea Horvat','Administrator','andrea.horvat@knjiznica.hr'),(37,'Lorena Grgić','Administrator','lorena.grgić@knjiznica.hr'),(38,'Ana Perić','Pomoćni knjižničar','ana.perić@knjiznica.hr'),(39,'Ivan Kovačević','Voditelj knjižnice','ivan.kovačević@knjiznica.hr'),(40,'Lorena Matić','Knjižničar','lorena.matić@knjiznica.hr'),(41,'Marko Radić','Referent za korisnike','marko.radić@knjiznica.hr'),(42,'Matej Miletić','Referent za korisnike','matej.miletić@knjiznica.hr'),(43,'Karla Grgić','Referent za korisnike','karla.grgić@knjiznica.hr'),(44,'Lorena Vidaković','Voditelj knjižnice','lorena.vidaković@knjiznica.hr'),(45,'Ana Kovačević','Knjižničar','ana.kovačević@knjiznica.hr'),(46,'Lorena Jurić','Referent za korisnike','lorena.jurić@knjiznica.hr'),(47,'Josip Kovačević','Pomoćni knjižničar','josip.kovačević@knjiznica.hr'),(48,'Domagoj Barišić','Tehnička podrška','domagoj.barišić@knjiznica.hr'),(49,'Ivan Perić','Arhivar','ivan.perić@knjiznica.hr'),(50,'Marija Sertić','Arhivar','marija.sertić@knjiznica.hr');
/*!40000 ALTER TABLE `zaposlenici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'knjiznicadb'
--

--
-- Dumping routines for database 'knjiznicadb'
--

--
-- Final view structure for view `aktivne_posudbe_s_kaznama`
--

/*!50001 DROP VIEW IF EXISTS `aktivne_posudbe_s_kaznama`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `aktivne_posudbe_s_kaznama` AS select `p`.`PosudbaID` AS `PosudbaID`,`c`.`ClanID` AS `ClanID`,concat(`c`.`Ime`,' ',`c`.`Prezime`) AS `Clan`,`k`.`Naslov` AS `Naslov`,`p`.`DatumPosudbe` AS `DatumPosudbe`,`p`.`RokVracanja` AS `RokVracanja`,(case when (curdate() > `p`.`RokVracanja`) then (timestampdiff(DAY,`p`.`RokVracanja`,curdate()) * 0.50) else 0 end) AS `IznosKazneEUR` from ((`posudbe` `p` join `clanovi` `c` on((`c`.`ClanID` = `p`.`ClanID`))) join `knjige` `k` on((`k`.`KnjigaID` = `p`.`KnjigaID`))) where (`p`.`DatumVracanja` is null) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `broj_posudbi_po_izdavacu`
--

/*!50001 DROP VIEW IF EXISTS `broj_posudbi_po_izdavacu`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `broj_posudbi_po_izdavacu` AS select `i`.`IzdavacID` AS `IzdavacID`,`i`.`Naziv` AS `Izdavac`,count(0) AS `BrojPosudbi` from ((`posudbe` `p` join `knjige` `k` on((`p`.`KnjigaID` = `k`.`KnjigaID`))) join `izdavaci` `i` on((`k`.`IzdavacID` = `i`.`IzdavacID`))) group by `i`.`IzdavacID`,`i`.`Naziv` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `knjige_najvece_kasnjenje`
--

/*!50001 DROP VIEW IF EXISTS `knjige_najvece_kasnjenje`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `knjige_najvece_kasnjenje` AS select `k`.`Naslov` AS `Naslov`,sum(`kv`.`DaniKasnjenja`) AS `UkupnoDanaKasnjenja` from ((`kasnovracanje` `kv` join `posudbe` `p` on((`kv`.`PosudbaID` = `p`.`PosudbaID`))) join `knjige` `k` on((`p`.`KnjigaID` = `k`.`KnjigaID`))) group by `k`.`KnjigaID`,`k`.`Naslov` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mjesecne_kazne`
--

/*!50001 DROP VIEW IF EXISTS `mjesecne_kazne`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mjesecne_kazne` AS select year(coalesce(`p`.`DatumVracanja`,curdate())) AS `god`,month(coalesce(`p`.`DatumVracanja`,curdate())) AS `mj`,round(sum((case when ((`p`.`DatumVracanja` is null) and (curdate() > `p`.`RokVracanja`)) then (timestampdiff(DAY,`p`.`RokVracanja`,curdate()) * 0.50) when (`p`.`DatumVracanja` > `p`.`RokVracanja`) then (timestampdiff(DAY,`p`.`RokVracanja`,`p`.`DatumVracanja`) * 0.50) else 0 end)),2) AS `ukupno_kazni_eur` from `posudbe` `p` group by year(coalesce(`p`.`DatumVracanja`,curdate())),month(coalesce(`p`.`DatumVracanja`,curdate())) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rizicni_clanovi`
--

/*!50001 DROP VIEW IF EXISTS `rizicni_clanovi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rizicni_clanovi` AS select `c`.`ClanID` AS `ClanID`,concat(`c`.`Ime`,' ',`c`.`Prezime`) AS `Clan`,count(0) AS `aktivne_posudbe` from (`posudbe` `p` join `clanovi` `c` on((`c`.`ClanID` = `p`.`ClanID`))) where (`p`.`DatumVracanja` is null) group by `c`.`ClanID`,`c`.`Ime`,`c`.`Prezime` having (`aktivne_posudbe` > 3) order by `aktivne_posudbe` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `top_5_nakladnika`
--

/*!50001 DROP VIEW IF EXISTS `top_5_nakladnika`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `top_5_nakladnika` AS select `i`.`IzdavacID` AS `IzdavacID`,`i`.`Naziv` AS `Naziv`,count(0) AS `broj_posudbi` from (((select `posudbe`.`PosudbaID` AS `PosudbaID`,`posudbe`.`KnjigaID` AS `KnjigaID` from `posudbe` where (`posudbe`.`DatumPosudbe` >= (curdate() - interval 12 month))) `zadnja_godina` join `knjige` `k` on((`k`.`KnjigaID` = `zadnja_godina`.`KnjigaID`))) join `izdavaci` `i` on((`i`.`IzdavacID` = `k`.`IzdavacID`))) group by `i`.`IzdavacID`,`i`.`Naziv` order by `broj_posudbi` desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-19 13:06:37
