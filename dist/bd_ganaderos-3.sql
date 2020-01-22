-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 05-04-2019 a las 21:24:39
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_ganaderos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganaderos`
--

CREATE TABLE `ganaderos` (
  `id_ganaderos` int(100) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ap_pat` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `ap_mat` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `edad` varchar(2) COLLATE utf8_spanish_ci NOT NULL,
  `genero` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `no_tel` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nom_gan` varchar(250) COLLATE utf8_spanish_ci NOT NULL,
  `n_calle` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `colonia` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `cp` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `no_litros` int(255) NOT NULL,
  `no_acciones` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ganaderos`
--

INSERT INTO `ganaderos` (`id_ganaderos`, `nombre`, `ap_pat`, `ap_mat`, `edad`, `genero`, `no_tel`, `nom_gan`, `n_calle`, `numero`, `colonia`, `ciudad`, `cp`, `fecha`, `no_litros`, `no_acciones`) VALUES
(1, 'vghjbknlm', 'hvbjknm', 'gfhvbjnk', '18', 'M', '12345', 'hvgbjnkm', 'v hbjnkm', '7', 'yvgbhujn', 'bhjnkm', '78', '1999-12-12', 12231, 123),
(29, 'vghjbknlm', 'hvbjknm', 'gfhvbjnk', '18', 'M', '12345', 'hvgbjnkm', 'v hbjnkm', '7', 'yvgbhujn', 'bhjnkm', '78', '1999-12-12', 12231, 123),
(30, 'vghjbknlm', 'hvbjknm', 'gfhvbjnk', '18', 'M', '12345', 'hvgbjnkm', 'v hbjnkm', '7', 'yvgbhujn', 'bhjnkm', '78', '1999-12-12', 12231, 123),
(34, 'vghjbknlm', 'hvbjknm', 'gfhvbjnk', '18', 'M', '12345', 'hvgbjnkm', 'v hbjnkm', '7', 'yvgbhujn', 'bhjnkm', '78', '1999-12-12', 122, 123),
(35, 'cristian', 'hernandez', 'ortega', '', 'M', '2471022153', 'UEMSTI', 'por ahi', '123', 'huamantla', 'san sebastian', '90506', '1996-11-09', 4500, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lácteos`
--

CREATE TABLE `lácteos` (
  `id_reg` int(12) NOT NULL,
  `tipo` varchar(12) COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(2) NOT NULL,
  `precio_publico` float NOT NULL,
  `precio_mayore` float NOT NULL,
  `fecha_prod` date NOT NULL,
  `fecha_cad` date NOT NULL,
  `unidades_p` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `lácteos`
--

INSERT INTO `lácteos` (`id_reg`, `tipo`, `cantidad`, `precio_publico`, `precio_mayore`, `fecha_prod`, `fecha_cad`, `unidades_p`) VALUES
(16, 'ENTERA ', 1, 11.4, 11.4, '2019-12-12', '1999-12-12', 1),
(17, 'ENTERA ', 1, 11.4, 11.4, '2019-12-12', '1999-12-12', 1),
(18, 'ENTERA ', 1, 11.4, 11.4, '2016-12-12', '2019-12-12', 12),
(19, 'ENTERA ', 1, 11.4, 11.4, '1234-12-31', '1234-12-12', 1),
(20, 'ENTERA ', 2, 11.4, 11.4, '1234-12-31', '1234-12-12', 1),
(21, 'ENTERA ', 1, 11.4, 11.4, '2016-12-12', '2019-12-12', 12),
(22, 'ENTERA ', 1, 11.4, 11.4, '2016-12-12', '2019-12-12', 12),
(23, 'ENTERA ', 1, 11.4, 11.4, '2006-12-12', '2016-12-12', 12),
(24, 'ENTERA ', 1, 11.4, 11.4, '2018-12-21', '2019-12-31', 12),
(25, 'ENTERA ', 1, 11.4, 11.4, '2006-12-12', '2016-12-12', 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `merma`
--

CREATE TABLE `merma` (
  `id_regmerma` int(100) NOT NULL,
  `tmerma` double NOT NULL,
  `queso_g` double NOT NULL,
  `queso_p` double NOT NULL,
  `queso_c` double NOT NULL,
  `sobrante` double NOT NULL,
  `fecha_pro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `queso`
--

CREATE TABLE `queso` (
  `id_reg` int(10) NOT NULL,
  `tipo_queso` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `precio_publico` double NOT NULL,
  `precio` float NOT NULL,
  `fecha_p` date NOT NULL,
  `unidades_p` int(30) NOT NULL,
  `fecha_c` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `queso`
--

INSERT INTO `queso` (`id_reg`, `tipo_queso`, `precio_publico`, `precio`, `fecha_p`, `unidades_p`, `fecha_c`) VALUES
(13, 'GOUDA', 475, 430, '1234-12-12', 1, '1234-12-12'),
(14, 'GOUDA', 475, 430, '2010-12-12', 10, '2001-12-29'),
(15, 'PANELA', 290, 256, '2009-11-01', 60, '2010-09-14'),
(16, 'CREMA', 396, 346, '2017-05-02', 100, '2019-12-01'),
(17, 'PANELA', 290, 346, '2000-12-30', 200, '2010-08-12'),
(18, 'GOUDA', 475, 430, '2018-12-12', 12, '2013-12-12'),
(19, 'GOUDA', 475, 430, '2019-12-12', 12, '2016-12-12'),
(20, 'GOUDA', 475, 430, '2016-12-12', 12, '2016-12-12'),
(21, 'GOUDA', 475, 430, '2015-06-11', 12, '2019-12-12');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ganaderos`
--
ALTER TABLE `ganaderos`
  ADD PRIMARY KEY (`id_ganaderos`);

--
-- Indices de la tabla `lácteos`
--
ALTER TABLE `lácteos`
  ADD PRIMARY KEY (`id_reg`);

--
-- Indices de la tabla `merma`
--
ALTER TABLE `merma`
  ADD PRIMARY KEY (`id_regmerma`);

--
-- Indices de la tabla `queso`
--
ALTER TABLE `queso`
  ADD PRIMARY KEY (`id_reg`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ganaderos`
--
ALTER TABLE `ganaderos`
  MODIFY `id_ganaderos` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `lácteos`
--
ALTER TABLE `lácteos`
  MODIFY `id_reg` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `merma`
--
ALTER TABLE `merma`
  MODIFY `id_regmerma` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `queso`
--
ALTER TABLE `queso`
  MODIFY `id_reg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
