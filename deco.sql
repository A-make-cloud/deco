-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 11 avr. 2022 à 20:04
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `deco`
--

-- --------------------------------------------------------

--
-- Structure de la table `administrateur`
--

CREATE TABLE `administrateur` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `administrateur`
--

INSERT INTO `administrateur` (`id`, `identifiant`, `password`) VALUES
(1, 'admin', '123'),
(2, 'adminStock', '123');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id` int(11) NOT NULL,
  `satisfaction` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`id`, `satisfaction`) VALUES
(1, 'Mauvais'),
(2, 'Bas'),
(3, 'Moyen'),
(4, 'Satisfaisant'),
(5, 'Excellent');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `titre` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `titre`) VALUES
(1, 'Tableau'),
(2, 'Lampe'),
(3, 'Table'),
(4, 'Chaise');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(55) DEFAULT NULL,
  `prenom` varchar(55) DEFAULT NULL,
  `adresse` varchar(55) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `adresse`, `email`, `password`) VALUES
(1, 'Dupont', 'Alain', '1 rue du Bois 75002 Paris', 'd@gmail.com', '123'),
(2, 'Jubert', 'Lea', '12 rue du près 75008 Paris', 'j@gmail.com', '123'),
(3, 'Tisson', 'Theo', '6 rue de la Madeleine 75009 Paris', 't@gmail.com', '123'),
(4, 'Caron', 'Yves', '3 rue de Paris 75003 Paris', 'y@gmail.com', '123'),
(5, 'Kess', 'Agnes', '25 rue de l echiquier 75010 Paris', 'a@gmail.com', '123'),
(6, 'dim', 'anche', '5 rue manin 75019 Paris', 't@gmail.com', '456'),
(7, 'mar', 'di', '1 rud dkdkdk', 'test@gmail.com', '123'),
(8, 'Sam', 'Daniel', '1 rue du Garage 75016 Paris', 's@gmail.com', '123'),
(9, 'Jubert', 'Jeanne', '1 rue du louvre 75002 Paris', 'j@gmail.com', '123');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `total` double NOT NULL,
  `date` date DEFAULT NULL,
  `etat` int(11) NOT NULL,
  `id_Client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`id`, `total`, `date`, `etat`, `id_Client`) VALUES
(1, 1500, '2022-04-05', 1, 5),
(2, 0, '2021-01-13', 0, 2),
(3, 0, '2018-02-03', 0, 3),
(4, 669, '2022-03-30', 0, 0),
(5, 1039, '2022-04-05', 2, 3),
(6, 1512, '2022-04-02', 0, 0),
(7, 1610, '2022-04-04', 0, 0),
(8, 160, '2022-04-05', 0, 0),
(9, 1035, '2022-04-05', 0, 0),
(10, 320, '2022-04-07', 0, 0),
(11, 2200, '2022-04-10', 0, 0),
(12, 2300, '2022-04-10', 0, 0),
(13, 1552, '2022-04-11', 0, 0),
(14, 240, '2022-04-11', 0, 0),
(15, 160, '2022-04-11', 0, 0),
(16, 675, '2022-04-11', 0, 0),
(17, 2980, '2022-04-11', 0, 0),
(18, 0, '2022-04-11', 0, 0),
(19, 0, '2022-04-11', 0, 0),
(20, 720, '2022-04-11', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` int(11) NOT NULL,
  `contenu` text NOT NULL,
  `dateC` varchar(255) DEFAULT NULL,
  `id_Client` int(11) NOT NULL,
  `id_Avis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `contenu`, `dateC`, `id_Client`, `id_Avis`) VALUES
(1, 'Une erreur constatee à la livraison, erreur corrigee. La personne chargee de la vente s\'est occupee de cela de A à Z.', '2012-09-12', 1, 4),
(2, 'La vitrine ne correspond pas, Pas la meme couleur que le buffet. Ainsi que les portes.\r\nNous sommes tres deçus', '2017-09-23', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `prix` double NOT NULL,
  `id_Commande` int(11) NOT NULL,
  `id_Produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `quantite`, `prix`, `id_Commande`, `id_Produit`) VALUES
(1, 1, 579, 0, 6),
(2, 1, 270, 0, 5),
(3, 1, 230, 1, 4),
(4, 1, 340, 2, 1),
(5, 1, 213, 3, 10),
(6, 1, 430, 3, 3),
(7, 1, 456, 4, 2),
(8, 1, 213, 4, 10),
(9, 2, 230, 5, 4),
(10, 1, 579, 5, 6),
(11, 1, 430, 6, 3),
(12, 1, 230, 6, 4),
(13, 4, 213, 6, 10),
(14, 1, 540, 7, 8),
(15, 1, 350, 7, 12),
(16, 2, 360, 7, 5),
(17, 1, 160, 8, 11),
(18, 6, 760, 1, 6),
(19, 1, 360, 9, 5),
(20, 1, 675, 9, 2),
(21, 1, 160, 0, 11),
(22, 1, 700, 0, 7),
(23, 4, 80, 10, 9),
(24, 1, 640, 11, 4),
(25, 1, 160, 11, 11),
(26, 2, 700, 11, 7),
(27, 1, 240, 12, 1),
(28, 1, 540, 12, 8),
(29, 2, 760, 12, 6),
(30, 1, 675, 0, 2),
(31, 1, 700, 13, 7),
(32, 4, 213, 13, 10),
(33, 1, 240, 14, 1),
(34, 1, 160, 15, 11),
(35, 1, 675, 16, 2),
(36, 3, 760, 17, 6),
(37, 1, 700, 17, 7),
(38, 1, 720, 20, 3);

-- --------------------------------------------------------

--
-- Structure de la table `factures`
--

CREATE TABLE `factures` (
  `id` int(11) NOT NULL,
  `numero` int(55) DEFAULT NULL,
  `dateF` varchar(55) DEFAULT NULL,
  `id_Client` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `factures`
--

INSERT INTO `factures` (`id`, `numero`, `dateF`, `id_Client`) VALUES
(1, 1234, '2012-11-24', 6);

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `montant` double NOT NULL,
  `dateP` varchar(55) NOT NULL,
  `id_Client` int(11) NOT NULL,
  `id_Facture` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(55) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  `quantite` int(11) NOT NULL,
  `id_Categorie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `image`, `prix`, `quantite`, `id_Categorie`) VALUES
(1, 'Tableau Suspension Doree', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TliWdmug-6XDX-AAi-ycsAAAAA%26pid%3DApi&f=1', 240, 320, 1),
(2, 'Tableau Pendentif coeur', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.sDtVilgMoi9EMzQCNrBV_QAAAA%26pid%3DApi&f=1', 675, 150, 1),
(3, 'Tableau Nu Abstrait ', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.explicit.bing.net%2Fth%3Fid%3DOIP.d-vxJhLqPp2-afpEWXQCuwAAAA%26pid%3DApi&f=1', 720, 300, 1),
(4, 'Tableau NY Statue de la Liberte', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.2TFpAgZiqv8RH5ncXixfWAAAAA%26pid%3DApi&f=1', 640, 600, 1),
(5, 'Luminaire Suspendu a une lumiere', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.renodepot.com%2Fimages%2F37495442_L.jpg&f=1&nofb=1', 360, 450, 2),
(6, 'Applique Suspendu Led en bois', 'https://cdn.shopify.com/s/files/1/2499/8120/products/AppliquemuraleLEDenboisavecabat-joursuspendu_800x.jpg?v=1647445009', 760, 100, 2),
(7, 'Relevable: Table hauteur reglable', 'https://www.ikea.com/fr/fr/images/products/trotten-bureau-assis-debout-beige-anthracite__1020760_pe831986_s5.jpg?f=s', 700, 500, 3),
(8, 'Roulette: Table ronde  4/5 pers', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ZGmPXimH2_NWcvK_4iW6rAAAAA%26pid%3DApi&f=1', 540, 150, 3),
(9, 'Chaise Style Bistrot', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.4WuY3OqaRG53KGsZll7w-QAAAA%26pid%3DApi&f=1', 80, 400, 4),
(10, 'Chaise Derbie Fauteuil ', 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.MkvpRAPKMc4HL2J9GXrStQAAAA%26pid%3DApi&f=1', 213, 100, 4),
(11, 'Chaise pivotante avec coussin, vert noir/gris', 'https://www.ikea.com/fr/fr/images/products/eldberget-malskaer-chaise-pivotante-avec-coussin-vert-noir-gris-fonce__1077154_pe856902_s5.jpg?f=s', 160, 300, 4),
(12, 'Lampadaire turquoise sur pieds', 'https://www.ikea.com/fr/fr/images/products/fyxnaes-lampadaire-turquoise__0859511_pe780942_s5.jpg?f=s', 350, 250, 2);

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `dateS` varchar(55) DEFAULT NULL,
  `id_Produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id`, `quantite`, `dateS`, `id_Produit`) VALUES
(1, 600, '2021-05-12', 4),
(2, 800, '2016-07-24', 5),
(3, 400, '2012-04-11', 6),
(4, 200, '2012-09-23', 1),
(5, 300, '2000-10-02', 2),
(6, 500, '2002-03-12', 3);

-- --------------------------------------------------------

--
-- Structure de la table `usine`
--

CREATE TABLE `usine` (
  `id` int(11) NOT NULL,
  `id_Produit` int(11) NOT NULL,
  `quantite` varchar(55) NOT NULL,
  `id_Stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `usine`
--

INSERT INTO `usine` (`id`, `id_Produit`, `quantite`, `id_Stock`) VALUES
(1, 1, '500', 5),
(2, 2, '400', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `administrateur`
--
ALTER TABLE `administrateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commande_fk0` (`id_Client`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commentaire_fk0` (`id_Client`),
  ADD KEY `commentaire_fk1` (`id_Avis`);

--
-- Index pour la table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_fk0` (`id_Commande`),
  ADD KEY `details` (`id_Produit`);

--
-- Index pour la table `factures`
--
ALTER TABLE `factures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facture_fk0` (`id_Client`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paiement_fk0` (`id_Client`),
  ADD KEY `paiement_fk1` (`id_Facture`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produit_fk0` (`id_Categorie`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_fk0` (`id_Produit`);

--
-- Index pour la table `usine`
--
ALTER TABLE `usine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usine_fk0` (`id_Stock`),
  ADD KEY `usine_fk1` (`id_Produit`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `administrateur`
--
ALTER TABLE `administrateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `factures`
--
ALTER TABLE `factures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `usine`
--
ALTER TABLE `usine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaire_fk0` FOREIGN KEY (`id_Client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `commentaire_fk1` FOREIGN KEY (`id_Avis`) REFERENCES `avis` (`id`);

--
-- Contraintes pour la table `factures`
--
ALTER TABLE `factures`
  ADD CONSTRAINT `facture_fk0` FOREIGN KEY (`id_Client`) REFERENCES `clients` (`id`);

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiement_fk0` FOREIGN KEY (`id_Client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `paiement_fk1` FOREIGN KEY (`id_Facture`) REFERENCES `factures` (`id`);

--
-- Contraintes pour la table `produits`
--
ALTER TABLE `produits`
  ADD CONSTRAINT `produit_fk0` FOREIGN KEY (`id_Categorie`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_fk0` FOREIGN KEY (`id_Produit`) REFERENCES `produits` (`id`);

--
-- Contraintes pour la table `usine`
--
ALTER TABLE `usine`
  ADD CONSTRAINT `usine_fk0` FOREIGN KEY (`id_Stock`) REFERENCES `stock` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
