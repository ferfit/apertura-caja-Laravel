-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-05-2022 a las 10:54:43
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
-- Base de datos: `agentcar_base`
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
  `descripcion` text COLLATE utf8mb4_unicode_ci,
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
