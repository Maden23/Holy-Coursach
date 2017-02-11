-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 11 2017 г., 16:27
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

--
-- Дамп данных таблицы `Cars`
--

INSERT INTO `Cars` (`id`, `reg_number`, `model`, `color`, `carcase`, `passenger`, `comfort_rate`, `baby_sit`, `wide_trunk`) VALUES
(1, 'P235OK77', 'Volkswagen Polo', 'Белый', 'Седан', 5, 2, 1, 0),
(2, 'A673HC99', 'Hyundai Solaris', 'Серый', 'Седан', 5, 2, 1, 0),
(3, 'B723TO197', 'Kia Rio', 'Синий', 'Седан', 5, 2, 0, 0),
(4, 'C568KM777', 'Renault Logan', 'Серебристый', 'Седан', 5, 2, 0, 0),
(5, 'T725AC97', 'Chevrolet Lacetti', 'Белый', 'Универсал', 5, 2, 1, 1),
(6, 'X435HC199', 'Lada Granta', 'Черный', 'Седан', 5, 1, 0, 0),
(7, 'H124EE97', 'Ford S-Max', 'Желтый', 'Минивэн', 7, 3, 1, 1),
(8, 'T323AT199', 'Nissan Teana', 'Черный', 'Седан', 5, 4, 0, 0),
(9, 'K555MP77', 'Mercedes-Benz S-Class', 'Черный', 'Седан', 5, 5, 0, 0),
(10, 'A671AB77', 'Chevrolet Cruze', 'Желтый', 'Универсал', 5, 2, 1, 1),
(11, 'H809TH77', 'Volkswagen Caravelle', 'Серебристый', 'Минивэн', 8, 3, 1, 1),
(12, 'P325YC177', 'Lada Vesta', 'Серебристый', 'Седан', 5, 2, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Drivers`
--

CREATE TABLE `Drivers` (
  `id` int(11) NOT NULL,
  `last_name` text COLLATE utf8_bin NOT NULL,
  `first_name` text COLLATE utf8_bin NOT NULL,
  `father_name` text COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  `xp` int(11) NOT NULL,
  `available` int(1) NOT NULL,
  `working_time` int(11) NOT NULL,
  `car_id` int(11) NOT NULL,
  `location` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `Drivers`
--

INSERT INTO `Drivers` (`id`, `last_name`, `first_name`, `father_name`, `age`, `xp`, `available`, `working_time`, `car_id`, `location`) VALUES
(1, 'Киселёв', 'Егор', 'Олегович', 19, 1, 1, 8, 1, 1),
(2, 'Зубов', 'Виктор', 'Михайлович', 65, 33, 1, 8, 2, 2),
(3, 'Лебедев', 'Андрей', 'Андреевич', 28, 7, 1, 8, 3, 3),
(4, 'Евсеев', 'Никита', 'Алексеевич', 31, 6, 1, 8, 4, 4),
(5, 'Яковлев', 'Юрий', 'Вениаминович', 57, 28, 1, 8, 5, 5),
(6, 'Щербаков', 'Игорь', 'Евгеньевич', 26, 3, 1, 8, 6, 6),
(7, 'Гаврилов', 'Иван', 'Александрович', 36, 15, 1, 8, 7, 7),
(8, 'Лихачёв', 'Никита', 'Валерьевич', 20, 2, 1, 8, 8, 8),
(9, 'Фомин', 'Николай', 'Сергеевич', 44, 19, 1, 8, 9, 9),
(10, 'Веселов', 'Дмитрий', 'Артемьевич', 25, 6, 1, 8, 10, 10),
(11, 'Поляков', 'Владимир', 'Васильевич', 34, 6, 1, 8, 11, 11),
(12, 'Молчанов', 'Антон', 'Кириллович', 30, 11, 1, 8, 12, 12);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `Drivers`
--
ALTER TABLE `Drivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
