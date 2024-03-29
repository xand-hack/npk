-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 27 2024 г., 18:40
-- Версия сервера: 8.0.30
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `meal_planner`
--

-- --------------------------------------------------------

--
-- Структура таблицы `meals`
--

CREATE TABLE `meals` (
  `id` int NOT NULL,
  `type` varchar(20) NOT NULL,
  `meal_type` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `composition` text NOT NULL,
  `protein` decimal(5,2) NOT NULL,
  `fat` decimal(5,2) NOT NULL,
  `carbohydrates` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `meals`
--

INSERT INTO `meals` (`id`, `type`, `meal_type`, `name`, `composition`, `protein`, `fat`, `carbohydrates`) VALUES
(1, 'Diet', 'breakfast', 'Коктейль с бананом и орехами', 'банан, миндальное молоко, грецкие орехи', '12.00', '5.00', '30.00'),
(2, 'Diet', 'breakfast', 'Ягодный смузи с овсянкой', 'малина, черника, банан, овсянка', '8.00', '5.00', '30.00'),
(3, 'Diet', 'breakfast', 'Киноа с фруктами и орехами', 'Киноа, ананас, манго, миндаль', '12.00', '10.00', '40.00'),
(4, 'Diet', 'breakfast', 'Омлет с овощами', 'яйца, помидоры, шпинат, перец', '10.00', '20.00', '10.00'),
(5, 'Diet', 'lunch', 'Тушеный лосось с картошкой', 'Тушеный лосось, Запеченная картошка, брокколи, салат,помидоры', '25.00', '15.00', '30.00'),
(6, 'Diet', 'lunch', 'Куриный салат с киноа', 'Куриное филе, киноа, грецкие орехи, помидоры, огурцы, лимонный соус', '30.00', '10.00', '35.00'),
(7, 'Diet', 'lunch', 'Уха из сибаса', 'Сибас, овощи, специи', '20.00', '15.00', '3.00'),
(8, 'Diet', 'lunch', 'Тушеная индейка с картошкой', 'индейка, овощи, картошка, Салат', '28.00', '12.00', '40.00'),
(9, 'Diet', 'dinner', 'Печеная куринная грудка с картошкой', 'спаржа, куринная грудка, спаржа, розмарин', '25.00', '10.00', '30.00'),
(10, 'Diet', 'dinner', 'Курица с картофелем', 'Куриное филе, картофель, специи', '20.00', '15.00', '3.00'),
(11, 'Diet', 'dinner', 'Паста с курицей', 'Салат, томатный соус, базилик, паста, куриное филе, чеснок, томаты', '20.00', '10.00', '40.00'),
(12, 'Diet', 'dinner', 'Лосось с картошкой', 'лосось, лимон, травы, картошка, горошек', '22.00', '18.00', '25.00'),
(13, 'Diet', 'snack', 'Фруктовый йогурт с орехами', 'йогурт, мёд, миндаль, грецкий орех', '10.00', '10.00', '20.00'),
(14, 'Diet', 'snack', 'Зеленый смузи с орехами', 'Грецкие орехи, шпинат, банан, ягоды', '8.00', '10.00', '30.00'),
(15, 'Diet', 'snack', 'Овощной стебель с хумусом', 'морковь, хумус, огурцы, паприка', '6.00', '8.00', '15.00'),
(16, 'Diet', 'snack', 'Греческий йогурт с ягодами', 'йогурт, ягоды, грецкие орехи', '15.00', '19.00', '20.00'),
(17, 'Regular', 'breakfast', 'Хлебцы с лососем и творожным сыром', 'хлебцы, творожный сыр, лосось', '25.00', '20.00', '20.00'),
(18, 'Regular', 'breakfast', 'Омлет с овощами и авокадо', 'Яйца, полбанана, соль, перец, шпинат, помидоры, шпинатом', '20.00', '15.00', '30.00'),
(19, 'Regular', 'breakfast', 'Гречневая каша', 'Гречка, вода, соль', '20.00', '15.00', '3.00'),
(20, 'Regular', 'breakfast', 'Греческий йогурт с орехами', 'йогурт, мед, грецкие орехи', '15.00', '15.00', '25.00'),
(21, 'Regular', 'lunch', 'Куриный рисовый бургер', 'Куриное филе, пшеничная булочка, салат, томаты, лук, горчичный соус', '30.00', '10.00', '40.00'),
(22, 'Regular', 'lunch', 'Тающий лосось с картошкой и шпинатом', 'Филе лосося, картошка, шпинат', '25.00', '15.00', '30.00'),
(23, 'Regular', 'lunch', 'Тушеная курица с овощами', 'Куриное филе, киноа', '25.00', '8.00', '35.00'),
(24, 'Regular', 'lunch', 'Вегетарианская тачос', 'Тортильи из цельного зерна, черные бобы, кукуруза, помидоры, лук, авокадо, гречка', '20.00', '10.00', '40.00'),
(25, 'Regular', 'lunch', 'Паста с тунцом и овощами', 'Макароны, тунец, брокколи, помидоры, чеснок', '22.00', '12.00', '35.00'),
(26, 'Regular', 'dinner', 'Цыпленок с киноа и овощами', 'Куриное филе, киноа, брокколи,  цветная капуста,  оливковое масло', '30.00', '10.00', '35.00'),
(27, 'Regular', 'dinner', 'Лосось с картошкой и зеленым горошком', 'Филе лосося, картофель, розмарин, зеленый горошек', '20.00', '15.00', '35.00'),
(28, 'Regular', 'dinner', 'Тофу с карри и кускусом', 'Тофу, кускус, спаржа, чеснок, масло', '20.00', '8.00', '40.00'),
(29, 'Regular', 'dinner', 'Курица с картошкой', 'Куриное бедро, картошка, зеленый горошек, масло, корица', '28.00', '10.00', '35.00'),
(30, 'Regular', 'snack', 'Фруктовый йогурт с орехами', 'йогурт, мёд, миндаль, грецкий орех', '10.00', '10.00', '20.00'),
(31, 'Regular', 'snack', 'Зеленый смузи с орехами', 'Грецкие орехи, шпинат, банан, ягоды', '8.00', '10.00', '30.00'),
(32, 'Regular', 'snack', 'Овощной стебель с хумусом', 'морковь, хумус, огурцы, паприка', '6.00', '8.00', '15.00'),
(33, 'Regular', 'snack', 'Греческий йогурт с ягодами и орехами', 'йогурт, ягоды, грецкие орехи', '15.00', '19.00', '20.00');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;