-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 29, 2025 at 10:59 AM
-- Server version: 10.6.21-MariaDB-cll-lve-log
-- PHP Version: 8.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estcibjm_ests`
--

-- --------------------------------------------------------

--
-- Table structure for table `Actualite`
--

CREATE TABLE `Actualite` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text DEFAULT NULL,
  `auteurId` int(11) DEFAULT NULL,
  `datePublication` datetime DEFAULT current_timestamp(),
  `mediaUrl` text DEFAULT NULL,
  `documents` text DEFAULT NULL,
  `evenementId` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Actualite`
--

INSERT INTO `Actualite` (`id`, `titre`, `contenu`, `auteurId`, `datePublication`, `mediaUrl`, `documents`, `evenementId`) VALUES
(6, '16ème édition du Concours National de l’Innovation, de la Recherche-Développement et de la Technologie', 'Vous portez un projet innovant ou un résultat de recherche à fort impact ? Vous souhaitez le développement et lui faire changer d’échelle ? Déposez votre candidature à la 16ème édition du Concours National de l’Innovation. Ce concours vise à :\r\n\r\nEncourager l’excellence en matière de recherche et contribuer à la diffusion des résultats de la recherche et leur valorisation, \r\n Identifier les innovations et leur valorisation éventuelle, les inventeurs et contribuer à la maturation de la technologie par un accompagnement adapté,\r\nContribuer à promouvoir l’esprit créatif chez les jeunes de moins de 19 ans.\r\nCette quinzième édition s\'adresse aux catégories suivantes :\r\n\r\nLes doctorants inscrits dans les Universités Marocaines (Doctorants et post docs);\r\nLes Inventeurs et innovateurs individuels au Maroc ;\r\nLes Jeunes inventeurs et innovateurs âgés de moins de 19 ans. \r\nLes candidatures sont ouvertes du 17 Mars 2025 au 30 Avril 2025. La remise des prix aura lieu en Juin 2025.', 1, '2025-04-12 00:48:24', 'uploads/news/image_1744418904.png', NULL, 6),
(8, 'Prix de la Compétitivité, Prix du Partenariat Université-Entreprise - Appel à candidatures 8ÈME EDITION', 'Le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce, annoncent le report du délai de dépôt des projets de candidatures pour le « Prix de la Compétitivité, Prix du Partenariat Université- Entreprise », 8ème Edition, et ce pour permettre aux universités et entreprises de finaliser leurs dossiers de candidature.\r\n\r\n La date limite de soumission des projets est prorogée au 09 février 2024.\r\n\r\nIl est à rappeler que le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce organisent la 8ème édition du Prix de la Compétitivité, Prix du Partenariat Université- Entreprise (PC/PPUE), en partenariat avec l’Académie Hassan II Des Sciences Et Techniques et l’Association R&D Maroc. Ce Prix vise à promouvoir et à encourager le partenariat institutionnel entre l\'université et l’environnement économique, notamment en matière de valorisation des résultats de la recherche scientifique et de transfert technologique. \r\n\r\nIl permet de gratifier les universités/centres publics de recherche et les entreprises ayant collaboré pour la réussite de projets communs de recherche et développement technologique et de l’innovation dont les effets sur l’amélioration de la compétitivité ont été démontrés. La date de démarrage du projet doit être au plus tard durant les 5 dernières années.\r\n\r\nLes établissements, les structures de recherche, les chercheurs et les entreprises intéressés sont priés de télécharger les termes de référence dudit prix, ci-dessous, et le formulaire de soumission, et d’envoyer un dossier conjoint de candidature, dûment complété et signé avant la date limite 09 février 2024 à l’adresse électronique :\r\n\r\nprix-universite-entreprise@enssup.ma\r\n\r\n', 1, '2025-04-12 01:25:15', 'uploads/news/image_1_1744421115.png', NULL, 9),
(10, '2ème édition Rencontres Innovation to Industry « INNOV B2B »', 'R&D Maroc  et le Cluster CE3M , organisent le 18 Mai 2023 en ligne, la 2ème édition des rencontres Innovation to Industrie « INNOV B2B », avec le soutien du Ministère de l\'Industrie et du Commerce, de l\'Agence de Coopération Internationale Allemande GIZ Maroc, et l\'appui de TAMWILCOM, et du réseau des Clusters marocains, la deuxième édition des rencontres Innovation to Industry « INNO B2B ».\r\n\r\nCet évènement de matchmaking, qui est en parfaite conformité avec la stratégie industrielle de promotion du made in Morocco et de dynamisation du marché local, vise à rapprocher une soixantaine de Startups marocaines des donneurs d’ordres et des industriels d’une part, des investisseurs et des Business Angels, d’autre part, pour une collaboration fructueuse entre les parties.\r\n\r\nUne soixantaine de start-ups avec des produits et solutions innovantes, ont été sélectionnées, dans les secteurs, de la Mobilité & Transport, le développement durable, Internet des objets (IoT), Conception de produits, Industrie 4.0, Matériel électrique, électronique, Service mobile, l’éducation et Santé.\r\n\r\nSont invités à prendre part, à cette place de marché de l’innovation, les industriels et grandes entreprises à la recherche de produits et solutions innovantes, les investisseurs en quête de projets à fort potentiel de développement. \r\n\r\nLes inscriptions, sont ouvertes jusqu’au 17 Mai 2023, sur le lien suivant: https://innov-b2b-2023.b2match.io/', 1, '2025-04-12 01:30:06', 'uploads/news/image_2_1744421406.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Admin`
--

CREATE TABLE `Admin` (
  `utilisateurId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admin`
--

INSERT INTO `Admin` (`utilisateurId`) VALUES
(1),
(14);

-- --------------------------------------------------------

--
-- Table structure for table `Article`
--

CREATE TABLE `Article` (
  `publicationId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Article`
--

INSERT INTO `Article` (`publicationId`) VALUES
(1),
(7),
(8),
(10),
(12),
(13);

-- --------------------------------------------------------

--
-- Table structure for table `Chapitre`
--

CREATE TABLE `Chapitre` (
  `publicationId` int(11) NOT NULL,
  `LivrePere` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Chercheur`
--

CREATE TABLE `Chercheur` (
  `utilisateurId` int(11) NOT NULL,
  `domaineRecherche` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Chercheur`
--

INSERT INTO `Chercheur` (`utilisateurId`, `domaineRecherche`, `bio`) VALUES
(2, 'informatique', 'prof jerymi'),
(1, 'informatique', 'prof jerymi'),
(5, '', ''),
(6, 'ttd', 'bbc'),
(13, 'test', 'tewtst'),
(14, 'rest', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `Conference`
--

CREATE TABLE `Conference` (
  `evenementId` int(11) NOT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Conference`
--

INSERT INTO `Conference` (`evenementId`, `dateDebut`, `dateFin`) VALUES
(10, '2025-04-12 00:00:00', '2025-04-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE `Contact` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `message` text DEFAULT NULL,
  `dateEnvoi` datetime DEFAULT current_timestamp(),
  `status` enum('Non lu','Lu','Répondu') DEFAULT 'Non lu',
  `sujet` varchar(255) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Contact`
--

INSERT INTO `Contact` (`id`, `nom`, `email`, `message`, `dateEnvoi`, `status`, `sujet`, `telephone`) VALUES
(4, 'test', 'elb2004m@gmail.com', 'test test message 2025', '2025-03-15 02:12:41', 'Lu', 'Demande d\'informations', ''),
(3, 'akram', 'elb2004m@gmail.com', 'test', '2025-03-14 18:16:28', 'Lu', 'Adhésion', ''),
(17, 'Оксана', 'i.tikhomirov@altera-media.com', 'Заказать звонок', '2025-04-16 06:17:08', 'Non lu', 'Adhesion', ''),
(18, 'Екатерина', 'murashova@asiacinema.ru', 'Домашний телефон', '2025-04-18 00:41:34', 'Non lu', 'Proposition de collaboration', ''),
(19, 'Search Engine', 'submissions@searchindex.site', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/\r\n', '2025-04-27 17:18:29', 'Non lu', 'Proposition de collaboration', ''),
(15, 'Оксана', 'katerina-201184@yandex.ru', 'Прошу перезвонить', '2025-04-14 15:44:05', 'Non lu', 'Adhesion', ''),
(16, 'Алена', 'losevvaleryi@bk.ru', 'Москва Сити', '2025-04-15 00:23:59', 'Non lu', 'Autre', ''),
(12, 'akram', 'elb2004m@gmail.com', 'nnnn', '2025-04-12 00:50:42', 'Non lu', 'Demande d\'informations', ''),
(13, 'tets', 'testetstetstesgqtyf.comtestetstets@tesgqtyf.com', 'test', '2025-04-12 02:21:12', 'Non lu', 'Proposition de collaboration', ''),
(14, 'tetstet', 'testetstets@tesgqtyf.com', 'yettd', '2025-04-12 02:41:01', 'Non lu', 'Demande d\'informations', '');

-- --------------------------------------------------------

--
-- Table structure for table `ContactReponse`
--

CREATE TABLE `ContactReponse` (
  `id` int(11) NOT NULL,
  `contactId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `reponse` text DEFAULT NULL,
  `dateReponse` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ContactReponse`
--

INSERT INTO `ContactReponse` (`id`, `contactId`, `userId`, `reponse`, `dateReponse`) VALUES
(5, 3, 1, NULL, '2025-03-15 02:15:04'),
(4, 4, 1, NULL, '2025-03-15 02:14:56');

-- --------------------------------------------------------

--
-- Table structure for table `Evenement`
--

CREATE TABLE `Evenement` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `lieu` varchar(255) DEFAULT NULL,
  `createurId` int(11) DEFAULT NULL,
  `dateCreation` datetime DEFAULT current_timestamp(),
  `projetId` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Evenement`
--

INSERT INTO `Evenement` (`id`, `titre`, `description`, `lieu`, `createurId`, `dateCreation`, `projetId`) VALUES
(10, '2ème édition Rencontres Innovation to Industry « INNOV B2B »', 'R&D Maroc  et le Cluster CE3M , organisent le 18 Mai 2023 en ligne, la 2ème édition des rencontres Innovation to Industrie « INNOV B2B », avec le soutien du Ministère de l\'Industrie et du Commerce, de l\'Agence de Coopération Internationale Allemande GIZ Maroc, et l\'appui de TAMWILCOM, et du réseau des Clusters marocains, la deuxième édition des rencontres Innovation to Industry « INNO B2B ».\r\n\r\nCet évènement de matchmaking, qui est en parfaite conformité avec la stratégie industrielle de promotion du made in Morocco et de dynamisation du marché local, vise à rapprocher une soixantaine de Startups marocaines des donneurs d’ordres et des industriels d’une part, des investisseurs et des Business Angels, d’autre part, pour une collaboration fructueuse entre les parties.\r\n\r\nUne soixantaine de start-ups avec des produits et solutions innovantes, ont été sélectionnées, dans les secteurs, de la Mobilité & Transport, le développement durable, Internet des objets (IoT), Conception de produits, Industrie 4.0, Matériel électrique, électronique, Service mobile, l’éducation et Santé.\r\n\r\nSont invités à prendre part, à cette place de marché de l’innovation, les industriels et grandes entreprises à la recherche de produits et solutions innovantes, les investisseurs en quête de projets à fort potentiel de développement. \r\n\r\nLes inscriptions, sont ouvertes jusqu’au 17 Mai 2023, sur le lien suivant: https://innov-b2b-2023.b2match.io/', 'safi', 1, '2025-04-11 21:34:03', 2),
(9, '16ème édition du Concours National de l’Innovation, de la Recherche-Développement et de la Technologie', 'Vous portez un projet innovant ou un résultat de recherche à fort impact ? Vous souhaitez le développement et lui faire changer d’échelle ? Déposez votre candidature à la 16ème édition du Concours National de l’Innovation. Ce concours vise à :\r\n\r\nEncourager l’excellence en matière de recherche et contribuer à la diffusion des résultats de la recherche et leur valorisation, \r\n Identifier les innovations et leur valorisation éventuelle, les inventeurs et contribuer à la maturation de la technologie par un accompagnement adapté,\r\nContribuer à promouvoir l’esprit créatif chez les jeunes de moins de 19 ans.\r\nCette quinzième édition s\'adresse aux catégories suivantes :\r\n\r\nLes doctorants inscrits dans les Universités Marocaines (Doctorants et post docs);\r\nLes Inventeurs et innovateurs individuels au Maroc ;\r\nLes Jeunes inventeurs et innovateurs âgés de moins de 19 ans. \r\nLes candidatures sont ouvertes du 17 Mars 2023 au 30 Avril 2025. La remise des prix aura lieu en Juin 2025.', 'el jadida', 1, '2025-04-11 21:11:51', 3),
(11, 'Prix de la Compétitivité, Prix du Partenariat Université-Entreprise - Appel à candidatures 8ÈME EDITION', 'Le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce, annoncent le report du délai de dépôt des projets de candidatures pour le « Prix de la Compétitivité, Prix du Partenariat Université- Entreprise », 8ème Edition, et ce pour permettre aux universités et entreprises de finaliser leurs dossiers de candidature.\r\n\r\n La date limite de soumission des projets est prorogée au 09 février 2024.\r\n\r\nIl est à rappeler que le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce organisent la 8ème édition du Prix de la Compétitivité, Prix du Partenariat Université- Entreprise (PC/PPUE), en partenariat avec l’Académie Hassan II Des Sciences Et Techniques et l’Association R&D Maroc. Ce Prix vise à promouvoir et à encourager le partenariat institutionnel entre l\'université et l’environnement économique, notamment en matière de valorisation des résultats de la recherche scientifique et de transfert technologique. \r\n\r\nIl permet de gratifier les universités/centres publics de recherche et les entreprises ayant collaboré pour la réussite de projets communs de recherche et développement technologique et de l’innovation dont les effets sur l’amélioration de la compétitivité ont été démontrés. La date de démarrage du projet doit être au plus tard durant les 5 dernières années.\r\n\r\nLes établissements, les structures de recherche, les chercheurs et les entreprises intéressés sont priés de télécharger les termes de référence dudit prix, ci-dessous, et le formulaire de soumission, et d’envoyer un dossier conjoint de candidature, dûment complété et signé avant la date limite 09 février 2024 à l’adresse électronique :\r\n\r\nprix-universite-entreprise@enssup.ma\r\n\r\n- Termes de Référence du Prix \r\n\r\n- Formulaire de soumission\r\n\r\n \r\n\r\n ', 'CASABLANCA', 1, '2025-04-11 21:35:16', 3);

-- --------------------------------------------------------

--
-- Table structure for table `IdeeRecherche`
--

CREATE TABLE `IdeeRecherche` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `proposePar` int(11) DEFAULT NULL,
  `dateProposition` datetime DEFAULT current_timestamp(),
  `status` enum('en attente','approuvée','refusé') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `IdeeRecherche`
--

INSERT INTO `IdeeRecherche` (`id`, `titre`, `description`, `proposePar`, `dateProposition`, `status`) VALUES
(1, 'test', 'test', 1, '2025-03-12 19:57:14', 'approuvée'),
(3, 'test', 'test', 4, '2025-03-15 02:13:29', 'refusé'),
(4, 'gdejg', 'hfhfhfhfhf', 1, '2025-03-15 09:53:21', 'en attente'),
(5, 'jj', 'kk', 1, '2025-04-12 00:15:55', 'en attente'),
(6, 'test', 'test', 1, '2025-04-12 00:24:00', 'en attente'),
(7, '16ème édition du Concours National de l’Innovation, de la Recherche-Développement et de la Technologie', 'sssssssssssssssss', 1, '2025-04-12 00:50:00', 'en attente');

-- --------------------------------------------------------

--
-- Table structure for table `Livre`
--

CREATE TABLE `Livre` (
  `publicationId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Livre`
--

INSERT INTO `Livre` (`publicationId`) VALUES
(2),
(3),
(4),
(5),
(6),
(9),
(11);

-- --------------------------------------------------------

--
-- Table structure for table `MembreBureauExecutif`
--

CREATE TABLE `MembreBureauExecutif` (
  `utilisateurId` int(11) NOT NULL,
  `role` enum('President','VicePresident','GeneralSecretary','Treasurer','ViceTreasurer','Counselor') NOT NULL,
  `Mandat` decimal(10,2) DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `chercheurId` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MembreBureauExecutif`
--

INSERT INTO `MembreBureauExecutif` (`utilisateurId`, `role`, `Mandat`, `permissions`, `chercheurId`) VALUES
(3, 'President', 0.00, '', NULL),
(2, 'VicePresident', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', 2),
(7, 'President', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(8, 'GeneralSecretary', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(9, 'VicePresident', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(10, 'Treasurer', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(11, 'ViceTreasurer', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(12, 'Counselor', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', NULL),
(14, 'VicePresident', 0.00, 'view_publications,add_publication,edit_publication,delete_publication,view_events,add_event,edit_event,delete_event,view_projects,create_project,edit_project,delete_project,view_news,create_news,edit_news,delete_news,view_ideas,approve_ideas,view_users,create_user,edit_user,view_contacts,reply_contacts,delete_contacts,admin_access,manage_bureau,manage_settings', 14);

-- --------------------------------------------------------

--
-- Table structure for table `Notifications`
--

CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` enum('info','success','warning','error') DEFAULT 'info',
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Participe`
--

CREATE TABLE `Participe` (
  `id` int(11) NOT NULL,
  `projetId` int(11) DEFAULT NULL,
  `utilisateurId` int(11) DEFAULT NULL,
  `role` enum('chercheur','participant') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Participe`
--

INSERT INTO `Participe` (`id`, `projetId`, `utilisateurId`, `role`) VALUES
(2, 2, 5, 'participant'),
(3, 3, 5, 'participant'),
(4, 4, 5, 'participant'),
(5, 5, 5, 'participant');

-- --------------------------------------------------------

--
-- Table structure for table `Partner`
--

CREATE TABLE `Partner` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `siteweb` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Partner`
--

INSERT INTO `Partner` (`id`, `nom`, `contact`, `logo`, `siteweb`) VALUES
(1, 'Innovation', '(+212) 5 24 62 70 26', 'http://www.ests.uca.ma/wp-content/uploads/2023/10/IMG-20231023-WA0001.jpg', 'http://www.ests.uca.ma/'),
(2, 'ests', 'contact.ests@uca.ma', 'http://www.ests.uca.ma/wp-content/uploads/2024/03/ESTSLOGO24.png', 'http://www.ests.uca.ma/'),
(4, 'ss', 'ggggs', 'https://est.center/news/create', 'https://est.center/news/create');

-- --------------------------------------------------------

--
-- Table structure for table `ProjetPartner`
--

CREATE TABLE `ProjetPartner` (
  `projetId` int(11) NOT NULL,
  `partnerId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ProjetRecherche`
--

CREATE TABLE `ProjetRecherche` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `budget` decimal(10,2) DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL,
  `chefProjet` int(11) DEFAULT NULL,
  `dateCreation` datetime DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ProjetRecherche`
--

INSERT INTO `ProjetRecherche` (`id`, `titre`, `description`, `budget`, `dateDebut`, `dateFin`, `chefProjet`, `dateCreation`, `status`) VALUES
(2, 'test', 'test', NULL, '2025-04-06 00:00:00', NULL, 1, '2025-04-05 18:01:29', 'En cours'),
(3, 's', 's', 20000.00, '2025-04-06 00:00:00', '2025-04-30 00:00:00', 6, '2025-04-06 15:12:20', 'En cours'),
(4, 'ss', 'sss', 20000.00, '2025-04-12 00:00:00', '2025-04-29 00:00:00', 1, '2025-04-12 00:15:40', 'En préparation'),
(5, 'test', 'test', NULL, '2025-04-12 00:00:00', NULL, 1, '2025-04-12 00:23:49', 'En cours');

-- --------------------------------------------------------

--
-- Table structure for table `Publication`
--

CREATE TABLE `Publication` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `contenu` text DEFAULT NULL,
  `auteurId` int(11) DEFAULT NULL,
  `datePublication` datetime DEFAULT current_timestamp(),
  `evenementId` int(11) DEFAULT NULL,
  `projetId` int(11) DEFAULT NULL,
  `documents` text DEFAULT NULL,
  `mediaUrl` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Publication`
--

INSERT INTO `Publication` (`id`, `titre`, `contenu`, `auteurId`, `datePublication`, `evenementId`, `projetId`, `documents`, `mediaUrl`) VALUES
(7, 'Impact de l’intelligence artificielle sur la productivité des entreprises en Afrique du Nord', 'Cet article explore l’effet de l’IA sur la performance des PME en Algérie, Maroc et Tunisie à travers une approche comparative.', 1, '2025-04-12 00:03:30', NULL, NULL, '[{\"filename\":\"Cahier_des_charges_Association_1744416210.pdf\",\"originalName\":\"Cahier des charges Association.pdf\",\"path\":\"uploads\\/publications\\/Cahier_des_charges_Association_1744416210.pdf\",\"size\":163550,\"mime\":\"application\\/pdf\"}]', NULL),
(9, 'test', 'test', 1, '2025-04-12 00:51:46', NULL, NULL, '[]', NULL),
(10, 'Impact de l’intelligence artificielle sur la productivité des entreprises en Afrique du Nord', 'Vous portez un projet innovant ou un résultat de recherche à fort impact ? Vous souhaitez le développement et lui faire changer d’échelle ? Déposez votre candidature à la 16ème édition du Concours National de l’Innovation. Ce concours vise à :\r\n\r\nEncourager l’excellence en matière de recherche et contribuer à la diffusion des résultats de la recherche et leur valorisation, \r\n Identifier les innovations et leur valorisation éventuelle, les inventeurs et contribuer à la maturation de la technologie par un accompagnement adapté,\r\nContribuer à promouvoir l’esprit créatif chez les jeunes de moins de 19 ans.\r\nCette quinzième édition s\'adresse aux catégories suivantes :\r\n\r\nLes doctorants inscrits dans les Universités Marocaines (Doctorants et post docs);\r\nLes Inventeurs et innovateurs individuels au Maroc ;\r\nLes Jeunes inventeurs et innovateurs âgés de moins de 19 ans. \r\nLes candidatures sont ouvertes du 17 Mars 2023 au 30 Avril 2025. La remise des prix aura lieu en Juin 2025.', 1, '2025-04-12 01:03:39', NULL, 4, '[]', NULL),
(13, '2ème édition Rencontres Innovation to Industry « INNOV B2B »', 'R&D Maroc  et le Cluster CE3M , organisent le 18 Mai 2023 en ligne, la 2ème édition des rencontres Innovation to Industrie « INNOV B2B », avec le soutien du Ministère de l\'Industrie et du Commerce, de l\'Agence de Coopération Internationale Allemande GIZ Maroc, et l\'appui de TAMWILCOM, et du réseau des Clusters marocains, la deuxième édition des rencontres Innovation to Industry « INNO B2B ».\r\n\r\nCet évènement de matchmaking, qui est en parfaite conformité avec la stratégie industrielle de promotion du made in Morocco et de dynamisation du marché local, vise à rapprocher une soixantaine de Startups marocaines des donneurs d’ordres et des industriels d’une part, des investisseurs et des Business Angels, d’autre part, pour une collaboration fructueuse entre les parties.\r\n\r\nUne soixantaine de start-ups avec des produits et solutions innovantes, ont été sélectionnées, dans les secteurs, de la Mobilité & Transport, le développement durable, Internet des objets (IoT), Conception de produits, Industrie 4.0, Matériel électrique, électronique, Service mobile, l’éducation et Santé.\r\n\r\nSont invités à prendre part, à cette place de marché de l’innovation, les industriels et grandes entreprises à la recherche de produits et solutions innovantes, les investisseurs en quête de projets à fort potentiel de développement. \r\n\r\nLes inscriptions, sont ouvertes jusqu’au 17 Mai 2023, sur le lien suivant: https://innov-b2b-2023.b2match.io/', 1, '2025-04-12 01:31:55', 9, 2, '[]', NULL),
(12, 'Prix de la Compétitivité, Prix du Partenariat Université-Entreprise - Appel à candidatures 8ÈME EDITION', 'Le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce, annoncent le report du délai de dépôt des projets de candidatures pour le « Prix de la Compétitivité, Prix du Partenariat Université- Entreprise », 8ème Edition, et ce pour permettre aux universités et entreprises de finaliser leurs dossiers de candidature.\r\n\r\n La date limite de soumission des projets est prorogée au 09 février 2024.\r\n\r\nIl est à rappeler que le Ministère de l’Enseignement Supérieur, de la Recherche Scientifique et de l’Innovation et le Ministère de l’Industrie et du Commerce organisent la 8ème édition du Prix de la Compétitivité, Prix du Partenariat Université- Entreprise (PC/PPUE), en partenariat avec l’Académie Hassan II Des Sciences Et Techniques et l’Association R&D Maroc. Ce Prix vise à promouvoir et à encourager le partenariat institutionnel entre l\'université et l’environnement économique, notamment en matière de valorisation des résultats de la recherche scientifique et de transfert technologique. \r\n\r\nIl permet de gratifier les universités/centres publics de recherche et les entreprises ayant collaboré pour la réussite de projets communs de recherche et développement technologique et de l’innovation dont les effets sur l’amélioration de la compétitivité ont été démontrés. La date de démarrage du projet doit être au plus tard durant les 5 dernières années.\r\n\r\nLes établissements, les structures de recherche, les chercheurs et les entreprises intéressés sont priés de télécharger les termes de référence dudit prix, ci-dessous, et le formulaire de soumission, et d’envoyer un dossier conjoint de candidature, dûment complété et signé avant la date limite 09 février 2024 à l’adresse électronique :\r\n\r\n\r\n \r\n\r\n ', 1, '2025-04-12 01:24:08', 9, 2, '[{\"filename\":\"image_1_1744421048.png\",\"originalName\":\"image (1).png\",\"path\":\"uploads\\/publications\\/image_1_1744421048.png\",\"size\":123369,\"mime\":\"image\\/png\"}]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Seminaire`
--

CREATE TABLE `Seminaire` (
  `evenementId` int(11) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Seminaire`
--

INSERT INTO `Seminaire` (`evenementId`, `date`) VALUES
(9, '2025-04-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(191) NOT NULL,
  `motDePasse` varchar(255) NOT NULL,
  `dateInscription` datetime DEFAULT current_timestamp(),
  `derniereConnexion` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Utilisateur`
--

INSERT INTO `Utilisateur` (`id`, `nom`, `prenom`, `email`, `motDePasse`, `dateInscription`, `derniereConnexion`, `status`) VALUES
(1, 'akram', 'elbahar', 'elb2004m@gmail.com', '$2y$10$0S/c6aDi8Sv2V1wNCJm5SepToQU7mBHAj8p8QitqqDwpr8WaYTCy.', '2025-03-12 05:47:46', '2025-04-12 05:45:01', 1),
(14, 'test', 'test', 'eyvf@gnail.con', '$2y$10$bRugVC2q.2vrXsM8wBckgOtjS9FdwbeM1Udx.xuAF4uHT9/0cA7Ou', '2025-04-12 02:21:39', '2025-04-11 22:21:39', 1),
(13, 'test', 'test', 'test@testetstestetst.cm', '$2y$10$P2gw1lN5Rh.pX/WuatLihO5NG9NLepi5TFIZ3GqXW3iz69KtarCP2', '2025-04-11 23:30:50', '2025-04-11 19:32:42', 1),
(4, 'Elbahar', 'Akram', 'nerogammer77@gmail.com', '$2y$10$ENOn.RMdXCaRj2AMReaEwu6dJvtIoKSDaPrXBCJ0Fbg59BHQ7WZ5K', '2025-03-15 02:12:57', '2025-04-09 20:57:29', 1),
(5, 'Elbahar', 'Akram', 'abc@gmail.com', '$2y$10$dtBWredGkGo/sJb70q3LkOI6Gv9P/3vdRFasXPwrvM9gzbzVlm8/O', '2025-03-15 09:49:40', '2025-03-15 09:49:40', 1),
(6, 'ana', 'njgjg', 'babeacgdgdgddcca@mailmaxy.one', '$2y$10$.7chafNuhhXf5ETndP7TP.kmcFRCJeK0JgVj4DQi5mMyYMnz7cEN6', '2025-03-15 10:01:36', '2025-03-15 10:02:17', 1),
(7, 'BAKKAS', 'JAMAL', 'jbakkas@gmail.com', '$2y$10$KSvoW53KYpQtAOkOurpUaOxM.kRG/lRa47W6pkxPIMca/n4fIH8ZK', '2025-04-05 02:01:25', NULL, 1),
(8, 'Alaoui fdili', 'Othmane', 'othmane.alaoui.fdili@gmail.com', '$2y$10$7U2xX3Jujohouo82Ig6cles.Gg9jJbOkT5n.kAjXQ8LJc6b.no.oK', '2025-04-05 02:07:29', NULL, 1),
(9, 'Elfezazi', 'Said', 'Elfezazisaid@gmail.com', '$2y$10$qOh.lP8CbFBpg0p5rsmi2eCRtoF5yWpukv./YPArCoUhfTKmUhViG', '2025-04-05 02:08:58', NULL, 1),
(10, 'Chekry', 'Abderrahman', 'a.chekry@gmail.com', '$2y$10$qWln9FpZfUg.qIZ7WqjYPus2OTjTqTkNi0wvS54F1FSuanRCk05w.', '2025-04-05 02:11:12', NULL, 1),
(11, 'El ouazzani', 'hind', 'Elouazzanihind@gmail.com', '$2y$10$If5Rg9EltLAWKCaUPL.exuDy5ykoRx.GKcvX5aeyNq8yJVFQmtHjO', '2025-04-05 02:14:01', NULL, 1),
(12, 'mounir', 'ilham', 'ilhammounir@gmail.com', '$2y$10$1.jonmudi95RkC5haa9OCOX42CYznS3ak/apnF12GREmNZJfzzQ5u', '2025-04-05 02:26:41', '2025-04-05 11:45:54', 1),
(15, 'Christiandrilt', 'TristandriltVX', 'simply@triol.site', '$2y$10$VVWwTN/ktB0y.Y1ddMSHZ.6rRiPq6VbbpAMl8o6A1iVaPty5/HzjW', '2025-04-12 06:50:45', '2025-04-12 02:50:45', 1),
(16, 'abc', 'abc', 'testet@gmail.com', '$2y$10$3taKnK4S7r8Q/A4W.FzXDefiEbZFfmoXEt1Xi2UoHnvRlBn3gEDvu', '2025-04-12 09:44:32', '2025-04-12 05:44:32', 1),
(17, 'Nicholasdrilt', 'NikasdriltVX', 'also@triol.site', '$2y$10$6d34T8fimlHrp0ogTJLQbeCPMMPrjSXkQTkm..g8tyirtJneM4Vou', '2025-04-12 15:03:55', '2025-04-12 11:03:55', 1),
(18, 'medasTug', 'medasTugHL', 'medas@wikl.ru', '$2y$10$9nqPRjWrnnP2VGd6Uw/okOVgjFBfTJlyWyIVobL7vRzOh/0uvCKGG', '2025-04-20 11:12:09', '2025-04-26 10:07:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Workshop`
--

CREATE TABLE `Workshop` (
  `evenementId` int(11) NOT NULL,
  `instructorId` int(11) DEFAULT NULL,
  `dateDebut` datetime DEFAULT NULL,
  `dateFin` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Workshop`
--

INSERT INTO `Workshop` (`evenementId`, `instructorId`, `dateDebut`, `dateFin`) VALUES
(11, 7, '2025-04-12 00:00:00', '2025-04-21 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Actualite`
--
ALTER TABLE `Actualite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteurId` (`auteurId`),
  ADD KEY `evenementId` (`evenementId`);

--
-- Indexes for table `Admin`
--
ALTER TABLE `Admin`
  ADD PRIMARY KEY (`utilisateurId`);

--
-- Indexes for table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`publicationId`);

--
-- Indexes for table `Chapitre`
--
ALTER TABLE `Chapitre`
  ADD PRIMARY KEY (`publicationId`),
  ADD KEY `LivrePere` (`LivrePere`);

--
-- Indexes for table `Chercheur`
--
ALTER TABLE `Chercheur`
  ADD PRIMARY KEY (`utilisateurId`);

--
-- Indexes for table `Conference`
--
ALTER TABLE `Conference`
  ADD PRIMARY KEY (`evenementId`);

--
-- Indexes for table `Contact`
--
ALTER TABLE `Contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ContactReponse`
--
ALTER TABLE `ContactReponse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contactId` (`contactId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `Evenement`
--
ALTER TABLE `Evenement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `createurId` (`createurId`),
  ADD KEY `projetId` (`projetId`);

--
-- Indexes for table `IdeeRecherche`
--
ALTER TABLE `IdeeRecherche`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proposePar` (`proposePar`);

--
-- Indexes for table `Livre`
--
ALTER TABLE `Livre`
  ADD PRIMARY KEY (`publicationId`);

--
-- Indexes for table `MembreBureauExecutif`
--
ALTER TABLE `MembreBureauExecutif`
  ADD PRIMARY KEY (`utilisateurId`),
  ADD KEY `chercheurId` (`chercheurId`);

--
-- Indexes for table `Notifications`
--
ALTER TABLE `Notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `Participe`
--
ALTER TABLE `Participe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projetId` (`projetId`),
  ADD KEY `utilisateurId` (`utilisateurId`);

--
-- Indexes for table `Partner`
--
ALTER TABLE `Partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ProjetPartner`
--
ALTER TABLE `ProjetPartner`
  ADD PRIMARY KEY (`projetId`,`partnerId`),
  ADD KEY `partnerId` (`partnerId`);

--
-- Indexes for table `ProjetRecherche`
--
ALTER TABLE `ProjetRecherche`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chefProjet` (`chefProjet`);

--
-- Indexes for table `Publication`
--
ALTER TABLE `Publication`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteurId` (`auteurId`),
  ADD KEY `evenementId` (`evenementId`),
  ADD KEY `projetId` (`projetId`);

--
-- Indexes for table `Seminaire`
--
ALTER TABLE `Seminaire`
  ADD PRIMARY KEY (`evenementId`);

--
-- Indexes for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Workshop`
--
ALTER TABLE `Workshop`
  ADD PRIMARY KEY (`evenementId`),
  ADD KEY `instructorId` (`instructorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Actualite`
--
ALTER TABLE `Actualite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Contact`
--
ALTER TABLE `Contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ContactReponse`
--
ALTER TABLE `ContactReponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Evenement`
--
ALTER TABLE `Evenement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `IdeeRecherche`
--
ALTER TABLE `IdeeRecherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Notifications`
--
ALTER TABLE `Notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Participe`
--
ALTER TABLE `Participe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `Partner`
--
ALTER TABLE `Partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ProjetRecherche`
--
ALTER TABLE `ProjetRecherche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Publication`
--
ALTER TABLE `Publication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
