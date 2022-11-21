-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-11-2022 a las 22:59:09
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `atempi`
--
CREATE DATABASE IF NOT EXISTS `atempi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `atempi`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dotacion`
--

DROP TABLE IF EXISTS `dotacion`;
CREATE TABLE IF NOT EXISTS `dotacion` (
  `id_dotacion` int NOT NULL AUTO_INCREMENT,
  `dni_empleado` int NOT NULL,
  `id_producto` int NOT NULL,
  `nserie` varchar(100) NOT NULL,
  `cantidad` int NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cod_prenda` int DEFAULT NULL,
  `dni` int DEFAULT NULL,
  PRIMARY KEY (`id_dotacion`),
  KEY `cod_prenda` (`cod_prenda`),
  KEY `dni` (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

DROP TABLE IF EXISTS `empleado`;
CREATE TABLE IF NOT EXISTS `empleado` (
  `dni` int NOT NULL,
  `placa` int DEFAULT NULL,
  `primer_nombre` varchar(25) DEFAULT NULL,
  `segundo_nombre` varchar(25) DEFAULT NULL,
  `primer_apellido` varchar(25) DEFAULT NULL,
  `segundo_apellido` varchar(25) DEFAULT NULL,
  `genero` varchar(25) DEFAULT NULL,
  `celular` bigint DEFAULT NULL,
  `puesto` varchar(45) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `persona_contacto` varchar(50) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL,
  `numero_contacto` bigint DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `cod_prenda` int NOT NULL,
  `prenda` varchar(25) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `talla` varchar(3) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`cod_prenda`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `contrasena` varchar(50) DEFAULT NULL,
  `cargo` varchar(25) DEFAULT NULL,
  `dni` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `dni` (`dni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
