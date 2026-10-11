-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: hrs
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `hrs`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `hrs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `hrs`;

--
-- Table structure for table `tblCustomers`
--

DROP TABLE IF EXISTS `tblCustomers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblCustomers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblCustomers`
--

LOCK TABLES `tblCustomers` WRITE;
/*!40000 ALTER TABLE `tblCustomers` DISABLE KEYS */;
INSERT INTO `tblCustomers` VALUES (1,'Linda','Smith','602-555-0101','linda.smith@example.com','4120 E Camelback Rd','Phoenix','AZ','85018'),(2,'Teresa','Garcia','602-555-0102','teresa.garcia@example.com','2215 W Thomas Rd','Phoenix','AZ','85015'),(3,'Michael','Johnson','602-555-0103','michael.johnson@example.com','3610 E Bell Rd','Phoenix','AZ','85032'),(4,'Robert','Williams','480-555-0104','robert.williams@example.com','7350 E Indian School Rd','Scottsdale','AZ','85251'),(5,'Angela','Brown','480-555-0105','angela.brown@example.com','9180 E Shea Blvd','Scottsdale','AZ','85260'),(6,'Kevin','Jones','480-555-0106','kevin.jones@example.com','6420 E McDowell Rd','Scottsdale','AZ','85257'),(7,'Samuel','Rodriguez','520-555-0107','samuel.rodriguez@example.com','5560 E Broadway Blvd','Tucson','AZ','85711'),(8,'Patricia','Miller','520-555-0108','patricia.miller@example.com','3825 N Campbell Ave','Tucson','AZ','85719'),(9,'Denise','Davis','520-555-0109','denise.davis@example.com','7150 E Speedway Blvd','Tucson','AZ','85710'),(10,'Steven','Wilson','702-555-0110','steven.wilson@example.com','8820 W Sahara Ave','Las Vegas','NV','89117'),(11,'Monica','Martinez','702-555-0111','monica.martinez@example.com','4275 S Durango Dr','Las Vegas','NV','89147'),(12,'Gary','Anderson','702-555-0112','gary.anderson@example.com','2630 N Rancho Dr','Las Vegas','NV','89130'),(13,'Daniel','Taylor','505-555-0113','daniel.taylor@example.com','6700 Montgomery Blvd NE','Albuquerque','NM','87109'),(14,'Carol','Hernandez','505-555-0114','carol.hernandez@example.com','4310 Lomas Blvd NE','Albuquerque','NM','87110'),(15,'Rosa','Lopez','505-555-0115','rosa.lopez@example.com','9205 Coors Blvd NW','Albuquerque','NM','87114');
/*!40000 ALTER TABLE `tblCustomers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblEmployees`
--

DROP TABLE IF EXISTS `tblEmployees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblEmployees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `LocationID` int NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `fkEmployeesLocation` (`LocationID`),
  CONSTRAINT `fkEmployeesLocation` FOREIGN KEY (`LocationID`) REFERENCES `tblLocations` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblEmployees`
--

LOCK TABLES `tblEmployees` WRITE;
/*!40000 ALTER TABLE `tblEmployees` DISABLE KEYS */;
INSERT INTO `tblEmployees` VALUES (1,1,'Joe','Herold','President and CEO',NULL,NULL,NULL),(2,1,'Emily','Herold','Vice President and CFO',NULL,NULL,NULL),(3,1,'Karla','Yount','Sales & Renovation Manager',NULL,NULL,NULL),(4,1,'Don','Armstrong','Sales & Renovation Associate',NULL,NULL,NULL),(5,1,'Vanessa','Smith','Sales & Renovation Associate/Scheduling',NULL,NULL,NULL),(6,1,'Dirk','Wellsley','Cabinet/Appliance/Bathroom Technician',NULL,NULL,NULL),(7,1,'Veronica','Holmes','Cabinet/Appliance/Bathroom Technician',NULL,NULL,NULL),(8,1,'Harvey','Underwood','Cabinet/Appliance/Bathroom Technician',NULL,NULL,NULL),(9,1,'Melvin','Jones','Deliveries, Installations and Warehousing',NULL,NULL,NULL),(10,1,'Herbert','Walker','Deliveries and Installations',NULL,NULL,NULL),(11,2,'Greg','Rollins','Store Manager',NULL,NULL,NULL),(12,2,'Tina','Ericson','Office Manager',NULL,NULL,NULL),(13,2,'Roland','Niednagel','Sales & Renovation Associate',NULL,NULL,NULL),(14,2,'Melanie','Griffin','Sales & Renovation Associate',NULL,NULL,NULL),(15,2,'David','Yount','Deliveries and Installations',NULL,NULL,NULL),(16,2,'Jesse','Holmes','Deliveries, Installations and Warehouse',NULL,NULL,NULL),(17,2,'Mark','Westwood','Deliveries and Installations/Sales',NULL,NULL,NULL),(18,2,'Reggie','Bumpers','Deliveries and Installations/Sales',NULL,NULL,NULL),(19,3,'Julie','Young','Store Manager',NULL,NULL,NULL),(20,3,'Marie','Aguilar','Office Manager',NULL,NULL,NULL),(21,3,'Joe','Brown','Sales & Renovation Associate',NULL,NULL,NULL),(22,3,'Julie','Wellsley','Sales & Renovation Associate',NULL,NULL,NULL),(23,3,'Tom','Gregson','Deliveries and Installations',NULL,NULL,NULL),(24,3,'George','Griffin','Deliveries, Installations and Warehouse',NULL,NULL,NULL),(25,3,'Patrick','Downward','Deliveries and Installations/Sales',NULL,NULL,NULL),(26,4,'Dan','Black','Store Manager',NULL,NULL,NULL),(27,4,'Joan','Simmons','Office Manager',NULL,NULL,NULL),(28,4,'Fred','Smith','Sales/Renovation Associate',NULL,NULL,NULL),(29,4,'Marjorie','Adams','Sales/Renovation Associate',NULL,NULL,NULL),(30,4,'James','Miles','Sales/Renovation Associate',NULL,NULL,NULL),(31,4,'Brad','Niles','Delivery and Warehouse',NULL,NULL,NULL),(32,4,'Wesley','Nicks','Delivery and Warehouse',NULL,NULL,NULL),(33,5,'Joan','Holman','Store Manager',NULL,NULL,NULL),(34,5,'Carl','Strand','Office Manager',NULL,NULL,NULL),(35,5,'Jeremy','Dixon','Sales Associate',NULL,NULL,NULL),(36,5,'Brenda','Preston','Sales Associate',NULL,NULL,NULL),(37,5,'Dax','Merriton','Sales Associate',NULL,NULL,NULL),(38,5,'Harvey','Mills','Delivery and Warehouse',NULL,NULL,NULL),(39,5,'Greg','Panton','Delivery and Warehouse',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblEmployees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblInventoryItems`
--

DROP TABLE IF EXISTS `tblInventoryItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblInventoryItems` (
  `InventoryItemID` int NOT NULL AUTO_INCREMENT,
  `ProductID` int NOT NULL,
  `LocationID` int NOT NULL,
  `SerialNumber` varchar(30) DEFAULT NULL,
  `ItemStatus` enum('In Stock','Sold') NOT NULL DEFAULT 'In Stock',
  PRIMARY KEY (`InventoryItemID`),
  UNIQUE KEY `uqInventorySerial` (`ProductID`,`SerialNumber`),
  KEY `fkInventoryLocation` (`LocationID`),
  CONSTRAINT `fkInventoryLocation` FOREIGN KEY (`LocationID`) REFERENCES `tblLocations` (`LocationID`),
  CONSTRAINT `fkInventoryProduct` FOREIGN KEY (`ProductID`) REFERENCES `tblProducts` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblInventoryItems`
--

LOCK TABLES `tblInventoryItems` WRITE;
/*!40000 ALTER TABLE `tblInventoryItems` DISABLE KEYS */;
INSERT INTO `tblInventoryItems` VALUES (1,1,1,'10225688','In Stock'),(2,2,2,'10255688','In Stock'),(3,2,3,'10255687','Sold'),(4,3,1,'10899455','Sold'),(5,3,1,'10899456','In Stock'),(6,3,2,'10899457','In Stock'),(7,3,4,'10899458','Sold'),(8,3,5,'10899459','In Stock'),(9,4,1,'58344566','In Stock'),(10,4,3,'58344544','Sold'),(11,4,4,'58344533','In Stock'),(12,5,2,'56799922','In Stock'),(13,5,3,'56799924','In Stock'),(14,5,5,'56799926','In Stock'),(15,6,1,'98752454','Sold'),(16,6,4,'98752459','In Stock'),(17,6,5,'98752469','Sold'),(18,7,1,'97522146','Sold'),(19,7,4,'97522149','In Stock'),(20,7,5,'97522167','Sold'),(21,8,1,'14825844','Sold'),(22,8,2,'14825848','In Stock'),(23,9,2,'14556688','In Stock'),(24,10,1,'25544886','In Stock'),(25,11,1,'95778966','In Stock'),(26,11,2,'95778998','In Stock'),(27,11,4,'95778983','In Stock'),(28,12,2,'10897781','Sold'),(29,13,1,'10755389','In Stock'),(30,13,2,'10755880','In Stock'),(31,13,3,'10757078','In Stock'),(32,14,1,'34981101','In Stock'),(33,14,3,'34981115','In Stock'),(34,14,5,'34981137','In Stock'),(35,15,1,'34987109','In Stock'),(36,15,2,'34987131','In Stock'),(37,15,3,'34987166','In Stock'),(38,15,4,'34987189','In Stock'),(39,16,5,'34986911','In Stock'),(40,17,1,'28946653','In Stock'),(41,17,3,'28946659','Sold'),(42,18,2,'28946667','In Stock'),(43,18,4,'28946678','In Stock'),(44,19,1,'05897125','In Stock'),(45,19,5,'05897134','Sold'),(46,20,3,'05897167','In Stock'),(47,21,2,'05789661','Sold'),(48,21,4,'05789690','In Stock'),(49,22,1,'55124789','In Stock'),(50,22,3,'55124791','Sold'),(51,22,5,'55124799','Sold'),(52,23,2,'55247891','In Stock'),(53,23,4,'55247912','In Stock'),(54,24,3,'55347925','In Stock'),(55,24,5,'55347937','In Stock'),(56,25,1,'67555211','In Stock'),(57,26,4,'67555237','Sold'),(58,27,2,'67455891','In Stock'),(59,28,3,'15784991','In Stock'),(60,29,1,'87599365','In Stock'),(61,30,2,'87569821','Sold'),(62,31,4,'87589209','Sold'),(63,32,1,'98562234','In Stock'),(64,33,2,'98561257','In Stock'),(65,34,3,'98561223','In Stock'),(66,35,1,'91278691','In Stock'),(67,36,4,'90435680','In Stock'),(68,42,1,NULL,'In Stock'),(69,42,1,NULL,'In Stock'),(70,42,2,NULL,'Sold'),(71,42,3,NULL,'Sold'),(72,43,1,NULL,'In Stock'),(73,43,4,NULL,'In Stock'),(74,43,5,NULL,'In Stock'),(75,44,1,NULL,'In Stock'),(76,44,2,NULL,'In Stock'),(77,45,1,NULL,'In Stock'),(78,45,1,NULL,'In Stock'),(79,45,2,NULL,'In Stock'),(80,45,3,NULL,'In Stock'),(81,45,4,NULL,'In Stock'),(82,45,5,NULL,'In Stock');
/*!40000 ALTER TABLE `tblInventoryItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblJobDetails`
--

DROP TABLE IF EXISTS `tblJobDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblJobDetails` (
  `JobDetailID` int NOT NULL AUTO_INCREMENT,
  `JobID` int NOT NULL,
  `ServiceID` int NOT NULL,
  `WorkArea` varchar(50) DEFAULT NULL,
  `EstimatedHours` decimal(6,2) DEFAULT NULL,
  `RateCharged` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`JobDetailID`),
  KEY `fkJobDetailsJob` (`JobID`),
  KEY `fkJobDetailsService` (`ServiceID`),
  CONSTRAINT `fkJobDetailsJob` FOREIGN KEY (`JobID`) REFERENCES `tblJobs` (`JobID`) ON DELETE CASCADE,
  CONSTRAINT `fkJobDetailsService` FOREIGN KEY (`ServiceID`) REFERENCES `tblServices` (`ServiceID`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblJobDetails`
--

LOCK TABLES `tblJobDetails` WRITE;
/*!40000 ALTER TABLE `tblJobDetails` DISABLE KEYS */;
INSERT INTO `tblJobDetails` VALUES (1,1,1,'All areas',24.00,100.00),(2,1,2,'Kitchen',30.00,75.00),(3,1,4,'Kitchen',8.00,85.00),(4,1,5,'Kitchen',10.00,85.00),(5,1,6,'Kitchen',16.00,60.00),(6,1,8,'Kitchen',NULL,NULL),(7,2,1,'All areas',40.00,100.00),(8,2,2,'Kitchen',32.00,75.00),(9,2,4,'Kitchen',6.00,85.00),(10,2,4,'Bathroom 1',8.00,85.00),(11,2,4,'Bathroom 2',7.00,85.00),(12,2,5,'Kitchen',8.00,85.00),(13,2,9,'Bathroom 2',6.00,50.00),(14,3,1,'All areas',6.00,100.00),(15,3,3,'Kitchen',14.00,75.00),(16,3,5,'Kitchen',4.00,85.00),(17,4,1,'All areas',20.00,100.00),(18,4,4,'Master Bath',12.00,85.00),(19,4,5,'Master Bath',6.00,85.00),(20,4,6,'Master Bath',24.00,60.00),(21,5,1,'All areas',20.00,100.00),(22,5,2,'Kitchen',28.00,75.00),(23,5,4,'Kitchen',6.00,85.00),(24,5,8,'Kitchen',NULL,NULL),(25,6,7,'Kitchen',3.00,85.00),(26,6,5,'Kitchen',2.00,85.00),(27,7,1,'All areas',16.00,100.00),(28,7,4,'Guest Bath',10.00,85.00),(29,7,5,'Guest Bath',6.00,85.00),(30,7,6,'Guest Bath',12.00,60.00),(31,7,9,'Guest Bath',5.00,50.00),(32,8,1,'All areas',12.00,100.00),(33,8,2,'Kitchen',24.00,75.00),(34,8,8,'Kitchen',NULL,NULL),(35,9,1,'All areas',22.00,100.00),(36,9,2,'Kitchen',26.00,75.00),(37,9,4,'Kitchen',6.00,85.00),(38,9,5,'Kitchen',8.00,85.00),(39,9,6,'Kitchen',10.00,60.00),(40,10,1,'All areas',10.00,100.00),(41,10,4,'Laundry Room',6.00,85.00),(42,10,5,'Laundry Room',6.00,85.00);
/*!40000 ALTER TABLE `tblJobDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblJobs`
--

DROP TABLE IF EXISTS `tblJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblJobs` (
  `JobID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `LocationID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `JobDescription` varchar(255) DEFAULT NULL,
  `JobStatus` enum('Out for Bid','Accepted','Declined','In Progress','Complete') NOT NULL DEFAULT 'Out for Bid',
  `BidDate` date DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `CompletionDate` date DEFAULT NULL,
  PRIMARY KEY (`JobID`),
  KEY `fkJobsCustomer` (`CustomerID`),
  KEY `fkJobsLocation` (`LocationID`),
  KEY `fkJobsEmployee` (`EmployeeID`),
  CONSTRAINT `fkJobsCustomer` FOREIGN KEY (`CustomerID`) REFERENCES `tblCustomers` (`CustomerID`),
  CONSTRAINT `fkJobsEmployee` FOREIGN KEY (`EmployeeID`) REFERENCES `tblEmployees` (`EmployeeID`),
  CONSTRAINT `fkJobsLocation` FOREIGN KEY (`LocationID`) REFERENCES `tblLocations` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblJobs`
--

LOCK TABLES `tblJobs` WRITE;
/*!40000 ALTER TABLE `tblJobs` DISABLE KEYS */;
INSERT INTO `tblJobs` VALUES (1,2,1,3,'Full kitchen remodel','Complete','2026-06-15','2026-07-13','2026-08-21'),(2,1,1,4,'Kitchen and two-bathroom renovation','In Progress','2026-08-04','2026-09-14',NULL),(3,5,2,14,'Cabinet re-facing and kitchen lighting update','Accepted','2026-09-21','2026-10-19',NULL),(4,4,2,13,'Master bathroom remodel','Out for Bid','2026-10-02',NULL,NULL),(5,8,3,22,'Kitchen remodel with new cabinets','Declined','2026-08-10',NULL,NULL),(6,7,3,21,'Range installation and kitchen electrical','Complete','2026-09-01','2026-09-04','2026-09-04'),(7,11,4,29,'Guest bathroom renovation','In Progress','2026-08-24','2026-09-28',NULL),(8,12,4,30,'Kitchen cabinet installation and painting','Out for Bid','2026-10-07',NULL,NULL),(9,14,5,37,'Kitchen remodel','Complete','2026-07-06','2026-07-27','2026-08-28'),(10,13,5,35,'Laundry room renovation','Out for Bid','2026-10-08',NULL,NULL);
/*!40000 ALTER TABLE `tblJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblLocations`
--

DROP TABLE IF EXISTS `tblLocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblLocations` (
  `LocationID` int NOT NULL AUTO_INCREMENT,
  `LocationName` varchar(50) NOT NULL,
  `Street` varchar(100) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` char(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblLocations`
--

LOCK TABLES `tblLocations` WRITE;
/*!40000 ALTER TABLE `tblLocations` DISABLE KEYS */;
INSERT INTO `tblLocations` VALUES (1,'Phoenix (HQ)',NULL,'Phoenix','AZ',NULL,NULL),(2,'Scottsdale',NULL,'Scottsdale','AZ',NULL,NULL),(3,'Tucson',NULL,'Tucson','AZ',NULL,NULL),(4,'Las Vegas (Elite Home Renovations)',NULL,'Las Vegas','NV',NULL,NULL),(5,'Albuquerque (IRB Home Supply)',NULL,'Albuquerque','NM',NULL,NULL);
/*!40000 ALTER TABLE `tblLocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblOrderDetails`
--

DROP TABLE IF EXISTS `tblOrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblOrderDetails` (
  `OrderDetailID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `ProductID` int NOT NULL,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderDetailID`),
  KEY `fkOrderDetailsOrder` (`OrderID`),
  KEY `fkOrderDetailsProduct` (`ProductID`),
  CONSTRAINT `fkOrderDetailsOrder` FOREIGN KEY (`OrderID`) REFERENCES `tblOrders` (`OrderID`) ON DELETE CASCADE,
  CONSTRAINT `fkOrderDetailsProduct` FOREIGN KEY (`ProductID`) REFERENCES `tblProducts` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblOrderDetails`
--

LOCK TABLES `tblOrderDetails` WRITE;
/*!40000 ALTER TABLE `tblOrderDetails` DISABLE KEYS */;
INSERT INTO `tblOrderDetails` VALUES (1,1,8,1,3850.00),(2,1,3,1,375.00),(3,2,6,1,799.00),(4,2,7,1,579.00),(5,3,30,1,3999.00),(6,3,12,1,2799.00),(7,3,42,1,269.00),(8,4,21,1,2219.00),(9,5,17,1,2479.00),(10,5,2,1,429.00),(11,5,22,1,229.00),(12,6,4,1,899.00),(13,6,42,1,269.00),(14,7,31,1,5498.50),(15,7,26,1,889.00),(16,8,3,1,375.00),(17,9,6,1,799.00),(18,9,7,1,579.00),(19,10,19,1,1959.00),(20,10,22,1,229.00);
/*!40000 ALTER TABLE `tblOrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblOrders`
--

DROP TABLE IF EXISTS `tblOrders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblOrders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `LocationID` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  `OrderDate` date NOT NULL,
  `OrderStatus` enum('Open','Delivered','Cancelled') NOT NULL DEFAULT 'Open',
  `TaxRate` decimal(5,4) NOT NULL DEFAULT '0.0650',
  `DeliveryCharge` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`OrderID`),
  KEY `fkOrdersCustomer` (`CustomerID`),
  KEY `fkOrdersLocation` (`LocationID`),
  KEY `fkOrdersEmployee` (`EmployeeID`),
  CONSTRAINT `fkOrdersCustomer` FOREIGN KEY (`CustomerID`) REFERENCES `tblCustomers` (`CustomerID`),
  CONSTRAINT `fkOrdersEmployee` FOREIGN KEY (`EmployeeID`) REFERENCES `tblEmployees` (`EmployeeID`),
  CONSTRAINT `fkOrdersLocation` FOREIGN KEY (`LocationID`) REFERENCES `tblLocations` (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblOrders`
--

LOCK TABLES `tblOrders` WRITE;
/*!40000 ALTER TABLE `tblOrders` DISABLE KEYS */;
INSERT INTO `tblOrders` VALUES (1,1,1,4,'2026-08-18','Delivered',0.0650,175.00),(2,3,1,5,'2026-09-22','Open',0.0650,275.00),(3,4,2,13,'2026-08-27','Delivered',0.0650,200.00),(4,6,2,14,'2026-10-05','Open',0.0650,150.00),(5,7,3,21,'2026-09-03','Delivered',0.0650,200.00),(6,9,3,22,'2026-09-29','Open',0.0650,75.00),(7,10,4,28,'2026-08-21','Delivered',0.0650,175.00),(8,12,4,30,'2026-10-01','Open',0.0650,50.00),(9,13,5,35,'2026-09-10','Delivered',0.0650,275.00),(10,15,5,36,'2026-10-06','Open',0.0650,175.00);
/*!40000 ALTER TABLE `tblOrders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblPayments`
--

DROP TABLE IF EXISTS `tblPayments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblPayments` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `OrderID` int DEFAULT NULL,
  `JobID` int DEFAULT NULL,
  `PaymentDate` date NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentMethod` enum('Cash','Check','Credit Card','ACH') NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `fkPaymentsCustomer` (`CustomerID`),
  KEY `fkPaymentsOrder` (`OrderID`),
  KEY `fkPaymentsJob` (`JobID`),
  CONSTRAINT `fkPaymentsCustomer` FOREIGN KEY (`CustomerID`) REFERENCES `tblCustomers` (`CustomerID`),
  CONSTRAINT `fkPaymentsJob` FOREIGN KEY (`JobID`) REFERENCES `tblJobs` (`JobID`),
  CONSTRAINT `fkPaymentsOrder` FOREIGN KEY (`OrderID`) REFERENCES `tblOrders` (`OrderID`),
  CONSTRAINT `chkPaymentsTarget` CHECK (((`OrderID` is null) <> (`JobID` is null)))
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblPayments`
--

LOCK TABLES `tblPayments` WRITE;
/*!40000 ALTER TABLE `tblPayments` DISABLE KEYS */;
INSERT INTO `tblPayments` VALUES (1,1,1,NULL,'2026-08-18',4674.63,'Credit Card'),(2,3,2,NULL,'2026-09-22',500.00,'Credit Card'),(3,4,3,NULL,'2026-08-27',7726.36,'Check'),(4,7,5,NULL,'2026-09-03',3540.91,'Credit Card'),(5,9,6,NULL,'2026-09-29',300.00,'Cash'),(6,10,7,NULL,'2026-08-21',6977.69,'ACH'),(7,13,9,NULL,'2026-09-10',1742.57,'Credit Card'),(8,15,10,NULL,'2026-10-06',1000.00,'Check'),(9,2,NULL,1,'2026-06-20',2000.00,'Check'),(10,2,NULL,1,'2026-08-21',5640.00,'Check'),(11,1,NULL,2,'2026-08-10',3000.00,'ACH'),(12,1,NULL,2,'2026-09-28',3000.00,'ACH'),(13,5,NULL,3,'2026-09-25',1000.00,'Credit Card'),(14,7,NULL,6,'2026-09-04',755.00,'Credit Card'),(15,11,NULL,7,'2026-09-01',1500.00,'Check'),(16,14,NULL,9,'2026-07-10',2000.00,'Check'),(17,14,NULL,9,'2026-08-28',2940.00,'Check');
/*!40000 ALTER TABLE `tblPayments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblProducts`
--

DROP TABLE IF EXISTS `tblProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblProducts` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `VendorID` int DEFAULT NULL,
  `ModelNumber` varchar(30) DEFAULT NULL,
  `Brand` varchar(50) DEFAULT NULL,
  `ProductDescription` varchar(255) DEFAULT NULL,
  `Category` varchar(30) NOT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  `ListPrice` decimal(10,2) DEFAULT NULL,
  `IsLargeItem` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`),
  KEY `fkProductsVendor` (`VendorID`),
  CONSTRAINT `fkProductsVendor` FOREIGN KEY (`VendorID`) REFERENCES `tblVendors` (`VendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblProducts`
--

LOCK TABLES `tblProducts` WRITE;
/*!40000 ALTER TABLE `tblProducts` DISABLE KEYS */;
INSERT INTO `tblProducts` VALUES (1,4,'JVM136C','GE','Over the Range Microwave','Appliances',355.00,499.00,0),(2,4,'JVM136B','GE','Over the Range Microwave','Appliances',325.00,429.00,0),(3,4,'GSD2600','GE','Dishwasher','Appliances',299.00,375.00,0),(4,5,'SHY99A0x','Bosch','Dishwasher','Appliances',599.00,899.00,0),(5,5,'SHU33A0x','Bosch','Dishwasher','Appliances',499.00,739.00,0),(6,5,'WFL 2060','Bosch','Laundry Washer','Appliances',579.00,799.00,1),(7,5,'WTA 3510','Bosch','Laundry Dryer','Appliances',399.00,579.00,1),(8,6,'SZ632','Sub Zero','Built-in Refrigerator - 48\"','Appliances',2799.00,3850.00,1),(9,6,'SZ680','Sub Zero','Built-in Refrigerator - 42\"','Appliances',2499.00,3450.00,1),(10,6,'SZ424/S','Sub Zero','Built-in Wine Cooler - under counter','Appliances',399.00,599.00,0),(11,7,'VGIC-24','Viking','24\" Professional Gas Range SS','Appliances',3295.00,3995.00,1),(12,8,'CVA615','Miele','Built-in Coffee System','Appliances',1499.00,2799.00,0),(13,8,'H398BP2','Miele','Double Wall Oven','Appliances',2399.00,3750.00,1),(14,9,'JGD8348B','Jenn-Air','48\" Prostyle Downdraft Cooktop','Appliances',1499.00,2059.00,0),(15,9,'CVEX4270','Jenn-Air','Double Electric Cooktop','Appliances',699.00,959.00,0),(16,9,'JGD8345A','Jenn-Air','45\" Downdraft Cooktop','Appliances',899.00,1489.00,0),(17,10,'RDFS30QB','Thermador','Black Free Stand Convection Range','Appliances',1799.00,2479.00,1),(18,10,'RDFS30QB','Thermador','Stainless 30\" Free Convection Range','Appliances',1719.00,2359.00,1),(19,11,'ARSE665B','Amana','SS Side-by-Side Refrigerator','Appliances',1249.00,1959.00,1),(20,11,'ARSE665B','Amana','BL Side-by-Side Refrigerator','Appliances',1049.00,1669.00,1),(21,11,'ACD2238H','Amana','SS Side-by-Side Refrigerator','Appliances',1495.00,2219.00,1),(22,12,'777ss','Insinkerator','In-Sink Disposer','Appliances',129.00,229.00,0),(23,12,'Badger5','Insinkerator','In-Sink Disposer','Appliances',49.00,99.95,0),(24,12,'Septic120','Insinkerator','In-Sink Disposer for Septic Systems','Appliances',99.00,199.95,0),(25,13,'75wc','U-Line','Wine Captain 75 Bottle - SS','Appliances',699.00,999.00,0),(26,13,'75wc','U-Line','Wine Captain 75 Bottle - Black','Appliances',599.00,889.00,0),(27,13,'BI98','U-Line','Icemaker - Black','Appliances',499.00,798.00,0),(28,4,'JE2160SF','GE','Microwave - SS','Appliances',179.00,239.00,0),(29,14,'DOP36M94','Dacor','Range - 36\" Pro Dual-Fuel','Appliances',4395.00,6949.00,1),(30,14,'HGER30SNG','Dacor','Heritage 30\" Stainless Range','Appliances',2589.00,3999.00,1),(31,14,'RNRP36GS','Dacor','Renaissance 36\" Stainless Range','Appliances',3899.00,5498.50,1),(32,14,'HWO127PS','Dacor','27\" Heritage Collection Wall Oven','Appliances',2950.00,4019.00,1),(33,14,'HWO230PS','Dacor','30\" Heritage Collection Pro Style Double Oven','Appliances',3985.00,5399.00,1),(34,14,'DCM24S','Dacor','24\" Convection Microwave, Stainless Steel','Appliances',825.00,1199.00,0),(35,14,'DRZ36980R','Dacor','36\" Column Freezer, RH Door, SS','Appliances',7400.00,9299.00,1),(36,14,'DOC30M977DM','Dacor','30\" Electric Wall Oven with Microwave','Appliances',7589.00,9599.00,1),(37,2,'KM-ROWAN-MPL','KraftMaid','Rowan Maple Cabinetry - per linear foot (custom order)','Cabinets',180.00,275.00,0),(38,2,'MR-PORT-CHY','Merillat','Portrait Cherry Cabinetry - per linear foot (custom order)','Cabinets',210.00,320.00,0),(39,2,'SH-VAN36-WHT','Shenandoah','36\" Bathroom Vanity Base - White (custom order)','Cabinets',320.00,489.00,0),(40,2,'KOH-UM3322','Kohler','33\" Stainless Undermount Double-Bowl Kitchen Sink','Sinks & Faucets',285.00,449.00,0),(41,2,'BLA-SG30','Blanco','30\" Silgranit Single-Bowl Kitchen Sink','Sinks & Faucets',260.00,399.00,0),(42,2,'MOE-PD7594','Moen','Pull-Down Kitchen Faucet - Stainless','Sinks & Faucets',159.00,269.00,0),(43,2,'DEL-WS8','Delta','8\" Widespread Bathroom Faucet - Chrome','Sinks & Faucets',119.00,199.00,0),(44,3,'KIC-PND3','Kichler','3-Light Kitchen Island Pendant - Bronze','Lighting',149.00,249.00,0),(45,3,'PRG-UC24','Progress Lighting','24\" LED Under-Cabinet Light','Lighting',39.00,69.00,0),(46,3,'HNK-VB4','Hinkley','4-Light Bathroom Vanity Fixture - Brushed Nickel','Lighting',189.00,309.00,0),(47,3,'SIL-QTZ-CAL','Silestone','Calacatta Quartz Countertop - per sq ft','Countertops & Tile',55.00,89.00,0),(48,3,'WIL-LAM-4925','Wilsonart','Laminate Countertop - per sq ft','Countertops & Tile',12.00,24.00,0),(49,3,'DAL-PORC1224','Daltile','12x24 Porcelain Floor Tile - per sq ft','Countertops & Tile',3.20,5.99,0);
/*!40000 ALTER TABLE `tblProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblServices`
--

DROP TABLE IF EXISTS `tblServices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblServices` (
  `ServiceID` int NOT NULL AUTO_INCREMENT,
  `ServiceName` varchar(50) NOT NULL,
  `HourlyRate` decimal(10,2) DEFAULT NULL,
  `MinimumCharge` decimal(10,2) DEFAULT NULL,
  `MinimumBasis` varchar(30) DEFAULT NULL,
  `VendorID` int DEFAULT NULL,
  PRIMARY KEY (`ServiceID`),
  KEY `fkServicesVendor` (`VendorID`),
  CONSTRAINT `fkServicesVendor` FOREIGN KEY (`VendorID`) REFERENCES `tblVendors` (`VendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblServices`
--

LOCK TABLES `tblServices` WRITE;
/*!40000 ALTER TABLE `tblServices` DISABLE KEYS */;
INSERT INTO `tblServices` VALUES (1,'Renovation',100.00,1000.00,'per job, incl. onsite visits',NULL),(2,'Cabinet Installation',75.00,1500.00,'per kitchen',NULL),(3,'Cabinet Re-facing',75.00,750.00,'per kitchen',NULL),(4,'Plumbing',85.00,500.00,'per kitchen',NULL),(5,'Electrical',85.00,500.00,'per kitchen',NULL),(6,'General Construction',60.00,NULL,NULL,NULL),(7,'Appliance Installation',85.00,NULL,NULL,NULL),(8,'Painting',NULL,500.00,'per kitchen',1),(9,'Wallpaper',50.00,NULL,NULL,1);
/*!40000 ALTER TABLE `tblServices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblVendors`
--

DROP TABLE IF EXISTS `tblVendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblVendors` (
  `VendorID` int NOT NULL AUTO_INCREMENT,
  `VendorName` varchar(100) NOT NULL,
  `VendorType` enum('Supplier','Subcontractor') NOT NULL DEFAULT 'Supplier',
  `ContactName` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblVendors`
--

LOCK TABLES `tblVendors` WRITE;
/*!40000 ALTER TABLE `tblVendors` DISABLE KEYS */;
INSERT INTO `tblVendors` VALUES (1,'AZ Renovation','Subcontractor',NULL,NULL,NULL),(2,'Home Depot','Supplier',NULL,NULL,NULL),(3,'Lowe\'s','Supplier',NULL,NULL,NULL),(4,'GE','Supplier',NULL,NULL,NULL),(5,'Bosch','Supplier',NULL,NULL,NULL),(6,'Sub Zero','Supplier',NULL,NULL,NULL),(7,'Viking','Supplier',NULL,NULL,NULL),(8,'Miele','Supplier',NULL,NULL,NULL),(9,'Jenn-Air','Supplier',NULL,NULL,NULL),(10,'Thermador','Supplier',NULL,NULL,NULL),(11,'Amana','Supplier',NULL,NULL,NULL),(12,'Insinkerator','Supplier',NULL,NULL,NULL),(13,'U-Line','Supplier',NULL,NULL,NULL),(14,'Dacor','Supplier',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tblVendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hrs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-09 15:49:44
