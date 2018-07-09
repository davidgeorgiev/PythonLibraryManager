-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  9 юли 2018 в 19:07
-- Версия на сървъра: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_manager_db`
--

-- --------------------------------------------------------

--
-- Структура на таблица `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `middle_name`, `last_name`) VALUES
(2, 'David2', 'Lachezarov2', 'Georgiev2'),
(3, 'David', 'Lachezarov', 'Georgiev'),
(4, 'David', 'Lachezarov', 'Georgiev'),
(5, 'David', 'Lachezarov', 'Georgiev'),
(6, 'David', 'Lachezarov', 'Georgiev'),
(7, 'David', 'Lachezarov', 'Georgiev'),
(8, 'David', 'Lachezarov', 'Georgiev'),
(9, 'David', 'Lachezarov', 'Georgiev'),
(10, 'David', 'Lachezarov', 'Georgiev'),
(11, 'David', 'Lachezarov', 'Georgiev'),
(12, 'David', 'Lachezarov', 'Georgiev'),
(13, 'David', 'Lachezarov', 'Georgiev'),
(14, 'David', 'Lachezarov', 'Georgiev'),
(15, 'David', 'Lachezarov', 'Georgiev'),
(16, 'David', 'Lachezarov', 'Georgiev'),
(17, 'David', 'Lachezarov', 'Georgiev'),
(18, 'David', 'Lachezarov', 'Georgiev'),
(19, 'David', 'Lachezarov', 'Georgiev'),
(20, 'David', 'Lachezarov', 'Georgiev'),
(21, 'David', 'Lachezarov', 'Georgiev'),
(22, 'David', 'Lachezarov', 'Georgiev'),
(23, 'David', 'Lachezarov', 'Georgiev'),
(24, 'David', 'Lachezarov', 'Georgiev'),
(25, 'David', 'Lachezarov', 'Georgiev'),
(26, 'David', 'Lachezarov', 'Georgiev'),
(27, 'David', 'Lachezarov', 'Georgiev'),
(28, 'David', 'Lachezarov', 'Georgiev'),
(29, 'David', 'Lachezarov', 'Georgiev'),
(30, 'David', 'Lachezarov', 'Georgiev'),
(31, 'David', 'Lachezarov', 'Georgiev'),
(32, 'David', 'Lachezarov', 'Georgiev'),
(33, 'David', 'Lachezarov', 'Georgiev'),
(34, 'David', 'Lachezarov', 'Georgiev'),
(35, 'David', 'Lachezarov', 'Georgiev'),
(36, 'David', 'Lachezarov', 'Georgiev'),
(37, 'David', 'Lachezarov', 'Georgiev'),
(38, 'David', 'Lachezarov', 'Georgiev'),
(39, 'David', 'Lachezarov', 'Georgiev'),
(40, 'David', 'Lachezarov', 'Georgiev'),
(41, 'David', 'Lachezarov', 'Georgiev'),
(42, 'David', 'Lachezarov', 'Georgiev'),
(43, 'David', 'Lachezarov', 'Georgiev'),
(44, 'David', 'Lachezarov', 'Georgiev'),
(45, 'David', 'Lachezarov', 'Georgiev'),
(46, 'David', 'Lachezarov', 'Georgiev'),
(47, 'David', 'Lachezarov', 'Georgiev'),
(48, 'David', 'Lachezarov', 'Georgiev'),
(49, 'David', 'Lachezarov', 'Georgiev'),
(50, 'David', 'Lachezarov', 'Georgiev'),
(51, 'David', 'Lachezarov', 'Georgiev'),
(52, 'David', 'Lachezarov', 'Georgiev'),
(53, 'David', 'Lachezarov', 'Georgiev'),
(54, 'David', 'Lachezarov', 'Georgiev');

-- --------------------------------------------------------

--
-- Структура на таблица `book`
--

CREATE TABLE `book` (
  `title` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `anotation` text COLLATE utf8_unicode_ci NOT NULL,
  `number_of_copies` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `book`
--

INSERT INTO `book` (`title`, `id`, `publisher_id`, `anotation`, `number_of_copies`, `price`) VALUES
('title2', 10, 2, 'bla bla', 2, 14.5),
('title', 11, 2, 'bla bla', 2, 12.5),
('title', 12, 2, 'bla bla', 2, 12.5),
('title', 13, 2, 'bla bla', 2, 12.5),
('title', 14, 2, 'bla bla', 2, 12.5),
('title', 15, 2, 'bla bla', 2, 12.5),
('title', 16, 2, 'bla bla', 2, 12.5),
('title', 17, 2, 'bla bla', 2, 12.5),
('title', 18, 2, 'bla bla', 2, 12.5),
('title', 19, 2, 'bla bla', 2, 12.5),
('title', 20, 2, 'bla bla', 2, 12.5),
('title', 21, 2, 'bla bla', 2, 12.5),
('title', 22, 2, 'bla bla', 2, 12.5),
('title', 23, 2, 'bla bla', 2, 12.5),
('title', 24, 2, 'bla bla', 2, 12.5),
('title', 25, 2, 'bla bla', 2, 12.5),
('title', 26, 2, 'bla bla', 2, 12.5),
('title', 27, 2, 'bla bla', 2, 12.5),
('title', 28, 2, 'bla bla', 2, 12.5),
('title', 29, 2, 'bla bla', 2, 12.5),
('title', 30, 2, 'bla bla', 2, 12.5),
('title', 31, 2, 'bla bla', 2, 12.5),
('title', 32, 2, 'bla bla', 2, 12.5),
('title', 33, 2, 'bla bla', 2, 12.5),
('title', 34, 2, 'bla bla', 2, 12.5),
('title', 35, 2, 'bla bla', 2, 12.5),
('title', 36, 2, 'bla bla', 2, 12.5),
('title', 37, 2, 'bla bla', 2, 12.5),
('title', 38, 2, 'bla bla', 2, 12.5),
('title', 39, 2, 'bla bla', 2, 12.5),
('title', 40, 2, 'bla bla', 2, 12.5),
('title', 41, 2, 'bla bla', 2, 12.5),
('title', 42, 2, 'bla bla', 2, 12.5),
('title', 43, 2, 'bla bla', 2, 12.5),
('title', 44, 2, 'bla bla', 2, 12.5),
('title', 45, 2, 'bla bla', 2, 12.5),
('title', 46, 2, 'bla bla', 2, 12.5),
('title', 47, 2, 'bla bla', 2, 12.5);

-- --------------------------------------------------------

--
-- Структура на таблица `book_author`
--

CREATE TABLE `book_author` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `book_genre`
--

CREATE TABLE `book_genre` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `genre`
--

CREATE TABLE `genre` (
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `genre`
--

INSERT INTO `genre` (`name`, `id`) VALUES
('Music', 2),
('Art', 3),
('Art', 4),
('Art', 5),
('Art', 6),
('Art', 7),
('Art', 8),
('Art', 9),
('Art', 10),
('Art', 11),
('Art', 12);

-- --------------------------------------------------------

--
-- Структура на таблица `loan`
--

CREATE TABLE `loan` (
  `user_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `loan_date` date NOT NULL,
  `return_period` date NOT NULL,
  `is_returned` tinyint(1) NOT NULL,
  `returned_on_date` date DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `loan`
--

INSERT INTO `loan` (`user_id`, `book_id`, `loan_date`, `return_period`, `is_returned`, `returned_on_date`, `id`) VALUES
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 3),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 4),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 5),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 6),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 7),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 8),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 9),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 10),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 11),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 12),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 13),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 14),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 15),
(2, 10, '2018-07-09', '2018-08-01', 0, NULL, 16);

-- --------------------------------------------------------

--
-- Структура на таблица `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `address`) VALUES
(2, 'Name', 'Sofia'),
(9, 'Name', 'Sofia'),
(10, 'Name', 'Sofia'),
(11, 'Name', 'Sofia'),
(12, 'Name', 'Sofia'),
(13, 'Name', 'Sofia'),
(14, 'Name', 'Sofia'),
(15, 'Name', 'Sofia'),
(16, 'Name', 'Sofia'),
(17, 'Name', 'Sofia'),
(18, 'Name', 'Sofia'),
(19, 'Name', 'Sofia'),
(20, 'Name', 'Sofia'),
(21, 'Name', 'Sofia'),
(22, 'Name', 'Sofia'),
(23, 'Name', 'Sofia'),
(24, 'Name', 'Sofia'),
(25, 'Name', 'Sofia'),
(26, 'Name', 'Sofia'),
(27, 'Name', 'Sofia'),
(28, 'Name', 'Sofia'),
(29, 'Name', 'Sofia');

-- --------------------------------------------------------

--
-- Структура на таблица `reading_card`
--

CREATE TABLE `reading_card` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `reading_card`
--

INSERT INTO `reading_card` (`id`, `issue_date`) VALUES
(1, '0000-00-00'),
(3, '2018-07-09'),
(4, '2018-07-09'),
(5, '2018-07-09'),
(6, '2018-07-09'),
(7, '2018-07-09'),
(8, '2018-07-09'),
(9, '2018-07-09'),
(10, '2018-07-09'),
(11, '2018-07-09'),
(12, '2018-07-09'),
(13, '2018-07-09'),
(14, '2018-07-09'),
(15, '2018-07-09'),
(16, '2018-07-09'),
(17, '2018-07-09'),
(18, '2018-07-09'),
(19, '2018-07-09'),
(20, '2018-07-09'),
(21, '2018-07-09'),
(22, '2018-07-09'),
(23, '2018-07-09'),
(24, '2018-07-09'),
(25, '2018-07-09'),
(26, '2018-07-09'),
(27, '2018-07-09'),
(28, '2018-07-09'),
(29, '2018-07-09'),
(30, '2018-07-09'),
(31, '2018-07-09'),
(32, '2018-07-09'),
(33, '2018-07-09'),
(34, '2018-07-09'),
(35, '2018-07-09'),
(36, '2018-07-09'),
(37, '2018-07-09'),
(38, '2018-07-09'),
(39, '2018-07-09'),
(40, '2018-07-09'),
(41, '2018-07-09'),
(42, '2018-07-09'),
(43, '2018-07-09'),
(44, '2018-07-09'),
(45, '2018-07-09'),
(46, '2018-07-09'),
(47, '2018-07-09'),
(48, '2018-07-09'),
(49, '2018-07-09'),
(50, '2018-07-09'),
(51, '2018-07-09'),
(52, '2018-07-09'),
(53, '2018-07-09'),
(54, '2018-07-09'),
(55, '2018-07-09'),
(56, '2018-07-09'),
(57, '2018-07-09'),
(58, '2018-07-09'),
(59, '2018-07-09'),
(60, '2018-07-09'),
(61, '2018-07-09'),
(62, '2018-07-09'),
(63, '2018-07-09'),
(64, '2018-07-09'),
(65, '2018-07-09'),
(66, '2018-07-09'),
(67, '2018-07-09'),
(68, '2018-07-09'),
(69, '2018-07-09');

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `middle_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `reading_card_id` int(11) NOT NULL,
  `phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `e_mail` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `user`
--

INSERT INTO `user` (`id`, `first_name`, `middle_name`, `last_name`, `reading_card_id`, `phone`, `e_mail`) VALUES
(2, 'David2', 'Lachezarov2', 'Georgiev2', 1, '0893514113', 'david.l.georgiev@gmail.com'),
(3, 'David', 'Lachezarov', 'Georgiev', 1, '', ''),
(4, 'David', 'Lachezarov', 'Georgiev', 1, '', ''),
(5, 'David', 'Lachezarov', 'Georgiev', 1, '', ''),
(6, 'David', 'Lachezarov', 'Georgiev', 1, '', ''),
(7, 'David', 'Lachezarov', 'Georgiev', 5, '', ''),
(8, 'David', 'Lachezarov', 'Georgiev', 6, '', ''),
(9, 'David', 'Lachezarov', 'Georgiev', 7, '0893514113', 'david.l.georgiev@gmail.com'),
(10, 'David', 'Lachezarov', 'Georgiev', 8, '0893514113', 'david.l.georgiev@gmail.com'),
(11, 'David', 'Lachezarov', 'Georgiev', 9, '0893514113', 'david.l.georgiev@gmail.com'),
(12, 'David', 'Lachezarov', 'Georgiev', 10, '0893514113', 'david.l.georgiev@gmail.com'),
(13, 'David', 'Lachezarov', 'Georgiev', 11, '0893514113', 'david.l.georgiev@gmail.com'),
(14, 'David', 'Lachezarov', 'Georgiev', 12, '0893514113', 'david.l.georgiev@gmail.com'),
(15, 'David', 'Lachezarov', 'Georgiev', 13, '0893514113', 'david.l.georgiev@gmail.com'),
(16, 'David', 'Lachezarov', 'Georgiev', 14, '0893514113', 'david.l.georgiev@gmail.com'),
(17, 'David', 'Lachezarov', 'Georgiev', 15, '0893514113', 'david.l.georgiev@gmail.com'),
(18, 'David', 'Lachezarov', 'Georgiev', 16, '0893514113', 'david.l.georgiev@gmail.com'),
(19, 'David', 'Lachezarov', 'Georgiev', 17, '0893514113', 'david.l.georgiev@gmail.com'),
(20, 'David', 'Lachezarov', 'Georgiev', 18, '0893514113', 'david.l.georgiev@gmail.com'),
(21, 'David', 'Lachezarov', 'Georgiev', 19, '0893514113', 'david.l.georgiev@gmail.com'),
(22, 'David', 'Lachezarov', 'Georgiev', 20, '0893514113', 'david.l.georgiev@gmail.com'),
(23, 'David', 'Lachezarov', 'Georgiev', 21, '0893514113', 'david.l.georgiev@gmail.com'),
(24, 'David', 'Lachezarov', 'Georgiev', 22, '0893514113', 'david.l.georgiev@gmail.com'),
(25, 'David', 'Lachezarov', 'Georgiev', 23, '0893514113', 'david.l.georgiev@gmail.com'),
(26, 'David', 'Lachezarov', 'Georgiev', 24, '0893514113', 'david.l.georgiev@gmail.com'),
(27, 'David', 'Lachezarov', 'Georgiev', 25, '0893514113', 'david.l.georgiev@gmail.com'),
(28, 'David', 'Lachezarov', 'Georgiev', 26, '0893514113', 'david.l.georgiev@gmail.com'),
(29, 'David', 'Lachezarov', 'Georgiev', 27, '0893514113', 'david.l.georgiev@gmail.com'),
(30, 'David', 'Lachezarov', 'Georgiev', 28, '0893514113', 'david.l.georgiev@gmail.com'),
(31, 'David', 'Lachezarov', 'Georgiev', 29, '0893514113', 'david.l.georgiev@gmail.com'),
(32, 'David', 'Lachezarov', 'Georgiev', 30, '0893514113', 'david.l.georgiev@gmail.com'),
(33, 'David', 'Lachezarov', 'Georgiev', 31, '0893514113', 'david.l.georgiev@gmail.com'),
(34, 'David', 'Lachezarov', 'Georgiev', 32, '0893514113', 'david.l.georgiev@gmail.com'),
(35, 'David', 'Lachezarov', 'Georgiev', 33, '0893514113', 'david.l.georgiev@gmail.com'),
(36, 'David', 'Lachezarov', 'Georgiev', 34, '0893514113', 'david.l.georgiev@gmail.com'),
(37, 'David', 'Lachezarov', 'Georgiev', 35, '0893514113', 'david.l.georgiev@gmail.com'),
(38, 'David', 'Lachezarov', 'Georgiev', 36, '0893514113', 'david.l.georgiev@gmail.com'),
(39, 'David', 'Lachezarov', 'Georgiev', 37, '0893514113', 'david.l.georgiev@gmail.com'),
(40, 'David', 'Lachezarov', 'Georgiev', 38, '0893514113', 'david.l.georgiev@gmail.com'),
(41, 'David', 'Lachezarov', 'Georgiev', 39, '0893514113', 'david.l.georgiev@gmail.com'),
(42, 'David', 'Lachezarov', 'Georgiev', 40, '0893514113', 'david.l.georgiev@gmail.com'),
(43, 'David', 'Lachezarov', 'Georgiev', 41, '0893514113', 'david.l.georgiev@gmail.com'),
(44, 'David', 'Lachezarov', 'Georgiev', 42, '0893514113', 'david.l.georgiev@gmail.com'),
(45, 'David', 'Lachezarov', 'Georgiev', 43, '0893514113', 'david.l.georgiev@gmail.com'),
(46, 'David', 'Lachezarov', 'Georgiev', 44, '0893514113', 'david.l.georgiev@gmail.com'),
(47, 'David', 'Lachezarov', 'Georgiev', 45, '0893514113', 'david.l.georgiev@gmail.com'),
(48, 'David', 'Lachezarov', 'Georgiev', 46, '0893514113', 'david.l.georgiev@gmail.com'),
(49, 'David', 'Lachezarov', 'Georgiev', 47, '0893514113', 'david.l.georgiev@gmail.com'),
(50, 'David', 'Lachezarov', 'Georgiev', 48, '0893514113', 'david.l.georgiev@gmail.com'),
(51, 'David', 'Lachezarov', 'Georgiev', 49, '0893514113', 'david.l.georgiev@gmail.com'),
(52, 'David', 'Lachezarov', 'Georgiev', 50, '0893514113', 'david.l.georgiev@gmail.com'),
(53, 'David', 'Lachezarov', 'Georgiev', 51, '0893514113', 'david.l.georgiev@gmail.com'),
(54, 'David', 'Lachezarov', 'Georgiev', 52, '0893514113', 'david.l.georgiev@gmail.com'),
(55, 'David', 'Lachezarov', 'Georgiev', 53, '0893514113', 'david.l.georgiev@gmail.com'),
(56, 'David', 'Lachezarov', 'Georgiev', 54, '0893514113', 'david.l.georgiev@gmail.com'),
(57, 'David', 'Lachezarov', 'Georgiev', 55, '0893514113', 'david.l.georgiev@gmail.com'),
(58, 'David', 'Lachezarov', 'Georgiev', 56, '0893514113', 'david.l.georgiev@gmail.com'),
(59, 'David', 'Lachezarov', 'Georgiev', 57, '0893514113', 'david.l.georgiev@gmail.com'),
(60, 'David', 'Lachezarov', 'Georgiev', 58, '0893514113', 'david.l.georgiev@gmail.com'),
(61, 'David', 'Lachezarov', 'Georgiev', 59, '0893514113', 'david.l.georgiev@gmail.com'),
(62, 'David', 'Lachezarov', 'Georgiev', 60, '0893514113', 'david.l.georgiev@gmail.com'),
(63, 'David', 'Lachezarov', 'Georgiev', 61, '0893514113', 'david.l.georgiev@gmail.com'),
(64, 'David', 'Lachezarov', 'Georgiev', 62, '0893514113', 'david.l.georgiev@gmail.com'),
(65, 'David', 'Lachezarov', 'Georgiev', 63, '0893514113', 'david.l.georgiev@gmail.com'),
(66, 'David', 'Lachezarov', 'Georgiev', 64, '0893514113', 'david.l.georgiev@gmail.com'),
(67, 'David', 'Lachezarov', 'Georgiev', 65, '0893514113', 'david.l.georgiev@gmail.com'),
(68, 'David', 'Lachezarov', 'Georgiev', 66, '0893514113', 'david.l.georgiev@gmail.com'),
(69, 'David', 'Lachezarov', 'Georgiev', 67, '0893514113', 'david.l.georgiev@gmail.com'),
(70, 'David', 'Lachezarov', 'Georgiev', 68, '0893514113', 'david.l.georgiev@gmail.com'),
(71, 'David', 'Lachezarov', 'Georgiev', 69, '0893514113', 'david.l.georgiev@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD KEY `publisher_id` (`publisher_id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `book_author`
--
ALTER TABLE `book_author`
  ADD KEY `author_id` (`author_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `book_genre`
--
ALTER TABLE `book_genre`
  ADD KEY `book_id` (`book_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `reading_card`
--
ALTER TABLE `reading_card`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD KEY `reading_card_id` (`reading_card_id`),
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `reading_card`
--
ALTER TABLE `reading_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`);

--
-- Ограничения за таблица `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения за таблица `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Ограничения за таблица `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения за таблица `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`reading_card_id`) REFERENCES `reading_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
