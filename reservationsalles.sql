-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 19 déc. 2022 à 19:04
-- Version du serveur : 5.5.68-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kamel-sarhiri_reservationsalles`
--

-- --------------------------------------------------------

--
-- Structure de la table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `id_utilisateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `reservations`
--

INSERT INTO `reservations` (`id`, `titre`, `description`, `debut`, `fin`, `id_utilisateur`) VALUES
(4, 'Séminaire', 'Séminaire sur la formation professionelle', '2022-12-16 10:00:00', '2022-12-16 13:00:00', 2),
(6, 'Réunion de travail', 'Réunion pluridisciplinaire', '2022-12-14 12:00:00', '2022-12-14 13:00:00', 2),
(8, 'Test', 'petit test...ok', '2022-12-20 09:00:00', '2022-12-20 19:00:00', 2),
(9, 'formation', 'session de formation starter', '2022-12-21 14:00:00', '2022-12-21 16:00:00', 3),
(10, 'kick off', 'kick off PHP', '2022-12-23 16:00:00', '2022-12-23 19:00:00', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `login`, `password`) VALUES
(1, 'admin', '$2y$10$vvqJYclmPRf2dNrfVwbneOWXBPYQmDQkmLvaSmI0EemDzuXdBeFTi'),
(2, 'Kamel', '$2y$10$ev3sGAcaRl/LITGADNdNZeBTvQBB4fL4vEjyUamY3Zct2KeaqStSG'),
(3, 'nabil', '$2y$10$x97qtI2Iy6uP1HYqPrHJLu6KZjE6DfwkUBMK9hlznewB1t/813Mqq');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
