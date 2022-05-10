-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-05-2022 a las 03:10:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base5`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_aut` int(11) NOT NULL,
  `Nombre_autor` varchar(45) NOT NULL,
  `apellido_autor` varchar(45) NOT NULL,
  `genero_literario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `autores`
--

INSERT INTO `autores` (`id_aut`, `Nombre_autor`, `apellido_autor`, `genero_literario`) VALUES
(101, 'Borges', 'Jorge', 'Ficción'),
(102, 'Arena', 'Facundo', 'Tecnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libro`
--

CREATE TABLE `libro` (
  `id_libro` int(11) NOT NULL,
  `Titulo` varchar(45) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `Editorial` varchar(45) NOT NULL,
  `Año de Edición` varchar(45) NOT NULL,
  `Cantidad de paginas` varchar(45) NOT NULL,
  `Genero` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `libro`
--

INSERT INTO `libro` (`id_libro`, `Titulo`, `ISBN`, `Editorial`, `Año de Edición`, `Cantidad de paginas`, `Genero`) VALUES
(1, 'PHP desde cero', 2147483647, 'Users', '2014', '193', 'Programacion'),
(2, 'Sitios web con HTML5 + CSS3 ', 2147483647, 'Users', '2015', '354', 'Diseño web');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_Prestamos` int(11) NOT NULL,
  `Fecha_Prestamos` datetime NOT NULL,
  `Fecha_devolucion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_Prestamos`, `Fecha_Prestamos`, `Fecha_devolucion`) VALUES
(100, '2005-11-21 11:10:00', '2008-11-21 20:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(45) NOT NULL,
  `Apellido_Usuario` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Altura` int(11) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `e-Mail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `Nombre_Usuario`, `Apellido_Usuario`, `Direccion`, `Altura`, `Telefono`, `e-Mail`) VALUES
(21, 'Jose', 'Gonzales', 'munilla', 0, '15478794587', 'jgonza@gmail.com'),
(22, 'Lorena', 'Avellana', 'socrates', 0, '1548952010', 'loreavell@hotmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_aut`);

--
-- Indices de la tabla `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_Prestamos`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `autores`
--
ALTER TABLE `autores`
  MODIFY `id_aut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de la tabla `libro`
--
ALTER TABLE `libro`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_Prestamos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
