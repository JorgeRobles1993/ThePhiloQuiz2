-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 20, 2024 at 09:54 AM
-- Server version: 10.6.12-MariaDB-1:10.6.12+maria~ubu2004-log
-- PHP Version: 8.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `The-Philo-Quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `choices`
--

CREATE TABLE `choices` (
  `id` bigint(20) NOT NULL,
  `id_questions` bigint(20) NOT NULL,
  `good_ans` tinyint(1) NOT NULL,
  `statement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `choices`
--

INSERT INTO `choices` (`id`, `id_questions`, `good_ans`, `statement`) VALUES
(1, 1, 1, 'Socrate'),
(2, 1, 0, 'Aristote'),
(3, 1, 0, 'Thalès de Milet'),
(4, 1, 0, 'Pythagore'),
(5, 2, 1, 'Aristote'),
(6, 2, 0, 'Épicure'),
(7, 2, 0, 'Socrate'),
(8, 2, 0, 'Platon'),
(9, 3, 1, 'Descartes'),
(10, 3, 0, 'Rousseau'),
(11, 3, 0, 'Voltaire'),
(12, 3, 0, 'Montesquieu'),
(13, 4, 1, 'Hédonisme'),
(14, 4, 0, 'Stoïcisme'),
(15, 4, 0, 'Existentialisme'),
(16, 4, 0, 'Scepticisme'),
(17, 5, 1, 'Machiavel'),
(18, 5, 0, 'Hobbes'),
(19, 5, 0, 'Locke'),
(20, 5, 0, 'Rousseau'),
(21, 6, 1, 'Épistémologie'),
(22, 6, 0, 'Éthique'),
(23, 6, 0, 'Métaphysique'),
(24, 6, 0, 'Esthétique'),
(25, 7, 1, 'Socrate'),
(26, 7, 0, 'Platon'),
(27, 7, 0, 'Aristote'),
(28, 7, 0, 'Thalès de Milet'),
(29, 8, 1, 'Hume'),
(30, 8, 0, 'Descartes'),
(31, 8, 0, 'Locke'),
(32, 8, 0, 'Kant'),
(33, 9, 1, 'Confucius'),
(34, 9, 0, 'Lao-Tseu'),
(35, 9, 0, 'Sun Tzu'),
(36, 9, 0, 'Mao Zedong'),
(37, 10, 1, 'Qu\'est-ce que la vertu ?'),
(38, 10, 0, 'Comment vivre une vie heureuse ?'),
(39, 10, 0, 'Qu\'est-ce que la réalité ?'),
(40, 10, 0, 'Quel est le but de la vie ?'),
(41, 11, 1, 'Absurde'),
(42, 11, 0, 'Volonté de puissance'),
(43, 11, 0, 'Volonté éternelle'),
(44, 11, 0, 'Raison universelle'),
(45, 12, 1, 'Volonté de puissance'),
(46, 12, 0, 'Surhomme'),
(47, 12, 0, 'Éternel retour'),
(48, 12, 0, 'Athéisme radical'),
(49, 13, 1, 'Volonté de vivre'),
(50, 13, 0, 'Volonté éternelle'),
(51, 13, 0, 'Volonté de puissance'),
(52, 13, 0, 'Volonté transcendante'),
(53, 14, 1, 'L\'Homme révolté'),
(54, 14, 0, 'La Peste'),
(55, 14, 0, 'La Chute'),
(56, 14, 0, 'Le Mythe de Sisyphe'),
(57, 15, 1, 'Dostoïevski'),
(58, 15, 0, 'Sartre'),
(59, 15, 0, 'Kierkegaard'),
(60, 15, 0, 'Kant'),
(61, 16, 1, 'Douleur'),
(62, 16, 0, 'Plaisir'),
(63, 16, 0, 'Équilibre'),
(64, 16, 0, 'Néant'),
(65, 17, 1, '1984'),
(66, 17, 0, 'La Ferme des animaux'),
(67, 17, 0, 'Hommage à la Catalogne'),
(68, 17, 0, 'Un peu d\'air frais'),
(69, 18, 1, 'La révolte'),
(70, 18, 0, 'La résignation'),
(71, 18, 0, 'La contemplation'),
(72, 18, 0, 'L\'acceptation'),
(73, 19, 1, 'Généalogie de la morale'),
(74, 19, 0, 'Ainsi parlait Zarathoustra'),
(75, 19, 0, 'Crépuscule des idoles'),
(76, 19, 0, 'Par-delà le bien et le mal'),
(77, 20, 1, 'Nihilisme'),
(78, 20, 0, 'Volonté de vivre'),
(79, 20, 0, 'Volonté éternelle'),
(80, 20, 0, 'Volonté aveugle'),
(81, 21, 1, 'Faire ce qui est juste'),
(82, 21, 0, 'Manger sainement'),
(83, 21, 0, 'Jouer toute la journée'),
(84, 21, 0, 'Mettre des etiquettes'),
(85, 22, 1, 'Penser de manière ordonnée'),
(86, 22, 0, 'Choisir quel film regarder'),
(87, 22, 0, 'Mettre du maquillage'),
(88, 22, 0, 'Dormir tôt'),
(89, 23, 1, 'Vivre une vie bonne et épanouissante'),
(90, 23, 0, 'Avoir beaucoup de jouets'),
(91, 23, 0, 'Manger du chocolat tout le temps'),
(92, 23, 0, 'Jouer LoL sans arrêt'),
(93, 24, 1, 'Trouver un sens et le bonheur'),
(94, 24, 0, 'Gagner beaucoup de argent'),
(95, 24, 0, 'Dormir toute la journée'),
(96, 24, 0, 'Il n\'y a pas de but'),
(97, 25, 1, 'Partager des moments et se soutenir mutuellement'),
(98, 25, 0, 'Collectionner des jouets'),
(99, 25, 0, 'Ignorer les autres'),
(100, 25, 0, 'Être égoïste');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) NOT NULL,
  `statement` varchar(255) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `statement`, `points`) VALUES
(1, 'Qui était le professeur de Platon ?', 1),
(2, 'Quel philosophe grec s\'est concentré sur la recherche du bonheur à travers la vertu ?', 2),
(3, 'Quel philosophe français est connu pour la phrase \"Je pense, donc je suis\" ?', 1),
(4, 'Quel courant philosophique défend la recherche du plaisir comme objectif principal dans la vie ?', 2),
(5, 'Qui a écrit \"Le Prince\", une œuvre sur la politique et le pouvoir ?', 1),
(6, 'Quelle est la branche de la philosophie qui étudie la connaissance et l\'esprit ?', 3),
(7, 'Quel philosophe grec est connu pour sa méthode de questions et réponses pour atteindre la connaissance ?', 1),
(8, 'Qui est considéré comme le fondateur de l\'empirisme ?', 2),
(9, 'Quel penseur chinois est connu pour ses enseignements sur la morale et la vertu ?', 1),
(10, 'Quelle est la question fondamentale de la philosophie selon Socrate ?', 2),
(11, 'Quel concept philosophique est associé à Albert Camus, particulièrement dans son œuvre \"L\'Étranger\" ?', 2),
(12, 'Quelle est la célèbre notion de Nietzsche concernant la réévaluation des valeurs morales traditionnelles ?', 3),
(13, 'Quel est le concept fondamental de la métaphysique de Schopenhauer ?', 2),
(14, 'Dans quelle œuvre Camus explore-t-il la question de la révolte et de l\'absurde ?', 2),
(15, 'Quel philosophe est souvent associé à la critique nietzschéenne de la morale chrétienne ?', 1),
(16, 'Schopenhauer considérait-il la vie comme principalement caractérisée par le plaisir ou la douleur ?', 1),
(17, 'Quel roman de George Orwell explore les dangers de la surveillance étatique et la manipulation de la vérité ?', 1),
(18, 'Quelle réaction Camus considère-t-il comme la seule réponse philosophique valable à l\'absurde ?', 2),
(19, 'Quelle est la célèbre affirmation de Nietzsche selon laquelle \"Dieu est mort\" ?', 3),
(20, 'Quel concept de Schopenhauer souligne la recherche constante de satisfaction et la frustration humaine ?', 1),
(21, 'Que signifie \"Éthique\" ?', 1),
(22, 'Qu\'est-ce que la logique ?', 1),
(23, 'Qu\'est-ce que le bonheur selon la philosophie ?', 1),
(24, 'Quel est le but de la vie ?', 1),
(25, 'Qu\'est-ce que l\'amitié ?', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Scores`
--

CREATE TABLE `Scores` (
  `id` bigint(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `score` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Scores`
--

INSERT INTO `Scores` (`id`, `id_user`, `username`, `score`) VALUES
(97, 17, 'Romain', 7),
(98, 10, 'Orlane', 8),
(99, 1, 'Jorge', 2),
(100, 1, 'Jorge', 1),
(101, 23, 'Hamza', 2),
(102, 1, 'Rabeh', 2),
(103, 10, 'Orlane', 0),
(104, 10, 'Orlane', 0),
(105, 10, 'Orlane', 3),
(106, 24, 'Robin', 4),
(107, 1, 'Jorge', 3),
(108, 1, 'Jorge', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `username`) VALUES
(1, 'Jorge'),
(5, 'Sylvain'),
(6, 'Joan'),
(8, 'Lucas'),
(10, 'Orlane'),
(12, 'Adam'),
(13, 'Yacine'),
(14, 'Rebeh'),
(15, 'Willie'),
(16, 'Stephane'),
(17, 'Romain'),
(19, 'Abdel'),
(20, 'Jorge Robles'),
(21, 'Uwuwewewe Onyetenwewe Ugweuhem Osas'),
(22, 'Christophe'),
(23, 'Hamza'),
(24, 'Robin'),
(25, 'aDA'),
(26, 'toto'),
(27, 'Adam le sang'),
(28, 'Orlanee'),
(29, 'Rabeh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `choices`
--
ALTER TABLE `choices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_questions` (`id_questions`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Scores`
--
ALTER TABLE `Scores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `choices`
--
ALTER TABLE `choices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `Scores`
--
ALTER TABLE `Scores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_ibfk_1` FOREIGN KEY (`id_questions`) REFERENCES `questions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Scores`
--
ALTER TABLE `Scores`
  ADD CONSTRAINT `Scores_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `Users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
