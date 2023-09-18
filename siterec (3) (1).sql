create database siterecc;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `siterec`
--

-- --------------------------------------------------------

--
-- Structure de la table `bureau`
--

CREATE TABLE `bureau` (
  `id_bureau` int(11) NOT NULL,
  `comp_bureau` varchar(255) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `condidat`
--

CREATE TABLE `condidat` (
  `id_candidat` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `domaine` varchar(255) NOT NULL,
  `Sexe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `experience`
--

CREATE TABLE `experience` (
  `id_exp` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `entreprise` varchar(30) NOT NULL,
  `intitule_poste` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

CREATE TABLE `formation` (
  `id_for` int(11) NOT NULL,
  `type_diplome` varchar(50) NOT NULL,
  `specialite` varchar(50) NOT NULL,
  `groupe_etablissement` varchar(50) NOT NULL,
  `etablissement` varchar(50) NOT NULL,
  `annee_obtinnation` int(4) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `langue`
--

CREATE TABLE `langue` (
  `id_lng` int(11) NOT NULL,
  `langue` varchar(30) NOT NULL,
  `niveau_langue` int(2) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `loisir`
--

CREATE TABLE `loisir` (
  `id_loisir` int(11) NOT NULL,
  `loisir` varchar(255) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `offre_emp`
--

CREATE TABLE `offre_emp` (
  `id_emp` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `domaine` varchar(255) DEFAULT NULL,
  `poste` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `mission` varchar(255) DEFAULT NULL,
  `requis` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_recruteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `id_candidat` int(11) NOT NULL,
  `cin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  `adresse` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `recruteur`
--

CREATE TABLE `recruteur` (
  `id_recruteur` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `fonctionnalite` varchar(255) DEFAULT NULL,
  `societe` varchar(255) DEFAULT NULL,
  `secteur` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `scores`
--

CREATE TABLE `scores` (
  `id_score` int(11) NOT NULL,
  `score` float NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `technique`
--

CREATE TABLE `technique` (
  `id_compt` int(11) NOT NULL,
  `comp_tec` varchar(255) NOT NULL,
  `id_candidat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bureau`
--
ALTER TABLE `bureau`
  ADD PRIMARY KEY (`id_bureau`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `condidat`
--
ALTER TABLE `condidat`
  ADD PRIMARY KEY (`id_candidat`);

--
-- Index pour la table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id_exp`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_for`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `langue`
--
ALTER TABLE `langue`
  ADD PRIMARY KEY (`id_lng`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `loisir`
--
ALTER TABLE `loisir`
  ADD PRIMARY KEY (`id_loisir`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `offre_emp`
--
ALTER TABLE `offre_emp`
  ADD PRIMARY KEY (`id_emp`),
  ADD KEY `offre_emp_ibfk_1` (`id_recruteur`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `recruteur`
--
ALTER TABLE `recruteur`
  ADD PRIMARY KEY (`id_recruteur`);

--
-- Index pour la table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id_score`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- Index pour la table `technique`
--
ALTER TABLE `technique`
  ADD PRIMARY KEY (`id_compt`),
  ADD KEY `id_candidat` (`id_candidat`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bureau`
--
ALTER TABLE `bureau`
  MODIFY `id_bureau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `condidat`
--
ALTER TABLE `condidat`
  MODIFY `id_candidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_exp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_for` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `langue`
--
ALTER TABLE `langue`
  MODIFY `id_lng` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `loisir`
--
ALTER TABLE `loisir`
  MODIFY `id_loisir` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `offre_emp`
--
ALTER TABLE `offre_emp`
  MODIFY `id_emp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `recruteur`
--
ALTER TABLE `recruteur`
  MODIFY `id_recruteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `scores`
--
ALTER TABLE `scores`
  MODIFY `id_score` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT pour la table `technique`
--
ALTER TABLE `technique`
  MODIFY `id_compt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bureau`
--
ALTER TABLE `bureau`
  ADD CONSTRAINT `bureau_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `langue`
--
ALTER TABLE `langue`
  ADD CONSTRAINT `langue_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `loisir`
--
ALTER TABLE `loisir`
  ADD CONSTRAINT `loisir_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `offre_emp`
--
ALTER TABLE `offre_emp`
  ADD CONSTRAINT `offre_emp_ibfk_1` FOREIGN KEY (`id_recruteur`) REFERENCES `recruteur` (`id_recruteur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`);

--
-- Contraintes pour la table `technique`
--
ALTER TABLE `technique`
  ADD CONSTRAINT `technique_ibfk_1` FOREIGN KEY (`id_candidat`) REFERENCES `condidat` (`id_candidat`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
