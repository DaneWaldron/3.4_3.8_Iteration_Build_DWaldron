-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: DaneW_13DIT
-- ------------------------------------------------------
-- Server version 	8.0.39-0ubuntu0.22.04.1
-- Date: Thu, 22 Aug 2024 00:58:25 +0000

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Album_ID`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Album_ID` (
  `Album_ID` varchar(8) NOT NULL,
  `Album` varchar(56) DEFAULT NULL,
  PRIMARY KEY (`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Album_ID`
--

LOCK TABLES `Album_ID` WRITE;
/*!40000 ALTER TABLE `Album_ID` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `Album_ID` VALUES ('1','Listen'),('10','I Hope You Dance'),('11','Greatest Hits'),('12','Big Jet Plane [EP]'),('13','Bright Morning Stars'),('14','The Definitive Collection'),('15','Earl Klugh'),('16','Bring Me Home'),('17','Barton Hollow'),('18','As good as it gets'),('19','At Budokan'),('2','Metals'),('20','Ceremonial and war dances'),('21','Hoea'),('22','Fallen'),('23','Five Minutes With Arctic Monkeys'),('24','Shona laing'),('25','Celtica 1'),('26','Soul Divas'),('27','Food In The Belly'),('28','One More from the Road [MG]'),('29','Lights of the Pacific: The Very Best Of'),('3','From Detroit to St Germain'),('30','The Collection Vol.1 CD2'),('31','Primitive Man [Bonus Tracks]'),('32','Extended Play'),('33','Til We Outnumber \'Em: Woody Guthrie'),('34','Oceania'),('35','Babel'),('36','The Collection Vol.2 CD1'),('37','Drunken Lullabies'),('38','I\'m in the Mood for Dancing'),('39','A Place On Earth - The Greatest Hits (CD 1/2)'),('4','The Best of Arlo Guthrie'),('40','The Best of Nancy Wilson'),('41','10 Years Of Hits'),('42','Gael Force'),('43','Live! Not Enough Shouting'),('44','Electric Music For The Mind And The Mind'),('45','The Division Bell'),('46','Fields of Fire'),('47','Sarah Slean'),('48','Strange Mercy'),('49','Finally We Are No One'),('5','Under The Covers: Vol. 2'),('50','Shamrock Diaries'),('51','A Momentary Lapse Of Reason'),('52','Continued Silence EP'),('53','Watermark'),('54','Early Alchemy'),('55','CMT Crossroads'),('56','The Cross of Changes'),('57','A Hundred Miles or More: A Collection'),('58','Three Decades Of Males Disc 2'),('59','Footrot Flats: A Dog\'s Tale'),('6','All Thing Bright And Beautiful - Deluxe'),('60','Listen: The Very Best of Herbs'),('61','Slow Train Coming'),('62','Spanish Train & Other Stories'),('63','Running on Empty'),('64','Say You Will'),('65','Walk Like An Egyptian: The Best Of_CD 2'),('66','Lily'),('67','Love This Giant'),('68','Flying Cowboys'),('69','Fundamental'),('7','American Heart - Single'),('70','His Young Heart'),('71','California'),('72','To Love Somebody (1969), Here Comes the Sun (1971)'),('73','The Best of Joe Cocker [Mushroom]'),('74','Music for Lovers'),('75','Smilewound'),('76','Songs from the Front Lawn'),('77','Live In Texas (7 June 2006)'),('78','Dixie Chicks'),('79','Zombie (UK Single - Part 1) [Island - CID 600-854 110-2]'),('8','American Pie'),('9','Aqualung');
/*!40000 ALTER TABLE `Album_ID` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `Album_ID` with 79 row(s)
--

--
-- Table structure for table `Artist_ID`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Artist_ID` (
  `Artist_ID` varchar(9) NOT NULL,
  `Artist` varchar(29) DEFAULT NULL,
  PRIMARY KEY (`Artist_ID`),
  CONSTRAINT `Artist_ID_ibfk_1` FOREIGN KEY (`Artist_ID`) REFERENCES `SongToArtist` (`Artist_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Artist_ID`
--

LOCK TABLES `Artist_ID` WRITE;
/*!40000 ALTER TABLE `Artist_ID` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `Artist_ID` VALUES ('1','A Flock of Seagulls'),('10','Lee Ann Womack'),('11','Angus & Julia Stone'),('12','The Wailin\' Jennys'),('13','Stevie Wonder'),('14','Earl Klugh'),('15','Mother Earth'),('16','The Civil Wars'),('17','As Good As It Gets'),('18','Bob Dylan'),('19','Black Lodge Singers'),('2','Feist'),('20','Wai Tai'),('21','Evanescence'),('22','Arctic Monkeys'),('23','Shona laing'),('24','Varios'),('25','Soul Divas'),('26','Xavier Rudd'),('27','Lynyrd Skynyrd'),('28','Herbs'),('29','Average White Band'),('3','St Germain'),('30','Icehouse'),('31','Gin Wigmore'),('32','Oceania'),('33','Mumford & Sons'),('34','Flogging Molly'),('35','The Nolans'),('36','Belinda Carlisle'),('37','Nancy Wilson'),('38','Ronan Keating'),('39','Gael Force'),('4','Arlo Guthrie'),('40','Wolfstone'),('41','Country Joe & The Fish'),('42','Pink Floyd'),('43','Big Country '),('44','Sarah Slean'),('45','St. Vincent'),('46','Mum'),('47','Chris Rea'),('48','Imagine Dragons'),('49','Enya'),('5','Matthew Sweet & Susanna Hoffs'),('50','Acoustic Alchemy'),('51','Dixie Chicks & James Taylor'),('52','James Taylor'),('53','Enigma'),('54','Alison Krauss'),('55','Three Decades Of Males'),('56','Dave Dobbyn & Herbs'),('57','Chris de Burgh'),('58','Jackson Browne'),('59','Fleetwood Mac'),('6','Owl City'),('60','The Bangles'),('61','Wendy Matthews'),('62','David Byrne & St. Vincent'),('63','Rickie Lee Jones'),('64','Pet Shop Boys'),('65','Daughter'),('66','Wilson Phillips'),('67','Nina Simone'),('68','Joe Cocker'),('69','Maria Muldaur'),('7','Faith Hill'),('70','The Front Lawn'),('71','Dixie Chicks'),('72','The Cranberries'),('8','Don McLean'),('9','Jethro Tull');
/*!40000 ALTER TABLE `Artist_ID` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `Artist_ID` with 72 row(s)
--

--
-- Table structure for table `Genre_ID`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Genre_ID` (
  `Genre_ID` varchar(8) NOT NULL,
  `Genre` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`Genre_ID`),
  CONSTRAINT `Genre_ID_ibfk_1` FOREIGN KEY (`Genre_ID`) REFERENCES `SongToGenre` (`Genre_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Genre_ID`
--

LOCK TABLES `Genre_ID` WRITE;
/*!40000 ALTER TABLE `Genre_ID` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `Genre_ID` VALUES ('1','New Wave'),('10','Jazz'),('11','Folk UK'),('12','Folk Cont'),('13','Native American, Ethnic'),('14','Maori, Ethnic,New Age'),('15','Alternative Metal / Nu-Metal / Gothic Rock'),('16','Indie Rock / Brit Pop'),('17','Celtic'),('18','Rock Celtic'),('19','Soul'),('2','Folk'),('20','Mellow'),('21','Reggae'),('22','World'),('23','Folk Rock'),('24','New Age'),('25','Easy Listening - Group'),('26','Easy Listening - Female'),('27','Vocal'),('28','Dance'),('29','Psychadelic'),('3','Goa'),('30','Progressive Rock'),('31','Alternative'),('32','Indie Rock'),('33','Post-Rock'),('34','Blues'),('35','Acoustic'),('36','Bluegrass'),('37','Woman'),('38','Indie'),('39','Avante-Garde'),('4','Rock'),('40','Alternative  Rock / Post-Grunge'),('5','Pop'),('6','Country'),('7','Easy Listening - Male'),('8','US Folk'),('9','R&B');
/*!40000 ALTER TABLE `Genre_ID` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `Genre_ID` with 40 row(s)
--

--
-- Table structure for table `Main`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Main` (
  `Song_ID` varchar(7) DEFAULT NULL,
  `Filename` varchar(81) DEFAULT NULL,
  `Artist` varchar(6) DEFAULT NULL,
  `Title` varchar(77) DEFAULT NULL,
  `Track#` varchar(6) DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Size` varchar(5) DEFAULT NULL,
  `Genre_ID` varchar(8) DEFAULT NULL,
  `Artist_ID` varchar(9) DEFAULT NULL,
  `Album_ID` varchar(8) DEFAULT NULL,
  KEY `Genre_ID` (`Genre_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  KEY `Album_ID` (`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Main`
--

LOCK TABLES `Main` WRITE;
/*!40000 ALTER TABLE `Main` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `Main` VALUES ('1','2-30.mp3','1','Listen','7','01:00','1446','1','1','1'),('2','A Commotion.mp3','2','A Commotion','5','03:53','6904','2','2','2'),('3','Alabama Blues.mp3','3','Alabama Blues','2','07:19','6865','3','3','3'),('4','Alice\'s Restaurant Massacree.mp3','4','Alice\'s Restaurant Massacree','1','18:31','34731','2','4','4'),('5','All The Young Dudes.mp3','5','All The Young Dudes (David Bowie)','5','03:52','9081','4','5','5'),('6','Alligator Sky.mp3','6','Alligator Sky','13','03:15','6176','5','6','6'),('7','American Heart.mp3','7','American Heart','1','03:50','9069','6','7','7'),('8','American Pie.mp3','8','American Pie','1','08:32','20045','7','8','8'),('9','Aqualung.mp3','9','Aqualung','1','06:37','11596','4','9','9'),('10','Ashes By Now.mp3','10','Ashes By Now','7','04:11','9851','6','10','10'),('11','Ashes By Now.mp3','10','Ashes By Now','8','04:12','9880','6','10','11'),('12','Big Jet Plane (Radio Edit).mp3','11','Big Jet Plane (Radio Edit)','1','03:43','8776','8','11','12'),('13','Bird Song.mp3','12','Bird Song','3','03:33','3338','2','12','13'),('14','Boogie On Reggae Woman.mp3','13','Boogie On Reggae Woman','4','05:14','10894','9','13','14'),('15','Brazilian Stomp.mp3','14','Brazilian Stomp','3','05:39','10605','10','14','15'),('16','Bring Me Home.mp3','15','Bring Me Home','5','06:05','11428','4','15','16'),('17','C\'est La Mort.mp3','16','C\'est La Mort','3','02:29','4094','8','16','17'),('18','Chicken on a Raft.mp3','17','Chicken on a Raft','6','03:30','6583','11','17','18'),('19','Don\'t Think Twice, It\'s All Right.mp3','18','Don\'t Think Twice, It\'s All Right','5','05:01','11766','12','18','19'),('20','Eagle Plume Dancer.mp3','19','Eagle Plume Dancer','7','02:25','2269','13','19','20'),('21','Earth And Sky.mp3','20','Earth & Sky','3','03:28','5984','14','20','21'),('22','Everybody\'s Fool.mp3','21','Everybody\'s Fool','3','03:17','7893','15','21','22'),('23','Fake Tales Of San Francisco.mp3','22','Fake Tales Of San Francisco','1','03:01','7271','16','22','23'),('24','Fear.mp3','23','Hey','3','04:22','4101','17','23','24'),('25','Fields of Gold.mp3','24','Fields of Gold','15','03:34','8382','18','24','25'),('26','Fire.mp3','25','Fire','7','03:26','6465','19','25','26'),('27','Fortune Teller.mp3','26','Fortune Teller','4','03:27','4866','20','26','27'),('28','Free Bird Live [Fox Theater].mp3','27','Free Bird Live [Fox Theater]','12','13:36','25506','4','27','28'),('29','French Letter.mp3','28','French Letter','3','04:36','8646','21','28','29'),('30','Got The Love - 2009.mp3','29','Got The Love','12','03:47','8874','19','29','30'),('31','Great Southern Land.mp3','30','Great Southern Land','1','05:19','12468','4','30','31'),('32','Hallelujah.mp3','31','Hallelujah','3','03:31','8263','22','31','32'),('33','Hard Travelin\' Hootenanny.mp3','4','Hard Travelin\' Hootenanny','1','03:30','6588','2','4','33'),('34','He Aha Ra Te Manu.mp3','20','He Aha Ra Te Manu','2','02:23','4444','14','20','21'),('35','Hineraukatauri (Goddess of Music).mp3','32','Hineraukatauri (Goddess of Music)','4','04:54','9222','22','32','34'),('36','Hopeless Wanderer.mp3','33','Hopeless Wanderer','9','05:07','10236','23','33','35'),('37','How Do You Plead.mp3','3','How Do You Plead','7','06:40','6251','3','3','3'),('38','How Sweet Can You Get - 2009.mp3','29','How Sweet Can You Get','9','03:58','9330','19','29','36'),('39','If I Ever Leave This World Alive.mp3','34','If I Ever Leave This World Alive','4','03:21','4722','18','34','37'),('40','I\'ll Be Long Gone.mp3','15','I\'ll Be Long Gone','4','05:56','11141','24','15','16'),('41','I\'m in the Mood for Dancing.mp3','35','I\'m in the Mood for Dancing','1','02:59','5601','25','35','38'),('42','Leave a Light On.mp3','36','Leave a Light On','4','04:16','4006','26','36','39'),('43','Like Someone In Love.mp3','37','Like Someone In Love','8','02:22','3368','27','37','40'),('44','Little Black Book.mp3','36','Little Black Book','10','04:12','3951','26','36','39'),('45','Lost for Words.mp3','38','Lost For Words','9','03:48','5366','28','38','41'),('46','Maggie.mp3','39','Maggie','11','03:41','6914','17','39','42'),('47','Maggie.mp3','40','Maggie','14','04:47','7862','18','40','43'),('48','Marijuana.mp3','41','Marijuana','14','02:32','3575','29','41','4'),('49','Marooned.mp3','42','Marooned','4','05:29','10384','30','42','45'),('50','Mary.mp3','43','Mary','14','03:53','9109','31','43','46'),('51','Mary.mp3','44','Mary','1','04:04','3818','31','44','47'),('52','Messages.mp3','26','Messages','2','04:02','5686','20','26','27'),('53','Northern Lights.mp3','45','Northern Lights','5','03:33','8359','32','45','48'),('54','Now There\'s That Fear Again.mp3','46','Now There\'s That Fear Again','7','03:56','5550','33','46','49'),('55','One Golden Rule.mp3','47','One Golden Rule','5','04:30','10569','34','47','50'),('56','One Slip.mp3','42','One Slip','4','05:08','10086','30','42','51'),('57','Parihaka.mp3','28','Parihaka','9','04:16','8028','21','28','29'),('58','Radioactive.mp3','48','Radioactive','1','03:08','7414','32','48','52'),('59','River.mp3','49','River','9','03:12','7553','31','49','53'),('60','Sarah Victoria.mp3','50','Sarah Victoria','2','01:54','3692','35','50','54'),('61','Shower the People.mp3','51','Shower the People','9','02:03','2906','6','51','55'),('62','Shower the People.mp3','52','Shower the People','11','04:01','9426','4','52','11'),('63','Silent Warrior.mp3','53','Silent Warrior','5','06:09','11546','24','53','56'),('64','Simple Love [#].mp3','54','Simple Love [#]','2','04:44','4444','36','54','57'),('65','Slice of Heaven.mp3','55','Slice Of Heaven','1','04:08','9693','7','55','58'),('66','Slice of Heaven.mp3','56','Slice of Heaven','10','04:37','4347','5','56','59'),('67','Slice of Heaven.mp3','28','Slice of Heaven','11','04:37','8667','21','28','60'),('68','Slow Train.mp3','18','Slow Train','4','05:59','14107','23','18','61'),('69','Spanish Train.mp3','57','Spanish Train','1','05:02','11841','7','57','62'),('70','Stay.mp3','44','Sarah Slean','1','02:42','2551','31','44','47'),('71','Stay.mp3','58','Stay','10','03:24','7990','4','58','63'),('72','Steal Your Heart Away.mp3','59','Steal Your Heart Away','13','03:33','5011','34','59','64'),('73','Sweet Baby James.mp3','51','Sweet Baby James','5','03:25','4015','6','51','55'),('74','Sweet Baby James.mp3','52','Sweet Baby James','4','02:54','6818','4','52','11'),('75','Tell Me.mp3','60','Tell me','14','02:15','2884','5','60','65'),('76','Fridays Child.mp3','61','Fridays Child','1','04:03','7608','37','61','66'),('77','The Forest Awakes.mp3','62','The Forest Awakes','6','04:52','11442','31','62','67'),('78','The Horses.mp3','63','The Horses','1','04:52','9158','36','63','68'),('79','The Mother.mp3','26','The Mother','6','03:15','4594','20','26','27'),('80','The Sodom And Gomorrah Show.mp3','64','The Sodom And Gomorrah Show','2','05:19','7496','28','64','69'),('81','The Times They Are A-Changin\'.mp3','18','The Times They Are A-Changin\'','11','05:28','12854','12','18','19'),('82','The Traveller.mp3','1','The Traveller','6','03:26','5677','1','1','1'),('83','The Woods.mp3','65','The Woods','2','03:40','8959','38','65','70'),('84','Til We Outnumber \'Em (This Land Is You Land).mp3','4','Til We Outnumber \'Em (This Land Is You Land)','19','02:37','4929','2','4','33'),('85','Turn! Turn! Turn! (To Everything There Is A Season).mp3','66','Turn! Turn! Turn! (To Everything There Is A Season)','6','02:40','5025','5','66','71'),('86','Turn! Turn! Turn!.mp3','67','Turn! Turn! Turn!','2','03:41','3463','10','67','72'),('87','Unchain My Heart [90\'s Version].mp3','68','Unchain My Heart [90\'s Version]','1','05:06','11972','4','68','73'),('88','Waiting For You.mp3','50','Waiting For You','11','03:24','6488','35','50','54'),('89','We Can Let It Happen Tonight.mp3','69','We Can Let It Happen Tonight','6','04:10','9784','10','69','74'),('90','When Girls Collide.mp3','46','When Girls Collide','3','05:00','11870','38','46','75'),('91','When You Come Back Home.mp3','70','When You Come Back Home','1','03:37','3408','39','70','76'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me.mp3','22','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','4','02:22','5771','16','22','77'),('93','You Were Mine.mp3','71','You Were Mine','5','03:37','3409','6','71','78'),('94','You\'re Just a Country Boy [#].mp3','54','You\'re Just a Country Boy [#]','1','03:28','3258','36','54','57'),('95','Zombie.mp3','72','Zombie','1','04:12','9874','40','72','79');
/*!40000 ALTER TABLE `Main` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `Main` with 95 row(s)
--

--
-- Table structure for table `Song`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Song` (
  `Song_ID` varchar(7) NOT NULL,
  `Title` varchar(77) DEFAULT NULL,
  `Duration` varchar(8) DEFAULT NULL,
  `Size` varchar(5) DEFAULT NULL,
  `Album_ID` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Song_ID` (`Song_ID`),
  KEY `Album_ID` (`Album_ID`),
  CONSTRAINT `Song_ibfk_1` FOREIGN KEY (`Album_ID`) REFERENCES `Album_ID` (`Album_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Song`
--

LOCK TABLES `Song` WRITE;
/*!40000 ALTER TABLE `Song` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `Song` VALUES ('1','Listen','01:00','1446','1'),('10','Ashes By Now','04:11','9851','10'),('11','Ashes By Now','04:12','9880','11'),('12','Big Jet Plane (Radio Edit)','03:43','8776','12'),('13','Bird Song','03:33','3338','13'),('14','Boogie On Reggae Woman','05:14','10894','14'),('15','Brazilian Stomp','05:39','10605','15'),('16','Bring Me Home','06:05','11428','16'),('17','C\'est La Mort','02:29','4094','17'),('18','Chicken on a Raft','03:30','6583','18'),('19','Don\'t Think Twice, It\'s All Right','05:01','11766','19'),('2','A Commotion','03:53','6904','2'),('20','Eagle Plume Dancer','02:25','2269','20'),('21','Earth & Sky','03:28','5984','21'),('22','Everybody\'s Fool','03:17','7893','22'),('23','Fake Tales Of San Francisco','03:01','7271','23'),('24','Hey','04:22','4101','24'),('25','Fields of Gold','03:34','8382','25'),('26','Fire','03:26','6465','26'),('27','Fortune Teller','03:27','4866','27'),('28','Free Bird Live [Fox Theater]','13:36','25506','28'),('29','French Letter','04:36','8646','29'),('3','Alabama Blues','07:19','6865','3'),('30','Got The Love','03:47','8874','30'),('31','Great Southern Land','05:19','12468','31'),('32','Hallelujah','03:31','8263','32'),('33','Hard Travelin\' Hootenanny','03:30','6588','33'),('34','He Aha Ra Te Manu','02:23','4444','21'),('35','Hineraukatauri (Goddess of Music)','04:54','9222','34'),('36','Hopeless Wanderer','05:07','10236','35'),('37','How Do You Plead','06:40','6251','3'),('38','How Sweet Can You Get','03:58','9330','36'),('39','If I Ever Leave This World Alive','03:21','4722','37'),('4','Alice\'s Restaurant Massacree','18:31','34731','4'),('40','I\'ll Be Long Gone','05:56','11141','16'),('41','I\'m in the Mood for Dancing','02:59','5601','38'),('42','Leave a Light On','04:16','4006','39'),('43','Like Someone In Love','02:22','3368','40'),('44','Little Black Book','04:12','3951','39'),('45','Lost For Words','03:48','5366','41'),('46','Maggie','03:41','6914','42'),('47','Maggie','04:47','7862','43'),('48','Marijuana','02:32','3575','4'),('49','Marooned','05:29','10384','45'),('5','All The Young Dudes (David Bowie)','03:52','9081','5'),('50','Mary','03:53','9109','46'),('51','Mary','04:04','3818','47'),('52','Messages','04:02','5686','27'),('53','Northern Lights','03:33','8359','48'),('54','Now There\'s That Fear Again','03:56','5550','49'),('55','One Golden Rule','04:30','10569','50'),('56','One Slip','05:08','10086','51'),('57','Parihaka','04:16','8028','29'),('58','Radioactive','03:08','7414','52'),('59','River','03:12','7553','53'),('6','Alligator Sky','03:15','6176','6'),('60','Sarah Victoria','01:54','3692','54'),('61','Shower the People','02:03','2906','55'),('62','Shower the People','04:01','9426','11'),('63','Silent Warrior','06:09','11546','56'),('64','Simple Love [#]','04:44','4444','57'),('65','Slice Of Heaven','04:08','9693','58'),('66','Slice of Heaven','04:37','4347','59'),('67','Slice of Heaven','04:37','8667','60'),('68','Slow Train','05:59','14107','61'),('69','Spanish Train','05:02','11841','62'),('7','American Heart','03:50','9069','7'),('70','Sarah Slean','02:42','2551','47'),('71','Stay','03:24','7990','63'),('72','Steal Your Heart Away','03:33','5011','64'),('73','Sweet Baby James','03:25','4015','55'),('74','Sweet Baby James','02:54','6818','11'),('75','Tell me','02:15','2884','65'),('76','Fridays Child','04:03','7608','66'),('77','The Forest Awakes','04:52','11442','67'),('78','The Horses','04:52','9158','68'),('79','The Mother','03:15','4594','27'),('8','American Pie','08:32','20045','8'),('80','The Sodom And Gomorrah Show','05:19','7496','69'),('81','The Times They Are A-Changin\'','05:28','12854','19'),('82','The Traveller','03:26','5677','1'),('83','The Woods','03:40','8959','70'),('84','Til We Outnumber \'Em (This Land Is You Land)','02:37','4929','33'),('85','Turn! Turn! Turn! (To Everything There Is A Season)','02:40','5025','71'),('86','Turn! Turn! Turn!','03:41','3463','72'),('87','Unchain My Heart [90\'s Version]','05:06','11972','73'),('88','Waiting For You','03:24','6488','54'),('89','We Can Let It Happen Tonight','04:10','9784','74'),('9','Aqualung','06:37','11596','9'),('90','When Girls Collide','05:00','11870','75'),('91','When You Come Back Home','03:37','3408','76'),('92','You Probably Couldn\'t See For The Lights, But You Were Staring Straight At Me','02:22','5771','77'),('93','You Were Mine','03:37','3409','78'),('94','You\'re Just a Country Boy [#]','03:28','3258','57'),('95','Zombie','04:12','9874','79');
/*!40000 ALTER TABLE `Song` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `Song` with 95 row(s)
--

--
-- Table structure for table `SongToArtist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SongToArtist` (
  `Song_ID` varchar(7) NOT NULL,
  `Artist_ID` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Artist_ID` (`Artist_ID`),
  CONSTRAINT `SongToArtist_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `Song` (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SongToArtist`
--

LOCK TABLES `SongToArtist` WRITE;
/*!40000 ALTER TABLE `SongToArtist` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `SongToArtist` VALUES ('1','1'),('82','1'),('10','10'),('11','10'),('12','11'),('13','12'),('14','13'),('15','14'),('16','15'),('40','15'),('17','16'),('18','17'),('19','18'),('68','18'),('81','18'),('20','19'),('2','2'),('21','20'),('34','20'),('22','21'),('23','22'),('92','22'),('24','23'),('25','24'),('26','25'),('27','26'),('52','26'),('79','26'),('28','27'),('29','28'),('57','28'),('67','28'),('30','29'),('38','29'),('3','3'),('37','3'),('31','30'),('32','31'),('35','32'),('36','33'),('39','34'),('41','35'),('42','36'),('44','36'),('43','37'),('45','38'),('46','39'),('33','4'),('4','4'),('84','4'),('47','40'),('48','41'),('49','42'),('56','42'),('50','43'),('51','44'),('70','44'),('53','45'),('54','46'),('90','46'),('55','47'),('58','48'),('59','49'),('5','5'),('60','50'),('88','50'),('61','51'),('73','51'),('62','52'),('74','52'),('63','53'),('64','54'),('94','54'),('65','55'),('66','56'),('69','57'),('71','58'),('72','59'),('6','6'),('75','60'),('76','61'),('77','62'),('78','63'),('80','64'),('83','65'),('85','66'),('86','67'),('87','68'),('89','69'),('7','7'),('91','70'),('93','71'),('95','72'),('8','8'),('9','9');
/*!40000 ALTER TABLE `SongToArtist` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `SongToArtist` with 95 row(s)
--

--
-- Table structure for table `SongToGenre`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SongToGenre` (
  `Song_ID` varchar(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Genre_ID` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Song_ID`),
  KEY `Genre` (`Genre_ID`),
  CONSTRAINT `SongToGenre_ibfk_1` FOREIGN KEY (`Song_ID`) REFERENCES `Song` (`Song_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SongToGenre`
--

LOCK TABLES `SongToGenre` WRITE;
/*!40000 ALTER TABLE `SongToGenre` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `SongToGenre` VALUES ('1','1'),('82','1'),('15','10'),('86','10'),('89','10'),('18','11'),('19','12'),('81','12'),('20','13'),('21','14'),('34','14'),('22','15'),('23','16'),('92','16'),('24','17'),('46','17'),('25','18'),('39','18'),('47','18'),('26','19'),('30','19'),('38','19'),('13','2'),('2','2'),('33','2'),('4','2'),('84','2'),('27','20'),('52','20'),('79','20'),('29','21'),('57','21'),('67','21'),('32','22'),('35','22'),('36','23'),('68','23'),('40','24'),('63','24'),('41','25'),('42','26'),('44','26'),('43','27'),('45','28'),('80','28'),('48','29'),('3','3'),('37','3'),('49','30'),('56','30'),('50','31'),('51','31'),('59','31'),('70','31'),('77','31'),('53','32'),('58','32'),('54','33'),('55','34'),('72','34'),('60','35'),('88','35'),('64','36'),('78','36'),('94','36'),('76','37'),('83','38'),('90','38'),('91','39'),('16','4'),('28','4'),('31','4'),('5','4'),('62','4'),('71','4'),('74','4'),('87','4'),('9','4'),('95','40'),('6','5'),('66','5'),('75','5'),('85','5'),('10','6'),('11','6'),('61','6'),('7','6'),('73','6'),('93','6'),('65','7'),('69','7'),('8','7'),('12','8'),('17','8'),('14','9');
/*!40000 ALTER TABLE `SongToGenre` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `SongToGenre` with 95 row(s)
--

--
-- Table structure for table `User`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `User_ID` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `Password` varchar(6) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`User_ID`),
  KEY `UserID` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `User` VALUES ('Graeme','12345'),('Jerm','BetA'),('Noah','sigma');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `User` with 3 row(s)
--

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET AUTOCOMMIT=@OLD_AUTOCOMMIT */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on: Thu, 22 Aug 2024 00:58:25 +0000
