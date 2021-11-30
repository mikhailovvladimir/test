-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Ноя 30 2021 г., 03:32
-- Версия сервера: 8.0.27-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `register_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `author_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `author_id`, `title`, `text`) VALUES
(1, 103, 'novaya', '123123123'),
(2, 103, 'novaya', '123123123'),
(3, 103, 'novaya', '123123123'),
(4, 103, 'novaya', '123123123'),
(5, 103, 'novaya', '123123123'),
(6, 103, '12312', '123'),
(7, 103, '3123', '12312'),
(8, 103, '3123', '12312'),
(9, 103, '3123', '12312'),
(10, 103, '1212', '1212'),
(11, 103, '1212', '1212'),
(12, 103, '1212', '1212'),
(13, 103, '1212', '1212'),
(14, 103, '2133', '123123'),
(15, 103, '2133', '123123'),
(16, 103, '2133', '123123'),
(17, 103, 'dlfkjsdkf', 'sdfsdfs'),
(18, 103, 'dlfkjsdkf', 'sdfsdfs'),
(19, 103, 'новая статья', 'очень новая статья');

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `article_id` int NOT NULL,
  `category_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`article_id`, `category_id`) VALUES
(14, 1),
(17, 1),
(17, 2),
(19, 1),
(19, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Категория 1'),
(2, 'Категория 2'),
(3, 'Категория 3');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `name`) VALUES
(1, 'Vladimir77', '94чиь', 'Владимир'),
(2, '', '', ''),
(3, 'Vladimir77', '2', 'Владимир'),
(4, 'Vladimir', '$2y$10$vTL/qZi/PD/6Y/SjCbeSdeTJ3Rbbjapn.VPdtsNGcKB1UO8R1i0fm', 'Саша'),
(5, 'Vladimir', '$2y$10$NYybUeQynO.DJ8PgOk/MfeNIAysmWfj7OMxWpfTaQGu/MfDV3UjXu', 'Саша'),
(6, 'Vladimir', '$2y$10$QzKWHzhcmOMb/QH3OcGa9.oLNN78loFRHstvhNqTMtTofVN99wCqK', 'Саша'),
(7, 'Vladimir', '$2y$10$VFZS2w32V1gmFwfE3F0fu.YLmrGY/k6es4Q3gXxDuXQ/s59WhHOu6', 'Саша'),
(8, 'Vladimir2', '$2y$10$zHWR9grMA6nLpdn9O0joYuq5AN9Np/BOf/Zuve.J6lcLRjy1WiU8q', 'Саша'),
(9, 'Vladimir2', '$2y$10$5t6l4jCoSKeMs4mKP9Etsedz7J4ZoEYkjHBIRubcnUiHowO4AQRf.', 'Саша12'),
(10, 'Vladimir2', '$2y$10$CiKM2iZocUFZxJSBgXfWHew.wNyHBwt8FEhrgYHN7E3DQ77311cDG', 'Саша12'),
(11, 'Vladimir2', '$2y$10$hjEYfNL6XiW2kW2mF6USBuLayo/q5m/BuR1iqsFjaGLBvDwzXtEUu', 'Саша12'),
(12, 'Vladimir2', '$2y$10$vzESEgrJcQGBH4l95OTcROrBII6faKlqBdOUhKdnE06RbJdPsntBi', 'Саша12'),
(13, 'Vladimir2', '$2y$10$Sl3e1OX285sMKYmONjeboOSYx4ko8SGQ1VK77Dhl1eJ6yXJEOuCf.', 'Саша12'),
(14, 'Vladimir2', '$2y$10$KGdfFdcuAmaR3t1I19j6RO6Rjjy8YccJrV6pjjaGo/oFiSMYqhrXe', 'Саша12'),
(15, 'Vladimir2', '$2y$10$bBMKwBiAPts4OSeP3tPdcOjaZMi.7ELotPJbxVlSiTGkFQHy5ZDhu', 'Саша12'),
(16, 'Vladimir2', '$2y$10$KxsTDcVlDJ1hCAkTtEiYb.ZoOOAsDqZMQHvf9ehzLxJviIX6JiYsS', 'Саша12'),
(17, 'Vladimir2', '$2y$10$yRDzInDTKn2sqgW5VRzfaO9awSLic1M8oz7eCQesIC8b74ZIOMC.a', 'Саша12'),
(18, 'Vladimir2', '$2y$10$VZQ/AMc5g7BGU8ehxVUnHu7h7kxQofmot05CcDFOA/yI./1m.Z/qm', 'Саша12'),
(19, 'Vladimir2', '$2y$10$sO4HWl6bqfiTBWObV0eCHu0GF7d0xJr4fg/nwYdzV0F7TdxYlscEa', 'Саша12'),
(20, 'Vladimir', '$2y$10$3FM7QnxpxJn9JVMwsvJB/OyIhye/AcQrsuk/rORtXAGXLIy5gO9WO', 'Влад'),
(21, 'karabox', '$2y$10$d9eqYr5J15qsfpwWOpADN.cocgM2.mL3hSkq.OOLNlSBCEiuDtosS', 'Сергей'),
(22, 'Marina12', '$2y$10$l/gY4/zPHed6KxbqBLHkO.OHRVSH8zJsGTA6WD1QcNSgXb.tW9LrW', 'Marina'),
(23, 'Vladimir13', '$2y$10$O24l5SmZl/Z9SQtPlbdWXO5RmbNeJUSwLASSVTx55mACnb3ejhu8C', 'Владимир'),
(24, '', '$2y$10$rFMcnom8j2xyF4I6SmpkXuTpBNLDexaN3FBHKmc/HNVlxHtbVdv..', ''),
(25, '32', '$2y$10$hdABu.9I0ijjt7gAcewwaed7/tKP9NMAPMLzuyMuc0hH2qUxQiq/y', ''),
(26, '32', '$2y$10$Z36tD4aDLuWf6fOK4AmacOpLW1kdP0zGIkxf2.lpu4l29GumjIEBG', ''),
(27, 'Vladimir13', '$2y$10$9yU0ryT0z6beimIwThb1g.KPkFf6SvrsuUTSD2tnFdqQQvMy6ABcW', 'Владимир'),
(28, 'Vladimir13', '$2y$10$MCGr.5RdDTxFgD.dLMK.6uNrJ09bOLyFvydesv7q8dUWi5L/ysTn6', 'Владимир'),
(29, '', '$2y$10$2FyizpDEt07dC.q7HZq95.3RsxzJL1wL4aJ4cihyPHZnP3YM/tmii', ''),
(30, '', '$2y$10$2BK6yyt7KxacRAkV9r92ieakKmZRM3dzV2r13mwsjpFMghJr8eNXy', ''),
(31, '', '$2y$10$TAKKUclQ77ZVg.ykTuVyf.3KgGFrzvaLwCbAL.b3a4VLEzb4tEYUO', ''),
(32, '', '$2y$10$YFBWRecP/AOV.yC3DVt54uQ9/id88rhdvuWKAjX8lI54esXsv3/Bq', ''),
(33, 'Vladimir13', '$2y$10$QdrIFgcHZxNIM9BCnBWGkuAXJmvBziJ3aqmlxT0QVZEp6LzPMroL6', 'Владимир'),
(34, 'Vladimir13', '$2y$10$OqWfipyyO6KyztbA4G5pWuPruw1SJPZ8eU32ZkoDlAidoUZnmIKcS', 'Владимир'),
(35, 'Vladimir13', '$2y$10$V4Zq9vMsREko/TMD6js/G.eV9LrULivTKt.nYtxBzgQ75ZN00Cfdq', 'Владимир'),
(36, 'Vladimir13', '$2y$10$XAZ1Dhu3nGBjNG1BkgkN2u/QegcD.yZNKlVhs.86Fl1R8XiI0CS0e', 'Владимир'),
(37, 'Vladimir13', '$2y$10$QrFbyFBAkyimDwnNuXF51.RUkq3AgRLZaIwVijnsaqpK0KAU/ztmy', 'wqwqeqwe'),
(38, 'eqweqweqwe', '$2y$10$pxSLL8ZKRhrb3Z0scoNUXOmFigaywgmU6bsap.bSUUpZEf.oPJNte', 'qweqweqw'),
(39, 'eqweqw', '$2y$10$3W3dVV0kMEOG8bpqFSQDfejiU58p1H8LuyGXpJeMMZjA1tWi01ky.', 'qweqwe'),
(40, 'admin123', '$2y$10$n3cOlRxidaLtrZjhq/ZezOET/4Q01DSkvac20ARlSO9tOUyp8agY6', 'Name123'),
(41, 'Vladimir13', '$2y$10$rUAMferu4t0GL1nmH6.I5O4fWS9xqwP0iAjsfLVyfBJ9N9E5cIize', 'Владимир'),
(42, 'Vladimir13', '$2y$10$r74LPQPno.y95sfOdbZGNOcv2ZLbhG/7UWk69TBaqR7tQe.7EiYxe', 'Владимир'),
(43, 'Vladimir13', '$2y$10$L7DMJxIfHRVJtE5BzbsIJe/c2wGhoJqzka0gfKUtvTwLrr0t80J3i', 'Владимир'),
(44, '32', '$2y$10$QYDTvR4VhpXaht8l6kX3Ae0CfGfoLj5wnFVjiyAdg15wQ0dRt6beC', ''),
(45, 'Vladimir13', '$2y$10$CkYnQhAs3KAz1rgorT0.KeVw5EpjvEvzf81ZZe.KIpM8lc9cfLT9i', 'Владимир'),
(46, '', '$2y$10$Q.1uV8rRs1yQnb71S3S5y.nfdOOaUU89EjvqAUUCNuXz.EE/3zw4G', ''),
(47, '', '$2y$10$pLvklXvQceacdx6p8YciYe0QDJKaQZ2AdLldwmj4QebDHhjK10LbS', ''),
(48, '321', '$2y$10$Mr8mh0w1zefnD67ekUE6e.ngrV27j9mt9ps3z.lwpk05TqObr1AWm', '2131'),
(49, '321', '$2y$10$FldvMN75z4O3BJh.IX0qluB52gBPb4Oocd7MzjqvJ7nD5ITdIKp6C', '2131'),
(50, 'Vladimir13', '$2y$10$wkDexcP1iNdNtB84DYL5.ezzgPrxkqKT5Cla/O7srBroH45PD5SN6', '3123'),
(51, 'Vladimir13', '$2y$10$pwTp1o2qs7IZCoNAcq92fObEOBkb0VWImSSMGZZo4oifPkWlKiMta', ''),
(52, '3123123123', '$2y$10$pE/BNdJLiMy7S/O4UPILge8UsrtrOaKOl9rHjX6nXP0B6jUc6Acpy', '2312312'),
(53, '3123123123', '$2y$10$gJD5vxJGbP4OO5efFupnJORIXUH7Ql82MJolaxgps671X22CQvU4W', '2312312'),
(54, '3123123123', '$2y$10$qxyPlwimAJA9vS6WWGG.CelQoPwThWUQFYtHu7nX7yoa.Tl4rLo.m', '2312312'),
(55, '3123', '$2y$10$q4akD2IJJrZD4mGt1AiLy.WbopZrQGJGC7GzUap4yQ.PyAg4zY88K', ''),
(56, '3123123', '$2y$10$aijTvWmBRmK7z3/nfcuCbe2crmU0e9T5GgHsdM6gCl4k7uZlis5nS', '312312123123'),
(57, '', '$2y$10$oiE8hsZi6CjGZ9hjtceY/eBy0M/k9tUXpsjEjpBuXr7fztAG5x8ni', ''),
(58, '3123', '$2y$10$ohDhqPXnkUJSmaG4Ow8rEOP1.PUmgi9iPjchCFtRYCxSzLqIyLZ5G', ''),
(59, '3123', '$2y$10$KgfZ4/ejTpyladog0CQ6.ucK2zPXn2Xhw9adzG2qjl0iTV7vvXZ42', ''),
(60, '123', '$2y$10$vnCol7.C18xuVRuy/JsnDOyUtvti4D.Nh91yQvhWNkaQ8/wwtGNES', ''),
(61, '123123123', '$2y$10$GGWlSPa88X0oxenCoMVquebuJHgdcCqobRkqoMHmQ7mtaISMiMzku', ''),
(62, '123123', '$2y$10$she8YUTC/QkpSMnmWwFHZuW4odsN4RsJtbbOlGPlcyI5C2RNMYoJe', '3123'),
(63, '123123', '$2y$10$csDaSVL02xQbOeLP2AWk0e/6vy3OA9vNL0Phxa5Flj0DtSZjeELSS', '123123'),
(64, '123123', '$2y$10$MNobtoUuTHFi07bUK4uUGuxTwUP13g31F4pYFp.hkt.X2mRmDBuSa', '123123'),
(65, '123123', '$2y$10$SczPUp3D2Dx1BjU8bkmprOdErNRuXNJs4.E0aMqt75au73FRY39cO', '123123'),
(66, '', '$2y$10$i.JM3FlARs9Oc4YJ6mT93evZmNqhGoSqmHHmEZH2jScnL0suPn/dS', ''),
(67, '3123', '$2y$10$45CoWWyoUn5S7VYYlSk79Ogg5Xz4zPxVTvrhkTo7vFcuCEs72SxfW', '123123'),
(68, '', '$2y$10$sc8epMuoUGf90xfXFlfJd.Pgz8EGpIcou2nzqCRRVUnlngqf8Ic4W', ''),
(69, '', '$2y$10$i1iU69EUcTkiwXKw3snmk.wyIb3Ih5uVg14s21IuOlx8tmyB6/Lzu', ''),
(70, '', '$2y$10$a5Z/2SK5MfcAazREdFTnX.hdLywQxA8fYDJToVsTyyEv1IC.DqtTK', ''),
(71, '', '$2y$10$EkRf41dhjH9i8wxv.zwz1emTEO2IyOu7jW/cR0F.tCvotVDhIwv2u', ''),
(72, '', '$2y$10$jJkEz0UIfKDiZVgQLE70LOoXUrjBu4kyGyWSO/JMzarJf5KLqwD1.', ''),
(73, '', '$2y$10$9dGoD1KXZ0Y2lYvQuE0CpuuYldBbvoMuMLtEEP0rKL.fx9K50zpuO', ''),
(74, '', '$2y$10$4L7U5rj0weA74Zt5DlpeqOyGsKi9wCjLpyZEB1j8VcrV9RJRJI1Fe', ''),
(75, '', '$2y$10$N0UBIy.SX8TFyEfnlwp3yuNFS0s9P7lWaTJQ51NHJrlvzKjf61QaC', ''),
(76, '', '$2y$10$SX29LxtGXsw6omziIebezeR56VeXz0.GfgC62EBH.fqjVwdKj0IyW', ''),
(77, '', '$2y$10$N0Ny9uWYeBXQaf7.ZH3y9.vNkQ2oRuKnJvKNDSb/hgm.oYSjIzNcO', ''),
(78, '', '$2y$10$5xmelF3YZISYj6eR2S/EFuNqar4u48nfhCaLEqzXztu.r.h.xcN0q', ''),
(79, '1', '0', '1'),
(80, '0', '0', '0'),
(81, '0', '0', '0'),
(82, '0', '0', '0'),
(83, '0', '0', '0'),
(84, '0', '0', '0'),
(85, '0', '0', '0'),
(86, '0', '0', '0'),
(87, '0', '0', '0'),
(88, '0', '0', '0'),
(89, '0', '0', '0'),
(90, '0', '0', '0'),
(91, '0', '0', '0'),
(92, '0', '0', '0'),
(93, '0', '0', '0'),
(94, '0', '0', '0'),
(95, '0', '0', '0'),
(96, '0', '0', '0'),
(97, '0', '0', '0'),
(98, '0', '0', '0'),
(99, 'Vladimir13', '$2y$10$U8D/C3NkMU582iLn8akTm.ExDUOfVn.vXcTpjWqS1a8zj94Q8iNJq', 'Владимир'),
(100, 'Vladimir13', '$2y$10$4sDp2cBCUyTv539KjdKrN.vMxyhaJ4dusrNOi1ManMqIHUU5oyZsC', 'Владимир'),
(101, 'Vladimir', '$2y$10$Y4UQ0cfucSiALUtGKLYTFev49ZTDYRnCvK8TWJJu08yFZP081BfFG', 'Владимир'),
(102, 'karabox1994', '$2y$10$WOzGr8ChHLInxrDxxnvZPOUNOGKsXd1RfOX/8jq8bKBpQ2aaaHF8K', 'Владимир222'),
(103, 'Marina', '$2y$10$YgDHbEkMhbbvuCLDEahN.OmDBF9Aca9D4lHf0Do.SJD75OWE5Y/Ja', 'marina'),
(104, 'muzika', '$2y$10$mCH6YULhIErN1byqKvguxuK.XDMLlJXl22MPv51vmmmTQ9BTnqDiG', 'muzika'),
(105, 'karabox11', '$2y$10$SjYrGMRmmxixohLBaCigKOBjsMlnuXjPqz4Qz8k.ZYeT9eqEWVQoi', 'karabox11'),
(106, 'marvel', '$2y$10$mNmJMMoO1RRXsslIj84Hy.4Dp8iJ42ZocHDYiirmXgpEitf.Ryicy', 'marvel'),
(107, 'Marina1', '$2y$10$DMrBiV00at0.wgrJNfmFNOr86CK0WKF.kBn327UiD6ftzDTfxQtTe', 'Marina1'),
(108, '3123', '$2y$10$uLW2owQ1Z2BH4kkJqUWEy.hKvg/l8BLkkrX6we8rJnmO0EkNPXhfW', '123123'),
(109, '3123123', '$2y$10$amku7Ky3yeVufiLE.ClZ/OiEP.8W68itXCb8c9D63dCDueN5xHW/S', '123123'),
(110, 'Marinaww', '$2y$10$ZLTYynOyBLNueMcW89OGkeVHvuTfyf6cv6TapU57RR2DB5nYLXoYK', 'Marinaww'),
(111, '3123123', '$2y$10$Q9jxCbIYQGyECiwkCf2OIO1/qNw1xzhllPq0.H1XgUlPUlABA/5YG', 'qweqwe'),
(112, 'eqwe', '$2y$10$3tJw3MNKRT7IWdBtKlV6IO9uVSsfuzwTLadp4OYuBSDrIQmSJ.nIG', ''),
(113, '', '$2y$10$3wUHIPnWTpZ4akOWvWymwOuazpmYBc2b5tJ8NMHo/4YNlA1nl9dh2', ''),
(114, 'wqeqwe', '$2y$10$1z39ANrSdRessymR2WODF.NLuBOjf8LVHByd0LowqLPsi35o5UeDm', 'qweqwe');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`article_id`,`category_id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
