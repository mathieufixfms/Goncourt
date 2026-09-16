-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 16 sep. 2026 à 12:29
-- Version du serveur : 11.7.1-MariaDB
-- Version de PHP : 8.5.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `goncourt`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `id_author` int(11) NOT NULL,
  `biography` varchar(1000) DEFAULT NULL,
  `id_user_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id_author`, `biography`, `id_user_pro`) VALUES
(1, 'Boris Bergmann est né à Paris en 1992. Il est l\'auteur de cinq romans dont Nage Libre (prix de la Vocation 2018) et Les Corps insurgés (Prix Fénéon 2020). Il a été pensionnaire de la Villa Medicis et de la Villa Kujoyama. Il a organisé des expositions en France et à l\'étranger (autour de l\'oeuvre de René Daumal, notamment) et collabore en tant qu\'éditeur associé à la revue d\'art et de littérature Magma.', 1),
(2, 'Louise Chennevière, née en 1993 à Paris, est une autrice, chanteuse et musicienne française. Elle a suivi un parcours de classes préparatoires littéraires et est diplômée d’un master de philosophie', 2),
(3, 'Née à l\'île Maurice, Ananda Devi est l autrice d une oeuvre récompensée par de nombreux prix et traduite en une douzaine de langues. Parmi ses livres les plus marquants, on peut citer Ève de ses décombres (Gallimard, 2006, prix des Cinq Continents, prix RFO, prix Télévision Suisse Romande), Le Sari vert (Gallimard 2009, prix Louis Guilloux), Le Rire des déesses (Grasset, 2021, prix Femina des lycéens) et Le Jour des caméléons (Grasset, 2023, prix de la Langue française). Elle a reçu le prestigieux prix américain Neustadt 2024 pour l\'ensemble de son oeuvre.', 3),
(4, 'Sonia Devillers est journaliste dans la matinale de France Inter et présentatrice du « Dessous des images » sur Arte. Son premier livre, Les Exportés (Flammarion, 2022), raconte comment sa famille a fui la Roumanie communiste.', 4),
(5, 'Anne Godard est née à Paris en 1971, elle enseigne la littérature et l\'écriture créative à l\'université Sorbonne-Nouvelle. Elle a publié aux Éditions de Minuit L\'Inconsolable en 2006 (prix RTL-Lire) et Une chance folle en 2017 (prix Alain Spiess du deuxième roman). Nous aussi est son troisième roman.', 5),
(6, 'Après des études littéraires et des emplois de libraire, Olivier Grondeau est parti huit ans sur les routes, avant d\'être arrêté en Iran. Libéré en mars 2025, il poursuit désormais des études d\'anthropologie. L\'écriture l\'a toujours accompagné. Joseph dans la nuit est son premier livre.', 6),
(7, 'Yannick Haenel a notamment publié Cercle (prix Décembre 2007 et prix Roger Nimier 2008), Jan Karski (prix Interallié et prix du Roman Fnac 2009) et Tiens ferme ta couronne (prix Médicis 2017).', 7),
(8, 'Lilia Hassaine est notamment l\'autrice de Panorama (2023, prix Renaudot des lycéens). JEest son quatrième roman.', 8),
(9, 'Philippe Jaenada est né à Saint-Germain-en-Laye où ses grands-parents maternels possédaient le restaurant Le Grand Cerf. Issu d’une famille de pieds-noirs récemment revenue d’Algérie, il grandit dans une banlieue pavillonnaire, à Morsang-sur-Orge en Essonne[1]. Après des études scientifiques, il s’installe à Paris en 1986 où il enchaîne les petits boulots pendant plusieurs années[2]', 9),
(10, 'Jean-Yves Jouannais, né en 1964, est professeur à l\'École nationale supérieure des beaux-arts de Paris. Il a publié, notamment, L\'Idiotie (Beaux-Arts livres), Artistes sans oeuvres (Verticales), Les Barrages de sable (Grasset). De 2008 à 2024, il est l\'auteur du cycle de conférences-performances, L\'Encyclopédie des guerres, au Centre Pompidou (Paris).', 10),
(11, 'Emma Marsantes, dont c\'est le troisième roman, est professeur de français et poétesse', 11),
(12, 'Clémentine Mélois est née en 1980. Elle est notamment l\'autrice, aux Editions Grasset, de Cent titres. Sinon j\'oublie, Dehors, la tempête, ainsi que du très remarqué Alors c\'est bien (« L\'Arbalète », Editions Gallimard, 2024).', 12),
(13, 'Né en 1988, Thélyson Orélien est un auteur québécois d\'origine haïtienne. Poète et critique, il construit une oeuvre habitée par la mémoire, l\'exil et la question de l\'appartenance. Depuis sa publication au Québec par les Éditions du Boréal, C\'était ça ou mourir rencontre un écho international exceptionnel et est en cours de traduction dans plus de vingt langues. Un premier roman phénomène qui révèle une grande voix de la littérature contemporaine.', 13),
(14, 'Sylvain Prudhomme est l\'auteur de romans, récits et reportages salués par la critique et traduits à l\'étranger. Il a reçu le prix Femina en 2019 pour Par les routes. L\'Enfant dans le taxi a paru en 2023 aux Éditions de Minuit. Coyote, récit d\'un voyage le long de la frontière américano-mexicaine, a reçu le prix Nicolas Bouvier 2025.', 14),
(15, 'Olivier Rolin, né le 17 mai 1947 à Boulogne-Billancourt, est un écrivain français, lauréat notamment du prix Femina en 1994 pour Port-Soudan.', 15),
(16, 'Né à Paris le 4 octobre 1947, Patrice Trigano est le fils de l’industriel et homme politique André Trigano et de Gaby Sabatier. Après une scolarité à l’école Alsacienne où Alfred Simon l’initie au théâtre, il poursuit des études de droit, d’histoire de l’art à l’école du Louvre et de philosophie à l’école pratique des hautes études de la Sorbonne où il est l’élève de Jean Cassou.', 16);

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

CREATE TABLE `book` (
  `id_book` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `summary` varchar(1000) DEFAULT NULL,
  `nbr_de_pages` varchar(50) DEFAULT NULL,
  `language_` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `character_` varchar(50) DEFAULT NULL,
  `date_of_publication` date NOT NULL,
  `id_editor` int(11) NOT NULL,
  `id_author` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id_book`, `title`, `ISBN`, `summary`, `nbr_de_pages`, `language_`, `price`, `character_`, `date_of_publication`, `id_editor`, `id_author`) VALUES
(18, 'Minotaure', '9782226511874', '« Être l\'indésiré, né hors du désir du père, voilà mon acte de naissance.\r\nJ\'y réponds par un désir extrême, une surenchère d\'histoires vécues... ou racontées.\r\nAprès tout, le Minotaure est un Forçat du sentiment. Forcé d\'aimer tous ceux qu\'il rencontre.\r\nAvant de les dévorer. »', '242', 'Française', 20.90, 'Minotaure', '2026-08-19', 1, 1),
(19, 'Faire la peau', '9782818063583', 'Le récit d’une enfance sous l’emprise maternelle et du désir sauvage de s’émanciper. La narratrice décide de rompre avec la lignée de femmes qui l’a engendrée.', '288', 'Française', 21.00, 'Odile Soudant', '2026-08-20', 2, 2),
(20, 'Chronique d’un royaume perdu', '9782246846949', 'Une épopée fabuleuse dans un royaume hors norme où les guerres du monde contemporain rencontrent les combats intérieurs des individus. Un enfant devient le chroniqueur de ce royaume afin d’en empêcher l’oubli.', '464', 'Française', 24.00, NULL, '2026-08-19', 3, 3),
(21, 'Le fabuleux piano', '9782221286807', 'Sonia Devillers part à la recherche d’un piano à queue volé par les nazis en 1943. Son enquête la conduit sur les traces des familles juives spoliées et de l’histoire des pianos pillés pendant l’Occupation.', '288', 'Française', 21.00, 'les Enoch', '2026-08-27', 4, 4),
(22, 'Nous aussi', '9782330225575', 'Une famille privilégiée vit ensemble dans un immeuble parisien et dans une maison à la montagne. Les enfants, frères, sœurs, cousins et cousines forment un grand corps familial jusqu’au jour où la façade se fissure.', '240', 'Française', 20.00, NULL, '2026-08-19', 5, 5),
(23, 'Joseph dans la nuit', '9782378805975', 'Olivier, voyageur épris de liberté, est arrêté en Iran alors qu’il se rend vers Lahore. Accusé d’espionnage, il passe deux ans et demi en prison et trouve refuge dans la poésie, les souvenirs et les rêves.', '230', 'Française', 19.90, 'Olivier', '2026-08-20', 6, 6),
(24, 'La solitude des professeurs est infinie', '9782073161925', 'Jean Deichel, jeune professeur de français, découvre les difficultés et les joies du métier dans un collège de la banlieue parisienne. Le roman interroge la solitude, le désir et la possibilité de trouver une vraie vie au cœur du quotidien.', '320', 'Française', 21.50, 'Jean Deichel', '2026-08-20', 7, 7),
(25, 'Je', '9782073099945', 'Île de la Jamaïque, 1831. Antoinette Cosway, jeune créole, tombe amoureuse d’Edward Rochester. Des années plus tard, elle tente de conquérir sa propre histoire.', '256', 'Française', 21.00, 'Antoinette Cosway', '2026-08-20', 7, 8),
(26, 'L’inconnue du quai de Javel', '9782080490896', 'Le 6 septembre 1949, Louise Cansot est retrouvée morte quai de Javel à Paris. Soixante-quinze ans plus tard, Philippe Jaenada reprend l’enquête à partir des archives et du dossier policier.', '528', 'Française', 23.00, 'Louise Cansot', '2026-08-12', 8, 9),
(27, 'Une forêt', '9782226499523', 'Un court roman situé dans l’Allemagne de l’après-guerre autour du capitaine Lenz, de la forêt de Hasbruch et d’une étrange affaire liée à des oiseaux allemands.', '112', 'Française', 16.90, 'Capitaine Lenz', '2026-01-02', 1, 10),
(28, 'N’efface pas mes cercles', '9782378562953', 'En 1980, une femme se suicide dans un appartement cossu. La narratrice explore son histoire familiale et tente de comprendre les destins brisés d’une famille marquée par le patriarcat, la guerre et la colonisation.', '160', 'Française', 19.50, NULL, '2026-08-20', 9, 11),
(29, 'Choses que je croyais perdues', '9782073162854', 'Après une rupture, une jeune femme prépare son déménagement. Les objets de son quotidien font surgir des souvenirs, des histoires d’amour, des désillusions et les traces de sa vie passée.', '176', 'Française', 19.00, NULL, '2026-08-20', 7, 12),
(30, 'C’était ça ou mourir', '9782378289393', 'Jonas Dorléon quitte Haïti après l’embrasement de son quartier. Il traverse plusieurs pays dans l’espoir d’atteindre le Canada, affrontant frontières, violence, pauvreté et exil.', '444', 'Française', 26.00, 'Jonas Dorléon', '2026-09-01', 3, 13),
(31, 'De l’autre côté du lac', '9782707358233', 'Aux abords d’un lac de haute montagne, un groupe de chercheurs s’affaire. Une photographe aperçoit quelque chose que les autres ne voient pas. Un corps est retrouvé puis la photographe disparaît à son tour.', '288', 'Française', 22.00, NULL, '2026-08-27', 11, 14),
(32, 'La Guerre éternelle', '9782073121349', 'Une réflexion sur la guerre de Troie et sa permanence dans la mémoire des hommes. Olivier Rolin se rend en Troade et fait dialoguer l’Iliade avec les destructions des villes à travers l’histoire.', '224', 'Française', 20.00, NULL, '2026-08-20', 7, 15),
(33, 'Bataille au procès', '9782862316857', 'En 1956, Georges Bataille témoigne au procès de Jean-Jacques Pauvert. Cet épisode devient une réflexion sur la liberté littéraire, la morale et le rapport entre une œuvre et son créateur.', '136', 'Française', 19.00, 'Georges Bataille', '2026-08-21', 12, 16);

-- --------------------------------------------------------

--
-- Structure de la table `editor`
--

CREATE TABLE `editor` (
  `id_editor` int(11) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `id_user_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `editor`
--

INSERT INTO `editor` (`id_editor`, `nationality`, `id_user_pro`) VALUES
(1, 'Française', 17),
(2, 'Française', 18),
(3, 'Française', 19),
(4, 'Française', 20),
(5, 'Française', 21),
(6, 'Française', 22),
(7, 'Française', 23),
(8, 'Française', 24),
(9, 'Française', 25),
(10, 'Française', 26),
(11, 'Française', 27),
(12, 'Française', 28),
(13, 'Française', 29);

-- --------------------------------------------------------

--
-- Structure de la table `jury`
--

CREATE TABLE `jury` (
  `id_jury` int(11) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `president` tinyint(1) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_user_pro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `jury`
--

INSERT INTO `jury` (`id_jury`, `description`, `president`, `password`, `id_user_pro`) VALUES
(1, 'Écrivain, scénariste.\r\nEntre à l\'Académie Goncourt le 6 juin 1995 succédant à Jean Cayrol au 3ème couvert. Après en avoir été le Secrétaire général il était Président de la Société littéraire du 20 janvier 2020 au 13 mai 2024', 1, '1234', 30),
(2, 'Écrivain.\r\nAncien membre du Conseil d\'État.\r\nEntre à l\'Académie Goncourt le 6 juin 1995 succédant à Emmanuel Roblès au 8ème couvert. En est la Vice-Présidente.', 0, NULL, 31),
(3, 'Écrivain, poète et peintre.\r\nEntre à l\'Académie Goncourt le 6 mai 2008 succédant à François Nourissier au 6ème couvert', 0, NULL, 32),
(4, 'Écrivain\r\nEntre à l\'Académie Goncourt le 8 janvier 2013 succédant à Robert Sabatier au 4ème couvert.', 0, NULL, 33),
(5, 'Écrivain, réalisateur, dramaturge. Entre à l\'Académie Goncourt le 11 janvier 2012 succédant à Jorge Semprun au 9ème couvert. Après en avoir été le Trésorier, puis Secrétaire général, il est élu Président de la Société littéraire le 13 mai 2024', 0, NULL, 34),
(6, 'Ecrivain, journaliste. Entre à l’Académie Goncourt le 11 janvier 2012, succédant à Françoise Mallet-Joris au 10ème couvert', 0, NULL, 35),
(7, 'Dramaturge, philosophe, écrivain. Entre à l\'Académie Goncourt le 5 janvier 2016, succédant à Edmonde Charles-Roux au 2ème couvert. Élu trésorier le 6 mai 2025.', 0, NULL, 36),
(8, 'Romancier, philosophe et essayiste\r\nEntre à l’Académie Goncourt le 11 février 2020, succédant à Bernard Pivot au 1er couvert', 0, NULL, 37),
(9, 'Écrivaine. Entre à l’académie Goncourt le 28 février 2023 succédant à Patrick Rambaud au 5ème couvert.', 0, NULL, 38),
(10, 'Ecrivain\r\nEntre à l’Académie Goncourt le 11 février 2020, succédant à Virginie Despentes au 7ème couvert. Élue secrétaire générale le 13 mai 2024', 0, NULL, 39);

-- --------------------------------------------------------

--
-- Structure de la table `selection`
--

CREATE TABLE `selection` (
  `id_selection` int(11) NOT NULL,
  `name_selection` varchar(50) NOT NULL,
  `date_selection` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `selection`
--

INSERT INTO `selection` (`id_selection`, `name_selection`, `date_selection`) VALUES
(1, 'Première sélection', '2026-09-02'),
(2, 'Deuxième sélection', '2026-10-06'),
(3, 'Troisième sélection', '2026-10-27');

-- --------------------------------------------------------

--
-- Structure de la table `select_`
--

CREATE TABLE `select_` (
  `id_book` int(11) NOT NULL,
  `id_selection` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `select_`
--

INSERT INTO `select_` (`id_book`, `id_selection`) VALUES
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_pro`
--

CREATE TABLE `user_pro` (
  `id_user_pro` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Déchargement des données de la table `user_pro`
--

INSERT INTO `user_pro` (`id_user_pro`, `name`, `surname`) VALUES
(1, 'Boris', 'BERGMANN'),
(2, 'Louise', 'CHENNEVIÈRE'),
(3, 'Ananda', 'DEVI'),
(4, 'Sonia', 'DEVILLERS'),
(5, 'Anne', 'GODARD'),
(6, 'Olivier', 'GRONDEAU'),
(7, 'Yannick', 'HAENEL'),
(8, 'Lilia', 'HASSAINE'),
(9, 'Philippe', 'JAENADA'),
(10, 'Jean-Yves', 'JOUANNAIS'),
(11, 'Emma', 'MARSANTES'),
(12, 'Clémentine', 'MÉLOIS'),
(13, 'Thélyson', 'ORÉLIEN'),
(14, 'Sylvain', 'PRUDHOMME'),
(15, 'Olivier', 'ROLIN'),
(16, 'Patrice', 'TRIGANO'),
(17, 'EDITOR', 'Albin Michel'),
(18, 'EDITOR', 'P.O.L'),
(19, 'EDITOR', 'Grasset'),
(20, 'EDITOR', 'Robert Laffont'),
(21, 'EDITOR', 'Actes Sud'),
(22, 'EDITOR', 'L’Iconoclaste'),
(23, 'EDITOR', 'Gallimard'),
(24, 'EDITOR', 'Flammarion'),
(25, 'EDITOR', 'Albin Michel'),
(26, 'EDITOR', 'Verdier'),
(27, 'EDITOR', 'L’Arbalète/Gallimard'),
(28, 'EDITOR', 'Minuit'),
(29, 'EDITOR', 'Maurice Nadeau'),
(30, 'Didier', 'DECOIN'),
(31, 'Françoise', 'CHANDERNAGOR'),
(32, 'Tahar Ben', 'JELLOUN'),
(33, 'Paule', 'CONSTANT'),
(34, 'Philippe CLAUDEL', 'TRIGANO'),
(35, 'Pierre', 'ASSOULINE'),
(36, 'Eric-Emmanuel', 'SCHMITT'),
(37, 'Pascal', 'BRUCKNER'),
(38, 'Christine', 'ANGOT'),
(39, 'Camille', 'LAURENS');

-- --------------------------------------------------------

--
-- Structure de la table `voter`
--

CREATE TABLE `voter` (
  `id_voter` int(11) NOT NULL,
  `id_jury` int(11) DEFAULT NULL,
  `id_selection` int(11) DEFAULT NULL,
  `id_book` int(11) DEFAULT NULL,
  `nbr_of_yes` int(11) NOT NULL,
  `nbr_of_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id_author`),
  ADD UNIQUE KEY `id_user_pro` (`id_user_pro`);

--
-- Index pour la table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id_book`),
  ADD KEY `id_editor` (`id_editor`),
  ADD KEY `id_author` (`id_author`);

--
-- Index pour la table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id_editor`),
  ADD UNIQUE KEY `id_user_pro` (`id_user_pro`);

--
-- Index pour la table `jury`
--
ALTER TABLE `jury`
  ADD PRIMARY KEY (`id_jury`),
  ADD UNIQUE KEY `id_user_pro` (`id_user_pro`);

--
-- Index pour la table `selection`
--
ALTER TABLE `selection`
  ADD PRIMARY KEY (`id_selection`);

--
-- Index pour la table `select_`
--
ALTER TABLE `select_`
  ADD PRIMARY KEY (`id_book`,`id_selection`),
  ADD KEY `id_selection` (`id_selection`);

--
-- Index pour la table `user_pro`
--
ALTER TABLE `user_pro`
  ADD PRIMARY KEY (`id_user_pro`);

--
-- Index pour la table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`id_voter`),
  ADD KEY `id_jury` (`id_jury`),
  ADD KEY `id_selection` (`id_selection`),
  ADD KEY `id_book` (`id_book`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `book`
--
ALTER TABLE `book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `editor`
--
ALTER TABLE `editor`
  MODIFY `id_editor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `jury`
--
ALTER TABLE `jury`
  MODIFY `id_jury` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `selection`
--
ALTER TABLE `selection`
  MODIFY `id_selection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user_pro`
--
ALTER TABLE `user_pro`
  MODIFY `id_user_pro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `author`
--
ALTER TABLE `author`
  ADD CONSTRAINT `author_ibfk_1` FOREIGN KEY (`id_user_pro`) REFERENCES `user_pro` (`id_user_pro`);

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`id_editor`) REFERENCES `editor` (`id_editor`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`id_author`) REFERENCES `author` (`id_author`);

--
-- Contraintes pour la table `editor`
--
ALTER TABLE `editor`
  ADD CONSTRAINT `editor_ibfk_1` FOREIGN KEY (`id_user_pro`) REFERENCES `user_pro` (`id_user_pro`);

--
-- Contraintes pour la table `jury`
--
ALTER TABLE `jury`
  ADD CONSTRAINT `jury_ibfk_1` FOREIGN KEY (`id_user_pro`) REFERENCES `user_pro` (`id_user_pro`);

--
-- Contraintes pour la table `select_`
--
ALTER TABLE `select_`
  ADD CONSTRAINT `select__ibfk_1` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`),
  ADD CONSTRAINT `select__ibfk_2` FOREIGN KEY (`id_selection`) REFERENCES `selection` (`id_selection`);

--
-- Contraintes pour la table `voter`
--
ALTER TABLE `voter`
  ADD CONSTRAINT `voter_ibfk_1` FOREIGN KEY (`id_jury`) REFERENCES `jury` (`id_jury`),
  ADD CONSTRAINT `voter_ibfk_2` FOREIGN KEY (`id_selection`) REFERENCES `selection` (`id_selection`),
  ADD CONSTRAINT `voter_ibfk_3` FOREIGN KEY (`id_book`) REFERENCES `book` (`id_book`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
