-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.29 - MySQL Community Server - GPL
-- OS do Servidor:               Linux
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para logica
CREATE DATABASE IF NOT EXISTS `logica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `logica`;

-- Copiando estrutura para tabela logica.causality
CREATE TABLE IF NOT EXISTS `causality` (
  `id_entity_from` int DEFAULT NULL,
  `id_entity_to` int DEFAULT NULL,
  KEY `FK__entity` (`id_entity_from`),
  KEY `FK__entity_2` (`id_entity_to`),
  CONSTRAINT `FK__entity` FOREIGN KEY (`id_entity_from`) REFERENCES `entity` (`id`),
  CONSTRAINT `FK__entity_2` FOREIGN KEY (`id_entity_to`) REFERENCES `entity` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela logica.causality: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `causality` DISABLE KEYS */;
INSERT INTO `causality` (`id_entity_from`, `id_entity_to`) VALUES
	(1, 2);
INSERT INTO `causality` (`id_entity_from`, `id_entity_to`) VALUES
	(2, 3);
/*!40000 ALTER TABLE `causality` ENABLE KEYS */;

-- Copiando estrutura para tabela logica.entity
CREATE TABLE IF NOT EXISTS `entity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela logica.entity: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `entity` DISABLE KEYS */;
INSERT INTO `entity` (`id`, `nome`) VALUES
	(1, 'a');
INSERT INTO `entity` (`id`, `nome`) VALUES
	(2, 'b');
INSERT INTO `entity` (`id`, `nome`) VALUES
	(3, 'c');
/*!40000 ALTER TABLE `entity` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
