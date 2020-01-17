-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Час створення: Січ 16 2020 р., 14:14
-- Версія сервера: 10.3.16-MariaDB
-- Версія PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `id11758552_db1`
--

-- --------------------------------------------------------

--
-- Структура таблиці `AnswerCard`
--

CREATE TABLE `AnswerCard` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Word` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AlternativeColors` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `AnswerCard`
--

INSERT INTO `AnswerCard` (`ID`, `Word`, `Icon`, `Color`, `AlternativeColors`) VALUES
('KULYA', 'КУЛЯ', '', 'D56A20', 'guid313607a91cc91254d9dbd99a837c8361, guid5CD48A, guid63bab75d19721cd42be2c6b34fb5f3f8');

-- --------------------------------------------------------

--
-- Структура таблиці `AnswerCardList`
--

CREATE TABLE `AnswerCardList` (
  `simpleKEY` int(11) NOT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `AnswerCardID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExerciseModelID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `AnswerCardList`
--

INSERT INTO `AnswerCardList` (`simpleKEY`, `ArrayIndex`, `AnswerCardID`, `ExerciseModelID`) VALUES
(1, 0, 'AMULETY', 'AMULETY'),
(2, 1, 'BALERYNA', 'AMULETY'),
(3, 2, 'BARONESA', 'AMULETY'),
(4, 3, 'DOLONYA', 'AMULETY');

-- --------------------------------------------------------

--
-- Структура таблиці `ExerciseModel`
--

CREATE TABLE `ExerciseModel` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CorrectAnswer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PossibleAnswers` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `ExerciseModel`
--

INSERT INTO `ExerciseModel` (`ID`, `CorrectAnswer`, `PossibleAnswers`) VALUES
('AMULETY', 'AMULETY', 'КУЛЯ, КУЛЯ, КУЛЯ');

-- --------------------------------------------------------

--
-- Структура таблиці `ExerciseModelList`
--

CREATE TABLE `ExerciseModelList` (
  `simpleKEY` int(11) NOT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `LessonModelID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ExerciseModelID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `ExerciseModelList`
--

INSERT INTO `ExerciseModelList` (`simpleKEY`, `ArrayIndex`, `LessonModelID`, `ExerciseModelID`) VALUES
(1, 0, 'K1', 'AMULETY'),
(2, 1, 'K1', 'BALERYNA'),
(3, 2, 'K1', 'BARONESA'),
(4, 3, 'K1', 'DOLONYA'),
(5, 4, 'K1', 'DYNYA'),
(6, 5, 'K1', 'GOROBYNA'),
(7, 6, 'K1', 'HODULI'),
(8, 7, 'K1', 'KABANY');

-- --------------------------------------------------------

--
-- Структура таблиці `KeyCard`
--

CREATE TABLE `KeyCard` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Word` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Syllable` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Icon` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sound` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AlternativeColors` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `KeyCard`
--

INSERT INTO `KeyCard` (`ID`, `Word`, `Syllable`, `Icon`, `Sound`, `Size`, `Color`, `AlternativeColors`) VALUES
('BANKA', 'БАНКА', 'БА', '', 'fileID 8300000, guid f26b5bac5ee32a446a28473b2def9fbf, type 3', '4000', 'guid 0aabd004a71b88f48bfadf9b37cd04f6', 'guid1c29a31c8cb3c744b80ba18fa89837d2, guid19cf8b26f3388f4429aa50d387e639f2, guid12a35f19a76a80f479fac761fbeebedb, guid5cd470abbad487c41af5eaf915940592, guid561daf66db2ecfa49afc6a605b433795, guid9a239686adc333c4d8a301b5036fec39, guidD56A20, guid313607a91cc91254d9dbd99a837c8361, guid5CD48A, guid63bab75d19721cd42be2c6b34fb5f3f8, guid7371a461645ba1647a5bea279c3ab96c, guidcb495e76863bd7b4facf4842a06a6d28');

-- --------------------------------------------------------

--
-- Структура таблиці `KeyCardList`
--

CREATE TABLE `KeyCardList` (
  `simpleKEY` int(11) NOT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `ExerciseModelID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KeyCardID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `KeyCardList`
--

INSERT INTO `KeyCardList` (`simpleKEY`, `ArrayIndex`, `ExerciseModelID`, `KeyCardID`) VALUES
(1, 0, 'AMULETY', 'AGRUS'),
(2, 1, 'AMULETY', 'MUMIYA'),
(3, 2, 'AMULETY', 'LEV'),
(4, 3, 'AMULETY', 'TYN');

-- --------------------------------------------------------

--
-- Структура таблиці `LessonModel`
--

CREATE TABLE `LessonModel` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `State` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `LessonModel`
--

INSERT INTO `LessonModel` (`ID`, `Name`, `ArrayIndex`, `State`, `Size`) VALUES
('K1', 'К', 1, '1', '4000');

-- --------------------------------------------------------

--
-- Структура таблиці `LessonModelList`
--

CREATE TABLE `LessonModelList` (
  `simpleKEY` int(11) NOT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `LessonsBlockID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LessonModelID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `LessonModelList`
--

INSERT INTO `LessonModelList` (`simpleKEY`, `ArrayIndex`, `LessonsBlockID`, `LessonModelID`) VALUES
(1, 0, 'K', 'K1\r'),
(2, 1, 'K', 'K2'),
(3, 2, 'K', 'K3'),
(4, 3, 'K', 'K4'),
(5, 4, 'K', 'K5');

-- --------------------------------------------------------

--
-- Структура таблиці `LessonsBlock`
--

CREATE TABLE `LessonsBlock` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ArrayIndex` int(11) DEFAULT NULL,
  `TargetKeys` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `LessonsBlock`
--

INSERT INTO `LessonsBlock` (`ID`, `Name`, `ArrayIndex`, `TargetKeys`) VALUES
('K', 'К', 1, 'KAMIN\r, KELYH, KIT, KORM, KULYA, KYT');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `AnswerCard`
--
ALTER TABLE `AnswerCard`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `AnswerCardList`
--
ALTER TABLE `AnswerCardList`
  ADD PRIMARY KEY (`simpleKEY`);

--
-- Індекси таблиці `ExerciseModel`
--
ALTER TABLE `ExerciseModel`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `ExerciseModelList`
--
ALTER TABLE `ExerciseModelList`
  ADD PRIMARY KEY (`simpleKEY`);

--
-- Індекси таблиці `KeyCard`
--
ALTER TABLE `KeyCard`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `KeyCardList`
--
ALTER TABLE `KeyCardList`
  ADD PRIMARY KEY (`simpleKEY`);

--
-- Індекси таблиці `LessonModel`
--
ALTER TABLE `LessonModel`
  ADD PRIMARY KEY (`ID`);

--
-- Індекси таблиці `LessonModelList`
--
ALTER TABLE `LessonModelList`
  ADD PRIMARY KEY (`simpleKEY`);

--
-- Індекси таблиці `LessonsBlock`
--
ALTER TABLE `LessonsBlock`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `AnswerCardList`
--
ALTER TABLE `AnswerCardList`
  MODIFY `simpleKEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `ExerciseModelList`
--
ALTER TABLE `ExerciseModelList`
  MODIFY `simpleKEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблиці `KeyCardList`
--
ALTER TABLE `KeyCardList`
  MODIFY `simpleKEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `LessonModelList`
--
ALTER TABLE `LessonModelList`
  MODIFY `simpleKEY` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
