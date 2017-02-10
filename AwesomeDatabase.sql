-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 10 2017 г., 15:26
-- Версия сервера: 10.1.16-MariaDB
-- Версия PHP: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `AwesomeDatabase`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Cars`
--

CREATE TABLE `Cars` (
  `id` int(11) NOT NULL,
  `reg_number` text COLLATE utf8_bin NOT NULL,
  `model` text COLLATE utf8_bin NOT NULL,
  `color` text COLLATE utf8_bin NOT NULL,
  `carcase` text COLLATE utf8_bin NOT NULL,
  `passenger` int(11) NOT NULL,
  `comfort_rate` int(11) NOT NULL,
  `baby_sit` int(11) NOT NULL,
  `wide_trunk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `Drivers`
--

CREATE TABLE `Drivers` (
  `id` int(11) NOT NULL,
  `first_name` text COLLATE utf8_bin NOT NULL,
  `last_name` text COLLATE utf8_bin NOT NULL,
  `father_name` text COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `available` int(1) NOT NULL,
  `working_time` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Cars`
--
ALTER TABLE `Cars`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Drivers`
--
ALTER TABLE `Drivers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Cars`
--
ALTER TABLE `Cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `Drivers`
--
ALTER TABLE `Drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
