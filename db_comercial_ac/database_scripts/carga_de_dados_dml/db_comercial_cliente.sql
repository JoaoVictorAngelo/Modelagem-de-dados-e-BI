CREATE DATABASE  IF NOT EXISTS `db_comercial` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_comercial`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: db_comercial
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(100) NOT NULL,
  `id_vendedor` int NOT NULL,
  `id_cidade` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_vendedor` (`id_vendedor`),
  KEY `id_cidade` (`id_cidade`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_vendedor`) REFERENCES `vendedor` (`id_vendedor`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `chk_cliente_nome` CHECK ((length(`nome_cliente`) > 0))
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Thiago Vieira',2,22),(2,'Isabela Lima',1,22),(3,'Lucas Gomes',2,22),(4,'SÃ©rgio Gomes',1,22),(5,'Mariana Souza',2,18),(6,'Wanda Freitas',1,18),(7,'Marcelo Vieira',2,18),(8,'Olivia Pires',1,18),(9,'Viviane Pires',2,18),(10,'Ester Lima',1,18),(11,'JÃºlio Santos',2,18),(12,'Daniel Oliveira',1,18),(13,'OtÃ¡vio Mendes',2,18),(14,'Rafael Nunes',1,30),(15,'Xavier Castro',2,30),(16,'Yara ConceiÃ§Ã£o',1,30),(17,'Uriel Barbosa',2,30),(18,'Renata Costa',1,30),(19,'Priscila Souza',2,30),(20,'Elisa Pereira',1,30),(21,'Vitor Melo',2,30),(22,'Quiteria Mendes',1,30),(23,'Nuno Barbosa',2,30),(24,'Felipe Almeida',1,16),(25,'NatÃ¡lia Rocha',2,16),(26,'CecÃ­lia Dantas',1,16),(27,'Sofia Carvalho',2,16),(28,'Giovana Rocha',1,16),(29,'Quirino Alves',2,16),(30,'Gabriela Matos',1,16),(31,'Ana Silva',2,16),(32,'Henrique Nogueira',1,2),(33,'Fernando Guedes',2,2),(34,'Diego Pinho',1,2),(35,'Karen Ribeiro',2,2),(36,'Wagner Ferreira',1,2),(37,'Alice Neves',2,2),(38,'JoÃ£o Martins',1,8),(39,'Bernardo Faria',2,8),(40,'Yasmin Nunes',1,8),(41,'Ursula Dias',2,8),(42,'Hugo Fernandes',1,8),(43,'Ingrid Ramos',2,8),(44,'Bruno Costa',1,8),(45,'Carla Santos',2,8),(46,'Tatiane Lima',1,8),(47,'Paulo Ferreira',2,8),(48,'Lara Oliveira',1,8),(49,'ZÃ©lia Carvalho',2,8),(50,'Zeca Moraes',1,8),(51,'Thiago Vieira',2,8),(52,'Isabela Lima',1,12),(53,'Lucas Gomes',2,12),(54,'SÃ©rgio Gomes',1,12),(55,'Mariana Souza',2,12),(56,'Wanda Freitas',1,12),(57,'Marcelo Vieira',2,3),(58,'Olivia Pires',1,3),(59,'Viviane Pires',2,3),(60,'Ester Lima',1,3),(61,'JÃºlio Santos',2,3),(62,'Daniel Oliveira',1,25),(63,'OtÃ¡vio Mendes',2,25),(64,'Rafael Nunes',1,25),(65,'Xavier Castro',2,25),(66,'Yara ConceiÃ§Ã£o',1,25),(67,'Uriel Barbosa',2,25),(68,'Renata Costa',1,25),(69,'Priscila Souza',2,25),(70,'Elisa Pereira',1,25),(71,'Vitor Melo',2,25),(72,'Quiteria Mendes',1,15),(73,'Nuno Barbosa',2,15),(74,'Felipe Almeida',1,15),(75,'NatÃ¡lia Rocha',2,15),(76,'CecÃ­lia Dantas',1,15),(77,'Sofia Carvalho',2,15),(78,'Giovana Rocha',1,15),(79,'Quirino Alves',2,15),(80,'Gabriela Matos',1,15),(81,'Ana Silva',2,15),(82,'Henrique Nogueira',1,32),(83,'Fernando Guedes',2,32),(84,'Diego Pinho',1,32),(85,'Karen Ribeiro',2,32),(86,'Wagner Ferreira',1,32),(87,'Alice Neves',2,32),(88,'JoÃ£o Martins',1,32),(89,'Bernardo Faria',2,32),(90,'Yasmin Nunes',1,32),(91,'Ursula Dias',2,20),(92,'Hugo Fernandes',1,20),(93,'Ingrid Ramos',2,20),(94,'Bruno Costa',1,20),(95,'Carla Santos',2,20),(96,'Tatiane Lima',1,20),(97,'Paulo Ferreira',2,19),(98,'Lara Oliveira',1,19),(99,'ZÃ©lia Carvalho',2,19),(100,'Zeca Moraes',1,19),(101,'Thiago Vieira',2,19),(102,'Isabela Lima',1,28),(103,'Lucas Gomes',2,28),(104,'SÃ©rgio Gomes',1,28),(105,'Mariana Souza',2,28),(106,'Wanda Freitas',1,28),(107,'Marcelo Vieira',2,28),(108,'Olivia Pires',1,26),(109,'Viviane Pires',2,26),(110,'Ester Lima',1,26),(111,'JÃºlio Santos',2,26),(112,'Daniel Oliveira',1,26),(113,'OtÃ¡vio Mendes',2,26),(114,'Rafael Nunes',1,26),(115,'Xavier Castro',2,26),(116,'Yara ConceiÃ§Ã£o',1,13),(117,'Uriel Barbosa',2,13),(118,'Renata Costa',1,13),(119,'Priscila Souza',2,13),(120,'Elisa Pereira',1,13),(121,'Vitor Melo',2,5),(122,'Quiteria Mendes',1,5),(123,'Nuno Barbosa',2,5),(124,'Felipe Almeida',1,5),(125,'NatÃ¡lia Rocha',2,5),(126,'CecÃ­lia Dantas',1,5),(127,'Sofia Carvalho',2,23),(128,'Giovana Rocha',1,23),(129,'Quirino Alves',2,23),(130,'Gabriela Matos',1,23),(131,'Ana Silva',2,23),(132,'Henrique Nogueira',1,24),(133,'Fernando Guedes',2,24),(134,'Diego Pinho',1,24),(135,'Karen Ribeiro',2,24),(136,'Wagner Ferreira',1,24),(137,'Alice Neves',2,24),(138,'JoÃ£o Martins',1,24),(139,'Bernardo Faria',2,34),(140,'Yasmin Nunes',1,34),(141,'Ursula Dias',2,34),(142,'Hugo Fernandes',1,34),(143,'Ingrid Ramos',2,34),(144,'Bruno Costa',1,34),(145,'Carla Santos',2,34),(146,'Tatiane Lima',1,34),(147,'Paulo Ferreira',2,34),(148,'Lara Oliveira',1,34),(149,'ZÃ©lia Carvalho',2,34),(150,'Zeca Moraes',1,34),(151,'Thiago Vieira',2,34),(152,'Isabela Lima',1,27),(153,'Lucas Gomes',2,27),(154,'SÃ©rgio Gomes',1,27),(155,'Mariana Souza',2,27),(156,'Wanda Freitas',1,27),(157,'Marcelo Vieira',2,27),(158,'Olivia Pires',1,27),(159,'Viviane Pires',2,27),(160,'Ester Lima',1,27),(161,'JÃºlio Santos',2,27),(162,'Daniel Oliveira',1,11),(163,'OtÃ¡vio Mendes',2,11),(164,'Rafael Nunes',1,11),(165,'Xavier Castro',2,11),(166,'Yara ConceiÃ§Ã£o',1,31),(167,'Uriel Barbosa',2,31),(168,'Renata Costa',1,31),(169,'Priscila Souza',2,31),(170,'Elisa Pereira',1,31),(171,'Vitor Melo',2,31),(172,'Quiteria Mendes',1,31),(173,'Nuno Barbosa',2,31),(174,'Felipe Almeida',1,31),(175,'NatÃ¡lia Rocha',2,31),(176,'CecÃ­lia Dantas',1,29),(177,'Sofia Carvalho',2,29),(178,'Giovana Rocha',1,29),(179,'Quirino Alves',2,29),(180,'Gabriela Matos',1,29),(181,'Ana Silva',2,29),(182,'Henrique Nogueira',1,29),(183,'Fernando Guedes',2,29),(184,'Diego Pinho',1,9),(185,'Karen Ribeiro',2,9),(186,'Wagner Ferreira',1,9),(187,'Alice Neves',2,9),(188,'JoÃ£o Martins',1,9),(189,'Bernardo Faria',2,14),(190,'Yasmin Nunes',1,14),(191,'Ursula Dias',2,14),(192,'Hugo Fernandes',1,14),(193,'Ingrid Ramos',2,14),(194,'Bruno Costa',1,14),(195,'Carla Santos',2,14),(196,'Tatiane Lima',1,14),(197,'Paulo Ferreira',2,14),(198,'Lara Oliveira',1,14),(199,'ZÃ©lia Carvalho',2,17),(200,'Zeca Moraes',1,17),(201,'Thiago Vieira',2,17),(202,'Isabela Lima',1,17),(203,'Lucas Gomes',2,17),(204,'SÃ©rgio Gomes',1,17),(205,'Mariana Souza',2,6),(206,'Wanda Freitas',1,6),(207,'Marcelo Vieira',2,6),(208,'Olivia Pires',1,6),(209,'Viviane Pires',2,6),(210,'Ester Lima',1,6),(211,'JÃºlio Santos',2,6),(212,'Daniel Oliveira',1,6),(213,'OtÃ¡vio Mendes',2,6),(214,'Rafael Nunes',1,6),(215,'Xavier Castro',2,33),(216,'Yara ConceiÃ§Ã£o',1,33),(217,'Uriel Barbosa',2,33),(218,'Renata Costa',1,33),(219,'Priscila Souza',2,33),(220,'Elisa Pereira',1,33),(221,'Vitor Melo',2,33),(222,'Quiteria Mendes',1,33),(223,'Nuno Barbosa',2,33),(224,'Felipe Almeida',1,33),(225,'NatÃ¡lia Rocha',2,33),(226,'CecÃ­lia Dantas',1,33),(227,'Sofia Carvalho',2,4),(228,'Giovana Rocha',1,4),(229,'Quirino Alves',2,4),(230,'Gabriela Matos',1,4),(231,'Ana Silva',2,4),(232,'Henrique Nogueira',1,4),(233,'Fernando Guedes',2,4),(234,'Diego Pinho',1,4),(235,'Karen Ribeiro',2,4),(236,'Wagner Ferreira',1,10),(237,'Alice Neves',2,10),(238,'JoÃ£o Martins',1,10),(239,'Bernardo Faria',2,10),(240,'Yasmin Nunes',1,10),(241,'Ursula Dias',2,10),(242,'Hugo Fernandes',1,1),(243,'Ingrid Ramos',2,1),(244,'Bruno Costa',1,1),(245,'Carla Santos',2,1),(246,'Tatiane Lima',1,1),(247,'Paulo Ferreira',2,1),(248,'Lara Oliveira',1,7),(249,'ZÃ©lia Carvalho',2,7),(250,'Zeca Moraes',1,7),(251,'Thiago Vieira',2,7),(252,'Isabela Lima',1,7),(253,'Lucas Gomes',2,35),(254,'SÃ©rgio Gomes',1,35),(255,'Mariana Souza',2,35),(256,'Wanda Freitas',1,35),(257,'Marcelo Vieira',2,21),(258,'Olivia Pires',1,21),(259,'Viviane Pires',2,21),(260,'Ester Lima',1,21),(261,'JÃºlio Santos',2,21),(262,'Daniel Oliveira',1,21),(263,'OtÃ¡vio Mendes',2,21),(264,'Rafael Nunes',1,21),(265,'Xavier Castro',2,21),(266,'Yara ConceiÃ§Ã£o',1,21);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-19 21:42:24
