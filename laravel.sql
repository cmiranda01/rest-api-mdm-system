-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-04-2023 a las 19:40:05
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ptno` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `appointment_date_and_time` datetime NOT NULL,
  `appointment_status` varchar(255) NOT NULL,
  `duration_minutes` int(11) NOT NULL,
  `doctor_physio_therapist` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `appointments`
--

INSERT INTO `appointments` (`id`, `ptno`, `contact_no`, `appointment_date_and_time`, `appointment_status`, `duration_minutes`, `doctor_physio_therapist`, `created_at`, `updated_at`) VALUES
(1, '566', '971502000850', '2022-12-05 18:00:00', '', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(2, '942', '971502000850', '2022-12-07 17:00:00', 'Y', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(3, '1275', '971505084666', '2022-12-08 17:00:00', '', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(4, '938', '971507176677', '2022-12-09 17:00:00', 'Y', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(5, '1090', '971551989276', '2022-12-10 17:00:00', 'Y', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(6, '1268', '971508779090', '2022-12-11 16:45:00', 'Y', 15, 'MOURAD GHRAIRI', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(7, '566', '971504511399', '2022-12-28 16:15:00', '', 15, 'MOURAD GHRAIRI', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(8, '1090', '971504511399', '2022-12-20 16:00:00', '', 60, 'ESTHER ESTEBAN GARCIA', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(9, '1358', '971529001713', '2022-12-12 16:00:00', '', 15, 'MOURAD GHRAIRI', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(10, '1436', '971544545033', '2022-12-05 16:00:00', '', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(11, '573', '971501377731', '2022-12-09 15:00:00', '', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(12, '1358', '971505646900', '2022-12-12 15:00:00', '', 60, 'ESTHER ESTEBAN GARCIA', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(13, '1440', '971558558835', '2022-12-15 15:00:00', '', 60, 'PHILIPPE CHOMIER', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(14, '1269', '971507447990', '2022-12-19 14:00:00', '', 60, 'SARI ABDULLAH SHEIKH', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(15, '581', '971508833446', '2022-12-20 14:00:00', '', 60, 'ESTHER ESTEBAN GARCIA', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(16, '1436', '971554075757', '2022-12-22 14:00:00', '', 60, 'RADOUANE AMIRAT', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(17, '943', '971502520600', '2022-12-21 13:00:00', '', 60, 'SARI ABDULLAH SHEIKH', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(18, '1269', '971503666636', '2022-12-23 13:00:00', '', 60, 'RADOUANE AMIRAT', '2023-04-07 09:03:37', '2023-04-07 09:03:37'),
(19, '1274', '971504145516', '2022-12-26 13:00:00', '', 60, 'ESTHER ESTEBAN GARCIA', '2023-04-07 09:03:37', '2023-04-07 09:03:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_07_095118_create_patients_table', 1),
(6, '2023_04_07_095326_create_appointments_table', 2),
(9, '2023_04_07_101503_create_patients_table', 3),
(10, '2023_04_07_101619_create_appointments_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `ptno` varchar(255) NOT NULL,
  `salutation` varchar(255) NOT NULL,
  `patientname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `registereddate` datetime NOT NULL,
  `edditdate` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `patients`
--

INSERT INTO `patients` (`id`, `type`, `ptno`, `salutation`, `patientname`, `gender`, `nationality`, `region`, `registereddate`, `edditdate`, `created_at`, `updated_at`) VALUES
(1, 'GENERAL', '922', 'MR.', 'SHAHAD ABDULLA TENAIJI', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(2, 'GENERAL', '923', 'MR.', 'SHAHAD SALEH ALZAROUNI', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(3, 'GENERAL', '924', 'MR.', 'SHAHLI AKRAM JUMA', 'M', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(4, 'GENERAL', '925', 'MR.', 'SHAHNAZ SHAMIMI', 'F', 'IRANIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(5, 'GENERAL', '926', 'MR.', 'SHAIKHA AL RAIS ', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(6, 'GENERAL', '927', 'MR.', 'SHAIKHA MOHAMMED', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(7, 'GENERAL', '928', 'MR.', 'SHAIMAA ABEDHALIM', 'F', 'EGYPTIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(8, 'GENERAL', '929', 'MR.', 'SHAJAHAN BASHA', 'M', 'INDIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(9, 'GENERAL', '930', 'MR.', 'SHAKEER TAYOOB', 'M', 'SRI LANKAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(10, 'GENERAL', '931', 'MR.', 'SHAKILA ARDAKANI', 'F', 'IRANIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(11, 'GENERAL', '932', 'MR.', 'SHAMSA JAFAR', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(12, 'GENERAL', '933', 'MR.', 'SHAREEFA ABDULKAREEM', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(13, 'GENERAL', '934', 'MR.', 'SHAREF SALAH AL DEN', 'M', 'EGYPTIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(14, 'GENERAL', '935', 'MR.', 'SHAWKY AL NASSR', 'M', 'JORDANIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(15, 'GENERAL', '936', 'MR.', 'SHEIKH SHABUDDIN', 'M', 'INDIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(16, 'GENERAL', '937', 'MR.', 'SHEREEN RAGGAD', 'F', 'AMERICAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(17, 'GENERAL', '938', 'MR.', 'SHERJAN QAISRANI', 'M', 'PAKISTANI', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(18, 'GENERAL', '939', 'MR.', 'SHIU LUN FUNG', 'M', 'HONG KONG', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(19, 'GENERAL', '940', 'MR.', 'SHOHIB SALEEM', 'M', 'PAKISTANI', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(20, 'GENERAL', '941', 'MR.', 'SHONKAT ARA', 'F', 'PAKISTANI', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(21, 'GENERAL', '942', 'MR.', 'SI YUN GUAN', 'F', 'CHINESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(22, 'GENERAL', '943', 'MR.', 'SMIT KOTHARI', 'M', 'INDIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(23, 'GENERAL', '944', 'MR.', 'SNEHANSU MAHAPATRA', 'M', 'INDIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(24, 'GENERAL', '945', 'MR.', 'SOAD MOHD', 'F', 'PALESTINIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(25, 'GENERAL', '946', 'MR.', 'SOFIA GOMEZ MARQUITO', 'F', 'FILIPINO', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(26, 'GENERAL', '947', 'MR.', 'SOPHIE FOUCHERE', 'F', 'FRENCH', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(27, 'GENERAL', '948', 'MR.', 'SOROUSH JIRROUDI', 'M', 'AMERICAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(28, 'GENERAL', '1090', '.', 'AHMED ABDULLAH', 'M', 'EGYPTIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(29, 'GENERAL', '1267', 'MISS', 'NERMINE GAMAL ELDIN EL SHIMY', 'F', 'EGYPTIAN', '', '2011-04-02 11:43:00', '2017-07-08 19:21:00', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(30, 'GENERAL', '1268', 'MR.', 'DEREK   HELLMONS', 'M', 'BRITISH', '', '2011-04-02 13:35:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(31, 'GENERAL', '1269', 'MRS', 'GHAZZA   KASSIM', 'F', 'BRITISH', '', '2011-04-02 17:10:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(32, 'GENERAL', '1270', 'MR.', 'ASKAR   DANAYEVA', 'M', 'KAZAKHSTANI', 'DUBAI', '2011-04-02 17:38:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(33, 'GENERAL', '1271', 'MRS', 'ASSEL   DANAYEVA', 'F', 'KAZAKHSTANI', 'DUBAI', '2011-04-02 17:41:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(34, 'GENERAL', '1272', 'MISS', 'NAJLA   ALI', 'F', 'UAE', '', '2011-04-02 17:53:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(35, 'RESIDENT - NATIONAL', '1273', 'MRS', 'TAHEYA FUAD HAJ ABBAS', 'F', 'UAE', '', '2011-04-02 18:05:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(36, 'GENERAL', '1274', 'MRS', 'NATALIE   GRALL', 'F', 'FRENCH', '', '2011-04-02 18:10:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(37, 'GENERAL', '1275', 'MISS', 'NISREEN HUSSEIN HAWATMEH', 'F', 'JORDANIAN', '', '2011-04-02 18:57:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(38, 'GENERAL', '1358', 'MISS', 'GIULIA   GORI', 'F', 'ITALIAN', '', '2011-04-21 17:18:35', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(39, 'GENERAL', '1359', 'MISS', 'MAITHA AL HAJJ ABDULAH ALWADI', 'F', 'OMANI', '', '2011-04-21 17:53:10', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(40, 'RESIDENT - EXPATS', '1360', 'MISS', 'NOURA ALHAJ ABDULLAH ALAWADHI', 'F', 'OMANI', '', '2011-04-21 19:21:14', '2017-03-20 18:37:54', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(41, 'GENERAL', '1436', 'MR.', 'MOHAMMAD BUTI RASHED', 'M', 'UAE', '', '2011-05-09 11:24:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(42, 'GENERAL', '1440', 'MR.', 'MAGED   FIKRY MIKHAIL YOUSSEF', 'M', 'EGYPTIAN', '', '2011-05-09 19:12:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(43, 'GENERAL', '566', 'MR.', 'LEILA SALEM CHAHLA', 'F', 'LEBANESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(44, 'GENERAL', '567', 'MR.', 'LEILA WILKES', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(45, 'GENERAL', '568', 'MR.', '568 568', 'M', 'TURKISH', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(46, 'GENERAL', '569', 'MR.', 'LIBERATUS DINIZ', 'M', 'INDIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(47, 'GENERAL', '570', 'MR.', 'LILLY GRACE KELT TWORT', 'F', 'NEW ZEALANDER', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(48, 'GENERAL', '571', 'MR.', 'LOK NEPALI', 'M', 'NEPALESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(49, 'GENERAL', '572', 'MR.', 'LOUISE LEAH SCHRUBER', 'F', 'SOUTH AFRICAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(50, 'GENERAL', '573', 'MR.', 'LOURDES PAULE PINGUL', 'F', 'FILIPINO', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(51, 'GENERAL', '574', 'MR.', 'LOURDINO CUENCO', 'M', 'PHILIPPINES', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(52, 'GENERAL', '575', 'MR.', 'LUISA GAKAEVA', 'F', 'RUSSIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(53, 'GENERAL', '576', 'MR.', 'LYANNE ZIAD RAFHI', 'F', 'LEBANESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(54, 'GENERAL', '577', 'MR.', 'MA ROSARIO GIMENA ', 'F', 'PHILIPPINES', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(55, 'GENERAL', '578', 'MR.', 'MAAMOUN ALFARRA', 'M', 'LEBANESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(56, 'GENERAL', '579', 'MR.', 'MADIYAH ALBALOOSHI', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(57, 'GENERAL', '580', 'MR.', 'MADONA NASSIF', 'F', 'LEBANESE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(58, 'GENERAL', '581', 'MR.', 'MAGDY KHALIFA', 'M', 'EGYPTIAN', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47'),
(59, 'GENERAL', '582', 'MR.', 'MAHA KHALID SAEED', 'F', 'UAE', '', '2011-02-28 00:00:00', '2017-01-19 22:04:02', '2023-04-07 08:45:47', '2023-04-07 08:45:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
