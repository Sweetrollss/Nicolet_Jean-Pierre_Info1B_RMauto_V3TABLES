-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: zzz_xxxxx_NOM_PRENOM_INFO1X_SUJET_104_2021

-- Détection si une autre base de donnée du même nom existe

DROP DATABASE IF EXISTS NICOLET_JEAN_PIERRE_INFO1B_rm_automobiles_164_2022;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS NICOLET_JEAN_PIERRE_INFO1B_rm_automobiles_164_2022;

-- Utilisation de cette base de donnée

USE NICOLET_JEAN_PIERRE_INFO1B_rm_automobiles_164_2022;
-- --------------------------------------------------------

--
-- Base de données :  `rm_automobiles`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_achat_vehicule`
--

CREATE TABLE `t_achat_vehicule` (
  `id_achat_vehic` int(11) NOT NULL,
  `fk_vehicule` int(11) DEFAULT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `prix_achat_vehic` decimal(10,0) DEFAULT NULL,
  `date_achat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_achat_vehicule`
--

INSERT INTO `t_achat_vehicule` (`id_achat_vehic`, `fk_vehicule`, `fk_personne`, `prix_achat_vehic`, `date_achat`) VALUES
(1, 3, 5, '66000', '2022-03-22 20:38:45');

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse`
--

CREATE TABLE `t_adresse` (
  `id_adresse` int(11) NOT NULL,
  `nom_adresse` varchar(42) DEFAULT NULL,
  `localite_adresse` varchar(100) DEFAULT NULL,
  `npa_adresse` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_adresse`
--

INSERT INTO `t_adresse` (`id_adresse`, `nom_adresse`, `localite_adresse`, `npa_adresse`) VALUES
(1, 'rue fontes 1', 'Trey', '1245'),
(2, 'ruelle de la vache 1', 'Troublion', '1234'),
(3, 'Rue des prouetes 32', 'La sainte-ville', '2534'),
(4, 'Ruelle du trait 25', 'Montreux', '1820'),
(5, 'Via LF Menabrea 61', 'Chatillon AO Italie', '11024'),
(6, 'Route de la Distillerie 24', 'Ollon', '1867');

-- --------------------------------------------------------

--
-- Structure de la table `t_adresse_pers`
--

CREATE TABLE `t_adresse_pers` (
  `id_adresse_pers` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_adresse` int(11) DEFAULT NULL,
  `fk_npa` int(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_adresse_pers`
--

INSERT INTO `t_adresse_pers` (`id_adresse_pers`, `fk_personne`, `fk_adresse`, `fk_npa`) VALUES
(1, 5, 4, 4),
(2, 1, 2, 2),
(3, 2, 3, 3),
(4, 3, 1, 1),
(5, 4, 5, 5),
(6, 8, 6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_demander_prestation`
--

CREATE TABLE `t_demander_prestation` (
  `id_demander_prestation` int(11) NOT NULL,
  `fk_prestation` int(42) DEFAULT NULL,
  `fk_personne` int(42) DEFAULT NULL,
  `date_prestation` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_demander_prestation`
--

INSERT INTO `t_demander_prestation` (`id_demander_prestation`, `fk_prestation`, `fk_personne`, `date_prestation`) VALUES
(1, 1, 6, '2022-03-22 20:44:44');

-- --------------------------------------------------------

--
-- Structure de la table `t_deposer_stock`
--

CREATE TABLE `t_deposer_stock` (
  `id_deposer_stock` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_stock` int(11) DEFAULT NULL,
  `date_deposer_stock` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_deposer_stock`
--

INSERT INTO `t_deposer_stock` (`id_deposer_stock`, `fk_personne`, `fk_stock`, `date_deposer_stock`) VALUES
(1, 4, 1, '2022-03-22 20:46:06'),
(2, 8, 2, '2022-03-22 20:46:25'),
(3, 8, 3, '2022-03-22 20:46:33'),
(4, 4, 4, '2022-03-22 20:47:04'),
(5, 4, 5, '2022-03-22 20:47:12');

-- --------------------------------------------------------

--
-- Structure de la table `t_mail`
--

CREATE TABLE `t_mail` (
  `id_mail` int(11) NOT NULL,
  `nom_mail` varchar(126) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_mail`
--

INSERT INTO `t_mail` (`id_mail`, `nom_mail`) VALUES
(1, 'Dupoilu@plop.com'),
(2, 'delach@hotmail.com'),
(3, 'pasdereseau@pasdenet.com'),
(4, 'enniom@morricone.it'),
(5, 'rfripp@dgmlive.com'),
(6, 'rachidjean@gmail.com'),
(7, 'jmlopez@gmaoule.com'),
(8, 'Rock.industry@studiori.com'),
(9, 'IO@pouet.net'),
(10, 'ope@io.eu');

-- --------------------------------------------------------

--
-- Structure de la table `t_mail_personne`
--

CREATE TABLE `t_mail_personne` (
  `id_create_mail` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_mail` int(11) DEFAULT NULL,
  `date_create_mail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_mail_personne`
--

INSERT INTO `t_mail_personne` (`id_create_mail`, `fk_personne`, `fk_mail`, `date_create_mail`) VALUES
(1, 4, 4, '2010-11-14 23:00:00'),
(2, 1, 1, '2021-11-28 10:49:12'),
(3, 2, 2, '2021-11-28 10:49:50'),
(4, 2, 6, '2021-11-28 10:50:46'),
(5, 3, 3, '2021-11-28 10:51:23'),
(6, 5, 5, '2021-11-28 10:51:58'),
(7, 6, 7, '2021-12-21 20:27:19'),
(8, 5, 9, '2022-01-22 13:35:14'),
(9, 7, 10, '2022-01-22 13:36:04');

-- --------------------------------------------------------

--
-- Structure de la table `t_numero_pers`
--

CREATE TABLE `t_numero_pers` (
  `id_numero_pers` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_numero` int(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_numero_pers`
--

INSERT INTO `t_numero_pers` (`id_numero_pers`, `fk_personne`, `fk_numero`) VALUES
(1, 5, 4),
(2, 4, 3),
(3, 1, 2),
(4, 2, 1),
(5, 3, 5),
(6, 8, 7),
(7, 6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_numero_tel`
--

CREATE TABLE `t_numero_tel` (
  `id_numero_tel` int(11) NOT NULL,
  `numero` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_numero_tel`
--

INSERT INTO `t_numero_tel` (`id_numero_tel`, `numero`) VALUES
(1, '021 923 93 43'),
(2, '021 941 14 52'),
(3, '248 123-7654'),
(4, '321 124-6512'),
(5, '021 935 63 47'),
(6, '077 755 23 45'),
(7, '064 123 546');

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `id_personne` int(11) NOT NULL,
  `nom_personne` varchar(42) DEFAULT NULL,
  `prenom_personne` varchar(31) DEFAULT NULL,
  `date_naiss_personne` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_personne`
--

INSERT INTO `t_personne` (`id_personne`, `nom_personne`, `prenom_personne`, `date_naiss_personne`) VALUES
(1, 'Dupoilu', 'Roger', '1982-08-08'),
(2, 'Laplace', 'Jean-rachid', '1975-02-16'),
(3, 'Berthod', 'Paul', '1981-07-12'),
(4, 'Morricone ', 'Ennio', '1928-11-10'),
(5, 'Fripp', 'Robert', '1954-05-02'),
(6, 'Lopez', 'Jean-Marc', '1996-06-11'),
(7, 'Leblanc', 'Juste', '1991-03-04'),
(8, 'Pignon', 'Francois', '2001-10-07');

-- --------------------------------------------------------

--
-- Structure de la table `t_prestation`
--

CREATE TABLE `t_prestation` (
  `id_prestation` int(11) NOT NULL,
  `nom_prestation` varchar(42) DEFAULT NULL,
  `temps_prestation` time(4) DEFAULT NULL,
  `prix_prestation` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_prestation`
--

INSERT INTO `t_prestation` (`id_prestation`, `nom_prestation`, `temps_prestation`, `prix_prestation`) VALUES
(1, 'Changement 4 pneus', '00:30:00.0000', '40'),
(2, 'Préparation expertise', '02:30:00.0000', '500'),
(3, 'remplacer batterie', '00:20:00.0000', '150');

-- --------------------------------------------------------

--
-- Structure de la table `t_statut`
--

CREATE TABLE `t_statut` (
  `id_statut` int(11) NOT NULL,
  `nom_statut` varchar(42) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_statut`
--

INSERT INTO `t_statut` (`id_statut`, `nom_statut`) VALUES
(1, 'Client'),
(2, 'Préparateur'),
(3, 'Mécanicien');

-- --------------------------------------------------------

--
-- Structure de la table `t_statut_personne`
--

CREATE TABLE `t_statut_personne` (
  `id_statut_personne` int(11) NOT NULL,
  `fk_statut` int(11) DEFAULT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `date_statut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_statut_personne`
--

INSERT INTO `t_statut_personne` (`id_statut_personne`, `fk_statut`, `fk_personne`, `date_statut`) VALUES
(1, 3, 8, '2022-03-23 11:21:36'),
(2, 2, 4, '2022-03-23 11:23:00'),
(3, 1, 2, '2022-03-23 11:24:17'),
(4, 1, 1, '2022-03-23 11:32:57'),
(5, 1, 3, '2022-03-23 11:33:51'),
(6, 1, 5, '2022-03-23 11:34:06'),
(7, 1, 6, '2022-03-23 11:34:36'),
(8, 1, 7, '2022-03-23 11:34:46');

-- --------------------------------------------------------

--
-- Structure de la table `t_stock`
--

CREATE TABLE `t_stock` (
  `id_stock` int(11) NOT NULL,
  `nom_stock` varchar(42) DEFAULT NULL,
  `prix_unite` float DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_stock`
--

INSERT INTO `t_stock` (`id_stock`, `nom_stock`, `prix_unite`, `quantite_stock`) VALUES
(1, 'pneus 165/60 R17', 120.75, 24),
(2, 'turbo ford Evs2', 455.45, 1),
(3, 'Volant MOMO R8 audi', 300, 2),
(4, 'bougies CC032', 12, 30),
(5, 'huile moteur', 15, 6);

-- --------------------------------------------------------

--
-- Structure de la table `t_utiliser_stock`
--

CREATE TABLE `t_utiliser_stock` (
  `id_utiliser_stock` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_stock` int(11) DEFAULT NULL,
  `date_utiliser_stock` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_utiliser_stock`
--

INSERT INTO `t_utiliser_stock` (`id_utiliser_stock`, `fk_personne`, `fk_stock`, `date_utiliser_stock`) VALUES
(1, 8, 1, '2022-03-22 20:49:59');

-- --------------------------------------------------------

--
-- Structure de la table `t_vehicule`
--

CREATE TABLE `t_vehicule` (
  `id_vehicule` int(11) NOT NULL,
  `marque_vehic` varchar(42) DEFAULT NULL,
  `model_vehic` varchar(42) DEFAULT NULL,
  `cyl_vehic` varchar(42) DEFAULT NULL,
  `km_vehic` mediumint(255) DEFAULT NULL,
  `image_cg_vehic` varchar(42) DEFAULT NULL,
  `prix_vehicule` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_vehicule`
--

INSERT INTO `t_vehicule` (`id_vehicule`, `marque_vehic`, `model_vehic`, `cyl_vehic`, `km_vehic`, `image_cg_vehic`, `prix_vehicule`) VALUES
(1, 'Volvo', 'G640', '2500 cm3', 123974, NULL, '12765'),
(2, 'Ferrari ', 'F348', '6500 cm3', 71235, NULL, '128300'),
(3, 'Porsche ', '911 carrera', '6000 cm3', 34897, NULL, '67000'),
(4, 'Massey Ferguson', 'tracteur 11F', '4900 cm3', 200000, NULL, NULL),
(5, 'Push', 'Maxi', '48,8 cm3', 398, NULL, '1000');

-- --------------------------------------------------------

--
-- Structure de la table `t_vente_vehicule`
--

CREATE TABLE `t_vente_vehicule` (
  `id_vente_vehic` int(11) NOT NULL,
  `fk_vehicule` int(11) DEFAULT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `date_vente` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prix_vente_vehicule` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `t_vente_vehicule`
--

INSERT INTO `t_vente_vehicule` (`id_vente_vehic`, `fk_vehicule`, `fk_personne`, `date_vente`, `prix_vente_vehicule`) VALUES
(1, 1, 2, '2022-03-22 20:33:33', '12000'),
(2, 5, 2, '2022-03-23 11:29:31', '1000');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `t_achat_vehicule`
--
ALTER TABLE `t_achat_vehicule`
  ADD PRIMARY KEY (`id_achat_vehic`),
  ADD KEY `fk_vehicule` (`fk_vehicule`),
  ADD KEY `fk_personne` (`fk_personne`);

--
-- Index pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  ADD PRIMARY KEY (`id_adresse`);

--
-- Index pour la table `t_adresse_pers`
--
ALTER TABLE `t_adresse_pers`
  ADD PRIMARY KEY (`id_adresse_pers`),
  ADD KEY `FK_personne` (`fk_personne`),
  ADD KEY `FK_adresse` (`fk_adresse`),
  ADD KEY `FK_npa` (`fk_npa`);

--
-- Index pour la table `t_demander_prestation`
--
ALTER TABLE `t_demander_prestation`
  ADD PRIMARY KEY (`id_demander_prestation`),
  ADD KEY `fk_prestation` (`fk_prestation`),
  ADD KEY `fk_personne` (`fk_personne`);

--
-- Index pour la table `t_deposer_stock`
--
ALTER TABLE `t_deposer_stock`
  ADD PRIMARY KEY (`id_deposer_stock`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_stock` (`fk_stock`);

--
-- Index pour la table `t_mail`
--
ALTER TABLE `t_mail`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `t_mail_personne`
--
ALTER TABLE `t_mail_personne`
  ADD PRIMARY KEY (`id_create_mail`),
  ADD KEY `fk_personnes` (`fk_personne`,`fk_mail`,`id_create_mail`),
  ADD KEY `fk_mail` (`fk_mail`);

--
-- Index pour la table `t_numero_pers`
--
ALTER TABLE `t_numero_pers`
  ADD PRIMARY KEY (`id_numero_pers`),
  ADD KEY `FK_personne` (`fk_personne`),
  ADD KEY `FK_numero` (`fk_numero`);

--
-- Index pour la table `t_numero_tel`
--
ALTER TABLE `t_numero_tel`
  ADD PRIMARY KEY (`id_numero_tel`);

--
-- Index pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `t_prestation`
--
ALTER TABLE `t_prestation`
  ADD PRIMARY KEY (`id_prestation`);

--
-- Index pour la table `t_statut`
--
ALTER TABLE `t_statut`
  ADD PRIMARY KEY (`id_statut`);

--
-- Index pour la table `t_statut_personne`
--
ALTER TABLE `t_statut_personne`
  ADD PRIMARY KEY (`id_statut_personne`),
  ADD KEY `fk_statut` (`fk_statut`),
  ADD KEY `fk_personne` (`fk_personne`);

--
-- Index pour la table `t_stock`
--
ALTER TABLE `t_stock`
  ADD PRIMARY KEY (`id_stock`);

--
-- Index pour la table `t_utiliser_stock`
--
ALTER TABLE `t_utiliser_stock`
  ADD PRIMARY KEY (`id_utiliser_stock`),
  ADD KEY `fk_prestation` (`fk_personne`),
  ADD KEY `fk_stock` (`fk_stock`);

--
-- Index pour la table `t_vehicule`
--
ALTER TABLE `t_vehicule`
  ADD PRIMARY KEY (`id_vehicule`);

--
-- Index pour la table `t_vente_vehicule`
--
ALTER TABLE `t_vente_vehicule`
  ADD PRIMARY KEY (`id_vente_vehic`),
  ADD KEY `fk_vehicule` (`fk_vehicule`),
  ADD KEY `fk_personne` (`fk_personne`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `t_achat_vehicule`
--
ALTER TABLE `t_achat_vehicule`
  MODIFY `id_achat_vehic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_adresse`
--
ALTER TABLE `t_adresse`
  MODIFY `id_adresse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `t_adresse_pers`
--
ALTER TABLE `t_adresse_pers`
  MODIFY `id_adresse_pers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `t_demander_prestation`
--
ALTER TABLE `t_demander_prestation`
  MODIFY `id_demander_prestation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_deposer_stock`
--
ALTER TABLE `t_deposer_stock`
  MODIFY `id_deposer_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_mail`
--
ALTER TABLE `t_mail`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `t_mail_personne`
--
ALTER TABLE `t_mail_personne`
  MODIFY `id_create_mail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `t_numero_pers`
--
ALTER TABLE `t_numero_pers`
  MODIFY `id_numero_pers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `t_numero_tel`
--
ALTER TABLE `t_numero_tel`
  MODIFY `id_numero_tel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `t_prestation`
--
ALTER TABLE `t_prestation`
  MODIFY `id_prestation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t_statut`
--
ALTER TABLE `t_statut`
  MODIFY `id_statut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `t_statut_personne`
--
ALTER TABLE `t_statut_personne`
  MODIFY `id_statut_personne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `t_stock`
--
ALTER TABLE `t_stock`
  MODIFY `id_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_utiliser_stock`
--
ALTER TABLE `t_utiliser_stock`
  MODIFY `id_utiliser_stock` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `t_vehicule`
--
ALTER TABLE `t_vehicule`
  MODIFY `id_vehicule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_vente_vehicule`
--
ALTER TABLE `t_vente_vehicule`
  MODIFY `id_vente_vehic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `t_achat_vehicule`
--
ALTER TABLE `t_achat_vehicule`
  ADD CONSTRAINT `t_achat_vehicule_ibfk_1` FOREIGN KEY (`fk_vehicule`) REFERENCES `t_vehicule` (`id_vehicule`),
  ADD CONSTRAINT `t_achat_vehicule_ibfk_2` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`);

--
-- Contraintes pour la table `t_adresse_pers`
--
ALTER TABLE `t_adresse_pers`
  ADD CONSTRAINT `t_adresse_pers_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_adresse_pers_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`),
  ADD CONSTRAINT `t_adresse_pers_ibfk_3` FOREIGN KEY (`fk_npa`) REFERENCES `t_adresse` (`id_adresse`);

--
-- Contraintes pour la table `t_demander_prestation`
--
ALTER TABLE `t_demander_prestation`
  ADD CONSTRAINT `t_demander_prestation_ibfk_1` FOREIGN KEY (`fk_prestation`) REFERENCES `t_prestation` (`id_prestation`),
  ADD CONSTRAINT `t_demander_prestation_ibfk_2` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`);

--
-- Contraintes pour la table `t_deposer_stock`
--
ALTER TABLE `t_deposer_stock`
  ADD CONSTRAINT `t_deposer_stock_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_deposer_stock_ibfk_2` FOREIGN KEY (`fk_stock`) REFERENCES `t_stock` (`id_stock`);

--
-- Contraintes pour la table `t_mail_personne`
--
ALTER TABLE `t_mail_personne`
  ADD CONSTRAINT `t_mail_personne_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_mail_personne_ibfk_2` FOREIGN KEY (`fk_mail`) REFERENCES `t_mail` (`id_mail`);

--
-- Contraintes pour la table `t_numero_pers`
--
ALTER TABLE `t_numero_pers`
  ADD CONSTRAINT `t_numero_pers_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_numero_pers_ibfk_2` FOREIGN KEY (`fk_numero`) REFERENCES `t_numero_tel` (`id_numero_tel`);

--
-- Contraintes pour la table `t_statut_personne`
--
ALTER TABLE `t_statut_personne`
  ADD CONSTRAINT `fk_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `fk_statut` FOREIGN KEY (`fk_statut`) REFERENCES `t_statut` (`id_statut`);

--
-- Contraintes pour la table `t_utiliser_stock`
--
ALTER TABLE `t_utiliser_stock`
  ADD CONSTRAINT `t_utiliser_stock_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `t_utiliser_stock_ibfk_2` FOREIGN KEY (`fk_stock`) REFERENCES `t_stock` (`id_stock`);

--
-- Contraintes pour la table `t_vente_vehicule`
--
ALTER TABLE `t_vente_vehicule`
  ADD CONSTRAINT `fk_personne_vehicule` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`),
  ADD CONSTRAINT `fk_vehicule` FOREIGN KEY (`fk_vehicule`) REFERENCES `t_vehicule` (`id_vehicule`);
