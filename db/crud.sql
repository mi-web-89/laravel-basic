-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2019 pada 15.00
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--
CREATE DATABASE IF NOT EXISTS `crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `crud`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `countries`
--

INSERT INTO `countries` (`country_id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'TD', 'Chad'),
(42, 'CL', 'Chile'),
(43, 'CN', 'China'),
(44, 'CX', 'Christmas Island'),
(45, 'CC', 'Cocos (Keeling) Islands'),
(46, 'CO', 'Colombia'),
(47, 'KM', 'Comoros'),
(48, 'CG', 'Congo'),
(49, 'CK', 'Cook Islands'),
(50, 'CR', 'Costa Rica'),
(91, 'CF', 'Central African Republic'),
(98, 'KM', 'Comoros'),
(102, 'HR', 'Croatia (Hrvatska)'),
(103, 'CU', 'Cuba'),
(104, 'CY', 'Cyprus'),
(105, 'CZ', 'Czech Republic'),
(106, 'DK', 'Denmark'),
(107, 'DJ', 'Djibouti'),
(108, 'DM', 'Dominica'),
(109, 'DO', 'Dominican Republic'),
(110, 'TP', 'East Timor'),
(111, 'EC', 'Ecuador'),
(112, 'EG', 'Egypt'),
(113, 'SV', 'El Salvador'),
(114, 'GQ', 'Equatorial Guinea'),
(115, 'ER', 'Eritrea'),
(116, 'EE', 'Estonia'),
(117, 'ET', 'Ethiopia'),
(118, 'FK', 'Falkland Islands (Malvinas)'),
(119, 'FO', 'Faroe Islands'),
(120, 'FJ', 'Fiji'),
(121, 'FI', 'Finland'),
(122, 'FR', 'France'),
(123, 'FX', 'France, Metropolitan'),
(124, 'GF', 'French Guiana'),
(125, 'PF', 'French Polynesia'),
(126, 'TF', 'French Southern Territories'),
(127, 'GA', 'Gabon'),
(128, 'GM', 'Gambia'),
(129, 'GE', 'Georgia'),
(130, 'DE', 'Germany'),
(131, 'GH', 'Ghana'),
(132, 'GI', 'Gibraltar'),
(133, 'GK', 'Guernsey'),
(134, 'GR', 'Greece'),
(135, 'GL', 'Greenland'),
(136, 'GD', 'Grenada'),
(137, 'GP', 'Guadeloupe'),
(138, 'GU', 'Guam'),
(139, 'GT', 'Guatemala'),
(140, 'GN', 'Guinea'),
(141, 'GW', 'Guinea-Bissau'),
(142, 'GY', 'Guyana'),
(143, 'HT', 'Haiti'),
(144, 'HM', 'Heard and Mc Donald Islands'),
(145, 'HN', 'Honduras'),
(146, 'HK', 'Hong Kong'),
(147, 'HU', 'Hungary'),
(148, 'IS', 'Iceland'),
(149, 'IN', 'India'),
(150, 'IM', 'Isle of Man'),
(151, 'ID', 'Indonesia'),
(152, 'IR', 'Iran (Islamic Republic of)'),
(153, 'IQ', 'Iraq'),
(154, 'IE', 'Ireland'),
(155, 'IL', 'Israel'),
(156, 'IT', 'Italy'),
(157, 'CI', 'Ivory Coast'),
(158, 'JE', 'Jersey'),
(159, 'JM', 'Jamaica'),
(160, 'JP', 'Japan'),
(161, 'JO', 'Jordan'),
(162, 'KZ', 'Kazakhstan'),
(163, 'KE', 'Kenya'),
(164, 'KI', 'Kiribati'),
(165, 'KP', 'Korea, Democratic People\'s Republic of'),
(166, 'KR', 'Korea, Republic of'),
(167, 'XK', 'Kosovo'),
(168, 'KW', 'Kuwait'),
(169, 'KG', 'Kyrgyzstan'),
(170, 'LA', 'Lao People\'s Democratic Republic'),
(171, 'LV', 'Latvia'),
(172, 'LB', 'Lebanon'),
(173, 'LS', 'Lesotho'),
(174, 'LR', 'Liberia'),
(175, 'LY', 'Libyan Arab Jamahiriya'),
(176, 'LI', 'Liechtenstein'),
(177, 'LT', 'Lithuania'),
(178, 'LU', 'Luxembourg'),
(179, 'MO', 'Macau'),
(180, 'MK', 'Macedonia'),
(181, 'MG', 'Madagascar'),
(182, 'MW', 'Malawi'),
(183, 'MY', 'Malaysia'),
(184, 'MV', 'Maldives'),
(185, 'ML', 'Mali'),
(186, 'MT', 'Malta'),
(187, 'MH', 'Marshall Islands'),
(188, 'MQ', 'Martinique'),
(189, 'MR', 'Mauritania'),
(190, 'MU', 'Mauritius'),
(191, 'TY', 'Mayotte'),
(192, 'MX', 'Mexico'),
(193, 'FM', 'Micronesia, Federated States of'),
(194, 'MD', 'Moldova, Republic of'),
(195, 'MC', 'Monaco'),
(196, 'MN', 'Mongolia'),
(197, 'ME', 'Montenegro'),
(198, 'MS', 'Montserrat'),
(199, 'MA', 'Morocco'),
(200, 'MZ', 'Mozambique'),
(201, 'MM', 'Myanmar'),
(202, 'NA', 'Namibia'),
(203, 'NR', 'Nauru'),
(204, 'NP', 'Nepal'),
(205, 'NL', 'Netherlands'),
(206, 'AN', 'Netherlands Antilles'),
(207, 'NC', 'New Caledonia'),
(208, 'NZ', 'New Zealand'),
(209, 'NI', 'Nicaragua'),
(210, 'NE', 'Niger'),
(211, 'NG', 'Nigeria'),
(212, 'NU', 'Niue'),
(213, 'NF', 'Norfolk Island'),
(214, 'MP', 'Northern Mariana Islands'),
(215, 'NO', 'Norway'),
(216, 'OM', 'Oman'),
(217, 'PK', 'Pakistan'),
(218, 'PW', 'Palau'),
(219, 'PS', 'Palestine'),
(220, 'PA', 'Panama'),
(221, 'PG', 'Papua New Guinea'),
(222, 'PY', 'Paraguay'),
(223, 'PE', 'Peru'),
(224, 'PH', 'Philippines'),
(225, 'PN', 'Pitcairn'),
(226, 'PL', 'Poland'),
(227, 'PT', 'Portugal'),
(228, 'PR', 'Puerto Rico'),
(229, 'QA', 'Qatar'),
(230, 'RE', 'Reunion'),
(231, 'RO', 'Romania'),
(232, 'RU', 'Russian Federation'),
(233, 'RW', 'Rwanda'),
(234, 'KN', 'Saint Kitts and Nevis'),
(235, 'LC', 'Saint Lucia'),
(236, 'VC', 'Saint Vincent and the Grenadines'),
(237, 'WS', 'Samoa'),
(238, 'SM', 'San Marino'),
(239, 'ST', 'Sao Tome and Principe'),
(240, 'SA', 'Saudi Arabia'),
(241, 'SN', 'Senegal'),
(242, 'RS', 'Serbia'),
(243, 'SC', 'Seychelles'),
(244, 'SL', 'Sierra Leone'),
(245, 'SG', 'Singapore'),
(246, 'SK', 'Slovakia'),
(247, 'SI', 'Slovenia'),
(248, 'SB', 'Solomon Islands'),
(249, 'SO', 'Somalia'),
(250, 'ZA', 'South Africa'),
(251, 'GS', 'South Georgia South Sandwich Islands'),
(252, 'SS', 'South Sudan'),
(253, 'ES', 'Spain'),
(254, 'LK', 'Sri Lanka'),
(255, 'SH', 'St. Helena'),
(256, 'PM', 'St. Pierre and Miquelon'),
(257, 'SD', 'Sudan'),
(258, 'SR', 'Suriname'),
(259, 'SJ', 'Svalbard and Jan Mayen Islands'),
(260, 'SZ', 'Swaziland'),
(261, 'SE', 'Sweden'),
(262, 'CH', 'Switzerland'),
(263, 'SY', 'Syrian Arab Republic'),
(264, 'TW', 'Taiwan'),
(265, 'TJ', 'Tajikistan'),
(266, 'TZ', 'Tanzania, United Republic of'),
(267, 'TH', 'Thailand'),
(268, 'TG', 'Togo'),
(269, 'TK', 'Tokelau'),
(270, 'TO', 'Tonga'),
(271, 'TT', 'Trinidad and Tobago'),
(272, 'TN', 'Tunisia'),
(273, 'TR', 'Turkey'),
(274, 'TM', 'Turkmenistan'),
(275, 'TC', 'Turks and Caicos Islands'),
(276, 'TV', 'Tuvalu'),
(277, 'UG', 'Uganda'),
(278, 'UA', 'Ukraine'),
(279, 'AE', 'United Arab Emirates'),
(280, 'GB', 'United Kingdom'),
(281, 'US', 'United States'),
(282, 'UM', 'United States minor outlying islands'),
(283, 'UY', 'Uruguay'),
(284, 'UZ', 'Uzbekistan'),
(285, 'VU', 'Vanuatu'),
(286, 'VA', 'Vatican City State'),
(287, 'VE', 'Venezuela'),
(288, 'VN', 'Vietnam'),
(289, 'VG', 'Virgin Islands (British)'),
(290, 'VI', 'Virgin Islands (U.S.)'),
(291, 'WF', 'Wallis and Futuna Islands'),
(292, 'EH', 'Western Sahara'),
(293, 'YE', 'Yemen'),
(294, 'ZR', 'Zaire'),
(295, 'ZM', 'Zambia'),
(296, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `id` bigint(20) NOT NULL,
  `name` varchar(64) NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `item`
--

INSERT INTO `item` (`id`, `name`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'cum', 31, NULL, NULL, NULL),
(2, 'placeat', 62, NULL, NULL, NULL),
(3, 'et', 9, NULL, NULL, NULL),
(4, 'assumenda', 94, NULL, NULL, NULL),
(5, 'aut', 81, NULL, NULL, NULL),
(6, 'exercitationem', 48, NULL, NULL, NULL),
(7, 'veniam', 62, NULL, NULL, NULL),
(8, 'dolorum', 81, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) DEFAULT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `item_supplier`
--

INSERT INTO `item_supplier` (`id`, `item_id`, `supplier_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, NULL, NULL),
(2, 2, 4, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 3, 2, NULL, NULL),
(5, 4, 1, NULL, NULL),
(6, 5, 26, NULL, NULL),
(7, 6, 5, NULL, NULL),
(8, 7, 1, NULL, NULL),
(9, 8, 8, NULL, NULL),
(10, 8, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` enum('M','F') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `email_verified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(100) NOT NULL,
  `password` varchar(512) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `country` smallint(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id`, `name`, `gender`, `birthday`, `email`, `email_verified_at`, `phone`, `password`, `remember_token`, `country`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thomas Edison', NULL, NULL, 'thomas@edison.com', '2019-07-14 08:39:55', '0853-1234-5678', '', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(2, 'Bill Gates', NULL, NULL, 'bill.gates@gmail.com', '2019-07-14 08:39:55', '0867-4321-5678', '', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(3, 'Albert Einstein', NULL, NULL, 'einstein@yahoo.com', '2019-07-14 08:39:55', '123-543218', '', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(4, 'Sandro ID', NULL, NULL, 'mail@sandro.id', '2019-07-14 08:39:55', '12345-6789', '', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(5, 'user1', 'F', '2019-05-08', 'user1@mail.id', '2019-07-14 08:39:55', '082211112222', '4264d38e4c3672e9bd4955645ea174e5421eb3acdbec9efe0c649afad493119c6f47d84ada63e7e3ea281e49c516f9971cc6b4f30010924c83626d6e11a85c39', NULL, 296, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(6, 'user2', 'M', '2019-05-08', 'user2@mail.id', '2019-07-14 08:39:55', '082211113333', '7e53747a70ddb1b4687ac26ac0e3098951c4112d53a7ddfe5ae74ecc375c8f65', NULL, 279, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(7, 'user3', 'F', '2019-05-16', 'user3@mail.id', '2019-07-14 08:39:55', '087822113929', 'e6e45fb1bfebbe291466bec127cc53854dcaa2366baff959213cbab2ea3cba63', NULL, 276, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(8, 'user4', 'F', '2019-05-10', 'user4@mail.id', '2019-07-14 08:39:55', '087822113922', '8b64afae95a25240fe78a63ff3d230be509927236572d32ca935f570e9ce63a3', NULL, 279, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(9, 'user5', 'F', '2019-05-08', 'user5@mail.com', '2019-07-14 08:39:55', '087822113920', 'a34e89b9347564f426af80e799846c0ee38e388158c2f9bc88a75c665e9b368130ab8c6478fb28c2b653b3d1bf61460f81beb2ddc9ae87c81b0c7f5ce54af749', NULL, 278, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(10, 'users6', NULL, NULL, 'user6@mail.com', '2019-07-14 08:39:55', '082233920921', 'user6', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(11, 'user7', NULL, NULL, 'user7@mail.com', '2019-07-14 08:39:55', '082233920923', 'user7', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(15, 'joni', NULL, NULL, 'joni_seeder@mail.com', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(16, 'Julia Sadina Melani S.E.', NULL, NULL, 'jarwi61@marpaung.info', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(17, 'Ella Widya Aryani S.E.', NULL, NULL, 'oprayoga@saefullah.org', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(18, 'Prayogo Ilyas Waskita', NULL, NULL, 'balijan24@saputra.asia', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(19, 'Ratih Wulandari', NULL, NULL, 'wacana.puti@haryanto.in', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(20, 'Nurul Puspita', NULL, NULL, 'ajiman55@yahoo.com', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(21, 'Himawan Kayun Nababan', NULL, NULL, 'ivan.wibowo@yahoo.com', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(22, 'Baktiono Suwarno', NULL, NULL, 'gpadmasari@farida.name', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(23, 'Padma Yuliarti', NULL, NULL, 'rahmi.mahendra@mahendra.tv', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(24, 'Yuliana Ana Wahyuni', NULL, NULL, 'laksmiwati.rahmi@zulkarnain.tv', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(25, 'Reza Mustika Mansur', NULL, NULL, 'asitumorang@prakasa.biz', '2019-07-14 08:39:55', '0822222222', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(26, 'Ulva Zahra Fujiati', NULL, NULL, 'tania.suryatmi@example.com', '2019-07-14 08:39:55', '(+62) 878 935 833', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(27, 'Marsudi Hakim', NULL, NULL, 'suryatmi.ghani@example.org', '2019-07-14 08:39:55', '(+62) 666 5152 8703', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(28, 'Mitra Pangestu', NULL, NULL, 'sakura.halimah@example.net', '2019-07-14 08:39:55', '0957 0506 646', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(29, 'Kartika Aryani', NULL, NULL, 'oman86@example.net', '2019-07-14 08:39:55', '(+62) 672 0519 281', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(30, 'Edi Kuswoyo S.H.', NULL, NULL, 'reksa.tampubolon@example.org', '2019-07-14 08:39:55', '(+62) 25 1921 6089', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(31, 'Galang Mustofa Situmorang S.Psi', NULL, NULL, 'kamila86@example.net', '2019-07-14 08:39:55', '(+62) 26 4239 011', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(32, 'Clara Rahimah', NULL, NULL, 'asman03@example.com', '2019-07-14 08:39:55', '(+62) 308 2382 1264', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(33, 'Kania Palastri', NULL, NULL, 'ana84@example.com', '2019-07-14 08:39:55', '(+62) 25 6517 604', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(34, 'Paris Genta Yuniar', NULL, NULL, 'fitria.suwarno@example.net', '2019-07-14 08:39:55', '(+62) 29 6393 057', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(35, 'Aswani Hardiansyah', NULL, NULL, 'ade.aryani@example.net', '2019-07-14 08:39:55', '0324 5077 7446', 'test', NULL, NULL, '2019-07-14 08:33:47', '0000-00-00 00:00:00', NULL),
(36, 'anonymous', NULL, NULL, 'a@gm.v', '2019-07-15 10:36:22', '(+62)827132231', '$2y$10$KTLDg/q.xozA6TOrfmjNaONcFmeNzyjG54tK1ASc9fAjVLO4FLgXC', NULL, NULL, '2019-07-15 03:36:22', '2019-07-15 03:36:22', NULL),
(37, 'jhon wick', NULL, NULL, 'jhon_wick@mail.com', '2019-07-15 10:38:44', '(+62)82273322133', '$2y$10$O4nKGmxJORAbxXEsmomW6etjhYryf1prWAbpodz9nFPqxgpkB9uOW', NULL, NULL, '2019-07-15 03:38:44', '2019-07-15 03:38:44', NULL),
(38, 'oasis', NULL, NULL, 'oasis@mail.com', '2019-07-15 10:54:30', '0822761198009', '$2y$10$PM2beZH0w9NQ3IlNDUKAQuik4AtDOo59YB6HlMD5d.l9agzhI83im', NULL, NULL, '2019-07-15 03:54:30', '2019-07-15 03:54:30', NULL),
(39, 'dream theater', NULL, NULL, 'dream_theater@mail.com', '2019-07-15 10:55:28', '0822761198009', '$2y$10$r23YnpnJiebmRYa1Yp1chO2qZNXF2k8aCXgVkdsYEE/tOWvNKUUlS', NULL, NULL, '2019-07-15 03:55:28', '2019-07-15 03:55:28', NULL),
(40, 'queen', NULL, NULL, 'queen@mail.id', '2019-07-16 19:27:16', '09223822', '$2y$10$WhWX6Z73gab2T2Jvrhnvb.9k/uJQxrynMx66FT9FuF/KE2NIUMzBC', NULL, NULL, '2019-07-16 19:27:16', '2019-07-16 01:38:29', NULL),
(41, 'antoni', NULL, NULL, 'antoni@mail.com', '2019-07-16 19:36:31', '021', '$2y$10$Ua/c8RxidLqCCb81zWzak.K31JFr3yXjEoV/CghISlbGD2xQI7Thi', NULL, NULL, '2019-07-16 12:36:31', '2019-07-16 12:36:31', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_07_04_184740_create_item_table', 1),
(3, '2019_07_09_103612_create_supplier_table', 3),
(4, '2019_07_10_161007_create_supplier_item_table', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `name`, `city`, `created_at`, `updated_at`, `item_id`) VALUES
(1, 'Perum Puspasari', 'Dumai', NULL, NULL, 1),
(2, 'PT Dongoran', 'Banjar', NULL, NULL, 2),
(3, 'UD Wacana Hakim Tbk', 'Magelang', NULL, NULL, 3),
(4, 'UD Marpaung (Persero) Tbk', 'Tomohon', NULL, NULL, 4),
(5, 'PT Pertiwi', 'Administrasi Jakarta Timur', NULL, NULL, 5),
(6, 'PD Anggraini', 'Denpasar', NULL, NULL, 6),
(7, 'PD Sitompul', 'Pagar Alam', NULL, NULL, 7),
(8, 'Perum Zulkarnain Napitupulu (Persero) Tbk', 'Administrasi Jakarta Barat', NULL, NULL, 8),
(26, 'PT.Djarum', 'Surabaya', NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indeks untuk tabel `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_item` (`item_id`),
  ADD KEY `fk_supplier` (`supplier_id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297;

--
-- AUTO_INCREMENT untuk tabel `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD CONSTRAINT `fk_item` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `fk_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
