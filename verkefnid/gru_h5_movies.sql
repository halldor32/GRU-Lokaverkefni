-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 01, 2013 at 09:32 PM
-- Server version: 5.6.14-log
-- PHP Version: 5.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gru_h5_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE IF NOT EXISTS `actor` (
  `actorID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`actorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`actorID`, `first_name`, `last_name`) VALUES
(1, 'Ben', 'Affleck'),
(2, 'James', 'Franco'),
(9, 'Gunnar', 'Helgi'),
(10, 'jón', 'jónsson'),
(11, 'Christian', 'Bale'),
(12, 'Michael', ' Caine'),
(13, 'Liam', 'Neeson'),
(14, 'Katie', 'Holmes'),
(15, 'Gary', 'Oldman'),
(16, 'Cillian', 'Murphy'),
(17, 'Tom', 'Wilkinson'),
(18, 'Rutger', 'Hauer'),
(19, 'Ken', 'Watanabe'),
(20, 'Morgan', 'Freeman');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE IF NOT EXISTS `directors` (
  `directorID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  PRIMARY KEY (`directorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=161 ;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`directorID`, `first_name`, `last_name`) VALUES
(1, 'Ben', 'Affleck'),
(4, 'Mark', 'Webb'),
(5, 'Phil', 'Lord'),
(7, 'Richard', 'Berry'),
(8, 'Ruben', 'Fleischer'),
(9, 'Danny', 'Boyle'),
(10, 'Stanley', 'Kubrick'),
(11, 'Todd', 'Strauss-Schulson'),
(12, 'Tom', 'Shadyac'),
(13, 'Mike', 'McCoy'),
(14, 'Tony', 'Kaye'),
(15, 'John', 'Putch'),
(16, 'Jon', 'Hurwitz'),
(17, 'Adam', 'McKay'),
(18, 'Mel', 'Gibson'),
(19, 'Sam', 'Raimi'),
(20, 'Robert', 'Zemeckis'),
(21, 'Paul', 'Verhoeven'),
(22, 'Jay', 'Oliva'),
(23, 'Joel', 'Schumacher'),
(24, 'Brandon', 'Vietti'),
(25, 'Peter', 'Berg'),
(26, 'Ridley', 'Scott'),
(27, 'John', 'Landis'),
(28, 'Walter', 'Hill'),
(29, 'Christopher', 'Nolan'),
(30, 'Ben', 'Stiller'),
(31, 'Michael', 'Curtiz'),
(32, 'Steven', 'Spielberg'),
(33, 'Tom', 'Tykwer'),
(34, 'Baltasar', 'Kormákur'),
(35, 'Shawn', 'Levy'),
(36, 'Richard', 'Linklater'),
(37, 'Robert', 'Rodriguez'),
(38, 'Jay', 'Roach'),
(39, 'Don', 'Siegel'),
(40, 'Quentin', 'Tarantino'),
(41, 'Pete', 'Travis'),
(42, 'Todd', 'Phillips'),
(43, 'Kurt', 'Wimmer'),
(44, 'Jeff', 'Schaffer'),
(45, 'Kyle', 'Newman'),
(46, 'Joel', 'Coen'),
(47, 'Rob', 'Cohen'),
(48, 'John', 'Hughes'),
(49, 'Will', 'Gluck'),
(50, 'F. Gary', 'Gray'),
(51, 'Jon M.', 'Chu'),
(52, 'Bobcat', 'Goldthwait'),
(53, 'Martin', 'Scorsese'),
(54, 'Clint', 'Eastwood'),
(55, 'Randal', 'Kleiser'),
(56, 'Martin', 'Campbell'),
(57, 'Harold', 'Ramis'),
(58, 'Peter', 'Webber'),
(59, 'Seth', 'Gordon'),
(60, 'Dean', 'DeBlois'),
(61, 'Hayao ', 'Miyazaki'),
(62, 'Martin', 'McDonagh'),
(63, 'Olivier', 'Nakache'),
(64, 'Wilson', 'Yip'),
(65, 'Jon', 'Favreau'),
(66, 'Timo', 'Vuorensola'),
(67, 'Christopher', 'McQuarrie'),
(68, 'Jay', 'Duplass'),
(69, 'Brad', 'Peyton'),
(70, 'Dennis', 'Dugan'),
(71, 'Gary', 'McKendry'),
(72, 'Jennifer', 'Yuh'),
(73, 'Shane', 'Black'),
(74, 'Curtis', 'Hanson'),
(75, 'Tom', 'Hooper'),
(76, 'Richard', 'Donner'),
(77, 'Ang', 'Lee'),
(78, 'Neil', 'Burger'),
(79, 'Jonathan', 'Dayton'),
(80, 'James', 'Mather'),
(81, 'Rian', 'Johnson'),
(82, 'Peter', 'Jackson'),
(83, 'Susanne', 'Bier'),
(84, 'Paul', 'McGuigan'),
(85, 'Steven', 'Soderbergh'),
(86, 'Asger', 'Leth'),
(87, 'Peter', 'Weir'),
(88, 'Tom', 'McGrath'),
(89, 'Barry', 'Sonnenfeld'),
(90, 'John', 'Woo'),
(91, 'Terry', 'Jones'),
(92, 'Duncan', 'Jones'),
(93, 'Wes', 'Anderson'),
(94, 'David', 'Zucker'),
(95, 'Gregg', 'Godfrey'),
(96, 'Louis', 'Leterrier'),
(97, 'Spike', 'Lee'),
(98, 'Molis', 'Forman'),
(99, 'Michael', 'Bay'),
(100, 'Greg', 'Mottola'),
(101, 'David', 'Twohy'),
(102, 'Jason', 'Moore'),
(103, 'Oliver', 'Stone'),
(104, 'Hugh', 'Wilson'),
(105, 'John', 'McTiernan'),
(106, 'Garry', 'Marshall'),
(107, 'Robert', 'Schwentke'),
(108, 'Barry', 'Levinson'),
(109, 'Brett', 'Ratner'),
(110, 'Phillip', 'Noyce'),
(111, 'Brian', 'De Palma'),
(112, 'Joss', 'Whedon'),
(113, 'Edgar', 'Wright'),
(114, 'David O.', 'Russell'),
(115, 'Guy', 'Ritchie'),
(116, 'Luke', 'Greenfield'),
(117, 'Harmony', 'Korine'),
(118, 'J.J.', 'Abrams'),
(119, 'George', 'Lucas'),
(120, 'Óskar Þór', 'Axelsson'),
(121, 'Nathan', 'Greno'),
(122, 'Seth', 'MacFarlane'),
(123, 'James', 'Cameron'),
(124, 'McG', ''),
(125, 'Judd', 'Apatow'),
(126, 'Joe', 'Carnahan'),
(127, 'Doug', 'Liman'),
(128, 'Rob', 'Reiner'),
(129, 'Drew', 'Goddard'),
(130, 'Larry', 'Charles'),
(131, 'Simon', 'west'),
(132, 'Luc', 'Besson'),
(133, 'Nicholas', 'Stoller'),
(134, 'Scott', 'Walker'),
(135, 'Andrew', 'Davis'),
(136, 'Francis Ford', 'Coppola'),
(137, 'Sergio', 'Leone'),
(138, 'kathryn', 'Bigelow'),
(139, 'M. Night', 'Shyamalan'),
(140, 'Grant', 'Heslov'),
(141, 'Gareth', 'Evans'),
(142, 'Florian Henckel', 'von Donnersmarck'),
(143, 'Akiva', 'Schaffer'),
(144, 'Robert', 'Mulligan'),
(145, 'Len', 'Wiseman'),
(146, 'Tony', 'Scott'),
(147, 'Eli', 'Craig'),
(148, 'Terry', 'Gilliam'),
(149, 'Gary', 'Ross'),
(150, 'Björn', 'Stein'),
(151, 'Pete', 'Docter'),
(152, 'Stephen', 'Sommers'),
(153, 'David', 'Wain'),
(154, 'Marc', 'Forster'),
(155, 'Jonathan', 'Liebesman'),
(156, 'Rich', 'Moore'),
(157, 'Zack', 'Snyder'),
(158, 'Bryan', 'Singer'),
(159, 'Gavin', 'Hood'),
(160, 'Kevin', 'Smith');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE IF NOT EXISTS `genre` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreID`, `name`) VALUES
(1, 'Spennumynd'),
(2, 'Gamanmynd'),
(3, 'Rómantísk'),
(4, 'Drama'),
(5, 'Hrollvekja'),
(6, 'Spennutryllir'),
(7, 'Vestri'),
(8, 'Glæpamynd'),
(9, 'Vísindaskáldskapur'),
(10, 'Ævintýramynd'),
(11, 'Barnamynd'),
(12, 'Fjölskyldumynd'),
(13, 'Söngleikur'),
(14, 'Stríðsmynd'),
(15, 'Tónlistarmynd'),
(16, 'Ráðgáta'),
(17, 'Heimildarmynd'),
(18, 'Söguleg'),
(19, 'Stuttmynd'),
(20, 'Æviágrip'),
(21, 'Dýralífsmynd'),
(22, 'Fræðslumynd'),
(23, 'Teiknimynd'),
(24, 'Svarthvít'),
(25, 'Bardagamynd'),
(26, 'Dansmynd'),
(27, 'Unglingamynd'),
(28, 'Íslensk mynd'),
(29, 'Sjónvarpsmynd'),
(30, 'Sjónvarpssería'),
(31, 'Sjónvarpsþáttur'),
(32, 'Íþróttamynd'),
(33, '');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `imageID` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`imageID`),
  UNIQUE KEY `image` (`image`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`imageID`, `image`) VALUES
(17, 'img/movies/127_Hours.jpg'),
(18, 'img/movies/2001_A_Space_Odyssey.jpg'),
(14, 'img/movies/21_Jump_Street.jpg'),
(15, 'img/movies/22_Bullets.jpg'),
(16, 'img/movies/30_Minutes_or_Less.jpg'),
(13, 'img/movies/500_Days_of_Summer.jpg'),
(19, 'img/movies/A _Very_Harold_&_Kumar_Christmas.jpg'),
(20, 'img/movies/Ace_Ventura.jpg'),
(21, 'img/movies/Act_of_Valor.jpg'),
(22, 'img/movies/American_Pie_The_Book_of_Love.jpg'),
(23, 'img/movies/American_Reunion.jpg'),
(24, 'img/movies/Anchorman.jpg'),
(9, 'img/movies/Argo.jpg'),
(25, 'img/movies/Army_of_Darkness.jpg'),
(26, 'img/movies/Back_to_the_Future_Part_III.jpg'),
(27, 'img/movies/Basic_Instinct.jpg'),
(37, 'img/movies/Batman_Begins.jpg'),
(29, 'img/movies/Batman_Forever.jpg'),
(28, 'img/movies/Batman_The_Dark_Knight_Returns.jpg'),
(30, 'img/movies/Batman_Under_the_Red_Hood.jpg'),
(31, 'img/movies/Battleship.jpg'),
(32, 'img/movies/Blade_Runner.jpg'),
(33, 'img/movies/Blues_Brothers.jpg'),
(35, 'img/movies/Braveheart.jpg'),
(36, 'img/movies/Bullet_to_the_Head.jpg'),
(39, 'img/movies/Casablanca.jpg'),
(40, 'img/movies/Catch_Me_If_You_Can.jpg'),
(41, 'img/movies/Cloud_Atlas.jpg'),
(42, 'img/movies/Contraband.jpg'),
(1, 'img/movies/default.jpg'),
(34, 'img/movies/Dirty_Harry.jpg'),
(38, 'img/movies/The_Cable_Guy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `genreID` int(11) NOT NULL,
  `rating` double NOT NULL DEFAULT '0',
  `directorID` int(11) NOT NULL,
  `imageID` int(11) NOT NULL DEFAULT '1',
  `year` year(4) NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY (`movieID`),
  KEY `genreID` (`genreID`),
  KEY `directorID` (`directorID`),
  KEY `imageID` (`imageID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movieID`, `name`, `genreID`, `rating`, `directorID`, `imageID`, `year`, `info`) VALUES
(21, 'Argo', 1, 7.833333333333333, 1, 9, 2012, 'Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1980.'),
(23, 'Clerks II', 2, 7, 160, 1, 2006, 'A calamity at Dante and Randall''s shops sends them looking for new horizons - but they ultimately settle at Mooby''s, a fictional Disney-McDonald''s-style fast-food empire.'),
(24, '(500) Days of Summer', 3, 7, 4, 13, 2009, 'Þetta er rómantísk gamanmynd um konu sem finnst sönn ást ekki vera til og ungann masnn sem heillast að henni.'),
(25, '21 Jump Street', 2, 8, 5, 14, 2012, 'Tveir misheppnaðir lögregluþjónar eru sentir í framhaldsskóla til þess að stöðva eyturlyfja starfsemi.'),
(26, '22 Bullets', 1, 6.5, 7, 15, 2010, 'Fyrrverandi mafíósi ákveður að hefna sín eftir að hafa verið skotinn 22 sinnum og skilinn eftir  til að dayja af fyrrverandi æskuvini sínum.'),
(27, '30 Minutes or Less', 2, 7.5, 8, 16, 2011, 'Tveir glæpamenn ræna pizzu sendil, festa sprengju á hann og neyða hann til að ræna banka innan klukkustunda, annars...'),
(28, '127 Hours', 20, 7.5, 9, 17, 2010, 'Fjallgöngumaður festist undir hnullungi nálægt Moab, í Utah og neyðist til að gera örvæntingafullar ráðstafanir til að lifa af'),
(29, '2001: A space  Odyssey', 9, 0, 10, 18, 1968, 'Mannkynið finnur dularfullan hlut,  grafinn undir yfirborði tunglsins. Geimfarar og gáfaða tölvan H.A.L 9000 eru send í leiðangru til að rannsaka.'),
(30, 'A very Harold and Kumar 3D Christmas', 2, 7.25, 11, 19, 2011, 'Sex árum eftir ævintýri þeirra í Guantanamo Bay, valda hasshausar Harold Lee og Kumar Patel hátíðar harmri  við það að kveikja í ljólatré tengdarpabba Harold.'),
(31, 'Ace Ventura: Pet Detective', 2, 0, 12, 20, 1995, 'Kjánalegur rannsóknatmaður sem sérhæfir sig í dýrum, leitar að týndum höfrungi.'),
(32, 'Act of Valor', 14, 6.5, 13, 21, 2012, 'Sérþjálfaðir sjóhermenn framkalla leynilegt verkefni til að bjarga rændum CIA fulltrúa.'),
(33, 'American Pie: The Book of Love', 2, 0, 15, 22, 2009, 'Þrír nýjir heppnislausr unglinar finna falda Biblíu á bókasafni East Great Falls High.'),
(34, 'American Reunion', 2, 5.75, 16, 23, 2012, 'Jim, Michelle, Stifler, og vinir þeirra hittast aftur í East Great Falls.'),
(35, 'Anchorman: The Legend of Ron Burgundy', 2, 7, 17, 24, 2004, 'Ron Burgundy er vinsælasti fréttamaður San Diego á 8 áratugnum, þegar meirihluti fréttamann voru karlar, en allt það mun breytast þegar kona er ráðin í starfið.'),
(36, 'Army of Darkness', 5, 0, 19, 25, 1992, 'Maður er óvart sendut til ársins 1300 eftir Krist, þar sem hann þarf að berjast við her af þeim dauðu og sækja Necronomicon til þess að komst aftur heim.'),
(37, 'Back to th Future Part III', 9, 7.25, 20, 26, 1990, 'Doctor Emmet Brown nýtur þess að vera til árið 1885, en mun bráðlega verða drepinn af Buford "Mad Dog" Tannen. Marty McFly ferðast aftur í tímann til að bjarga vini sínum.'),
(38, 'Basic Instinct', 16, 6.5, 21, 27, 1992, 'Rannsóknar-lögreglumaður sér um morð-rannsókn sem gullfalleg, lokkandi kona gæti komið rannsókninni við.'),
(39, 'Batman: The Dark Knight Returns', 23, 8, 22, 28, 2012, 'Leðurblökumaðurinn hefur ekki sést í 10 ár. Ny tegund glæpamanna ræðst á Gotham borg, sem neyðir 55 ára gamlan Bruce Wayne til að klæðast búningnum enn á ný. En, hefur hann það sem hann þarf til að stöðva glæpi á þessu nýja tímabili?'),
(40, 'Batman Forever', 1, 5.5, 23, 29, 1995, 'Leðurblökumaðurinn þarf að berjast við Two-Face og Ráðgátumanninn með aðstoð Robin.'),
(41, 'Batman: Under the Red Hood', 23, 0, 24, 30, 2010, 'Það er ráðgáta á kreik í Gotham borg, og Leðurblökumaðurinn þarf að slást við dularfullan löggæslumann, sem kallast Rauða Hettan.'),
(42, 'Battleship', 9, 0, 25, 31, 2012, 'Floti herskipa neyðist til þess að berjast við her af óþekktum uppruna til að get fundið út ætlun þeirra.'),
(43, 'Blade Runner', 9, 7.5, 26, 32, 1982, 'Deckard, Blade Runner, þaf að elta uppi og tortíma fjórum eftirhermum sem rændu geimskipi og snéru aftur til jarðar í leit að skapara sínum.'),
(44, 'The Blues Brothers', 2, 5, 27, 33, 1980, 'Jake Blues, sem er ný kominn úr fangelsi, fær hljómsveitina sína aftur saman til þess að bjarga Kaþóliska heimilinu sem hann og bróðir hanns Elwood ólust upp.'),
(46, 'Braveheart', 1, 0, 18, 35, 1995, 'Þegar leynilega eiginkona hans her tekin af lífi fyrir líkamsárás gegn hermanni sem gerði tilraun til nauðgunar, byrjar alþýðumaður mótspyrnu og leiðir Skoska stríðsmenn gegn illa Enska harðstjóranum sem stjórnar Skotlandi með járn hendi.'),
(47, 'Bullet to the Head', 1, 5.75, 28, 36, 2012, 'Eftir að hafa séð félagana sýna drepna, koma New Orleans skytta og Washington D.C. lögga saman til þess að ná sameigninlega óvini sínum.'),
(48, 'Batman Begins', 1, 8.333333333333334, 29, 37, 2005, 'Eftir að hafa æft með leiðbeinanda sín, Hefur Leðurblökumaðurinn baráttu geng glæpastarfsemi til að frelsa Gotham Borg.'),
(49, 'The Cable Guy', 2, 6.5, 30, 38, 1996, 'Einmanna rafvirki sem var uppalinn í sjónvarpi, vill bara eignast nýjan vin, en manneskjan sem hann vill vingast við, neytar honum, sem veldur slæmum afleyðingum.'),
(50, 'Casablanca', 4, 0, 31, 39, 1942, 'Myndin á sér stað í Afríku snemma í seinni heimstyrjöldini: Bandarískur útlagi hittir fyrrverandi ástvin sinn, en það koma ófyrirsjáanleg vandkvæði í ljós.'),
(51, 'Catch Me If You Can', 20, 0, 32, 40, 2002, 'Sannsöguleg mynd um Frank Abagnale Jr., sem tókts að dobla launaseðla með milljónir dollara virði sem Flugmaður hjá Pan Am, læknir, og saksóknari.'),
(52, 'Cloud Atlas', 10, 7.5, 33, 41, 2012, 'Skoðað er hvernig verknaður lífa einstaklinga hefur áhrif  á  önnur í fortíðini, nútímanum og framtíðini, þegar einni sál er mótað úr morðingja í hetju, og góðverk liðast í gegnum aldir sem erður á endanum innblástur byltingar.'),
(53, 'Contraband', 1, 7.5, 34, 42, 2012, 'Till þess að vernda tengdar-bróður sinn gegn eiturlyfjabaróni, fer fyrrverandi smyglari til Panama til að ná í milljónir dollara af fölsuðum seðlum.');

-- --------------------------------------------------------

--
-- Table structure for table `movies_has_actor`
--

CREATE TABLE IF NOT EXISTS `movies_has_actor` (
  `movies_has_actorID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `actorID` int(11) NOT NULL,
  PRIMARY KEY (`movies_has_actorID`),
  KEY `movieID` (`movieID`),
  KEY `actorID` (`actorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `movies_has_actor`
--

INSERT INTO `movies_has_actor` (`movies_has_actorID`, `movieID`, `actorID`) VALUES
(2, 21, 1),
(3, 48, 11),
(4, 48, 12),
(5, 48, 13),
(6, 48, 14),
(7, 48, 15),
(8, 48, 16),
(9, 48, 17),
(10, 48, 18),
(11, 48, 19),
(12, 48, 20);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(250) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`),
  KEY `first_name` (`first_name`,`last_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userID`, `username`, `password`, `first_name`, `last_name`, `user_status`) VALUES
(4, 'username', '5f4dcc3b5aa765d61d8327deb882cf99', 'user', 'name', 0),
(7, 'halldor32', '5f4dcc3b5aa765d61d8327deb882cf99', 'Halldór', 'Smári', 1),
(8, 'aalex315', '530b0642d0a7a4c12a7841423308707f', 'Alexander', 'Leósson', 1),
(9, 'GunMaster', 'c31d2988b0e4fb3d978b926eb17303b6', 'Gunnar Helgi', 'Sölvason', 1),
(10, 'lexi', 'e81bbf8d0006b29f6541db47c7493105', 'lexi', 'lexasson', 0),
(11, 'RandomGaur', 'd41d8cd98f00b204e9800998ecf8427e', 'Random', 'Gaur', 0),
(12, 'Fegt', 'd41d8cd98f00b204e9800998ecf8427e', 'Ingvar', 'Valberg', 0),
(13, 'Eggert', 'd41d8cd98f00b204e9800998ecf8427e', 'Eggert', 'Smári', 0),
(14, 'jamiees2@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'DJAMZ', 'DJAMZ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_has_movies`
--

CREATE TABLE IF NOT EXISTS `user_has_movies` (
  `user_has_moviesID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `movieID` int(11) NOT NULL,
  `rating` double NOT NULL,
  `review` text,
  PRIMARY KEY (`user_has_moviesID`),
  KEY `movieID` (`movieID`),
  KEY `userID` (`userID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `user_has_movies`
--

INSERT INTO `user_has_movies` (`user_has_moviesID`, `userID`, `movieID`, `rating`, `review`) VALUES
(2, 7, 25, 8, NULL),
(3, 7, 27, 6.5, NULL),
(4, 7, 29, 5.5, NULL),
(5, 7, 42, 6, NULL),
(6, 7, 43, 7.5, NULL),
(7, 13, 46, 7, NULL),
(8, 7, 34, 5.5, NULL),
(9, 8, 49, 5.5, NULL),
(10, 8, 53, 7.5, NULL),
(11, 8, 48, 8, 'Svo freaking awesome mynd og Ísland svo freaking beautiful í myndinni OH MY GAAAWSH'),
(12, 8, 25, 7.5, NULL),
(13, 7, 52, 7.5, NULL),
(14, 8, 30, 7, NULL),
(15, 7, 24, 7, NULL),
(16, 8, 32, 6.5, NULL),
(17, 7, 40, 5.5, NULL),
(18, 8, 38, 6, NULL),
(19, 8, 47, 5.5, NULL),
(20, 7, 39, 8, 'OMG '),
(21, 8, 39, 8, NULL),
(23, 10, 21, 10, NULL),
(24, 7, 21, 6, NULL),
(25, 8, 44, 5, NULL),
(26, 8, 21, 7.5, NULL),
(27, 8, 27, 7.5, NULL),
(28, 7, 38, 7, NULL),
(29, 7, 30, 7.5, NULL),
(30, 8, 26, 6.5, NULL),
(31, 7, 23, 7, NULL),
(32, 7, 47, 6, NULL),
(33, 7, 48, 8, 'asads'),
(34, 7, 49, 7.5, NULL),
(35, 9, 48, 9, 'Batman pls\r\n'),
(36, 7, 53, 7.5, 'asdadsc'),
(37, 8, 34, 6, 'rehewrerbhetbnetnberber'),
(38, 8, 37, 7, NULL),
(39, 7, 35, 7, NULL),
(40, 14, 37, 7.5, NULL),
(41, 10, 28, 7.5, 'I NEED MORE');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genreID`) REFERENCES `genre` (`genreID`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`imageID`) REFERENCES `image` (`imageID`);

--
-- Constraints for table `movies_has_actor`
--
ALTER TABLE `movies_has_actor`
  ADD CONSTRAINT `fk_movies_has_actor_actor1` FOREIGN KEY (`actorID`) REFERENCES `actor` (`actorID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movies_has_actor_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_movies`
--
ALTER TABLE `user_has_movies`
  ADD CONSTRAINT `fk_user_has_movies_movies1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_movies_user1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
