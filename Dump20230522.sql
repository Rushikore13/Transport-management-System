-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: online_transport_system
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Vehicle_No` varchar(20) DEFAULT NULL,
  `Units` varchar(50) DEFAULT NULL,
  `Driver_Id` int(10) DEFAULT NULL,
  `Driver_Name` varchar(45) DEFAULT NULL,
  `T_Bill` float DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'rohini patil','pune',9923394036,'2','12',2,'Atul Karambalkar',1080,1,90,NULL,1,NULL),(1,'Tanuja Vagh','gadhinglaj',9923394036,'2','50',2,'Atul Karambalkar',4500,1,90,'2023-05-25',2,NULL),(2,'Shreyash deshmane','A/P .kadgoan',9923394036,'2','7',2,'Atul Karambalkar',630,2,90,'2023-05-26',3,'shreyashdeshmane108@gmail.com'),(2,'Shreyash deshmane','A/P .kadgoan',9923394036,'2','7',2,'Atul Karambalkar',630,2,90,'2023-05-26',4,'shreyashdeshmane108@gmail.com'),(3,'amit','Gad',8308181386,'1','10',1,'Ram patil',500,3,50,'2023-05-13',5,'ketangorule29@gmail.com'),(4,'Shubham patil','A/P .kadgoan',7218566635,'2','45',2,'Atul Karambalkar',1555,4,90,'2023-05-16',6,'shubh5635@gmail.com'),(5,'jyoti patil','A/P .kadgoan',8308181386,'1','45',1,'Ram patil',124522,5,50,'2023-05-18',7,'jyotipatil6907@gmail.com'),(2,'ram patil','A/P .kadgoan',9923394036,'2','8',2,'Atul Karambalkar',720,2,90,'2023-05-17',8,'ketangorule29@gmail.com');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch_manager`
--

DROP TABLE IF EXISTS `branch_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch_manager` (
  `Manager_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Manager_Name` varchar(50) DEFAULT NULL,
  `Branch_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Manager_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch_manager`
--

LOCK TABLES `branch_manager` WRITE;
/*!40000 ALTER TABLE `branch_manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `branch_manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_registration`
--

DROP TABLE IF EXISTS `customer_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_registration` (
  `Cust_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cust_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_registration`
--

LOCK TABLES `customer_registration` WRITE;
/*!40000 ALTER TABLE `customer_registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver_registration`
--

DROP TABLE IF EXISTS `driver_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `driver_registration` (
  `Driver_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `Licence_No` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Driver_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver_registration`
--

LOCK TABLES `driver_registration` WRITE;
/*!40000 ALTER TABLE `driver_registration` DISABLE KEYS */;
INSERT INTO `driver_registration` VALUES (1,'Ram Patil',8806486352,'Mumbai','2years','dimage/d1.png','GYT12658975'),(2,'Atul karambalkar',9850124578,'Pune','6years','dimage/d2.jpg','ASD785694'),(3,'Sham desai',9876543210,' kolhapur ','6years','images/d1.png','1234578gfht'),(4,'sachin patil',9850124578,'gadhinglaj','2years','dimage/d2.jpg','1234578gfht'),(5,'sanjay patil',9876543210,'radhanagri','6years','dimage/d3.jpg','1234578gfht'),(6,'sanket patil',7561397561,'sangali','2years','dimage/d2.jpg','DFR4578965');
/*!40000 ALTER TABLE `driver_registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Feedback` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,'rohini patil','rohini@gmail.com',9923394036,'Good',1),(2,'Shreyash deshmane','shreyashdeshmane108@gmail.com',9923394036,'good',2),(2,'Shreyash deshmane','shreyashdeshmane108@gmail.com',9923394036,'no',2);
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forgotpass`
--

DROP TABLE IF EXISTS `forgotpass`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forgotpass` (
  `email` int(9) DEFAULT NULL,
  `pass` varchar(8) DEFAULT NULL,
  `npass` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forgotpass`
--

LOCK TABLES `forgotpass` WRITE;
/*!40000 ALTER TABLE `forgotpass` DISABLE KEYS */;
/*!40000 ALTER TABLE `forgotpass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage_vehicle`
--

DROP TABLE IF EXISTS `manage_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage_vehicle` (
  `Vehicle_No` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Year` int(9) DEFAULT NULL,
  `Vehicle_Color` varchar(50) DEFAULT NULL,
  `Vehicle_Img` varchar(500) DEFAULT NULL,
  `Booked_date` date DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Route` varchar(50) DEFAULT NULL,
  `Driver_Contact` bigint(10) DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_No`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage_vehicle`
--

LOCK TABLES `manage_vehicle` WRITE;
/*!40000 ALTER TABLE `manage_vehicle` DISABLE KEYS */;
INSERT INTO `manage_vehicle` VALUES (1,2002,'blue','images/gal9.jpg','2023-05-19','mahindra','Ram patil','mumbai',8806486352,50),(2,2020,'pink','images/modal.jpg','2023-05-26','Honda','Atul Karambalkar','pune',9850124578,90),(3,2020,'browm','images/modal.jpg','2023-05-19','mahindra','sham desai','pune',9850124578,100),(4,2002,'red','images/gal9.jpg','2023-05-20','mahindra','sachin kadam','mumbai',7896065422,90),(5,2020,'yellow','images/gal2.jpg','2023-05-23','mahindra','sanjay patil','kolhapur',7896065422,100),(6,2020,'red','images/gal9.jpg','2023-06-03','mahindra','sanket patil','kolhapur',7561397561,85);
/*!40000 ALTER TABLE `manage_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `payer_id` int(9) DEFAULT NULL,
  `payer_name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `card_no` bigint(12) DEFAULT NULL,
  `Amount` bigint(20) DEFAULT NULL,
  `cvv` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (2,'Shreyash deshmane','shreyashdeshmane108@gmail.com',457899999,630,568);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `query`
--

DROP TABLE IF EXISTS `query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Quefeedback` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `query`
--

LOCK TABLES `query` WRITE;
/*!40000 ALTER TABLE `query` DISABLE KEYS */;
INSERT INTO `query` VALUES (1,'rohini patil','rohini@gmail.com',9923394036,'No',1),(1,'rohini patil','rohini@gmail.com',9923394036,'no',1),(2,'Shreyash deshmane','shreyashdeshmane108@gmail.com',9923394036,'no',2),(2,'Shreyash deshmane','shreyashdeshmane108@gmail.com',9923394036,'no\r\n',2);
/*!40000 ALTER TABLE `query` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup_tbl`
--

DROP TABLE IF EXISTS `signup_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signup_tbl` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pass` varchar(8) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup_tbl`
--

LOCK TABLES `signup_tbl` WRITE;
/*!40000 ALTER TABLE `signup_tbl` DISABLE KEYS */;
INSERT INTO `signup_tbl` VALUES (1,'Ekata','Patil','ekatapatil2002ep@gmail.com','ekata77',9767451343),(2,'ram ','patil','ram@gmail.com','1234567',8308181386),(3,'dereyer','Patil','shreyashdeshmane108@gmail.com','Amit@123',9865321245),(4,'Jyoti','patil','jyotipatil6907@gmail.com','Jyoti@11',8308181386);
/*!40000 ALTER TABLE `signup_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_info`
--

DROP TABLE IF EXISTS `transport_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_info` (
  `uni_Slip_No` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(20) DEFAULT NULL,
  `Vehicle_No` varchar(20) DEFAULT NULL,
  `Units` varchar(50) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Trip_Start_Date` date DEFAULT NULL,
  `Trip_End_Date` date DEFAULT NULL,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Cust_Address` varchar(100) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Transport_Amount` float DEFAULT NULL,
  PRIMARY KEY (`uni_Slip_No`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_info`
--

LOCK TABLES `transport_info` WRITE;
/*!40000 ALTER TABLE `transport_info` DISABLE KEYS */;
INSERT INTO `transport_info` VALUES (1,'mahindra','1','50','mumbai','2023-05-13','2023-05-13','Ram patil','rohini patil','mumbai',8806486352,1080),(2,'mahindra','3','12','mumbai','2023-05-15','2023-05-15','Atul Karambalkar','rohini patil','mumbai',9767451343,15000),(3,'mahindra','4','50','pune','2023-05-25','2023-05-25','sachin patil','rohini patil','pune',7896065422,120000),(4,'mahindra','5','70','kolhapur','2023-05-17','2023-05-17','Atul Karambalkar','Shubham patil','Ardal',7896065422,15000);
/*!40000 ALTER TABLE `transport_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upi_payment`
--

DROP TABLE IF EXISTS `upi_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upi_payment` (
  `UPI_Id` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upi_payment`
--

LOCK TABLES `upi_payment` WRITE;
/*!40000 ALTER TABLE `upi_payment` DISABLE KEYS */;
INSERT INTO `upi_payment` VALUES ('rohi123456789',1080),('shreyas1245',450),('shubh1254455',1555),('jyoti879651222',124522);
/*!40000 ALTER TABLE `upi_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_signup_tbl`
--

DROP TABLE IF EXISTS `user_signup_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_signup_tbl` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pass` varchar(8) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_signup_tbl`
--

LOCK TABLES `user_signup_tbl` WRITE;
/*!40000 ALTER TABLE `user_signup_tbl` DISABLE KEYS */;
INSERT INTO `user_signup_tbl` VALUES (1,'rohini','patil','rohini@gmail.com','12345678',9923394036,NULL),(2,'Shreyash','Deshmane','shreyashdeshmane108@gmail.com','1234',9923394036,NULL),(3,'ram ','patil','ketangorule29@gmail.com','Amit@123',8308181386,NULL),(4,'Shubham','patil','shubh5635@gmail.com','Shubh@12',7218566635,NULL),(5,'Jyoti','patil','jyotipatil6907@gmail.com','Jyoti@12',8308181386,NULL);
/*!40000 ALTER TABLE `user_signup_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-22 11:14:23
