-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Май 22 2017 г., 15:00
-- Версия сервера: 10.1.19-MariaDB
-- Версия PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `task`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `cat_name`) VALUES
(1, 'category1'),
(2, 'category2'),
(3, 'category3');

-- --------------------------------------------------------

--
-- Структура таблицы `string`
--

CREATE TABLE `string` (
  `id` int(11) NOT NULL,
  `id_cat_name` int(11) NOT NULL,
  `id_subcat_name` int(11) DEFAULT NULL,
  `record` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `string`
--

INSERT INTO `string` (`id`, `id_cat_name`, `id_subcat_name`, `record`) VALUES
(1, 1, 1, 'records1'),
(2, 1, 1, 'records2'),
(3, 1, 2, 'records3'),
(4, 1, 2, 'records4'),
(5, 2, 1, 'records5'),
(6, 2, 2, 'records6'),
(7, 2, 3, 'records7'),
(8, 3, 0, 'records8'),
(9, 3, 0, 'records9'),
(10, 3, 0, 'records10');

-- --------------------------------------------------------

--
-- Структура таблицы `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `id_cat_name` int(11) NOT NULL,
  `subcat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subcategory`
--

INSERT INTO `subcategory` (`id`, `id_cat_name`, `subcat_name`) VALUES
(1, 1, 'subcategory1'),
(2, 1, 'subcategory2'),
(3, 2, 'subcategory3'),
(4, 2, 'subcategory4'),
(5, 2, 'subcategory5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `string`
--
ALTER TABLE `string`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `string`
--
ALTER TABLE `string`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
