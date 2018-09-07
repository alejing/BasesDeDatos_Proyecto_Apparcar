-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 07-09-2018 a las 18:03:15
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Apparcar`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Conductor`
--

CREATE TABLE `Conductor` (
  `placa` varchar(6) DEFAULT NULL,
  `pref1_latitud` decimal(10,9) DEFAULT NULL,
  `pref2_longitud` decimal(15,13) DEFAULT NULL,
  `pref3_precio` decimal(4,1) DEFAULT NULL,
  `pref4_hayDejarLlaves` tinyint(4) DEFAULT NULL,
  `pref5_hayOfertas` tinyint(4) DEFAULT NULL,
  `pref6_hayServicio` tinyint(4) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Direccion`
--

CREATE TABLE `Direccion` (
  `idDireccion` int(11) NOT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `barrio` varchar(45) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Email`
--

CREATE TABLE `Email` (
  `idEmail` int(11) NOT NULL,
  `correoElectronico` varchar(45) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Empleado`
--

CREATE TABLE `Empleado` (
  `cedula` bigint(20) DEFAULT NULL,
  `esAdminitrador` tinyint(1) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `Empleado_Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Horario`
--

CREATE TABLE `Horario` (
  `idHorario` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `horaInicio` time DEFAULT NULL,
  `horaFin` time DEFAULT NULL,
  `Parqueadero_idParqueadero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Horario`
--

INSERT INTO `Horario` (`idHorario`, `descripcion`, `horaInicio`, `horaFin`, `Parqueadero_idParqueadero`) VALUES
(1, 'Lunes a Viernes', '06:00:00', '19:00:00', 1),
(2, 'Sabados y Domingos', '08:00:00', '17:00:00', 1),
(3, 'Lunes a Viernes', '07:30:00', '20:00:00', 2),
(4, 'Lunes a Viernes', '07:00:00', '22:00:00', 3),
(5, 'Lunes a Viernes', '07:00:00', '20:00:00', 4),
(6, 'Sabados', '08:00:00', '20:00:00', 4),
(7, 'Domingos y Festivos', '10:00:00', '19:00:00', 4),
(8, 'Lunes a Viernes', '07:30:00', '20:30:00', 5),
(9, 'Lunes a Viernes', '06:00:00', '22:00:00', 6),
(10, 'Lunes a Viernes', '05:00:00', '23:00:00', 7),
(11, 'Lunes a Viernes', '00:00:00', '23:59:00', 8),
(12, 'Lunes a Viernes', '00:00:00', '23:59:00', 9),
(13, 'Lunes a Viernes', '05:00:00', '22:00:00', 10),
(14, 'Lunes a Viernes', '05:00:00', '22:00:00', 11),
(15, 'Lunes a Viernes', '00:00:00', '23:59:00', 12),
(16, 'Lunes a Viernes', '06:00:00', '17:00:00', 13),
(17, 'Lunes a Viernes', '00:00:00', '23:53:00', 14),
(18, 'Lunes a Viernes', '07:00:00', '21:00:00', 15),
(19, 'Lunes a Viernes', '06:00:00', '22:00:00', 16),
(20, 'Lunes a Viernes', '08:00:00', '22:00:00', 17),
(21, 'Lunes a Viernes', '06:00:00', '22:00:00', 18),
(22, 'Lunes a Viernes', '06:00:00', '17:00:00', 19),
(23, 'Lunes a Viernes', '00:00:00', '23:59:00', 20),
(24, 'Lunes a Viernes', '06:00:00', '22:00:00', 21),
(25, 'Lunes a Viernes', '07:00:00', '21:00:00', 22),
(26, 'Lunes a Viernes', '00:00:00', '23:59:00', 23),
(27, 'Lunes a Viernes', '06:00:00', '22:00:00', 24),
(28, 'Lunes a Viernes', '06:00:00', '20:00:00', 25),
(29, 'Lunes a Viernes', '06:00:00', '20:00:00', 26),
(30, 'Lunes a Viernes', '05:00:00', '22:00:00', 27),
(31, 'Lunes a Viernes', '05:00:00', '20:00:00', 28),
(32, 'Lunes a Viernes', '06:00:00', '22:00:00', 29),
(33, 'Lunes a Viernes', '06:00:00', '18:00:00', 30),
(34, 'Lunes a Viernes', '00:00:00', '23:59:00', 31),
(35, 'Lunes a Viernes', '07:00:00', '21:00:00', 32),
(36, 'Lunes a Viernes', '05:00:00', '23:00:00', 33),
(37, 'Lunes a Viernes', '00:00:00', '23:59:00', 34),
(38, 'Lunes a Viernes', '06:00:00', '22:00:00', 35),
(39, 'Lunes a Viernes', '05:00:00', '21:00:00', 36),
(40, 'Lunes a Viernes', '06:00:00', '20:00:00', 37),
(41, 'Lunes a Viernes', '00:00:00', '23:59:00', 38),
(42, 'Lunes a Viernes', '06:00:00', '20:00:00', 39),
(43, 'Lunes a Viernes', '06:00:00', '22:00:00', 40),
(44, 'Lunes a Viernes', '00:00:00', '23:59:00', 41),
(45, 'Lunes a Viernes', '07:00:00', '23:00:00', 42),
(46, 'Lunes a Viernes', '07:00:00', '22:00:00', 43),
(47, 'Lunes a Viernes', '00:00:00', '23:59:00', 44),
(48, 'Lunes a Viernes', '07:00:00', '22:00:00', 45),
(49, 'Lunes a Viernes', '00:00:00', '23:59:00', 46),
(50, 'Lunes a Viernes', '07:00:00', '22:00:00', 47),
(51, 'Lunes a Viernes', '07:00:00', '22:00:00', 48),
(52, 'Lunes a Viernes', '00:00:00', '23:59:00', 49),
(53, 'Lunes a Viernes', '00:00:00', '23:59:00', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Oferta`
--

CREATE TABLE `Oferta` (
  `idOferta` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `Parqueadero_idParqueadero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Oferta`
--

INSERT INTO `Oferta` (`idOferta`, `descripcion`, `porcentaje`, `Parqueadero_idParqueadero`) VALUES
(1, 'Precio especial fin de semana', 20, 3),
(2, 'Precio especial estudiantes universitarios', 10, 15),
(3, 'Precio especial estudiantes universitarios', 15, 21),
(4, 'Precio especial profesores universitarios', 10, 21),
(5, 'Precio especial pago por mensualidad', 30, 23),
(6, 'Descuento por establecimiento afiliado', 20, 35),
(7, 'Descuento por establecimiento afiliado', 10, 37),
(8, 'Descuento por pago aticipado de mensualidad', 20, 38),
(9, 'Descuento profesores y estudientes', 10, 40),
(10, 'Descuento por establecimiento afiliado', 15, 42),
(11, 'Descuento por establecimiento afiliado', 10, 44),
(12, 'Descuento profesores y estudientes', 15, 48);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Parqueadero`
--

CREATE TABLE `Parqueadero` (
  `idParqueadero` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  `latitud` decimal(10,9) DEFAULT NULL,
  `longitud` decimal(15,13) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `calle` varchar(45) DEFAULT NULL,
  `carrera` varchar(45) DEFAULT NULL,
  `barrio` varchar(45) DEFAULT NULL,
  `ciudad` varchar(45) DEFAULT NULL,
  `esSobrecupo` tinyint(1) DEFAULT NULL,
  `cupos` int(11) DEFAULT NULL,
  `cuposDiscapacitados` int(11) DEFAULT NULL,
  `cuposDisponibles` int(11) DEFAULT NULL,
  `esTarifaPlana` tinyint(1) DEFAULT NULL,
  `valorTarifaPlana` decimal(8,2) DEFAULT NULL,
  `valorTarifaCarro` decimal(4,1) DEFAULT NULL,
  `valorTarifaMoto` decimal(4,1) DEFAULT NULL,
  `valorTarifaBici` decimal(4,1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `Parqueadero`
--

INSERT INTO `Parqueadero` (`idParqueadero`, `descripcion`, `latitud`, `longitud`, `direccion`, `calle`, `carrera`, `barrio`, `ciudad`, `esSobrecupo`, `cupos`, `cuposDiscapacitados`, `cuposDisponibles`, `esTarifaPlana`, `valorTarifaPlana`, `valorTarifaCarro`, `valorTarifaMoto`, `valorTarifaBici`) VALUES
(1, 'NA', '4.674722200', '-74.1419444444444', 'Cl. 20b #97B-69, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 17, 2, 16, 1, '10000.00', '70.0', '-1.0', '-1.0'),
(2, 'NA', '4.673611100', '-74.1425000000000', 'Cra. 98 #19-1 a 19-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 39, 2, 9, 0, '-1.00', '85.0', '-1.0', '-1.0'),
(3, 'NA', '4.674722200', '-74.1427777777777', 'Cl. 20 #99-2 a 99-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 30, 4, 4, 1, '6000.00', '77.0', '-1.0', '-1.0'),
(4, 'NA', '4.672222200', '-74.1441666666666', 'Cl. 17a #98-2 a 98-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 73, 2, 51, 1, '8000.00', '40.0', '-1.0', '-1.0'),
(5, 'NA', '4.674722200', '-74.1427777777777', 'Cl. 20 #99-2 a 99-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 54, 2, 30, 0, '-1.00', '45.0', '-1.0', '-1.0'),
(6, 'NA', '4.655474000', '-74.0571520000000', 'Cra. 9 #70-34, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 68, 1, 0, 1, '11000.00', '70.0', '-1.0', '-1.0'),
(7, 'NA', '4.655478000', '-74.0571520000000', 'Cra. 9 #70-34, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 52, 1, 45, 1, '10000.00', '80.0', '-1.0', '-1.0'),
(8, 'NA', '4.658883200', '-74.0588688000000', 'cll 73#11-51, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 42, 1, 13, 1, '15000.00', '100.0', '-1.0', '-1.0'),
(9, 'NA', '4.602007500', '-74.1781618000000', 'Cra. 78 #58n Sur-2 a 58n Sur-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 12, 0, 4, 1, '6000.00', '50.0', '-1.0', '-1.0'),
(10, 'NA', '4.614166700', '-74.0777777777777', 'Cl. 22d #18-1 a 18-41, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 88, 5, 86, 1, '12000.00', '80.0', '-1.0', '-1.0'),
(11, 'NA', '4.605000000', '-74.0694444444444', 'Cl. 20 #4-1 a 4-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 50, 1, 47, 0, '-1.00', '104.0', '-1.0', '-1.0'),
(12, 'NA', '4.604722200', '-74.0688888888888', 'Cl. 20 #4-42, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 75, 7, 33, 1, '14000.00', '104.0', '-1.0', '-1.0'),
(13, 'NA', '4.604444400', '-74.0688888888888', 'Cl. 20 #4-1 a 4-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 38, 1, 24, 1, '6000.00', '70.0', '-1.0', '-1.0'),
(14, 'NA', '4.604444400', '-74.0686111111111', 'Cl. 20 #4-1 a 4-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 50, 4, 11, 0, '-1.00', '45.0', '-1.0', '-1.0'),
(15, 'NA', '4.603888900', '-74.0683333333333', 'Cra. 4 #19-2 a 19-52, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 42, 1, 29, 1, '8000.00', '75.0', '-1.0', '-1.0'),
(16, 'NA', '4.603055600', '-74.0688888888888', 'Cra. 4 #18-2 a 18-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 73, 9, 56, 0, '-1.00', '40.0', '-1.0', '-1.0'),
(17, 'NA', '4.602777800', '-74.0688888888888', 'Cra. 4 #18-2 a 18-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 62, 9, 55, 0, '-1.00', '80.0', '-1.0', '-1.0'),
(18, 'NA', '4.602777800', '-74.0700000000000', 'Cl. 18 #4-1 a 4-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 71, 2, 33, 1, '12000.00', '85.0', '-1.0', '-1.0'),
(19, 'NA', '4.602777800', '-74.0708333333333', 'Cra. 5 #17-2 a 17-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 12, 0, 6, 0, '-1.00', '45.0', '-1.0', '-1.0'),
(20, 'NA', '4.603333300', '-74.0702777777777', 'Cl. 18 #4-2 a 4-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 43, 2, 28, 1, '15000.00', '75.0', '-1.0', '-1.0'),
(21, 'NA', '4.605833300', '-74.0702777777777', 'Cl. 20 #4-42, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 43, 5, 36, 1, '20000.00', '90.0', '-1.0', '-1.0'),
(22, 'NA', '4.600833300', '-74.0708333333333', 'Av. Jimenez De Quesada #4-2 a 4-52, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 24, 1, 10, 0, '-1.00', '60.0', '-1.0', '-1.0'),
(23, 'NA', '4.679444400', '-74.1375000000000', 'Cra. 101 #23b-2 a 23b-96, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 91, 12, 52, 1, '15000.00', '104.0', '-1.0', '-1.0'),
(24, 'NA', '4.585000000', '-74.0772222222222', 'Cra. 3 #1c-2 a 1c-46, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 23, 1, 13, 1, '9000.00', '80.0', '-1.0', '-1.0'),
(25, 'NA', '4.677777800', '-74.1502777777777', 'Cl. 16j #107a-2 a 107a-34, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 48, 3, 25, 1, '7000.00', '50.0', '-1.0', '-1.0'),
(26, 'NA', '4.676388900', '-74.1469444444444', 'Cl. 19b # 104-23, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 23, 0, 0, 1, '6000.00', '85.0', '-1.0', '-1.0'),
(27, 'NA', '4.675000000', '-74.1458333333333', 'Cl. 18 #102-1 a 102-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 25, 1, 0, 0, '-1.00', '86.0', '-1.0', '-1.0'),
(28, 'NA', '4.675555600', '-74.1452777777777', 'Cl. 18a #102-2 a 102-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 15, 1, 10, 1, '9000.00', '90.0', '-1.0', '-1.0'),
(29, 'NA', '4.674444400', '-74.1452777777777', 'Cl. 18 #100-1 a 100-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 44, 3, 15, 0, '-1.00', '60.0', '-1.0', '-1.0'),
(30, 'NA', '4.673888900', '74.1447222222222', 'Cl. 18 #100-1 a 100-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 26, 1, 21, 1, '7000.00', '90.0', '-1.0', '-1.0'),
(31, 'NA', '4.672222200', '74.1452777777777', 'Cl. 17 #99-1 a 99-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 26, 2, 20, 1, '15000.00', '104.0', '-1.0', '-1.0'),
(32, 'NA', '4.671944400', '-74.1363888888889', 'Cl. 22 #96a-43 a 96a-99, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 48, 4, 33, 1, '9000.00', '86.0', '-1.0', '-1.0'),
(33, 'NA', '4.673055600', '-74.0697222222222', 'Cra. 50 #78-55, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 42, 5, 38, 1, '15000.00', '86.0', '-1.0', '-1.0'),
(34, 'NA', '4.607500000', '-74.0697222222222', 'Cl. 22 #5-58 a 5-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 43, 1, 18, 0, '-1.00', '100.0', '-1.0', '-1.0'),
(35, 'NA', '4.606666700', '-74.0700000000000', 'Cl. 21 #5-86, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 63, 9, 51, 0, '-1.00', '104.0', '-1.0', '-1.0'),
(36, 'NA', '4.610277800', '-74.1530555555555', 'Peatonal Parque Timiza, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 7, 0, 6, 1, '7000.00', '85.0', '-1.0', '-1.0'),
(37, 'NA', '4.639624000', '74.0721730000000', 'Cra. 21 #51-2 a 51-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 22, 1, 18, 1, '12000.00', '90.0', '-1.0', '-1.0'),
(38, 'NA', '4.639324000', '-74.0745180000000', 'Dg. 36 #51-85, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 25, 1, 8, 1, '12000.00', '90.0', '-1.0', '-1.0'),
(39, 'NA', '4.638337000', '-74.0746920000000', 'Dg. 36 #49-63, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 30, 2, 11, 0, '-1.00', '70.0', '-1.0', '-1.0'),
(40, 'NA', '4.637129000', '-74.0714730000000', 'Cra. 19 #49-20, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 45, 0, 30, 1, '15000.00', '80.0', '-1.0', '-1.0'),
(41, 'NA', '4.695724203', '-74.0305137634277', 'Cra. 6 #119-33 a 119-95, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 23, 3, 0, 0, '-1.00', '86.0', '-1.0', '-1.0'),
(42, 'NA', '4.694783234', '74.0347838401794', 'Cl. 116, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 93, 5, 24, 0, '-1.00', '72.0', '-1.0', '-1.0'),
(43, 'NA', '4.700493186', '74.0301918983459', 'Cra. 7 Bis A #124-1 a 124-51, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 43, 1, 17, 0, '-1.00', '104.0', '-1.0', '-1.0'),
(44, 'NA', '4.691468446', '-74.0333676338195', 'Cl. 113 #7-21, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 25, 2, 9, 0, '-1.00', '90.0', '-1.0', '-1.0'),
(45, 'NA', '4.675963583', '74.0483021736145', 'Cl. 93a #11a-15 a 11a-89, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 22, 1, 0, 0, '-1.00', '110.0', '-1.0', '-1.0'),
(46, 'NA', '4.677364381', '-74.0500295162200', 'Cl. 93 #13A-06, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 23, 1, 17, 0, '-1.00', '86.0', '-1.0', '-1.0'),
(47, 'NA', '4.658202074', '-74.0607154369354', 'Ac 72 #13-23, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 48, 3, 0, 0, '-1.00', '90.0', '-1.0', '-1.0'),
(48, 'NA', '4.657453536', '-74.0596854686737', 'Carrera 72 # 13-23, Asturias, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 28, 2, 7, 0, '-1.00', '88.0', '-1.0', '-1.0'),
(49, 'NA', '4.620100469', '-74.0996932983398', 'Cl. 12b #38-2 a 38-98, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 1, 19, 1, 18, 1, '7000.00', '58.0', '-1.0', '-1.0'),
(50, 'NA', '4.607780904', '-74.1080188751220', 'Cra. 37a #2b-24 a 2b-52, Bogotá, Colombia', 'NA', 'NA', 'NA', 'Bogotá', 0, 24, 1, 19, 0, '-1.00', '60.0', '-1.0', '-1.0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ParqueaderoHasUsuarioAdministra`
--

CREATE TABLE `ParqueaderoHasUsuarioAdministra` (
  `Parqueadero_idParqueadero` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `fechaInicio` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ParqueaderoHasUsuarioParquea`
--

CREATE TABLE `ParqueaderoHasUsuarioParquea` (
  `Parqueadero_idParqueadero` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `horaIngreso` time DEFAULT NULL,
  `horaSalida` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Servicio`
--

CREATE TABLE `Servicio` (
  `idServicio` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `valor` decimal(9,3) DEFAULT NULL,
  `Parqueadero_idParqueadero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ServicioHasUsuarioReserva`
--

CREATE TABLE `ServicioHasUsuarioReserva` (
  `Servicio_idServicio` int(11) NOT NULL,
  `Servicio_Parqueadero_idParqueadero` int(11) NOT NULL,
  `Usuario_idUsuario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Telefono`
--

CREATE TABLE `Telefono` (
  `idTelefono` int(11) NOT NULL,
  `numero` bigint(20) DEFAULT NULL,
  `Usuario_idUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Usuario`
--

CREATE TABLE `Usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Conductor`
--
ALTER TABLE `Conductor`
  ADD PRIMARY KEY (`Usuario_idUsuario`),
  ADD KEY `fk_Conductor_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `Direccion`
--
ALTER TABLE `Direccion`
  ADD PRIMARY KEY (`idDireccion`,`Usuario_idUsuario`),
  ADD KEY `fk_Direccion_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `Email`
--
ALTER TABLE `Email`
  ADD PRIMARY KEY (`idEmail`,`Usuario_idUsuario`),
  ADD KEY `fk_Email_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD PRIMARY KEY (`Usuario_idUsuario`,`Empleado_Usuario_idUsuario`),
  ADD KEY `fk_Empleado_Usuario1_idx` (`Usuario_idUsuario`),
  ADD KEY `fk_Empleado_Empleado1_idx` (`Empleado_Usuario_idUsuario`);

--
-- Indices de la tabla `Horario`
--
ALTER TABLE `Horario`
  ADD PRIMARY KEY (`idHorario`,`Parqueadero_idParqueadero`),
  ADD KEY `fk_Horario_Parqueadero1_idx` (`Parqueadero_idParqueadero`);

--
-- Indices de la tabla `Oferta`
--
ALTER TABLE `Oferta`
  ADD PRIMARY KEY (`idOferta`,`Parqueadero_idParqueadero`),
  ADD KEY `fk_Oferta_Parqueadero1_idx` (`Parqueadero_idParqueadero`);

--
-- Indices de la tabla `Parqueadero`
--
ALTER TABLE `Parqueadero`
  ADD PRIMARY KEY (`idParqueadero`);

--
-- Indices de la tabla `ParqueaderoHasUsuarioAdministra`
--
ALTER TABLE `ParqueaderoHasUsuarioAdministra`
  ADD PRIMARY KEY (`Parqueadero_idParqueadero`,`Usuario_idUsuario`),
  ADD KEY `fk_Parqueadero_has_Usuario1_Usuario1_idx` (`Usuario_idUsuario`),
  ADD KEY `fk_Parqueadero_has_Usuario1_Parqueadero1_idx` (`Parqueadero_idParqueadero`);

--
-- Indices de la tabla `ParqueaderoHasUsuarioParquea`
--
ALTER TABLE `ParqueaderoHasUsuarioParquea`
  ADD PRIMARY KEY (`Parqueadero_idParqueadero`,`Usuario_idUsuario`),
  ADD KEY `fk_Parqueadero_has_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  ADD KEY `fk_Parqueadero_has_Usuario_Parqueadero1_idx` (`Parqueadero_idParqueadero`);

--
-- Indices de la tabla `Servicio`
--
ALTER TABLE `Servicio`
  ADD PRIMARY KEY (`idServicio`,`Parqueadero_idParqueadero`),
  ADD KEY `fk_Servicio_Parqueadero_idx` (`Parqueadero_idParqueadero`);

--
-- Indices de la tabla `ServicioHasUsuarioReserva`
--
ALTER TABLE `ServicioHasUsuarioReserva`
  ADD PRIMARY KEY (`Servicio_idServicio`,`Servicio_Parqueadero_idParqueadero`,`Usuario_idUsuario`),
  ADD KEY `fk_Servicio_has_Usuario_Usuario1_idx` (`Usuario_idUsuario`),
  ADD KEY `fk_Servicio_has_Usuario_Servicio1_idx` (`Servicio_idServicio`,`Servicio_Parqueadero_idParqueadero`);

--
-- Indices de la tabla `Telefono`
--
ALTER TABLE `Telefono`
  ADD PRIMARY KEY (`idTelefono`,`Usuario_idUsuario`),
  ADD KEY `fk_Telefono_Usuario1_idx` (`Usuario_idUsuario`);

--
-- Indices de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Direccion`
--
ALTER TABLE `Direccion`
  MODIFY `idDireccion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Email`
--
ALTER TABLE `Email`
  MODIFY `idEmail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Horario`
--
ALTER TABLE `Horario`
  MODIFY `idHorario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `Oferta`
--
ALTER TABLE `Oferta`
  MODIFY `idOferta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `Parqueadero`
--
ALTER TABLE `Parqueadero`
  MODIFY `idParqueadero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `Servicio`
--
ALTER TABLE `Servicio`
  MODIFY `idServicio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Telefono`
--
ALTER TABLE `Telefono`
  MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `Usuario`
--
ALTER TABLE `Usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Conductor`
--
ALTER TABLE `Conductor`
  ADD CONSTRAINT `fk_Conductor_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Direccion`
--
ALTER TABLE `Direccion`
  ADD CONSTRAINT `fk_Direccion_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Email`
--
ALTER TABLE `Email`
  ADD CONSTRAINT `fk_Email_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Empleado`
--
ALTER TABLE `Empleado`
  ADD CONSTRAINT `fk_Empleado_Empleado1` FOREIGN KEY (`Empleado_Usuario_idUsuario`) REFERENCES `Empleado` (`Usuario_idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Empleado_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Horario`
--
ALTER TABLE `Horario`
  ADD CONSTRAINT `fk_Horario_Parqueadero1` FOREIGN KEY (`Parqueadero_idParqueadero`) REFERENCES `Parqueadero` (`idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Oferta`
--
ALTER TABLE `Oferta`
  ADD CONSTRAINT `fk_Oferta_Parqueadero1` FOREIGN KEY (`Parqueadero_idParqueadero`) REFERENCES `Parqueadero` (`idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ParqueaderoHasUsuarioAdministra`
--
ALTER TABLE `ParqueaderoHasUsuarioAdministra`
  ADD CONSTRAINT `fk_Parqueadero_has_Usuario1_Parqueadero1` FOREIGN KEY (`Parqueadero_idParqueadero`) REFERENCES `Parqueadero` (`idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Parqueadero_has_Usuario1_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ParqueaderoHasUsuarioParquea`
--
ALTER TABLE `ParqueaderoHasUsuarioParquea`
  ADD CONSTRAINT `fk_Parqueadero_has_Usuario_Parqueadero1` FOREIGN KEY (`Parqueadero_idParqueadero`) REFERENCES `Parqueadero` (`idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Parqueadero_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Servicio`
--
ALTER TABLE `Servicio`
  ADD CONSTRAINT `fk_Servicio_Parqueadero` FOREIGN KEY (`Parqueadero_idParqueadero`) REFERENCES `Parqueadero` (`idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `ServicioHasUsuarioReserva`
--
ALTER TABLE `ServicioHasUsuarioReserva`
  ADD CONSTRAINT `fk_Servicio_has_Usuario_Servicio1` FOREIGN KEY (`Servicio_idServicio`,`Servicio_Parqueadero_idParqueadero`) REFERENCES `Servicio` (`idServicio`, `Parqueadero_idParqueadero`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Servicio_has_Usuario_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `Telefono`
--
ALTER TABLE `Telefono`
  ADD CONSTRAINT `fk_Telefono_Usuario1` FOREIGN KEY (`Usuario_idUsuario`) REFERENCES `Usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
