CREATE TABLE `Comptable` (
  `idComptable` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `login` varchar(30) DEFAULT NULL,
  `mdp` varchar(150) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `codePostal` varchar(7) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL,
  PRIMARY KEY (`idComptable`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `Etat` (
  `idEtat` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(3) DEFAULT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idEtat`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `Visiteur` (
  `idVisiteur` int(11) NOT NULL AUTO_INCREMENT,
  `matricule` varchar(4) DEFAULT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `login` varchar(30) DEFAULT NULL,
  `mdp` varchar(150) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `codePostal` varchar(7) DEFAULT NULL,
  `ville` varchar(50) DEFAULT NULL,
  `dateEmbauche` date DEFAULT NULL,
  `idComptable` int(11) NOT NULL,
  PRIMARY KEY (`idVisiteur`),
  CONSTRAINT `FK_Visiteur_COMPTABLE` FOREIGN KEY (`idComptable`) REFERENCES `Comptable` (`idComptable`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `FicheFrais` (
  `idFiche` int(11) NOT NULL AUTO_INCREMENT,
  `dateCreation` date DEFAULT NULL,
  `nbJustificatifs` int(11) DEFAULT NULL,
  `montantValide` decimal(10,2) DEFAULT NULL,
  `dateModif` date DEFAULT NULL,
  `idEtatFiche` int(11) DEFAULT NULL,
  `idVisiteur` int(11) DEFAULT NULL,
  `idEtatFraisForfait` int(11) DEFAULT NULL,
  `idEtatFraisHorsClassification` int(11) DEFAULT NULL,
  PRIMARY KEY (`idFiche`),
  KEY `FK_FicheFrais_EtatFiche` (`idEtatFiche`),
  KEY `FK_FicheFrais_EtatFraisForfait` (`idEtatFraisForfait`),
  KEY `FK_FicheFrais_EtatFraisHorsClassification` (`idEtatFraisHorsClassification`),
  KEY `FK_FicheFrais_Visiteur` (`idVisiteur`),
  CONSTRAINT `FK_FicheFrais_Visiteur` FOREIGN KEY (`idVisiteur`) REFERENCES `Visiteur` (`idVisiteur`),
  CONSTRAINT `FK_FicheFrais_EtatFiche` FOREIGN KEY (`idEtatFiche`) REFERENCES `Etat` (`idEtat`),
  CONSTRAINT `FK_FicheFrais_EtatFraisForfait` FOREIGN KEY (`idEtatFraisForfait`) REFERENCES `Etat` (`idEtat`),
  CONSTRAINT `FK_FicheFrais_EtatFraisHorsClassification` FOREIGN KEY (`idEtatFraisHorsClassification`) REFERENCES `Etat` (`idEtat`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `FraisForfait` (
  `idFrais` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(3) DEFAULT NULL,
  `libelle` varchar(30) DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idFrais`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `LigneFraisForfait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quantite` int(11) DEFAULT NULL,
  `dateFrais` date DEFAULT NULL,
  `idFicheFrais` int(11) DEFAULT NULL,
  `idFrais` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_LigneFraisForfait_FicheFrais` (`idFicheFrais`),
  KEY `FK_LigneFraisForfait_FraisForfait` (`idFrais`),
  CONSTRAINT `FK_LigneFraisForfait_FraisForfait` FOREIGN KEY (`idFrais`) REFERENCES `FraisForfait` (`idFrais`),
  CONSTRAINT `FK_LigneFraisForfait_FicheFrais` FOREIGN KEY (`idFicheFrais`) REFERENCES `FicheFrais` (`idFiche`)
) ENGINE=InnoDB;

-- --------------------------------------------------------------------------------------------------------------

CREATE TABLE `LigneFraisHorsForfait` (
  `idLigneFraisHorsForfait` int(11) NOT NULL AUTO_INCREMENT,
  `libelle` varchar(200) DEFAULT NULL,
  `dateFrais` date DEFAULT NULL,
  `montant` decimal(10,2) DEFAULT NULL,
  `refuser` boolean DEFAULT '0',
  `idFiche` int(11) DEFAULT NULL,
  `idEtat` int(11) DEFAULT NULL,
  PRIMARY KEY (`idLigneFraisHorsForfait`),
  KEY `FK_LigneFraisHorsForfait_FicheFrais` (`idFiche`),
  KEY `FK_LigneFraisHorsForfait_Etat` (`idEtat`),
  CONSTRAINT `FK_LigneFraisHorsForfait_Etat` FOREIGN KEY (`idEtat`) REFERENCES `Etat` (`idEtat`),
  CONSTRAINT `FK_LigneFraisHorsForfait_FicheFrais` FOREIGN KEY (`idFiche`) REFERENCES `FicheFrais` (`idFiche`)
) ENGINE=InnoDB;
