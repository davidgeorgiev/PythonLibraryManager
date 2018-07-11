-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11 юли 2018 в 20:20
-- Версия на сървъра: 10.1.33-MariaDB
-- PHP Version: 7.2.6

DROP DATABASE IF EXISTS library_manager_db;
CREATE DATABASE library_manager_db;
USE library_manager_db;

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
  `first_name` varbinary(1024) DEFAULT NULL,
  `last_name` varbinary(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `last_name`) VALUES
(20, 0xd09ad0bed0bdd181d182d0b0d0bdd182d0b8d0bd, 0xd09f2e20d09ad0bed181d0b5d0b2),
(21, 0xd09bd0b8d0bbd0be, 0xd09f2e20d09ad183d0bdd187d0b5d0b2),
(22, 0xd0a5d0b0d0bdd181, 0xd09ad180d0b8d181d182d0b8d0b0d0bd20d090d0bdd0b4d0b5d180d181d0b5d0bd),
(23, 0xd091d0b5d18ad180, 0xd093d180d0b8d0bbd181);

-- --------------------------------------------------------

--
-- Структура на таблица `book`
--

CREATE TABLE `book` (
  `title` varbinary(1024) NOT NULL,
  `id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `anotation` varbinary(2048) NOT NULL,
  `number_of_copies` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `book`
--

INSERT INTO `book` (`title`, `id`, `publisher_id`, `anotation`, `number_of_copies`, `price`) VALUES
(0xd09cd0bed182d0bed186d0b8d0bad0bbd0b5d182d0b820d0b820d181d0bfd0bed180d182d0bdd0bed181d18ad181d182d0b5d0b7d0b0d182d0b5d0bbd0bdd0b820d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0b8, 26, 22, 0xd0a3d187d0b5d0b1d0bdd0b8d0bad18ad18220d0b520d181d18ad181d182d0b0d0b2d0b5d0bd20d0b220d181d18ad0bed182d0b2d0b5d182d181d182d0b2d0b8d0b520d18120d183d182d0b2d18ad180d0b4d0b5d0bdd0b0d182d0b020d183d187d0b5d0b1d0bdd0b020d0bfd180d0bed0b3d180d0b0d0bcd0b020d0bfd0be20d0b4d0b8d181d186d0b8d0bfd0bbd0b8d0bdd0b0d182d0b020d09cd0bed182d0bed186d0b8d0bad0bbd0b5d182d0b820d0b820d181d0bfd0bed180d182d0bdd0bed181d18ad181d182d0b5d0b7d0b0d182d0b5d0bbd0bdd0b820d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0b820d0b820d0b520d0bfd180d0b5d0b4d0bdd0b0d0b7d0bdd0b0d187d0b5d0bd20d0b7d0b020d181d182d183d0b4d0b5d0bdd182d0b820d0bed18220d181d0bfd0b5d186d0b8d0b0d0bbd0bdd0bed181d182d182d0b020d0a2d180d0b0d0bdd181d0bfd0bed180d182d0bdd0b020d182d0b5d185d0bdd0b8d0bad0b020d0b820d182d0b5d185d0bdd0bed0bbd0bed0b3d0b8d0b820d0bfd180d0b820d0a2d0b5d185d0bdd0b8d187d0b5d181d0bad0b8d18f20d183d0bdd0b8d0b2d0b5d180d181d0b8d182d0b5d182202d20d0a1d0bed184d0b8d18f2c20d0bdd0be20d0bcd0bed0b6d0b520d0b4d0b020d181d0b520d0bfd0bed0bbd0b7d0b2d0b020d0b820d0bed18220d181d182d183d0b4d0b5d0bdd182d0b8d182d0b520d0bed18220d0b4d180d183d0b3d0b820d181d0bfd0b5d186d0b8d0b0d0bbd0bdd0bed181d182d0b82c20d0b8d0b7d183d187d0b0d0b2d0b0d189d0b820d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0b82c20d0bad0b0d0bad182d0be20d0b820d0bed18220d181d0bfd0b5d186d0b8d0b0d0bbd0b8d181d182d0b8d182d0b52c20d180d0b0d0b1d0bed182d0b5d189d0b820d0b220d0bed0b1d0bbd0b0d181d182d182d0b020d0bdd0b020d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0bdd0b0d182d0b020d0b820d0bcd0bed182d0bed186d0b8d0bad0bbd0b5d182d0bdd0b0d182d0b020d182d0b5d185d0bdd0b8d0bad0b02e, 10, 2.9),
(0xd098d0b7d0b1d180d0b0d0bdd0b820d0bfd180d0b8d0bad0b0d0b7d0bad0b820d0bed18220d0a5d0b0d0bdd18120d09ad180d0b8d181d182d0b8d0b0d0bd20d090d0bdd0b4d0b5d180d181d0b5d0bd, 27, 23, 0xd0a5d0b0d0bdd18120d09ad180d0b8d181d182d0b8d0b0d0bd20d090d0bdd0b4d0b5d180d181d0b5d0bd2028313830352d313837352920d0b520d180d0bed0b4d0b5d0bd20d0b220d0b4d0b0d182d181d0bad0b8d18f20d0b3d180d0b0d0b420d09ed0b4d0b5d0bdd0b7d0b52e20d09dd0b0d0b92dd0b2d0b5d0bbd0b8d0bad0b8d18fd18220d180d0b0d0b7d0bad0b0d0b7d0b2d0b0d18720d0bdd0b020d0bfd180d0b8d0bad0b0d0b7d0bad0b820d0b520d181d0b8d0bd20d0bdd0b020d0bed0b1d183d189d0b0d1802e20d094d0b5d182d181d182d0b2d0bed182d0be20d0bcd18320d0bfd180d0b5d0bcd0b8d0bdd0b0d0b2d0b020d0b220d0b5d0b4d0bdd0b02dd0b5d0b4d0b8d0bdd181d182d0b2d0b5d0bdd0b020d181d182d0b0d0b8d187d0bad0b02c20d0bfd0bed187d182d0b820d186d18fd0bbd0b0d182d0b020d0b7d0b0d0b5d182d0b020d0bed18220d0bed0b1d183d189d0b0d180d181d0bad0b8d18f20d182d0b5d0b7d0b3d18fd1852e20d0a1d0b0d0bcd0be20d0bdd0b020d187d0b5d182d0b8d180d0b8d0bdd0b0d0b4d0b5d181d0b5d18220d0b3d0bed0b4d0b8d0bdd0b82c20d0b1d0b5d0b720d0bfd0b0d180d0b820d0b820d0bfd180d0b5d0bfd0b8d182d0b0d0bdd0b8d0b52c20d090d0bdd0b4d0b5d180d181d0b5d0bd20d181d0b520d0bed0b7d0bed0b2d0b0d0b2d0b020d0b220d181d182d0bed0bbd0b8d186d0b0d182d0b020d09ad0bed0bfd0b5d0bdd185d0b0d0b3d0b5d0bd2e20d091d0bbd0b0d0b3d0bed0b4d0b0d180d0b5d0bdd0b8d0b520d0bdd0b020d0b4d0b0d180d0b1d0b0d182d0b020d181d0b820d0b820d18120d0bfd0bed0bcd0bed189d182d0b020d0bdd0b020d0b2d0bbd0b8d18fd182d0b5d0bbd0bdd0b820d0b1d0bbd0b0d0b3d0bed0b4d0b5d182d0b5d0bbd0b82c20d0bfd0bed0bbd183d187d0b0d0b2d0b020d0b4d0bed0b1d180d0be20d0bed0b1d180d0b0d0b7d0bed0b2d0b0d0bdd0b8d0b52e20d0a1d18ad0b7d0b4d0b0d0b2d0b020d0b3d0bed0bbd18fd0bcd0be20d0bfd0be20d0bed0b1d0b5d0bc20d182d0b2d0bed180d187d0b5d181d182d0b2d0be2c20d0bdd0be20d181d0b2d0b5d182d0bed0b2d0bdd0b020d181d0bbd0b0d0b2d0b020d0bcd18320d0b4d0bed0bdd0b0d181d18fd18220d0bdd0b5d0b3d0bed0b2d0b8d182d0b520d187d183d0b4d0bdd0b820d0bfd180d0b8d0bad0b0d0b7d0bad0b82e20d09220d182d0bed0b7d0b820d182d0bed0bc20d181d0b020d181d18ad0b1d180d0b0d0bdd0b820d0bdd0b0d0b92dd185d183d0b1d0b0d0b2d0b8d182d0b520d0bfd180d0b8d0bad0b0d0b7d0bad0b820d0bdd0b020d0b2d0b5d0bbd0b8d0bad0b8d18f20d0bfd0b8d181d0b0d182d0b5d0bb2e, 3, 2.9),
(0xd0a0d0bed0b4d0b5d0bd20d0b4d0b020d0bed186d0b5d0bbd18fd0b2d0b0, 28, 24, 0xd09dd0b0d0b92dd0b4d0bed0b1d180d0b8d182d0b520d182d0b5d185d0bdd0b8d0bad0b820d0b7d0b020d0bed186d0b5d0bbd18fd0b2d0b0d0bdd0b520d0b220d0b4d0b8d0b2d0b0d182d0b020d0bfd180d0b8d180d0bed0b4d0b02e0a0ad096d0b5d181d182d0bed0bad0b820d0bfd183d181d182d0b8d0bdd0b82c20d0bdd0b5d0bfd180d0bed185d0bed0b4d0b8d0bcd0b820d0b4d0b6d183d0bdd0b3d0bbd0b82c20d0bad0bed0b2d0b0d180d0bdd0b820d0bbd0b5d0b4d0bed0b2d0b520d0b820d181d0b2d0b8d180d0b5d0bfd0b820d185d0b8d189d0bdd0b8d186d0b8202d20d091d0b5d18ad18020d093d180d0b8d0bbd18120d0bdd0b820d180d0b0d0b7d0bad180d0b8d0b2d0b020d0bad0b0d0ba20d0b4d0b020d0bed186d0b5d0bbd0b5d0b5d0bc20d0bdd0b020d180d18ad0b1d0b02e0a0ad09ad0b0d182d0b0d181d182d180d0bed184d0b8d182d0b520d0bcd0bed0b3d0b0d18220d0b4d0b020d181d0b520d181d0bbd183d187d0b0d18220d0b820d187d0b5d181d182d0be20d181d0b520d181d0bbd183d187d0b2d0b0d1822e20d09dd0b8d0bad0bed0b920d0bed18220d0bdd0b0d18120d0bdd0b520d0b520d0b8d0bcd183d0bdd0b8d0b7d0b8d180d0b0d0bd20d181d180d0b5d189d18320d0b2d0bdd0b5d0b7d0b0d0bfd0bdd0b8d182d0b520d0bed0b1d180d0b0d182d0b820d0bdd0b020d181d18ad0b4d0b1d0b0d182d0b02e20d0a0d0bed0b4d0b5d0bd20d0b4d0b020d0bed186d0b5d0bbd18fd0b2d0b020d0b520d0bfd180d0b0d0bad182d0b8d187d0b5d0bd20d0bdd0b0d180d18ad187d0bdd0b8d0ba20d181d18ad18120d181d18ad0b2d0b5d182d0b820d0b7d0b020d0bed186d0b5d0bbd18fd0b2d0b0d0bdd0b52c20d0bad0bed0b9d182d0be20d189d0b520d0b2d0b820d0bfd0bed0bcd0bed0b3d0bdd0b520d0b4d0b020d181d0b520d181d0bfd180d0b0d0b2d0b8d182d0b520d0b820d0bfd180d0b820d0bdd0b0d0b92dd0bbd0bed188d0b8d18f20d181d186d0b5d0bdd0b0d180d0b8d0b92e0a0ad09ed18220d181d182d180d0b0d0bdd0b8d186d0b8d182d0b520d0bdd0b020d182d0b0d0b7d0b820d0bad0bdd0b8d0b3d0b020d189d0b520d0bdd0b0d183d187d0b8d182d0b520d0bad0b0d0ba20d0b4d0b020d181d0b820d0bfd0bed181d182d180d0bed0b8d182d0b520d181d0b8d0b3d183d180d0b5d0bd20d0bfd0bed0b4d181d0bbd0bed0bd20d18120d0bfd0bed0b4d180d18ad187d0bdd0b820d0bcd0b0d182d0b5d180d0b8d0b0d0bbd0b82c20d0bad0b0d0ba20d0b4d0b020d0b7d0b0d0bfd0b0d0bbd0b8d182d0b520d0bed0b3d18ad0bd20d0b1d0b5d0b720d0bad0b8d0b1d180d0b8d1822c20d0bad0b0d0ba20d0b4d0b020d181d0b520d0bfd180d0b8d0b4d0b2d0b8d0b6d0b2d0b0d182d0b520d0b820d0bed180d0b8d0b5d0bdd182d0b8d180d0b0d182d0b520d0b2d18ad0b220d0b2d181d18fd0bad0b0d0bad0b2d0b820d182d0b5d180d0b5d0bdd0b820d0b820d0bed189d0b520d186d18fd0bb20d0bad183d0bf20d0b8d0b7d0bfd0b8d182d0b0d0bdd0b820d182d0b5d185d0bdd0b8d0bad0b820d0b7d0b020d0bed186d0b5d0bbd18fd0b2d0b0d0bdd0b520d0b220d0b4d0b8d0b2d0b0d182d0b020d0bfd180d0b8d180d0bed0b4d0b02e20d095d0bad181d0bfd0b5d180d182d18ad18220d0bfd0be20d0bed186d0b5d0bbd18fd0b2d0b0d0bdd0b520d091d0b5d18ad18020d093d180d0b8d0bbd18120d0bdd0b820d0bfd0bed0bad0b0d0b7d0b2d0b02c20d187d0b52c20d0b2d18ad0bed180d18ad0b6d0b5d0bdd0b820d18120d0bfd180d0b0d0b2d0b8d0bbd0bdd0b8d182d0b520d0b7d0bdd0b0d0bdd0b8d18f20d0b820d0bdd0b5d181d0bbd0bed0bcd0b8d0bcd0b0d182d0b020d0b2d0bed0bbd18f20d0b4d0b020d181d0b520d181d0bfd0b0d181d0b8d0bc2c20d0b2d181d0b8d187d0bad0b820d0bdd0b8d0b520d0b8d0bcd0b0d0bcd0b520d0bfd0bed182d0b5d0bdd186d0b8d0b0d0bbd0b020d0b4d0b020d181d0b520d181d0bfd180d0b0d0b2d0b8d0bc20d18120d0bdd0b5d0b2d18ad0bed0b1d180d0b0d0b7d0b8d0bcd0b820d0bfd180d0b5d0b4d0b8d0b7d0b2d0b8d0bad0b0d182d0b5d0bbd181d182d0b2d0b0202d20d0bed18220d0bfd180d0b5d0bad0bed181d18fd0b2d0b0d0bdd0b520d0bdd0b020d181d0bcd18ad180d182d0bed0bdd0bed181d0bdd0b820d180d0b5d0bad0b820d0b820d183d0b1d0b8d0b2d0b0d0bdd0b520d0bdd0b020d0bed182d180d0bed0b2d0bdd0b820d0b7d0bcd0b8d0b820d0b4d0be20d181d180d0b5d189d0b020d18120d0bcd0b5d187d0bad0b020d0b3d180d0b8d0b7d0bbd0b820d0b820d0b8d0b7d0b1d18fd0b3d0b2d0b0d0bdd0b520d0bdd0b020d0bbd0b0d0b2d0b8d0bdd0b02e, 8, 25);

-- --------------------------------------------------------

--
-- Структура на таблица `book_author`
--

CREATE TABLE `book_author` (
  `author_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `book_author`
--

INSERT INTO `book_author` (`author_id`, `book_id`) VALUES
(20, 26),
(21, 26),
(22, 27),
(23, 28);

-- --------------------------------------------------------

--
-- Структура на таблица `book_genre`
--

CREATE TABLE `book_genre` (
  `book_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `book_genre`
--

INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES
(26, 32),
(27, 47),
(27, 31),
(28, 170),
(28, 44);

-- --------------------------------------------------------

--
-- Структура на таблица `genre`
--

CREATE TABLE `genre` (
  `name` varbinary(1024) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `genre`
--

INSERT INTO `genre` (`name`, `id`) VALUES
(0xd091d0b8d0b7d0bdd0b5d18120d0b820d0b8d0bad0bed0bdd0bed0bcd0b8d0bad0b0, 28),
(0xd09ad0bed0bcd0bfd18ed182d18ad180d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 29),
(0xd0a5d183d0b4d0bed0b6d0b5d181d182d0b2d0b5d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 30),
(0xd094d0b5d182d181d0bad0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 31),
(0xd0a3d187d0b5d0b1d0bdd0b8d186d0b820d0b820d0bfd0bed0bcd0b0d0b3d0b0d0bbd0b0, 32),
(0xd0a3d187d0b5d0bdd0b8d187d0b5d181d0bad0b820d0bfd0bed181d0bed0b1d0b8d18f, 33),
(0xd0a4d0b8d0bbd0bed0bbd0bed0b3d0b8d18f20d0b820d0b5d0b7d0b8d0bad0bed0b7d0bdd0b0d0bdd0b8d0b5, 34),
(0xd09dd0b0d183d0bad0b020d0b820d0bdd0b0d183d187d0bdd0be20d0bfd0bed0bfd183d0bbd18fd180d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 35),
(0xd0a1d0bfd0b5d186d0b8d0b0d0bbd0b8d0b7d0b8d180d0b0d0bdd0b020d0b820d182d0b5d185d0bdd0b8d187d0b5d181d0bad0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 36),
(0xd09fd180d0b0d0b2d0be20d0b820d18ed180d0b8d0b4d0b8d187d0b5d181d0bad0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 37),
(0xd09fd181d0b8d185d0bed0bbd0bed0b3d0b8d18f20d0b820d184d0b8d0bbd0bed181d0bed184d0b8d18f, 38),
(0xd0a0d0b5d0bbd0b8d0b3d0b8d18f20d0b820d0bed0bad183d0bbd182d0b8d0b7d18ad0bc, 39),
(0xd0a5d180d0b0d0bdd0b5d0bdd0b520d0b820d0b7d0b4d180d0b0d0b2d0b5, 40),
(0xd097d0b020d0b4d0bed0bcd0b020d0b820d181d0b5d0bcd0b5d0b9d181d182d0b2d0bed182d0be, 41),
(0xd098d0b7d0bad183d181d182d0b2d0be, 42),
(0xd09ad0b0d180d182d0b820d0b820d0b0d182d0bbd0b0d181d0b8, 43),
(0xd0a2d183d180d0b8d0b7d18ad0bc, 44),
(0xd0a4d0bed180d0bcd183d0bbd18fd180d0b820d0b820d0b1d0bbd0b0d0bdd0bad0b820d09fd0b5d187d0b0d182d0b8, 45),
(0xd090d0bad181d0b5d181d0bed0b0d180d0b820d0b7d0b020d0bad0bdd0b8d0b3d0b820d09fd0bed0b7d0b4d180d0b0d0b2d0b8d182d0b5d0bbd0bdd0b820d0bad0b0d180d182d0b8d187d0bad0b8, 46),
(0xd09fd180d0b8d0bad0b0d0b7d0bad0b8, 47),
(0xd091d0b0d181d0bdd0b8, 48),
(0xd094d0b5d182d181d0bad0be2dd18ed0bdd0bed188d0b5d181d0bad0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 49),
(0xd09fd180d0b5d0bfd0bed180d18ad187d0b8d182d0b5d0bbd0bdd0b020d183d187d0b5d0b1d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 50),
(0xd0a7d0b8d182d0b0d182d0b5d0bbd181d0bad0b820d0b4d0bdd0b5d0b2d0bdd0b8d186d0b8, 51),
(0xd09bd0b5d0bad181d0b8d0bad0bed0bdd0b8, 52),
(0xd09ad0bed0bcd0b8d0bad181d0b8, 53),
(0xd09ad0bdd0b8d0b3d0b82dd0b8d0b3d180d0b8, 54),
(0xd0a7d183d0b6d0b4d0bed0b5d0b7d0b8d0bad0bed0b2d0be20d0bed0b1d183d187d0b5d0bdd0b8d0b520d0b7d0b020d0b4d0b5d186d0b0, 55),
(0xd0a7d183d0b6d0b4d0bed0b5d0b7d0b8d187d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b020d0b7d0b020d0b4d0b5d186d0b0, 56),
(0xd094d0b5d182d181d0bad0b820d0b5d0bdd186d0b8d0bad0bbd0bed0bfd0b5d0b4d0b8d0b8, 57),
(0xd09ed0b1d180d0b0d0b7d0bed0b2d0b0d182d0b5d0bbd0bdd0b820d0bad0bdd0b8d0b6d0bad0b8, 58),
(0xd094d0b5d182d181d0bad0b820d181d182d0b8d185d187d0b5d182d0b020d0b820d0b3d0b0d182d0b0d0bdd0bad0b8, 59),
(0xd09cd183d0b7d0b8d0bad0b0d0bbd0bdd0b820d0bad0bdd0b8d0b6d0bad0b8, 60),
(0xd09fd0b0d0bdd0bed180d0b0d0bcd0bdd0b820d0bad0bdd0b8d0b3d0b8, 61),
(0xd09ad0bdd0b8d0b6d0bad0b820d18120d0bfd18ad0b7d0b5d0bbd0b8, 62),
(0xd097d0b0d0bdd0b8d0bcd0b0d182d0b5d0bbd0bdd0b820d0bad0bdd0b8d0b6d0bad0b8, 63),
(0xd09ad0bdd0b8d0b6d0bad0b820d0b7d0b020d0bdd0b0d0b92dd0bcd0b0d0bbd0bad0b8d182d0b5, 64),
(0xd09ad0bed0bbd0b5d0b4d0bdd0b820d0bad0bdd0b8d0b6d0bad0b8, 65),
(0xd09bd183d0bad181d0bed0b7d0bdd0b820d0b820d0bfd0bed0b4d0b0d180d18ad187d0bdd0b820d0bad0bdd0b8d0b3d0b8, 66),
(0xd094d0b5d182d181d0bad0b820d0b3d180d0b0d0b4d0b8d0bdd0b8, 67),
(0x312e20d0bad0bbd0b0d181, 68),
(0x322e20d0bad0bbd0b0d181, 69),
(0x332e20d0bad0bbd0b0d181, 70),
(0x342e20d0bad0bbd0b0d181, 71),
(0x352e20d0bad0bbd0b0d181, 72),
(0x362e20d0bad0bbd0b0d181, 73),
(0x372e20d0bad0bbd0b0d181, 74),
(0x382e20d0bad0bbd0b0d181, 75),
(0x392e20d0bad0bbd0b0d181, 76),
(0x31302e20d0bad0bbd0b0d181, 77),
(0x31312e20d0bad0bbd0b0d181, 78),
(0x31322e20d0bad0bbd0b0d181, 79),
(0xd092d18ad0bdd188d0bdd0be20d0bed186d0b5d0bdd18fd0b2d0b0d0bdd0b5, 80),
(0xd092d181d0b8d187d0bad0be20d0b7d0b020d0bcd0b0d182d183d180d0b8d182d0b5, 81),
(0xd0a1d0bfd180d0b0d0b2d0bed187d0bdd0b8d186d0b8, 82),
(0xd097d0b020d0bad0b0d0bdd0b4d0b8d0b4d0b0d1822dd181d182d183d0b4d0b5d0bdd182d0b8, 83),
(0xd097d0b020d0bfd180d0bed184d0b8d0bbd0b8d180d0b0d0bdd0b8d182d0b520d0b3d0b8d0bcd0bdd0b0d0b7d0b8d0b8, 84),
(0xd092d0b8d181d188d0b520d183d187d0b8d0bbd0b8d189d0b5, 85),
(0xd097d0b020d0bad0b0d0bdd0b4d0b8d0b4d0b0d1822dd188d0bed184d18cd0bed180d0b8, 86),
(0xd0a3d187d0b5d0b1d0bdd0b820d182d0b0d0b1d0bbd0b0, 87),
(0xd0a3d187d0b5d0bdd0b8d187d0b5d181d0bad0b820d182d0b5d182d180d0b0d0b4d0bad0b8, 88),
(0xd0a7d0b8d182d0b0d182d0b5d0bbd181d0bad0b820d0b4d0bdd0b5d0b2d0bdd0b8d186d0b8, 89),
(0xd09fd0bed0b4d0b2d18ad180d0b7d0b8d0b8, 90),
(0xd095d182d0b8d0bad0b5d182d0b8, 91),
(0xd09fd0b0d0bfd0bad0b8, 92),
(0xd0a1d0bad0b8d186d0bdd0b8d186d0b820d0b820d0b1d0bbd0bed0bad187d0b5d182d0b0, 93),
(0xd090d0bad181d0b5d181d0bed0b0d180d0b820d0b7d0b020d180d0b8d181d183d0b2d0b0d0bdd0b520d0b820d0bed186d0b2d0b5d182d18fd0b2d0b0d0bdd0b5, 94),
(0xd0a0d0b5d187d0bdd0b8d186d0b8, 95),
(0xd0a7d0a7d183d0b6d0b4d0bed0b5d0b7d0b8d0bad0bed0b2d0be20d0bed0b1d183d187d0b5d0bdd0b8d0b5, 96),
(0xd0a1d0b8d181d182d0b5d0bcd0b820d0b7d0b020d0b5d0b7d0b8d0bad0bed0b2d0be20d0bed0b1d183d187d0b5d0bdd0b8d0b5, 97),
(0xd09fd0bed0b4d0b3d0bed182d0bed0b2d0bad0b020d0b7d0b020d0b5d0b7d0b8d0bad0bed0b2d0b820d0b8d0b7d0bfd0b8d182d0b8, 98),
(0xd091d18ad0bbd0b3d0b0d180d181d0bad0b820d0b5d0b7d0b8d0ba, 99),
(0xd0a7d183d0b6d0b4d0bed0b5d0b7d0b8d187d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 100),
(0xd09dd0b0d183d187d0bdd0bed0bfd0bed0bfd183d0bbd18fd180d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 101),
(0xd095d0bdd186d0b8d0bad0bbd0bed0bfd0b5d0b4d0b8d0b8, 102),
(0xd098d181d182d0bed180d0b8d18f, 103),
(0xd093d0b5d0bed0b3d180d0b0d184d0b8d18f20d0b820d0b3d0b5d0bed0b3d180d0b0d184d181d0bad0b820d0b8d0b7d181d0bbd0b5d0b4d0b2d0b0d0bdd0b8d18f, 104),
(0xd090d181d182d180d0bed0bdd0bed0bcd0b8d18f, 105),
(0xd0a4d0b8d0b7d0b8d0bad0b0, 106),
(0xd09cd0b0d182d0b5d0bcd0b0d182d0b8d0bad0b0, 107),
(0xd0a5d0b8d0bcd0b8d18f, 108),
(0xd093d0b5d0bed0bbd0bed0b3d0b8d18f, 109),
(0xd091d0b8d0bed0bbd0bed0b3d0b8d18f, 110),
(0xd09cd0b5d0b4d0b8d186d0b8d0bdd0b0, 111),
(0xd095d0bad0bed0bbd0bed0b3d0b8d18f, 112),
(0xd0a1d0bed186d0b8d0bed0bbd0bed0b3d0b8d18f20d0b820d0b4d0b5d0bcd0bed0b3d180d0b0d184d0b8d18f, 113),
(0xd095d182d0bdd0bed0b3d180d0b0d184d0b8d18f20d0b820d184d0bed0bbd0bad0bbd0bed180, 114),
(0xd09fd0b5d0b4d0b0d0b3d0bed0b3d0b8d0bad0b0, 115),
(0xd09fd0bed0bbd0b8d182d0b8d0bad0b0, 116),
(0xd0a5d180d0b0d0bdd0b8d182d0b5d0bbd0bdd0be2dd0b2d0bad183d181d0bed0b2d0b020d0bfd180d0bed0bcd0b8d188d0bbd0b5d0bdd0bed181d182, 117),
(0xd0a0d0b5d181d182d0bed180d0b0d0bdd182d18cd0bed180d181d182d0b2d0be20d0b820d185d0bed182d0b5d0bbd0b8d0b5d180d181d182d0b2d0be, 118),
(0xd0a1d0b5d0bbd181d0bad0be20d0b820d0b3d0bed180d181d0bad0be20d181d182d0bed0bfd0b0d0bdd181d182d0b2d0be, 119),
(0xd0a1d182d180d0bed0b8d182d0b5d0bbd181d182d0b2d0be, 120),
(0xd092d0bed0b5d0bdd0bdd0be20d0b820d0bfd0bed0bbd0b8d186d0b5d0b9d181d0bad0be20d0b4d0b5d0bbd0be, 121),
(0xd0a2d0b5d185d0bdd0b8d0bad0b0, 122),
(0xd095d0bbd0b5d0bad182d180d0bed0bdd0b8d0bad0b0, 123),
(0xd097d0b020d0b0d0b2d182d0bed0bcd0bed0b1d0b8d0bbd0b0, 124),
(0xd097d0b0d0bad0bed0bdd0b820d0b820d181d0b1d0bed180d0bdd0b8d186d0b8, 125),
(0xd09ed0b1d189d0b020d182d0b5d0bed180d0b8d18f20d0b820d184d0b8d0bbd0bed181d0bed184d0b8d18f20d0bdd0b020d0bfd180d0b0d0b2d0bed182d0be, 126),
(0xd09fd180d0b0d0b2d0be20d0bdd0b020d095d0b2d180d0bed0bfd0b5d0b9d181d0bad0b8d18f20d181d18ad18ed0b7, 127),
(0xd0a2d180d183d0b4d0bed0b2d0be20d0b820d0bed181d0b8d0b3d183d180d0b8d182d0b5d0bbd0bdd0be20d0bfd180d0b0d0b2d0be, 128),
(0xd0a2d18ad180d0b3d0bed0b2d181d0bad0be20d0b820d0bed0b1d0bbd0b8d0b3d0b0d186d0b8d0bed0bdd0bdd0be20d0bfd180d0b0d0b2d0be, 129),
(0xd0a1d0b5d0bcd0b5d0b9d0bdd0be20d0b820d0bdd0b0d181d0bbd0b5d0b4d181d182d0b2d0b5d0bdd0be20d0bfd180d0b0d0b2d0be, 130),
(0xd09ad0bed0bdd181d182d0b8d182d183d186d0b8d0bed0bdd0bdd0be20d0bfd180d0b0d0b2d0be, 131),
(0xd098d0bdd182d0b5d0bbd0b5d0bad182d183d0b0d0bbd0bdd0b020d181d0bed0b1d181d182d0b2d0b5d0bdd0bed181d182, 132),
(0xd090d0b4d0bcd0b8d0bdd0b8d181d182d180d0b0d182d0b8d0b2d0bdd0be20d0bfd180d0b0d0b2d0be, 133),
(0xd09dd0b0d0bad0b0d0b7d0b0d182d0b5d0bbd0bdd0be20d0bfd180d0b0d0b2d0be20d0b820d0bfd180d0bed186d0b5d181, 134),
(0xd09fd181d0b8d185d0bed0bbd0bed0b3d0b8d18f, 135),
(0xd0a1d0b0d0bcd0bed183d181d18ad0b2d18ad180d188d0b5d0bdd181d182d0b2d0b0d0bdd0b5, 136),
(0xd09ad0bdd0b8d0b3d0b820d0b7d0b020d09dd09bd09f, 137),
(0xd09ad0bdd0b8d0b3d0b820d0b7d0b020d0bed0b1d189d183d0b2d0b0d0bdd0b5d182d0be, 138),
(0xd0a4d0b8d0bbd0bed181d0bed184d0b8d18f, 139),
(0xd0a5d180d0b0d0bdd0b5d0bdd0b5, 140),
(0xd097d0b4d180d0b0d0b2d0b5, 141),
(0xd090d0bbd182d0b5d180d0bdd0b0d182d0b8d0b2d0bdd0b020d0bcd0b5d0b4d0b8d186d0b8d0bdd0b0, 142),
(0xd09ad183d0bbd0b8d0bdd0b0d180d0bdd0b820d0bad0bdd0b8d0b3d0b8, 143),
(0xd09ad183d0bbd0b8d0bdd0b0d180d0bdd0b820d0bad0bdd0b8d0b3d0b8, 144),
(0xd094d0bed0bcd0b0d0bad0b8d0bdd181d182d0b2d0be20d0b820d0b1d0b8d182, 146),
(0xd097d0b020d0b6d0b5d0bdd0b0d182d0b0, 147),
(0xd09cd0bed0b4d0b020d0b820d0bed0b1d0bbd0b5d0bad0bbd0be, 148),
(0xd09ad0bed0b7d0bcd0b5d182d0b8d0bad0b0, 149),
(0xd0a1d0b5d0bad181, 150),
(0xd097d0b020d180d0bed0b4d0b8d182d0b5d0bbd0b8, 151),
(0xd094d0bed0bcd0b0d188d0bdd0b820d0bbd18ed0b1d0b8d0bcd186d0b8, 152),
(0xd095d0b7d0bed182d0b5d180d0b8d0bad0b020d0b820d0bed0bad183d0bbd182d0b8d0b7d18ad0bc, 153),
(0xd0a0d0b5d0bbd0b8d0b3d0b8d0b8, 154),
(0xd098d0b7d182d0bed187d0bdd0b020d0bcd18ad0b4d180d0bed181d182, 155),
(0xd097d0b0d0b3d0b0d0b4d0bad0b820d0b820d0bcd0b8d181d182d0b5d180d0b8d0b8, 156),
(0xd090d181d182d180d0bed0bbd0bed0b3d0b8d18f, 157),
(0xd09dd183d0bcd0b5d180d0bed0bbd0bed0b3d0b8d18f, 158),
(0xd099d0bed0b3d0b0, 159),
(0xd0a4d18ad0bd20d0a8d183d0b9, 160),
(0xd0a2d0b0d180d0be, 161),
(0xd098d0bdd182d0b5d180d0b8d0bed18020d0b820d0b4d0b8d0b7d0b0d0b9d0bd, 162),
(0xd090d180d185d0b8d182d0b5d0bad182d183d180d0b0, 163),
(0xd098d0b7d18fd189d0bdd0b820d0b8d0b7d0bad183d181d182d0b2d0b0, 164),
(0xd098d181d182d0bed180d0b8d18f20d0bdd0b020d0b8d0b7d0bad183d181d182d0b2d0bed182d0be, 165),
(0xd09cd183d0b7d0b8d0bad0b0, 166),
(0xd09ad0b8d0bdd0be, 167),
(0xd0a2d0b5d0b0d182d18ad180, 168),
(0xd0a4d0bed182d0bed0b3d180d0b0d184d0b8d18f, 169),
(0xd09fd0bbd0b0d0bdd0b8d0bdd0b0d180d181d182d0b2d0be20d0b820d0bed186d0b5d0bbd18fd0b2d0b0d0bdd0b5, 170),
(0xd09fd18ad182d0b5d0b2d0bed0b4d0b8d182d0b5d0bbd0b8, 171),
(0xd097d0b0d0b1d0b5d0bbd0b5d0b6d0b8d182d0b5d0bbd0bdd0bed181d182d0b8, 172),
(0xd09fd18ad182d0b5d0bfd0b8d181d0b8, 173),
(0xd093d0b5d0bed0b3d180d0b0d184d181d0bad0b820d0b820d0b8d181d182d0bed180d0b8d187d0b5d181d0bad0b820d0bad0b0d180d182d0b8, 174),
(0xd0a2d183d180d0b8d181d182d0b8d187d0b5d181d0bad0b820d0bad0b0d180d182d0b8, 175),
(0xd09fd18ad182d0bdd0b820d0bad0b0d180d182d0b8, 176),
(0xd0a1d182d0b5d0bdd0bdd0b820d0bad0b0d180d182d0b8, 177),
(0xd090d0b4d0bcd0b8d0bdd0b8d181d182d180d0b0d182d0b8d0b2d0bdd0b820d0bad0b0d180d182d0b8, 178),
(0xd0a0d0b5d0bbd0b5d184d0bdd0b820d0bad0b0d180d182d0b820d0b820d0b3d0bbd0bed0b1d183d181d0b8, 179),
(0xd09cd0b5d0bdd0b8d0b4d0b6d0bcd18ad0bdd18220d0b820d183d0bfd180d0b0d0b2d0bbd0b5d0bdd0b8d0b5, 180),
(0xd09cd0b0d180d0bad0b5d182d0b8d0bdd0b32c20505220d0b820d180d0b5d0bad0bbd0b0d0bcd0b0, 181),
(0xd0a7d0bed0b2d0b5d188d0bad0b820d180d0b5d181d183d180d181d0b8, 182),
(0xd0a4d0b8d0bdd0b0d0bdd181d0b820d0b820d098d0bdd0b2d0b5d181d182d0b8d186d0b8d0b8, 183),
(0xd0a1d187d0b5d182d0bed0b2d0bed0b4d181d182d0b2d0be, 184),
(0xd097d0b020d0bdd0b0d187d0b8d0bdd0b0d0b5d189d0b8, 185),
(0xd09fd180d0bed0b3d180d0b0d0bcd0b8d180d0b0d0bdd0b520d0b820d0b5d0b7d0b8d186d0b8, 186),
(0xd091d0b0d0b7d0b820d0b4d0b0d0bdd0bdd0b8, 187),
(0xd0a1d0b8d181d182d0b5d0bcd0bdd0b020d0b0d0b4d0bcd0b8d0bdd0b8d181d182d180d0b0d186d0b8d18f, 188),
(0xd09ad0bed0bcd0bfd18ed182d18ad180d0bdd0b820d0bcd180d0b5d0b6d0b8, 189),
(0x5765622044657369676e, 190),
(0xd09ed0bfd0b5d180d0b0d186d0b8d0bed0bdd0bdd0b820d181d0b8d181d182d0b5d0bcd0b8, 191),
(0xd09ad0bed0bcd0bfd18ed182d18ad180d0bdd0b020d0b3d180d0b0d184d0b8d0bad0b020d0b820d0b4d0b8d0b7d0b0d0b9d0bd, 192),
(0xd09ed184d0b8d18120d0bfd0b0d0bad0b5d182d0b8, 193),
(0x43414420d181d0b8d181d182d0b5d0bcd0b8, 194),
(0x4861726477617265, 195),
(0xd09fd180d0b5d0b2d0bed0b4d0bdd0b820d180d0bed0bcd0b0d0bdd0b820d0b820d180d0b0d0b7d0bad0b0d0b7d0b8, 196),
(0xd091d18ad0bbd0b3d0b0d180d181d0bad0b820d180d0bed0bcd0b0d0bdd0b820d0b820d180d0b0d0b7d0bad0b0d0b7d0b8, 197),
(0xd09fd0bed0b5d0b7d0b8d18f, 198),
(0xd091d18ad0bbd0b3d0b0d180d181d0bad0b020d0bfd0bed0b5d0b7d0b8d18f, 199),
(0xd0a1d0b5d0bdd182d0b5d0bdd186d0b8d0b820d0b820d0b0d184d0bed180d0b8d0b7d0bcd0b8, 200),
(0xd09fd183d0b1d0bbd0b8d186d0b8d181d182d0b8d0bad0b0, 201),
(0xd09cd0b8d182d0bed0bbd0bed0b3d0b8d18f, 202),
(0xd0a5d183d0bcd0bed180d0b8d181d182d0b8d187d0bdd0b820d0bad0bdd0b8d0b3d0b820d0b820d0b2d0b8d186d0bed0b2d0b5, 203),
(0xd091d0b8d0bed0b3d180d0b0d184d0b8d0b8, 204),
(0xd0a2d0b5d0bed180d0b8d18f20d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0d182d0b0, 205);

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

-- --------------------------------------------------------

--
-- Структура на таблица `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varbinary(1024) NOT NULL,
  `address` varbinary(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `publisher`
--

INSERT INTO `publisher` (`id`, `name`, `address`) VALUES
(22, 0xd0a2d0b5d185d0bdd0b8d187d0b5d181d0bad0b820d183d0bdd0b8d0b2d0b5d180d181d0b8d182d0b5d182202d20d0a1d0bed184d0b8d18f, 0xd0a1d0bed184d0b8d18f),
(23, 0xd09fd090d09d, 0xd0a1d0bed184d0b8d18f),
(24, 0xd092d0b0d0bad0bed0bd, 0xd0a1d0bed184d0b8d18f);

-- --------------------------------------------------------

--
-- Структура на таблица `reading_card`
--

CREATE TABLE `reading_card` (
  `id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `expire_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `reading_card`
--

INSERT INTO `reading_card` (`id`, `issue_date`, `expire_date`) VALUES
(26, '2018-07-11', '2018-07-28'),
(27, '2018-07-11', '2018-08-01'),
(28, '2018-07-11', '2018-08-04');

-- --------------------------------------------------------

--
-- Структура на таблица `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varbinary(1024) NOT NULL,
  `middle_name` varbinary(1024) NOT NULL,
  `last_name` varbinary(1024) NOT NULL,
  `reading_card_id` int(11) NOT NULL,
  `phone` varbinary(1024) NOT NULL,
  `e_mail` varbinary(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `user`
--

INSERT INTO `user` (`id`, `first_name`, `middle_name`, `last_name`, `reading_card_id`, `phone`, `e_mail`) VALUES
(23, 0xd0a1d182d0b5d184d0b0d0bd, 0xd098d0b2d0b0d0bdd0bed0b2, 0xd093d0b5d0bed180d0b3d0b8d0b5d0b2, 26, 0x2839343829203335342d32393433, 0x636172726572617340686f746d61696c2e636f6d),
(24, 0xd09ad0bed0bdd181d182d0b0d0bdd182d0b8d0bd, 0xd094d0b8d0bcd0b8d182d180d0bed0b2, 0xd0a1d182d0bed18fd0bdd0bed0b2, 27, 0x2836383029203932342d34343236, 0x6b6d696c6c6572406d61632e636f6d),
(25, 0xd09ad180d0b0d181d0b8d0bcd0b8d180, 0xd09fd0b5d0bdd187d0b5d0b2, 0xd093d0b5d0bed180d0b3d0b8d0b5d0b2, 28, 0x2835383529203639332d32353533, 0x7073686172706540686f746d61696c2e636f6d);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `reading_card`
--
ALTER TABLE `reading_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `book_author`
--
ALTER TABLE `book_author`
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);

--
-- Ограничения за таблица `book_genre`
--
ALTER TABLE `book_genre`
  ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`);

--
-- Ограничения за таблица `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения за таблица `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`reading_card_id`) REFERENCES `reading_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
