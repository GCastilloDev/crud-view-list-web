-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2019 a las 16:59:41
-- Versión del servidor: 10.1.37-MariaDB
-- Versión de PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `castillo`
--
CREATE DATABASE IF NOT EXISTS `castillo` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `castillo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `najera`
--

CREATE TABLE `najera` (
  `columna1g` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `columna2u` int(50) NOT NULL,
  `columna3s` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `columna4t` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `columna5a` int(50) NOT NULL,
  `columna6v` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `columna7o` int(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `najera`
--

INSERT INTO `najera` (`columna1g`, `columna2u`, `columna3s`, `columna4t`, `columna5a`, `columna6v`, `columna7o`, `id`) VALUES
('1', 1, '1', '1', 1, '1', 1, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `najera`
--
ALTER TABLE `najera`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `najera`
--
ALTER TABLE `najera`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
