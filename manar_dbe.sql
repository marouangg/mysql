-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 08 juin 2022 à 01:24
-- Version du serveur : 8.0.27
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `manar_dbe`
--

-- --------------------------------------------------------

--
-- Structure de la table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2D5B0234B03A8386` (`created_by_id`),
  KEY `IDX_2D5B0234DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `city`
--

INSERT INTO `city` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(51, 11, 11, 'Conn', 'Barton', '1970-10-14 07:03:32', '2021-05-15 03:17:42'),
(52, 11, 11, 'Bechtelar', 'Jerde', '2011-09-26 23:19:10', '1970-10-09 05:07:29'),
(53, 11, 11, 'McLaughlin', 'Hill', '1977-10-06 23:25:46', '1992-06-10 13:06:57'),
(54, 11, 11, 'Marvin', 'Rath', '1993-09-18 05:41:32', '2017-09-01 01:06:21'),
(55, 11, 11, 'Waelchi', 'Schumm', '2010-08-22 16:25:29', '2011-07-11 20:34:56'),
(56, 11, 11, 'Mante', 'Fritsch', '2011-11-06 22:07:11', '1990-03-09 02:33:58'),
(57, 11, 11, 'Zemlak', 'O\'Hara', '2007-09-24 14:08:07', '1982-05-25 18:02:13'),
(58, 11, 11, 'Bartoletti', 'Medhurst', '2000-12-10 22:00:31', '2017-10-24 06:47:59'),
(59, 11, 11, 'Bechtelar', 'Balistreri', '1976-04-19 00:00:06', '1974-10-22 17:41:26'),
(60, 11, 11, 'Hahn', 'D\'Amore', '1981-07-30 21:24:46', '1982-04-25 21:48:42');

-- --------------------------------------------------------

--
-- Structure de la table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
CREATE TABLE IF NOT EXISTS `classroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nb_places` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_497D309DC32A47EE` (`school_id`),
  KEY `IDX_497D309DB03A8386` (`created_by_id`),
  KEY `IDX_497D309DDD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `classroom`
--

INSERT INTO `classroom` (`id`, `school_id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `nb_places`, `created_at`, `edited_at`) VALUES
(21, NULL, 11, 11, 'Langworth', 'Doyle', 97, '1981-03-11 16:39:56', '2008-12-31 20:09:27'),
(22, NULL, 11, 11, 'Barton', 'Nader', 30, '2008-10-20 16:05:36', '1972-07-20 05:03:43'),
(23, NULL, 11, 11, 'Welch', 'Braun', 2165124, '2005-11-09 08:17:18', '1971-07-03 13:15:07'),
(24, NULL, 11, 11, 'Kunze', 'Welch', 41166, '1972-11-13 07:21:48', '1997-09-12 22:23:36'),
(25, NULL, 11, 11, 'O\'Kon', 'Torp', 74801783, '2008-06-19 15:11:27', '2001-09-14 02:32:41'),
(26, NULL, 11, 11, 'O\'Kon', 'Adams', 4088, '1997-01-12 12:23:45', '2013-05-30 10:32:05'),
(27, NULL, 11, 11, 'Ledner', 'Beatty', 3008524, '1990-05-08 23:56:50', '1981-04-10 22:07:12'),
(28, NULL, 11, 11, 'Graham', 'Shields', 7698694, '1998-10-22 09:04:39', '1981-04-05 21:49:00'),
(29, NULL, 11, 11, 'White', 'Pfannerstill', 71, '1980-11-18 07:38:04', '2018-07-09 16:21:55'),
(30, NULL, 11, 11, 'Kovacek', 'Beer', 5682272, '1980-05-15 18:56:07', '1979-08-25 23:47:01');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5373C966B03A8386` (`created_by_id`),
  KEY `IDX_5373C966DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(51, 11, 11, 'Skiles', 'Kihn', '2010-03-20 07:17:42', '2001-02-26 02:18:00'),
(52, 11, 11, 'Rutherford', 'Lehner', '2000-03-12 14:00:18', '2003-02-19 04:34:41'),
(53, 11, 11, 'Sporer', 'Kunde', '1998-05-20 11:34:53', '1980-04-05 16:20:20'),
(54, 11, 11, 'Cormier', 'Dietrich', '1990-05-09 12:03:00', '1989-10-27 07:13:56'),
(55, 11, 11, 'Simonis', 'Farrell', '2011-04-04 05:21:18', '2015-10-14 19:08:04'),
(56, 11, 11, 'Goodwin', 'Sawayn', '1990-01-26 09:00:05', '1974-07-28 03:42:56'),
(57, 11, 11, 'Jones', 'Haag', '2005-06-13 02:47:33', '1997-09-14 05:48:21'),
(58, 11, 11, 'Kautzer', 'Zboncak', '2003-02-19 10:04:51', '1977-04-02 11:22:32'),
(59, 11, 11, 'D\'Amore', 'Mohr', '2013-02-03 22:14:51', '1996-11-23 04:34:13'),
(60, 11, 11, 'Morissette', 'Kulas', '2021-07-20 08:21:58', '1995-03-28 10:08:54');

-- --------------------------------------------------------

--
-- Structure de la table `cycle`
--

DROP TABLE IF EXISTS `cycle`;
CREATE TABLE IF NOT EXISTS `cycle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B086D193C32A47EE` (`school_id`),
  KEY `IDX_B086D193B03A8386` (`created_by_id`),
  KEY `IDX_B086D193DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cycle`
--

INSERT INTO `cycle` (`id`, `school_id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(21, NULL, 11, 11, 'Mitchell', 'Boyle', '2022-01-01 15:53:51', '1985-10-03 05:05:28'),
(22, NULL, 11, 11, 'Krajcik', 'Luettgen', '2003-09-07 19:29:19', '1999-08-24 07:20:50'),
(23, NULL, 11, 11, 'McKenzie', 'Bergstrom', '1997-08-17 11:37:11', '2000-04-16 23:22:51'),
(24, NULL, 11, 11, 'Mosciski', 'Mitchell', '2020-01-27 05:48:08', '2021-02-04 02:31:36'),
(25, NULL, 11, 11, 'Mueller', 'Conroy', '2009-02-28 09:53:07', '2019-05-31 03:36:17'),
(26, NULL, 11, 11, 'Buckridge', 'Bergnaum', '2006-03-07 20:33:06', '1975-08-01 20:21:40'),
(27, NULL, 11, 11, 'Ziemann', 'Reilly', '2007-11-02 06:48:16', '1995-03-13 09:24:44'),
(28, NULL, 11, 11, 'Emmerich', 'Denesik', '1995-03-02 00:51:44', '1980-10-16 22:05:39'),
(29, NULL, 11, 11, 'Dare', 'Pouros', '2003-11-11 04:55:35', '1995-04-14 05:46:28'),
(30, NULL, 11, 11, 'Parisian', 'Hirthe', '1983-07-01 04:00:36', '1982-02-14 05:12:04'),
(31, 71, 11, 11, 'Collège ', 'الإعدادي', '2024-02-02 00:00:00', '2024-02-02 00:00:00'),
(32, 73, 11, 11, 'lycée', 'المدرسة الثانوية', '2024-02-02 00:00:00', '2024-02-02 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220410223621', '2022-04-10 22:36:21', 3869),
('DoctrineMigrations\\Version20220410230750', '2022-04-10 23:08:03', 299);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `school_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2B07288C32A47EE` (`school_id`),
  KEY `IDX_A2B07288CB944F1A` (`student_id`),
  KEY `IDX_A2B07288D4D57CD` (`staff_id`),
  KEY `IDX_A2B07288B03A8386` (`created_by_id`),
  KEY `IDX_A2B07288DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id`, `school_id`, `student_id`, `staff_id`, `created_by_id`, `edited_by_id`, `name`, `path`, `arabic_name`, `created_at`, `edited_at`) VALUES
(71, NULL, NULL, NULL, 11, 11, 'Lueilwitz', 'https://via.placeholder.com/640x480.png/00ff66?text=cats+vel', 'Waters', '1987-12-28 03:42:58', '1979-10-30 03:48:10'),
(72, NULL, NULL, NULL, 11, 11, 'Hand', 'https://via.placeholder.com/640x480.png/00ee22?text=cats+molestiae', 'Oberbrunner', '1982-12-10 08:30:42', '1974-07-05 23:16:40'),
(73, NULL, NULL, NULL, 11, 11, 'Kulas', 'https://via.placeholder.com/640x480.png/00aaaa?text=cats+fugit', 'Daugherty', '1996-01-20 12:16:16', '1992-10-07 14:59:49'),
(74, NULL, NULL, NULL, 11, 11, 'Doyle', 'https://via.placeholder.com/640x480.png/00ffee?text=cats+quia', 'Jacobi', '2000-09-10 19:43:23', '1983-09-12 15:42:22'),
(75, NULL, NULL, NULL, 11, 11, 'Beer', 'https://via.placeholder.com/640x480.png/004499?text=cats+voluptatum', 'Ruecker', '1979-07-15 20:31:12', '1991-03-26 22:40:03'),
(76, NULL, NULL, NULL, 11, 11, 'Kohler', 'https://via.placeholder.com/640x480.png/00ffdd?text=cats+sequi', 'Cole', '1974-07-02 14:17:15', '2016-11-09 14:13:15'),
(77, NULL, NULL, NULL, 11, 11, 'Wolff', 'https://via.placeholder.com/640x480.png/009900?text=cats+voluptas', 'Donnelly', '2009-03-24 16:03:22', '1978-08-13 21:56:01'),
(78, NULL, NULL, NULL, 11, 11, 'Kassulke', 'https://via.placeholder.com/640x480.png/0077aa?text=cats+voluptates', 'Lubowitz', '1995-03-12 22:32:38', '1976-07-23 13:26:08'),
(79, NULL, NULL, NULL, 11, 11, 'Adams', 'https://via.placeholder.com/640x480.png/00ffbb?text=cats+soluta', 'Stamm', '1970-06-02 00:48:27', '1992-06-30 17:18:55'),
(80, NULL, NULL, NULL, 11, 11, 'Schmidt', 'https://via.placeholder.com/640x480.png/004411?text=cats+voluptatem', 'Murray', '1991-04-07 07:38:13', '2008-07-10 19:58:31');

-- --------------------------------------------------------

--
-- Structure de la table `group`
--

DROP TABLE IF EXISTS `group`;
CREATE TABLE IF NOT EXISTS `group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sector_id` int DEFAULT NULL,
  `level_id` int DEFAULT NULL,
  `scholar_year_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6DC044C5DE95C867` (`sector_id`),
  KEY `IDX_6DC044C55FB14BA7` (`level_id`),
  KEY `IDX_6DC044C5D56DA3DB` (`scholar_year_id`),
  KEY `IDX_6DC044C5B03A8386` (`created_by_id`),
  KEY `IDX_6DC044C5DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `group`
--

INSERT INTO `group` (`id`, `sector_id`, `level_id`, `scholar_year_id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(71, NULL, NULL, NULL, 11, 11, 'Johns', 'Lemke', '1972-01-03 20:01:44', '2011-08-02 20:50:28'),
(72, NULL, NULL, NULL, 11, 11, 'Hoppe', 'Braun', '1988-05-25 10:14:16', '1980-02-18 18:41:19'),
(73, NULL, NULL, NULL, 11, 11, 'Gerhold', 'Stamm', '2012-12-06 06:02:47', '2020-01-21 18:06:06'),
(74, NULL, NULL, NULL, 11, 11, 'Haag', 'Berge', '1977-02-18 12:30:12', '1977-02-28 15:03:22'),
(75, NULL, NULL, NULL, 11, 11, 'Will', 'Jerde', '2007-02-11 21:47:00', '1995-01-31 18:53:58'),
(76, NULL, NULL, NULL, 11, 11, 'Gutkowski', 'Shanahan', '1986-04-06 23:59:08', '1973-03-11 21:29:57'),
(77, NULL, NULL, NULL, 11, 11, 'Fisher', 'Murphy', '1975-02-18 03:54:22', '2002-12-13 17:32:44'),
(78, NULL, NULL, NULL, 11, 11, 'Heller', 'Braun', '1985-08-29 16:39:27', '1984-10-12 05:26:41'),
(79, NULL, NULL, NULL, 11, 11, 'Torp', 'Schinner', '1994-06-04 19:26:50', '2001-07-27 03:02:20'),
(80, NULL, NULL, NULL, 11, 11, 'Pfeffer', 'Johnston', '2002-09-07 02:14:34', '2001-11-21 14:10:50');

-- --------------------------------------------------------

--
-- Structure de la table `level`
--

DROP TABLE IF EXISTS `level`;
CREATE TABLE IF NOT EXISTS `level` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9AEACC13B03A8386` (`created_by_id`),
  KEY `IDX_9AEACC13DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `level`
--

INSERT INTO `level` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(71, 11, 11, 'Doyle', 'Connelly', '2001-07-27 22:57:00', '1995-02-10 16:26:32'),
(72, 11, 11, 'Runte', 'Harber', '2010-11-02 22:34:43', '2004-02-03 02:04:12'),
(73, 11, 11, 'Metz', 'Schoen', '1993-11-04 06:00:25', '1985-04-20 14:55:32'),
(74, 11, 11, 'Langosh', 'Denesik', '2019-11-03 09:32:39', '1983-12-11 07:29:42'),
(75, 11, 11, 'Runolfsson', 'Schmitt', '1981-04-09 00:50:35', '1983-01-15 06:05:58'),
(76, 11, 11, 'Boehm', 'Wyman', '2019-07-05 21:17:08', '1978-09-28 02:12:23'),
(77, 11, 11, 'Feil', 'Hilpert', '1993-09-06 13:23:34', '2020-02-05 20:59:07'),
(78, 11, 11, 'Hansen', 'Berge', '1985-05-03 16:32:58', '1979-01-16 10:33:24'),
(79, 11, 11, 'Murazik', 'Johns', '1979-07-25 22:41:05', '1976-02-04 22:27:19'),
(80, 11, 11, 'Grant', 'Murray', '2010-07-12 23:32:41', '2005-08-11 07:46:29');

-- --------------------------------------------------------

--
-- Structure de la table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
CREATE TABLE IF NOT EXISTS `nationality` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_8AC58B70B03A8386` (`created_by_id`),
  KEY `IDX_8AC58B70DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `nationality`
--

INSERT INTO `nationality` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(51, 11, 11, 'Johnson', 'Hand', '1975-11-02 20:21:00', '1986-12-21 15:24:58'),
(52, 11, 11, 'Wunsch', 'Predovic', '1994-09-13 07:37:09', '1981-11-14 16:06:07'),
(53, 11, 11, 'Hickle', 'Harber', '1981-01-02 21:49:02', '1999-12-25 13:34:51'),
(54, 11, 11, 'Bogisich', 'Langosh', '1986-04-24 11:13:03', '2004-04-17 09:07:18'),
(55, 11, 11, 'Kassulke', 'Bayer', '2001-01-14 13:30:09', '1994-10-08 20:08:34'),
(56, 11, 11, 'Pouros', 'Gislason', '1989-02-03 11:06:17', '1999-09-04 07:19:01'),
(57, 11, 11, 'Will', 'Grimes', '1983-12-27 06:06:38', '2007-05-09 14:19:56'),
(58, 11, 11, 'Runte', 'Koss', '1979-05-08 07:54:22', '2010-11-16 03:52:18'),
(59, 11, 11, 'Beatty', 'Weber', '1979-07-16 05:49:35', '1985-05-15 07:10:07'),
(60, 11, 11, 'Powlowski', 'Roberts', '2005-07-25 07:56:00', '2004-02-21 08:06:01');

-- --------------------------------------------------------

--
-- Structure de la table `occupation`
--

DROP TABLE IF EXISTS `occupation`;
CREATE TABLE IF NOT EXISTS `occupation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2F87D51B03A8386` (`created_by_id`),
  KEY `IDX_2F87D51DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `occupation`
--

INSERT INTO `occupation` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(51, 11, 11, 'Hegmann', 'Marquardt', '2005-01-30 14:39:37', '1978-10-01 12:49:25'),
(52, 11, 11, 'Lemke', 'Gorczany', '2004-11-04 05:49:13', '1987-03-15 13:10:02'),
(53, 11, 11, 'Homenick', 'Hoeger', '2012-03-13 19:37:15', '1982-11-11 06:02:02'),
(54, 11, 11, 'Harvey', 'Bogisich', '2002-04-16 22:36:55', '1988-06-28 12:39:43'),
(55, 11, 11, 'Steuber', 'Hodkiewicz', '1992-06-17 09:51:43', '1977-06-15 02:01:49'),
(56, 11, 11, 'Wiegand', 'Kulas', '1991-05-23 01:09:05', '2010-01-04 01:46:36'),
(57, 11, 11, 'Kertzmann', 'McDermott', '2020-01-07 12:50:05', '2006-03-23 04:31:09'),
(58, 11, 11, 'Hilpert', 'Runolfsson', '2014-10-25 14:16:47', '2007-10-08 00:34:09'),
(59, 11, 11, 'Deckow', 'Emmerich', '1978-07-11 01:51:29', '1999-10-24 16:15:16'),
(60, 11, 11, 'Schinner', 'Kiehn', '2007-05-06 03:16:25', '1977-11-20 22:15:55');

-- --------------------------------------------------------

--
-- Structure de la table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
CREATE TABLE IF NOT EXISTS `parent_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `tutor_id` int DEFAULT NULL,
  `tutor_type_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C56BDB75CB944F1A` (`student_id`),
  KEY `IDX_C56BDB75208F64F1` (`tutor_id`),
  KEY `IDX_C56BDB75ADB4812C` (`tutor_type_id`),
  KEY `IDX_C56BDB75B03A8386` (`created_by_id`),
  KEY `IDX_C56BDB75DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `parent_student`
--

INSERT INTO `parent_student` (`id`, `student_id`, `tutor_id`, `tutor_type_id`, `created_by_id`, `edited_by_id`, `created_at`, `edited_at`) VALUES
(21, NULL, NULL, NULL, 11, 11, '2010-07-23 12:57:23', '2003-08-21 17:55:18'),
(22, NULL, NULL, NULL, 11, 11, '1992-10-22 11:55:17', '1978-03-05 13:00:16'),
(23, NULL, NULL, NULL, 11, 11, '1994-01-02 06:16:46', '2002-10-23 13:47:57'),
(24, NULL, NULL, NULL, 11, 11, '1999-03-20 18:44:48', '2009-02-15 11:06:26'),
(25, NULL, NULL, NULL, 11, 11, '1982-08-05 06:56:57', '2014-05-18 17:45:35'),
(26, NULL, NULL, NULL, 11, 11, '1997-01-14 19:10:45', '1990-09-04 19:49:07'),
(27, NULL, NULL, NULL, 11, 11, '2014-12-10 10:37:42', '1978-06-03 23:49:30'),
(28, NULL, NULL, NULL, 11, 11, '1990-04-02 03:07:27', '2015-11-04 16:28:53'),
(29, NULL, NULL, NULL, 11, 11, '1988-09-30 12:54:53', '2001-09-30 08:09:20'),
(30, NULL, NULL, NULL, 11, 11, '2003-01-16 12:14:13', '1978-05-17 06:05:44');

-- --------------------------------------------------------

--
-- Structure de la table `registration`
--

DROP TABLE IF EXISTS `registration`;
CREATE TABLE IF NOT EXISTS `registration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `scholar_year_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `registration_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_62A8A7A7CB944F1A` (`student_id`),
  KEY `IDX_62A8A7A7D56DA3DB` (`scholar_year_id`),
  KEY `IDX_62A8A7A7B03A8386` (`created_by_id`),
  KEY `IDX_62A8A7A7DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `registration`
--

INSERT INTO `registration` (`id`, `student_id`, `scholar_year_id`, `created_by_id`, `edited_by_id`, `registration_date`, `created_at`, `edited_at`) VALUES
(71, NULL, NULL, 11, 11, '1997-11-07', '1989-07-16 02:07:53', '1982-03-13 01:21:06'),
(72, NULL, NULL, 11, 11, '2004-02-06', '1986-12-16 00:14:20', '2008-03-02 02:52:51'),
(73, NULL, NULL, 11, 11, '1976-03-04', '2019-07-04 06:11:18', '1973-12-06 11:30:56'),
(74, NULL, NULL, 11, 11, '1985-05-08', '2013-02-26 15:44:12', '1980-10-13 01:06:58'),
(75, NULL, NULL, 11, 11, '2015-01-24', '2015-07-10 21:57:19', '1971-03-24 04:21:03'),
(76, NULL, NULL, 11, 11, '2008-06-17', '1999-05-06 05:23:16', '2015-10-14 10:18:21'),
(77, NULL, NULL, 11, 11, '2008-12-17', '2015-01-01 06:29:58', '1999-12-06 03:45:45'),
(78, NULL, NULL, 11, 11, '1994-08-10', '1983-11-05 20:40:50', '2021-11-01 17:17:08'),
(79, NULL, NULL, 11, 11, '1998-07-30', '1983-06-16 06:45:11', '1981-04-29 19:45:11'),
(80, NULL, NULL, 11, 11, '1993-10-12', '1971-11-30 21:46:50', '1988-05-26 23:56:29');

-- --------------------------------------------------------

--
-- Structure de la table `reset_password_request`
--

DROP TABLE IF EXISTS `reset_password_request`;
CREATE TABLE IF NOT EXISTS `reset_password_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `selector` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashed_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `requested_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `expires_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_7CE748AA76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scholar_year`
--

DROP TABLE IF EXISTS `scholar_year`;
CREATE TABLE IF NOT EXISTS `scholar_year` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6C37C5FDB03A8386` (`created_by_id`),
  KEY `IDX_6C37C5FDDD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `scholar_year`
--

INSERT INTO `scholar_year` (`id`, `created_by_id`, `edited_by_id`, `name`, `created_at`, `edited_at`) VALUES
(71, 11, 11, 'McCullough', '1992-06-13 03:39:11', '1978-10-04 01:35:35'),
(72, 11, 11, 'Gislason', '1994-06-01 05:27:08', '2001-12-09 09:14:14'),
(73, 11, 11, 'Beahan', '2014-06-16 06:10:37', '1989-07-16 08:21:22'),
(74, 11, 11, 'Reichert', '2012-01-20 12:36:41', '1999-05-05 21:32:12'),
(75, 11, 11, 'Skiles', '2013-06-21 08:35:30', '2017-11-15 07:02:49'),
(76, 11, 11, 'Erdman', '2014-08-23 12:31:56', '2013-05-26 10:18:54'),
(77, 11, 11, 'Treutel', '1998-03-30 23:46:03', '1977-12-24 12:34:08'),
(78, 11, 11, 'Heller', '1972-12-18 01:46:17', '2007-07-12 10:10:52'),
(79, 11, 11, 'Rowe', '1998-07-30 11:15:57', '1991-02-14 19:09:56'),
(80, 11, 11, 'Pagac', '1971-03-14 06:54:13', '1971-04-19 23:07:18');

-- --------------------------------------------------------

--
-- Structure de la table `school`
--

DROP TABLE IF EXISTS `school`;
CREATE TABLE IF NOT EXISTS `school` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_director_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F99EDABB8BAC62AF` (`city_id`),
  KEY `IDX_F99EDABBF92F3E70` (`country_id`),
  KEY `IDX_F99EDABBB03A8386` (`created_by_id`),
  KEY `IDX_F99EDABBDD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `school`
--

INSERT INTO `school` (`id`, `city_id`, `country_id`, `created_by_id`, `edited_by_id`, `name`, `address`, `phone`, `director_name`, `logo`, `header`, `footer`, `arabic_name`, `arabic_address`, `arabic_director_name`, `created_at`, `edited_at`) VALUES
(71, 51, NULL, 11, 11, 'maarif', 'maarif', '(210) 930-1001', 'Koepp', '0806220139341582808980.jpg', 'https://via.placeholder.com/640x480.png/008811?text=logos+debitis', 'https://via.placeholder.com/640x480.png/0099aa?text=logos+dolor', 'سميثام', '9470 طريق بلانكا السريع', '9470 طريق بلانكا السريع', '1994-06-26 14:44:21', '1986-08-04 07:11:37'),
(72, NULL, NULL, 11, 11, 'Hudson', '4090 Hilpert Rapids\nNorth Kianachester, LA 42264-8233', '832-203-0562', 'Gleason', 'https://via.placeholder.com/640x480.png/00bb99?text=logos+nemo', 'https://via.placeholder.com/640x480.png/00aa22?text=logos+non', 'https://via.placeholder.com/640x480.png/00cc00?text=logos+eos', 'Mueller', '81645 Christophe Plaza\nNorth Leilani, CA 44664-4513', 'Hansen', '2019-01-20 09:53:34', '1998-10-14 08:05:53'),
(73, NULL, NULL, 11, 11, 'Johnston', '861 Carmine Camp\nLake Ovaside, LA 24918', '+1.215.268.2533', 'Ziemann', 'https://via.placeholder.com/640x480.png/006600?text=logos+quas', 'https://via.placeholder.com/640x480.png/0077cc?text=logos+sunt', 'https://via.placeholder.com/640x480.png/000066?text=logos+fuga', 'Marquardt', '7796 Bernhard Plains Apt. 821\nBrownview, NH 39712', 'Lemke', '2016-03-13 09:56:24', '1986-10-05 04:22:06'),
(74, NULL, NULL, 11, 11, 'Spinka', '65085 Thalia Isle Suite 979\nKlockochester, NY 98195-6131', '+1-425-710-6000', 'Cronin', 'https://via.placeholder.com/640x480.png/0077ff?text=logos+ut', 'https://via.placeholder.com/640x480.png/00dd99?text=logos+qui', 'https://via.placeholder.com/640x480.png/00cc33?text=logos+ipsam', 'Gutmann', '5937 Bins Drives Apt. 112\nWest Hubertfort, UT 14903-9490', 'Christiansen', '2004-01-04 21:00:10', '2008-08-10 11:08:59'),
(75, NULL, NULL, 11, 11, 'Beer', '33609 Marcel Hill Suite 087\nEast Dagmar, AL 69343', '321-467-1571', 'Considine', 'https://via.placeholder.com/640x480.png/00cc77?text=logos+repudiandae', 'https://via.placeholder.com/640x480.png/00ff00?text=logos+ea', 'https://via.placeholder.com/640x480.png/0077ff?text=logos+exercitationem', 'Hilpert', '616 Deonte Light\nHesselmouth, NY 42408-9456', 'Renner', '2004-06-15 00:37:45', '2001-08-15 02:07:59'),
(76, NULL, NULL, 11, 11, 'Wiza', '3215 Santina Cape\nSouth Salvadorfort, AR 36716', '(989) 896-6572', 'Goldner', 'https://via.placeholder.com/640x480.png/008800?text=logos+sapiente', 'https://via.placeholder.com/640x480.png/00ccaa?text=logos+minus', 'https://via.placeholder.com/640x480.png/00ff66?text=logos+corrupti', 'Wiegand', '828 Cassin Dale\nEast Trisha, LA 73217-7609', 'Gottlieb', '1994-07-04 12:18:56', '2012-03-07 14:45:34'),
(77, NULL, NULL, 11, 11, 'Weissnat', '984 Beryl Estate\nMauricioshire, FL 78726-5573', '1-315-441-8544', 'Pfannerstill', 'https://via.placeholder.com/640x480.png/003300?text=logos+dignissimos', 'https://via.placeholder.com/640x480.png/00ff77?text=logos+enim', 'https://via.placeholder.com/640x480.png/00aa99?text=logos+quis', 'Dietrich', '119 Simone Village\nKuhicmouth, NJ 18456', 'Volkman', '2017-04-06 16:49:34', '2006-06-24 11:25:58'),
(78, NULL, NULL, 11, 11, 'D\'Amore', '60127 Rogahn Lights\nVeumville, NM 94736-4732', '1-724-490-4730', 'Lind', 'https://via.placeholder.com/640x480.png/0022cc?text=logos+officia', 'https://via.placeholder.com/640x480.png/003322?text=logos+non', 'https://via.placeholder.com/640x480.png/0000ee?text=logos+iste', 'Fahey', '43679 Stroman Bridge Apt. 783\nNorth Stanleyton, TX 99344-0245', 'Mayer', '2007-02-06 03:09:28', '1985-08-26 00:58:08'),
(79, NULL, NULL, 11, 11, 'Kohler', '8129 Leon Via\nShanechester, FL 32826-6998', '+17315265599', 'Brown', 'https://via.placeholder.com/640x480.png/00ccdd?text=logos+quod', 'https://via.placeholder.com/640x480.png/003322?text=logos+facere', 'https://via.placeholder.com/640x480.png/005522?text=logos+laborum', 'O\'Keefe', '9576 Waters Loaf Apt. 433\nWest Daltonburgh, MD 44922', 'Powlowski', '2016-03-05 23:31:42', '1988-04-13 09:59:50'),
(80, NULL, NULL, 11, 11, 'Wolff', '4261 Koss Village Apt. 929\nLitzyborough, IL 64594', '952-319-9271', 'Gibson', 'https://via.placeholder.com/640x480.png/002288?text=logos+hic', 'https://via.placeholder.com/640x480.png/0066ff?text=logos+ipsa', 'https://via.placeholder.com/640x480.png/00ddcc?text=logos+veritatis', 'Durgan', '6461 Hyatt Underpass Apt. 614\nEast Fletcherview, TN 92616-7313', 'Champlin', '2013-08-24 02:02:22', '1990-12-08 14:04:54');

-- --------------------------------------------------------

--
-- Structure de la table `sector`
--

DROP TABLE IF EXISTS `sector`;
CREATE TABLE IF NOT EXISTS `sector` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cycle_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4BA3D9E85EC1162` (`cycle_id`),
  KEY `IDX_4BA3D9E8B03A8386` (`created_by_id`),
  KEY `IDX_4BA3D9E8DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sector`
--

INSERT INTO `sector` (`id`, `cycle_id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(71, NULL, 11, 11, 'Simonis', 'Moore', '1982-11-16 08:12:06', '2010-10-05 16:12:11'),
(72, NULL, 11, 11, 'Borer', 'Gleichner', '1973-02-24 22:13:52', '1990-02-27 08:22:43'),
(73, NULL, 11, 11, 'Pollich', 'Carroll', '2019-09-13 00:52:53', '1993-05-03 13:02:37'),
(74, NULL, 11, 11, 'Glover', 'Konopelski', '1987-11-10 10:56:41', '1991-04-17 17:11:51'),
(75, NULL, 11, 11, 'Spinka', 'Hirthe', '1979-09-14 13:01:03', '2003-08-18 14:21:40'),
(76, NULL, 11, 11, 'O\'Kon', 'Hauck', '2003-03-20 20:37:06', '2016-04-30 16:34:15'),
(77, NULL, 11, 11, 'Osinski', 'Ziemann', '1986-09-01 19:31:31', '1970-03-21 19:06:50'),
(78, NULL, 11, 11, 'Treutel', 'Lakin', '1993-03-29 22:24:21', '1985-07-14 11:15:16'),
(79, NULL, 11, 11, 'Reichert', 'Torphy', '1995-04-08 19:05:35', '2020-10-23 00:26:29'),
(80, NULL, 11, 11, 'Yost', 'Rau', '2013-04-30 06:50:12', '2004-08-13 05:56:31');

-- --------------------------------------------------------

--
-- Structure de la table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `occupation_id` int DEFAULT NULL,
  `nationality_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `national_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_security` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recruitment_date` date DEFAULT NULL,
  `dismissal_date` date DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `observations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `arabic_first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_426EF3928BAC62AF` (`city_id`),
  KEY `IDX_426EF392F92F3E70` (`country_id`),
  KEY `IDX_426EF39222C8FC20` (`occupation_id`),
  KEY `IDX_426EF3921C9DA55` (`nationality_id`),
  KEY `IDX_426EF392B03A8386` (`created_by_id`),
  KEY `IDX_426EF392DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `staff`
--

INSERT INTO `staff` (`id`, `city_id`, `country_id`, `occupation_id`, `nationality_id`, `created_by_id`, `edited_by_id`, `first_name`, `last_name`, `birth_date`, `national_number`, `gender`, `email`, `address`, `postal_code`, `social_security`, `recruitment_date`, `dismissal_date`, `salary`, `observations`, `arabic_first_name`, `arabic_last_name`, `arabic_address`, `picture`, `created_at`, `edited_at`) VALUES
(21, NULL, NULL, NULL, NULL, 11, 11, 'Enid', 'Torp', '1993-07-03', '55240-9038', 'M', 'clint.schimmel@kshlerin.com', '297 Agustina Dam Apt. 020\nVestaville, MD 16639-6449', '16125', '43565', '1985-01-20', '1997-11-02', 32879325.291745, 'Gryphon. Alice.', 'Tristian', 'Bayer', '5876 Terrance Islands\nGrahamberg, WI 91961-9049', 'https://via.placeholder.com/640x480.png/004488?text=cats+repellat', '1996-09-12 05:48:33', '1998-10-21 16:33:16'),
(22, NULL, NULL, NULL, NULL, 11, 11, 'Otho', 'Denesik', '1972-02-14', '21478', 'F', 'ivy.schimmel@becker.info', '7969 Billie Glens\nNew Amparoville, CA 38060', '31313-3343', '64298', '1995-02-24', '2006-12-27', 4884.37631781, 'Forty-two. ALL.', 'Hubert', 'Flatley', '10936 Melisa Squares Suite 699\nNew Mollie, AK 03139', 'https://via.placeholder.com/640x480.png/0033ff?text=cats+deserunt', '2007-05-05 10:11:28', '1987-03-28 17:58:28'),
(23, NULL, NULL, NULL, NULL, 11, 11, 'Barrett', 'Olson', '2015-04-06', '21084-1502', 'F', 'bosco.marcelle@yahoo.com', '6235 Beahan Crest Suite 195\nKozeyberg, CO 00649', '77080', '07821-4937', '1999-02-05', '2019-12-15', 3421.412904, 'Cat: \'we\'re all.', 'Kayleigh', 'Bosco', '36679 Skyla Ramp Apt. 557\nMarcosbury, WI 11390-4040', 'https://via.placeholder.com/640x480.png/006644?text=cats+officia', '1995-03-05 06:41:17', '1991-10-25 16:19:20'),
(24, NULL, NULL, NULL, NULL, 11, 11, 'Shanie', 'Bayer', '2007-11-11', '75190-4676', 'M', 'ckoelpin@pouros.com', '45738 Rau Knolls Apt. 236\nCasandrafurt, NY 31257', '46192', '67561-8143', '1981-02-22', '1970-09-10', 138.73836, 'Alice think it.', 'Patience', 'Stanton', '6906 Johanna Walk\nIlianafurt, WY 26969', 'https://via.placeholder.com/640x480.png/006644?text=cats+a', '1995-10-06 01:19:58', '2007-08-15 03:46:16'),
(25, NULL, NULL, NULL, NULL, 11, 11, 'Diana', 'Reichert', '2014-03-07', '86143', 'M', 'rosalind36@witting.com', '219 Eliseo Isle\nEast Enosshire, HI 31152', '54150-0917', '80143', '2000-12-01', '2003-01-22', 320155.00873239, 'Bill,\' she.', 'Sydney', 'Wolff', '7387 Lind Branch\nLake Donavon, ND 66419', 'https://via.placeholder.com/640x480.png/00ddff?text=cats+ut', '1986-05-20 10:12:00', '1970-12-11 03:35:35'),
(26, NULL, NULL, NULL, NULL, 11, 11, 'Hailey', 'Hills', '1973-08-19', '25761', 'M', 'ike.okeefe@gmail.com', '9377 Noel Gateway\nNew Domingo, MS 78352-4644', '07997-2769', '44340', '2007-09-02', '1990-06-26', 0, 'She hastily.', 'Kendra', 'Wisoky', '80194 Nikki Shoals\nWest Lexiberg, MT 15382-3301', 'https://via.placeholder.com/640x480.png/004488?text=cats+quisquam', '2011-02-05 07:10:23', '1991-04-08 05:07:59'),
(27, NULL, NULL, NULL, NULL, 11, 11, 'Sandrine', 'Stiedemann', '2010-01-22', '97214', 'M', 'mmaggio@gmail.com', '4577 Cydney Circle\nStarkborough, TN 82220-3678', '49568-2631', '04684-7933', '2010-01-09', '1993-05-10', 63.18899, 'English!\' said the.', 'Newton', 'Dare', '17075 Russell Courts\nHauckstad, KS 23150-2096', 'https://via.placeholder.com/640x480.png/0088bb?text=cats+omnis', '1985-12-29 01:52:52', '1996-04-20 12:27:24'),
(28, NULL, NULL, NULL, NULL, 11, 11, 'Horace', 'Barton', '1977-12-16', '20448', 'M', 'icole@hills.com', '904 Gottlieb Land\nLake Karelle, ME 82942', '82399-7166', '75204-5954', '2016-12-29', '1975-06-02', 211.172788729, 'She was a.', 'Marcos', 'Barrows', '473 Edison Street\nEast Ulisesland, OH 42690-8173', 'https://via.placeholder.com/640x480.png/00cc22?text=cats+voluptatum', '1994-06-20 07:32:42', '1970-09-15 09:40:19'),
(29, NULL, NULL, NULL, NULL, 11, 11, 'Murl', 'Quitzon', '1975-09-02', '81104', 'F', 'justyn59@hotmail.com', '7237 Patience Ranch Apt. 808\nKemmerton, MD 41045-3692', '70062-5282', '35814-4984', '2016-11-16', '2018-01-15', 69065.38187259, 'Caterpillar.', 'Merle', 'Breitenberg', '5526 Nolan Extensions\nBatzton, GA 43526-6537', 'https://via.placeholder.com/640x480.png/0000aa?text=cats+perferendis', '1997-07-12 05:22:35', '2005-07-11 19:23:04'),
(30, NULL, NULL, NULL, NULL, 11, 11, 'Joana', 'Shields', '1994-01-08', '44119', 'M', 'lera.effertz@gutkowski.net', '86874 Kihn Tunnel Suite 387\nLandenburgh, MT 69570', '54398', '31520', '1983-05-08', '1974-12-29', 60010.1622, 'But said.', 'Erich', 'Graham', '6625 Mraz Lights Suite 637\nBoriston, CT 90583-4097', 'https://via.placeholder.com/640x480.png/006677?text=cats+id', '1981-10-25 00:09:14', '2016-11-06 20:22:59');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_id` int DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  `nationality_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `fisrt_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `adresse` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_addresse` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_number` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B723AF338BAC62AF` (`city_id`),
  KEY `IDX_B723AF33F92F3E70` (`country_id`),
  KEY `IDX_B723AF331C9DA55` (`nationality_id`),
  KEY `IDX_B723AF33B03A8386` (`created_by_id`),
  KEY `IDX_B723AF33DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`id`, `city_id`, `country_id`, `nationality_id`, `created_by_id`, `edited_by_id`, `fisrt_name`, `last_name`, `birth_date`, `adresse`, `phone`, `picture`, `arabic_first_name`, `arabic_last_name`, `arabic_addresse`, `national_number`, `postal_code`, `student_number`, `created_at`, `edited_at`) VALUES
(32, 51, 59, 51, 11, 11, 'Kuhn', 'Feil', '1989-08-12 06:58:04', '6242 Monahan Stravenue Suite 733\nPrudenceland, KS 79860-4856', '832-629-8563', 'https://via.placeholder.com/640x480.png/0000cc?text=cats+voluptas', 'Norene', 'Stiedemann', '609 Lueilwitz Island Suite 127\nWest Makaylastad, WY 10754', '42621', '41395', '78460-2340', '1987-01-05 06:26:31', '1971-08-28 09:54:42'),
(33, 60, 57, 58, 11, 11, 'Ebert', 'Gorczany', '1984-11-04 15:35:32', '980 Orlo Prairie Apt. 005\nEast Billie, NH 01132-2341', '(220) 953-0549', 'https://via.placeholder.com/640x480.png/00aa33?text=cats+ad', 'Ariel', 'Marks', '84428 Leonora Inlet Suite 421\nLake Vellashire, TN 90098-8273', '92501', '42037-6708', '50094', '2008-11-23 04:52:10', '2002-10-18 20:40:34'),
(34, 51, 58, 55, 11, 11, 'Turcotte', 'Green', '2015-05-17 18:31:55', '636 Kozey Pines Suite 332\nBeulahberg, RI 51131-5090', '(803) 595-3595', 'https://via.placeholder.com/640x480.png/000000?text=cats+eius', 'Mckayla', 'Hoeger', '8550 Jannie Highway\nKianchester, NV 31853-8481', '23606-2160', '21409', '97382-4065', '1983-08-22 21:42:10', '1970-04-29 19:29:40'),
(35, 52, 54, 56, 11, 11, 'Douglas', 'Hackett', '2000-06-01 10:27:58', '4815 Deckow Summit\nHeathcotefort, NH 35568-2377', '+1-865-666-8279', 'https://via.placeholder.com/640x480.png/00dd77?text=cats+dolores', 'Santina', 'Lindgren', '79107 Dickinson Court Suite 964\nFadelborough, UT 45957', '62865-3427', '42662', '13788', '2019-03-19 10:28:20', '1977-11-06 19:36:18'),
(36, 52, 57, 58, 11, 11, 'Swift', 'King', '2013-12-28 15:58:46', '7331 Darwin Drives\nWest Jewel, FL 30851-9425', '321-546-8882', 'https://via.placeholder.com/640x480.png/001199?text=cats+inventore', 'Louisa', 'Frami', '61297 Jakubowski Place Suite 104\nPort Kipside, IL 74452', '41748-2838', '63078', '40902-2081', '2006-04-06 18:38:48', '2002-07-20 23:20:13'),
(37, 51, 52, 53, 11, 11, 'Turcotte', 'McCullough', '1974-05-30 12:23:58', '5352 Ernestine Springs\nEast Geovany, IL 03246-9975', '+1-612-635-3659', 'https://via.placeholder.com/640x480.png/0088bb?text=cats+autem', 'Bryana', 'Simonis', '783 Bechtelar Trail\nLamarville, NH 15057', '41167', '73809-5040', '40346', '2009-03-18 11:29:40', '2016-05-10 19:28:56'),
(38, 60, 52, 54, 11, 11, 'Swift', 'Abernathy', '1975-11-04 15:41:09', '390 Weissnat Ports Suite 576\nRodriguezberg, RI 01995-1826', '458-284-3457', 'https://via.placeholder.com/640x480.png/00aaff?text=cats+consequatur', 'Martin', 'Metz', '959 Runolfsson Stream Suite 490\nWest Yessenia, NE 04613-9745', '24199-1630', '53453-9277', '47549-9696', '1985-03-15 07:29:19', '1993-03-22 06:39:00'),
(39, NULL, NULL, NULL, 11, 11, 'Wisoky', 'Ortiz', '1999-09-30 19:58:03', '735 Farrell Shore\nNorth Lonny, KS 69923-3919', '1-309-295-9570', 'https://via.placeholder.com/640x480.png/00ccee?text=cats+labore', 'Jerald', 'Schimmel', '1892 Juana Crossroad Suite 539\nNew Gerry, LA 71661', '14613', '13726', '98812', '2009-01-22 15:38:34', '1976-01-18 03:49:21'),
(40, 54, 53, 56, 11, 11, 'Koch', 'Kulas', '1982-01-07 23:44:16', '78132 Welch Curve\nEast Johnsonhaven, MD 53301-9880', '+1.870.957.7944', 'https://via.placeholder.com/640x480.png/00ddee?text=cats+tenetur', 'Paul', 'Bins', '490 Glover Islands Apt. 169\nPort Destineefort, UT 13164', '31853-0020', '05583-8249', '26453-8524', '2003-08-18 01:14:30', '1972-03-26 17:32:46'),
(41, 56, 55, 56, 11, 11, 'Graham', 'Willms', '1989-05-31 06:13:22', '352 Heathcote Isle Suite 488\nKshlerinville, NM 83402-9374', '+1-941-263-3575', 'https://via.placeholder.com/640x480.png/009966?text=cats+optio', 'Agustin', 'Champlin', '9186 Ned Valleys\nVerdietown, MA 79494', '35439', '05299', '77908', '2009-09-26 22:05:47', '2002-10-22 19:42:20');

-- --------------------------------------------------------

--
-- Structure de la table `tutor`
--

DROP TABLE IF EXISTS `tutor`;
CREATE TABLE IF NOT EXISTS `tutor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `occupation_id` int DEFAULT NULL,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_address` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_99074648F92F3E70` (`country_id`),
  KEY `IDX_990746488BAC62AF` (`city_id`),
  KEY `IDX_9907464822C8FC20` (`occupation_id`),
  KEY `IDX_99074648B03A8386` (`created_by_id`),
  KEY `IDX_99074648DD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tutor`
--

INSERT INTO `tutor` (`id`, `country_id`, `city_id`, `occupation_id`, `created_by_id`, `edited_by_id`, `first_name`, `last_name`, `address`, `phone`, `gender`, `arabic_first_name`, `arabic_last_name`, `arabic_address`, `postal_code`, `created_at`, `edited_at`) VALUES
(51, NULL, NULL, NULL, 11, 11, 'Arianna', 'Gerhold', '75463 Juwan Shoals\nPort Saige, NH 44015-9783', '+1 (832) 903-2682', 'M', 'Ignatius', 'Brakus', '114 Boehm Keys Apt. 410\nArianestad, OK 68916-9453', '52791', '1979-02-18 08:03:28', '1982-05-11 23:51:38'),
(52, NULL, NULL, NULL, 11, 11, 'Juana', 'Maggio', '585 Mitchell Stream\nClemmieburgh, CT 69052', '+14348323735', 'M', 'Aglae', 'Yost', '36188 Arvid Knolls\nMelyssaborough, CT 75528', '22134', '1979-04-16 01:53:41', '2000-10-04 16:09:30'),
(53, NULL, NULL, NULL, 11, 11, 'Gerhard', 'Kertzmann', '3666 Stephania Walk\nPort Pearlborough, WV 43612', '724-268-4117', 'F', 'Suzanne', 'Kozey', '452 Eden Port\nPort Lura, MS 06782-8454', '38627', '1997-12-05 21:00:45', '1999-01-22 05:06:22'),
(54, NULL, NULL, NULL, 11, 11, 'Betty', 'Weber', '173 Drake Parkways\nParisianview, DC 21088-1940', '1-936-744-8605', 'M', 'Sandy', 'Deckow', '520 Fannie Centers\nNew Yazminmouth, IL 05198-4047', '56511-8933', '1996-06-20 21:37:41', '1987-11-03 07:08:20'),
(55, NULL, NULL, NULL, 11, 11, 'Lela', 'Halvorson', '39450 Erik Stream Suite 028\nNorth Ollie, WA 91751-5321', '+1-225-634-5421', 'M', 'Seamus', 'Borer', '1677 Baumbach Falls Apt. 404\nNew Devonchester, DC 07952', '86710', '2002-03-26 22:54:54', '2016-04-30 10:51:05'),
(56, NULL, NULL, NULL, 11, 11, 'Abagail', 'Doyle', '483 Murphy Estates Apt. 975\nPort Gillian, WV 09696-6520', '1-845-951-1112', 'M', 'Margaret', 'Douglas', '34626 Frami Rapids Suite 427\nKatrineton, PA 75686', '62289', '1970-10-06 12:19:06', '1970-07-02 13:12:45'),
(57, NULL, NULL, NULL, 11, 11, 'Crawford', 'Mosciski', '54462 Von Corner\nLake Rockyfurt, ID 51768-8482', '938.442.5926', 'F', 'Miles', 'Bechtelar', '5286 Roob Junctions Suite 636\nSouth Prudencebury, MN 21256', '63254-2756', '1991-02-24 04:24:47', '1981-04-29 09:29:32'),
(58, NULL, NULL, NULL, 11, 11, 'Ricardo', 'Crist', '9156 Ally Squares\nNew Bayleeburgh, CA 00088-6645', '+1-803-547-6841', 'F', 'Dahlia', 'Orn', '6606 Franecki Oval\nSouth Delfina, LA 26962', '11978-6977', '1972-01-12 09:15:02', '2014-04-16 17:46:28'),
(59, NULL, NULL, NULL, 11, 11, 'Dina', 'Macejkovic', '59811 Domenick Loop\nHarveyfort, AL 63951-7206', '+1 (520) 316-2843', 'F', 'Ansel', 'Stoltenberg', '2646 Kuhic Stravenue\nSmithview, TX 54562', '42686-0853', '1992-06-28 23:50:44', '1985-01-31 04:23:54'),
(60, NULL, NULL, NULL, 11, 11, 'Jarrell', 'Schamberger', '5679 Rath Vista Suite 880\nAntonioview, AR 98817', '+15516315703', 'M', 'Sylvia', 'Dach', '536 Fritsch Tunnel\nNew Icie, KS 09832', '48923', '2015-01-07 18:06:23', '2019-10-09 16:56:22');

-- --------------------------------------------------------

--
-- Structure de la table `tutor_type`
--

DROP TABLE IF EXISTS `tutor_type`;
CREATE TABLE IF NOT EXISTS `tutor_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_by_id` int NOT NULL,
  `edited_by_id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arabic_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `edited_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A2CB148DB03A8386` (`created_by_id`),
  KEY `IDX_A2CB148DDD7B2EBC` (`edited_by_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tutor_type`
--

INSERT INTO `tutor_type` (`id`, `created_by_id`, `edited_by_id`, `name`, `arabic_name`, `created_at`, `edited_at`) VALUES
(21, 11, 11, 'Wilkinson', 'Barton', '2013-07-11 14:48:36', '2003-01-11 19:49:49'),
(22, 11, 11, 'Sauer', 'Jacobi', '1997-05-23 20:15:28', '1973-12-13 21:38:59'),
(23, 11, 11, 'Jenkins', 'Barton', '2014-09-05 14:36:32', '1982-02-16 20:46:47'),
(24, 11, 11, 'Rempel', 'Lesch', '2010-03-08 05:05:04', '1992-07-30 23:02:36'),
(25, 11, 11, 'Langosh', 'Gleason', '2020-10-16 20:30:18', '1990-04-04 04:30:46'),
(26, 11, 11, 'Ernser', 'Waelchi', '1995-03-28 13:33:00', '2019-05-31 11:29:57'),
(27, 11, 11, 'Becker', 'Waelchi', '1981-11-27 23:56:25', '1986-10-15 08:14:30'),
(28, 11, 11, 'Lueilwitz', 'Hane', '1971-08-09 17:31:52', '2000-08-09 17:07:47'),
(29, 11, 11, 'Corkery', 'Kuvalis', '1980-01-03 08:48:15', '2000-06-01 18:46:03'),
(30, 11, 11, 'Bailey', 'Wehner', '1973-01-07 09:37:28', '1973-04-23 05:58:41');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `locale` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `username`, `is_verified`, `locale`) VALUES
(11, 'admin@sb.com', '[\"ROLE_ADMIN\"]', '$2y$13$w7usfxJhm1MP8qjT8TDNzOq.UuYWFuZszfwqX/agMwG8JeqWgacZ.', 'Admin', NULL, NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `FK_2D5B0234B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_2D5B0234DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `FK_497D309DB03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_497D309DC32A47EE` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`),
  ADD CONSTRAINT `FK_497D309DDD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `country`
--
ALTER TABLE `country`
  ADD CONSTRAINT `FK_5373C966B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_5373C966DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `cycle`
--
ALTER TABLE `cycle`
  ADD CONSTRAINT `FK_B086D193B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_B086D193C32A47EE` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`),
  ADD CONSTRAINT `FK_B086D193DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `FK_A2B07288B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_A2B07288C32A47EE` FOREIGN KEY (`school_id`) REFERENCES `school` (`id`),
  ADD CONSTRAINT `FK_A2B07288CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK_A2B07288D4D57CD` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`),
  ADD CONSTRAINT `FK_A2B07288DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `FK_6DC044C55FB14BA7` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`),
  ADD CONSTRAINT `FK_6DC044C5B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6DC044C5D56DA3DB` FOREIGN KEY (`scholar_year_id`) REFERENCES `scholar_year` (`id`),
  ADD CONSTRAINT `FK_6DC044C5DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6DC044C5DE95C867` FOREIGN KEY (`sector_id`) REFERENCES `sector` (`id`);

--
-- Contraintes pour la table `level`
--
ALTER TABLE `level`
  ADD CONSTRAINT `FK_9AEACC13B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_9AEACC13DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `nationality`
--
ALTER TABLE `nationality`
  ADD CONSTRAINT `FK_8AC58B70B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_8AC58B70DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `occupation`
--
ALTER TABLE `occupation`
  ADD CONSTRAINT `FK_2F87D51B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_2F87D51DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `parent_student`
--
ALTER TABLE `parent_student`
  ADD CONSTRAINT `FK_C56BDB75208F64F1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor` (`id`),
  ADD CONSTRAINT `FK_C56BDB75ADB4812C` FOREIGN KEY (`tutor_type_id`) REFERENCES `tutor_type` (`id`),
  ADD CONSTRAINT `FK_C56BDB75B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_C56BDB75CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK_C56BDB75DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `registration`
--
ALTER TABLE `registration`
  ADD CONSTRAINT `FK_62A8A7A7B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_62A8A7A7CB944F1A` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `FK_62A8A7A7D56DA3DB` FOREIGN KEY (`scholar_year_id`) REFERENCES `scholar_year` (`id`),
  ADD CONSTRAINT `FK_62A8A7A7DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `reset_password_request`
--
ALTER TABLE `reset_password_request`
  ADD CONSTRAINT `FK_7CE748AA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `scholar_year`
--
ALTER TABLE `scholar_year`
  ADD CONSTRAINT `FK_6C37C5FDB03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_6C37C5FDDD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `FK_F99EDABB8BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_F99EDABBB03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_F99EDABBDD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_F99EDABBF92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `sector`
--
ALTER TABLE `sector`
  ADD CONSTRAINT `FK_4BA3D9E85EC1162` FOREIGN KEY (`cycle_id`) REFERENCES `cycle` (`id`),
  ADD CONSTRAINT `FK_4BA3D9E8B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_4BA3D9E8DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `FK_426EF3921C9DA55` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`),
  ADD CONSTRAINT `FK_426EF39222C8FC20` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`),
  ADD CONSTRAINT `FK_426EF3928BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_426EF392B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_426EF392DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_426EF392F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `FK_B723AF331C9DA55` FOREIGN KEY (`nationality_id`) REFERENCES `nationality` (`id`),
  ADD CONSTRAINT `FK_B723AF338BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_B723AF33B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_B723AF33DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_B723AF33F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `tutor`
--
ALTER TABLE `tutor`
  ADD CONSTRAINT `FK_9907464822C8FC20` FOREIGN KEY (`occupation_id`) REFERENCES `occupation` (`id`),
  ADD CONSTRAINT `FK_990746488BAC62AF` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  ADD CONSTRAINT `FK_99074648B03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_99074648DD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_99074648F92F3E70` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Contraintes pour la table `tutor_type`
--
ALTER TABLE `tutor_type`
  ADD CONSTRAINT `FK_A2CB148DB03A8386` FOREIGN KEY (`created_by_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_A2CB148DDD7B2EBC` FOREIGN KEY (`edited_by_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
