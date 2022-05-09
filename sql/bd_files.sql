-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-05-2022 a las 18:34:45
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
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `patente` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condicion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `modelo_id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `año` int(11) NOT NULL,
  `preciocosto` double(10,2) DEFAULT NULL,
  `precio` double(10,2) DEFAULT NULL,
  `sucursal` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('Activado','Desactivado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagenPortada` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `descripcion` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `autos`
--

INSERT INTO `autos` (`id`, `titulo`, `patente`, `condicion`, `marca_id`, `modelo_id`, `version`, `año`, `preciocosto`, `precio`, `sucursal`, `ciudad`, `provincia`, `estado`, `imagenPortada`, `tipo`, `kilometraje`, `combustible`, `tipomotor`, `traccion`, `cajaauto`, `color`, `tapizado`, `direccion`, `valor`, `permuta`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Volkswagen Voyage 1.6 2014', '', 'Usado', 77, 1009, '1,6', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(2, 'Volkswagen UP 1.0 Take AA 2016', '', 'Usado', 77, 1010, '1,0', 2016, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(3, 'Chevrolet Prisma 1.4 LS 2017', '', 'Usado', 14, 1016, '1,4', 2017, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(4, 'Toyota Hilux 3.0L SRV 4X2 2011', '', 'Usado', 74, 1021, '3,0', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(5, 'Volkswagen Gol Trend 1.6 Hihgline 2013', '', 'Usado', 77, 1011, '1,6', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(6, 'Chevrolet Onix LTZ 1.4 2015', '', 'Usado', 14, 1017, '1,4', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(7, 'Ford Ranger 3.0 XL 4X2 2009', '', 'Usado', 26, 320, '3,0', 2009, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(8, 'Renault Sandero Stepway 1.6 16v 2016', '', 'Usado', 61, 1025, '1,0', 2016, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(9, 'Toyota Etios 1.5 XLS Sedan 2018', '', 'Usado', 74, 1022, '1,5', 2018, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(10, 'Volkswagen Gol Trend 1.6 sportline 2015', '', 'Usado', 77, 1011, '1,6', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(11, 'Ford Ecosport 1.6 XL Plus 4x2 2011', '', 'Usado', 26, 1024, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(12, 'Ford Fiesta Max Ambiente 1.6 2007', '', 'Usado', 26, 306, '1,6', 2007, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(13, 'Peugeot 308 Active 1.6 2013', '', 'Usado', 58, 699, '1,6', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(14, 'Volkswagen Saveiro Cabina Extendida 1.6 2014', '', 'Usado', 77, 1012, '1,6', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(15, 'Ford Focus II 1.6 S 2014', '', 'Usado', 26, 303, '1,6', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(16, 'Volkswagen Voyage 1.6 pk2 2011', '', 'Usado', 77, 1009, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(17, 'Bajaj V15 150 cc 2018', '', 'Usado', 80, 1034, '150cc', 2018, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(18, 'Volkswagen Voyage 1.6 Pk3 2009', '', 'Usado', 77, 1009, '1,6', 2009, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(19, 'CHEVROLET CORSA 2 1.8 GL AA/DH 2007', '', 'Usado', 14, 1018, '1,8', 2007, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(20, 'Chevrolet Onix 1.4 LT 2014', '', 'Usado', 14, 1017, '1,4', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(21, 'Chevrolet Onix 1.4 JOY+ 2018', '', 'Usado', 14, 1017, '1,4', 2018, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(22, 'Suzuki 1.4 L/N 3ptas 2011', '', 'Usado', 71, 1030, '1,4', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(23, 'VOLKSWAGEN SURAN 1.6 TRENDLINE 2017', '', 'Usado', 77, 1013, '1,6', 2017, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(24, 'Dorado 520 con Motor 40HP 2018', '', 'Usado', 81, 1035, '40HP', 2018, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(25, 'Toyota Hilux 3.0 SRV 4X2 2013', '', 'Usado', 74, 1021, '3,0', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(26, 'Ford Focus II 2.0 Trend Plus 2010', '', 'Usado', 26, 303, '2,0', 2010, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(27, 'Renault Sandero Stepway 1.6 16v Privilege 2015', '', 'Usado', 61, 1025, '1,6', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(28, 'Chevrolet Cruze 1.8 LTZ 5PTAS 2013', '', 'Usado', 14, 143, '1,8', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(29, 'Chevrolet Corsa 2 1.8 GLS 2005', '', 'Usado', 14, 1018, '1,8', 2005, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(30, 'FORD FOCUS III 2.0 SE 2015', '', 'Usado', 26, 303, '2,0', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(31, 'FORD FOCUS III 1.6 S SEDAN 2016', '', 'Usado', 26, 303, '1,6', 2016, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(32, 'Peugeot 208 1.5 Active 2016', '', 'Usado', 58, 720, '1,5', 2016, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(33, 'Volkswagen Bora 2.0 Trendline 2011', '', 'Usado', 77, 1014, '2,0', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(34, 'Renault Duster Oroch 1.6 Dynamique 2016', '', 'Usado', 61, 1026, '1,6', 2016, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(35, 'Ford Focus II 1.6 Trend 2011', '', 'Usado', 26, 303, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(36, 'Ford Ecosport 1.6 SE 2015', '', 'Usado', 26, 1024, '1,6', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(37, 'Toyota Hilux 3.0 DC SRV 4X2 2015', '', 'Usado', 74, 1021, '3,0', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(38, 'Chevrolet Prisma 1.4 LTZ 2013', '', 'Usado', 14, 1016, '1,4', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(39, 'Renault Clio 1.2 16v Authentique 2012', '', 'Usado', 61, 1033, '1,2', 2012, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(40, 'Volkswagen Gol Trend 1.6 pk1 2012', '', 'Usado', 77, 1011, '1,6', 2012, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(41, 'Chevrolet Astra 2.0 GLS 2011', '', 'Usado', 14, 1019, '2,0', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(42, 'Ford Fiesta Kinetic Design 1.6 trend 2011', '', 'Usado', 26, 306, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(43, 'Chevrolet Montana 1.8 LS 2012', '', 'Usado', 14, 1020, '1,8', 2012, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(44, 'Chevrolet Aveo 1.6 LT 2011', '', 'Usado', 14, 138, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(45, 'Renault Logan 1.6 8v 2011', '', 'Usado', 61, 1027, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(46, 'Toyota Corolla XLI 1.8 MT6 2011', '', 'Usado', 74, 1023, '1,8', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(47, 'Volkswagen Gol Trend 1.6 Pk1 2013', '', 'Usado', 77, 1011, '1,6', 2013, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(48, 'Volkswagen Amarok 2.0 Trendline 4x2 2010', '', 'Usado', 77, 1015, '2,0', 2010, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(49, 'Chevrolet Cruze 1.4t LTZ AUT 2017 sedan', '', 'Usado', 14, 143, '1,4', 2017, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(50, 'Renault Sandero Stepway 1.6 16v Luxe 2010', '', 'Usado', 61, 1025, '1,6', 2010, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(51, 'Volkswagen Gol Trend 1.6 PK1 2011', '', 'Usado', 77, 1011, '1,6', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(52, 'Volkswagen Gol Power 1.4 3ptas 2011', '', 'Usado', 77, 1011, '1,4', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(53, 'Renault Megane III 2.0 Privil?ge 2012', '', 'Usado', 61, 1028, '2,0', 2012, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(54, 'Ford Fiesta Kinetic 1.6 S Plus 2014', '', 'Usado', 26, 306, '1,6', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(55, 'Peugeot Partner 1.6 HDI 2PLC 2018', '', 'Usado', 58, 1029, '1,6', 2018, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(56, 'Fiat Strada 1.4 Wordkin', '', 'Usado', 25, 1031, '1,4', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(57, 'Volkswagen Gol Power 1.6 3ptas 2010', '', 'Usado', 77, 1011, '1,4', 2010, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(58, 'Volkswagen Saveiro 1.6 C/Ext 2014', '', 'Usado', 77, 1012, '1,6', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(59, 'Volkswagen Gol Trend 1.6 2021', '', 'Usado', 77, 1011, '1,6', 2021, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 13:44:29', '0000-00-00 00:00:00'),
(60, 'Volkswagen Voyage 1.6 PK1 2010', '', 'Usado', 77, 1009, '1,6', 2010, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 13:44:26', '0000-00-00 00:00:00'),
(61, 'Fiat Siena 1.4 EL SEDAN 2015', '', 'Usado', 25, 1032, '1,4', 2015, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00'),
(62, 'Toyota Corolla 1.8 XEI MT6 2014', '', 'Usado', 74, 1023, '1,8', 2014, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Activado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '0000-00-00 00:00:00');

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
(1, 'Automática', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Automática/Secuencial', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Manual', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Reconquista', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Avellaneda', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Vera', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Romang', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Romang', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, 'Malabrigo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(7, 'Arroyo Ceibal', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(8, 'Berna', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(9, 'Margarita', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(10, 'Guadalupe Norte', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `celular` bigint(20) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ciudad` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('compra','venta','compra-venta') COLLATE utf8mb4_unicode_ci NOT NULL,
  `origencliente` enum('facebook','instagram','google','directo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `estadocliente` enum('Activado','Desactivado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `celular`, `email`, `ciudad`, `provincia`, `nota`, `estado`, `origencliente`, `estadocliente`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Fernando Pereyra', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', 'facebook', 'Activado', 1, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Victoria Gonzalez', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'venta', 'facebook', 'Activado', 1, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Sofia Ferreira', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', 'facebook', 'Activado', 2, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Diez Jose Luis', 692669, '', 'Reconquista', 'Santa Fe', 'chata 11 a 15 4x4 mejor si es caja automatica', 'compra', 'facebook', 'Activado', 2, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Nelson A Ceibal', 348255002, '', 'Ceibal', 'Santa Fe', 'Ranger XLT 4x4 2018 - 180 mil km', 'venta', 'facebook', 'Activado', 3, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, 'Miriam Zarza', 3482262574, '', 'Ceibal', 'Santa Fe', 'Polo, Focus (5 puertas), Yaris - (2017/2018) Hasta $2.000.000 - Entrega Sandero 2014 tech rum -  56 mil km', 'venta', 'facebook', 'Activado', 3, '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Amarillo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Azul', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Blanco', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Gris', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Marron', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, 'Negro', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(7, 'Plata', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(8, 'Rojo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(9, 'Verde', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Diesel', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Eléctrico', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'GNC/Nafta', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Nafta', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Híbrido', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, '0 km', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Usado', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonofijo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefonowhatsapp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Asistida', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Eléctrica', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Electro-hidráulica', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Hidráulica', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Mecánica', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `files`
--

INSERT INTO `files` (`id`, `url`, `auto_id`, `created_at`, `updated_at`) VALUES
(12, 'public/autos/ysuXYrxTYnBEvfWIts7iRMJdj2W6WBOzKqUxBbOp.png', 62, '2022-05-06 14:27:57', '2022-05-06 14:27:57'),
(13, 'public/autos/pNzl2m9eTjxptTOlP9YcaLHsejXjsIKZF646LmZH.png', 62, '2022-05-06 14:29:05', '2022-05-06 14:29:05'),
(14, 'public/autos/NxxFox7Uj5aVTNR682JjcWaSmQdkgNxqBjuIuHb7.png', 62, '2022-05-06 14:29:07', '2022-05-06 14:29:07'),
(15, 'public/autos/PgMNq2Axfrt9dgo1oqJaVRJ3Xpeno410FHnUPFqf.png', 62, '2022-05-06 14:29:09', '2022-05-06 14:29:09'),
(16, 'public/autos/1iUwz3ecglBI02QuB1tHPVf8hXD1yk8af0K7ymD4.png', 62, '2022-05-06 14:29:12', '2022-05-06 14:29:12'),
(17, 'public/autos/otqOF93D5pBz8qnEFxK4HbnsalwyEp0WTNpAny6G.png', 62, '2022-05-06 14:29:12', '2022-05-06 14:29:12'),
(18, 'public/autos/IO4r0y1Byu70cMTzulh8pL3t6qe47CcrvAkWBCF6.png', 62, '2022-05-06 14:29:28', '2022-05-06 14:29:28'),
(19, 'public/autos/h1Ag2psRJfzJxupBZ8LMH8vU0pbms3wN3m7BOEyP.jpg', 61, '2022-05-06 14:47:17', '2022-05-06 14:47:17'),
(20, 'public/autos/WpntkNo3PkCXAaZ5CP4BtCwCfaPfrMwb0md2wxSP.jpg', 61, '2022-05-06 14:47:19', '2022-05-06 14:47:19'),
(21, 'public/autos/uOKulXULjG9KjuffuJIROv2oW5SpHwp9j90MBRjQ.jpg', 61, '2022-05-06 14:48:26', '2022-05-06 14:48:26'),
(22, 'public/autos/efaX4YpbLHcCwPBDL58XM6iq8TI9ebohlkVcqtpp.jpg', 61, '2022-05-06 14:48:27', '2022-05-06 14:48:27'),
(23, 'public/autos/EFPhnTHJrNUIOB8tgIHrrVDlS2V56BjJZjztFthg.png', 61, '2022-05-06 14:48:55', '2022-05-06 14:48:55'),
(24, 'public/autos/98Qzb5G62Kmg6OWlJIjG90LWHddn92Ebdu1b3GTX.jpg', 61, '2022-05-06 14:50:41', '2022-05-06 14:50:41'),
(25, 'public/autos/QNyvX4TScwQPgsnFR442lmkp48pf3PtS3z8NXZvV.jpg', 61, '2022-05-06 14:50:42', '2022-05-06 14:50:42'),
(26, 'public/autos/0tbt2ssOcnPLklJrSmTYzd1I0gZQZ6gIaEhRej38.jpg', 61, '2022-05-06 14:50:43', '2022-05-06 14:50:43'),
(27, 'public/autos/0bG3tQSamzOo2Liyr99hYdT5UoACr6nekq4UO5pt.jpg', 60, '2022-05-06 15:04:32', '2022-05-06 15:04:32'),
(28, 'public/autos/EvnHf5xgZsELWuRoHNVmzIY4hIrp3Qki0udcTYdz.jpg', 60, '2022-05-06 15:04:32', '2022-05-06 15:04:32'),
(29, 'public/autos/jPb0zP0umqh3ig9q7gbJLzlF0E82Z6fJZ9mz5vw0.jpg', 60, '2022-05-06 15:04:33', '2022-05-06 15:04:33'),
(30, 'public/autos/e40U2rZIzjWceG1g4y1qVkpXSiXIKjedOC8Alvwt.jpg', 60, '2022-05-06 15:04:33', '2022-05-06 15:04:33'),
(31, 'public/autos/vTQt3LuG0s5cuYbLHfHbW6KYwUsNR5WetjwwDA4u.jpg', 60, '2022-05-06 15:04:34', '2022-05-06 15:04:34'),
(32, 'public/autos/KEgi371km2EPYgPfgEWCKuPUQN0RcMWA4TtmLDFz.jpg', 60, '2022-05-06 15:04:34', '2022-05-06 15:04:34'),
(33, 'public/autos/xWfVctPVZLwb2VT4vxUbgO8eZhUay1rjThlx2z4q.jpg', 60, '2022-05-06 15:05:36', '2022-05-06 15:05:36'),
(34, 'public/autos/A0uiKI88PySp8t9BcKi6ggL2VdGd2YBhyBUfjqZA.jpg', 60, '2022-05-06 15:05:37', '2022-05-06 15:05:37'),
(35, 'public/autos/8JTRTsuRFcYaATeuIUpvrNW66XrFTIiACxMPh7em.jpg', 59, '2022-05-06 15:09:55', '2022-05-06 15:09:55'),
(36, 'public/autos/4vLk3dhMwmFaPQfjwogLZuo6ua0qKVDeMnlD3atZ.jpg', 59, '2022-05-06 15:09:56', '2022-05-06 15:09:56'),
(37, 'public/autos/YJHa2eUa9uDHKL2SSTUTRblhJUUhlNXteuZYKTXe.jpg', 59, '2022-05-06 15:09:56', '2022-05-06 15:09:56'),
(38, 'public/autos/Ez8xLrWsjQuJ9vWUbvdhd1d3VJRUJhMJSDCSp4XL.jpg', 59, '2022-05-06 15:09:56', '2022-05-06 15:09:56'),
(39, 'public/autos/nErUX6tDqmzlestVzVBoZ0BjNrTrq4YshhCrZGts.jpg', 59, '2022-05-06 15:09:56', '2022-05-06 15:09:56'),
(40, 'public/autos/58eUHplIVsLVz2cSOGGQ7tKRqLV9cL0oct755K1B.jpg', 59, '2022-05-06 15:09:57', '2022-05-06 15:09:57'),
(41, 'public/autos/yUORL4PIDQ7WDySi2l4D2XqF6HletZMysVpxovAJ.jpg', 58, '2022-05-06 16:13:19', '2022-05-06 16:13:19'),
(42, 'public/autos/QNQyIXBvjqxwhHKexNY10Ss7ySpQWEZbmMCPsSQ7.jpg', 58, '2022-05-06 16:13:22', '2022-05-06 16:13:22'),
(43, 'public/autos/1mOKPGEsUn5IpU2uGdMQDlpV0gQsxC4ilS9mItqp.jpg', 58, '2022-05-06 16:13:22', '2022-05-06 16:13:22'),
(44, 'public/autos/o8iNMHlgDvJosntADyMNMldVNdWYi9nkDpJpHOEf.jpg', 58, '2022-05-06 16:13:24', '2022-05-06 16:13:24'),
(45, 'public/autos/1CZxlsSfnaIGHkJQITEL42bn431pgUZTVcftcmRD.jpg', 58, '2022-05-06 16:13:26', '2022-05-06 16:13:26'),
(46, 'public/autos/yGxQn1o42S39wNamTvXXIsLVA1hIBsnfNRww7uU4.jpg', 57, '2022-05-06 16:18:28', '2022-05-06 16:18:28'),
(47, 'public/autos/GrPbbrR5LkRZ1muVB1YXBVhBXnrNlBOe7292AkZW.jpg', 57, '2022-05-06 16:18:48', '2022-05-06 16:18:48'),
(48, 'public/autos/yLeuOiImy5N9hMCb4tanX6Y5ZZoX0gDL2oNYxrYu.jpg', 57, '2022-05-06 16:19:03', '2022-05-06 16:19:03'),
(49, 'public/autos/A21W1npXFHxPcgsZu49vAwqs6kT4cd4rw4ZNGWzq.jpg', 57, '2022-05-06 16:19:10', '2022-05-06 16:19:10'),
(50, 'public/autos/vN3nxSbSWxZfozE4qy6bMkrWnSl4UHcSgB89nwk8.jpg', 57, '2022-05-06 16:19:16', '2022-05-06 16:19:16'),
(51, 'public/autos/q4LjDXBUebaCQE39VUXE9Rr99P9m6RBudAv71dry.jpg', 57, '2022-05-06 16:19:25', '2022-05-06 16:19:25'),
(52, 'public/autos/jFOuSbNLai0nsnsQ4qlqOcvhlYElKdgQw4ewSrAt.jpg', 57, '2022-05-06 16:19:27', '2022-05-06 16:19:27'),
(53, 'public/autos/7UGN2xpeGmRV0ZiuWfL66yTdwGs5vvCdHzA0bpab.jpg', 57, '2022-05-06 16:19:33', '2022-05-06 16:19:33'),
(54, 'public/autos/TduIVWARiMXSFSBaC6v8VeGSsnuy1JOdFk4eW8N3.jpg', 56, '2022-05-06 16:22:01', '2022-05-06 16:22:01'),
(55, 'public/autos/WlFoPRqwQEAMfW9au00mlHCOOny4kKoNHavhv3gg.jpg', 56, '2022-05-06 16:22:03', '2022-05-06 16:22:03'),
(56, 'public/autos/XPwdfVexcGU5cpxOcB8y2Gelfo7SVdQWOgKO1hnS.jpg', 56, '2022-05-06 16:22:05', '2022-05-06 16:22:05'),
(57, 'public/autos/7lpIawLnxJt84cIolA9sza2EY0F6STNmMKBf001G.jpg', 56, '2022-05-06 16:22:06', '2022-05-06 16:22:06'),
(58, 'public/autos/vB48vbrZcGfYVNmrbCyZ0HL9fruaKIOGpPLSM5nH.jpg', 56, '2022-05-06 16:22:09', '2022-05-06 16:22:09'),
(59, 'public/autos/Z7eA6qKTgJiCjYwBFImSBUuCexm3EjLO0pMdOHMU.jpg', 55, '2022-05-06 16:24:40', '2022-05-06 16:24:40'),
(60, 'public/autos/3hsKKohO2lPtQVrQKH5RfVo0v5iri9uZ8CG6hfvm.jpg', 55, '2022-05-06 16:24:43', '2022-05-06 16:24:43'),
(61, 'public/autos/PZFtbpPbt3oZY0SHaeEZEfzLr3fS0FtSOsStRSEO.jpg', 55, '2022-05-06 16:24:44', '2022-05-06 16:24:44'),
(62, 'public/autos/J2rwB1seKEv5nuxHgm486chkhvT7GzuWnSg7F2tD.jpg', 55, '2022-05-06 16:24:46', '2022-05-06 16:24:46'),
(63, 'public/autos/3IiGQ9RqvoSsVI65FuaNnN8x5amGEaQUtTuFCJJH.jpg', 55, '2022-05-06 16:24:49', '2022-05-06 16:24:49'),
(64, 'public/autos/KbOn2HyH4pVAUptPBaSErReKtCXjjk9EcSmXJZQ2.jpg', 55, '2022-05-06 16:25:28', '2022-05-06 16:25:28'),
(65, 'public/autos/IwZiQPf8CxzFxsB2gb8QJTjb291jeEnBZ4LRaErd.jpg', 55, '2022-05-06 16:25:30', '2022-05-06 16:25:30'),
(66, 'public/autos/G3saDc9vEcmCKWmRGk6cMAfi2ALa7NEhwCBmjlqb.jpg', 54, '2022-05-06 16:28:11', '2022-05-06 16:28:11'),
(67, 'public/autos/KOYWN84nNMZzN77o9rlw5GCcoH7sEJMHWxISzssL.jpg', 54, '2022-05-06 16:28:14', '2022-05-06 16:28:14'),
(68, 'public/autos/wA9BcDmhAzNaEfKdYJZG9YZ3UkVqpbgMRxx5wb8V.jpg', 54, '2022-05-06 16:28:17', '2022-05-06 16:28:17'),
(69, 'public/autos/P7U8Eral1jgIITbH6BoZC3ZHxoFGBzDDVOtdQ8G9.jpg', 54, '2022-05-06 16:28:18', '2022-05-06 16:28:18'),
(70, 'public/autos/p3dXL5HESdNaAK31M4E6he4GSi9sWoGeRS9EMCZq.jpg', 54, '2022-05-06 16:28:20', '2022-05-06 16:28:20'),
(71, 'public/autos/k7ZEJEiB6IBdXAYEken73aPyBe7epIWMfFQSgZII.jpg', 54, '2022-05-06 16:28:43', '2022-05-06 16:28:43'),
(72, 'public/autos/JrGIOKWi1TFe1ewvKAVrUMP70XWVfreXfgcEnHCg.png', 53, '2022-05-06 16:32:03', '2022-05-06 16:32:03'),
(73, 'public/autos/xNXxdsy1vIJK2EZ0slwHJ4xApdmUBPOtVJrcuvLv.jpg', 52, '2022-05-06 16:35:39', '2022-05-06 16:35:39'),
(74, 'public/autos/rFMhpcoJWYUCTaApM0JutpNHUzTPbq37IWDChLET.jpg', 52, '2022-05-06 16:35:43', '2022-05-06 16:35:43'),
(75, 'public/autos/D90iVjK049JxfGKvk38dsogm2jExTnynwxjj610o.jpg', 52, '2022-05-06 16:35:44', '2022-05-06 16:35:44'),
(76, 'public/autos/IoF53pG87RkBrilkMiEmcMoe2fH6NEy5UpyhXHFt.jpg', 52, '2022-05-06 16:35:45', '2022-05-06 16:35:45'),
(77, 'public/autos/tQGfr4fQ49nBmVTztdkla5EyEfpirv05HKmF4Bg6.jpg', 52, '2022-05-06 16:35:48', '2022-05-06 16:35:48'),
(78, 'public/autos/EKvIbxFnMU1Xtx2L91mmR2Oyzi0MBX9f4ypnDNnV.jpg', 52, '2022-05-06 16:37:01', '2022-05-06 16:37:01'),
(79, 'public/autos/q9ujzVSqOtRNWQcqU4Zbq52RXsi0frbrgIuRuYOP.png', 52, '2022-05-06 16:41:00', '2022-05-06 16:41:00'),
(80, 'public/autos/cin9dmU9JwPjeXXaU6VCGyOek7tBEurfHlRx5MqS.jpg', 52, '2022-05-06 16:43:38', '2022-05-06 16:43:38'),
(81, 'public/autos/yb8BRPkbPn3iaLq3BFCbOvNW7oFkMGPnLbd6NkcJ.jpg', 52, '2022-05-06 16:43:45', '2022-05-06 16:43:45'),
(83, 'public/autos/V2twnncx73YxNzOEp2hbFzaWZLVIlFmtpYe8hQAY.png', 52, '2022-05-06 16:45:32', '2022-05-06 16:45:32'),
(84, 'public/autos/9oQ6mYolSvOJIkAHDlM6fjS4UOgccYHXUwBywWiA.jpg', 52, '2022-05-06 16:45:35', '2022-05-06 16:45:35'),
(85, 'public/autos/GsZzN4biKVKxEwRrlIVGP5YNEwPuNwRZt42gdQss.jpg', 51, '2022-05-06 16:56:08', '2022-05-06 16:56:08'),
(86, 'public/autos/tF2eauzAGjzuLCjlgt85KkNKaaogpQGjecTDfWj8.jpg', 51, '2022-05-06 16:56:11', '2022-05-06 16:56:11'),
(87, 'public/autos/SbWJFcbomvlb1tlCUrCNd0WZUNw4ZbStC0j5xDEq.jpg', 51, '2022-05-06 16:56:12', '2022-05-06 16:56:12'),
(88, 'public/autos/flxthWY8M3EbPLTEkK66cKiDWrwvX7JHJeZg9n3u.jpg', 51, '2022-05-06 16:56:15', '2022-05-06 16:56:15'),
(89, 'public/autos/vowjgj2LB4LMEq00qFXX3rHpuxjwnhca4m1K17dE.png', 51, '2022-05-06 16:57:04', '2022-05-06 16:57:04'),
(90, 'public/autos/joPQOEgMwRUTcuMohO2qiCgaO2sVANpre3k593Qn.jpg', 51, '2022-05-06 16:57:08', '2022-05-06 16:57:08'),
(91, 'public/autos/UKEe1ToZmHbttYW1UQLzb2tlyWWHWnSrmIjmg1fu.jpg', 50, '2022-05-06 17:02:17', '2022-05-06 17:02:17'),
(93, 'public/autos/UQ8VftCow1LWIeWOtbCIjOnByYrW8uvOROhwVw1H.png', 50, '2022-05-06 17:02:30', '2022-05-06 17:02:30'),
(94, 'public/autos/Ek2apgu37lG9xOuc8GPawm5W9S529ASJW2hWsJq4.jpg', 50, '2022-05-06 17:02:40', '2022-05-06 17:02:40'),
(95, 'public/autos/232YiaVObSLisYj7a99ALmErbDsq7foQIWS7n2cz.jpg', 50, '2022-05-06 17:02:43', '2022-05-06 17:02:43'),
(96, 'public/autos/0CIJNnFAV5P92cDDZkydeaSZDyUdbmb9l5rTVDuo.jpg', 50, '2022-05-06 17:02:45', '2022-05-06 17:02:45'),
(97, 'public/autos/DDw6h8QSus4abFP4wRRoUJlxSfPpRFA8sHpEHaIO.jpg', 50, '2022-05-06 17:02:47', '2022-05-06 17:02:47'),
(98, 'public/autos/txVcIx7CJ0t1OAawBmOBtZNHP9inVj1M5IX3m6Ri.jpg', 50, '2022-05-06 17:03:13', '2022-05-06 17:03:13'),
(99, 'public/autos/RmoAVU89G0AQRg1wsOysoeFShbF61KrLc4kXTnfu.jpg', 50, '2022-05-06 17:03:16', '2022-05-06 17:03:16'),
(100, 'public/autos/bd6WuCP7RIfAWA5S85OP95FU9rxCrtd1YztvdD1c.jpg', 49, '2022-05-06 17:05:13', '2022-05-06 17:05:13'),
(101, 'public/autos/flgCC2ckV1uIpQGtkcjhTmoBUe3XGwiUxRRvxfM4.jpg', 49, '2022-05-06 17:05:15', '2022-05-06 17:05:15'),
(104, 'public/autos/eBL5oYHGx75XrT4P8M7DE9v4pweN4eHjIkkmZVpr.jpg', 49, '2022-05-06 17:05:30', '2022-05-06 17:05:30'),
(105, 'public/autos/3LF3oOlqiGMgleBq2sw5eHEWNQ0rHvr1OvpiZmBR.jpg', 49, '2022-05-06 17:05:33', '2022-05-06 17:05:33'),
(106, 'public/autos/EDro6Tg6bIUWSX2CZ8v6F2ZpzSJSJCSx6JqdOnHR.jpg', 49, '2022-05-06 17:05:35', '2022-05-06 17:05:35'),
(107, 'public/autos/wf71VJvdSBtdgKVn3WGb7R4mIRmd5qH8aSN54NDE.jpg', 49, '2022-05-06 17:06:04', '2022-05-06 17:06:04'),
(108, 'public/autos/D0d65yOGTZFVnkOdbN3xQ0dpzlzeX8G7lu9CxIQN.jpg', 49, '2022-05-06 17:06:08', '2022-05-06 17:06:08'),
(109, 'public/autos/zkMVvxBlB2csO1DjKqEjfOHplEJC5um58cgLzG0q.jpg', 49, '2022-05-06 17:06:09', '2022-05-06 17:06:09'),
(110, 'public/autos/JZJ1xLXsLo0R22e3kjvuDuCaEF3BNUL1ufjvntj1.jpg', 48, '2022-05-06 17:07:44', '2022-05-06 17:07:44'),
(111, 'public/autos/WYXWMSFJj6zX3A4X4RS0EFAhuEgV9afJQusSbBWh.jpg', 48, '2022-05-06 17:07:47', '2022-05-06 17:07:47'),
(112, 'public/autos/LmrDZCr75tloTUXUXCwYk8JmWVOMoqoH9KAhyU5H.jpg', 48, '2022-05-06 17:07:48', '2022-05-06 17:07:48'),
(113, 'public/autos/38essWrTjoBnLK9cktU7e7v6HKcGSXxyeHF7DQPl.jpg', 48, '2022-05-06 17:07:50', '2022-05-06 17:07:50'),
(114, 'public/autos/WP7Ubvaa0NJyyE4V4o1RB61LVEPJ1WDu6UcukpJd.jpg', 48, '2022-05-06 17:07:53', '2022-05-06 17:07:53'),
(115, 'public/autos/CK9ZUTAIxepKhLoVh8gqqKwAnTUcbeLQopAsUlXq.jpg', 47, '2022-05-06 17:09:50', '2022-05-06 17:09:50'),
(116, 'public/autos/9ZI2xSzGDnblljCYhgIHdHhVVhJ2but85gfIEWnL.jpg', 47, '2022-05-06 17:09:53', '2022-05-06 17:09:53'),
(117, 'public/autos/KIWeBWd7b0VsvUErey4utTfA5yhr87fspQzxZlAG.jpg', 47, '2022-05-06 17:09:57', '2022-05-06 17:09:57'),
(118, 'public/autos/I6JjtVgCmapQEppyaPTa1oqNdL3GdROFJP1HUg4t.jpg', 47, '2022-05-06 17:10:00', '2022-05-06 17:10:00'),
(119, 'public/autos/pAMD2XkuHCVJ07TKH83bvCUQGxRpvpXOvHNdHpFT.jpg', 47, '2022-05-06 17:10:02', '2022-05-06 17:10:02'),
(120, 'public/autos/1F6MZx32eu31EUZy6KoebTM0HSoBCxueLGyw831h.jpg', 47, '2022-05-06 17:10:59', '2022-05-06 17:10:59'),
(121, 'public/autos/gUR1lQLImzTElRaeMZ1X2BtQY1vnom0cIMVqB8Fm.jpg', 47, '2022-05-06 17:11:02', '2022-05-06 17:11:02'),
(122, 'public/autos/IdFPNXbs3I07d1Xn221yUWBMdCM6YDUUD0dG4Y2n.jpg', 47, '2022-05-06 17:11:04', '2022-05-06 17:11:04'),
(123, 'public/autos/x499dCd5FA2N6DbXSzcoMvYOCBcLoUaS8tWyDkYJ.jpg', 47, '2022-05-06 17:11:06', '2022-05-06 17:11:06'),
(124, 'public/autos/4drjUB7eWTGyFLqKQ4BRHhTDzbHjfBXwYek70yCy.jpg', 46, '2022-05-06 17:32:39', '2022-05-06 17:32:39'),
(125, 'public/autos/Y7AyrgzPaCvvm7BoXrz5fKsj2pOvFQAhljXxhyIO.jpg', 46, '2022-05-06 17:32:41', '2022-05-06 17:32:41'),
(126, 'public/autos/S6OyFf3o9Jpsv2CMrkGjfjySOOsKO1JLwOhPHouL.jpg', 46, '2022-05-06 17:32:44', '2022-05-06 17:32:44'),
(127, 'public/autos/e2o04mXvG9PCWIM0LcKJGYcNgjEsBD8hRyYl0fJh.jpg', 46, '2022-05-06 17:32:46', '2022-05-06 17:32:46'),
(128, 'public/autos/rIPow3chxisYjV0pP8to3YVIFHpHXoXTqsAtpCcX.jpg', 46, '2022-05-06 17:32:48', '2022-05-06 17:32:48'),
(129, 'public/autos/O3EBHNS3NnomElk78XPwY46sibsDPrMtru0bXPJL.jpg', 46, '2022-05-06 17:33:36', '2022-05-06 17:33:36'),
(130, 'public/autos/2eoC3sWqrjdJKSWSZyFWSVXOtskljaRtMplYK2Bo.jpg', 46, '2022-05-06 17:33:38', '2022-05-06 17:33:38'),
(131, 'public/autos/M3hwCHhEXKYaYj0j3pKMGKv5Oa3TaYJ7wzSjJFqF.jpg', 46, '2022-05-06 17:33:46', '2022-05-06 17:33:46'),
(132, 'public/autos/yGIaFVPporAbIcZv9sSYMVHjarCPbkVEwTYz64cx.jpg', 45, '2022-05-06 17:36:36', '2022-05-06 17:36:36'),
(133, 'public/autos/u4R6Iie3RElVnlpSisz0NlqbVyPkouX86fJuAroO.jpg', 45, '2022-05-06 17:36:38', '2022-05-06 17:36:38'),
(134, 'public/autos/QLY7qK6d83kPcTYZ8fOgXWWDuRl7Gbp0S7D2GXn5.jpg', 45, '2022-05-06 17:36:41', '2022-05-06 17:36:41'),
(135, 'public/autos/fmxJ852uksl0fa3RhzwEPlkOYm3kihsbrCu9cfq7.jpg', 45, '2022-05-06 17:36:43', '2022-05-06 17:36:43'),
(136, 'public/autos/U3Ka7Ige0CqaS1cNsY1weXlT6u6Je5eEr4SWDTvW.jpg', 45, '2022-05-06 17:36:46', '2022-05-06 17:36:46'),
(137, 'public/autos/FCVCwl9CvQpFHXJ2qnlpu47XvJEogJrhnxVSnp1n.jpg', 45, '2022-05-06 17:37:19', '2022-05-06 17:37:19'),
(138, 'public/autos/on4DTgxF5Igj7Uc57X079bD0gmkfzDp10mV7vE4q.jpg', 45, '2022-05-06 17:37:21', '2022-05-06 17:37:21'),
(139, 'public/autos/uyubxuS0K8njGyU2ca2kTrBRKcW1GB3CvSpq8449.jpg', 45, '2022-05-06 17:37:24', '2022-05-06 17:37:24'),
(140, 'public/autos/T4fzeIW3F4eDu8VMfUiTzb1B6SNUnCFemlPET1BA.jpg', 44, '2022-05-06 17:40:29', '2022-05-06 17:40:29'),
(141, 'public/autos/AOl2RgVXWUmtuMF7iHJV0UCihuZt3YbVFRmadJtn.jpg', 44, '2022-05-06 17:40:32', '2022-05-06 17:40:32'),
(142, 'public/autos/u5h4CS3bhfrLKJTBkXjebZk2AV6vEyjyOLh3Bio3.jpg', 44, '2022-05-06 17:40:34', '2022-05-06 17:40:34'),
(143, 'public/autos/XjMfUK3B2OIEDvwHuCofKSRcG778k0C4qkLZKAr7.png', 44, '2022-05-06 17:40:43', '2022-05-06 17:40:43'),
(144, 'public/autos/qbaRANrX7mBwkLdlHIQYY7ZygNLAqPrvXtXWORMv.jpg', 44, '2022-05-06 17:40:47', '2022-05-06 17:40:47'),
(145, 'public/autos/Hdi8PXNzfM6FBw4ayH7mspZd7cNF2W9SV8Joq5L1.jpg', 44, '2022-05-06 17:40:50', '2022-05-06 17:40:50'),
(146, 'public/autos/K8sB217lbkPQbKNEBy3Rbvhy0PVCJRRgOlRlCPV3.jpg', 44, '2022-05-06 17:41:08', '2022-05-06 17:41:08'),
(147, 'public/autos/BFR1UUBD0vprk4hZxB5vtVpRxyXcEgJqZDVxyuSq.jpg', 43, '2022-05-06 17:42:57', '2022-05-06 17:42:57'),
(148, 'public/autos/g7UUEXJ55DVTqWCTthndtvXMlhIDsrskxyWGIknv.jpg', 43, '2022-05-06 17:43:00', '2022-05-06 17:43:00'),
(149, 'public/autos/xsui7isHYwrfzhINmc1bqFQvUJBWSCkR9O4miIKy.jpg', 43, '2022-05-06 17:43:02', '2022-05-06 17:43:02'),
(150, 'public/autos/w9yhqabJasT084336kJfPYOAHWgOMY5qrYpjlSlB.jpg', 43, '2022-05-06 17:43:03', '2022-05-06 17:43:03'),
(151, 'public/autos/q8fG03235qbsyW1yNrqIQojN8s8bsdiBskjtraRI.jpg', 43, '2022-05-06 17:43:05', '2022-05-06 17:43:05'),
(152, 'public/autos/W4AKGgbrAwDuHXpZIJdFzkdNmt7gJbGrH2BSQ6Be.jpg', 43, '2022-05-06 17:43:57', '2022-05-06 17:43:57'),
(153, 'public/autos/C6jWwoaJIh4IW83t8DrzUyASyHQKQx0LrHueXu7M.png', 43, '2022-05-06 17:44:06', '2022-05-06 17:44:06'),
(154, 'public/autos/0Tm4aC1hwReZmkEEt8hFZlYEjNrIg1vmseGZt5Ub.png', 42, '2022-05-06 17:46:38', '2022-05-06 17:46:38'),
(155, 'public/autos/37tyaMBrssKcijpT6FjBQu5XyAo6qRV5FFx2RyB4.jpg', 23, '2022-05-06 17:48:24', '2022-05-06 17:48:24'),
(156, 'public/autos/2YsOGlaZFWWgNGWK1Vho5eS17bOV0vTsfSB6Xifa.jpg', 23, '2022-05-06 17:48:25', '2022-05-06 17:48:25'),
(157, 'public/autos/ALjm9v92VBXidvLn3uyeordq0Em1Y8inxl4gHDUC.jpg', 23, '2022-05-06 17:48:27', '2022-05-06 17:48:27'),
(158, 'public/autos/hAGr9uiyOb1cAMOL2AhQSMi7IGzmvYy2TTtPRCe4.jpg', 23, '2022-05-06 17:48:29', '2022-05-06 17:48:29'),
(159, 'public/autos/6mv4E3KCZgedzPSicKiBpPcqjENVWppPDtBlG4NI.jpg', 23, '2022-05-06 17:48:31', '2022-05-06 17:48:31'),
(160, 'public/autos/DQvVf0IVwy9aYpQL1YJWDXqwUF8mZDQK5r3U1aeQ.jpg', 23, '2022-05-06 17:49:04', '2022-05-06 17:49:04'),
(161, 'public/autos/02qr24FZ5FdIUOF0AlibLQNpNnd7ljFa687Oslf9.jpg', 23, '2022-05-06 17:49:07', '2022-05-06 17:49:07'),
(162, 'public/autos/86zd2ON8Qvxm4K3kIJHGPZmntqlWAGM8sKHPi6Xb.jpg', 23, '2022-05-06 17:49:09', '2022-05-06 17:49:09'),
(163, 'public/autos/XIpFKKYigb0PxAMEvEi0pWc4e3uAikSnhpRcwedG.jpg', 23, '2022-05-06 17:49:11', '2022-05-06 17:49:11'),
(164, 'public/autos/1zgigBqVziT6sK3Bx160gblx4WEuSvcry9tTwBpm.jpg', 24, '2022-05-06 17:51:45', '2022-05-06 17:51:45'),
(165, 'public/autos/R0XQznzKy0QOA5tbVVdkQ25nI2fJgvp8bwMnRp5U.jpg', 24, '2022-05-06 17:51:48', '2022-05-06 17:51:48'),
(166, 'public/autos/4Mjx0cbURVGrquGWYOI21ch35si0cEpFfVgQE0HY.jpg', 24, '2022-05-06 17:51:50', '2022-05-06 17:51:50'),
(167, 'public/autos/kO5x9c9f8gypEwnbcTVro9c9TxulHNcxJPP7R5bA.jpg', 24, '2022-05-06 17:51:52', '2022-05-06 17:51:52'),
(168, 'public/autos/Uoi7U8VEFuFqb9fCYj4Hhj2eNuD4OF6tA3CuLyzG.png', 24, '2022-05-06 17:51:59', '2022-05-06 17:51:59'),
(169, 'public/autos/nfsCS9H2KGr24pW34iKnxzoGFDdYANurkAsYAvO8.png', 25, '2022-05-06 17:53:44', '2022-05-06 17:53:44'),
(170, 'public/autos/TJZWNIW9LL6D9PjLeGDdWL0YomU1atfcnjopyZpz.png', 26, '2022-05-06 17:55:31', '2022-05-06 17:55:31'),
(171, 'public/autos/fe5csrhvsNYV0baCva55icXYj6CB7gF1BkAByu02.jpg', 27, '2022-05-06 19:32:05', '2022-05-06 19:32:05'),
(172, 'public/autos/G5O7LdlYIZ7EafxNjKLdruB4pfmynDxjr26Tnkf8.jpg', 27, '2022-05-06 19:32:07', '2022-05-06 19:32:07'),
(173, 'public/autos/9i2gLi5Kni5KNto56L7E5ntIP1y9jB2TbTzNBLQx.jpg', 27, '2022-05-06 19:32:11', '2022-05-06 19:32:11'),
(174, 'public/autos/6dfxXDdfn15iUGwQn7rsMpe4Iq6Hvm5q8FAcPNmC.jpg', 27, '2022-05-06 19:32:13', '2022-05-06 19:32:13'),
(175, 'public/autos/g5epHldzDMr2p8mRdXwJYSTBGohhl1wI4aZKf6eT.jpg', 27, '2022-05-06 19:32:16', '2022-05-06 19:32:16'),
(176, 'public/autos/zfcqwiun0y6grUhWqIqcMMqRqH2wShapjOuYIVQh.jpg', 27, '2022-05-06 19:35:36', '2022-05-06 19:35:36'),
(177, 'public/autos/Nm1LBWpD2odmYPFwY8LfpyTI50gyXrwNjq5eKjw9.jpg', 27, '2022-05-06 19:35:38', '2022-05-06 19:35:38'),
(178, 'public/autos/jtFpnvtUbxjhc8ztmeQTZqoG3ZRoAWSZ0bGKiElc.jpg', 27, '2022-05-06 19:35:40', '2022-05-06 19:35:40'),
(179, 'public/autos/Y7PnFHqambjPqaElRaHGI14KA24htoSpsa42aalC.png', 27, '2022-05-06 19:35:53', '2022-05-06 19:35:53'),
(180, 'public/autos/f4EBBMrv57sSo32LnjhA6v5xlLtHqXKkCuRMPYeV.jpg', 27, '2022-05-06 19:35:55', '2022-05-06 19:35:55'),
(181, 'public/autos/NN81nhjRu4Ho8Ww8ILoOdmv8qSk9tJ2yVqjGuRnX.png', 28, '2022-05-06 19:41:05', '2022-05-06 19:41:05'),
(182, 'public/autos/ljUxPpIbFXyIp5oRrjxa29soN6e8Btm1yIn9t5UH.png', 29, '2022-05-06 19:42:23', '2022-05-06 19:42:23'),
(183, 'public/autos/QHrOe7q8qE35QqmtFDgEhAQPlKFhQ32NhlVLZ8yq.jpg', 30, '2022-05-06 19:44:29', '2022-05-06 19:44:29'),
(184, 'public/autos/BU1LJI6O6XhpHwel6tnrTZ12Me6a6yBk6yb6M4DZ.jpg', 30, '2022-05-06 19:44:31', '2022-05-06 19:44:31'),
(185, 'public/autos/Uio9jXCJSHLVtkjKQvoFkRcw9sKk965pG970ECUW.jpg', 30, '2022-05-06 19:44:33', '2022-05-06 19:44:33'),
(186, 'public/autos/MONToaTN219JQSTfD9hRCNiQJgJ5WoLW2ECVA76A.jpg', 30, '2022-05-06 19:44:36', '2022-05-06 19:44:36'),
(187, 'public/autos/93Vfo86WxKiwsrZwTNopogE78CLzrPhq64P6Cqwt.jpg', 30, '2022-05-06 19:44:39', '2022-05-06 19:44:39'),
(188, 'public/autos/IoAne9dhArr1lTO27kNMjDBMKoMh2k4VO8QYIIVP.jpg', 30, '2022-05-06 19:45:08', '2022-05-06 19:45:08'),
(189, 'public/autos/5UsLqVBvP1SPsfy1MbCdEg6tKeuC3nZCSfbK3Lio.jpg', 30, '2022-05-06 19:45:10', '2022-05-06 19:45:10'),
(190, 'public/autos/6ZLGeqTAnYbQiNVYfUEkd2MvxiFgIECuyQab5PmT.jpg', 30, '2022-05-06 19:45:12', '2022-05-06 19:45:12'),
(191, 'public/autos/0fx0rDOTeVwx2qmyOK7DM1X8qTvw0vkZbe4okX18.jpg', 31, '2022-05-06 19:47:32', '2022-05-06 19:47:32'),
(192, 'public/autos/rFCuKdhObPyyHTCUKUi8Lm63UUH6mayVe9UQPF9B.jpg', 31, '2022-05-06 19:48:00', '2022-05-06 19:48:00'),
(193, 'public/autos/CGmrgGYISmdkyoOJXvHJstwR98wg1xD1qvn1czAA.jpg', 31, '2022-05-06 19:48:04', '2022-05-06 19:48:04'),
(194, 'public/autos/mfTmvwV21HJWY9w7QlIDqmnZFVC5sXBENlApQYBW.jpg', 31, '2022-05-06 19:48:09', '2022-05-06 19:48:09'),
(195, 'public/autos/zsITv4G1iK6g9xK5ZON8d0Eciqj8xN8mUlbNGq7B.jpg', 31, '2022-05-06 19:48:14', '2022-05-06 19:48:14'),
(196, 'public/autos/L1fFbeRaf3I7YGHemq2OujWwji2ckebyEyJAR2bh.jpg', 31, '2022-05-06 19:48:21', '2022-05-06 19:48:21'),
(197, 'public/autos/yEjwhzLYPIkWuhFthjTTIr0maRcCFGp5KOoZJiau.jpg', 31, '2022-05-06 19:48:27', '2022-05-06 19:48:27'),
(198, 'public/autos/6G9SfO5FBz3A6Z6G5a7wmzLehAAzvxqG5Ad2wdnp.jpg', 31, '2022-05-06 19:48:54', '2022-05-06 19:48:54'),
(199, 'public/autos/LR0H93zdgOO8mpslq11rLMuJYnoxKJ1MgbqyRXTv.png', 32, '2022-05-06 19:50:19', '2022-05-06 19:50:19'),
(200, 'public/autos/X86RhxeGcdO55XO5eCn8wf1GU18EgxT8NTSwZfKX.png', 33, '2022-05-06 19:51:13', '2022-05-06 19:51:13'),
(201, 'public/autos/EQj5D13BttWafj6WmJM37v7BDmi42IbuKvJFlwum.png', 34, '2022-05-06 19:52:49', '2022-05-06 19:52:49'),
(202, 'public/autos/jHgptas4TpemKUgKzoGRyew7zx8BFVzah7SCv1d8.jpg', 35, '2022-05-06 19:55:26', '2022-05-06 19:55:26'),
(203, 'public/autos/6ql5dELdmmPZ9iFjwyXD3ZLxQEf5VarKc9SU5OHF.jpg', 35, '2022-05-06 19:55:27', '2022-05-06 19:55:27'),
(204, 'public/autos/T1dfIhqothetHQINyNnPKtq0NYRSNbhgwfn0vpHn.jpg', 35, '2022-05-06 19:55:30', '2022-05-06 19:55:30'),
(205, 'public/autos/l6LqiwEGuq0gZal6wIkBSflK8KGTv5IilEKT2yRX.jpg', 35, '2022-05-06 19:55:32', '2022-05-06 19:55:32'),
(206, 'public/autos/SpqX4Iw71E6qXjSCxEm4gN3EBSA8uhzkEz3eSBnv.png', 35, '2022-05-06 19:55:40', '2022-05-06 19:55:40'),
(207, 'public/autos/zbFDRzcW7lKvNU0mggmBB6j2ZFYRordain74krXE.jpg', 35, '2022-05-06 19:55:42', '2022-05-06 19:55:42'),
(208, 'public/autos/MPioCTz7Q0Qc0TQstyhbETkEMwGWIPaZh6i8dkh9.png', 35, '2022-05-06 19:56:43', '2022-05-06 19:56:43'),
(209, 'public/autos/xg59Pe0gq52QITltgYmBRtzMcxZ2amz5qeNWvCoN.jpg', 35, '2022-05-06 19:56:45', '2022-05-06 19:56:45'),
(210, 'public/autos/BHbvj4kWkMiOrkXbeqMyMYSS2eHuPCNLevKk6sJP.jpg', 36, '2022-05-06 19:59:19', '2022-05-06 19:59:19'),
(211, 'public/autos/0oPad9xpt3MTpRTb32Ae0yK8O99evFRmXPaJ6Wg3.jpg', 36, '2022-05-06 19:59:22', '2022-05-06 19:59:22'),
(212, 'public/autos/oPVRreezW4ww17Z6XGjvm158uSRWhPumK9ehG1eM.jpg', 36, '2022-05-06 19:59:23', '2022-05-06 19:59:23'),
(213, 'public/autos/eDuLOmePfY8QWzd5ksEqlVA0SZGgLvJUkh6qOJAi.jpg', 36, '2022-05-06 19:59:25', '2022-05-06 19:59:25'),
(214, 'public/autos/MGyEdp7WWObJ5omBkEpg4sl5Ya0f1ugHxmP4TGel.jpg', 36, '2022-05-06 19:59:28', '2022-05-06 19:59:28'),
(215, 'public/autos/4YbeDFomb0jQ22FPEEJwGD9wohKd7HBKPSxdIrnZ.jpg', 36, '2022-05-06 19:59:44', '2022-05-06 19:59:44'),
(216, 'public/autos/FcBiyYZ88Xq7HN28tyQkl0ZuX3H3jHNEeVkZ0WPP.jpg', 37, '2022-05-06 20:02:02', '2022-05-06 20:02:02'),
(217, 'public/autos/UcUNTCxozf78eHXfwSQmklIkHOu0r4J411gKwCHs.png', 37, '2022-05-06 20:03:36', '2022-05-06 20:03:36'),
(218, 'public/autos/7Xm8zlAWXL6UOe0vhUpEBvHuv9kSHc2dJZazlFqx.jpg', 37, '2022-05-06 20:03:39', '2022-05-06 20:03:39'),
(219, 'public/autos/MWj7tUSoBQOB4fjUCKoUKzMJGXLSIxt5pw5bi5YX.jpg', 37, '2022-05-06 20:03:44', '2022-05-06 20:03:44'),
(220, 'public/autos/YUFeH5XmL5Jkv9tnD3RfUWUQxmOTZY1M5TkpEfkV.jpg', 37, '2022-05-06 20:03:46', '2022-05-06 20:03:46'),
(221, 'public/autos/tSkzkXNuuoUuYFDi7Rip7dirms7V99Cf4O8mgvfg.jpg', 37, '2022-05-06 20:03:48', '2022-05-06 20:03:48'),
(222, 'public/autos/lonHLswZF9AZZjLOQLrMRIuD6iTsJMeV5HuHyb3L.jpg', 38, '2022-05-06 20:05:28', '2022-05-06 20:05:28'),
(223, 'public/autos/ydWX7XAP2ucuJF5f0XzZc9iq8EsFd2sjVga9PGIz.jpg', 38, '2022-05-06 20:05:29', '2022-05-06 20:05:29'),
(224, 'public/autos/3GuXOuqtBimHF7niNZ90KVerDfu9oLAaN40qbOxC.jpg', 38, '2022-05-06 20:05:31', '2022-05-06 20:05:31'),
(225, 'public/autos/R8tz6cad64iY01z7JM2GIY0JYr6liStTBs0922J4.jpg', 38, '2022-05-06 20:05:33', '2022-05-06 20:05:33'),
(226, 'public/autos/ujFDYyCjk88DbtLzjLoX2JpBs81jdx2amUBamzpS.jpg', 38, '2022-05-06 20:05:34', '2022-05-06 20:05:34'),
(227, 'public/autos/OdkPrZiINX1A3zjKrjJpxDJVyWWWijXoMkf0YoZ5.jpg', 38, '2022-05-06 20:05:47', '2022-05-06 20:05:47'),
(228, 'public/autos/rml2q5Cm5pNKyaVkPuhCVqZLrPhoEQT1gwQ0jFrp.jpg', 39, '2022-05-06 20:07:19', '2022-05-06 20:07:19'),
(229, 'public/autos/cKoD4zzIA6zK4a8agC4Zbj38UIlfOeRbrNfvjQC7.jpg', 39, '2022-05-06 20:07:20', '2022-05-06 20:07:20'),
(230, 'public/autos/4Y0NRJbDH5NiHsYFX97pIQGo6u3PlzrE86e0CmdD.jpg', 39, '2022-05-06 20:07:22', '2022-05-06 20:07:22'),
(231, 'public/autos/aNK6pTXdScmbDj3XZuYbXwwl9fVwQP3lVbYecGk2.jpg', 39, '2022-05-06 20:07:25', '2022-05-06 20:07:25'),
(232, 'public/autos/Ov6sqaNs313Yqz67JTECxBDKFhWGw7ajoNdqGcTY.jpg', 39, '2022-05-06 20:07:26', '2022-05-06 20:07:26'),
(233, 'public/autos/ODC3jnApJ8DlOTL3IRmelejoFP2186huFg6W5P7l.jpg', 39, '2022-05-06 20:07:44', '2022-05-06 20:07:44'),
(234, 'public/autos/0yu3LUGCUIsX3Y6WsQPRmtnJQYiNhvnboMb9Ve7r.png', 40, '2022-05-06 20:08:51', '2022-05-06 20:08:51'),
(241, 'public/autos/JKr6ThjxdrXkC4eZyj8IyUZjThXOl26aw8Ktij5p.jpg', 20, '2022-05-06 20:16:35', '2022-05-06 20:16:35'),
(242, 'public/autos/lUEcjROgT9xZpgihvdUBRFCFeF9bXBccVJaKpLJf.jpg', 20, '2022-05-06 20:16:39', '2022-05-06 20:16:39'),
(243, 'public/autos/KjymethRQFq6qnAFvzbcdV66LamyEPiuAv0facWR.jpg', 20, '2022-05-06 20:16:41', '2022-05-06 20:16:41'),
(245, 'public/autos/WM8PasWci0wRXyBW6e7VLCzsNhNnnbzbFSpSEApm.png', 20, '2022-05-06 20:17:17', '2022-05-06 20:17:17'),
(246, 'public/autos/TBMFdlue77LfKhoDaHTHMDUABPcATMo1Z7NEdnHe.jpg', 20, '2022-05-06 20:17:21', '2022-05-06 20:17:21'),
(247, 'public/autos/quOyjeiX3oWvWJZrmLsLDzeC2Yhdf5K9RMdfhPuO.png', 20, '2022-05-06 20:18:08', '2022-05-06 20:18:08'),
(248, 'public/autos/pJV6dHYL4BSuRANC52TWZGUIf8OcgV9HnRWraV1r.png', 20, '2022-05-06 20:18:23', '2022-05-06 20:18:23'),
(249, 'public/autos/kI3uuYNP8fgSXjoRCLsHPw3Ybvw41HTh6gQUfL53.jpg', 20, '2022-05-06 20:18:26', '2022-05-06 20:18:26'),
(250, 'public/autos/w2xoKsnJgOp9EcAvRRqwpfbdjw7Gec5kGZEswoUh.jpg', 18, '2022-05-06 20:43:52', '2022-05-06 20:43:52'),
(251, 'public/autos/Pzu7JJtmlYU0SslnfujbbeqXfxltPbCeTVSXKCmJ.jpg', 18, '2022-05-06 20:43:53', '2022-05-06 20:43:53'),
(252, 'public/autos/xfmiHWnKnjdRL28q1XDq6qWypdSmayvr96FZjPYA.jpg', 18, '2022-05-06 20:43:55', '2022-05-06 20:43:55'),
(253, 'public/autos/VcX1hMg8TVAzDXW9taeJmVNmsYweu09pDBm4FZM0.png', 18, '2022-05-06 20:44:32', '2022-05-06 20:44:32'),
(254, 'public/autos/znHjhhH3c4FvOQdIKN7YtVKLuByQSQK9kJjk0WJK.jpg', 18, '2022-05-06 20:44:34', '2022-05-06 20:44:34'),
(255, 'public/autos/yIovdvEHLNiTZJLcqczPrtL6c5TZh1WwSIrTttGP.jpg', 18, '2022-05-06 20:44:37', '2022-05-06 20:44:37'),
(256, 'public/autos/7Hjhhnb3rucO9VpvMvBjlp8t2sFAMEp92dWO2VUt.jpg', 18, '2022-05-06 20:45:04', '2022-05-06 20:45:04'),
(257, 'public/autos/sQHSse1hbO0kjHuH4BUhm2DdWxzT6RhyZb2H5NQi.jpg', 18, '2022-05-06 20:45:07', '2022-05-06 20:45:07'),
(258, 'public/autos/tqhji7kfvSkt9rfwuqgcdjEVasIlSvx7PUtemBGd.jpg', 17, '2022-05-06 20:47:55', '2022-05-06 20:47:55'),
(259, 'public/autos/WnFSNEVDiBDtY5uYPyTqIb4lreSmfJsH6NRGH82l.jpg', 17, '2022-05-06 20:47:59', '2022-05-06 20:47:59'),
(260, 'public/autos/y26GVeihmKgPZxYGHtoaGr44A5oslF775PXgsD3D.jpg', 17, '2022-05-06 20:48:06', '2022-05-06 20:48:06'),
(261, 'public/autos/FszQdLu8IcEwZMEHNkMOZlv62twYcqyWfD2o5DQQ.jpg', 17, '2022-05-06 20:48:06', '2022-05-06 20:48:06'),
(262, 'public/autos/ntZZZn4WihuaKjxc7D9ssuPyJqEZDXc0oTlWq6kr.jpg', 17, '2022-05-06 20:48:15', '2022-05-06 20:48:15'),
(263, 'public/autos/C2WKN2UemqBVr5AD8GhNViffFnesxjbOOjniyNIK.jpg', 17, '2022-05-06 20:48:57', '2022-05-06 20:48:57'),
(264, 'public/autos/JvtprKx87nbixHmg7fg2vGDE8U3myhdfy2OxPCO6.jpg', 17, '2022-05-06 20:48:59', '2022-05-06 20:48:59'),
(265, 'public/autos/sero4gmOXvsYIco0EYca2oXaUv1CFvMbjL9zhAcK.jpg', 16, '2022-05-06 20:51:30', '2022-05-06 20:51:30'),
(266, 'public/autos/qVuNzSuMztrHV4u7Kdc1OPUetWJoJ0Yp3pbGEbpa.jpg', 16, '2022-05-06 20:51:33', '2022-05-06 20:51:33'),
(267, 'public/autos/u5KSSxrCf9PGoKisFKDxlhXN5LzTjsaVTHoVEhYb.png', 16, '2022-05-06 20:51:39', '2022-05-06 20:51:39'),
(268, 'public/autos/MxCe6riwAluOL1jDiPwXzsNSSP4wmFVscbulczfl.jpg', 16, '2022-05-06 20:51:41', '2022-05-06 20:51:41'),
(269, 'public/autos/vi92jZlQ59LRzm08Gc772m4Qp2PRo3JAZdoomJJN.jpg', 16, '2022-05-06 20:51:43', '2022-05-06 20:51:43'),
(270, 'public/autos/VJ3vGSvEiPEHSVU0imHX7CQlaq9ugYe1ir6nGoRC.jpg', 16, '2022-05-06 20:51:45', '2022-05-06 20:51:45'),
(271, 'public/autos/5KYWce6NtdAGaJhaPCcbQlQFLGbBa061LGZelgnz.png', 3, '2022-05-06 20:53:55', '2022-05-06 20:53:55'),
(272, 'public/autos/mjnGDhVUhkzZQUhyMl0MVI9FQBTCKG0oroHKd8Lw.jpg', 4, '2022-05-06 20:55:17', '2022-05-06 20:55:17'),
(273, 'public/autos/BGHSwJ94gYu4SdB3hs8g7bQVHcMmbQtmxo2yVyRo.jpg', 4, '2022-05-06 20:55:19', '2022-05-06 20:55:19'),
(274, 'public/autos/yEg6PTnPpLQyWlST3uFhLf9H6gSlMlNB80lF8idI.jpg', 4, '2022-05-06 20:55:22', '2022-05-06 20:55:22'),
(275, 'public/autos/67915breoKgWQIx9AP5S3iT6yGq3nhoY8v2Han15.jpg', 5, '2022-05-06 20:56:49', '2022-05-06 20:56:49'),
(276, 'public/autos/n95Xu9To6s49C5qRKNQpV81VHJsHCU7J7zDUhVfL.jpg', 5, '2022-05-06 20:56:51', '2022-05-06 20:56:51'),
(277, 'public/autos/4SVb9JFaPEreZ2gJ8BmfsbhggfPeW3tISgs6zsmV.jpg', 5, '2022-05-06 20:56:53', '2022-05-06 20:56:53'),
(278, 'public/autos/nUpWSD9ow2msDNLbg2EWVKTZzVecRkF6pRutTcMh.jpg', 5, '2022-05-06 20:56:55', '2022-05-06 20:56:55'),
(279, 'public/autos/bGW2uoXTDirVHVRNgjIvohf7x6bgzoeYoiCpHFb4.jpg', 5, '2022-05-06 20:56:57', '2022-05-06 20:56:57'),
(280, 'public/autos/TYiJJCIK3ULghY9vncGokiXtwLZU3J1tedg0eWme.jpg', 5, '2022-05-06 20:57:26', '2022-05-06 20:57:26'),
(281, 'public/autos/kTOp8macYndhv3fTvSzIELmLlHkaBLO6FfJZ2KiU.jpg', 5, '2022-05-06 20:57:28', '2022-05-06 20:57:28'),
(282, 'public/autos/C8R6ASknikEb01D4PprN6oN3QkoLlJMruX14hoip.png', 1, '2022-05-06 20:58:39', '2022-05-06 20:58:39'),
(283, 'public/autos/mbMUgYRXfkOVCwMjGMWPk4btZ6fo6Sq3nrNAOIk8.jpg', 2, '2022-05-06 21:00:02', '2022-05-06 21:00:02'),
(284, 'public/autos/8dCeHfdV7QStluf5XrwG89LISfvzt39VTux6ZGs8.jpg', 2, '2022-05-06 21:00:04', '2022-05-06 21:00:04'),
(285, 'public/autos/OVd68hpz0S6rUtA2zbdzFXCq1SFFJOHvLz0ydYlL.jpg', 2, '2022-05-06 21:00:06', '2022-05-06 21:00:06'),
(286, 'public/autos/JHJHk9naNDBqSpfLM53IcLiMJNLxHUxibq7aSJ5w.jpg', 2, '2022-05-06 21:00:08', '2022-05-06 21:00:08'),
(287, 'public/autos/d6OBETRRnTajlkWrKm6mnmcojrt3bADruWcuDktF.jpg', 2, '2022-05-06 21:00:10', '2022-05-06 21:00:10'),
(288, 'public/autos/uDTUnQ2sRHpBbsQnVjkKfk3FnD70ERFRg5nNoVWx.jpg', 2, '2022-05-06 21:00:46', '2022-05-06 21:00:46'),
(289, 'public/autos/dYHw7opeVfn8n66ZERTBOPVTz2EyTpQABp9CaC7B.jpg', 2, '2022-05-06 21:00:48', '2022-05-06 21:00:48'),
(290, 'public/autos/CrFsTMKc7K4i9Ku3yQftnma2DAviNZiZStML9ZSi.jpg', 2, '2022-05-06 21:00:50', '2022-05-06 21:00:50'),
(291, 'public/autos/MoCkJbPVj2KgFbKWZLx2wfU2jp7GmIMICawvp3d8.jpg', 6, '2022-05-06 21:03:05', '2022-05-06 21:03:05'),
(292, 'public/autos/FpnfqIkBKxiQMaQ0tLwXvsXpDCsr5qjGBmi6Tc5u.jpg', 6, '2022-05-06 21:03:06', '2022-05-06 21:03:06'),
(293, 'public/autos/Ov39NmYoXhOhMm6lGzhHxckvDEIgIifATOXzp3g2.jpg', 6, '2022-05-06 21:03:08', '2022-05-06 21:03:08'),
(294, 'public/autos/Fdi4fntsAB0NqUt3Y7RTnGHu2ynE7pgDXVFlkQmp.jpg', 6, '2022-05-06 21:03:11', '2022-05-06 21:03:11'),
(295, 'public/autos/cYxUmMLiL5gVYwHD8gfb7WuHYeDxdlnEzfpMO4WO.jpg', 6, '2022-05-06 21:03:19', '2022-05-06 21:03:19'),
(296, 'public/autos/tzq16XMwQnHKQmnM64IfV6uhh2LPxyx19xngH4Yx.jpg', 6, '2022-05-06 21:03:53', '2022-05-06 21:03:53'),
(297, 'public/autos/dJ2YFecBkujxnSl3awgMbG7AKaWcuZnMzSJyy9zU.jpg', 6, '2022-05-06 21:03:55', '2022-05-06 21:03:55'),
(298, 'public/autos/6iuv2I525O0tXKK1qhDnT15Vq8tBId9T0rsTcDim.jpg', 6, '2022-05-06 21:03:58', '2022-05-06 21:03:58'),
(299, 'public/autos/nCfgB6d1vyWkkXDKaJCrG87DQ83KtCV55z1KJs1h.png', 7, '2022-05-06 21:05:36', '2022-05-06 21:05:36'),
(300, 'public/autos/FuKFJXFloCyne6cuD9tiHEqRcQc7NwdaiG61OWaS.jpg', 8, '2022-05-06 21:07:23', '2022-05-06 21:07:23'),
(301, 'public/autos/EOmF4VJTcAhG2UnTIekq1B1veupVDmN2FneJOlVX.jpg', 8, '2022-05-06 21:07:26', '2022-05-06 21:07:26'),
(302, 'public/autos/CFDcvXnaE4OrDCfa8uGTcQZE1OqepJQpW3Oar8Lr.jpg', 8, '2022-05-06 21:07:28', '2022-05-06 21:07:28'),
(303, 'public/autos/Th9Utm7Or6U7pDhIaIih8BIN89TAvP3FFFhfhQss.jpg', 8, '2022-05-06 21:07:29', '2022-05-06 21:07:29'),
(304, 'public/autos/h1r1Vql7DWxmfYvXY07LH8Sz4b0jvjC4wS6kLbXO.jpg', 8, '2022-05-06 21:07:31', '2022-05-06 21:07:31'),
(305, 'public/autos/131RXNYav7x4y4HmzyHxJYM5EWPDQxPeAj23wUzO.jpg', 8, '2022-05-06 21:08:51', '2022-05-06 21:08:51'),
(306, 'public/autos/W7NgJyD2WJRJelu6gIdljFlGyH7gwfJ8f5V9z6sn.jpg', 8, '2022-05-06 21:08:54', '2022-05-06 21:08:54'),
(307, 'public/autos/0YapVDHgRMwjjK8p0mqiq3xHXZNqaXmb7Cqj8HpZ.jpg', 8, '2022-05-06 21:08:56', '2022-05-06 21:08:56'),
(308, 'public/autos/2j2e80WrOrKMSzySGDx7ZRbXIrC4NVmdjatWzlrT.jpg', 8, '2022-05-06 21:08:58', '2022-05-06 21:08:58'),
(309, 'public/autos/vyA7n9GzWIc7u0jPe6tcYA2xEDVGy0HGod2MA761.jpg', 8, '2022-05-06 21:09:01', '2022-05-06 21:09:01'),
(310, 'public/autos/HeyV4kPuM94XtRE37cVoVdn0YxUgHILNfSblk5ZH.jpg', 9, '2022-05-06 21:10:48', '2022-05-06 21:10:48'),
(311, 'public/autos/KgrrOYfNg5xOdItA3q63JlYCLx0UGzrozI1aALVO.jpg', 9, '2022-05-06 21:10:51', '2022-05-06 21:10:51'),
(312, 'public/autos/df3KUCBjwEl85IclEPNpETaeExpUHs6CSjp7JoLx.jpg', 9, '2022-05-06 21:10:55', '2022-05-06 21:10:55'),
(313, 'public/autos/sZsfPaihb0Od219uQcsC1Y82TJxVZOb6cswF0su5.jpg', 9, '2022-05-06 21:10:56', '2022-05-06 21:10:56'),
(314, 'public/autos/ZaTF3Ru4VEdZ0QWG5xIF1HYgi24XE7EEbs0ZkwtR.jpg', 9, '2022-05-06 21:10:59', '2022-05-06 21:10:59'),
(316, 'public/autos/ezLGm8r13ieWv6KSss26XwC5yq6wI85LHO0UOlmb.jpg', 9, '2022-05-06 21:12:01', '2022-05-06 21:12:01'),
(317, 'public/autos/gs6Brtvf9MaHHzAKWzhAvChFwtnoTEE2zTMh8vnr.png', 9, '2022-05-06 21:12:19', '2022-05-06 21:12:19'),
(318, 'public/autos/mxBfivW3ZEVwAHhBUk1PO3dE4EOKz7jYSX3oWx8y.jpg', 9, '2022-05-06 21:12:20', '2022-05-06 21:12:20'),
(319, 'public/autos/c3CZskpSBTkVoRbPKJH5CgF3i43eIiyWrGnMTJnM.png', 10, '2022-05-06 21:13:40', '2022-05-06 21:13:40'),
(320, 'public/autos/Clk1rPc6oF9c0Wg4M63orJOmBtNFMLgWTlCz4oED.jpg', 11, '2022-05-06 21:15:12', '2022-05-06 21:15:12'),
(321, 'public/autos/xBQ344lhdKYMn5luiOyiof3qL1srOFhJnEJsHrIR.jpg', 11, '2022-05-06 21:15:14', '2022-05-06 21:15:14'),
(322, 'public/autos/90q2QLXRqLc7vvnXEy32ALkdmZPs6ikq8T3bRQp8.jpg', 11, '2022-05-06 21:15:16', '2022-05-06 21:15:16'),
(323, 'public/autos/50GstWmgLBrGlSWCyuSeQ7kHUOuwCC6nzboAZSBe.jpg', 11, '2022-05-06 21:15:18', '2022-05-06 21:15:18'),
(328, 'public/autos/MaFEbYVhxFC4KH1CKDtQAEbjcbNBHX4ouqLG2iWR.jpg', 12, '2022-05-06 21:21:40', '2022-05-06 21:21:40'),
(329, 'public/autos/cJs8gCt5oZjeGSdCCt1me7dPgL4vKOmJanYzH8TL.jpg', 12, '2022-05-06 21:21:43', '2022-05-06 21:21:43'),
(330, 'public/autos/S8oZreaf6xjaVDXGFyYpofcJRXiiiBgIQKcw49Ri.jpg', 12, '2022-05-06 21:21:46', '2022-05-06 21:21:46'),
(331, 'public/autos/YzVX5zebVW12jFDqkpOmNcb6k6KVLBwAjvVS9EcH.jpg', 12, '2022-05-06 21:21:48', '2022-05-06 21:21:48'),
(332, 'public/autos/xZSFOhdzBwoeHBfZQDnhnaBbRvAmePHqSxJlLMVc.jpg', 12, '2022-05-06 21:21:50', '2022-05-06 21:21:50'),
(333, 'public/autos/yvCk0EF0695nUXymKIFthhNetO1H3hJryyX2lYGJ.jpg', 12, '2022-05-06 21:23:36', '2022-05-06 21:23:36'),
(334, 'public/autos/ascCZctX96hTrWtjIk8qRroBSr5dTTX7Tofk5DbN.png', 12, '2022-05-06 21:24:05', '2022-05-06 21:24:05'),
(335, 'public/autos/Mk4zqe7EKECg4ixPWI2zrzA4Hnf78Aafzjr8nUa1.jpg', 13, '2022-05-06 21:26:12', '2022-05-06 21:26:12'),
(336, 'public/autos/VeGnccuFgOzi9fxXX83uwNfGlO6O9RwQx8eVBC1X.jpg', 13, '2022-05-06 21:26:14', '2022-05-06 21:26:14'),
(337, 'public/autos/v62ieWN4sjva0aV2MvsJEAgVPKPeVoG9Ce2YOcMh.jpg', 13, '2022-05-06 21:26:17', '2022-05-06 21:26:17'),
(338, 'public/autos/GxeTALjIBkk9y9pQPHsQthW58Hg5eMhQW6RyZlz1.jpg', 13, '2022-05-06 21:26:19', '2022-05-06 21:26:19'),
(339, 'public/autos/FfvjDGeS03KbuwcfQV2geDbJwkr3wbnRqjzOzD96.jpg', 13, '2022-05-06 21:26:21', '2022-05-06 21:26:21'),
(340, 'public/autos/povtSeVhNDtrRz4HXnESnLlMsC0cGGSLVUCLCd4n.jpg', 14, '2022-05-06 21:30:10', '2022-05-06 21:30:10'),
(341, 'public/autos/DydjZ4OFSMqBP8vEP3ERO0C2EkYyF7cuQ2b7naH3.jpg', 14, '2022-05-06 21:30:12', '2022-05-06 21:30:12'),
(342, 'public/autos/NlCUrDUK2VKGSUsrJdWmCdnyU1hQRibji48OBIAu.jpg', 14, '2022-05-06 21:30:20', '2022-05-06 21:30:20'),
(343, 'public/autos/TKmtNi8VCW4kJT8N9IM68JMMBYCuJD7V5Rgdj7OT.jpg', 14, '2022-05-06 21:30:22', '2022-05-06 21:30:22'),
(344, 'public/autos/lN82NQvTOQRYtOX0iidFCPpGj6H6lDuYiVtxWDbM.jpg', 14, '2022-05-06 21:30:24', '2022-05-06 21:30:24'),
(345, 'public/autos/WLmBJckOe28heSHKY3eiaAUkFBcb5XMfu7I4ypjn.jpg', 14, '2022-05-06 21:30:46', '2022-05-06 21:30:46'),
(346, 'public/autos/nAoCe7VIspmSBZwOFWDnXlfbMCUR5SoEeojT8qva.jpg', 14, '2022-05-06 21:30:49', '2022-05-06 21:30:49'),
(347, 'public/autos/4SkNVUqrJ6RIaQ2L9tgmoMweaU6qzHxvNT8ffagY.jpg', 15, '2022-05-06 21:35:12', '2022-05-06 21:35:12'),
(348, 'public/autos/br6iWpA6nstLLFM7qVeZZk4XWScPMWvsu22rC1hm.jpg', 15, '2022-05-06 21:35:14', '2022-05-06 21:35:14'),
(349, 'public/autos/iC7VicPY7MwQHh6mpBGvCjktLAi4omi7CaFC7uHp.png', 15, '2022-05-06 21:35:20', '2022-05-06 21:35:20'),
(350, 'public/autos/g6HIdKkx6KU223Y0y347EVLuaOx3YtayO58EiaHu.jpg', 15, '2022-05-06 21:35:32', '2022-05-06 21:35:32'),
(351, 'public/autos/9HDlPdWD6TmQkxpTp73MWg3sGtVV983V7MMlCxEh.jpg', 15, '2022-05-06 21:35:37', '2022-05-06 21:35:37'),
(352, 'public/autos/uub0XtiAQz0U7MJ55SacGCRD0OCqDcH5J5iIW6iB.jpg', 15, '2022-05-06 21:36:50', '2022-05-06 21:36:50'),
(353, 'public/autos/To2ywlVPvUaZXykzSQJqKIzhfUuJD0SJ2qMDBw5O.jpg', 15, '2022-05-06 21:37:29', '2022-05-06 21:37:29'),
(354, 'public/autos/lHadJ7pw2lbKLXA0TuFTniLDWzPfaJ8S3hXbvevC.jpg', 15, '2022-05-06 21:37:33', '2022-05-06 21:37:33'),
(355, 'public/autos/WbyzPyPdtYVx8M3xBJHPOcncr8bc4jHXEP1wF7u9.jpg', 21, '2022-05-06 21:44:45', '2022-05-06 21:44:45'),
(356, 'public/autos/DeRzf2ANTWzopyhNyC74wW6WOtb0WBiQ3YmybKOo.jpg', 21, '2022-05-06 21:44:48', '2022-05-06 21:44:48'),
(357, 'public/autos/zav15s9epBRDLXFmqhDTfzvWJXkFSTJRrdshdcwW.jpg', 21, '2022-05-06 21:44:51', '2022-05-06 21:44:51'),
(358, 'public/autos/aLhfZMRqdXniDWrLxHe4cQURYyVLYlXVzMAtreAx.jpg', 21, '2022-05-06 21:44:52', '2022-05-06 21:44:52'),
(359, 'public/autos/c2ZsODl5vlxYHpi6qjr92adjevTbET0WzDx1U3vC.jpg', 21, '2022-05-06 21:45:19', '2022-05-06 21:45:19'),
(360, 'public/autos/yCmfxDpQt8foR6e9LbnFihrMCcRdgnh7gYWUn4qn.jpg', 21, '2022-05-06 21:45:21', '2022-05-06 21:45:21'),
(361, 'public/autos/XOUrfqu5bI5gDS4lCI9obXX0iPOz8mjRxaFlEDhP.png', 22, '2022-05-06 21:46:52', '2022-05-06 21:46:52'),
(362, 'public/autos/kbliKsc2V0ft7t8OCchCxZzyCT6F6wAZxvfuHIjB.png', 19, '2022-05-06 21:48:28', '2022-05-06 21:48:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gastos`
--

CREATE TABLE `gastos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monto` double(10,2) NOT NULL,
  `auto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 'Abarth', NULL, NULL),
(2, 'Alfa Romeo', NULL, NULL),
(3, 'Aro', NULL, NULL),
(4, 'Asia', NULL, NULL),
(5, 'Asia Motors', NULL, NULL),
(6, 'Aston Martin', NULL, NULL),
(7, 'Audi', NULL, NULL),
(8, 'Austin', NULL, NULL),
(9, 'Auverland', NULL, NULL),
(10, 'Bentley', NULL, NULL),
(11, 'Bertone', NULL, NULL),
(12, 'Bmw', NULL, NULL),
(13, 'Cadillac', NULL, NULL),
(14, 'Chevrolet', NULL, NULL),
(15, 'Chrysler', NULL, NULL),
(16, 'Citroen', NULL, NULL),
(17, 'Corvette', NULL, NULL),
(18, 'Dacia', NULL, NULL),
(19, 'Daewoo', NULL, NULL),
(20, 'Daf', NULL, NULL),
(21, 'Daihatsu', NULL, NULL),
(22, 'Daimler', NULL, NULL),
(23, 'Dodge', NULL, NULL),
(24, 'Ferrari', NULL, NULL),
(25, 'Fiat', NULL, NULL),
(26, 'Ford', NULL, NULL),
(27, 'Galloper', NULL, NULL),
(28, 'Gmc', NULL, NULL),
(29, 'Honda', NULL, NULL),
(30, 'Hummer', NULL, NULL),
(31, 'Hyundai', NULL, NULL),
(32, 'Infiniti', NULL, NULL),
(33, 'Innocenti', NULL, NULL),
(34, 'Isuzu', NULL, NULL),
(35, 'Iveco', NULL, NULL),
(36, 'Iveco-pegaso', NULL, NULL),
(37, 'Jaguar', NULL, NULL),
(38, 'Jeep', NULL, NULL),
(39, 'Kia', NULL, NULL),
(40, 'Lada', NULL, NULL),
(41, 'Lamborghini', NULL, NULL),
(42, 'Lancia', NULL, NULL),
(43, 'Land-rover', NULL, NULL),
(44, 'Ldv', NULL, NULL),
(45, 'Lexus', NULL, NULL),
(46, 'Lotus', NULL, NULL),
(47, 'Mahindra', NULL, NULL),
(48, 'Maserati', NULL, NULL),
(49, 'Maybach', NULL, NULL),
(50, 'Mazda', NULL, NULL),
(51, 'Mercedes-benz', NULL, NULL),
(52, 'Mg', NULL, NULL),
(53, 'Mini', NULL, NULL),
(54, 'Mitsubishi', NULL, NULL),
(55, 'Morgan', NULL, NULL),
(56, 'Nissan', NULL, NULL),
(57, 'Opel', NULL, NULL),
(58, 'Peugeot', NULL, NULL),
(59, 'Pontiac', NULL, NULL),
(60, 'Porsche', NULL, NULL),
(61, 'Renault', NULL, NULL),
(62, 'Rolls-royce', NULL, NULL),
(63, 'Rover', NULL, NULL),
(64, 'Saab', NULL, NULL),
(65, 'Santana', NULL, NULL),
(66, 'Seat', NULL, NULL),
(67, 'Skoda', NULL, NULL),
(68, 'Smart', NULL, NULL),
(69, 'Ssangyong', NULL, NULL),
(70, 'Subaru', NULL, NULL),
(71, 'Suzuki', NULL, NULL),
(72, 'Talbot', NULL, NULL),
(73, 'Tata', NULL, NULL),
(74, 'Toyota', NULL, NULL),
(75, 'Umm', NULL, NULL),
(76, 'Vaz', NULL, NULL),
(77, 'Volkswagen', NULL, NULL),
(78, 'Volvo', NULL, NULL),
(79, 'Wartburg', NULL, NULL),
(80, 'Bajaj', NULL, NULL),
(81, 'Dorado', NULL, NULL);

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
(8, '2021_12_28_003822_create_clientes_table', 1),
(9, '2021_12_28_142633_create_marcas_table', 1),
(10, '2021_12_28_142634_create_modelos_table', 1),
(11, '2021_12_28_142636_create_autos_table', 1),
(12, '2021_12_28_152306_create_condicions_table', 1),
(13, '2021_12_28_153814_create_versions_table', 1),
(14, '2021_12_28_154059_create_ciudads_table', 1),
(15, '2021_12_28_154310_create_provincias_table', 1),
(16, '2021_12_28_173510_create_tipos_table', 1),
(17, '2021_12_28_174116_create_combustibles_table', 1),
(18, '2021_12_28_174421_create_tipomotors_table', 1),
(19, '2021_12_28_174928_create_traccions_table', 1),
(20, '2021_12_28_175325_create_cajaautos_table', 1),
(21, '2021_12_28_175512_create_colors_table', 1),
(22, '2021_12_28_175730_create_tapizados_table', 1),
(23, '2021_12_28_180229_create_direccions_table', 1),
(24, '2021_12_28_180445_create_valors_table', 1),
(25, '2021_12_28_180637_create_permutas_table', 1),
(26, '2022_01_06_114823_create_datos_table', 1),
(27, '2022_01_07_140717_create_gastos_table', 1),
(28, '2022_01_09_232415_create_ventas_table', 1),
(29, '2022_01_10_133717_create_files_table', 1),
(30, '2022_04_29_164511_create_sucursals_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marca_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `marca_id`, `created_at`, `updated_at`) VALUES
(1, '500', 1, NULL, NULL),
(2, 'Grande Punto', 1, NULL, NULL),
(3, 'Punto Evo', 1, NULL, NULL),
(4, '500c', 1, NULL, NULL),
(5, '695', 1, NULL, NULL),
(6, 'Punto', 1, NULL, NULL),
(7, '155', 2, NULL, NULL),
(8, '156', 2, NULL, NULL),
(9, '159', 2, NULL, NULL),
(10, '164', 2, NULL, NULL),
(11, '145', 2, NULL, NULL),
(12, '147', 2, NULL, NULL),
(13, '146', 2, NULL, NULL),
(14, 'Gtv', 2, NULL, NULL),
(15, 'Spider', 2, NULL, NULL),
(16, '166', 2, NULL, NULL),
(17, 'Gt', 2, NULL, NULL),
(18, 'Crosswagon', 2, NULL, NULL),
(19, 'Brera', 2, NULL, NULL),
(20, '90', 2, NULL, NULL),
(21, '75', 2, NULL, NULL),
(22, '33', 2, NULL, NULL),
(23, 'Giulietta', 2, NULL, NULL),
(24, 'Sprint', 2, NULL, NULL),
(25, 'Mito', 2, NULL, NULL),
(26, 'Expander', 3, NULL, NULL),
(27, '10', 3, NULL, NULL),
(28, '24', 3, NULL, NULL),
(29, 'Dacia', 3, NULL, NULL),
(30, 'Rocsta', 4, NULL, NULL),
(31, 'Rocsta', 5, NULL, NULL),
(32, 'Db7', 6, NULL, NULL),
(33, 'V8', 6, NULL, NULL),
(34, 'Db9', 6, NULL, NULL),
(35, 'Vanquish', 6, NULL, NULL),
(36, 'V8 Vantage', 6, NULL, NULL),
(37, 'Vantage', 6, NULL, NULL),
(38, 'Dbs', 6, NULL, NULL),
(39, 'Volante', 6, NULL, NULL),
(40, 'Virage', 6, NULL, NULL),
(41, 'Vantage V8', 6, NULL, NULL),
(42, 'Vantage V12', 6, NULL, NULL),
(43, 'Rapide', 6, NULL, NULL),
(44, 'Cygnet', 6, NULL, NULL),
(45, '80', 7, NULL, NULL),
(46, 'A4', 7, NULL, NULL),
(47, 'A6', 7, NULL, NULL),
(48, 'S6', 7, NULL, NULL),
(49, 'Coupe', 7, NULL, NULL),
(50, 'S2', 7, NULL, NULL),
(51, 'Rs2', 7, NULL, NULL),
(52, 'A8', 7, NULL, NULL),
(53, 'Cabriolet', 7, NULL, NULL),
(54, 'S8', 7, NULL, NULL),
(55, 'A3', 7, NULL, NULL),
(56, 'S4', 7, NULL, NULL),
(57, 'Tt', 7, NULL, NULL),
(58, 'S3', 7, NULL, NULL),
(59, 'Allroad Quattro', 7, NULL, NULL),
(60, 'Rs4', 7, NULL, NULL),
(61, 'A2', 7, NULL, NULL),
(62, 'Rs6', 7, NULL, NULL),
(63, 'Q7', 7, NULL, NULL),
(64, 'R8', 7, NULL, NULL),
(65, 'A5', 7, NULL, NULL),
(66, 'S5', 7, NULL, NULL),
(67, 'V8', 7, NULL, NULL),
(68, '200', 7, NULL, NULL),
(69, '100', 7, NULL, NULL),
(70, '90', 7, NULL, NULL),
(71, 'Tts', 7, NULL, NULL),
(72, 'Q5', 7, NULL, NULL),
(73, 'A4 Allroad Quattro', 7, NULL, NULL),
(74, 'Tt Rs', 7, NULL, NULL),
(75, 'Rs5', 7, NULL, NULL),
(76, 'A1', 7, NULL, NULL),
(77, 'A7', 7, NULL, NULL),
(78, 'Rs3', 7, NULL, NULL),
(79, 'Q3', 7, NULL, NULL),
(80, 'A6 Allroad Quattro', 7, NULL, NULL),
(81, 'S7', 7, NULL, NULL),
(82, 'Sq5', 7, NULL, NULL),
(83, 'Mini', 8, NULL, NULL),
(84, 'Montego', 8, NULL, NULL),
(85, 'Maestro', 8, NULL, NULL),
(86, 'Metro', 8, NULL, NULL),
(87, 'Mini Moke', 8, NULL, NULL),
(88, 'Diesel', 9, NULL, NULL),
(89, 'Brooklands', 10, NULL, NULL),
(90, 'Turbo', 10, NULL, NULL),
(91, 'Continental', 10, NULL, NULL),
(92, 'Azure', 10, NULL, NULL),
(93, 'Arnage', 10, NULL, NULL),
(94, 'Continental Gt', 10, NULL, NULL),
(95, 'Continental Flying Spur', 10, NULL, NULL),
(96, 'Turbo R', 10, NULL, NULL),
(97, 'Mulsanne', 10, NULL, NULL),
(98, 'Eight', 10, NULL, NULL),
(99, 'Continental Gtc', 10, NULL, NULL),
(100, 'Continental Supersports', 10, NULL, NULL),
(101, 'Freeclimber Diesel', 11, NULL, NULL),
(102, 'Serie 3', 12, NULL, NULL),
(103, 'Serie 5', 12, NULL, NULL),
(104, 'Compact', 12, NULL, NULL),
(105, 'Serie 7', 12, NULL, NULL),
(106, 'Serie 8', 12, NULL, NULL),
(107, 'Z3', 12, NULL, NULL),
(108, 'Z4', 12, NULL, NULL),
(109, 'Z8', 12, NULL, NULL),
(110, 'X5', 12, NULL, NULL),
(111, 'Serie 6', 12, NULL, NULL),
(112, 'X3', 12, NULL, NULL),
(113, 'Serie 1', 12, NULL, NULL),
(114, 'Z1', 12, NULL, NULL),
(115, 'X6', 12, NULL, NULL),
(116, 'X1', 12, NULL, NULL),
(117, 'Seville', 13, NULL, NULL),
(118, 'Sts', 13, NULL, NULL),
(119, 'El Dorado', 13, NULL, NULL),
(120, 'Cts', 13, NULL, NULL),
(121, 'Xlr', 13, NULL, NULL),
(122, 'Srx', 13, NULL, NULL),
(123, 'Escalade', 13, NULL, NULL),
(124, 'Bls', 13, NULL, NULL),
(125, 'Corvette', 14, NULL, NULL),
(126, 'Blazer', 14, NULL, NULL),
(127, 'Astro', 14, NULL, NULL),
(128, 'Nubira', 14, NULL, NULL),
(129, 'Evanda', 14, NULL, NULL),
(130, 'Trans Sport', 14, NULL, NULL),
(131, 'Camaro', 14, NULL, NULL),
(132, 'Matiz', 14, NULL, NULL),
(133, 'Alero', 14, NULL, NULL),
(134, 'Tahoe', 14, NULL, NULL),
(135, 'Tacuma', 14, NULL, NULL),
(136, 'Trailblazer', 14, NULL, NULL),
(137, 'Kalos', 14, NULL, NULL),
(138, 'Aveo', 14, NULL, NULL),
(139, 'Lacetti', 14, NULL, NULL),
(140, 'Epica', 14, NULL, NULL),
(141, 'Captiva', 14, NULL, NULL),
(142, 'Hhr', 14, NULL, NULL),
(143, 'Cruze', 14, NULL, NULL),
(144, 'Spark', 14, NULL, NULL),
(145, 'Orlando', 14, NULL, NULL),
(146, 'Volt', 14, NULL, NULL),
(147, 'Malibu', 14, NULL, NULL),
(148, 'Vision', 15, NULL, NULL),
(149, '300m', 15, NULL, NULL),
(150, 'Grand Voyager', 15, NULL, NULL),
(151, 'Viper', 15, NULL, NULL),
(152, 'Neon', 15, NULL, NULL),
(153, 'Voyager', 15, NULL, NULL),
(154, 'Stratus', 15, NULL, NULL),
(155, 'Sebring', 15, NULL, NULL),
(156, 'Sebring 200c', 15, NULL, NULL),
(157, 'New Yorker', 15, NULL, NULL),
(158, 'Pt Cruiser', 15, NULL, NULL),
(159, 'Crossfire', 15, NULL, NULL),
(160, '300c', 15, NULL, NULL),
(161, 'Le Baron', 15, NULL, NULL),
(162, 'Saratoga', 15, NULL, NULL),
(163, 'Xantia', 16, NULL, NULL),
(164, 'Xm', 16, NULL, NULL),
(165, 'Ax', 16, NULL, NULL),
(166, 'Zx', 16, NULL, NULL),
(167, 'Evasion', 16, NULL, NULL),
(168, 'C8', 16, NULL, NULL),
(169, 'Saxo', 16, NULL, NULL),
(170, 'C2', 16, NULL, NULL),
(171, 'Xsara', 16, NULL, NULL),
(172, 'C4', 16, NULL, NULL),
(173, 'Xsara Picasso', 16, NULL, NULL),
(174, 'C5', 16, NULL, NULL),
(175, 'C3', 16, NULL, NULL),
(176, 'C3 Pluriel', 16, NULL, NULL),
(177, 'C1', 16, NULL, NULL),
(178, 'C6', 16, NULL, NULL),
(179, 'Grand C4 Picasso', 16, NULL, NULL),
(180, 'C4 Picasso', 16, NULL, NULL),
(181, 'Ccrosser', 16, NULL, NULL),
(182, 'C15', 16, NULL, NULL),
(183, 'Jumper', 16, NULL, NULL),
(184, 'Jumpy', 16, NULL, NULL),
(185, 'Berlingo', 16, NULL, NULL),
(186, 'Bx', 16, NULL, NULL),
(187, 'C25', 16, NULL, NULL),
(188, 'Cx', 16, NULL, NULL),
(189, 'Gsa', 16, NULL, NULL),
(190, 'Visa', 16, NULL, NULL),
(191, 'Lna', 16, NULL, NULL),
(192, '2cv', 16, NULL, NULL),
(193, 'Nemo', 16, NULL, NULL),
(194, 'C4 Sedan', 16, NULL, NULL),
(195, 'Berlingo First', 16, NULL, NULL),
(196, 'C3 Picasso', 16, NULL, NULL),
(197, 'Ds3', 16, NULL, NULL),
(198, 'Czero', 16, NULL, NULL),
(199, 'Ds4', 16, NULL, NULL),
(200, 'Ds5', 16, NULL, NULL),
(201, 'C4 Aircross', 16, NULL, NULL),
(202, 'Celysee', 16, NULL, NULL),
(203, 'Corvette', 17, NULL, NULL),
(204, 'Contac', 18, NULL, NULL),
(205, 'Logan', 18, NULL, NULL),
(206, 'Sandero', 18, NULL, NULL),
(207, 'Duster', 18, NULL, NULL),
(208, 'Lodgy', 18, NULL, NULL),
(209, 'Nexia', 19, NULL, NULL),
(210, 'Aranos', 19, NULL, NULL),
(211, 'Lanos', 19, NULL, NULL),
(212, 'Nubira', 19, NULL, NULL),
(213, 'Compact', 19, NULL, NULL),
(214, 'Nubira Compact', 19, NULL, NULL),
(215, 'Leganza', 19, NULL, NULL),
(216, 'Evanda', 19, NULL, NULL),
(217, 'Matiz', 19, NULL, NULL),
(218, 'Tacuma', 19, NULL, NULL),
(219, 'Kalos', 19, NULL, NULL),
(220, 'Lacetti', 19, NULL, NULL),
(221, 'Applause', 21, NULL, NULL),
(222, 'Charade', 21, NULL, NULL),
(223, 'Rocky', 21, NULL, NULL),
(224, 'Feroza', 21, NULL, NULL),
(225, 'Terios', 21, NULL, NULL),
(226, 'Sirion', 21, NULL, NULL),
(227, 'Serie Xj', 22, NULL, NULL),
(228, 'Xj', 22, NULL, NULL),
(229, 'Double Six', 22, NULL, NULL),
(230, 'Six', 22, NULL, NULL),
(231, 'Series Iii', 22, NULL, NULL),
(232, 'Viper', 23, NULL, NULL),
(233, 'Caliber', 23, NULL, NULL),
(234, 'Nitro', 23, NULL, NULL),
(235, 'Avenger', 23, NULL, NULL),
(236, 'Journey', 23, NULL, NULL),
(237, 'F355', 24, NULL, NULL),
(238, '360', 24, NULL, NULL),
(239, 'F430', 24, NULL, NULL),
(240, 'F512 M', 24, NULL, NULL),
(241, '550 Maranello', 24, NULL, NULL),
(242, '575m Maranello', 24, NULL, NULL),
(243, '599', 24, NULL, NULL),
(244, '456', 24, NULL, NULL),
(245, '456m', 24, NULL, NULL),
(246, '612', 24, NULL, NULL),
(247, 'F50', 24, NULL, NULL),
(248, 'Enzo', 24, NULL, NULL),
(249, 'Superamerica', 24, NULL, NULL),
(250, '430', 24, NULL, NULL),
(251, '348', 24, NULL, NULL),
(252, 'Testarossa', 24, NULL, NULL),
(253, '512', 24, NULL, NULL),
(254, '355', 24, NULL, NULL),
(255, 'F40', 24, NULL, NULL),
(256, '412', 24, NULL, NULL),
(257, 'Mondial', 24, NULL, NULL),
(258, '328', 24, NULL, NULL),
(259, 'California', 24, NULL, NULL),
(260, '458', 24, NULL, NULL),
(261, 'Ff', 24, NULL, NULL),
(262, 'Croma', 25, NULL, NULL),
(263, 'Cinquecento', 25, NULL, NULL),
(264, 'Seicento', 25, NULL, NULL),
(265, 'Punto', 25, NULL, NULL),
(266, 'Grande Punto', 25, NULL, NULL),
(267, 'Panda', 25, NULL, NULL),
(268, 'Tipo', 25, NULL, NULL),
(269, 'Coupe', 25, NULL, NULL),
(270, 'Uno', 25, NULL, NULL),
(271, 'Ulysse', 25, NULL, NULL),
(272, 'Tempra', 25, NULL, NULL),
(273, 'Marea', 25, NULL, NULL),
(274, 'Barchetta', 25, NULL, NULL),
(275, 'Bravo', 25, NULL, NULL),
(276, 'Stilo', 25, NULL, NULL),
(277, 'Brava', 25, NULL, NULL),
(278, 'Palio Weekend', 25, NULL, NULL),
(279, '600', 25, NULL, NULL),
(280, 'Multipla', 25, NULL, NULL),
(281, 'Idea', 25, NULL, NULL),
(282, 'Sedici', 25, NULL, NULL),
(283, 'Linea', 25, NULL, NULL),
(284, '500', 25, NULL, NULL),
(285, 'Fiorino', 25, NULL, NULL),
(286, 'Ducato', 25, NULL, NULL),
(287, 'Doblo Cargo', 25, NULL, NULL),
(288, 'Doblo', 25, NULL, NULL),
(289, 'Strada', 25, NULL, NULL),
(290, 'Regata', 25, NULL, NULL),
(291, 'Talento', 25, NULL, NULL),
(292, 'Argenta', 25, NULL, NULL),
(293, 'Ritmo', 25, NULL, NULL),
(294, 'Punto Classic', 25, NULL, NULL),
(295, 'Qubo', 25, NULL, NULL),
(296, 'Punto Evo', 25, NULL, NULL),
(297, '500c', 25, NULL, NULL),
(298, 'Freemont', 25, NULL, NULL),
(299, 'Panda Classic', 25, NULL, NULL),
(300, '500l', 25, NULL, NULL),
(301, 'Maverick', 26, NULL, NULL),
(302, 'Escort', 26, NULL, NULL),
(303, 'Focus', 26, NULL, NULL),
(304, 'Mondeo', 26, NULL, NULL),
(305, 'Scorpio', 26, NULL, NULL),
(306, 'Fiesta', 26, NULL, NULL),
(307, 'Probe', 26, NULL, NULL),
(308, 'Explorer', 26, NULL, NULL),
(309, 'Galaxy', 26, NULL, NULL),
(310, 'Ka', 26, NULL, NULL),
(311, 'Puma', 26, NULL, NULL),
(312, 'Cougar', 26, NULL, NULL),
(313, 'Focus Cmax', 26, NULL, NULL),
(314, 'Fusion', 26, NULL, NULL),
(315, 'Streetka', 26, NULL, NULL),
(316, 'Cmax', 26, NULL, NULL),
(317, 'Smax', 26, NULL, NULL),
(318, 'Transit', 26, NULL, NULL),
(319, 'Courier', 26, NULL, NULL),
(320, 'Ranger', 26, NULL, NULL),
(321, 'Sierra', 26, NULL, NULL),
(322, 'Orion', 26, NULL, NULL),
(323, 'Pick Up', 26, NULL, NULL),
(324, 'Capri', 26, NULL, NULL),
(325, 'Granada', 26, NULL, NULL),
(326, 'Kuga', 26, NULL, NULL),
(327, 'Grand Cmax', 26, NULL, NULL),
(328, 'Bmax', 26, NULL, NULL),
(329, 'Tourneo Custom', 26, NULL, NULL),
(330, 'Exceed', 27, NULL, NULL),
(331, 'Santamo', 27, NULL, NULL),
(332, 'Super Exceed', 27, NULL, NULL),
(333, 'Accord', 29, NULL, NULL),
(334, 'Civic', 29, NULL, NULL),
(335, 'Crx', 29, NULL, NULL),
(336, 'Prelude', 29, NULL, NULL),
(337, 'Nsx', 29, NULL, NULL),
(338, 'Legend', 29, NULL, NULL),
(339, 'Crv', 29, NULL, NULL),
(340, 'Hrv', 29, NULL, NULL),
(341, 'Logo', 29, NULL, NULL),
(342, 'S2000', 29, NULL, NULL),
(343, 'Stream', 29, NULL, NULL),
(344, 'Jazz', 29, NULL, NULL),
(345, 'Frv', 29, NULL, NULL),
(346, 'Concerto', 29, NULL, NULL),
(347, 'Insight', 29, NULL, NULL),
(348, 'Crz', 29, NULL, NULL),
(349, 'H2', 30, NULL, NULL),
(350, 'H3', 30, NULL, NULL),
(351, 'H3t', 30, NULL, NULL),
(352, 'Lantra', 31, NULL, NULL),
(353, 'Sonata', 31, NULL, NULL),
(354, 'Elantra', 31, NULL, NULL),
(355, 'Accent', 31, NULL, NULL),
(356, 'Scoupe', 31, NULL, NULL),
(357, 'Coupe', 31, NULL, NULL),
(358, 'Atos', 31, NULL, NULL),
(359, 'H1', 31, NULL, NULL),
(360, 'Atos Prime', 31, NULL, NULL),
(361, 'Xg', 31, NULL, NULL),
(362, 'Trajet', 31, NULL, NULL),
(363, 'Santa Fe', 31, NULL, NULL),
(364, 'Terracan', 31, NULL, NULL),
(365, 'Matrix', 31, NULL, NULL),
(366, 'Getz', 31, NULL, NULL),
(367, 'Tucson', 31, NULL, NULL),
(368, 'I30', 31, NULL, NULL),
(369, 'Pony', 31, NULL, NULL),
(370, 'Grandeur', 31, NULL, NULL),
(371, 'I10', 31, NULL, NULL),
(372, 'I800', 31, NULL, NULL),
(373, 'Sonata Fl', 31, NULL, NULL),
(374, 'Ix55', 31, NULL, NULL),
(375, 'I20', 31, NULL, NULL),
(376, 'Ix35', 31, NULL, NULL),
(377, 'Ix20', 31, NULL, NULL),
(378, 'Genesis', 31, NULL, NULL),
(379, 'I40', 31, NULL, NULL),
(380, 'Veloster', 31, NULL, NULL),
(381, 'G', 32, NULL, NULL),
(382, 'Ex', 32, NULL, NULL),
(383, 'Fx', 32, NULL, NULL),
(384, 'M', 32, NULL, NULL),
(385, 'Elba', 33, NULL, NULL),
(386, 'Minitre', 33, NULL, NULL),
(387, 'Trooper', 34, NULL, NULL),
(388, 'Pick Up', 34, NULL, NULL),
(389, 'D Max', 34, NULL, NULL),
(390, 'Rodeo', 34, NULL, NULL),
(391, 'Dmax', 34, NULL, NULL),
(392, 'Trroper', 34, NULL, NULL),
(393, 'Daily', 35, NULL, NULL),
(394, 'Massif', 35, NULL, NULL),
(395, 'Daily', 36, NULL, NULL),
(396, 'Duty', 36, NULL, NULL),
(397, 'Serie Xj', 37, NULL, NULL),
(398, 'Serie Xk', 37, NULL, NULL),
(399, 'Xj', 37, NULL, NULL),
(400, 'Stype', 37, NULL, NULL),
(401, 'Xf', 37, NULL, NULL),
(402, 'Xtype', 37, NULL, NULL),
(403, 'Wrangler', 38, NULL, NULL),
(404, 'Cherokee', 38, NULL, NULL),
(405, 'Grand Cherokee', 38, NULL, NULL),
(406, 'Commander', 38, NULL, NULL),
(407, 'Compass', 38, NULL, NULL),
(408, 'Wrangler Unlimited', 38, NULL, NULL),
(409, 'Patriot', 38, NULL, NULL),
(410, 'Sportage', 39, NULL, NULL),
(411, 'Sephia', 39, NULL, NULL),
(412, 'Sephia Ii', 39, NULL, NULL),
(413, 'Pride', 39, NULL, NULL),
(414, 'Clarus', 39, NULL, NULL),
(415, 'Shuma', 39, NULL, NULL),
(416, 'Carnival', 39, NULL, NULL),
(417, 'Joice', 39, NULL, NULL),
(418, 'Magentis', 39, NULL, NULL),
(419, 'Carens', 39, NULL, NULL),
(420, 'Rio', 39, NULL, NULL),
(421, 'Cerato', 39, NULL, NULL),
(422, 'Sorento', 39, NULL, NULL),
(423, 'Opirus', 39, NULL, NULL),
(424, 'Picanto', 39, NULL, NULL),
(425, 'Ceed', 39, NULL, NULL),
(426, 'Ceed Sporty Wagon', 39, NULL, NULL),
(427, 'Proceed', 39, NULL, NULL),
(428, 'K2500 Frontier', 39, NULL, NULL),
(429, 'K2500', 39, NULL, NULL),
(430, 'Soul', 39, NULL, NULL),
(431, 'Venga', 39, NULL, NULL),
(432, 'Optima', 39, NULL, NULL),
(433, 'Ceed Sportswagon', 39, NULL, NULL),
(434, 'Samara', 40, NULL, NULL),
(435, 'Niva', 40, NULL, NULL),
(436, 'Sagona', 40, NULL, NULL),
(437, 'Stawra 2110', 40, NULL, NULL),
(438, '214', 40, NULL, NULL),
(439, 'Kalina', 40, NULL, NULL),
(440, 'Serie 2100', 40, NULL, NULL),
(441, 'Priora', 40, NULL, NULL),
(442, 'Gallardo', 41, NULL, NULL),
(443, 'Murcielago', 41, NULL, NULL),
(444, 'Aventador', 41, NULL, NULL),
(445, 'Delta', 42, NULL, NULL),
(446, 'K', 42, NULL, NULL),
(447, 'Y10', 42, NULL, NULL),
(448, 'Dedra', 42, NULL, NULL),
(449, 'Lybra', 42, NULL, NULL),
(450, 'Z', 42, NULL, NULL),
(451, 'Y', 42, NULL, NULL),
(452, 'Ypsilon', 42, NULL, NULL),
(453, 'Thesis', 42, NULL, NULL),
(454, 'Phedra', 42, NULL, NULL),
(455, 'Musa', 42, NULL, NULL),
(456, 'Thema', 42, NULL, NULL),
(457, 'Zeta', 42, NULL, NULL),
(458, 'Kappa', 42, NULL, NULL),
(459, 'Trevi', 42, NULL, NULL),
(460, 'Prisma', 42, NULL, NULL),
(461, 'A112', 42, NULL, NULL),
(462, 'Ypsilon Elefantino', 42, NULL, NULL),
(463, 'Voyager', 42, NULL, NULL),
(464, 'Range Rover', 43, NULL, NULL),
(465, 'Defender', 43, NULL, NULL),
(466, 'Discovery', 43, NULL, NULL),
(467, 'Freelander', 43, NULL, NULL),
(468, 'Range Rover Sport', 43, NULL, NULL),
(469, 'Discovery 4', 43, NULL, NULL),
(470, 'Range Rover Evoque', 43, NULL, NULL),
(471, 'Maxus', 44, NULL, NULL),
(472, 'Ls400', 45, NULL, NULL),
(473, 'Ls430', 45, NULL, NULL),
(474, 'Gs300', 45, NULL, NULL),
(475, 'Is200', 45, NULL, NULL),
(476, 'Rx300', 45, NULL, NULL),
(477, 'Gs430', 45, NULL, NULL),
(478, 'Gs460', 45, NULL, NULL),
(479, 'Sc430', 45, NULL, NULL),
(480, 'Is300', 45, NULL, NULL),
(481, 'Is250', 45, NULL, NULL),
(482, 'Rx400h', 45, NULL, NULL),
(483, 'Is220d', 45, NULL, NULL),
(484, 'Rx350', 45, NULL, NULL),
(485, 'Gs450h', 45, NULL, NULL),
(486, 'Ls460', 45, NULL, NULL),
(487, 'Ls600h', 45, NULL, NULL),
(488, 'Ls', 45, NULL, NULL),
(489, 'Gs', 45, NULL, NULL),
(490, 'Is', 45, NULL, NULL),
(491, 'Sc', 45, NULL, NULL),
(492, 'Rx', 45, NULL, NULL),
(493, 'Ct', 45, NULL, NULL),
(494, 'Elise', 46, NULL, NULL),
(495, 'Exige', 46, NULL, NULL),
(496, 'Bolero Pickup', 47, NULL, NULL),
(497, 'Goa Pickup', 47, NULL, NULL),
(498, 'Goa', 47, NULL, NULL),
(499, 'Cj', 47, NULL, NULL),
(500, 'Pikup', 47, NULL, NULL),
(501, 'Thar', 47, NULL, NULL),
(502, 'Ghibli', 48, NULL, NULL),
(503, 'Shamal', 48, NULL, NULL),
(504, 'Quattroporte', 48, NULL, NULL),
(505, '3200 Gt', 48, NULL, NULL),
(506, 'Coupe', 48, NULL, NULL),
(507, 'Spyder', 48, NULL, NULL),
(508, 'Gransport', 48, NULL, NULL),
(509, 'Granturismo', 48, NULL, NULL),
(510, '430', 48, NULL, NULL),
(511, 'Biturbo', 48, NULL, NULL),
(512, '228', 48, NULL, NULL),
(513, '224', 48, NULL, NULL),
(514, 'Grancabrio', 48, NULL, NULL),
(515, 'Maybach', 49, NULL, NULL),
(516, 'Xedos 6', 50, NULL, NULL),
(517, '626', 50, NULL, NULL),
(518, '121', 50, NULL, NULL),
(519, 'Xedos 9', 50, NULL, NULL),
(520, '323', 50, NULL, NULL),
(521, 'Mx3', 50, NULL, NULL),
(522, 'Rx7', 50, NULL, NULL),
(523, 'Mx5', 50, NULL, NULL),
(524, 'Mazda3', 50, NULL, NULL),
(525, 'Mpv', 50, NULL, NULL),
(526, 'Demio', 50, NULL, NULL),
(527, 'Premacy', 50, NULL, NULL),
(528, 'Tribute', 50, NULL, NULL),
(529, 'Mazda6', 50, NULL, NULL),
(530, 'Mazda2', 50, NULL, NULL),
(531, 'Rx8', 50, NULL, NULL),
(532, 'Mazda5', 50, NULL, NULL),
(533, 'Cx7', 50, NULL, NULL),
(534, 'Serie B', 50, NULL, NULL),
(535, 'B2500', 50, NULL, NULL),
(536, 'Bt50', 50, NULL, NULL),
(537, 'Mx6', 50, NULL, NULL),
(538, '929', 50, NULL, NULL),
(539, 'Cx5', 50, NULL, NULL),
(540, 'Clase C', 51, NULL, NULL),
(541, 'Clase E', 51, NULL, NULL),
(542, 'Clase Sl', 51, NULL, NULL),
(543, 'Clase S', 51, NULL, NULL),
(544, 'Clase Cl', 51, NULL, NULL),
(545, 'Clase G', 51, NULL, NULL),
(546, 'Clase Slk', 51, NULL, NULL),
(547, 'Clase V', 51, NULL, NULL),
(548, 'Viano', 51, NULL, NULL),
(549, 'Clase Clk', 51, NULL, NULL),
(550, 'Clase A', 51, NULL, NULL),
(551, 'Clase M', 51, NULL, NULL),
(552, 'Vaneo', 51, NULL, NULL),
(553, 'Slklasse', 51, NULL, NULL),
(554, 'Slr Mclaren', 51, NULL, NULL),
(555, 'Clase Cls', 51, NULL, NULL),
(556, 'Clase R', 51, NULL, NULL),
(557, 'Clase Gl', 51, NULL, NULL),
(558, 'Clase B', 51, NULL, NULL),
(559, '100d', 51, NULL, NULL),
(560, '140d', 51, NULL, NULL),
(561, '180d', 51, NULL, NULL),
(562, 'Sprinter', 51, NULL, NULL),
(563, 'Vito', 51, NULL, NULL),
(564, 'Transporter', 51, NULL, NULL),
(565, '280', 51, NULL, NULL),
(566, '220', 51, NULL, NULL),
(567, '200', 51, NULL, NULL),
(568, '190', 51, NULL, NULL),
(569, '600', 51, NULL, NULL),
(570, '400', 51, NULL, NULL),
(571, 'Clase Sl R129', 51, NULL, NULL),
(572, '300', 51, NULL, NULL),
(573, '500', 51, NULL, NULL),
(574, '420', 51, NULL, NULL),
(575, '260', 51, NULL, NULL),
(576, '230', 51, NULL, NULL),
(577, 'Clase Clc', 51, NULL, NULL),
(578, 'Clase Glk', 51, NULL, NULL),
(579, 'Sls Amg', 51, NULL, NULL),
(580, 'Mgf', 52, NULL, NULL),
(581, 'Tf', 52, NULL, NULL),
(582, 'Zr', 52, NULL, NULL),
(583, 'Zs', 52, NULL, NULL),
(584, 'Zt', 52, NULL, NULL),
(585, 'Ztt', 52, NULL, NULL),
(586, 'Mini', 52, NULL, NULL),
(587, 'Countryman', 52, NULL, NULL),
(588, 'Paceman', 52, NULL, NULL),
(589, 'Montero', 54, NULL, NULL),
(590, 'Galant', 54, NULL, NULL),
(591, 'Colt', 54, NULL, NULL),
(592, 'Space Wagon', 54, NULL, NULL),
(593, 'Space Runner', 54, NULL, NULL),
(594, 'Space Gear', 54, NULL, NULL),
(595, '3000 Gt', 54, NULL, NULL),
(596, 'Carisma', 54, NULL, NULL),
(597, 'Eclipse', 54, NULL, NULL),
(598, 'Space Star', 54, NULL, NULL),
(599, 'Montero Sport', 54, NULL, NULL),
(600, 'Montero Io', 54, NULL, NULL),
(601, 'Outlander', 54, NULL, NULL),
(602, 'Lancer', 54, NULL, NULL),
(603, 'Grandis', 54, NULL, NULL),
(604, 'L200', 54, NULL, NULL),
(605, 'Canter', 54, NULL, NULL),
(606, '300 Gt', 54, NULL, NULL),
(607, 'Asx', 54, NULL, NULL),
(608, 'Imiev', 54, NULL, NULL),
(609, '44', 55, NULL, NULL),
(610, 'Plus 8', 55, NULL, NULL),
(611, 'Aero 8', 55, NULL, NULL),
(612, 'V6', 55, NULL, NULL),
(613, 'Roadster', 55, NULL, NULL),
(614, '4', 55, NULL, NULL),
(615, 'Plus 4', 55, NULL, NULL),
(616, 'Terrano Ii', 56, NULL, NULL),
(617, 'Terrano', 56, NULL, NULL),
(618, 'Micra', 56, NULL, NULL),
(619, 'Sunny', 56, NULL, NULL),
(620, 'Primera', 56, NULL, NULL),
(621, 'Serena', 56, NULL, NULL),
(622, 'Patrol', 56, NULL, NULL),
(623, 'Maxima Qx', 56, NULL, NULL),
(624, '200 Sx', 56, NULL, NULL),
(625, '300 Zx', 56, NULL, NULL),
(626, 'Patrol Gr', 56, NULL, NULL),
(627, '100 Nx', 56, NULL, NULL),
(628, 'Almera', 56, NULL, NULL),
(629, 'Pathfinder', 56, NULL, NULL),
(630, 'Almera Tino', 56, NULL, NULL),
(631, 'Xtrail', 56, NULL, NULL),
(632, '350z', 56, NULL, NULL),
(633, 'Murano', 56, NULL, NULL),
(634, 'Note', 56, NULL, NULL),
(635, 'Qashqai', 56, NULL, NULL),
(636, 'Tiida', 56, NULL, NULL),
(637, 'Vanette', 56, NULL, NULL),
(638, 'Trade', 56, NULL, NULL),
(639, 'Vanette Cargo', 56, NULL, NULL),
(640, 'Pickup', 56, NULL, NULL),
(641, 'Navara', 56, NULL, NULL),
(642, 'Cabstar E', 56, NULL, NULL),
(643, 'Cabstar', 56, NULL, NULL),
(644, 'Maxima', 56, NULL, NULL),
(645, 'Camion', 56, NULL, NULL),
(646, 'Prairie', 56, NULL, NULL),
(647, 'Bluebird', 56, NULL, NULL),
(648, 'Np300 Pick Up', 56, NULL, NULL),
(649, 'Qashqai2', 56, NULL, NULL),
(650, 'Pixo', 56, NULL, NULL),
(651, 'Gtr', 56, NULL, NULL),
(652, '370z', 56, NULL, NULL),
(653, 'Cube', 56, NULL, NULL),
(654, 'Juke', 56, NULL, NULL),
(655, 'Leaf', 56, NULL, NULL),
(656, 'Evalia', 56, NULL, NULL),
(657, 'Astra', 57, NULL, NULL),
(658, 'Vectra', 57, NULL, NULL),
(659, 'Calibra', 57, NULL, NULL),
(660, 'Corsa', 57, NULL, NULL),
(661, 'Omega', 57, NULL, NULL),
(662, 'Frontera', 57, NULL, NULL),
(663, 'Tigra', 57, NULL, NULL),
(664, 'Monterey', 57, NULL, NULL),
(665, 'Sintra', 57, NULL, NULL),
(666, 'Zafira', 57, NULL, NULL),
(667, 'Agila', 57, NULL, NULL),
(668, 'Speedster', 57, NULL, NULL),
(669, 'Signum', 57, NULL, NULL),
(670, 'Meriva', 57, NULL, NULL),
(671, 'Antara', 57, NULL, NULL),
(672, 'Gt', 57, NULL, NULL),
(673, 'Combo', 57, NULL, NULL),
(674, 'Movano', 57, NULL, NULL),
(675, 'Vivaro', 57, NULL, NULL),
(676, 'Kadett', 57, NULL, NULL),
(677, 'Monza', 57, NULL, NULL),
(678, 'Senator', 57, NULL, NULL),
(679, 'Rekord', 57, NULL, NULL),
(680, 'Manta', 57, NULL, NULL),
(681, 'Ascona', 57, NULL, NULL),
(682, 'Insignia', 57, NULL, NULL),
(683, 'Zafira Tourer', 57, NULL, NULL),
(684, 'Ampera', 57, NULL, NULL),
(685, 'Mokka', 57, NULL, NULL),
(686, 'Adam', 57, NULL, NULL),
(687, '306', 58, NULL, NULL),
(688, '605', 58, NULL, NULL),
(689, '106', 58, NULL, NULL),
(690, '205', 58, NULL, NULL),
(691, '405', 58, NULL, NULL),
(692, '406', 58, NULL, NULL),
(693, '806', 58, NULL, NULL),
(694, '807', 58, NULL, NULL),
(695, '407', 58, NULL, NULL),
(696, '307', 58, NULL, NULL),
(697, '206', 58, NULL, NULL),
(698, '607', 58, NULL, NULL),
(699, '308', 58, NULL, NULL),
(700, '307 Sw', 58, NULL, NULL),
(701, '206 Sw', 58, NULL, NULL),
(702, '407 Sw', 58, NULL, NULL),
(703, '1007', 58, NULL, NULL),
(704, '107', 58, NULL, NULL),
(705, '207', 58, NULL, NULL),
(706, '4007', 58, NULL, NULL),
(707, 'Boxer', 58, NULL, NULL),
(708, 'Partner', 58, NULL, NULL),
(709, 'J5', 58, NULL, NULL),
(710, '604', 58, NULL, NULL),
(711, '505', 58, NULL, NULL),
(712, '309', 58, NULL, NULL),
(713, 'Bipper', 58, NULL, NULL),
(714, 'Partner Origin', 58, NULL, NULL),
(715, '3008', 58, NULL, NULL),
(716, '5008', 58, NULL, NULL),
(717, 'Rcz', 58, NULL, NULL),
(718, '508', 58, NULL, NULL),
(719, 'Ion', 58, NULL, NULL),
(720, '208', 58, NULL, NULL),
(721, '4008', 58, NULL, NULL),
(722, 'Trans Sport', 59, NULL, NULL),
(723, 'Firebird', 59, NULL, NULL),
(724, 'Trans Am', 59, NULL, NULL),
(725, '911', 60, NULL, NULL),
(726, 'Boxster', 60, NULL, NULL),
(727, 'Cayenne', 60, NULL, NULL),
(728, 'Carrera Gt', 60, NULL, NULL),
(729, 'Cayman', 60, NULL, NULL),
(730, '928', 60, NULL, NULL),
(731, '968', 60, NULL, NULL),
(732, '944', 60, NULL, NULL),
(733, '924', 60, NULL, NULL),
(734, 'Panamera', 60, NULL, NULL),
(735, '918', 60, NULL, NULL),
(736, 'Megane', 61, NULL, NULL),
(737, 'Safrane', 61, NULL, NULL),
(738, 'Laguna', 61, NULL, NULL),
(739, 'Clio', 61, NULL, NULL),
(740, 'Twingo', 61, NULL, NULL),
(741, 'Nevada', 61, NULL, NULL),
(742, 'Espace', 61, NULL, NULL),
(743, 'Spider', 61, NULL, NULL),
(744, 'Scenic', 61, NULL, NULL),
(745, 'Grand Espace', 61, NULL, NULL),
(746, 'Avantime', 61, NULL, NULL),
(747, 'Vel Satis', 61, NULL, NULL),
(748, 'Grand Scenic', 61, NULL, NULL),
(749, 'Clio Campus', 61, NULL, NULL),
(750, 'Modus', 61, NULL, NULL),
(751, 'Express', 61, NULL, NULL),
(752, 'Trafic', 61, NULL, NULL),
(753, 'Master', 61, NULL, NULL),
(754, 'Kangoo', 61, NULL, NULL),
(755, 'Mascott', 61, NULL, NULL),
(756, 'Master Propulsion', 61, NULL, NULL),
(757, 'Maxity', 61, NULL, NULL),
(758, 'R19', 61, NULL, NULL),
(759, 'R25', 61, NULL, NULL),
(760, 'R5', 61, NULL, NULL),
(761, 'R21', 61, NULL, NULL),
(762, 'R4', 61, NULL, NULL),
(763, 'Alpine', 61, NULL, NULL),
(764, 'Fuego', 61, NULL, NULL),
(765, 'R18', 61, NULL, NULL),
(766, 'R11', 61, NULL, NULL),
(767, 'R9', 61, NULL, NULL),
(768, 'R6', 61, NULL, NULL),
(769, 'Grand Modus', 61, NULL, NULL),
(770, 'Kangoo Combi', 61, NULL, NULL),
(771, 'Koleos', 61, NULL, NULL),
(772, 'Fluence', 61, NULL, NULL),
(773, 'Wind', 61, NULL, NULL),
(774, 'Latitude', 61, NULL, NULL),
(775, 'Grand Kangoo Combi', 61, NULL, NULL),
(776, 'Siver Dawn', 62, NULL, NULL),
(777, 'Silver Spur', 62, NULL, NULL),
(778, 'Park Ward', 62, NULL, NULL),
(779, 'Silver Seraph', 62, NULL, NULL),
(780, 'Corniche', 62, NULL, NULL),
(781, 'Phantom', 62, NULL, NULL),
(782, 'Touring', 62, NULL, NULL),
(783, 'Silvier', 62, NULL, NULL),
(784, '800', 63, NULL, NULL),
(785, '600', 63, NULL, NULL),
(786, '100', 63, NULL, NULL),
(787, '200', 63, NULL, NULL),
(788, 'Coupe', 63, NULL, NULL),
(789, '400', 63, NULL, NULL),
(790, '45', 63, NULL, NULL),
(791, 'Cabriolet', 63, NULL, NULL),
(792, '25', 63, NULL, NULL),
(793, 'Mini', 63, NULL, NULL),
(794, '75', 63, NULL, NULL),
(795, 'Streetwise', 63, NULL, NULL),
(796, 'Sd', 63, NULL, NULL),
(797, '900', 64, NULL, NULL),
(798, '93', 64, NULL, NULL),
(799, '9000', 64, NULL, NULL),
(800, '95', 64, NULL, NULL),
(801, '93x', 64, NULL, NULL),
(802, '94x', 64, NULL, NULL),
(803, '300', 65, NULL, NULL),
(804, '350', 65, NULL, NULL),
(805, 'Anibal', 65, NULL, NULL),
(806, 'Anibal Pick Up', 65, NULL, NULL),
(807, 'Ibiza', 66, NULL, NULL),
(808, 'Cordoba', 66, NULL, NULL),
(809, 'Toledo', 66, NULL, NULL),
(810, 'Marbella', 66, NULL, NULL),
(811, 'Alhambra', 66, NULL, NULL),
(812, 'Arosa', 66, NULL, NULL),
(813, 'Leon', 66, NULL, NULL),
(814, 'Altea', 66, NULL, NULL),
(815, 'Altea Xl', 66, NULL, NULL),
(816, 'Altea Freetrack', 66, NULL, NULL),
(817, 'Terra', 66, NULL, NULL),
(818, 'Inca', 66, NULL, NULL),
(819, 'Malaga', 66, NULL, NULL),
(820, 'Ronda', 66, NULL, NULL),
(821, 'Exeo', 66, NULL, NULL),
(822, 'Mii', 66, NULL, NULL),
(823, 'Felicia', 67, NULL, NULL),
(824, 'Forman', 67, NULL, NULL),
(825, 'Octavia', 67, NULL, NULL),
(826, 'Octavia Tour', 67, NULL, NULL),
(827, 'Fabia', 67, NULL, NULL),
(828, 'Superb', 67, NULL, NULL),
(829, 'Roomster', 67, NULL, NULL),
(830, 'Scout', 67, NULL, NULL),
(831, 'Pickup', 67, NULL, NULL),
(832, 'Favorit', 67, NULL, NULL),
(833, '130', 67, NULL, NULL),
(834, 'S', 67, NULL, NULL),
(835, 'Yeti', 67, NULL, NULL),
(836, 'Citigo', 67, NULL, NULL),
(837, 'Rapid', 67, NULL, NULL),
(838, 'Smart', 68, NULL, NULL),
(839, 'Citycoupe', 68, NULL, NULL),
(840, 'Fortwo', 68, NULL, NULL),
(841, 'Cabrio', 68, NULL, NULL),
(842, 'Crossblade', 68, NULL, NULL),
(843, 'Roadster', 68, NULL, NULL),
(844, 'Forfour', 68, NULL, NULL),
(845, 'Korando', 69, NULL, NULL),
(846, 'Family', 69, NULL, NULL),
(847, 'K4d', 69, NULL, NULL),
(848, 'Musso', 69, NULL, NULL),
(849, 'Korando Kj', 69, NULL, NULL),
(850, 'Rexton', 69, NULL, NULL),
(851, 'Rexton Ii', 69, NULL, NULL),
(852, 'Rodius', 69, NULL, NULL),
(853, 'Kyron', 69, NULL, NULL),
(854, 'Actyon', 69, NULL, NULL),
(855, 'Sports Pick Up', 69, NULL, NULL),
(856, 'Actyon Sports Pick Up', 69, NULL, NULL),
(857, 'Kodando', 69, NULL, NULL),
(858, 'Legacy', 70, NULL, NULL),
(859, 'Impreza', 70, NULL, NULL),
(860, 'Svx', 70, NULL, NULL),
(861, 'Justy', 70, NULL, NULL),
(862, 'Outback', 70, NULL, NULL),
(863, 'Forester', 70, NULL, NULL),
(864, 'G3x Justy', 70, NULL, NULL),
(865, 'B9 Tribeca', 70, NULL, NULL),
(866, 'Xt', 70, NULL, NULL),
(867, '1800', 70, NULL, NULL),
(868, 'Tribeca', 70, NULL, NULL),
(869, 'Wrx Sti', 70, NULL, NULL),
(870, 'Trezia', 70, NULL, NULL),
(871, 'Xv', 70, NULL, NULL),
(872, 'Brz', 70, NULL, NULL),
(873, 'Maruti', 71, NULL, NULL),
(874, 'Swift', 71, NULL, NULL),
(875, 'Vitara', 71, NULL, NULL),
(876, 'Baleno', 71, NULL, NULL),
(877, 'Samurai', 71, NULL, NULL),
(878, 'Alto', 71, NULL, NULL),
(879, 'Wagon R', 71, NULL, NULL),
(880, 'Jimny', 71, NULL, NULL),
(881, 'Grand Vitara', 71, NULL, NULL),
(882, 'Ignis', 71, NULL, NULL),
(883, 'Liana', 71, NULL, NULL),
(884, 'Grand Vitara Xl7', 71, NULL, NULL),
(885, 'Sx4', 71, NULL, NULL),
(886, 'Splash', 71, NULL, NULL),
(887, 'Kizashi', 71, NULL, NULL),
(888, 'Samba', 72, NULL, NULL),
(889, 'Tagora', 72, NULL, NULL),
(890, 'Solara', 72, NULL, NULL),
(891, 'Horizon', 72, NULL, NULL),
(892, 'Telcosport', 73, NULL, NULL),
(893, 'Telco', 73, NULL, NULL),
(894, 'Sumo', 73, NULL, NULL),
(895, 'Safari', 73, NULL, NULL),
(896, 'Indica', 73, NULL, NULL),
(897, 'Indigo', 73, NULL, NULL),
(898, 'Grand Safari', 73, NULL, NULL),
(899, 'Tl Pick Up', 73, NULL, NULL),
(900, 'Xenon Pick Up', 73, NULL, NULL),
(901, 'Vista', 73, NULL, NULL),
(902, 'Xenon', 73, NULL, NULL),
(903, 'Aria', 73, NULL, NULL),
(904, 'Carina E', 74, NULL, NULL),
(905, '4runner', 74, NULL, NULL),
(906, 'Camry', 74, NULL, NULL),
(907, 'Rav4', 74, NULL, NULL),
(908, 'Celica', 74, NULL, NULL),
(909, 'Supra', 74, NULL, NULL),
(910, 'Paseo', 74, NULL, NULL),
(911, 'Land Cruiser 80', 74, NULL, NULL),
(912, 'Land Cruiser 100', 74, NULL, NULL),
(913, 'Land Cruiser', 74, NULL, NULL),
(914, 'Land Cruiser 90', 74, NULL, NULL),
(915, 'Corolla', 74, NULL, NULL),
(916, 'Auris', 74, NULL, NULL),
(917, 'Avensis', 74, NULL, NULL),
(918, 'Picnic', 74, NULL, NULL),
(919, 'Yaris', 74, NULL, NULL),
(920, 'Yaris Verso', 74, NULL, NULL),
(921, 'Mr2', 74, NULL, NULL),
(922, 'Previa', 74, NULL, NULL),
(923, 'Prius', 74, NULL, NULL),
(924, 'Avensis Verso', 74, NULL, NULL),
(925, 'Corolla Verso', 74, NULL, NULL),
(926, 'Corolla Sedan', 74, NULL, NULL),
(927, 'Aygo', 74, NULL, NULL),
(928, 'Hilux', 74, NULL, NULL),
(929, 'Dyna', 74, NULL, NULL),
(930, 'Land Cruiser 200', 74, NULL, NULL),
(931, 'Verso', 74, NULL, NULL),
(932, 'Iq', 74, NULL, NULL),
(933, 'Urban Cruiser', 74, NULL, NULL),
(934, 'Gt86', 74, NULL, NULL),
(935, '100', 75, NULL, NULL),
(936, '121', 75, NULL, NULL),
(937, '214', 76, NULL, NULL),
(938, '110 Stawra', 76, NULL, NULL),
(939, '111 Stawra', 76, NULL, NULL),
(940, '215', 76, NULL, NULL),
(941, '112 Stawra', 76, NULL, NULL),
(942, 'Passat', 77, NULL, NULL),
(943, 'Golf', 77, NULL, NULL),
(944, 'Vento', 77, NULL, NULL),
(945, 'Polo', 77, NULL, NULL),
(946, 'Corrado', 77, NULL, NULL),
(947, 'Sharan', 77, NULL, NULL),
(948, 'Lupo', 77, NULL, NULL),
(949, 'Bora', 77, NULL, NULL),
(950, 'Jetta', 77, NULL, NULL),
(951, 'New Beetle', 77, NULL, NULL),
(952, 'Phaeton', 77, NULL, NULL),
(953, 'Touareg', 77, NULL, NULL),
(954, 'Touran', 77, NULL, NULL),
(955, 'Multivan', 77, NULL, NULL),
(956, 'Caddy', 77, NULL, NULL),
(957, 'Golf Plus', 77, NULL, NULL),
(958, 'Fox', 77, NULL, NULL),
(959, 'Eos', 77, NULL, NULL),
(960, 'Caravelle', 77, NULL, NULL),
(961, 'Tiguan', 77, NULL, NULL),
(962, 'Transporter', 77, NULL, NULL),
(963, 'Lt', 77, NULL, NULL),
(964, 'Taro', 77, NULL, NULL),
(965, 'Crafter', 77, NULL, NULL),
(966, 'California', 77, NULL, NULL),
(967, 'Santana', 77, NULL, NULL),
(968, 'Scirocco', 77, NULL, NULL),
(969, 'Passat Cc', 77, NULL, NULL),
(970, 'Amarok', 77, NULL, NULL),
(971, 'Beetle', 77, NULL, NULL),
(972, 'Up', 77, NULL, NULL),
(973, 'Cc', 77, NULL, NULL),
(974, '440', 78, NULL, NULL),
(975, '850', 78, NULL, NULL),
(976, 'S70', 78, NULL, NULL),
(977, 'V70', 78, NULL, NULL),
(978, 'V70 Classic', 78, NULL, NULL),
(979, '940', 78, NULL, NULL),
(980, '480', 78, NULL, NULL),
(981, '460', 78, NULL, NULL),
(982, '960', 78, NULL, NULL),
(983, 'S90', 78, NULL, NULL),
(984, 'V90', 78, NULL, NULL),
(985, 'Classic', 78, NULL, NULL),
(986, 'S40', 78, NULL, NULL),
(987, 'V40', 78, NULL, NULL),
(988, 'V50', 78, NULL, NULL),
(989, 'V70 Xc', 78, NULL, NULL),
(990, 'Xc70', 78, NULL, NULL),
(991, 'C70', 78, NULL, NULL),
(992, 'S80', 78, NULL, NULL),
(993, 'S60', 78, NULL, NULL),
(994, 'Xc90', 78, NULL, NULL),
(995, 'C30', 78, NULL, NULL),
(996, '780', 78, NULL, NULL),
(997, '760', 78, NULL, NULL),
(998, '740', 78, NULL, NULL),
(999, '240', 78, NULL, NULL),
(1000, '360', 78, NULL, NULL),
(1001, '340', 78, NULL, NULL),
(1002, 'Xc60', 78, NULL, NULL),
(1003, 'V60', 78, NULL, NULL),
(1004, 'V40 Cross Country', 78, NULL, NULL),
(1005, '353', 79, NULL, NULL),
(1006, 'Mini', 53, NULL, NULL),
(1007, 'Countryman', 53, NULL, NULL),
(1008, 'Paceman', 53, NULL, NULL),
(1009, 'Voyage', 77, NULL, NULL),
(1010, 'Up', 77, NULL, NULL),
(1011, 'Gol', 77, NULL, NULL),
(1012, 'Saveiro', 77, NULL, NULL),
(1013, 'Suran', 77, NULL, NULL),
(1014, 'Bora', 77, NULL, NULL),
(1015, 'Amarok', 77, NULL, NULL),
(1016, 'Prisma', 14, NULL, NULL),
(1017, 'Onix', 14, NULL, NULL),
(1018, 'Corsa', 14, NULL, NULL),
(1019, 'Astra', 14, NULL, NULL),
(1020, 'Montana', 14, NULL, NULL),
(1021, 'Hilux', 74, NULL, NULL),
(1022, 'Etios', 74, NULL, NULL),
(1023, 'Corolla', 74, NULL, NULL),
(1024, 'Ecosport', 26, NULL, NULL),
(1025, 'Sandero', 61, NULL, NULL),
(1026, 'Duster', 61, NULL, NULL),
(1027, 'Logan', 61, NULL, NULL),
(1028, 'Megane', 61, NULL, NULL),
(1029, 'Partner', 58, NULL, NULL),
(1030, 'Zuzuki', 71, NULL, NULL),
(1031, 'Strada', 25, NULL, NULL),
(1032, 'Siena', 25, NULL, NULL),
(1033, 'Clio', 61, NULL, NULL),
(1034, 'V15', 80, NULL, NULL),
(1035, '520', 81, NULL, NULL);

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
(1, 'Acepto permuta', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'No acepto', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Santa Fe', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
-- Estructura de tabla para la tabla `sucursals`
--

CREATE TABLE `sucursals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sucursals`
--

INSERT INTO `sucursals` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Iriondo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Calle 47', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Alcántara', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Cuero', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Cuero y alcántara', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Cuero y tela', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Tela', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, '2T', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, '3 Cilindros', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, '4 Cilindros', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, '4T', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, '5 Cilindros', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, '6 Cilindros en línea', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(7, 'Aspirado', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(8, 'Biturbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(9, 'Bóxer', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(10, 'Bóxer Turbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(11, 'Turbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(12, 'Twin Turbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(13, 'V12', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(14, 'V6', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(15, 'V6 BiTurbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(16, 'V6 Turbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(17, 'v6 TwinTurbo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(18, 'V8', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Auto/Camioneta', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Camión', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Cuatriciclo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Moto', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Náutica', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, 'Otros', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, '4x2', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, '4x4', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'Delantera', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Integral', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, 'Trasera', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
  `rol` enum('administrador','vendedor') COLLATE utf8mb4_unicode_ci NOT NULL,
  `estado` enum('Activado','Desactivado') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `rol`, `estado`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Fernando Pereyra', 'fer@correo.com', NULL, '$2y$10$fVdo1Q8wxTb7/2WEmztCHebbl9YxzFPlzZjz3JmUqscDD.TmCQ0bi', 'administrador', 'Activado', NULL, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Lucas Goi', 'lucaspaduangoi@gmail.com', NULL, '$2y$10$X9ImSoQrDUiEibIGnibqduguYZ98mkLaV02YSqYgyTWxtSb1es8PC', 'administrador', 'Activado', NULL, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'usuario vendedor', 'vendedor@correo.com', NULL, '$2y$10$t6oj7iRYtOTbSh9ZK5AYcuoadm1q.Cpf1aspFKsIKOHCIjWHh.ZZK', 'vendedor', 'Activado', NULL, '2022-05-05 14:09:03', '2022-05-05 14:09:03');

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
(1, 'Fijo', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, 'Negociable', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `auto_id` bigint(20) UNSIGNED NOT NULL,
  `precio_costo` double(10,2) NOT NULL,
  `precio_venta` double(10,2) NOT NULL,
  `precio_ganancia` double(10,2) NOT NULL,
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
(1, '1.0', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(2, '1.4', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, '1.6', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, '1.8', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(5, '2.0', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(6, '2.2', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(7, '2.5', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(8, '3.2', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(9, '3.5', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(10, '4.0', '2022-05-05 14:09:03', '2022-05-05 14:09:03');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autos`
--
ALTER TABLE `autos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autos_marca_id_foreign` (`marca_id`),
  ADD KEY `autos_modelo_id_foreign` (`modelo_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `clientes_user_id_foreign` (`user_id`);

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
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
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
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_auto_id_foreign` (`auto_id`);

--
-- Indices de la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gastos_auto_id_foreign` (`auto_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `modelos_marca_id_foreign` (`marca_id`);

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
-- Indices de la tabla `sucursals`
--
ALTER TABLE `sucursals`
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
  ADD KEY `ventas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `ventas_auto_id_foreign` (`auto_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT de la tabla `datos`
--
ALTER TABLE `datos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT de la tabla `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1036;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sucursals`
--
ALTER TABLE `sucursals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autos`
--
ALTER TABLE `autos`
  ADD CONSTRAINT `autos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `autos_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_auto_id_foreign` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`);

--
-- Filtros para la tabla `gastos`
--
ALTER TABLE `gastos`
  ADD CONSTRAINT `gastos_auto_id_foreign` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_auto_id_foreign` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`),
  ADD CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
