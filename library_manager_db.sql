-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 10 юли 2018 в 16:07
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
  `middle_name` varbinary(1024) NOT NULL,
  `last_name` varbinary(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Схема на данните от таблица `authors`
--

INSERT INTO `authors` (`id`, `first_name`, `middle_name`, `last_name`) VALUES
(4, 0xd09fd0b5d188d0be, 0xd09fd0b5d182d0bad0bed0b2, 0xd09fd0b5d182d180d0bed0b2),
(5, 0xd093d0b5d0bed180d0b3d0b8, 0xd094d0b0d0bdd0b0d0b8d0bbd0bed0b2, 0xd0a1d0b8d0bcd0b5d0bed0bdd0bed0b2),
(6, 0xd092d0b5d0bbd0b8d187d0bad0b0, 0xd09fd0b5d0bdd187d0b5d0b2d0b0, 0xd0a0d183d181d0b5d0b2d0b0),
(7, 0xd0a1d0bed0bdd18f, 0xd093d0b0d0b9d0b4d0b0d180d0bed0b2d0b0, 0xd09fd0b5d0bdd187d0b5d0b2d0b0),
(8, 0xd09cd0b8d185d0b0d0b8d0bb, 0xd099d0bed180d0b4d0b0d0bdd0bed0b2, 0xd092d0b5d0bbd0b8d0bad0bed0b2);

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
(0xd09dd0b0d180d0bdd0b8d18f, 6, 7, 0xd09dd0b0d180d0bdd0b8d18f2028d0bdd0b020d0b0d0bdd0b3d0bbd0b8d0b9d181d0bad0b83a204e61726e69612920d0b520d0b8d0bcd0b5d182d0be20d0bdd0b020d0b8d0b7d0bcd0b8d181d0bbd0b5d0bd20d181d0b2d18fd1822c20d181d18ad0b7d0b4d0b0d0b4d0b5d0bd20d0bed18220d09ad0bbd0b0d0b9d0b220d0a1d182d0b5d0b9d0bfd18ad0bbd18120d09bd183d0b8d1812e20d09220d09dd0b0d180d0bdd0b8d18f20d181d0b520d180d0b0d0b7d0b2d0b8d0b2d0b020d0bfd0bed187d182d0b820d186d18fd0bbd0bed182d0be20d0b4d0b5d0b9d181d182d0b2d0b8d0b520d0bed18220d184d0b5d0bdd182d18ad0b7d0b820d0bfd0bed180d0b5d0b4d0b8d186d0b0d182d0b020d0b7d0b020d0b4d0b5d186d0b020e2809ed0a5d180d0bed0bdd0b8d0bad0b8d182d0b520d0bdd0b020d09dd0b0d180d0bdd0b8d18fe2809c2e20d09220d09dd0b0d180d0bdd0b8d18f20d0b6d0b8d0b2d0bed182d0bdd0b8d182d0b520d0bcd0bed0b3d0b0d18220d0b4d0b020d0b3d0bed0b2d0bed180d18fd1822c20d0bcd0b8d182d0b8d187d0bdd0b8d182d0b520d0b7d0b2d0b5d180d0bed0b2d0b520d181d18ad189d0b5d181d182d0b2d183d0b2d0b0d1822c20d0b020d0bcd0b0d0b3d0b8d18fd182d0b020d0b520d0bdd0b5d189d0be20d0bdd0bed180d0bcd0b0d0bbd0bdd0be2e20d09fd0bed180d0b5d0b4d0b8d186d0b0d182d0b020d0bfd180d0bed181d0bbd0b5d0b4d18fd0b2d0b020d0b8d181d182d0bed180d0b8d18fd182d0b020d0bdd0b020d181d0b2d0b5d182d0b020d09dd0b0d180d0bdd0b8d18f20d0bed18220d181d18ad0b7d0b4d0b0d0b2d0b0d0bdd0b5d182d0be20d0bcd18320d0b4d0be20d0bdd0b5d0b3d0bed0b2d0b8d18f20d0bad180d0b0d0b92c20d0bad0b0d0bad182d0be20d0b820d0b6d0bed0b2d0bed182d0b020d0bdd0b020d185d0bed180d0b0d182d0b02c20d0bad0bed0b8d182d0be20d0bfd180d0b5d0bcd0b8d0bdd0b0d0b2d0b0d18220d0bed18220d0bdd0b0d188d0b8d18f20d181d0b2d18fd18220d0b220d09dd0b0d180d0bdd0b8d18f2e, 10, 3);

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

--
-- Схема на данните от таблица `book_genre`
--

INSERT INTO `book_genre` (`book_id`, `genre_id`) VALUES
(6, 14),
(6, 12);

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
(0xd09ad0bbd0b0d181d0b8d0bad0b0, 7),
(0xd0a5d183d0b4d0bed0b6d0b5d181d182d0b2d0b5d0bdd0b020d0bbd0b8d182d0b5d180d0b0d182d183d180d0b0, 8),
(0xd098d181d182d0bed180d0b8d187d0b5d181d0bad0b8, 9),
(0xd09cd183d0b7d0b8d0bad0b0, 10),
(0xd098d0b7d0bad183d181d182d0b2d0b0, 11),
(0xd0a0d0bed0bcd0b0d0bd, 12),
(0xd094d0b5d182d181d0bad0b8, 13),
(0xd0a4d0b5d0bdd182d18ad0b7d0b8, 14);

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
(7, 0xd0a1d0bed184d0b8d18f, 0xd0a1d0bed184d0b8d18f),
(8, 0xd092d0b0d180d0bdd0b0, 0xd092d0b0d180d0bdd0b0),
(9, 0xd092d0b5d0bbd0b8d0bad0be20d0a2d18ad180d0bdd0bed0b2d0be, 0xd092d0b5d0bbd0b8d0bad0be20d0a2d18ad180d0bdd0bed0b2d0be),
(10, 0xd09fd0bbd0bed0b2d0b4d0b8d0b2, 0xd09fd0bbd0bed0b2d0b4d0b8d0b2);

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
(16, '2018-07-10'),
(17, '2018-07-10'),
(18, '2018-07-10');

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
(14, 0xd094d0b0d0b2d0b8d0b4, 0xd09bd18ad187d0b5d0b7d0b0d180d0bed0b2, 0xd093d0b5d0bed180d0b3d0b8d0b5d0b2, 16, 0x30383933353134313133, 0x64617669642e6c2e67656f726769657640676d61696c2e636f6d),
(15, 0xd095d0bcd0b8d0bb, 0xd0a1d182d0bed0b9d0bdd0b5d0b2, 0xd0a7d0bed180d0b1d0b0d0b4d0b6d0b8d0b5d0b2, 17, 0x3038393533343233313237, 0x656d696c2e31322e64406162762e6267),
(16, 0xd093d0b8d0bdd0bad0b0, 0xd090d0bdd0b4d180d0b5d0b5d0b2d0b0, 0xd0a6d0bed0bdd187d0b5d0b2d0b0, 18, 0x30383838343533343233, 0x67696e6b613132333540676d61696c2e636f6d);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reading_card`
--
ALTER TABLE `reading_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
