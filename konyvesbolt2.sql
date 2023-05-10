-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Ápr 24. 21:06
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `konyvesbolt2`
--
CREATE DATABASE IF NOT EXISTS `konyvesbolt2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `konyvesbolt2`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `konyv`
--

CREATE TABLE `konyv` (
  `konyvid` int(10) UNSIGNED NOT NULL,
  `szerzo` varchar(25) DEFAULT NULL,
  `cim` varchar(70) DEFAULT NULL,
  `isbn` varchar(18) DEFAULT NULL,
  `ar` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `konyv`
--

INSERT INTO `konyv` (`konyvid`, `szerzo`, `cim`, `isbn`, `ar`) VALUES
(1, 'Doyle Arthur Conan', 'Sherlock Holmes kalandjai', '9630183625', 2520),
(3, 'Wilson A. N.', 'Wise Virgin', '01400.66616', 2030),
(4, 'Obermannová Irena', 'Egy őrült feleség naplója', '9630769301', 10450),
(6, 'Altman John', 'A szigorúan őrzött ház', '9639282022', 3570),
(8, 'Garber Joseph R.', 'Függőleges rohanás', '9637548998', 8470),
(9, 'Alten Steve', 'Harc az Életért', '9639282669', 7830),
(10, 'Freedman J. F.', 'Bukott bálványok', '9639459712', 7150),
(11, 'Macomber Debbie', 'Lonesome cowboy', '263814424', 8710),
(13, 'James Henry', 'What Maisie Knew', '9781840224122', 4180),
(14, 'Hawthorne Nathaniel', 'The Scarlet Letter', '9781853260292', 2430),
(15, 'Maupassant Guy de', 'Egy asszony élete', '9638570733', 1350),
(17, 'Altman John', 'Kémek játéka', '9639459127', 3950),
(19, 'Maugham W. Somerset', 'Szerelmek végórái', '9638169427', 7480),
(20, 'Orange Evelyn', 'Dance of danger', '9771758165044', 4260),
(21, 'Simeon Georges', 'Maigret védekezik', '9635303254', 10330),
(22, 'le Carré John', 'Ébresztő a halottnak', '9637910166', 3490),
(23, 'Simeon Georges', 'Maigret pipája - Maigret az esküdtszéken - Maigret megharagszik', '9630734524', 10770),
(24, 'Bromfield Louis', 'Akinek minden sikerült', '9630267373', 1850),
(27, 'Mérimée Prosper', 'Szent Bertalan éjszakája', 'nincs', 8210),
(28, 'Smith Karen Rose', 'Falling for the Texas Tycoon', '9780263860276', 8900),
(29, 'Whittington Kate', 'Take two', '723543135', 10270),
(30, 'MacDonald Laura', 'The Surgeon\'s Pregnancy Surprise', '263847195', 5640),
(31, 'Dunmore Helen', 'Love of fat men', '9780140248821', 1930),
(32, 'Größing Sigrid-Maria', 'Erős asszonyok - gyönge férfiak', '9635485018', 9060),
(33, 'Crane Stephen', 'The Red Badge of Courage & Other Stories', '9781853260841', 11280),
(34, 'Harvey John', 'Veszélyes magány', '9638633344', 2100),
(35, 'Blond Georges', 'Pauline Bonaparte: A hűséges nimfomániás', '9637865012', 4550),
(36, 'Hill Reginald', 'Deadheads', '194230821', 9180),
(37, 'Collins Wilkie', 'The Woman in White', '194230961', 11120),
(38, 'Prawer Jhabvala Ruth', 'Heat and Dust', '9780194230681', 9810),
(39, 'Hardy Thomas', 'Tess of the d\'Urbervilles', '9788877549327', 5100),
(40, 'Konwicki Tadeusz', 'Szerelmi krónika', '9630713780', 2060),
(41, 'Garden Sarah', 'Egyetlenem', '963367641X', 5580),
(42, 'Iles Greg', 'A spandau Főnix', '9639076082', 11130),
(43, 'Lichtman Charles', 'Életre-halálra', '9639076570', 11270),
(44, 'Moore Margaret', 'A múlt árnyai', '9789639720831', 2390),
(47, 'Hoch Edward D. (szerk.)', 'Az elmúlt év legjobb misztikus és bűnügyi meséi', '9638501871', 7220),
(48, 'Rosenfelt David', 'Az eltűnt bizonyíték', '9789639667761', 9460),
(49, 'Ridpath Michael', 'Ragadozók között', '9639282685', 9410),
(50, 'Frey Stephen', 'Az elnök esélye', '9639282723', 6160),
(51, 'Stone Katherine', 'Gyöngyhold', '9639076805', 2050),
(53, 'Feuchtwanger Lion', 'Balgák bölcsessége avagy Jean-Jacques Rousseau halála és megdicsőülése', '9632804007', 4130),
(54, 'Hoyt Nicole', 'Danielle Steel', '9638086726', 3930),
(55, 'Coelho Paulo', 'Eleven minutes', '7166052', 2640),
(57, 'Barry Jill', 'The Silver Locket', '9771758163040', 11810),
(58, 'Shelley Mary', 'Frankenstein', '9788723902092', 2430),
(59, 'Austen Jane', 'Persuasion', '9780194791816', 11540),
(60, 'Leather Sue', 'Desert, Mountain, Sea', '194230317', 10610),
(64, 'Doyle Arthur Conan', 'The Hound of the Baskervilles', '9780194791748', 4780),
(65, 'Cox Josephine', 'Girl on the Platform', '9780007270088', 2180),
(66, 'Nabb Magdalen', 'Death of an Englishman', '9780194216692', 3160),
(68, 'Border Rosemary', 'Ghost Stories', '9780194216449', 3300),
(69, 'Blackmore R. D.', 'Lorna Doone', '9780194230384', 7860),
(71, 'McCourt Frank', 'Teacher Man', '9780997806526', 12110),
(72, 'Wodehouse P.G.', 'Jeeves and Friends - Short stories', '9780194792295', 9620),
(75, 'Lengyel Olga', 'Five Chimney', '9780897333764', 11690),
(78, 'Carmichael Emily', 'A Szőke Indián', '9636792100', 5940),
(81, 'Brontë Charlotte', 'Vilette', 'nincs', 3270),
(82, 'Heller Joseph', 'Gold a mennybe megy', '9633070287', 11050),
(86, 'Szamarakisz Antonisz', 'A hiba', '963150851X', 3280),
(89, 'Merle Robert', 'Állati elmék', '9630717263', 1500),
(90, 'Knight Eric', 'Légy hű magadhoz', 'nincs', 11860),
(93, 'García Márquez Gabriel', 'Száz év magány', '9632069', 11690),
(95, 'Cook Robin', 'Agymosás', '963071089', 3150),
(96, 'Segal Erich', 'Szerelmi történet - Love story', '9630723573', 5600),
(99, 'Gordimer Nadine', 'Kései polgárvilág', '963270830X', 9910),
(102, 'Krämer Walter', 'A világ csodái', '9630908522', 2360),
(109, 'Hawthorne Nathaniel', 'A skarlát betű / A hétormú ház', '9630730510', 2390),
(110, 'Kazantzakisz Nikosz', 'Akinek meg kell halnia', 'nincs', 8640),
(111, 'Segal Erich', 'Az elfelejtett kaland', '9633050529', 8910),
(115, 'Bates Herbert Ernest', 'Bíbor sivatag', '9637885676', 7210),
(116, 'Knight Eric', 'Légy hű magadhoz', '9630731681', 11820),
(119, 'Zola Émile', 'Nana', '9630706393', 5050),
(120, 'Zola Émile', 'Párizs gyomra', '9630733463', 1140),
(121, 'Dosztojevszkij Fjodor', 'Feljegyzések a holtak házából', '9630714396', 2480),
(125, 'Corman Avery', 'Kramer kontra Kramer', '9630725975', 4200),
(126, 'Merle Robert', 'A sziget', '963072183X', 1620),
(127, 'Merle Robert', 'Madrapur', '9630727188', 1590),
(128, 'Merle Robert', 'Francia história', '9630727102', 11640),
(129, 'Merle Robert', 'Védett férfiak', '9630731452', 4340),
(130, 'Merle Robert', 'Íme a király', '9630750767', 9200),
(131, 'Cronin Archibald Joseph', 'Réztábla a kapu alatt', '9633070740', 5920),
(132, 'Cronin Archibald Joseph', 'A menyország kulcsa', '9633604028', 1670),
(133, 'Feuchtwanger Lion', 'Goya', '9630710226', 6820),
(134, 'Feuchtwanger Lion', 'A csúnya hercegnő', '9630724480', 3940),
(135, 'McCullough Colleen', 'Tövismadarak', '9630751283', 9970),
(138, 'Arnaud Georges', 'A félelem bére', '9630913526', 9580),
(139, 'Eca de Queiros José Maria', 'Amaro atya bűne', '9630713527', 10610),
(140, 'Freyer Paul Herbert', 'Halál a tengereken', '9633262178', 1860),
(142, 'Porter Katherine Anne', 'Bolondok hajója', '9630713713', 8090),
(143, 'Eco Umberto', 'A rózsa neve', '9633071097', 1850),
(144, 'Ludlum Robert', 'Csak tanú ne maradjon', '9633269245', 2050),
(146, 'Cook Robin', 'Kóma', '9637222588', 7570),
(147, 'Cook Robin', 'Járvány', '9637222839', 2030),
(148, 'Cook Robin', 'Szfinx / Agy', '9636351295', 7160),
(149, 'Cook Robin', 'Agymosás', '963071089', 2010),
(150, 'Zweig Stefan', 'Nyugtalan szív', '9633070252', 3630),
(155, 'Hailey Arthur', 'Hotel', '9631411672', 8700),
(158, 'McGrail Anna', 'Einstein lánya', '9633674425', 9410),
(161, 'Kusche Lawrence David', 'A Bermuda háromszög rejtélye', '9633267609', 1330),
(165, 'Harrington William', 'Az ezredes', '9630274736', 1450),
(166, 'Brown Dan', 'A DA VINCI-KÓD', '9639526770', 10500),
(167, 'Crawford F. Marion', 'A bizánci rabszolgalány', '9632343115', 8820),
(168, 'Knittel John', 'Via Mala', '9633071135', 4740);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlas`
--

CREATE TABLE `vasarlas` (
  `datum` varchar(10) DEFAULT NULL,
  `vasarloID` int(10) UNSIGNED NOT NULL,
  `konyvID` int(10) UNSIGNED NOT NULL,
  `darab` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `vasarlas`
--

INSERT INTO `vasarlas` (`datum`, `vasarloID`, `konyvID`, `darab`) VALUES
('2023.04.26', 45, 8, 1),
('2023.03.29', 41, 60, 3),
('2023.02.22', 21, 14, 1),
('2023.02.14', 37, 34, 2),
('2023.02.22', 9, 38, 2),
('2023.04.20', 15, 57, 2),
('2023.05.06', 19, 48, 3),
('2023.03.16', 6, 54, 3),
('2023.05.01', 12, 47, 2),
('2023.04.09', 21, 71, 1),
('2023.03.24', 6, 99, 2),
('2023.02.14', 42, 10, 3),
('2023.04.26', 3, 68, 3),
('2023.03.16', 36, 72, 1),
('2023.04.23', 16, 41, 3),
('2023.05.13', 40, 59, 1),
('2023.03.01', 46, 42, 1),
('2023.04.27', 44, 8, 3),
('2023.03.27', 11, 4, 1),
('2023.04.03', 29, 4, 1),
('2023.04.14', 48, 53, 3),
('2023.04.08', 44, 95, 2),
('2023.04.04', 42, 21, 3),
('2023.03.20', 40, 66, 3),
('2023.03.06', 14, 20, 3),
('2023.04.04', 25, 43, 3),
('2023.03.29', 15, 89, 3),
('2023.02.24', 44, 37, 3),
('2023.05.13', 45, 71, 1),
('2023.03.13', 23, 9, 3),
('2023.03.19', 2, 10, 1),
('2023.04.29', 47, 50, 2),
('2023.05.14', 44, 71, 3),
('2023.02.17', 50, 47, 3),
('2023.03.26', 8, 14, 2),
('2023.05.07', 24, 89, 1),
('2023.02.18', 50, 4, 1),
('2023.03.03', 43, 28, 3),
('2023.04.30', 41, 11, 2),
('2023.04.09', 44, 60, 2),
('2023.03.01', 31, 43, 1),
('2023.04.15', 11, 35, 1),
('2023.04.02', 9, 24, 3),
('2023.04.28', 23, 60, 2),
('2023.02.18', 22, 1, 1),
('2023.03.31', 21, 10, 3),
('2023.05.12', 30, 4, 1),
('2023.03.09', 46, 22, 3),
('2023.03.18', 25, 20, 3),
('2023.03.30', 18, 17, 2),
('2023.02.15', 26, 66, 3),
('2023.02.19', 46, 37, 2),
('2023.03.09', 36, 51, 1),
('2023.03.07', 10, 102, 2),
('2023.03.05', 39, 57, 3),
('2023.04.14', 3, 89, 2),
('2023.03.22', 34, 22, 2),
('2023.03.15', 18, 93, 2),
('2023.03.13', 25, 90, 2),
('2023.02.22', 41, 44, 1),
('2023.04.12', 4, 86, 1),
('2023.03.16', 35, 6, 1),
('2023.03.20', 6, 23, 1),
('2023.05.08', 24, 36, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlo`
--

CREATE TABLE `vasarlo` (
  `vasarloid` int(10) UNSIGNED NOT NULL,
  `nev` varchar(19) NOT NULL,
  `email_cim` varchar(31) DEFAULT NULL,
  `felhasznalonev` varchar(20) DEFAULT NULL,
  `jelszo` binary(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `vasarlo`
--

INSERT INTO `vasarlo` (`vasarloid`, `nev`, `email_cim`, `felhasznalonev`, `jelszo`) VALUES
(1, 'Florida Craiker', 'dwhisker2r@topsy.com', 'moonhateful', 0x6d6f6f6e6861746566756c000000000000000000),
(2, 'Maryanna Thorold', 'ameadowcroft1u@wisc.edu', 'irritablekitten', 0x697272697461626c656b697474656e0000000000),
(3, 'Sullivan Strettell', 'groddie12@icio.us', 'blocklanky', 0x626c6f636b6c616e6b7900000000000000000000),
(4, 'Nicholas Cornels', 'apyne3o@sourceforge.net', 'parallelsoda', 0x706172616c6c656c736f64610000000000000000),
(5, 'Kenyon Lenton', 'nolfert4o@pbs.org', 'croquetcouplekiss', 0x63726f71756574636f75706c656b697373000000),
(6, 'Rodd Banger', 'mbonass5p@slideshare.net', 'netbent', 0x6e657462656e7400000000000000000000000000),
(7, 'Dag Linne', 'gcullrfordm@myspace.com', 'professionturtleneck', 0x70726f66657373696f6e747572746c656e65636b),
(8, 'Charlotte Clutten', 'cfendt3j@narod.ru', 'comerid', 0x636f6d6572696400000000000000000000000000),
(9, 'Noelle Hollyland', 'gmalinson4i@dion.ne.jp', 'emperorjump', 0x656d7065726f726a756d70000000000000000000),
(10, 'Renato Radleigh', 'kclutten5s@vk.com', 'loosenintrusion', 0x6c6f6f73656e696e74727573696f6e0000000000),
(11, 'Phylis Meadowcroft', 'gdavidi5f@chron.com', 'athletelasagne', 0x6174686c6574656c617361676e65000000000000),
(12, 'Lydie Eich', 'ceilles29@google.ru', 'orderlyking', 0x6f726465726c796b696e67000000000000000000),
(13, 'Grazia De Robertis', 'gfraschetti54@independent.co.uk', 'poodleboy', 0x706f6f646c65626f790000000000000000000000),
(14, 'Elvera Archer', 'afissenden1j@weibo.com', 'lectureinflate', 0x6c656374757265696e666c617465000000000000),
(15, 'Karalee Kerridge', 'nmorlingb@canalblog.com', 'gagglegreens', 0x676167676c65677265656e730000000000000000),
(16, 'Gilda Rawlingson', 'sference67@telegraph.co.uk', 'boastrhumba', 0x626f6173747268756d6261000000000000000000),
(17, 'Erhard Brabham', 'ldoyle6k@sourceforge.net', 'damagesession', 0x64616d61676573657373696f6e00000000000000),
(18, 'Halie Wilber', 'fgodmarr@ameblo.jp', 'outlandishmolecule', 0x6f75746c616e646973686d6f6c6563756c650000),
(19, 'Gwen Gwillim', 'ahemerijk3a@wikimedia.org', 'historianmuse', 0x686973746f7269616e6d75736500000000000000),
(20, 'Tory Kersey', 'kturton37@github.com', 'hillsolympic', 0x68696c6c736f6c796d7069630000000000000000),
(21, 'Geno Gecks', 'greasce39@people.com.cn', 'othersordid', 0x6f74686572736f72646964000000000000000000),
(22, 'Booth Kubach', 'bstachini2z@nasa.gov', 'kimonohormones', 0x6b696d6f6e6f686f726d6f6e6573000000000000),
(23, 'Bailie Veare', 'nmcdiarmid6n@prweb.com', 'qualityguarantee', 0x7175616c69747967756172616e74656500000000),
(24, 'Neron Moakes', 'dleavy2i@qq.com', 'lecterngenerosity', 0x6c65637465726e67656e65726f73697479000000),
(25, 'Rickey Schafer', 'prawlingson5m@imgur.com', 'crushgrowing', 0x637275736867726f77696e670000000000000000),
(26, 'Luke Roddie', 'iloache38@photobucket.com', 'wastefuldisaster', 0x776173746566756c646973617374657200000000),
(27, 'Ruperto Zannolli', 'mbonass5p@slideshare.net', 'banepoloshirt', 0x62616e65706f6c6f736869727400000000000000),
(28, 'Richy Duquesnay', 'kledger1g@hhs.gov', 'extraelbow', 0x6578747261656c626f7700000000000000000000),
(29, 'Vachel Cassell', 'lzannolli1m@hostgator.com', 'minecartcrime', 0x6d696e65636172746372696d6500000000000000),
(30, 'Gwen Zannolli', 'lraffels43@blogger.com', 'authorscourge', 0x617574686f7273636f7572676500000000000000),
(31, 'Sherm Menzies', 'nbransomh@chicagotribune.com', 'survivaloxeye', 0x737572766976616c6f7865796500000000000000),
(32, 'Itch Pikett', 'pleverage1z@salon.com', 'frankfascinated', 0x6672616e6b66617363696e617465640000000000),
(33, 'Neda Sorey', 'slinne2e@nhs.uk', 'jacketsuit', 0x6a61636b65747375697400000000000000000000),
(34, 'Desdemona Boshers', 'cfendt3j@narod.ru', 'motivationminute', 0x6d6f7469766174696f6e6d696e75746500000000),
(35, 'Yank Balcon', 'nolfert4o@pbs.org', 'minecraftfreeboard', 0x6d696e65637261667466726565626f6172640000),
(36, 'Krishna Lauks', 'dbonick18@shareasale.com', 'facecatholic', 0x66616365636174686f6c69630000000000000000),
(37, 'Binni McCardle', 'hcunliffe4v@wikia.com', 'milkclang', 0x6d696c6b636c616e670000000000000000000000),
(38, 'Errol Boddam', 'ekaygill6q@dropbox.com', 'interestedprofess', 0x696e746572657374656470726f66657373000000),
(39, 'Caesar Hefforde', 'chyam5u@usatoday.com', 'girlguideriband', 0x6769726c6775696465726962616e640000000000),
(40, 'Hershel Leavy', 'ekaygill6q@dropbox.com', 'translatesurfing', 0x7472616e736c61746573757266696e6700000000),
(41, 'Lexy Veare', 'hhammerson3g@imageshack.us', 'itselfbeacon', 0x697473656c66626561636f6e0000000000000000),
(42, 'Garik Fifield', 'jspellissy3l@taobao.com', 'mightdisgusting', 0x6d6967687464697367757374696e670000000000),
(43, 'Konstanze Lenton', 'bboyle4a@ocn.ne.jp', 'dentistthorn', 0x64656e7469737474686f726e0000000000000000),
(44, 'Ulrika Feldheim', 'fgodmarr@ameblo.jp', 'lostlet', 0x6c6f73746c657400000000000000000000000000),
(45, 'Andre Nind', 'vmenier4n@parallels.com', 'cookiesprada', 0x636f6f6b69657370726164610000000000000000),
(46, 'Eustace Haddow', 'nbransomh@chicagotribune.com', 'betrayedrabble', 0x6265747261796564726162626c65000000000000),
(47, 'Lyndsey De Robertis', 'ssambiedgen@europa.eu', 'centuryastronomer', 0x63656e74757279617374726f6e6f6d6572000000),
(48, 'Ellwood Estick', 'emacgoun1x@japanpost.jp', 'lumberingactivator', 0x6c756d626572696e67616374697661746f720000),
(49, 'Carter Menier', 'sloache34@wisc.edu', 'teelady', 0x7465656c61647900000000000000000000000000),
(50, 'Dalenna Ovens', 'mtomkin5g@4shared.com', 'exaggeratemalicious', 0x657861676765726174656d616c6963696f757300);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `konyv`
--
ALTER TABLE `konyv`
  ADD PRIMARY KEY (`konyvid`);

--
-- A tábla indexei `vasarlas`
--
ALTER TABLE `vasarlas`
  ADD KEY `fk_vasarlas_vasarlo` (`vasarloID`),
  ADD KEY `fk_vasarlas_konyv` (`konyvID`);

--
-- A tábla indexei `vasarlo`
--
ALTER TABLE `vasarlo`
  ADD PRIMARY KEY (`vasarloid`),
  ADD UNIQUE KEY `nev` (`nev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `konyv`
--
ALTER TABLE `konyv`
  MODIFY `konyvid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT a táblához `vasarlo`
--
ALTER TABLE `vasarlo`
  MODIFY `vasarloid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vasarlas`
--
ALTER TABLE `vasarlas`
  ADD CONSTRAINT `fk_vasarlas_konyv` FOREIGN KEY (`konyvID`) REFERENCES `konyv` (`konyvid`),
  ADD CONSTRAINT `fk_vasarlas_vasarlo` FOREIGN KEY (`vasarloID`) REFERENCES `vasarlo` (`vasarloid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
