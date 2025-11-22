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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id_cidade` int NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(100) NOT NULL,
  `id_setor` int NOT NULL,
  PRIMARY KEY (`id_cidade`),
  UNIQUE KEY `nome_cidade` (`nome_cidade`),
  KEY `id_setor` (`id_setor`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_setor`) REFERENCES `setor` (`id_setor`),
  CONSTRAINT `chk_cidade_nome` CHECK ((length(`nome_cidade`) > 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Tapiratiba',1),(2,'Caconde',1),(3,'Divinolandia',1),(4,'São Sebastião da Grama',1),(5,'Mococa',1),(6,'São José do Rio Pardo',1),(7,'Vargem Grande do Sul',2),(8,'Casa Branca',2),(9,'Santa Cruz das Palmeiras',2),(10,'Tambau',2),(11,'Porto Ferreira',2),(12,'Descalvado',2),(13,'Lindoia',3),(14,'Serra Negra',3),(15,'Holambra',3),(16,'Arthur Nogueira',3),(17,'Socorro',3),(18,'Amparo',3),(19,'Jaguariuna',3),(20,'Itapira',3),(21,'Águas de Lindoia',3),(22,'Aguai',4),(23,'Mogi Guaçu',4),(24,'Mogi Mirim',4),(25,'Eng Coelho',4),(26,'Limeira',4),(27,'Pirassununga',5),(28,'Leme',5),(29,'Santa Cruz da Conceição',5),(30,'Araras',6),(31,'Rio Claro',6),(32,'Iracemapolis',6),(33,'São João da Boa Vista',7),(34,'Pinhal',7),(35,'Águas da Prata',7);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
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
