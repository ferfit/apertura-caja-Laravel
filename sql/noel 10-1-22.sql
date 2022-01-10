-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 10-01-2022 a las 10:12:21
-- Versión del servidor: 5.7.35
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `noel_basededatos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `efectivo_caja` decimal(10,2) DEFAULT NULL,
  `tarjeta` decimal(10,2) DEFAULT NULL,
  `estado` enum('abierto','cerrado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `cierre` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `nombre`, `total`, `efectivo_caja`, `tarjeta`, `estado`, `cierre`, `created_at`, `updated_at`) VALUES
(1, 'CAJA MARTES 4/1', '29700.00', '16100.00', '13600.00', 'cerrado', '2022-01-06 03:00:00', '2022-01-04 17:31:43', '2022-01-06 18:18:57'),
(2, 'MIERCOLES 5/1', '21200.00', '20000.00', '1500.00', 'cerrado', '2022-01-06 03:00:00', '2022-01-06 20:00:15', '2022-01-06 20:09:29'),
(3, 'JUEVES 6/1', '17700.00', '13900.00', '4200.00', 'cerrado', '2022-01-06 03:00:00', '2022-01-06 20:10:24', '2022-01-07 02:12:26'),
(4, 'VIERNES 7/1', '30200.00', '17200.00', '13200.00', 'cerrado', '2022-01-07 03:00:00', '2022-01-07 18:35:03', '2022-01-08 01:35:52'),
(5, 'SABADO 8/1', '22500.00', '15400.00', '7200.00', 'cerrado', '2022-01-08 03:00:00', '2022-01-08 18:27:27', '2022-01-09 01:32:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Jazmin', '2021-12-08 01:05:04', '2021-12-10 23:11:19'),
(2, 'Stephanie', '2021-12-08 01:05:08', '2021-12-10 23:11:30'),
(3, 'Yosayni', '2021-12-10 23:11:42', '2021-12-10 23:11:42'),
(5, 'Noel', '2021-12-10 23:11:51', '2021-12-10 23:11:51'),
(7, 'Asya', '2021-12-30 01:16:14', '2021-12-30 01:16:14'),
(8, 'Fernando Pereyra', '2021-12-30 02:37:22', '2021-12-30 02:37:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_08_121535_create_empleados_table', 1),
(6, '2021_10_08_121700_create_servicios_table', 1),
(7, '2021_10_09_223909_create_cajas_table', 1),
(8, '2021_10_09_232415_create_ventas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'Natural', '2700.00', '2021-12-08 01:05:15', '2021-12-30 22:08:05'),
(2, 'Clasicas', '2000.00', '2021-12-08 01:05:24', '2021-12-30 22:07:53'),
(3, 'Queen', '3000.00', '2021-12-29 20:55:59', '2021-12-30 22:07:42'),
(4, 'Wet Effect', '3000.00', '2021-12-29 20:56:07', '2021-12-30 22:07:26'),
(5, 'Supreme', '3400.00', '2021-12-29 20:56:17', '2021-12-30 22:07:12'),
(6, 'Mega Volumen', '3900.00', '2021-12-29 20:56:25', '2021-12-30 22:06:42'),
(7, 'Lash Lifting + Tintura', '2100.00', '2021-12-29 20:56:35', '2021-12-30 22:06:13'),
(8, 'Lash lifting + laminado + botox', '2500.00', '2021-12-29 20:57:19', '2021-12-30 22:05:59'),
(9, 'Hibridas', '2400.00', '2021-12-29 20:57:26', '2021-12-30 22:05:36'),
(10, 'Perfilado de cejas con hilo', '700.00', '2021-12-29 20:57:35', '2021-12-30 22:05:25'),
(11, 'Perfilado de cejas con hilo + Henna', '1000.00', '2021-12-29 20:57:46', '2021-12-30 22:04:57'),
(12, 'Henna', '300.00', '2021-12-29 20:57:51', '2021-12-30 22:04:47'),
(13, 'Brow Lamination', '1600.00', '2021-12-29 21:00:01', '2021-12-30 22:04:36'),
(14, 'Remocion', '600.00', '2021-12-29 21:01:28', '2021-12-30 22:04:22'),
(15, 'Kim K', '3400.00', '2021-12-29 21:01:36', '2021-12-30 22:04:12'),
(16, 'Depilacion Facial', '1100.00', '2021-12-29 21:01:50', '2021-12-30 22:04:01'),
(17, 'Service Clasicas', '1600.00', '2021-12-29 21:02:05', '2021-12-30 22:03:40'),
(18, 'Service Natural', '2200.00', '2021-12-29 21:02:13', '2021-12-30 22:03:25'),
(19, 'Service Queen', '2500.00', '2021-12-29 21:02:21', '2021-12-30 22:02:58'),
(20, 'Service Hibridas', '1900.00', '2021-12-29 21:02:28', '2021-12-30 22:02:50'),
(21, 'Service Supreme', '2800.00', '2021-12-29 21:02:51', '2021-12-30 22:02:40'),
(22, 'Service Megavolumen', '3100.00', '2021-12-29 21:03:00', '2021-12-30 21:59:46'),
(23, 'Service Wet', '2500.00', '2021-12-29 21:03:30', '2021-12-30 21:59:33'),
(24, 'Clasicas Promo', '1500.00', '2022-01-05 00:13:53', '2022-01-05 00:16:43');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fernando Pereyra', 'fer@correo.com', NULL, '$2y$10$h17QsWAjyvtXotTzZwvNvOhYtrmZ517/0xjNvyGkXu0IgkS80kXWS', NULL, '2021-12-29 23:38:59', '2021-12-29 23:38:59'),
(2, 'Aye', 'International.lashacademy@gmail.con', NULL, '$2y$10$ZxI5Ilu6UlPRLDNni9xeDeK/O8vZVw3sv7M12xcy7XxDxLETFNVCm', NULL, '2021-12-29 23:38:59', '2021-12-29 23:38:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `servicio_id` bigint(20) UNSIGNED NOT NULL,
  `medio_pago` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `porcentaje` double(10,2) NOT NULL,
  `comision_empleado` double(10,2) DEFAULT NULL,
  `empleado_id` bigint(20) UNSIGNED NOT NULL,
  `caja_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `cliente`, `servicio_id`, `medio_pago`, `precio`, `porcentaje`, `comision_empleado`, `empleado_id`, `caja_id`, `created_at`, `updated_at`) VALUES
(2, 'ANTONELLA PIZZA AB 1000 SEÑA', 18, 'Efectivo', '2200.00', 35.00, 770.00, 1, 1, '2022-01-04 18:20:43', '2022-01-04 18:20:43'),
(4, 'CARINA CACHI', 14, 'Credito', '600.00', 35.00, 210.00, 3, 1, '2022-01-04 19:08:25', '2022-01-04 19:08:25'),
(6, 'LUCIANA VEZZULLA', 2, 'Credito', '2000.00', 35.00, 700.00, 3, 1, '2022-01-04 21:30:59', '2022-01-04 21:30:59'),
(8, 'AGUSTINA LUCERO AB 1000 SEÑA', 18, 'Credito', '2200.00', 35.00, 770.00, 3, 1, '2022-01-04 22:27:30', '2022-01-04 22:27:30'),
(10, 'JESSICA IZZOLI', 4, 'Efectivo', '3000.00', 35.00, 1050.00, 2, 1, '2022-01-04 23:28:56', '2022-01-04 23:28:56'),
(15, 'ARMINDA WAYER', 7, 'Efectivo', '2100.00', 35.00, 735.00, 2, 1, '2022-01-05 00:01:17', '2022-01-05 00:01:17'),
(16, 'MONICA FIGUEROA', 21, 'Credito', '2800.00', 35.00, 980.00, 2, 1, '2022-01-05 00:44:10', '2022-01-05 00:44:10'),
(17, 'IXIA HERNANDEZ', 14, 'Efectivo', '600.00', 35.00, 210.00, 1, 1, '2022-01-05 00:46:03', '2022-01-05 00:49:29'),
(18, 'CAROLINA ROSSEL', 17, 'Efectivo', '1600.00', 35.00, 560.00, 1, 1, '2022-01-05 00:52:23', '2022-01-05 00:52:23'),
(19, 'CRISTINA SHINOJO', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 1, '2022-01-05 00:53:07', '2022-01-05 00:53:07'),
(20, 'CRISTINA SHINOJO', 14, 'Efectivo', '600.00', 35.00, 210.00, 7, 1, '2022-01-05 00:53:30', '2022-01-05 00:53:30'),
(21, 'CARINA CACHI AB 1000 SEÑA', 3, 'Credito', '3000.00', 35.00, 1050.00, 3, 1, '2022-01-05 01:37:13', '2022-01-05 01:37:13'),
(22, 'IXIA HERNANDEZ AB 1000 SEÑA', 4, 'Efectivo', '3000.00', 35.00, 1050.00, 1, 1, '2022-01-05 01:38:08', '2022-01-05 01:38:08'),
(23, 'GRETEL MALARA', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 1, '2022-01-05 01:39:04', '2022-01-05 01:39:04'),
(24, 'ANA PAULA MONTENEGRO AB 1000 SEÑA', 9, 'Credito', '2400.00', 35.00, 840.00, 3, 1, '2022-01-05 01:39:30', '2022-01-05 01:39:30'),
(25, 'LUZ VERCEN', 24, 'Trans MP', '1500.00', 50.00, 750.00, 7, 2, '2022-01-05 20:00:57', '2022-01-06 20:00:57'),
(26, 'MICHELLE RODRIGUEZ', 14, 'Efectivo', '600.00', 35.00, 210.00, 3, 2, '2022-01-05 20:01:29', '2022-01-06 20:01:29'),
(27, 'MICHELLE RODRIGUEZ AB 1000 SEÑA', 4, 'Efectivo', '3000.00', 35.00, 1050.00, 3, 2, '2022-01-05 20:01:52', '2022-01-06 20:01:52'),
(28, 'MELODY RUIZ AB 1000 SEÑA', 2, 'Efectivo', '2000.00', 35.00, 700.00, 1, 2, '2022-01-05 20:02:27', '2022-01-06 20:07:58'),
(29, 'ANALIA MASSENA AB 1000 SEÑA', 18, 'Efectivo', '2200.00', 35.00, 770.00, 1, 2, '2022-01-05 20:03:04', '2022-01-06 20:03:04'),
(30, 'LUCIANA LEAL', 17, 'Efectivo', '1600.00', 35.00, 560.00, 3, 2, '2022-01-05 20:03:32', '2022-01-06 20:03:32'),
(31, 'LILIANA TAURO', 23, 'Efectivo', '2500.00', 35.00, 875.00, 2, 2, '2022-01-05 20:04:04', '2022-01-06 20:04:04'),
(32, 'LAURA POSTIGLIONI AB 1000 SEÑA', 1, 'Efectivo', '2700.00', 35.00, 945.00, 3, 2, '2022-01-05 20:04:55', '2022-01-06 20:04:55'),
(33, 'NOELIA GARIBALDI AB 1000 SEÑA', 3, 'Efectivo', '3000.00', 35.00, 1050.00, 2, 2, '2022-01-05 20:05:26', '2022-01-06 20:05:26'),
(34, 'GABRIELA RAMIREZ', 14, 'Efectivo', '600.00', 35.00, 210.00, 7, 2, '2022-01-05 20:05:46', '2022-01-06 20:05:46'),
(35, 'GABRIELA RAMIREZ', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 2, '2022-01-05 20:06:07', '2022-01-06 20:06:07'),
(36, 'MYRIAM GAUTO FUE 7D $3200', 3, 'Efectivo', '3000.00', 35.00, 1050.00, 5, 3, '2022-01-06 20:13:42', '2022-01-06 20:13:42'),
(38, 'LAURA WAIZER', 7, 'Efectivo', '2100.00', 35.00, 735.00, 5, 3, '2022-01-06 21:19:04', '2022-01-06 21:19:04'),
(39, 'ADRIANA VACCARO', 18, 'Efectivo', '2200.00', 35.00, 770.00, 2, 3, '2022-01-06 21:56:20', '2022-01-06 21:56:20'),
(40, 'NADEZKA POZO', 2, 'Trans MP', '2000.00', 35.00, 700.00, 2, 3, '2022-01-06 22:02:03', '2022-01-06 22:02:03'),
(41, 'YESICA AGUERRE', 10, 'Efectivo', '700.00', 50.00, 350.00, 5, 3, '2022-01-06 23:02:33', '2022-01-06 23:02:33'),
(42, 'YESICA AGUERRE', 2, 'Efectivo', '2000.00', 35.00, 700.00, 5, 3, '2022-01-06 23:02:59', '2022-01-06 23:02:59'),
(43, 'JIMENA BECERRA AB 1000 SEÑA', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 3, '2022-01-07 00:17:46', '2022-01-07 00:17:46'),
(44, 'VILMA VILLAMIL', 18, 'Trans MP', '2200.00', 35.00, 770.00, 5, 3, '2022-01-07 01:24:30', '2022-01-07 01:24:30'),
(45, 'LAURA MORILLO', 2, 'Efectivo', '2000.00', 35.00, 700.00, 2, 3, '2022-01-07 02:10:50', '2022-01-07 02:10:50'),
(46, 'CARINA PEREZ', 18, 'Credito', '2200.00', 35.00, 770.00, 5, 4, '2022-01-07 18:35:48', '2022-01-07 18:35:48'),
(47, 'ROCIO RIOS', 10, 'Credito', '700.00', 50.00, 350.00, 3, 4, '2022-01-07 18:36:11', '2022-01-07 18:36:11'),
(48, 'ROCIO RIOS', 19, 'Credito', '2500.00', 35.00, 875.00, 3, 4, '2022-01-07 18:36:37', '2022-01-07 18:36:37'),
(49, 'CLAUDIA PASSERINI', 14, 'Credito', '600.00', 35.00, 210.00, 2, 4, '2022-01-07 18:37:05', '2022-01-07 18:37:05'),
(50, 'CLAUDIA PASSERINI', 10, 'Credito', '700.00', 50.00, 350.00, 2, 4, '2022-01-07 18:37:23', '2022-01-07 18:37:23'),
(51, 'CLAUDIA PASSERINI', 2, 'Credito', '2000.00', 35.00, 700.00, 2, 4, '2022-01-07 18:37:46', '2022-01-07 18:37:46'),
(52, 'AGUSTINA CARDENAS', 19, 'Trans MP', '2500.00', 35.00, 875.00, 5, 4, '2022-01-07 20:19:46', '2022-01-07 20:19:46'),
(53, 'LUCIANA MARQUEZ', 14, 'Efectivo', '600.00', 35.00, 210.00, 3, 4, '2022-01-07 20:59:04', '2022-01-07 20:59:04'),
(54, 'LUCIANA MARQUEZ', 2, 'Efectivo', '2000.00', 35.00, 700.00, 3, 4, '2022-01-07 20:59:25', '2022-01-07 20:59:25'),
(55, 'CECILIA CHAVES', 2, 'Efectivo', '2000.00', 35.00, 700.00, 2, 4, '2022-01-07 21:33:19', '2022-01-07 21:33:19'),
(56, 'ALEJANDRA CHAVES', 2, 'Trans MP', '2000.00', 35.00, 700.00, 2, 4, '2022-01-07 23:04:49', '2022-01-07 23:04:49'),
(57, 'EMILIA FERNNDEZ', 11, 'Efectivo', '1000.00', 35.00, 350.00, 2, 4, '2022-01-08 00:55:34', '2022-01-08 00:55:34'),
(58, 'EMILIA FERNANDEZ AB 1000 SEÑA', 7, 'Efectivo', '2100.00', 35.00, 735.00, 2, 4, '2022-01-08 00:56:05', '2022-01-08 00:56:05'),
(59, 'ELIANA CAIRO', 19, 'Efectivo', '2500.00', 35.00, 875.00, 5, 4, '2022-01-08 00:56:30', '2022-01-08 00:56:30'),
(60, 'ELIANA CAIRO', 11, 'Efectivo', '1000.00', 35.00, 350.00, 5, 4, '2022-01-08 00:56:53', '2022-01-08 00:56:53'),
(61, 'SILVIA DASCAL', 18, 'Efectivo', '2200.00', 35.00, 770.00, 5, 4, '2022-01-08 00:57:52', '2022-01-08 00:57:52'),
(62, 'SANDRA SANSONE', 14, 'Efectivo', '600.00', 35.00, 210.00, 3, 4, '2022-01-08 01:34:34', '2022-01-08 01:34:34'),
(63, 'SANDRA SANSONE', 3, 'Efectivo', '3000.00', 35.00, 1050.00, 3, 4, '2022-01-08 01:34:53', '2022-01-08 01:34:53'),
(64, 'MARIANA ONO', 18, 'Credito', '2200.00', 35.00, 770.00, 2, 5, '2022-01-08 18:27:50', '2022-01-08 18:27:50'),
(65, 'ISOLINA', 2, 'Efectivo', '2000.00', 35.00, 700.00, 3, 5, '2022-01-08 20:19:25', '2022-01-08 20:19:25'),
(66, 'ISOLINA', 11, 'Efectivo', '1000.00', 35.00, 350.00, 3, 5, '2022-01-08 20:20:56', '2022-01-08 20:20:56'),
(67, 'VALERIA OLEAR', 2, 'Debito', '2000.00', 35.00, 700.00, 5, 5, '2022-01-08 21:08:14', '2022-01-08 21:08:14'),
(68, 'VERONICA PIETRA', 7, 'Efectivo', '2100.00', 35.00, 735.00, 5, 5, '2022-01-08 21:16:11', '2022-01-08 21:16:11'),
(69, 'CAROLINA GODOY AB 1000 SEÑA', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 5, '2022-01-08 21:17:03', '2022-01-08 21:17:03'),
(70, 'MARTA LOUSTEAU', 18, 'Efectivo', '2200.00', 35.00, 770.00, 5, 5, '2022-01-08 22:31:49', '2022-01-08 22:31:49'),
(71, 'DANIELLE LUCENA', 3, 'Credito', '3000.00', 35.00, 1050.00, 3, 5, '2022-01-09 00:09:19', '2022-01-09 00:09:19'),
(72, 'MAIBELIN MONTOYA AB 1000 SEÑA', 24, 'Efectivo', '1500.00', 50.00, 750.00, 7, 5, '2022-01-09 00:10:06', '2022-01-09 00:10:06'),
(73, 'VICTORIA BAUR', 17, 'Efectivo', '1600.00', 35.00, 560.00, 3, 5, '2022-01-09 00:21:58', '2022-01-09 00:21:58'),
(74, 'JACQUELINE SANTANA', 5, 'Efectivo', '3400.00', 35.00, 1190.00, 5, 5, '2022-01-09 01:19:55', '2022-01-09 01:19:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
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
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_servicio_id_foreign` (`servicio_id`),
  ADD KEY `ventas_empleado_id_foreign` (`empleado_id`),
  ADD KEY `ventas_caja_id_foreign` (`caja_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_caja_id_foreign` FOREIGN KEY (`caja_id`) REFERENCES `cajas` (`id`),
  ADD CONSTRAINT `ventas_empleado_id_foreign` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`),
  ADD CONSTRAINT `ventas_servicio_id_foreign` FOREIGN KEY (`servicio_id`) REFERENCES `servicios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
