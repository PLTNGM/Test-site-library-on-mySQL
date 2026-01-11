-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Хост: MySQL-8.0
-- Время создания: Янв 11 2026 г., 18:23
-- Версия сервера: 8.0.43
-- Версия PHP: 8.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `library`
--

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
  `id` int UNSIGNED NOT NULL,
  `book` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Date` varchar(100) NOT NULL,
  `info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `book`, `Author`, `Date`, `info`, `img`) VALUES
(1, '«Илиада»', 'Гомер', '(IX—VIII века до н. э.) ', '«Илиада» посвящена событиям Троянской войны. «Одиссея» рассказывает о том, как после войны царь Итаки 10 лет добирался до дома.', 'img\\1_Zarubezhnaya_literatura_do_XIX_veka_1703749818-630x315.jpeg'),
(2, '«Фауст»', 'Иоганн Вольфганг фон Гёте', '1808 год', 'Учёный заключает сделку с дьяволом.', 'img\\2_Zarubezhnaya_literatura_pervoj_poloviny_XIX_veka_1703749821-630x315.jpeg'),
(3, '«Горе от ума»', 'Александр Грибоедов', '(1825 год)', 'Юный дворянин бросает свою девушку, чтобы отправиться в путешествие, и даже двух слов ей не пишет. А по возвращении попадает в любовный треугольник с подругой сердца, которая на него смертельно обижена, и её новым кавалером — корыстным «жалчайшим созданьем».', 'img\\3_Russkaya_literatura_pervoj_poloviny_XIX_veka_1703749825.jpeg'),
(4, '«Моби Дик, или Белый кит»', 'Герман Мелвилл', '(1851 год)', 'Американский моряк одержим идеей отомстить гигантскому белому киту — убийце китобоев.', 'img\\4_Zarubezhnaya_literatura_vtoroj_poloviny_XIX_veka_1703749829-630x315.jpeg'),
(5, '«Обломов»', 'Иван Гончаров', '(1859 год)', 'Очень ленивый дворянин постоянно лежит на диване в халате и, чуть что, зовёт своего слугу. И даже любовь к хорошей девушке не спасает его от смертельной лени.', 'img\\5_Russkaya_literatura_vtoroj_poloviny_XIX_veka_1703749832-630x315.jpeg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `book` (`book`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
