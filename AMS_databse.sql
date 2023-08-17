-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 24 juil. 2020 à 20:37
-- Version du serveur :  5.7.30-log
-- Version de PHP : 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetpoo`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `id_etud` int(11) NOT NULL,
  `id_enseignant` int(11) NOT NULL,
  `id_matière1` int(11) NOT NULL,
  `numseance` int(10) NOT NULL,
  `abs_t` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`id_etud`, `id_enseignant`, `id_matière1`, `numseance`, `abs_t`) VALUES
(1, 1, 1, 2, '17 sept. 2019'),
(1, 2, 3, 2, '23 juil. 2020'),
(1, 1, 3, 6, '5 juil. 2020'),
(4, 2, 5, 4, '11 juil. 2020'),
(5, 2, 4, 3, '9 juil. 2020'),
(6, 2, 5, 3, '15 juil. 2020'),
(9, 5, 4, 6, '16 juil. 2020');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) NOT NULL,
  `niveau` int(11) DEFAULT NULL,
  `filière` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `niveau`, `filière`) VALUES
(1, 2, 'lfi'),
(2, 3, 'lfi'),
(3, 4, 'ie');

-- --------------------------------------------------------

--
-- Structure de la table `correspondance`
--

CREATE TABLE `correspondance` (
  `id_enseignant` int(11) NOT NULL,
  `id_ matière` int(11) NOT NULL,
  `id_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `enseignant`
--

CREATE TABLE `enseignant` (
  `id_enseignant` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `login` varchar(95) DEFAULT NULL,
  `pwd` varchar(95) DEFAULT NULL,
  `username` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignant`
--

INSERT INTO `enseignant` (`id_enseignant`, `nom`, `prenom`, `login`, `pwd`, `username`) VALUES
(1, 'aziz', 'azayez', 'enseignant', '1233', 'aziz'),
(2, 'hajji', 'imen', 'enseignant	', '1234', 'imen'),
(3, 'salhi', 'hajer', 'enseignant	', '1234', 'hajer'),
(4, 'najib', 'mohamed', 'enseignant', 'ameni', 'mohamed'),
(5, 'samaani', 'hazar', 'enseignant', 'ameni', 'hazar');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `nom_etud` varchar(45) DEFAULT NULL,
  `prenom_etud` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `username` varchar(90) DEFAULT NULL,
  `mail` varchar(95) DEFAULT NULL,
  `id_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`id_etudiant`, `nom_etud`, `prenom_etud`, `login`, `pwd`, `username`, `mail`, `id_classe`) VALUES
(1, 'akkeri', 'ameni', 'etudiant', 'ameni123', 'ameni', 'ameniakkeri04@gmail.com', 1),
(2, 'chadha', 'chadha', 'etudiant', 'chadha', 'chadha', 'chadha@gmail.com', 1),
(3, 'rejeb', 'rayen', 'etudiant', 'ameni', 'rayou', 'rayou@gmail.com', 2),
(4, 'ben yaala', 'aziz', 'etudiant', 'ameni', 'aziz', 'aziz@gmail.com', 2),
(5, 'najjar', 'lynda', 'etudiant', 'ameni', 'lynda', 'lynda@gmail.com', 2),
(6, 'barkallah', 'meryem', 'etudiant', 'meryem123', 'meryem', 'meryem@gmail.com', 2),
(8, 'lahmer', 'amine', 'etudiant', 'ameni', 'la7', 'la7@gmail.com', 3),
(9, 'azizi', 'menyar', 'etudiant', 'ameni', 'mimi', 'menyar@gmail.com', 3);

-- --------------------------------------------------------

--
-- Structure de la table `matière`
--

CREATE TABLE `matière` (
  `id_matière` int(11) NOT NULL,
  `lib` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matière`
--

INSERT INTO `matière` (`id_matière`, `lib`) VALUES
(1, 'arabe'),
(3, 'fr'),
(4, 'eng'),
(5, 'graphe'),
(6, 'poo'),
(7, 'python'),
(8, 'reseaux'),
(9, 'php'),
(10, 'vb');

-- --------------------------------------------------------

--
-- Structure de la table `responsable`
--

CREATE TABLE `responsable` (
  `id_responsable` int(11) NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prenom` varchar(45) DEFAULT NULL,
  `login` varchar(45) DEFAULT NULL,
  `pwd` varchar(95) DEFAULT NULL,
  `username` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `responsable`
--

INSERT INTO `responsable` (`id_responsable`, `nom`, `prenom`, `login`, `pwd`, `username`) VALUES
(2, 'neffeti', 'mouhamed', 'responsable', '1234', 'mouhamed'),
(3, 'darajji', 'fadhila', 'responsable', '12345', 'faddi');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`id_etud`,`numseance`,`id_matière1`,`id_enseignant`),
  ADD KEY `id_enseignant` (`id_enseignant`),
  ADD KEY `id_ matière_idx` (`id_matière1`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `correspondance`
--
ALTER TABLE `correspondance`
  ADD PRIMARY KEY (`id_enseignant`,`id_ matière`,`id_classe`),
  ADD KEY `id_ matière_idx` (`id_ matière`),
  ADD KEY `id_classe_idx` (`id_classe`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Index pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id_etudiant`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `matière`
--
ALTER TABLE `matière`
  ADD PRIMARY KEY (`id_matière`);

--
-- Index pour la table `responsable`
--
ALTER TABLE `responsable`
  ADD PRIMARY KEY (`id_responsable`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`id_matière1`) REFERENCES `matière` (`id_matière`),
  ADD CONSTRAINT `id_enseignant1` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_etudiant` FOREIGN KEY (`id_etud`) REFERENCES `etudiant` (`id_etudiant`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `correspondance`
--
ALTER TABLE `correspondance`
  ADD CONSTRAINT `id_ matière1` FOREIGN KEY (`id_ matière`) REFERENCES `matière` (`id_matière`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `id_classe1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_enseignant2` FOREIGN KEY (`id_enseignant`) REFERENCES `enseignant` (`id_enseignant`);

--
-- Contraintes pour la table `etudiant`
--
ALTER TABLE `etudiant`
  ADD CONSTRAINT `etudiant_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
