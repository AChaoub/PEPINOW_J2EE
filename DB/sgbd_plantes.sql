-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 05 fév. 2021 à 01:19
-- Version du serveur :  10.4.11-MariaDB
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sgbd_plantes`
--

-- --------------------------------------------------------

--
-- Structure de la table `plante`
--

CREATE TABLE `plante` (
  `id_Plante` int(11) NOT NULL,
  `Description_Plante` varchar(256) NOT NULL,
  `Prix_Plante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `plante`
--

INSERT INTO `plante` (`id_Plante`, `Description_Plante`, `Prix_Plante`) VALUES
(3, 'Photinia Fraseri Red Robin', 100),
(5, 'Photinia Fraseri Red Robin', 150),
(6, 'Quercus Ilex', 120),
(7, 'Photinia Fraseri Red Robin', 100),
(8, 'Quercus Ilex', 120),
(9, 'LILOIS', 140),
(10, 'JASMINE', 60),
(12, 'ANGRATHIUM', 190),
(13, 'SOSSIYARTHIM', 345),
(14, 'Marceillak', 320),
(16, 'LOLOIIIS', 239),
(17, 'Photinia Fraseri Red Robin', 100);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `plante`
--
ALTER TABLE `plante`
  ADD PRIMARY KEY (`id_Plante`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `plante`
--
ALTER TABLE `plante`
  MODIFY `id_Plante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
