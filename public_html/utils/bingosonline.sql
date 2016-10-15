-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2016 a las 21:38:56
-- Versión del servidor: 5.7.15-log
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bingosonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adminitradores`
--

CREATE TABLE `adminitradores` (
  `Usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Contraseña` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `adminitradores`
--

INSERT INTO `adminitradores` (`Usuario`, `Contraseña`, `Nombre`, `Correo`, `id`) VALUES
('JuanAgudelo', '123456', 'Juan Esteban Agudelo Agudelo', 'juanes_filo@hotmail.com', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablasdebingo`
--

CREATE TABLE `tablasdebingo` (
  `valor1_1` int(11) DEFAULT NULL,
  `valor1_2` int(11) DEFAULT NULL,
  `valor1_3` int(11) DEFAULT NULL,
  `valor1_4` int(11) DEFAULT NULL,
  `valor1_5` int(11) DEFAULT NULL,
  `valor1_6` int(11) DEFAULT NULL,
  `valor1_7` int(11) DEFAULT NULL,
  `valor1_8` int(11) DEFAULT NULL,
  `valor1_9` int(11) DEFAULT NULL,
  `valor1_10` int(11) DEFAULT NULL,
  `valor2_1` int(11) DEFAULT NULL,
  `valor2_2` int(11) DEFAULT NULL,
  `valor2_3` int(11) DEFAULT NULL,
  `valor2_4` int(11) DEFAULT NULL,
  `valor2_5` int(11) DEFAULT NULL,
  `valor2_6` int(11) DEFAULT NULL,
  `valor2_7` int(11) DEFAULT NULL,
  `valor2_8` int(11) DEFAULT NULL,
  `valor2_9` int(11) DEFAULT NULL,
  `valor2_10` int(11) DEFAULT NULL,
  `valor3_1` int(11) DEFAULT NULL,
  `valor3_2` int(11) DEFAULT NULL,
  `valor3_3` int(11) DEFAULT NULL,
  `valor3_4` int(11) DEFAULT NULL,
  `valor3_5` int(11) DEFAULT NULL,
  `valor3_6` int(11) DEFAULT NULL,
  `valor3_7` int(11) DEFAULT NULL,
  `valor3_8` int(11) DEFAULT NULL,
  `valor3_9` int(11) DEFAULT NULL,
  `valor3_10` int(11) DEFAULT NULL,
  `Administrador` int(11) NOT NULL,
  `Usuario` int(11) NOT NULL,
  `codigoDeBarras` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tablerodebingo`
--

CREATE TABLE `tablerodebingo` (
  `Administrador` int(11) NOT NULL,
  `numeros1_10` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 01 a 10',
  `numeros11_20` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 10 a 20',
  `numeros21_30` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 21 a 30',
  `numeros31_40` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 31 a 30',
  `numeros41_50` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 41 a 50',
  `numeros51_60` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 51 a 60',
  `numeros61_70` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 61 a 70',
  `numeros71_80` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 71 a 80',
  `numeros81_90` bit(10) NOT NULL DEFAULT b'0' COMMENT 'Tabla de Bingo de 81 a 90'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Usuario` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Contraseña` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `Correo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Sede` int(11) NOT NULL,
  `Id` int(11) NOT NULL,
  `Administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Esta tabla guarda la informacion de los usuarios';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adminitradores`
--
ALTER TABLE `adminitradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tablasdebingo`
--
ALTER TABLE `tablasdebingo`
  ADD UNIQUE KEY `codigoDeBarras` (`codigoDeBarras`),
  ADD KEY `idUsuario` (`Usuario`),
  ADD KEY `idAdinistrador` (`Administrador`);

--
-- Indices de la tabla `tablerodebingo`
--
ALTER TABLE `tablerodebingo`
  ADD PRIMARY KEY (`Administrador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Administrador` (`Administrador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adminitradores`
--
ALTER TABLE `adminitradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tablasdebingo`
--
ALTER TABLE `tablasdebingo`
  ADD CONSTRAINT `tablasdebingo_ibfk_1` FOREIGN KEY (`Administrador`) REFERENCES `adminitradores` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tablasdebingo_ibfk_2` FOREIGN KEY (`Usuario`) REFERENCES `usuarios` (`Administrador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tablerodebingo`
--
ALTER TABLE `tablerodebingo`
  ADD CONSTRAINT `tablerodebingo_ibfk_1` FOREIGN KEY (`Administrador`) REFERENCES `adminitradores` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Administrador`) REFERENCES `adminitradores` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
