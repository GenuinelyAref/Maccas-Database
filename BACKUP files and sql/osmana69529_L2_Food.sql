-- mysqldump-php https://github.com/ifsnop/mysqldump-php
--
-- Host: localhost	Database: osmana69529_L2_Food
-- ------------------------------------------------------
-- Server version 	8.0.31-0ubuntu0.20.04.1
-- Date: Fri, 16 Dec 2022 09:26:07 +0000

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
-- Table structure for table `category`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `CategoryID` int NOT NULL AUTO_INCREMENT,
  `Category` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `category` VALUES (1,'Beef & Pork'),(2,'Beverages'),(3,'Breakfast'),(4,'Chicken & Fish'),(5,'Coffee & Tea'),(6,'Desserts'),(7,'Salads'),(8,'Smoothies & Shakes'),(9,'Snacks & Sides');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `category` with 9 row(s)
--

--
-- Table structure for table `food_details`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_details` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Item` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Details` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryID` int NOT NULL,
  `Serving Size` float NOT NULL,
  `Serving Unit` tinyint(1) NOT NULL,
  `Calories` float NOT NULL,
  `Total Fat` float NOT NULL,
  `Saturated Fat` float NOT NULL,
  `Cholesterol` float NOT NULL,
  `Carbohydrates` float NOT NULL,
  `Dietary Fiber` float NOT NULL,
  `Sugars` float NOT NULL,
  `Protein` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_details`
--

LOCK TABLES `food_details` WRITE;
/*!40000 ALTER TABLE `food_details` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `food_details` VALUES (1,'1% Low Fat Milk Jug','',2,236,1,100,2.5,1.5,10,12,0,12,8),(2,'Apple Slices','',9,34,0,15,0,0,0,4,0,3,0),(3,'Bacon Buffalo Ranch McChicken','',4,161,0,430,21,5,50,41,2,6,20),(4,'Bacon Clubhouse Burger','',1,270,0,720,40,15,115,51,4,14,39),(5,'Bacon Clubhouse Crispy Chicken Sandwich','',4,284,0,750,38,10,90,65,4,16,36),(6,'Bacon Clubhouse Grilled Chicken Sandwich','',4,270,0,590,25,8,110,51,4,14,40),(7,'Bacon McDouble','',1,161,0,440,22,10,90,35,2,7,27),(8,'Bacon, Egg & Cheese Bagel','',3,197,0,620,31,11,275,57,3,7,30),(9,'Bacon, Egg & Cheese Bagel with Egg Whites','',3,201,0,570,25,9,60,55,3,8,30),(10,'Bacon, Egg & Cheese Biscuit','Large Biscuit',3,164,0,520,30,14,250,43,3,4,19),(11,'Bacon, Egg & Cheese Biscuit','Regular Biscuit',3,150,0,460,26,13,250,38,2,3,19),(12,'Bacon, Egg & Cheese Biscuit with Egg Whites','Large Biscuit',3,167,0,470,25,12,35,42,3,4,20),(13,'Bacon, Egg & Cheese Biscuit with Egg Whites','Regular Biscuit',3,153,0,410,20,11,35,36,2,3,20),(14,'Bacon, Egg & Cheese McGriddles','',3,174,0,460,21,9,250,48,2,15,19),(15,'Bacon, Egg & Cheese McGriddles with Egg Whites','',3,178,0,400,15,7,35,47,2,16,20),(16,'Baked Apple Pie','',6,77,0,250,13,7,0,32,4,13,2),(17,'Big Breakfast','Regular Biscuit',3,269,0,740,48,17,555,51,3,3,28),(18,'Big Breakfast with Egg Whites','Large Biscuit',3,286,0,690,41,14,35,55,4,4,26),(19,'Big Breakfast with Egg Whites','Regular Biscuit',3,272,0,640,37,14,35,50,3,3,26),(20,'Big Breakfast with Hotcakes','Large Biscuit',3,434,0,1150,60,20,575,116,7,17,36),(21,'Big Breakfast with Hotcakes','Regular Biscuit',3,420,0,1090,56,19,575,111,6,17,36),(22,'Big Breakfast with Hotcakes and Egg Whites','Large Biscuit',3,437,0,1050,50,16,55,115,7,18,35),(23,'Big Breakfast with Hotcakes and Egg Whites','Regular Biscuit',3,423,0,990,46,16,55,110,6,17,35),(24,'Big Mac','',1,211,0,530,27,10,85,47,3,9,24),(25,'Blueberry Pomegranate Smoothie','Large',8,651,1,340,1,0.5,5,79,5,70,4),(26,'Blueberry Pomegranate Smoothie','Medium',8,473,1,260,1,0,5,62,4,54,3),(27,'Buffalo Ranch McChicken','',4,148,0,360,16,3,35,40,2,5,14),(28,'Caramel Iced Coffee','Large',5,946,1,260,9,6,35,43,0,42,2),(29,'Caramel Iced Coffee','Medium',5,651,1,180,7,4.5,25,29,0,28,1),(30,'Caramel Iced Coffee','Small',5,473,1,130,4.5,3,15,22,0,21,1),(31,'Caramel Latte','Large',5,591,1,430,14,8,40,62,1,59,15),(32,'Caramel Latte','Medium',5,473,1,340,10,6,30,50,1,48,11),(33,'Caramel Latte','Small',5,355,1,270,9,5,25,40,1,38,9),(34,'Caramel Mocha','Large',5,591,1,480,17,10,50,66,1,60,16),(35,'Caramel Mocha','Medium',5,473,1,390,14,8,40,55,1,50,12),(36,'Caramel Mocha','Small',5,355,1,320,11,7,35,45,1,40,10),(37,'Cheeseburger','',1,113,0,290,11,5,45,33,2,7,15),(38,'Chicken McNuggets','20 piece',4,323,0,940,59,10,135,59,3,0,44),(39,'Chicken McNuggets','4 piece',4,65,0,190,12,2,25,12,1,0,9),(40,'Chicken McNuggets','40 piece',4,646,0,1880,118,20,265,118,6,1,87),(41,'Chicken McNuggets','6 piece',4,97,0,280,18,3,40,18,1,0,13),(42,'Chipotle BBQ Snack Wrap','Crispy Chicken',9,130,0,340,15,4.5,30,37,1,8,14),(43,'Chipotle BBQ Snack Wrap','Grilled Chicken',9,123,0,260,8,3.5,40,30,1,7,16),(44,'Chocolate Chip Cookie','',6,33,0,160,8,3.5,10,21,1,15,2),(45,'Chocolate Shake','Large',8,651,1,850,23,15,85,141,2,120,19),(46,'Chocolate Shake','Medium',8,473,1,700,20,12,75,114,2,97,15),(47,'Chocolate Shake','Small',8,355,1,560,16,10,60,91,1,77,12),(48,'Cinnamon Melts','',3,114,0,460,19,9,15,66,3,32,6),(49,'Coca-Cola Classic','Child',2,355,1,100,0,0,0,28,0,28,0),(50,'Coca-Cola Classic','Large',2,887,1,280,0,0,0,76,0,76,0),(51,'Coca-Cola Classic','Medium',2,621,1,200,0,0,0,55,0,55,0),(52,'Coca-Cola Classic','Small',2,473,1,140,0,0,0,39,0,39,0),(53,'Coffee','Large',5,473,1,0,0,0,0,0,0,0,0),(54,'Coffee','Medium',5,473,1,0,0,0,0,0,0,0,0),(55,'Coffee','Small',5,355,1,0,0,0,0,0,0,0,0),(56,'Dasani Water Bottle','',2,500,1,0,0,0,0,0,0,0,0),(57,'Diet Coke','Child',2,355,1,0,0,0,0,0,0,0,0),(58,'Diet Coke','Large',2,887,1,0,0,0,0,0,0,0,0),(59,'Diet Coke','Medium',2,621,1,0,0,0,0,0,0,0,0),(60,'Diet Coke','Small',2,473,1,0,0,0,0,0,0,0,0),(61,'Diet Dr Pepper','Child',2,355,1,0,0,0,0,0,0,0,1),(62,'Diet Dr Pepper','Large',2,887,1,0,0,0,0,0,0,0,4),(63,'Diet Dr Pepper','Medium',2,621,1,0,0,0,0,0,0,0,3),(64,'Diet Dr Pepper','Small',2,473,1,0,0,0,0,0,0,0,2),(65,'Double Cheeseburger','',1,161,0,430,21,10,90,35,2,7,24),(66,'Double Quarter Pounder with Cheese','',1,283,0,750,43,19,160,42,3,10,48),(67,'Dr Pepper','Child',2,355,1,100,0,0,0,27,0,26,0),(68,'Dr Pepper','Large',2,887,1,270,0,0,0,72,0,70,0),(69,'Dr Pepper','Medium',2,621,1,190,0,0,0,53,0,51,0),(70,'Dr Pepper','Small',2,473,1,140,0,0,0,37,0,35,0),(71,'Egg McMuffin','',3,136,0,300,13,5,260,31,4,3,17),(72,'Egg White Delight','',3,135,0,250,8,3,25,30,4,3,18),(73,'Fat Free Chocolate Milk Jug','',2,236,1,130,0,0,5,23,1,22,9),(74,'Filet-O-Fish','',4,142,0,390,19,4,40,39,2,5,15),(75,'Frappe Caramel','Large',5,651,1,670,27,17,95,96,0,88,11),(76,'Frappe Caramel','Medium',5,473,1,550,23,15,80,79,0,71,9),(77,'Frappe Caramel','Small',5,355,1,450,19,12,65,64,0,57,7),(78,'Frappe Chocolate Chip','Large',5,651,1,760,31,20,95,111,1,99,12),(79,'Frappe Chocolate Chip','Medium',5,473,1,630,26,17,80,91,1,81,9),(80,'Frappe Chocolate Chip','Small',5,355,1,530,23,14,65,76,1,67,8),(81,'Frappe Mocha','Large',5,651,1,670,26,17,90,98,1,88,11),(82,'Frappe Mocha','Medium',5,473,1,550,22,14,75,80,1,71,9),(83,'Frappe Mocha','Small',5,355,1,450,18,12,65,65,1,57,7),(84,'French Vanilla Iced Coffee','Small',5,473,1,120,4.5,3,15,20,0,19,1),(85,'French Vanilla Latte','Large',5,591,1,420,14,8,40,60,1,56,15),(86,'French Vanilla Latte','Medium',5,473,1,330,10,6,30,48,1,45,11),(87,'French Vanilla Latte','Small',5,355,1,260,9,5,25,38,1,36,9),(88,'Fruit & Maple Oatmeal','',3,251,0,290,4,1.5,5,58,5,32,5),(89,'Fruit \'n Yogurt Parfait','',9,149,0,150,2,1,5,30,1,23,4),(90,'Hamburger','',1,98,0,240,8,3,30,32,1,6,12),(91,'Hash Brown','',3,56,0,150,9,1.5,0,15,2,0,1),(92,'Hazelnut Iced Coffee','Large',5,946,1,250,9,6,35,43,0,41,2),(93,'Hazelnut Iced Coffee','Medium',5,651,1,180,7,4.5,25,29,0,28,1),(94,'Hazelnut Iced Coffee','Small',5,473,1,130,4.5,3,15,21,0,20,1),(95,'Hazelnut Latte','Large',5,591,1,430,14,8,40,62,1,58,15),(96,'Hazelnut Latte','Medium',5,473,1,330,10,6,30,50,1,47,11),(97,'Hazelnut Latte','Small',5,355,1,270,9,5,25,40,1,38,9),(98,'Honey Mustard Snack Wrap','Crispy Chicken',9,123,0,330,15,4.5,35,34,1,3,14),(99,'Hot Caramel Sundae','',6,182,0,340,8,5,30,60,0,43,7),(100,'Hot Chocolate','Large',5,591,1,540,20,12,60,73,1,68,17),(101,'Hot Chocolate','Medium',5,473,1,440,16,9,50,61,1,56,14),(102,'Hot Chocolate','Small',5,355,1,360,13,8,40,50,1,45,11),(103,'Hot Chocolate with Nonfat Milk','Large',5,591,1,400,3.5,2.5,20,74,1,69,19),(104,'Hot Chocolate with Nonfat Milk','Medium',5,473,1,340,3.5,2,15,61,1,57,14),(105,'Hot Chocolate with Nonfat Milk','Small',5,355,1,280,3.5,2,15,50,1,46,12),(106,'Hot Fudge Sundae','',6,179,0,330,9,7,25,53,1,48,8),(107,'Hotcakes','',3,151,0,350,9,2,20,60,3,14,8),(108,'Hotcakes and Sausage','',3,192,0,520,24,7,50,61,3,14,15),(109,'Iced Caramel Mocha','Large',5,651,1,460,16,10,50,65,1,59,13),(110,'Iced Caramel Mocha','Small',5,355,1,280,11,7,35,38,0,33,8),(111,'Iced Coffee with Sugar Free French Vanilla Syrup','Large',5,946,1,160,9,6,35,18,0,2,2),(112,'Iced Coffee with Sugar Free French Vanilla Syrup','Medium',5,651,1,120,7,4.5,25,12,0,2,1),(113,'Iced Coffee with Sugar Free French Vanilla Syrup','Small',5,473,1,80,4.5,3,15,9,0,1,1),(114,'Iced Mocha','Large',5,651,1,480,16,10,50,70,2,62,14),(115,'Iced Mocha','Medium',5,473,1,350,13,8,40,50,1,43,9),(116,'Iced Mocha','Small',5,355,1,290,11,7,35,41,1,34,8),(117,'Iced Mocha with Nonfat Milk','Large',5,651,1,390,6,3.5,25,71,2,62,14),(118,'Iced Mocha with Nonfat Milk','Medium',5,473,1,290,5,3.5,20,50,1,43,10),(119,'Iced Mocha with Nonfat Milk','Small',5,355,1,240,5,3,20,41,1,35,8),(120,'Iced Nonfat Caramel Mocha','Large',5,651,1,370,6,3.5,25,65,1,59,14),(121,'Iced Nonfat Caramel Mocha','Medium',5,473,1,270,5,3,20,47,1,41,10),(122,'Iced Nonfat Caramel Mocha','Small',5,355,1,230,5,3,20,38,0,33,8),(123,'Iced Tea','Child',5,355,1,0,0,0,0,0,0,0,0),(124,'Iced Tea','Large',5,887,1,0,0,0,0,0,0,0,0),(125,'Iced Tea','Medium',5,621,1,0,0,0,0,0,0,0,0),(126,'Iced Tea','Small',5,473,1,0,0,0,0,0,0,0,0),(127,'Jalapeno Double','',1,159,0,430,23,9,80,35,2,6,22),(128,'Kids French Fries','',9,38,0,110,5,1,0,15,1,0,1),(129,'Large French Fries','',9,168,0,510,24,3.5,0,67,5,0,6),(130,'Latte','Medium',5,473,1,210,10,6,30,18,1,15,11),(131,'Latte with Sugar Free French Vanilla Syrup','Large',5,591,1,330,14,8,40,37,2,20,15),(132,'Latte with Sugar Free French Vanilla Syrup','Medium',5,473,1,260,10,6,30,29,1,15,12),(133,'Latte with Sugar Free French Vanilla Syrup','Small',5,355,1,210,9,5,25,24,1,12,9),(134,'Mango Pineapple Smoothie','Large',8,651,1,340,1,0.5,5,78,2,72,4),(135,'Mango Pineapple Smoothie','Medium',8,473,1,260,1,0,5,61,1,56,3),(136,'Mango Pineapple Smoothie','Small',8,355,1,210,0.5,0,5,50,1,46,2),(137,'McChicken','',4,143,0,360,16,3,35,40,2,5,14),(138,'McDouble','',1,147,0,380,17,8,75,34,2,7,22),(139,'McFlurry with M&M\'s Candies','Medium',8,460,0,930,33,20,75,139,2,128,20),(140,'McFlurry with M&M\'s Candies','Small',8,310,0,650,23,14,50,96,1,89,13),(141,'McFlurry with M&M\'s Candies','Snack',8,207,0,430,15,10,35,64,1,59,9),(142,'McFlurry with Oreo Cookies','Medium',8,381,0,690,23,12,55,106,1,85,15),(143,'McFlurry with Oreo Cookies','Small',8,285,0,510,17,9,45,80,1,64,12),(144,'McFlurry with Oreo Cookies','Snack',8,190,0,340,11,6,30,53,1,43,8),(145,'McFlurry with Reese\'s Peanut Butter Cups','Medium',8,403,0,810,32,15,60,114,2,103,21),(146,'McFlurry with Reese\'s Peanut Butter Cups','Snack',8,202,0,410,16,8,30,57,1,51,10),(147,'McRib','',1,208,0,500,26,10,70,44,3,11,22),(148,'Medium French Fries','',9,111,0,340,16,2.5,0,44,4,0,4),(149,'Minute Maid Orange Juice','Large',2,651,1,280,0,0,0,65,0,58,4),(150,'Minute Maid Orange Juice','Medium',2,473,1,190,0,0,0,44,0,39,3),(151,'Minute Maid Orange Juice','Small',2,355,1,150,0,0,0,34,0,30,2),(152,'Mocha','Large',5,591,1,500,17,10,50,72,2,63,16),(153,'Mocha','Small',5,355,1,340,11,7,35,49,2,42,10),(154,'Mocha with Nonfat Milk','Large',5,591,1,390,4,2.5,20,73,2,64,17),(155,'Mocha with Nonfat Milk','Medium',5,473,1,330,3.5,2,15,60,2,53,13),(156,'Mocha with Nonfat Milk','Small',5,355,1,270,3.5,2,15,49,2,43,11),(157,'Nonfat Caramel Latte','Large',5,591,1,310,0.5,0,10,63,1,59,16),(158,'Nonfat Caramel Latte','Medium',5,473,1,250,0,0,5,51,1,48,12),(159,'Nonfat Caramel Latte','Small',5,355,1,200,0,0,5,41,1,39,10),(160,'Nonfat Caramel Mocha','Medium',5,473,1,310,3.5,2,15,56,1,51,13),(161,'Nonfat Caramel Mocha','Small',5,355,1,250,3.5,2,15,45,1,41,10),(162,'Nonfat French Vanilla Latte','Large',5,591,1,300,0.5,0,10,60,1,56,16),(163,'Nonfat French Vanilla Latte','Medium',5,473,1,240,0,0,5,49,1,46,12),(164,'Nonfat French Vanilla Latte','Small',5,355,1,190,0,0,5,39,1,37,10),(165,'Nonfat Hazelnut Latte','Large',5,591,1,310,0.5,0,10,63,1,59,16),(166,'Nonfat Hazelnut Latte','Medium',5,473,1,250,0,0,5,51,1,48,12),(167,'Nonfat Hazelnut Latte','Small',5,355,1,200,0,0,5,40,1,38,10),(168,'Nonfat Latte','Large',5,591,1,170,0.5,0,10,25,1,21,16),(169,'Nonfat Latte','Medium',5,473,1,130,0,0,5,19,1,16,12),(170,'Nonfat Latte','Small',5,355,1,100,0,0,5,15,1,13,10),(171,'Nonfat Latte with Sugar Free French Vanilla Syrup','Large',5,591,1,220,0.5,0,10,38,2,21,16),(172,'Nonfat Latte with Sugar Free French Vanilla Syrup','Medium',5,473,1,170,0,0,5,30,1,16,12),(173,'Nonfat Latte with Sugar Free French Vanilla Syrup','Small',5,355,1,140,0,0,5,24,1,13,10),(174,'Oatmeal Raisin Cookie','',6,33,0,150,6,2.5,10,22,1,13,2),(175,'Premium Bacon Ranch Salad','without Chicken',7,223,0,140,7,3.5,25,10,3,4,9),(176,'Premium Bacon Ranch Salad with Crispy Chicken','',7,255,0,380,21,6,70,22,2,5,25),(177,'Premium Bacon Ranch Salad with Grilled Chicken','',7,241,0,220,8,4,85,8,2,4,29),(178,'Premium Crispy Chicken Classic Sandwich','',4,213,0,510,22,3.5,45,55,3,10,24),(179,'Premium Crispy Chicken Club Sandwich','',4,249,0,670,33,9,85,58,3,11,36),(180,'Premium Crispy Chicken Ranch BLT Sandwich','',4,230,0,610,28,6,70,57,3,11,32),(181,'Premium Grilled Chicken Classic Sandwich','',4,200,0,350,9,2,65,42,3,8,28),(182,'Premium Grilled Chicken Club Sandwich','',4,235,0,510,20,7,105,44,3,9,40),(183,'Premium Grilled Chicken Ranch BLT Sandwich','',4,217,0,450,15,4.5,90,43,3,9,36),(184,'Premium McWrap Chicken & Bacon','Crispy Chicken',4,316,0,630,32,9,80,56,3,7,32),(185,'Premium McWrap Chicken & Bacon','Grilled Chicken',4,302,0,480,19,7,95,42,3,6,36),(186,'Premium McWrap Chicken & Ranch','Crispy Chicken',4,310,0,610,31,8,65,56,3,8,27),(187,'Premium McWrap Chicken & Ranch','Grilled Chicken',4,297,0,450,18,6,80,42,3,6,30),(188,'Premium McWrap Chicken Sweet Chili','Crispy Chicken',4,304,0,540,23,4.5,50,61,3,14,23),(189,'Premium McWrap Chicken Sweet Chili','Grilled Chicken',4,291,0,380,10,3,65,47,3,12,27),(190,'Premium McWrap Southwest Chicken','Crispy Chicken',4,314,0,670,33,8,60,68,5,12,27),(191,'Premium McWrap Southwest Chicken','Grilled Chicken',4,318,0,520,20,6,80,55,5,10,31),(192,'Premium Southwest Salad','without Chicken',7,230,0,140,4.5,2,10,20,6,6,6),(193,'Premium Southwest Salad with Crispy Chicken','',7,348,0,450,22,4.5,50,42,7,12,23),(194,'Premium Southwest Salad with Grilled Chicken','',7,335,0,290,8,2.5,70,28,7,10,27),(195,'Quarter Pounder Deluxe','',1,244,0,540,27,11,85,45,3,9,29),(196,'Quarter Pounder with Bacon & Cheese','',1,227,0,600,29,13,105,48,3,12,37),(197,'Quarter Pounder with Bacon Habanero Ranch','',1,235,0,610,31,13,105,46,3,10,37),(198,'Quarter Pounder with Cheese','',1,202,0,520,26,12,95,41,3,10,30),(199,'Ranch Snack Wrap','Crispy Chicken',9,128,0,360,20,5,40,32,1,3,15),(200,'Ranch Snack Wrap','Grilled Chicken',9,121,0,280,13,4.5,45,25,1,2,16),(201,'Regular Iced Coffee','Large',5,946,1,270,9,6,35,47,0,45,2),(202,'Regular Iced Coffee','Medium',5,651,1,190,7,4.5,25,31,0,30,1),(203,'Regular Iced Coffee','Small',5,473,1,140,4.5,3,15,23,0,22,1),(204,'Sausage Biscuit','Large Biscuit',3,131,0,480,31,13,30,39,3,3,11),(205,'Sausage Biscuit','Regular Biscuit',3,117,0,430,27,12,30,34,2,2,11),(206,'Sausage Biscuit with Egg','Large Biscuit',3,177,0,570,37,15,250,42,3,3,18),(207,'Sausage Biscuit with Egg','Regular Biscuit',3,163,0,510,33,14,250,36,2,2,18),(208,'Sausage Biscuit with Egg Whites','Regular Biscuit',3,167,0,460,27,12,35,34,2,3,18),(209,'Sausage Burrito','',3,111,0,300,16,7,115,26,1,2,12),(210,'Sausage McGriddles','',3,141,0,420,22,8,35,44,2,15,11),(211,'Sausage McMuffin with Egg','',3,161,0,450,28,10,285,30,4,2,21),(212,'Sausage McMuffin with Egg Whites','',3,161,0,400,23,8,50,30,4,2,21),(213,'Sausage, Egg & Cheese McGriddles','',3,201,0,550,31,12,265,48,2,15,20),(214,'Sausage, Egg & Cheese McGriddles with Egg Whites','',3,205,0,500,26,10,50,46,2,15,21),(215,'Shamrock Shake','Large',8,651,1,820,23,15,90,135,0,115,18),(216,'Shamrock Shake','Medium',8,473,1,660,19,12,75,109,0,93,14),(217,'Side Salad','',9,87,0,20,0,0,0,4,1,2,1),(218,'Small French Fries','',9,75,0,230,11,1.5,0,30,2,0,2),(219,'Southern Style Chicken Biscuit','Large Biscuit',3,157,0,470,24,9,30,46,3,4,17),(220,'Southern Style Chicken Biscuit','Regular Biscuit',3,143,0,410,20,8,30,41,2,3,17),(221,'Southern Style Crispy Chicken Sandwich','',4,160,0,430,19,3,45,43,2,7,21),(222,'Sprite','Child',2,355,1,100,0,0,0,27,0,27,0),(223,'Sprite','Large',2,887,1,280,0,0,0,74,0,74,0),(224,'Sprite','Medium',2,621,1,200,0,0,0,54,0,54,0),(225,'Sprite','Small',2,473,1,140,0,0,0,37,0,37,0),(226,'Steak & Egg Biscuit','Regular Biscuit',3,201,0,540,32,16,280,38,2,3,25),(227,'Steak & Egg McMuffin','',3,185,0,430,23,9,300,31,4,3,26),(228,'Steak, Egg & Cheese Bagel','',3,241,0,670,35,13,295,56,3,7,33),(229,'Strawberry Banana Smoothie','Large',8,651,1,330,1,0.5,5,74,4,70,5),(230,'Strawberry Banana Smoothie','Medium',8,473,1,250,1,0,5,58,3,54,4),(231,'Strawberry Banana Smoothie','Small',8,355,1,210,0.5,0,5,47,3,44,3),(232,'Strawberry Shake','Medium',8,473,1,690,20,13,75,114,0,100,15),(233,'Strawberry Shake','Small',8,355,1,550,16,10,60,90,0,79,12),(234,'Strawberry Sundae','',6,178,0,280,6,4,25,49,0,45,6),(235,'Sweet Tea','Child',5,355,1,110,0,0,0,27,0,27,0),(236,'Sweet Tea','Large',5,887,1,220,0,0,0,54,0,54,1),(237,'Sweet Tea','Medium',5,621,1,180,0,0,0,45,0,45,1),(238,'Vanilla Shake','Large',8,651,1,820,23,15,90,135,0,101,18),(239,'Vanilla Shake','Medium',8,473,1,660,19,12,75,109,0,81,14),(240,'Vanilla Shake','Small',8,355,1,530,15,10,60,86,0,63,11);
/*!40000 ALTER TABLE `food_details` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `food_details` with 240 row(s)
--

--
-- Table structure for table `food_entries`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food_entries` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Item` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Details` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `CategoryID` int NOT NULL,
  `Serving Size` float NOT NULL,
  `Serving Unit` tinyint(1) NOT NULL,
  `Calories` float NOT NULL,
  `Total Fat` float NOT NULL,
  `Saturated Fat` float NOT NULL,
  `Cholesterol` float NOT NULL,
  `Carbohydrates` float NOT NULL,
  `Dietary Fiber` float NOT NULL,
  `Sugars` float NOT NULL,
  `Protein` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_entries`
--

LOCK TABLES `food_entries` WRITE;
/*!40000 ALTER TABLE `food_entries` DISABLE KEYS */;
SET autocommit=0;
INSERT INTO `food_entries` VALUES (244,'Osman Frappe','Limited Edition Frappe',8,700,1,420,10,4,5,5,2,30,1),(245,'salad','',7,1,0,500,2,2,0,10,10,0,20),(246,'Test Burger','',1,200,0,125,10,3,0.25,300,25,50,50),(247,'Chopped Cheese','The best sandwich.',1,2,0,1000,50,120,100,90,120,50,200);
/*!40000 ALTER TABLE `food_entries` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;

-- Dumped table `food_entries` with 4 row(s)
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

-- Dump completed on: Fri, 16 Dec 2022 09:26:07 +0000
