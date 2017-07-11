-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 11 Juillet 2017 à 09:35
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `Animal_nature`
--

-- --------------------------------------------------------

--
-- Structure de la table `tab_animal`
--

CREATE TABLE `tab_animal` (
  `id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `animal` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `tab_animal`
--

INSERT INTO `tab_animal` (`id`, `type_id`, `animal`, `description`) VALUES
(1, 3, 'penguin', 'La description du penguin'),
(2, 2, 'singe', 'La description du singe!'),
(3, 2, 'vache', 'La description de le vache!'),
(4, 2, 'Chat', 'La description du chat');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`id`, `nom`, `description`) VALUES
(1, 'Reptile', 'Les reptiles (du latin, rampant) sont des animaux terrestres à température variable (ectothermes) et au corps souvent allongé et recouvert d\'écailles.'),
(2, 'mammifère', 'Les mammifères (Mammalia) sont un taxon et un clade (un regroupement cladistique de lignées biologiques) d\'animaux vertébrés'),
(3, 'oiseau', 'Les oiseaux, qui forment la classe des Aves, sont des vertébrés tétrapodes ailés. S\'il existe en 2016 plus de 10 400 espèces d\'oiseaux recensées1 (dont plus de la moitié sont des passereaux)a, très différentes tant par leur écologie que par leurs comportements');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tab_animal`
--
ALTER TABLE `tab_animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CB0A6457C54C8C93` (`type_id`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tab_animal`
--
ALTER TABLE `tab_animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tab_animal`
--
ALTER TABLE `tab_animal`
  ADD CONSTRAINT `FK_CB0A6457C54C8C93` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
