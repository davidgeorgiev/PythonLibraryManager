-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 юли 2018 в 10:35
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
(24, 0xd094d0b0d0bdd0b8d0b5d0bb, 0xd0a1d182d0b8d0b9d0bb),
(25, 0xd09dd0b8d0bad0b8, 0xd0a4d180d0b5d0bdd187),
(26, 0xd091d180d0b0d182d18f, 0xd093d180d0b8d0bc),
(27, 0xd098d0b2d0b0d0bd, 0xd092d0b0d0b7d0bed0b2),
(28, 0xd0a0d0b0d0bd, 0xd091d0bed181d0b8d0bbd0b5d0ba);

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
(0xd09ed0bfd0b0d181d0bdd0b820d0b8d0b3d180d0b8, 32, 26, 0xd0a2d0b5d0bbd0b5d0b2d0b8d0b7d0b8d0bed0bdd0bdd0b8d18fd18220d0bad0bed180d0b5d181d0bfd0bed0bdd0b4d0b5d0bdd18220d090d0bbd0b8d0bad18120d0a4d0b8d0bbd0b8d0bfd18120d0bdd0b0d180d183d188d0b0d0b2d0b020d0bfd180d0b0d0b2d0b8d0bbd0b0d182d0b020d0b220d0b8d0bcd0b5d182d0be20d0bdd0b020d0bdd0b0d0b92dd0b2d0b0d0b6d0bdd0b8d182d0b520d0bdd0bed0b2d0b8d0bdd0b82e20d0a2d18f20d180d0b0d0b1d0bed182d0b820d18120d0bed0bfd0b5d180d0b0d182d0bed180d0b020d091d0b5d0bd20d0a7d0b0d0bfd0bcd0b0d0bd202d20d0b1d0b8d0b2d18820d0b2d0bed0b5d0bdd0bdd0bed0bcd0bed180d181d0bad0b820d182d18ed0bbd0b5d0bd2c20d0b820d181d0b520d0b2d0b4d18ad185d0bdd0bed0b2d18fd0b2d0b020d0bed18220d180d0b8d181d0bad0bed0b2d0b5d182d0b520d0b820d0b2d0b8d185d180d0b5d0bdd0b0d182d0b020d181d0bad0bed180d0bed181d18220d0bdd0b020d180d0b0d0b1d0bed182d0b0d182d0b020d181d0b82e20d092d0bdd0b5d0b7d0b0d0bfd0bdd0be20d0bfd0bed0bfd0b0d0b4d0b020d0bdd0b020d0b5d0bad181d0bfd0bbd0bed0b7d0b8d0b2d0b5d0bd20d0bcd0b0d182d0b5d180d0b8d0b0d0bb2c20d0bad0bed0b9d182d0be20d189d0b520d0bfd180d0bed0bcd0b5d0bdd0b820d0b6d0b8d0b2d0bed182d0b020d0bdd0b020d0bcd0bdd0bed0b7d0b8d0bdd0b03a20d180d0b0d0b7d181d0bbd0b5d0b4d0b2d0b0d0bdd0b520d0bfd0be20d0b8d0b7d0bed0b1d0bbd0b8d187d0b8d182d0b5d0bbd0bdd0b820d182d0b2d18ad180d0b4d0b5d0bdd0b8d18f20d0b7d0b020d0b2d0b8d186d0b5d0bfd180d0b5d0b7d0b8d0b4d0b5d0bdd182d0b020d0bdd0b020d0a1d18ad0b5d0b4d0b8d0bdd0b5d0bdd0b8d182d0b520d189d0b0d182d0b820d0a2d0bed0bdd0b820d09ad0bbd0b0d180d0ba2e0a0ad090d0bbd0b8d0bad18120d0b7d0b0d0bfd0bed187d0b2d0b020d0bed18220d09ed0bbd0b8d0bcd0bfd0b8d18f20d0a4d0bed181d182d18ad180202d20d0b2d0b4d0bed0b2d0b8d186d0b020d0bdd0b020d0bfd180d0bed187d183d18220d0b0d0bcd0b5d180d0b8d0bad0b0d0bdd181d0bad0b820d181d0b5d0bdd0b0d182d0bed1802c20d0bfd0bed0b2d0b0d0bbd0b5d0bd20d0bed18220d0bad183d180d188d183d0bcd0b020d0bdd0b020d183d0b1d0b8d0b5d1862e20d09ad180d0b5d185d0bad0b0d182d0b020d0b820d181d0b0d0bcd0bed182d0bdd0b020d0b6d0b5d0bdd0b020d182d18ad180d181d0b820d0b5d0bcd0bed186d0b8d0bed0bdd0b0d0bbd0bdd0b020d0bfd0bed0b4d0bad180d0b5d0bfd0b020d0bed18220d09ad0bbd0b0d180d0ba2c20d0bad0bed0b9d182d0be20d0b2d0bbd0b8d0b7d0b020d0b220d180d0bed0bbd18fd182d0b020d0bdd0b020d0bdd0b5d0b8d0bd20d0b7d0b0d0bad180d0b8d0bbd0bdd0b8d0ba2e20d09ad0bed0b3d0b0d182d0be20d180d0b0d0b7d181d0bbd0b5d0b4d0b2d0b0d0bdd0b5d182d0be20d181d0b520d0b7d0b0d0b4d18ad0bbd0b1d0bed187d0b0d0b2d0b02c20d184d0b5d0b4d0b5d180d0b0d0bbd0bdd0b8d182d0b520d0b0d0b3d0b5d0bdd182d0b820d0bdd0b0d0b4d183d188d0b2d0b0d18220d181d0bbd0b5d0b4d0b0d182d0b02e20d09820d0b7d0b0d0bfd0bbd0b0d185d0b8d182d0b520d0b7d0b0d0bfd0bed187d0b2d0b0d1822e20d097d0b0d0bbd0bed0b7d0b8d182d0b520d181d0b520d0bfd0bed0bad0b0d187d0b2d0b0d1822e20d0a1d0bad0bed180d0be20d090d0bbd0b8d0bad18120d0b820d091d0b5d0bd20d180d0b0d0b7d0b1d0b8d180d0b0d1822c20d187d0b520d181d0b520d0b1d0bed180d18fd18220d181d180d0b5d189d18320d0b4d0b0d0bbd0b5d18720d0bfd0be2dd0b7d0bbd0bed0b2d0b5d18920d0bfd180d0bed182d0b8d0b2d0bdd0b8d0ba2c20d0bed182d0bad0bed0bbd0bad0bed182d0be20d181d0b020d181d0b820d0bfd180d0b5d0b4d181d182d0b0d0b2d18fd0bbd0b82e2e2e0ad095d0b4d0bdd0b020d0b5d0bad181d0bfd0bbd0bed0b7d0b8d0b2d0bdd0b020d094d0b0d0bdd0b8d0b5d0bb20d0a1d182d0b8d0b9d0bb2e0ad09fd18ad0b1d0bbd0b8d188d18ad180d18120d0a3d0b8d0bad0bbd0b80a0ad098d0b4d0b5d0b0d0bbd0bdd0b020d0bad0bed0bcd0b1d0b8d0bdd0b0d186d0b8d18f20d0bed18220d0b2d18ad0bbd0bdd0b5d0bdd0b8d0b52c20d0b8d0bdd182d180d0b8d0b3d0b820d0b820d0b7d0b0d0b4d18ad0bbd0b1d0bed187d0b5d0bdd0bed181d1822c20d0bbd0b5d0bad0be20d0bfd0bed180d18ad181d0b5d0bdd0b020d18120d180d0bed0bcd0b0d0bdd182d0b8d0bad0b02e0a476f6f647265616473, 3, 15),
(0xd091d0b5d0b7d0bad180d0b0d0b5d0bd20d187d0b5d182d0b2d18ad180d182d18ad0ba, 33, 27, 0xd09fd0bed180d0b5d0b4d0b8d186d0b0d182d0b020d0bfd181d0b8d185d0bed0bbd0bed0b3d0b8d187d0b5d181d0bad0b820d182d180d0b8d0bbd18ad180d0b820d0bdd0b020d09dd0b8d0bad0b820d0a4d180d0b5d0bdd18720d18120d0b3d0bbd0b0d0b2d0bdd0b020d0b3d0b5d180d0bed0b8d0bdd18f20d0bfd181d0b8d185d0bed182d0b5d180d0b0d0bfd0b5d0b2d182d18ad18220d0a4d180d0b8d0b4d0b020d09ad0bbd0b0d0b9d0bd20d0bfd180d0bed0b4d18ad0bbd0b6d0b0d0b2d0b020d18120d0bed189d0b520d0b8d0b7d0bfd0b8d182d0b0d0bdd0b8d18f20d0b7d0b020d0b3d0bbd0b0d0b2d0bdd0b8d182d0b520d0b3d0b5d180d0bed0b82e0a0ad09fd180d0b5d0b4d0b820d0b4d0b2d0b0d0b4d0b5d181d0b5d18220d0b3d0bed0b4d0b8d0bdd0b820d182d0b8d0b9d0bdd0b5d0b9d0b4d0b6d18ad180d0bad0b0d182d0b020d0a4d180d0b8d0b4d0b020d09ad0bbd0b0d0b9d0bd20d0b520d0bdd0b0d0bfd0b0d0b4d0bdd0b0d182d0b020d0b6d0b5d181d182d0bed0bad0be20d0b220d181d0bed0b1d181d182d0b2d0b5d0bdd0b8d18f20d181d0b820d0b4d0bed0bc2e20d0a2d0bed0b3d0b0d0b2d0b020d0bdd0b8d0bad0bed0b920d0bdd0b520d0b8d181d0bad0b020d0b4d0b020d19d20d0bfd0bed0b2d18fd180d0b2d0b0202d20d0bdd0b8d182d0be20d0bfd0bed0bbd0b8d186d0b8d18fd182d0b02c20d0bdd0b8d182d0be20d0bcd0b0d0b9d0bad0b020d19d2c20d0bdd0b8d182d0be20d0bfd180d0b8d18fd182d0b5d0bbd0b8d182d0b520d19d2e20d0a2d18f20d0bdd0b0d0bfd183d181d0bad0b020d0b3d180d0b0d0b4d0b02c20d0b7d0b0d0b2d18ad180d188d0b2d0b020d0bfd181d0b8d185d0bed0bbd0bed0b3d0b8d18f20d0b820d0bdd0b8d0bad0bed0b3d0b020d0bdd0b520d181d0b520d0b2d180d18ad189d0b02e0a0ad0a1d0b5d0b3d0b020d0bfd0bed18fd0b2d0b0d182d0b020d0bdd0b020d181d182d0b0d180d0b020d181d18ad183d187d0b5d0bdd0b8d187d0bad0b020d0bdd0b020d0a4d180d0b8d0b4d0b020d0bfd180d0bed0bcd0b5d0bdd18f20d0bfd180d0b0d0b2d0b8d0bbd0b0d182d0b020d0bdd0b020d0b8d0b3d180d0b0d182d0b02e20d0a2d18f20d0bcd0bed0bbd0b820d09ad0bbd0b0d0b9d0bd20d0b7d0b020d0bfd0bed0bcd0bed18920d0b7d0b020d0b4d18ad189d0b5d180d18f20d181d0b82c20d0bad0bed18fd182d0be20d182d0b2d18ad180d0b4d0b82c20d187d0b520d0b520d0b1d0b8d0bbd0b020d0bdd0b0d0bfd0b0d0b4d0bdd0b0d182d0b020d18320d0b4d0bed0bcd0b02e20d09dd0b8d0bad0bed0b920d0bdd0b520d0b2d18fd180d0b2d0b020d0bdd0b020d0b8d181d182d0bed180d0b8d18fd182d0b020d0bdd0b020d0bcd0bed0bcd0b8d187d0b5d182d0be2e20d095d0b4d0bdd0be20d182d0b5d0b6d0bad0be20d181d18ad0b1d0b8d182d0b8d0b52c20d0bad0bed0b5d182d0be20d0bfd180d0b8d0bbd0b8d187d0b020d0b4d0be20d0b1d0bed0bbd0bad0b020d0bdd0b020d181d0bbd183d187d0b8d0bbd0bed182d0be20d181d0b520d18120d0a4d180d0b8d0b4d0b02e0a0ad0a4d180d0b8d0b4d0b020d0bfd0bed0bfd0b0d0b4d0b020d0b220d182d18ad0bcd0bdd0b8d0bdd0b0d182d0b02c20d0bed18220d0bad0bed18fd182d0be20d183d0bcd18ad18220d19d20d181d0b520d0b520d0bed0bfd0b8d182d0b2d0b0d0bb20d0b4d0b020d0b8d0b7d0b1d18fd0b3d0b020d182d0bed0bbd0bad0bed0b2d0b020d0b3d0bed0b4d0b8d0bdd0b82c20d0bad0bed0b3d0b0d182d0be20d181d0b520d0b7d0b0d0b2d180d18ad189d0b020d0b220d180d0bed0b4d0bdd0b8d18f20d181d0b820d0b3d180d0b0d0b4202d20d0bcd18fd181d182d0be2c20d0bad180d0b8d0b5d189d0be20d183d0b6d0b0d181d0bdd0b020d182d0b0d0b9d0bdd0b02e2e2e20d09020d182d0b0d0bc20d0bdd0b8d189d0be20d0bdd18fd0bcd0b020d0b4d0b020d0bfd0bed0bfd180d0b5d187d0b820d0bdd0b020d182d0b5d0b7d0b82c20d0bad0bed0b8d182d0be20d18f20d0b7d0bdd0b0d18fd1822c20d0b4d0b020d181d0bfd180d0b0d18220d0a4d180d0b8d0b4d0b020d0b4d0b020d0bed182d0bad180d0b8d0b520d0b8d181d182d0b8d0bdd0b0d182d0b02e0ad0a7d0b5d182d0b2d18ad180d182d18ad0ba20d0b520d0bad180d18ad0b3d0bed0b2d180d0b0d18220d0bed18220d0bcd180d0b0d187d0bdd0b820d0b8d181d182d0b8d0bdd0b82e20d094d0b2d0b520d0bfd180d0b5d181d182d18ad0bfd0bbd0b5d0bdd0b8d18f2c20d180d0b0d0b7d0bbd0b8d187d0bdd0b820d0bfd0bed0bad0bed0bbd0b5d0bdd0b8d18f2e2e2e20d097d0b0d0bfd0bbd0b5d182d0b5d0bd20d0bfd181d0b8d185d0bed0bbd0bed0b3d0b8d187d0b5d181d0bad0b820d181d18ed0b6d0b5d1822c20d0bfd180d0b5d0b4d181d182d0b0d0b2d0b5d0bd20d0bfd0be20d0bdd0b0d0b92dd0b4d0bed0b1d180d0b8d18f20d0bdd0b0d187d0b8d0bd2e0a426f6f6b6c6973740a0ad0a9d0b520d181d18ad187d183d0b2d181d182d0b2d0b0d182d0b520d0bdd0b020d0a4d180d0b8d0b4d0b02c20d0b4d0bed0bad0b0d182d0be20d181d182d180d0b0d0b4d0b020d0bed18220d181d182d0b0d180d0b8d182d0b520d181d0b820d180d0b0d0bdd0b82c20d0b820d189d0b520d0bbd0b8d0bad183d0b2d0b0d182d0b52c20d0bad0bed0b3d0b0d182d0be20d0b7d0b0d180d0b0d181d0bdd0b0d1822e0a4b69726b757320526576696577730a0ad093d180d0b0d0b1d0b2d0b0d189d0b0d182d0b020d0bcd0b8d181d182d0b5d180d0, 5, 17.95),
(0xd09dd0b0d0b92dd185d183d0b1d0b0d0b2d0b8d182d0b520d0bfd180d0b8d0bad0b0d0b7d0bad0b83a20d091d180d0b0d182d18f20d093d180d0b8d0bc, 34, 28, 0xd09220d0bad0bdd0b8d0b3d0b0d182d0b020d181d0b020d181d18ad0b1d180d0b0d0bdd0b820d0b5d0b4d0bdd0b820d0bed18220d0bdd0b0d0b92dd185d183d0b1d0b0d0b2d0b8d182d0b520d0bfd180d0b8d0bad0b0d0b7d0bad0b820d0bdd0b020d091d180d0b0d182d18f20d093d180d0b8d0bc202d20d0a1d0bdd0b5d0b6d0b0d0bdd0bad0b02c20d092d18ad0bbd0bad18ad18220d0b820d181d0b5d0b4d0b5d0bcd182d0b520d0bad0bed0b7d0bbd0b5d182d0b02c20d0a5d180d0b0d0b1d180d0b8d18fd18220d188d0b8d0b2d0b0d1872c20d0a0d0b0d0bfd183d0bdd186d0b5d0bb2c20d0a5d0b5d0bdd0b7d0b5d0bb20d0b820d093d180d0b5d182d0b5d0bb2c20d0a0d0b8d0b1d0b0d180d18fd18220d0b820d0b7d0bbd0b0d182d0bdd0b0d182d0b020d180d0b8d0b1d0bad0b02c20d091d180d0b5d0bcd0b5d0bdd181d0bad0b8d182d0b520d0bcd183d0b7d0b8d0bad0b0d0bdd182d0b820d0b820d0b4d180d183d0b3d0b82e, 10, 17.9),
(0xd095d0bfd0bed0bfd0b5d18f20d0bdd0b020d0b7d0b0d0b1d180d0b0d0b2d0b5d0bdd0b8d182d0b5, 35, 29, 0xd095d0bfd0bed0bfd0b5d18f20d0bdd0b020d0b7d0b0d0b1d180d0b0d0b2d0b5d0bdd0b8d182d0b520d0bdd0b0d0bfd0bed0bcd0bdd18f20d0b3d0b8d0b3d0b0d0bdd182d181d0bad0b8d182d0b520d184d180d0b5d181d0bad0b820d0bdd0b020d09cd0b8d0bad0b5d0bbd0b0d0bdd0b4d0b6d0b5d0bbd0bed0b2d0b8d18f20d0a1d182d180d0b0d188d0b5d0bd20d181d18ad0b42e20d09fd0b5d180d0bed182d0be20d0bdd0b020d0bfd0bed0b5d182d0b020d0bed0b6d0b8d0b2d18fd0b2d0b020d0b1d0b0d182d0b0d0bbd0bdd0b820d181d186d0b5d0bdd0b8e280af2d20d0b3d0b5d180d0bed0b9d181d182d0b2d0bed182d0be20d0b820d0bfd0bed0b4d0b2d0b8d0b3d0b02c20d0bad180d0b0d182d0bad0bed182d180d0b0d0b9d0bdd0bed182d0be20d0bed0bfd0b8d18fd0bdd18fd0b2d0b0d0bdd0b520d0bed18220d181d0b2d0bed0b1d0bed0b4d0b0d182d0b02c20d183d0b6d0b0d181d0b020d0bdd0b020d0bdd0b0d181d0b8d0bbd0b8d0b5d182d0be2c20d0bed182d187d0b0d18fd0bdd0b8d0b5d182d0be20d0b820d0bfd0bed0bad180d183d181d0b0d182d0b02c20d181d0b0d0bcd0bed0b6d0b5d180d182d0b2d0b0d182d0b020d0b820d0bfd0bed187d182d0b820d0b5d181d185d0b0d182d0bed0bbd0bed0b3d0b8d187d0bdd0b0d182d0b020d0b2d18fd180d0b020d0b2d18ad0b220d0b2d18ad180d185d0bed0b2d0bdd0b8d18f20d181d0bcd0b8d181d18ad0bb20d0bdd0b020d182d0b0d0b7d0b820d0b6d0b5d180d182d0b2d0b020d0bfd180d0b5d0b420d183d181d0b5d189d0b0d0bdd0b5d182d0be20d0b7d0b020d0b1d18ad0b4d0b5d189d0b8d18f20d181d0bbd18ad0bdd187d0b5d0b220d0bbd18ad18720d0bdd0b020d09ed181d0b2d0bed0b1d0bed0b6d0b4d0b5d0bdd0b8d0b5d182d0be2e0a0ad0a120d095d0bfd0bed0bfd0b5d18f20d0bdd0b020d0b7d0b0d0b1d180d0b0d0b2d0b5d0bdd0b8d182d0b520d092d0b0d0b7d0bed0b220d0bdd0b520d181d0b0d0bcd0be20d180d0b0d0b7d0b8d181d0bad180d18f20d0bfd0bbd0b0d0bcd18ad0bad0b020d0bdd0b020d0bdd0b0d186d0b8d0bed0bdd0b0d0bbd0bdd0bed182d0be20d0bdd0b820d181d0b0d0bcd0bed187d183d0b2d181d182d0b2d0b8d0b520d0b820d0b3d0bed180d0b4d0bed181d1822c20d0bdd0be20d0b820d0b3d0b0d0bbd0b2d0b0d0bdd0b8d0b7d0b8d180d0b020d0b2d18fd180d0b0d182d0b020d0bdd0b820d0b220d0b8d181d182d0bed180d0b8d187d0b5d181d0bad0bed182d0be20d0b1d18ad0b4d0b5d189d0b520d0bdd0b020d0bdd0b0d186d0b8d18fd182d0b02c20d182d0bbd0b0d181d0bad0b020d0b4d183d185d0b020d0b220d0b4d180d183d0b3d0b82c20d0bfd0be2dd0b2d0b8d181d0bed0bad0b820d0bed180d0b1d0b8d182d0b82e, 7, 15),
(0xd0a1d0b2d0b5d182d18ad18220d0bdd0b020d0bfd180d0b8d0bad0b0d0b7d0bad0b8d182d0b53a20d0a0d0b0d0bd20d091d0bed181d0b8d0bbd0b5d0ba, 36, 28, 0xd09220d182d0b0d0b7d0b820d0bad0bdd0b8d0b6d0bad0b020d0b8d0bcd0b020d0bfd180d0b8d0bad0b0d0b7d0bad0b8d182d0b53a0ad09ad0bed181d0b520d091d0bed181d0b50ad09ad0bbd0b0d0bd2c20d0bdd0b5d0b4d0bed0bad0bbd0b0d0bd0ad09ad183d0bcd0b020d09bd0b8d181d0b020d0bad180d18ad181d182d0bdd0b8d186d0b00ad094d0b2d0b5d181d182d0b020d0b820d0b4d0b2d0b0d0b9d181d0b5d18220d185d0b8d182d180d0b8d0bdd0b80ad094d18fd0b4d0be20d0b820d180d18fd0bfd0b00ad09dd0b5d180d0bed0b4d0b5d0bdd0b020d0bcd0bed0bcd0b020d0b820d0b4d1802e, 10, 10.9);

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
(24, 32),
(25, 33),
(26, 34),
(27, 35),
(28, 36);

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
(32, 196),
(33, 196),
(34, 206),
(34, 47),
(35, 207),
(35, 209),
(35, 208),
(36, 210),
(36, 206),
(36, 47);

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
(0xd0a2d0b5d0bed180d0b8d18f20d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0d182d0b0, 205),
(0xd09fd180d0b5d0bfd0bed180d18ad187d0b8d182d0b5d0bbd0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b020d0b7d0b020332dd182d0b820d0bad0bbd0b0d181, 206),
(0xd091d18ad0bbd0b3d0b0d180d181d0bad0b820d180d0bed0bcd0b0d0bdd0b820d0b820d180d0b0d0b7d0bad0b0d0b7d0b8, 207),
(0xd09fd180d0b5d0bfd0bed180d18ad187d0b8d182d0b5d0bbd0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b020d0b7d0b020372dd0bcd0b820d0bad0bbd0b0d181, 208),
(0xd09fd180d0b5d0bfd0bed180d18ad187d0b8d182d0b5d0bbd0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b020d0b7d0b02031312dd182d0b820d0bad0bbd0b0d181, 209),
(0xd09fd180d0b5d0bfd0bed180d18ad187d0b8d182d0b5d0bbd0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b020d0b7d0b020322dd180d0b820d0bad0bbd0b0d181, 210);

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
(29, 34, '2018-07-12', '2018-07-26', 0, NULL, 9),
(33, 34, '2018-06-28', '2018-07-12', 0, NULL, 10),
(29, 35, '2018-06-27', '2018-07-11', 0, NULL, 11),
(35, 32, '2018-06-29', '2018-07-13', 0, NULL, 12),
(33, 33, '2018-07-12', '2018-07-26', 0, NULL, 13),
(29, 36, '0000-00-00', '2018-07-26', 0, NULL, 14),
(31, 32, '0000-00-00', '2018-07-26', 0, NULL, 15),
(34, 32, '0000-00-00', '2018-07-26', 0, NULL, 16);

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
(25, 0xd09fd180d0bed181d0b2d0b5d182d0b0, 0xd0a1d0bed184d0b8d18f),
(26, 0xd091d0b0d180d0b4, 0xd0a1d0bed184d0b8d18f),
(27, 0x414d47205075626c697368696e67, 0xd0a1d0bed184d0b8d18f),
(28, 0xd09fd0b0d0bd, 0xd0a1d0bed184d0b8d18f),
(29, 0xd097d0b0d185d0b0d180d0b8d0b920d0a1d182d0bed18fd0bdd0bed0b2, 0xd0a1d0bed184d0b8d18f);

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
(30, '2018-07-12', '2018-07-31'),
(31, '2018-07-12', '2018-07-25'),
(32, '2018-07-12', '2018-08-04'),
(33, '2018-07-12', '2018-07-09'),
(34, '2018-07-12', '2018-07-19'),
(35, '2018-07-12', '2018-08-04'),
(36, '2018-07-12', '2019-07-12'),
(37, '2018-07-12', '2019-07-12'),
(38, '2018-07-12', '2019-07-12');

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
(27, 0xd09fd0b5d182d18ad180, 0xd098d0b2d0b0d0bdd0bed0b2, 0xd093d0b5d0bed180d0b3d0b8d0b5d0b2, 30, 0x30383934353334323331, 0x70657475725f6976616e6f764061732e636e),
(28, 0xd093d0b5d0bed180d0b3d0b8, 0xd0a1d0b0d0bcd183d0b8d0bbd0bed0b2, 0xd094d0b8d0bcd0b8d182d180d0bed0b2, 31, 0x30373836343335323433, 0x67656f72676940666e2e6465),
(29, 0xd099d0bed180d0b4d0b0d0bd, 0xd0a1d182d0b0d0bdd0b8d181d0bbd0b0d0b2d0bed0b2, 0xd09ad0bed181d182d0bed0b2, 32, 0x30383933353436353332, 0x696f7264616e40676d61696c2e636f6d),
(30, 0xd09ad180d0b8d181d182d0b8d18fd0bd, 0xd09fd0b5d0bdd187d0b5d0b2, 0xd09ad0bed0bdd181d182d0b0d0bdd182d0b8d0bdd0bed0b2, 33, 0x30383935343335343332, 0x6b7269737469616e406d61696c2e6267),
(31, 0xd09ad0b0d0bcd0b5d0bbd0b8d18f, 0xd0a1d0b0d0bcd183d0b8d0bbd0bed0b2d0b0, 0xd09fd18ad180d0b2d0b0d0bdd0bed0b2d0b0, 34, 0x39373834353433353436, 0x6b616d6940667265652e636f6d),
(32, 0xd092d0b5d0bbd0b8d0b7d0b0d180, 0xd09dd0b5d0bdd187d0b5d0b2, 0xd0a1d0b8d0bcd0b5d0bed0bdd0bed0b2, 35, 0x30383539343334353233, 0x76616c697a6172323340676d61696c2e636f6d),
(33, 0xd09ad0b0d0bbd0b8d0bdd0b0, 0xd090d0bbd0b5d0bad181d0b0d0bdd0b4d180d0b8d0bdd0bed0b2d0b0, 0xd0a2d0b5d0bcd0b5d0bdd183d0b6d0bad0bed0b2d0b0, 36, 0x38393534373335343332, 0x616c65782e74656d406d61696c2e6465),
(34, 0xd0a2d0bed0b4d0bed180, 0xd09cd0b8d185d0b0d0b9d0bbd0bed0b2, 0xd094d0b8d0bcd0bed0b2, 37, 0x34383537343633353432, 0x746f73686b6f3132406162762e6267),
(35, 0xd094d0b5d0bdd0b8d181, 0xd093d0bed188d0b5d0b2, 0xd09cd0b0d0bbd0b5d0b2, 38, 0x35383637343533343332, 0x64656e2e676f4068692e6f7267);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

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
  ADD CONSTRAINT `book_author_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `book_author_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`);

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
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Ограничения за таблица `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`reading_card_id`) REFERENCES `reading_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
