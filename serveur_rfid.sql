-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 01 avr. 2021 à 16:04
-- Version du serveur :  10.3.27-MariaDB-0+deb10u1
-- Version de PHP : 7.3.27-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `serveur_rfid`
--

-- --------------------------------------------------------

--
-- Structure de la table `passages`
--

CREATE TABLE `passages` (
  `id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `date_passage` datetime NOT NULL DEFAULT current_timestamp(),
  `access` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `passages`
--

INSERT INTO `passages` (`id`, `uid`, `nom`, `date_passage`, `access`) VALUES
(178, '5816110726', 'Bonventre Adrian', '2021-03-18 10:40:09', 1),
(179, '5816110726', 'Bonventre Adrian', '2021-03-18 10:44:37', 1),
(180, '5816110726', 'Bonventre Adrian', '2021-03-18 10:45:20', 1),
(181, '105221123143', 'Inconnu au bataillon', '2021-03-18 10:54:43', 0),
(182, '5816110726', 'Bonventre Adrian', '2021-03-18 10:55:58', 1),
(183, '5816110726', 'Bonventre Adrian', '2021-03-18 10:56:24', 1),
(184, '105221123143', 'Inconnu au bataillon', '2021-03-18 10:57:12', 0),
(185, '5816110726', 'Bonventre Adrian', '2021-03-18 10:57:48', 1),
(186, '23316220', 'Inconnu au bataillon', '2021-03-18 10:57:53', 0),
(187, '105221123143', 'Inconnu au bataillon', '2021-03-18 10:59:24', 0),
(188, '105221123143', 'Inconnu au bataillon', '2021-03-18 10:59:50', 0),
(189, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:03:20', 0),
(190, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:03:28', 0),
(191, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:03:54', 0),
(192, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:04:06', 0),
(193, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:04:22', 0),
(194, '5816110726', 'Bonventre Adrian', '2021-03-18 11:04:26', 1),
(195, '23316220', 'Inconnu au bataillon', '2021-03-18 11:04:33', 0),
(196, '2172660', 'Inconnu au bataillon', '2021-03-18 11:04:41', 0),
(197, '1852817779', 'Inconnu au bataillon', '2021-03-18 11:04:45', 0),
(198, '10515990', 'Nico', '2021-03-18 11:04:57', 1),
(199, '10515990', 'Nico', '2021-03-18 11:05:09', 1),
(200, '2011431832', 'Joseph', '2021-03-18 11:05:14', 1),
(201, '5816110726', 'Bonventre Adrian', '2021-03-18 11:05:25', 1),
(202, '5816110726', 'Bonventre Adrian', '2021-03-18 11:12:01', 1),
(203, '5816110726', 'Bonventre Adrian', '2021-03-18 11:13:31', 1),
(204, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:13:35', 0),
(205, '105221123143', 'Inconnu au bataillon', '2021-03-18 11:37:10', 0),
(206, '10515990', 'Nico', '2021-03-25 09:16:28', 1),
(207, '10515990', 'Nico', '2021-03-25 09:16:38', 1),
(208, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:16:43', 0),
(209, '2172660', 'Inconnu au bataillon', '2021-03-25 09:16:47', 0),
(210, '10515990', 'Nico', '2021-03-25 09:17:30', 1),
(211, '2172660', 'Inconnu au bataillon', '2021-03-25 09:17:34', 0),
(212, '10515990', 'Nico', '2021-03-25 09:17:55', 1),
(213, '10515990', 'Nico', '2021-03-25 09:18:01', 1),
(214, '2172660', 'Inconnu au bataillon', '2021-03-25 09:18:05', 0),
(215, '2172660', 'Inconnu au bataillon', '2021-03-25 09:18:11', 0),
(216, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:23:21', 0),
(217, '2172660', 'Inconnu au bataillon', '2021-03-25 09:23:25', 0),
(218, '10515990', 'Nico', '2021-03-25 09:23:29', 1),
(219, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:23:36', 0),
(220, '2172660', 'Inconnu au bataillon', '2021-03-25 09:23:40', 0),
(221, '10515990', 'Nico', '2021-03-25 09:23:44', 1),
(222, '2172660', 'Inconnu au bataillon', '2021-03-25 09:31:48', 0),
(223, '2172660', 'Inconnu au bataillon', '2021-03-25 09:31:55', 0),
(224, '10515990', 'Nico', '2021-03-25 09:32:01', 1),
(225, '10515990', 'Nico', '2021-03-25 09:32:05', 1),
(226, '10515990', 'Nico', '2021-03-25 09:32:10', 1),
(227, '10515990', 'Nico', '2021-03-25 09:32:16', 1),
(228, '2172660', 'Inconnu au bataillon', '2021-03-25 09:32:23', 0),
(229, '2172660', 'Inconnu au bataillon', '2021-03-25 09:32:27', 0),
(230, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:32:32', 0),
(231, '10515990', 'Nico', '2021-03-25 09:32:38', 1),
(232, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:42:40', 0),
(233, '2172660', 'Inconnu au bataillon', '2021-03-25 09:42:44', 0),
(234, '10515990', 'Nico', '2021-03-25 09:42:49', 1),
(235, '2172660', 'Inconnu au bataillon', '2021-03-25 09:43:49', 0),
(236, '2172660', 'Inconnu au bataillon', '2021-03-25 09:55:49', 0),
(237, '105221123143', 'Inconnu au bataillon', '2021-03-25 09:55:53', 0),
(238, '10515990', 'Nico', '2021-03-25 09:55:57', 1),
(239, '2172660', 'Inconnu au bataillon', '2021-03-25 09:58:25', 0),
(240, '2172660', 'Inconnu au bataillon', '2021-03-25 10:00:54', 0),
(241, '10515990', 'Nico', '2021-03-25 10:01:00', 1),
(242, '2172660', 'Inconnu au bataillon', '2021-03-25 10:26:54', 0),
(243, '10515990', 'Nico', '2021-03-25 10:27:00', 1),
(244, '10515990', 'Nico', '2021-03-25 10:27:09', 1),
(245, '2172660', 'Inconnu au bataillon', '2021-03-25 10:29:52', 0),
(246, '10515990', 'Nico', '2021-03-25 10:29:56', 1),
(247, '2172660', 'Inconnu au bataillon', '2021-03-25 10:31:30', 0),
(248, '2172660', 'Inconnu au bataillon', '2021-03-25 10:33:27', 0),
(249, '2172660', 'Inconnu au bataillon', '2021-03-25 10:33:31', 0),
(250, '10515990', 'Nico', '2021-03-25 10:41:18', 1),
(251, '10515990', 'Nico', '2021-03-25 10:41:23', 1),
(252, '10515990', 'Nico', '2021-03-25 10:41:49', 1),
(253, '2172660', 'Inconnu au bataillon', '2021-03-25 10:47:07', 0),
(254, '105221123143', 'Inconnu au bataillon', '2021-03-25 10:47:11', 0),
(255, '10515990', 'Nico', '2021-03-25 10:51:54', 1),
(256, '2172660', 'Inconnu au bataillon', '2021-03-25 10:56:10', 0),
(257, '2172660', 'Inconnu au bataillon', '2021-03-25 10:56:46', 0),
(258, '105221123143', 'Inconnu au bataillon', '2021-03-25 10:59:01', 0);

-- --------------------------------------------------------

--
-- Structure de la table `systeme`
--

CREATE TABLE `systeme` (
  `id` int(11) NOT NULL,
  `mode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `systeme`
--

INSERT INTO `systeme` (`id`, `mode`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `uid` longtext NOT NULL,
  `nom` varchar(255) NOT NULL,
  `access` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `uid`, `nom`, `access`) VALUES
(13, '0x2402', 'Maldame Lucien', 1),
(14, '0x789A', 'Olivier Drouin', 1),
(15, '0x6879', 'Voleur', 0),
(16, '0x5698', 'Hamadou', 1),
(26, '2011431832', 'Joseph', 1),
(27, '10515990', 'Nico', 1),
(29, '5816110726', 'Bonventre Adrian', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `passages`
--
ALTER TABLE `passages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `systeme`
--
ALTER TABLE `systeme`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `passages`
--
ALTER TABLE `passages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT pour la table `systeme`
--
ALTER TABLE `systeme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
