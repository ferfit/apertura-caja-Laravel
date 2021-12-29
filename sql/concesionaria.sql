-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-12-2021 a las 14:40:01
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `apertura_caja_laravel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autos`
--

CREATE TABLE `autos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `condicion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `modelo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `año` int(11) NOT NULL,
  `precio` double(10,2) NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kilometraje` bigint(20) DEFAULT NULL,
  `combustible` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipomotor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `traccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cajaauto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tapizado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permuta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id`, `condicion`, `marca`, `modelo`, `version`, `año`, `precio`, `ciudad`, `provincia`, `tipo`, `kilometraje`, `combustible`, `tipomotor`, `traccion`, `cajaauto`, `color`, `tapizado`, `direccion`, `valor`, `permuta`, `created_at`, `updated_at`) VALUES
(1, 'Usado', 'Ford', 'Focus', '1.6', 2015, 1340000.00, 'Reconquista', 'Santa Fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Usado', 'Peugeot', '207', '1.4', 2010, 800000.00, 'Tigre', 'Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Usado', 'Peugeot', '208', '1.4', 2015, 1500000.00, 'Tigre', 'Buenos Aires', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, '0 km', 'Fiat', 'Toro', '1.8', 2021, 800000.00, 'Reconquista', 'Santa Fe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajaautos`
--

CREATE TABLE `cajaautos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cajaautos`
--

INSERT INTO `cajaautos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Automática', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Automática/Secuencial', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Manual', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudads`
--

CREATE TABLE `ciudads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ciudads`
--

INSERT INTO `ciudads` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Reconquista', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Tigre', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Godoz Cruz', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'San Fernando', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('compra','venta','compra-venta') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `celular`, `email`, `ciudad`, `provincia`, `nota`, `estado`, `created_at`, `updated_at`) VALUES
(1, 'Fernando Pereyra', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Victoria Gonzalez', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'venta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Sofia Ferreira', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Diez Jose Luis', 692669, '', 'Reconquista', 'Santa Fe', 'chata 11 a 15 4x4 mejor si es caja automatica', 'compra', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Nelson A Ceibal', 348255002, '', 'Ceibal', 'Santa Fe', 'Ranger XLT 4x4 2018 - 180 mil km', 'venta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, 'Miriam Zarza', 3482262574, '', 'Ceibal', 'Santa Fe', 'Polo, Focus (5 puertas), Yaris - (2017/2018) Hasta $2.000.000 - Entrega Sandero 2014 tech rum -  56 mil km', 'venta', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Amarillo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Azul', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Blanco', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Gris', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Marron', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, 'Negro', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(7, 'Plata', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(8, 'Rojo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(9, 'Verde', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `combustibles`
--

CREATE TABLE `combustibles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `combustibles`
--

INSERT INTO `combustibles` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Diesel', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Eléctrico', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'GNC/Nafta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Nafta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Híbrido', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `condicions`
--

CREATE TABLE `condicions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `condicions`
--

INSERT INTO `condicions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '0 km', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Usado', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccions`
--

CREATE TABLE `direccions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `direccions`
--

INSERT INTO `direccions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Asistida', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Eléctrica', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Electro-hidráulica', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Hidráulica', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Mecánica', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Volkswagen', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'BMW', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Mercedes Benz', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Renault', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Fiat', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, 'Ford', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(7, 'Honda', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(8, 'Audi', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(9, 'Toyota', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(10, 'Chevrolet', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(11, 'Nissan', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(12, 'Volvo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(13, 'Jeep', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(14, 'Peuget', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(15, 'Suzuki', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(16, 'Hyundai', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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
(8, '2021_10_09_232415_create_ventas_table', 1),
(9, '2021_12_28_003822_create_clientes_table', 1),
(10, '2021_12_28_142636_create_autos_table', 1),
(11, '2021_12_28_152306_create_condicions_table', 1),
(12, '2021_12_28_152733_create_marcas_table', 1),
(13, '2021_12_28_153511_create_modelos_table', 1),
(14, '2021_12_28_153814_create_versions_table', 1),
(15, '2021_12_28_154059_create_ciudads_table', 1),
(16, '2021_12_28_154310_create_provincias_table', 1),
(17, '2021_12_28_173510_create_tipos_table', 1),
(18, '2021_12_28_174116_create_combustibles_table', 1),
(19, '2021_12_28_174421_create_tipomotors_table', 1),
(20, '2021_12_28_174928_create_traccions_table', 1),
(21, '2021_12_28_175325_create_cajaautos_table', 1),
(22, '2021_12_28_175512_create_colors_table', 1),
(23, '2021_12_28_175730_create_tapizados_table', 1),
(24, '2021_12_28_180229_create_direccions_table', 1),
(25, '2021_12_28_180445_create_valors_table', 1),
(26, '2021_12_28_180637_create_permutas_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '207', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, '208', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Toro', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'A8', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Palio', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, 'Focus', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(7, 'Gol', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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
-- Estructura de tabla para la tabla `permutas`
--

CREATE TABLE `permutas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permutas`
--

INSERT INTO `permutas` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Acepto permuta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'No acepto', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE `provincias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Buenos Aires', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Santa Fe', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Mendoza', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Salta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Jujuy', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tapizados`
--

CREATE TABLE `tapizados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tapizados`
--

INSERT INTO `tapizados` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Alcántara', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Cuero', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Cuero y alcántara', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Cuero y tela', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Tela', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomotors`
--

CREATE TABLE `tipomotors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipomotors`
--

INSERT INTO `tipomotors` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '2T', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, '3 Cilindros', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, '4 Cilindros', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, '4T', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, '5 Cilindros', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, '6 Cilindros en línea', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(7, 'Aspirado', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(8, 'Biturbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(9, 'Bóxer', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(10, 'Bóxer Turbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(11, 'Turbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(12, 'Twin Turbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(13, 'V12', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(14, 'V6', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(15, 'V6 BiTurbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(16, 'V6 Turbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(17, 'v6 TwinTurbo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(18, 'V8', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Auto/Camioneta', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Camión', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Cuatriciclo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Moto', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Náutica', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(6, 'Otros', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `traccions`
--

CREATE TABLE `traccions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `traccions`
--

INSERT INTO `traccions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '4x2', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, '4x4', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, 'Delantera', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, 'Integral', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, 'Trasera', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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
(1, 'Fernando Pereyra', 'fer@correo.com', NULL, '$2y$10$J7c7dGG9p.2gArc/P9lB.u/NiRTQpGOMteZyZhl9OIfrsUPDZr4DW', NULL, '2021-12-29 16:39:12', '2021-12-29 16:39:12'),
(2, 'Lucas Goi', 'lucaspaduangoi@gmail.com', NULL, '$2y$10$jD1ARNp1POAIxu65LuZvU.I4TzhhUqzmGlImM/LwCkwA05vi3yLXm', NULL, '2021-12-29 16:39:13', '2021-12-29 16:39:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valors`
--

CREATE TABLE `valors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `valors`
--

INSERT INTO `valors` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Fijo', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, 'Negociable', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `versions`
--

CREATE TABLE `versions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `versions`
--

INSERT INTO `versions` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, '1.0', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(2, '1.4', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(3, '1.6', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(4, '1.8', '2021-12-29 16:39:13', '2021-12-29 16:39:13'),
(5, '2.0', '2021-12-29 16:39:13', '2021-12-29 16:39:13');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajaautos`
--
ALTER TABLE `cajaautos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `combustibles`
--
ALTER TABLE `combustibles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `condicions`
--
ALTER TABLE `condicions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccions`
--
ALTER TABLE `direccions`
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
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permutas`
--
ALTER TABLE `permutas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `provincias`
--
ALTER TABLE `provincias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tapizados`
--
ALTER TABLE `tapizados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipomotors`
--
ALTER TABLE `tipomotors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `traccions`
--
ALTER TABLE `traccions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `valors`
--
ALTER TABLE `valors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_servicio_id_foreign` (`servicio_id`),
  ADD KEY `ventas_empleado_id_foreign` (`empleado_id`),
  ADD KEY `ventas_caja_id_foreign` (`caja_id`);

--
-- Indices de la tabla `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autos`
--
ALTER TABLE `autos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `cajaautos`
--
ALTER TABLE `cajaautos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudads`
--
ALTER TABLE `ciudads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `combustibles`
--
ALTER TABLE `combustibles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `condicions`
--
ALTER TABLE `condicions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `direccions`
--
ALTER TABLE `direccions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `permutas`
--
ALTER TABLE `permutas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `provincias`
--
ALTER TABLE `provincias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tapizados`
--
ALTER TABLE `tapizados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipomotors`
--
ALTER TABLE `tipomotors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `traccions`
--
ALTER TABLE `traccions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `valors`
--
ALTER TABLE `valors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
