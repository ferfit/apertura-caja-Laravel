-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2022 a las 14:43:24
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
(1, 'Volkswagen Voyage 1.6 2014', NULL, 'Usado', 77, 1009, '1,6', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p><i><strong>Modelo 2014 con 134 mil km&nbsp;</strong></i></p><p><strong>TRABAJAMOS CON FINANCIACIONES Y RECIBIMOS USADOS!</strong></p><h3><strong>Aire acondicionado, dirección asistida y cinturones traseros de tres puntos.</strong></h3><h3><strong>Motor de cuatro cilindros de 1.6 litros e inyección multipunto, que entrega 101 caballos de fuerza a 5.250rpm y un torque de 143Nm a 2.500rpm</strong></h3><p><strong>Su tanque de combustible tiene una capacidad de 55lts. Una de las características más llamativas es su maletero que tiene una capacidad de 480litros.</strong></p><p><strong>CONSULTAS:&nbsp;</strong></p><p><strong>3482622320 Adriàn&nbsp;</strong></p><p><strong>3482523688 Raul&nbsp;</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana</strong></p><p><strong>DIRECCIONES: BV. HIPOLITO YRIGOYEN E IRIONDO Y CALLE 47 AL 1395, RECONQUISTA.</strong></p>', '2022-05-06 03:00:00', '2022-05-19 21:59:15'),
(2, 'Volkswagen UP 1.0 Take AA 2016', NULL, 'Usado', 77, 1010, '1,0', 2016, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2016 CON 130 MIL KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES.</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>La versión de entrada a gama se llama Take Up!&nbsp;</p><p>viene con volante y butaca del conductor con ajuste en altura,&nbsp;aire acondicionado,&nbsp;dos apoyacabezas traseros y equipo de audio con CD/Bluetooth/MP3/Aux/USB.&nbsp;</p><p><strong>MECÁNICA:</strong>&nbsp;Motor naftero de tres cilindros (el segundo auto con esta configuración en la Argentina, después del Smart), con 999 centímetros cúbicos de cilindrada, cuatro válvulas por cilindro, inyección electrónica multipunto, 75 cv a 6.250 rpm.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-17 18:11:21'),
(3, 'Chevrolet Prisma 1.4 LS 2017', NULL, 'Usado', 14, 1016, '1,4', 2017, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2017, CON 77.000km, IMPECABLEE!&nbsp;</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES.</strong></p><p><strong>RECIBIMOS USADOS DE MENOR Y MAYOR VALOR!</strong></p><p>Aire acondicionado, Asiento trasero con respaldo rebatible, Espejos exteriores rebatibles manualmente, Levantavidrios eléctricos delanteros,Radio AM/FM, Bluetooth®, USB, AUX IN y 2 parlantes,Sistema de retención infantil ISOFIX1.</p><p><strong>CONSULTAS:&nbsp;</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl&nbsp;</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:54:10'),
(4, 'Toyota Hilux 3.0L SRV 4X2 2011', NULL, 'Usado', 74, 1021, '3,0', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011, EN MUY BUEN ESTADO!&nbsp;</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES.&nbsp;</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>Su consumo acompaña: a 130 km/h requiere de un litro de gasoil para rodar poco más de 10 kilómetros, lo que le permite alcanzar una autonomía neta de más de 800 km.</p><p>Este modelo lo logra: tiene una dirección liviana que se hace fundamental, una caja que se combina de manera exacta y suave, basta con tocar el embriague suavemente para pasar los cambios.</p><p>Si bien es una pick up que uno pude imaginar para tareas rurales o para la práctica off road, la Hilux es también una excelente compañera en la ciudad.&nbsp;</p><p>CONSULTAS:</p><p><strong>3482622320 Adriàn&nbsp;</strong></p><p><strong>3482523688 Raùl&nbsp;</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:55:38'),
(5, 'Volkswagen Gol Trend 1.6 Hihgline 2013', NULL, 'Usado', 77, 1011, '1,6', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 80.000KM, EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOT Y MENOR VALOR!</strong></p><p>Aire acondicionado, dirección asistida, computadora de a bordo I-sistema y Radio tipo Doble DIN con CD/MP3-Bluetooth, SD Card y USB (con cuatro parlantes y dos tweaters), ​faros antiniebla delanteros y traseros. Un equipamiento básico para nada despreciable teniendo en cuenta la realidad de nuestro mercado en ese segmento.</p><p>Volante multifunción que permite operar el equipo del audio de forma intuitiva,&nbsp;levantacristales eléctricos, cierre centralizado de puertas con comando a distancia, permite operar las funciones de la computadora de a bordo, el audio y el sistema Bluetooth.</p><p>Capacidades del tanque de combustible (55 litros) y el baúl (285 dm3).&nbsp;</p><p>Con motor naftero de 1.6 litros, cuatro cilindros en línea, ocho válvulas y un árbol de levas a la cabeza comandado por correa dentada, que se alimenta por una inyección multipunto.&nbsp; Con esta configuración logra alcanzar una potencia de 101 CV&nbsp; y obtener buenas prestaciones en agilidad y consumo.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>34823136009 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:57:47'),
(6, 'Chevrolet Onix LTZ 1.4 2015', NULL, 'Usado', 14, 1017, '1,4', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 102.000KM, EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, CON MINIMA ENTREGA Y SALDO EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Levantavidrios y espejos eléctricos, computadora de a bordo y cierre centralizado. Poniéndonos en minuciosos, criticamos la ausencia de comandos en el volante para operar el equipo de audio, al menos para subir y bajar el volumen, sistema MyLink de conectividad, un multimedia de información y entrenamiento que trabaja mediante una interface a través de una pantalla táctil color de 7 pulgadas ubicada en el centro de la consola que permite la interacción entre el vehículo y diversos dispositivos electrónicos para reproducir música de archivos MP3, y ver fotos y videos, en definitiva, lleva todo el contenido multimedia del usuario a su auto. No tiene CD, pero posee Bluetooth, puerto USB, entrada Auxiliar.</p><p>Monta el evolucionado naftero 1.4 de 98 caballos, un motor de 8 válvulas e inyección multipunto.&nbsp;</p><p>El instrumental es el ya conocido tipo moto, con info digital para el velocímetro, nivel de combustible y odómetro.</p><p><strong>CONSULTA:</strong></p><p><strong>3482622320 Adriàn&nbsp;</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:04:24'),
(7, 'Ford Ranger 3.0 XL 4X2 2009', NULL, 'Usado', 26, 320, '3,0', 2009, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2009 CON 220.000KM, UNICA EN SU ESTADO!</strong></h2><p><strong>RETIRALA CON UNA MINIMA ENTREGA Y SALDO EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS MAYOR O MENOR VALOR!</strong></p><p>Cuenta con equipo de aire acondicionado, computador de abordo, columna de dirección regulable en altura al igual que el asiento, ajuste lumbar de la butaca del conductor,&nbsp;4&nbsp;cornamusas exterior en la caja de carga,&nbsp;radio con CD/MP3 – Plug in.</p><p>La suspensión delantera es de pralolagramo deformable, barra de torsión, amortiguadores a gas y barra estabilizadora, en la trasera fueron reubicados la posición de los amortiguadores ampliando la distancia entre ellos.</p><p>En cuanto al comportamiento la suspensión es un poco mas blanda que otras Pick up del segmento, siendo apta tanto para ciudad como para el transito off road.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:05:20'),
(8, 'Renault Sandero Stepway 1.6 16v 2016', NULL, 'Usado', 61, 1025, '1,0', 2016, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2016&nbsp;CON 130.000KM, EN EXCELENTE CONDICIONES! ES SUBIRTE Y DISFRUTAR!</strong></h2><p><strong>RETIRALA CON UNA ENTREGA Y SALDO EN CUOTAS FIJA!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>El Renault Sandero Stepway seguirá los mismo fundamentos de Renault Sandero, confiabilidad y habitabilidad.</p><p>Sandero pudiendo transportar a cinco apasajeros adultos en forma confortable sumado a su capacidad de baúl de 320 dm3.</p><p>Con una motorizacion de 1600 cm3 16Válulas de 112 CV.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:09:22'),
(9, 'Toyota Etios 1.5 XLS Sedan 2018', NULL, 'Usado', 74, 1022, '1,5', 2018, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2018 CON SOLO 28.000KM, IMPECABLE!!</strong></h2><p><strong>RETIRALO CON UNA ENTREGA Y SALDO A FINANCIAR EN CUOTAS FIJAS Y EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Los cambios del&nbsp;<strong>nuevo Toyota Etios</strong>&nbsp;pasan por su frente recibiendo una nueva parrilla un tanto más angosta que el modelo anterior y un nuevo paragolpes que dispone de una mayor entrada de aire en la parte inferior.</p><p>con pantalla TFT de 4,2 pulgadas al igual que la motorización que dispone&nbsp;<strong>1,5 litros de 88 CV.&nbsp;</strong>Respecto a las cajas también hay novedades; la manual de seis marchas.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:12:40'),
(10, 'Volkswagen Gol Trend 1.6 sportline 2015', NULL, 'Usado', 77, 1011, '1,6', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 109.000KM, EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS.</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS!</strong></p><p>Sigue con el conocido motor 1.6 8v de 101 cv a 5.250 rpm y 143 Nm a 2.500 rpm. Caja manual de cinco velocidades, tracción delantera.</p><p>una versión basada en la carrocería cinco puertas con equipamiento Trendline que se diferencia por la parrilla específica, las llantas de 16 pulgadas bitono de nuevo diseño, las ópticas traseras con máscara oscura, y carcasas de espejos en color negro. En el interior se distingue por los detalles en rojo (costura del volante, salidas de aire y asientos) y agrega volante multifunción y sensores de estacionamiento traseros al listado de equipamiento.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:13:26'),
(11, 'Ford Ecosport 1.6 XL Plus 4x2 2011', NULL, 'Usado', 26, 1024, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 145.000KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS!</strong></p><p><strong>Dirección y transmisión</strong></p><ul><li>Dirección :&nbsp;Hidráulica</li><li>Control de tracción :&nbsp;Delantera</li><li>Numero de velocidades :&nbsp;5</li></ul><p><strong>Seguridad</strong></p><ul><li>Airbag para conductor y pasajero</li><li>Alarma</li><li>Apoya cabeza en asientos traseros</li><li>Desempañador trasero</li><li>Tercera luz de freno led</li></ul><p><strong>Confort y conveniencia</strong></p><ul><li>Aire acondicionado</li><li>Alarma de luces encendidas</li><li>Sensor de luz</li><li>Asiento conductor regulable en altura</li><li>Asiento trasero rebatible</li></ul><p><strong>Exterior</strong></p><ul><li>Limpia/lava luneta</li><li>Porta equipaje en techo</li></ul><p><strong>Sonido</strong></p><ul><li>AM/FM</li><li>Bluetooth</li><li>CD</li><li>Reproductor de MP3</li></ul><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:19:25'),
(12, 'Ford Fiesta Max Ambiente 1.6 2007', NULL, 'Usado', 26, 306, '1,6', 2007, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2007 CON 155.000KM, EN EXCELENTE CONDICIONES!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS!</strong></p><p>El Ford Fiesta es uno de los vehículos con más historia dentro del segmento B. Nada menos que&nbsp;<strong>seis generaciones</strong>&nbsp;enmarcan la historia de este vehículo</p><p>El baúl tiene la posibilidad de ampliar su capacidad gracias a las plazas trasera rebatibles en 1/3 – 2/3 y que permite alojar cargas de distinto tamaño y volumen, siendo la capacidad del mismo con las plazas traseras ocupadas de 487 dm3.</p><p>está equipado con aire acondicionado, alarma de luces encendidas, apertura interna del baúl, apyacabezas delanteros y traseros ajustables en altura, dirección de potencia.</p><p>Además cuenta con&nbsp;radio AM-FM con reproductor de CD MP3 y conexión auxiliar.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-19 20:11:15'),
(13, 'Peugeot 308 Active 1.6 2013', NULL, 'Usado', 58, 699, '1,6', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 93.000KM, EN EXCELENTE CONDICIONES!!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS VEHICULOS DE MAYOR Y MENOR VALOR!</strong></p><ul><li>Asiento del conductor regulable en altura</li><li>Regulación de altura de luces manual</li><li>Alzacristales eléctricos secuencial con antipinzamiento delanteros y traseros</li><li>Guantera refrigerada</li><li>Volante regulable en altura y profundidad</li><li>ABS</li><li>REF repartidor electrónico de frenado</li><li>AFU asistencia al de frenado de urgencia</li><li>Airbags frontales conductor y pasajeros</li><li>Antiarranque electrónico con llave codificada</li><li>Volante colapsable</li><li>Cierre centralizado de puertas con Plip</li><li>Seguridad manual en puertas traseras para niños</li><li>Corte automático de combustible en accidente</li><li>Cinturones de seguridad inerciales con limitador de esfuerzo en plazas laterales</li><li>Encendido automático de las luces de emergencia</li><li>Faros antiniebla delanteros</li><li>Faro antiniebla trasero</li><li>Dirección asistida variable</li><li>Espejos retrovisores exteriores con mando eléctrico</li><li>Computadora de abordo multifunción</li><li>Volante forrado en cuero</li><li>Radio AM/FM con CD MP3 y WMA</li><li>Comando radio al volante</li></ul><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:26:37'),
(14, 'Volkswagen Saveiro Cabina Extendida 1.6 2014', NULL, 'Usado', 77, 1012, '1,6', 2014, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2014 CON 115.000KM, IDEAL PARA EL TRABAJO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS.</strong></p><p><strong>RECIBIMOS VEHICULO DE&nbsp; MENOR Y MAYOR VALOR!</strong></p><p>Con el reconocido motor 1.6 EA-111 VHT que desarrolla 101 CV, asociado a una transmisión manual MQ200 de cinco marchas.</p><p>Son 734 litros los que conforman el volumen de carga, un buen espacio para una camioneta de 4,49 m de largo.</p><p>ofrece dirección asistida; aire acondicionado; traba de puertas en rodaje; levantavidrios eléctricos con sistema one touch; y equipo de audio con CD, MP3, entrada auxiliar, tarjeta SD y también Bluetooth. En materia de seguridad obtiene una buena nota al incluir frenos ABS y el doble airbag frontal.&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-30 19:31:00'),
(15, 'Ford Focus II 1.6 S 2014', NULL, 'Usado', 26, 303, '1,6', 2014, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2014 CON 106.000KM, EN EXCELENTE CONDICIONES!&nbsp;</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES! EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>Esta versión S del Focus III es la única que viene con el motor Sigma 1.6 de 125 cv</p><p>La dirección está asistida eléctricamente y, para el uso urbano, es cómoda, liviana y directa. Andando en ruta a altas velocidades me hubiese gustado que la asistencia fuese menor.&nbsp;<strong>Plancha de instrumentos de diseño moderno.</strong></p><p><strong>Tablero completo y de fácil lectura. Volante multifunción.&nbsp;</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn&nbsp;</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-19 20:12:20'),
(16, 'Volkswagen Voyage 1.6 pk2 2011', NULL, 'Usado', 77, 1009, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 152.000KM, IMPECABLE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Aire acondicionado, dirección asistida y cinturones traseros de tres puntos,&nbsp;alzacristales eléctricos, asientos traseros bipartido, cierre centralizado de puertas, espejos de cortesí­a iluminados, luz de lectura, regulación eléctrica de espejos exteriores, volante con ajuste de altura y profundidad, molduras laterales en color carrocerí­a, airbag para conductor y acompañante y alarma antirrobo.</p><p>El equipo de audio puede solictarse con Bluetooth, entrada USB, SD Card y memo recorder, pudiéndose comandar las funciones de audio desde el volante, el cual posee posibilidad de regularse en altura y profundidad.</p><p>La motorización que impulsa al Voyage es un impulsor de 1600 cm3 de 4 cilindros, 2 válvulas por cilindro, potencia de 101 CV, con una transmisión manual de 5 velocidades.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raul&nbsp;</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:53:01'),
(17, 'Bajaj V15 150 cc 2018', NULL, 'Usado', 80, 1034, '150cc', 2018, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>LLEVALA 100% FINANCIADA! EN CUOTAS FIJAS!</strong></h2><p><strong>CON SOLO EL DNI Y EN CUOTAS FIJAS!&nbsp;</strong></p><h2><strong>MODELO 2018 CON 25.000KM, EN EXCELENTE ESTADO!</strong></h2><figure class=\"table\"><table><tbody><tr><th>Motor</th><td>Monocilíndrico, 4 tiempos, 4 válvulas, SOHC, refrigerado por aire</td></tr><tr><th>Cilindrada</th><td>149,5 cc</td></tr><tr><th>Potencia máxima</th><td>12,2 cv @ 7.500 rpm</td></tr><tr><th>Velocidad máxima</th><td>110 km/h</td></tr><tr><th>Alimentación</th><td>Carburador</td></tr><tr><th>Encendido</th><td>Digital con doble bujía</td></tr><tr><th>Arranque</th><td>Eléctrico</td></tr><tr><th>Transmisión</th><td>5 velocidades</td></tr></tbody></table></figure><p>&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482662320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:49:18'),
(18, 'Volkswagen Voyage 1.6 Pk3 2009', NULL, 'Usado', 77, 1009, '1,6', 2009, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2009 CON 134.000KM, EN MUY BUEN ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR&nbsp; Y MENOR VALOR.</strong></p><p><strong>Con un baúl de 480 litros, se destaca por su impecable diseño, el más atractivo de su peleado segmento.</strong></p><p>con un motor nafta de 1.6 litros de 101 CV,&nbsp;Su disposición es transversal, lo que proporciona excelente desempeño y bajo consumo, con un torque elevado en bajas rotaciones.</p><p>El equipamiento de seguridad también comprende doble airbag, los comentados antiniebla y cuatro juegos de apoyacabezas y cinturones inerciales,&nbsp;comando de cierre a distancia, ABS y doble Airbags.&nbsp;</p><p>Airbags conductor y pasajero.</p><p>Volante multifunción, controles de bluetooth</p><p>Volante multifunción controles de audio.</p><p>Levantavidrios eléctricos y destrabe de tapa de baúl.</p><p>Radio AM FM CD+MP´+BLUETOOTH+SD CardÚSB</p><p>Aire acondicionado y calefacción.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:46:03'),
(19, 'CHEVROLET CORSA 2 1.8 GL AA/DH 2007', NULL, 'Usado', 14, 1018, '1,8', 2007, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2005 CON 15.000 X AÑO! EN EXCELENTE ESTADO!&nbsp;</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES! ENTREGA MINIMA Y SALDO EN CUOTAS FIJAS!&nbsp;</strong></p><p><strong>RECIBIMOS MOTOS POR PARTE DE PAGO!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR VALOR!</strong></p><p><strong>SE ENCUENTRA EN EXCELENTE ESTADO! TIENE HECHO AMORTIGUADORES NUEVOS, CUBIERTAS AL 80%, CAMBIO DE CORREO Y BOMBA DE AGUA.</strong></p><p><strong>TÈCNICA VIGENTE!&nbsp;</strong></p><p><strong>AIRE Y DIRECCION, LEVANTA CRISTALES, CIERRE CENTRALIZADO, FAROS ANTINIEBLAS!</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-20 12:19:52'),
(20, 'Chevrolet Onix 1.4 LT 2014', NULL, 'Usado', 14, 1017, '1,4', 2014, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2014 CON 90.000 KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR Y MAYOR VALOR!</strong></p><p>Tiene motor 1.4 de 98 CV, caja manual de 5 marchas y un equipamiento acorde.</p><p>incorpora el mencionado y novedoso sistema MyLink de conectividad,&nbsp;una pantalla táctil color de 7 pulgadas ubicada en el centro de la consola que permite la interacción entre el vehículo y diversos dispositivos electrónicos para reproducir música de archivos MP3, y ver fotos y videos, No tiene CD, pero posee Bluetooth, puerto USB, entrada Auxiliar.</p><p>frenos ABS con EBD, airbags frontales, aviso de colocación de cinturón de seguridad para conductor, y apoyacabezas delanteros y traseros regulables en altura.</p><p>ofrecer un habitáculo bastante generoso y un baúl que no está nada mal: 280 litros de capacidad. Debajo del piso lleva rueda de auxilio temporal; es decir, de medida más pequeña que las montadas y para ser utilizada hasta 80 km/h como máximo.&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:14:08'),
(21, 'Chevrolet Onix 1.4 JOY+ 2018', NULL, 'Usado', 14, 1017, '1,4', 2018, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2018 CON 70.000KM, IMPECABLE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, EN CUOTAS FIJAS Y MINIMA ENTREGA!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR Y MAYOR VALOR!</strong></p><p>con el conocido motor 1.4 8v (98 cv y 126 Nm). Caja manual de cinco velocidades, tracción delantera.</p><p>Cuenta con aire acondicionado, direccion hidraulica, levanta cristale electricos delanteros!</p><p>Excelente estado! Con tecnica vigente!&nbsp;</p><p><strong>CONSULTAS:&nbsp;</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:10:47'),
(22, 'Suzuki 1.4 L/N 3ptas 2011', NULL, 'Usado', 71, 1030, '1,4', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 109.000KM, EN MUY ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, EN CUOTAS FIJAS Y MINIMA ENTREGA!&nbsp;</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR O MAYOR VALOR.</strong></p><p><strong>Con motor 1.4 de 85 CV.</strong></p><p>Los comandos de ventilación cuentan con nuevo diseño, son eficientes las respuestas del forzador de aire y del selector de temperatura. El equipamiento de serie cuenta con aire acondicionado y reproductor de CD.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 21:47:03'),
(23, 'VOLKSWAGEN SURAN 1.6 TRENDLINE 2017', NULL, 'Usado', 77, 1013, '1,6', 2017, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2017 CON 35.000KM, IMPECABLEE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR O MAYOR VALOR!</strong></p><p>Con dirección de asistencia eléctrica, aire acondicionado, volante multifunción, equipo de audio con CD/MP3/USB/SD/Bluetooth, computadora de abordo, llantas de acero de 15 pulgadas, frenos ABS, doble airbag frontal y alerta de olvido de cinturón de seguridad,&nbsp;retrovisores de ajuste eléctrico y levantavidrios eléctricos delanteros y traseros.&nbsp;</p><p>Motor 1.6 8v de 101 cv y caja manual de cinco velocidades.&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn&nbsp;</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:47:23'),
(24, 'Dorado 520 con Motor 40HP 2018', NULL, 'Usado', 81, 1035, '40HP', 2018, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2018 CON 10hs De marcha! impecable! Equipo con GPS.</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, MINIMA ENTREGA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS&nbsp; USADOS DE MENOR Y MAYOR VALOR!</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:50:00'),
(25, 'Toyota Hilux 3.0 SRV 4X2 2013', NULL, 'Usado', 74, 1021, '3,0', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 180.000KM, IMPECABLE!!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, CON MINIMA ENTREGA Y CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Cuenta con volante multifunción de cuatro rayos de diseño en concordancia con la consola, que en la versión SRV incorpora comando remoto de audio y control del Bluetooth® .&nbsp;cuentan con pantalla táctil color de 6,1″ que sirve como monitor de la cámara de estacionamiento, reproductor de CD y MP3, Bluetooth® y 6 parlantes.</p><p>sistema de Control de Estabilidad (VSC), sistema de Control de Tracción (TRC), ABS con sistema de Distribución Electrónica de la Fuerza de Frenado (EBD) y sistema de Asistencia al Frenado (BA).</p><p>El&nbsp;<strong>motor diesel D-4D de 3.000 cm3</strong>&nbsp;y 16v DOHC, que genera 171 CV, está disponible en las versiones SRV y SR, posee turbo TGV, Intercooler, Common Rail e inyección directa.</p><p>nuevo diseño de espejos retrovisores con luz de giro incorporada y llantas de 17″ en la versión SRV.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:53:29'),
(26, 'Ford Focus II 2.0 Trend Plus 2010', NULL, 'Usado', 26, 303, '2,0', 2010, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2010 CON 119.000KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, MINIMA ENTREGA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Si algo destaca a este Focus es la parrilla inferior de forma trapezoidal y de grandes dimensiones, junto al nuevo paragolpes, ópticas, guardbarros y capot que le dan un aire no solo deportivo sino agresivo.&nbsp;</p><p>ofrece una amplia área de carga con una capacidad de 319 litros fácilmente accesible gracias al ancho del portón posterior,respaldo traseros divisibles en 60/40 que pueden plegarse hacia adelante permitiendo transportar cargas mayores y más voluminosas.</p><p>Está equipado con un sistema de audio Sony con reproductor de CD y MP3 con 6 parlantes brindando un sonido de alta fidelidad. Asimismo cuenta con la posibilidad de marcar un número de teléfono y comunicarse mediante manos libres con el sistema de control de voz y BluetoothÂ®. El climatizador automático de doble zona permite seleccionar la temperatura tanto para conductor como para el pasajero en forma individual.</p><p>Espejo retrovisor interior fotocromático, Guantera refrigerada, Levantacristales delanteros y traseros eléctricos,&nbsp;&nbsp;Techo solar eléctrico, Volante, palanca de cambios y freno de mano forrados en cuero.</p><p><strong>CONSULTO:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:54:58'),
(27, 'Renault Sandero Stepway 1.6 16v Privilege 2015', NULL, 'Usado', 61, 1025, '1,6', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 82.000KM, IMPECABLE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><ul><li>Aire acondicionado y dirección asistida</li><li>Apertura interna de baúl y tanque de combustible</li><li>Asiento del conductor y volante regulable en altura</li><li>Sistema de audio con CD, Mp3, entrada aux, USB, conectividad Bluetooth, Plug in y comando satelital</li><li>Computadora de a bordo</li><li>Climatizador automático</li><li>Control de velocidad crucero</li><li>Llantas de aleación de 16″</li><li>Palanca de cambios revestida en cuero</li><li>Limitador y regulador de velocidad</li><li>Alzacristales eléctricos traseros</li><li>Media NAV con pantalla táctil de 7” y GPS</li><li>Sensores de estacionamiento</li></ul><h2><strong>CONSULTAS:</strong></h2><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:30:19'),
(28, 'Chevrolet Cruze 1.8 LTZ 5PTAS 2013', NULL, 'Usado', 14, 143, '1,8', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 99.000KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, CON ENTREGA MINIMA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Tapizados de cuero en butacas y volante; techo solar; climatizador; sensores trasero de estacionamiento con camara; equipo de audio con CD, MP3 y entrada auxiliar; computadora de a bordo (con pocas funciones, las básicas) y cruise control.</p><p>Seguridad: doble airbag frontal, airbags laterales delanteros y airbags tipo cortina; frenos ABS con repartidor de presión; controles de estabilidad y tracción; ganchos Isofix; antinieblas delanteros; cierre automático de puertas en rodaje y encendido automático de luces.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:40:39'),
(29, 'Chevrolet Corsa 2 1.8 GLS 2005', NULL, 'Usado', 14, 1018, '1,8', 2005, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2005 CON 15.000 X AÑO! EN EXCELENTE ESTADO!&nbsp;</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES! ENTREGA MINIMA Y SALDO EN CUOTAS FIJAS!&nbsp;</strong></p><p><strong>RECIBIMOS MOTOS POR PARTE DE PAGO!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR VALOR!</strong></p><p><strong>SE ENCUENTRA EN EXCELENTE ESTADO! TIENE HECHO AMORTIGUADORES NUEVOS, CUBIERTAS AL 80%, CAMBIO DE CORREO Y BOMBA DE AGUA.</strong></p><p><strong>TÈCNICA VIGENTE!&nbsp;</strong></p><p><strong>AIRE Y DIRECCION, LEVANTA CRISTALES, CIERRE CENTRALIZADO, FAROS ANTINIEBLAS!</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p>', '2022-05-06 03:00:00', '2022-05-19 20:09:23'),
(30, 'FORD FOCUS III 2.0 SE 2015', NULL, 'Usado', 26, 303, '2,0', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 91.000KM, IMPECABLEEE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, CON ENTREGA MINIMA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Motor&nbsp;de 4 cilindros y 16 válvulas:&nbsp;2<strong>.0 Duratec 170 CV con caja manual de quinta.</strong></p><p>El Control de Estabilidad (ESC) con control de Tracción (TCS) y Control de Torque en Curvas (TVC),&nbsp;tablero central se suma la pantalla de<strong>&nbsp;4.2”</strong>&nbsp;de fácil lectura donde se puede visualizar toda la información de manejo, consumo, velocidad y configuraciones del vehículo.</p><p>Además del control de estabilidad es sin dudas la tercera generación del sistema de conectividad&nbsp;<strong>SYNC 3</strong>&nbsp;que permite la integración de un Smartphone y el acceso a las aplicaciones de navegación.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:43:14'),
(31, 'FORD FOCUS III 1.6 S SEDAN 2016', NULL, 'Usado', 26, 303, '1,6', 2016, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2016 CON 109.000KM, EN EXCELENTE ESTADO!</strong></h2><h3><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA ,CUOTAS FIJAS Y EN PESOS!</strong></h3><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Motor naftero&nbsp;de 4 cilindros y 16 válvulas:&nbsp;<strong>1.6 Sigma 125 CV con caja manual de cinco velocidades.</strong></p><p>Equipamiento,&nbsp;tablero central se suma la pantalla de<strong>&nbsp;4.2”</strong>&nbsp;de fácil lectura donde se puede visualizar toda la información de manejo, consumo, velocidad y configuraciones del vehículo.</p><p>Además del control de estabilidad es sin dudas la tercera generación del sistema de conectividad&nbsp;<strong>SYNC 3</strong>&nbsp;que permite la integración de un Smartphone y el acceso a las aplicaciones de navegación.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:46:00'),
(32, 'Peugeot 208 1.5 Active 2016', NULL, 'Usado', 58, 720, '1,5', 2016, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2016 CON 44.000KM, IGUAL A 0KM.</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA, CUOTAS FIJAS Y EN PESOS.</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Motor naftero: una de&nbsp;<strong>1.5 litros y 90 caballos</strong>&nbsp;a 5.500 rpm, y un torque máximo de 132 Nm a 3.000 rpm.&nbsp;transmisión manual de cinco velocidades.</p><p>Con correctos niveles de calidad y equipamiento y un andar confortable.</p><p>Aire y direccion, levanta cristales electricos delanteros, cierre a distancia, computadora a bordo.</p><h2><strong>consultas:</strong></h2><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:49:46'),
(33, 'Volkswagen Bora 2.0 Trendline 2011', NULL, 'Usado', 77, 1014, '2,0', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 113.000KM, EXCELENTE ESTADO!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y SALDO EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>Encontramos motorizacion, el 2.0 litros de 115 HP.&nbsp;caja manual de cinco velocidades.</p><p>airbags, ABS, inmovilizador electronico, alarma acustica, cierre automatico de critales, corte de inyeccion de combustible en caso de accidente.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-19 22:08:12'),
(34, 'Renault Duster Oroch 1.6 Dynamique 2016', NULL, 'Usado', 61, 1026, '1,6', 2016, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2016 CON 55.000KM, IMPECABLEE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y CUOTAS FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p><strong>Motor</strong><br>1.6 L 16 v, 110 cv, 5 marchas.</p><p>&nbsp;</p><ul><li>Airbag conductor y pasajero</li><li>Alarma perimetral</li><li>Barra antivuelco (San Antonio)</li><li>Cierre centralizado de puertas</li><li>Dirección asistida</li><li>Frenos ABS con EBD y AFU</li><li>Proyectores antiniebla</li><li>Barras de techo longitudinales</li><li>Llantas de aleación de 16″</li><li>Neumáticos de uso mixto – 215 / 65 R 16″</li><li>Protector de caja de carga</li><li>Retrovisores externos color carrocería</li><li>Aire acondicionado</li><li>Asiento del conductor regulable en altura</li><li>Comando satelital de audio y telefonía</li><li>Conexión Bluetooth® para audio y teléfono</li><li>Eco-mode</li><li>Equipo de audio con 4 parlantes, CD, Mp3 y 3D sound by Arkamis con conexión USB/Ipod y auxiliar</li><li>Levantacristales con comando eléctrico con función impulsión</li><li>Volante regulable en altura</li></ul><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:52:18'),
(35, 'Ford Focus II 1.6 Trend 2011', NULL, 'Usado', 26, 303, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 130.000KM, EN EXCELENTE CONDICIONES!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN &nbsp;CUOTAS FIJAS Y EN PESOS.</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS! DE MAYOR O MENOR VALOR!</strong></p><p>ventanillas de accionamiento eléctrico, cierre centralizado y comando a distancia, junto con los espejos, computadora de a bordo y climatizador manual. También cuenta con la posibilidad de gobernar el equipo de audio desde el volante. A nivel seguridad cuenta con ABS, dos airbags y cuatro frenos de disco.&nbsp;</p><p>este Focus incorpora al equipamiento básico del inicio de gama (Style) las llantas de aleación, las luces antiniebla y un combo estético compuesto por spoiler, espejos y manijas de puerta del mismo color que la carrocería.</p><p>el motor Sigma de 1.596 cc. con cuatro válvulas por cilindro, capaz de entregar 110 caballos de fuerza a 6000 rpm (por cierto, un régimen alto).&nbsp;</p><p><strong>Consumo</strong></p><p>El rendimiento de este motor 1.6 tiene valores de performance muy lógicos, aunque los de consumo podrían ser mejorados. A 130 km/h consume poquito menos de nueve litros cada 100 km.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-30 19:30:21'),
(36, 'Ford Ecosport 1.6 SE 2015', NULL, 'Usado', 26, 1024, '1,6', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 87.000KM, IMPECABLEE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR CON LA TASA MAS BAJA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Aire acondicionado,&nbsp;Cierre centralizado de puertas,&nbsp;&nbsp;Control satelital de audio en volante,&nbsp;Columna de dirección reg. en altura y prof,&nbsp;Levantacristales delanteros eléctricos c/»One Touch» para conductor,&nbsp;Radio con conectividad USB/Plug In y Bluetooth®,&nbsp;Display multifunción de 3,5»,&nbsp;Sistema de conectividad Sync® con control por voz para dispositivos,&nbsp;Airbag frontal p/ conductor y acompañante,&nbsp;Alarma de luces encendidas y puertas abiertas,&nbsp;Frenos ABS en las 4 ruedas,&nbsp;Sistema ISOFIX en asientos traseros,&nbsp;Sistema inmovilizador de motor,&nbsp;Sist.activación de balizas y desbloqueo de puertas post-colisión,&nbsp;Traba de puertas para niños en puertas traseras,&nbsp;Espejos ext.eléct. c/ visor de punto ciego,Faros antiniebla delanteros,&nbsp;Neumáticos 205 / 65 R15.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 19:58:31'),
(37, 'Toyota Hilux 3.0 DC SRV 4X2 2015', NULL, 'Usado', 74, 1021, '3,0', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 250.000KM, IMPECABLEE!</strong></h2><p><strong>ENTREGA MINIMA Y SALDO A FINANCIAR EN CUOTAS FIJAS Y EN PESOS! CON UNA TASA BAJA!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>el volante multifunción dispone del manejo de la computadora de a bordo y el equipo de audio.&nbsp;Cuenta con alarma sonora de luces, se puede abrir desde el interior el tanque de combustible y el estéreo cuenta con mp3;&nbsp;&nbsp;todo el kit eléctrico, elevavidrios para las cuatro puertas, bloqueo centralizado y bloqueo de vidrios.</p><p>Aire acondicionado automático, dos conectores de 12 voltios y un puerto USB, espacios en la consola central para acomodar los objetos personales, una guantera central con descansabrazos.</p><p>La seguridad es uno de los factores más estudiados por parte de Toyota, su carrocería GOA, frenos ABS con EBD y BA, airbag para el conductor y el pasajero, cinturones de seguridad retractiles de 3 puntos en los cinco asientos, columna de dirección y pedales colapsibles.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:00:34'),
(38, 'Chevrolet Prisma 1.4 LTZ 2013', NULL, 'Usado', 14, 1016, '1,4', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 84.000KM, EN EXCELENTE ESTADO!!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y SALDO EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>&nbsp;En este caso viene por el lado de la conectividad, con el sistema&nbsp;<strong>MyLink</strong>&nbsp;de pantalla táctil,&nbsp;una pantalla color de siete pulgadas, que permite conectar toda clase de dispositivos electrónicos, reproducir música, fotos y videos. Los aparatos se conectan mediante Bluetooth, puerto USB o Auxiliar.</p><p>Airbags frontales para conductor y acompañante,Aire acondicionado,&nbsp;Asiento de conductor regulable en altura,&nbsp;ABS con distribución electrónica de frenado, Alarma, cierre centralizado, computadora de abordo, espejos eléctricos y sensor estacionamiento trasero,&nbsp;Cierre automático de puertas en velocidad,&nbsp;Cinturones delanteros de 3 puntos con regulación en altura,&nbsp;Inmovilizador de motor,&nbsp;Luces antiniebla delanteras,&nbsp;Sistema de alarma antirrobo,&nbsp;Trabas para niños en puertas traseras,&nbsp;Cierre centralizado de puertas c/ comando a distancia,&nbsp;Columna de dirección regulable en altura,&nbsp;Computadora de a bordo.</p><p><strong>La suspensión, la dirección y las relaciones de caja del Prisma están pensadas para un uso urbano.</strong></p><p><strong>El veterano motor 1.4 8v recibió cambios. Ahora es más silencioso y económico.</strong></p><p><strong>El baúl tiene generosos 500 litros de capacidad.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-06-01 14:28:29');
INSERT INTO `autos` (`id`, `titulo`, `patente`, `condicion`, `marca_id`, `modelo_id`, `version`, `año`, `preciocosto`, `precio`, `sucursal`, `ciudad`, `provincia`, `estado`, `imagenPortada`, `tipo`, `kilometraje`, `combustible`, `tipomotor`, `traccion`, `cajaauto`, `color`, `tapizado`, `direccion`, `valor`, `permuta`, `descripcion`, `created_at`, `updated_at`) VALUES
(39, 'Renault Clio 1.2 16v Authentique 2012', NULL, 'Usado', 61, 1033, '1,2', 2012, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2012 CON 140.000KM, EN MUY BUEN ESTADO!!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, ENTREGA MINIMA Y SALDO EN CUOTAS/ TASA FIJAS!</strong></p><p><strong>RECIBIMOS&nbsp; VEHICULOS DE MAYOR Y MENOR VALOR!</strong></p><p>&nbsp;<strong>motorización</strong>&nbsp;1.2 de 75 CV y transmisión manual de 5 marchas,&nbsp;</p><p>– Aire acondicionado de 4 velocidades</p><p>– Dirección asistida<br>– Calefactor, desempañador de 4 velocidades</p><p>– Cinturones de seguridad delanteros inerciales con limitador de esfuerzo LEI<br>– Cinturones de seguridad traseros laterales de 3 puntos y central ventral<br>– Apoyacabezas delanteros regulables en altura</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 20:06:34'),
(40, 'Volkswagen Gol Trend 1.6 pk1 2012', NULL, 'Usado', 77, 1011, '1,6', 2012, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2012 CON 70.000KM, IMPECABLEE!</strong></h2><p><strong>ENTREGA MINIMA Y SALDO A FINANCIAR EN CUOTAS FIJAS Y EN PESOS.!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Con motor naftero de&nbsp;1.6 litros y 101 CV,&nbsp;doble airbag frontal, las barras de protección lateral en las puertas y las zonas de deformación programada ante posibles impactos.</p><p>apoyacabezas delanteros y traseros, asiento de conductor regulable en altura, y radio con CD y MP3,&nbsp;dirección hidráulica y aire acondicionado.</p><p>el Gol Trend acelera de 0 a 100 km/h en&nbsp;9,8 segundos&nbsp;y desarrolla una velocidad máxima de&nbsp;190 km/h.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-20 14:04:52'),
(41, 'Chevrolet Astra 2.0 GLS 2011', '', 'Usado', 14, 1019, '2,0', 2011, 0.00, 0.00, '', 'Reconquista', 'Santa Fe', 'Desactivado', '', '', 0, '', '', '', '', '', '', '', '', '', '', '2022-05-06 03:00:00', '2022-05-17 19:08:06'),
(42, 'Ford Fiesta Kinetic Design 1.6 trend 2011', NULL, 'Usado', 26, 306, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 132.000 KM, EXCLENTE ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJA!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Un motor Sigma nafta de 1.6L de 120CV de potencia con una transmisión manual de cinco velocidades, computadora de abordo, Dirección Asistida en Forma Electrónica (EPAS) y un baúl cuya capacidad de carga alcanza los 362 litros.</p><p>Un reproductor de CD/MP3 componen el sistema de audio Premium,&nbsp;ire acondicionado manual de accionamiento electrónico, butaca del conductor regulable en altura, cierre central de puertas con comando a distancia, columna de dirección regulable en altura y profundidad, levantacristales delanteros con sistema «One Touch» para el conductor y parabrisas laminado acústico.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-17 19:07:53'),
(43, 'Chevrolet Montana 1.8 LS 2012', NULL, 'Usado', 14, 1020, '1,8', 2012, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2012 CON 165.000 KM, EN MUY BUEN ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><h2><strong>Es una solución inteligente para el trabajo cotidiano y el esparcimiento del fin de semana!</strong></h2><p>&nbsp;Incluye audio con interconectividad y distintos formatos de reproducción de música, Bluetooth, pack eléctrico, control de velocidad crucero, computadora de abordo, sensor de luz.</p><p>Por el lado de la seguridad, el ABS, la dupla de airbags.&nbsp;La dirección responde fielmente los mandatos del conductor y si elegimos el ritmo veloz.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:42:03'),
(44, 'Chevrolet Aveo 1.6 LT 2011', NULL, 'Usado', 14, 138, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 119.000 KM, TU AUTO IDEAL!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p>La versión LT cuenta con levantavidrios eléctricos, apertura eléctrica desde el interior y desde la llave, del baúl y del tanque de combustible, (agradecidos los días de lluvia y cuando venimos muy cargados). Los espejos exteriores mantienen el mismo color de la carrocería y son eléctricos.&nbsp;cuenta con EBD, ABS, dos airbags frontales y tres cinturones inerciales.</p><h2><strong>El Aveo es un sedán familiar urbano, y lo que ofrece en este sentido, sin parafernalia, es una gama de respuesta a todas y cada una de las necesidades del potencial comprador.</strong></h2><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-17 19:06:28'),
(45, 'Renault Logan 1.6 8v 2011', NULL, 'Usado', 61, 1027, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 124.000 KM, IMPECABLE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTA Y TASA FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p><strong>Confort y seguridad</strong></p><p>Asiento y columna de dirección regulables en altura. De serie viene con dirección asistida; aire acondicionado; radio AM/FM con reproductor de CD, MP3, entrada auxiliar y comandos satelitales.&nbsp;</p><p><strong>Motor</strong></p><p>El propulsor naftero de 4 cilindros (8 válvulas) de 1.598 cc se comporta de manera eficiente. Proporciona una notable agilidad para la ciudad asegurando una marcha confortable y sin tironeos, debido a una buena asociación con una caja manual de 5 marchas.&nbsp;</p><p><strong>En movimiento</strong></p><p>La robustez de marcha es la cualidad que prima en el Logan. Ese ese tipo de autos que permiten circular por la ciudad sin miedo al rigor propiciado baches, lomos de burro, badenes, adoquinado o pasos a nivel. Es dócil, se lo lleva sin inconvenientes ya que tiene una dirección suave, aunque su radio no es el mejor. La insonorización es un aspecto que mejoró mucho y la visibilidad no acarrea inconvenientes. En ruta muestra una tendencia al rolido, pero sin compromiso de la trayectoria.</p><h2><strong>CONSULTAS:</strong></h2><h2><strong>3482622320 Adriàn</strong></h2><h2><strong>3482523688 Raùl</strong></h2><h2><strong>3482271411 Rodrigo</strong></h2><h2><strong>3482313609 Daiana&nbsp;</strong></h2>', '2022-05-06 03:00:00', '2022-05-17 19:07:37'),
(46, 'Toyota Corolla XLI 1.8 MT6 2011', NULL, 'Usado', 74, 1023, '1,8', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 130.000KM, EXCELENTE ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO FINANCIADO EN CUOTAS Y TASAS FIJA EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR Y MENOR VALOR!</strong></p><p>ª luz de stop<br>Airbags frontales<br>Climatizador<br>Asiento conductor regulable en altura<br>Asiento trasero rebatible<br>Cierre central con mando a distancia<br>Computadora<br>Levantacristales eléctricos del/tras<br>Radio c/CD, MP3<br>Sistema de alarma e inmovilizador electrónico<br>Volante&nbsp; multifunción, regulable en altura y profundidad&nbsp;</p><p>Censores de estacionamiento</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:31:02'),
(47, 'Volkswagen Gol Trend 1.6 Pk1 2013', NULL, 'Usado', 77, 1011, '1,6', 2013, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2013 CON 124.000 KM, TU AUTO IDEAL!!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Aire Acondicionado<br>AM/FM CD<br>Butaca Delantera Regulable en Altura<br>Cierre Central de Puertas<br>Desempaniador de Luneta Trasera<br>Direccion Asistida<br>PuertoUSB<br>Stereo con MP3</p><p>Transmisión: Manual 5 velocidades<br>Neumáticos: 175/70/R14</p><p>&nbsp;Motor&nbsp;<strong>1.6 litros de 101 CV.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:08:35'),
(48, 'Volkswagen Amarok 2.0 Trendline 4x2 2010', NULL, 'Usado', 77, 1015, '2,0', 2010, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2010 CON 171.000KM, IMPECABLEE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS DE MENOR VALOR!</strong></p><p>Amarok se conforma con un compacto motor tetracilíndrico TDI de dos litros con culata biárbol multiválvula de aleación ligera y 163 CV.</p><p>ABS, ESP, seis airbags, control de tracción… son solo algunos ejemplos. La postura al volante, aunque elevada, es como la de un turismo, con unos asientos cómodos pero a los que les falta algo de sujección lateral,&nbsp;sistema de aire acondicionado,&nbsp;toma auxiliar o el USB.&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-17 19:06:50'),
(49, 'Chevrolet Cruze 1.4t LTZ AUT 2017 sedan', NULL, 'Usado', 14, 143, '1,4', 2017, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2017 CON 75.000KM, IMPECABLE!!&nbsp;</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJA EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS DE MNOR Y MAYOR VALOR!&nbsp;</strong></p><p>Tapizado en cuero, climatizador automático,&nbsp; pantalla con GPS, Apple CarPlay, Android Auto y cámara de retroceso, llantas de aleación de 17″, computadora de abordo, asiento con regulación eléctrica, sensores de estacionamiento, 6 airbags, ABS, EBD, control de estabilidad, control de tracción, control de velocidad crucero, alerta de punto ciego, sistema de medición de vehículo delantero, alerta de colisión frontal inminente, asistente para mantenimiento de carril, sistema avanzado de estacionamiento asistido, faros rompeniebla, levanta cristales y espejos eléctricos, sensores de lluvia y crepuscular, cierre centralizado, alarma, arranque a distancia.</p><p>el mismo motor Turbo de 1.4 litros y 153 CV que el modelo sedan.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:04:09'),
(50, 'Renault Sandero Stepway 1.6 16v Luxe 2010', NULL, 'Usado', 61, 1025, '1,6', 2010, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2010 CON 147.000 KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJA EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS DE MENOR Y MAYOR VALOR!</strong></p><p>Los faros rompeniebals incorporados al paragolpes, el logo de Stepway en las puertas delanteras, los estribos laterales, el deflectro trasero sobre el techo y el canalizador de aire en la parte inferior trasera.</p><p>quipo de audio con CD, MP3, entrada USB y Auxiliar, manos libres Bluetooth y comando satelital; aire acondicionado; computadora de a bordo; asiento del conductor con regulación en altura al igual que la columna de dirección; levantavidrios eléctricos.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adrian</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 17:00:48'),
(51, 'Volkswagen Gol Trend 1.6 PK1 2011', NULL, 'Usado', 77, 1011, '1,6', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011&nbsp;CON 124.000KM, IMPECABLEE!</strong></h2><p><strong>ENTREGA MINIMA Y SALDO A FINANCIAR EN CUOTAS FIJAS Y EN PESOS.!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Con motor naftero de&nbsp;1.6 litros y 101 CV,&nbsp;doble airbag frontal, las barras de protección lateral en las puertas y las zonas de deformación programada ante posibles impactos.</p><p>apoyacabezas delanteros y traseros, asiento de conductor regulable en altura, y radio con CD y MP3,&nbsp;dirección hidráulica y aire acondicionado.</p><p>el Gol Trend acelera de 0 a 100 km/h en&nbsp;9,8 segundos&nbsp;y desarrolla una velocidad máxima de&nbsp;190 km/h.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 16:54:47'),
(52, 'Volkswagen Gol Power 1.4 3ptas 2011', NULL, 'Usado', 77, 1011, '1,4', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011&nbsp;CON 115.000KM, IMPECABLEE!</strong></h2><p><strong>ENTREGA MINIMA Y SALDO A FINANCIAR EN CUOTAS FIJAS Y EN PESOS.!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Gol Power incorpora una nueva motorización de 1.400 cm3 que tendrá 83 CV,mejorará en un 7% el consumo de combustible respecto al motor 1.6.</p><p>Las barras de protección lateral en las puertas y las zonas de deformación programada ante posibles impactos.</p><p>apoyacabezas delanteros y traseros, asiento de conductor regulable en altura, y radio con CD y MP3,&nbsp;dirección hidráulica y aire acondicionado.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 16:34:06'),
(53, 'Renault Megane III 2.0 Privil?ge 2012', NULL, 'Usado', 61, 1028, '2,0', 2012, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2012 CON 120.000KM, IMPECABLEE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO FINACIADO EN CUOTAS Y TASA FIJAS!&nbsp;</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>Equipamiento principal: 6 airbags, conductor y pasajero, laterales y de cortina, encendido automático de luces y de limpiaparabrisas por sensor de lluvia, ABS + AFU, climatizador automático digital bi-zona, audio CD MP3 + USB + CBOX,&nbsp;techo solar eléctrico, sensores traseros de ayuda al estacionamiento, retrovisores exteriores plegables, con comando eléctrico, regulador de velocidad, tarjeta llave manos libres que permite el arranque, apertura y cierre del vehículo con sólo tener la tarjeta dentro del habitáculo o baúl, llantas de aleación de 16″ y caja manual de 6 velocidades.&nbsp;control de trayectoria ESP, control de tracción ASR, espejo retrovisor antiencandilante, detector de presión de neumáticos, navegador satelital integrado con cartografía regional, tapizado en cuero.</p><p>El baúl tiene una capacidad de 368 dm3 el cual posee una ancha apertura de baúl,&nbsp;&nbsp;un sistema de navegación GPSCarminat Tom Tom integrado al tablero con cartografía regional.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-17 19:06:05'),
(54, 'Ford Fiesta Kinetic 1.6 S Plus 2014', NULL, 'Usado', 26, 306, '1,6', 2014, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2014 CON 140.000KM, EN EXCENTE ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p><strong>Motor </strong>1<strong>.6L Sigma con tecnología Ti-VCT de 120CV y 152 N</strong>m, motor que combina potencia y eficiencia en consumo de combustible.</p><ul><li>Sistema de conectividad SYNC con pantalla multifunción de 3.5”</li><li>Control por voz para dispositivos</li><li>Radio AM/FM con reproductor de CD/MP3, USB, Plug In y Bluetooth®</li><li>Sistema de audio con 6 parlantes (incluye tweeters)</li><li>Control satelital de audio en volante</li><li>MyKey®</li><li>Levantacristales eléctricos delanteros y traseros con sistema “One touch”</li><li>Alarma antirrobo perimetral</li><li>Sistema Antibloqueo de Frenos (ABS)</li><li>Distribución Electrónica de Frenado (EBD)</li><li>Aire acondicionado manual</li><li>Cierre centralizado de puertas</li><li>Computadora a bordo&nbsp; &nbsp; &nbsp;&nbsp;</li></ul><h2><strong>CONSULTAS:</strong></h2><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 16:27:02'),
(55, 'Peugeot Partner 1.6 HDI 2PLC 2018', NULL, 'Usado', 58, 1029, '1,6', 2018, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Desactivado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2018 CON SOLO 46.000KM, IMPECABLEEEE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASAS FIJAS EN PESOS.</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR O MAYOR VALOR!</strong></p><p>Son 620 litros debajo de la placa cubre equipaje, que se pliega en tercios para aumentar gradualmente el volumen. Si se abaten las butacas traseras, la capacidad aumenta a 2.800 litros.</p><p>El equipamiento de confort incluye aire acondicionado, levantavidrios manuales, volante regulable en altura y computadora de a bordo. El equipo de audio tiene reproductor de CD y archivos MP3,&nbsp;con Bluetooth, entrada auxiliar,&nbsp;comandos satelitales al volante.</p><p>&nbsp;Motor propulsor turbodiesel 1.6, que reemplaza al 1.9 aspirado de 71 CV,&nbsp;Con un torque de 215 Nm a 2.000 rpm, entrega una respuesta notablemente más contundente que el anterior diésel, con un consumo mixto promedio de sólo 5,4 litros, lo que permite alcanzar una autonomía de 1.000 km (la marca asegura que no es necesario cargar combustible premium, sino que puede utilizar el denominado diésel grado 2).</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo&nbsp;</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p><p><br>&nbsp;</p>', '2022-05-06 03:00:00', '2022-05-17 19:07:19'),
(56, 'Fiat Strada 1.4 Wordkin', NULL, 'Usado', 25, 1031, '1,4', 2011, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2011 CON 115.000KM, IMPECABLE! IDEAL PARA EL TRABAJO DIARIO!</strong></h2><p><strong>MINIMA ENTREGA Y FINANCIACIONES EN CUOTAS Y TASA FIJAS EN PESOS!</strong></p><p><strong>TRABAJAMOS CON PERMUTAS! RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR.</strong></p><h2><strong>Motor Fire 1.4 de 8 válvulas</strong>, que entrega 87 caballos a 5.700 vueltas y 123 Nm de torque a 3.500 rpm.</h2><p>Aire acondicionado, Direccion asitida Hidraulica, excelente de mecanica, tecnica vigente!&nbsp;</p><p>IDEAL PARA EL TRABAJO!&nbsp;</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 16:21:08'),
(57, 'Volkswagen Gol Power 1.6 3ptas 2010', NULL, 'Usado', 77, 1011, '1,4', 2010, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2010 CON 164.000KM, EN EXCELENTE ESTADO!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJA!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MENOR O MAYOR VALOR!</strong></p><p><strong>Aire acondicionado y direcciòn asistida hidraulica, llantas deportiva.</strong></p><p><strong>Tecnica Vigente, servicios al dia!</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 16:15:28'),
(58, 'Volkswagen Saveiro 1.6 C/Ext 2014', NULL, 'Usado', 77, 1012, '1,6', 2014, 0.00, 0.00, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', '', 'Auto/Camioneta', 115000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Blanco', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<h2><strong>MODELO 2014 CON 115.000KM, IMPECABLE!</strong></h2><p><strong>IDEAL PARA EL TRABAJO!&nbsp;</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR EN CUOTAS Y TASA FIJAS!</strong></p><p><strong>RECIBMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p><strong>Aire acondicionado, Direccion asistida&nbsp;Hidraulica, levanta cristales electricos, cierre y alarma, llantas de aleaciòn, comandos al volante, computadora a bordo.</strong></p><p><strong>Servicios al dia! Tecnica Vigente. Nada para hacerle!</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-06-03 13:35:33'),
(59, 'Volkswagen Gol Trend 1.6 2021', NULL, 'Usado', 77, 1011, '1,6', 2021, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2021 CON SOLO 7.000KM, IGUAL A 0KM!</strong></h2><p><strong>CON ENTREGA MINIMA Y SALDO A FINANCIAR EN SALDO Y TASA FIJAS EN PESOS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAENOR O MAYOR VALOR!</strong></p><p>el Gol viene con soporte para el teléfono celular con puerto USB de carga, para que tus manos estén siempre en el volante, en su exterior un frente más robusto y firme. Sus líneas definidas y su nuevo diseño de parrilla,&nbsp;le dan una impronta inconfundible.</p><ul><li>Dirección asistida</li><li>Asiento de conductor con ajuste de altura</li><li>Soporte para celular \"Dockstation\"</li><li>Aire acondicionado</li><li>Computadora de abordo</li><li>Llantas de acero de 14\"</li></ul><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 13:44:29', '2022-05-06 15:08:20'),
(60, 'Volkswagen Voyage 1.6 PK1 2010', NULL, 'Usado', 77, 1009, '1,6', 2010, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2010 CON 159.000KM, EN MUY BUENAS CONDICIONES!&nbsp;</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A&nbsp; FINANCIAR EN CUOTAS Y TASA FIJA EN PESOS.</strong></p><p><strong>RECIBIMOS USADOS DE MENOR O MAYOR VALOR!</strong></p><p><strong>Aire acondicionado, Direccion asistida Hidraulica, Cierre y alarma, excelente de cubiertas.</strong></p><p><strong>Tecnica vigente y servicios al dia!&nbsp;</strong></p><p>&nbsp;sedán su baúl que tiene una capacidad de 480 dm3,&nbsp;apoyacabezas traseros, 4 parlantes, apertura interna del baúl, asiento de conductor regulable en altura, asiento trasero abatible,&nbsp;&nbsp;cinturones de seguridad de tres puntos e inmovilizador electrónico.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo&nbsp;</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 13:44:26', '2022-05-06 15:02:38'),
(61, 'Fiat Siena 1.4 EL SEDAN 2015', NULL, 'Usado', 25, 1032, '1,4', 2015, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2015 CON 109.000KM, IMPECABLE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A&nbsp; FINANCIAR.</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>Aire acondicionado, Direccion Hidraulica, Levanta cristales electricos delanteros, cierre y alarma, computadora a bordo, stereo FM/AM.</p><p>Tècnica Vigente, excelente estado! Con servicios al dia!</p><p>Con el conocido impulsor Fire&nbsp;<strong>1.4</strong>&nbsp;8v de 85 cv de potencia.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 14:45:58'),
(62, 'Toyota Corolla 1.8 XEI MT6 2014', NULL, 'Usado', 74, 1023, '1,8', 2014, 0.00, 0.00, NULL, 'Reconquista', 'Santa Fe', 'Activado', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<h2><strong>MODELO 2014 CON 73.000 KM, IMPECABLE!</strong></h2><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>aire acondicionado, levantavidrios eléctricos, dirección hidráulica, espejos exteriores eléctricos retráctiles con luz de giro incorporada y un equipo de audio CD/MP3/USB/AUX con 4 parlantes.&nbsp;Sistema Antibloqueo de Frenos (ABS) y Distribución Electrónica de Frenado (EBD), para asistir al conductor en frenadas de riesgo, en condiciones de poca adherencia o luego de cometer una maniobra imprevista.</p><p>En el baúl no había mucho por cambiar, pues conserva los 470 litros. Una capacidad destacada para que viaje una familia. Incluso el volumen puede extenderse rebatiendo los respaldos traseros en proporción 60/40.&nbsp;</p><p>El cuadro de instrumentos se compone de cuatro indicadores analógicos que representan las funciones del velocímetro, cuentavueltas y medidores de nivel de combustible y temperatura de agua del motor. A su vez, en el centro del panel aparece un display digital con datos suministrados por la computadora de a bordo: tiempo de viaje, autonomía, consumo instantáneo, kilometraje, entre otros.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-06 03:00:00', '2022-05-06 15:00:32'),
(63, 'Vendo toyotola corolla 2015', '234YIO', 'Usado', 74, 915, '1.6', 2015, NULL, 0.00, 'Calle 47', 'Reconquista', 'Santa Fe', 'Desactivado', NULL, 'Auto/Camioneta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Aca poenen la decripcion&nbsp;</p>', '2022-05-16 22:23:00', '2022-05-17 15:04:48'),
(64, 'TOYOTA ETIOS 1.5 XLS', NULL, 'Usado', 74, 1022, '1.4', 2014, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 104000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Blanco', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<h3><strong>MODELO 2014 CON 104.000KM, EN EXCLENTE ESTADO!&nbsp;</strong></h3><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 MESES.</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR &nbsp;VALOR!</strong></p><p><strong>Con una única motorización naftera de 1.5 litros de 90 CV y una caja manual de cinco velocidades. llantas de aleación de 15” con un formato multirrayos sobre neumáticos de medidas 185/60 R15.&nbsp;</strong></p><p><strong>Aire acondicionado, dirección asistida eléctricamente, cierre centralizado con comando a distancia y levantavidrios en las cuatro ventanillas, comandos satelitales al volante como una buena incorporación de asistencia a la conducción y un equipo de audio con CD, MP3 y USB.</strong></p><p><strong>La apertura interna de la tapa de combustible y el baúl, y el cierre centralizado con comando a distancia ayudan a economizar movimientos y a malcriar al conductor.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p><p><strong>3482271411 Rodrigo</strong></p>', '2022-05-17 19:03:40', '2022-05-17 19:03:40'),
(65, 'FORD FOCUS III 2.0 SE', NULL, 'Usado', 26, 303, '2.0', 2015, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 91000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Blanco', 'Cuero', 'Hidráulica', 'Negociable', 'Acepto permuta', '<h2><strong>MODELO 2015 CON 91.000KM, IMPECABLEEE!</strong></h2><p><strong>TRABAJAMOS CON FINANCIACIONES, CON ENTREGA MINIMA Y EN CUOTAS FIJAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR Y MENOR VALOR!</strong></p><p>Motor&nbsp;de 4 cilindros y 16 válvulas:&nbsp;2<strong>.0 Duratec 170 CV con caja manual de quinta.</strong></p><p>El Control de Estabilidad (ESC) con control de Tracción (TCS) y Control de Torque en Curvas (TVC),&nbsp;tablero central se suma la pantalla de<strong>&nbsp;4.2”</strong>&nbsp;de fácil lectura donde se puede visualizar toda la información de manejo, consumo, velocidad y configuraciones del vehículo.</p><p>Además del control de estabilidad es sin dudas la tercera generación del sistema de conectividad&nbsp;<strong>SYNC 3</strong>&nbsp;que permite la integración de un Smartphone y el acceso a las aplicaciones de navegación.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482622320 Adriàn</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-19 21:50:43', '2022-05-19 21:50:43'),
(66, 'CHEVROLET CRUZE 1.8 LTZ', NULL, 'Usado', 14, 143, '1.8', 2012, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 71000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Gris', 'Cuero', 'Hidráulica', 'Negociable', 'Acepto permuta', '<h3><strong>MODELO 2012 CON 71.000KM, IGUAL A NUEVO! EXCLENTE ESTADO!</strong></h3><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>La capacidad del baúl es acorde al tamaño del vehículo siendo de 450 dm3, La motorización naftera de 1.796 cm3 que equipa al Chevrolet Cruze LTZ posee inyección de combustible multipunto con una potencia de 141 CV de 4 cilindros y 16 válvulas.</p><p>una pantalla nos permite observar parámetros como la temperatura exterior, temperatura del climatizador, estación de radio, indicador de salida de flujo de aire y velocidad de salida de aire entre otros, debajo todos los comandos y botones que permiten controlar el equipo de audio con CD y MP3 al cual carece de entrada de puerto USB. Mas abajo se ubican los comando del climatizador, . En el volante se ubican los controles del volumen del equipo de audio, mute y activación de la velocidad crucero con controles tipo ruedita para el cambio de emisora de radio y para variar la velocidad del control crucero.</p><p>Climatizador automático – Volante y palanca de cambios forrados en cuero – Cierre centralizado con comando a distancia – Computadora de abordo – Control de velocidad crucero – Espejo interior electrocrómico – Espejos exteriores en color carrocería, rebatibles eléctricamente y calefaccionados – Alzacristales delanteros y traseros eléctricos – Regulación eléctrica de faros – Sensor de estacionamiento trasero – Sensor de lluvia.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-20 13:56:22', '2022-05-20 13:56:22'),
(67, 'VOLKSWAGEN FOX 1.6 COMFORTLINE', NULL, 'Usado', 77, 958, '1.6', 2010, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 109000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Verde', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<h3><strong>MODELO 2010 CON 109.000KM, &nbsp;EXCLENTE ESTADO!</strong></h3><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p>Es un MOTOR cuatro cilindros de 1.598 cc que entrega 101 CV de potencia a 5.250 rpm, un régimen menor respecto a la generación anterior que la conseguía a las 5.500 vueltas. La caja es manual de 5 marchas. Se trata de la MQ 200.</p><p>volante multifunción y el aire acondicionado ya mencionados, ofrece dirección asistida, sistema de audio con reproductor de MP3, conectividad Bluetooth y entradas para USB y SD Card. La computadora de a bordo contiene información sobre consumo instantáneo, promedio, distancias recorridas y duración de viaje, entre otras funciones.&nbsp;</p><p>seguridad trae doble airbag frontal, pero no frenos ABS.</p><p>La suspensión determina una marcha confortable en ciudad, favorecida por una dirección que trabaja suavemente. En ruta también se porta con buenos modales, sin embargo la altura de la carrocería lo hace algo sensible a vientos laterales.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-20 14:02:20', '2022-05-20 14:02:20'),
(68, 'FIAT STRADA 1.4 WORKING', NULL, 'Usado', 25, 1031, '1.4', 2011, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 115000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Blanco', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2011 CON 115.000KM, EXCELENTE ESTADO!&nbsp;</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p><strong>Dirección Asistida, Espejos retrovisores con comando interno, Fiat Code «¢ Molduras sobre pasarruedas, Neumáticos 175/70R 14, Puerta de caja removible y con llave, Protección motor y caja, Radio AM/FM con CD, Tacómetro, Vidrios tonalizados.</strong></p><p><strong>ofrece una capacidad de carga de 650 kilos. Impecable para su tamaño.</strong></p><p><strong>está equipada con el motor Fire 1.4.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p><p>&nbsp;</p>', '2022-05-21 14:13:53', '2022-05-21 14:13:53'),
(69, 'VOLKSWAGEN AMAROK 2.0TDI 4X2 TRENDLINE 140CV', NULL, 'Usado', 77, 970, '2.0', 2015, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 135000, 'Diesel', 'Turbo', '4x2', 'Manual', 'Blanco', 'Cuero y tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2015 CON 135.000KM, EN EXCELENTE ESTADO!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS! TASA PROMOCIONAL PARA ESTE MODELO!</strong></p><p><strong>Amarok Doble Cabina</strong> con motor de <strong>140 CV,</strong><i> </i>asociado a una caja manual de <strong>6 velocidades, </strong><i>b</i>asta con mencionar su consumo promedio de <strong>7,6 litros cada 100</strong> kilómetros, que le permite tener una autonomía de <strong>1.000 kilómetros</strong>.</p><p>frenos <strong>ABS Off-road</strong> con distribución electrónica de la fuerza de frenado<strong> (EBD)</strong> y asistente de frenada de emergencia <strong>(BA)</strong>, doble airbag frontal, control de tracción <strong>ASR</strong> y bloqueo electrónico de diferenciales <strong>EDL</strong>.</p><p>sistema de audio con AM/FM/CD/MP3, entrada USB, tarjeta SD, conexión auxiliar, Bluetooth, climatizador, toma de 12V y la guantera con llave.</p><p><strong>Confort, buen consumo y un interior preparado para las «batallas», dan un resultado excelente para un cliente.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-30 19:48:57', '2022-05-30 19:48:57'),
(70, 'VOLKSWAGEN GOL TREND 1.6', NULL, 'Usado', 77, 1011, '1.6', 2016, NULL, NULL, 'Calle 47', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 105000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Gris', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2016 CON 105.000KM, IMPECABLEE!</strong></p><p><strong>RECIBIMOS USADOS DE MENOR O MAYOR VALOR!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!&nbsp;</strong></p><p>- Aire acondicionado manual</p><p>-&nbsp;Asientos delanteros&nbsp;con ajuste en altura manual solo conductor</p><p>- Asientos con tapizado de tela</p><p>- Computadora de a bordo</p><ul><li>- Cierre centralizado</li></ul><p>- Llantas de acero de 14\" con taza</p><p>- Limpialuneta</p><p>- Frenos&nbsp;ABS</p><p>- Airbag para conductor y acompañante</p><p>-&nbsp;Tercera luz de stop</p><p>-&nbsp;Equipo de música con radio&nbsp;AM - FM y CD con lector de Mp3 y tarjetas SD&nbsp;</p><p>-&nbsp;Conexión auxiliar (iPod y Mp3) - Conexión USB - Interfaz bluetooth</p><p><strong>CONSULTAS:&nbsp;</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-30 19:59:58', '2022-05-30 19:59:58'),
(71, 'FORD RANGER 3.0 XLT 4X2', NULL, 'Usado', 26, 320, '3.2', 2010, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 146000, 'Diesel', 'Turbo', '4x2', 'Manual', 'Marron', 'Tela', 'Asistida', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2010 CON 146.000KM, IDEAL PARA EL TRABAJO!</strong></p><p><strong>RECIBIMOS USADOS DE MAYOR O MENOR VALOR!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p>Aire acondicionado, alzacristales eléctricos «one touch» delanteros y trasero, computador de abordo, columna de dirección regulable en altura al igual que el asiento, ajuste lumbar de la butaca del conductor, barra protectora de luneta cromada, 4 ganchos interiores y 8 cornamusas exterior en la caja de carga, apoyabrazos central en las plazas traseras, radio con CD/MP3 – Plug in, cierre centralizado de puertas, Fade in – Fade out y faros rompenieblas.</p><p>las cubiertas de 245-70 R16 del tipo Todo Terreno, con rango de velocidad de 180 km-hora y de 1150 kg de carga.</p><p>En cuanto a capacidad de carga la Nueva Ford Ranger par la versión que testeamos de cabina doble tiene una capacidad de carga de 750 kilogramos.</p><p>cuenta con frenos ABS en las cuatro ruedas, con discos ventilados delanteros y a tambor en los traseros. Los frenos poseen un sensor de desaceleración que mejora la distribución de la presión de frenado sobre las cuatro ruedas a traves del programa del ABS.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana</strong></p>', '2022-05-30 20:25:21', '2022-05-30 20:25:21'),
(72, 'PEUGEOT 207 1.6T 16V GTi', NULL, 'Usado', 58, 705, '1.6', 2012, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 97000, 'Nafta', 'Turbo', 'Delantera', 'Manual', 'Negro', 'Cuero', 'Electro-hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2012 CON 97.000km, Impecable! Unico en su estado!</strong></p><p><strong>RECIBIMOS USADOS DE MENOR O MAYOR VALOR!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!&nbsp;</strong></p><p><strong>Su cilindrada es de 1.598 cm3 DOHC (doble árbol de levas a la cabeza), 16 Válvulas con un turbo tipo Twin Scroll que se despierta a partir de las 1.400 rpm empujando sin detenerse, con una potencia de 156 CV, transmitiendo todo esa potencia al piso que se hace sentir.</strong></p><p><strong>La llantas de aleación son de 17 pulgadas de 8 rayos bitono diamantadas con cuatro bulones de sujeción cromados, La capacidad del baúl es de 270 dm3,Debajo del piso del baúl encontramos con gran agrado la cubierta de auxilio del tipo permanente y con la misma llanta de aleación que las calzadas en el 207 GTI.</strong></p><p><strong>el display de la computadora de abordo que brinda datos como: hora, fecha, emisora de radio, temperatura exterior, kilómetros a realizar con la carga de combustible disponible, consumo, kilometros recorridos, consumo instantaneo y el testigo de cinturones de seguridad colocados para cada plaza.</strong></p><p><strong>el equipo de sonido con lector de CD y MP3, más abajo el climatizador bizona con display que permite seleccionar la temperatura en forma independiente tanto para conductor como para acompañante.</strong></p><p><strong>calefaccionables, volante regulable en altura y profundidad, traba de puertas en movimiento, cierre centralizado con mando a distancia, climatizador bizona, computador de abordo, control de velocidad crucero, techo panorámico, sensores de lluvia, crepuscular y de estacionamiento.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-05-31 12:31:09', '2022-05-31 12:31:09'),
(73, 'CHEVROLET CLASSIC 1.4 LS', NULL, 'Usado', 14, 1018, '1.4', 2015, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 97000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Gris', 'Tela', 'Asistida', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2015 CON 97.000km, EN MUY BUEN ESTADO! SUPER ECONOMICO!</strong></p><p><strong>RECIBIMOS USADO SELECCIONADO DE MAYOR O MENOR VALOR!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong><br><strong>Dirección asistida; aire acondicionado; radio AM/FM con reproductor de CD, MP3, entrada auxiliar y USB.</strong><br><strong>El motor &nbsp;naftero 1.4 litro de 94 caballos, con sistema ETC Electronic Throttle Controller, que trabaja con un acelerador electrónico que permite lograr diferentes curvas de aceleración, favoreciendo a la reducción del consumo.</strong><br><strong>Con amplias plazas traseras, permite que cuatro personas viajen con absoluta comodidad haciendo uso de uno de los baúles más generosos del segmento con 430 litros.&nbsp;</strong><br><strong>CONSULTAS</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong><br>&nbsp;</p>', '2022-05-31 13:38:38', '2022-05-31 13:38:38'),
(74, 'CHEVROLET CRUZE 1.8 LTZ 4PTAS', NULL, 'Usado', 14, 143, '1.8', 2013, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 125000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Gris', 'Cuero', 'Hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2013 CON 125.000KM, EN EXCELENTE ESTADO!!</strong></p><p><strong>MINIMA ENTREGA Y SALDO A FINANCIAR HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADOS SELECCIONADOS DE MAYOR O MENOR VALOR!</strong></p><p>La capacidad del baúl es acorde al tamaño del vehículo siendo de 450 dm3,&nbsp;<br>La motorización naftera de 1.796 cm3 que equipa al Chevrolet Cruze LTZ&nbsp;<br>posee inyección de combustible multipunto con una potencia de 141 CV de 4 cilindros y 16 válvulas.</p><p>una pantalla nos permite observar parámetros como la temperatura exterior, temperatura del climatizador,&nbsp;<br>estación de radio, indicador de salida de flujo de aire y velocidad de salida de aire entre otros,&nbsp;<br>debajo todos los comandos y botones que permiten controlar el equipo de audio con CD y MP3 al cual carece de entrada de puerto USB.&nbsp;<br>Mas abajo se ubican los comando del climatizador, .<br>En el volante se ubican los controles del volumen del equipo de audio,<br>mute y activación de la velocidad crucero con controles tipo ruedita para el cambio de emisora de radio&nbsp;<br>y para variar la velocidad del control crucero.</p><p>Climatizador automático – Volante y palanca de cambios forrados en cuero –<br>Cierre centralizado con comando a distancia – Computadora de abordo –&nbsp;<br>Control de velocidad crucero – Espejo interior electrocrómico – Espejos exteriores en color carrocería,&nbsp;<br>rebatibles eléctricamente y calefaccionados – Alzacristales delanteros y traseros eléctricos –&nbsp;<br>Regulación eléctrica de faros – Sensor de estacionamiento trasero – Sensor de lluvia.</p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-06-01 13:11:40', '2022-06-01 13:11:40'),
(75, 'CITROEN C4 1.6L PACK LOOK', NULL, 'Usado', 16, 194, '1.6', 2012, NULL, NULL, 'Iriondo', 'Reconquista', 'Santa Fe', 'Activado', NULL, 'Auto/Camioneta', 104000, 'Nafta', '4 Cilindros', 'Delantera', 'Manual', 'Blanco', 'Tela', 'Hidráulica', 'Negociable', 'Acepto permuta', '<p><strong>MODELO 2012, CON 104.000km, Impecable!!</strong></p><p><strong>MINIMA ENTREGA Y SALDO FINANCIADO HASTA 48 CUOTAS!</strong></p><p><strong>RECIBIMOS USADO DE MENOR Y MAYOR VALOR!</strong></p><p><strong>Con motor de 110 CV ofrece un bajo consumo promedio, un elegante diseño que lleva el sello de la marca y un comportamiento ruta-ciudad que genera envidias a más de uno.</strong></p><p><strong>Apertura a distancia y cierre centralizado, levantavidrios y espejos eléctricos. seguridad suma ABS (con EBD y ayuda de emergencia en el frenado), ganchos Isofix, dos airbags, cerradura de puertas al iniciar la marcha y encendido de balizas automático en caso de panic stop. airbags laterales y de cortina y sensor de luz. La falta de luces antinieblas delanteras y de un tercer apoyacabezas trasero.</strong></p><p><strong>Un baúl con una capacidad mínima de 320 litros que se estira a 1.023 unidades gracias a la posibilidad de rebatir los respaldos 60/40. Correcto.</strong></p><p><strong>CONSULTAS:</strong></p><p><strong>3482523688 Raùl</strong></p><p><strong>3482271411 Rodrigo</strong></p><p><strong>3482313609 Daiana&nbsp;</strong></p>', '2022-06-03 13:32:42', '2022-06-03 13:32:42');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `marca_id` bigint(20) UNSIGNED DEFAULT NULL,
  `modelo_id` bigint(20) UNSIGNED DEFAULT NULL,
  `precioEstimado` double(15,2) DEFAULT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `celular`, `email`, `ciudad`, `provincia`, `nota`, `estado`, `origencliente`, `estadocliente`, `user_id`, `created_at`, `updated_at`, `marca_id`, `modelo_id`, `precioEstimado`, `tipo`) VALUES
(1, 'Fernando Pereyra', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', 'facebook', 'Activado', 1, '2022-05-05 14:09:03', '2022-05-05 14:09:03', NULL, NULL, NULL, NULL),
(2, 'Victoria Gonzalez', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'venta', 'facebook', 'Activado', 1, '2022-05-05 14:09:03', '2022-05-05 14:09:03', NULL, NULL, NULL, NULL),
(3, 'Sofia Ferreira', 1141774133, 'fer@correo.com', 'Tigre', 'Buenos Aires', 'busco auto entre 500.000 y 800.000', 'compra', 'facebook', 'Desactivado', 2, '2022-05-05 14:09:03', '2022-05-16 22:11:04', NULL, NULL, NULL, NULL),
(4, 'Diez Jose Luis', 692669, '', 'Reconquista', 'Santa Fe', 'chata 11 a 15 4x4 mejor si es caja automatica', 'compra', 'facebook', 'Desactivado', 2, '2022-05-05 14:09:03', '2022-05-16 22:11:14', NULL, NULL, NULL, NULL),
(5, 'Nelson A Ceibal', 348255002, '', 'Ceibal', 'Santa Fe', 'Ranger XLT 4x4 2018 - 180 mil km', 'venta', 'facebook', 'Activado', 3, '2022-05-05 14:09:03', '2022-05-05 14:09:03', NULL, NULL, NULL, NULL),
(6, 'Miriam Zarza', 3482262574, '', 'Ceibal', 'Santa Fe', 'Polo, Focus (5 puertas), Yaris - (2017/2018) Hasta $2.000.000 - Entrega Sandero 2014 tech rum -  56 mil km', 'venta', 'facebook', 'Activado', 3, '2022-05-05 14:09:03', '2022-05-05 14:09:03', NULL, NULL, NULL, NULL),
(7, 'Cliente prueba', 3482692669, NULL, 'Reconquista', 'Santa Fe', 'Quiere buscas un gol trend', 'compra', 'facebook', 'Activado', 2, '2022-05-16 22:09:55', '2022-05-16 22:09:55', NULL, NULL, NULL, NULL),
(8, 'MARIANA', 3482615452, NULL, 'RECONQUISTA', 'SANTA FE', 'BUSCA ETIOS / KINETOC 2015/16 POCOS KM', 'compra', 'directo', 'Activado', 6, '2022-05-17 18:06:52', '2022-05-17 18:06:52', NULL, NULL, NULL, NULL),
(9, 'JORGE', 3482681937, NULL, 'RECONQUISTA', 'SANTA FE', 'BUSCA COROLLA 2017, TIENE CRUZE LT 2014 CON 88.000KM', 'compra', 'directo', 'Activado', 6, '2022-05-17 18:08:36', '2022-05-17 18:08:36', NULL, NULL, NULL, NULL),
(10, 'EZEQUIEL', 3482509518, NULL, 'RECONQUISTA', 'SANTA FE', 'BUSCA CRONOS 2018 EN ADELANTE', 'compra', 'directo', 'Activado', 6, '2022-05-17 18:09:58', '2022-05-17 18:09:58', NULL, NULL, NULL, NULL),
(11, 'SEFERINO', 1131003307, NULL, 'RECONQUISTA', 'SANTA FE', 'BUSCA UN LOGAN 2016/ 0KM, TIENE FIAT UNO 2010 + $300.000', 'compra-venta', 'directo', 'Activado', 6, '2022-05-17 18:16:07', '2022-05-17 18:16:07', NULL, NULL, NULL, NULL),
(12, 'Lucas', 3482692669, 'lucaspaduangoi@gmail.com', 'AVELLANEDA', 'SANTA FE', 'busco gol tend', 'compra', 'facebook', 'Desactivado', 5, '2022-05-20 22:42:42', '2022-05-20 22:51:24', NULL, NULL, NULL, NULL),
(13, 'daiana', 3482271411, 'rodrigo_rdl_@hotmail.com', 'reconquista', 'santa fe', 'COMPRA SAVEIRO 2014', 'venta', 'google', 'Desactivado', 5, '2022-05-20 22:45:46', '2022-05-21 12:14:18', NULL, NULL, NULL, NULL),
(14, 'rodrigo david lorenzon', 3482313609, NULL, 'reconquista', 'santa fe', 'BUSCA ASTRA 2011', 'compra', 'directo', 'Desactivado', 5, '2022-05-20 22:47:07', '2022-05-21 12:14:32', NULL, NULL, NULL, NULL),
(15, 'FV contruccion', 3483482409, NULL, 'vera', 'santa fe', 'sendero stepway año 2009 con 160 mil km le intereso focus 2015', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-21 12:13:56', '2022-05-21 12:13:56', NULL, NULL, NULL, NULL),
(16, 'juliana', 3777504815, NULL, 'Goya', 'Corrientes', 'focus año 2011 con 136 mil km por focus 2015(lucas)', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-21 12:24:21', '2022-05-21 12:24:21', NULL, NULL, NULL, NULL),
(17, 'Abel Troch', 3482659371, NULL, 'RECONQUISTA', 'SANTA FE', 'Busca autos de $700.000', 'compra', 'directo', 'Activado', 6, '2022-05-21 13:41:14', '2022-05-21 13:41:14', NULL, NULL, NULL, NULL),
(18, 'setafin', 3482620810, NULL, 'reconquista', 'santa fe', 'tiene agile LT año 2010 133 mil km 4 cubiertas nuevas. intereso saveiro 2014', 'compra-venta', 'directo', 'Activado', 5, '2022-05-23 13:09:48', '2022-05-23 13:09:48', NULL, NULL, NULL, NULL),
(19, 'Gonzalo', 3794098782, NULL, 'reconquista', 'Corrientes', 'suzuki fun 2008 motor 1.4 por gol 2010', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-23 13:15:49', '2022-05-23 13:15:49', NULL, NULL, NULL, NULL),
(20, 'rolando', 3482523003, NULL, 'villa ana', 'santa fe', 'busca auto tiene 700 de entrega', 'compra', 'facebook', 'Activado', 5, '2022-05-23 13:17:26', '2022-05-23 13:17:26', NULL, NULL, NULL, NULL),
(21, 'nahuel', 3624898113, NULL, 'resistencia', 'chaco', 'peugeot 2008 allure 2016 90 mil km por peugeot 308', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-23 14:20:49', '2022-05-23 14:20:49', NULL, NULL, NULL, NULL),
(22, 'nose', 3482681806, NULL, 'reconquista', 'santa fe', 'symbol 2012 126 mil km por fluence 2013 aprximado', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-26 14:48:35', '2022-05-26 14:48:35', NULL, NULL, NULL, NULL),
(23, 'viejto', 3482635479, NULL, 'reconquista', 'santa fe', 'ecosport 2012 mtoor 1.6 con 150 mil km por classic', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-26 14:59:41', '2022-05-26 14:59:41', NULL, NULL, NULL, NULL),
(24, 'mujer', 3482256994, NULL, 'reconquista', 'santa fe', 'ford ka 2010 motor 1.0 con 113 mil km por gol tren 2016 o peugeot 308', 'compra-venta', 'directo', 'Activado', 5, '2022-05-26 15:01:07', '2022-05-26 15:01:07', NULL, NULL, NULL, NULL),
(25, 'Brian', 3483528037, NULL, 'reconquista', 'santa fe', 'Honda cbr 300 año 2011 con 11 mil km por gol power 2010', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-26 21:18:29', '2022-05-26 21:18:29', NULL, NULL, NULL, NULL),
(26, 'daiana', 3482265280, NULL, 'reconquista', 'santa fe', 'gol power 2006 con 126 mil km por gol 2010', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-26 21:20:48', '2022-05-26 21:20:48', NULL, NULL, NULL, NULL),
(27, 'rodolfo', 348244444847, NULL, 'reconquista', 'santa fe', 'peugeot 206 año 2004 con 200 mil km por voyage 2009', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-27 12:26:59', '2022-05-27 12:26:59', NULL, NULL, NULL, NULL),
(28, 'ejor', 3482312216, NULL, 'reconquista', 'santa fe', 'tiene 1.000.000 por un auto', 'compra', 'facebook', 'Activado', 5, '2022-05-27 12:32:30', '2022-05-27 12:32:30', NULL, NULL, NULL, NULL),
(29, 'juanca', 3624387034, NULL, 'resistencia', 'chaco', 'duster 2.0 2013 con 107 mil km por cruce 2017 4p', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-27 20:28:48', '2022-05-27 20:28:48', NULL, NULL, NULL, NULL),
(30, 'guillermo maran', 3482284573, NULL, 'reconquista', 'santa fe', 'cruze lt 2017 80 mil km vende 4p', 'venta', 'facebook', 'Activado', 5, '2022-05-30 12:05:23', '2022-05-30 12:05:23', NULL, NULL, NULL, NULL),
(31, 'ALEXIS', 3483486261, NULL, 'VERA', 'SANTA FE', 'TIENE DUSTER 2013 Y BUSCA MAS NUEVA 2016/17', 'compra-venta', 'directo', 'Activado', 6, '2022-05-30 19:29:16', '2022-05-30 19:29:16', NULL, NULL, NULL, NULL),
(32, 'joa', 3483462987, NULL, 'calchaqui', 'santa fe', 'sandero 2013 con 70 mil km por duster', 'compra-venta', 'facebook', 'Activado', 5, '2022-05-30 21:32:36', '2022-05-30 21:32:36', NULL, NULL, NULL, NULL),
(33, 'Fernando Solari', 3482318700, NULL, 'RECONQUISTA', 'SANTA FE', 'Busca Ranger o Hilux cabina simple 2015', 'compra', 'directo', 'Activado', 6, '2022-06-01 14:47:05', '2022-06-01 14:47:05', NULL, NULL, NULL, NULL),
(34, 'MARIO', 3483463740, NULL, 'vera', 'santa fe', 'FORD KA 2013 1.0 CON 95 MIL KM POR CLASSIC 2014', 'compra-venta', 'facebook', 'Activado', 5, '2022-06-02 20:35:17', '2022-06-02 20:35:17', NULL, NULL, NULL, NULL),
(35, 'MUJER MAYOR', 3482505994, NULL, 'MALABRIGO', 'santa fe', 'suzuki fun año 2011 motor 1.4 con 92 mil km por gol tren 2011 o classic', 'compra-venta', 'directo', 'Activado', 5, '2022-06-02 21:14:58', '2022-06-02 21:14:58', NULL, NULL, NULL, NULL),
(36, 'Lucas', 3482692669, 'lucaspaduangoi@gmail.com', 'AVELLANEDA', 'SANTA FE', 'hola que tal', 'venta', 'instagram', 'Desactivado', 2, '2022-06-03 13:33:29', '2022-06-03 13:33:36', NULL, NULL, NULL, NULL),
(37, 'alexis', 3483401098, NULL, 'vera', 'santa fe', 'XTZ 2018 con 22 mil km le interesa el classic', 'compra-venta', 'facebook', 'Activado', 5, '2022-06-04 11:54:01', '2022-06-04 11:54:01', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coincidencias`
--

CREATE TABLE `coincidencias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `auto_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(54, 'public/autos/TduIVWARiMXSFSBaC6v8VeGSsnuy1JOdFk4eW8N3.jpg', 56, '2022-05-06 16:22:01', '2022-05-06 16:22:01'),
(55, 'public/autos/WlFoPRqwQEAMfW9au00mlHCOOny4kKoNHavhv3gg.jpg', 56, '2022-05-06 16:22:03', '2022-05-06 16:22:03'),
(56, 'public/autos/XPwdfVexcGU5cpxOcB8y2Gelfo7SVdQWOgKO1hnS.jpg', 56, '2022-05-06 16:22:05', '2022-05-06 16:22:05'),
(57, 'public/autos/7lpIawLnxJt84cIolA9sza2EY0F6STNmMKBf001G.jpg', 56, '2022-05-06 16:22:06', '2022-05-06 16:22:06'),
(58, 'public/autos/vB48vbrZcGfYVNmrbCyZ0HL9fruaKIOGpPLSM5nH.jpg', 56, '2022-05-06 16:22:09', '2022-05-06 16:22:09'),
(66, 'public/autos/G3saDc9vEcmCKWmRGk6cMAfi2ALa7NEhwCBmjlqb.jpg', 54, '2022-05-06 16:28:11', '2022-05-06 16:28:11'),
(67, 'public/autos/KOYWN84nNMZzN77o9rlw5GCcoH7sEJMHWxISzssL.jpg', 54, '2022-05-06 16:28:14', '2022-05-06 16:28:14'),
(68, 'public/autos/wA9BcDmhAzNaEfKdYJZG9YZ3UkVqpbgMRxx5wb8V.jpg', 54, '2022-05-06 16:28:17', '2022-05-06 16:28:17'),
(69, 'public/autos/P7U8Eral1jgIITbH6BoZC3ZHxoFGBzDDVOtdQ8G9.jpg', 54, '2022-05-06 16:28:18', '2022-05-06 16:28:18'),
(70, 'public/autos/p3dXL5HESdNaAK31M4E6he4GSi9sWoGeRS9EMCZq.jpg', 54, '2022-05-06 16:28:20', '2022-05-06 16:28:20'),
(71, 'public/autos/k7ZEJEiB6IBdXAYEken73aPyBe7epIWMfFQSgZII.jpg', 54, '2022-05-06 16:28:43', '2022-05-06 16:28:43'),
(85, 'public/autos/GsZzN4biKVKxEwRrlIVGP5YNEwPuNwRZt42gdQss.jpg', 51, '2022-05-06 16:56:08', '2022-05-06 16:56:08'),
(86, 'public/autos/tF2eauzAGjzuLCjlgt85KkNKaaogpQGjecTDfWj8.jpg', 51, '2022-05-06 16:56:11', '2022-05-06 16:56:11'),
(87, 'public/autos/SbWJFcbomvlb1tlCUrCNd0WZUNw4ZbStC0j5xDEq.jpg', 51, '2022-05-06 16:56:12', '2022-05-06 16:56:12'),
(88, 'public/autos/flxthWY8M3EbPLTEkK66cKiDWrwvX7JHJeZg9n3u.jpg', 51, '2022-05-06 16:56:15', '2022-05-06 16:56:15'),
(89, 'public/autos/vowjgj2LB4LMEq00qFXX3rHpuxjwnhca4m1K17dE.png', 51, '2022-05-06 16:57:04', '2022-05-06 16:57:04'),
(90, 'public/autos/joPQOEgMwRUTcuMohO2qiCgaO2sVANpre3k593Qn.jpg', 51, '2022-05-06 16:57:08', '2022-05-06 16:57:08'),
(100, 'public/autos/bd6WuCP7RIfAWA5S85OP95FU9rxCrtd1YztvdD1c.jpg', 49, '2022-05-06 17:05:13', '2022-05-06 17:05:13'),
(101, 'public/autos/flgCC2ckV1uIpQGtkcjhTmoBUe3XGwiUxRRvxfM4.jpg', 49, '2022-05-06 17:05:15', '2022-05-06 17:05:15'),
(104, 'public/autos/eBL5oYHGx75XrT4P8M7DE9v4pweN4eHjIkkmZVpr.jpg', 49, '2022-05-06 17:05:30', '2022-05-06 17:05:30'),
(105, 'public/autos/3LF3oOlqiGMgleBq2sw5eHEWNQ0rHvr1OvpiZmBR.jpg', 49, '2022-05-06 17:05:33', '2022-05-06 17:05:33'),
(106, 'public/autos/EDro6Tg6bIUWSX2CZ8v6F2ZpzSJSJCSx6JqdOnHR.jpg', 49, '2022-05-06 17:05:35', '2022-05-06 17:05:35'),
(107, 'public/autos/wf71VJvdSBtdgKVn3WGb7R4mIRmd5qH8aSN54NDE.jpg', 49, '2022-05-06 17:06:04', '2022-05-06 17:06:04'),
(108, 'public/autos/D0d65yOGTZFVnkOdbN3xQ0dpzlzeX8G7lu9CxIQN.jpg', 49, '2022-05-06 17:06:08', '2022-05-06 17:06:08'),
(109, 'public/autos/zkMVvxBlB2csO1DjKqEjfOHplEJC5um58cgLzG0q.jpg', 49, '2022-05-06 17:06:09', '2022-05-06 17:06:09'),
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
(191, 'public/autos/0fx0rDOTeVwx2qmyOK7DM1X8qTvw0vkZbe4okX18.jpg', 31, '2022-05-06 19:47:32', '2022-05-06 19:47:32'),
(192, 'public/autos/rFCuKdhObPyyHTCUKUi8Lm63UUH6mayVe9UQPF9B.jpg', 31, '2022-05-06 19:48:00', '2022-05-06 19:48:00'),
(193, 'public/autos/CGmrgGYISmdkyoOJXvHJstwR98wg1xD1qvn1czAA.jpg', 31, '2022-05-06 19:48:04', '2022-05-06 19:48:04'),
(194, 'public/autos/mfTmvwV21HJWY9w7QlIDqmnZFVC5sXBENlApQYBW.jpg', 31, '2022-05-06 19:48:09', '2022-05-06 19:48:09'),
(195, 'public/autos/zsITv4G1iK6g9xK5ZON8d0Eciqj8xN8mUlbNGq7B.jpg', 31, '2022-05-06 19:48:14', '2022-05-06 19:48:14'),
(196, 'public/autos/L1fFbeRaf3I7YGHemq2OujWwji2ckebyEyJAR2bh.jpg', 31, '2022-05-06 19:48:21', '2022-05-06 19:48:21'),
(197, 'public/autos/yEjwhzLYPIkWuhFthjTTIr0maRcCFGp5KOoZJiau.jpg', 31, '2022-05-06 19:48:27', '2022-05-06 19:48:27'),
(198, 'public/autos/6G9SfO5FBz3A6Z6G5a7wmzLehAAzvxqG5Ad2wdnp.jpg', 31, '2022-05-06 19:48:54', '2022-05-06 19:48:54'),
(199, 'public/autos/LR0H93zdgOO8mpslq11rLMuJYnoxKJ1MgbqyRXTv.png', 32, '2022-05-06 19:50:19', '2022-05-06 19:50:19'),
(201, 'public/autos/EQj5D13BttWafj6WmJM37v7BDmi42IbuKvJFlwum.png', 34, '2022-05-06 19:52:49', '2022-05-06 19:52:49'),
(210, 'public/autos/BHbvj4kWkMiOrkXbeqMyMYSS2eHuPCNLevKk6sJP.jpg', 36, '2022-05-06 19:59:19', '2022-05-06 19:59:19'),
(211, 'public/autos/0oPad9xpt3MTpRTb32Ae0yK8O99evFRmXPaJ6Wg3.jpg', 36, '2022-05-06 19:59:22', '2022-05-06 19:59:22'),
(212, 'public/autos/oPVRreezW4ww17Z6XGjvm158uSRWhPumK9ehG1eM.jpg', 36, '2022-05-06 19:59:23', '2022-05-06 19:59:23'),
(213, 'public/autos/eDuLOmePfY8QWzd5ksEqlVA0SZGgLvJUkh6qOJAi.jpg', 36, '2022-05-06 19:59:25', '2022-05-06 19:59:25'),
(214, 'public/autos/MGyEdp7WWObJ5omBkEpg4sl5Ya0f1ugHxmP4TGel.jpg', 36, '2022-05-06 19:59:28', '2022-05-06 19:59:28'),
(215, 'public/autos/4YbeDFomb0jQ22FPEEJwGD9wohKd7HBKPSxdIrnZ.jpg', 36, '2022-05-06 19:59:44', '2022-05-06 19:59:44'),
(228, 'public/autos/rml2q5Cm5pNKyaVkPuhCVqZLrPhoEQT1gwQ0jFrp.jpg', 39, '2022-05-06 20:07:19', '2022-05-06 20:07:19'),
(229, 'public/autos/cKoD4zzIA6zK4a8agC4Zbj38UIlfOeRbrNfvjQC7.jpg', 39, '2022-05-06 20:07:20', '2022-05-06 20:07:20'),
(230, 'public/autos/4Y0NRJbDH5NiHsYFX97pIQGo6u3PlzrE86e0CmdD.jpg', 39, '2022-05-06 20:07:22', '2022-05-06 20:07:22'),
(231, 'public/autos/aNK6pTXdScmbDj3XZuYbXwwl9fVwQP3lVbYecGk2.jpg', 39, '2022-05-06 20:07:25', '2022-05-06 20:07:25'),
(232, 'public/autos/Ov6sqaNs313Yqz67JTECxBDKFhWGw7ajoNdqGcTY.jpg', 39, '2022-05-06 20:07:26', '2022-05-06 20:07:26'),
(233, 'public/autos/ODC3jnApJ8DlOTL3IRmelejoFP2186huFg6W5P7l.jpg', 39, '2022-05-06 20:07:44', '2022-05-06 20:07:44'),
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
(319, 'public/autos/c3CZskpSBTkVoRbPKJH5CgF3i43eIiyWrGnMTJnM.png', 10, '2022-05-06 21:13:40', '2022-05-06 21:13:40'),
(320, 'public/autos/Clk1rPc6oF9c0Wg4M63orJOmBtNFMLgWTlCz4oED.jpg', 11, '2022-05-06 21:15:12', '2022-05-06 21:15:12'),
(321, 'public/autos/xBQ344lhdKYMn5luiOyiof3qL1srOFhJnEJsHrIR.jpg', 11, '2022-05-06 21:15:14', '2022-05-06 21:15:14'),
(322, 'public/autos/90q2QLXRqLc7vvnXEy32ALkdmZPs6ikq8T3bRQp8.jpg', 11, '2022-05-06 21:15:16', '2022-05-06 21:15:16'),
(323, 'public/autos/50GstWmgLBrGlSWCyuSeQ7kHUOuwCC6nzboAZSBe.jpg', 11, '2022-05-06 21:15:18', '2022-05-06 21:15:18'),
(361, 'public/autos/XOUrfqu5bI5gDS4lCI9obXX0iPOz8mjRxaFlEDhP.png', 22, '2022-05-06 21:46:52', '2022-05-06 21:46:52'),
(362, 'public/autos/kbliKsc2V0ft7t8OCchCxZzyCT6F6wAZxvfuHIjB.png', 19, '2022-05-06 21:48:28', '2022-05-06 21:48:28'),
(364, 'public/autos/9TBo19k8Q4Ij4EAMnfNakJRPGnWCwucFIqsGCerP.jpg', 64, '2022-05-17 19:04:25', '2022-05-17 19:04:25'),
(366, 'public/autos/5rpAoIH7D8bY6NybElOnoBnXcSfr04MNmtmG0zpn.jpg', 64, '2022-05-17 19:04:37', '2022-05-17 19:04:37'),
(367, 'public/autos/3l38kQsuGYRlXMJAQJ3o3HqqaSVcJiAgSziiUmC6.jpg', 64, '2022-05-17 19:04:38', '2022-05-17 19:04:38'),
(368, 'public/autos/nZorkKfohevJ2u2HGzTxVv6p4nClX6v7hCSQmtCL.jpg', 64, '2022-05-17 19:04:39', '2022-05-17 19:04:39'),
(369, 'public/autos/MP5R9lx2rWzC4uBtTdfORbXHuATqN1gytf4zKFRY.jpg', 64, '2022-05-17 19:04:42', '2022-05-17 19:04:42'),
(370, 'public/autos/3HNo01ED0iwvWvjUR8dthpKKX5QzfOlOfAuT0KqD.jpg', 64, '2022-05-17 19:04:42', '2022-05-17 19:04:42'),
(371, 'public/autos/qJTMuBwzKa1is1qFsibAgl9W4syAv7Y4YzPBHpEW.jpg', 64, '2022-05-17 19:04:44', '2022-05-17 19:04:44'),
(372, 'public/autos/BmO6HJcLHTzLY27NMJ4hmhY7rXazTwDXzqJqeGPm.jpg', 64, '2022-05-17 19:04:44', '2022-05-17 19:04:44'),
(373, 'public/autos/D03IpsmwKstVgjl3wJUUvlu4UVgbmcCwjKIa9fds.jpg', 64, '2022-05-17 19:05:36', '2022-05-17 19:05:36'),
(374, 'public/autos/Agjmw8T8QNtKBaGJkP0gXX8tLAd39TLd59kf027Q.png', 9, '2022-05-19 15:15:00', '2022-05-19 15:15:00'),
(375, 'public/autos/2bAB9Tal2lAM2rUWqZsdB4Qinao7Ub85rzN8X1VW.png', 37, '2022-05-19 19:57:23', '2022-05-19 19:57:23'),
(376, 'public/autos/6cuolfDHM7K30Z2B1mNnSX0uKCewN9mfMVwZEGgY.png', 43, '2022-05-19 20:07:18', '2022-05-19 20:07:18'),
(377, 'public/autos/wLmSwEZi6HAnSAI8zStNAj0JTKS9F2TJ1adQNYJz.png', 62, '2022-05-19 20:20:14', '2022-05-19 20:20:14'),
(378, 'public/autos/RyYh023QoYPX4Eit3X8IjRsh55YoFTlS7AFbENmW.png', 50, '2022-05-19 21:27:33', '2022-05-19 21:27:33'),
(380, 'public/autos/RcyaEgVUqmuk7AUNi1UOEuytK1KyoJfc7vosgvv4.png', 30, '2022-05-19 21:44:12', '2022-05-19 21:44:12'),
(381, 'public/autos/XR8usBi5vCs2FvV1qKOBU33M9eNMANPk2ujCaAu2.jpg', 65, '2022-05-19 21:51:48', '2022-05-19 21:51:48'),
(382, 'public/autos/6SxHHfjVjKHkALedNbZ51Zk5WVGD2AH9k7amAwsG.jpg', 65, '2022-05-19 21:51:48', '2022-05-19 21:51:48'),
(383, 'public/autos/bwNiYDqTuIE1gKoPEWnim5Ct0cpZuxvMKv7DCkxA.jpg', 65, '2022-05-19 21:51:48', '2022-05-19 21:51:48'),
(384, 'public/autos/D93v2iOv9BpCC7WnYWqGUkyeIrO79wbQGtEgISx8.jpg', 65, '2022-05-19 21:51:49', '2022-05-19 21:51:49'),
(385, 'public/autos/KgCM94jq1HDGAcM3vbN3JLTPVnZpZpSVgLrkVMa4.jpg', 65, '2022-05-19 21:51:49', '2022-05-19 21:51:49'),
(386, 'public/autos/KLoXzIA5FoQy0D60qbxYQip81hOtnMDlv6bBY4FI.jpg', 65, '2022-05-19 21:51:49', '2022-05-19 21:51:49'),
(387, 'public/autos/bVjBWiGLUOW2rYgg6qF7j6ruOXq1GXc26oH8Fhkz.jpg', 65, '2022-05-19 21:51:50', '2022-05-19 21:51:50'),
(388, 'public/autos/iHHrUCmpAS6487DuCIYMAeIqqAmf2NkEitJidNPy.jpg', 21, '2022-05-19 22:02:32', '2022-05-19 22:02:32'),
(389, 'public/autos/VjUs6ofWv2zZsVxUUI4lyn3XuHxsEV6MRkP7YnYM.jpg', 21, '2022-05-19 22:02:32', '2022-05-19 22:02:32'),
(390, 'public/autos/VqCMZptpzVKFZ25yBryPMIEOm4DGBNtE0IoiIjPt.jpg', 21, '2022-05-19 22:02:32', '2022-05-19 22:02:32'),
(391, 'public/autos/GS95ZpPaaNYEf15DBwG3dQB2sy1WIp8lAwpXe42d.jpg', 21, '2022-05-19 22:02:33', '2022-05-19 22:02:33'),
(392, 'public/autos/YQsyOR9zFJYeqltShuXc0EWv9hUrLKWpmIUYviaP.jpg', 21, '2022-05-19 22:02:45', '2022-05-19 22:02:45'),
(393, 'public/autos/0Olg1GnZITrDyGG0nbd3MOIu4UGbkDQpXKY1HqBG.jpg', 21, '2022-05-19 22:02:45', '2022-05-19 22:02:45'),
(395, 'public/autos/xXTKQZMOhjKHFiOOjeCAjHd2WGAkcn018cmsCj99.jpg', 66, '2022-05-20 13:56:52', '2022-05-20 13:56:52'),
(396, 'public/autos/W9VoFfzzl2z0dCEVZfkdiOjX2ZyIR4dH4XJeESW6.jpg', 66, '2022-05-20 13:56:53', '2022-05-20 13:56:53'),
(397, 'public/autos/X0q7HbE2FfsJo8C6XErkQb13lmoF8cRrg30GrPYd.jpg', 66, '2022-05-20 13:56:53', '2022-05-20 13:56:53'),
(398, 'public/autos/A9FV8tCW0RhskOJo6wuAseD83adv78V356R2dCoP.jpg', 66, '2022-05-20 13:56:54', '2022-05-20 13:56:54'),
(399, 'public/autos/F8uwxd47DG8wVYA6UV2UKs6UpIsRms5uX3Z08SLq.jpg', 66, '2022-05-20 13:56:54', '2022-05-20 13:56:54'),
(400, 'public/autos/iFg14q7tbGjcpTeWP2optwTzabdcVmjbwOjcQMDs.jpg', 66, '2022-05-20 13:56:55', '2022-05-20 13:56:55'),
(401, 'public/autos/JmeWsiuKHgAov5zKYDwzC25epgysF3Q6uvsLkDQf.jpg', 66, '2022-05-20 13:57:09', '2022-05-20 13:57:09'),
(403, 'public/autos/L9nupu28nFcEkiQwIZlAO9X59wEM3L1cigIGlLZJ.jpg', 67, '2022-05-20 14:02:58', '2022-05-20 14:02:58'),
(404, 'public/autos/ZkkFJ8ejTTqa1LcQqJo0WXNC6hqNE3nto0Sx3PAi.jpg', 67, '2022-05-20 14:02:59', '2022-05-20 14:02:59'),
(405, 'public/autos/SwJ7gyP70OdbrNdMQXTXFqZVjHL4lDWskd5AWB20.jpg', 67, '2022-05-20 14:02:59', '2022-05-20 14:02:59'),
(406, 'public/autos/F8qTHr2ZHLGaeRyfBf5cBAUEnx2prhBHwIY5DNOj.jpg', 67, '2022-05-20 14:03:00', '2022-05-20 14:03:00'),
(407, 'public/autos/uxIr0Hx6xvdHpWhwHSJjJIhNBQPiNMUAgEdfWSs8.jpg', 67, '2022-05-20 14:03:00', '2022-05-20 14:03:00'),
(408, 'public/autos/PLYTyRu7Zvy0QPZ11jQch2CBbsUtwOJ6G0HDmOhX.jpg', 67, '2022-05-20 14:03:08', '2022-05-20 14:03:08'),
(409, 'public/autos/VcAaHLl173lLqgpa5tJQx2PzbnkCSDbPQv1AnUGE.jpg', 68, '2022-05-21 14:14:29', '2022-05-21 14:14:29'),
(410, 'public/autos/7myIBs4RU7Xaq6PFdoYtd3pRpGdafUrYMTWm8vq7.jpg', 68, '2022-05-21 14:14:29', '2022-05-21 14:14:29'),
(411, 'public/autos/stJFBmysVH7KThu0tswtXS3uYABOSA6OCqP6W7tw.jpg', 68, '2022-05-21 14:14:30', '2022-05-21 14:14:30'),
(412, 'public/autos/jGoOZMBepjIGmdFnEVaQjwhQrk1wakTESgiNsgSz.jpg', 68, '2022-05-21 14:14:32', '2022-05-21 14:14:32'),
(413, 'public/autos/tLILdjXLh7QXit2zq6LRjrnHvxU6W3m0aIG9XWPx.jpg', 68, '2022-05-21 14:14:33', '2022-05-21 14:14:33'),
(415, 'public/autos/TxhiFHlDJEz22YlPsRr6JDP8hIFx88EuMbaoh1Ff.jpg', 69, '2022-05-30 19:50:53', '2022-05-30 19:50:53'),
(416, 'public/autos/dnQCtgiHLNTanLXGnsKSDeV71kxZdOUdN6ywIfPx.jpg', 69, '2022-05-30 19:50:54', '2022-05-30 19:50:54'),
(417, 'public/autos/U73GdIKLBj7OH2yai1Z7dpi4RVgP1LXIrvcaAoFj.jpg', 69, '2022-05-30 19:50:55', '2022-05-30 19:50:55'),
(418, 'public/autos/QukHhpD2B9KINtw5PFYpCuSwTe0xLeaWYhRrkBuz.jpg', 69, '2022-05-30 19:50:55', '2022-05-30 19:50:55'),
(419, 'public/autos/MF5Hx364vV2qsEuuT5Pm9ITwP221RmkJIlVoJn41.jpg', 69, '2022-05-30 19:50:57', '2022-05-30 19:50:57'),
(420, 'public/autos/pvpL5NrWMtQeQGkoZC1aq3Rv1z9Atn5jxjHGgCF2.jpg', 69, '2022-05-30 19:50:58', '2022-05-30 19:50:58'),
(421, 'public/autos/dIRMotioB1ssEPnc4HHhvnNt63vBtZvhm4A2lbT0.jpg', 69, '2022-05-30 19:51:09', '2022-05-30 19:51:09'),
(423, 'public/autos/NzbKULBoYHOXuX4x2SPhIzj7k0RJehzNCrQqGUx1.jpg', 70, '2022-05-30 20:01:29', '2022-05-30 20:01:29'),
(424, 'public/autos/ZfkrVTmT8w7dWJjiG8xr6W0dfKPDgKM6ETg3c9AT.jpg', 70, '2022-05-30 20:01:30', '2022-05-30 20:01:30'),
(425, 'public/autos/MSEUEvsRTtbsFxjBa5itXXZOVbUYz2hYUs6sBn2M.jpg', 70, '2022-05-30 20:01:30', '2022-05-30 20:01:30'),
(426, 'public/autos/7yn8H1tKPzwmzGOZoKuE0Qz8QXphJPFJx9IRUt3g.jpg', 70, '2022-05-30 20:01:31', '2022-05-30 20:01:31'),
(427, 'public/autos/Ikd79wISgTme6GgzOvbVsmexbVn3pqD2cAgpbT7C.jpg', 70, '2022-05-30 20:01:32', '2022-05-30 20:01:32'),
(428, 'public/autos/E0hN5rBqLfdGFwBykchcYc9Ek5denm4W2Eo7BCW0.jpg', 70, '2022-05-30 20:01:33', '2022-05-30 20:01:33'),
(429, 'public/autos/RDw8JZaTcXdag4GG3TlOOOwAiEJzZ93G7MvdBBha.jpg', 70, '2022-05-30 20:01:42', '2022-05-30 20:01:42'),
(439, 'public/autos/qkGzK8M7jds7xZb1Ter8zb7ipfQIC8Oz34sr0zOt.jpg', 72, '2022-05-31 12:32:49', '2022-05-31 12:32:49'),
(442, 'public/autos/ruRMnGVpGxf4ZfeKk0aidQMNv07JXCUkXFB1YrLs.jpg', 72, '2022-05-31 12:32:52', '2022-05-31 12:32:52'),
(443, 'public/autos/fzj6hwB8tjekTAD2TRHbf2DyUDhO1lGEOy4H6N97.jpg', 72, '2022-05-31 12:32:52', '2022-05-31 12:32:52'),
(444, 'public/autos/JJKrmTPpB07wIxf3BtBr9tWkwunIlkaeR9vwyoTK.jpg', 72, '2022-05-31 12:32:54', '2022-05-31 12:32:54'),
(445, 'public/autos/OvPNxNiqozb5jeRT0O3Twm2bEtaCV4Pna3YbOCrw.jpg', 72, '2022-05-31 12:32:54', '2022-05-31 12:32:54'),
(446, 'public/autos/R8xqZWE5jQdpJS1N2q2VQGUH0LDgSu0rrM4yzEM7.jpg', 72, '2022-05-31 12:32:56', '2022-05-31 12:32:56'),
(447, 'public/autos/81G1G3aKHEnK4URSz8q6Poau8gDxx2R5zrc5ZJqG.jpg', 72, '2022-05-31 12:32:56', '2022-05-31 12:32:56'),
(448, 'public/autos/x4wgnMJPcDSpj3TXcDHWkFwEIZDbFmVci6H08CzW.jpg', 72, '2022-05-31 12:33:54', '2022-05-31 12:33:54'),
(449, 'public/autos/lo2UUaiv0taoPGSgKOL96uau0O48VX2lQnN1TrzQ.jpg', 72, '2022-05-31 12:33:54', '2022-05-31 12:33:54'),
(450, 'public/autos/RuMCPA9WGJPx7H6KvTpX7CcW7fK77lhVQVnrsYzQ.jpg', 72, '2022-05-31 12:33:56', '2022-05-31 12:33:56'),
(451, 'public/autos/08F7nOJhMnrAK6zwCOjKC1PgVjUx6KnIfO7bn8E8.jpg', 73, '2022-05-31 13:39:09', '2022-05-31 13:39:09'),
(452, 'public/autos/gT3pipHTPUx9U2yg6DxuaodXEgi9krF8FBRTXHqq.jpg', 73, '2022-05-31 13:39:09', '2022-05-31 13:39:09'),
(453, 'public/autos/Nu805nSKNridfxezSyQIs6exZJCTUbKJS4S5V00z.jpg', 73, '2022-05-31 13:39:10', '2022-05-31 13:39:10'),
(454, 'public/autos/0UAoN2jb5HzBtonRt17EejMjqdXM5GPgxBwRbfF0.jpg', 73, '2022-05-31 13:39:10', '2022-05-31 13:39:10'),
(455, 'public/autos/KfMBy3bgmgzA15yNCUdvu3tu5mrmoz2jdBsA7KKM.jpg', 73, '2022-05-31 13:39:11', '2022-05-31 13:39:11'),
(456, 'public/autos/FW9GEx0hXV2aJFMVbCpgE4VAcwrCiLpkkqp1Ke0K.jpg', 73, '2022-05-31 13:39:11', '2022-05-31 13:39:11'),
(458, 'public/autos/0mEfDvNea2S9w1fUzE68uBD9bVdIEvLOaXg4hiB7.jpg', 74, '2022-06-01 13:12:20', '2022-06-01 13:12:20'),
(459, 'public/autos/NL3W64nKX4cIClEmaFa3ZfeAD82GKJEvmbNg2OGT.jpg', 74, '2022-06-01 13:12:21', '2022-06-01 13:12:21'),
(460, 'public/autos/8nclHII89HYwqFu7YrLkmLAOHKOBdqaBSf0OqApZ.jpg', 74, '2022-06-01 13:12:22', '2022-06-01 13:12:22'),
(461, 'public/autos/NRkpUPY6v3qSRvmFO1WB0oCqnXjmU9WR2JWkXA0H.jpg', 74, '2022-06-01 13:12:23', '2022-06-01 13:12:23'),
(462, 'public/autos/Y3rqtgiRBASUuVFxMNLvznSLHxT9gRpevRJaImHt.jpg', 74, '2022-06-01 13:12:24', '2022-06-01 13:12:24'),
(463, 'public/autos/UIrrQfzOhpRqPIIAp2TbiURDh3HSl2Ox9TJlw255.jpg', 74, '2022-06-01 13:12:24', '2022-06-01 13:12:24'),
(464, 'public/autos/jKxWAGZmVeBOwfDcejb3D1Lz5Z8NuKk9WSWd7mO9.jpg', 74, '2022-06-01 13:12:25', '2022-06-01 13:12:25'),
(465, 'public/autos/nBJNyrObB9twxDQM4GpL3A4RJdhIUMYwBGRysyH2.jpg', 74, '2022-06-01 13:12:26', '2022-06-01 13:12:26'),
(466, 'public/autos/EiOrpsIeYYCz1aDbhW2yGSOuc62YZ6ONxs30q1gb.jpg', 74, '2022-06-01 13:12:27', '2022-06-01 13:12:27'),
(467, 'public/autos/EKnIiMmo0BWbu5PbZDSTAPJNNV7brDKTkHnaqMDd.png', 71, '2022-06-01 13:57:22', '2022-06-01 13:57:22'),
(468, 'public/autos/oE2bcI1oF7nGESHdVc53FBUpfklJ0GwTk3LIsIxo.png', 61, '2022-06-01 14:01:49', '2022-06-01 14:01:49'),
(469, 'public/autos/tY6p26j950m6pC0fU57gOAjsmGsF0LjoVFEtWQ3k.png', 52, '2022-06-01 14:16:13', '2022-06-01 14:16:13'),
(470, 'public/autos/rTuiEtKIw5kc5jXfkVhEf7Duy8gl2jGL5gDrhqXL.png', 57, '2022-06-01 14:21:42', '2022-06-01 14:21:42'),
(473, 'public/autos/WHojbDgCWd9LnwpScUQo0lqXklmYaUIGkCnnCVHk.jpg', 75, '2022-06-03 13:33:29', '2022-06-03 13:33:29'),
(474, 'public/autos/2hhNWzuaLWLMWN9WW4SUdr3TMIZZasePnlvJ3P7i.jpg', 75, '2022-06-03 13:33:31', '2022-06-03 13:33:31'),
(475, 'public/autos/SboAcUqHcLBUh21pZf6mXK3ZHQPcyAJiDQqIdsxA.jpg', 75, '2022-06-03 13:33:31', '2022-06-03 13:33:31'),
(476, 'public/autos/7xooycJnam2L9TuOqKnKDeicZbfoqMTdU7oMsSeg.jpg', 75, '2022-06-03 13:33:32', '2022-06-03 13:33:32'),
(477, 'public/autos/5wvZkXRuuhOPo4t3RJYzG5A19jdPZkX2Cr6iVA1A.jpg', 75, '2022-06-03 13:33:33', '2022-06-03 13:33:33'),
(478, 'public/autos/R6QFatqAEV9bnKHEXShddXeZHX4blCR9XQvsC7W8.jpg', 75, '2022-06-03 13:33:34', '2022-06-03 13:33:34'),
(479, 'public/autos/VW2fLAj2XR2U6kaUQvS6t9WMHLEM7wf7QPyUk9Kg.jpg', 75, '2022-06-03 13:33:34', '2022-06-03 13:33:34'),
(480, 'public/autos/ufTkmrHSdGZAkdZaskf8gEURX37XFgW7VUtlr1Ex.jpg', 75, '2022-06-03 13:33:35', '2022-06-03 13:33:35'),
(481, 'public/autos/7b75k7awm2AFR9oN2RcVLazIS6z6V8FRhc4FwNeu.jpg', 75, '2022-06-03 13:33:55', '2022-06-03 13:33:55'),
(482, 'public/autos/eq8Ba6U6PweWdlussfjywbMgzQpzuEavDHwmZPmV.jpg', 75, '2022-06-03 13:33:55', '2022-06-03 13:33:55'),
(483, 'public/autos/FlKQaVHLVi65rXlkiJqLrsUgyeiHu7Yb406DJ2hW.png', 13, '2022-06-03 13:55:26', '2022-06-03 13:55:26');

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
(30, '2022_04_29_164511_create_sucursals_table', 1),
(31, '2022_05_22_185051_add_marcaid_to_clientes_table', 2),
(32, '2022_05_22_190338_add_modeloid_to_clientes_table', 2),
(33, '2022_05_22_190813_add_tipoandprecio_to_clientes_table', 2),
(34, '2022_05_31_090256_create_coincidencias_table', 2);

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
(1, 'Fernando Pereyra', 'fer@correo.com', NULL, '$2y$10$fVdo1Q8wxTb7/2WEmztCHebbl9YxzFPlzZjz3JmUqscDD.TmCQ0bi', 'administrador', 'Desactivado', NULL, '2022-05-05 14:09:03', '2022-05-16 22:52:03'),
(2, 'Lucas Goi', 'lucaspaduangoi@gmail.com', NULL, '$2y$10$X9ImSoQrDUiEibIGnibqduguYZ98mkLaV02YSqYgyTWxtSb1es8PC', 'administrador', 'Activado', NULL, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(3, 'usuario vendedor', 'vendedor@correo.com', NULL, '$2y$10$t6oj7iRYtOTbSh9ZK5AYcuoadm1q.Cpf1aspFKsIKOHCIjWHh.ZZK', 'vendedor', 'Activado', NULL, '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(4, 'Daiana', 'daianapereson97@gmail.com', NULL, '$2y$10$wvz0dLIbMMtRc9NbYH9WT.Uuc8Yr9mfhp18Al1EhmfjHYJziB6JDi', 'administrador', 'Activado', NULL, '2022-05-16 22:47:57', '2022-05-16 22:47:57'),
(5, 'Rodrigo', 'rodrigordl232@gmail.com', NULL, '$2y$10$ocerMd4L5SBi5tc8HFyBWOgrS3xNcYVyLbpQJ6uz54JFAQ3EiV/n.', 'vendedor', 'Activado', NULL, '2022-05-16 22:53:15', '2022-05-16 22:53:15'),
(6, 'Adri', 'adrianbresan7@gmail.com', NULL, '$2y$10$FFwAi8iPcWyyZ20wU7YTuebCThcbkMw9fSFX.eqT4TqnCeaTkeVfe', 'vendedor', 'Activado', NULL, '2022-05-17 15:04:18', '2022-05-17 15:04:18');

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

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `titulo`, `cliente_id`, `auto_id`, `precio_costo`, `precio_venta`, `precio_ganancia`, `created_at`, `updated_at`) VALUES
(1, 'VENTA', 1, 19, 450000.00, 800000.00, 350000.00, '2022-05-20 12:19:52', '2022-05-20 12:19:52');

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
(10, '4.0', '2022-05-05 14:09:03', '2022-05-05 14:09:03'),
(11, '1.5', '2022-06-03 11:52:11', '2022-06-03 11:52:11');

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
  ADD KEY `clientes_user_id_foreign` (`user_id`),
  ADD KEY `clientes_marca_id_foreign` (`marca_id`),
  ADD KEY `clientes_modelo_id_foreign` (`modelo_id`);

--
-- Indices de la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coincidencias_cliente_id_foreign` (`cliente_id`),
  ADD KEY `coincidencias_auto_id_foreign` (`auto_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=484;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `valors`
--
ALTER TABLE `valors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `versions`
--
ALTER TABLE `versions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
  ADD CONSTRAINT `clientes_marca_id_foreign` FOREIGN KEY (`marca_id`) REFERENCES `marcas` (`id`),
  ADD CONSTRAINT `clientes_modelo_id_foreign` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`),
  ADD CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `coincidencias`
--
ALTER TABLE `coincidencias`
  ADD CONSTRAINT `coincidencias_auto_id_foreign` FOREIGN KEY (`auto_id`) REFERENCES `autos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coincidencias_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE;

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
