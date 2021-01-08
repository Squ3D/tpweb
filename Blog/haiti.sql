-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 08 jan. 2021 à 14:33
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `haiti`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Pour Banditisme'),
(2, 'Pour Assasinat'),
(3, 'Pour Kidnapping'),
(4, 'Grand Chef Bandit'),
(5, 'Dangereux');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210107212049', '2021-01-07 21:22:23', 56),
('DoctrineMigrations\\Version20210107225731', '2021-01-07 22:58:01', 307),
('DoctrineMigrations\\Version20210108000120', '2021-01-08 00:01:38', 91),
('DoctrineMigrations\\Version20210108001821', '2021-01-08 00:18:32', 121),
('DoctrineMigrations\\Version20210108002601', '2021-01-08 00:26:06', 83),
('DoctrineMigrations\\Version20210108003849', '2021-01-08 00:38:55', 130),
('DoctrineMigrations\\Version20210108111009', '2021-01-08 11:10:31', 600),
('DoctrineMigrations\\Version20210108121032', '2021-01-08 12:10:47', 143);

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_5A8A6C8D12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `author`, `created_at`, `category_id`, `url`) VALUES
(1, 'Bakafar Boubouka', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2021-01-21 22:53:43', 2, 'https://i.dailymail.co.uk/1s/2019/11/05/15/20331662-7651865-Elon_Musk-m-3_1572969201118.jpg'),
(2, 'Jean-Patrice Keka', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2021-01-03 22:54:10', 1, 'https://i.ytimg.com/vi/lXJkYBlnzmw/sddefault.jpg'),
(4, 'Laurent Outan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2021-01-30 22:54:21', 3, 'https://pbs.twimg.com/profile_images/1183775203240882178/iD-XbqrL_400x400.jpg'),
(5, 'Babaca', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2021-01-07 23:41:07', 2, 'https://blog.soat.fr/wp-content/uploads/2016/01/Unknown.png'),
(6, 'ZAMBA CAFEO', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2020-01-01 00:00:00', 1, 'https://blog.soat.fr/wp-content/uploads/2016/01/Unknown.png'),
(7, 'Gadju', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum. <br>\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n					Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Admin', '2016-01-01 00:00:00', 3, 'https://blog.soat.fr/wp-content/uploads/2016/01/Unknown.png'),
(8, 'Josue Vidrequin', 'Grand chef', 'Admin', '2016-01-01 00:00:00', 4, 'https://blog.soat.fr/wp-content/uploads/2016/01/Unknown.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `roles`, `email`) VALUES
(14, 'naim', '$argon2id$v=19$m=65536,t=4,p=1$RFl6eVhWVUE5VDd6MTNHNg$3oVRoL5Pqbki9vZWRmIG71YYKhlloTlQ2uK+bFb4nkM', '[]', 'naim@n.fr'),
(15, 'Boko', '$argon2id$v=19$m=65536,t=4,p=1$blMuNG1GcDJ0UDl2TGVqUg$jpooIA5cwPyojmgBKq0Ref6PNxaYtt0rgIxLhhEZk5U', '[]', 'b@b.a'),
(17, 'testo', '$argon2id$v=19$m=65536,t=4,p=1$QkZqclRDZzRJcVptQm9yNQ$D9fTixV2mAeR7eYx2PdlnfHxjFk+tdAkd66Mo/3n+RU', '[]', 's@s.s'),
(18, 're', '$argon2id$v=19$m=65536,t=4,p=1$VUNTeFFOTDhDWlE5ZWVSTA$W9tWIfMZ7i87buL97LBFyvc7jWFe7dd8Qptx2wMAYwo', '[]', 're'),
(19, 'reo', '$argon2id$v=19$m=65536,t=4,p=1$eWE1R3ZuMjJYR1M1ZGxleg$k2FE0JOXbT7gjW0Y1B6wPgAbdtldcGLqouyYmGzp8Jg', '[]', 'reo@reo.fr'),
(20, 'djibi@zero.fr', '$argon2id$v=19$m=65536,t=4,p=1$NzJVekNhUG90RUVvS3Fxbw$7t2mgSOGkiBMlOEiPxnYH4SlXoZHH/v7bBFsI0TNOqM', '[]', 'djibi@zero.fr'),
(21, '1337', '$argon2id$v=19$m=65536,t=4,p=1$RExYV2xpMnRKSklmNVJlUw$BNG3HDC3VpBq3dQv/+/7IFuHYZoRh/0WvYuP7+plEVE', '[]', 'boko@rico.fr'),
(22, 'n1', '$argon2id$v=19$m=65536,t=4,p=1$dVZ2L2NNS3gwVUkvTW5BYg$AiO9jZI88ftVRFrNSKdFQjLMHIjVoYmC9QW6ba3XVMU', '[]', 'n1@n1.fr'),
(23, 'lama12', 'lama12', '[]', 'lama12'),
(24, 'chupa', '$argon2id$v=19$m=65536,t=4,p=1$TnBwNnRwcHYzbkJ0bEpGUg$L+bqgNmhJ0Y08g7OMSCMSJ4umQwth8wx87J1BiZcR2c', '[]', 'chupa');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK_5A8A6C8D12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
