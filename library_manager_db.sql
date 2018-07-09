-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:  9 юли 2018 в 17:41
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
(22, 'David', 'Lachezarov', 'Georgiev');

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
('title', 16, 2, 'bla bla', 2, 12.5);

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
  `returned_on_date` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура на таблица `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(35, '2018-07-09');

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
(37, 'David', 'Lachezarov', 'Georgiev', 35, '0893514113', 'david.l.georgiev@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `publisher_id` (`publisher_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reading_card`
--
ALTER TABLE `reading_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reading_card_id` (`reading_card_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reading_card`
--
ALTER TABLE `reading_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- Ограничения за дъмпнати таблици
--

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
  ADD CONSTRAINT `book_genre_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `book_genre_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения за таблица `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`);

--
-- Ограничения за таблица `publisher`
--
ALTER TABLE `publisher`
  ADD CONSTRAINT `publisher_ibfk_1` FOREIGN KEY (`id`) REFERENCES `book` (`publisher_id`);

--
-- Ограничения за таблица `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`reading_card_id`) REFERENCES `reading_card` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
