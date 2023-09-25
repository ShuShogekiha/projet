-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour amazoone
CREATE DATABASE IF NOT EXISTS `amazoone` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `amazoone`;

-- Listage de la structure de table amazoone. article
CREATE TABLE IF NOT EXISTS `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table amazoone.article : ~7 rows (environ)
INSERT INTO `article` (`id`, `designation`, `img`, `prix`) VALUES
	(4, 'Water TV Stick', 'https://i.ytimg.com/vi/dNTttMZ20pw/maxresdefault.jpg', 12.5),
	(5, 'Raquette de Penis', 'https://lequotidien.lu/wp-content/uploads/2021/01/310021_cx__cy__cw__ch_-310x207.jpeg', 34.95),
	(7, 'Coco cola', 'https://images.theconversation.com/files/410356/original/file-20210708-23-1es550t.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=900.0&fit=crop', 7.85),
	(8, 'Alcool Vodka', 'https://img.lamontagne.fr/gXW-sMMcQDuV43SjHRv8qFLOYYpyf1FhvAn0C5pOTlQ/fit/657/438/sm/0/bG9jYWw6Ly8vMDAvMDAvMDYvNDMvNTUvMjAwMDAwNjQzNTUzNw.jpg', 19),
	(9, 'Imprichiante', 'https://i.ytimg.com/vi/pcig4EjfBuI/maxresdefault.jpg', 49.25),
	(10, 'Coffre faible', 'https://cdn.manomano.com/images/images_products/10735498/P/18962477_1.jpg', 33.99);

-- Listage de la structure de table amazoone. utilisateurs
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `mail` varchar(50) DEFAULT NULL,
  `user` varchar(30) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- Listage des données de la table amazoone.utilisateurs : ~9 rows (environ)
INSERT INTO `utilisateurs` (`id`, `mail`, `user`, `password`) VALUES
	(12, 'tt@tt.c', 'pichuu', 'd89af753c03e398c87e9d66ab393b590c908296494eb3551bbdfd28124d22c74'),
	(13, 'pijame@mailinator.com', 'sidid', '2f6563ab4fb0a7aedbc0165aa5c75dfc11bc6f7e9f750343e73b6bac8f91ac6c'),
	(14, 'vamon@mailinator.com', 'parapluie', 'b8d47aa82bf6200643ad17780313c8c56ec548bf50cf315dc841124d013905ea'),
	(15, 'philippe@outmail.com', 'pedro', '15982afe895ee1be2198e88f0698954ce85f8c6e2f63d273d736becd8ac133b5'),
	(16, 'rapid@a.com', 'dylan', '15982afe895ee1be2198e88f0698954ce85f8c6e2f63d273d736becd8ac133b5'),
	(17, 'azerty@mail.com', 'utilisateur', '15982afe895ee1be2198e88f0698954ce85f8c6e2f63d273d736becd8ac133b5'),
	(18, 'becyqusoxe@mailinator.com', 'cahumijar', '83cfa4aa6b3b371f11bbca8b4bc501c4caea516ec610a0f8c70e0ef095e2186e'),
	(22, 'becyqusoxe@mailinator.com', 'cahumijar', '83cfa4aa6b3b371f11bbca8b4bc501c4caea516ec610a0f8c70e0ef095e2186e'),
	(23, 'becyqusoxe@mailinator.com', 'cahumijar', '83cfa4aa6b3b371f11bbca8b4bc501c4caea516ec610a0f8c70e0ef095e2186e'),
	(24, 'rabivaby@mailinator.com', 'hyqaw', '78dffb87c40ea4fa3ad5434bf7dfd09680f48c39b507a481a75ba83642f98d5f');


-- Listage de la structure de la base pour meslivres
CREATE DATABASE IF NOT EXISTS `meslivres` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `meslivres`;

-- Listage de la structure de table meslivres. books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table meslivres.books : ~6 rows (environ)
INSERT INTO `books` (`id`, `name`, `description`, `price`) VALUES
	(18, 'Apprenez les langages HTML5', 'Ce livre s&#039;adresse &agrave; de grands d&eacute;butants en d&eacute;veloppement informatique, qui n&#039;ont jamais programm&eacute; avec HTML5...', 26),
	(19, 'Pimpez votre site web grace &agrave; CSS3', 'Con&ccedil;u pour les d&eacute;butants, cet ouvrage vous permettra de styliser vos pages con&ccedil;ues en HTML 5 gr&acirc;ce &agrave; CSS 3...', 25),
	(20, 'Oh my code (JS edition)', 'Le JavaScript sert avant tout à rendre les pages web interactives et dynamiques du côté de l’utilisateur, mais il est  également de plus en plus utilisé pour...', 20),
	(21, 'PHP 8 by Olivier Heurtrel', 'Ce livre sur PHP 8 (en version 8.0 au moment de l&#039;&eacute;criture) s&#039;adresse aux concepteurs et d&eacute;veloppeurs qui souhaitent utiliser PHP pour d&eacute;velopper...', 35),
	(24, 'Les fondamentaux du SQL', 'Ce livre sur les fondamentaux du langage SQL s&#039;adresse aux d&eacute;veloppeurs et informaticiens d&eacute;butants appel&eacute;s &agrave; travailler avec un Syst&egrave;me de Gestion de Bases de Donn&eacute;es Relationnelles (SGBDR)...', 35),
	(45, 'Popeye au sky', 'Re-vivez les merveilleuses aventures de Popeye et d&#039;Olive pendant leur s&eacute;jour au ski', 999);

-- Listage de la structure de table meslivres. message
CREATE TABLE IF NOT EXISTS `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contenu` varchar(255) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table meslivres.message : ~27 rows (environ)
INSERT INTO `message` (`id`, `contenu`, `user_id`) VALUES
	(1, 'Test de message', 3),
	(2, 'Salut Philippe ! Ca dit quoi ?', 3),
	(3, 'Ca dit Coubeh et toi ?', 4),
	(4, 'YOLO', 4),
	(5, 'TEST', 4),
	(6, 'YOUPIIII', 4),
	(7, 'le matin du vendredie, dur', 6),
	(8, '', 6),
	(9, 'test entry number 45', 4),
	(10, 'message &eacute;crit apr&egrave;s que le prof est surpris que sa marche ', 4),
	(11, 'attend sa marche vraiment avec la virgule ?$\r\n', 4),
	(12, 'c&#039;est tchoupi', 4),
	(13, 'ton meilleur ami !', 4),
	(14, 'on vas faire des b&eacute;tises !!', 4),
	(15, 'voici, l&#039;&eacute;chec !', 4),
	(16, 'tentative de magie num&eacute;ro 54', 4),
	(17, 'voici l&#039;ultime &eacute;ssaie !!', 4),
	(18, 'et merde', 4),
	(19, 'et merde', 4),
	(20, 'abababa', 4),
	(21, 'zezezeze', 4),
	(22, 'balalalalalba', 4),
	(23, 'last try ', 4),
	(24, 'vcxbv\r\n', 4),
	(25, 'vcxbv\r\n', 4),
	(26, '', 4),
	(27, 'je dois le faire\r\n', 4),
	(28, 'vsfs', 4),
	(29, 'chiant', 4);

-- Listage de la structure de table meslivres. user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table meslivres.user : ~3 rows (environ)
INSERT INTO `user` (`id`, `pseudo`, `pass`) VALUES
	(3, 'Tata', '$argon2i$v=19$m=65536,t=4,p=1$UzQ1UXNOLloycUVaelBpOQ$2Dm8FGNx2wL1cbZcQYodFuEz/wYXwLWygdylTtfhsEs'),
	(4, 'Philippe', '$argon2i$v=19$m=65536,t=4,p=1$WUp3YmtLVVpBU3QyUXRYeA$BYkD0mT1K+s2b7bGSfXuPBrGtd5PxlmooITGHfLBunY'),
	(5, 'Try', '$argon2i$v=19$m=65536,t=4,p=1$YUtmNDE4cnRnWWRra3lFMA$EQTandDj/kYA8jm1s9OYUMkxtowlTkDM9RExYhmx2MI'),
	(6, 'Pedro!!', '$argon2i$v=19$m=65536,t=4,p=1$MWREaEFiOVcyZzNqL0dzOA$rl6ES78rHcPMjQpBDNlBVMPuir7jVH+TmQuXTUJxA8E');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
