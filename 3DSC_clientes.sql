-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 3DSC
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.20.04.2

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `senha` varchar(512) NOT NULL,
  `cpf` char(14) NOT NULL,
  `NOME` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cll` char(14) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id`, `senha`, `cpf`, `NOME`, `email`, `cll`) VALUES
(1,  '22102009',  '103.899.189.70', 'Gabriel',        'gabriel.cordeiro@escola.pr.gov.br', '(42)95555-6666'),
(2,  'Senha@111', '111.222.333-44', 'Lucas Pereira',  'lucas.pereira@email.com',           '(11)91234-5678'),
(3,  '15032010',  '204.788.290.81', 'Larissa',        'larissa.mendes@escola.pr.gov.br',   '(41)94444-5555'),
(4,  '08072008',  '315.677.301.92', 'Pedro',          'pedro.almeida@escola.pr.gov.br',    '(43)93333-4444'),
(5,  '19112009',  '426.566.412.03', 'Sofia',          'sofia.ribeiro@escola.pr.gov.br',    '(44)92222-3333'),
(6,  '03052011',  '537.455.523.14', 'Lucas',          'lucas.ferreira@escola.pr.gov.br',   '(45)91111-2222'),
(7,  '27122008',  '648.344.634.25', 'Isabela',        'isabela.santos@escola.pr.gov.br',   '(46)90000-1111'),
(8,  '14092010',  '759.233.745.36', 'Matheus',        'matheus.oliveira@escola.pr.gov.br', '(42)98888-9999'),
(9,  '06012009',  '860.122.856.47', 'Julia',          'julia.costa@escola.pr.gov.br',      '(41)97777-8888'),
(10, '22102008',  '971.011.967.58', 'Rafael',         'rafael.lima@escola.pr.gov.br',      '(43)96666-7777'),
(11, '11062010',  '082.900.078.69', 'Ana',            'ana.souza@escola.pr.gov.br',        '(44)95555-6666');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `login` varchar(50) NOT NULL,
  `senha` varchar(225) NOT NULL,
  `cpf` char(11) NOT NULL,
  `cll` varchar(15) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `forma_pagamento` varchar(30) NOT NULL,
  `valor_total` float NOT NULL DEFAULT '10.2',
  `id_cliente` int DEFAULT NULL,
  `id_endereço` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `endereço`
--

DROP TABLE IF EXISTS `endereço`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereço` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` char(2) NOT NULL,
  `idcliente` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `possui`
--

DROP TABLE IF EXISTS `possui`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `possui` (
  `quantidade` int NOT NULL,
  `valor_unitario` float DEFAULT '10.2',
  `id_compra` int NOT NULL,
  `id_produto` int NOT NULL,
  PRIMARY KEY (`id_compra`,`id_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descrição` varchar(500) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `preço` float NOT NULL DEFAULT '10.2',
  `caminho_img` varchar(255) DEFAULT NULL,
  `quantidade_img` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-06 20:36:00
