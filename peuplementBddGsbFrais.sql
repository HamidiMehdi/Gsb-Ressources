INSERT INTO `Etat` (`alias`, `libelle`) VALUES
('CR', 'Fiche créée, saisie en cours'),
('CL', 'Saisie clôturée'),
('VA', 'Validée'),
('MP', 'Mise en paiement'),
('RB', 'Remboursée'),
('EG', 'Enregistré');

-- -------------------------------------------------------------------------------------------------------------------

INSERT INTO `FraisForfait` (`alias`, `libelle`, `montant`) VALUES
('ETP', 'Forfait Etape', 110.00),
('KM', 'Frais Kilométrique', 0.62),
('NUI', 'Nuitée Hôtel', 80.00),
('REP', 'Repas Restaurant', 25.00);

-- -------------------------------------------------------------------------------------------------------------------


INSERT INTO `Comptable` (`nom`, `prenom`, `login`, `mdp`, `adresse`, `codePostal`, `ville`, `dateEmbauche`) VALUES
('Teuchi', 'Abdel', 'tabdel', 'azerty', '8 rue des mordac', '94600', 'Champigny', '2005-12-21'),
('Girl', 'Soulé', 'gsoule', 'azerty', '1 rue des mordac', '94600', 'Champigny', '1998-11-23'),
('Lenin', 'Francois', 'lfrancois', 'azerty', '1 rue de bussy', '77200', 'Bussy-sains-george', '1995-01-12'),
('Hamidi', 'Mehdi', 'hmehdi', 'azerty', '1 rue de la prison', '93420', 'Villepinte', '1995-01-12');

-- -------------------------------------------------------------------------------------------------------------------

INSERT INTO `Visiteur` (`matricule`, `nom`, `prenom`, `login`, `mdp`, `adresse`, `codePostal`, `ville`, `dateEmbauche`, `idComptable`) VALUES
('a131', 'Villechalane', 'Louis', 'lvillachane', 'jux7g', '8 rue des Charmes', '46000', 'Cahors', '2005-12-21', 1),
('a17', 'Andre', 'David', 'dandre', 'azerty', '1 rue Petit', '46200', 'Lalbenque', '1998-11-23', 1),
('a55', 'Bedos', 'Christian', 'cbedos', 'gmhxd', '1 rue Peranud', '46250', 'Montcuq', '1995-01-12', 1),
('a93', 'Tusseau', 'Louis', 'ltusseau', 'ktp3s', '22 rue des Ternes', '46123', 'Gramat', '2000-05-01', 1),
('b13', 'Bentot', 'Pascal', 'pbentot', 'doyw1', '11 allée des Cerises', '46512', 'Bessines', '1992-07-09', 2),
('b16', 'Bioret', 'Luc', 'lbioret', 'hrjfs', '1 Avenue gambetta', '46000', 'Cahors', '1998-05-11', 2),
('b19', 'Bunisset', 'Francis', 'fbunisset', '4vbnd', '10 rue des Perles', '93100', 'Montreuil', '1987-10-21', 2),
('b25', 'Bunisset', 'Denise', 'dbunisset', 's1y1r', '23 rue Manin', '75019', 'paris', '2010-12-05', 2),
('b28', 'Cacheux', 'Bernard', 'bcacheux', 'uf7r3', '114 rue Blanche', '75017', 'Paris', '2009-11-12', 2),
('b34', 'Cadic', 'Eric', 'ecadic', '6u8dc', '123 avenue de la République', '75011', 'Paris', '2008-09-23', 3),
('b4', 'Charoze', 'Catherine', 'ccharoze', 'u817o', '100 rue Petit', '75019', 'Paris', '2005-11-12', 3),
('b50', 'Clepkens', 'Christophe', 'cclepkens', 'bw1us', '12 allée des Anges', '93230', 'Romainville', '2003-08-11', 3),
('b59', 'Cottin', 'Vincenne', 'vcottin', '2hoh9', '36 rue Des Roches', '93100', 'Monteuil', '2001-11-18', 3),
('d13', 'Debelle', 'Jeanne', 'jdebelle', 'nvwqq', '134 allée des Joncs', '44000', 'Nantes', '2000-05-11', 3),
('d51', 'Debroise', 'Michel', 'mdebroise', 'sghkb', '2 Bld Jourdain', '44000', 'Nantes', '2001-04-17', 3),
('e22', 'Desmarquest', 'Nathalie', 'ndesmarquest', 'f1fob', '14 Place d Arc', '45000', 'Orléans', '2005-11-12', 4),
('e24', 'Desnost', 'Pierre', 'pdesnost', '4k2o5', '16 avenue des Cèdres', '23200', 'Guéret', '2001-02-05', 4),
('e39', 'Dudouit', 'Frédéric', 'fdudouit', '44im8', '18 rue de l église', '23120', 'GrandBourg', '2000-08-01', 4),
('e49', 'Duncombe', 'Claude', 'cduncombe', 'qf77j', '19 rue de la tour', '23100', 'La souteraine', '1987-10-10', 4),
('e5', 'Enault-Pascreau', 'Céline', 'cenault', 'y2qdu', '25 place de la gare', '23200', 'Gueret', '1995-09-01', 4),
('e52', 'Eynde', 'Valérie', 'veynde', 'i7sn3', '3 Grand Place', '13015', 'Marseille', '1999-11-01', 4),
('f21', 'Finck', 'Jacques', 'jfinck', 'mpb3t', '10 avenue du Prado', '13002', 'Marseille', '2001-11-10', 4),
('f39', 'Frémont', 'Fernande', 'ffremont', 'xs5tq', '4 route de la mer', '13012', 'Allauh', '1998-10-01', 4),
('f4', 'Gest', 'Alain', 'agest', 'azerty', '30 avenue de la mer', '13025', 'Berre', '1985-11-01', 4);

