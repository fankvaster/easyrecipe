-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 03 2021 г., 16:35
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `easyrecipe`
--

-- --------------------------------------------------------

--
-- Структура таблицы `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recipe` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `recipes`
--

INSERT INTO `recipes` (`id`, `product_id`, `product_name`, `recipe`) VALUES
(1, 1, 'молоко', 'Засыпьте хлопья в нужную вам емкость, залейте молоком и наслаждайтесь!'),
(2, 2, 'картофель', 'Как сделать салат Оливье с колбасой: Картофель отварить в кожуре, остудить, очистить, нарезать мелким кубиком. Отварить морковь, остудить, очистить, нарезать мелкими кубиками. Яйца отварить вкрутую, остудить, очистить, нарезать кубиками. Огурцы очистить от кожицы, нарезать мелкими кубиками. Зеленый лук измельчить. Нарезать колбасу кубиками. В миске смешать нарезанные овощи, зеленый горошек и майонез. Попробовать салат Оливье с колбасой на соль и досолить при необходимости по вкусу.'),
(3, 3, 'морковь', 'Как сделать салат Оливье с колбасой: Картофель отварить в кожуре, остудить, очистить, нарезать мелким кубиком. Отварить морковь, остудить, очистить, нарезать мелкими кубиками. Яйца отварить вкрутую, остудить, очистить, нарезать кубиками. Огурцы очистить от кожицы, нарезать мелкими кубиками. Зеленый лук измельчить. Нарезать колбасу кубиками. В миске смешать нарезанные овощи, зеленый горошек и майонез. Попробовать салат Оливье с колбасой на соль и досолить при необходимости по вкусу.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-recipes-product_id` (`product_id`),
  ADD KEY `idx-recipes-product_name` (`product_name`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `fk-recipes-product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-recipes-product_name` FOREIGN KEY (`product_name`) REFERENCES `products` (`product_name`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
