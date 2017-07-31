-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июл 12 2017 г., 16:57
-- Версия сервера: 5.7.18-0ubuntu0.16.04.1
-- Версия PHP: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tirmarket`
--

-- --------------------------------------------------------

--
-- Структура таблицы `access`
--

CREATE TABLE `access` (
  `id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `controller` varchar(64) DEFAULT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `access`
--

INSERT INTO `access` (`id`, `role_id`, `controller`, `view`, `edit`) VALUES
(2, 5, 'index', 1, 0),
(3, 5, 'content', 0, 0),
(4, 5, 'control', 0, 0),
(5, 5, 'news', 0, 0),
(6, 5, 'articles', 1, 0),
(7, 5, 'menu', 0, 0),
(8, 5, 'slider', 0, 0),
(9, 5, 'gallery', 0, 0),
(10, 5, 'banners', 0, 0),
(11, 5, 'questions', 0, 0),
(12, 5, 'comments', 0, 0),
(13, 5, 'groups', 0, 0),
(14, 5, 'items', 0, 0),
(15, 5, 'brands', 0, 0),
(16, 5, 'models', 0, 0),
(17, 5, 'specifications', 0, 0),
(18, 5, 'orders', 0, 0),
(19, 5, 'simple', 0, 0),
(20, 5, 'users', 0, 0),
(21, 5, 'subscribers', 0, 0),
(22, 5, 'subscribe', 0, 0),
(23, 5, 'contacts', 0, 0),
(24, 5, 'callback', 0, 0),
(25, 5, 'mailTemplates', 0, 0),
(26, 5, 'config', 0, 0),
(27, 5, 'templates', 0, 0),
(28, 5, 'links', 0, 0),
(29, 5, 'scripts', 0, 0),
(30, 5, 'redirects', 0, 0),
(31, 6, 'button', 0, 0),
(32, 6, 'index', 0, 0),
(33, 6, 'content', 0, 0),
(34, 6, 'control', 0, 0),
(35, 6, 'news', 0, 0),
(36, 6, 'articles', 0, 0),
(37, 6, 'menu', 0, 0),
(38, 6, 'slider', 0, 0),
(39, 6, 'gallery', 0, 0),
(40, 6, 'banners', 0, 0),
(41, 6, 'questions', 0, 0),
(42, 6, 'comments', 0, 0),
(43, 6, 'groups', 0, 0),
(44, 6, 'items', 0, 0),
(45, 6, 'brands', 0, 0),
(46, 6, 'models', 0, 0),
(47, 6, 'specifications', 0, 0),
(48, 6, 'orders', 0, 0),
(49, 6, 'simple', 0, 0),
(50, 6, 'users', 0, 0),
(51, 6, 'subscribers', 0, 0),
(52, 6, 'subscribe', 0, 0),
(53, 6, 'contacts', 0, 0),
(54, 6, 'callback', 0, 0),
(55, 6, 'mailTemplates', 0, 0),
(56, 6, 'config', 0, 0),
(57, 6, 'templates', 0, 0),
(58, 6, 'links', 0, 0),
(59, 6, 'scripts', 0, 0),
(60, 6, 'redirects', 0, 0),
(121, 7, 'button', 0, 0),
(122, 7, 'index', 1, 0),
(123, 7, 'content', 1, 1),
(124, 7, 'control', 1, 1),
(125, 7, 'news', 1, 1),
(126, 7, 'articles', 1, 1),
(127, 7, 'menu', 1, 1),
(128, 7, 'slider', 1, 1),
(129, 7, 'gallery', 1, 1),
(130, 7, 'banners', 1, 1),
(131, 7, 'questions', 1, 1),
(132, 7, 'comments', 1, 1),
(133, 7, 'groups', 1, 1),
(134, 7, 'items', 1, 1),
(135, 7, 'brands', 1, 1),
(136, 7, 'models', 1, 1),
(137, 7, 'specifications', 1, 1),
(138, 7, 'orders', 1, 1),
(139, 7, 'simple', 1, 1),
(140, 7, 'users', 1, 1),
(141, 7, 'subscribers', 1, 1),
(142, 7, 'subscribe', 1, 1),
(143, 7, 'contacts', 1, 1),
(144, 7, 'callback', 1, 1),
(145, 7, 'mailTemplates', 1, 1),
(146, 7, 'config', 1, 1),
(147, 7, 'templates', 1, 1),
(148, 7, 'links', 1, 1),
(149, 7, 'scripts', 1, 1),
(150, 7, 'redirects', 1, 1),
(211, 8, 'button', 0, 0),
(212, 8, 'index', 0, 0),
(213, 8, 'content', 1, 1),
(214, 8, 'control', 1, 1),
(215, 8, 'news', 1, 1),
(216, 8, 'articles', 1, 1),
(217, 8, 'menu', 1, 1),
(218, 8, 'slider', 1, 1),
(219, 8, 'gallery', 1, 1),
(220, 8, 'banners', 1, 1),
(221, 8, 'questions', 0, 0),
(222, 8, 'comments', 1, 1),
(223, 8, 'groups', 1, 1),
(224, 8, 'items', 1, 1),
(225, 8, 'brands', 1, 1),
(226, 8, 'models', 1, 1),
(227, 8, 'specifications', 1, 1),
(228, 8, 'orders', 1, 1),
(229, 8, 'simple', 1, 1),
(230, 8, 'users', 1, 1),
(231, 8, 'subscribers', 1, 1),
(232, 8, 'subscribe', 1, 1),
(233, 8, 'contacts', 1, 1),
(234, 8, 'callback', 1, 1),
(235, 8, 'mailTemplates', 1, 1),
(236, 8, 'config', 1, 1),
(237, 8, 'templates', 1, 1),
(238, 8, 'links', 1, 1),
(239, 8, 'scripts', 1, 1),
(240, 8, 'redirects', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `show_image` tinyint(1) NOT NULL DEFAULT '1',
  `views` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `created_at`, `updated_at`, `status`, `alias`, `image`, `show_image`, `views`) VALUES
(6, 1496935463, 1497634910, 0, 'test-articles', NULL, 1, 3),
(7, 1498054822, 1498054964, 1, 'testovaja-statja', '0241e9328a3beadedea471ac1a0ee1af.jpg', 0, 6),
(8, 1498055018, 1498055113, 1, 'statja-2', 'fe7ab6ec40e4514dc61253c78422a6f0.jpg', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_i18n`
--

CREATE TABLE `articles_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(11) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `description` text,
  `keywords` text,
  `title` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles_i18n`
--

INSERT INTO `articles_i18n` (`id`, `row_id`, `language`, `name`, `text`, `description`, `keywords`, `title`, `h1`) VALUES
(1, 6, 'ru', 'test articles ru', '<p>test articles ru text</p>', 'test articles ru desc', 'test articles ru keywords', 'test articles ru title', 'test articles ru h1'),
(2, 6, 'ua', 'test articles en', '<p>test articles en text</p>', 'test articles en desc', 'test articles en keywords', 'test articles en title', 'test articles en h1'),
(3, 7, 'ru', 'тестовая статья', '<p>содержавние</p>', '4444', '3333', '2222', '1111'),
(4, 7, 'ua', 'test', '<p>content</p>', '6666', '7777', '8888', '9999'),
(5, 8, 'ru', 'статья 2', '<p><strong>Использовать все виды списков</strong></p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>Etiam id leo at eros tempor aliquet nec vitae mi.</li>\r\n<li>Sed vel leo quis est dictum egestas.</li>\r\n<li>Morbi ac orci at ex pharetra finibus vitae in sem.</li>\r\n<li>Sed et odio ac velit euismod varius vitae in ligula.&nbsp;</li>\r\n</ul>\r\n<ul style="list-style-type: circle;">\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>Etiam id leo at eros tempor aliquet nec vitae mi.</li>\r\n<li>Sed vel leo quis est dictum egestas.</li>\r\n<li>Morbi ac orci at ex pharetra finibus vitae in sem.</li>\r\n<li>Sed et odio ac velit euismod varius vitae in ligula.&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul style="list-style-type: square;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-alpha;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>&nbsp;Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-greek;">\r\n<li>&nbsp;Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>&nbsp;Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>&nbsp;Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>&nbsp;Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>&nbsp;Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>&nbsp;Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-roman;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>.Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>.Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: upper-alpha;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: upper-roman;">\r\n<li>.Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed maximus lorem. Vivamus sed metus aliquet, tempor turpis sit amet, volutpat risus. Fusce magna neque, pellentesque vitae purus vel, pellentesque maximus ante. Vivamus diam lectus, lobortis nec ipsum quis, laoreet semper odio. Nam consectetur nisi turpis, ut pulvinar justo aliquam vitae. Fusce egestas eros sodales, aliquam erat sed, vulputate massa. Mauris eu dolor vitae dui tempus semper. Cras elementum, nibh vel scelerisque dignissim, metus orci malesuada tellus, maximus eleifend urna libero quis ipsum. Ut ex lectus, scelerisque sed cursus nec, ullamcorper ut elit.</p>\r\n<p style="text-align: right;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>правому</strong>&nbsp;<strong>краю</strong></p>\r\n<p style="text-align: right;">Cras imperdiet dolor eu vestibulum congue. Proin suscipit fermentum ex, quis tempor est cursus non. Nullam suscipit augue dui. Ut molestie interdum tortor maximus commodo. Vestibulum non est volutpat, molestie mauris in, feugiat est. Donec consequat ligula sed egestas pretium. Nam ac mauris rhoncus, lobortis dui non, molestie leo. Quisque pretium sed metus sed tristique. Fusce a nibh eu justo pharetra blandit. Nullam id risus erat. Aenean malesuada quam ut est auctor, vitae ullamcorper velit congue. In in placerat tellus. Duis sit amet dui id purus porta ornare non ac erat. Aenean dapibus arcu elit, tempor gravida arcu blandit eu.</p>\r\n<p style="text-align: center;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>центру</strong></p>\r\n<p style="text-align: center;">Sed tempor, ante vitae faucibus feugiat, felis magna pretium nisl, ac pellentesque mi mi id augue. Aliquam a mauris lobortis, congue odio ac, dictum quam. Suspendisse tempus orci ut molestie cursus. Etiam consectetur vehicula ipsum, et sodales nisl. Vestibulum id aliquam libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut leo in neque pharetra iaculis.</p>\r\n<p style="text-align: justify;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>ширине</strong></p>\r\n<p style="text-align: justify;">Donec quis fermentum risus. Aliquam efficitur aliquam urna, vitae ornare purus feugiat non. Nam laoreet, velit at porta aliquam, dolor sem pretium nulla, vel sagittis sapien ante eget sapien. Sed est elit, lacinia et urna vel, venenatis vestibulum tortor. Duis ac tincidunt dolor. Pellentesque lacinia hendrerit urna sit amet lobortis. Suspendisse potenti. Vivamus eu sapien sollicitudin, elementum turpis efficitur, feugiat sapien. Nulla congue rutrum nisl. Quisque pretium facilisis ligula eu tincidunt. Donec posuere lorem eu est mattis commodo. Suspendisse pretium nibh nec convallis vehicula. Cras ac suscipit mi, vitae laoreet mauris. Aliquam erat volutpat. Quisque scelerisque nunc ut congue scelerisque.</p>\r\n<p><strong>Добавить ссылку &ndash; одна открывается в текущем окне, одна в соседнем</strong></p>\r\n<p><a href="http://uk.lipsum.com/">Proin justo nisl, faucibus</a>&nbsp;nec dignissim a, tincidunt at lorem. Vivamus ligula arcu, faucibus a ex et, viverra molestie velit. Donec ut justo arcu. Integer a lorem ut massa mattis vestibulum. Fusce in lacus eget dolor finibus vestibulum. Vestibulum lobortis placerat felis non feugiat. Sed eu risus non nisi iaculis elementum.&nbsp;<a href="https://google.com/">Etiam eu eros eget</a>&nbsp;ante cursus laoreet in ut nisi. Phasellus porta, est vitae accumsan dictum, erat nibh bibendum tellus, id suscipit elit mauris nec felis. Nunc in sodales erat, in scelerisque sapien. Aenean rutrum ligula leo, nec fringilla mi consectetur a. Quisque molestie nulla sit amet nibh dictum maximus.</p>\r\n<h3><span style="text-decoration: underline; color: #99cc00; background-color: #ffcc00;"><em>Изменить форматирование &ndash; размер, цвет, фон, формат, начертание шрифта (все возможные варианты редактора)</em></span></h3>\r\n<p><strong>Nunc ac massa sit amet erat dignissim tristique. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent lorem justo, vestibulum quis posuere blandit,&nbsp;</strong>volutpat&nbsp;<em>vitae tellus. Sed blandit tortor vitae libero porttitor, eu vehicula odio dapibus. Quisque rhoncus facilisis vulputate. Etiam mi sem, placerat ut erat non, accumsan dignissim magna. Nullam tempor eleifend erat eu placerat. Nulla suscipit nunc sed</em>&nbsp;tortor sodales sodales. Suspendisse porta placerat tellus, eget luctus arcu blandit at. Suspendisse imperdiet, sapien ac hendrerit laoreet, mauris tortor porttitor augue, pellentesque mattis nisi nulla eu urna. Donec dictum sed velit id tristique. Vivamus sit amet eleifend ex. Quisque ullamcorper rhoncus congue.</p>\r\n<p>Duis imperdiet neque velit, vel tempor dui volutpat sit amet. Sed laoreet quam vitae sem vulputate vulputate sed et metus. Phasellus nec eros rhoncus, semper tortor nec, rutrum justo. Donec in lectus ullamcorper, aliquam nibh vitae, commodo augue. Duis eget lorem ac purus venenatis eleifend. Phasellus finibus magna at ante volutpat, vel porttitor ante gravida. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<table width="640">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>№</p>\r\n</td>\r\n<td>\r\n<p>1</p>\r\n</td>\r\n<td>\r\n<p>2</p>\r\n</td>\r\n<td>\r\n<p>3</p>\r\n</td>\r\n<td>\r\n<p>4</p>\r\n</td>\r\n<td>\r\n<p>5</p>\r\n</td>\r\n<td>\r\n<p>6</p>\r\n</td>\r\n<td>\r\n<p>7</p>\r\n</td>\r\n<td>\r\n<p>8</p>\r\n</td>\r\n<td>\r\n<p>9</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>1</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить изображение с описанием</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить видео с изображением</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить видео без изображения</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '', '', ''),
(6, 8, 'ua', 'article 2', '<p><strong>Использовать все виды списков</strong></p>\r\n<ul>\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>Etiam id leo at eros tempor aliquet nec vitae mi.</li>\r\n<li>Sed vel leo quis est dictum egestas.</li>\r\n<li>Morbi ac orci at ex pharetra finibus vitae in sem.</li>\r\n<li>Sed et odio ac velit euismod varius vitae in ligula.&nbsp;</li>\r\n</ul>\r\n<ul style="list-style-type: circle;">\r\n<li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\r\n<li>Etiam id leo at eros tempor aliquet nec vitae mi.</li>\r\n<li>Sed vel leo quis est dictum egestas.</li>\r\n<li>Morbi ac orci at ex pharetra finibus vitae in sem.</li>\r\n<li>Sed et odio ac velit euismod varius vitae in ligula.&nbsp;</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ul style="list-style-type: square;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ul>\r\n<p>&nbsp;</p>\r\n<ol>\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-alpha;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>&nbsp;Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-greek;">\r\n<li>&nbsp;Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>&nbsp;Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>&nbsp;Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>&nbsp;Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>&nbsp;Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>&nbsp;Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: lower-roman;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>.Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>.Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: upper-alpha;">\r\n<li>Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<ol style="list-style-type: upper-roman;">\r\n<li>.Nulla bibendum arcu pellentesque enim ultricies, at luctus mi scelerisque.</li>\r\n<li>Nulla vel risus sollicitudin, interdum felis non, consectetur risus.</li>\r\n<li>Phasellus ut odio non turpis tincidunt consectetur non non sem.</li>\r\n<li>Duis in quam ac ante sagittis accumsan ut ac dolor.</li>\r\n<li>Morbi eleifend enim aliquam neque dapibus blandit.</li>\r\n<li>Vestibulum in mauris in velit malesuada volutpat ac eget orci.</li>\r\n<li>Duis faucibus odio at arcu placerat, in aliquet leo mollis.</li>\r\n</ol>\r\n<p>&nbsp;</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed maximus lorem. Vivamus sed metus aliquet, tempor turpis sit amet, volutpat risus. Fusce magna neque, pellentesque vitae purus vel, pellentesque maximus ante. Vivamus diam lectus, lobortis nec ipsum quis, laoreet semper odio. Nam consectetur nisi turpis, ut pulvinar justo aliquam vitae. Fusce egestas eros sodales, aliquam erat sed, vulputate massa. Mauris eu dolor vitae dui tempus semper. Cras elementum, nibh vel scelerisque dignissim, metus orci malesuada tellus, maximus eleifend urna libero quis ipsum. Ut ex lectus, scelerisque sed cursus nec, ullamcorper ut elit.</p>\r\n<p style="text-align: right;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>правому</strong>&nbsp;<strong>краю</strong></p>\r\n<p style="text-align: right;">Cras imperdiet dolor eu vestibulum congue. Proin suscipit fermentum ex, quis tempor est cursus non. Nullam suscipit augue dui. Ut molestie interdum tortor maximus commodo. Vestibulum non est volutpat, molestie mauris in, feugiat est. Donec consequat ligula sed egestas pretium. Nam ac mauris rhoncus, lobortis dui non, molestie leo. Quisque pretium sed metus sed tristique. Fusce a nibh eu justo pharetra blandit. Nullam id risus erat. Aenean malesuada quam ut est auctor, vitae ullamcorper velit congue. In in placerat tellus. Duis sit amet dui id purus porta ornare non ac erat. Aenean dapibus arcu elit, tempor gravida arcu blandit eu.</p>\r\n<p style="text-align: center;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>центру</strong></p>\r\n<p style="text-align: center;">Sed tempor, ante vitae faucibus feugiat, felis magna pretium nisl, ac pellentesque mi mi id augue. Aliquam a mauris lobortis, congue odio ac, dictum quam. Suspendisse tempus orci ut molestie cursus. Etiam consectetur vehicula ipsum, et sodales nisl. Vestibulum id aliquam libero. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin ut leo in neque pharetra iaculis.</p>\r\n<p style="text-align: justify;"><strong>Выравнивание</strong>&nbsp;<strong>по</strong>&nbsp;<strong>ширине</strong></p>\r\n<p style="text-align: justify;">Donec quis fermentum risus. Aliquam efficitur aliquam urna, vitae ornare purus feugiat non. Nam laoreet, velit at porta aliquam, dolor sem pretium nulla, vel sagittis sapien ante eget sapien. Sed est elit, lacinia et urna vel, venenatis vestibulum tortor. Duis ac tincidunt dolor. Pellentesque lacinia hendrerit urna sit amet lobortis. Suspendisse potenti. Vivamus eu sapien sollicitudin, elementum turpis efficitur, feugiat sapien. Nulla congue rutrum nisl. Quisque pretium facilisis ligula eu tincidunt. Donec posuere lorem eu est mattis commodo. Suspendisse pretium nibh nec convallis vehicula. Cras ac suscipit mi, vitae laoreet mauris. Aliquam erat volutpat. Quisque scelerisque nunc ut congue scelerisque.</p>\r\n<p><strong>Добавить ссылку &ndash; одна открывается в текущем окне, одна в соседнем</strong></p>\r\n<p><a href="http://uk.lipsum.com/">Proin justo nisl, faucibus</a>&nbsp;nec dignissim a, tincidunt at lorem. Vivamus ligula arcu, faucibus a ex et, viverra molestie velit. Donec ut justo arcu. Integer a lorem ut massa mattis vestibulum. Fusce in lacus eget dolor finibus vestibulum. Vestibulum lobortis placerat felis non feugiat. Sed eu risus non nisi iaculis elementum.&nbsp;<a href="https://google.com/">Etiam eu eros eget</a>&nbsp;ante cursus laoreet in ut nisi. Phasellus porta, est vitae accumsan dictum, erat nibh bibendum tellus, id suscipit elit mauris nec felis. Nunc in sodales erat, in scelerisque sapien. Aenean rutrum ligula leo, nec fringilla mi consectetur a. Quisque molestie nulla sit amet nibh dictum maximus.</p>\r\n<h3><span style="text-decoration: underline; color: #99cc00; background-color: #ffcc00;"><em>Изменить форматирование &ndash; размер, цвет, фон, формат, начертание шрифта (все возможные варианты редактора)</em></span></h3>\r\n<p><strong>Nunc ac massa sit amet erat dignissim tristique. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent lorem justo, vestibulum quis posuere blandit,&nbsp;</strong>volutpat&nbsp;<em>vitae tellus. Sed blandit tortor vitae libero porttitor, eu vehicula odio dapibus. Quisque rhoncus facilisis vulputate. Etiam mi sem, placerat ut erat non, accumsan dignissim magna. Nullam tempor eleifend erat eu placerat. Nulla suscipit nunc sed</em>&nbsp;tortor sodales sodales. Suspendisse porta placerat tellus, eget luctus arcu blandit at. Suspendisse imperdiet, sapien ac hendrerit laoreet, mauris tortor porttitor augue, pellentesque mattis nisi nulla eu urna. Donec dictum sed velit id tristique. Vivamus sit amet eleifend ex. Quisque ullamcorper rhoncus congue.</p>\r\n<p>Duis imperdiet neque velit, vel tempor dui volutpat sit amet. Sed laoreet quam vitae sem vulputate vulputate sed et metus. Phasellus nec eros rhoncus, semper tortor nec, rutrum justo. Donec in lectus ullamcorper, aliquam nibh vitae, commodo augue. Duis eget lorem ac purus venenatis eleifend. Phasellus finibus magna at ante volutpat, vel porttitor ante gravida. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>\r\n<table width="640">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>№</p>\r\n</td>\r\n<td>\r\n<p>1</p>\r\n</td>\r\n<td>\r\n<p>2</p>\r\n</td>\r\n<td>\r\n<p>3</p>\r\n</td>\r\n<td>\r\n<p>4</p>\r\n</td>\r\n<td>\r\n<p>5</p>\r\n</td>\r\n<td>\r\n<p>6</p>\r\n</td>\r\n<td>\r\n<p>7</p>\r\n</td>\r\n<td>\r\n<p>8</p>\r\n</td>\r\n<td>\r\n<p>9</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>1</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>mollis, sodales nulla non, molestie tortor. Vivamus pretium sed mi finibus efficitur. Sed in diam laoreet, varius dolor sed, ultrices leo.</p>\r\n</td>\r\n<td>\r\n<p>Nam vulputate ipsum eros, sed vulputate massa mattis eu. In nec dolor nec magna molestie laoreet ut nec erat. Ut vulputate</p>\r\n</td>\r\n<td>\r\n<p>gravida vestibulum. Aliquam vel leo magna. Nam in eros non ante suscipit placerat. Pellentesque feugiat ante augue, sed ultrices metus tempor a.</p>\r\n</td>\r\n<td>\r\n<p>pulvinar condimentum. Integer ut pretium velit. Aliquam erat volutpat. Duis pretium, turpis eget rutrum euismod, leo odio eleifend mauris,</p>\r\n</td>\r\n<td>\r\n<p>Vivamus eu risus sed mi pharetra tincidunt. Maecenas nibh dui, facilisis sed turpis vel, congue cursus mi. Nunc id accumsan ipsum.</p>\r\n</td>\r\n<td>\r\n<p>libero. Maecenas erat elit, sollicitudin at nunc eleifend, auctor mollis ipsum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n<td>\r\n<p>Phasellus non libero ut sem scelerisque dignissim. Fusce suscipit sit amet tellus eget semper. Aliquam sollicitudin quis lectus eu dignissim.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить изображение с описанием</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить видео с изображением</strong></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Вставить видео без изображения</strong></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `text` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `created_at`, `updated_at`, `status`, `text`, `url`, `image`) VALUES
(6, 1447092731, 1462880266, 0, 'Баннер 1', '', '6a20c9cb45e3728f888c2ae727bb15b5.jpg'),
(7, 1447092766, 1462880258, 0, 'Баннер 2', '', '9c1294724ccdb29ab2848450178c9ec5.jpg'),
(8, 1447094167, 1483519425, 0, '', '', 'c49bfe228855a3fd5f5cd0b63350b500.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `date` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(64) DEFAULT NULL,
  `rubric_id` int(10) DEFAULT NULL,
  `views` int(10) DEFAULT '0',
  `likes` int(10) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0 - доступно всем, 1 - только обычным зарегистрированным пользователям, 2 - партнерам'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `created_at`, `updated_at`, `status`, `date`, `alias`, `image`, `rubric_id`, `views`, `likes`, `type`) VALUES
(46, 1447091074, 1497010220, 1, 1446930000, 'kak-uhazhivat-za-odezhdoj', '2063536ccc4a51989df713f159258c2c.jpg', 12, 0, 0, 0),
(47, 1447091221, 1497634954, 1, 1447016400, 'leto-v-detaljah-glavnye-pljazhnye-aksessuary-2015', '06d9aee86cb9e4bbcb9c98c0e8086256.jpg', 10, 0, 0, 0),
(48, 1447091289, 1497010281, 1, 1441746000, 'kak-pravilno-hranit-zimnie-veschi', 'faa03358852f3fdad99aedf329f34e77.jpg', 12, 0, 0, 0),
(49, 1447091355, 1497010252, 1, 1445374800, 'dzhinsy-mamiki-modnaja-derzost-2015', '43021cad52b98c36fe77fffcbab5538e.jpg', 11, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `date` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `text` text,
  `answer` text,
  `blog_id` int(10) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_answer` int(10) DEFAULT NULL,
  `watched` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `created_at`, `updated_at`, `status`, `date`, `user_id`, `text`, `answer`, `blog_id`, `ip`, `name`, `date_answer`, `watched`) VALUES
(20, 1447091463, 1483518523, 1, 1447016400, NULL, 'Спасибо!\r\nВаша статья мне очень помогла! =) Теперь обязательно мои футболочки будут жить вечно!!!', '', 46, NULL, 'Василиса Петровна', 0, 1),
(21, 1447091514, 1497009771, 1, 1447016400, NULL, 'Никогда не понимал таких джинс =\\', 'Петр! Вы никогда и не поймете!\r\nДля этого Вам нужно быть женщиной ;)', 48, NULL, 'Петр', 1447016400, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_i18n`
--

CREATE TABLE `blog_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_i18n`
--

INSERT INTO `blog_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(46, 'Как ухаживать за одеждой', '<p>У каждой современной модницы есть свои &laquo;любимчики&raquo; - это может быть кашемировый свитер, элегантное вечернее платье, комплект шелкового белья и многое другое. С этими вещами никогда не хочется расставаться, но, к сожалению, век одежды не долгосрочен.</p>\r\n<p>Для того, чтобы продлить удовольствие от любимых нарядов, давайте вспомним правила ухода за ними. Вы удивитесь, насколько можно продлить &laquo;жизнь&raquo; одежде, если придерживаться определенных правил.</p>\r\n<h2>Три главных составляющих долголетия вашей одежды это:</h2>\r\n<ul>\r\n<li>&nbsp; стирка;</li>\r\n<li>&nbsp; глажка;</li>\r\n<li>&nbsp; хранение.</li>\r\n</ul>\r\n<p>Азы ухода за одеждой должна знать каждая девушка. Начнем со стирки: прежде, чем бросать платье в стиральную машину, внимательно изучите информацию на ярлыке. Его ведь не зря туда прикрепили, а для того, чтобы модницы следовали технической инструкции. Если какие-то символы на ярлыке вам непонятны, то Google всегда рад помочь. Глажка так же должна быть строго по инструкции. Не пытайтесь перехитрить производителя и экономить на химчистке и правильной стирке.</p>\r\n<p>&nbsp;</p>\r\n<p>Хранение одежды &ndash; важнейший фактор, влияющий на ее долголетие. Прощаясь со своим пальто или платьем до следующего сезона, не забудьте убедиться, что вещь чистая. Ничего смешного в этом нет! Оправдание типа &laquo;наступит зима, тогда и почищу&raquo; приведет к &laquo;гибели&raquo; ваших любимых вещей. Если не верите, спросите у любого работника химчистки. Хранить одежду с пятнами в шкафу почти год &ndash; это худшее, что можно быть с ней. Пятна могут въесться настолько, что вывести их потом будет практически невозможно. К тому же вряд ли кому-то понравится с наступлением нового сезона отчищать куртку или пальто, вместо того, чтобы красоваться в чистом наряде среди друзей.</p>\r\n<h2>Сушка и хранение трикотажа</h2>\r\n<p>Трикотажные вещи, как и все другие, нужно сушить с умом. Главное правило здесь &ndash; защита от солнечных лучей. Если вы сушите вещи на балконе под лучами солнца, чтобы сэкономить место в квартире, то вы просто убиваете их. Ткань быстро выцветает и теряет прочность. Просто вспомните свой купальник из предыдущего отпуска, вряд ли он такой же, как был до поездки.</p>\r\n<p>&nbsp;</p>\r\n<p>В зависимости от типа ткани, одежда хранится по-разному. Трикотажные вещи нужно хранить в сложенном виде, а не в висячем. В противном случае вытянутся плечики и рукава, и любимый свитер или платье потеряют свою привлекательность.</p>\r\n<p>Храните и ухаживайте за одеждой правильно, тогда любимые вещи будут радовать вас очень долго.</p>', 'Как ухаживать за одеждой', 'Как ухаживать за одеждой', 'Как ухаживать за одеждой', 'Как ухаживать за одеждой', 46, 'ru'),
(47, 'Лето в деталях. Главные пляжные аксессуары 2015', '<h2 style="text-align: justify;">Цветная соломенная шляпа</h2>\r\n<p style="text-align: justify;">Первое место в аксессуарах для пляжа &ndash; защита от солнца. Практичная соломенная шляпа справляется с этой функцией и с другой &ndash; та, то её носит, прослывет модницей. С узкими и широкими краями, с ободками и без &ndash; выбирайте любую, но толкьо не натурально бежевую. Соломенная шляпа ярких цветов - отличный способ выделиться на желто-голубом фоне курорта.</p>\r\n<h2 style="text-align: justify;">Очки в пластиковой оправе</h2>\r\n<p style="text-align: justify;">Ослепляющее солнце будет не по чем, если вы запасетесь солнцезащитным кремом и крупными очками в яркой пластиковой оправе. Кому нравятся файфареры, кто тяготит к округлым формам, как у кота Базилио, кто предпочитает необычную геометрическую форму &ndash; все найдут нечто для себя. И на макияже какая экономия!</p>\r\n<h3 style="text-align: justify;">Туника</h3>\r\n<p style="text-align: justify;">Если у вас слишком светлая кожа или вы не настолько смелая, чтобы разгуливать по побережью в бикини, туника вам непременно пригодиться. Самые модные варианты &ndash; светлый однотонный хлопок и расцветки в стиле хиппи. Самые интересные варианты сделаны из ткани с перфорацией, украшены бахромой. Лето становится еще горячее.</p>\r\n<h4 style="text-align: justify;">Слитный купальник</h4>\r\n<p style="text-align: justify;">В погоне за сексуальностью девушки отказались от таких моделей, и совершенно зря. Как утверждают мужчины, в слитных купальниках женская фигура смотрится гораздо аппетитнее. Для любительниц пляжного волейбола и безудержного веселья на волнах хорошая новость - какой бы интенсивной не была активность, ничего не слетит и не задерется.</p>\r\n<h5 style="text-align: justify;">Пляжная сумка</h5>\r\n<p style="text-align: justify;">Модницы несут с собой на пляж все &ndash; от необходимых бутылки воды и солнцезащитного крема до маникюрного набора на всякий случай. Кроме того, если не удастся вытянуть на пляж бойфренда, нести полотенце и подстилку придется самой. Куда это положить? Во вместительную пляжную сумку. Дизайнеры подготовили такое разнообразие, что определенных критериев выбора просто нет. Подберите сумки под купальник или шлепки. Один совет &ndash; чем больше деталей на сумке, тем лучше. Бахрома помпоны, брелоки &ndash; одним словом, детали в моде!</p>', 'Лето в деталях. Главные пляжные аксессуары 2015', 'Лето в деталях. Главные пляжные аксессуары 2015', 'Лето в деталях. Главные пляжные аксессуары 2015', 'Лето в деталях. Главные пляжные аксессуары 2015', 47, 'ru'),
(48, 'Как правильно хранить зимние вещи?', '<p style="text-align: justify;">Эх, как сладко с первыми лучами теплого солнышка закинуть наскучившие свитера да куртки на верхние полки и вдохнуть в гардероб летнее настроение топами и шортиками! Сие почти священное действо наполняет энергией от макушки до пяточек, ноги вальсируют, легкомыслие приходит на смену серым мыслям. Ну, здравствуй, лето, 90 дней счастья!</p>\r\n<p style="text-align: justify;">И все бы хорошо, только вот на смену лету все равно придет осень с её дождями и заморозками. Это, конечно, будет еще не скоро. Но чтобы не сокрушаться над теплой одеждой потом, давайте правильно хранить её уже сейчас.</p>\r\n<h2 style="text-align: justify;">Уход за зимними вещами</h2>\r\n<p style="text-align: justify;">Ну, еще чуточку подумаем о ненастной зиме &ndash; и сразу на пляж, договорились? Перед тем, как сложить теплые вещи в шкаф, их нужно почистить. Конечно, всегда лучше воспользоваться услугами химчистки, но вполне можно справиться и собственными силами. Предварительно изучите информацию на этикетке, опустошите карманы &ndash; не очень-то приятно будет одевать куртку с растаявшей конфетой внутри или джинсы с жвачкой в заднем кармане.</p>\r\n<p style="text-align: justify;">Не стоит складывать вещи в пакеты &ndash; полиэтилен создает благоприятную среду для моли и неприятного запаха. Идеально, если помещение периодически проветривается &ndash; свитера тоже хотят &laquo;дышать&raquo;. Если вы решительно настроены запихнуть вещи в пакет, то лучше используйте тару из натуральных материалов &ndash; хлопковые чехлы, льняные контейнеры и т.д.</p>\r\n<p style="text-align: justify;">Ловите несколько секретов:</p>\r\n<ul style="text-align: justify;">\r\n<li>Вещам не должно быть тесно. Пусть между ними будет пара сантиметров;</li>\r\n<li>Используйте мешочки с лавандой или апельсиновой цедрой. Пусть вещи пахнут летом, а не старым шкафом;</li>\r\n<li>Храните мех в максимально прохладном месте;</li>\r\n<li>Перед тем, как отправить шерстяное пальто на антресоли, хорошенько проветрите его.</li>\r\n</ul>\r\n<p style="text-align: justify;">И еще &ndash; солнышка хочется, но и летом бывают дождливые деньки. Чтобы не тянуться каждый раз до антресолей, составьте капсулу одежды для прохладной погоды.</p>', 'Как правильно хранить зимние вещи?', 'Как правильно хранить зимние вещи?', 'Как правильно хранить зимние вещи?', 'Как правильно хранить зимние вещи?', 48, 'ru'),
(49, 'Джинсы-«мамики»: модная дерзость 2015', '<p style="text-align: justify;">Не первый год дизайнеры декламируют с высоты своих подиумов о прекрасной возможности бесплатного обновления гардероба. Просто стащите пару вещей у бойфренда, дополните аксессуарами &ndash; и пара образов готова. В дело идет всё: от рубашек до смокингов. Эх, раздевать своих любимых так приятно &ndash; во всех планах! Овер-сайз нынче в тренде, да и в кризис решение как никогда актуально.</p>\r\n<p style="text-align: justify;">В 2015 году величественный перст дизайнеров указал на гардероб&hellip;наших мам. Да-да, теперь и их можно &laquo;грабить&raquo; со спокойной душой. Что из этого вышло &ndash; читайте дальше.</p>\r\n<h2 style="text-align: justify;">Джинсы-&laquo;мамики&raquo;</h2>\r\n<p style="text-align: justify;">Возвращение трендов 70-х и хиппанской культуры сделали свое дело: в жизнь модниц нагрянули mom-джинсы. Помните ранние клипы Мадонны и мелодрамы 2000-х? Модницы гордо и повсеместно вышагивали в джинсах-клеш, а серые мышки предпочитали мешковатые модели с низкой посадкой. Многие из нас буквально на коленях умоляли своих мам выкинуть это чудо-чудное. И хорошо, что не уговорили &ndash; тренд снова в моде!</p>\r\n<p style="text-align: justify;">Mom-джинсы насквозь пропитаны духом обезбашенной культуры феминизма, травки, секса и рок-н-рола. Легендарные женщины носили именно их &ndash; андрогинные, кричащие, как будто снятые с чужого бедра джинсы. Мэрилин Монро, Кейт Мосс, Дрю Бэрримор&hellip;.а &laquo;Друзья&raquo;? А &laquo;Секс в большом городе&raquo;? Все оттуда, из милого сердцу детства.</p>\r\n<p style="text-align: justify;">Носить &laquo;мамики&raquo; можно по-разному. Вдохновитесь легендарными кумирами &ndash; и создайте свою интерпретацию, добавив в образ:</p>\r\n<ul style="text-align: justify;">\r\n<li>Ретро-детали &ndash; собираясь на фэшн-пати;</li>\r\n<li>Свежие тренды 21 века.</li>\r\n</ul>\r\n<p style="text-align: justify;">Беспроигрышный вариант &ndash; голубые, слега потертые mom-джинсы прямого кроя и простая майка. Можно разбавить образ винтажной обувью и аксессуарами. Накиньте шляпу &ndash; и начинайте хулиганить!</p>', 'Джинсы-«мамики»: модная дерзость 2015', 'Джинсы-«мамики»: модная дерзость 2015', 'Джинсы-«мамики»: модная дерзость 2015', 'Джинсы-«мамики»: модная дерзость 2015', 49, 'ru'),
(50, 'Summer in details. Top Beach Accessories 2015', '<p>Colored straw hat</p>\r\n<p>The first place in accessories for the beach is sun protection. A practical straw hat is coping with this function and on the other - the one who wears it, will be a fashionable woman. With narrow and wide edges, with rims and without - choose any, but it is not natural beige. Straw hat bright colors - a great way to stand out on the yellow-blue background of the resort.</p>\r\n<p>Glasses in plastic frame</p>\r\n<p>Blinding sun will be nothing, if you stock up sunscreen and big glasses in a bright plastic frame. Who likes fayfares, who are attracted to rounded forms, like Cat Basilio, who prefer an unusual geometric form - all will find something for themselves. And on the makeup, what a saving!</p>\r\n<p>Tunic</p>\r\n<p>If you have too light skin or you are not so bold as to walk along the coast in a bikini, you surely need a tunic. The most fashionable options - light monophonic cotton and colors in the style of hippies. The most interesting variants are made of fabric with perforations, decorated with fringe. Summer is getting hotter.</p>\r\n<p>Swimsuit Swimsuit</p>\r\n<p>In pursuit of sexuality, the girls abandoned such models, and completely in vain. According to men, in female swimsuits the female figure looks much more appetizing. For lovers of beach volleyball and unrestrained fun on the waves is good news - no matter how intense the activity was, nothing will fly off and not get caught.</p>\r\n<p>Beach bag</p>\r\n<p>Mods carry everything to the beach with them - from the necessary bottles of water and sunscreen to manicure set just in case. In addition, if you can not pull out on the beach boyfriend, carry a towel and bedding yourself. Where do I put it? In a roomy beach bag. Designers have prepared such a variety that there are no definite selection criteria. Pick up bags under a swimsuit or flip flops. One tip - the more details on the bag, the better. Fringe pompons, trinkets - in a word, the details are in fashion!</p>', 'Summer in details. Top Beach Accessories 2015', 'Summer in details. Top Beach Accessories 2015', 'Summer in details. Top Beach Accessories 2015', 'Summer in details. Top Beach Accessories 2015', 47, 'ua'),
(57, 'How to care for clothes', '<p>Each modern fashionista has her own "favorites" - this can be a cashmere sweater, an elegant evening dress, a set of silk underwear and much more. With these things you never want to leave, but, unfortunately, the age of clothing is not long-term.</p>\r\n<p>In order to prolong the pleasure of your favorite outfits, let\'s remember the rules of caring for them. You will be surprised how much you can extend the "life" of clothes, if you follow certain rules.</p>\r\n<p>The three main components of longevity of your clothes are:</p>\r\n<p>&nbsp;&nbsp;Wash;<br />&nbsp;&nbsp;Ironing;<br />&nbsp;&nbsp;storage.<br />Every girl should know the basics of clothing care. Let\'s start with the wash: before throwing the dress in the washing machine, carefully study the information on the label. It\'s not for nothing that they attached it there, but for the fashionable women to follow the technical instructions. If some characters on the label are not clear to you, then Google is always happy to help. Ironing should also be strictly according to the instructions. Do not try to outwit the manufacturer and save on dry cleaning and proper washing.</p>\r\n<p>&nbsp;</p>\r\n<p>Keeping clothes is the most important factor affecting her longevity. Say goodbye to your coat or dress before the next season, do not forget to make sure that the thing is clean. There is nothing ridiculous in this! Justification of the type "it\'s winter, then I\'ll clean it" will lead to "death" of your favorite things. If you do not believe me, ask any dry cleaner. Keep clothes with stains in the closet for almost a year - this is the worst thing you can be with her. Spots can be eaten so much that it will be almost impossible to remove them later. In addition, it is unlikely that someone will like with the onset of a new season, clean out a jacket or coat, instead of flaunting in a clean dress among friends.</p>\r\n<p>Drying and storage of jersey</p>\r\n<p>Knitted things, like all the others, must be dried wisely. The main rule here is protection from sunlight. If you dry things on the balcony under the sun to save space in the apartment, then you just kill them. The fabric quickly fades and loses its strength. Just remember your swimsuit from the previous vacation, it is unlikely that it is the same as it was before the trip.</p>\r\n<p>&nbsp;</p>\r\n<p>Depending on the type of fabric, clothes are stored in different ways. Knitted things should be stored in folded form, and not in a hanging one. Otherwise, the hangers and sleeves will stretch out, and the favorite sweater or dress will lose its attractiveness.</p>\r\n<p>Keep and look after the clothes correctly, then your favorite things will please you very long.</p>', 'How to care for clothes', 'How to care for clothes', 'How to care for clothes', 'How to care for clothes', 46, 'ua'),
(58, 'Jeans - "mothers": fashionable audacity of 2015', '<p>Not for the first year designers recite from the height of their podiums about the excellent possibility of a free upgrade of the wardrobe. Just take a couple of things from the boyfriend, add accessories - and a couple of images are ready. Everything goes on: from shirts to tuxedos. Oh, undressing your loved ones is so nice - in all plans! Over-the-clock now in the trend, and in the crisis the solution is more important than ever.</p>\r\n<p>In 2015, the majestic finger of designers pointed to the wardrobe ... our moms. Yes, yes, now they can be "robbed" with a calm soul. What came of it - read on.</p>\r\n<p>Jeans "mothers"</p>\r\n<p>The return of the trends of the 70\'s and the Hippo culture did their job: mom-jeans appeared in the life of fashionable women. Remember the early Madonna clips and melodramas of the 2000s? Fashion designers proudly and universally paced in flared jeans, and gray mice preferred baggy models with a low fit. Many of us literally on their knees begged their mothers to throw this miracle, wonderful. And it\'s good that they did not persuade - the trend is back in fashion!</p>\r\n<p>Mom-jeans are thoroughly imbued with the spirit of anecdotal feminism, grass, sex and rock\'n\'roll. Legendary women wore them - androgynous, screaming, as if removed from another\'s thighs jeans. Marilyn Monroe, Kate Moss, Drew Barrymore ... .a "Friends"? And "Sex and the City"? All from there, from the dear to the heart of childhood.</p>\r\n<p>You can wear mummies in different ways. Inspire the legendary idols - and create your own interpretation by adding to the image:</p>\r\n<p>Retro details - going to a fashion party;<br />Fresh trends of the 21st century.<br />A win-win option is blue, slightly worn out mom-jeans straight cut and a simple T-shirt. You can dilute the image with vintage shoes and accessories. Cover your hat - and start hooliganning!</p>', '', '', '', '', 49, 'ua'),
(59, 'How to store winter things correctly?', '<p>Oh, how sweet it is with the first rays of a warm sun to throw bored sweaters and jackets on the upper shelves and breathe in the wardrobe summer mood tops and shorts! This almost sacred action fills up from the top to the heel, legs waltz, levity comes to replace gray thoughts. Well, hello, summer, 90 days of happiness!</p>\r\n<p>And everything would be fine, only that summer will be replaced by autumn with its rains and frosts anyway. Of course, this will not be soon. But in order not to lament the warm clothes later, let\'s keep it right now.</p>\r\n<p>Caring for winter things</p>\r\n<p>Well, a little more thought about the inclement winter - and immediately on the beach, agreed? Before you put warm clothes in the closet, they need to be cleaned. Of course, it is always better to take advantage of dry cleaning services, but you can also manage on your own. Preliminarily study the information on the label, empty the pockets - it will not be very pleasant to wear a jacket with melted candy inside or jeans with chewing gum in the back pocket.</p>\r\n<p>It is not necessary to put things in packages - polyethylene creates a favorable environment for moles and bad odors. Ideally, if the room is periodically ventilated - sweaters also want to "breathe". If you are determined to stuff things in a package, then it is better to use containers of natural materials - cotton covers, linen containers, etc.</p>\r\n<p>Catch a few secrets:</p>\r\n<p>Things should not be crowded. Let there be a couple of centimeters between them;<br />Use pouches with lavender or orange peel. Let things smell in the summer, and not the old closet;<br />Keep fur in the coolest possible place;<br />Before you send a woolen coat to the mezzanine, ventilate it well.<br />And yet - the sun wants to, but in the summer there are rainy days. In order not to stretch every time to the mezzanine, make a capsule of clothes for cool weather.</p>', '', '', '', '', 48, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `blog_rubrics`
--

CREATE TABLE `blog_rubrics` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `sort` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_rubrics`
--

INSERT INTO `blog_rubrics` (`id`, `created_at`, `updated_at`, `sort`, `alias`, `status`) VALUES
(10, 1447090962, 1458160121, 1, 'moda', 1),
(11, 1447090973, 1458160121, 2, 'stil', 1),
(12, 1447091013, 1497634967, 0, 'domashnie-dela', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `blog_rubrics_i18n`
--

CREATE TABLE `blog_rubrics_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `blog_rubrics_i18n`
--

INSERT INTO `blog_rubrics_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(10, 'Мода', '<p>Мода - совокупность привычек и вкусов (в отношении одежды, туалета), господствующих в определённой общественной среде в определённое время.</p>', 'Мода', 'Мода', 'Мода', 'Мода', 10, 'ru'),
(11, 'Стиль', '', 'Стиль', 'Стиль', 'Стиль', 'Стиль', 11, 'ru'),
(12, 'Домашние дела', '', 'Домашние дела', 'Домашние дела', 'Домашние дела', 'Домашние дела', 12, 'ru'),
(13, 'Housework', '<p>Housework</p>', 'Housework', 'Housework', 'Housework', 'Housework', 12, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `brands`
--

CREATE TABLE `brands` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands`
--

INSERT INTO `brands` (`id`, `created_at`, `updated_at`, `status`, `sort`, `alias`, `views`, `image`) VALUES
(48, 1499855284, NULL, 1, 0, 'ajusa', 0, NULL),
(49, 1499855297, NULL, 1, 0, 'atex', 0, NULL),
(50, 1499855308, NULL, 1, 0, 'blacktech', 0, NULL),
(51, 1499855323, NULL, 1, 0, 'bresch', 0, NULL),
(52, 1499856066, NULL, 1, 0, 'burkert-fahrzeugteile', 0, NULL),
(53, 1499856105, NULL, 1, 0, 'camozzi', 0, NULL),
(54, 1499856228, NULL, 1, 0, 'cei', 0, NULL),
(55, 1499856245, NULL, 1, 0, 'connect', 0, NULL),
(56, 1499856257, NULL, 1, 0, 'covind', 0, NULL),
(57, 1499856268, NULL, 1, 0, 'craft', 0, NULL),
(58, 1499856284, NULL, 1, 0, 'diesel-technis', 0, NULL),
(59, 1499857145, NULL, 1, 0, 'dinex', 0, NULL),
(60, 1499857169, NULL, 1, 0, 'danija', 0, NULL),
(61, 1499857193, NULL, 1, 0, 'donaldson', 0, NULL),
(62, 1499857324, NULL, 1, 0, 'fag', 0, NULL),
(63, 1499857335, NULL, 1, 0, 'fersa', 0, NULL),
(64, 1499857347, NULL, 1, 0, 'firestone', 0, NULL),
(65, 1499857361, NULL, 1, 0, 'fomar', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `brands_i18n`
--

CREATE TABLE `brands_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `language` varchar(255) DEFAULT NULL,
  `row_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `brands_i18n`
--

INSERT INTO `brands_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `language`, `row_id`) VALUES
(85, 'AJUSA', '', '', '', '', '', 'ru', 48),
(86, 'AJUSA', '', '', '', '', '', 'ua', 48),
(87, 'ATEX', '', '', '', '', '', 'ru', 49),
(88, 'ATEX', '', '', '', '', '', 'ua', 49),
(89, 'BLACKTECH', '', '', '', '', '', 'ru', 50),
(90, 'BLACKTECH', '', '', '', '', '', 'ua', 50),
(91, 'BRESCH', '', '', '', '', '', 'ru', 51),
(92, 'BRESCH', '', '', '', '', '', 'ua', 51),
(93, 'BURKERT FAHRZEUGTEILE', '', '', '', '', '', 'ru', 52),
(94, 'BURKERT FAHRZEUGTEILE', '', '', '', '', '', 'ua', 52),
(95, 'CAMOZZI', '', '', '', '', '', 'ru', 53),
(96, 'CAMOZZI', '', '', '', '', '', 'ua', 53),
(97, 'C.E.I.', '', '', '', '', '', 'ru', 54),
(98, 'C.E.I.', '', '', '', '', '', 'ua', 54),
(99, 'CONNECT', '', '', '', '', '', 'ru', 55),
(100, 'CONNECT', '', '', '', '', '', 'ua', 55),
(101, 'COVIND', '', '', '', '', '', 'ru', 56),
(102, 'COVIND', '', '', '', '', '', 'ua', 56),
(103, 'CRAFT', '', '', '', '', '', 'ru', 57),
(104, 'CRAFT', '', '', '', '', '', 'ua', 57),
(105, 'DIESEL TECHNIС', '', '', '', '', '', 'ru', 58),
(106, 'DIESEL TECHNIС', '', '', '', '', '', 'ua', 58),
(107, 'DINEX', '', '', '', '', '', 'ru', 59),
(108, 'DINEX', '', '', '', '', '', 'ua', 59),
(109, 'Дания', '', '', '', '', '', 'ru', 60),
(110, 'Данiя', '', '', '', '', '', 'ua', 60),
(111, 'DONALDSON', '', '', '', '', '', 'ru', 61),
(112, 'DONALDSON', '', '', '', '', '', 'ua', 61),
(113, 'FAG', '', '', '', '', '', 'ru', 62),
(114, 'FAG', '', '', '', '', '', 'ua', 62),
(115, 'FERSA', '', '', '', '', '', 'ru', 63),
(116, 'FERSA', '', '', '', '', '', 'ua', 63),
(117, 'FIRESTONE', '', '', '', '', '', 'ru', 64),
(118, 'FIRESTONE', '', '', '', '', '', 'ua', 64),
(119, 'Fomar', '', '', '', '', '', 'ru', 65),
(120, 'Fomar', '', '', '', '', '', 'ua', 65);

-- --------------------------------------------------------

--
-- Структура таблицы `callback`
--

CREATE TABLE `callback` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `callback`
--

INSERT INTO `callback` (`id`, `created_at`, `updated_at`, `status`, `name`, `phone`, `ip`) VALUES
(1, 1448259837, NULL, 1, 'dfsd', '+38 (555) 555-55-55', '178.136.229.251'),
(2, 1453192341, NULL, 1, 'Darya', '+38 (564) 654-56-46', '178.136.229.251'),
(3, 1453375180, NULL, 1, 'Darya', '+38 (564) 654-56-46', '178.136.229.251'),
(4, 1453375180, NULL, 1, 'Darya', '+38 (564) 654-56-46', '178.136.229.251'),
(5, 1453375428, NULL, 1, 'Darya', '+38 (564) 654-56-46', '178.136.229.251'),
(6, 1460985084, NULL, 1, 'hhh', '+38 (777) 777-77-77', '178.136.229.251'),
(7, 1461527997, 1483518966, 1, 'test', '+38 (095) 106-66-07', '213.227.252.130'),
(8, 1493295046, NULL, 0, 'sdfsdf', '+38 (234) 324-32-42', '127.0.0.1'),
(9, 1493298079, NULL, 0, 'sdfsdfsd', '+38 (324) 234-23-42', '127.0.0.1'),
(10, 1498116656, NULL, 0, 'имя', '+38 (000) 000-00-00', '178.136.229.251'),
(11, 1498467286, NULL, 0, 'йцукен', '+38 (879) 646-54-63', '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблицы `carts`
--

CREATE TABLE `carts` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `hash`) VALUES
(2323, 1447749439, NULL, '69565ad32e5297a28dd448df1b36be1410594a30'),
(2342, 1448439808, NULL, '1bb723a51abcc03f1e19fa1a5c98f4175b7cf2d4'),
(2380, 1450812850, NULL, 'e258b2981e7cc79793cd131f22f370b1c62a0da5'),
(99067, 1453375175, NULL, 'd7c1a3ddb5c52b6f1173b2628f2a131aa4b6568e'),
(99068, 1453375175, NULL, '1d133655988eb61bd56e653cfd845ac20a56c792'),
(99069, 1453375175, NULL, 'a03d89722d2986610af843fbac62d6c15f6027ac'),
(99078, 1453375175, NULL, '5bec3a68748ad8ff2ea79991d2ab02742df1f4fd'),
(99084, 1453375176, NULL, '165229c1a56fe50f0cdd71e454eacfc4ef0f7d05'),
(99086, 1453375176, NULL, '1aa3d040d614b41bac800cdebd9831d887086d3f'),
(99087, 1453375176, NULL, 'f8b5b887aa9c51abe85c22fb09d454e19d2034c6'),
(99097, 1453375176, NULL, '9b4a74ed549621cd5572a872dbec63625ca5e040'),
(99099, 1453375176, NULL, '4053732927e0b75bafcd877a06a95eb40f33b459'),
(99116, 1453375177, NULL, '9fc71f10f6ff57c7f32fc0507a241ac05f8c3d71'),
(99298, 1453375186, NULL, '9c28414d11faf4edbe25f5a0c9110ba493501611'),
(99308, 1453375186, NULL, 'fefc88ab4b0b1442cf1f66254e3b52bf0da87c66'),
(99309, 1453375186, NULL, 'db8ff6975125aafeba21319a7dbca1911b30c012'),
(99311, 1453375186, NULL, 'aba57a0b5b1fbbc3334f250315a3d8994af7ce42'),
(99312, 1453375186, NULL, '94f2bf7c6d70a8d689a5ebc6c676c5cd8a95ea07'),
(99388, 1453375422, NULL, 'cc31fb0d90b16a60e2a5c69d103283db57e1563c'),
(99389, 1453375422, NULL, '3ed2d3e7de4e2298e7531f23a8affb244a11e4be'),
(99403, 1453375423, NULL, 'e59ff5e60af4250cefd866cfa0f25dd9ed818b66'),
(99415, 1453375424, NULL, 'def2ed877854941d81278dcebf1278f704acff71'),
(99419, 1453375424, NULL, '692de454a2498db3e39b6f3d61f59a70a9d38eb3'),
(99420, 1453375424, NULL, '9104315d33010c955e82ff9fc80bc515c789e6e3'),
(99449, 1453375425, NULL, 'bdc4212d0a13912bc84dede6d318fb930e27510b'),
(99454, 1453375425, NULL, 'ca425f520cae4d03a42ec61ec2865d9348875f01'),
(99455, 1453375425, NULL, '9c6ac706e243de4a52642220e55f1f484acd56b5'),
(99477, 1453375427, NULL, 'fbd6a5c3fd051dc44e683ae4705895a810e66e25'),
(99645, 1453375440, NULL, '161ca525a716ceb4b0ddb4fac56e54c20e246c84'),
(99649, 1453375441, NULL, '5b095a0b47f71736a12d9e3433c3c745066082b1'),
(99660, 1453375441, NULL, 'e70b7a4c58badb5128c8559abaa56ebf25eee073'),
(99680, 1453375443, NULL, '6a34e3c26abf2983896fd7cfed74d2eb2e70cf55'),
(99681, 1453375443, NULL, 'fb5024487fb15787a6db9c70d6a7493d754339d2'),
(99683, 1453375443, NULL, 'eb7ed34ffb6045b99c49c2d768bedcf266f8dd60'),
(99684, 1453375443, NULL, '12630a0484eabe17ca476825d1bce6fc2a23dc27'),
(99685, 1453375443, NULL, '88afb5c636f822aad80c6fae7464a90f2e910fa0'),
(99686, 1453375443, NULL, 'db53c34f6025052e7cb377f2f3229e7611d0a54a'),
(99699, 1453375443, NULL, '6694c2abdde06d35ba223ce07fd491f6d54d5266'),
(99979, 1453378499, NULL, '069f747b95d28fc8922b11e7d000f97e7e941be0'),
(99993, 1453378499, NULL, 'ab74652d04acb9056315c76f066f8918b2436e32'),
(100011, 1453378500, NULL, 'e7f2d9e734dcb92a08a799581615838a30dad880'),
(100013, 1453378500, NULL, 'a582bf68c023bbcfbdb25a038c3064714a8d1d62'),
(100039, 1453378501, NULL, 'e68a5a089d847cc367af8e79154176dc0ee24d75'),
(100046, 1453378501, NULL, '1a2097415a60e1ac8b077c91dee25ab8c9f10ce5'),
(100051, 1453378501, NULL, 'f6f3d639766ec62a7a0942bdec735d6ed5dd113f'),
(100082, 1453378502, NULL, '986d25e10ffeebd94af6be6e79172183767af158'),
(100088, 1453378502, NULL, 'e768e6f3bb9c44344d6139778eecbe5b50bc7e9e'),
(100096, 1453378503, NULL, 'b9805aa032510d09067bba84e1c4bbee3efa75e0'),
(100101, 1453378503, NULL, 'd295da21b4d46a0a3582fa277e14391699ea7e49'),
(100107, 1453378503, NULL, '77a2938a31d5c9981e18cf2342287c0f665bb3b1'),
(100131, 1453378506, NULL, '327b2109c1bd56c386c3dc85c0ba1486d2a9ce38'),
(100901, 1453446827, NULL, '418545edf33e88d103a8b294ce69e7dd7702a000'),
(100903, 1453446827, NULL, '8a97ed84c88e39088677df7314a47eebcc74dc7c'),
(100904, 1453446827, NULL, 'f75ec5a62f4d97cf8c9c6d303bf1c217bee7976b'),
(100905, 1453446827, NULL, '15bf2879d57401f2ee6f06fbff5493ef198a7eb0'),
(100906, 1453446827, NULL, '5d7656325e129b22c88adf7528896b29f0573d6b'),
(100909, 1453446827, NULL, '31a0880ad3d88171ac8e43fb6195a5b50c76fb80'),
(100915, 1453446827, NULL, '318fa3c3a280a1f9d69d0b658842792c747aa1b0'),
(100916, 1453446827, NULL, 'd3e7381fe8c1e9d4f29faaec20552cac25badf13'),
(100921, 1453446827, NULL, '68c4b179e082eb34ebbe6751dd481e55e0a86809'),
(100928, 1453446827, NULL, '659297612ac2fb5e48a7ea7d0948bc69b2a7482d'),
(100935, 1453446827, NULL, '7c8c2be2f993b0cd8c553e8e8d900192289e58d8'),
(100944, 1453446827, NULL, '69a9638e167964969dadc45aba88d6e69e7f57ee'),
(100982, 1453446828, NULL, 'b7a0e0f937d267687dcf1acf32cc396b61f98b09'),
(100991, 1453446829, NULL, 'a65f47bc0b9eb0887c0b41a98f811bb7c6eee73f'),
(100998, 1453446829, NULL, '651677bebcb0f7a6c6d8932f99aa616b878b44f6'),
(101028, 1453446829, NULL, 'f76c259321a220f140ff61b10d6742ad8d7536fa'),
(101173, 1453446834, NULL, '0202a4b8d0129219e73425f0051c79e00c33a02b'),
(101197, 1453446834, NULL, '087d9ec03cea783d2cfbb5f1edc17a259a53da52'),
(101199, 1453446834, NULL, '17c94bc544c7bfa6c18b2fa71de9cdea11bfbfaf'),
(101201, 1453446834, NULL, '99395c041d6fea0f45a0ef003a5c92c2bdd75f63'),
(101202, 1453446834, NULL, '9b64e21133d3b2aec0df69ad09e6c478b6618b3e'),
(101210, 1453446834, NULL, '8927edf9dbf63ee214380febf865a9fb917f7aae'),
(101234, 1453446835, NULL, 'a03026ff2814312ce95fd86c5b45b648c0eb73dc'),
(101240, 1453446835, NULL, 'ccadac0dc8b7052460f9e74b368aea92f8a9a467'),
(101241, 1453446835, NULL, '80bcdbe5aa69a83d63b3a03b53792233842fdda1'),
(101246, 1453446835, NULL, 'c65f0a1d346c3182665afd75bac75fce21b211e8'),
(101247, 1453446835, NULL, '4c14d545587119619e2fea0ed2c7fecf820d63bd'),
(101281, 1453446836, NULL, '07157e5fe1f797949295a37881c868ab001e2979'),
(101287, 1453446837, NULL, '3b5ca203f8da93e9fdaf34881be596fcead1b099'),
(101289, 1453446837, NULL, 'faa788460b4f5f1b19f6344ce30823f4757fa337'),
(101296, 1453446837, NULL, '8512aaa1af339aae83a4075df6e51663b446196d'),
(101309, 1453446838, NULL, '3907fd3c893e8d9dbe91ce9230472e9173713300'),
(101310, 1453446838, NULL, '52c6929fdbf8bfd6a4ad0eedef10cf25370d1916'),
(101316, 1453446838, NULL, '30737a3527cbbab5ef93016fd81d53ab2c319237'),
(101318, 1453446838, NULL, 'e9eb84e050c726e749103b21842adb73254e2316'),
(101319, 1453446838, NULL, 'c42f101189efcef808af21fc2c0a1dc08f52c30e'),
(101320, 1453446838, NULL, '1502d459ec7bb8892cda5d9a53060ca89dfd66da'),
(101322, 1453446838, NULL, '2dfdabfe7e8a94a9154a4cbc0e3c7d0ea1ef7527'),
(101325, 1453446838, NULL, '344b1f3c250ebe2d6ec36f98999ff2b5eaae64b4'),
(101335, 1453446838, NULL, 'cd1ee9aa1c4023a79ffae9f7f659b8425538ebd5'),
(101336, 1453446838, NULL, 'c46bd0305e0018464543fbb0c510cd267325e8a1'),
(101379, 1453446840, NULL, 'afe8855a9cb667381b910154ea8f120ca450aaee'),
(101384, 1453446840, NULL, 'a20d41bc79ee565ace9eb5293f0f8574759872b0'),
(101396, 1453446840, NULL, '64a7f5f100b09d58d1b9ec0abc8cd32be069dfcf'),
(101397, 1453446840, NULL, 'a58afa3e16ba4a232584576cf423ec674a4b6f5b'),
(101411, 1453446841, NULL, 'bd6d3ce92519ae73cb8c1334b64017b09a2ad90e'),
(101413, 1453446841, NULL, '4386c12b898df152330217a62851ffbe71a3e8e6'),
(101414, 1453446841, NULL, '2a4c5b5ee40a692372c491ad0d225645fade8ae7'),
(101415, 1453446841, NULL, 'd2e09386dfb7c9fccdd002c50ea5b0662c465673'),
(101416, 1453446841, NULL, '0da16fbd7d7d4d24505786c1e918d03df0eda150'),
(101417, 1453446841, NULL, '8feb697ae1ed2a41ac91e3ce634f6916d7cc0956'),
(101418, 1453446841, NULL, '81b495ba1e78ebe722e5807f309e7619e57912c5'),
(101428, 1453446841, NULL, '1e94ff334621e63ac1c9d8721283a1ed699022c9'),
(101440, 1453446841, NULL, '860f6064203981d11423574f77ef0c98bb3f891d'),
(101442, 1453446841, NULL, '49bb7769c4d595fd9e5f7694396723833cc43cc5'),
(101443, 1453446842, NULL, '6badad4cb27ca0f8a06faa76e40e04be326cc767'),
(101448, 1453446842, NULL, 'c18c169e1dad2123768eb4996fb5b114927039e2'),
(101455, 1453446842, NULL, '5e0d6afa226032bee021f777c8ca9a0e10bf3346'),
(101457, 1453446842, NULL, '9a2e19f303f7abe2254c4ed4d7d875c52fd117c6'),
(101458, 1453446842, NULL, '50e1f93ab0bc90bb671fe7571d6719b5f2910d1f'),
(101471, 1453446842, NULL, '2096113c73200eb7fb545ff7a698045b70e356b8'),
(101473, 1453446842, NULL, '432900aaf69fb4e5426958015dc3492c36657baf'),
(101475, 1453446842, NULL, '9ed0fa3124e07d533bdf0c26ad4f12464f51fcd3'),
(101476, 1453446842, NULL, 'd06671f4816c7f13dfa5d70a39e2af6c024ce3a4'),
(101477, 1453446843, NULL, 'd8887c02ab8fd0c927143a5ad6ddabff7fee5464'),
(101478, 1453446843, NULL, '506b4fcda37ee1f6025f0cfcce40d11684ac5c44'),
(101479, 1453446843, NULL, 'a38e7af88fa29931079fff9bac1ebc34c21ca83c'),
(101480, 1453446843, NULL, '01b5298a40924ab66add64050215319ef10db4ef'),
(101485, 1453446843, NULL, '83b9bf1fdb76d786853c426c4f0636fd0e234244'),
(101494, 1453446843, NULL, '8bce59f5bd204f197cfbf555811fe80e0af8a5c2'),
(101497, 1453446843, NULL, '7edaf8fc8ac8cfa39b3ab21b160c8f1ce397f934'),
(101518, 1453446844, NULL, '1d44c4693dbd79c6213fd0d9f98c982c271b6580'),
(101523, 1453446844, NULL, 'e18b9caf81cd55ccfe435f82955f3691cada12e7'),
(101536, 1453446844, NULL, '216d136d77dee23455211bf448f3067c56cb47b7'),
(101538, 1453446844, NULL, 'c94af9da44f93bf3d1e872cfd5f9ade4f27f518a'),
(101541, 1453446845, NULL, '8d87d8a91519cb86f4a65cdffd8dab9dd663857e'),
(101544, 1453446845, NULL, 'b8682390daa886d1af49f5d80bb89a6521f847e8'),
(101547, 1453446845, NULL, '6f2e59825a02126eb04e819a99197a17eb6cc821'),
(101552, 1453446845, NULL, '4af90fd1fdd9d3c91d13bef33f6038cd6424f044'),
(101553, 1453446845, NULL, '1aa27873df71e3e28b5e527f0d9f8c6d479f5326'),
(101568, 1453446845, NULL, '68b788363fa91e68651185b3de4e03d8ca1aa012'),
(101583, 1453446846, NULL, 'e545761586c9856df454d74114d2ba1ef5ac0eb5'),
(101584, 1453446846, NULL, '471ee227b1b78e0bdf1a364bef95a64ec1941970'),
(101614, 1453446847, NULL, '23a6625033e123cf8ccba918d6c98e807badace3'),
(101615, 1453446847, NULL, 'f7e65f45efe6e2c5f99a97a52d1836f9e4412228'),
(101618, 1453446848, NULL, '200d0226366fb03e3f65ed361c196a95e23b07e8'),
(101622, 1453446848, NULL, 'c0ee4ffefb1bf46118eff8881cce89f72c4fbac7'),
(101630, 1453446848, NULL, '00d0414959179138634d934c2546aff09f1da439'),
(101641, 1453446848, NULL, '7bdfd47ec9f7e47ab106f21e5b6c357055a088d4'),
(101651, 1453446848, NULL, '9f37e8b9a9ab3e010468f4c50de7e399a76c0402'),
(101652, 1453446848, NULL, 'f826970fea2c6b196d454b05a6498e1e42958cf5'),
(101675, 1453446849, NULL, '82b3af91d61b667102c438859083354f1599b89c'),
(101685, 1453446849, NULL, '1a2c73fc722bd8ff1ea7b22be951ae81c5b7bf8b'),
(101709, 1453446850, NULL, '212bfb01727c1abd0df54983c76d0371447ca6a1'),
(101729, 1453446854, NULL, '0a9613e6b04e896286b978132bf9a92600002d10'),
(101748, 1453971636, NULL, '3d21c5820ba82d1bea74e8f4c36d3fd7fd7a35d4'),
(101834, 1458206567, NULL, 'b4f15ebfd59319ab65eac6ed8349dfa135342cbb'),
(101837, 1458248539, NULL, '9e6c9e04d77cc4f097bf6063746119447cf7e38f'),
(101852, 1458764136, NULL, 'f1529c65a06caf31632067576a398314013e12d5'),
(101862, 1460016605, NULL, '534dcb78b8f49a60fd0f5b41381812fe99b441c3'),
(101896, 1461595538, NULL, '820dac7e9a9bfd57e1f06d1b3a72dd6290085fa6'),
(101919, 1462864680, NULL, '5198d53bd43c0dc0d105b6385269a4952c04eaae'),
(102603, 1499842230, NULL, 'bbc6cac6a2131be9b6617ce15cf3a7b96bff7c3c'),
(102604, 1499845012, NULL, 'cc22db2e2755bedf3bce17a06ee7d31749d1323f');

-- --------------------------------------------------------

--
-- Структура таблицы `carts_items`
--

CREATE TABLE `carts_items` (
  `id` int(10) NOT NULL,
  `cart_id` int(10) NOT NULL,
  `catalog_id` int(10) NOT NULL,
  `count` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `carts_items`
--

INSERT INTO `carts_items` (`id`, `cart_id`, `catalog_id`, `count`) VALUES
(2, 2323, 40, 1),
(3, 2342, 48, 1),
(4, 2380, 48, 1),
(6, 99067, 46, 1),
(7, 99068, 46, 1),
(8, 99069, 46, 1),
(9, 99078, 46, 1),
(10, 99084, 46, 1),
(11, 99086, 46, 1),
(12, 99087, 46, 1),
(13, 99097, 46, 1),
(14, 99099, 46, 1),
(15, 99116, 46, 1),
(16, 99298, 46, 1),
(17, 99308, 46, 1),
(18, 99309, 46, 1),
(19, 99311, 46, 1),
(20, 99312, 46, 1),
(21, 99388, 46, 1),
(22, 99389, 46, 1),
(23, 99403, 46, 1),
(24, 99415, 46, 1),
(25, 99420, 46, 1),
(26, 99419, 46, 1),
(27, 99449, 46, 1),
(28, 99455, 46, 1),
(29, 99454, 46, 1),
(30, 99477, 46, 1),
(31, 99645, 46, 1),
(32, 99649, 46, 1),
(33, 99660, 46, 1),
(34, 99680, 46, 1),
(35, 99681, 46, 1),
(36, 99683, 46, 1),
(37, 99684, 46, 1),
(38, 99685, 46, 1),
(39, 99686, 46, 1),
(40, 99699, 46, 1),
(41, 99979, 46, 1),
(42, 99993, 46, 1),
(43, 100011, 46, 1),
(44, 100013, 46, 1),
(45, 100039, 46, 1),
(46, 100046, 46, 1),
(47, 100051, 46, 1),
(48, 100082, 46, 1),
(49, 100088, 46, 1),
(50, 100096, 46, 1),
(51, 100101, 46, 1),
(52, 100107, 46, 1),
(53, 100131, 46, 1),
(54, 100901, 46, 1),
(55, 100909, 46, 1),
(56, 100906, 46, 1),
(57, 100905, 46, 1),
(58, 100903, 46, 1),
(59, 100904, 46, 1),
(60, 100915, 46, 1),
(61, 100916, 46, 1),
(62, 100921, 46, 1),
(63, 100928, 46, 1),
(64, 100935, 46, 1),
(65, 100944, 46, 1),
(66, 100982, 46, 1),
(67, 100998, 46, 1),
(68, 100991, 46, 1),
(69, 101028, 46, 1),
(70, 101173, 46, 1),
(71, 101197, 46, 1),
(72, 101201, 46, 1),
(73, 101199, 46, 1),
(74, 101202, 46, 1),
(75, 101210, 46, 1),
(76, 101234, 46, 1),
(77, 101240, 46, 1),
(78, 101241, 46, 1),
(79, 101247, 46, 1),
(80, 101246, 46, 1),
(81, 101281, 46, 1),
(82, 101287, 46, 1),
(83, 101289, 46, 1),
(84, 101296, 46, 1),
(85, 101309, 46, 1),
(86, 101310, 46, 1),
(87, 101316, 46, 1),
(88, 101318, 46, 1),
(89, 101319, 46, 1),
(90, 101320, 46, 1),
(91, 101322, 46, 1),
(92, 101325, 46, 1),
(93, 101336, 46, 1),
(94, 101335, 46, 1),
(95, 101379, 46, 1),
(96, 101384, 46, 1),
(97, 101397, 46, 1),
(98, 101396, 46, 1),
(99, 101411, 46, 1),
(100, 101413, 46, 1),
(101, 101415, 46, 1),
(102, 101414, 46, 1),
(103, 101416, 46, 1),
(104, 101417, 46, 1),
(105, 101418, 46, 1),
(106, 101428, 46, 1),
(107, 101442, 46, 1),
(108, 101440, 46, 1),
(109, 101443, 46, 1),
(110, 101448, 46, 1),
(111, 101455, 46, 1),
(112, 101457, 46, 1),
(113, 101458, 46, 1),
(114, 101471, 46, 1),
(115, 101473, 46, 1),
(116, 101475, 46, 1),
(117, 101476, 46, 1),
(118, 101478, 46, 1),
(119, 101477, 46, 1),
(120, 101480, 46, 1),
(121, 101479, 46, 1),
(122, 101485, 46, 1),
(123, 101494, 46, 1),
(124, 101497, 46, 1),
(125, 101518, 46, 1),
(126, 101523, 46, 1),
(127, 101536, 46, 1),
(128, 101538, 46, 1),
(129, 101541, 46, 1),
(130, 101544, 46, 1),
(131, 101547, 46, 1),
(132, 101553, 46, 1),
(133, 101552, 46, 1),
(134, 101568, 46, 1),
(135, 101583, 46, 1),
(136, 101584, 46, 1),
(137, 101614, 46, 1),
(138, 101615, 46, 1),
(139, 101622, 46, 1),
(140, 101618, 46, 1),
(141, 101630, 46, 1),
(142, 101641, 46, 1),
(143, 101652, 46, 1),
(144, 101651, 46, 1),
(145, 101675, 46, 1),
(146, 101685, 46, 1),
(147, 101709, 46, 1),
(148, 101729, 46, 1),
(149, 101748, 92, 1),
(150, 101834, 50, 1),
(151, 101837, 76, 1),
(152, 101852, 101, 1),
(153, 101862, 126, 1),
(157, 101896, 107, 1),
(158, 101919, 155, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE `catalog` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `alias` varchar(255) DEFAULT NULL,
  `parent_id` int(10) DEFAULT '0',
  `new` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `cost` int(6) NOT NULL DEFAULT '0',
  `cost_old` int(6) NOT NULL DEFAULT '0',
  `artikul` varchar(128) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0',
  `brand_alias` varchar(255) DEFAULT NULL,
  `model_alias` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `specifications` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `created_at`, `updated_at`, `status`, `sort`, `alias`, `parent_id`, `new`, `sale`, `top`, `available`, `cost`, `cost_old`, `artikul`, `views`, `brand_alias`, `model_alias`, `image`, `specifications`) VALUES
(40, 1447094647, 1454059240, 1, 1, 'kurtka-blend', 29, 1, 0, 0, 1, 2810, 0, '1', 10, NULL, NULL, '31c79213d5aceed90eed954307c44416.jpg', '{"material":["nejlon","poliestr","silikon"],"sex":"uniseks","proizvodstvo":"italija","sezon":["zima"],"tsvet":"chernyj"}'),
(41, 1447094746, 1454059253, 1, 2, 'brave-soul', 29, 1, 0, 0, 1, 2210, 0, '2', 3, NULL, NULL, '3faf38fccbe35f31b603141be04317f3.jpg', '{"material":["kozha","silikon","hlopok"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["zima"],"tsvet":"sinij"}'),
(42, 1447094856, 1454059257, 1, 3, 'soliver', 29, 0, 0, 1, 1, 2310, 0, '3', 2, NULL, NULL, 'fe75cb26c4ae4c06af7d7fdef455fe1b.jpg', '{"material":["nejlon","sintetika","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["zima"],"tsvet":"green"}'),
(43, 1447095158, 1461879646, 1, 1, 'mudo', 30, 1, 0, 0, 0, 312, 0, '4', 19, NULL, NULL, '21f15ca55231a0db69dad9a2f1c6d2cd.jpg', '{"material":["poliestr","polimer","sintetika"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(44, 1447095265, 1453987283, 1, 2, 'only--sons', 30, 0, 0, 1, 2, 890, 820, '5', 54, NULL, NULL, '43c658475e0a09cb4fc1c63b46bdc5a9.jpg', '{"material":["lateks","nubuk","hlopok"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["leto"],"tsvet":"white"}'),
(45, 1447095348, 1453986770, 1, 1, 'top-secret', 31, 0, 1, 0, 1, 850, 950, '6', 8, NULL, NULL, '85b47014b4b719452a06dc924426491f.jpg', '{"material":["nubuk","poliestr","tekstil"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","osen"],"tsvet":"korichnevyj"}'),
(46, 1447095545, 1454061160, 1, 1, 'patrol', 32, 0, 1, 0, 1, 875, 1030, '7', 156, NULL, '1300', '6891ab8f29e5eeded563f514d42279f4.jpg', '{"material":["zamsha","iskusstvennaja-kozha"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","zima","leto"],"tsvet":"chernyj"}'),
(47, 1447095635, 1491228017, 1, 2, 'dirk-bikkembergs', 32, 0, 0, 0, 0, 1270, 0, '8', 6, NULL, '1400', '4454777def4b6cf80459a15566e23770.jpg', '{"material":["kozha","sintetika"],"sex":"uniseks","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"white"}'),
(48, 1447095826, 1485439373, 1, 3, 'reebok-classics', 32, 0, 0, 0, 2, 1450, 0, '9', 335, NULL, 'airfoamposite', 'c2c9d0b441f241040ff329880f7840e5.jpg', '{"material":["kozha"],"sex":"uniseks","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"green"}'),
(49, 1447095908, 1454006747, 1, 1, 'burton-menswear-london', 33, 0, 0, 0, 0, 2860, 0, '10', 4, NULL, NULL, 'd56dbeb19c27a828e5762b1aabd956a2.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(50, 1447095980, 1458206606, 1, 1, 'vitacci', 34, 1, 0, 0, 1, 1300, 0, '11', 8, NULL, 'airjordan', '147378e984f87fbc42a0b80bd52899a2.jpg', '{"material":["zamsha"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["leto"],"tsvet":"sinij"}'),
(51, 1447096085, 1461223417, 1, 1, 'quiksilver', 35, 1, 0, 0, 1, 1740, 0, '12', 26, NULL, NULL, '528d7c85efd8247ba056e4a1c29b4bca.jpg', '{"material":["nejlon","nubuk","poliestr","polimer"],"sex":"uniseks","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(52, 1447096156, 1461223431, 1, 2, 'david-jones', 35, 1, 0, 0, 1, 1500, 0, '13', 5, NULL, NULL, '3e402891cdc71ca41bc7f7f09e042d4b.jpg', '{"material":["kozha"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"fioletovyj"}'),
(53, 1447096237, 1454061351, 1, 3, 'a-personality', 35, 0, 0, 1, 1, 400, 0, '14', 2, NULL, NULL, 'ffeee2baa0eb681477b1b4ae95c92e79.jpg', '{"material":["iskusstvennaja-kozha"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(54, 1447096327, 1492428101, 1, 1, 'oakley', 36, 1, 0, 0, 1, 1701, 0, '15', 15, NULL, NULL, '3b3c8e2b8b4c89d1fbb12c3e12de9d5a.jpg', '{"material":["polimer"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"korichnevyj"}'),
(55, 1447096428, 1456335230, 1, 2, 'polaroid', 36, 1, 0, 0, 1, 756, 0, '16', 7, NULL, NULL, 'ff92a4371fdb1b55022573290fc5ad2f.jpg', '{"material":["polimer"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"sinij"}'),
(56, 1453972719, 1454076898, 1, 2, 'regular-fit-jeans', 31, 0, 0, 1, 1, 1100, 0, '5', 3, NULL, 'airforce', '9bd9e2c0cb862c21ba8b33160fa544b7.jpg', '{"material":["lateks","nejlon"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","osen"],"tsvet":"sinij"}'),
(57, 1453972822, 1453987499, 1, 3, 'regular-slim-jeans', 31, 0, 0, 1, 1, 1450, 1200, '7', 3, NULL, NULL, '72db86cef6b5e1901bd0dabf72b1735e.jpg', '{"material":["sintetika","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(58, 1453972990, 1492435428, 1, 4, 'regular-jeans', 31, 1, 0, 0, 1, 1270, 0, '5', 6, NULL, NULL, '46d9d8f8e3be8cb4f5049aa0b11b796c.jpg', '{"tsvet":"sinij","sezon":["leto","vesna"],"sex":"zhenskij","proizvodstvo":"indonezija","material":["polimer","silikon"]}'),
(59, 1453973163, 1457985925, 1, 5, 'jeans', 31, 1, 0, 0, 1, 800, 0, '4', 3, NULL, NULL, 'feee3908006fdc4ab715cd327d00a745.jpg', '{"material":["nubuk","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(60, 1453973235, 1464802566, 1, 6, 'fitjeans', 31, 1, 0, 0, 0, 980, 0, '5', 5, NULL, 'airforce', '371f58a9be9b8faba677741ac6b12050.jpg', '{"material":["lateks","nejlon"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(61, 1453973760, 1463061442, 1, 1, 'van-heusen', 30, 1, 0, 0, 1, 500, 0, '1', 4, NULL, NULL, '744f8a702159b78c379ed35dc8200eb9.jpg', '{"material":["lateks","polimer","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(62, 1453973836, 1461250728, 1, 2, 'tootal', 30, 1, 0, 0, 1, 670, 0, '2', 2, NULL, NULL, '8aafb240eb2626fb201353890a8d9035.jpg', '{"material":["nubuk","silikon","tekstil"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"sinij"}'),
(63, 1453973886, 1453987345, 1, 3, 'oxford', 30, 0, 0, 1, 1, 490, 0, '3', 0, NULL, NULL, '69fb49c55e1dbae657920116c3121aca.jpg', '{"material":["nejlon","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(64, 1453973952, 1453987430, 1, 4, 'morley', 30, 0, 1, 0, 1, 600, 680, '4', 0, NULL, NULL, 'e88ca78f3d83a09ec4d9a087f7488465.jpg', '{"material":["nejlon","poliestr","polimer"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(65, 1453974019, 1461250735, 1, 5, 'shirting', 30, 0, 1, 0, 1, 500, 530, '5', 5, NULL, NULL, '343f2ed7a53c89842f76680def0ff912.jpg', '{"material":["iskusstvennaja-kozha","nejlon","polimer","tekstil"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"green"}'),
(66, 1453974080, 1453987621, 1, 7, 'aertex', 30, 0, 0, 0, 2, 549, 0, '7', 0, NULL, 'airhuarache', '4000f9750e94224c62a0c5a4e155a753.jpg', '{"material":["iskusstvennaja-kozha","kozha","polimer"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(67, 1453974669, 1454059251, 1, 1, 'marnelly', 29, 0, 1, 0, 1, 2500, 3050, '1', 1, NULL, NULL, 'cf92f6be7ef042db8506fd217337ec04.jpg', '{"material":["lateks","nejlon","polimer","silikon","tekstil","hlopok"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(68, 1453974739, 1454059255, 1, 2, 'mirage', 29, 0, 1, 0, 1, 2300, 2570, '2', 1, NULL, NULL, '9b2bd4df4c45164ff451721eec1393a4.jpg', '{"material":["nejlon","poliestr","polimer","sintetika","tekstil","hlopok"],"sex":"zhenskij","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(69, 1453974795, 1454059259, 1, 3, 'sinta', 29, 0, 0, 0, 2, 2499, 0, '3', 2, NULL, NULL, 'af5e3e1d7e0cefb9d417502078673523.jpg', '{"material":["zamsha","kozha","nejlon","nubuk","sintetika","hlopok"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(70, 1453975300, 1454009693, 1, 1, 'gant', 34, 1, 0, 0, 1, 1500, 0, '1', 5, NULL, NULL, '0d8ad8265bc795e5f0b1e46f1872f01d.jpg', '{"material":["iskusstvennaja-zamsha"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"turquoise"}'),
(71, 1453975356, 1454004432, 1, 2, 'alberto-guardiani', 34, 0, 0, 1, 1, 1200, 0, '2', 3, NULL, NULL, '99d4ab2baa6efb497393b8caa546b7d2.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"0"}'),
(72, 1453975422, 1454003835, 1, 3, 'animas-code', 34, 0, 0, 1, 1, 1400, 0, '3', 5, NULL, '1400', '0e6af6118a01535c6d6b8cb9b9b1cc95.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","leto","osen"],"tsvet":"seryj"}'),
(73, 1453975543, 1454006743, 1, 1, 'baldinini', 33, 0, 1, 0, 1, 800, 900, '1', 0, NULL, NULL, 'f61df09878d457ee66fc7e1fd14addbd.jpg', '{"material":["nejlon","nubuk"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","leto","osen"],"tsvet":"krasnyj"}'),
(74, 1453975599, 1454006751, 1, 2, 'bally', 33, 0, 0, 0, 2, 1300, 0, '2', 0, NULL, '1300', '2b58dd8bf1316ed14ede88d7fe1a9a92.jpg', '{"material":["zamsha","nubuk"],"sex":"zhenskij","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(75, 1453975667, 1454006756, 1, 3, 'barracuda', 33, 0, 0, 0, 0, 2100, 0, '3', 0, NULL, NULL, '6acb9c32679cf8b76b7d4a1138f4ea24.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"beige"}'),
(76, 1453975845, 1458248564, 1, 1, 'sneakers-versace-medusa', 32, 0, 1, 0, 1, 1100, 1300, '1', 4, NULL, 'airforce', 'aa1d555bcf57d51b72b13f70e12d5036.png', '{"material":["zamsha","iskusstvennaja-zamsha","iskusstvennaja-kozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","sintetika","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"light_blue"}'),
(77, 1453975896, 1490015486, 1, 2, 'rick-owens', 32, 0, 0, 0, 0, 1200, 970, '2', 3, NULL, NULL, 'ac95a9367b31d93cf5c8f6e5bf1a34de.jpg', '{"material":["nejlon","silikon","tekstil"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(78, 1453975946, 1454061169, 1, 3, 'kanye-west-yeezy-750-boost-low', 32, 0, 0, 0, 2, 1000, 880, '3', 2, NULL, '1400', 'f30fe5c63fd4f0f9e382e275606aa7e5.jpg', '{"material":["kozha","nejlon","silikon"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(79, 1453976111, 1471585831, 1, 1, 'ray-ban-wayfarer', 36, 0, 1, 0, 1, 395, 790, '1', 4, NULL, NULL, '9286138925af6f01592d369df039cffc.jpg', '{"material":["kozha","nejlon","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(80, 1453976168, 1454062780, 1, 2, 'olivia', 36, 0, 1, 1, 1, 395, 790, '2', 0, NULL, NULL, '27a7915a23137d61f99bc2a20df0dc61.jpg', '{"material":["lateks","nubuk","sintetika"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(81, 1453976216, 1454062891, 1, 3, 'gant1701', 36, 0, 0, 0, 1, 504, 0, '3', 0, NULL, NULL, '3e7b9e0e1683ca0fe9a851c4c3051520.jpg', '{"material":["kozha","nejlon","nubuk","polimer"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(82, 1453976329, 1462888568, 1, 1, 'zhenskaja-sumka-dg', 35, 0, 0, 1, 1, 890, 0, '1', 5, NULL, NULL, '81734926419a4401f8322ece3a5fe691.jpg', '{"material":["iskusstvennaja-kozha","kozha","poliestr"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"yellow"}'),
(83, 1453976392, 1454061671, 1, 2, 'zhenskaja-sumka-dg6134', 35, 0, 1, 0, 1, 1300, 1500, '2', 0, NULL, NULL, '06020e5f548b14bbe0d3cddd1ddb9609.jpg', '{"material":["iskusstvennaja-kozha","lateks","polimer"],"sex":"zhenskij","proizvodstvo":"ukraina","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(84, 1453982705, 1453986781, 1, 1, 'two-women-in-the-world', 31, 0, 1, 0, 1, 680, 709, '1', 1, NULL, NULL, '878a7e4e4ce127d11d0f01e49b165543.jpg', '{"material":["hlopok"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"sinij"}'),
(85, 1453985288, 1464611176, 1, 1, 'paige', 31, 0, 0, 0, 0, 1645, 0, '1', 10, NULL, NULL, '1e45fd1d34c616984a94829c43c9d251.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"]}'),
(86, 1453985577, 1453986790, 1, 1, 'victoria-beckham', 31, 0, 0, 0, 0, 1500, 0, '1', 0, NULL, NULL, '8de18a7355287270b3df43c05a1048c0.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(87, 1453985693, 1465034664, 1, 1, 'victoria-beckham2339', 31, 0, 0, 0, 2, 1405, 0, '1', 1, NULL, NULL, '2130622858813fec5259b99f8b452e75.jpg', '{"material":["poliestr","hlopok"],"sex":"zhenskij","proizvodstvo":"0","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(88, 1453988109, 1454059290, 1, 1, 'burberry-brit', 29, 0, 0, 0, 2, 1680, 0, '1', 4, NULL, NULL, '650e1c2c39fcd2db0fe5552ce0a96813.jpg', '{"material":["zamsha","hlopok"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["zima","osen"],"tsvet":"sinij"}'),
(89, 1453999405, 1454004747, 1, 1, 'burberry', 34, 0, 1, 0, 1, 800, 970, '1', 2, NULL, NULL, 'e16e898eaab10b2a8288cc73e4da458c.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(90, 1453999511, 1454004745, 1, 1, 'dolce--gabbana', 34, 0, 1, 0, 1, 1000, 1350, '1', 6, NULL, NULL, '996c9737bb19cec0cdf8545920a35024.jpg', '{"material":["kozha","polimer"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","leto","osen"],"tsvet":"light_blue"}'),
(91, 1454004856, 1454004928, 1, 1, 'gucci', 34, 0, 0, 0, 2, 1590, 0, '1', 1, NULL, NULL, '1a89bd77c02b30bb960a2758628ff129.jpg', '{"material":["kozha","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["leto"],"tsvet":"sinij"}'),
(92, 1454005034, 1464611193, 1, 1, 'bottega-veneta', 34, 0, 0, 0, 0, 1354, 0, '1', 4, NULL, NULL, '27386468296175ab291d15df6925661d.jpg', '{"material":["zamsha"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"coral"}'),
(93, 1454005265, 1454005359, 1, 1, 'hermes', 34, 0, 0, 0, 0, 1654, 0, '1', 0, NULL, NULL, '222d27610fe00ae41888d76765c172b5.jpg', '{"material":["zamsha","nubuk"],"sex":"uniseks","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"korichnevyj"}'),
(94, 1454005514, 1454005532, 1, 1, 'lacoste', 34, 0, 0, 0, 2, 800, 0, '1', 1, NULL, NULL, '0123777411cf5317bb713d9afdc3c9c1.jpg', '{"material":["iskusstvennaja-zamsha","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["leto"],"tsvet":"beige"}'),
(95, 1454006167, 1459953214, 1, 1, 'christian-louboutin', 33, 0, 1, 0, 1, 1987, 2133, '1', 1, NULL, NULL, 'aedca7492b0710de73e4d3553a0b317c.jpg', '{"material":["zamsha","poliestr","sintetika"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["leto"],"tsvet":"sinij"}'),
(96, 1454006239, 1455883752, 1, 1, 'christian-louboutin5172', 33, 0, 0, 1, 1, 1679, 0, '1', 2, NULL, NULL, '296c2f7b532ab1905d9813cd4843d955.jpg', '{"material":["zamsha","poliestr","silikon"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"chernyj"}'),
(97, 1454006518, 1454006721, 1, 1, 'hermes8759', 33, 0, 0, 1, 1, 1733, 0, '1', 1, NULL, NULL, 'f733af1bc7c73d6def2e19d94fcebd15.jpg', '{"material":["kozha","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(98, 1454006577, 1460018408, 1, 1, 'phillip-plein', 33, 1, 0, 0, 1, 987, 0, '1', 2, NULL, NULL, 'ce1d58dc0da917077043c1edf6de746a.jpg', '{"material":["iskusstvennaja-zamsha","kozha","nubuk"],"sex":"muzhskoj","proizvodstvo":"0","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(99, 1454006650, 1454006713, 1, 0, 'christian-louboutin6404', 33, 1, 0, 0, 1, 1267, 0, '', 1, NULL, NULL, 'eb148d52f4cc6c272ee88bacf2776732.jpg', '{"material":["zamsha","iskusstvennaja-zamsha","polimer","sintetika"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"0"}'),
(100, 1454058542, 1454058563, 1, 0, 'dior-2015', 30, 0, 0, 0, 2, 845, 0, '', 1, NULL, NULL, '400f456673efc583825c497288dbdca7.jpg', '{"material":["tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","leto"],"tsvet":"white"}'),
(101, 1454058665, 1463997612, 1, 0, 'alexander-mcqueen', 30, 0, 0, 0, 0, 750, 0, '', 4, NULL, NULL, 'bd1b148c4d131aaa82c04b236c01de3c.jpg', '{"material":["polimer","sintetika","hlopok"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["osen"],"tsvet":"0"}'),
(102, 1454058981, 1454059244, 1, 0, 'dsquared', 29, 0, 0, 0, 0, 2400, 0, '', 2, NULL, NULL, 'c75370b832affc3be9d433178f864ead.jpg', '{"material":["kozha","poliestr","tekstil"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(103, 1454059079, 1454059238, 1, 0, 'burberry5235', 29, 0, 0, 0, 1, 1220, 0, '', 1, NULL, NULL, '73487bc7d72b9ca7f581b1e2c87ed78d.jpg', '{"material":["zamsha","kozha","poliestr"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna"],"tsvet":"chernyj"}'),
(104, 1454059182, 1457985913, 1, 0, 'burberry-kozhanaja', 29, 0, 0, 0, 0, 850, 0, '', 2, NULL, NULL, '348b0a5a662583ff1543ba0703034249.jpg', '{"material":["iskusstvennaja-kozha","lateks","silikon"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(105, 1454059444, 1454059512, 1, 0, 'hermes5183', 33, 0, 0, 0, 1, 1580, 0, '', 1, NULL, NULL, '3ee3635b29378b2c1b92d0ee8a8262ae.jpg', '{"material":["kozha","nubuk","sintetika"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna"],"tsvet":"korichnevyj"}'),
(106, 1454060603, 1454061145, 1, 0, 'dsquared2', 32, 0, 0, 1, 1, 1200, 0, '', 0, NULL, NULL, 'bcedcb826fce171cb73c27dcf27e2b85.jpg', '{"material":["lateks","nejlon","silikon"],"sex":"uniseks","proizvodstvo":"kitaj","sezon":["vesna"],"tsvet":"white"}'),
(107, 1454060703, 1464168802, 1, 0, 'nike-chernye', 32, 0, 0, 1, 1, 984, 0, '', 2, NULL, NULL, '1e2e2f992f6e9d1aad557278cd9d56b7.jpg', '{"material":["zamsha","nejlon","polimer"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima","osen"],"tsvet":"sinij"}'),
(108, 1454060834, 1479218247, 1, 0, 'dg-serye', 32, 1, 0, 0, 1, 1640, 0, '', 3, NULL, NULL, 'a4211640da4bb4ad88bf464938bdda63.jpg', '{"material":["kozha","polimer"],"sex":"uniseks","proizvodstvo":"italija","sezon":["leto","osen"],"tsvet":"seryj"}'),
(109, 1454060948, 1485500892, 1, 0, 'rick-owens8331', 32, 1, 0, 0, 1, 1400, 0, '', 4, NULL, NULL, '40d2333010aa10e1f683eaee65ffeb1f.jpg', '{"material":["kozha","nubuk","polimer"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(110, 1454061760, 1454061809, 1, 0, 'zhenskaja-sumka-dior', 35, 0, 1, 0, 1, 1800, 2000, '', 0, NULL, NULL, '8243a32288f42683b19c2e6246d32434.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(111, 1454061862, 1454061926, 1, 0, 'zhenskaja-sumka-furla', 35, 0, 0, 0, 2, 1360, 0, '', 0, NULL, NULL, '2bc9719c017326e92508f46b404f342f.jpg', '{"material":["lateks","nejlon","nubuk"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"rozovyj"}'),
(112, 1454062022, 1454062063, 1, 0, 'muzhskaja-sumka-fred-perry', 35, 0, 0, 0, 2, 1120, 0, '', 1, NULL, NULL, '82a09f8eae1e2e17f6f4d38a116fe1f9.jpg', '{"material":["iskusstvennaja-kozha","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(113, 1454062111, 1454062156, 1, 0, 'muzhskaja-sumka-fred-perry5223', 35, 0, 0, 0, 0, 1227, 0, '', 0, NULL, NULL, '027e8a2609c1af3e188c8638f016fe97.jpg', '{"material":["kozha","poliestr","hlopok"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"seryj"}'),
(114, 1454062198, 1454062273, 1, 0, 'muzhskaja-sumka-na-pojas-dg', 35, 0, 0, 0, 0, 1413, 0, '', 2, NULL, NULL, '992e36604939e00adee689ee475add0a.jpg', '{"material":["nubuk","polimer","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(115, 1454063053, 1456335246, 1, 0, 'porsche-design', 36, 0, 0, 1, 1, 618, 0, '', 2, NULL, NULL, '5bb962a05bf5a36940a77ba77e496ac6.jpg', '{"material":["iskusstvennaja-zamsha","kozha","poliestr"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(116, 1454063205, 1460022189, 1, 0, 'cartier', 36, 0, 0, 1, 1, 890, 0, '', 3, NULL, NULL, 'bf2ae8500081b45c16b214f51e50d39e.jpg', '{"material":["kozha","lateks","nubuk"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(117, 1454063317, 1461219408, 1, 0, 'ferrari', 36, 0, 0, 0, 0, 796, 0, '', 2, NULL, NULL, '3d087c18ee28a88fc99dc78933d842a1.jpg', '{"material":["kozha","nubuk","poliestr","sintetika"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(118, 1454063440, 1454063488, 1, 0, 'porsche-design9374', 36, 0, 0, 0, 0, 619, 0, '', 0, NULL, NULL, '69efd778c57c7f5e8561eec011853107.jpg', '{"material":["kozha","lateks","polimer","silikon"],"sex":"uniseks","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(119, 1454063524, 1454323431, 1, 0, 'muzhskie-ochki-model-2368c2', 36, 0, 0, 0, 2, 589, 0, '', 2, NULL, NULL, '92f3b935559751b2265a53c2fecf62ef.jpg', '{"material":["lateks","nubuk","silikon","tekstil"],"sex":"uniseks","proizvodstvo":"polsha","sezon":["vesna","zima","leto","osen"],"tsvet":"korichnevyj"}'),
(120, 1454319163, 1461219368, 1, 0, 'dzhinsy-philipp-plein', 31, 0, 0, 0, 1, 1368, 0, '', 2, NULL, NULL, 'c0fec459280ee93b12b4e4a711705309.jpg', '{"material":["lateks","nubuk","poliestr","hlopok"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["zima","osen"],"tsvet":"sinij"}'),
(121, 1454319233, 1454319250, 1, 0, 'dzhinsy-muzhskie-balmain', 31, 0, 0, 0, 2, 2500, 0, '', 0, NULL, NULL, '971c2e8906aa445de06e2a0bf33f0b87.jpg', '{"material":["zamsha","poliestr","tekstil","hlopok"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"0"}'),
(122, 1454319307, 1492434833, 1, 0, 'dzhinsy-muzhskie-dsquared', 31, 1, 0, 0, 1, 1368, 0, '', 3, NULL, NULL, '8c7b7cecca6ff092982454f7334ab879.jpg', '{"tsvet":"0","sezon":["zima","osen"],"sex":"muzhskoj","proizvodstvo":"vetnam","material":["iskusstvennajazamsha","iskusstvennajakozha","nejlon","sintetika"]}'),
(123, 1454319356, 1454319373, 1, 0, 'dzhinsy-muzhskie-versace', 31, 0, 0, 1, 1, 1392, 0, '', 1, NULL, NULL, 'a0977a205a70991491100a55f09d1368.jpg', '{"material":["lateks","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(124, 1454319406, 1454319419, 1, 0, 'zhenskie-dzhinsy-dsquared', 31, 0, 0, 0, 1, 1467, 0, '', 0, NULL, NULL, '00538151c9f5b0c2548a2dd7aff6339e.jpg', '{"material":["lateks","silikon","tekstil"],"sex":"zhenskij","proizvodstvo":"polsha","sezon":["zima","osen"],"tsvet":"0"}'),
(125, 1454319828, 1454319865, 1, 0, 'muzhskaja-rubashka-mcqueen', 30, 0, 0, 0, 1, 1008, 0, '', 0, NULL, NULL, '59d38fdc0ca405a5b33d3c7841fd842b.jpg', '{"material":["lateks","nubuk","tekstil"],"sex":"muzhskoj","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"krasnyj"}'),
(126, 1454319898, 1460016736, 1, 0, 'rubashka-dior-homme', 30, 1, 0, 0, 1, 1488, 0, '', 7, NULL, NULL, '654581ae81effacc3a69f675c1fe3a94.jpg', '{"material":["kozha","nubuk","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(127, 1454319945, 1454319955, 1, 0, 'rubashka-givenchy', 30, 0, 0, 1, 1, 1739, 0, '', 0, NULL, NULL, '720d0d3efa105c644950af32522f4045.jpg', '{"material":["nejlon","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"chernyj"}'),
(128, 1454320002, 1461250714, 1, 0, 'muzhskaja-rubashka-kenzo', 30, 0, 0, 0, 0, 867, 0, '', 1, NULL, NULL, 'b22809828871f8e09526177f0baed2b1.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(129, 1454320064, 1460975257, 1, 0, 'rubashka-givenchy2219', 30, 0, 0, 0, 2, 1699, 0, '', 1, NULL, NULL, 'b872e6cbc18e01ce6047b418aa0b2f88.jpg', '{"material":["poliestr","sintetika","hlopok"],"sex":"uniseks","proizvodstvo":"ssha","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(130, 1454320424, 1458764141, 1, 0, 'muzhskoj-puhovik-armani', 29, 0, 0, 1, 1, 2107, 0, '', 6, NULL, NULL, '4c81d2327a33a5aa58e18501eccf17a5.jpg', '{"material":["nejlon","nubuk","sintetika","tekstil"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"fioletovyj"}'),
(131, 1454320481, 1454320498, 1, 0, 'kurtka-burberry-kozhanaja', 29, 0, 0, 0, 2, 3510, 0, '', 0, NULL, NULL, '2e49d83ce27e526f8e7cc578406fb5a8.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(132, 1454320548, 1454320563, 1, 0, 'kurtka-burberry-kozhanaja5847', 29, 0, 0, 0, 0, 3400, 0, '', 1, NULL, NULL, 'cb0ab2f6740708dff3d7607f41163153.jpg', '{"material":["kozha"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(133, 1454320609, 1479125714, 1, 0, 'zhenskij-plasch-karen-millen', 29, 0, 0, 1, 1, 2067, 0, '', 2, NULL, NULL, '7991833d4e097829b93dd9f278b40c14.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["vesna","osen"],"tsvet":"seryj"}'),
(134, 1454320662, 1454320674, 1, 0, 'muzhskoe-palto-burberry', 29, 0, 0, 0, 2, 2800, 0, '', 0, NULL, NULL, '857b1bc39a911a1a24ae239ee59d16e2.jpg', '{"material":["lateks","nejlon","poliestr","sintetika"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["zima"],"tsvet":"chernyj"}'),
(135, 1454322286, 1454322300, 1, 0, 'zhenskie-mokasiny-tods-riancess-belye', 34, 0, 0, 0, 2, 1920, 0, '', 0, NULL, NULL, '3bfdb6e9c6abd9d58741a9afd69a73d1.jpg', '{"material":["lateks","nubuk","silikon","sintetika"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","zima","leto","osen"],"tsvet":"white"}'),
(136, 1454322332, 1454322352, 1, 0, 'zhenskie-mokasiny-tods-riancess-chernye', 34, 0, 0, 0, 2, 1920, 0, '', 0, NULL, NULL, '98a88f9a611f19fda6d0507bfeb84ef4.jpg', '{"material":["kozha","nejlon","polimer"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["zima","leto","osen"],"tsvet":"chernyj"}'),
(137, 1454322385, 1465597478, 1, 0, 'mokasiny-tods-serye-zamshevye', 34, 1, 0, 0, 1, 1840, 0, '', 6, NULL, NULL, '2ab31caa02f13ca7fe793fc6ffde3935.jpg', '{"material":["zamsha"],"sex":"zhenskij","proizvodstvo":"0","sezon":["vesna","leto"],"tsvet":"seryj"}'),
(138, 1454322435, 1454605014, 1, 0, 'muzhskie-mokasiny-prada', 34, 0, 0, 1, 1, 1350, 0, '', 2, NULL, NULL, 'dd84e3af3ac388c165830cf5c2a99be1.jpg', '{"material":["iskusstvennaja-kozha","poliestr","polimer"],"sex":"muzhskoj","proizvodstvo":"kitaj","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(139, 1454322489, 1479125703, 1, 0, 'muzhskie-mokasiny-tods-temno-sinie', 34, 1, 0, 0, 1, 1100, 0, '', 1, NULL, NULL, '33d7d2b06133a49ca5fe0f732ebf5d5b.jpg', '{"material":["nubuk","polimer","silikon"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["leto","osen"],"tsvet":"sinij"}'),
(140, 1454323547, 1454323565, 1, 0, 'tufli-giuseppe-zanotti-bezhevye-kozhanye', 33, 0, 0, 0, 1, 2100, 0, '', 0, NULL, NULL, 'ce8d895d2c71cfb9a98da843140265a7.jpg', '{"material":["kozha"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","leto"],"tsvet":"beige"}'),
(141, 1454323591, 1454323600, 1, 0, 'tufli-gianmarco-lorenzi-chernye', 33, 0, 0, 0, 1, 2400, 0, '', 0, NULL, NULL, 'da41ddcc27ee136176fdce29738682b2.jpg', '{"material":["kozha","silikon","sintetika"],"sex":"zhenskij","proizvodstvo":"vetnam","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(142, 1454323628, 1454323643, 1, 0, 'tufli-klassicheskie-givenchy-chernye', 33, 0, 0, 0, 1, 2200, 0, '', 0, NULL, NULL, '0677e1ad1f6541eee5747d28058c8180.jpg', '{"material":["zamsha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(143, 1454323679, 1459953240, 1, 0, 'muzhskie-tufli-louis-vuitton-korichnevye', 33, 0, 0, 0, 1, 1800, 0, '', 1, NULL, NULL, '68d868374b6db3d1cf9bea2f72027e31.jpg', '{"material":["lateks","poliestr","silikon"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","osen"],"tsvet":"korichnevyj"}'),
(144, 1454323726, 1454323737, 1, 0, 'muzhskie-tufli-louis-vuitton-chernye', 33, 0, 0, 0, 1, 1800, 0, '', 0, NULL, NULL, '43de9d0f84d292f30c5ac0451faff7de.jpg', '{"material":["kozha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["vesna","leto"],"tsvet":"chernyj"}'),
(145, 1454324137, 1454324226, 1, 0, 'muzhskie-sneakers-buscemi', 32, 0, 0, 0, 1, 1700, 0, '', 0, NULL, NULL, '2c57611d39d0339269ecba567a749967.jpg', '{"material":["kozha","nejlon","polimer"],"sex":"muzhskoj","proizvodstvo":"italija","sezon":["osen"],"tsvet":"chernyj"}'),
(146, 1454324425, 1454324440, 1, 0, 'krossovki-giuseppe-zanotti', 32, 0, 0, 0, 1, 1440, 0, '', 0, NULL, NULL, '120a2393910ce4cad4acd9300c124ca4.jpg', '{"material":["iskusstvennaja-kozha","lateks","poliestr"],"sex":"muzhskoj","proizvodstvo":"indonezija","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(147, 1454324475, 1454324495, 1, 0, 'krossovki-y-3-yohji-yamamoto', 32, 0, 0, 0, 1, 1160, 0, '', 0, NULL, NULL, '2e70fbd4a6418b0d25f58157243ec680.jpg', '{"material":["lateks","nubuk","tekstil"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["osen"],"tsvet":"yellow"}'),
(148, 1454324542, 1454324558, 1, 0, 'muzhskie-krossovki-louis-vuitton-zamshevye-krasnye', 32, 0, 0, 0, 2, 2400, 0, '', 0, NULL, NULL, '7e6ed9ff208f16a45ab64257ba9f3a72.jpg', '{"material":["zamsha","nubuk"],"sex":"muzhskoj","proizvodstvo":"ssha","sezon":["leto","osen"],"tsvet":"krasnyj"}'),
(149, 1454324590, 1454324601, 1, 0, 'muzhskie-krossovki-prada-chernye', 32, 0, 0, 0, 1, 1300, 0, '', 0, NULL, NULL, '8b80482102762d94fb58b6db7e57550c.jpg', '{"material":["lateks","nejlon","poliestr"],"sex":"muzhskoj","proizvodstvo":"polsha","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(150, 1454324982, 1454324999, 1, 0, 'zhenskaja-sumka-roberto-cavalli', 35, 0, 0, 0, 1, 1280, 0, '', 1, NULL, NULL, 'f7202f3d2445ba1f4fa2839437e2b9b9.jpg', '{"material":["lateks","nubuk","silikon"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["vesna","zima","leto","osen"],"tsvet":"krasnyj"}'),
(151, 1454325034, 1454325047, 1, 0, 'klatch-alexander-mcqueen', 35, 0, 0, 0, 1, 1300, 0, '', 2, NULL, NULL, '07ee6659e7a415e9d34f6a93b540908e.jpg', '{"material":["kozha","silikon"],"sex":"zhenskij","proizvodstvo":"ssha","sezon":["vesna","osen"],"tsvet":"chernyj"}'),
(152, 1454325084, 1454325108, 1, 0, 'zhenskaja-sumka-zara', 35, 0, 0, 0, 1, 900, 0, '', 0, NULL, NULL, '0a4eff388b67a57a083f654ac8149b0b.jpg', '{"material":["nejlon","nubuk","polimer"],"sex":"zhenskij","proizvodstvo":"ukraina","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(153, 1454325135, 1454325151, 1, 0, 'muzhskaja-sumka-calvin-klein', 35, 0, 0, 0, 1, 827, 0, '', 0, NULL, NULL, '698e3ecaee23d4e5f2f1530d0c240ad8.jpg', '{"material":["kozha","nubuk","silikon"],"sex":"muzhskoj","proizvodstvo":"ukraina","sezon":["leto","osen"],"tsvet":"chernyj"}'),
(154, 1454325181, 1455806204, 1, 0, 'muzhskaja-sumka-gucci', 35, 0, 0, 0, 1, 760, 0, '', 0, NULL, NULL, 'a1263630a87a89b5226af70435ba8254.jpg', '{"material":["lateks","nejlon","sintetika"],"sex":"zhenskij","proizvodstvo":"italija","sezon":["zima","leto"],"tsvet":"chernyj"}'),
(155, 1462879116, 1462890105, 1, 0, 'nke-air-huarache', 32, 1, 0, 0, 1, 1999, 0, '', 10, NULL, 'airhuarache', '8d2ec33b46ebc352b67098759eebe5fc.jpg', '{"material":["kozha","nejlon","nubuk","tekstil"],"sex":"uniseks","proizvodstvo":"vetnam","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(156, 1462879768, 1462890101, 1, 0, 'ruma-creepers-', 32, 1, 1, 0, 1, 1499, 1795, 'Ruma Creepers ', 6, NULL, NULL, 'eab6d6b4851e790b52d71813e8537b8c.jpg', '{"material":["zamsha","iskusstvennaja-zamsha","poliestr"],"sex":"zhenskij","proizvodstvo":"indonezija","sezon":["vesna","leto","osen"],"tsvet":"chernyj"}'),
(157, 1463996817, 1464614312, 1, 0, 'podushka-krassnaja', 40, 0, 0, 0, 1, 40, 0, '444', 30, NULL, NULL, '0cdf3a8e39c4cfb545c4e0da3a719c6f.jpg', '{"sex":"0"}'),
(158, 1464612611, 1498116927, 1, 0, 'odejalo-iz-shersti', 41, 0, 0, 0, 1, 1000, 0, '1111', 4, NULL, NULL, '876558828e8bf44fd34c1638e82bfdb4.jpg', '{"testovajaharakteristika":"0","opisanie":"0","tsvet":"fioletovyj","material":["zamsha","hlopok","iskusstvennajazamsha","iskusstvennajakozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","tekstil"],"sezon":["vesna","osen"],"sex":"0","proizvodstvo":"polsha"}'),
(159, 1464618360, 1464618360, 1, 0, 'terka-dlja-ovoschej', 44, 0, 0, 0, 1, 35, 0, '123дж', 0, NULL, NULL, NULL, '{"material":["zamsha","iskusstvennaja-zamsha","iskusstvennaja-kozha","kozha","lateks","nejlon","nubuk","poliestr","polimer","silikon","sintetika","tekstil","hlopok"],"sex":"0","proizvodstvo":"ukraina","tsvet":"0"}'),
(160, 1464618597, 1464685063, 1, 0, 'terka-universalnaja', 44, 0, 0, 0, 1, 55, 0, '1235дж', 0, NULL, NULL, '1b22ffdbad1330328b791e4a253e6d97.jpg', '{"sex":"0","proizvodstvo":"kitaj"}'),
(161, 1464627001, 1498460716, 1, 0, 'terki-aktsija', 45, 0, 1, 1, 1, 55, 50, '2323', 9, NULL, NULL, 'c6121f9633e13ce34552ba96c741d096.jpg', '{"testovajaharakteristika":"0","kolortajp":"0","prostojtip":"0","opisanie":"0","tsvet":"seryj","sex":"0","proizvodstvo":"0"}'),
(162, 1464685147, 1464696138, 1, 0, 'lozhka', 47, 0, 0, 0, 1, 25, 0, '222', 4, NULL, NULL, 'ae7cd5e751f1f6c5305e881d8a38622d.jpg', '{"tsvet":"0"}'),
(163, 1465035027, 1497789579, 1, 0, 'teplaja', 45, 0, 0, 1, 1, 1400, 0, '111', 3, NULL, NULL, 'db6bf874a183ef6709366777e38b5f8b.jpg', '{"opisanie":"poslednjaja","tsvet":"claret","material":["nejlon","iskusstvennajakozha"],"sezon":["leto","osen"],"sex":"zhenskij","proizvodstvo":"indonezija"}'),
(164, 1498117323, 1498322344, 1, 12, 'rgtehg', 55, 1, 1, 1, 1, 120, 123, '1234', 39, NULL, NULL, '5f8632f14d980c316b29b20c8d91ad9f.jpg', '{"opisanie":"poslednjaja","testovajaharakteristika":"test","kolortajp":"krasnyj2164","prostojtip":"nazvanie33470","selekt":["nazvanie3","nazvanie1","nazvanie2"],"tsvet":"white","material":["iskusstvennajakozha"],"sezon":["leto","osen"],"sex":"uniseks","proizvodstvo":"ssha"}');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_comments`
--

CREATE TABLE `catalog_comments` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(10) DEFAULT NULL,
  `catalog_id` int(10) NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `rate` double(2,0) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_comments`
--

INSERT INTO `catalog_comments` (`id`, `created_at`, `updated_at`, `status`, `date`, `catalog_id`, `ip`, `rate`, `name`, `city`, `text`) VALUES
(1, 1453192114, NULL, 1, 1453192114, 48, '178.136.229.251', 5, NULL, NULL, NULL),
(2, 1453375172, NULL, 1, 1453375172, 48, '178.136.229.251', 4, NULL, NULL, NULL),
(3, 1453375419, NULL, 1, 1453375419, 48, '178.136.229.251', 4, NULL, NULL, NULL),
(4, 1453378494, NULL, 1, 1453378494, 48, '178.136.229.251', 5, NULL, NULL, NULL),
(5, 1453446803, 1497637312, 1, 1453410000, 48, '178.136.229.251', 3, 'test', 'tetst', 'test'),
(6, 1460985324, NULL, 0, 1460985324, 52, '178.136.229.251', 2, NULL, NULL, NULL),
(7, 1461879659, NULL, 0, 1461879659, 43, '78.137.5.210', 4, NULL, NULL, NULL),
(8, 1462879614, 1497015988, 0, 1462827600, 163, '178.136.229.251', 4, NULL, NULL, NULL),
(9, 1497017994, 1498116259, 1, 1497042000, 162, NULL, NULL, 'имя', 'город', 'сообщение'),
(10, 1498318801, NULL, 0, 1498318801, 40, '127.0.0.1', NULL, 'test', 'test', 'test test test'),
(11, 1498459013, NULL, 0, 1498459013, 51, '178.136.229.251', NULL, 'имя', 'город', 'мой отзыв');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_i18n`
--

CREATE TABLE `catalog_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `language` varchar(255) DEFAULT NULL,
  `row_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_i18n`
--

INSERT INTO `catalog_i18n` (`id`, `name`, `h1`, `title`, `keywords`, `description`, `language`, `row_id`) VALUES
(1, 'Куртка Blend', '', '', '', '', 'ru', 40),
(2, 'Brave Soul', '', '', '', '', 'ru', 41),
(3, 's.Oliver', '', '', '', '', 'ru', 42),
(4, 'Mudo', '', '', '', '', 'ru', 43),
(5, 'Only & Sons', '', '', '', '', 'ru', 44),
(6, 'Top Secret', '', '', '', '', 'ru', 45),
(7, 'Patrol', '', '', '', '', 'ru', 46),
(8, 'Dirk Bikkembergs', '', '', '', '', 'ru', 47),
(9, 'Reebok Classics', '', '', '', '', 'ru', 48),
(10, 'Burton Menswear London', '', '', '', '', 'ru', 49),
(11, 'Vitacci', '', '', '', '', 'ru', 50),
(12, 'Quiksilver', '', '', '', '', 'ru', 51),
(13, 'David Jones', '', '', '', '', 'ru', 52),
(14, 'A-Personality', '', '', '', '', 'ru', 53),
(15, 'Oakley', '', '', '', '', 'ru', 54),
(16, 'Polaroid', '', '', '', '', 'ru', 55),
(17, 'Regular Fit Jeans', '', '', '', '', 'ru', 56),
(18, 'Regular Slim Jeans', '', '', '', '', 'ru', 57),
(19, 'Regular Jeans', '', '', '', '', 'ru', 58),
(20, 'Jeans', '', '', '', '', 'ru', 59),
(21, 'FitJeans', '', '', '', '', 'ru', 60),
(22, 'VAN HEUSEN', '', '', '', '', 'ru', 61),
(23, 'TOOTAL', '', '', '', '', 'ru', 62),
(24, 'OXFORD', '', '', '', '', 'ru', 63),
(25, 'MORLEY', '', '', '', '', 'ru', 64),
(26, 'SHIRTING', '', '', '', '', 'ru', 65),
(27, 'AERTEX', '', '', '', '', 'ru', 66),
(28, 'Marnelly', '', '', '', '', 'ru', 67),
(29, 'MIRAGE', '', '', '', '', 'ru', 68),
(30, 'Sinta', '', '', '', '', 'ru', 69),
(31, 'GANT', '', '', '', '', 'ru', 70),
(32, 'Alberto Guardiani', '', '', '', '', 'ru', 71),
(33, 'Animas Code', '', '', '', '', 'ru', 72),
(34, 'Baldinini', '', '', '', '', 'ru', 73),
(35, 'Bally', '', '', '', '', 'ru', 74),
(36, 'Barracuda', '', '', '', '', 'ru', 75),
(37, 'Sneakers Versace medusa', '', '', '', '', 'ru', 76),
(38, 'Rick Owens', '', '', '', '', 'ru', 77),
(39, 'Kanye West Yeezy 750 Boost Low', '', '', '', '', 'ru', 78),
(40, 'Ray Ban Wayfarer', '', '', '', '', 'ru', 79),
(41, 'Ray Ban Aviator', '', '', '', '', 'ru', 80),
(42, 'GANT', '', '', '', '', 'ru', 81),
(43, 'Женская сумка D&G', '', '', '', '', 'ru', 82),
(44, 'Женская сумка D&G', '', '', '', '', 'ru', 83),
(45, 'Two Women In The World', '', '', '', '', 'ru', 84),
(46, 'Paige', '', '', '', '', 'ru', 85),
(47, 'Victoria Beckham', '', '', '', '', 'ru', 86),
(48, 'Victoria Beckham', '', '', '', '', 'ru', 87),
(49, 'Burberry Brit', '', '', '', '', 'ru', 88),
(50, 'Burberry', '', '', '', '', 'ru', 89),
(51, 'Dolce & Gabbana', '', '', '', '', 'ru', 90),
(52, 'Gucci', '', '', '', '', 'ru', 91),
(53, 'Bottega Veneta', '', '', '', '', 'ru', 92),
(54, 'Hermes', '', '', '', '', 'ru', 93),
(55, 'Lacoste', '', '', '', '', 'ru', 94),
(56, 'Christian Louboutin', '', '', '', '', 'ru', 95),
(57, 'Christian Louboutin', '', '', '', '', 'ru', 96),
(58, 'Hermes', '', '', '', '', 'ru', 97),
(59, 'Phillip Plein', '', '', '', '', 'ru', 98),
(60, 'Christian Louboutin', '', '', '', '', 'ru', 99),
(61, 'Dior 2015', '', '', '', '', 'ru', 100),
(62, 'Alexander McQueen', '', '', '', '', 'ru', 101),
(63, 'Dsquared', '', '', '', '', 'ru', 102),
(64, 'Burberry', '', '', '', '', 'ru', 103),
(65, 'Burberry кожаная', '', '', '', '', 'ru', 104),
(66, 'Hermes', '', '', '', '', 'ru', 105),
(67, 'Dsquared2', '', '', '', '', 'ru', 106),
(68, 'Nike чёрные', '', '', '', '', 'ru', 107),
(69, 'D&G серые', '', '', '', '', 'ru', 108),
(70, 'Rick Owens', '', '', '', '', 'ru', 109),
(71, 'Женская сумка Dior', '', '', '', '', 'ru', 110),
(72, 'Женская сумка Furla', '', '', '', '', 'ru', 111),
(73, 'Мужская сумка Fred Perry', '', '', '', '', 'ru', 112),
(74, 'Мужская сумка Fred Perry', '', '', '', '', 'ru', 113),
(75, 'Мужская сумка на пояс D&G', '', '', '', '', 'ru', 114),
(76, 'Porsche Design', '', '', '', '', 'ru', 115),
(77, 'Cartier', '', '', '', '', 'ru', 116),
(78, 'Ferrari', '', '', '', '', 'ru', 117),
(79, 'Porsche Design', '', '', '', '', 'ru', 118),
(80, 'Мужские очки Модель 2368c2', '', '', '', '', 'ru', 119),
(81, 'Джинсы Philipp Plein', '', '', '', '', 'ru', 120),
(82, 'Джинсы мужские Balmain', '', '', '', '', 'ru', 121),
(83, 'Джинсы мужские Dsquared', '', '', '', '', 'ru', 122),
(84, 'Джинсы мужские Versace', '', '', '', '', 'ru', 123),
(85, 'Женские джинсы Dsquared', '', '', '', '', 'ru', 124),
(86, 'Мужская рубашка McQueen', '', '', '', '', 'ru', 125),
(87, 'Рубашка Dior Homme', '', '', '', '', 'ru', 126),
(88, 'Рубашка Givenchy', '', '', '', '', 'ru', 127),
(89, 'Мужская рубашка Kenzo', '', '', '', '', 'ru', 128),
(90, 'Рубашка Givenchy', '', '', '', '', 'ru', 129),
(91, 'Мужской пуховик Armani', '', '', '', '', 'ru', 130),
(92, 'Куртка Burberry кожаная', '', '', '', '', 'ru', 131),
(93, 'Куртка Burberry кожаная', '', '', '', '', 'ru', 132),
(94, 'Женский плащ Karen Millen', '', '', '', '', 'ru', 133),
(95, 'Мужское пальто Burberry', '', '', '', '', 'ru', 134),
(96, 'Женские мокасины Tods Riancess белые', '', '', '', '', 'ru', 135),
(97, 'Женские мокасины Tods Riancess черные', '', '', '', '', 'ru', 136),
(98, 'Мокасины Tods серые замшевые', '', '', '', '', 'ru', 137),
(99, 'Мужские мокасины Prada', '', '', '', '', 'ru', 138),
(100, 'Мужские мокасины Tods темно синие', '', '', '', '', 'ru', 139),
(101, 'Туфли Giuseppe Zanotti бежевые кожаные', '', '', '', '', 'ru', 140),
(102, 'Туфли Gianmarco Lorenzi чёрные', '', '', '', '', 'ru', 141),
(103, 'Туфли классические Givenchy черные', '', '', '', '', 'ru', 142),
(104, 'Мужские туфли Louis Vuitton коричневые', '', '', '', '', 'ru', 143),
(105, 'Мужские туфли Louis Vuitton черные', '', '', '', '', 'ru', 144),
(106, 'Мужские sneakers Buscemi', '', '', '', '', 'ru', 145),
(107, 'Кроссовки Giuseppe Zanotti', '', '', '', '', 'ru', 146),
(108, 'Кроссовки Y-3 ', '', '', '', '', 'ru', 147),
(109, 'Мужские кроссовки Louis Vuitton замшевые красные', '', '', '', '', 'ru', 148),
(110, 'Мужские кроссовки Prada чёрные', '', '', '', '', 'ru', 149),
(111, 'Женская сумка Roberto Cavalli', '', '', '', '', 'ru', 150),
(112, 'Клатч Alexander Mcqueen', '', '', '', '', 'ru', 151),
(113, 'Женская сумка Zara', '', '', '', '', 'ru', 152),
(114, 'Мужская сумка Calvin Klein', '', '', '', '', 'ru', 153),
(115, 'Мужская сумка GUCCI', '', '', '', '', 'ru', 154),
(116, 'Nke Air Huarache', 'Nike Air Huarache', 'Nike Air Huarache', 'Nike Nike Nike ', '', 'ru', 155),
(117, 'Ruma Creepers ', '', '', '', '', 'ru', 156),
(118, 'Подушка крассная', '', '', '\r\n', '', 'ru', 157),
(119, 'Одеяло из шерсти', '', '', '', '', 'ru', 158),
(120, 'терка для овощей', '', '', '', '', 'ru', 159),
(121, 'Терка универсальная', '', '', '', '', 'ru', 160),
(122, 'Терки акция', '', '', '', '', 'ru', 161),
(123, 'Ложка', '', '', '', '', 'ru', 162),
(124, ' Тёплая', 'ш1', 'тайтл', 'кейвордс', 'десрипшн', 'ru', 163),
(128, 'Куртка Blend', '', '', '', '', 'ua', 40),
(129, 'Brave Soul', '', '', '', '', 'ua', 41),
(130, 's.Oliver', '', '', '', '', 'ua', 42),
(131, 'Mudo', '', '', '', '', 'ua', 43),
(132, 'Only & Sons', '', '', '', '', 'ua', 44),
(133, 'Top Secret', '', '', '', '', 'ua', 45),
(134, 'Patrol', '', '', '', '', 'ua', 46),
(135, 'Dirk Bikkembergs', '', '', '', '', 'ua', 47),
(136, 'Reebok Classics', '', '', '', '', 'ua', 48),
(137, 'Burton Menswear London', '', '', '', '', 'ua', 49),
(138, 'Vitacci', '', '', '', '', 'ua', 50),
(139, 'Quiksilver', '', '', '', '', 'ua', 51),
(140, 'David Jones', '', '', '', '', 'ua', 52),
(141, 'A-Personality', '', '', '', '', 'ua', 53),
(142, 'Oakley', '', '', '', '', 'ua', 54),
(143, 'Polaroid', '', '', '', '', 'ua', 55),
(144, 'Regular Fit Jeans', '', '', '', '', 'ua', 56),
(145, 'Regular Slim Jeans', '', '', '', '', 'ua', 57),
(146, 'Regular Jeans', '', '', '', '', 'ua', 58),
(147, 'Jeans', '', '', '', '', 'ua', 59),
(148, 'FitJeans', '', '', '', '', 'ua', 60),
(149, 'VAN HEUSEN', '', '', '', '', 'ua', 61),
(150, 'TOOTAL', '', '', '', '', 'ua', 62),
(151, 'OXFORD', '', '', '', '', 'ua', 63),
(152, 'MORLEY', '', '', '', '', 'ua', 64),
(153, 'SHIRTING', '', '', '', '', 'ua', 65),
(154, 'AERTEX', '', '', '', '', 'ua', 66),
(155, 'Marnelly', '', '', '', '', 'ua', 67),
(156, 'MIRAGE', '', '', '', '', 'ua', 68),
(157, 'Sinta', '', '', '', '', 'ua', 69),
(158, 'GANT', '', '', '', '', 'ua', 70),
(159, 'Alberto Guardiani', '', '', '', '', 'ua', 71),
(160, 'Animas Code', '', '', '', '', 'ua', 72),
(161, 'Baldinini', '', '', '', '', 'ua', 73),
(162, 'Bally', '', '', '', '', 'ua', 74),
(163, 'Barracuda', '', '', '', '', 'ua', 75),
(164, 'Sneakers Versace medusa', '', '', '', '', 'ua', 76),
(165, 'Rick Owens', '', '', '', '', 'ua', 77),
(166, 'Kanye West Yeezy 750 Boost Low', '', '', '', '', 'ua', 78),
(167, 'Ray Ban Wayfarer', '', '', '', '', 'ua', 79),
(168, 'Ray Ban Aviator', '', '', '', '', 'ua', 80),
(169, 'GANT', '', '', '', '', 'ua', 81),
(170, 'Женская сумка D&G', '', '', '', '', 'ua', 82),
(171, 'Женская сумка D&G', '', '', '', '', 'ua', 83),
(172, 'Two Women In The World', '', '', '', '', 'ua', 84),
(173, 'Paige', '', '', '', '', 'ua', 85),
(174, 'Victoria Beckham', '', '', '', '', 'ua', 86),
(175, 'Victoria Beckham', '', '', '', '', 'ua', 87),
(176, 'Burberry Brit', '', '', '', '', 'ua', 88),
(177, 'Burberry', '', '', '', '', 'ua', 89),
(178, 'Dolce & Gabbana', '', '', '', '', 'ua', 90),
(179, 'Gucci', '', '', '', '', 'ua', 91),
(180, 'Bottega Veneta', '', '', '', '', 'ua', 92),
(181, 'Hermes', '', '', '', '', 'ua', 93),
(182, 'Lacoste', '', '', '', '', 'ua', 94),
(183, 'Christian Louboutin', '', '', '', '', 'ua', 95),
(184, 'Christian Louboutin', '', '', '', '', 'ua', 96),
(185, 'Hermes', '', '', '', '', 'ua', 97),
(186, 'Phillip Plein', '', '', '', '', 'ua', 98),
(187, 'Christian Louboutin', '', '', '', '', 'ua', 99),
(188, 'Dior 2015', '', '', '', '', 'ua', 100),
(189, 'Alexander McQueen', '', '', '', '', 'ua', 101),
(190, 'Dsquared', '', '', '', '', 'ua', 102),
(191, 'Burberry', '', '', '', '', 'ua', 103),
(192, 'Burberry кожаная', '', '', '', '', 'ua', 104),
(193, 'Hermes', '', '', '', '', 'ua', 105),
(194, 'Dsquared2', '', '', '', '', 'ua', 106),
(195, 'Nike чёрные', '', '', '', '', 'ua', 107),
(196, 'D&G серые', '', '', '', '', 'ua', 108),
(197, 'Rick Owens', '', '', '', '', 'ua', 109),
(198, 'Женская сумка Dior', '', '', '', '', 'ua', 110),
(199, 'Женская сумка Furla', '', '', '', '', 'ua', 111),
(200, 'Мужская сумка Fred Perry', '', '', '', '', 'ua', 112),
(201, 'Мужская сумка Fred Perry', '', '', '', '', 'ua', 113),
(202, 'Мужская сумка на пояс D&G', '', '', '', '', 'ua', 114),
(203, 'Porsche Design', '', '', '', '', 'ua', 115),
(204, 'Cartier', '', '', '', '', 'ua', 116),
(205, 'Ferrari', '', '', '', '', 'ua', 117),
(206, 'Porsche Design', '', '', '', '', 'ua', 118),
(207, 'Мужские очки Модель 2368c2', '', '', '', '', 'ua', 119),
(208, 'Джинсы Philipp Plein', '', '', '', '', 'ua', 120),
(209, 'Джинсы мужские Balmain', '', '', '', '', 'ua', 121),
(210, 'Джинсы мужские Dsquared', '', '', '', '', 'ua', 122),
(211, 'Джинсы мужские Versace', '', '', '', '', 'ua', 123),
(212, 'Женские джинсы Dsquared', '', '', '', '', 'ua', 124),
(213, 'Мужская рубашка McQueen', '', '', '', '', 'ua', 125),
(214, 'Рубашка Dior Homme', '', '', '', '', 'ua', 126),
(215, 'Рубашка Givenchy', '', '', '', '', 'ua', 127),
(216, 'Мужская рубашка Kenzo', '', '', '', '', 'ua', 128),
(217, 'Рубашка Givenchy', '', '', '', '', 'ua', 129),
(218, 'Мужской пуховик Armani', '', '', '', '', 'ua', 130),
(219, 'Куртка Burberry кожаная', '', '', '', '', 'ua', 131),
(220, 'Куртка Burberry кожаная', '', '', '', '', 'ua', 132),
(221, 'Женский плащ Karen Millen', '', '', '', '', 'ua', 133),
(222, 'Мужское пальто Burberry', '', '', '', '', 'ua', 134),
(223, 'Женские мокасины Tods Riancess белые', '', '', '', '', 'ua', 135),
(224, 'Женские мокасины Tods Riancess черные', '', '', '', '', 'ua', 136),
(225, 'Мокасины Tods серые замшевые', '', '', '', '', 'ua', 137),
(226, 'Мужские мокасины Prada', '', '', '', '', 'ua', 138),
(227, 'Мужские мокасины Tods темно синие', '', '', '', '', 'ua', 139),
(228, 'Туфли Giuseppe Zanotti бежевые кожаные', '', '', '', '', 'ua', 140),
(229, 'Туфли Gianmarco Lorenzi чёрные', '', '', '', '', 'ua', 141),
(230, 'Туфли классические Givenchy черные', '', '', '', '', 'ua', 142),
(231, 'Мужские туфли Louis Vuitton коричневые', '', '', '', '', 'ua', 143),
(232, 'Мужские туфли Louis Vuitton черные', '', '', '', '', 'ua', 144),
(233, 'Мужские sneakers Buscemi', '', '', '', '', 'ua', 145),
(234, 'Кроссовки Giuseppe Zanotti', '', '', '', '', 'ua', 146),
(235, 'Кроссовки Y-3 ', '', '', '', '', 'ua', 147),
(236, 'Мужские кроссовки Louis Vuitton замшевые красные', '', '', '', '', 'ua', 148),
(237, 'Мужские кроссовки Prada чёрные', '', '', '', '', 'ua', 149),
(238, 'Женская сумка Roberto Cavalli', '', '', '', '', 'ua', 150),
(239, 'Клатч Alexander Mcqueen', '', '', '', '', 'ua', 151),
(240, 'Женская сумка Zara', '', '', '', '', 'ua', 152),
(241, 'Мужская сумка Calvin Klein', '', '', '', '', 'ua', 153),
(242, 'Мужская сумка GUCCI', '', '', '', '', 'ua', 154),
(243, 'Nke Air Huarache', 'Nike Air Huarache', 'Nike Air Huarache', 'Nike Nike Nike ', '', 'ua', 155),
(244, 'Ruma Creepers ', '', '', '', '', 'ua', 156),
(245, 'Подушка крассная', '', '', '\r\n', '', 'ua', 157),
(246, 'Одеяло из шерсти', '', '', '', '', 'ua', 158),
(247, 'терка для овощей', '', '', '', '', 'ua', 159),
(248, 'Терка универсальная', '', '', '', '', 'ua', 160),
(249, 'Терки акция', '', '', '', '', 'ua', 161),
(250, 'Ложка', '', '', '', '', 'ua', 162),
(251, 'Warm', 'h1', 'title', 'keywords', 'description', 'ua', 163),
(254, 'тестовая блуза', '9999', '8888', '7777', '6666', 'ru', 164),
(255, 'test', '1111', '2222', '3333', '4444', 'ua', 164);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_images`
--

CREATE TABLE `catalog_images` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catalog_id` int(10) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_images`
--

INSERT INTO `catalog_images` (`id`, `created_at`, `updated_at`, `sort`, `catalog_id`, `main`, `image`) VALUES
(611, 1447094678, NULL, 0, 40, 1, '31c79213d5aceed90eed954307c44416.jpg'),
(612, 1447094678, NULL, 0, 40, 0, '38ff50f13f667a0e6500555f58db75e0.jpg'),
(613, 1447094683, NULL, 0, 40, 0, 'a8939e7b09f8347786e0f3e830c3a94a.jpg'),
(614, 1447094684, NULL, 0, 40, 0, 'c4513d5088f6374a2df90dc6a7a76ac1.jpg'),
(615, 1447094778, NULL, 0, 41, 0, 'c65bc1609165bf2eaf28fb76755cfb3a.jpg'),
(616, 1447094778, NULL, 0, 41, 0, '9c20b99496ac618fd064561234fdf753.jpg'),
(617, 1447094778, 1447094785, 0, 41, 1, '3faf38fccbe35f31b603141be04317f3.jpg'),
(618, 1447094779, NULL, 0, 41, 0, '7fd7e096c6eb0e37c2ba1322f84a404f.jpg'),
(619, 1447094884, NULL, 0, 42, 0, '8c7705ee980b733f90bebc2e15637494.jpg'),
(620, 1447094884, 1447094889, 0, 42, 1, 'fe75cb26c4ae4c06af7d7fdef455fe1b.jpg'),
(621, 1447094884, NULL, 0, 42, 0, 'ec61f00800b0aeaf06758204adaa1107.jpg'),
(622, 1447094884, NULL, 0, 42, 0, '52380165b1463bad08ad2c201a010f24.jpg'),
(623, 1447095185, NULL, 0, 43, 0, '06f084f113e5b5248af77fc0afb53656.jpg'),
(624, 1447095185, 1447095192, 0, 43, 0, 'e8e63648d7a99d6ac02973c1f79fdc20.jpg'),
(625, 1447095186, NULL, 0, 43, 0, '2401a36f9678329c6a799b52845614d6.jpg'),
(626, 1447095186, 1447095197, 0, 43, 1, '21f15ca55231a0db69dad9a2f1c6d2cd.jpg'),
(627, 1447095290, NULL, 0, 44, 0, '46e3ad3bb52ad060888db5a26cf38fb0.jpg'),
(628, 1447095290, 1447095295, 0, 44, 1, '43c658475e0a09cb4fc1c63b46bdc5a9.jpg'),
(629, 1447095290, NULL, 0, 44, 0, '593c5d47b1233bf928d841e35ceda328.jpg'),
(630, 1447095291, NULL, 0, 44, 0, '104e058a23b1aeeded9aa4ba16b3613c.jpg'),
(631, 1447095375, NULL, 0, 45, 0, '7aaf1cc025af46186ef6105af07302aa.jpg'),
(632, 1447095375, NULL, 0, 45, 0, 'c6ed2a324ba41120cde5b43691e6fa1c.jpg'),
(633, 1447095375, 1453983879, 0, 45, 1, '85b47014b4b719452a06dc924426491f.jpg'),
(634, 1447095376, NULL, 0, 45, 0, '30e1b40a46d741c377846b089dc1b5d2.jpg'),
(647, 1447095935, NULL, 0, 49, 1, 'd56dbeb19c27a828e5762b1aabd956a2.jpg'),
(648, 1447095935, NULL, 0, 49, 0, '794e27e91e3827d06c9a275f2d5fdf67.jpg'),
(649, 1447095935, NULL, 0, 49, 0, '0c2a3494e44ff805f0aa0101acc731b7.jpg'),
(650, 1447095936, NULL, 0, 49, 0, '890457273def0c8f792aea62fb9e024b.jpg'),
(651, 1447096008, NULL, 0, 50, 0, '782c69989db1782087e4db39a775339d.jpg'),
(652, 1447096009, NULL, 0, 50, 0, '4fc5db935e0b553e9313f41a6039f38f.jpg'),
(653, 1447096009, 1453988344, 0, 50, 1, '147378e984f87fbc42a0b80bd52899a2.jpg'),
(654, 1447096009, NULL, 0, 50, 0, 'e5ba68f0c3d4204607f810388584dffc.jpg'),
(655, 1447096112, NULL, 0, 51, 0, '1547105c5adc86058857a80c8c0c9385.jpg'),
(656, 1447096112, NULL, 0, 51, 0, '17bd4f3fb5b9ebb4b440aa93ea501ce5.jpg'),
(657, 1447096113, 1447096118, 0, 51, 1, '528d7c85efd8247ba056e4a1c29b4bca.jpg'),
(658, 1447096113, NULL, 0, 51, 0, '9913d50a7fc4f0647673024fcc1520e4.jpg'),
(659, 1447096192, NULL, 0, 52, 1, '3e402891cdc71ca41bc7f7f09e042d4b.jpg'),
(660, 1447096192, NULL, 0, 52, 0, '15fe0291226b53ccf22139b82ea0e3b3.jpg'),
(661, 1447096192, NULL, 0, 52, 0, '5143399809e92177a6b245a13eaf1040.jpg'),
(662, 1447096193, NULL, 0, 52, 0, 'd82dfae402a5be04f1e5428418b03899.jpg'),
(663, 1447096193, NULL, 0, 52, 0, 'fc6d6e8fa2573e57820c6f9831589c70.jpg'),
(664, 1447096257, NULL, 0, 53, 0, '5570dd2844ef1b6537ef54cf8201d017.jpg'),
(665, 1447096258, NULL, 0, 53, 0, '4021ff43abd896ed381a93e3f20d2eee.jpg'),
(666, 1447096258, 1447096264, 0, 53, 1, 'ffeee2baa0eb681477b1b4ae95c92e79.jpg'),
(667, 1447096258, NULL, 0, 53, 0, '695335f5e51e38b722e7245e7e5e7418.jpg'),
(668, 1447096351, 1448356268, 1, 54, 0, '834c53733e652ec1f70cd1317ef82139.jpg'),
(669, 1447096351, 1449923786, 4, 54, 1, '3b3c8e2b8b4c89d1fbb12c3e12de9d5a.jpg'),
(670, 1447096351, NULL, 2, 54, 0, '7a6d9f600684aa0b7d8131e2788bc1b5.jpg'),
(671, 1447096352, NULL, 5, 54, 0, 'eba225f85fd9ab2132e0ba7fb68efa36.jpg'),
(672, 1447096352, 1447096358, 6, 54, 0, 'fd180a4c7b269eff9987c17be93ed57f.jpg'),
(673, 1447096440, NULL, 0, 55, 0, '535707cf9761cf5dda7b4b8cfa8412d9.jpg'),
(674, 1447096441, NULL, 0, 55, 0, 'bc45391efa8abb4ad22e6b03675b0687.jpg'),
(675, 1447096441, NULL, 0, 55, 0, '25bf84f8b8034c3ed6f12634955ef9ee.jpg'),
(676, 1447096441, 1454062939, 0, 55, 1, 'ff92a4371fdb1b55022573290fc5ad2f.jpg'),
(677, 1447096442, NULL, 0, 55, 0, '27c09b1972e05bab1a05bd8a6c644e77.jpg'),
(678, 1448355514, 1448356114, 3, 54, 0, '1eef990b83ea781b7259171943f6a5d0.jpg'),
(707, 1453982710, NULL, 0, 84, 0, '03a4bd46da830c79d48098bc30f410ec.jpg'),
(708, 1453982710, NULL, 0, 84, 0, '2c036c65e187abac51b1839ca115b7dd.jpg'),
(709, 1453982710, 1453982715, 0, 84, 1, '878a7e4e4ce127d11d0f01e49b165543.jpg'),
(710, 1453983182, NULL, 0, 56, 0, 'aabe0e6e9da54870d2b850f5bc3100a1.jpg'),
(711, 1453983184, NULL, 0, 56, 0, 'bbcf6f4835aefdfe6cab1ea8fa5c4cb5.jpg'),
(712, 1453983184, 1453983188, 0, 56, 1, '9bd9e2c0cb862c21ba8b33160fa544b7.jpg'),
(713, 1453983301, NULL, 0, 57, 1, '72db86cef6b5e1901bd0dabf72b1735e.jpg'),
(714, 1453983302, NULL, 0, 57, 0, 'cced5c99377923d74a7a88b8f0841e62.jpg'),
(715, 1453983303, NULL, 0, 57, 0, '0f8f7897e053de651ea53b5a02c00165.jpg'),
(716, 1453983415, NULL, 0, 58, 1, '46d9d8f8e3be8cb4f5049aa0b11b796c.jpg'),
(717, 1453983416, NULL, 0, 58, 0, '8b1a1e324010527b44a7fb2f371fab0f.jpg'),
(718, 1453983417, NULL, 0, 58, 0, 'da7f86fdc6b745745f2421deb46bc851.jpg'),
(719, 1453983538, NULL, 0, 59, 0, 'd49e029935ae7db636ccb2841cc077db.jpg'),
(720, 1453983539, NULL, 0, 59, 0, 'a88a4f24315ce916d1eaa9da5d723797.jpg'),
(721, 1453983540, NULL, 0, 59, 0, '72b78db192ee58dcde018a4d7f312b57.jpg'),
(722, 1453983540, 1453983544, 0, 59, 1, 'feee3908006fdc4ab715cd327d00a745.jpg'),
(723, 1453983822, NULL, 0, 60, 0, '12dc48c811c05fc2c3d0347727f914f5.jpg'),
(724, 1453983823, 1453983892, 0, 60, 1, '371f58a9be9b8faba677741ac6b12050.jpg'),
(725, 1453983824, NULL, 0, 60, 0, '2973ce21c82746f252ac45c693d6fd90.jpg'),
(726, 1453983824, NULL, 0, 60, 0, 'c88a9dffe14254ee22e1a18f1afd811f.jpg'),
(727, 1453985374, NULL, 0, 85, 1, '1e45fd1d34c616984a94829c43c9d251.jpg'),
(728, 1453985374, NULL, 0, 85, 0, '0ecedd75804257dde4437de71425ce49.jpg'),
(729, 1453985375, NULL, 0, 85, 0, '767100b541d222386b6908d7b7962c2c.jpg'),
(730, 1453985375, NULL, 0, 85, 0, 'a77ae6f3635bb1bb07c0814c32e2134c.jpg'),
(731, 1453985627, NULL, 0, 86, 1, '8de18a7355287270b3df43c05a1048c0.jpg'),
(732, 1453985628, NULL, 0, 86, 0, 'f5cead36ddfd1bb67a551d21a4a189bf.jpg'),
(733, 1453985628, NULL, 0, 86, 0, 'c302f303c96788afa04ca5f37a9f4996.jpg'),
(734, 1453985737, NULL, 0, 87, 0, '9c780810973a8c9934fd5b152e3eb678.jpg'),
(735, 1453985738, 1453985742, 0, 87, 1, '2130622858813fec5259b99f8b452e75.jpg'),
(736, 1453985738, NULL, 0, 87, 0, '5dd556a5eb29a31bfac08bd48a34231a.jpg'),
(737, 1453987094, NULL, 0, 61, 0, '7a97c8e3764b1f7f8926b61b1299963a.jpg'),
(738, 1453987095, NULL, 0, 61, 0, '048b13f12356c4c5e9e262ca6deb8ad8.jpg'),
(739, 1453987096, 1453987101, 0, 61, 1, '744f8a702159b78c379ed35dc8200eb9.jpg'),
(740, 1453987222, NULL, 0, 62, 1, '8aafb240eb2626fb201353890a8d9035.jpg'),
(741, 1453987222, NULL, 0, 62, 0, '2acd1acec7117ac8e0cd66f46bcc89fa.jpg'),
(742, 1453987223, NULL, 0, 62, 0, 'e5e1db7303758f31dcc458ba512a4f70.jpg'),
(743, 1453987340, NULL, 0, 63, 1, '69fb49c55e1dbae657920116c3121aca.jpg'),
(744, 1453987340, NULL, 0, 63, 0, '43a255e3e909090a1fac9373c2fc397e.jpg'),
(745, 1453987341, NULL, 0, 63, 0, '351457c1b5cc6b56b3ebbf7f555f008f.jpg'),
(746, 1453987425, NULL, 0, 64, 1, 'e88ca78f3d83a09ec4d9a087f7488465.jpg'),
(747, 1453987425, NULL, 0, 64, 0, '0978227f164919ba8f133902efc80082.jpg'),
(748, 1453987426, NULL, 0, 64, 0, 'b644bb174c4ae4927f95ada221fbc89f.jpg'),
(749, 1453987538, NULL, 0, 65, 1, '343f2ed7a53c89842f76680def0ff912.jpg'),
(750, 1453987539, NULL, 0, 65, 0, '57e65d5a9b2fa85373eb495875815dce.jpg'),
(751, 1453987539, NULL, 0, 65, 0, 'e30a0bdda65f94b6b1a783cf3836032e.jpg'),
(752, 1453987606, 1453987619, 0, 66, 1, '4000f9750e94224c62a0c5a4e155a753.jpg'),
(753, 1453987608, 1453987613, 0, 66, 0, '342aa1e8a73c09e0eea9567c78513f98.jpg'),
(754, 1453987608, NULL, 0, 66, 0, 'af7d547f0e53fee0e3cf9315d6120633.jpg'),
(755, 1453988011, NULL, 0, 67, 1, 'cf92f6be7ef042db8506fd217337ec04.jpg'),
(756, 1453988012, NULL, 0, 67, 0, '1c955d65100250aa23c32b1251ae4172.jpg'),
(757, 1453988012, NULL, 0, 67, 0, 'ef590a4c74997d465572a9992b8e9d0e.jpg'),
(758, 1453988013, NULL, 0, 67, 0, '51abdf80e96777fe3e2942af40be5302.jpg'),
(759, 1453988030, NULL, 0, 68, 1, '9b2bd4df4c45164ff451721eec1393a4.jpg'),
(760, 1453988031, NULL, 0, 68, 0, 'c1998bb0dbfe40e6f67bc32950926ac8.jpg'),
(761, 1453988031, NULL, 0, 68, 0, '0f996bb3bf77a488209574a4778316ce.jpg'),
(762, 1453988044, NULL, 0, 69, 0, 'a8fe67dce288d4a18c8bf978c45343a0.jpg'),
(763, 1453988044, 1453988048, 0, 69, 1, 'af5e3e1d7e0cefb9d417502078673523.jpg'),
(764, 1453988045, NULL, 0, 69, 0, 'd01d39d9d4ce8d4a4cda06c13332fe75.jpg'),
(765, 1453988162, NULL, 0, 88, 1, '650e1c2c39fcd2db0fe5552ce0a96813.jpg'),
(766, 1453988163, NULL, 0, 88, 0, '3be3d76ed2062c15a1cc2f205d0d0a04.jpg'),
(767, 1453988163, NULL, 0, 88, 0, '5135307d552ab87e7572ab44441a7f17.jpg'),
(768, 1453988164, NULL, 0, 88, 0, '712a656d0502072dad0aba167bd7854c.jpg'),
(799, 1454003730, NULL, 0, 72, 1, '0e6af6118a01535c6d6b8cb9b9b1cc95.jpg'),
(800, 1454003730, NULL, 0, 72, 0, '694f6b9c879a24b47533cc84694595bf.jpg'),
(801, 1454003730, NULL, 0, 72, 0, '2a04ccf5c609406ec5b421f24f12ee6b.jpg'),
(802, 1454004414, NULL, 0, 71, 0, '220ae0756f73e333b0ca2ae962d00890.jpg'),
(803, 1454004415, NULL, 0, 71, 0, '9515a9318697032022a1c5f1e5f1a217.jpg'),
(804, 1454004415, 1454004421, 0, 71, 1, '99d4ab2baa6efb497393b8caa546b7d2.jpg'),
(805, 1454004532, NULL, 0, 70, 1, '0d8ad8265bc795e5f0b1e46f1872f01d.jpg'),
(806, 1454004533, NULL, 0, 70, 0, '83a111408b7fd7dc7278f858d89c978d.jpg'),
(807, 1454004641, NULL, 0, 89, 1, 'e16e898eaab10b2a8288cc73e4da458c.jpg'),
(808, 1454004641, NULL, 0, 89, 0, 'd72dab98811c694f9cebe61a7fec7b9b.jpg'),
(809, 1454004641, NULL, 0, 89, 0, '1237b20593ad76cb11ac52076f5ffc31.jpg'),
(810, 1454004641, NULL, 0, 89, 0, '759f19c66c4c6e2f3300360c08fa4dff.jpg'),
(811, 1454004739, NULL, 0, 90, 0, 'd6b65ca03dd2c7d5f368e31da0b76bb1.jpg'),
(812, 1454004739, 1454004744, 0, 90, 1, '996c9737bb19cec0cdf8545920a35024.jpg'),
(813, 1454004739, NULL, 0, 90, 0, '1940a37c8014ada7474000a6564813c7.jpg'),
(814, 1454004919, NULL, 0, 91, 0, '4216eeaa83749e2ea84ef3fac9b41b4a.jpg'),
(815, 1454004919, NULL, 0, 91, 0, 'b23d2cc98743135d288b59a2c6d9fcd7.jpg'),
(816, 1454004919, 1454004923, 0, 91, 1, '1a89bd77c02b30bb960a2758628ff129.jpg'),
(817, 1454004919, NULL, 0, 91, 0, 'f1029157d3165c37e5b0e1f2aa15955a.jpg'),
(818, 1454004920, NULL, 0, 91, 0, '1356f04ebf05b76e1a9891b3d995bb71.jpg'),
(819, 1454005068, NULL, 0, 92, 1, '27386468296175ab291d15df6925661d.jpg'),
(820, 1454005069, NULL, 0, 92, 0, '3bdbda6f6678aba8ac4ab48fc9396276.jpg'),
(821, 1454005351, NULL, 0, 93, 0, 'ca3d750b429a89dc44f2a0057ddb43fd.jpg'),
(822, 1454005351, 1454005358, 0, 93, 1, '222d27610fe00ae41888d76765c172b5.jpg'),
(823, 1454005351, NULL, 0, 93, 0, '07aa04206a12deac7d9af34d90bbe5ad.jpg'),
(824, 1454005352, NULL, 0, 93, 0, 'df8a7f28b68d6d22a9493103d4418a45.jpg'),
(825, 1454005352, NULL, 0, 93, 0, '2ba4f0cf91c8cbf93f1c8ac2c6213560.jpg'),
(826, 1454005518, NULL, 0, 94, 0, '3115991de405f0586cca786ed9a506f3.jpg'),
(827, 1454005518, NULL, 0, 94, 0, 'e89a43be8afdeb58c1548ab6e2bbc624.jpg'),
(828, 1454005518, 1454005524, 0, 94, 1, '0123777411cf5317bb713d9afdc3c9c1.jpg'),
(829, 1454005519, NULL, 0, 94, 0, 'a60bc82fc028454e26fbccb06032cc0b.jpg'),
(830, 1454006065, NULL, 0, 74, 1, '2b58dd8bf1316ed14ede88d7fe1a9a92.jpg'),
(831, 1454006065, NULL, 0, 74, 0, '8e41132d8c00cba37625f9a136fbb60d.jpg'),
(832, 1454006066, NULL, 0, 74, 0, '9b7a69731bf43646e1cbdb2140663231.jpg'),
(833, 1454006080, NULL, 0, 75, 1, '6acb9c32679cf8b76b7d4a1138f4ea24.jpg'),
(834, 1454006080, NULL, 0, 75, 0, 'fc8cb8f57e42d9d20d840ab99309de72.jpg'),
(835, 1454006080, NULL, 0, 75, 0, 'a86e19f0861685cfee4a182b11b579b2.jpg'),
(836, 1454006103, NULL, 0, 73, 1, 'f61df09878d457ee66fc7e1fd14addbd.jpg'),
(837, 1454006103, NULL, 0, 73, 0, '100ebfa1515dae2e87a40e2215d27cd3.jpg'),
(838, 1454006103, NULL, 0, 73, 0, 'd1b157543ec2e0536e2531c8099ca05d.jpg'),
(839, 1454006176, NULL, 0, 95, 0, 'a17d7ce694cb0c2fcc7304f8c829030e.jpg'),
(840, 1454006176, NULL, 0, 95, 0, '706140e5d025c19f1d273deeaf757e7c.jpg'),
(841, 1454006176, 1454006179, 0, 95, 1, 'aedca7492b0710de73e4d3553a0b317c.jpg'),
(842, 1454006176, NULL, 0, 95, 0, '9e7f08b943a5925c2aa3937d8ead6e40.jpg'),
(843, 1454006245, NULL, 0, 96, 0, 'b575c6391044b7d0a45f041c6ead7163.jpg'),
(844, 1454006246, NULL, 0, 96, 0, 'ee4095167f127a5938daa8315ddf12ad.jpg'),
(845, 1454006246, 1454006252, 0, 96, 1, '296c2f7b532ab1905d9813cd4843d955.jpg'),
(846, 1454006246, NULL, 0, 96, 0, 'd98d23d8342ece8fe8a9a3da2b95f736.jpg'),
(847, 1454006529, NULL, 0, 97, 1, 'f733af1bc7c73d6def2e19d94fcebd15.jpg'),
(848, 1454006529, NULL, 0, 97, 0, 'ddac1fb506514965e7c818ea145c9d54.jpg'),
(849, 1454006584, NULL, 0, 98, 1, 'ce1d58dc0da917077043c1edf6de746a.jpg'),
(850, 1454006585, NULL, 0, 98, 0, 'f4005f006cd1b560458a5e56ce6a000e.jpg'),
(851, 1454006586, NULL, 0, 98, 0, '34382630bd380991c61b913778c75747.jpg'),
(852, 1454006659, NULL, 0, 99, 1, 'eb148d52f4cc6c272ee88bacf2776732.jpg'),
(853, 1454006660, NULL, 0, 99, 0, '7e3939220d61f4fe145869f7ebe3ddad.jpg'),
(854, 1454058548, NULL, 0, 100, 1, '400f456673efc583825c497288dbdca7.jpg'),
(855, 1454058548, NULL, 0, 100, 0, '6430eebeec685dfd9e0377e4a4b1ca42.jpg'),
(856, 1454058548, NULL, 0, 100, 0, '69f85a02d7e557cfce2803831b8a8bbb.jpg'),
(857, 1454058725, NULL, 0, 101, 0, '91fc0afa9fde681971476b2f569a90f4.jpg'),
(858, 1454058725, NULL, 0, 101, 0, '9ac1437c3d25cd9f1172eccdd710944a.jpg'),
(859, 1454058725, NULL, 0, 101, 0, '82ad5be4bed112cc6d2d23dd72718dd7.jpg'),
(860, 1454058726, 1454058729, 0, 101, 1, 'bd1b148c4d131aaa82c04b236c01de3c.jpg'),
(861, 1454058987, NULL, 0, 102, 0, '5eb6d9d837cb2cb4f855feb94bd3c37d.jpg'),
(862, 1454058987, NULL, 0, 102, 0, '2fe2af665db7a16a74fc53b737da9da5.jpg'),
(863, 1454058987, 1454058992, 0, 102, 1, 'c75370b832affc3be9d433178f864ead.jpg'),
(864, 1454058988, NULL, 0, 102, 0, 'd531b27fef7c738e88924427a446b806.jpg'),
(865, 1454058988, NULL, 0, 102, 0, '2f92add341e2bba7a50c7bc2bc95d7e4.jpg'),
(866, 1454058988, NULL, 0, 102, 0, 'e03de269b92e127c5676a8a50a8c8945.jpg'),
(867, 1454059085, NULL, 2, 103, 0, 'ff99a21eb210baf5b737a1118a6f1732.jpg'),
(868, 1454059086, 1454059089, 1, 103, 1, '73487bc7d72b9ca7f581b1e2c87ed78d.jpg'),
(869, 1454059190, NULL, 0, 104, 0, '79716a60d4dc7b2cd2ce6f7f2944d7a8.jpg'),
(870, 1454059190, NULL, 0, 104, 0, 'ed678a262c53b7d59de4008ad8a1d61e.jpg'),
(871, 1454059190, NULL, 0, 104, 0, '681363239b8832a7b025394d7727e9e2.jpg'),
(872, 1454059191, 1454059195, 0, 104, 1, '348b0a5a662583ff1543ba0703034249.jpg'),
(873, 1454059499, NULL, 0, 105, 0, '6f1f2bda9b0c537fb2fbba398f846fb9.jpg'),
(874, 1454059500, NULL, 0, 105, 0, 'f0697a66790f884a48ea377ab78c91db.jpg'),
(875, 1454059500, 1454059504, 0, 105, 1, '3ee3635b29378b2c1b92d0ee8a8262ae.jpg'),
(876, 1454059500, NULL, 0, 105, 0, '310d75d92bff31e1b2ed9cddafd6a4f2.jpg'),
(877, 1454059805, NULL, 0, 76, 1, 'aa1d555bcf57d51b72b13f70e12d5036.png'),
(878, 1454059806, NULL, 0, 76, 0, 'f8abb9f1d2c623ce76fa99015f02ed2d.png'),
(879, 1454059807, NULL, 0, 76, 0, '2e2b87b1db1abfbb238315250efe109c.png'),
(880, 1454059932, NULL, 0, 77, 1, 'ac95a9367b31d93cf5c8f6e5bf1a34de.jpg'),
(881, 1454059933, NULL, 0, 77, 0, '29dcefd737992e68577493f2fc25bd1b.jpg'),
(882, 1454059933, NULL, 0, 77, 0, 'a084f9c45351e90ae273078e2c9ad7ae.jpg'),
(883, 1454059933, NULL, 0, 77, 0, 'c034e66061a0ea06df768ef31a715136.jpg'),
(884, 1454059934, NULL, 0, 77, 0, '23ac4dc4e934985790049d92413f3f1f.jpg'),
(885, 1454060055, NULL, 0, 78, 1, 'f30fe5c63fd4f0f9e382e275606aa7e5.jpg'),
(886, 1454060055, NULL, 0, 78, 0, '2177dcf84396e89a84ec03c9ca7fe947.jpg'),
(887, 1454060055, NULL, 0, 78, 0, '82e7948122a5339eafdf39c1984f0c4e.jpg'),
(888, 1454060055, NULL, 0, 78, 0, '9e00e5d1fd378ffa2d33377c098035b1.jpg'),
(889, 1454060290, NULL, 0, 46, 1, '6891ab8f29e5eeded563f514d42279f4.jpg'),
(890, 1454060291, NULL, 0, 46, 0, '6f792362ea19c0293b3f8964e8e2744e.jpg'),
(891, 1454060291, NULL, 0, 46, 0, '2ca9b31103dd3841c9d2ed6620748b9e.jpg'),
(892, 1454060427, NULL, 0, 47, 1, '4454777def4b6cf80459a15566e23770.jpg'),
(893, 1454060428, NULL, 0, 47, 0, '658a009a62674b13832e088c81fc3c56.jpg'),
(894, 1454060519, NULL, 0, 48, 1, 'c2c9d0b441f241040ff329880f7840e5.jpg'),
(895, 1454060520, NULL, 0, 48, 0, '72acee67ac7d096953ed7e80e9c19091.jpg'),
(896, 1454060641, NULL, 0, 106, 0, 'c42d9959125e80eb70759301e84a2f87.jpg'),
(897, 1454060641, 1454060646, 0, 106, 1, 'bcedcb826fce171cb73c27dcf27e2b85.jpg'),
(898, 1454060641, 1454060645, 0, 106, 0, 'fde09d1c8dde81cd1a97b982939d7831.jpg'),
(899, 1454060765, NULL, 0, 107, 0, 'b8dd61fda4136456a950e3588db2725d.jpg'),
(900, 1454060766, NULL, 0, 107, 0, 'c35cdae2bdd3bcd425326c3d14d0bb97.jpg'),
(901, 1454060766, 1454060773, 0, 107, 1, '1e2e2f992f6e9d1aad557278cd9d56b7.jpg'),
(902, 1454060896, NULL, 0, 108, 0, '9c08b55f586bed4b24c4db5f3940face.jpg'),
(903, 1454060896, NULL, 0, 108, 0, '5114f3b8896e1cd6f8589c06ee2b82f4.jpg'),
(904, 1454060897, 1454060902, 0, 108, 1, 'a4211640da4bb4ad88bf464938bdda63.jpg'),
(905, 1454060897, NULL, 0, 108, 0, 'c3f02f658d19e6277079eba3c830dea5.jpg'),
(906, 1454061009, NULL, 0, 109, 0, '9c62729b8903346f47fbadec2a603d54.jpg'),
(907, 1454061010, 1454061016, 0, 109, 0, 'cbe0b1362992f9a611732fa3c628a283.jpg'),
(908, 1454061010, 1454061017, 0, 109, 1, '40d2333010aa10e1f683eaee65ffeb1f.jpg'),
(909, 1454061010, NULL, 0, 109, 0, '7cf2bb2259fc83105dd54b5f45164e7c.jpg'),
(910, 1454061480, NULL, 0, 82, 0, 'c137b3097e8e27c8b37ddb50ba4f5d60.jpg'),
(911, 1454061486, 1454061492, 0, 82, 1, '81734926419a4401f8322ece3a5fe691.jpg'),
(912, 1454061488, NULL, 0, 82, 0, 'de6139486400f05812ff930e070a7219.jpg'),
(913, 1454061664, NULL, 0, 83, 0, '45b1ee668c6b32211024e653592d6eab.jpg'),
(914, 1454061664, NULL, 0, 83, 0, 'd4a752509012e86a1eba61ddbcd56ac2.jpg'),
(915, 1454061664, 1454061668, 0, 83, 1, '06020e5f548b14bbe0d3cddd1ddb9609.jpg'),
(916, 1454061665, NULL, 0, 83, 0, '7f7308b85cf8860bf87688003c341c4d.jpg'),
(917, 1454061805, NULL, 0, 110, 1, '8243a32288f42683b19c2e6246d32434.jpg'),
(918, 1454061805, NULL, 0, 110, 0, '5e8803702804b5191526f617a9872bfc.jpg'),
(919, 1454061805, NULL, 0, 110, 0, 'cf13c4865c9d525707be1380fa12fee9.jpg'),
(920, 1454061918, NULL, 0, 111, 0, '3bc233bb01df0372a9bfec43bc40808b.jpg'),
(921, 1454061919, 1454061923, 0, 111, 1, '2bc9719c017326e92508f46b404f342f.jpg'),
(922, 1454061920, NULL, 0, 111, 0, 'cc18d065868523ddbaecfea60658a927.jpg'),
(923, 1454061920, NULL, 0, 111, 0, '14ad7b75a49aaa94e79498940e95c46e.jpg'),
(924, 1454061920, NULL, 0, 111, 0, 'a73c11aa2c911000dad0adbe67389636.jpg'),
(925, 1454062059, NULL, 0, 112, 0, 'e3331e4ecff91a020e6faf5855f6c106.jpg'),
(926, 1454062059, 1454062062, 0, 112, 1, '82a09f8eae1e2e17f6f4d38a116fe1f9.jpg'),
(927, 1454062059, NULL, 0, 112, 0, 'c7b1f5eede7218e7ce3928ce75bebf80.jpg'),
(928, 1454062149, NULL, 0, 113, 0, '862bbc95fd9d5931cc45224a5594912b.jpg'),
(929, 1454062150, NULL, 0, 113, 0, 'c04388b2a78d26f58494f64bb85a20a2.jpg'),
(930, 1454062150, 1454062155, 0, 113, 1, '027e8a2609c1af3e188c8638f016fe97.jpg'),
(931, 1454062150, NULL, 0, 113, 0, '3decac2f8a418b001541276a997e4449.jpg'),
(932, 1454062267, NULL, 0, 114, 0, '39a508af70aec16c9ecdbd65332851f6.jpg'),
(933, 1454062268, NULL, 0, 114, 0, '18de15e953baa59ad1f7c1b346816baf.jpg'),
(934, 1454062268, NULL, 0, 114, 0, '3690cf2b90c165992677c2d3d61dbad0.jpg'),
(935, 1454062268, NULL, 0, 114, 0, 'b55851bfba00ea6741ca568034728662.jpg'),
(936, 1454062268, 1454062272, 0, 114, 1, '992e36604939e00adee689ee475add0a.jpg'),
(937, 1454062268, NULL, 0, 114, 0, '6a7dc3478f86309394a89873b4d743ea.jpg'),
(938, 1454062618, NULL, 0, 79, 1, '9286138925af6f01592d369df039cffc.jpg'),
(939, 1454062618, NULL, 0, 79, 0, '7ab297364a9518ea16a6b030e9ab7b8a.jpg'),
(940, 1454062618, NULL, 0, 79, 0, '19140df14a0a5ceb42b42f80764fc355.jpg'),
(941, 1454062618, NULL, 0, 79, 0, '9c4ecd02c5ed6b28563d844ca9b07c9b.jpg'),
(942, 1454062773, NULL, 0, 80, 0, '0c9f7afa3eb6e0f2a3d65e471d5da307.jpg'),
(943, 1454062774, NULL, 0, 80, 0, '9b2f1cf3b00966ff3111dbc7b4021fe6.jpg'),
(944, 1454062774, NULL, 0, 80, 0, '50a6b10f77b582361cbdfb1496daf1a0.jpg'),
(945, 1454062774, 1454062778, 0, 80, 1, '27a7915a23137d61f99bc2a20df0dc61.jpg'),
(946, 1454062891, NULL, 0, 81, 1, '3e7b9e0e1683ca0fe9a851c4c3051520.jpg'),
(947, 1454062891, NULL, 0, 81, 0, 'e3a6bd35af72c12bc71ee2a54a1a3de1.jpg'),
(948, 1454062891, NULL, 0, 81, 0, 'dd3352263b67f9a846b282d93e050701.jpg'),
(949, 1454063107, NULL, 0, 115, 0, '250a8fe994e364a3773d7a37c57c9985.jpg'),
(950, 1454063107, 1454063112, 0, 115, 1, '5bb962a05bf5a36940a77ba77e496ac6.jpg'),
(951, 1454063107, NULL, 0, 115, 0, '672a7e3dda7c1c8d497aab89cfbcb35c.jpg'),
(952, 1454063263, NULL, 0, 116, 0, 'ca3de76337a3902847896ed0a1b06d64.jpg'),
(953, 1454063264, 1454063268, 0, 116, 1, 'bf2ae8500081b45c16b214f51e50d39e.jpg'),
(954, 1454063264, NULL, 0, 116, 0, '486702ea00e43dd359416babcc76d2da.jpg'),
(955, 1454063264, NULL, 0, 116, 0, '3e15bc76d50ac4b91791d5decf6eeda7.jpg'),
(956, 1454063363, NULL, 0, 117, 0, 'f013ce4cf791d03679469aa718f6f849.jpg'),
(957, 1454063363, NULL, 0, 117, 0, '1178795b54c1a91f9daef568e5bbc4ec.jpg'),
(958, 1454063363, 1454063367, 0, 117, 1, '3d087c18ee28a88fc99dc78933d842a1.jpg'),
(959, 1454063363, NULL, 0, 117, 0, '5642ce231fadd8fdc28d4d0a3d0b3eea.jpg'),
(960, 1454063483, NULL, 0, 118, 0, 'bf00cbf5b566f593ae21362a13b0305a.jpg'),
(961, 1454063483, 1454063486, 0, 118, 1, '69efd778c57c7f5e8561eec011853107.jpg'),
(962, 1454063483, NULL, 0, 118, 0, '8eae61a75de204bd069f97771d9ce798.jpg'),
(963, 1454063563, NULL, 0, 119, 0, 'f37787bc2ccff45d2112176b593251a0.jpg'),
(964, 1454063564, 1454063568, 0, 119, 1, '92f3b935559751b2265a53c2fecf62ef.jpg'),
(965, 1454063564, NULL, 0, 119, 0, '5e2b688fc6f3264f69f0a35dfce03bcf.jpg'),
(966, 1454319171, NULL, 0, 120, 1, 'c0fec459280ee93b12b4e4a711705309.jpg'),
(967, 1454319171, NULL, 0, 120, 0, 'ff807ce787c61c6f1986c3673f181e97.jpg'),
(968, 1454319171, NULL, 0, 120, 0, 'b71ca9198c831d5bbb7aa7313f96432b.jpg'),
(969, 1454319242, NULL, 0, 121, 0, '1015f5cb50794306d2b4125ca59f5584.jpg'),
(970, 1454319243, 1454319246, 0, 121, 0, '2a9e943fa03374c77eea2d57ab7bea8b.jpg'),
(971, 1454319243, 1454319248, 0, 121, 1, '971c2e8906aa445de06e2a0bf33f0b87.jpg'),
(972, 1454319243, NULL, 0, 121, 0, 'f9a8f692a43aa33d4a34398966ec8efb.jpg'),
(973, 1454319244, NULL, 0, 121, 0, 'ae75b887c7022d28ae4c68fd3a05c566.jpg'),
(974, 1454319314, NULL, 0, 122, 0, 'e189a03cc2b6174e231a98d96aece6d0.jpg'),
(975, 1454319314, 1454319318, 0, 122, 1, '8c7b7cecca6ff092982454f7334ab879.jpg'),
(976, 1454319315, NULL, 0, 122, 0, '4ccf2c4bb581f46f9e536c824fb1456f.jpg'),
(977, 1454319365, NULL, 0, 123, 0, '0c6d6feef5e9c20657a192dd10236dbe.jpg'),
(978, 1454319366, NULL, 0, 123, 0, '5302e9694024fe5558e1146096437aae.jpg'),
(979, 1454319367, NULL, 0, 123, 0, '4238115c559a911f53334943e9227da6.jpg'),
(980, 1454319367, 1454319371, 0, 123, 1, 'a0977a205a70991491100a55f09d1368.jpg'),
(981, 1454319412, NULL, 0, 124, 0, '2b8bc8adcaef88284d0b14e634ae7a45.jpg'),
(982, 1454319412, NULL, 0, 124, 0, '48bef535720a1f08c4bce4cf9490bc6d.jpg'),
(983, 1454319412, NULL, 0, 124, 0, 'c5bda8b9fb179cdeec5c7eb74f389c08.jpg'),
(984, 1454319412, NULL, 0, 124, 0, '24d0cf99fcccb969d5aecf34116109cc.jpg'),
(985, 1454319412, NULL, 0, 124, 0, '81f02fbc87f9c57d1e5249ca5fb5f2e4.jpg'),
(986, 1454319412, 1454319415, 0, 124, 1, '00538151c9f5b0c2548a2dd7aff6339e.jpg'),
(987, 1454319856, NULL, 0, 125, 1, '59d38fdc0ca405a5b33d3c7841fd842b.jpg'),
(988, 1454319857, NULL, 0, 125, 0, 'ea4af92df0545e742442fd9521557295.jpg'),
(989, 1454319857, NULL, 0, 125, 0, '8e2d0cec4b76fefc8612be3cba8f68c4.jpg'),
(990, 1454319905, NULL, 0, 126, 0, '6ce02f5777176954b1ffc94d953d65ec.jpg'),
(991, 1454319905, 1454319908, 0, 126, 1, '654581ae81effacc3a69f675c1fe3a94.jpg'),
(992, 1454319905, NULL, 0, 126, 0, 'c82f273fd9e369474092ae0a9c462962.jpg'),
(993, 1454319950, NULL, 0, 127, 0, 'dd1880d4a59d9bc70554db980450f937.jpg'),
(994, 1454319950, NULL, 0, 127, 0, '85fcae91f7f12197f0d6098462d727b3.jpg'),
(995, 1454319951, 1454319954, 0, 127, 1, '720d0d3efa105c644950af32522f4045.jpg'),
(996, 1454320009, NULL, 0, 128, 0, 'a9578d07b90f63897ee57d84785341b1.jpg'),
(997, 1454320009, 1454320016, 0, 128, 1, 'b22809828871f8e09526177f0baed2b1.jpg'),
(998, 1454320010, 1454320013, 0, 128, 0, '242d03aca626cf78fbca10d7bb14afc8.jpg'),
(999, 1454320070, NULL, 0, 129, 0, 'f414790001dee545a59e82d57c48e446.jpg'),
(1000, 1454320070, NULL, 0, 129, 0, 'ab943c7b21343b3e5269ecb6d4e2be8f.jpg'),
(1001, 1454320070, NULL, 0, 129, 0, '18b8a15810f4557c7e42175a12bf0683.jpg'),
(1002, 1454320070, 1454320074, 0, 129, 1, 'b872e6cbc18e01ce6047b418aa0b2f88.jpg'),
(1003, 1454320433, NULL, 0, 130, 0, 'e0846d35b79b97059ac928e8784759af.jpg'),
(1004, 1454320434, 1454320437, 0, 130, 1, '4c81d2327a33a5aa58e18501eccf17a5.jpg'),
(1005, 1454320492, NULL, 0, 131, 0, 'be913b0dc5694f62c5f4326f5ce17d7e.jpg'),
(1006, 1454320492, NULL, 0, 131, 0, 'c62608b28945e55efad0c9318ad97844.jpg'),
(1007, 1454320493, 1454320496, 0, 131, 1, '2e49d83ce27e526f8e7cc578406fb5a8.jpg'),
(1008, 1454320557, NULL, 0, 132, 0, 'e210d5846ba2eceec2ba942d4002a5ea.jpg'),
(1009, 1454320557, NULL, 0, 132, 0, '095b4891b67b0872d09dcfdea6cf2a62.jpg'),
(1010, 1454320557, 1454320560, 0, 132, 1, 'cb0ab2f6740708dff3d7607f41163153.jpg'),
(1011, 1454320558, NULL, 0, 132, 0, 'c59d05b415af1a10a7b35f26e84fdbeb.jpg'),
(1012, 1454320615, NULL, 0, 133, 0, '26222e1e97d9b8873897856e6938dbef.jpg'),
(1013, 1454320616, 1454320619, 0, 133, 1, '7991833d4e097829b93dd9f278b40c14.jpg'),
(1014, 1454320668, NULL, 0, 134, 0, '46906e45201ceb883ca4b3e43fb0a08b.jpg'),
(1015, 1454320668, NULL, 0, 134, 0, '6614b56452da935d34639892ad2328d5.jpg'),
(1016, 1454320668, NULL, 0, 134, 0, '890c520e810507ccd696bb43f1f699e2.jpg'),
(1017, 1454320668, 1454320672, 0, 134, 1, '857b1bc39a911a1a24ae239ee59d16e2.jpg'),
(1018, 1454322295, NULL, 0, 135, 0, '17086e50d45528d8c80a0bad0d36d003.jpg'),
(1019, 1454322295, NULL, 0, 135, 0, 'e6f10d735dc72e567c9e93d0d8339744.jpg'),
(1020, 1454322295, 1454322299, 0, 135, 1, '3bfdb6e9c6abd9d58741a9afd69a73d1.jpg'),
(1021, 1454322346, NULL, 0, 136, 0, '0b49df8cb67727af6eb26fdb795415a3.jpg'),
(1022, 1454322346, 1454322350, 0, 136, 1, '98a88f9a611f19fda6d0507bfeb84ef4.jpg'),
(1023, 1454322347, NULL, 0, 136, 0, '62b142faa5eb460446b7435d05b7dd5f.jpg'),
(1024, 1454322395, NULL, 0, 137, 0, '53ff3671332a1d6662d7097ef02447d6.jpg'),
(1025, 1454322395, 1454322399, 0, 137, 1, '2ab31caa02f13ca7fe793fc6ffde3935.jpg'),
(1026, 1454322396, NULL, 0, 137, 0, '8ea3fa1cb1e70c61d7699e32dd62543f.jpg'),
(1027, 1454322444, NULL, 0, 138, 0, '5f93fd8536213e1b493fba0c0cb1128b.jpg'),
(1028, 1454322444, NULL, 0, 138, 0, 'f82cea06efc222807a7c4c818b2c53f0.jpg'),
(1029, 1454322444, NULL, 0, 138, 0, '4f939283bcfade8414883cd63f9ed2b1.jpg'),
(1030, 1454322444, 1454322448, 0, 138, 1, 'dd84e3af3ac388c165830cf5c2a99be1.jpg'),
(1031, 1454322445, NULL, 0, 138, 0, 'c1a9e596b0f7f1be6cd0327f2f2803d8.jpg'),
(1032, 1454322445, NULL, 0, 138, 0, 'c5575242fd29e5361bec9af5654d22d4.jpg'),
(1033, 1454322495, NULL, 0, 139, 0, '7383116a90c0ffc6a3b3879afd21c9db.jpg'),
(1034, 1454322495, NULL, 0, 139, 0, 'ae1cce1c0b3063dcad4aaea5e97c4d24.jpg'),
(1035, 1454322495, NULL, 0, 139, 0, '851352032583039a485fc68b17fb9605.jpg'),
(1036, 1454322495, 1454322499, 0, 139, 1, '33d7d2b06133a49ca5fe0f732ebf5d5b.jpg'),
(1037, 1454323558, NULL, 0, 140, 1, 'ce8d895d2c71cfb9a98da843140265a7.jpg'),
(1038, 1454323558, NULL, 0, 140, 0, 'e7c130e6bc23cc2e6909dd44a2b8edd8.jpg'),
(1039, 1454323597, NULL, 0, 141, 1, 'da41ddcc27ee136176fdce29738682b2.jpg'),
(1040, 1454323597, NULL, 0, 141, 0, '40438702f208dc7a846de7fd044fdc3f.jpg'),
(1041, 1454323638, NULL, 0, 142, 1, '0677e1ad1f6541eee5747d28058c8180.jpg'),
(1042, 1454323638, NULL, 0, 142, 0, 'e9ed81d1338738690da8a66ccfe64caa.jpg'),
(1043, 1454323638, NULL, 0, 142, 0, '8d12653145ce327fd9fd529bf97ed832.jpg'),
(1044, 1454323638, NULL, 0, 142, 0, '575f35dc33c347d187b07d0ba140483c.jpg'),
(1045, 1454323690, NULL, 0, 143, 0, '326971d7fdcea2ebc896edba1289c5b8.jpg'),
(1046, 1454323691, NULL, 0, 143, 0, 'fea9c60dc43c4d63e41564e3f5195222.jpg'),
(1047, 1454323691, 1454323695, 0, 143, 1, '68d868374b6db3d1cf9bea2f72027e31.jpg'),
(1048, 1454323732, NULL, 0, 144, 0, '5c982d0f22ca28a981b1279b07071224.jpg'),
(1049, 1454323732, NULL, 0, 144, 0, 'f5912eca33cdd38c8eb926dfc3a4a515.jpg'),
(1050, 1454323733, 1454323736, 0, 144, 1, '43de9d0f84d292f30c5ac0451faff7de.jpg'),
(1051, 1454324150, NULL, 0, 145, 0, '45353260ac145a792c6473702dc3a245.jpg'),
(1052, 1454324150, NULL, 0, 145, 0, '0014bf9b863376bac33ba1cf220ef9c1.jpg'),
(1053, 1454324221, 1454324224, 0, 145, 1, '2c57611d39d0339269ecba567a749967.jpg'),
(1054, 1454324435, NULL, 0, 146, 0, 'bb0fb34187c83bc9bce342222d5e6761.jpg'),
(1055, 1454324436, NULL, 0, 146, 0, '521f766892d6953a9be16b9ba10b016c.jpg'),
(1056, 1454324436, 1454324439, 0, 146, 1, '120a2393910ce4cad4acd9300c124ca4.jpg'),
(1057, 1454324483, NULL, 0, 147, 0, 'a09d61fb3daa2187d6b0a973be323fae.jpg'),
(1058, 1454324483, NULL, 0, 147, 0, '962c84e6f34d053265bde8e9ee17cebc.jpg'),
(1059, 1454324483, NULL, 0, 147, 0, 'c61fa782753805642c5bbc08772aec33.jpg'),
(1060, 1454324483, 1454324486, 0, 147, 1, '2e70fbd4a6418b0d25f58157243ec680.jpg'),
(1061, 1454324549, NULL, 0, 148, 0, '0e21d9a8d4d8443d5121adb22c7a3c48.jpg'),
(1062, 1454324550, 1454324554, 0, 148, 1, '7e6ed9ff208f16a45ab64257ba9f3a72.jpg'),
(1063, 1454324550, NULL, 0, 148, 0, '113cdbec9b7ebb3e1bc063ca79d47584.jpg'),
(1064, 1454324595, NULL, 0, 149, 0, '9840481770e3971b1e3eb0602e4ef8fa.jpg'),
(1065, 1454324596, 1454324599, 0, 149, 1, '8b80482102762d94fb58b6db7e57550c.jpg'),
(1066, 1454324596, NULL, 0, 149, 0, 'c90cb4ce6c0405c147528e3f54e05a15.jpg'),
(1067, 1454324992, NULL, 0, 150, 1, 'f7202f3d2445ba1f4fa2839437e2b9b9.jpg'),
(1068, 1454324992, NULL, 0, 150, 0, 'a11e493b6e6499bed3eefea74fa7b8eb.jpg'),
(1069, 1454324992, NULL, 0, 150, 0, '9b1c229f467cf4fd476137d50ab7621f.jpg'),
(1070, 1454324992, NULL, 0, 150, 0, 'f77d7fcd5276da5d38b69dd2ecc946ef.jpg'),
(1071, 1454325041, NULL, 0, 151, 0, 'b13b198a8f241222e11d3dbf1f39945d.jpg'),
(1072, 1454325041, 1454325045, 0, 151, 1, '07ee6659e7a415e9d34f6a93b540908e.jpg'),
(1073, 1454325041, NULL, 0, 151, 0, '3aa351779f28a84504dff5cbc609d13a.jpg'),
(1074, 1454325042, NULL, 0, 151, 0, 'a8b5fd53b719c7d91db04e164bacfc09.jpg'),
(1075, 1454325090, NULL, 0, 152, 0, 'f51fa7d3e0c760a5261a21d55b9043bb.jpg'),
(1076, 1454325090, 1454325095, 0, 152, 1, '0a4eff388b67a57a083f654ac8149b0b.jpg'),
(1077, 1454325091, NULL, 0, 152, 0, '76617532a08b25cc659055fac6e55cb9.jpg'),
(1078, 1454325091, NULL, 0, 152, 0, 'd9ddcf29ba1a7f649373f5b979c58301.jpg'),
(1079, 1454325146, NULL, 0, 153, 0, 'd871aa2b96326c15066e08b700517ed3.jpg'),
(1080, 1454325146, 1454325149, 0, 153, 1, '698e3ecaee23d4e5f2f1530d0c240ad8.jpg'),
(1081, 1454325146, NULL, 0, 153, 0, '73bfd89a892a80532ca90638490b6310.jpg'),
(1082, 1454325188, 1455271808, 0, 154, 1, 'a1263630a87a89b5226af70435ba8254.jpg'),
(1083, 1454325188, 1455271807, 0, 154, 0, 'acbc57eebac7833ff4b8b9922cccfa83.jpg'),
(1084, 1454325188, 1454325191, 0, 154, 0, '0ab43126cd4348da5a5c2cf762f680e8.jpg'),
(1085, 1455806196, NULL, 0, 154, 0, 'ec8c6a0a41584b9206686503bbf15a4b.jpg'),
(1086, 1462879188, NULL, 0, 155, 1, '8d2ec33b46ebc352b67098759eebe5fc.jpg'),
(1087, 1462879776, NULL, 0, 156, 1, 'eab6d6b4851e790b52d71813e8537b8c.jpg'),
(1088, 1463996837, NULL, 0, 157, 1, '0cdf3a8e39c4cfb545c4e0da3a719c6f.jpg'),
(1089, 1464162034, NULL, 0, 156, 0, 'd55ccad693f675098834733e4ff31e57.JPG'),
(1090, 1464612672, NULL, 0, 158, 1, '876558828e8bf44fd34c1638e82bfdb4.jpg'),
(1091, 1464684600, NULL, 0, 161, 1, 'c6121f9633e13ce34552ba96c741d096.jpg'),
(1092, 1464685042, NULL, 0, 160, 1, '1b22ffdbad1330328b791e4a253e6d97.jpg'),
(1093, 1464685157, NULL, 0, 162, 1, 'ae7cd5e751f1f6c5305e881d8a38622d.jpg'),
(1094, 1465035038, NULL, 0, 163, 1, 'db6bf874a183ef6709366777e38b5f8b.jpg'),
(1095, 1485243789, NULL, 0, 163, 0, '78913ab853a7861d461bd1cb2660244f.jpg'),
(1096, 1485346633, NULL, 0, 48, 0, 'a051147ac0abb55ecf2fb0573ca1d767.jpg'),
(1097, 1492005412, NULL, 0, 163, 0, '70097c952dff895f9ed113ff205ed87d.jpg'),
(1098, 1492005432, NULL, 0, 163, 0, '2b26bbd625f28853c8c72e539dc56108.jpg'),
(1099, 1498117355, NULL, 0, 164, 1, '5f8632f14d980c316b29b20c8d91ad9f.jpg'),
(1100, 1498117355, NULL, 0, 164, 0, 'aadb31647bb203b8cc075e200f3c11cb.jpg'),
(1101, 1498117355, NULL, 0, 164, 0, '9494831fd219af1b5d1db8ac498baa68.jpg'),
(1102, 1498117355, NULL, 0, 164, 0, 'e44ada86f6401e9811c4030df9cd2825.jpeg'),
(1103, 1498117355, NULL, 0, 164, 0, '63399ea888ebf34b6bdeeaf396e8f46c.jpg'),
(1104, 1498117356, NULL, 0, 164, 0, 'c9c34e34f2c62561882562ef80c5e776.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_questions`
--

CREATE TABLE `catalog_questions` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `email` varchar(64) DEFAULT NULL,
  `catalog_id` int(10) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_questions`
--

INSERT INTO `catalog_questions` (`id`, `created_at`, `updated_at`, `status`, `email`, `catalog_id`, `ip`, `name`, `text`) VALUES
(1, 1453192288, NULL, 0, 'test.wezom@mail.ru', 44, '178.136.229.251', NULL, NULL),
(2, 1453375179, NULL, 0, 'test.wezom@mail.ru', 44, '178.136.229.251', NULL, NULL),
(3, 1453375179, NULL, 0, 'test.wezom@mail.ru', 44, '178.136.229.251', NULL, NULL),
(4, 1453375425, NULL, 0, 'test.wezom@mail.ru', 44, '178.136.229.251', NULL, NULL),
(6, 1461879707, 1497011032, 1, 'gfdgfdg@mail.ru', 43, '78.137.5.210', NULL, NULL),
(7, 1498318581, NULL, 0, 'alyohina.i.wezom@gmail.com', 40, '127.0.0.1', 'test', 'test wezom'),
(8, 1498458746, NULL, 0, 'test@test.te', 51, '178.136.229.251', 'имя', 'мой вопрос');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_related`
--

CREATE TABLE `catalog_related` (
  `id` int(10) NOT NULL,
  `who_id` int(10) NOT NULL,
  `with_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `catalog_related`
--

INSERT INTO `catalog_related` (`id`, `who_id`, `with_id`) VALUES
(41, 41, 40),
(42, 42, 40),
(43, 42, 41),
(44, 54, 40),
(45, 54, 46),
(46, 54, 48),
(47, 154, 57),
(48, 154, 59),
(49, 154, 84),
(50, 154, 60),
(51, 154, 56),
(52, 154, 45),
(53, 154, 58),
(54, 154, 85),
(55, 154, 86),
(56, 154, 87),
(57, 154, 120),
(58, 154, 124),
(59, 154, 123),
(60, 154, 121),
(61, 154, 122),
(62, 163, 76),
(63, 164, 162),
(64, 164, 46),
(65, 161, 164),
(66, 163, 164);

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_specifications_values`
--

CREATE TABLE `catalog_specifications_values` (
  `id` int(11) NOT NULL,
  `catalog_id` int(10) NOT NULL,
  `specification_value_alias` varchar(255) NOT NULL,
  `specification_alias` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_tree`
--

CREATE TABLE `catalog_tree` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `image` varchar(64) DEFAULT NULL,
  `views` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_tree_brands`
--

CREATE TABLE `catalog_tree_brands` (
  `id` int(10) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `catalog_tree_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_tree_i18n`
--

CREATE TABLE `catalog_tree_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `text` text,
  `language` varchar(255) DEFAULT NULL,
  `row_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `catalog_tree_specifications`
--

CREATE TABLE `catalog_tree_specifications` (
  `id` int(10) NOT NULL,
  `catalog_tree_id` int(10) NOT NULL,
  `specification_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `config`
--

CREATE TABLE `config` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `zna` text,
  `updated_at` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(32) DEFAULT NULL,
  `values` text COMMENT 'Возможные значения в json массиве ключ => значение. Для селекта и радио',
  `group` varchar(128) DEFAULT NULL COMMENT 'Группа настроек'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config`
--

INSERT INTO `config` (`id`, `name`, `zna`, `updated_at`, `status`, `sort`, `key`, `valid`, `type`, `values`, `group`) VALUES
(1, 'E-Mail администратора сайта (отправитель по умолчанию)', 'martinenko.a.wezom@gmail.com', 1434885560, 1, 1, 'admin_email', 1, 'input', NULL, 'mail'),
(2, 'Название сайта', 'CMS v4.0', 1434885560, 1, 1, 'name_site', 1, 'input', NULL, 'basic'),
(5, 'Отображение всплывающих сообщений на сайте', 'topRight', 1434835221, 0, 2000, 'message_output', 1, 'radio', '[{"key":"Отображать вверху","value":"top"},{"key":"Отображать вверху слева","value":"topLeft"},{"key":"Отображать вверху по центру","value":"topCenter"},{"key":"Отображать вверху справа","value":"topRight"},{"key":"Отображать по центру слева","value":"centerLeft"},{"key":"Отображать по центру","value":"center"},{"key":"Отображать по центру справа","value":"centerRight"},{"key":"Отображать внизу слева","value":"bottomLeft"},{"key":"Отображать внизу по центру","value":"bottomCenter"},{"key":"Отображать внизу справа","value":"bottomRight"},{"key":"Отображать внизу","value":"bottom"}]', 'basic'),
(6, 'Номер телефона в шапке сайта', '+7(495) 506-22-84', 1434885560, 1, 6, 'phone', 0, 'input', NULL, 'static'),
(7, 'Количество товаров на странице', '10', 1434885560, 1, 7, 'limit', 1, 'input', NULL, 'basic'),
(8, 'Количество статей на главной странице', '2', 1434885560, 1, 8, 'limit_articles_main_page', 1, 'input', NULL, 'basic'),
(9, 'Количество строк в админ-панели', '10', 1434885560, 1, 9, 'limit_backend', 1, 'input', NULL, 'basic'),
(10, 'VK.com', 'http://vk.com/', 1434885560, 1, 10, 'vk', 0, 'input', NULL, 'socials'),
(11, 'FB.com', 'https://www.facebook.com', 1434885560, 1, 11, 'fb', 0, 'input', NULL, 'socials'),
(12, 'Instagram', 'http://instagram.com', 1434885560, 1, 12, 'instagram', 0, 'input', NULL, 'socials'),
(17, 'Количество новостей / статей на странице', '1', 1434885560, 1, 7, 'limit_articles', 1, 'input', NULL, 'basic'),
(18, 'Количество групп товаров на странице', '5', 1434885560, 1, 7, 'limit_groups', 1, 'input', NULL, 'basic'),
(19, 'Использовать СМТП', '1', 1434885560, 1, 3, 'smtp', 1, 'radio', '[{"key":"Да","value":1},{"key":"Нет","value":0}]', 'mail'),
(20, 'SMTP server', 'smtp.yandex.com', 1434885560, 1, 4, 'host', 0, 'input', NULL, 'mail'),
(22, 'Логин', 'kuchura.d@yandex.ru', 1434885560, 1, 5, 'username', 0, 'input', NULL, 'mail'),
(23, 'Пароль', 'IOPiop22!', 1434885560, 1, 6, 'pass', 0, 'password', NULL, 'mail'),
(24, 'Тип подключения', 'ssl', 1434885560, 1, 7, 'secure', 0, 'select', '[{"key":"TLS","value":"tls"},{"key":"SSL","value":"ssl"}]', 'mail'),
(25, 'Порт. Например 465 или 587. (587 по умолчанию)', '465', 1434885560, 1, 8, 'port', 0, 'input', NULL, 'mail'),
(26, 'Имя латинницей (отображается в заголовке письма)', 'Info', 1434885560, 1, 2, 'name', 1, 'input', NULL, 'mail'),
(27, 'Запаролить сайт', '1', 1434885560, 1, 0, 'auth', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'security'),
(28, 'Логин', '1', 1434885560, 1, 2, 'username', 0, 'input', NULL, 'security'),
(29, 'Пароль', '1', 1434885560, 1, 3, 'password', 0, 'password', NULL, 'security'),
(30, 'Сократить CSS u JavaScript', '0', 1434885561, 1, 1, 'minify', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'speed'),
(31, 'Сократить HTML', '0', 1434885561, 1, 2, 'compress', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'speed'),
(32, 'Кеширование размера изображений', '0', NULL, 1, 3, 'cache_images', 1, 'select', '[{"key":"Выключить","value":"0"},{"key":"12 часов","value":"0.5"},{"key":"День","value":"1"},{"key":"3 дня","value":"3"},{"key":"Неделя","value":"7"},{"key":"2 недели","value":"14"},{"key":"Месяц","value":"30"},{"key":"Год","value":"365"}]', 'speed'),
(33, 'Наименование организации', 'wezom', NULL, 1, 1, 'organization', 1, 'input', NULL, 'microdata'),
(34, 'Автор статей', 'wezom author', NULL, 1, 2, 'author', 1, 'input ', NULL, 'microdata'),
(35, 'Количество отзывов на странице', '3', NULL, 1, 8, 'limit_reviews', 1, 'input', NULL, 'basic'),
(36, 'Наименование магазина', 'cms4', NULL, 1, 1, 'name', 1, 'input', NULL, 'export'),
(37, 'Наименование компании', 'wezom', NULL, 1, 2, 'company', 1, 'input', NULL, 'export'),
(38, 'Email разработчиков CMS или агентства, осуществляющего техподдержку.', 'alyohina.i.wezom@gmail.com', NULL, 1, 3, 'email', 1, 'input', NULL, 'export'),
(40, 'Использовать защищённое ssl соединение?', '0', NULL, 1, 5, 'ssl', 1, 'radio', '[{"key":"Да","value":"1"},{"key":"Нет","value":"0"}]', 'security');

-- --------------------------------------------------------

--
-- Структура таблицы `config_groups`
--

CREATE TABLE `config_groups` (
  `id` int(4) NOT NULL,
  `name` varchar(128) NOT NULL,
  `alias` varchar(128) NOT NULL,
  `side` varchar(16) NOT NULL DEFAULT 'left' COMMENT 'left, right',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config_groups`
--

INSERT INTO `config_groups` (`id`, `name`, `alias`, `side`, `status`, `sort`) VALUES
(1, 'Почта', 'mail', 'right', 1, 1),
(2, 'Базовые', 'basic', 'left', 1, 1),
(3, 'Статика', 'static', 'left', 1, 2),
(4, 'Соц. сети', 'socials', 'left', 1, 3),
(5, 'Безопасность', 'security', 'right', 1, 2),
(6, 'Быстродействие', 'speed', 'right', 1, 3),
(7, 'Микроразметка', 'microdata', 'left', 1, 4),
(8, 'Выгрузки', 'export', 'left', 1, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `config_types`
--

CREATE TABLE `config_types` (
  `id` int(4) NOT NULL,
  `name` varchar(128) NOT NULL,
  `alias` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `config_types`
--

INSERT INTO `config_types` (`id`, `name`, `alias`) VALUES
(1, 'Однострочное текстовое поле', 'input'),
(2, 'Текстовое поле', 'textarea'),
(3, 'Выбор значения из списка', 'select'),
(4, 'Пароль', 'password'),
(5, 'Радиокнопка', 'radio'),
(6, 'Текстовое поле с редактором', 'tiny');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `text` text,
  `ip` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `created_at`, `updated_at`, `status`, `name`, `email`, `text`, `ip`) VALUES
(1, 1452758290, NULL, 1, 'dsnfkdsfnkj', 'dsnkln@mail.ru', 'gfnjmnr mjuhy', '178.136.229.251'),
(2, 1453192417, NULL, 1, 'Darya W', 'test.wezom@mail.ru', 'test message', '178.136.229.251'),
(3, 1453375181, NULL, 1, 'Darya W', 'test.wezom@mail.ru', 'test message', '178.136.229.251'),
(4, 1453375429, NULL, 1, 'Darya W', 'test.wezom@mail.ru', 'test message', '178.136.229.251'),
(5, 1455810027, NULL, 1, 'fdhfgh', 'hnjnjh@mail.ru', 'fghfgj', '178.136.229.251'),
(6, 1455973056, NULL, 1, 'test', 'test@mail.ru', 'test', '178.136.229.251'),
(7, 1455973493, NULL, 1, 'test', 'test@mail.ru', 'test', '178.136.229.251'),
(8, 1455974746, NULL, 1, 'test', 'test@mail.ru', 'test', '178.136.229.251'),
(9, 1455975369, NULL, 1, 'test', 'test@mail.ru', 'test', '178.136.229.251'),
(10, 1455976611, NULL, 1, 'test', 'test@mail.ru', 'test', '178.136.229.251'),
(11, 1461525516, NULL, 1, 'test', 'test@mail.ru', 'test', '213.227.252.130'),
(12, 1461526290, 1483518952, 1, 'test', 'test@mail.ru', 'test', '213.227.252.130'),
(13, 1497014129, 1498135109, 1, 'авпрasdf', 'fdghfgh@aa.aa', 'вапрsadf', '127.0.0.1'),
(14, 1498463679, NULL, 0, 'имя', 'test@test.te', 'сообщение ', '178.136.229.251'),
(15, 1498471656, NULL, 0, 'test', 'alyohina.i.wezom@gmail.com', 'test', '127.0.0.1'),
(16, 1498471796, NULL, 0, 'test', 'alyohina.i.wezom@gmail.com', 'test', '178.136.229.252'),
(17, 1498473493, NULL, 0, 'имя', 'martinenko.a.wezom@gmail.com', 'сообщение в 13:37', '178.136.229.251');

-- --------------------------------------------------------

--
-- Структура таблицы `content`
--

CREATE TABLE `content` (
  `id` int(10) NOT NULL,
  `alias` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `parent_id` int(10) NOT NULL DEFAULT '0',
  `views` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content`
--

INSERT INTO `content` (`id`, `alias`, `status`, `created_at`, `updated_at`, `sort`, `parent_id`, `views`) VALUES
(19, 'o-nas', 1, 1447089913, 1498034975, 1, 0, 36),
(20, 'faq', 1, 1447090050, 1498034975, 0, 19, 44),
(21, 'dostavka', 1, 1447090182, 1498034975, 3, 0, 36),
(22, 'oplata', 1, 1447090201, 1498034975, 2, 0, 1),
(23, 'garantija', 1, 1447090225, 1498035503, 0, 20, 4),
(24, 'vozvrat', 1, 1447090248, 1498034975, 0, 0, 2),
(25, 'b', 0, 1458158661, 1498034975, 0, 22, 1),
(26, 'b2', 1, 1458158994, 1498034975, 0, 25, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `content_i18n`
--

CREATE TABLE `content_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `row_id` int(11) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `content_i18n`
--

INSERT INTO `content_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(1, 'О нас', 'О нас', 'О нас', 'О нас', 'О нас', 'О нас', 19, 'ru'),
(2, 'About', 'About', 'About', 'About', 'About', 'About', 19, 'ua'),
(3, 'Часто задаваемые вопросы', '<p>Часто задаваемые вопросы</p>', 'Часто задаваемые вопросы', 'Часто задаваемые вопросы', 'Часто задаваемые вопросы', 'Часто задаваемые вопросы', 20, 'ru'),
(4, 'Faq', '<p>Faq</p>', 'Faq', 'Faq', 'Faq', 'Faq', 20, 'ua'),
(5, 'Доставка', 'Доставка', 'Доставка', 'Доставка', 'Доставка', 'Доставка', 21, 'ru'),
(6, 'Delivery', 'Delivery', 'Delivery', 'Delivery', 'Delivery', 'Delivery', 21, 'ua'),
(7, 'Оплата', 'Оплата', 'Оплата', 'Оплата', 'Оплата', 'Оплата', 22, 'ru'),
(8, 'Payment', 'Payment', 'Payment', 'Payment', 'Payment', 'Payment', 22, 'ua'),
(9, 'Гарантия', '<p>Гарантия</p>', 'Гарантия', 'Гарантия', 'Гарантия', 'Гарантия', 23, 'ru'),
(10, 'Warranty', '<p>Warranty</p>', 'Warranty', 'Warranty', 'Warranty', 'Warranty', 23, 'ua'),
(11, 'Возврат', '<p>Возврат</p>', 'Возврат', 'Возврат', 'Возврат', 'Возврат', 24, 'ru'),
(12, 'Refund', '<p>Refund</p>', 'Refund', 'Refund', 'Refund', 'Refund', 24, 'ua'),
(13, 'Б', 'Б', 'Б', 'Б', 'Б', 'Б', 25, 'ru'),
(14, 'B', 'B', 'B', 'B', 'B', 'B', 25, 'ua'),
(15, 'Б2', 'Б2', 'Б2', 'Б2', 'Б2', 'Б2', 26, 'ru'),
(16, 'B2', 'B2', 'B2', 'B2', 'B2', 'B2', 26, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `control`
--

CREATE TABLE `control` (
  `id` int(10) NOT NULL,
  `alias` varchar(32) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `other` text,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `control`
--

INSERT INTO `control` (`id`, `alias`, `status`, `other`, `updated_at`) VALUES
(1, 'index', 1, NULL, 1490347485),
(2, 'contact', 1, '', NULL),
(3, 'articles', 1, NULL, NULL),
(4, 'cart', 1, NULL, NULL),
(5, 'news', 1, NULL, NULL),
(6, 'search', 1, NULL, NULL),
(7, 'sitemap', 1, NULL, NULL),
(8, 'brands', 1, NULL, NULL),
(9, 'products', 1, NULL, NULL),
(10, 'popular', 1, NULL, NULL),
(11, 'new', 1, NULL, NULL),
(12, 'sale', 1, NULL, 1483519150),
(13, 'viewed', 1, NULL, NULL),
(14, 'reviews', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `control_i18n`
--

CREATE TABLE `control_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `control_i18n`
--

INSERT INTO `control_i18n` (`id`, `row_id`, `language`, `name`, `h1`, `title`, `keywords`, `description`, `text`) VALUES
(1, 1, 'ru', 'Главная страница', 'Главная страница', 'Главная страница', 'Главная страница', 'Главная страница', '<h1>1Интернет-магазин спортивной одежды и обуви</h1>\r\n<p>На сегодняшний день здоровый образ жизни стал не просто привилегией, а неким культом. Интернет магазин спортивной одежды позволяет без лишних затрат времени приобрести экипировку для любимого дела. Занимаетесь ли вы бегом, боксом, плаваньем, выбираете активный отдых или вас просто интересует спортивная одежда, интернет магазин &nbsp;&laquo;одежды и обувиpac&raquo; обеспечит вас всем необходимым. Главное при занятии спортом &ndash; это максимальный комфорт. Интернет магазин спортивной обуви позволит &laquo;обуть&raquo; ваши ножки, и они будут чувствовать себя по-королевски в любых условиях!</p>\r\n<h2>Спортивная обувь и одежда в наличии и под заказ</h2>\r\n<p>Наш каталог спортивной одежды удовлетворит запросы даже самых требовательных покупателей. Тут можно найти вещи на любой вкус, сделанные из разнообразных материалов: хлопок, полиэстер, эластан. На сегодня наш онлайн супермаркет - один из самых перспективных, мы заботимся о своей репутации, так что на наших страницах вас ждёт только фирменная обувь, аксессуары и вещи.</p>\r\n<h2>Ассортимент товаров</h2>\r\n<p>Украина с каждым годом всё ближе и ближе к европейскому уровню развития, а ведь именно там ударными темпами увеличивается уровень онлайн покупок. Интернет магазин спортивной одежды и обуви одежды и обувиpac с 2012 года добился впечатляющих успехов, а именно:</p>\r\n<ul>\r\n<li>до 4 тысяч пар спортивной обуви &ndash; мы лидируем среди интернет магазинов спортивной обуви;</li>\r\n<li>огромное количество курток;</li>\r\n<li>пуховики разных расцветок и фасонов, с разнообразной символикой, где присутствует не только Украина, но и другие страны;</li>\r\n<li>футболки;</li>\r\n<li>фирменная толстовка;</li>\r\n<li>кепки;</li>\r\n<li>разнообразные аксессуары.</li>\r\n</ul>\r\n<p>Купить спортивную одежду в Украине можно на любом рынке. Но где гарантия того, что она будет действительной качественная, фирменная и не навредит вместо того, чтоб принести пользу? Именно поэтому мы предоставляем все необходимые сертификаты качества &ndash; наша одежда брендовая, как и спортивная обувь, интернет магазин полностью уверен в тех материалах, из которых она состоит. С каждым днём мы стараемся предоставить клиентам ещё больше новинок и интересных моделей, повысить уровень обслуживания. Покупайте спортивную одежду, аксессуары и спортивную обувь в нашем интернет магазине, ведь вас ежедневно ждут акционные предложения, скидки и просто сюрпризы, чтоб покупки стали для вас ещё более приятным занятием!</p>\r\n<h2>Приобретайте брендовую спортивную одежду</h2>\r\n<p>Почему вам остановить выбор именно на нашем интернет магазине спортивной одежды и обуви? одежды и обувиpac даёт клиентам возможность оплатить свою покупку несколькими способами. Во-первых, вы можете передать деньги курьеру или же оплатить покупку в отделении перевозчика, то есть осуществить оплату наложенным платежом. Такой способ наиболее безопасный, но он несёт определённые потери &ndash; необходимо оплатить обратную доставку денег. Второй способ купить спортивную одежду в Украине &ndash; электронный перевод. В таком случае менеджер одежды и обувиpac отправляет вам реквизиты для оплаты на электронную почту или на мобильный телефон, и счёт можно оплатить через Приват24. Обязательное условие при переводе &ndash; сообщение нам точной суммы и времени перечисления денег.</p>\r\n<p>Совершив покупку в нашем интернет магазине спортивной обуви, доставку товара можно ожидать в течение 14-28 дней, если он отсутствует на Украине. Если же товар в наличии &ndash; его можно получить через 1-3 дня. Получить спортивную одежду из нашего интернет магазина можно с помощью Новой Почты, либо же с курьером, если вы живёте в Днепропетровске.</p>\r\n<p>Какие же гарантии, что вас ждёт именно брендовая спортивная одежда? Прежде всего, наша репутация как интернет магазина спортивной одежды для молодёжи и наработанная годами клиентская база говорит сама за себя. Также вы получаете двухмесячную гарантию на сам товар, который можно вернуть или обменять в случае возникновения непредвиденных дефектов, таких как расклеивание или отрывы по швам.</p>\r\n<p>Также у нас есть электронные страницы и сообщества в социальных сетях, где вы можете оставить свои отзывы, пожелания, разместить претензии или выразить неудовлетворённость.</p>\r\n<p>Интернет-магазин одежды и обувиpac &ndash; это только лучшие предложения, которые имеют доступную цену и высокое качество. Загляните к нам, и в каталоге спортивной одежды вы точно найдёте что-то подходящее для вас!</p>'),
(2, 1, 'ua', 'Main page', 'Main page', 'Main page', 'Main page', 'Main page', '<h1>Интернет-магазин спортивной одежды и обуви</h1>\r\n<p>На сегодняшний день здоровый образ жизни стал не просто привилегией, а неким культом. Интернет магазин спортивной одежды позволяет без лишних затрат времени приобрести экипировку для любимого дела. Занимаетесь ли вы бегом, боксом, плаваньем, выбираете активный отдых или вас просто интересует спортивная одежда, интернет магазин &nbsp;&laquo;одежды и обувиpac&raquo; обеспечит вас всем необходимым. Главное при занятии спортом &ndash; это максимальный комфорт. Интернет магазин спортивной обуви позволит &laquo;обуть&raquo; ваши ножки, и они будут чувствовать себя по-королевски в любых условиях!</p>\r\n<h2>Спортивная обувь и одежда в наличии и под заказ</h2>\r\n<p>Наш каталог спортивной одежды удовлетворит запросы даже самых требовательных покупателей. Тут можно найти вещи на любой вкус, сделанные из разнообразных материалов: хлопок, полиэстер, эластан. На сегодня наш онлайн супермаркет - один из самых перспективных, мы заботимся о своей репутации, так что на наших страницах вас ждёт только фирменная обувь, аксессуары и вещи.</p>\r\n<h2>Ассортимент товаров</h2>\r\n<p>Украина с каждым годом всё ближе и ближе к европейскому уровню развития, а ведь именно там ударными темпами увеличивается уровень онлайн покупок. Интернет магазин спортивной одежды и обуви одежды и обувиpac с 2012 года добился впечатляющих успехов, а именно:</p>\r\n<ul>\r\n<li>до 4 тысяч пар спортивной обуви &ndash; мы лидируем среди интернет магазинов спортивной обуви;</li>\r\n<li>огромное количество курток;</li>\r\n<li>пуховики разных расцветок и фасонов, с разнообразной символикой, где присутствует не только Украина, но и другие страны;</li>\r\n<li>футболки;</li>\r\n<li>фирменная толстовка;</li>\r\n<li>кепки;</li>\r\n<li>разнообразные аксессуары.</li>\r\n</ul>\r\n<p>Купить спортивную одежду в Украине можно на любом рынке. Но где гарантия того, что она будет действительной качественная, фирменная и не навредит вместо того, чтоб принести пользу? Именно поэтому мы предоставляем все необходимые сертификаты качества &ndash; наша одежда брендовая, как и спортивная обувь, интернет магазин полностью уверен в тех материалах, из которых она состоит. С каждым днём мы стараемся предоставить клиентам ещё больше новинок и интересных моделей, повысить уровень обслуживания. Покупайте спортивную одежду, аксессуары и спортивную обувь в нашем интернет магазине, ведь вас ежедневно ждут акционные предложения, скидки и просто сюрпризы, чтоб покупки стали для вас ещё более приятным занятием!</p>\r\n<h2>Приобретайте брендовую спортивную одежду</h2>\r\n<p>Почему вам остановить выбор именно на нашем интернет магазине спортивной одежды и обуви? одежды и обувиpac даёт клиентам возможность оплатить свою покупку несколькими способами. Во-первых, вы можете передать деньги курьеру или же оплатить покупку в отделении перевозчика, то есть осуществить оплату наложенным платежом. Такой способ наиболее безопасный, но он несёт определённые потери &ndash; необходимо оплатить обратную доставку денег. Второй способ купить спортивную одежду в Украине &ndash; электронный перевод. В таком случае менеджер одежды и обувиpac отправляет вам реквизиты для оплаты на электронную почту или на мобильный телефон, и счёт можно оплатить через Приват24. Обязательное условие при переводе &ndash; сообщение нам точной суммы и времени перечисления денег.</p>\r\n<p>Совершив покупку в нашем интернет магазине спортивной обуви, доставку товара можно ожидать в течение 14-28 дней, если он отсутствует на Украине. Если же товар в наличии &ndash; его можно получить через 1-3 дня. Получить спортивную одежду из нашего интернет магазина можно с помощью Новой Почты, либо же с курьером, если вы живёте в Днепропетровске.</p>\r\n<p>Какие же гарантии, что вас ждёт именно брендовая спортивная одежда? Прежде всего, наша репутация как интернет магазина спортивной одежды для молодёжи и наработанная годами клиентская база говорит сама за себя. Также вы получаете двухмесячную гарантию на сам товар, который можно вернуть или обменять в случае возникновения непредвиденных дефектов, таких как расклеивание или отрывы по швам.</p>\r\n<p>Также у нас есть электронные страницы и сообщества в социальных сетях, где вы можете оставить свои отзывы, пожелания, разместить претензии или выразить неудовлетворённость.</p>\r\n<p>Интернет-магазин одежды и обувиpac &ndash; это только лучшие предложения, которые имеют доступную цену и высокое качество. Загляните к нам, и в каталоге спортивной одежды вы точно найдёте что-то подходящее для вас!</p>'),
(3, 2, 'ru', 'Контакты', 'Контакты', 'Контакты', 'Контакты', 'Контакты', '<p><strong>Контактная информация компании Интернет-магазин "Airpac"</strong></p>\r\n<p><br />Название:&nbsp;&nbsp; &nbsp;Интернет-магазин одежды и обуви<br />Контактное лицо:&nbsp;&nbsp;&nbsp; Администратор<br />Адрес:&nbsp;&nbsp; &nbsp;Только online-магазин, Украина<br />Телефон:&nbsp;&nbsp; &nbsp;<br />+38(XXX)XXX-XX-XX<br />+38(XXX)XXX-XX-XX<br />Email:&nbsp;&nbsp;&nbsp; <a href="mailto:office@wezom.com.u">office@wezom.com.ua</a></p>'),
(4, 2, 'ua', 'Contact', 'Contact', 'Contact', 'Contact', 'Contact', '<p><strong>Контактная информация компании Интернет-магазин "Airpac"</strong></p>\r\n<p><br />Название:&nbsp;&nbsp; &nbsp;Интернет-магазин одежды и обуви<br />Контактное лицо:&nbsp;&nbsp;&nbsp; Администратор<br />Адрес:&nbsp;&nbsp; &nbsp;Только online-магазин, Украина<br />Телефон:&nbsp;&nbsp; &nbsp;<br />+38(XXX)XXX-XX-XX<br />+38(XXX)XXX-XX-XX<br />Email:&nbsp;&nbsp;&nbsp; <a href="mailto:office@wezom.com.u">office@wezom.com.ua</a></p>'),
(5, 3, 'ru', 'Статьи', 'Статьи', 'Статьи', 'Статьи', 'Статьи', NULL),
(6, 3, 'ua', 'Articles', 'Articles', 'Articles', 'Articles', 'Articles', NULL),
(7, 4, 'ru', 'Корзина', 'Корзина', 'Корзина', 'Корзина', 'Корзина', NULL),
(8, 4, 'ua', 'Cart', 'Cart', 'Cart', 'Cart', 'Cart', NULL),
(9, 5, 'ru', 'Новости', 'Новости', 'Новости', 'Новости', 'Новости', NULL),
(10, 5, 'ua', 'News', 'News', 'News', 'News', 'News', NULL),
(11, 6, 'ru', 'Поиск', 'Поиск', 'Поиск', 'Поиск', 'Поиск', NULL),
(12, 6, 'ua', 'Search', 'Search', 'Search', 'Search', 'Search', NULL),
(13, 7, 'ru', 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', 'Карта сайта', NULL),
(14, 7, 'ua', 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', 'Sitemap', NULL),
(15, 8, 'ru', 'Производители', 'Производители', 'Производители', 'Производители', 'Производители', NULL),
(16, 8, 'ua', 'Manufacturers', 'Manufacturers', 'Manufacturers', 'Manufacturers', 'Manufacturers', NULL),
(17, 9, 'ru', 'Каталог продукции', 'Каталог продукции', 'Каталог продукции', 'Каталог продукции', 'Каталог продукции', NULL),
(18, 9, 'ua', 'Catalog', 'Catalog', 'Catalog', 'Catalog', 'Catalog', NULL),
(19, 10, 'ru', 'Популярные', 'Популярные', 'Популярные', 'Популярные', 'Популярные', NULL),
(20, 10, 'ua', 'Popular', 'Popular', 'Popular', 'Popular', 'Popular', NULL),
(21, 11, 'ru', 'Новинки', 'Новинки', 'Новинки', 'Новинки', 'Новинки', NULL),
(22, 11, 'ua', 'New', 'New', 'New', 'New', 'New', NULL),
(23, 12, 'ru', 'Акции', 'Акции', 'Акции', 'Акции', 'Акции', ''),
(24, 12, 'ua', 'Sale', 'Sale', 'Sale', 'Sale', 'Sale', ''),
(25, 13, 'ru', 'Просмотренные', 'Просмотренные', 'Просмотренные', 'Просмотренные', 'Просмотренные', NULL),
(26, 13, 'ua', 'Viewed', 'Viewed', 'Viewed', 'Viewed', 'Viewed', NULL),
(27, 14, 'ru', 'Отзывы', 'Отзывы', 'Отзывы', 'Отзывы', 'Отзывы', NULL),
(28, 14, 'ua', 'Reviews', 'Reviews', 'Reviews', 'Reviews', 'Reviews', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `cron`
--

CREATE TABLE `cron` (
  `id` int(10) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(128) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `sort` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`id`, `created_at`, `updated_at`, `status`, `image`, `alias`, `sort`) VALUES
(5, 1447092527, 1497019982, 1, 'f35ba04c4c18ed371a206975ff16ce90.jpg', 'muzhskaja-obuv', NULL),
(6, 1447092625, 1497020163, 1, 'e85a9a463467065e7693edbca081158b.jpg', 'zhenskaja-obuv', NULL),
(7, 1498114763, 1498115128, 1, NULL, 'testovaja-fotogalereja', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_i18n`
--

CREATE TABLE `gallery_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `row_id` int(10) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_i18n`
--

INSERT INTO `gallery_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(1, 'тест', '<p>тест</p>', 'тест', 'тест', '', 'тест', 5, 'ru'),
(2, 'тест', '<p>тест</p>', 'тест', 'тест', '', 'тест', 5, 'en'),
(3, 'Женская обувь', '<p>тест</p>', 'тест', 'тест', 'тест', 'тест', 6, 'ru'),
(4, 'тест', '<p>тест</p>', 'тест', 'тест', '', 'тест', 6, 'en'),
(5, 'тестовая фотогалерея', '<p>Русский If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '1111', '2222', '4444', '3333', 7, 'ru'),
(6, 'test photogallery', '<p>If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '9999', '8888', '6666', '7777', 7, 'en');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `image` varchar(128) NOT NULL,
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `gallery_id` int(10) NOT NULL,
  `sort` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_images`
--

INSERT INTO `gallery_images` (`id`, `created_at`, `updated_at`, `image`, `main`, `gallery_id`, `sort`) VALUES
(23, 1447092584, 1458160549, '46ba420360f4d0730ad1ecf4e15dd68f.jpg', 0, 5, 1),
(24, 1447092584, 1458160549, '29e55409c6b13fcde501c502f2f51a07.jpg', 0, 5, 2),
(25, 1447092585, 1458160549, '5e854470fc6c466b41e9cea23e206e59.jpeg', 0, 5, 3),
(26, 1447092588, 1458160570, '9d57b47e499dd50f5d0807578538390f.jpg', 1, 5, 4),
(27, 1447092588, 1458160549, 'd0d2de40646c11689d81701ea49cc0f6.jpg', 0, 5, 6),
(28, 1447092589, 1458160549, '10925b5fe707498f26f448f5f9d51601.jpg', 0, 5, 7),
(29, 1447092672, 1461223401, 'b6aff3b3f2be1ee75c59aedbb6422579.jpg', 0, 6, 3),
(30, 1447092673, 1461223401, 'a7efa2943ae2420469b08becd0032e92.jpg', 0, 6, 1),
(31, 1447092675, 1461223401, 'a9d881476d8fb2b8400b568435ebcafd.jpg', 0, 6, 4),
(32, 1447092677, 1461223401, 'c5ca07d88ecc2a6519292d6ac2bbb5c5.jpg', 0, 6, 5),
(33, 1447092686, 1461223401, '0ed24eedef4b158126be3a171be4dcd9.jpg', 0, 6, 6),
(34, 1447092687, 1461223401, 'cc27d790bba59d1f63d6fb170cd4df89.jpg', 1, 6, 2),
(35, 1458160542, 1458160562, 'd998c755dc8384ba861cb31459eccc1d.jpg', 0, 5, 5),
(36, 1485243751, NULL, 'a42b2b590a90b8c9a8505b7bec406ba9.jpg', 0, 6, 7),
(37, 1492005452, NULL, '7c584b432d25360cea8d980ee1b11006.jpg', 0, 6, 8),
(38, 1498115099, NULL, '423d88c29d595090f50a95b503d97d90.jpg', 0, 7, 1),
(39, 1498115099, NULL, 'a8c21d44bee645c72391c39820bfaa73.jpg', 0, 7, 2),
(40, 1498115099, NULL, 'fc65f9924dcb1ca49b3b2dfcb973ba71.jpeg', 0, 7, 3),
(41, 1498115100, NULL, 'ee883ffec2739c7f5ac5bc7795a0b0a9.jpg', 0, 7, 4),
(42, 1498115100, NULL, 'f30b939cc5ec03f48f47b1a5c01310ef.jpg', 0, 7, 5),
(43, 1498115101, NULL, 'cc6a0517b336c7084209a24134558117.jpg', 0, 7, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `i18n`
--

CREATE TABLE `i18n` (
  `id` int(2) NOT NULL,
  `alias` varchar(3) NOT NULL,
  `name` varchar(32) NOT NULL,
  `short_name` varchar(16) NOT NULL,
  `locale` varchar(8) NOT NULL,
  `default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `i18n`
--

INSERT INTO `i18n` (`id`, `alias`, `name`, `short_name`, `locale`, `default`) VALUES
(1, 'ru', 'Русский', 'РУС', 'ru-ru', 1),
(2, 'ua', 'Українська', 'УКР', 'ua-ua', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `instructions`
--

CREATE TABLE `instructions` (
  `id` int(5) NOT NULL,
  `module` varchar(75) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `instructions`
--

INSERT INTO `instructions` (`id`, `module`, `link`) VALUES
(1, 'config', 'https://www.youtube.com/embed/ei0jwyvSwnI'),
(2, 'MailTemplates', 'https://www.youtube.com/embed/Ysiua0gHyK4'),
(3, 'log', 'https://www.youtube.com/embed/_BCCa7I8RS4'),
(4, 'callback', 'https://www.youtube.com/embed/KYVLmS8npXw'),
(5, 'blacklist', 'https://www.youtube.com/embed/8mRSL9kCfVU'),
(6, 'reviews', 'https://www.youtube.com/embed/dD_Xu8QokB8'),
(7, 'subscribe', 'https://www.youtube.com/embed/u97oKxJi-fs'),
(8, 'subscribers', 'https://www.youtube.com/embed/u97oKxJi-fs');

-- --------------------------------------------------------

--
-- Структура таблицы `log`
--

CREATE TABLE `log` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `log`
--

INSERT INTO `log` (`id`, `created_at`, `updated_at`, `name`, `link`, `ip`, `deleted`, `type`, `status`) VALUES
(1, 1447096883, NULL, 'Новый заказ', '/wezom/orders/edit/53', '127.0.0.1', 0, 8, 0),
(2, 1447096946, NULL, 'Заказ в один клик', '/wezom/simple/edit/20', '127.0.0.1', 0, 7, 0),
(3, 1447515976, NULL, 'Новый заказ', '/wezom/orders/edit/54', '109.86.230.160', 0, 8, 0),
(4, 1448259837, NULL, 'Заказ звонка', '/wezom/callback/edit/1', '178.136.229.251', 0, 3, 0),
(5, 1452758290, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/1', '178.136.229.251', 0, 2, 0),
(6, 1453192114, NULL, 'Отзыв к товару', '/wezom/comments/edit/1', '178.136.229.251', 0, 6, 0),
(7, 1453192176, NULL, 'Заказ в один клик', '/wezom/simple/edit/21', '178.136.229.251', 0, 7, 0),
(8, 1453192223, NULL, 'Новый заказ', '/wezom/orders/edit/55', '178.136.229.251', 0, 8, 0),
(9, 1453192288, NULL, 'Вопрос о товаре', '/wezom/questions/edit/1', '178.136.229.251', 0, 5, 0),
(10, 1453192341, NULL, 'Заказ звонка', '/wezom/callback/edit/2', '178.136.229.251', 0, 3, 0),
(11, 1453192417, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/2', '178.136.229.251', 0, 2, 0),
(12, 1453375172, NULL, 'Отзыв к товару', '/wezom/comments/edit/2', '178.136.229.251', 0, 6, 0),
(13, 1453375174, NULL, 'Заказ в один клик', '/wezom/simple/edit/22', '178.136.229.251', 0, 7, 0),
(14, 1453375179, NULL, 'Вопрос о товаре', '/wezom/questions/edit/2', '178.136.229.251', 0, 5, 0),
(15, 1453375179, NULL, 'Вопрос о товаре', '/wezom/questions/edit/3', '178.136.229.251', 0, 5, 0),
(16, 1453375180, NULL, 'Заказ звонка', '/wezom/callback/edit/4', '178.136.229.251', 0, 3, 0),
(17, 1453375180, NULL, 'Заказ звонка', '/wezom/callback/edit/3', '178.136.229.251', 0, 3, 0),
(18, 1453375181, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/3', '178.136.229.251', 0, 2, 0),
(19, 1453375419, NULL, 'Отзыв к товару', '/wezom/comments/edit/3', '178.136.229.251', 0, 6, 0),
(20, 1453375421, NULL, 'Заказ в один клик', '/wezom/simple/edit/23', '178.136.229.251', 0, 7, 0),
(21, 1453375426, NULL, 'Вопрос о товаре', '/wezom/questions/edit/4', '178.136.229.251', 0, 5, 0),
(22, 1453375428, NULL, 'Заказ звонка', '/wezom/callback/edit/5', '178.136.229.251', 0, 3, 0),
(23, 1453375429, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/4', '178.136.229.251', 0, 2, 0),
(24, 1453378494, NULL, 'Отзыв к товару', '/wezom/comments/edit/4', '178.136.229.251', 0, 6, 0),
(25, 1453378496, NULL, 'Заказ в один клик', '/wezom/simple/edit/24', '178.136.229.251', 0, 7, 0),
(26, 1453446803, NULL, 'Отзыв к товару', '/wezom/comments/edit/5', '178.136.229.251', 0, 6, 0),
(27, 1453446814, NULL, 'Заказ в один клик', '/wezom/simple/edit/25', '178.136.229.251', 0, 7, 0),
(28, 1453446848, NULL, 'Вопрос о товаре', '/wezom/questions/edit/5', '178.136.229.251', 0, 5, 0),
(29, 1455810028, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/5', '178.136.229.251', 0, 2, 0),
(30, 1455973056, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/6', '178.136.229.251', 0, 2, 0),
(31, 1455973493, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/7', '178.136.229.251', 0, 2, 0),
(32, 1455974746, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/8', '178.136.229.251', 0, 2, 0),
(33, 1455975369, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/9', '178.136.229.251', 0, 2, 0),
(34, 1455976611, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/10', '178.136.229.251', 0, 2, 0),
(35, 1456738529, NULL, 'Новый заказ', '/wezom/orders/edit/56', '178.136.229.251', 0, 8, 0),
(36, 1456738741, NULL, 'Новый заказ', '/wezom/orders/edit/57', '178.136.229.251', 0, 8, 0),
(37, 1460022269, NULL, 'Новый заказ', '/wezom/orders/edit/57', '85.105.102.56', 0, 8, 0),
(38, 1460975021, NULL, 'Заказ в один клик', '/wezom/simple/edit/26', '178.136.229.251', 0, 7, 0),
(39, 1460975331, NULL, 'Новый заказ', '/wezom/orders/edit/58', '178.136.229.251', 0, 8, 0),
(40, 1460975391, NULL, 'Новый заказ', '/wezom/orders/edit/59', '178.136.229.251', 0, 8, 0),
(41, 1460985084, NULL, 'Заказ звонка', '/wezom/callback/edit/6', '178.136.229.251', 0, 3, 0),
(42, 1460985324, NULL, 'Отзыв к товару', '/wezom/comments/edit/6', '178.136.229.251', 0, 6, 0),
(43, 1461525516, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/11', '213.227.252.130', 0, 2, 0),
(44, 1461526290, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/12', '213.227.252.130', 0, 2, 0),
(45, 1461527716, NULL, 'Подписчик', '/wezom/subscribers/edit/1', '213.227.252.130', 0, 4, 0),
(46, 1461527997, NULL, 'Заказ звонка', '/wezom/callback/edit/7', '213.227.252.130', 0, 3, 0),
(47, 1461879659, NULL, 'Отзыв к товару', '/wezom/comments/edit/7', '78.137.5.210', 0, 6, 0),
(48, 1461879708, NULL, 'Вопрос о товаре', '/wezom/questions/edit/6', '78.137.5.210', 0, 5, 0),
(49, 1462879614, NULL, 'Отзыв к товару', '/wezom/comments/edit/8', '178.136.229.251', 0, 6, 0),
(50, 1485440439, NULL, 'Отзыв', '/wezom/reviews/edit/2', '127.0.0.1', 0, 5, 0),
(51, 1485440507, NULL, 'Отзыв', '/wezom/reviews/edit/3', '127.0.0.1', 0, 5, 0),
(52, 1493295046, NULL, 'Заказ звонка', '/wezom/callback/edit/8', '127.0.0.1', 0, 3, 0),
(53, 1493298079, NULL, 'Заказ звонка', '/wezom/callback/edit/9', '127.0.0.1', 0, 3, 0),
(54, 1497014129, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/13', '127.0.0.1', 0, 2, 0),
(55, 1498038494, NULL, 'Отзыв', '/wezom/reviews/edit/3', '93.79.199.220', 0, 5, 0),
(56, 1498051715, NULL, 'Подписчик', '/wezom/subscribers/edit/2', '93.79.199.220', 0, 4, 0),
(57, 1498052061, NULL, 'Отзыв', '/wezom/reviews/edit/4', '93.79.199.220', 0, 5, 0),
(58, 1498116656, NULL, 'Заказ звонка', '/wezom/callback/edit/10', '178.136.229.251', 0, 3, 0),
(59, 1498119545, NULL, 'Новый заказ', '/wezom/orders/edit/58', '178.136.229.251', 0, 8, 0),
(60, 1498206623, NULL, 'Отзыв', '/wezom/reviews/edit/5', '178.136.229.252', 0, 5, 0),
(61, 1498318581, NULL, 'Вопрос о товаре', '/wezom/questions/edit/7', '127.0.0.1', 0, 5, 0),
(62, 1498318801, NULL, 'Отзыв к товару', '/wezom/comments/edit/10', '127.0.0.1', 0, 6, 0),
(63, 1498319141, NULL, 'Отзыв', '/wezom/reviews/edit/6', '127.0.0.1', 0, 5, 0),
(64, 1498458746, NULL, 'Вопрос о товаре', '/wezom/questions/edit/8', '178.136.229.251', 0, 5, 0),
(65, 1498459013, NULL, 'Отзыв к товару', '/wezom/comments/edit/11', '178.136.229.251', 0, 6, 0),
(66, 1498463679, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/14', '178.136.229.251', 0, 2, 0),
(67, 1498467286, NULL, 'Заказ звонка', '/wezom/callback/edit/11', '178.136.229.251', 0, 3, 0),
(68, 1498471656, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/15', '127.0.0.1', 0, 2, 0),
(69, 1498471796, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/16', '178.136.229.252', 0, 2, 0),
(70, 1498473493, NULL, 'Сообщение из контактной формы', '/wezom/contacts/edit/17', '178.136.229.251', 0, 2, 0),
(71, 1498474549, NULL, 'Новый заказ', '/wezom/orders/edit/59', '178.136.229.251', 0, 8, 0),
(72, 1498475024, NULL, 'Новый заказ', '/wezom/orders/edit/60', '178.136.229.251', 0, 8, 0),
(73, 1498477233, NULL, 'Отзыв', '/wezom/reviews/edit/7', '178.136.229.251', 0, 5, 0),
(74, 1498494002, NULL, 'Регистрация пользователя, требующая подтверждения', '/wezom/users/edit/37', '127.0.0.1', 0, 1, 0),
(75, 1498495336, NULL, 'Новый заказ', '/wezom/orders/edit/61', '127.0.0.1', 0, 8, 0),
(76, 1498496207, NULL, 'Отзыв', '/wezom/reviews/edit/8', '127.0.0.1', 0, 5, 0),
(77, 1498496300, NULL, 'Отзыв', '/wezom/reviews/edit/9', '127.0.0.1', 0, 5, 0),
(78, 1498541086, NULL, 'Регистрация пользователя, требующая подтверждения', '/wezom/users/edit/38', '178.136.229.251', 0, 1, 0),
(79, 1498541789, NULL, 'Отзыв', '/wezom/reviews/edit/10', '178.136.229.251', 0, 5, 0),
(80, 1498542985, NULL, 'Новый заказ', '/wezom/orders/edit/62', '178.136.229.251', 0, 8, 0),
(81, 1498667155, NULL, 'Регистрация пользователя, требующая подтверждения', '/wezom/users/edit/39', '77.239.190.14', 0, 1, 0),
(82, 1498667720, NULL, 'Регистрация пользователя, требующая подтверждения', '/wezom/users/edit/40', '127.0.0.1', 0, 1, 0),
(83, 1498667921, NULL, 'Новый заказ', '/wezom/orders/edit/63', '77.239.190.14', 0, 8, 0),
(84, 1498667994, NULL, 'Новый заказ', '/wezom/orders/edit/64', '77.239.190.14', 0, 8, 0),
(85, 1498668139, NULL, 'Новый заказ', '/wezom/orders/edit/65', '127.0.0.1', 0, 8, 0),
(86, 1499080247, NULL, 'Регистрация пользователя, требующая подтверждения', '/wezom/users/edit/41', '178.136.229.251', 0, 1, 0),
(87, 1499080568, NULL, 'Новый заказ', '/wezom/orders/edit/66', '178.136.229.251', 0, 8, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `mail_templates`
--

CREATE TABLE `mail_templates` (
  `id` int(10) NOT NULL,
  `name` varchar(64) NOT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mail_templates`
--

INSERT INTO `mail_templates` (`id`, `name`, `updated_at`, `status`, `sort`) VALUES
(1, 'Контактная форма ( Администратору )', 1498541041, 1, 0),
(4, 'Подтверждение регистрации ( Пользователю )', 1498464293, 1, 1),
(5, 'Восстановление пароля ( Пользователю )', 1450254144, 1, 3),
(6, 'Изменение пароля ( Пользователю )', 1450254142, 1, 2),
(7, 'Новый отзыв ( Администратору )', 1450254146, 1, 13),
(8, 'Новый заказ сертификата ( Администратору )', 1450254234, 1, 6),
(9, 'Заказ сертификата - через админ панель ( Пользователю )', 1450254146, 1, 7),
(11, 'Новый заказ ( Администратору )', 1450254146, 1, 19),
(12, 'Новый заказ - Наложенный платеж ( Пользователю )', 1450254146, 1, 20),
(13, 'Письмо после регистрации (Пользователю)', 1450254145, 1, 4),
(15, 'Заказ изменен (Заказчику)', 1450254146, 1, 10),
(20, 'Смена статуса заказа на "Отменен"', 1450254146, 1, 11),
(21, 'Смена статуса заказа на "Выполнен"', 1450254146, 1, 12),
(26, 'Отправка нового пароля пользователю через админ-панель', 1450254145, 1, 5),
(27, 'Сообщить, когда товар появится в наличии', 1450254146, 1, 14),
(28, 'Быстрый заказ', 1450254146, 1, 15),
(29, 'Под заказ (Пользователю)', 1450254146, 1, 16),
(30, 'Под заказ (Администратору)', 1450254146, 1, 17),
(31, 'Персональный купон', 1450254146, 1, 18),
(32, 'Новый заказ - PrivatBank (Пользователю)', NULL, 1, 21),
(34, 'Новый заказ - Western Union (Пользователю)', 1452521966, 1, 23),
(35, 'Новый заказ - PayPal (Пользователю)', NULL, 1, 24);

-- --------------------------------------------------------

--
-- Структура таблицы `mail_templates_i18n`
--

CREATE TABLE `mail_templates_i18n` (
  `id` int(10) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mail_templates_i18n`
--

INSERT INTO `mail_templates_i18n` (`id`, `subject`, `text`, `row_id`, `language`) VALUES
(1, 'Новое сообщение из контактной формы - сайт {{site}}', '<p>Вам пришло новое письмо из контактной формы с сайта {{site}}!</p>\r\n<p>Имя отправителя: {{name}} ( {{ip}} ).</p>\r\n<p>E-Mail отправителя: {{email}}.</p>\r\n<p>IP отправителя: {{ip}}.</p>\r\n<p>Дата сообщения: {{date}}.</p>\r\n<p>Текст сообщения: {{text}}.</p>\r\n<p>&nbsp;</p>\r\n<p>Письмо сгенерировано автоматически. Пожалуйста не отвечайте на него!</p>\r\n<p>______________________</p>\r\n<div class="rowSection">\r\n<div class="col-md-6">Доменное имя сайта</div>\r\n<div class="col-md-6">{{site}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">IP</div>\r\n<div class="col-md-6">{{ip}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Текущая дата в формате dd.mm.YYYY</div>\r\n<div class="col-md-6">{{date}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Имя</div>\r\n<div class="col-md-6">{{name}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">E-Mail</div>\r\n<div class="col-md-6">{{email}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Текст сообщения</div>\r\n<div class="col-md-6">{{text}}</div>\r\n</div>', 1, 'ru'),
(4, 'Пожалуйста, подтвердите свой почтовый адрес, сайт {{site}}', '<p>Для подтверждения регистрации на сайте {{site}}, перейдите по ссылке:</p>\r\n<p>{{link}}</p>\r\n<p>___________________</p>\r\n<div class="rowSection">\r\n<div class="col-md-6">Доменное имя сайта</div>\r\n<div class="col-md-6">{{site}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">IP</div>\r\n<div class="col-md-6">{{ip}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Текущая дата в формате dd.mm.YYYY</div>\r\n<div class="col-md-6">{{date}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Ссылка для подтверждения</div>\r\n<div class="col-md-6">{{link}}</div>\r\n</div>', 4, 'ru'),
(5, 'Восстановление пароля', '<p>Уважаемый, пользователь. Вы воспользовались услугой восстановления пароля на сайте {{site}}.</p>\r\n<p>Ваш новый пароль для входа теперь:</p>\r\n<p>{{password}}</p>', 5, 'ru'),
(6, 'Изменение пароля - {{site}}', '<p>Ув., пользователь! Вы только что изменили пароль на сайте {{site}} на {{password}}!</p>', 6, 'ru'),
(7, 'Новый отзыв', '<p>Оставлен новый отзыв на сайте {{site}}!</p>\r\n<p>Информация об отзыве: </p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Город:</td>\r\n<td>{{city}}</td>\r\n</tr>\r\n<tr>\r\n<td>E-Mail:</td>\r\n<td>\r\n<p>{{email}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Оценка:</td>\r\n<td>\r\n<p>{{mark}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Отзыв:</td>\r\n<td>{{text}}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 7, 'ru'),
(8, 'Заказ сертификата', '<p>Только что был совершен быстрый заказ на сайте {{site}}!</p>\r\n<p>Товар: <a href="{{link}}">{{item_name}}</a></p>\r\n<p>Заказчик:{{name}}</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 8, 'ru'),
(9, 'Заказ сертификата', '<p>Заказ сертификата</p>', 9, 'ru'),
(11, 'Новый заказ', '<p>Только что был совершен заказ на сайте {{site}}!</p>\r\n<p>Информация о заказчике и способе доставки:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ оплаты</td>\r\n<td>{{payment}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ доставки</td>\r\n<td>{{delivery}}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Информация о заказе:</p>\r\n<p>{{items}}</p>\r\n<p>Для уточнения деталей перейдите по ссылке {{link_admin}}</p>\r\n<p>&nbsp;</p>', 11, 'ru'),
(12, 'Новый заказ', '<p>Вы только что оформили&nbsp; заказ на сайте {{site}}!</p>\r\n<p>Информация о заказчике и способе доставки:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ оплаты</td>\r\n<td>{{payment}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ доставки</td>\r\n<td>{{delivery}}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Информация о заказе:</p>\r\n<p>{{items}}</p>\r\n<p>Для уточнения деталей перейдите по ссылке {{link_user}}</p>\r\n<p>&nbsp;</p>', 12, 'ru'),
(13, 'Регистрация', '<p>Спасибо за регистрацию!</p>\r\n<p>Ваши данные для входа:</p>\r\n<p>Логин - {{email}}</p>\r\n<p>Пароль - {{password}}</p>', 13, 'ru'),
(15, 'Ваш заказ {{id}} был откорректирован!', '<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">{{name}}, нам очень жаль.</span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Мы вынуждены были изменить состав <span class="il">ваш</span>его <span class="il">заказ</span>а № {{id}}<br /></span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Вот как выглядит <span class="il">ваш</span> <span class="il">заказ</span> № {{id}} сейчас:</span></p>\r\n<p>{{items}}</p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Текущая стоимость <span class="il">ваш</span>его <span class="il">заказ</span>а <strong>{{amount}} грн</strong></span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;"><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Еще раз извините.</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="text-align: left; font-size: 9px; color: #999999; font-family: Arial;">Сообщение создано автоматически. Пожалуйста не отвечайте на него.</span></p>\r\n<p><span style="text-align: right; font-size: 9px; color: #333333; font-family: Arial;"><span style="color: #999999;">Служба поддержки клиентов {{site}}<br /></span></span></p>\r\n<p>&nbsp;</p>', 15, 'ru'),
(20, 'Ваш заказ отменен!', '<p>Здравствуйте, {{name}}!</p>\r\n<p>Ваш заказ №{{id}} отменен!</p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #808080;">Спасибо, что Вы есть у нас!</span></p>\r\n<p><span style="color: #808080;">Письмо отправлено автоматически, пожалуйста не отвечайте на него!</span></p>', 20, 'ru'),
(21, 'Ваш заказ выполнен!', '<p>Здравствуйте, {{name}}!</p>\r\n<p>Ваш заказ №{{id}} на сумму {{amount}} успешно выполнен!</p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #808080;">Спасибо, что Вы есть у нас!</span></p>\r\n<p><span style="color: #808080;">Письмо отправлено автоматически, пожалуйста не отвечайте на него!</span></p>', 21, 'ru'),
(26, 'Изменение пароля - {{site}}', '<p>Ув., пользователь!</p>\r\n<p>Ваш пароль на сайте {{site}} был изменен администрацией на {{password}}!</p>', 26, 'ru'),
(27, 'Новое сообщение из контактной формы - сайт {{site}}', '<p>You have received a new email from the contact form from the {{site}} website!</p>\r\n<p>Sender\'s name: {{name}} ({{ip}}).</p>\r\n<p>Sender\'s E-Mail: {{email}}.</p>\r\n<p>Sender IP: {{ip}}.</p>\r\n<p>Date of the message: {{date}}.</p>\r\n<p>Message text: {{text}}.</p>\r\n<p>&nbsp;</p>\r\n<p>The message was generated automatically. Please do not answer it!</p>', 1, 'ua'),
(28, 'Пожалуйста, подтвердите свой почтовый адрес, сайт {{site}}', '<p>Для подтверждения регистрации на сайте {{site}}, перейдите по ссылке:</p>\r\n<p>{{link}}</p>\r\n<p>___________________</p>\r\n<div class="rowSection">\r\n<div class="col-md-6">Доменное имя сайта</div>\r\n<div class="col-md-6">{{site}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">IP</div>\r\n<div class="col-md-6">{{ip}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Текущая дата в формате dd.mm.YYYY</div>\r\n<div class="col-md-6">{{date}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Ссылка для подтверждения</div>\r\n<div class="col-md-6">{{link}}</div>\r\n</div>', 4, 'ua'),
(29, 'Восстановление пароля', '<p>Уважаемый, пользователь. Вы воспользовались услугой восстановления пароля на сайте {{site}}.</p>\r\n<p>Ваш новый пароль для входа теперь:</p>\r\n<p>{{password}}</p>', 5, 'ua'),
(30, 'Изменение пароля - {{site}}', '<p>Ув., пользователь! Вы только что изменили пароль на сайте {{site}} на {{password}}!</p>', 6, 'ua'),
(31, 'Новый отзыв', '<p>Оставлен новый отзыв на сайте {{site}}!</p>\r\n<p>Информация об отзыве: </p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Город:</td>\r\n<td>{{city}}</td>\r\n</tr>\r\n<tr>\r\n<td>E-Mail:</td>\r\n<td>\r\n<p>{{email}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Оценка:</td>\r\n<td>\r\n<p>{{mark}}</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>Отзыв:</td>\r\n<td>{{text}}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 7, 'ua'),
(32, 'Заказ сертификата', '<p>Только что был совершен быстрый заказ на сайте {{site}}!</p>\r\n<p>Товар: <a href="{{link}}">{{item_name}}</a></p>\r\n<p>Заказчик:{{name}}</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n</tbody>\r\n</table>', 8, 'ua'),
(33, 'Заказ сертификата', '<p>Заказ сертификата</p>', 9, 'ua'),
(34, 'Новый заказ', '<p>Только что был совершен заказ на сайте {{site}}!</p>\r\n<p>Информация о заказчике и способе доставки:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ оплаты</td>\r\n<td>{{payment}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ доставки</td>\r\n<td>{{delivery}}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Информация о заказе:</p>\r\n<p>{{items}}</p>\r\n<p>Для уточнения деталей перейдите по ссылке {{link_admin}}</p>\r\n<p>&nbsp;</p>', 11, 'ua'),
(35, 'Новый заказ', '<p>Вы только что оформили&nbsp; заказ на сайте {{site}}!</p>\r\n<p>Информация о заказчике и способе доставки:</p>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>IP:</td>\r\n<td>{{ip}}</td>\r\n</tr>\r\n<tr>\r\n<td>Имя:</td>\r\n<td>{{name}}</td>\r\n</tr>\r\n<tr>\r\n<td>Номер телефона:</td>\r\n<td>{{phone}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ оплаты</td>\r\n<td>{{payment}}</td>\r\n</tr>\r\n<tr>\r\n<td>Способ доставки</td>\r\n<td>{{delivery}}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Информация о заказе:</p>\r\n<p>{{items}}</p>\r\n<p>Для уточнения деталей перейдите по ссылке {{link_user}}</p>\r\n<p>&nbsp;</p>', 12, 'ua'),
(36, 'Регистрация', '<p>Спасибо за регистрацию!</p>\r\n<p>Ваши данные для входа:</p>\r\n<p>Логин - {{email}}</p>\r\n<p>Пароль - {{password}}</p>', 13, 'ua'),
(37, 'Ваш заказ {{id}} был откорректирован!', '<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">{{name}}, нам очень жаль.</span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Мы вынуждены были изменить состав <span class="il">ваш</span>его <span class="il">заказ</span>а № {{id}}<br /></span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Вот как выглядит <span class="il">ваш</span> <span class="il">заказ</span> № {{id}} сейчас:</span></p>\r\n<p>{{items}}</p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Текущая стоимость <span class="il">ваш</span>его <span class="il">заказ</span>а <strong>{{amount}} грн</strong></span></p>\r\n<p><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;"><span style="text-align: left; font-size: 14px; color: #333333; font-family: Arial;">Еще раз извините.</span></span></p>\r\n<p>&nbsp;</p>\r\n<p><span style="text-align: left; font-size: 9px; color: #999999; font-family: Arial;">Сообщение создано автоматически. Пожалуйста не отвечайте на него.</span></p>\r\n<p><span style="text-align: right; font-size: 9px; color: #333333; font-family: Arial;"><span style="color: #999999;">Служба поддержки клиентов {{site}}<br /></span></span></p>\r\n<p>&nbsp;</p>', 15, 'ua'),
(38, 'Ваш заказ отменен!', '<p>Здравствуйте, {{name}}!</p>\r\n<p>Ваш заказ №{{id}} отменен!</p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #808080;">Спасибо, что Вы есть у нас!</span></p>\r\n<p><span style="color: #808080;">Письмо отправлено автоматически, пожалуйста не отвечайте на него!</span></p>', 20, 'ua'),
(39, 'Ваш заказ выполнен!', '<p>Здравствуйте, {{name}}!</p>\r\n<p>Ваш заказ №{{id}} на сумму {{amount}} успешно выполнен!</p>\r\n<p>&nbsp;</p>\r\n<p><span style="color: #808080;">Спасибо, что Вы есть у нас!</span></p>\r\n<p><span style="color: #808080;">Письмо отправлено автоматически, пожалуйста не отвечайте на него!</span></p>', 21, 'ua'),
(40, 'Изменение пароля - {{site}}', '<p>Ув., пользователь!</p>\r\n<p>Ваш пароль на сайте {{site}} был изменен администрацией на {{password}}!</p>', 26, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(10) NOT NULL,
  `id_parent` int(11) DEFAULT '0',
  `name` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `link` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `id_content` int(11) DEFAULT '0',
  `created_at` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '1',
  `image` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `count` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `id_parent`, `name`, `link`, `sort`, `id_content`, `created_at`, `status`, `image`, `updated_at`, `icon`, `count`) VALUES
(1, 0, 'Панель управления', 'index/index', 0, 0, NULL, 1, NULL, NULL, 'fa-dashboard', NULL),
(2, 0, 'SEO', NULL, 16, 0, NULL, 1, '', NULL, 'fa-tags', NULL),
(3, 0, 'Пользователи', 'users/index', 10, 0, NULL, 1, NULL, NULL, 'fa-users', NULL),
(4, 0, 'Настройки сайта', 'config/edit', 15, 0, NULL, 1, NULL, NULL, 'fa-cogs', NULL),
(5, 0, 'Контент', NULL, 1, 0, NULL, 1, NULL, NULL, 'fa-folder-open-o', NULL),
(6, 5, 'Список текстовых страниц', 'content/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(7, 5, 'Добавить текстовую страницу', 'content/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(8, 2, 'Метрика и счетчики', 'seo_scripts/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(10, 2, 'Добавить метрику или счетчик', 'seo_scripts/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(12, 2, 'Теги для конкретных ссылок', 'seo_links/index', 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(13, 2, 'Добавить теги для ссылки', 'seo_links/add', 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(14, 0, 'Шаблоны писем', 'mailTemplates/index', 14, 0, NULL, 1, NULL, NULL, 'fa-file-image-o', NULL),
(15, 0, 'Меню', 'menu/index', 4, 0, NULL, 1, NULL, NULL, 'fa-list-ul', NULL),
(19, 5, 'Список новостей', 'news/index', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(20, 5, 'Добавить новость', 'news/add', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(25, 64, 'Список слайдов', 'slider/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(26, 64, 'Добавить слайд', 'slider/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(28, 64, 'Список банеров', 'banners/index', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(29, 64, 'Добавить банер', 'banners/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(30, 0, 'Рассылка', NULL, 11, 0, NULL, 1, NULL, NULL, 'fa-rss', NULL),
(31, 30, 'Список подписчиков', 'subscribers/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(32, 30, 'Добавить подписчика', 'subscribers/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(33, 30, 'Список разосланных писем', 'subscribe/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(34, 30, 'Разослать письмо', 'subscribe/send', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(35, 0, 'Обратная связь', NULL, 12, 0, NULL, 1, NULL, NULL, 'fa-envelope-o', 'all_emails'),
(36, 35, 'Сообщения из контактной формы', 'contacts/index', 1, 0, NULL, 1, NULL, NULL, NULL, 'contacts'),
(37, 35, 'Заказы звонка', 'callback/index', 2, 0, NULL, 1, NULL, NULL, NULL, 'callbacks'),
(38, 0, 'Каталог', NULL, 7, 0, NULL, 1, NULL, NULL, 'fa-inbox', NULL),
(39, 38, 'Группы товаров', 'groups/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(40, 38, 'Добавить группу товаров', 'groups/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(41, 38, 'Товары', 'items/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(42, 38, 'Добавить товар', 'items/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(43, 38, 'Производители', 'brands/index', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(44, 38, 'Добавить производителя', 'brands/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(45, 38, 'Модели', 'models/index', 7, 0, NULL, 1, NULL, NULL, NULL, NULL),
(46, 38, 'Добавить модель', 'models/add', 8, 0, NULL, 1, NULL, NULL, NULL, NULL),
(47, 38, 'Характеристики', 'specifications/index', 11, 0, NULL, 1, NULL, NULL, NULL, NULL),
(48, 38, 'Добавить характеристику', 'specifications/add', 12, 0, NULL, 1, NULL, NULL, NULL, NULL),
(49, 38, 'Вопросы к товарам', 'questions/index', -1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(50, 0, 'Заказы', NULL, 9, 0, NULL, 1, NULL, NULL, 'fa-shopping-cart', 'all_orders'),
(51, 50, 'Обычные', 'orders/index', 1, 0, NULL, 1, NULL, NULL, NULL, 'orders'),
(52, 50, 'В один клик', 'simple/index', 2, 0, NULL, 1, NULL, NULL, NULL, 'simple_orders'),
(53, 38, 'Отзывы к товарам', 'comments/index', -1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(54, 0, 'Лента событий', 'log/index', 13, 0, NULL, 1, NULL, NULL, 'fa-tasks', NULL),
(57, 2, 'Шаблоны', 'seo_templates/index', -2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(59, 5, 'Системные страницы', 'control/index', 0, 0, NULL, 1, NULL, NULL, NULL, NULL),
(62, 64, 'Список альбомов', 'gallery/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(63, 64, 'Добавить альбом', 'gallery/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(64, 0, 'Мультимедиа', NULL, 6, 0, NULL, 1, NULL, NULL, 'fa-picture-o', NULL),
(65, 3, 'Список пользователей', 'users/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(66, 3, 'Список администраторов', 'admins/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(67, 3, 'Добавить администратора', 'admins/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(68, 3, 'Список ролей', 'roles/index', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(69, 3, 'Добавить роль', 'roles/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(70, 3, 'Добавить пользователя', 'users/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(71, 2, 'Перенаправления', 'seo_redirects/index', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(72, 2, 'Добавить перенаправление', 'seo_redirects/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(108, 0, 'Статистика', '', 999, 0, NULL, 1, '', NULL, 'fa-signal', NULL),
(109, 108, 'Посетители сайта', 'visitors/index', 1, 0, NULL, 1, '', NULL, '', NULL),
(110, 108, 'Переходы по сайту', 'hits/index', 2, 0, NULL, 1, '', NULL, '', NULL),
(111, 108, 'Рефереры', 'referers/index', 3, 0, NULL, 1, '', NULL, '', NULL),
(112, 108, 'Статистика по пользователям', 'statistic/users', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(113, 108, 'Статистика по товарам', 'statistic/items', 5, 0, NULL, 1, NULL, NULL, NULL, NULL),
(114, 0, 'Блог', NULL, 1, 0, NULL, 1, NULL, NULL, 'fa-bullhorn', 'all_blog'),
(115, 114, 'Записи в блоге', 'blog/index', 1, 0, NULL, 1, NULL, NULL, NULL, 'blog'),
(116, 114, 'Добавить запись в блог', 'blog/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(117, 114, 'Рубрики', 'blogRubrics/index', 3, 0, NULL, 1, NULL, NULL, NULL, NULL),
(118, 114, 'Добавить рубрику', 'blogRubrics/add', 4, 0, NULL, 1, NULL, NULL, NULL, NULL),
(119, 114, 'Комментарии', 'blogComments/index', 5, 0, NULL, 1, NULL, NULL, NULL, 'blog_comments'),
(120, 114, 'Добавить комментарий', 'blogComments/add', 6, 0, NULL, 1, NULL, NULL, NULL, NULL),
(121, 0, 'Черный список', NULL, 10, 0, NULL, 1, NULL, NULL, 'fa-file', NULL),
(122, 121, 'Заблокированные адреса', 'blacklist/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(123, 121, 'Заблокировать адрес', 'blacklist/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(124, 0, 'Отзывы', NULL, 10, 0, NULL, 1, NULL, NULL, 'fa-weixin', 'reviews'),
(125, 124, 'Список отзывов', 'reviews/index', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(126, 124, 'Добавить отзыв', 'reviews/add', 2, 0, NULL, 1, NULL, NULL, NULL, NULL),
(127, 0, 'Переводы', 'btranslates', 15, 0, NULL, 1, NULL, NULL, 'fa-language', NULL),
(128, 2, 'Файлы', 'seo_files/index', 8, 0, NULL, 1, NULL, NULL, NULL, NULL),
(129, 2, 'Добавить файл', 'seo_files/add', 9, 0, NULL, 1, NULL, NULL, NULL, NULL),
(130, 2, 'Карта сайта', 'sitemap/index', 10, 0, NULL, 1, NULL, NULL, NULL, NULL),
(131, 127, 'Сайт', 'translates', 1, 0, NULL, 1, NULL, NULL, NULL, NULL),
(132, 127, 'Админка', 'btranslates', 2, 0, NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `alias` varchar(255) DEFAULT NULL,
  `brand_alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`id`, `created_at`, `updated_at`, `status`, `alias`, `brand_alias`) VALUES
(90, 1447092911, 1497789440, 1, '1300', NULL),
(91, 1447092920, NULL, 1, '1400', NULL),
(92, 1447092926, NULL, 1, '1500', NULL),
(93, 1447092933, NULL, 1, '1600', NULL),
(94, 1447092957, 1491372178, 1, 'airfoamposite', NULL),
(95, 1447092969, NULL, 1, 'airforce', NULL),
(96, 1447092981, NULL, 1, 'airhuarache', NULL),
(97, 1447092991, NULL, 1, 'airjordan', NULL),
(98, 1462882106, 1462882111, 1, 'pumacreepers', NULL),
(99, 1464615947, 1483518838, 1, 'odejalo', NULL),
(100, 1498125265, 1498125312, 1, 'model1', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `models_i18n`
--

CREATE TABLE `models_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `models_i18n`
--

INSERT INTO `models_i18n` (`id`, `row_id`, `language`, `name`) VALUES
(1, 90, 'ru', '1300'),
(2, 90, 'ua', '1300en'),
(3, 91, 'ru', '1400'),
(4, 91, 'ua', '1400'),
(5, 92, 'ru', '1500'),
(6, 92, 'ua', '1500'),
(7, 93, 'ru', '1600'),
(8, 93, 'ua', '1600'),
(9, 94, 'ru', 'Air Foamposite'),
(10, 94, 'ua', 'Air Foamposite'),
(11, 95, 'ru', 'Air Force'),
(12, 95, 'ua', 'Air Force'),
(13, 96, 'ru', 'Air Huarache'),
(14, 96, 'ua', 'Air Huarache'),
(15, 97, 'ru', 'Air Jordan'),
(16, 97, 'ua', 'Air Jordan'),
(17, 98, 'ru', 'Puma Creepers'),
(18, 98, 'ua', 'Puma Creepers'),
(19, 99, 'ru', 'одеяло'),
(20, 99, 'ua', 'одеяло'),
(21, 100, 'ru', 'модель 1'),
(22, 100, 'ua', 'model 1');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `alias` varchar(255) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `show_image` tinyint(1) NOT NULL DEFAULT '1',
  `views` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `created_at`, `updated_at`, `status`, `alias`, `date`, `image`, `show_image`, `views`) VALUES
(26, 1498054140, 1499863898, 1, 'testovaja-novost', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3),
(27, 1498054140, 1499863898, 1, 'testovaja-novost-2', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3),
(28, 1498054140, 1499863898, 1, 'testovaja-novost-3', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3),
(29, 1498054140, 1499863898, 1, 'testovaja-novost-4', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3),
(30, 1498054140, 1499863898, 1, 'testovaja-novost-5', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3),
(31, 1498054140, 1499863898, 1, 'testovaja-novost-6', 1498078800, 'b6d19c780916c677ff9ec27154f5e50e.jpg', 1, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `news_i18n`
--

CREATE TABLE `news_i18n` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `row_id` int(11) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news_i18n`
--

INSERT INTO `news_i18n` (`id`, `name`, `text`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(28, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 26, 'ru'),
(29, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="pic/content-image-2.jpg" alt="" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 26, 'ua'),
(30, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 27, 'ru'),
(31, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 27, 'ua'),
(32, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 28, 'ru'),
(33, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 28, 'ua'),
(34, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 29, 'ru'),
(35, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 29, 'ua'),
(36, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 30, 'ru'),
(37, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 30, 'ua'),
(38, 'тестовая новость', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 31, 'ru'),
(39, 'тестова новина', '<blockquote>Шведская компания Volvo Trucks официально презентовала обновлённую версию концептуального грузовика Volvo Concept Truck, впервые представленного весной прошлого года. Машина получила новые аэродинамические &laquo;одежды&raquo;, благодаря которым удалось значительно снизить потребление топлива, а также новую гибридную силовую установку.</blockquote>\r\n<p>Обновлённый грузовик Volvo Concept Truck получил гибридную установку, работающую за счёт рекуперации энергии при движении под уклон более одного процента или при торможении. В компании отмечают, что накопленная в аккумуляторах энергия в дальнейшем используется для тяги на ровных дорогах или же на пологих подъёмах. Плюс ко всему, машина получила систему Volvo I-See, которая на основе топографических данных рассчитывает максимально экономичный режим движения и активацию компонентов силовой установки. Благодаря системе Volvo I-See у обновлённого грузовика отмечается оптимальная работа дизельного ДВС и электрического мотора.</p>\r\n<p><img class="content-image content-image--width-100-and-more content-image--width-200-and-more content-image--width-300-and-more content-image--width-400-and-more content-image--width-500-and-more content-image--width-600-and-more" src="http://tirmarket.loc/Media/files/filemanager/banner-1.jpg" alt="" width="1366" height="321" /></p>\r\n<p>Отметим, что на текущий момент гибридные тягачи компании Volvo Trucks серийно не выпускаются. Однако производитель постоянно испытывает такой вид транспорта, а значит, в ближайшее время может начать производство машин с гибридным приводом.</p>', '', '', '', '', 31, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `payment` int(2) DEFAULT NULL,
  `delivery` int(2) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `user_id` int(10) DEFAULT '0',
  `ip` varchar(16) DEFAULT NULL,
  `last_name` varchar(64) DEFAULT NULL,
  `middle_name` varchar(64) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `done` int(10) DEFAULT NULL COMMENT 'Дата когда заказ был выполнен',
  `changed` tinyint(1) DEFAULT '0',
  `user_lang` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `status`, `payment`, `delivery`, `name`, `phone`, `user_id`, `ip`, `last_name`, `middle_name`, `email`, `done`, `changed`, `user_lang`) VALUES
(53, 1447096883, 1448547910, 0, 1, 1, 'Томпсон Валера', '+38 (234) 234-23-42', 21, '127.0.0.1', NULL, NULL, NULL, NULL, 0, NULL),
(54, 1447515976, 1452862399, 3, 2, 1, 'ыфвомлфи', '+38 (211) 341-31-12', 23, '109.86.230.160', NULL, NULL, NULL, NULL, 0, NULL),
(55, 1453192223, NULL, 0, 1, 1, 'Test name', '+38 (555) 555-55-55', 29, '178.136.229.251', NULL, NULL, NULL, NULL, 0, NULL),
(56, 1456738529, 1458764177, 0, 1, 1, 'Test Wezom', '+38 (095) 740-69-57', 29, '178.136.229.251', NULL, NULL, NULL, NULL, 0, NULL),
(57, 1460022269, 1465463782, 0, 2, 1, 'sadsad', '+38 (123) 213-21-32', 29, '85.105.102.56', NULL, NULL, NULL, NULL, 0, NULL),
(58, 1498119545, 1498119958, 1, 1, 1, 'имя', '+38 (222) 222-22-22', 0, '178.136.229.251', NULL, NULL, 'martinenko.a.wezom@gmail.com', NULL, 1, NULL),
(59, 1498474549, 1498541527, 3, 1, 1, 'тест', '+38 (555) 555-55-55', 32, '178.136.229.251', NULL, NULL, 'anniegarett@gmail.com', NULL, 1, NULL),
(60, 1498475024, 1498495132, 1, 1, 1, 'тест два', '+38 (222) 222-22-22', 32, '178.136.229.251', NULL, NULL, 'anniegarett@gmail.com', NULL, 1, NULL),
(61, 1498495336, 1498496077, 1, 1, 1, 'test', '+38 (222) 222-22-22', 0, '127.0.0.1', NULL, NULL, 'alyohina.i.wezom@gmail.com', NULL, 0, 'ru'),
(62, 1498542985, 1498544121, 3, 1, 1, 'имя получателя', '+38 (444) 444-44-44', 0, '178.136.229.251', NULL, NULL, 'anniegarett@gmail.com', NULL, 0, 'ru'),
(63, 1498667921, NULL, 0, 1, 1, 'test', '+38 (555) 555-55-55', 40, '77.239.190.14', NULL, NULL, 'alyohina.i.wezom@gmail.com', NULL, 0, 'ru'),
(64, 1498667994, NULL, 0, 1, 1, 'test', '+38 (555) 555-55-55', 0, '77.239.190.14', NULL, NULL, 'alyohina.i.wezom@gmail.com', NULL, 0, 'ru'),
(65, 1498668139, NULL, 0, 1, 1, 'test', '+38 (555) 555-55-55', 0, '127.0.0.1', NULL, NULL, 'alyohina.i.wezom@gmail.com', NULL, 0, 'ru'),
(66, 1499080568, NULL, 0, 1, 1, 'имя', '+38 (765) 464-66-46', 41, '178.136.229.251', NULL, NULL, 'anniegarett@gmail.com', NULL, 0, 'ru');

-- --------------------------------------------------------

--
-- Структура таблицы `orders_items`
--

CREATE TABLE `orders_items` (
  `id` int(10) NOT NULL,
  `order_id` int(10) NOT NULL,
  `catalog_id` int(10) DEFAULT NULL,
  `size_id` int(10) NOT NULL DEFAULT '0',
  `cost` int(10) NOT NULL DEFAULT '0',
  `count` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_items`
--

INSERT INTO `orders_items` (`id`, `order_id`, `catalog_id`, `size_id`, `cost`, `count`) VALUES
(84, 53, 48, 0, 1450, 2),
(85, 54, 45, 0, 950, 2),
(86, 53, 45, 0, 950, 1),
(87, 55, 46, 0, 875, 1),
(88, 56, 62, 0, 670, 1),
(89, 57, 116, 0, 890, 2),
(90, 58, 164, 0, 120, 2),
(91, 58, 162, 0, 0, 1),
(92, 59, 150, 0, 1280, 1),
(93, 59, 51, 0, 1740, 1),
(95, 60, 164, 0, 120, 1),
(96, 60, 162, 0, 0, 1),
(97, 60, 47, 0, 1270, 1),
(98, 61, 164, 0, 120, 1),
(99, 59, 164, 0, 120, 1),
(100, 62, 51, 0, 1740, 1),
(101, 62, 71, 0, 1200, 1),
(102, 62, 164, 0, 120, 1),
(103, 63, 55, 0, 756, 1),
(104, 64, 58, 0, 1270, 1),
(105, 65, 99, 0, 1267, 1),
(106, 66, 108, 0, 1640, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_simple`
--

CREATE TABLE `orders_simple` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `phone` varchar(64) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `catalog_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_simple`
--

INSERT INTO `orders_simple` (`id`, `created_at`, `updated_at`, `status`, `phone`, `ip`, `catalog_id`, `user_id`) VALUES
(20, 1447096946, NULL, 0, '+38 (111) 111-11-11', '127.0.0.1', 40, 21),
(21, 1453192176, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(22, 1453375173, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(23, 1453375421, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(24, 1453378496, NULL, 0, '+38 (111) 111-11-11', '178.136.229.251', 48, 0),
(25, 1453446814, 1483519503, 1, '+38 (111) 111-11-11', '178.136.229.251', 48, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `popup_messages`
--

CREATE TABLE `popup_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `ru` text,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `popup_messages`
--

INSERT INTO `popup_messages` (`id`, `name`, `ru`, `updated_at`) VALUES
(1, 'message_after_oformleniya_basket', '<p>Благодарим вас за заказ! <br /> Менеджер свяжется с вами в ближайшее время.</p>', 2013),
(2, 'message_error_captcha', 'Вы неправильно ввели код безопасности.<br> Повторите, пожалуйста, отправку данных, внимательно указав код.', NULL),
(3, 'message_after_q_about_good', 'Ваш вопрос принят. Менеджер ответит вам в ближайшее время.', NULL),
(4, 'message_add_contact', 'Благодарим вас за сообщение!', NULL),
(5, 'message_add_comment_to_guestbook', 'Благодарим вас за оставленный отзыв. <br>Администрация сайта обязательно рассмотрит ваши материалы и опубликует их в ближайшее время.', NULL),
(6, 'message_add_comment_to_news', 'Благодарим вас за оставленный комментарий. <br>С вашей помощью наш сайт становится интереснее и полезнее. <br>Администрация сайта обязательно рассмотрит ваши материалы и опубликует их в ближайшее время.', NULL),
(7, 'message_error_login', 'Неправильно введен логин', NULL),
(8, 'message_after_registration', 'Благодарим вас за регистрацию на нашем сайте! Приятной работы!', NULL),
(9, 'message_text_after_registration_user_at_site', 'Благодарим вас за регистрацию на нашем сайте! <br /> На ваш email, указанный при регистрации, отправлено уведомление с данными для входа в ваш личный кабинет на сайте. <br /> Приятной работы!', NULL),
(10, 'message_after_autorisation', 'Данные введены правильно! Приятной работы!', NULL),
(11, 'message_text_after_autorisation_user_at_site', 'Добро пожаловать на наш сайт! <br /> Воспользуйтесь личным кабинетом для: редактирования своих данных и просмотра истории покупок. <br /> Приятной работы!', NULL),
(12, 'message_error_autorisation', 'Данные введены неправильно! Будьте внимательны!', NULL),
(13, 'message_after_exit', 'Возвращайтесь еще!', NULL),
(14, 'message_text_after_exit', 'Администрация сайта благодарит вас за время, потраченное на нашем сайте. До скорых встреч!', NULL),
(16, 'message_after_edit_data', 'Выши данные изменены. Приятной работы.', NULL),
(17, 'message_text_after_edit_data', 'Благодарим вас внимание к нашему сайту. <br /> На ваш email, указанный при регистрации, отправлено уведомление с измененными данными. <br /> Приятной работы!', NULL),
(18, 'subscribe_refuse', 'Вы отказались от рассылки на сайте!', NULL),
(19, 'subscribe_refuse_error', 'Вы не подписывались на рассылку на сайте!', NULL),
(20, 'subscribe_already01', 'уже является подписчиком на сайте!', NULL),
(21, 'subscribe_already02', 'введите другую почту для подписки.', NULL),
(22, 'subscribe_done', 'Вы подписались на рассылку на сайте', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(16) DEFAULT NULL,
  `date` int(10) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(128) DEFAULT NULL,
  `text` text NOT NULL,
  `date_answer` int(10) DEFAULT NULL,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `created_at`, `updated_at`, `status`, `ip`, `date`, `name`, `email`, `text`, `date_answer`, `answer`) VALUES
(1, 1485437340, NULL, 1, NULL, 1485291600, 'test', 'test@test.com', 'test', 1485378000, 'answer'),
(2, 1485440439, NULL, 1, '127.0.0.1', 1485440439, 'test', 'alyohina.i.wezom@gmail.com', 'test tes test', NULL, NULL),
(3, 1498038494, NULL, 0, '93.79.199.220', 1498038494, 'test', 'test@test.te', 'мой отзыв!', NULL, NULL),
(4, 1498052061, 1498133618, 1, '93.79.199.220', 1497992400, 'имя', 'test@test.te', 'отзыв со страницы отзывов', 1498078800, 'optr olit erit kufwu liet rqw3rwe'),
(5, 1498206623, NULL, 0, '178.136.229.252', 1498206623, 'test', 'test_wezom@ukr.net', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL, NULL),
(6, 1498319141, NULL, 0, '127.0.0.1', 1498319141, 'test', 'alyohina.i.wezom@gmail.com', 'test test', NULL, NULL),
(7, 1498477233, NULL, 0, '178.136.229.251', 1498477233, 'имя', 'anniegarett@gmail.com', 'мой отзыв для проверки', NULL, NULL),
(8, 1498496207, NULL, 0, '127.0.0.1', 1498496207, 'test', 'alyohina.i.wezom@gmail.com', 'test wezom', NULL, NULL),
(9, 1498496300, NULL, 0, '127.0.0.1', 1498496300, 'dfsd', 'sdsd@sdf.df', 'sdfsdf', NULL, NULL),
(10, 1498541789, NULL, 0, '178.136.229.251', 1498541789, 'имя', 'anniegarett@gmail.com', 'мой отзыв после исправлений', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `seo_links`
--

CREATE TABLE `seo_links` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `h1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `keywords` text,
  `text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seo_links`
--

INSERT INTO `seo_links` (`id`, `name`, `status`, `created_at`, `updated_at`, `link`, `h1`, `title`, `description`, `keywords`, `text`) VALUES
(1, 'подушка красная', 1, 1498199619, 1498200003, '/podushka-krassnaja/p157', '1111', '2222', '4444', '3333', '<p>сео-текст</p>');

-- --------------------------------------------------------

--
-- Структура таблицы `seo_redirects`
--

CREATE TABLE `seo_redirects` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `link_from` varchar(255) DEFAULT NULL,
  `link_to` varchar(255) DEFAULT NULL,
  `type` int(4) NOT NULL DEFAULT '300'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `seo_scripts`
--

CREATE TABLE `seo_scripts` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `script` text,
  `status` int(1) DEFAULT '0',
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `place` varchar(31) DEFAULT 'head'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seo_scripts`
--

INSERT INTO `seo_scripts` (`id`, `name`, `script`, `status`, `created_at`, `updated_at`, `place`) VALUES
(1, 'название', '<code_test>', 1, 1498200180, 1498200855, 'counter');

-- --------------------------------------------------------

--
-- Структура таблицы `seo_templates`
--

CREATE TABLE `seo_templates` (
  `id` int(10) NOT NULL,
  `name` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seo_templates`
--

INSERT INTO `seo_templates` (`id`, `name`, `updated_at`) VALUES
(1, 'Шаблон для групп товаров', 1431017014),
(2, 'Шаблон для товаров', 1492428073),
(3, 'Шаблон для производителей', 1492428398);

-- --------------------------------------------------------

--
-- Структура таблицы `seo_templates_i18n`
--

CREATE TABLE `seo_templates_i18n` (
  `id` int(10) NOT NULL,
  `h1` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `title` varchar(250) CHARACTER SET cp1251 DEFAULT NULL,
  `description` text CHARACTER SET cp1251,
  `keywords` text CHARACTER SET cp1251,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `seo_templates_i18n`
--

INSERT INTO `seo_templates_i18n` (`id`, `h1`, `title`, `description`, `keywords`, `row_id`, `language`) VALUES
(1, '{{name}}', '{{name}} в интернет магазине Airpac. Купить обувь в Украине, Киеве8888', '{{content:20}}6666', '{{name}}, Купить обувь в Украине, Киеве7777', 1, 'ru'),
(2, '{{name}}', '{{name}} в интернет магазине Airpac. Купить лучшую обувь {{group}} в Украине, Киеве от {{price}} грн', 'Купить {{name}} в Украине. Огромный ассортимент обуви, современные {{group}} от компании {{brand}}. Гарантия качества, своевременная доставка, любые способы оплаты от {{price}} грн', 'Купить, {{name}}, {{group}}, {{brand}}, обувь от {{price}} грн', 2, 'ru'),
(3, '{{name}}', '{{name}} в интернет магазине Airpac. Купить обувь в Украине, Киеве', '{{content:20}}', '{{name}}, Купить обувь в Украине, Киеве', 1, 'ua'),
(5, '{{name}}', '{{name}} в интернет магазине Airpac. Купить лучшую обувь {{group}} в Украине, Киеве от {{price}} грн', 'Купить {{name}} в Украине. Огромный ассортимент обуви, современные {{group}} от компании {{brand}}. Гарантия качества, своевременная доставка, любые способы оплаты от {{price}} грн', 'Купить, {{name}}, {{group}}, {{brand}}, обувь от {{price}} грн', 2, 'ua'),
(7, '{{name}}', 'Шаблон для title производителя {{name}}444', 'Шаблон для description производителя {{name}}333', 'Шаблон для keywords производителя {{name}}555', 3, 'ru'),
(8, '{{name}}111', 'Шаблон для title производителя {{name}}222', 'Шаблон для description производителя {{name}}444', 'Шаблон для keywords производителя {{name}}333', 3, 'ua');

-- --------------------------------------------------------

--
-- Структура таблицы `sitemap`
--

CREATE TABLE `sitemap` (
  `id` int(11) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `tpl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sitemap`
--

INSERT INTO `sitemap` (`id`, `alias`, `name`, `parent_id`, `status`, `updated_at`, `sort`, `tpl`) VALUES
(1, 'content', 'Контентовые страницы', 0, 1, NULL, 2, 'Content'),
(2, 'contact', 'Контакты', 0, 1, NULL, 3, NULL),
(3, 'news', 'Новости', 0, 1, NULL, 4, 'News'),
(4, 'news_list', 'Список новостей', 3, 1, NULL, 1, NULL),
(5, 'articles', 'Статьи', 0, 1, NULL, 5, 'Articles'),
(6, 'articles_list', 'Список статей', 5, 1, NULL, 1, NULL),
(7, 'blog', 'Блог', 0, 1, NULL, 6, 'Blog'),
(8, 'blog_rubrics', 'Список рубрик', 7, 1, NULL, 1, NULL),
(9, 'blog_list', 'Список статей', 7, 1, NULL, 2, NULL),
(10, 'gallery', 'Фотогаллерея', 0, 1, NULL, 7, 'Gallery'),
(11, 'gallery_list', 'Список альбомов', 10, 1, NULL, 1, NULL),
(12, 'reviews', 'Отзывы', 0, 1, NULL, 8, NULL),
(13, 'catalog', 'Каталог', 0, 1, NULL, 9, 'Catalog'),
(14, 'catalog_groups', 'Список групп', 13, 1, NULL, 1, NULL),
(15, 'catalog_items', 'Список товаров', 14, 1, NULL, 1, NULL),
(16, 'catalog_sale', 'Акции', 13, 1, NULL, 3, 'Sale'),
(17, 'catalog_new', 'Новинки', 13, 1, NULL, 4, 'New'),
(18, 'catalog_popular', 'Популярные', 13, 1, NULL, 5, 'Popular'),
(19, 'catalog_brands', 'Производители', 13, 1, NULL, 6, 'Brands'),
(21, 'sitemap', 'Карта сайта', 0, 1, NULL, 10, NULL),
(22, 'index', 'Главная страница', 0, 1, NULL, 1, NULL),
(23, 'brands_list', 'Список производителей', 19, 1, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `sitemenu`
--

CREATE TABLE `sitemenu` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sitemenu`
--

INSERT INTO `sitemenu` (`id`, `created_at`, `updated_at`, `status`, `sort`, `url`) VALUES
(6, 1447091549, 1499853600, 1, 2, '/vacancy'),
(7, 1447091558, 1499853565, 1, 1, '/about'),
(8, 1447091606, 1499853540, 1, 0, '/catalog'),
(9, 1447091617, 1499853668, 1, 4, '/garanty'),
(10, 1447091626, 1499853684, 1, 5, '/contact'),
(11, 1453977094, 1499853636, 1, 3, '/dostavka');

-- --------------------------------------------------------

--
-- Структура таблицы `sitemenu_i18n`
--

CREATE TABLE `sitemenu_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(2) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `sitemenu_i18n`
--

INSERT INTO `sitemenu_i18n` (`id`, `row_id`, `language`, `name`) VALUES
(1, 6, 'ru', 'Вакансии'),
(2, 6, 'ua', 'Вакансії'),
(3, 7, 'ru', 'О компании'),
(4, 7, 'ua', 'Про компанію'),
(5, 8, 'ru', 'Каталог'),
(6, 8, 'ua', 'Каталог'),
(7, 9, 'ru', 'Гарантии и возврат'),
(8, 9, 'ua', 'Гарантії та повернення'),
(9, 10, 'ru', 'Контакты'),
(10, 10, 'ua', 'Контакти'),
(11, 11, 'ru', 'Доставка и оплата'),
(12, 11, 'ua', 'Доставка та оплата');

-- --------------------------------------------------------

--
-- Структура таблицы `slider`
--

CREATE TABLE `slider` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sort` int(10) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider`
--

INSERT INTO `slider` (`id`, `created_at`, `updated_at`, `status`, `sort`, `url`, `image`) VALUES
(2, 1462880145, 1465462205, 1, 1, 'http://cms.wezom.ks.ua/nke-air-huarache/p155', 'a029c068df62637619a62e821227e8c8.jpg'),
(3, 1462880202, 1465462205, 1, 0, 'http://cms.wezom.ks.ua/ruma-creepers-/p156', '99315da388f70cc1fe55b02e19a37c24.jpg'),
(5, 1465464168, 1483519397, 0, 0, '', '8f3dd72ccd5bc75929172b97a5d48f8d.jpg'),
(7, 1498049542, 1498049586, 1, 0, '//', '1fa3899310ea6d4286ba9a4b0e4cf225.jpg'),
(8, 1498113630, 1499862703, 1, 0, '/new', 'eb2470ea77bf84d8886f79984d2975a1.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `slider_i18n`
--

CREATE TABLE `slider_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(11) DEFAULT NULL,
  `language` varchar(4) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `caption` varchar(150) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slider_i18n`
--

INSERT INTO `slider_i18n` (`id`, `row_id`, `language`, `name`, `caption`, `title`) VALUES
(3, 7, 'ru', 'русский', NULL, NULL),
(4, 7, 'ua', 'английский', NULL, NULL),
(5, 8, 'ru', 'Первый слайд', 'Сервисное обслуживание', 'Грузовиков'),
(6, 8, 'ua', 'Перший слайд', 'Сервісне обслуговування', 'Вантажівок');

-- --------------------------------------------------------

--
-- Структура таблицы `specifications`
--

CREATE TABLE `specifications` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `type_id` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specifications`
--

INSERT INTO `specifications` (`id`, `created_at`, `updated_at`, `status`, `sort`, `alias`, `type_id`) VALUES
(30, 1499855002, NULL, 1, 0, 'vjazkostpo', 2),
(31, 1499855022, NULL, 1, 0, 'emkost', 2),
(32, 1499855043, NULL, 1, 0, 'tipdvigatelja', 2),
(33, 1499855070, NULL, 1, 0, 'tiposnovymasla', 2),
(34, 1499855091, NULL, 1, 0, 'naznachenie', 2),
(35, 1499855110, NULL, 1, 0, 'kategorija', 2),
(36, 1499855125, NULL, 1, 0, 'dopuski', 2),
(37, 1499855146, NULL, 1, 0, 'spetsifikatsii', 2),
(38, 1499855167, NULL, 1, 0, 'stranaproizvoditel', 2),
(39, 1499855185, NULL, 1, 0, 'garantija', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_i18n`
--

CREATE TABLE `specifications_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specifications_i18n`
--

INSERT INTO `specifications_i18n` (`id`, `row_id`, `language`, `name`) VALUES
(23, 30, 'ru', 'Вязкость по'),
(24, 30, 'ua', 'Візкість по'),
(25, 31, 'ru', 'Емкость'),
(26, 31, 'ua', 'Ємність'),
(27, 32, 'ru', 'Тип двигателя'),
(28, 32, 'ua', 'Тип двигуна'),
(29, 33, 'ru', 'Тип основы масла'),
(30, 33, 'ua', 'Тип основного мастила'),
(31, 34, 'ru', 'Назначение'),
(32, 34, 'ua', 'Призначення'),
(33, 35, 'ru', 'Категория'),
(34, 35, 'ua', 'Категорія'),
(35, 36, 'ru', 'Допуски'),
(36, 36, 'ua', 'Допуски'),
(37, 37, 'ru', 'Спецификации'),
(38, 37, 'ua', 'Специфікації'),
(39, 38, 'ru', 'Страна-производитель'),
(40, 38, 'ua', 'Країна-виробник'),
(41, 39, 'ru', 'Гарантия'),
(42, 39, 'ua', 'Гарантія');

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_types`
--

CREATE TABLE `specifications_types` (
  `id` int(2) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `specifications_types`
--

INSERT INTO `specifications_types` (`id`, `name`) VALUES
(1, 'color_type'),
(2, 'simple_type'),
(3, 'multiselect_type');

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_values`
--

CREATE TABLE `specifications_values` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `sort` int(10) DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `specification_id` int(10) NOT NULL,
  `color` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `specifications_values_i18n`
--

CREATE TABLE `specifications_values_i18n` (
  `id` int(10) NOT NULL,
  `row_id` int(10) DEFAULT NULL,
  `language` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `hash` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subscribers`
--

INSERT INTO `subscribers` (`id`, `created_at`, `updated_at`, `email`, `ip`, `status`, `hash`) VALUES
(1, 1461527715, 1483520619, 'veselovskaya.wezom@gmail.com', '213.227.252.130', 0, '98ee695a6714db101decf8e21ab40d975c62ba74'),
(2, 1498051715, NULL, 'martinenko.a.wezom@gmail.com', '93.79.199.220', 1, '2e6b04f4bc74d4978c258cd1997d8ed1e266e75d'),
(3, 1498134405, NULL, 'anniegarett@gmail.com', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `subscribe_mails`
--

CREATE TABLE `subscribe_mails` (
  `id` int(10) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` mediumtext,
  `emails` longtext,
  `count_emails` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `subscribe_mails`
--

INSERT INTO `subscribe_mails` (`id`, `created_at`, `updated_at`, `subject`, `text`, `emails`, `count_emails`) VALUES
(1, 1464178072, NULL, 'лоижлио', '<p>жлдоижилдо</p>', 'veselovskaya.wezom@gmail.com', 1),
(2, 1498134536, NULL, 'тестовая рассылка', '<p>тестовое содержание для проверки отправки</p>\r\n<div class="rowSection">\r\n<div class="col-md-6">Ссылка для отписки от рассылки</div>\r\n<div class="col-md-6">{{unsubscribe}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Доменное имя сайта</div>\r\n<div class="col-md-6">{{site}}</div>\r\n</div>\r\n<div class="rowSection">\r\n<div class="col-md-6">Текущая дата в формате dd.mm.YYYY</div>\r\n<div class="col-md-6">{{date}}</div>\r\n</div>', 'anniegarett@gmail.com;martinenko.a.wezom@gmail.com', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET cp1251 DEFAULT NULL,
  `login` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  `password` varchar(128) CHARACTER SET cp1251 DEFAULT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET cp1251 DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `role_id` int(2) NOT NULL DEFAULT '1',
  `ip` varchar(16) DEFAULT NULL,
  `phone` varchar(64) DEFAULT NULL,
  `last_login` int(10) DEFAULT NULL,
  `logins` int(10) DEFAULT '0',
  `last_name` varchar(64) DEFAULT NULL,
  `middle_name` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `created_at`, `updated_at`, `hash`, `email`, `status`, `role_id`, `ip`, `phone`, `last_login`, `logins`, `last_name`, `middle_name`) VALUES
(1, 'Администратор', 'admin', 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 1418300546, 1430939378, '48e00180ccc77b94d73ec413b015a4cfb9aa58ba10d8c1b63aad5c8317847d9f', 'palenaya.v.wezom111@gmail.com', 1, 4, NULL, '+38 (111) 111-11-11', NULL, 0, NULL, NULL),
(2, 'weZom', 'wezom', '4958070fab7cebd8b1000c6c8cb1bca4aa23b509ee9bc4b70570b5c0e3dfe64a', NULL, 1435164507, 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 'vitaliy.demyjkane3nko.1991@gmail.com', 1, 3, NULL, '+38 (567) 567-56-75', NULL, 0, NULL, NULL),
(21, 'Виталя', NULL, 'd7957677dc4ec0e9e425c8b99e477aa70244ae512fc2583af6a1ab2ee3b01fbc', 1447096765, 1448350164, 'd6fb647d44ada79149c6732227667ea44b84ab78706cffe94027f960d0bb1124', 'demyanenko.v.wezom@ukr.net', 1, 1, '127.0.0.1', '', 1448350164, 3, 'Демяненко', '444'),
(22, 'Test1', 'admin1', 'c2bcb46de4d99a0ce346ee0a6530b85bb6f0fb80656406a23d3e60c1158a22e8', 1447426756, 1447426756, NULL, NULL, 1, 5, NULL, NULL, NULL, 0, NULL, NULL),
(23, 'Anton', NULL, '3e61c90127ae20abbcc8b1b7cfabf301a0269de0460890d5ec33373870c4e172', 1447515858, NULL, '409fe348ba859b01e942532e108ff6479dd435feaae09d81adc9aa91871a0de0', 'crocoash@gmail.com', 1, 1, '109.86.230.160', NULL, 1447515857, 1, 'Tsvetkov', NULL),
(24, 'Vitaliy', NULL, '339e548c63121ea40d9b8d9a7e6bc43279ba802991a1d2dd54ec8c080328b826', 1448910941, NULL, '3d63d55d0f1a64f2ad0bd1255b4ecbdbfc0820362d2f1456b64556439fc1e5a8', 'demyanenko.v.wezom@gmail.com', 1, 1, '46.175.163.12', NULL, 1448910941, 1, 'Demianenko', NULL),
(25, 'zorya', 'zorya', '131cf002c1c268432c00b026a5182ada3c14a3cbd3ec2f112ea2aff21f4e621e', 1450795155, 1483520734, NULL, NULL, 1, 7, NULL, NULL, NULL, 0, NULL, NULL),
(26, 'test', NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1461673130, NULL, '73ffbeef661a2707b9bea04b39979a2a99655a8ae4eed79a35869f20bdec40a3', 'test.wezom@mail.ru', 0, 1, NULL, '', NULL, 0, '', ''),
(27, 'Екатерина', NULL, 'ce7500fb2f28f5d742c9821a1bd7847e8375065070d0e137c401cd151f8b7564', 1464541221, NULL, 'd9201dfdc8a7585db6d597b570cbaddf8e8288408e5713f887baff81ec9daadf', 'katia-katerinka_@mail.ru', 1, 1, '83.142.111.151', NULL, 1464541221, 1, 'Баськова', NULL),
(28, 'test', NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1465467766, 1483520720, '398518fd32869473b46bb3f54c02cb85e86421138514e01b9e85a23b79edc9e9', 'test1@mail.ru', 0, 1, NULL, '', NULL, 0, '', ''),
(29, 'AK', NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1497007992, 1497010697, 'fdade3548dc4bae3729b16bbd57f941955df83cdaf40337cc42b7ab1f8aed5cc', 'konopkin.a.wezom@gmail.com', 1, 1, NULL, '+38 (111) 111-11-11', 1497010558, 1, '', ''),
(30, 'Андрей', NULL, 'e04f5c6bdde7922fb15714dcbf6df88f48ec7e68fd0a96263e7efd4f472174fc', 1497018132, 1498131216, '4d81e810ff6682660352b10278a01ec812ae7b124be99eb4e551599e45ed7b09', 'procivam@gmail.com', 1, 1, '192.168.1.5', '', 1497018132, 1, 'Процив', ''),
(37, NULL, NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1498494002, NULL, '27b0fd400ff23e6702f7de98fa3716d8eb5add3fa673c0acce2590b580a1e6f0', 'test@test.com', 0, 1, '127.0.0.1', NULL, NULL, 0, NULL, NULL),
(38, NULL, NULL, '16f6c951f67a1cbb5cfea87e7b99f66203e53289b9c1f4181f9fd98f174c0afa', 1498541086, NULL, 'e3155e0c4ad4d1a2bea8b04e0274e3afeb77498c8a164b411264c0f6e525ba7f', 'martinenko.a.wezom@gmail.com', 0, 1, '178.136.229.251', NULL, NULL, 0, NULL, NULL),
(40, NULL, NULL, '99bbed544406cf05b82dd1e9f2affaebaf189fca8c2cfef0ee3ffa2f5250611f', 1498667720, 1498667859, 'ec1e9a1edbdafd5158cd2cadecf6bf5a1c653124fc05ef483f1f6d3b059ff8e3', 'alyohina.i.wezom@gmail.com', 1, 1, '127.0.0.1', NULL, 1498667859, 1, NULL, NULL),
(41, NULL, NULL, '16f6c951f67a1cbb5cfea87e7b99f66203e53289b9c1f4181f9fd98f174c0afa', 1499080247, 1499080367, 'f588174f3ad106e9bdc8e5a8ae626b49959f2b51285ce526b5c2e134c6cae8ac', 'anniegarett@gmail.com', 1, 1, '178.136.229.251', NULL, 1499080367, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users_networks`
--

CREATE TABLE `users_networks` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `network` varchar(32) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `uid` varchar(64) NOT NULL,
  `profile` varchar(128) NOT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_networks`
--

INSERT INTO `users_networks` (`id`, `user_id`, `network`, `created_at`, `uid`, `profile`, `first_name`, `last_name`, `email`) VALUES
(7, 21, 'vkontakte', 1447096768, '22898418', 'http://vk.com/id22898418', 'Виталя', 'Демяненко', 'demyanenko.v.wezom@ukr.net'),
(8, 21, 'facebook', 1447096775, '100003261046861', 'http://www.facebook.com/100003261046861', 'Vitaliy', 'Demianenko', 'vitaliy.demyanenko.1991@gmail.com'),
(9, 23, 'facebook', 1447515858, '1628676114064038', 'https://www.facebook.com/app_scoped_user_id/1628676114064038/', 'Anton', 'Tsvetkov', 'crocoash@gmail.com'),
(10, 24, 'instagram', 1448910941, '1685676043', 'http://instagram.com/demianenko_v', 'Vitaliy', 'Demianenko', 'demyanenko.v.wezom@gmail.com'),
(11, 27, 'vkontakte', 1464541222, '3646497', 'http://vk.com/id3646497', 'Екатерина', 'Баськова', 'katia-katerinka_@mail.ru'),
(12, 30, 'facebook', 1497018132, '100660866943771', 'https://www.facebook.com/app_scoped_user_id/100660866943771/', 'Андрей', 'Процив', 'procivam@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(2) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `alias` varchar(128) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_roles`
--

INSERT INTO `users_roles` (`id`, `name`, `description`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Пользователь', 'Обычный пользователь, зарегистрировавшийся на сайте', 'user', NULL, NULL),
(3, 'Разработчик', 'Полный доступ ко всему + к тому к чему нет доступа у главного администратора', 'developer', NULL, NULL),
(4, 'Суперадмин', 'Доступ ко всем разделам, кроме тех, к которым имеет доступ только разработчик', 'superadmin', NULL, NULL),
(5, '1', '1', 'admin', 1447421386, NULL),
(6, 'rol1', 'запрещено все', 'admin', 1447662341, NULL),
(7, 'все разрешено', '', 'admin', 1460728748, 1483520750),
(8, 'тестовая роль', 'проверка 220617', 'admin', 1498132694, 1498132860);

-- --------------------------------------------------------

--
-- Структура таблицы `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `country` varchar(63) DEFAULT NULL,
  `region` varchar(63) DEFAULT NULL,
  `city` varchar(63) DEFAULT NULL,
  `longitude` varchar(15) DEFAULT NULL,
  `latitude` varchar(15) DEFAULT NULL,
  `answer` text,
  `first_enter` int(10) DEFAULT NULL,
  `last_enter` int(10) DEFAULT NULL,
  `enters` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `country`, `region`, `city`, `longitude`, `latitude`, `answer`, `first_enter`, `last_enter`, `enters`) VALUES
(2, '46.175.163.12', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1436769939, 1443635307, 46),
(3, '46.175.163.23', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1436779299, 1436788232, 31),
(4, '178.136.229.251', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1436790847, 1446482463, 2686),
(5, '141.101.31.209', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1436793036, 1436793036, 2),
(6, '5.255.253.82', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1436793615, 1436897192, 4),
(7, '82.207.32.122', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436794089, 1436889003, 6),
(8, '94.153.238.74', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436795971, 1436795990, 5),
(9, '77.52.155.160', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436807599, 1436807624, 6),
(10, '77.52.153.204', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436813898, 1436813902, 3),
(11, '93.79.166.242', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1436815753, 1436815947, 21),
(12, '77.52.158.210', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436885640, 1436885640, 1),
(13, '5.255.253.92', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1436893704, 1436893704, 1),
(14, '178.93.63.19', 'Украина', 'Киев', 'Киев', '30.523792', '50.454657', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523792,"Latitude":50.454657}', 1436899627, 1436899634, 2),
(15, '95.108.158.169', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1436907570, 1436907570, 1),
(16, '127.0.0.1', NULL, NULL, NULL, NULL, NULL, NULL, 1438319894, 1446752659, 991),
(17, '62.76.103.139', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1439317767, 1439317767, 1),
(18, '62.76.103.137', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1439323710, 1439323710, 1),
(19, '104.45.18.178', NULL, NULL, NULL, NULL, NULL, NULL, 1439379430, 1439379430, 1),
(20, '23.101.61.176', 'Соединённые Штаты Америки', 'Вашингтон', NULL, '-122.121543', '47.673986', '{"Address":"\\u0421\\u043e\\u0435\\u0434\\u0438\\u043d\\u0451\\u043d\\u043d\\u044b\\u0435 \\u0428\\u0442\\u0430\\u0442\\u044b \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0438, \\u0412\\u0430\\u0448\\u0438\\u043d\\u0433\\u0442\\u043e\\u043d, \\u041a\\u0438\\u043d\\u0433, Cascade Valleys Heritage Corridor","CountryNameCode":"US","CountryName":"\\u0421\\u043e\\u0435\\u0434\\u0438\\u043d\\u0451\\u043d\\u043d\\u044b\\u0435 \\u0428\\u0442\\u0430\\u0442\\u044b \\u0410\\u043c\\u0435\\u0440\\u0438\\u043a\\u0438","AdministrativeAreaName":"\\u0412\\u0430\\u0448\\u0438\\u043d\\u0433\\u0442\\u043e\\u043d","SubAdministrativeAreaName":"\\u041a\\u0438\\u043d\\u0433","ThoroughfareName":"Cascade Valleys Heritage Corridor","Longitude":-122.121543,"Latitude":47.673986}', 1439381412, 1439528444, 2),
(21, '188.163.64.164', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1439407765, 1439407765, 1),
(22, '37.53.164.140', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1439815475, 1439912997, 3),
(23, '46.33.235.207', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1440142147, 1440142147, 1),
(24, '37.115.37.41', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1440316869, 1440317540, 2),
(25, '141.101.7.200', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1440574841, 1440574841, 1),
(26, '37.25.105.82', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1441198859, 1441198859, 1),
(27, '95.132.65.20', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441218023, 1441218786, 8),
(28, '5.248.122.132', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441386208, 1441386237, 2),
(29, '77.52.157.154', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441439358, 1441439358, 1),
(30, '178.94.7.60', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441478891, 1441514080, 12),
(31, '178.93.23.91', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441525980, 1441525980, 1),
(32, '93.79.133.79', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1441704254, 1441704254, 1),
(33, '46.33.240.230', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1441706615, 1441894928, 2),
(34, '78.27.159.148', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1441736777, 1441736777, 1),
(35, '158.255.159.142', 'Россия', 'Центральный федеральный округ', 'Москва', '37.615560', '55.752252', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u041c\\u043e\\u0441\\u043a\\u0432\\u0430, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0426\\u0435\\u043d\\u0442\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","LocalityName":"\\u041c\\u043e\\u0441\\u043a\\u0432\\u0430","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":37.61556,"Latitude":55.752252}', 1442324774, 1442326178, 6),
(36, '31.43.18.81', 'Украина', 'Житомирская область', 'Житомир', '28.676775', '50.264764', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440, \\u0443\\u043b\\u0438\\u0446\\u0430 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430 \\u0413\\u0440\\u0443\\u0448\\u0435\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440","ThoroughfareName":"\\u0443\\u043b\\u0438\\u0446\\u0430 \\u041c\\u0438\\u0445\\u0430\\u0438\\u043b\\u0430 \\u0413\\u0440\\u0443\\u0448\\u0435\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","Longitude":28.676775,"Latitude":50.264764}', 1442825933, 1443032101, 25),
(37, '46.33.244.80', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1443531682, 1443538287, 14),
(38, '46.136.3.147', NULL, NULL, NULL, '2', '46', NULL, 1443603129, 1443603612, 10),
(39, '31.193.124.174', 'Россия', 'Северо-Западный федеральный округ', 'Санкт-Петербург', '30.314709', '59.938166', '{"Address":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f, \\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433, \\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u044c","CountryNameCode":"RU","CountryName":"\\u0420\\u043e\\u0441\\u0441\\u0438\\u044f","AdministrativeAreaName":"\\u0421\\u0435\\u0432\\u0435\\u0440\\u043e-\\u0417\\u0430\\u043f\\u0430\\u0434\\u043d\\u044b\\u0439 \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b\\u044c\\u043d\\u044b\\u0439 \\u043e\\u043a\\u0440\\u0443\\u0433","SubAdministrativeAreaName":"\\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433","LocalityName":"\\u0421\\u0430\\u043d\\u043a\\u0442-\\u041f\\u0435\\u0442\\u0435\\u0440\\u0431\\u0443\\u0440\\u0433","ThoroughfareName":"\\u0414\\u0432\\u043e\\u0440\\u0446\\u043e\\u0432\\u0430\\u044f \\u043f\\u043b\\u043e\\u0449\\u0430\\u0434\\u044c","Longitude":30.314709,"Latitude":59.938166}', 1443609860, 1443610490, 2),
(40, '195.230.129.9', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1443902052, 1443902052, 1),
(41, '93.79.169.214', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1444222828, 1444222828, 1),
(42, '89.19.105.19', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1444226112, 1444226112, 1),
(43, '93.79.245.43', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1444231244, 1444231798, 15),
(44, '93.79.132.79', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1444233347, 1444233347, 1),
(45, '109.104.179.45', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1444309268, 1444309281, 3),
(46, '93.79.187.241', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1444568002, 1444568002, 1),
(47, '176.38.168.242', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1444745351, 1444745472, 4),
(48, '31.43.28.67', 'Украина', 'Житомирская область', 'Житомир', '28.676775', '50.264764', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440, \\u0443\\u043b\\u0438\\u0446\\u0430 \\u041a\\u043e\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440","ThoroughfareName":"\\u0443\\u043b\\u0438\\u0446\\u0430 \\u041a\\u043e\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","Longitude":28.676775,"Latitude":50.264764}', 1445493510, 1445493605, 13),
(49, '212.111.209.20', 'Украина', 'Херсонская область', 'Херсон', '32.617801', '46.655810', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0425\\u0435\\u0440\\u0441\\u043e\\u043d, \\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0425\\u0435\\u0440\\u0441\\u043e\\u043d","DependentLocalityName":"\\u0421\\u0443\\u0432\\u043e\\u0440\\u043e\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0440\\u0430\\u0439\\u043e\\u043d","Longitude":32.617801,"Latitude":46.65581}', 1445972551, 1446064625, 13),
(50, '90.191.172.183', NULL, NULL, NULL, '24.753530', '59.436960', NULL, 1445974986, 1445975063, 9),
(51, '178.92.174.22', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1446039058, 1446039058, 1),
(52, '31.43.17.114', 'Украина', 'Житомирская область', 'Житомир', '28.676775', '50.264764', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440, \\u0443\\u043b\\u0438\\u0446\\u0430 \\u041a\\u043e\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440","ThoroughfareName":"\\u0443\\u043b\\u0438\\u0446\\u0430 \\u041a\\u043e\\u0442\\u043e\\u0432\\u0441\\u043a\\u043e\\u0433\\u043e","Longitude":28.676775,"Latitude":50.264764}', 1446110638, 1446110796, 20),
(53, '176.104.11.150', 'Украина', 'Житомирская область', 'Бердичев', '28.602350', '49.899278', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c, \\u0411\\u0435\\u0440\\u0434\\u0438\\u0447\\u0435\\u0432","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u0416\\u0438\\u0442\\u043e\\u043c\\u0438\\u0440\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u0411\\u0435\\u0440\\u0434\\u0438\\u0447\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u0411\\u0435\\u0440\\u0434\\u0438\\u0447\\u0435\\u0432","Longitude":28.60235,"Latitude":49.899278}', 1446133206, 1446133271, 11),
(54, '193.239.254.154', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1446205418, 1446209868, 2),
(55, '212.92.249.206', 'Украина', 'Николаевская область', 'Николаев', '31.997883', '46.965870', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432, \\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430, 93","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0430\\u044f \\u043e\\u0431\\u043b\\u0430\\u0441\\u0442\\u044c","SubAdministrativeAreaName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432\\u0441\\u043a\\u0438\\u0439 \\u0433\\u043e\\u0440\\u043e\\u0434\\u0441\\u043a\\u043e\\u0439 \\u0441\\u043e\\u0432\\u0435\\u0442","LocalityName":"\\u041d\\u0438\\u043a\\u043e\\u043b\\u0430\\u0435\\u0432","ThoroughfareName":"\\u043f\\u0440\\u043e\\u0441\\u043f\\u0435\\u043a\\u0442 \\u041b\\u0435\\u043d\\u0438\\u043d\\u0430","PremiseNumber":"93","Longitude":31.997883,"Latitude":46.96587}', 1446468906, 1446468906, 1),
(56, '176.8.202.47', 'Украина', 'Киев', 'Киев', '30.523819', '50.454685', '{"Address":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430, \\u041a\\u0438\\u0435\\u0432, \\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","CountryNameCode":"UA","CountryName":"\\u0423\\u043a\\u0440\\u0430\\u0438\\u043d\\u0430","AdministrativeAreaName":"\\u041a\\u0438\\u0435\\u0432","LocalityName":"\\u041a\\u0438\\u0435\\u0432","ThoroughfareName":"\\u0422\\u0440\\u0451\\u0445\\u0441\\u0432\\u044f\\u0442\\u0438\\u0442\\u0435\\u043b\\u044c\\u0441\\u043a\\u0430\\u044f \\u0443\\u043b\\u0438\\u0446\\u0430","Longitude":30.523819,"Latitude":50.454685}', 1446480282, 1446488075, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `visitors_hits`
--

CREATE TABLE `visitors_hits` (
  `id` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` int(10) DEFAULT NULL,
  `updated_at` int(10) DEFAULT NULL,
  `status` varchar(32) NOT NULL DEFAULT '200 OK',
  `device` varchar(32) NOT NULL DEFAULT 'Computer',
  `useragent` varchar(255) DEFAULT NULL,
  `counter` int(10) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `visitors_hits`
--

INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(1, '46.175.163.12', '/', 1436771768, 1436771768, '200 OK', 'Computer', NULL, 1),
(2, '46.175.163.12', '/', 1436771773, 1436771773, '200 OK', 'Computer', NULL, 1),
(3, '46.175.163.12', '/product/nike_air_max_90_hyperfuse6927', 1436771795, 1436771795, '200 OK', 'Computer', NULL, 1),
(4, '46.175.163.12', '/product/nike_air_max_90_hyperfuse6927', 1436771841, 1436771841, '200 OK', 'Computer', NULL, 1),
(5, '46.175.163.23', '/', 1436779299, 1436779299, '200 OK', 'Phone', NULL, 1),
(6, '178.136.229.251', '/', 1436790847, 1436790847, '200 OK', 'Computer', NULL, 1),
(7, '141.101.31.209', '/', 1436793036, 1436793036, '200 OK', 'Phone', NULL, 1),
(8, '82.207.32.122', '/', 1436794089, 1436794089, '200 OK', 'Phone', NULL, 1),
(9, '94.153.238.74', '/', 1436795971, 1436795971, '200 OK', 'Phone', NULL, 1),
(10, '77.52.155.160', '/', 1436807599, 1436807599, '200 OK', 'Phone', NULL, 1),
(11, '93.79.166.242', '/', 1436815753, 1436815753, '200 OK', 'Phone', NULL, 1),
(12, '93.79.166.242', '/', 1436815761, 1436815761, '200 OK', 'Computer', NULL, 1),
(13, '93.79.166.242', '/', 1436815796, 1436815796, '200 OK', 'Computer', NULL, 1),
(14, '93.79.166.242', '/catalog', 1436815802, 1436815802, '200 OK', 'Computer', NULL, 1),
(15, '93.79.166.242', '/catalog/for_men', 1436815807, 1436815807, '200 OK', 'Computer', NULL, 1),
(16, '93.79.166.242', '/catalog/krossovki_dlja_bega', 1436815810, 1436815810, '200 OK', 'Computer', NULL, 1),
(17, '93.79.166.242', '/product/test_wezom', 1436815816, 1436815816, '200 OK', 'Computer', NULL, 1),
(18, '93.79.166.242', '/catalog/krossovki_dlja_bega', 1436815823, 1436815823, '200 OK', 'Computer', NULL, 1),
(19, '93.79.166.242', '/', 1436815834, 1436815834, '200 OK', 'Computer', NULL, 1),
(20, '93.79.166.242', '/catalog', 1436815909, 1436815909, '200 OK', 'Computer', NULL, 1),
(21, '46.175.163.12', '/', 1436824627, 1436824627, '200 OK', 'Computer', NULL, 1),
(22, '46.175.163.12', '/w', 1436824636, 1436824636, '404 Not Found', 'Computer', NULL, 1),
(23, '46.175.163.12', '/', 1436824886, 1436824886, '200 OK', 'Computer', NULL, 1),
(24, '46.175.163.12', '/', 1436824888, 1436824888, '200 OK', 'Computer', NULL, 1),
(25, '5.255.253.82', '/catalog/krossovki_dlja_bega/filter/size=41_eur&color=beige,gray&sezon=autumn', 1436827506, 1436827506, '200 OK', 'Computer', NULL, 1),
(26, '5.255.253.82', '/catalog/krossovki_dlja_bega/filter/brand=nike&available=2&size=42_eur&color=blue', 1436844355, 1436844355, '200 OK', 'Computer', NULL, 1),
(27, '46.175.163.12', '/', 1436860567, 1436860567, '200 OK', 'Computer', NULL, 1),
(28, '46.175.163.12', '/', 1436860588, 1436860588, '200 OK', 'Phone', NULL, 1),
(29, '46.175.163.12', '/', 1436860713, 1436860713, '200 OK', 'Computer', NULL, 1),
(30, '46.175.163.12', '/catalog/krossovki_dlja_bega', 1436860727, 1436860727, '200 OK', 'Computer', NULL, 1),
(31, '46.175.163.12', '/catalog/krossovki_dlja_bega8', 1436860737, 1436860737, '404 Not Found', 'Computer', NULL, 1),
(32, '46.175.163.12', '/catalog/krossovki_dlja_bega', 1436860784, 1436860784, '200 OK', 'Computer', NULL, 1),
(33, '178.136.229.251', '/backend/auth/login', 1436860913, 1436860913, '404 Not Found', 'Computer', NULL, 1),
(34, '46.175.163.12', '/catalog/krossovki_dlja_bega', 1436860919, 1436860919, '200 OK', 'Computer', NULL, 1),
(35, '178.136.229.251', '/backend', 1436860924, 1436860924, '404 Not Found', 'Computer', NULL, 1),
(36, '46.175.163.12', '/', 1436862837, 1436862837, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(37, '46.175.163.12', '/product/nike_air_max_90_hyperfuse6869', 1436862877, 1436862877, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(38, '178.136.229.251', '/', 1436880477, 1436880477, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.132 Safari/537.36', 1),
(39, '77.52.158.210', '/product/nike_air_max_90_hyperfuse6869', 1436885640, 1436885640, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(40, '82.207.32.122', '/', 1436889003, 1436889003, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(41, '5.255.253.92', '/articles/muzhskaja_asics', 1436893704, 1436893704, '200 OK', 'Computer', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1),
(42, '5.255.253.82', '/catalog/krossovki_dlja_bega/filter/size=42_eur&material=sintetik&sezon=spring,summer', 1436897192, 1436897192, '200 OK', 'Computer', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1),
(43, '178.93.63.19', '/', 1436899627, 1436899627, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(44, '178.93.63.19', '/product/nike_air_max_90_hyperfuse2018', 1436899634, 1436899634, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(45, '46.175.163.12', '/product/nike_air_max_90_hyperfuse2018', 1436900755, 1436900755, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(46, '46.175.163.12', '/', 1436900758, 1436900758, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.93 Mobile Safari/537.36', 1),
(47, '46.175.163.12', '/', 1436901253, 1436901253, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(48, '95.108.158.169', '/product/nike_air_max_90_hyperfuse6869', 1436907570, 1436907570, '200 OK', 'Computer', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', 1),
(49, '46.175.163.12', '/', 1436909319, 1436909319, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(50, '46.175.163.12', '/', 1436909343, 1436909343, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(51, '46.175.163.12', '/', 1436909414, 1436909414, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(52, '46.175.163.12', '/', 1436909426, 1436909426, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(53, '46.175.163.12', '/', 1436909438, 1436909438, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(54, '46.175.163.12', '/', 1436909589, 1436909589, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(55, '46.175.163.12', '/', 1436909625, 1436909625, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(56, '46.175.163.12', '/', 1436909635, 1436909635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(57, '46.175.163.12', '/', 1436909675, 1436909675, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(58, '46.175.163.12', '/user', 1436909679, 1436909679, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(59, '46.175.163.12', '/', 1436909683, 1436909683, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(60, '127.0.0.1', '/', 1438319894, 1438319894, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(61, '127.0.0.1', '/', 1438949176, 1438949176, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(62, '127.0.0.1', '/', 1438949780, 1438949780, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(63, '127.0.0.1', '/user', 1438951113, 1438951113, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(64, '127.0.0.1', '/user/orders', 1438951123, 1438951123, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(65, '127.0.0.1', '/user/profile', 1438951125, 1438951125, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(66, '127.0.0.1', '/user', 1438953202, 1438953202, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(67, '127.0.0.1', '/', 1438953344, 1438953344, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(68, '127.0.0.1', '/', 1438953475, 1438953475, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(69, '127.0.0.1', '/', 1438953527, 1438953527, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(70, '127.0.0.1', '/', 1438953603, 1438953603, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(71, '127.0.0.1', '/', 1438953700, 1438953700, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(72, '127.0.0.1', '/', 1438953783, 1438953783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(73, '127.0.0.1', '/news', 1438953812, 1438953812, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(74, '127.0.0.1', '/news/vchapsrol54642505', 1438953815, 1438953815, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(75, '127.0.0.1', '/news', 1438953817, 1438953817, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(76, '127.0.0.1', '/news/nazvanie_novost', 1438953820, 1438953820, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(77, '127.0.0.1', '/news', 1438953821, 1438953821, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(78, '127.0.0.1', '/news/novye_krossovki_nike_air_force_1_low_purple_venom', 1438953825, 1438953825, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(79, '127.0.0.1', '/news', 1438953829, 1438953829, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(80, '127.0.0.1', '/news', 1438954579, 1438954579, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(81, '127.0.0.1', '/news', 1438954657, 1438954657, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(82, '127.0.0.1', '/', 1438954670, 1438954670, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(83, '127.0.0.1', '/user', 1438954687, 1438954687, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(84, '127.0.0.1', '/dostavka', 1438954691, 1438954691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(85, '127.0.0.1', '/', 1438954696, 1438954696, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(86, '127.0.0.1', '/cart', 1438954700, 1438954700, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(87, '127.0.0.1', '/', 1438954703, 1438954703, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(88, '178.136.229.251', '/', 1439185093, 1439185093, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(89, '178.136.229.251', '/', 1439185123, 1439185123, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(90, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1439185135, 1439185135, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(91, '178.136.229.251', '/', 1439199636, 1439199636, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(92, '127.0.0.1', '/', 1439203224, 1439203224, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(93, '178.136.229.251', '/', 1439205572, 1439205572, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(94, '178.136.229.251', '/', 1439208477, 1439208477, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(95, '178.136.229.251', '/', 1439211314, 1439211314, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(96, '178.136.229.251', '/', 1439211349, 1439211349, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(97, '178.136.229.251', '/', 1439211375, 1439211375, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(98, '178.136.229.251', '/', 1439213766, 1439213766, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(99, '178.136.229.251', '/', 1439214150, 1439214150, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(100, '178.136.229.251', '/', 1439214160, 1439214160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(101, '178.136.229.251', '/', 1439214309, 1439214309, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(102, '178.136.229.251', '/', 1439214854, 1439214854, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(103, '178.136.229.251', '/', 1439214854, 1439214854, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(104, '178.136.229.251', '/', 1439214869, 1439214869, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(105, '178.136.229.251', '/', 1439214905, 1439214905, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(106, '178.136.229.251', '/', 1439215023, 1439215023, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(107, '178.136.229.251', '/', 1439215038, 1439215038, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(108, '178.136.229.251', '/', 1439215112, 1439215112, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(109, '178.136.229.251', '/', 1439215122, 1439215122, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(110, '178.136.229.251', '/', 1439215122, 1439215122, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(111, '178.136.229.251', '/', 1439215228, 1439215228, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(112, '178.136.229.251', '/', 1439215349, 1439215349, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(113, '178.136.229.251', '/', 1439215492, 1439215492, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(114, '178.136.229.251', '/', 1439215492, 1439215492, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(115, '178.136.229.251', '/', 1439215493, 1439215493, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(116, '178.136.229.251', '/', 1439215494, 1439215494, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(117, '178.136.229.251', '/', 1439215522, 1439215522, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(118, '178.136.229.251', '/', 1439215532, 1439215532, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(119, '178.136.229.251', '/', 1439215620, 1439215620, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(120, '178.136.229.251', '/', 1439215623, 1439215623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(121, '178.136.229.251', '/', 1439215633, 1439215633, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(122, '178.136.229.251', '/', 1439215633, 1439215633, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(123, '178.136.229.251', '/', 1439215686, 1439215686, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(124, '178.136.229.251', '/', 1439215689, 1439215689, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(125, '178.136.229.251', '/', 1439215706, 1439215706, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(126, '178.136.229.251', '/', 1439215727, 1439215727, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(127, '178.136.229.251', '/', 1439215748, 1439215748, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(128, '178.136.229.251', '/', 1439215750, 1439215750, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(129, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1439215752, 1439215752, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(130, '178.136.229.251', '/', 1439215754, 1439215754, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(131, '178.136.229.251', '/', 1439215758, 1439215758, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(132, '178.136.229.251', '/', 1439215783, 1439215783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(133, '178.136.229.251', '/', 1439215951, 1439215951, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(134, '178.136.229.251', '/', 1439215951, 1439215951, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(135, '178.136.229.251', '/', 1439215990, 1439215990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(136, '46.175.163.12', '/', 1439265348, 1439265348, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.78 Mobile Safari/537.36 OPR/30.0.1856.93524', 1),
(137, '178.136.229.251', '/', 1439269251, 1439269251, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(138, '178.136.229.251', '/', 1439269251, 1439269251, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(139, '178.136.229.251', '/', 1439288520, 1439288520, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(140, '178.136.229.251', '/', 1439289269, 1439289269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(141, '178.136.229.251', '/oplata', 1439289396, 1439289396, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(142, '178.136.229.251', '/garantija', 1439289398, 1439289398, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(143, '178.136.229.251', '/vozvrat', 1439289401, 1439289401, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(144, '178.136.229.251', '/', 1439289407, 1439289407, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(145, '178.136.229.251', '/', 1439290871, 1439290871, '200 OK', 'Computer', 'Google favicon', 1),
(146, '178.136.229.251', '/', 1439292726, 1439292726, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(147, '178.136.229.251', '/', 1439292782, 1439292782, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(148, '178.136.229.251', '/', 1439295963, 1439295963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(149, '178.136.229.251', '/', 1439295994, 1439295994, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(150, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1439295997, 1439295997, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(151, '178.136.229.251', '/product/sdfsdfsdfsd', 1439295999, 1439295999, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(152, '178.136.229.251', '/product/sdfsdfsdfsd', 1439296010, 1439296010, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(153, '178.136.229.251', '/product/sdfsdfsdfsd', 1439296017, 1439296017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(154, '178.136.229.251', '/product/sdfsdfsdfsd', 1439296024, 1439296024, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(155, '178.136.229.251', '/product/sdfsdfsdfsd', 1439296033, 1439296033, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(156, '178.136.229.251', '/', 1439296648, 1439296648, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(157, '178.136.229.251', '/catalog', 1439296668, 1439296668, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(158, '178.136.229.251', '/', 1439304062, 1439304062, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(159, '62.76.103.139', '/product/nike_air_max_90_hyperfuse2018', 1439317767, 1439317767, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1),
(160, '62.76.103.137', '/', 1439323710, 1439323710, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36', 1),
(161, '178.136.229.251', '/', 1439360027, 1439360027, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(162, '178.136.229.251', '/catalog', 1439360058, 1439360058, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(163, '178.136.229.251', '/contact', 1439360070, 1439360070, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(164, '178.136.229.251', '/faq', 1439360072, 1439360072, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(165, '178.136.229.251', '/articles', 1439360074, 1439360074, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(166, '178.136.229.251', '/', 1439360078, 1439360078, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(167, '178.136.229.251', '/', 1439362883, 1439362883, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(168, '178.136.229.251', '/', 1439362926, 1439362926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(169, '178.136.229.251', '/', 1439362963, 1439362963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(170, '178.136.229.251', '/', 1439362986, 1439362986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(171, '178.136.229.251', '/', 1439368330, 1439368330, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(172, '178.136.229.251', '/', 1439368356, 1439368356, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(173, '178.136.229.251', '/', 1439368356, 1439368356, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(174, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1439368389, 1439368389, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(175, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1439368393, 1439368393, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36', 1),
(176, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1439368394, 1439368394, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25', 1),
(177, '178.136.229.251', '/', 1439379342, 1439379342, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.134 Safari/537.36', 1),
(178, '104.45.18.178', '/', 1439379431, 1439379431, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', 1),
(179, '23.101.61.176', '/', 1439381412, 1439381412, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', 1),
(180, '188.163.64.164', '/', 1439407765, 1439407765, '200 OK', 'Computer', 'Google favicon', 1),
(181, '178.136.229.251', '/', 1439441677, 1439441677, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(182, '178.136.229.251', '/brands', 1439441683, 1439441683, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(183, '178.136.229.251', '/brands/asics', 1439441686, 1439441686, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(184, '178.136.229.251', '/brands//asics', 1439441692, 1439441692, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(185, '178.136.229.251', '//brands/asics', 1439441700, 1439441700, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(186, '178.136.229.251', '///brands/asics', 1439441709, 1439441709, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(187, '178.136.229.251', '////brands/asics', 1439441715, 1439441715, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(188, '178.136.229.251', '/', 1439444334, 1439444334, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(189, '178.136.229.251', '/', 1439445229, 1439445229, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(190, '178.136.229.251', '/', 1439448410, 1439448410, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(191, '178.136.229.251', '/', 1439448771, 1439448771, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(192, '178.136.229.251', '/o_nas', 1439448889, 1439448889, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(193, '178.136.229.251', '/', 1439450286, 1439450286, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(194, '178.136.229.251', '/', 1439450543, 1439450543, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(195, '178.136.229.251', '/', 1439452907, 1439452907, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(196, '127.0.0.1', '/', 1439456956, 1439456956, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(197, '127.0.0.1', '/o_nas', 1439462476, 1439462476, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(198, '127.0.0.1', '/news', 1439462486, 1439462486, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(199, '127.0.0.1', '/news', 1439462513, 1439462513, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(200, '127.0.0.1', '/news/vchapsrol54642505', 1439462525, 1439462525, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(201, '127.0.0.1', '/', 1439468619, 1439468619, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(202, '178.136.229.251', '/', 1439469662, 1439469662, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(203, '178.136.229.251', '/', 1439469671, 1439469671, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36', 1),
(204, '127.0.0.1', '/', 1439482866, 1439482866, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(205, '127.0.0.1', '/', 1439488458, 1439488458, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(206, '127.0.0.1', '/popular', 1439488525, 1439488525, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(207, '127.0.0.1', '/catalog', 1439488539, 1439488539, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(208, '127.0.0.1', '/news/vchapsrol54642505', 1439488575, 1439488575, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(209, '127.0.0.1', '/catalog', 1439488581, 1439488581, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(210, '127.0.0.1', '/popular', 1439488586, 1439488586, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(211, '127.0.0.1', '/', 1439488590, 1439488590, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(212, '23.101.61.176', '/', 1439528445, 1439528445, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) SkypeUriPreview Preview/0.5', 1),
(213, '127.0.0.1', '/', 1439533241, 1439533241, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/43.0.2357.130 Chrome/43.0.2357.130 Safari/537.36', 1),
(214, '178.136.229.251', '/', 1439551359, 1439551359, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(215, '178.136.229.251', '/', 1439553698, 1439553698, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(216, '178.136.229.251', '/', 1439562190, 1439562190, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(217, '46.175.163.12', '/', 1439646251, 1439646251, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36', 1),
(218, '46.175.163.12', '/product/nike_air_max_90_hyperfuse2018', 1439646283, 1439646283, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.3; GT-I9300 Build/JSS15J) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.133 Mobile Safari/537.36', 1),
(219, '178.136.229.251', '/', 1439791955, 1439791955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(220, '178.136.229.251', '/', 1439792001, 1439792001, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(221, '178.136.229.251', '/', 1439795819, 1439795819, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(222, '178.136.229.251', '/', 1439796173, 1439796173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(223, '178.136.229.251', '/new', 1439796563, 1439796563, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(224, '178.136.229.251', '/catalog', 1439796566, 1439796566, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(225, '178.136.229.251', '/catalog/for_men', 1439796569, 1439796569, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(226, '178.136.229.251', '/articles/dfgfdg41222', 1439796582, 1439796582, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(227, '178.136.229.251', '/catalog/kedy', 1439796613, 1439796613, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(228, '178.136.229.251', '/catalog/for_men', 1439796616, 1439796616, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(229, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1439796619, 1439796619, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(230, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1439796635, 1439796635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(231, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1439796691, 1439796691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(232, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/brand=nike', 1439797004, 1439797004, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(233, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/brand=nike&model=air_max_90_vt', 1439797488, 1439797488, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(234, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/brand=nike&model=air_max_87,air_max_90_vt', 1439797493, 1439797493, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(235, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/brand=nike&model=air_max_87', 1439797495, 1439797495, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(236, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/brand=nike', 1439797503, 1439797503, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(237, '178.136.229.251', '/', 1439797544, 1439797544, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(238, '178.136.229.251', '/articles/dfgfdg41222', 1439797887, 1439797887, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(239, '178.136.229.251', '/', 1439797897, 1439797897, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(240, '178.136.229.251', '/', 1439797901, 1439797901, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(241, '178.136.229.251', '/', 1439797903, 1439797903, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(242, '178.136.229.251', '/', 1439797927, 1439797927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(243, '178.136.229.251', '/', 1439797939, 1439797939, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(244, '178.136.229.251', '/', 1439797999, 1439797999, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(245, '178.136.229.251', '/', 1439798129, 1439798129, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(246, '178.136.229.251', '/', 1439798393, 1439798393, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(247, '178.136.229.251', '/oplata', 1439798492, 1439798492, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(248, '178.136.229.251', '/garantija', 1439798533, 1439798533, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(249, '178.136.229.251', '/vozvrat', 1439798536, 1439798536, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(250, '178.136.229.251', '/dostavka', 1439798539, 1439798539, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(251, '178.136.229.251', '/garantija', 1439798556, 1439798556, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(252, '178.136.229.251', '/dostavka', 1439798558, 1439798558, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(253, '178.136.229.251', '/oplata', 1439798563, 1439798563, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(254, '178.136.229.251', '/catalog/aksessuary', 1439798567, 1439798567, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(255, '178.136.229.251', '/catalog', 1439798581, 1439798581, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(256, '178.136.229.251', '/', 1439798585, 1439798585, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(257, '178.136.229.251', '/faq', 1439798757, 1439798757, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(258, '178.136.229.251', '/', 1439798777, 1439798777, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(259, '178.136.229.251', '/brands', 1439798865, 1439798865, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(260, '178.136.229.251', '/sale', 1439798873, 1439798873, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(261, '178.136.229.251', '/popular', 1439798875, 1439798875, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(262, '178.136.229.251', '/new', 1439798876, 1439798876, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(263, '178.136.229.251', '/garantija', 1439798877, 1439798877, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(264, '178.136.229.251', '/new', 1439798878, 1439798878, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(265, '178.136.229.251', '/catalog', 1439798879, 1439798879, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(266, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1439798880, 1439798880, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(267, '178.136.229.251', '/catalog', 1439798882, 1439798882, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(268, '178.136.229.251', '/catalog/for_women', 1439798887, 1439798887, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(269, '178.136.229.251', '/catalog/for_men', 1439798891, 1439798891, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(270, '178.136.229.251', '/new', 1439798975, 1439798975, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(271, '178.136.229.251', '/popular', 1439798976, 1439798976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(272, '178.136.229.251', '/sale', 1439798990, 1439798990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(273, '178.136.229.251', '/sale', 1439799007, 1439799007, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(274, '178.136.229.251', '/popular', 1439799007, 1439799007, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(275, '178.136.229.251', '/new', 1439799146, 1439799146, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(276, '178.136.229.251', '/', 1439799284, 1439799284, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(277, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1439799433, 1439799433, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(278, '178.136.229.251', '/dostavka', 1439799534, 1439799534, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(279, '178.136.229.251', '/', 1439799535, 1439799535, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(280, '178.136.229.251', '/catalog', 1439799536, 1439799536, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(281, '178.136.229.251', '/cart', 1439799623, 1439799623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(282, '178.136.229.251', '/sitemap', 1439800413, 1439800413, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(283, '178.136.229.251', '/new', 1439800480, 1439800480, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(284, '178.136.229.251', '/brands', 1439800489, 1439800489, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(285, '178.136.229.251', '/brands/nike', 1439800555, 1439800555, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(286, '127.0.0.1', '/', 1439800606, 1439800606, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(287, '178.136.229.251', '/brands', 1439800867, 1439800867, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(288, '178.136.229.251', '/brands/nike', 1439800878, 1439800878, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(289, '178.136.229.251', '/', 1439801423, 1439801423, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(290, '178.136.229.251', '/news/vchapsrol54642505', 1439801429, 1439801429, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(291, '178.136.229.251', '/news', 1439801432, 1439801432, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(292, '178.136.229.251', '/', 1439805241, 1439805241, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(293, '178.136.229.251', '/', 1439805251, 1439805251, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(294, '178.136.229.251', '/', 1439805258, 1439805258, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(295, '178.136.229.251', '/', 1439805265, 1439805265, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(296, '178.136.229.251', '/', 1439805271, 1439805271, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(297, '178.136.229.251', '/', 1439805313, 1439805313, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(298, '178.136.229.251', '/', 1439805320, 1439805320, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(299, '178.136.229.251', '/', 1439805345, 1439805345, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(300, '178.136.229.251', '/', 1439805350, 1439805350, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(301, '178.136.229.251', '/', 1439805398, 1439805398, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(302, '178.136.229.251', '/', 1439805411, 1439805411, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(303, '178.136.229.251', '/', 1439805586, 1439805586, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(304, '178.136.229.251', '/', 1439805925, 1439805925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(305, '178.136.229.251', '/', 1439805990, 1439805990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(306, '178.136.229.251', '/', 1439805991, 1439805991, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(307, '178.136.229.251', '/', 1439806009, 1439806009, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(308, '178.136.229.251', '/', 1439806096, 1439806096, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(309, '178.136.229.251', '/', 1439806812, 1439806812, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(310, '178.136.229.251', '/', 1439809084, 1439809084, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(311, '178.136.229.251', '/', 1439809468, 1439809468, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(312, '178.136.229.251', '/', 1439810411, 1439810411, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(313, '178.136.229.251', '/', 1439813534, 1439813534, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(314, '178.136.229.251', '/', 1439813591, 1439813591, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(315, '178.136.229.251', '/new', 1439813599, 1439813599, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(316, '178.136.229.251', '/catalog/kedy', 1439813600, 1439813600, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(317, '178.136.229.251', '/', 1439813899, 1439813899, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(318, '178.136.229.251', '/', 1439814361, 1439814361, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(319, '178.136.229.251', '/o_nas', 1439814407, 1439814407, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(320, '178.136.229.251', '/news', 1439814409, 1439814409, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(321, '178.136.229.251', '/', 1439814416, 1439814416, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(322, '178.136.229.251', '/vozvrat', 1439814603, 1439814603, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(323, '178.136.229.251', '/catalog', 1439814609, 1439814609, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(324, '37.53.164.140', '/', 1439815475, 1439815475, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(325, '178.136.229.251', '/catalog', 1439817032, 1439817032, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(326, '178.136.229.251', '/', 1439817034, 1439817034, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(327, '178.136.229.251', '/', 1439817037, 1439817037, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(328, '178.136.229.251', '/', 1439817762, 1439817762, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(329, '178.136.229.251', '/', 1439818799, 1439818799, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(330, '178.136.229.251', '/garantija', 1439819185, 1439819185, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(331, '178.136.229.251', '/', 1439820666, 1439820666, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(332, '178.136.229.251', '/', 1439880617, 1439880617, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(333, '178.136.229.251', '/', 1439880622, 1439880622, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(334, '178.136.229.251', '/', 1439881965, 1439881965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(335, '178.136.229.251', '/news?asdsad=asdasd', 1439884438, 1439884438, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(336, '178.136.229.251', '/', 1439885254, 1439885254, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(337, '178.136.229.251', '/', 1439885621, 1439885621, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(338, '178.136.229.251', '/', 1439886741, 1439886741, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(339, '178.136.229.251', '/', 1439887320, 1439887320, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(340, '178.136.229.251', '/', 1439887955, 1439887955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(341, '178.136.229.251', '/new', 1439887965, 1439887965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(342, '178.136.229.251', '/catalog', 1439887968, 1439887968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(343, '178.136.229.251', '/new', 1439887973, 1439887973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(344, '178.136.229.251', '/', 1439887978, 1439887978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(345, '178.136.229.251', '/', 1439887991, 1439887991, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(346, '178.136.229.251', '/news', 1439888061, 1439888061, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(347, '178.136.229.251', '/news/vchapsrol54642505', 1439888287, 1439888287, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(348, '178.136.229.251', '/news', 1439888290, 1439888290, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(349, '178.136.229.251', '/', 1439895257, 1439895257, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(350, '178.136.229.251', '/new', 1439895268, 1439895268, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(351, '178.136.229.251', '/popular', 1439895269, 1439895269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(352, '178.136.229.251', '/sale', 1439895270, 1439895270, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(353, '178.136.229.251', '/brands', 1439895271, 1439895271, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(354, '178.136.229.251', '/articles', 1439895274, 1439895274, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(355, '178.136.229.251', '/', 1439895407, 1439895407, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(356, '178.136.229.251', '/articles', 1439895412, 1439895412, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(357, '178.136.229.251', '/', 1439896673, 1439896673, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(358, '178.136.229.251', '/articles', 1439896720, 1439896720, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(359, '178.136.229.251', '/', 1439897189, 1439897189, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(360, '178.136.229.251', '/articles', 1439897203, 1439897203, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(361, '178.136.229.251', '/news', 1439897205, 1439897205, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(362, '178.136.229.251', '/news', 1439897240, 1439897240, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(363, '178.136.229.251', '/', 1439897583, 1439897583, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(364, '178.136.229.251', '/', 1439898160, 1439898160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(365, '178.136.229.251', '/', 1439898190, 1439898190, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(366, '178.136.229.251', '/', 1439898266, 1439898266, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(367, '178.136.229.251', '/', 1439898305, 1439898305, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(368, '178.136.229.251', '/', 1439898479, 1439898479, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(369, '178.136.229.251', '/', 1439898635, 1439898635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(370, '178.136.229.251', '/popular', 1439898687, 1439898687, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(371, '178.136.229.251', '/dostavka', 1439898697, 1439898697, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(372, '178.136.229.251', '/oplata', 1439898702, 1439898702, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(373, '178.136.229.251', '/garantija', 1439898706, 1439898706, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(374, '178.136.229.251', '/vozvrat', 1439898708, 1439898708, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(375, '178.136.229.251', '/dostavka', 1439898710, 1439898710, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(376, '178.136.229.251', '/', 1439898732, 1439898732, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(377, '178.136.229.251', '/dostavka', 1439898762, 1439898762, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(378, '178.136.229.251', '/', 1439898781, 1439898781, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(379, '178.136.229.251', '/articles', 1439898789, 1439898789, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(380, '178.136.229.251', '/dostavka', 1439898833, 1439898833, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(381, '178.136.229.251', '/dostavka', 1439898858, 1439898858, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(382, '178.136.229.251', '/oplata', 1439898864, 1439898864, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(383, '178.136.229.251', '/oplata', 1439898913, 1439898913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(384, '178.136.229.251', '/oplata', 1439898946, 1439898946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(385, '178.136.229.251', '/oplata', 1439898965, 1439898965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(386, '178.136.229.251', '/garantija', 1439898973, 1439898973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(387, '178.136.229.251', '/garantija', 1439899022, 1439899022, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(388, '178.136.229.251', '/vozvrat', 1439899029, 1439899029, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(389, '178.136.229.251', '/vozvrat', 1439899082, 1439899082, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(390, '178.136.229.251', '/sale', 1439899088, 1439899088, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(391, '178.136.229.251', '/sale', 1439899107, 1439899107, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(392, '178.136.229.251', '/', 1439899117, 1439899117, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(393, '178.136.229.251', '/', 1439899283, 1439899283, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(394, '178.136.229.251', '/', 1439899323, 1439899323, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(395, '178.136.229.251', '/sale', 1439899331, 1439899331, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(396, '178.136.229.251', '/articles', 1439899335, 1439899335, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(397, '178.136.229.251', '/news', 1439899342, 1439899342, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(398, '178.136.229.251', '/articles', 1439899348, 1439899348, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(399, '178.136.229.251', '/articles', 1439899371, 1439899371, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(400, '178.136.229.251', '/', 1439899373, 1439899373, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(401, '178.136.229.251', '/news', 1439899388, 1439899388, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(402, '178.136.229.251', '/articles', 1439899400, 1439899400, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(403, '178.136.229.251', '/', 1439899408, 1439899408, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(404, '178.136.229.251', '/news', 1439899429, 1439899429, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(405, '178.136.229.251', '/contact', 1439899437, 1439899437, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(406, '178.136.229.251', '/articles', 1439899450, 1439899450, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(407, '178.136.229.251', '/', 1439899454, 1439899454, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(408, '178.136.229.251', '/', 1439899458, 1439899458, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(409, '178.136.229.251', '/', 1439899487, 1439899487, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(410, '178.136.229.251', '/articles', 1439899490, 1439899490, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(411, '178.136.229.251', '/articles', 1439899493, 1439899493, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(412, '178.136.229.251', '/news', 1439899495, 1439899495, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(413, '178.136.229.251', '/faq', 1439899497, 1439899497, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(414, '178.136.229.251', '/contact', 1439899512, 1439899512, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(415, '178.136.229.251', '/o_nas', 1439899515, 1439899515, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(416, '178.136.229.251', '/', 1439899520, 1439899520, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(417, '178.136.229.251', '/articles/kak-vybrat-muzhskie-krossovki', 1439899567, 1439899567, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(418, '178.136.229.251', '/articles/kak-vybrat-muzhskie-krossovki', 1439899851, 1439899851, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(419, '178.136.229.251', '/faq', 1439899869, 1439899869, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(420, '178.136.229.251', '/faq', 1439899945, 1439899945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(421, '178.136.229.251', '/faq', 1439899972, 1439899972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(422, '178.136.229.251', '/faq', 1439899992, 1439899992, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(423, '178.136.229.251', '/', 1439900106, 1439900106, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(424, '178.136.229.251', '/', 1439900110, 1439900110, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(425, '178.136.229.251', '/', 1439900128, 1439900128, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(426, '178.136.229.251', '/', 1439900262, 1439900262, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(427, '178.136.229.251', '/', 1439901658, 1439901658, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(428, '178.136.229.251', '/o_nas', 1439901740, 1439901740, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(429, '178.136.229.251', '/', 1439903747, 1439903747, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(430, '178.136.229.251', '/articles', 1439903931, 1439903931, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(431, '127.0.0.1', '/', 1439905302, 1439905302, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(432, '127.0.0.1', '/', 1439905406, 1439905406, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(433, '178.136.229.251', '/', 1439906277, 1439906277, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(434, '178.136.229.251', '/', 1439906279, 1439906279, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(435, '127.0.0.1', '/', 1439906519, 1439906519, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(436, '178.136.229.251', '/', 1439906879, 1439906879, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(437, '178.136.229.251', '/', 1439907130, 1439907130, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(438, '178.136.229.251', '/', 1439909069, 1439909069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(439, '178.136.229.251', '/', 1439909197, 1439909197, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(440, '178.136.229.251', '/', 1439909251, 1439909251, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(441, '178.136.229.251', '/popular', 1439909265, 1439909265, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(442, '178.136.229.251', '/contact', 1439909269, 1439909269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(443, '178.136.229.251', '/contact', 1439909361, 1439909361, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(444, '178.136.229.251', '/sale', 1439909363, 1439909363, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(445, '178.136.229.251', '/brands', 1439909364, 1439909364, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(446, '178.136.229.251', '/popular', 1439909366, 1439909366, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(447, '178.136.229.251', '/new', 1439909367, 1439909367, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(448, '178.136.229.251', '/catalog', 1439909367, 1439909367, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(449, '178.136.229.251', '/', 1439909368, 1439909368, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(450, '37.53.164.140', '/', 1439912938, 1439912938, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(451, '37.53.164.140', '/new', 1439912997, 1439912997, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(452, '127.0.0.1', '/', 1439979017, 1439979017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(453, '127.0.0.1', '/', 1439979094, 1439979094, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(454, '127.0.0.1', '/', 1439979495, 1439979495, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(455, '178.136.229.251', '/', 1439989703, 1439989703, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(456, '178.136.229.251', '/otziv', 1439989712, 1439989712, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(457, '178.136.229.251', '/', 1440054846, 1440054846, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(458, '178.136.229.251', '/', 1440075766, 1440075766, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(459, '178.136.229.251', '/new', 1440075799, 1440075799, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(460, '178.136.229.251', '/catalog', 1440075801, 1440075801, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(461, '178.136.229.251', '/catalog/for_women', 1440075803, 1440075803, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(462, '178.136.229.251', '/catalog/krossovki', 1440075805, 1440075805, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(463, '178.136.229.251', '/', 1440075808, 1440075808, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(464, '178.136.229.251', '/', 1440136622, 1440136622, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(465, '178.136.229.251', '/otziv', 1440136638, 1440136638, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(466, '178.136.229.251', '/otziv', 1440136647, 1440136647, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(467, '178.136.229.251', '/brands', 1440136662, 1440136662, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(468, '178.136.229.251', '/popular', 1440136664, 1440136664, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(469, '178.136.229.251', '/new', 1440136665, 1440136665, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(470, '178.136.229.251', '/catalog', 1440136666, 1440136666, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(471, '178.136.229.251', '/otziv', 1440136672, 1440136672, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(472, '178.136.229.251', '/otziv', 1440136678, 1440136678, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(473, '178.136.229.251', '/', 1440140829, 1440140829, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(474, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1440140842, 1440140842, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(475, '178.136.229.251', '/cart', 1440140851, 1440140851, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(476, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1440140860, 1440140860, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(477, '178.136.229.251', '/', 1440141081, 1440141081, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(478, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1440141087, 1440141087, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(479, '178.136.229.251', '/', 1440141854, 1440141854, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(480, '178.136.229.251', '/cart', 1440141876, 1440141876, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(481, '178.136.229.251', '/catalog', 1440141879, 1440141879, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(482, '178.136.229.251', '/cart', 1440141888, 1440141888, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(483, '46.33.235.207', '/', 1440142147, 1440142147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(484, '178.136.229.251', '/', 1440144518, 1440144518, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(485, '178.136.229.251', '/cart', 1440144539, 1440144539, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(486, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1440144546, 1440144546, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(487, '178.136.229.251', '/cart', 1440144552, 1440144552, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(488, '178.136.229.251', '/cart', 1440144586, 1440144586, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(489, '178.136.229.251', '/cart', 1440144616, 1440144616, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(490, '178.136.229.251', '/news', 1440145328, 1440145328, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(491, '127.0.0.1', '/', 1440158668, 1440158668, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2488.0 Safari/537.36', 1),
(492, '178.136.229.251', '/', 1440159069, 1440159069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(493, '178.136.229.251', '/otziv', 1440159072, 1440159072, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(494, '178.136.229.251', '/', 1440231859, 1440231859, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(495, '37.115.37.41', '/', 1440316869, 1440316869, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(496, '37.115.37.41', '/otziv', 1440317540, 1440317540, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(497, '178.136.229.251', '/', 1440322389, 1440322389, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(498, '127.0.0.1', '/', 1440402219, 1440402219, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(499, '127.0.0.1', '/', 1440402338, 1440402338, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(500, '127.0.0.1', '/', 1440402425, 1440402425, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(501, '127.0.0.1', '/', 1440402429, 1440402429, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(502, '127.0.0.1', '/', 1440402855, 1440402855, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(503, '127.0.0.1', '/', 1440402884, 1440402884, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(504, '127.0.0.1', '/', 1440402885, 1440402885, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(505, '127.0.0.1', '/', 1440402886, 1440402886, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(506, '127.0.0.1', '/', 1440402886, 1440402886, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(507, '127.0.0.1', '/', 1440402887, 1440402887, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(508, '127.0.0.1', '/', 1440402888, 1440402888, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(509, '127.0.0.1', '/', 1440402889, 1440402889, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(510, '127.0.0.1', '/', 1440402934, 1440402934, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(511, '127.0.0.1', '/', 1440402973, 1440402973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(512, '127.0.0.1', '/', 1440402977, 1440402977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(513, '127.0.0.1', '/', 1440402999, 1440402999, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(514, '127.0.0.1', '/', 1440403002, 1440403002, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(515, '127.0.0.1', '/', 1440403052, 1440403052, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(516, '127.0.0.1', '/catalog', 1440403303, 1440403303, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(517, '127.0.0.1', '/catalog', 1440403572, 1440403572, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(518, '127.0.0.1', '/contact', 1440403576, 1440403576, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(519, '127.0.0.1', '/', 1440403588, 1440403588, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2489.0 Safari/537.36', 1),
(520, '178.136.229.251', '/', 1440405377, 1440405377, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:39.0) Gecko/20100101 Firefox/39.0', 1),
(521, '46.175.163.12', '/w', 1440409370, 1440409370, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(522, '127.0.0.1', '/', 1440485338, 1440485338, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(523, '127.0.0.1', '/', 1440485651, 1440485651, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(524, '127.0.0.1', '/', 1440485655, 1440485655, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(525, '127.0.0.1', '/', 1440485658, 1440485658, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(526, '127.0.0.1', '/', 1440485800, 1440485800, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(527, '127.0.0.1', '/', 1440489200, 1440489200, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(528, '127.0.0.1', '/', 1440489346, 1440489346, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(529, '127.0.0.1', '/', 1440489363, 1440489363, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(530, '127.0.0.1', '/', 1440489408, 1440489408, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(531, '127.0.0.1', '/', 1440489522, 1440489522, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(532, '127.0.0.1', '/', 1440489935, 1440489935, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(533, '127.0.0.1', '/', 1440490134, 1440490134, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(534, '127.0.0.1', '/', 1440490517, 1440490517, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(535, '127.0.0.1', '/', 1440490776, 1440490776, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(536, '127.0.0.1', '/', 1440490887, 1440490887, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(537, '127.0.0.1', '/', 1440490910, 1440490910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(538, '127.0.0.1', '/', 1440490954, 1440490954, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(539, '127.0.0.1', '/', 1440490957, 1440490957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(540, '127.0.0.1', '/', 1440490995, 1440490995, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(541, '127.0.0.1', '/', 1440491041, 1440491041, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(542, '127.0.0.1', '/', 1440491075, 1440491075, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(543, '127.0.0.1', '/', 1440491156, 1440491156, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(544, '127.0.0.1', '/', 1440491194, 1440491194, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(545, '127.0.0.1', '/', 1440491224, 1440491224, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(546, '127.0.0.1', '/', 1440491236, 1440491236, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(547, '127.0.0.1', '/', 1440491315, 1440491315, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(548, '127.0.0.1', '/', 1440491362, 1440491362, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(549, '127.0.0.1', '/', 1440491454, 1440491454, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(550, '127.0.0.1', '/', 1440491539, 1440491539, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(551, '127.0.0.1', '/', 1440491630, 1440491630, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(552, '127.0.0.1', '/', 1440491661, 1440491661, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(553, '127.0.0.1', '/', 1440491696, 1440491696, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(554, '127.0.0.1', '/', 1440492017, 1440492017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(555, '127.0.0.1', '/', 1440492030, 1440492030, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(556, '127.0.0.1', '/', 1440492042, 1440492042, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(557, '127.0.0.1', '/', 1440492069, 1440492069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(558, '127.0.0.1', '/', 1440492073, 1440492073, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(559, '127.0.0.1', '/', 1440492153, 1440492153, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(560, '127.0.0.1', '/', 1440492162, 1440492162, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(561, '127.0.0.1', '/', 1440492269, 1440492269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(562, '178.136.229.251', '/', 1440499783, 1440499783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(563, '178.136.229.251', '/popular', 1440499804, 1440499804, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(564, '178.136.229.251', '/contacts', 1440499807, 1440499807, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(565, '178.136.229.251', '/new', 1440499812, 1440499812, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(566, '178.136.229.251', '/catalog', 1440499817, 1440499817, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36', 1),
(567, '178.136.229.251', '/', 1440568494, 1440568494, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(568, '178.136.229.251', '/wezzom', 1440568517, 1440568517, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(569, '141.101.7.200', '/', 1440574842, 1440574842, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(570, '178.136.229.251', '/', 1440598873, 1440598873, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(571, '127.0.0.1', '/', 1440620195, 1440620195, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(572, '127.0.0.1', '/', 1440620289, 1440620289, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(573, '127.0.0.1', '/', 1440620482, 1440620482, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(574, '127.0.0.1', '/', 1440620615, 1440620615, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(575, '127.0.0.1', '/', 1440620631, 1440620631, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(576, '127.0.0.1', '/', 1440620694, 1440620694, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(577, '127.0.0.1', '/', 1440620713, 1440620713, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(578, '127.0.0.1', '/', 1440621120, 1440621120, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(579, '127.0.0.1', '/', 1440621506, 1440621506, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(580, '127.0.0.1', '/', 1440621623, 1440621623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(581, '127.0.0.1', '/', 1440621665, 1440621665, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(582, '127.0.0.1', '/', 1440622185, 1440622185, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(583, '127.0.0.1', '/', 1440622752, 1440622752, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(584, '127.0.0.1', '/', 1440622770, 1440622770, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(585, '127.0.0.1', '/', 1440622828, 1440622828, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(586, '127.0.0.1', '/', 1440622866, 1440622866, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(587, '127.0.0.1', '/', 1440622906, 1440622906, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(588, '127.0.0.1', '/', 1440622952, 1440622952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(589, '127.0.0.1', '/', 1440622986, 1440622986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(590, '127.0.0.1', '/', 1440623030, 1440623030, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(591, '127.0.0.1', '/', 1440623075, 1440623075, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(592, '127.0.0.1', '/', 1440623210, 1440623210, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(593, '127.0.0.1', '/', 1440623374, 1440623374, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(594, '127.0.0.1', '/', 1440623403, 1440623403, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(595, '127.0.0.1', '/', 1440624314, 1440624314, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(596, '127.0.0.1', '/', 1440624322, 1440624322, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(597, '127.0.0.1', '/', 1440624679, 1440624679, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(598, '127.0.0.1', '/', 1440624795, 1440624795, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(599, '127.0.0.1', '/backend/index', 1440624823, 1440624823, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(600, '127.0.0.1', '/', 1440655447, 1440655447, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(601, '127.0.0.1', '/catalog/krossovki_dlja_bega', 1440655465, 1440655465, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(602, '127.0.0.1', '/', 1440656821, 1440656821, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(603, '127.0.0.1', '/', 1440658550, 1440658550, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(604, '127.0.0.1', '/', 1440658692, 1440658692, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(605, '178.136.229.251', '/', 1440658878, 1440658878, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(606, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1440658886, 1440658886, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(607, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/min_cost=1029&max_cost=2030', 1440658896, 1440658896, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(608, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/min_cost=1029&max_cost=2030&material=sintetik', 1440658899, 1440658899, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(609, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/min_cost=1029&max_cost=2030&country=china&material=sintetik', 1440658903, 1440658903, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(610, '178.136.229.251', '/', 1440658929, 1440658929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(611, '127.0.0.1', '/', 1440659136, 1440659136, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(612, '127.0.0.1', '/', 1440659139, 1440659139, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(613, '127.0.0.1', '/', 1440659549, 1440659549, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(614, '127.0.0.1', '/', 1440659585, 1440659585, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(615, '127.0.0.1', '/', 1440660127, 1440660127, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(616, '127.0.0.1', '/', 1440660135, 1440660135, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(617, '127.0.0.1', '/', 1440660140, 1440660140, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(618, '127.0.0.1', '/', 1440660171, 1440660171, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(619, '127.0.0.1', '/', 1440660175, 1440660175, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(620, '127.0.0.1', '/', 1440660197, 1440660197, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(621, '127.0.0.1', '/', 1440660220, 1440660220, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(622, '127.0.0.1', '/', 1440660229, 1440660229, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(623, '127.0.0.1', '/', 1440660246, 1440660246, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(624, '127.0.0.1', '/', 1440660289, 1440660289, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(625, '127.0.0.1', '/', 1440660609, 1440660609, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(626, '127.0.0.1', '/', 1440660722, 1440660722, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(627, '127.0.0.1', '/', 1440660854, 1440660854, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(628, '127.0.0.1', '/', 1440660863, 1440660863, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(629, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1440660906, 1440660906, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(630, '178.136.229.251', '/cart', 1440660915, 1440660915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(631, '178.136.229.251', '/cart', 1440660945, 1440660945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(632, '127.0.0.1', '/', 1440661363, 1440661363, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(633, '127.0.0.1', '/', 1440661835, 1440661835, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(634, '127.0.0.1', '/', 1440661873, 1440661873, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(635, '127.0.0.1', '/', 1440661902, 1440661902, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(636, '127.0.0.1', '/', 1440662096, 1440662096, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(637, '127.0.0.1', '/', 1440662185, 1440662185, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(638, '127.0.0.1', '/', 1440662289, 1440662289, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(639, '127.0.0.1', '/', 1440662315, 1440662315, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(640, '127.0.0.1', '/', 1440662320, 1440662320, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(641, '127.0.0.1', '/', 1440662357, 1440662357, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(642, '127.0.0.1', '/%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%D1%84%D1%8B%D0%B2%D0%B0', 1440662824, 1440662824, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(643, '127.0.0.1', '/%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%D1%84%D1%8B%D0%B2%D0%B0', 1440663006, 1440663006, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(644, '127.0.0.1', '/%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%D1%84%D1%8B%D0%B2%D0%B0', 1440663032, 1440663032, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(645, '127.0.0.1', '/%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%D1%84%D1%8B%D0%B2%D0%B0', 1440663050, 1440663050, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(646, '127.0.0.1', '/%D1%8B%D0%B2%D0%B0%D1%8B%D1%84%D0%B2%D0%B0%D1%84%D1%8B%D0%B2%D0%B0', 1440663055, 1440663055, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(647, '127.0.0.1', '/', 1440663187, 1440663187, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(648, '127.0.0.1', '/%D1%81%D1%84%D0%B5%D1%84%D0%B4%D1%89%D0%BF', 1440663232, 1440663232, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(649, '127.0.0.1', '/catalog', 1440663237, 1440663237, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(650, '127.0.0.1', '/', 1440663242, 1440663242, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(651, '127.0.0.1', '/', 1440663353, 1440663353, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(652, '127.0.0.1', '/', 1440663382, 1440663382, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(653, '127.0.0.1', '/', 1440663407, 1440663407, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(654, '127.0.0.1', '/', 1440663438, 1440663438, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(655, '127.0.0.1', '/', 1440663449, 1440663449, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(656, '127.0.0.1', '/', 1440663462, 1440663462, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(657, '127.0.0.1', '/', 1440663512, 1440663512, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(658, '127.0.0.1', '/', 1440663596, 1440663596, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(659, '127.0.0.1', '/', 1440663608, 1440663608, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(660, '127.0.0.1', '/', 1440663864, 1440663864, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(661, '127.0.0.1', '/', 1440663952, 1440663952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(662, '127.0.0.1', '/', 1440664063, 1440664063, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(663, '127.0.0.1', '/', 1440665000, 1440665000, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(664, '127.0.0.1', '/', 1440665067, 1440665067, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(665, '127.0.0.1', '/', 1440665131, 1440665131, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(666, '127.0.0.1', '/o-kompanii', 1440665324, 1440665324, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(667, '127.0.0.1', '/o-kompanii', 1440665361, 1440665361, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(668, '127.0.0.1', '/o-kompanii', 1440665430, 1440665430, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(669, '127.0.0.1', '/o-kompanii', 1440665509, 1440665509, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(670, '127.0.0.1', '/o-kompanii', 1440665534, 1440665534, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(671, '127.0.0.1', '/o-kompanii', 1440665607, 1440665607, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(672, '127.0.0.1', '/o-kompanii', 1440665659, 1440665659, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(673, '127.0.0.1', '/o-kompanii', 1440665704, 1440665704, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(674, '127.0.0.1', '/o-kompanii', 1440665731, 1440665731, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(675, '127.0.0.1', '/o-kompanii', 1440665926, 1440665926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(676, '127.0.0.1', '/o-kompanii', 1440666029, 1440666029, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(677, '127.0.0.1', '/index', 1440666067, 1440666067, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(678, '127.0.0.1', '/o-kompanii', 1440666072, 1440666072, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(679, '127.0.0.1', '/o-kompanii', 1440666103, 1440666103, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(680, '127.0.0.1', '/', 1440666106, 1440666106, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(681, '127.0.0.1', '/', 1440666991, 1440666991, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(682, '127.0.0.1', '/o-kompanii', 1440666995, 1440666995, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(683, '127.0.0.1', '/news', 1440667004, 1440667004, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(684, '127.0.0.1', '/oplata', 1440667009, 1440667009, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(685, '127.0.0.1', '/oplata', 1440667071, 1440667071, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(686, '127.0.0.1', '/oplata', 1440667118, 1440667118, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(687, '127.0.0.1', '/oplata', 1440667174, 1440667174, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(688, '127.0.0.1', '/', 1440667243, 1440667243, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(689, '127.0.0.1', '/', 1440667262, 1440667262, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(690, '127.0.0.1', '/o-kompanii', 1440667266, 1440667266, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(691, '127.0.0.1', '/news', 1440667273, 1440667273, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(692, '127.0.0.1', '/oplata', 1440667277, 1440667277, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(693, '127.0.0.1', '/dostavka', 1440667285, 1440667285, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(694, '127.0.0.1', '/kak-zakazat', 1440667288, 1440667288, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(695, '127.0.0.1', '/kak-zakazat', 1440667289, 1440667289, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(696, '127.0.0.1', '/contacts', 1440667294, 1440667294, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(697, '127.0.0.1', '/', 1440671270, 1440671270, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(698, '127.0.0.1', '/o-kompanii', 1440671339, 1440671339, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(699, '127.0.0.1', '/contacts', 1440671342, 1440671342, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(700, '127.0.0.1', '/contacts', 1440671758, 1440671758, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(701, '127.0.0.1', '/', 1440671765, 1440671765, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(702, '127.0.0.1', '/news', 1440671845, 1440671845, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(703, '127.0.0.1', '/news', 1440672330, 1440672330, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(704, '127.0.0.1', '/news', 1440672408, 1440672408, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(705, '127.0.0.1', '/news', 1440672626, 1440672626, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(706, '127.0.0.1', '/news', 1440672772, 1440672772, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(707, '127.0.0.1', '/news', 1440672814, 1440672814, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(708, '127.0.0.1', '/news', 1440672949, 1440672949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(709, '127.0.0.1', '/news', 1440673014, 1440673014, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(710, '127.0.0.1', '/news/kak-vybrat-puhovik', 1440673019, 1440673019, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(711, '127.0.0.1', '/news/kak-vybrat-puhovik', 1440673399, 1440673399, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(712, '178.136.229.251', '/', 1440674526, 1440674526, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(713, '178.136.229.251', '/', 1440674608, 1440674608, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(714, '178.136.229.251', '/', 1440674621, 1440674621, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(715, '178.136.229.251', '/o-kompanii', 1440674623, 1440674623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(716, '178.136.229.251', '/news', 1440674627, 1440674627, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(717, '178.136.229.251', '/oplata', 1440674640, 1440674640, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(718, '178.136.229.251', '/dostavka', 1440674642, 1440674642, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(719, '178.136.229.251', '/', 1440675082, 1440675082, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(720, '178.136.229.251', '/faq', 1440675090, 1440675090, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(721, '178.136.229.251', '/vopros_2', 1440675093, 1440675093, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(722, '178.136.229.251', '/', 1440747601, 1440747601, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(723, '178.136.229.251', '/', 1440747631, 1440747631, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(724, '127.0.0.1', '/', 1440748806, 1440748806, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(725, '127.0.0.1', '/', 1440750229, 1440750229, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(726, '127.0.0.1', '/', 1440750462, 1440750462, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(727, '127.0.0.1', '/', 1440750492, 1440750492, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(728, '127.0.0.1', '/', 1440750525, 1440750525, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(729, '127.0.0.1', '/', 1440750617, 1440750617, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(730, '127.0.0.1', '/', 1440750758, 1440750758, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(731, '127.0.0.1', '/', 1440750803, 1440750803, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(732, '127.0.0.1', '/', 1440750846, 1440750846, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(733, '127.0.0.1', '/', 1440750896, 1440750896, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(734, '127.0.0.1', '/', 1440750948, 1440750948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(735, '127.0.0.1', '/', 1440750950, 1440750950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(736, '127.0.0.1', '/', 1440751043, 1440751043, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(737, '127.0.0.1', '/', 1440751063, 1440751063, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(738, '127.0.0.1', '/', 1440751256, 1440751256, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(739, '127.0.0.1', '/', 1440751289, 1440751289, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(740, '127.0.0.1', '/', 1440751305, 1440751305, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(741, '127.0.0.1', '/', 1440751349, 1440751349, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(742, '127.0.0.1', '/', 1440751354, 1440751354, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(743, '127.0.0.1', '/', 1440751389, 1440751389, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(744, '127.0.0.1', '/o_nas', 1440751393, 1440751393, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(745, '127.0.0.1', '/', 1440751397, 1440751397, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(746, '127.0.0.1', '/', 1440751410, 1440751410, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(747, '127.0.0.1', '/', 1440751435, 1440751435, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(748, '127.0.0.1', '/', 1440751479, 1440751479, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(749, '127.0.0.1', '/', 1440751529, 1440751529, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(750, '127.0.0.1', '/', 1440751545, 1440751545, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(751, '127.0.0.1', '/', 1440751568, 1440751568, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(752, '127.0.0.1', '/', 1440751591, 1440751591, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(753, '127.0.0.1', '/', 1440751600, 1440751600, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(754, '127.0.0.1', '/', 1440751618, 1440751618, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(755, '127.0.0.1', '/', 1440751650, 1440751650, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(756, '127.0.0.1', '/', 1440751660, 1440751660, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(757, '127.0.0.1', '/', 1440751675, 1440751675, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(758, '127.0.0.1', '/', 1440751691, 1440751691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(759, '127.0.0.1', '/', 1440751707, 1440751707, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(760, '127.0.0.1', '/', 1440751826, 1440751826, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(761, '127.0.0.1', '/', 1440751852, 1440751852, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(762, '127.0.0.1', '/', 1440751869, 1440751869, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(763, '127.0.0.1', '/', 1440751879, 1440751879, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(764, '127.0.0.1', '/', 1440751905, 1440751905, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(765, '127.0.0.1', '/', 1440751912, 1440751912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(766, '127.0.0.1', '/', 1440751935, 1440751935, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(767, '127.0.0.1', '/', 1440751950, 1440751950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(768, '127.0.0.1', '/', 1440751956, 1440751956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(769, '127.0.0.1', '/', 1440751975, 1440751975, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(770, '127.0.0.1', '/', 1440752008, 1440752008, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(771, '127.0.0.1', '/', 1440752065, 1440752065, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(772, '127.0.0.1', '/', 1440752094, 1440752094, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(773, '127.0.0.1', '/', 1440752345, 1440752345, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(774, '178.136.229.251', '/', 1440752371, 1440752371, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(775, '127.0.0.1', '/', 1440752395, 1440752395, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(776, '127.0.0.1', '/', 1440752396, 1440752396, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(777, '127.0.0.1', '/', 1440756363, 1440756363, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(778, '127.0.0.1', '/', 1440756497, 1440756497, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(779, '127.0.0.1', '/', 1440756548, 1440756548, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(780, '127.0.0.1', '/', 1440756635, 1440756635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(781, '127.0.0.1', '/', 1440756724, 1440756724, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(782, '127.0.0.1', '/', 1440756818, 1440756818, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(783, '127.0.0.1', '/', 1440757016, 1440757016, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(784, '127.0.0.1', '/', 1440757104, 1440757104, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(785, '127.0.0.1', '/', 1440757155, 1440757155, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(786, '127.0.0.1', '/', 1440757170, 1440757170, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(787, '178.136.229.251', '/', 1440757574, 1440757574, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(788, '178.136.229.251', '/', 1440759999, 1440759999, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(789, '178.136.229.251', '/', 1440760522, 1440760522, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(790, '178.136.229.251', '/o_nas', 1440760527, 1440760527, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(791, '178.136.229.251', '/', 1440760587, 1440760587, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(792, '178.136.229.251', '/o_nas', 1440760591, 1440760591, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(793, '178.136.229.251', '/', 1440761916, 1440761916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(794, '178.136.229.251', '/catalog', 1440761920, 1440761920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(795, '178.136.229.251', '/catalog/for_men', 1440761949, 1440761949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(796, '178.136.229.251', '/catalog/for_men', 1440762312, 1440762312, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(797, '178.136.229.251', '/catalog/for_women', 1440762318, 1440762318, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(798, '178.136.229.251', '/catalog/aksessuary', 1440762320, 1440762320, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(799, '178.136.229.251', '/catalog/for_men', 1440762326, 1440762326, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(800, '178.136.229.251', '/catalog/krossovki', 1440762330, 1440762330, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(801, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1440762334, 1440762334, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(802, '178.136.229.251', '/catalog/for_men', 1440766633, 1440766633, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(803, '178.136.229.251', '/', 1440931159, 1440931159, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(804, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1440931173, 1440931173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(805, '178.136.229.251', '/', 1440931265, 1440931265, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(806, '178.136.229.251', '/news', 1440932927, 1440932927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(807, '178.136.229.251', '/news/novye_krossovki_nike_air_force_1_low_purple_venom', 1440932930, 1440932930, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(808, '178.136.229.251', '/popular', 1440932944, 1440932944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(809, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1440932946, 1440932946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(810, '178.136.229.251', '/garantija', 1440932951, 1440932951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(811, '178.136.229.251', '/brands', 1440932956, 1440932956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(812, '178.136.229.251', '/brands/hater', 1440932959, 1440932959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(813, '178.136.229.251', '/brands', 1440932961, 1440932961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(814, '178.136.229.251', '/brands/asics', 1440932964, 1440932964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(815, '178.136.229.251', '/brands', 1440932966, 1440932966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(816, '178.136.229.251', '/brands/nike', 1440932972, 1440932972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(817, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1440933981, 1440933981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(818, '178.136.229.251', '/sale', 1440934313, 1440934313, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(819, '178.136.229.251', '/sale', 1441000342, 1441000342, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(820, '178.136.229.251', '/', 1441005228, 1441005228, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(821, '178.136.229.251', '/', 1441090884, 1441090884, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(822, '178.136.229.251', '/', 1441093059, 1441093059, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(823, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441093064, 1441093064, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(824, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441093066, 1441093066, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(825, '178.136.229.251', '/catalog', 1441093075, 1441093075, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(826, '178.136.229.251', '/catalog/for_men', 1441093147, 1441093147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(827, '178.136.229.251', '/catalog/for_men', 1441093149, 1441093149, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(828, '178.136.229.251', '/catalog', 1441093151, 1441093151, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(829, '178.136.229.251', '/catalog', 1441093370, 1441093370, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(830, '178.136.229.251', '/catalog/for_men', 1441093444, 1441093444, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(831, '178.136.229.251', '/catalog', 1441093450, 1441093450, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(832, '178.136.229.251', '/catalog/for_men', 1441093645, 1441093645, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(833, '178.136.229.251', '/catalog', 1441093648, 1441093648, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(834, '178.136.229.251', '/', 1441093649, 1441093649, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(835, '178.136.229.251', '/catalog', 1441093651, 1441093651, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(836, '178.136.229.251', '/', 1441093770, 1441093770, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(837, '178.136.229.251', '/catalog/for_men', 1441102131, 1441102131, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(838, '178.136.229.251', '/catalog', 1441102140, 1441102140, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(839, '178.136.229.251', '/', 1441116325, 1441116325, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(840, '178.136.229.251', '/', 1441176836, 1441176836, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(841, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441176889, 1441176889, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(842, '178.136.229.251', '/', 1441177770, 1441177770, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(843, '178.136.229.251', '/', 1441197461, 1441197461, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(844, '37.25.105.82', '/', 1441198859, 1441198859, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(845, '178.136.229.251', '/', 1441199455, 1441199455, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(846, '178.136.229.251', '/', 1441204856, 1441204856, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(847, '95.132.65.20', '/', 1441218023, 1441218023, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(848, '95.132.65.20', '/', 1441218028, 1441218028, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(849, '95.132.65.20', '/o_nas', 1441218388, 1441218388, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(850, '95.132.65.20', '/catalog/krossovki_dlja_bega', 1441218402, 1441218402, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(851, '95.132.65.20', '/popular', 1441218772, 1441218772, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(852, '95.132.65.20', '/new', 1441218776, 1441218776, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(853, '95.132.65.20', '/sale', 1441218783, 1441218783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(854, '95.132.65.20', '/brands', 1441218786, 1441218786, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(855, '178.136.229.251', '/', 1441268997, 1441268997, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(856, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1441269002, 1441269002, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(857, '178.136.229.251', '/', 1441274116, 1441274116, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(858, '178.136.229.251', '/', 1441274203, 1441274203, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(859, '178.136.229.251', '/', 1441275475, 1441275475, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(860, '178.136.229.251', '/', 1441282793, 1441282793, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(861, '178.136.229.251', '/o_nas', 1441283630, 1441283630, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(862, '178.136.229.251', '/', 1441294610, 1441294610, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(863, '178.136.229.251', '/', 1441344069, 1441344069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(864, '178.136.229.251', '/catalog', 1441344078, 1441344078, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(865, '178.136.229.251', '/catalog/krossovki', 1441344085, 1441344085, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(866, '178.136.229.251', '/catalog/krossovki?per_page=30&sort=cost&type=desc', 1441344089, 1441344089, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(867, '178.136.229.251', '/catalog/krossovki?per_page=30&sort=created_at&type=desc', 1441344094, 1441344094, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(868, '178.136.229.251', '/catalog/krossovki?per_page=30&sort=created_at&type=asc', 1441344097, 1441344097, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(869, '178.136.229.251', '/catalog/krossovki?per_page=30&sort=name&type=asc', 1441344099, 1441344099, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(870, '178.136.229.251', '/catalog/krossovki?per_page=30&sort=name&type=desc', 1441344102, 1441344102, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(871, '127.0.0.1', '/', 1441368336, 1441368336, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(872, '127.0.0.1', '/', 1441369069, 1441369069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(873, '127.0.0.1', '/', 1441369178, 1441369178, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(874, '127.0.0.1', '/', 1441369179, 1441369179, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(875, '127.0.0.1', '/', 1441369182, 1441369182, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(876, '127.0.0.1', '/', 1441369196, 1441369196, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(877, '127.0.0.1', '/', 1441369201, 1441369201, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(878, '127.0.0.1', '/', 1441369212, 1441369212, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(879, '127.0.0.1', '/', 1441369396, 1441369396, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(880, '127.0.0.1', '/', 1441369401, 1441369401, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(881, '127.0.0.1', '/popular', 1441369415, 1441369415, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(882, '127.0.0.1', '/', 1441369418, 1441369418, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(883, '127.0.0.1', '/', 1441369490, 1441369490, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(884, '127.0.0.1', '/', 1441369842, 1441369842, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(885, '127.0.0.1', '/', 1441369889, 1441369889, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(886, '127.0.0.1', '/', 1441369894, 1441369894, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(887, '127.0.0.1', '/', 1441369909, 1441369909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(888, '127.0.0.1', '/', 1441369950, 1441369950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(889, '127.0.0.1', '/', 1441369952, 1441369952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(890, '127.0.0.1', '/', 1441369969, 1441369969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(891, '127.0.0.1', '/', 1441369989, 1441369989, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(892, '127.0.0.1', '/', 1441369992, 1441369992, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(893, '127.0.0.1', '/', 1441370038, 1441370038, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(894, '127.0.0.1', '/', 1441370042, 1441370042, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(895, '127.0.0.1', '/', 1441370160, 1441370160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(896, '127.0.0.1', '/', 1441370163, 1441370163, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(897, '127.0.0.1', '/', 1441370220, 1441370220, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(898, '127.0.0.1', '/', 1441370223, 1441370223, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(899, '127.0.0.1', '/', 1441370262, 1441370262, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(900, '127.0.0.1', '/product/nike_air_max_90_hyperfuse', 1441370266, 1441370266, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(901, '127.0.0.1', '/', 1441370268, 1441370268, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(902, '127.0.0.1', '/', 1441370342, 1441370342, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(903, '127.0.0.1', '/', 1441370374, 1441370374, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(904, '127.0.0.1', '/', 1441370392, 1441370392, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(905, '127.0.0.1', '/', 1441370528, 1441370528, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(906, '127.0.0.1', '/', 1441370566, 1441370566, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(907, '127.0.0.1', '/', 1441370653, 1441370653, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(908, '127.0.0.1', '/', 1441370673, 1441370673, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(909, '127.0.0.1', '/', 1441370692, 1441370692, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(910, '127.0.0.1', '/', 1441370696, 1441370696, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(911, '127.0.0.1', '/', 1441370778, 1441370778, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(912, '127.0.0.1', '/', 1441370797, 1441370797, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(913, '127.0.0.1', '/', 1441370803, 1441370803, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(914, '127.0.0.1', '/', 1441370819, 1441370819, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(915, '127.0.0.1', '/catalog', 1441370823, 1441370823, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(916, '127.0.0.1', '/', 1441370826, 1441370826, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(917, '127.0.0.1', '/', 1441370881, 1441370881, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(918, '127.0.0.1', '/', 1441370893, 1441370893, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(919, '127.0.0.1', '/', 1441370975, 1441370975, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(920, '127.0.0.1', '/', 1441371047, 1441371047, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(921, '127.0.0.1', '/', 1441371053, 1441371053, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(922, '127.0.0.1', '/', 1441371101, 1441371101, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(923, '127.0.0.1', '/', 1441371213, 1441371213, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(924, '127.0.0.1', '/', 1441371253, 1441371253, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(925, '127.0.0.1', '/', 1441371263, 1441371263, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(926, '127.0.0.1', '/', 1441371331, 1441371331, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(927, '127.0.0.1', '/', 1441371419, 1441371419, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(928, '127.0.0.1', '/', 1441371434, 1441371434, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(929, '127.0.0.1', '/', 1441371522, 1441371522, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(930, '178.136.229.251', '/', 1441371982, 1441371982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(931, '127.0.0.1', '/', 1441372111, 1441372111, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(932, '127.0.0.1', '/', 1441372158, 1441372158, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(933, '127.0.0.1', '/', 1441372173, 1441372173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(934, '127.0.0.1', '/', 1441372191, 1441372191, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(935, '127.0.0.1', '/', 1441372191, 1441372191, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(936, '127.0.0.1', '/', 1441372200, 1441372200, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(937, '127.0.0.1', '/', 1441372201, 1441372201, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(938, '127.0.0.1', '/', 1441372291, 1441372291, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(939, '127.0.0.1', '/', 1441372307, 1441372307, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(940, '127.0.0.1', '/', 1441372543, 1441372543, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(941, '127.0.0.1', '/', 1441372594, 1441372594, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(942, '127.0.0.1', '/', 1441372628, 1441372628, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(943, '127.0.0.1', '/', 1441372664, 1441372664, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(944, '127.0.0.1', '/', 1441372674, 1441372674, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(945, '127.0.0.1', '/', 1441372832, 1441372832, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(946, '127.0.0.1', '/', 1441372839, 1441372839, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(947, '127.0.0.1', '/', 1441372868, 1441372868, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(948, '127.0.0.1', '/', 1441372939, 1441372939, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(949, '127.0.0.1', '/', 1441373020, 1441373020, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(950, '127.0.0.1', '/', 1441373115, 1441373115, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(951, '127.0.0.1', '/', 1441373130, 1441373130, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(952, '127.0.0.1', '/', 1441373239, 1441373239, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(953, '127.0.0.1', '/', 1441373464, 1441373464, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(954, '127.0.0.1', '/', 1441373489, 1441373489, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(955, '127.0.0.1', '/', 1441373503, 1441373503, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(956, '127.0.0.1', '/', 1441373526, 1441373526, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(957, '127.0.0.1', '/', 1441373553, 1441373553, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(958, '127.0.0.1', '/', 1441373690, 1441373690, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(959, '127.0.0.1', '/', 1441373767, 1441373767, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(960, '127.0.0.1', '/', 1441373818, 1441373818, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(961, '127.0.0.1', '/', 1441373830, 1441373830, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(962, '127.0.0.1', '/', 1441373926, 1441373926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(963, '127.0.0.1', '/', 1441373929, 1441373929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(964, '127.0.0.1', '/', 1441373955, 1441373955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(965, '127.0.0.1', '/', 1441373974, 1441373974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(966, '127.0.0.1', '/', 1441374068, 1441374068, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(967, '127.0.0.1', '/', 1441374103, 1441374103, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(968, '127.0.0.1', '/', 1441374135, 1441374135, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(969, '127.0.0.1', '/', 1441374144, 1441374144, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(970, '127.0.0.1', '/', 1441374165, 1441374165, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(971, '127.0.0.1', '/', 1441374211, 1441374211, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(972, '127.0.0.1', '/', 1441374230, 1441374230, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(973, '127.0.0.1', '/', 1441374301, 1441374301, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(974, '127.0.0.1', '/', 1441374305, 1441374305, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(975, '127.0.0.1', '/', 1441374306, 1441374306, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(976, '127.0.0.1', '/', 1441374309, 1441374309, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(977, '127.0.0.1', '/', 1441374312, 1441374312, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(978, '127.0.0.1', '/', 1441374335, 1441374335, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(979, '127.0.0.1', '/', 1441374588, 1441374588, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(980, '127.0.0.1', '/', 1441374608, 1441374608, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(981, '127.0.0.1', '/', 1441374734, 1441374734, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(982, '127.0.0.1', '/', 1441374744, 1441374744, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(983, '127.0.0.1', '/', 1441374809, 1441374809, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(984, '127.0.0.1', '/', 1441374859, 1441374859, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(985, '127.0.0.1', '/', 1441375096, 1441375096, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(986, '127.0.0.1', '/', 1441375137, 1441375137, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(987, '127.0.0.1', '/', 1441375147, 1441375147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(988, '127.0.0.1', '/', 1441375976, 1441375976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(989, '127.0.0.1', '/', 1441376200, 1441376200, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(990, '178.136.229.251', '/', 1441376333, 1441376333, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(991, '178.136.229.251', '/', 1441376344, 1441376344, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(992, '178.136.229.251', '/', 1441376398, 1441376398, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(993, '178.136.229.251', '/', 1441376539, 1441376539, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.0.4; HTC Desire SV Build/IMM76D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.111 Mobile Safari/537.36', 1),
(994, '178.136.229.251', '/', 1441376629, 1441376629, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(995, '178.136.229.251', '/', 1441376667, 1441376667, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(996, '178.136.229.251', '/', 1441376772, 1441376772, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(997, '178.136.229.251', '/', 1441376808, 1441376808, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(998, '178.136.229.251', '/', 1441376870, 1441376870, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(999, '5.248.122.132', '/', 1441386208, 1441386208, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1000, '5.248.122.132', '/catalog/krossovki_dlja_bega', 1441386237, 1441386237, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1001, '77.52.157.154', '/', 1441439358, 1441439358, '200 OK', 'Phone', 'Mozilla/5.0 (Linux; Android 4.0.4; HTC Desire SV Build/IMM76D) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.111 Mobile Safari/537.36', 1),
(1002, '178.136.229.251', '/', 1441466541, 1441466541, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1003, '178.94.7.60', '/', 1441478891, 1441478891, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1004, '178.94.7.60', '/', 1441479109, 1441479109, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1005, '178.94.7.60', '/', 1441479124, 1441479124, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1006, '178.94.7.60', '/', 1441479187, 1441479187, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1007, '178.94.7.60', '/news', 1441479199, 1441479199, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1008, '178.94.7.60', '/articles', 1441479201, 1441479201, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1009, '178.94.7.60', '/faq', 1441479203, 1441479203, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1010, '178.94.7.60', '/o_nas', 1441479205, 1441479205, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1011, '178.94.7.60', '/contact', 1441479207, 1441479207, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1012, '178.94.7.60', '/', 1441514074, 1441514074, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1013, '178.94.7.60', '/o_nas', 1441514077, 1441514077, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1014, '178.94.7.60', '/news', 1441514081, 1441514081, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1015, '178.93.23.91', '/', 1441525981, 1441525981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1016, '178.136.229.251', '/', 1441603891, 1441603891, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1017, '127.0.0.1', '/', 1441605217, 1441605217, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1018, '127.0.0.1', '/', 1441605281, 1441605281, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1019, '127.0.0.1', '/', 1441605298, 1441605298, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1020, '178.136.229.251', '/', 1441605396, 1441605396, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1021, '178.136.229.251', '/', 1441605523, 1441605523, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1022, '178.136.229.251', '/', 1441605569, 1441605569, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1023, '178.136.229.251', '/', 1441605635, 1441605635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1024, '178.136.229.251', '/', 1441605795, 1441605795, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1025, '178.136.229.251', '/', 1441605833, 1441605833, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1026, '127.0.0.1', '/', 1441606088, 1441606088, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1027, '178.136.229.251', '/', 1441606168, 1441606168, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1028, '178.136.229.251', '/', 1441607351, 1441607351, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1029, '178.136.229.251', '/', 1441607516, 1441607516, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1030, '178.136.229.251', '/', 1441607809, 1441607809, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1031, '178.136.229.251', '/', 1441609355, 1441609355, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1032, '178.136.229.251', '/', 1441609411, 1441609411, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1033, '178.136.229.251', '/', 1441611769, 1441611769, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1034, '178.136.229.251', '/', 1441615635, 1441615635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1035, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1441615645, 1441615645, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1036, '178.136.229.251', '/', 1441621244, 1441621244, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1037, '178.136.229.251', '/', 1441625117, 1441625117, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1038, '178.136.229.251', '/cart', 1441625121, 1441625121, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1039, '178.136.229.251', '/', 1441626911, 1441626911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1040, '178.136.229.251', '/', 1441627124, 1441627124, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1041, '178.136.229.251', '/cart', 1441627130, 1441627130, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1042, '178.136.229.251', '/catalog', 1441627133, 1441627133, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1043, '178.136.229.251', '/catalog', 1441627133, 1441627133, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1044, '178.136.229.251', '/cart', 1441627233, 1441627233, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1045, '178.136.229.251', '/', 1441627238, 1441627238, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1046, '178.136.229.251', '/catalog/for_men', 1441627618, 1441627618, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1047, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441627622, 1441627622, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1048, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441627623, 1441627623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1049, '178.136.229.251', '/catalog/kedy', 1441627625, 1441627625, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1050, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1441627630, 1441627630, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1051, '178.136.229.251', '/', 1441627672, 1441627672, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1052, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441627679, 1441627679, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1053, '178.136.229.251', '/', 1441628299, 1441628299, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1054, '178.136.229.251', '/cart', 1441628302, 1441628302, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1055, '178.136.229.251', '/cart', 1441628309, 1441628309, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1056, '178.136.229.251', '/', 1441703458, 1441703458, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1057, '93.79.133.79', '/', 1441704255, 1441704255, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1058, '46.33.240.230', '/', 1441706615, 1441706615, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1059, '178.136.229.251', '/', 1441710042, 1441710042, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1060, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441710046, 1441710046, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1061, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441710165, 1441710165, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1062, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441710966, 1441710966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1063, '178.136.229.251', '/', 1441713775, 1441713775, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1064, '178.136.229.251', '/catalog', 1441713785, 1441713785, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1065, '178.136.229.251', '/catalog/for_men', 1441713787, 1441713787, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(1066, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441713789, 1441713789, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1067, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441713790, 1441713790, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1068, '178.136.229.251', '/catalog/kedy', 1441713792, 1441713792, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1069, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441713794, 1441713794, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1070, '178.136.229.251', '/catalog/for_men', 1441713814, 1441713814, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1071, '178.136.229.251', '/', 1441713821, 1441713821, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1072, '178.136.229.251', '/catalog/for_men', 1441713851, 1441713851, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1073, '178.136.229.251', '/catalog/for_men', 1441713852, 1441713852, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1074, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441713853, 1441713853, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1075, '178.136.229.251', '/catalog', 1441713856, 1441713856, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1076, '178.136.229.251', '/catalog/for_women', 1441713859, 1441713859, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1077, '178.136.229.251', '/catalog', 1441713862, 1441713862, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1078, '178.136.229.251', '/catalog/for_men', 1441713863, 1441713863, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1079, '178.136.229.251', '/catalog', 1441713871, 1441713871, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1080, '178.136.229.251', '/catalog/for_men', 1441713872, 1441713872, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1081, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441713873, 1441713873, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1082, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441713874, 1441713874, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1083, '178.136.229.251', '/catalog/kedy', 1441713876, 1441713876, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1084, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441713878, 1441713878, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1085, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6873', 1441713923, 1441713923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1086, '178.136.229.251', '/', 1441714177, 1441714177, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1087, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1441714181, 1441714181, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1088, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6873', 1441714183, 1441714183, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1089, '78.27.159.148', '/product/test_wezom', 1441736777, 1441736777, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1090, '178.136.229.251', '/', 1441782220, 1441782220, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1091, '178.136.229.251', '/search?query=', 1441782229, 1441782229, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1092, '178.136.229.251', '/cart', 1441783691, 1441783691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1093, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441783699, 1441783699, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1094, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441783701, 1441783701, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1095, '178.136.229.251', '/catalog/kedy', 1441783704, 1441783704, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1096, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1441783706, 1441783706, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1097, '178.136.229.251', '/cart', 1441783710, 1441783710, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1098, '178.136.229.251', '/', 1441786759, 1441786759, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1099, '178.136.229.251', '/', 1441798575, 1441798575, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1100, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1441798595, 1441798595, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1101, '178.136.229.251', '/cart', 1441798617, 1441798617, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1102, '178.136.229.251', '/cart', 1441798644, 1441798644, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1103, '178.136.229.251', '/', 1441798651, 1441798651, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1104, '178.136.229.251', '/', 1441798677, 1441798677, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1105, '178.136.229.251', '/backend', 1441798785, 1441798785, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1106, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1441798846, 1441798846, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1107, '178.136.229.251', '/', 1441798872, 1441798872, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1108, '178.136.229.251', '/user', 1441798910, 1441798910, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1109, '46.175.163.12', '/b', 1441815889, 1441815889, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1110, '178.136.229.251', '/', 1441894130, 1441894130, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1111, '178.136.229.251', '/', 1441894164, 1441894164, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1112, '46.33.240.230', '/', 1441894929, 1441894929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1113, '178.136.229.251', '/', 1441953498, 1441953498, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1114, '178.136.229.251', '/', 1441954061, 1441954061, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1115, '178.136.229.251', '/cart', 1441954465, 1441954465, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1116, '178.136.229.251', '/cart', 1441955222, 1441955222, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1117, '178.136.229.251', '/', 1441968855, 1441968855, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1118, '178.136.229.251', '/cart', 1441968861, 1441968861, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1119, '178.136.229.251', '/', 1441972147, 1441972147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1120, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441972150, 1441972150, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1121, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1441972153, 1441972153, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1122, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441972157, 1441972157, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1123, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1441972157, 1441972157, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1124, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6873', 1441972159, 1441972159, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1125, '178.136.229.251', '/', 1441977665, 1441977665, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1126, '178.136.229.251', '/catalog', 1441977691, 1441977691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1127, '178.136.229.251', '/catalog/for_men', 1441977693, 1441977693, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1128, '178.136.229.251', '/', 1442317329, 1442317329, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1129, '178.136.229.251', '/cart', 1442317359, 1442317359, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1130, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1442317372, 1442317372, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1131, '158.255.159.142', '/', 1442324774, 1442324774, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1132, '158.255.159.142', '/brands', 1442324876, 1442324876, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1133, '158.255.159.142', '/brands/carhartt', 1442324879, 1442324879, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1134, '158.255.159.142', '/brands/carhartt?per_page=30&sort=cost&type=desc', 1442324884, 1442324884, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1135, '158.255.159.142', '/garantija', 1442326173, 1442326173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1136, '158.255.159.142', '/vozvrat', 1442326178, 1442326178, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1),
(1137, '178.136.229.251', '/', 1442400193, 1442400193, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1138, '178.136.229.251', '/', 1442400219, 1442400219, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1139, '178.136.229.251', '/', 1442486430, 1442486430, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36', 1),
(1140, '178.136.229.251', '/', 1442489281, 1442489281, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1141, '178.136.229.251', '/articles', 1442490516, 1442490516, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1142, '178.136.229.251', '/catalog/mokasiny', 1442490524, 1442490524, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1143, '178.136.229.251', '/catalog/snikersy', 1442490526, 1442490526, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1144, '178.136.229.251', '/', 1442493187, 1442493187, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1145, '178.136.229.251', '/catalog/snikersy', 1442493555, 1442493555, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1146, '178.136.229.251', '/', 1442507517, 1442507517, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2510.0 Safari/537.36', 1),
(1147, '178.136.229.251', '/', 1442815720, 1442815720, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1148, '178.136.229.251', '/', 1442818990, 1442818990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1149, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1442818994, 1442818994, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1150, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1442818997, 1442818997, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1151, '178.136.229.251', '/catalog/kedy', 1442819000, 1442819000, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1152, '178.136.229.251', '/catalog', 1442819006, 1442819006, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1153, '178.136.229.251', '/catalog/for_women', 1442819007, 1442819007, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1154, '178.136.229.251', '/catalog/krossovki', 1442819011, 1442819011, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1155, '178.136.229.251', '/sale', 1442819066, 1442819066, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1156, '178.136.229.251', '/popular', 1442819068, 1442819068, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1157, '178.136.229.251', '/new', 1442819069, 1442819069, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1158, '178.136.229.251', '/catalog', 1442819071, 1442819071, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1159, '178.136.229.251', '/catalog/aksessuary', 1442819073, 1442819073, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1160, '178.136.229.251', '/catalog/for_women', 1442819079, 1442819079, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1161, '178.136.229.251', '/catalog/krossovki', 1442819083, 1442819083, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1162, '178.136.229.251', '/viewed', 1442819087, 1442819087, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1163, '178.136.229.251', '/catalog/for_men', 1442819094, 1442819094, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1164, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1442819097, 1442819097, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1165, '178.136.229.251', '/catalog/kedy', 1442819098, 1442819098, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1166, '178.136.229.251', '/catalog/mokasiny', 1442819102, 1442819102, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1167, '178.136.229.251', '/catalog/snikersy', 1442819107, 1442819107, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1168, '178.136.229.251', '/catalog/for_men', 1442819110, 1442819110, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1169, '127.0.0.1', '/', 1442820003, 1442820003, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1170, '31.43.18.81', '/', 1442825934, 1442825934, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1171, '31.43.18.81', '/catalog', 1442826094, 1442826094, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1172, '31.43.18.81', '/catalog/for_men', 1442826104, 1442826104, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1173, '31.43.18.81', '/catalog/for_men', 1442826104, 1442826104, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1174, '31.43.18.81', '/catalog/for_women', 1442826104, 1442826104, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1175, '31.43.18.81', '/catalog/for_women', 1442826107, 1442826107, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1176, '31.43.18.81', '/catalog/krossovki', 1442826110, 1442826110, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1177, '31.43.18.81', '/catalog/krossovki_dlja_bega', 1442826115, 1442826115, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1178, '31.43.18.81', '/catalog/kedy', 1442826117, 1442826117, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1179, '31.43.18.81', '/catalog', 1442826120, 1442826120, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1180, '31.43.18.81', '/catalog/for_men', 1442826122, 1442826122, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1181, '31.43.18.81', '/catalog/kedy', 1442826124, 1442826124, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1182, '31.43.18.81', '/catalog', 1442826128, 1442826128, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1183, '31.43.18.81', '/catalog/for_women', 1442826131, 1442826131, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1184, '31.43.18.81', '/catalog/krossovki', 1442826132, 1442826132, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1185, '31.43.18.81', '/catalog/for_women', 1442826142, 1442826142, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1186, '31.43.18.81', '/sale', 1442826156, 1442826156, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1187, '31.43.18.81', '/product/nike_air_max_90_hyperfuse6873', 1442826159, 1442826159, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1188, '31.43.18.81', '/product/nike_air_max_90_hyperfuse6869', 1442826173, 1442826173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1189, '31.43.18.81', '/cart', 1442826178, 1442826178, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1190, '31.43.18.81', '/cart', 1442826243, 1442826243, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1191, '31.43.18.81', '/catalog', 1442826247, 1442826247, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1192, '31.43.18.81', '/dostavka', 1442826250, 1442826250, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1193, '31.43.18.81', '/', 1442826262, 1442826262, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1194, '127.0.0.1', '/faq', 1442834010, 1442834010, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1195, '127.0.0.1', '/', 1442834012, 1442834012, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1196, '127.0.0.1', '/', 1442834065, 1442834065, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1197, '127.0.0.1', '/', 1442838084, 1442838084, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/44.0.2403.89 Chrome/44.0.2403.89 Safari/537.36', 1),
(1198, '127.0.0.1', '/', 1442838224, 1442838224, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/44.0.2403.89 Chrome/44.0.2403.89 Safari/537.36', 1),
(1199, '178.136.229.251', '/', 1442842202, 1446107602, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 2),
(1200, '127.0.0.1', '/', 1442855039, 1442855039, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/44.0.2403.89 Chrome/44.0.2403.89 Safari/537.36', 1),
(1201, '127.0.0.1', '/', 1442855072, 1442855072, '200 OK', 'Computer', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/44.0.2403.89 Chrome/44.0.2403.89 Safari/537.36', 1),
(1202, '127.0.0.1', '/', 1442864448, 1442864448, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1203, '127.0.0.1', '/', 1442865686, 1442865686, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1204, '127.0.0.1', '/', 1442866119, 1442866119, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1205, '127.0.0.1', '/', 1442866125, 1442866125, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1206, '127.0.0.1', '/', 1442866126, 1442866126, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1207, '127.0.0.1', '/', 1442866126, 1442866126, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1208, '127.0.0.1', '/', 1442866175, 1442866175, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1209, '127.0.0.1', '/', 1442866199, 1442866199, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1210, '127.0.0.1', '/', 1442866214, 1442866214, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1211, '127.0.0.1', '/', 1442866363, 1442866363, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1212, '127.0.0.1', '/', 1442867280, 1442867280, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1213, '127.0.0.1', '/', 1442867532, 1442867532, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1214, '127.0.0.1', '/', 1442867579, 1442867579, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1215, '127.0.0.1', '/', 1442867643, 1442867643, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1216, '127.0.0.1', '/', 1442867696, 1442867696, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1217, '127.0.0.1', '/', 1442867959, 1442867959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1218, '127.0.0.1', '/', 1442868153, 1442868153, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1219, '127.0.0.1', '/', 1442868165, 1442868165, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1220, '127.0.0.1', '/', 1442868468, 1442868468, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1221, '127.0.0.1', '/', 1442868503, 1442868503, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1222, '127.0.0.1', '/', 1442914160, 1442914160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1223, '127.0.0.1', '/', 1442915775, 1442915775, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1224, '127.0.0.1', '/', 1442915985, 1442915985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1225, '127.0.0.1', '/', 1442916001, 1442916001, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1226, '127.0.0.1', '/', 1442916004, 1442916004, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1227, '127.0.0.1', '/', 1442916007, 1442916007, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1228, '127.0.0.1', '/', 1442916011, 1442916011, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1229, '127.0.0.1', '/', 1442916049, 1442916049, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1230, '127.0.0.1', '/', 1442916186, 1442916186, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1231, '127.0.0.1', '/', 1442916224, 1442916224, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1232, '127.0.0.1', '/', 1442916269, 1442916269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1233, '127.0.0.1', '/', 1442916795, 1442916795, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1234, '127.0.0.1', '/', 1442917003, 1442917003, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1235, '127.0.0.1', '/', 1442917053, 1442917053, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1236, '127.0.0.1', '/', 1442917095, 1442917095, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1237, '127.0.0.1', '/', 1442917285, 1442917285, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1238, '127.0.0.1', '/', 1442945696, 1442945696, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1239, '127.0.0.1', '/', 1442946896, 1442946896, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1240, '127.0.0.1', '/', 1442946915, 1442946915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1241, '127.0.0.1', '/', 1442947168, 1442947168, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1242, '127.0.0.1', '/', 1442947535, 1442947535, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1243, '127.0.0.1', '/', 1442947553, 1442947553, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1244, '127.0.0.1', '/', 1442947720, 1442947720, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1245, '127.0.0.1', '/', 1442947783, 1442947783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1246, '127.0.0.1', '/', 1442947808, 1442947808, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1247, '127.0.0.1', '/', 1442948174, 1442948174, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1248, '127.0.0.1', '/', 1442948438, 1442948438, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1249, '127.0.0.1', '/', 1442948582, 1442948582, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1250, '127.0.0.1', '/', 1442948586, 1442948586, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1251, '127.0.0.1', '/', 1442948797, 1442948797, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1252, '127.0.0.1', '/', 1442948987, 1442948987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1253, '127.0.0.1', '/', 1442949031, 1442949031, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1254, '127.0.0.1', '/', 1442949150, 1442949150, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1255, '127.0.0.1', '/', 1442949250, 1442949250, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1256, '127.0.0.1', '/', 1442949893, 1442949893, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1257, '127.0.0.1', '/', 1442949923, 1442949923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1258, '127.0.0.1', '/', 1442950011, 1442950011, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1259, '127.0.0.1', '/', 1442950013, 1442950013, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1260, '178.136.229.251', '/', 1442994168, 1442994168, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1261, '178.136.229.251', '/', 1443018792, 1443018792, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1262, '178.136.229.251', '/', 1443018792, 1443018792, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1263, '31.43.18.81', '/', 1443032102, 1443032102, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1264, '178.136.229.251', '/', 1443097489, 1443097489, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1265, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1443097497, 1443097497, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1266, '178.136.229.251', '/product/nike_air_max_90_hyperfuse1178', 1443097509, 1443097509, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1267, '178.136.229.251', '/cart', 1443097574, 1443097574, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1268, '178.136.229.251', '/', 1443101428, 1443101428, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 1),
(1269, '178.136.229.251', '/', 1443110741, 1443110741, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1270, '178.136.229.251', '/', 1443110747, 1443110747, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1271, '178.136.229.251', '/', 1443158874, 1443158874, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1272, '178.136.229.251', '/new', 1443158878, 1443158878, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1273, '178.136.229.251', '/', 1443185520, 1443185520, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1274, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1443185532, 1443185532, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1275, '178.136.229.251', '/catalog', 1443185538, 1443185538, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1276, '178.136.229.251', '/catalog/for_men', 1443185542, 1443185542, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1277, '178.136.229.251', '/catalog/kedy', 1443185543, 1443185543, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1278, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1443185544, 1443185544, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1279, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1443185548, 1443185548, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1280, '178.136.229.251', '/', 1443185551, 1443185551, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1281, '178.136.229.251', '/brands', 1443185635, 1443185635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1282, '178.136.229.251', '/sale', 1443185636, 1443185636, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1283, '178.136.229.251', '/popular', 1443185637, 1443185637, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1284, '178.136.229.251', '/sale', 1443185639, 1443185639, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1285, '178.136.229.251', '/user', 1443185646, 1443185646, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1286, '178.136.229.251', '/catalog', 1443185650, 1443185650, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1287, '178.136.229.251', '/catalog/for_men', 1443185654, 1443185654, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1288, '178.136.229.251', '/catalog/kedy', 1443185655, 1443185655, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1289, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1443185656, 1443185656, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1290, '178.136.229.251', '/product/nike_air_max_90_hyperfuse3973', 1443185658, 1443185658, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1291, '178.136.229.251', '/catalog', 1443185661, 1443185661, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1292, '178.136.229.251', '/', 1443185663, 1443185663, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1293, '178.136.229.251', '/', 1443252789, 1443252789, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1294, '178.136.229.251', '/popular', 1443252804, 1443252804, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1295, '178.136.229.251', '/', 1443422393, 1443422393, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1296, '178.136.229.251', '/', 1443438328, 1443438328, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1297, '178.136.229.251', '/', 1443439947, 1443439947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1298, '178.136.229.251', '/product/nike_air_max_90_hyperfuse9495', 1443439965, 1443439965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1299, '178.136.229.251', '/backend/contacts/new/id/1', 1443442254, 1443442254, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1300, '178.136.229.251', '/', 1443443142, 1443443142, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1301, '178.136.229.251', '/', 1443443962, 1443443962, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1302, '178.136.229.251', '/sitemap', 1443443995, 1443443995, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1303, '178.136.229.251', '/', 1443444000, 1443444000, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1304, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1443444569, 1443444569, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1305, '127.0.0.1', '/', 1443517133, 1443517133, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1306, '178.136.229.251', '/', 1443528170, 1443528170, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1307, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1443528176, 1443528176, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1308, '46.33.244.80', '/', 1443531682, 1443531682, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1309, '46.33.244.80', '/new', 1443531686, 1443531686, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1310, '46.33.244.80', '/catalog', 1443531690, 1443531690, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1311, '46.33.244.80', '/catalog/for_men', 1443531693, 1443531693, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1312, '46.33.244.80', '/catalog/krossovki_dlja_bega', 1443531695, 1443531695, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1313, '46.33.244.80', '/catalog/kedy', 1443531698, 1443531698, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1314, '46.33.244.80', '/catalog/snikersy', 1443531707, 1443531707, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1315, '46.33.244.80', '/catalog/krossovki', 1443531710, 1443531710, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1316, '46.33.244.80', '/catalog/futbolki', 1443531713, 1443531713, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1317, '46.33.244.80', '/catalog/futbolki?per_page=30&sort=cost&type=asc', 1443531725, 1443531725, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1318, '46.33.244.80', '/catalog/futbolki?per_page=120&sort=cost&type=asc', 1443531783, 1443531783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1319, '46.33.244.80', '/', 1443538039, 1443538039, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1320, '46.33.244.80', '/', 1443538046, 1443538046, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(1321, '46.33.244.80', '/', 1443538287, 1443538287, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1322, '178.136.229.251', '/', 1443549503, 1443549503, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1323, '178.136.229.251', '/', 1443603087, 1443603087, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1324, '46.136.3.147', '/', 1443603129, 1443603129, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1325, '46.136.3.147', '/oplata', 1443603541, 1443603541, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1326, '46.136.3.147', '/vozvrat', 1443603544, 1443603544, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1327, '46.136.3.147', '/dostavka', 1443603546, 1443603546, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1328, '46.136.3.147', '/vozvrat', 1443603558, 1443603558, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1329, '46.136.3.147', '/dostavka', 1443603567, 1443603567, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1330, '46.136.3.147', '/vozvrat', 1443603575, 1443603575, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1331, '46.136.3.147', '/popular', 1443603577, 1443603577, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1332, '46.136.3.147', '/catalog', 1443603583, 1443603583, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1333, '46.136.3.147', '/articles/kak-vybrat-muzhskie-krossovki', 1443603612, 1443603612, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/600.8.9 (KHTML, like Gecko) Version/8.0.8 Safari/600.8.9', 1),
(1334, '31.193.124.174', '/', 1443609860, 1443609860, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1335, '31.193.124.174', '/dostavka', 1443610490, 1443610490, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1336, '178.136.229.251', '/', 1443613660, 1443613660, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1337, '127.0.0.1', '/', 1443621751, 1443621751, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1338, '178.136.229.251', '/', 1443625338, 1443794638, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1339, '178.136.229.251', '/', 1443628803, 1443628803, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 1),
(1340, '46.175.163.12', '/', 1443635307, 1443635307, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:40.0) Gecko/20100101 Firefox/40.0', 1),
(1341, '178.136.229.251', '/', 1443693710, 1443693710, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2523.0 Safari/537.36', 1),
(1342, '178.136.229.251', '/user', 1443693728, 1443693728, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2523.0 Safari/537.36', 1),
(1343, '178.136.229.251', '/', 1443693731, 1443694325, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/47.0.2523.0 Safari/537.36', 3),
(1344, '127.0.0.1', '/', 1443792605, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1345, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1443794804, 1443794804, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1346, '178.136.229.251', '/krossovki_dlja_bega', 1443794823, 1443794823, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1347, '178.136.229.251', '/', 1443794829, 1443794829, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1348, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1443794857, 1443794857, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1349, '178.136.229.251', '/', 1443795085, 1443795085, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1350, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1443795100, 1443795110, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1351, '178.136.229.251', '/krossovki_dlja_bega', 1443795169, 1443795169, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1352, '178.136.229.251', '/', 1443795418, 1443795418, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1353, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1443795426, 1443795428, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1354, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1443795430, 1443795430, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1355, '178.136.229.251', '/catalog/kedy', 1443795439, 1443795439, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1356, '178.136.229.251', '/catalog/for_men', 1443795841, 1443795841, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1357, '178.136.229.251', '/', 1443795845, 1444393787, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 12),
(1358, '195.230.129.9', '/', 1443902052, 1443902052, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1359, '127.0.0.1', '/', 1444021508, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1360, '127.0.0.1', '/', 1444021526, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1361, '127.0.0.1', '/', 1444021550, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1362, '127.0.0.1', '/', 1444021745, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1363, '127.0.0.1', '/', 1444074843, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1364, '127.0.0.1', '/', 1444156314, 1444158083, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1365, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/available=1', 1444160003, 1444160003, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1366, '127.0.0.1', '/catalog/krossovki_dlja_bega', 1444160008, 1444160008, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1367, '127.0.0.1', '/catalog/povsednevnye_krossovki', 1444160023, 1444160023, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1368, '127.0.0.1', '/catalog/krossovki_dlja_bega', 1444160027, 1444160027, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1369, '127.0.0.1', '/catalog/kedy', 1444160030, 1444160030, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1370, '127.0.0.1', '/catalog/for_men', 1444160034, 1444160034, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1371, '127.0.0.1', '/catalog/mokasiny', 1444160036, 1444160036, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1372, '127.0.0.1', '/catalog/for_men', 1444160038, 1444160038, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1373, '127.0.0.1', '/catalog/snikersy', 1444160041, 1444160041, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1374, '127.0.0.1', '/catalog/for_men', 1444160043, 1444160043, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1375, '127.0.0.1', '/catalog/kedy', 1444160045, 1444160045, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1376, '127.0.0.1', '/catalog/for_men', 1444160048, 1444160048, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1377, '127.0.0.1', '/', 1444160053, 1444160053, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1378, '127.0.0.1', '/product/nike_air_max_90_hyperfuse6869', 1444160055, 1444160055, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1379, '127.0.0.1', '/catalog/krossovki_dlja_bega', 1444160058, 1444160072, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1380, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/material=sintetik&country=china', 1444163396, 1444163582, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 19),
(1381, '93.79.169.214', '/', 1444222829, 1444222829, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1382, '89.19.105.19', '/', 1444226112, 1444226112, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36 OPR/32.0.1948.69', 1),
(1383, '93.79.245.43', '/', 1444231244, 1444231703, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 2),
(1384, '93.79.245.43', '/oplata', 1444231729, 1444231729, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1385, '93.79.245.43', '/garantija', 1444231732, 1444231732, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1386, '93.79.245.43', '/dostavka', 1444231734, 1444231734, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1387, '93.79.245.43', '/faq', 1444231746, 1444231753, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 2),
(1388, '93.79.245.43', '/articles', 1444231756, 1444231756, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1389, '93.79.245.43', '/articles/muzhskaja_asics', 1444231767, 1444231767, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1390, '93.79.245.43', '/news', 1444231774, 1444231774, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1391, '93.79.245.43', '/contact', 1444231777, 1444231777, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1392, '93.79.245.43', '/popular', 1444231788, 1444231788, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1393, '93.79.245.43', '/sale', 1444231789, 1444231789, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1394, '93.79.245.43', '/brands', 1444231791, 1444231791, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1395, '93.79.245.43', '/contact', 1444231798, 1444231798, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 OPR/31.0.1889.174', 1),
(1396, '93.79.132.79', '/', 1444233347, 1444233347, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1397, '109.104.179.45', '/', 1444309269, 1444309269, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1398, '109.104.179.45', '/product/nike_air_max_90_hyperfuse6927', 1444309275, 1444309275, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1399, '109.104.179.45', '/cart', 1444309281, 1444309281, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1400, '127.0.0.1', '/', 1444315287, 1444316496, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1401, '178.136.229.251', '/contact', 1444393813, 1444393813, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1402, '178.136.229.251', '/news', 1444393817, 1444393817, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1403, '178.136.229.251', '/o_nas', 1444393820, 1444393820, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1404, '178.136.229.251', '/articles', 1444393824, 1444393824, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1405, '178.136.229.251', '/faq', 1444393827, 1444393827, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1406, '178.136.229.251', '/vopros_2', 1444393832, 1444393832, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1407, '178.136.229.251', '/catalog/mokasiny', 1444393836, 1444393836, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1408, '178.136.229.251', '/catalog/kedy', 1444393841, 1444393841, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1409, '93.79.187.241', '/', 1444568002, 1444568002, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36 OPR/32.0.1948.69', 1),
(1410, '178.136.229.251', '/', 1444658200, 1444906798, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1411, '127.0.0.1', '/', 1444676093, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1412, '127.0.0.1', '/catalog/kedy', 1444676102, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1413, '127.0.0.1', '/catalog', 1444676117, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1414, '127.0.0.1', '/catalog/for_women', 1444676120, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1415, '127.0.0.1', '/catalog/krossovki', 1444676122, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1416, '176.38.168.242', '/', 1444745352, 1444745354, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1417, '176.38.168.242', '/', 1444745353, 1444745353, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1418, '176.38.168.242', '/product/nike_air_max_90_hyperfuse', 1444745472, 1444745472, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1419, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1444906809, 1444906809, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1420, '178.136.229.251', '/cart', 1444906814, 1444906823, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 2),
(1421, '178.136.229.251', '/', 1444906831, 1444906831, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1422, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1444906967, 1444906967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1423, '178.136.229.251', '/cart', 1444906970, 1444906970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1424, '178.136.229.251', '/', 1445266697, 1445266697, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36', 1),
(1425, '178.136.229.251', '/', 1445273620, 1445610482, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 7),
(1426, '178.136.229.251', '/', 1445416370, 1446194755, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1427, '127.0.0.1', '/', 1445438717, 1445438717, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1428, '31.43.28.67', '/', 1445493510, 1445493510, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1429, '31.43.28.67', '/catalog', 1445493549, 1445493549, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1430, '31.43.28.67', '/catalog/for_women', 1445493552, 1445493552, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1431, '31.43.28.67', '/catalog/krossovki', 1445493558, 1445493558, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1432, '31.43.28.67', '/catalog', 1445493562, 1445493562, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1433, '31.43.28.67', '/catalog/aksessuary', 1445493564, 1445493564, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1434, '31.43.28.67', '/catalog', 1445493569, 1445493569, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1435, '31.43.28.67', '/catalog/for_women', 1445493571, 1445493571, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1436, '31.43.28.67', '/catalog', 1445493574, 1445493574, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1437, '31.43.28.67', '/new', 1445493575, 1445493575, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1438, '31.43.28.67', '/popular', 1445493577, 1445493577, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1439, '31.43.28.67', '/product/nike_air_max_90_hyperfuse9495', 1445493579, 1445493579, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1440, '31.43.28.67', '/brands', 1445493605, 1445493605, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1441, '127.0.0.1', '/', 1445532636, NULL, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1442, '178.136.229.251', '/backend', 1445610490, 1445610490, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1443, '178.136.229.251', '/', 1445610537, 1445610537, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1444, '178.136.229.251', '/dostavka', 1445610550, 1445610550, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1445, '178.136.229.251', '/test', 1445610557, 1445610557, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1446, '178.136.229.251', '/oplata', 1445610560, 1445610560, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1447, '178.136.229.251', '/', 1445849601, 1445849601, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36', 1),
(1448, '178.136.229.251', '/', 1445851767, 1445851767, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1449, '178.136.229.251', '/catalog', 1445851772, 1445851772, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1450, '178.136.229.251', '/catalog/for_men', 1445851775, 1445851775, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1451, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1445851778, 1445851778, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1452, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/color=green', 1445851784, 1445851784, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1453, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/color=blue,green', 1445851790, 1445851790, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1454, '178.136.229.251', '/', 1445852494, 1445852494, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1455, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1445852502, 1445852502, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1456, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/color=blue', 1445854304, 1445854304, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1457, '178.136.229.251', '/', 1445866314, 1445866314, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1458, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1445866318, 1445866318, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1459, '178.136.229.251', '/', 1445927795, 1445927795, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1460, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1445927799, 1445927799, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1461, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1445927842, 1445927842, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1462, '178.136.229.251', '/', 1445934488, 1445934488, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1463, '178.136.229.251', '/backend/index', 1445934951, 1445934951, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1464, '178.136.229.251', '/', 1445939735, 1445939735, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1465, '178.136.229.251', '/', 1445955469, 1446036649, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 6),
(1466, '212.111.209.20', '/', 1445972551, 1445972551, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1467, '212.111.209.20', '/brands', 1445972635, 1445972635, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1468, '212.111.209.20', '/brands/asics', 1445972640, 1445972640, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1469, '212.111.209.20', '/brands/lacoste', 1445972652, 1445972652, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1470, '90.191.172.183', '/', 1445974986, 1445974986, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1471, '90.191.172.183', '/catalog', 1445974996, 1445974996, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1472, '90.191.172.183', '/articles', 1445975002, 1445975002, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1473, '90.191.172.183', '/articles/kak-vybrat-muzhskie-krossovki', 1445975013, 1445975013, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1474, '90.191.172.183', '/dostavka', 1445975025, 1445975025, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1475, '90.191.172.183', '/contact', 1445975039, 1445975039, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1476, '90.191.172.183', '/popular', 1445975045, 1445975045, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1477, '90.191.172.183', '/product/nike_air_max_90_hyperfuse', 1445975048, 1445975048, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1478, '90.191.172.183', '/cart', 1445975063, 1445975063, '200 OK', 'Phone', 'Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1', 1),
(1479, '212.111.209.20', '/', 1445975147, 1445975147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1480, '212.111.209.20', '/catalog', 1445975152, 1445975152, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1481, '212.111.209.20', '/catalog/for_men', 1445975157, 1445975157, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1482, '212.111.209.20', '/catalog/kedy', 1445975166, 1445975166, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1483, '212.111.209.20', '/catalog/kedy?per_page=30&sort=cost&type=desc', 1445975170, 1445975170, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1484, '178.136.229.251', '/sale', 1446036652, 1446036652, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1485, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6873', 1446036655, 1446036655, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1486, '178.136.229.251', '/cart', 1446036658, 1446036658, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1487, '178.92.174.22', '/', 1446039059, 1446039059, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36 OPR/32.0.1948.69 (Edition Campaign 18)', 1),
(1488, '178.136.229.251', '/', 1446047833, 1446112133, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 4),
(1489, '212.111.209.20', '/', 1446064610, 1446064610, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1490, '212.111.209.20', '/catalog', 1446064615, 1446064615, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1491, '212.111.209.20', '/catalog/for_men', 1446064619, 1446064619, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1492, '212.111.209.20', '/catalog/kedy', 1446064625, 1446064625, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1493, '178.136.229.251', '/cart', 1446107615, 1446107615, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1494, '178.136.229.251', '/articles', 1446107617, 1446107617, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1495, '178.136.229.251', '/catalog/kedy', 1446107622, 1446107622, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1496, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1446107625, 1446107625, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1497, '178.136.229.251', '/product/test_wezom', 1446107628, 1446107628, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1498, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1446107634, 1446107634, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1499, '178.136.229.251', '/cart', 1446107643, 1446107643, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko', 1),
(1500, '178.136.229.251', '/', 1446107655, 1446127754, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 2),
(1501, '31.43.17.114', '/', 1446110639, 1446110639, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1502, '31.43.17.114', '/catalog/kedy', 1446110712, 1446110712, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1503, '31.43.17.114', '/catalog/mokasiny', 1446110717, 1446110717, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1504, '31.43.17.114', '/catalog/for_women', 1446110721, 1446110721, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1505, '31.43.17.114', '/catalog/krossovki', 1446110723, 1446110723, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1506, '31.43.17.114', '/catalog/for_men', 1446110725, 1446110725, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1507, '31.43.17.114', '/catalog/kedy', 1446110727, 1446110727, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1508, '31.43.17.114', '/catalog', 1446110730, 1446110730, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1509, '31.43.17.114', '/catalog/aksessuary', 1446110733, 1446110733, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1510, '31.43.17.114', '/new', 1446110738, 1446110738, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1511, '31.43.17.114', '/popular', 1446110740, 1446110740, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1512, '31.43.17.114', '/product/nike_air_max_90_hyperfuse2018', 1446110745, 1446110745, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1513, '31.43.17.114', '/new', 1446110767, 1446110767, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1514, '31.43.17.114', '/popular', 1446110768, 1446110768, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1515, '31.43.17.114', '/sale', 1446110770, 1446110770, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1516, '31.43.17.114', '/brands', 1446110771, 1446110771, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1517, '31.43.17.114', '/popular', 1446110776, 1446110776, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1518, '31.43.17.114', '/product/nike_air_max_90_hyperfuse', 1446110778, 1446110778, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1519, '31.43.17.114', '/cart', 1446110782, 1446110796, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(1520, '178.136.229.251', '/yuytu', 1446112142, 1446112142, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1521, '178.136.229.251', '/', 1446112316, 1446112317, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(1522, '178.136.229.251', '/new', 1446112319, 1446112319, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1523, '178.136.229.251', '/popular', 1446112324, 1446112324, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1524, '178.136.229.251', '/tyuyi', 1446112345, 1446112345, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1525, '178.136.229.251', '/Sitemap', 1446112347, 1446112347, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1526, '178.136.229.251', '/sitemap', 1446112351, 1446112351, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1527, '178.136.229.251', '/', 1446113559, 1446113570, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(1528, '178.136.229.251', '/o_nas', 1446113590, 1446113699, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 7),
(1529, '178.136.229.251', '/faq', 1446113891, 1446113969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 3),
(1530, '178.136.229.251', '/', 1446114091, 1446114091, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1531, '178.136.229.251', '/new', 1446114095, 1446114095, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1532, '178.136.229.251', '/catalog', 1446114097, 1446114097, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1533, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1446114099, 1446114243, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 4),
(1534, '178.136.229.251', '/o_nas', 1446115650, 1446115726, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 3),
(1535, '178.136.229.251', '/', 1446117325, 1446117325, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1536, '178.136.229.251', '/backend', 1446127313, 1446127313, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1537, '178.136.229.251', '/html', 1446127777, 1446127777, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1538, '178.136.229.251', '/vozvrat', 1446128001, 1446128001, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1539, '178.136.229.251', '/garantija', 1446128012, 1446128012, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1540, '178.136.229.251', '/oplata', 1446128015, 1446128015, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1541, '178.136.229.251', '/catalog/krossovki_dlja_bega', 1446128036, 1446128036, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1542, '178.136.229.251', '/catalog/krossovki_dlja_bega/page/2', 1446128039, 1446128039, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1543, '178.136.229.251', '/catalog/krossovki_dlja_bega/page/11', 1446128043, 1446128043, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1544, '178.136.229.251', '/catalog/krossovki_dlja_bega/filter/min_cost=1029&max_cost=1449', 1446128046, 1446128046, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1545, '178.136.229.251', '/', 1446128058, 1446128058, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/48.0.2547.0 Safari/537.36', 1),
(1546, '178.136.229.251', '/', 1446128870, 1446129086, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 3),
(1547, '178.136.229.251', '/', 1446128979, 1446128979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1548, '178.136.229.251', '/backend', 1446129143, 1446129143, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1549, '178.136.229.251', '/backend', 1446129171, 1446129171, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1550, '178.136.229.251', '/', 1446129224, 1446130866, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 9),
(1551, '178.136.229.251', '/catalog', 1446131255, 1446131255, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1552, '178.136.229.251', '/product/nike_air_max_90_hyperfuse2018', 1446131270, 1446131270, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1553, '176.104.11.150', '/', 1446133206, 1446133206, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1554, '176.104.11.150', '/new', 1446133223, 1446133223, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1555, '176.104.11.150', '/popular', 1446133227, 1446133227, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1556, '176.104.11.150', '/sale', 1446133229, 1446133229, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1557, '176.104.11.150', '/catalog/krossovki_dlja_bega', 1446133235, 1446133235, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1558, '176.104.11.150', '/brands', 1446133239, 1446133239, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1559, '176.104.11.150', '/brands/franklin_marshall', 1446133251, 1446133251, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1560, '176.104.11.150', '/dostavka', 1446133257, 1446133257, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1561, '176.104.11.150', '/oplata', 1446133261, 1446133261, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1562, '176.104.11.150', '/catalog', 1446133267, 1446133267, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1563, '176.104.11.150', '/o_nas', 1446133271, 1446133271, '200 OK', 'Computer', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_1) AppleWebKit/601.2.7 (KHTML, like Gecko) Version/9.0.1 Safari/601.2.7', 1),
(1564, '178.136.229.251', '/', 1446192598, 1446192598, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1565, '178.136.229.251', '/faq', 1446193000, 1446193000, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1566, '178.136.229.251', '/', 1446193006, 1446195908, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(1567, '178.136.229.251', '/', 1446193915, 1446193915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1568, '178.136.229.251', '/', 1446194119, 1446194119, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1569, '178.136.229.251', '/catalog', 1446194178, 1446194178, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1570, '178.136.229.251', '/catalog/krossovki', 1446194185, 1446194185, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1571, '178.136.229.251', '/', 1446194200, 1446194594, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1572, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446194637, 1446194637, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1573, '178.136.229.251', '/', 1446194719, 1446194719, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(1574, '178.136.229.251', '/articles', 1446194769, 1446194769, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1575, '178.136.229.251', '/faq', 1446194769, 1446194769, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1576, '178.136.229.251', '/o_nas', 1446194772, 1446194772, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1577, '178.136.229.251', '/news', 1446194773, 1446194773, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1578, '178.136.229.251', '/contact', 1446194775, 1446194775, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1579, '178.136.229.251', '/catalog/kedy', 1446194778, 1446194778, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1580, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446194783, 1446194783, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1581, '178.136.229.251', '/catalog/krossovki', 1446194786, 1446194786, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1582, '178.136.229.251', '/', 1446194791, 1446194791, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1583, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446194795, 1446194795, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1584, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446194796, 1446194796, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1585, '178.136.229.251', '/cart', 1446194803, 1446194803, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1586, '178.136.229.251', '/', 1446194806, 1446194806, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1587, '178.136.229.251', '/sale', 1446194809, 1446194809, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1588, '178.136.229.251', '/brands', 1446194811, 1446194811, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1589, '178.136.229.251', '/', 1446194820, 1446194820, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1590, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446194823, 1446194823, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1591, '178.136.229.251', '/', 1446195022, 1446195022, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1592, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446195024, 1446195024, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1593, '178.136.229.251', '/cart', 1446195196, 1446195196, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1594, '178.136.229.251', '/', 1446195416, 1446195416, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1595, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446195419, 1446195419, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1596, '178.136.229.251', '/', 1446195466, 1446195466, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1597, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446195469, 1446195469, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1598, '178.136.229.251', '/', 1446195603, 1446195603, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1599, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446195608, 1446195608, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1600, '178.136.229.251', '/', 1446195827, 1446195985, '200 OK', 'Computer', 'Apache-HttpClient/4.2.6 (java 1.5)', 130),
(1601, '178.136.229.251', '/', 1446195827, 1446195828, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1602, '178.136.229.251', '/articles', 1446195830, 1446195830, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1603, '178.136.229.251', '/faq', 1446195831, 1446195831, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1604, '178.136.229.251', '/o_nas', 1446195831, 1446195831, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1605, '178.136.229.251', '/news', 1446195832, 1446195832, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1606, '178.136.229.251', '/contact', 1446195832, 1446195832, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1607, '178.136.229.251', '/catalog/kedy', 1446195832, 1446195832, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1608, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195833, 1446195833, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1609, '178.136.229.251', '/catalog/krossovki', 1446195833, 1446195833, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1610, '178.136.229.251', '/', 1446195833, 1446195833, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1611, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195834, 1446195834, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1612, '178.136.229.251', '/cart', 1446195835, 1446195835, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1613, '178.136.229.251', '/', 1446195835, 1446195835, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1614, '178.136.229.251', '/sale', 1446195836, 1446195836, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1615, '178.136.229.251', '/brands', 1446195836, 1446195836, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1616, '178.136.229.251', '/', 1446195889, 1446195897, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 79),
(1617, '178.136.229.251', '/articles', 1446195906, 1446195908, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 10),
(1618, '178.136.229.251', '/faq', 1446195908, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1619, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1620, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1621, '178.136.229.251', '/faq', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1622, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1623, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1624, '178.136.229.251', '/faq', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1625, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1626, '178.136.229.251', '/faq', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1627, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 6),
(1628, '178.136.229.251', '/o_nas', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1629, '178.136.229.251', '/articles', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1630, '178.136.229.251', '/o_nas', 1446195909, 1446195909, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1631, '178.136.229.251', '/articles', 1446195909, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1632, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1633, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1634, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1635, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1636, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1637, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1638, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1639, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1640, '178.136.229.251', '/news', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1641, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1642, '178.136.229.251', '/faq', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1643, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1644, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1645, '178.136.229.251', '/news', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1646, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1647, '178.136.229.251', '/news', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1648, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1649, '178.136.229.251', '/news', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1650, '178.136.229.251', '/o_nas', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1651, '178.136.229.251', '/articles', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1652, '178.136.229.251', '/news', 1446195910, 1446195910, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1653, '178.136.229.251', '/articles', 1446195910, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1654, '178.136.229.251', '/news', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1655, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1656, '178.136.229.251', '/articles', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1657, '178.136.229.251', '/news', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1658, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1659, '178.136.229.251', '/articles', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1660, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1661, '178.136.229.251', '/news', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1662, '178.136.229.251', '/o_nas', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1663, '178.136.229.251', '/articles', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1664, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1665, '178.136.229.251', '/contact', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1666, '178.136.229.251', '/o_nas', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1667, '178.136.229.251', '/articles', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1668, '178.136.229.251', '/contact', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1669, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1670, '178.136.229.251', '/o_nas', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1671, '178.136.229.251', '/faq', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1672, '178.136.229.251', '/contact', 1446195911, 1446195911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1673, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1674, '178.136.229.251', '/contact', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1675, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1676, '178.136.229.251', '/news', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1677, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1678, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1679, '178.136.229.251', '/contact', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1680, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1681, '178.136.229.251', '/catalog/kedy', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1682, '178.136.229.251', '/news', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1683, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1684, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1685, '178.136.229.251', '/catalog/kedy', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1686, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1687, '178.136.229.251', '/contact', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1688, '178.136.229.251', '/news', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1689, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1690, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1691, '178.136.229.251', '/catalog/kedy', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1692, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1693, '178.136.229.251', '/contact', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1694, '178.136.229.251', '/catalog/kedy', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1695, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1696, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1697, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1698, '178.136.229.251', '/catalog/kedy', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1699, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1700, '178.136.229.251', '/contact', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1701, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1702, '178.136.229.251', '/faq', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1703, '178.136.229.251', '/news', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1704, '178.136.229.251', '/o_nas', 1446195912, 1446195912, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1705, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1706, '178.136.229.251', '/catalog/kedy', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1707, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1708, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1709, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1710, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1711, '178.136.229.251', '/catalog/kedy', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1712, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1713, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1714, '178.136.229.251', '/catalog/kedy', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1715, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1716, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1717, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1718, '178.136.229.251', '/contact', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1719, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1720, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1721, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1722, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1723, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1724, '178.136.229.251', '/catalog/kedy', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1725, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1726, '178.136.229.251', '/contact', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1727, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1728, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1729, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1730, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1731, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1732, '178.136.229.251', '/contact', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1733, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1734, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1735, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1736, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1737, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1738, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1739, '178.136.229.251', '/news', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1740, '178.136.229.251', '/faq', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1741, '178.136.229.251', '/o_nas', 1446195913, 1446195913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1742, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195913, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1743, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1744, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1745, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1746, '178.136.229.251', '/faq', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1747, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1748, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1749, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1750, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1751, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1752, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1753, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1754, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1755, '178.136.229.251', '/catalog/krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1756, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1757, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1758, '178.136.229.251', '/catalog/kedy', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1759, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1760, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1761, '178.136.229.251', '/catalog/kedy', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1762, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1763, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1764, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1765, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1766, '178.136.229.251', '/o_nas', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1767, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1768, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1769, '178.136.229.251', '/catalog/krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1770, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1771, '178.136.229.251', '/catalog/kedy', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1772, '178.136.229.251', '/contact', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1773, '178.136.229.251', '/catalog/krossovki', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1774, '178.136.229.251', '/catalog/kedy', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1775, '178.136.229.251', '/news', 1446195914, 1446195914, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1776, '178.136.229.251', '/catalog/kedy', 1446195914, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1777, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1778, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1779, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1780, '178.136.229.251', '/o_nas', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1781, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1782, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1783, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1784, '178.136.229.251', '/catalog/krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1785, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1786, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1787, '178.136.229.251', '/catalog/krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1788, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1789, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1790, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1791, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1792, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1793, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1794, '178.136.229.251', '/catalog/krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1795, '178.136.229.251', '/o_nas', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1796, '178.136.229.251', '/catalog/krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1797, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1798, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1799, '178.136.229.251', '/catalog/krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1800, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1801, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1802, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1803, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1804, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1805, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1806, '178.136.229.251', '/popular', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(1807, '178.136.229.251', '/news', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1808, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1809, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1810, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1811, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1812, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1813, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1814, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1815, '178.136.229.251', '/', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1816, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1817, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1818, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1819, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1820, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1821, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1822, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1823, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1824, '178.136.229.251', '/contact', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1825, '178.136.229.251', '/catalog/kedy', 1446195915, 1446195915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1826, '178.136.229.251', '/', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1827, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1828, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1829, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1830, '178.136.229.251', '/contact', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1831, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1832, '178.136.229.251', '/', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1833, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1834, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1835, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1836, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1837, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1838, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1839, '178.136.229.251', '/contact', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1840, '178.136.229.251', '/', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1841, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1842, '178.136.229.251', '/contact', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1843, '178.136.229.251', '/catalog/krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1844, '178.136.229.251', '/news', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1845, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1846, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1847, '178.136.229.251', '/catalog/krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1848, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1849, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1850, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1851, '178.136.229.251', '/catalog/krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1852, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1853, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1854, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1855, '178.136.229.251', '/contact', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1856, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1857, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1858, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1859, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1860, '178.136.229.251', '/catalog/krossovki', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1861, '178.136.229.251', '/catalog/kedy', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1862, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195916, 1446195916, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1863, '178.136.229.251', '/catalog/krossovki', 1446195916, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1864, '178.136.229.251', '/catalog/kedy', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1865, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1866, '178.136.229.251', '/contact', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1867, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1868, '178.136.229.251', '/contact', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1869, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1870, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1871, '178.136.229.251', '/catalog/kedy', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1872, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1873, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1874, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1875, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1876, '178.136.229.251', '/contact', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(1877, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1878, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1879, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1880, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1881, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1882, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1883, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1884, '178.136.229.251', '/catalog/kedy', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1885, '178.136.229.251', '/contact', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1886, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1887, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1888, '178.136.229.251', '/catalog/kedy', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1889, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1890, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1891, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1892, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1893, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1894, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1895, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1896, '178.136.229.251', '/catalog/kedy', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1897, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1898, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1899, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1900, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1901, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1902, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1903, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1904, '178.136.229.251', '/', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1905, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1906, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1907, '178.136.229.251', '/catalog/krossovki', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1908, '178.136.229.251', '/cart', 1446195917, 1446195917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1909, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1910, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1911, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1912, '178.136.229.251', '/catalog/kedy', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1913, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1914, '178.136.229.251', '/cart', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1915, '178.136.229.251', '/catalog/kedy', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1916, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1917, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1918, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1919, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1920, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1921, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1922, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1923, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1924, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1925, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1926, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1927, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1928, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1929, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1930, '178.136.229.251', '/catalog/krossovki', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1931, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1932, '178.136.229.251', '/', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1933, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1934, '178.136.229.251', '/cart', 1446195918, 1446195918, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1935, '178.136.229.251', '/catalog', 1446195920, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(1936, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1937, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1938, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1939, '178.136.229.251', '/catalog/krossovki', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1940, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1941, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1942, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1943, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1944, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1945, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(1946, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1947, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1948, '178.136.229.251', '/sale', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1949, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1950, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1951, '178.136.229.251', '/', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1952, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195920, 1446195920, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1953, '178.136.229.251', '/cart', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1954, '178.136.229.251', '/catalog/krossovki', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1955, '178.136.229.251', '/cart', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1956, '178.136.229.251', '/cart', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1957, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1958, '178.136.229.251', '/', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1959, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1960, '178.136.229.251', '/sale', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1961, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1962, '178.136.229.251', '/catalog/krossovki', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1963, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1964, '178.136.229.251', '/sale', 1446195921, 1446195921, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1965, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1966, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1967, '178.136.229.251', '/brands', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1968, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1969, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1970, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1971, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1972, '178.136.229.251', '/catalog/krossovki', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1973, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1974, '178.136.229.251', '/cart', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1975, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1976, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1977, '178.136.229.251', '/cart', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1978, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1979, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1980, '178.136.229.251', '/cart', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1981, '178.136.229.251', '/brands', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1982, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1983, '178.136.229.251', '/brands', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1984, '178.136.229.251', '/', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1985, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1986, '178.136.229.251', '/cart', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1987, '178.136.229.251', '/sale', 1446195922, 1446195922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(1988, '178.136.229.251', '/cart', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1989, '178.136.229.251', '/sale', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(1990, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1991, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1992, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1993, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1994, '178.136.229.251', '/sale', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1995, '178.136.229.251', '/sale', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1996, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1997, '178.136.229.251', '/cart', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1998, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(1999, '178.136.229.251', '/sale', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2000, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2001, '178.136.229.251', '/sale', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2002, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2003, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2004, '178.136.229.251', '/cart', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2005, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2006, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2007, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2008, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2009, '178.136.229.251', '/cart', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2010, '178.136.229.251', '/', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2011, '178.136.229.251', '/cart', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2012, '178.136.229.251', '/brands', 1446195923, 1446195923, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2013, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2014, '178.136.229.251', '/sale', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2015, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2016, '178.136.229.251', '/sale', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2017, '178.136.229.251', '/brands', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2018, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2019, '178.136.229.251', '/brands', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2020, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2021, '178.136.229.251', '/sale', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2022, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2023, '178.136.229.251', '/sale', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2024, '178.136.229.251', '/cart', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2025, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2026, '178.136.229.251', '/cart', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2027, '178.136.229.251', '/', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2028, '178.136.229.251', '/brands', 1446195924, 1446195924, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2029, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2030, '178.136.229.251', '/sale', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2031, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2032, '178.136.229.251', '/brands', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2033, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2034, '178.136.229.251', '/sale', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2035, '178.136.229.251', '/brands', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2036, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2037, '178.136.229.251', '/sale', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2038, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2039, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2040, '178.136.229.251', '/brands', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2041, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2042, '178.136.229.251', '/sale', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2043, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2044, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2045, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2046, '178.136.229.251', '/sale', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2047, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2048, '178.136.229.251', '/', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2049, '178.136.229.251', '/cart', 1446195925, 1446195925, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2050, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2051, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2052, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2053, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2054, '178.136.229.251', '/sale', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2055, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2056, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2057, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2058, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2059, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2060, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2061, '178.136.229.251', '/sale', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2062, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2063, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2064, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2065, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2066, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2067, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2068, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2069, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2070, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2071, '178.136.229.251', '/sale', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2072, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2073, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2074, '178.136.229.251', '/sale', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2075, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2076, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2077, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2078, '178.136.229.251', '/cart', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2079, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2080, '178.136.229.251', '/sale', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2081, '178.136.229.251', '/brands', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2082, '178.136.229.251', '/', 1446195926, 1446195926, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2083, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2084, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2085, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2086, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2087, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2088, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2089, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2090, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2091, '178.136.229.251', '/cart', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2092, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2093, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2094, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2095, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2096, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2097, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2098, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2099, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2100, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2101, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2102, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2103, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2104, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2105, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2106, '178.136.229.251', '/', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2107, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2108, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2109, '178.136.229.251', '/brands', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2110, '178.136.229.251', '/sale', 1446195927, 1446195927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2111, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2112, '178.136.229.251', '/sale', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2113, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2114, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2115, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2116, '178.136.229.251', '/sale', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2117, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2118, '178.136.229.251', '/sale', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2119, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2120, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2121, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2122, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2123, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2124, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2125, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2126, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2127, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2128, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2129, '178.136.229.251', '/brands', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2130, '178.136.229.251', '/', 1446195928, 1446195928, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2131, '178.136.229.251', '/brands', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2132, '178.136.229.251', '/', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2133, '178.136.229.251', '/sale', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2134, '178.136.229.251', '/', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2135, '178.136.229.251', '/brands', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2136, '178.136.229.251', '/', 1446195929, 1446195929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2137, '178.136.229.251', '/', 1446195929, 1446195933, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 39),
(2138, '178.136.229.251', '/articles', 1446195939, 1446195942, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 11),
(2139, '178.136.229.251', '/faq', 1446195942, 1446195942, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2140, '178.136.229.251', '/articles', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2141, '178.136.229.251', '/o_nas', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2142, '178.136.229.251', '/faq', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2143, '178.136.229.251', '/news', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2144, '178.136.229.251', '/faq', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2145, '178.136.229.251', '/o_nas', 1446195943, 1446195943, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2146, '178.136.229.251', '/faq', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2147, '178.136.229.251', '/o_nas', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2148, '178.136.229.251', '/articles', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2149, '178.136.229.251', '/faq', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2150, '178.136.229.251', '/news', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2151, '178.136.229.251', '/o_nas', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2152, '178.136.229.251', '/faq', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2153, '178.136.229.251', '/articles', 1446195944, 1446195944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2154, '178.136.229.251', '/faq', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2155, '178.136.229.251', '/articles', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2156, '178.136.229.251', '/o_nas', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2157, '178.136.229.251', '/news', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2158, '178.136.229.251', '/faq', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2159, '178.136.229.251', '/articles', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2160, '178.136.229.251', '/o_nas', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2161, '178.136.229.251', '/news', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2162, '178.136.229.251', '/articles', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2163, '178.136.229.251', '/news', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2164, '178.136.229.251', '/articles', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2165, '178.136.229.251', '/contact', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2166, '178.136.229.251', '/o_nas', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2167, '178.136.229.251', '/news', 1446195945, 1446195945, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2168, '178.136.229.251', '/o_nas', 1446195945, 1446195946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2169, '178.136.229.251', '/articles', 1446195946, 1446195946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2170, '178.136.229.251', '/news', 1446195946, 1446195946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2171, '178.136.229.251', '/news', 1446195946, 1446195946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2172, '178.136.229.251', '/catalog/kedy', 1446195946, 1446195946, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2173, '178.136.229.251', '/news', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2174, '178.136.229.251', '/contact', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2175, '178.136.229.251', '/news', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2176, '178.136.229.251', '/contact', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2177, '178.136.229.251', '/news', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2178, '178.136.229.251', '/contact', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2179, '178.136.229.251', '/faq', 1446195947, 1446195947, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2180, '178.136.229.251', '/news', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(2181, '178.136.229.251', '/catalog/kedy', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2182, '178.136.229.251', '/catalog/kedy', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2183, '178.136.229.251', '/faq', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2184, '178.136.229.251', '/articles', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2185, '178.136.229.251', '/catalog/kedy', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2186, '178.136.229.251', '/articles', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2187, '178.136.229.251', '/contact', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2188, '178.136.229.251', '/articles', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2189, '178.136.229.251', '/faq', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2190, '178.136.229.251', '/o_nas', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2191, '178.136.229.251', '/contact', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2192, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2193, '178.136.229.251', '/o_nas', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2194, '178.136.229.251', '/faq', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2195, '178.136.229.251', '/contact', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2196, '178.136.229.251', '/catalog/kedy', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2197, '178.136.229.251', '/articles', 1446195948, 1446195948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2198, '178.136.229.251', '/contact', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2199, '178.136.229.251', '/catalog/kedy', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2200, '178.136.229.251', '/faq', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2201, '178.136.229.251', '/catalog/kedy', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2202, '178.136.229.251', '/catalog/krossovki', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2203, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2204, '178.136.229.251', '/contact', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2205, '178.136.229.251', '/faq', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2206, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2207, '178.136.229.251', '/news', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2208, '178.136.229.251', '/o_nas', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2209, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2210, '178.136.229.251', '/faq', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2211, '178.136.229.251', '/catalog/kedy', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2212, '178.136.229.251', '/articles', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2213, '178.136.229.251', '/', 1446195949, 1446195949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2214, '178.136.229.251', '/catalog/kedy', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2215, '178.136.229.251', '/o_nas', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2216, '178.136.229.251', '/catalog/kedy', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2217, '178.136.229.251', '/catalog/krossovki', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2218, '178.136.229.251', '/articles', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2219, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2220, '178.136.229.251', '/o_nas', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2221, '178.136.229.251', '/articles', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2222, '178.136.229.251', '/catalog/kedy', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2223, '178.136.229.251', '/catalog/krossovki', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2224, '178.136.229.251', '/articles', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2225, '178.136.229.251', '/contact', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2226, '178.136.229.251', '/faq', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2227, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2228, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2229, '178.136.229.251', '/faq', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2230, '178.136.229.251', '/o_nas', 1446195950, 1446195950, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2231, '178.136.229.251', '/news', 1446195950, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2232, '178.136.229.251', '/', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2233, '178.136.229.251', '/catalog/krossovki', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2234, '178.136.229.251', '/articles', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2235, '178.136.229.251', '/o_nas', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2236, '178.136.229.251', '/catalog/krossovki', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2237, '178.136.229.251', '/news', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2238, '178.136.229.251', '/', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2239, '178.136.229.251', '/catalog/krossovki', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2240, '178.136.229.251', '/news', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2241, '178.136.229.251', '/o_nas', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2242, '178.136.229.251', '/o_nas', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2243, '178.136.229.251', '/catalog/kedy', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2244, '178.136.229.251', '/o_nas', 1446195951, 1446195951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2245, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195951, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2246, '178.136.229.251', '/', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2247, '178.136.229.251', '/news', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2248, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2249, '178.136.229.251', '/faq', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2250, '178.136.229.251', '/news', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2251, '178.136.229.251', '/', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2252, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2253, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2254, '178.136.229.251', '/news', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2255, '178.136.229.251', '/contact', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2256, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2257, '178.136.229.251', '/catalog/krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2258, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2259, '178.136.229.251', '/contact', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2260, '178.136.229.251', '/catalog/krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2261, '178.136.229.251', '/contact', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2262, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2263, '178.136.229.251', '/contact', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2264, '178.136.229.251', '/o_nas', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2265, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195952, 1446195952, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2266, '178.136.229.251', '/catalog/kedy', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2267, '178.136.229.251', '/catalog/krossovki', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2268, '178.136.229.251', '/faq', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2269, '178.136.229.251', '/contact', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2270, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2271, '178.136.229.251', '/articles', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2272, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2273, '178.136.229.251', '/articles', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2274, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2275, '178.136.229.251', '/faq', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2276, '178.136.229.251', '/catalog/krossovki', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2277, '178.136.229.251', '/', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2278, '178.136.229.251', '/faq', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2279, '178.136.229.251', '/articles', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2280, '178.136.229.251', '/contact', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2281, '178.136.229.251', '/catalog/kedy', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2282, '178.136.229.251', '/catalog/krossovki', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2283, '178.136.229.251', '/faq', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2284, '178.136.229.251', '/', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2285, '178.136.229.251', '/faq', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2286, '178.136.229.251', '/catalog/kedy', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2287, '178.136.229.251', '/catalog/krossovki', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2288, '178.136.229.251', '/contact', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2289, '178.136.229.251', '/news', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2290, '178.136.229.251', '/catalog/kedy', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2291, '178.136.229.251', '/articles', 1446195953, 1446195953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2292, '178.136.229.251', '/contact', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2293, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2294, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2295, '178.136.229.251', '/o_nas', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2296, '178.136.229.251', '/articles', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2297, '178.136.229.251', '/articles', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2298, '178.136.229.251', '/faq', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2299, '178.136.229.251', '/articles', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2300, '178.136.229.251', '/', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2301, '178.136.229.251', '/contact', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2302, '178.136.229.251', '/catalog/kedy', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2303, '178.136.229.251', '/o_nas', 1446195955, 1446195955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2304, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2305, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2306, '178.136.229.251', '/o_nas', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2307, '178.136.229.251', '/articles', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2308, '178.136.229.251', '/', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2309, '178.136.229.251', '/catalog/kedy', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2310, '178.136.229.251', '/articles', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2311, '178.136.229.251', '/faq', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2312, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2313, '178.136.229.251', '/faq', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2314, '178.136.229.251', '/o_nas', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2315, '178.136.229.251', '/o_nas', 1446195956, 1446195956, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2316, '178.136.229.251', '/', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2317, '178.136.229.251', '/news', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2318, '178.136.229.251', '/o_nas', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2319, '178.136.229.251', '/news', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2320, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2321, '178.136.229.251', '/', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2322, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2323, '178.136.229.251', '/news', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2324, '178.136.229.251', '/catalog/kedy', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2325, '178.136.229.251', '/o_nas', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2326, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2327, '178.136.229.251', '/catalog/kedy', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2328, '178.136.229.251', '/o_nas', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2329, '178.136.229.251', '/catalog/krossovki', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2330, '178.136.229.251', '/articles', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2331, '178.136.229.251', '/catalog/kedy', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2332, '178.136.229.251', '/catalog/krossovki', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2333, '178.136.229.251', '/articles', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2334, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195957, 1446195957, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2335, '178.136.229.251', '/o_nas', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2336, '178.136.229.251', '/articles', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2337, '178.136.229.251', '/contact', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2338, '178.136.229.251', '/articles', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2339, '178.136.229.251', '/news', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2340, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2341, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2342, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2343, '178.136.229.251', '/news', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2344, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2345, '178.136.229.251', '/catalog/krossovki', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2346, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2347, '178.136.229.251', '/news', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2348, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2349, '178.136.229.251', '/', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2350, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2351, '178.136.229.251', '/cart', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2352, '178.136.229.251', '/catalog/krossovki', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2353, '178.136.229.251', '/catalog/kedy', 1446195958, 1446195958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2354, '178.136.229.251', '/', 1446195958, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2355, '178.136.229.251', '/catalog/krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2356, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2357, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2358, '178.136.229.251', '/news', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2359, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2360, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2361, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2362, '178.136.229.251', '/contact', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2363, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2364, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2365, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2366, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2367, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2368, '178.136.229.251', '/contact', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2369, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2370, '178.136.229.251', '/contact', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2371, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2372, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2373, '178.136.229.251', '/sale', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2374, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2375, '178.136.229.251', '/sale', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2376, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2377, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2378, '178.136.229.251', '/sale', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2379, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2380, '178.136.229.251', '/sale', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2381, '178.136.229.251', '/articles', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2382, '178.136.229.251', '/', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2383, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2384, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2385, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2386, '178.136.229.251', '/contact', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2387, '178.136.229.251', '/faq', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2388, '178.136.229.251', '/catalog/krossovki', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2389, '178.136.229.251', '/contact', 1446195959, 1446195959, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2390, '178.136.229.251', '/catalog/krossovki', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2391, '178.136.229.251', '/contact', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2392, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2393, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2394, '178.136.229.251', '/catalog/krossovki', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2395, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2396, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2397, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2398, '178.136.229.251', '/sale', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2399, '178.136.229.251', '/faq', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2400, '178.136.229.251', '/sale', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2401, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2402, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2403, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2404, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2405, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2406, '178.136.229.251', '/sale', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2407, '178.136.229.251', '/brands', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2408, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2409, '178.136.229.251', '/brands', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2410, '178.136.229.251', '/contact', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2411, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2412, '178.136.229.251', '/brands', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2413, '178.136.229.251', '/catalog/krossovki', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2414, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2415, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2416, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2417, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2418, '178.136.229.251', '/brands', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2419, '178.136.229.251', '/', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2420, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2421, '178.136.229.251', '/', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2422, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2423, '178.136.229.251', '/cart', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2424, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2425, '178.136.229.251', '/articles', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2426, '178.136.229.251', '/cart', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2427, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2428, '178.136.229.251', '/', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2429, '178.136.229.251', '/catalog/kedy', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2430, '178.136.229.251', '/catalog/krossovki', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2431, '178.136.229.251', '/cart', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2432, '178.136.229.251', '/o_nas', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2433, '178.136.229.251', '/brands', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2434, '178.136.229.251', '/faq', 1446195960, 1446195960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2435, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2436, '178.136.229.251', '/cart', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2437, '178.136.229.251', '/cart', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2438, '178.136.229.251', '/catalog/krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2439, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2440, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2441, '178.136.229.251', '/brands', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2442, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2443, '178.136.229.251', '/catalog/kedy', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2444, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2445, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2446, '178.136.229.251', '/faq', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2447, '178.136.229.251', '/cart', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2448, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2449, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2450, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2451, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2452, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2453, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2454, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2455, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2456, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2457, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2458, '178.136.229.251', '/news', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2459, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2460, '178.136.229.251', '/o_nas', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2461, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2462, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2463, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2464, '178.136.229.251', '/faq', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2465, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2466, '178.136.229.251', '/cart', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2467, '178.136.229.251', '/', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2468, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2469, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195961, 1446195961, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2470, '178.136.229.251', '/o_nas', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2471, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2472, '178.136.229.251', '/sale', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2473, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2474, '178.136.229.251', '/catalog/krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2475, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2476, '178.136.229.251', '/cart', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2477, '178.136.229.251', '/', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2478, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2479, '178.136.229.251', '/', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2480, '178.136.229.251', '/', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(2481, '178.136.229.251', '/catalog/krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2482, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2483, '178.136.229.251', '/sale', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2484, '178.136.229.251', '/news', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2485, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2486, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2487, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2488, '178.136.229.251', '/catalog/krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2489, '178.136.229.251', '/sale', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2490, '178.136.229.251', '/catalog/krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2491, '178.136.229.251', '/catalog/krossovki', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2492, '178.136.229.251', '/sale', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2493, '178.136.229.251', '/contact', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2494, '178.136.229.251', '/', 1446195963, 1446195963, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2495, '178.136.229.251', '/o_nas', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2496, '178.136.229.251', '/catalog/krossovki', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2497, '178.136.229.251', '/cart', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2498, '178.136.229.251', '/catalog/krossovki', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2499, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2500, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2501, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2502, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2503, '178.136.229.251', '/cart', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2504, '178.136.229.251', '/sale', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2505, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2506, '178.136.229.251', '/contact', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2507, '178.136.229.251', '/contact', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2508, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2509, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2510, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2511, '178.136.229.251', '/contact', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2512, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2513, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2514, '178.136.229.251', '/sale', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2515, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2516, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2517, '178.136.229.251', '/sale', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2518, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2519, '178.136.229.251', '/brands', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2520, '178.136.229.251', '/catalog/krossovki', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2521, '178.136.229.251', '/', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2522, '178.136.229.251', '/contact', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2523, '178.136.229.251', '/catalog/kedy', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2524, '178.136.229.251', '/news', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2525, '178.136.229.251', '/cart', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2526, '178.136.229.251', '/catalog/kedy', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2527, '178.136.229.251', '/catalog/krossovki', 1446195964, 1446195964, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2528, '178.136.229.251', '/catalog/kedy', 1446195964, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2529, '178.136.229.251', '/cart', 1446195965, 1446195992, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2530, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2531, '178.136.229.251', '/brands', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2532, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2533, '178.136.229.251', '/catalog/krossovki', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2534, '178.136.229.251', '/news', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2535, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2536, '178.136.229.251', '/sale', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2537, '178.136.229.251', '/catalog/kedy', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2538, '178.136.229.251', '/brands', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2539, '178.136.229.251', '/cart', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2540, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2541, '178.136.229.251', '/catalog/kedy', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2542, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2543, '178.136.229.251', '/cart', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2544, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2545, '178.136.229.251', '/brands', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2546, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2547, '178.136.229.251', '/brands', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2548, '178.136.229.251', '/sale', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2549, '178.136.229.251', '/catalog/kedy', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2550, '178.136.229.251', '/', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2551, '178.136.229.251', '/brands', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2552, '178.136.229.251', '/catalog/kedy', 1446195965, 1446195965, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2553, '178.136.229.251', '/sale', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2554, '178.136.229.251', '/', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2555, '178.136.229.251', '/sale', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2556, '178.136.229.251', '/brands', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2557, '178.136.229.251', '/', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2558, '178.136.229.251', '/brands', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2559, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2560, '178.136.229.251', '/', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2561, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2562, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2563, '178.136.229.251', '/', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2564, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2565, '178.136.229.251', '/cart', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2566, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2567, '178.136.229.251', '/brands', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2568, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2569, '178.136.229.251', '/contact', 1446195966, 1446195966, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2570, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195966, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2571, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2572, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2573, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2574, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2575, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2576, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2577, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2578, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2579, '178.136.229.251', '/sale', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2580, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2581, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2582, '178.136.229.251', '/brands', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2583, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2584, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2585, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2586, '178.136.229.251', '/contact', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2587, '178.136.229.251', '/sale', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2588, '178.136.229.251', '/catalog/krossovki', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2589, '178.136.229.251', '/', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2590, '178.136.229.251', '/sale', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2591, '178.136.229.251', '/catalog/kedy', 1446195967, 1446195967, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2592, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2593, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2594, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2595, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2596, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2597, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2598, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2599, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2600, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2601, '178.136.229.251', '/brands', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2602, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2603, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2604, '178.136.229.251', '/catalog/kedy', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2605, '178.136.229.251', '/catalog/krossovki', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2606, '178.136.229.251', '/', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2607, '178.136.229.251', '/brands', 1446195968, 1446195968, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2608, '178.136.229.251', '/catalog/krossovki', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2609, '178.136.229.251', '/cart', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2610, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2611, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2612, '178.136.229.251', '/brands', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2613, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2614, '178.136.229.251', '/sale', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2615, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2616, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2617, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2618, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2619, '178.136.229.251', '/cart', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2620, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2621, '178.136.229.251', '/', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2622, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195969, 1446195969, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2623, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2624, '178.136.229.251', '/', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2625, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2626, '178.136.229.251', '/cart', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2627, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2628, '178.136.229.251', '/', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2629, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2630, '178.136.229.251', '/catalog/krossovki', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2631, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2632, '178.136.229.251', '/brands', 1446195970, 1446195970, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2633, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2634, '178.136.229.251', '/', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 5),
(2635, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2636, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2637, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2638, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2639, '178.136.229.251', '/catalog/krossovki', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2640, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2641, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2642, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2643, '178.136.229.251', '/', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2644, '178.136.229.251', '/cart', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2645, '178.136.229.251', '/sale', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2646, '178.136.229.251', '/', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2647, '178.136.229.251', '/sale', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2648, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195971, 1446195971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2649, '178.136.229.251', '/', 1446195971, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2650, '178.136.229.251', '/sale', 1446195972, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2651, '178.136.229.251', '/brands', 1446195972, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2652, '178.136.229.251', '/brands', 1446195972, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2653, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195972, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2654, '178.136.229.251', '/', 1446195972, 1446195972, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2655, '178.136.229.251', '/sale', 1446195972, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2656, '178.136.229.251', '/brands', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2657, '178.136.229.251', '/sale', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2658, '178.136.229.251', '/', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2659, '178.136.229.251', '/sale', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2660, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2661, '178.136.229.251', '/sale', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2662, '178.136.229.251', '/sale', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2663, '178.136.229.251', '/brands', 1446195973, 1446195973, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2664, '178.136.229.251', '/cart', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2665, '178.136.229.251', '/brands', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 7),
(2666, '178.136.229.251', '/cart', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2667, '178.136.229.251', '/brands', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2668, '178.136.229.251', '/cart', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2669, '178.136.229.251', '/', 1446195974, 1446195974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2670, '178.136.229.251', '/cart', 1446195975, 1446195975, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2671, '178.136.229.251', '/', 1446195975, 1446195975, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 6),
(2672, '178.136.229.251', '/cart', 1446195975, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2673, '178.136.229.251', '/', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2674, '178.136.229.251', '/cart', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2675, '178.136.229.251', '/', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2676, '178.136.229.251', '/sale', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2677, '178.136.229.251', '/', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2678, '178.136.229.251', '/sale', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2679, '178.136.229.251', '/', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2680, '178.136.229.251', '/sale', 1446195976, 1446195976, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2681, '178.136.229.251', '/', 1446195976, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2682, '178.136.229.251', '/cart', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2683, '178.136.229.251', '/brands', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2684, '178.136.229.251', '/', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2685, '178.136.229.251', '/brands', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2686, '178.136.229.251', '/sale', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2687, '178.136.229.251', '/', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2688, '178.136.229.251', '/brands', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2689, '178.136.229.251', '/', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2690, '178.136.229.251', '/sale', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2691, '178.136.229.251', '/', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2692, '178.136.229.251', '/brands', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2693, '178.136.229.251', '/', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2694, '178.136.229.251', '/sale', 1446195977, 1446195977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2695, '178.136.229.251', '/', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2696, '178.136.229.251', '/articles', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2697, '178.136.229.251', '/brands', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2698, '178.136.229.251', '/', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2699, '178.136.229.251', '/brands', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2700, '178.136.229.251', '/sale', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2701, '178.136.229.251', '/', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2702, '178.136.229.251', '/cart', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2703, '178.136.229.251', '/sale', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2704, '178.136.229.251', '/articles', 1446195978, 1446195978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2705, '178.136.229.251', '/sale', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2706, '178.136.229.251', '/', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2707, '178.136.229.251', '/brands', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2708, '178.136.229.251', '/sale', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2709, '178.136.229.251', '/brands', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2710, '178.136.229.251', '/brands', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2711, '178.136.229.251', '/', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2712, '178.136.229.251', '/', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2713, '178.136.229.251', '/articles', 1446195979, 1446195979, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2714, '178.136.229.251', '/', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2715, '178.136.229.251', '/articles', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2716, '178.136.229.251', '/faq', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2717, '178.136.229.251', '/', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2718, '178.136.229.251', '/articles', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2719, '178.136.229.251', '/', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2720, '178.136.229.251', '/faq', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2721, '178.136.229.251', '/faq', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2722, '178.136.229.251', '/', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2723, '178.136.229.251', '/cart', 1446195980, 1446195980, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2724, '178.136.229.251', '/brands', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2725, '178.136.229.251', '/', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2726, '178.136.229.251', '/sale', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2727, '178.136.229.251', '/', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2728, '178.136.229.251', '/o_nas', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2729, '178.136.229.251', '/faq', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2730, '178.136.229.251', '/', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2731, '178.136.229.251', '/o_nas', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2732, '178.136.229.251', '/', 1446195981, 1446195981, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2733, '178.136.229.251', '/brands', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2734, '178.136.229.251', '/', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2735, '178.136.229.251', '/sale', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2736, '178.136.229.251', '/news', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2737, '178.136.229.251', '/o_nas', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2738, '178.136.229.251', '/', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2739, '178.136.229.251', '/news', 1446195982, 1446195982, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2740, '178.136.229.251', '/faq', 1446195982, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2741, '178.136.229.251', '/news', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2742, '178.136.229.251', '/', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2743, '178.136.229.251', '/brands', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2744, '178.136.229.251', '/faq', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2745, '178.136.229.251', '/sale', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2746, '178.136.229.251', '/o_nas', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2747, '178.136.229.251', '/contact', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2748, '178.136.229.251', '/o_nas', 1446195983, 1446195983, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2749, '178.136.229.251', '/articles', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2750, '178.136.229.251', '/', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2751, '178.136.229.251', '/contact', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2752, '178.136.229.251', '/brands', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2753, '178.136.229.251', '/catalog/kedy', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2754, '178.136.229.251', '/news', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2755, '178.136.229.251', '/o_nas', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2756, '178.136.229.251', '/contact', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2757, '178.136.229.251', '/articles', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2758, '178.136.229.251', '/', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2759, '178.136.229.251', '/catalog/kedy', 1446195984, 1446195984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2760, '178.136.229.251', '/', 1446195984, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2761, '178.136.229.251', '/contact', 1446195985, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2762, '178.136.229.251', '/catalog/kedy', 1446195985, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2763, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195985, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2764, '178.136.229.251', '/news', 1446195985, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2765, '178.136.229.251', '/', 1446195985, 1446195985, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2766, '178.136.229.251', '/contact', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2767, '178.136.229.251', '/', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2768, '178.136.229.251', '/catalog/kedy', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2769, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2770, '178.136.229.251', '/faq', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2771, '178.136.229.251', '/catalog/krossovki', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2772, '178.136.229.251', '/', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2773, '178.136.229.251', '/catalog/kedy', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2774, '178.136.229.251', '/contact', 1446195986, 1446195986, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2775, '178.136.229.251', '/faq', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2776, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2777, '178.136.229.251', '/articles', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2778, '178.136.229.251', '/o_nas', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2779, '178.136.229.251', '/', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2780, '178.136.229.251', '/catalog/kedy', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2781, '178.136.229.251', '/catalog/kedy', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2782, '178.136.229.251', '/catalog/kedy', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2783, '178.136.229.251', '/', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2784, '178.136.229.251', '/catalog/krossovki', 1446195987, 1446195987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2785, '178.136.229.251', '/articles', 1446195988, 1446195988, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(2786, '178.136.229.251', '/news', 1446195988, 1446195988, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2787, '178.136.229.251', '/', 1446195988, 1446195988, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2788, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2789, '178.136.229.251', '/catalog/krossovki', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2790, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2791, '178.136.229.251', '/articles', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2792, '178.136.229.251', '/catalog/kedy', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2793, '178.136.229.251', '/o_nas', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2794, '178.136.229.251', '/articles', 1446195990, 1446195990, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2795, '178.136.229.251', '/catalog/povsednevnye_krossovki', 1446195991, 1446195991, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2796, '178.136.229.251', '/articles', 1446195997, 1446195997, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2797, '178.136.229.251', '/', 1446196006, 1446196006, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2798, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446196006, 1446196006, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2799, '178.136.229.251', '/catalog/krossovki', 1446196006, 1446196006, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2800, '178.136.229.251', '/news', 1446196016, 1446196016, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2801, '178.136.229.251', '/catalog/krossovki', 1446196016, 1446196017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2802, '178.136.229.251', '/faq', 1446196017, 1446196017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2803, '178.136.229.251', '/catalog/krossovki', 1446196017, 1446196017, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2804, '178.136.229.251', '/', 1446196041, 1446196041, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2805, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446196044, 1446196044, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2806, '178.136.229.251', '/cart', 1446196048, 1446196048, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2807, '178.136.229.251', '/faq', 1446196122, 1446196122, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2808, '178.136.229.251', '/new', 1446196125, 1446196125, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2809, '178.136.229.251', '/', 1446196128, 1446198576, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(2810, '178.136.229.251', '/', 1446196606, 1446196606, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2811, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446196608, 1446196608, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2812, '178.136.229.251', '/cart', 1446196612, 1446196612, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2813, '178.136.229.251', '/', 1446196662, 1446196662, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2814, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446196664, 1446196664, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2815, '178.136.229.251', '/cart', 1446196670, 1446196670, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2816, '178.136.229.251', '/', 1446196751, 1446196751, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2817, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446196753, 1446196753, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2818, '178.136.229.251', '/cart', 1446196757, 1446196769, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2819, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446196780, 1446196780, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2820, '178.136.229.251', '/cart', 1446196843, 1446196881, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2821, '178.136.229.251', '/', 1446197189, 1446197189, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2822, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446197191, 1446197191, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2823, '178.136.229.251', '/cart', 1446197196, 1446197311, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 5),
(2824, '178.136.229.251', '/', 1446197707, 1446197707, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2825, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446197712, 1446197712, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2826, '178.136.229.251', '/cart', 1446197716, 1446197728, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2827, '178.136.229.251', '/', 1446198026, 1446198026, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2828, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446198028, 1446198028, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2829, '178.136.229.251', '/', 1446198067, 1446198067, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2830, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6927', 1446198076, 1446198076, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2831, '178.136.229.251', '/', 1446198147, 1446198147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2832, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446198151, 1446198155, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2833, '178.136.229.251', '/cart', 1446198159, 1446198502, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2834, '178.136.229.251', '/', 1446198541, 1446203212, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2835, '178.136.229.251', '/product/nike_air_max_90_hyperfuse6869', 1446198733, 1446198733, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2836, '178.136.229.251', '/', 1446199086, 1446199086, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2837, '178.136.229.251', '/catalog', 1446203230, 1446203230, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2838, '178.136.229.251', '/catalog/kedy', 1446203234, 1446203234, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2839, '193.239.254.154', '/', 1446205418, 1446209868, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(2840, '178.136.229.251', '/', 1446209549, 1446216427, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(2841, '178.136.229.251', '/news', 1446216431, 1446216431, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2842, '178.136.229.251', '/news/novye_krossovki_nike_air_force_1_low_purple_venom', 1446216435, 1446217653, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 7),
(2843, '178.136.229.251', '/', 1446466026, 1446466026, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2844, '178.136.229.251', '/catalog/kedy', 1446466038, 1446466038, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2845, '178.136.229.251', '/catalog/kedy?per_page=15&sort=cost&type=asc', 1446466060, 1446466060, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2846, '178.136.229.251', '/catalog/kedy?per_page=15&sort=created_at&type=desc', 1446466071, 1446466071, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2847, '178.136.229.251', '/catalog/kedy?per_page=15&sort=cost&type=asc', 1446466079, 1446466079, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2848, '178.136.229.251', '/', 1446467186, 1446475971, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 4),
(2849, '212.92.249.206', '/', 1446468906, 1446468906, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2850, '178.136.229.251', '/product/nike_air_max_90_hyperfuse', 1446475978, 1446475978, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2851, '178.136.229.251', '/dostavka', 1446476029, 1446476029, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2852, '178.136.229.251', '/', 1446476031, 1446482463, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 2),
(2853, '176.8.202.47', '/', 1446480282, 1446480282, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2854, '176.8.202.47', '/product/nike_air_max_90_hyperfuse9495', 1446480302, 1446480302, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2855, '176.8.202.47', '/product/nike_air_max_90_hyperfuse6927', 1446480446, 1446480446, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2856, '176.8.202.47', '/brands', 1446480490, 1446480490, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2857, '176.8.202.47', '/sale', 1446480492, 1446480492, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2858, '176.8.202.47', '/product/nike_air_max_90_hyperfuse6873', 1446480496, 1446480496, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2859, '176.8.202.47', '/popular', 1446480691, 1446480691, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2860, '176.8.202.47', '/product/nike_air_max_90_hyperfuse6869', 1446480701, 1446480701, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2861, '176.8.202.47', '/', 1446488028, 1446488028, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2862, '176.8.202.47', '/catalog/futbolki', 1446488071, 1446488071, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2863, '176.8.202.47', '/new', 1446488075, 1446488075, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.80 Safari/537.36', 1),
(2864, '127.0.0.1', '/', 1446489944, 1446489944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2865, '127.0.0.1', '/catalog', 1446489949, 1446489949, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2866, '127.0.0.1', '/catalog/for_men', 1446489953, 1446489953, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2867, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha&brand=nike&sezon=spring', 1446494681, 1446494714, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2868, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha&brand=nike', 1446494719, 1446495835, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 9),
(2869, '127.0.0.1', '/product', 1446495862, 1446495862, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2870, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha&brand=nike', 1446495864, 1446495864, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2871, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha&brand=nike?per_page=30', 1446495875, 1446495875, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2872, '127.0.0.1', '/', 1446662226, 1446662810, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2873, '127.0.0.1', '/faq', 1446662816, 1446662816, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2874, '127.0.0.1', '/catalog', 1446662824, 1446662824, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2875, '127.0.0.1', '/catalog/kedy', 1446662827, 1446662827, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2876, '127.0.0.1', '/product', 1446662830, 1446662830, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2877, '127.0.0.1', '/catalog/kedy', 1446662832, 1446664037, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 13),
(2878, '127.0.0.1', '/catalog/kedy/page/2', 1446664039, 1446664039, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2879, '127.0.0.1', '/catalog/kedy', 1446664042, 1446664096, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2880, '127.0.0.1', '/catalog/kedy/filter/min_cost=0&max_cost=1454', 1446664188, 1446664188, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2881, '127.0.0.1', '/catalog/kedy/filter/min_cost=504&max_cost=1454', 1446664196, 1446664196, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2882, '127.0.0.1', '/catalog/kedy', 1446664205, 1446665570, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 29),
(2883, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha', 1446665574, 1446665574, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2884, '127.0.0.1', '/catalog/kedy', 1446665578, 1446665578, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2885, '127.0.0.1', '/catalog/kedy/filter/country=china', 1446665588, 1446665588, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2886, '127.0.0.1', '/catalog/kedy', 1446665592, 1446665592, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2887, '127.0.0.1', '/catalog/kedy/filter/material=nylon', 1446665594, 1446665594, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2888, '127.0.0.1', '/catalog/kedy', 1446665596, 1446665596, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2889, '127.0.0.1', '/catalog/kedy/filter/material=poliestr', 1446665597, 1446665597, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2890, '127.0.0.1', '/catalog/kedy/filter/country=ukraine&material=poliestr', 1446665600, 1446665600, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2891, '127.0.0.1', '/catalog/kedy/filter/material=poliestr', 1446665602, 1446665602, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2892, '127.0.0.1', '/catalog/kedy', 1446665603, 1446665603, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2893, '127.0.0.1', '/catalog/kedy/filter/country=ukraine', 1446665605, 1446665605, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2894, '127.0.0.1', '/catalog/kedy', 1446665612, 1446665612, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2895, '127.0.0.1', '/catalog/kedy/filter/sezon=autumn', 1446665615, 1446665615, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2896, '127.0.0.1', '/catalog/kedy/filter/color=turquoise&sezon=autumn', 1446665619, 1446665619, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2897, '127.0.0.1', '/catalog/kedy/filter/color=turquoise&material=iskustvennayazamsha&sezon=autumn', 1446665624, 1446665624, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2898, '127.0.0.1', '/catalog/kedy', 1446665627, 1446665627, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2899, '127.0.0.1', '/catalog/kedy/filter/min_cost=447&max_cost=1760', 1446665638, 1446665638, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2900, '127.0.0.1', '/catalog/kedy', 1446665644, 1446665644, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2901, '127.0.0.1', '/catalog/kedy/filter/min_cost=604&max_cost=2500', 1446665647, 1446665647, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2902, '127.0.0.1', '/catalog/kedy', 1446665663, 1446665663, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2903, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2500', 1446665666, 1446665711, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2904, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422', 1446665716, 1446665716, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2905, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=iskustvennayazamsha', 1446665719, 1446665720, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2906, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=iskustvennayazamsha,nylon', 1446665723, 1446665773, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2907, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon', 1446665777, 1446665777, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2908, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon,skin', 1446665781, 1446665781, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2909, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon', 1446665788, 1446665788, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2910, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon,skin', 1446665789, 1446665994, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2911, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon,poliestr,skin', 1446665996, 1446666060, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 6),
(2912, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=nylon,skin', 1446666066, 1446666066, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2913, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422&material=skin', 1446666068, 1446666068, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2914, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2422', 1446666070, 1446666070, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2915, '127.0.0.1', '/catalog/kedy', 1446666075, 1446666075, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2916, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha', 1446666077, 1446666077, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2917, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha,poliestr', 1446666079, 1446666079, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2918, '127.0.0.1', '/catalog/kedy/filter/material=poliestr', 1446666081, 1446666082, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2919, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha,poliestr', 1446666083, 1446666083, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2920, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,iskustvennayazamsha,poliestr', 1446666084, 1446666085, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2921, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,iskustvennayazamsha,poliestr,skin', 1446666086, 1446666086, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2922, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666088, 1446666105, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 4),
(2923, '127.0.0.1', '/catalog/kedy/filter/country=china&material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666107, 1446666108, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2924, '127.0.0.1', '/catalog/kedy/filter/country=china,ukraine&material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666110, 1446666110, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2925, '127.0.0.1', '/catalog/kedy/filter/country=ukraine&material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666112, 1446666112, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2926, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666117, 1446666117, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2927, '127.0.0.1', '/catalog/kedy/filter/color=turquoise&material=iskustvennayakozha,iskustvennayazamsha,nylon,poliestr,skin', 1446666119, 1446668903, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2928, '127.0.0.1', '/catalog/kedy', 1446668908, 1446668908, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2929, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha', 1446668910, 1446668911, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2930, '127.0.0.1', '/catalog/kedy', 1446668913, 1446668913, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2931, '127.0.0.1', '/catalog/kedy/filter/material=poliestr', 1446668914, 1446668915, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2932, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,poliestr', 1446668917, 1446668917, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2933, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2097&material=iskustvennayakozha,poliestr', 1446668922, 1446668922, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2934, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2097&material=iskustvennayakozha', 1446668926, 1446668927, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2935, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2097&material=iskustvennayakozha,poliestr', 1446668929, 1446668929, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2936, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2097&material=poliestr', 1446668930, 1446668930, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2937, '127.0.0.1', '/catalog/kedy/filter/min_cost=255&max_cost=2097', 1446668932, 1446668932, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2938, '127.0.0.1', '/catalog/kedy', 1446668941, 1446668941, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2939, '127.0.0.1', '/catalog/kedy/filter/min_cost=480&max_cost=2500', 1446668944, 1446668944, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2940, '127.0.0.1', '/catalog/kedy/filter/min_cost=480&max_cost=2500&material=skin', 1446668949, 1446668974, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2941, '127.0.0.1', '/catalog/kedy/filter/min_cost=480&max_cost=2500', 1446668977, 1446668977, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2942, '127.0.0.1', '/catalog/kedy', 1446668984, 1446668984, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2943, '127.0.0.1', '/catalog/kedy/filter/material=nylon', 1446668987, 1446668987, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2944, '127.0.0.1', '/catalog/kedy', 1446668991, 1446668991, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2945, '127.0.0.1', '/catalog/kedy/filter/material=poliestr', 1446668992, 1446668992, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2946, '127.0.0.1', '/catalog/kedy', 1446668995, 1446668995, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2947, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669102, 1446669275, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2948, '127.0.0.1', '/catalog/kedy/filter/available=2?per_page=40', 1446669276, 1446669277, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2949, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669278, 1446669278, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2950, '127.0.0.1', '/catalog/kedy/filter/available=1?per_page=40', 1446669280, 1446669280, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2951, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669281, 1446669281, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2952, '127.0.0.1', '/catalog/kedy/filter/brand=nike?per_page=40', 1446669282, 1446669283, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2953, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model?per_page=40', 1446669285, 1446669286, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2954, '127.0.0.1', '/catalog/kedy/filter/model=test-model?per_page=40', 1446669288, 1446669288, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2955, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model?per_page=40', 1446669290, 1446669290, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2956, '127.0.0.1', '/catalog/kedy/filter/brand=nike?per_page=40', 1446669292, 1446669292, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2957, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669294, 1446669294, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2958, '127.0.0.1', '/catalog/kedy/filter/available=1?per_page=40', 1446669330, 1446669330, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2959, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669331, 1446669332, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2960, '127.0.0.1', '/catalog/kedy/filter/available=2?per_page=40', 1446669333, 1446669333, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2961, '127.0.0.1', '/catalog/kedy?per_page=40', 1446669334, 1446669412, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2962, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha?per_page=40', 1446669414, 1446669414, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2963, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin?per_page=40', 1446669434, 1446669434, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2964, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin&sezon=winter?per_page=40', 1446669437, 1446669437, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2965, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin&sezon=summer,winter?per_page=40', 1446669439, 1446669439, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2966, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin&sezon=winter?per_page=40', 1446669446, 1446669446, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2967, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin&sezon=spring,winter?per_page=40', 1446669447, 1446669447, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2968, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayakozha,skin&sezon=spring,winter,summer&bbb=nnn,lll&c=p?per_page=40', 1446671942, 1446671942, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2969, '127.0.0.1', '/catalog/kedy', 1446671948, 1446671948, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2970, '127.0.0.1', '/catalog/kedy/filter/sezon=spring', 1446671951, 1446671951, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2971, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446671954, 1446671955, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2972, '127.0.0.1', '/catalog/kedy/filter/country=china&sezon=spring,winter', 1446671957, 1446671958, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2973, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446671960, 1446671960, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2974, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=winter&country=ukraine,china', 1446674169, 1446674169, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2975, '127.0.0.1', '/catalog/kedy/filter/available=1&country=china,ukraine&material=Zamsha&sezon=winter', 1446674173, 1446674173, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2976, '127.0.0.1', '/catalog/kedy/filter/country=china,ukraine&material=Zamsha&sezon=winter', 1446674175, 1446674175, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2977, '127.0.0.1', '/catalog/kedy/filter/brand=nike&country=china,ukraine&material=Zamsha&sezon=winter', 1446674177, 1446674177, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2978, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&country=china,ukraine&material=Zamsha&sezon=winter', 1446674179, 1446674179, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2979, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&available=1&country=china,ukraine&material=Zamsha&sezon=winter', 1446674181, 1446674181, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2980, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&available=1&country=china,ukraine&material=Zamsha&sezon=spring,winter', 1446674184, 1446674184, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2981, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&available=1&country=china,ukraine&material=Zamsha&sezon=winter', 1446674195, 1446674195, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2982, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&available=1&country=china,ukraine&material=Zamsha,iskustvennayazamsha&sezon=winter', 1446674212, 1446674212, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2983, '127.0.0.1', '/', 1446699020, 1446699020, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2984, '127.0.0.1', '/catalog/kedy', 1446699025, 1446699138, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2985, '127.0.0.1', '/catalog/kedy/filter/sezon=spring', 1446699145, 1446699145, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2986, '127.0.0.1', '/catalog/kedy', 1446699148, 1446699148, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(2987, '127.0.0.1', '/catalog/kedy/filter/sezon=spring', 1446699150, 1446699151, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2988, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446699153, 1446699153, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2989, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,summer,winter', 1446699156, 1446699156, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2990, '127.0.0.1', '/catalog/kedy/filter/sezon=summer,winter', 1446699160, 1446699160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2991, '127.0.0.1', '/catalog/kedy/filter/sezon=summer', 1446699162, 1446699163, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2992, '127.0.0.1', '/catalog/kedy/filter/sezon=summer,winter', 1446699165, 1446699165, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2993, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=summer,winter', 1446699168, 1446699168, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2994, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha,iskustvennayazamsha&sezon=summer,winter', 1446699171, 1446699343, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(2995, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=summer,winter', 1446699346, 1446699346, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2996, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=spring,summer,winter', 1446699350, 1446699350, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2997, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=spring,winter', 1446699363, 1446699364, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2998, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446699368, 1446699368, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(2999, '127.0.0.1', '/catalog/kedy/filter/material=iskustvennayazamsha&sezon=spring,winter', 1446699370, 1446699370, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3000, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446699373, 1446699373, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3001, '127.0.0.1', '/catalog/kedy/filter/country=ukraine&sezon=spring,winter', 1446699375, 1446699376, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3002, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446699377, 1446699377, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3003, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha&sezon=spring,winter', 1446699400, 1446699401, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3004, '127.0.0.1', '/catalog/kedy/filter/sezon=spring,winter', 1446699417, 1446699417, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3005, '127.0.0.1', '/catalog/kedy/filter/sezon=winter', 1446699421, 1446699422, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3006, '127.0.0.1', '/catalog/kedy', 1446699424, 1446699424, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3007, '127.0.0.1', '/catalog/kedy/filter/color=green', 1446699426, 1446699477, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(3008, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green', 1446699572, 1446699572, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3009, '127.0.0.1', '/catalog/kedy/filter/brand=nike&model=test-model&color=green', 1446699574, 1446699574, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3010, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green', 1446699575, 1446699575, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3011, '127.0.0.1', '/catalog/kedy/filter/color=green', 1446699576, 1446699577, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3012, '127.0.0.1', '/', 1446699992, 1446699992, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3013, '127.0.0.1', '/catalog/kedy', 1446700131, 1446700131, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3014, '127.0.0.1', '/catalog/kedy/filter/color=green', 1446700135, 1446700135, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3015, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise', 1446700138, 1446700138, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3016, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine', 1446700140, 1446700140, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3017, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine&material=skin', 1446700144, 1446700144, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3018, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine', 1446700148, 1446700148, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3019, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=china,ukraine', 1446700150, 1446700150, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3020, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=china,ukraine&material=skin', 1446700152, 1446700153, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3021, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine&material=skin', 1446700160, 1446700160, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3022, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine&material=skin&sezon=spring', 1446700163, 1446700163, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3023, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=ukraine&sezon=spring', 1446700166, 1446700166, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3024, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=spring', 1446700168, 1446700168, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3025, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=china&sezon=spring', 1446700170, 1446700171, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3026, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&country=china&material=iskustvennayazamsha&sezon=spring', 1446700174, 1446700507, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(3027, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&material=iskustvennayazamsha&sezon=spring', 1446700543, 1446700543, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3028, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=spring', 1446700545, 1446700545, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3029, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&material=iskustvennayazamsha&sezon=spring', 1446700555, 1446700555, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3030, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&material=iskustvennayazamsha&sezon=spring/page/2', 1446700557, 1446700557, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3031, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&material=iskustvennayazamsha&sezon=spring', 1446700560, 1446700623, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(3032, '127.0.0.1', '/', 1446748039, 1446748039, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3033, '127.0.0.1', '/catalog/kedy', 1446748387, 1446748387, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3034, '127.0.0.1', '/catalog/kedy?per_page=40', 1446748398, 1446748398, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3035, '127.0.0.1', '/catalog/kedy/filter/brand=nike?per_page=40', 1446748409, 1446748409, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3036, '127.0.0.1', '/catalog/kedy?per_page=40', 1446748411, 1446748411, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3037, '127.0.0.1', '/catalog/kedy/filter/material=Zamsha?per_page=40', 1446748422, 1446748422, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3038, '127.0.0.1', '/catalog/kedy?per_page=40', 1446748428, 1446748522, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 5),
(3039, '127.0.0.1', '/catalog/kedy/filter/country=ukraine?per_page=40', 1446748525, 1446748525, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3040, '127.0.0.1', '/catalog/kedy/filter/country=ukraine&sezon=winter?per_page=40', 1446748529, 1446748529, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3041, '127.0.0.1', '/catalog/kedy/filter/sezon=winter?per_page=40', 1446748532, 1446748533, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3042, '127.0.0.1', '/catalog/kedy/filter/color=green&sezon=winter?per_page=40', 1446748535, 1446748535, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3043, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=winter?per_page=40', 1446748537, 1446748537, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3044, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=summer,winter?per_page=40', 1446748545, 1446748546, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3045, '127.0.0.1', '/catalog/kedy/filter/color=turquoise&sezon=summer,winter?per_page=40', 1446748548, 1446748548, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3046, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=summer,winter?per_page=40', 1446748552, 1446748552, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3047, '127.0.0.1', '/catalog/kedy/filter/color=green&sezon=summer,winter?per_page=40', 1446748554, 1446748555, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3048, '127.0.0.1', '/catalog/kedy/filter/color=green&sezon=winter?per_page=40', 1446748557, 1446748557, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3049, '127.0.0.1', '/catalog/kedy/filter/color=green,turquoise&sezon=winter?per_page=40', 1446748729, 1446748730, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3050, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=40', 1446748732, 1446748732, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2);
INSERT INTO `visitors_hits` (`id`, `ip`, `url`, `created_at`, `updated_at`, `status`, `device`, `useragent`, `counter`) VALUES
(3051, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter', 1446748737, 1446748737, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3052, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter/page/2', 1446748740, 1446748740, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3053, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter', 1446748742, 1446748742, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3054, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter/page/2', 1446748744, 1446748744, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3055, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=20&sort=cost&type=asc', 1446748749, 1446748749, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3056, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=20&sort=cost&type=desc', 1446748755, 1446748755, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3057, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=20&sort=created_at&type=desc', 1446748758, 1446748758, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3058, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=20&sort=name&type=desc', 1446748761, 1446748761, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3059, '127.0.0.1', '/catalog/kedy/filter/brand=nike&color=green,turquoise&sezon=winter?per_page=20&sort=name&type=asc', 1446748764, 1446748764, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3060, '127.0.0.1', '/', 1446751811, 1446751811, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3061, '127.0.0.1', '/catalog/kedy', 1446751815, 1446751849, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 6),
(3062, '127.0.0.1', '/product/gfgf', 1446752007, 1446752007, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3063, '127.0.0.1', '/brands/gfgf', 1446752021, 1446752021, '404 Not Found', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3064, '127.0.0.1', '/product/gfgf', 1446752023, 1446752114, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 3),
(3065, '127.0.0.1', '/brands', 1446752147, 1446752147, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3066, '127.0.0.1', '/brands/nike', 1446752219, 1446752219, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3067, '127.0.0.1', '/product/gfgf', 1446752227, 1446752227, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3068, '127.0.0.1', '/new', 1446752228, 1446752228, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3069, '127.0.0.1', '/popular', 1446752230, 1446752230, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3070, '127.0.0.1', '/sale', 1446752233, 1446752233, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3071, '127.0.0.1', '/brands', 1446752235, 1446752235, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3072, '127.0.0.1', '/', 1446752240, 1446752240, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3073, '127.0.0.1', '/product/nike_air_max_90_hyperfuse2018', 1446752243, 1446752627, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3074, '127.0.0.1', '/catalog/krossovki_dlja_bega', 1446752631, 1446752631, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1),
(3075, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike', 1446752634, 1446752634, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3076, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&material=Zamsha', 1446752638, 1446752638, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3077, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&country=ukraine&material=Zamsha', 1446752641, 1446752642, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3078, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&country=ukraine&material=Zamsha&sezon=autumn', 1446752645, 1446752645, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3079, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&country=ukraine&material=Zamsha', 1446752648, 1446752648, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3080, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&color=green&country=ukraine&material=Zamsha', 1446752651, 1446752651, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3081, '127.0.0.1', '/catalog/krossovki_dlja_bega/filter/brand=nike&country=ukraine&material=Zamsha', 1446752656, 1446752656, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 2),
(3082, '127.0.0.1', '/product/gfgf', 1446752659, 1446752659, '200 OK', 'Computer', 'Mozilla/5.0 (Windows NT 10.0; rv:41.0) Gecko/20100101 Firefox/41.0', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `visitors_referers`
--

CREATE TABLE `visitors_referers` (
  `id` int(10) NOT NULL,
  `ip` varchar(16) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `visitors_referers`
--

INSERT INTO `visitors_referers` (`id`, `ip`, `url`, `created_at`) VALUES
(3, '62.76.103.139', 'http://ya.ru/', 1439317767),
(4, '62.76.103.137', 'http://ya.ru/', 1439323710),
(5, '93.79.245.43', 'http://vk.com/away.php', 1444231244);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`) USING BTREE;

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_i18n`
--
ALTER TABLE `articles_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_i18n_language` (`language`) USING BTREE,
  ADD KEY `articles_i18n_row_id` (`row_id`) USING BTREE;

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE,
  ADD KEY `rubric_id` (`rubric_id`) USING BTREE;

--
-- Индексы таблицы `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`) USING BTREE,
  ADD KEY `blog` (`blog_id`) USING BTREE;

--
-- Индексы таблицы `blog_i18n`
--
ALTER TABLE `blog_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `blog_rubrics`
--
ALTER TABLE `blog_rubrics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE;

--
-- Индексы таблицы `blog_rubrics_i18n`
--
ALTER TABLE `blog_rubrics_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE;

--
-- Индексы таблицы `brands_i18n`
--
ALTER TABLE `brands_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `callback`
--
ALTER TABLE `callback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`) USING BTREE;

--
-- Индексы таблицы `carts_items`
--
ALTER TABLE `carts_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cart` (`cart_id`) USING BTREE,
  ADD KEY `id_goods` (`catalog_id`) USING BTREE,
  ADD KEY `cart_id` (`cart_id`) USING BTREE,
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE;

--
-- Индексы таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE,
  ADD KEY `parent_id` (`parent_id`) USING BTREE,
  ADD KEY `cat_brand_alias` (`brand_alias`) USING BTREE,
  ADD KEY `cat_model_alias` (`model_alias`) USING BTREE,
  ADD KEY `image_link` (`image`) USING BTREE;

--
-- Индексы таблицы `catalog_comments`
--
ALTER TABLE `catalog_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE;

--
-- Индексы таблицы `catalog_i18n`
--
ALTER TABLE `catalog_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE,
  ADD KEY `image` (`image`) USING BTREE;

--
-- Индексы таблицы `catalog_questions`
--
ALTER TABLE `catalog_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE;

--
-- Индексы таблицы `catalog_related`
--
ALTER TABLE `catalog_related`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`who_id`) USING BTREE,
  ADD KEY `related_id` (`with_id`) USING BTREE;

--
-- Индексы таблицы `catalog_specifications_values`
--
ALTER TABLE `catalog_specifications_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE,
  ADD KEY `spec_alias` (`specification_alias`) USING BTREE,
  ADD KEY `spec_val_alias` (`specification_value_alias`) USING BTREE;

--
-- Индексы таблицы `catalog_tree`
--
ALTER TABLE `catalog_tree`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE;

--
-- Индексы таблицы `catalog_tree_brands`
--
ALTER TABLE `catalog_tree_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`) USING BTREE,
  ADD KEY `catalog_tree_id` (`catalog_tree_id`) USING BTREE;

--
-- Индексы таблицы `catalog_tree_i18n`
--
ALTER TABLE `catalog_tree_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `catalog_tree_specifications`
--
ALTER TABLE `catalog_tree_specifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_tree_id` (`catalog_tree_id`) USING BTREE,
  ADD KEY `specification_id` (`specification_id`) USING BTREE;

--
-- Индексы таблицы `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `block` (`group`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Индексы таблицы `config_groups`
--
ALTER TABLE `config_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE;

--
-- Индексы таблицы `config_types`
--
ALTER TABLE `config_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE;

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `action` (`alias`) USING BTREE;

--
-- Индексы таблицы `content_i18n`
--
ALTER TABLE `content_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `row_id` (`row_id`);

--
-- Индексы таблицы `control`
--
ALTER TABLE `control`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `control_i18n`
--
ALTER TABLE `control_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `cron`
--
ALTER TABLE `cron`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_i18n`
--
ALTER TABLE `gallery_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_id` (`gallery_id`) USING BTREE;

--
-- Индексы таблицы `i18n`
--
ALTER TABLE `i18n`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias_2` (`alias`);

--
-- Индексы таблицы `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mail_templates`
--
ALTER TABLE `mail_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mail_templates_i18n`
--
ALTER TABLE `mail_templates_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mt_row_id` (`row_id`),
  ADD KEY `mt_lang` (`language`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`) USING BTREE,
  ADD KEY `model_brand_alias` (`brand_alias`) USING BTREE;

--
-- Индексы таблицы `models_i18n`
--
ALTER TABLE `models_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news_i18n`
--
ALTER TABLE `news_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `row_id` (`row_id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`) USING BTREE;

--
-- Индексы таблицы `orders_items`
--
ALTER TABLE `orders_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`) USING BTREE,
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE,
  ADD KEY `size_id` (`size_id`) USING BTREE;

--
-- Индексы таблицы `orders_simple`
--
ALTER TABLE `orders_simple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_id` (`catalog_id`) USING BTREE;

--
-- Индексы таблицы `popup_messages`
--
ALTER TABLE `popup_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seo_links`
--
ALTER TABLE `seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link` (`link`) USING BTREE;

--
-- Индексы таблицы `seo_redirects`
--
ALTER TABLE `seo_redirects`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seo_scripts`
--
ALTER TABLE `seo_scripts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `place` (`place`) USING BTREE;

--
-- Индексы таблицы `seo_templates`
--
ALTER TABLE `seo_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `seo_templates_i18n`
--
ALTER TABLE `seo_templates_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sl_row_id` (`row_id`),
  ADD KEY `sl_lang` (`language`);

--
-- Индексы таблицы `sitemap`
--
ALTER TABLE `sitemap`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sitemenu`
--
ALTER TABLE `sitemenu`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sitemenu_i18n`
--
ALTER TABLE `sitemenu_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slider_i18n`
--
ALTER TABLE `slider_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider_i18n_language` (`language`) USING BTREE,
  ADD KEY `slider_i18n_row_id` (`row_id`) USING BTREE;

--
-- Индексы таблицы `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE,
  ADD KEY `type_id` (`type_id`) USING BTREE;

--
-- Индексы таблицы `specifications_i18n`
--
ALTER TABLE `specifications_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `specifications_types`
--
ALTER TABLE `specifications_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `specifications_values`
--
ALTER TABLE `specifications_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`) USING BTREE,
  ADD KEY `specification_id` (`specification_id`) USING BTREE;

--
-- Индексы таблицы `specifications_values_i18n`
--
ALTER TABLE `specifications_values_i18n`
  ADD PRIMARY KEY (`id`),
  ADD KEY `row_id` (`row_id`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING BTREE;

--
-- Индексы таблицы `subscribe_mails`
--
ALTER TABLE `subscribe_mails`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`) USING BTREE,
  ADD UNIQUE KEY `hash` (`hash`) USING BTREE,
  ADD KEY `role_id` (`role_id`) USING BTREE;

--
-- Индексы таблицы `users_networks`
--
ALTER TABLE `users_networks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Индексы таблицы `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`) USING BTREE,
  ADD KEY `country` (`country`) USING BTREE;

--
-- Индексы таблицы `visitors_hits`
--
ALTER TABLE `visitors_hits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`) USING BTREE;

--
-- Индексы таблицы `visitors_referers`
--
ALTER TABLE `visitors_referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip` (`ip`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `access`
--
ALTER TABLE `access`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;
--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `articles_i18n`
--
ALTER TABLE `articles_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT для таблицы `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `blog_i18n`
--
ALTER TABLE `blog_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT для таблицы `blog_rubrics`
--
ALTER TABLE `blog_rubrics`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `blog_rubrics_i18n`
--
ALTER TABLE `blog_rubrics_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT для таблицы `brands_i18n`
--
ALTER TABLE `brands_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT для таблицы `callback`
--
ALTER TABLE `callback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102605;
--
-- AUTO_INCREMENT для таблицы `carts_items`
--
ALTER TABLE `carts_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
--
-- AUTO_INCREMENT для таблицы `catalog`
--
ALTER TABLE `catalog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
--
-- AUTO_INCREMENT для таблицы `catalog_comments`
--
ALTER TABLE `catalog_comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `catalog_i18n`
--
ALTER TABLE `catalog_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;
--
-- AUTO_INCREMENT для таблицы `catalog_images`
--
ALTER TABLE `catalog_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;
--
-- AUTO_INCREMENT для таблицы `catalog_questions`
--
ALTER TABLE `catalog_questions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `catalog_related`
--
ALTER TABLE `catalog_related`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблицы `catalog_specifications_values`
--
ALTER TABLE `catalog_specifications_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3633;
--
-- AUTO_INCREMENT для таблицы `catalog_tree`
--
ALTER TABLE `catalog_tree`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `catalog_tree_brands`
--
ALTER TABLE `catalog_tree_brands`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1084;
--
-- AUTO_INCREMENT для таблицы `catalog_tree_i18n`
--
ALTER TABLE `catalog_tree_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `catalog_tree_specifications`
--
ALTER TABLE `catalog_tree_specifications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
--
-- AUTO_INCREMENT для таблицы `config`
--
ALTER TABLE `config`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `config_groups`
--
ALTER TABLE `config_groups`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `config_types`
--
ALTER TABLE `config_types`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `content`
--
ALTER TABLE `content`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `content_i18n`
--
ALTER TABLE `content_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `control`
--
ALTER TABLE `control`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `control_i18n`
--
ALTER TABLE `control_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `cron`
--
ALTER TABLE `cron`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `gallery_i18n`
--
ALTER TABLE `gallery_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT для таблицы `i18n`
--
ALTER TABLE `i18n`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `mail_templates`
--
ALTER TABLE `mail_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `mail_templates_i18n`
--
ALTER TABLE `mail_templates_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT для таблицы `models_i18n`
--
ALTER TABLE `models_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `news_i18n`
--
ALTER TABLE `news_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблицы `orders_items`
--
ALTER TABLE `orders_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT для таблицы `orders_simple`
--
ALTER TABLE `orders_simple`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `popup_messages`
--
ALTER TABLE `popup_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT для таблицы `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `seo_links`
--
ALTER TABLE `seo_links`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `seo_redirects`
--
ALTER TABLE `seo_redirects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `seo_scripts`
--
ALTER TABLE `seo_scripts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `seo_templates`
--
ALTER TABLE `seo_templates`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `seo_templates_i18n`
--
ALTER TABLE `seo_templates_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `sitemap`
--
ALTER TABLE `sitemap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT для таблицы `sitemenu`
--
ALTER TABLE `sitemenu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `sitemenu_i18n`
--
ALTER TABLE `sitemenu_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `slider_i18n`
--
ALTER TABLE `slider_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT для таблицы `specifications_i18n`
--
ALTER TABLE `specifications_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT для таблицы `specifications_types`
--
ALTER TABLE `specifications_types`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `specifications_values`
--
ALTER TABLE `specifications_values`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- AUTO_INCREMENT для таблицы `specifications_values_i18n`
--
ALTER TABLE `specifications_values_i18n`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблицы `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `subscribe_mails`
--
ALTER TABLE `subscribe_mails`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `users_networks`
--
ALTER TABLE `users_networks`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT для таблицы `visitors_hits`
--
ALTER TABLE `visitors_hits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3083;
--
-- AUTO_INCREMENT для таблицы `visitors_referers`
--
ALTER TABLE `visitors_referers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `access`
--
ALTER TABLE `access`
  ADD CONSTRAINT `access_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `users_roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `articles_i18n`
--
ALTER TABLE `articles_i18n`
  ADD CONSTRAINT `articles_i18n_ibfk_1` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `articles_i18n_ibfk_2` FOREIGN KEY (`row_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`rubric_id`) REFERENCES `blog_rubrics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD CONSTRAINT `blog_comments_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog_i18n`
--
ALTER TABLE `blog_i18n`
  ADD CONSTRAINT `blog_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `blog_rubrics_i18n`
--
ALTER TABLE `blog_rubrics_i18n`
  ADD CONSTRAINT `blog_rubrics_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `blog_rubrics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blog_rubrics_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `brands_i18n`
--
ALTER TABLE `brands_i18n`
  ADD CONSTRAINT `brands_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `brands_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `carts_items`
--
ALTER TABLE `carts_items`
  ADD CONSTRAINT `carts_items_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_items_ibfk_2` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`brand_alias`) REFERENCES `brands` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_2` FOREIGN KEY (`model_alias`) REFERENCES `models` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_3` FOREIGN KEY (`image`) REFERENCES `catalog_images` (`image`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_ibfk_4` FOREIGN KEY (`parent_id`) REFERENCES `catalog_tree` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_comments`
--
ALTER TABLE `catalog_comments`
  ADD CONSTRAINT `catalog_comments_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_i18n`
--
ALTER TABLE `catalog_i18n`
  ADD CONSTRAINT `catalog_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_images`
--
ALTER TABLE `catalog_images`
  ADD CONSTRAINT `catalog_images_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_questions`
--
ALTER TABLE `catalog_questions`
  ADD CONSTRAINT `catalog_questions_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_related`
--
ALTER TABLE `catalog_related`
  ADD CONSTRAINT `catalog_related_ibfk_1` FOREIGN KEY (`who_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_related_ibfk_2` FOREIGN KEY (`with_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_specifications_values`
--
ALTER TABLE `catalog_specifications_values`
  ADD CONSTRAINT `catalog_specifications_values_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_specifications_values_ibfk_2` FOREIGN KEY (`specification_alias`) REFERENCES `specifications` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_specifications_values_ibfk_3` FOREIGN KEY (`specification_value_alias`) REFERENCES `specifications_values` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_tree_brands`
--
ALTER TABLE `catalog_tree_brands`
  ADD CONSTRAINT `catalog_tree_brands_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_tree_brands_ibfk_2` FOREIGN KEY (`catalog_tree_id`) REFERENCES `catalog_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_tree_i18n`
--
ALTER TABLE `catalog_tree_i18n`
  ADD CONSTRAINT `catalog_tree_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `catalog_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_tree_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `catalog_tree_specifications`
--
ALTER TABLE `catalog_tree_specifications`
  ADD CONSTRAINT `catalog_tree_specifications_ibfk_1` FOREIGN KEY (`catalog_tree_id`) REFERENCES `catalog_tree` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `catalog_tree_specifications_ibfk_2` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `config`
--
ALTER TABLE `config`
  ADD CONSTRAINT `config_ibfk_1` FOREIGN KEY (`group`) REFERENCES `config_groups` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `config_ibfk_2` FOREIGN KEY (`type`) REFERENCES `config_types` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `content_i18n`
--
ALTER TABLE `content_i18n`
  ADD CONSTRAINT `content_i18n_ibfk_1` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `content_i18n_ibfk_2` FOREIGN KEY (`row_id`) REFERENCES `content` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `control_i18n`
--
ALTER TABLE `control_i18n`
  ADD CONSTRAINT `control_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `control` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `control_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD CONSTRAINT `gallery_images_ibfk_1` FOREIGN KEY (`gallery_id`) REFERENCES `gallery` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `mail_templates_i18n`
--
ALTER TABLE `mail_templates_i18n`
  ADD CONSTRAINT `mt_lang` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mt_row_id` FOREIGN KEY (`row_id`) REFERENCES `mail_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `models_ibfk_1` FOREIGN KEY (`brand_alias`) REFERENCES `brands` (`alias`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `models_i18n`
--
ALTER TABLE `models_i18n`
  ADD CONSTRAINT `models_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `models` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `models_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `news_i18n`
--
ALTER TABLE `news_i18n`
  ADD CONSTRAINT `news_i18n_ibfk_1` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_i18n_ibfk_2` FOREIGN KEY (`row_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders_items`
--
ALTER TABLE `orders_items`
  ADD CONSTRAINT `orders_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_items_ibfk_2` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `orders_simple`
--
ALTER TABLE `orders_simple`
  ADD CONSTRAINT `orders_simple_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalog` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `seo_templates_i18n`
--
ALTER TABLE `seo_templates_i18n`
  ADD CONSTRAINT `sl_lang` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sl_row_id` FOREIGN KEY (`row_id`) REFERENCES `seo_templates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `sitemenu_i18n`
--
ALTER TABLE `sitemenu_i18n`
  ADD CONSTRAINT `sitemenu_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `sitemenu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sitemenu_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `slider_i18n`
--
ALTER TABLE `slider_i18n`
  ADD CONSTRAINT `slider_i18n_ibfk_1` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `slider_i18n_ibfk_2` FOREIGN KEY (`row_id`) REFERENCES `slider` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `specifications`
--
ALTER TABLE `specifications`
  ADD CONSTRAINT `specifications_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `specifications_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `specifications_i18n`
--
ALTER TABLE `specifications_i18n`
  ADD CONSTRAINT `specifications_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `specifications_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `specifications_values`
--
ALTER TABLE `specifications_values`
  ADD CONSTRAINT `specifications_values_ibfk_1` FOREIGN KEY (`specification_id`) REFERENCES `specifications` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `specifications_values_i18n`
--
ALTER TABLE `specifications_values_i18n`
  ADD CONSTRAINT `specifications_values_i18n_ibfk_1` FOREIGN KEY (`row_id`) REFERENCES `specifications_values` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `specifications_values_i18n_ibfk_2` FOREIGN KEY (`language`) REFERENCES `i18n` (`alias`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `users_roles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users_networks`
--
ALTER TABLE `users_networks`
  ADD CONSTRAINT `users_networks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `visitors_hits`
--
ALTER TABLE `visitors_hits`
  ADD CONSTRAINT `visitors_hits_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `visitors` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `visitors_referers`
--
ALTER TABLE `visitors_referers`
  ADD CONSTRAINT `visitors_referers_ibfk_1` FOREIGN KEY (`ip`) REFERENCES `visitors` (`ip`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
