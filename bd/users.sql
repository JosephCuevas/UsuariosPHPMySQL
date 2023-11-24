-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-11-2023 a las 17:46:54
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `users`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `descripcion`) VALUES
(1, 'administrador'),
(2, 'entrenador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_rol` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuarios_ibfk_1` (`id_rol`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`, `id_rol`) VALUES
(1, 'Elliot', '46fa97a5b70681d5ac78efb60f0c6867', 1),
(2, 'Doky', 'be41432844ec9d2520e88b7fbcc1e829', 2),
(3, 'Chocolate', 'c378985d629e99a4e86213db0cd5e70d', 2),
(4, 'Amorosa', '63f789d519c6378baa142257ce5ad10a', 2),
(5, 'Chispa', 'f6bd26b3c6ea16f49b09ebff97f04f8c', 2),
(6, 'NN', 'eab71244afb687f16d8c4f5ee9d6ef0e', 2),
(7, 'Donatela', '334b64611755f973b8163d94190e84f7', 2),
(8, 'Tartañan', '4e790375270718d581646f34c19a7aff', 2),
(10, 'Felicidad', 'ef4f3d00f44433ace9ce1895bf8b6486', 2),
(11, 'Esperanza', '6c5d50e7e28bf5b4319fa47c58e0483a', 2),
(12, 'Amor', '5da2297bad6924526e48e00dbfc3c27a', 2),
(18, 'Rebeca', 'd128d62fa8189eb2ff505c23f43bc758', 2),
(20, 'Pedrito', '81dc9bdb52d04dc20036dbd8313ed055', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
