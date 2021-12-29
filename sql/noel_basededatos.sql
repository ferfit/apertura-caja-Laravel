-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 29-12-2021 a las 17:39:46
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
(1, 'caja local 7/12', '12000.00', '4000.00', '9000.00', 'cerrado', '2021-12-08 03:00:00', '2021-12-07 22:06:51', '2021-12-08 16:30:21'),
(3, 'caja local 14/12', '7000.00', '1500.00', '6000.00', 'cerrado', '2021-12-14 03:00:00', '2021-12-14 17:13:36', '2021-12-14 17:20:15'),
(4, 'Caja prueba 29/12', '600.00', '300.00', '600.00', 'abierto', NULL, '2021-12-29 22:19:37', '2021-12-29 22:21:00');

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
(1, 'Jazmin', '2021-12-07 22:05:04', '2021-12-10 20:11:19'),
(2, 'Stephanie', '2021-12-07 22:05:08', '2021-12-10 20:11:30'),
(3, 'Yosayni', '2021-12-10 20:11:42', '2021-12-10 20:11:42'),
(5, 'Noel', '2021-12-10 20:11:51', '2021-12-10 20:11:51'),
(7, 'Asya', '2021-12-29 22:16:14', '2021-12-29 22:16:14'),
(8, 'Fernando Pereyra', '2021-12-29 23:37:22', '2021-12-29 23:37:32');

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
  `precio` decimal(10,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `nombre`, `precio`, `created_at`, `updated_at`) VALUES
(1, 'Natural', '0', '2021-12-07 22:05:15', '2021-12-29 17:55:47'),
(2, 'Clasicas', '0', '2021-12-07 22:05:24', '2021-12-29 17:55:38'),
(3, 'Queen', '0', '2021-12-29 17:55:59', '2021-12-29 17:55:59'),
(4, 'Wet Effect', '0', '2021-12-29 17:56:07', '2021-12-29 17:56:07'),
(5, 'Supreme', '0', '2021-12-29 17:56:17', '2021-12-29 17:56:17'),
(6, 'Mega Volumen', '0', '2021-12-29 17:56:25', '2021-12-29 17:56:25'),
(7, 'Lash Lifting + Tintura', '0', '2021-12-29 17:56:35', '2021-12-29 17:56:35'),
(8, 'Lash lifting + laminado + botox', '0', '2021-12-29 17:57:19', '2021-12-29 17:57:19'),
(9, 'Hibridas', '0', '2021-12-29 17:57:26', '2021-12-29 17:57:26'),
(10, 'Perfilado de cejas con hilo', '0', '2021-12-29 17:57:35', '2021-12-29 17:57:35'),
(11, 'Perfilado de cejas con hilo + Henna', '0', '2021-12-29 17:57:46', '2021-12-29 17:57:46'),
(12, 'Henna', '0', '2021-12-29 17:57:51', '2021-12-29 17:57:51'),
(13, 'Brow Lamination', '0', '2021-12-29 18:00:01', '2021-12-29 18:00:01'),
(14, 'Remocion', '0', '2021-12-29 18:01:28', '2021-12-29 18:01:28'),
(15, 'Kim K', '0', '2021-12-29 18:01:36', '2021-12-29 18:01:36'),
(16, 'Depilacion Facial', '0', '2021-12-29 18:01:50', '2021-12-29 18:01:50'),
(17, 'Service Clasicas', '0', '2021-12-29 18:02:05', '2021-12-29 18:02:05'),
(18, 'Service Natural', '0', '2021-12-29 18:02:13', '2021-12-29 18:02:13'),
(19, 'Service Queen', '0', '2021-12-29 18:02:21', '2021-12-29 18:02:21'),
(20, 'Service Hibridas', '0', '2021-12-29 18:02:28', '2021-12-29 18:02:28'),
(21, 'Service Supreme', '0', '2021-12-29 18:02:51', '2021-12-29 18:02:51'),
(22, 'Service Megavolumen', '0', '2021-12-29 18:03:00', '2021-12-29 18:03:00'),
(23, 'Service Wet', '1501', '2021-12-29 18:03:30', '2021-12-29 23:39:07');

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
(1, 'Fernando Pereyra', 'fer@correo.com', NULL, '$2y$10$.nXfdNAOIV2SjgwbXNPC1eICRA0yGTica3fSRhbM/AQ03kR8w5a2G', NULL, '2021-12-07 22:04:44', '2021-12-07 22:04:44');

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
(1, 'carlos san jose', 1, 'Efectivo', '1000.00', 10.00, 100.00, 1, 1, '2021-12-07 22:07:08', '2021-12-07 22:07:08'),
(2, 'rosa gallardo', 2, 'Debito', '2000.00', 10.00, 200.00, 2, 1, '2021-12-07 22:07:31', '2021-12-07 22:07:31'),
(3, 'fernando pereyra', 1, 'Credito', '5000.00', 10.00, 500.00, 1, 1, '2021-12-07 22:07:46', '2021-12-07 22:07:46'),
(4, 'fernando pereyra', 2, 'Debito', '1000.00', 50.00, 500.00, 2, 1, '2021-12-07 22:08:03', '2021-12-07 22:08:03'),
(5, 'nacho', 1, 'Efectivo', '2000.00', 20.00, 400.00, 1, 1, '2021-12-07 22:09:51', '2021-12-07 22:09:51'),
(6, 'rosa gallardo', 2, 'Debito', '1000.00', 10.00, 100.00, 1, 1, '2021-12-07 22:10:32', '2021-12-07 22:10:32'),
(7, 'victoria', 1, 'Efectivo', '1000.00', 10.00, 100.00, 1, 3, '2021-12-14 17:15:25', '2021-12-14 17:15:25'),
(8, 'sofia', 2, 'Debito', '2000.00', 10.00, 200.00, 1, 3, '2021-12-14 17:16:32', '2021-12-14 17:16:32'),
(9, 'rosa', 1, 'Trans MP', '1000.00', 10.00, 100.00, 2, 3, '2021-12-14 17:17:58', '2021-12-14 17:17:58'),
(10, 'sandra', 1, 'Credito', '3000.00', 10.00, 300.00, 2, 3, '2021-12-14 17:18:36', '2021-12-14 17:18:36'),
(11, 'Noelia Villarreal', 14, 'Credito', '600.00', 35.00, 210.00, 5, 4, '2021-12-29 22:20:59', '2021-12-29 22:20:59');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
