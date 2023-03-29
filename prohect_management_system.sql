CREATE DATABASE  IF NOT EXISTS `project_management_system` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_management_system`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_management_system
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
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone_number` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Mary Jane','jane@gmail.com','09456782645','New York, New York'),(2,'John Smith','john.smith@gmail.com','09876543210','Los Angeles, CA'),(3,'Emily Johnson','emily.johnson@yahoo.com','09765432109','San Francisco, CA'),(4,'David Lee','david.lee@hotmail.com','09654321098','Seattle, WA'),(5,'Michelle Chen','michelle.chen@gmail.com','09543210987','Chicago, IL'),(6,'Daniel Kim','daniel.kim@yahoo.com','09432109876','New York, NY'),(7,'Avery Thompson','avery.thompson@hotmail.com','09321098765','Dallas, TX'),(8,'Sophia Lee','sophia.lee@gmail.com','09210987654','Houston, TX'),(9,'Ryan Chen','ryan.chen@yahoo.com','09109876543','Atlanta, GA'),(10,'Emma Davis','emma.davis@hotmail.com','09098765432','Denver, CO');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_project_details`
--

DROP TABLE IF EXISTS `customer_project_details`;
/*!50001 DROP VIEW IF EXISTS `customer_project_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_project_details` AS SELECT 
 1 AS `customer_name`,
 1 AS `project_name`,
 1 AS `project_start`,
 1 AS `project_end`,
 1 AS `project_budget`,
 1 AS `project_employee_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `customer_projects`
--

DROP TABLE IF EXISTS `customer_projects`;
/*!50001 DROP VIEW IF EXISTS `customer_projects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_projects` AS SELECT 
 1 AS `Project ID`,
 1 AS `Project Name`,
 1 AS `Budget`,
 1 AS `Start`,
 1 AS `End`,
 1 AS `Customer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) NOT NULL,
  `hourly_wage` decimal(10,2) NOT NULL,
  `date_hired` date DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `employee_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'John Jones',50.00,'2022-03-05','admin','21232f297a57a5a743894a0e4a801fc3'),(2,'Alice Anderson',40.00,'2021-01-15',NULL,NULL),(3,'Bob Brown',45.00,'2020-09-01',NULL,NULL),(4,'Cathy Chen',35.00,'2022-01-30',NULL,NULL),(5,'David Davis',55.00,'2021-11-07',NULL,NULL),(6,'Eva Evans',42.00,'2022-02-14',NULL,NULL),(7,'Frank Fernandez',38.00,'2020-06-23',NULL,NULL),(8,'Grace Gonzalez',47.00,'2021-07-08',NULL,NULL),(9,'Henry Hernandez',51.00,'2020-12-12',NULL,NULL),(10,'Isabel Ingram',39.00,'2022-04-02',NULL,NULL),(11,'Jake Jackson',43.00,'2021-03-18',NULL,NULL),(12,'John',24.00,'2021-04-19','john','527bd5b5d689e2c32ae974c6229ff785'),(13,'Bones',23.00,'2023-04-23','bones','775f172869d40d605be241a5070b0afa'),(14,'jeff',23.00,'2023-03-06','jeff','166ee015c0e0934a8781e0c86a197c6e'),(15,'Cage',44.00,'2023-03-06','cage','9f1f78a320748365cb6994db2bc970bb'),(16,'wick',24.00,'2023-03-06','wick','9708d66b9338e4ee6f5db99a65f202de'),(17,'wick',24.00,'2023-03-06','wick','9708d66b9338e4ee6f5db99a65f202de'),(18,'john cage',25.00,'2023-03-06','admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `job_finished_details`
--

DROP TABLE IF EXISTS `job_finished_details`;
/*!50001 DROP VIEW IF EXISTS `job_finished_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `job_finished_details` AS SELECT 
 1 AS `id`,
 1 AS `Customer Name`,
 1 AS `Project Name`,
 1 AS `Employee Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `job_order_details`
--

DROP TABLE IF EXISTS `job_order_details`;
/*!50001 DROP VIEW IF EXISTS `job_order_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `job_order_details` AS SELECT 
 1 AS `Job Order ID`,
 1 AS `Order Date`,
 1 AS `Finished (?)`,
 1 AS `Employee`,
 1 AS `Customer`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `job_orders`
--

DROP TABLE IF EXISTS `job_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `is_finished` int DEFAULT NULL,
  `Projects_id` int NOT NULL,
  `Employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Job_orders_Projects1_idx` (`Projects_id`),
  KEY `fk_Job_orders_Project_employee1_idx` (`Employee_id`),
  CONSTRAINT `fk_Job_orders_Project_employee1` FOREIGN KEY (`Employee_id`) REFERENCES `project_employee` (`id`),
  CONSTRAINT `fk_Job_orders_Projects1` FOREIGN KEY (`Projects_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_orders`
--

LOCK TABLES `job_orders` WRITE;
/*!40000 ALTER TABLE `job_orders` DISABLE KEYS */;
INSERT INTO `job_orders` VALUES (13,NULL,'2023-02-20 00:00:00',NULL,1,1),(14,NULL,'2023-02-20 00:00:00',NULL,2,1),(15,NULL,'2023-02-20 00:00:00',1,3,2),(16,NULL,'2023-02-20 00:00:00',NULL,4,2),(17,NULL,'2023-02-20 00:00:00',NULL,8,6);
/*!40000 ALTER TABLE `job_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_finished`
--

DROP TABLE IF EXISTS `orders_finished`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_finished` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Job_orders_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Orders_finished_Job_orders1_idx` (`Job_orders_id`),
  CONSTRAINT `fk_Orders_finished_Job_orders1` FOREIGN KEY (`Job_orders_id`) REFERENCES `job_orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_finished`
--

LOCK TABLES `orders_finished` WRITE;
/*!40000 ALTER TABLE `orders_finished` DISABLE KEYS */;
INSERT INTO `orders_finished` VALUES (1,15);
/*!40000 ALTER TABLE `orders_finished` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_employee`
--

DROP TABLE IF EXISTS `project_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hours` time DEFAULT NULL,
  `Employees_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Project_employee_Employees1_idx` (`Employees_id`),
  CONSTRAINT `fk_Project_employee_Employees1` FOREIGN KEY (`Employees_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_employee`
--

LOCK TABLES `project_employee` WRITE;
/*!40000 ALTER TABLE `project_employee` DISABLE KEYS */;
INSERT INTO `project_employee` VALUES (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4),(5,NULL,5),(6,NULL,6),(7,NULL,7),(8,NULL,8),(9,NULL,9),(10,NULL,10);
/*!40000 ALTER TABLE `project_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_name` varchar(255) NOT NULL,
  `project_budget` float NOT NULL,
  `project_start` date NOT NULL,
  `project_end` date NOT NULL,
  `Customer_id` int NOT NULL,
  `Project_employee_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Projects_Customer_idx` (`Customer_id`),
  KEY `FK_employee` (`Project_employee_id`),
  CONSTRAINT `FK_employee` FOREIGN KEY (`Project_employee_id`) REFERENCES `project_employee` (`id`),
  CONSTRAINT `fk_Projects_Customer` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'E-commere Website',90000,'2023-02-25','2023-04-25',1,1),(2,'Mobile App Development',50000,'2023-03-15','2023-06-15',2,1),(3,'Data Analysis Platform',75000,'2023-04-01','2023-09-01',3,2),(4,'Online Course Platform',60000,'2023-03-01','2023-07-01',4,2),(5,'Event Planning App',40000,'2023-04-20','2023-07-20',5,3),(6,'Fitness Tracking App',35000,'2023-05-01','2023-08-01',6,4),(7,'Inventory Management System',80000,'2023-04-10','2023-11-10',7,5),(8,'Social Media Marketing',90000,'2023-05-15','2023-10-15',8,6),(9,'Travel Booking Website',65000,'2023-03-25','2023-09-25',9,7),(10,'Real Estate Listing Website',55000,'2023-06-01','2023-10-01',10,8);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_project_details`
--

/*!50001 DROP VIEW IF EXISTS `customer_project_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_project_details` AS select `c`.`customer_name` AS `customer_name`,`p`.`project_name` AS `project_name`,`p`.`project_start` AS `project_start`,`p`.`project_end` AS `project_end`,`p`.`project_budget` AS `project_budget`,`e`.`employee_name` AS `project_employee_name` from (((`projects` `p` join `customer` `c` on((`p`.`Customer_id` = `c`.`id`))) join `project_employee` `pe` on((`p`.`Project_employee_id` = `pe`.`id`))) join `employees` `e` on((`pe`.`Employees_id` = `e`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_projects`
--

/*!50001 DROP VIEW IF EXISTS `customer_projects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_projects` AS select `p`.`id` AS `Project ID`,`p`.`project_name` AS `Project Name`,`p`.`project_budget` AS `Budget`,`p`.`project_start` AS `Start`,`p`.`project_end` AS `End`,`c`.`customer_name` AS `Customer` from (`projects` `p` join `customer` `c` on((`p`.`Customer_id` = `c`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `job_finished_details`
--

/*!50001 DROP VIEW IF EXISTS `job_finished_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `job_finished_details` AS select `jo`.`id` AS `id`,`c`.`customer_name` AS `Customer Name`,`p`.`project_name` AS `Project Name`,`e`.`employee_name` AS `Employee Name` from (((`job_orders` `jo` join `projects` `p` on((`jo`.`Projects_id` = `p`.`id`))) join `customer` `c` on((`p`.`Customer_id` = `c`.`id`))) join `employees` `e` on((`jo`.`Employee_id` = `e`.`id`))) where (`jo`.`is_finished` = '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `job_order_details`
--

/*!50001 DROP VIEW IF EXISTS `job_order_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `job_order_details` AS select `j`.`id` AS `Job Order ID`,`j`.`order_date` AS `Order Date`,(case when (`j`.`is_finished` is null) then 'no' else 'yes' end) AS `Finished (?)`,`e`.`employee_name` AS `Employee`,`c`.`customer_name` AS `Customer` from (((`job_orders` `j` join `employees` `e` on((`j`.`Employee_id` = `e`.`id`))) join `projects` `p` on((`j`.`Projects_id` = `p`.`id`))) join `customer` `c` on((`p`.`Customer_id` = `c`.`id`))) */;
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

-- Dump completed on 2023-03-29  8:08:10
