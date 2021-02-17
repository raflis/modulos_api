-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-02-2021 a las 09:46:53
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `modulos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidad`
--

CREATE TABLE `especialidad` (
  `especialidad_id` int(11) NOT NULL,
  `especialidad_nombre` varchar(255) DEFAULT NULL,
  `especialidad_codigoexterno` varchar(255) DEFAULT NULL,
  `especialidad_img` varchar(255) DEFAULT NULL,
  `especialidad_activo` int(11) DEFAULT NULL,
  `especialidad_eliminado` int(11) DEFAULT NULL,
  `especialidad_fechareg` datetime DEFAULT NULL,
  `especialidad_consede` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidad`
--

INSERT INTO `especialidad` (`especialidad_id`, `especialidad_nombre`, `especialidad_codigoexterno`, `especialidad_img`, `especialidad_activo`, `especialidad_eliminado`, `especialidad_fechareg`, `especialidad_consede`) VALUES
(1, 'CIRUGIA GENERAL', 'CGZ006', '1.JPG', 0, 1, NULL, NULL),
(2, 'CIRUGIA ONCOLOGICA', 'CGZ007', '2.JPG', 0, 1, NULL, NULL),
(3, '12', '23', '5edf9aff40e2c.png', 0, 1, '2020-06-08 22:52:18', NULL),
(4, 'Virtual', '', '', 0, 1, '2020-06-10 19:06:36', 0),
(5, 'Ginecología', '', '5efe87b49ea05.png', 1, 0, '2020-06-10 20:52:58', 1),
(6, 'Cardiología', '', '5ee1734cd6f94.png', 0, 1, '2020-06-10 20:57:00', 1),
(7, 'Dermatología', '', '5ee1735746bf9.png', 0, 1, '2020-06-10 20:57:11', 6),
(8, 'Psicología', '', '', 1, 0, '2020-06-13 12:13:47', 6),
(9, 'MEDICO', '122123', '5f023c7336b0e.jpg', 0, 1, '2020-07-05 17:47:47', 0),
(10, 'essalud', 'es001', 'salud.jpeg', 1, 1, '2021-02-17 00:00:00', 1),
(12, 'essalud', 'es001', 'salud.jpeg', 0, 1, '2021-02-17 00:00:00', 1),
(13, 'solidaridad', 'es001', 'solidaridad.jpeg', 0, 1, '2021-02-17 00:00:00', 1);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `_pk_roles` int(11) NOT NULL,
  `z_timestamp_create` datetime DEFAULT NULL,
  `z_timestamp_mod` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `fechadesde` date DEFAULT NULL,
  `fechahasta` date DEFAULT NULL,
  `horadesde` time DEFAULT NULL,
  `horahasta` time DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `activado` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`_pk_roles`, `z_timestamp_create`, `z_timestamp_mod`, `name`, `description`, `fechadesde`, `fechahasta`, `horadesde`, `horahasta`, `imagen`, `activado`) VALUES
(1, '2021-02-17 00:00:00', '2021-02-17 00:00:00', 'Editor', 'Permite modificar', '2021-02-17', '2021-02-17', '09:00:00', '12:00:00', 'editor.png', '1');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `dni` varchar(8) DEFAULT NULL,
  `correo` varchar(250) DEFAULT NULL,
  `clave` text DEFAULT NULL,
  `nombre` text DEFAULT NULL,
  `apellido` text DEFAULT NULL,
  `celular` varchar(10) DEFAULT NULL,
  `rol` text DEFAULT NULL,
  `reg_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `dni`, `correo`, `clave`, `nombre`, `apellido`, `celular`, `rol`, `reg_date`) VALUES
(1, '70435464', 'mq@morangesoft.com', '123456', 'Mijail', 'Quesada', NULL, NULL, '2021-01-25 14:32:38'),
(2, '12345678', 'prueba@prueba.com', 'clave', 'dennis', 'ormeño', '987654321', 'admin', '2021-02-17 00:13:45'),
(3, '12345678', 'prueba@prueba.com', 'clave', 'dennis', 'ormeño', '987654321', 'admin', '2021-02-17 00:28:39'),
(4, '12345678', 'correo@correo.com', '12345678', 'Denn', 'Orme', '123456789', 'admin', '2021-02-17 00:39:21'),
(5, '12345678', 'correo@correo.com', '12345678', 'Denn', 'Orme', '123456789', 'admin', '2021-02-17 00:39:31'),
(6, '12345678', 'correo@abs.com', '12345678', 'Denn', 'Orme', '123456789', 'admin', '2021-02-17 00:56:26'),
(7, '12345678', 'correo@correo.com', '12345678', 'Denn', 'Orme', '123456789', 'admin', '2021-02-17 01:50:05'),
(8, '12345678', 'correo@correo.com', '12345678', 'Angelica', 'Grandez', '987654321', 'admin', '2021-02-17 01:50:59'),
(10, NULL, 'correo@correo.com', '12345678', 'Denn', 'Orme', '123456789', 'admin', '2021-02-17 01:52:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariosede`
--

CREATE TABLE `usuariosede` (
  `usuariosede_id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `sede_id` int(11) DEFAULT NULL,
  `fk_ubicacion` varchar(255) NOT NULL,
  `usuariosede_activo` int(11) DEFAULT NULL,
  `usuariosede_eliminado` int(11) DEFAULT NULL,
  `usuariosede_fechareg` datetime DEFAULT NULL,
  `usuario_precio` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariosede`
--

INSERT INTO `usuariosede` (`usuariosede_id`, `usuario_id`, `sede_id`, `fk_ubicacion`, `usuariosede_activo`, `usuariosede_eliminado`, `usuariosede_fechareg`, `usuario_precio`) VALUES
(1, 2, 1, '2', 1, 0, NULL, 15),
(2, 5, 1, '2', 0, 1, '2020-06-08 23:19:06', 30),
(3, 5, 2, '0', 0, 1, '2020-06-08 23:19:06', 15),
(4, 5, 1, '2', 1, 0, '2020-06-08 23:19:13', 20),
(5, 7, 1, '2', 0, 1, '2020-06-09 12:23:19', NULL),
(6, 7, 2, '0', 0, 1, '2020-06-09 12:23:19', NULL),
(7, 7, 1, '2', 0, 1, '2020-06-09 15:50:37', NULL),
(8, 7, 2, '0', 0, 1, '2020-06-09 15:50:37', NULL),
(9, 7, 1, '2', 0, 1, '2020-06-10 19:07:01', NULL),
(10, 10, 20, 'Lima', 1, 1, '2021-02-17 00:00:00', 29.4),
(11, 7, 1, '2', 0, 1, '2020-06-10 20:58:21', NULL),
(13, 7, 1, '2', 0, 1, '2020-06-10 21:02:47', NULL),
(14, 7, 2, '0', 0, 1, '2020-06-10 21:02:47', NULL),
(15, 10, 1, '2', 0, 1, '2020-06-10 21:04:41', NULL),
(16, 10, 2, '0', 0, 1, '2020-06-10 21:04:41', NULL),
(17, 13, 2, '0', 0, 1, '2020-06-10 21:06:15', NULL),
(18, 13, 2, '0', 1, 0, '2020-06-10 21:06:44', NULL),
(19, 23, 2, '0', 1, 0, '2020-06-11 18:45:24', NULL),
(20, 24, 1, '2', 1, 0, '2020-06-11 18:46:31', NULL),
(21, 25, 1, '2', 1, 0, '2020-06-11 18:47:40', NULL),
(22, 26, 1, '2', 1, 0, '2020-06-11 18:48:56', NULL),
(23, 7, 1, '2', 0, 1, '2020-06-12 16:05:27', NULL),
(24, 7, 2, '0', 0, 1, '2020-06-12 16:05:27', NULL),
(25, 36, 2, '0', 1, 0, '2020-06-12 17:15:28', NULL),
(26, 10, 1, '2', 1, 0, '2020-06-16 10:05:09', NULL),
(27, 10, 2, '0', 1, 0, '2020-06-16 10:05:09', NULL),
(28, 10, 6, '', 1, 0, '2020-06-16 10:05:09', NULL),
(29, 7, 6, '', 1, 0, '2020-06-16 10:05:30', NULL),
(30, 44, 2, '0', 0, 1, '2020-06-22 17:12:21', NULL),
(31, 45, 1, '2', 0, 1, '2020-06-22 17:14:20', NULL),
(32, 46, 2, '0', 0, 1, '2020-06-22 17:16:01', NULL),
(33, 47, 2, '0', 0, 1, '2020-06-22 17:19:18', NULL),
(34, 45, 1, '2', 0, 1, '2020-06-22 17:19:47', NULL),
(35, 46, 2, '0', 0, 1, '2020-06-22 17:20:10', NULL),
(36, 0, 1, '2', 0, 1, '2020-06-22 17:22:29', NULL),
(37, 50, 2, '0', 0, 1, '2020-06-22 17:25:54', NULL),
(38, 51, 2, '0', 1, 0, '2020-06-22 17:26:39', NULL),
(39, 52, 1, '2', 0, 1, '2020-06-22 17:27:35', NULL),
(40, 53, 2, '0', 0, 1, '2020-06-22 17:31:54', NULL),
(41, 53, 2, '0', 1, 0, '2020-06-22 17:36:58', NULL),
(42, 54, 8, '', 0, 1, '2020-07-01 12:54:33', NULL),
(43, 54, 8, '', 0, 1, '2020-07-01 12:55:06', NULL),
(44, 41, 2, '0', 0, 1, '2020-07-01 20:38:46', NULL),
(45, 41, 9, '1', 0, 1, '2020-07-01 20:38:46', NULL),
(46, 42, 2, '0', 0, 1, '2020-07-01 20:39:16', NULL),
(47, 42, 2, '0', 0, 1, '2020-07-01 20:40:15', NULL),
(48, 42, 9, '1', 0, 1, '2020-07-01 20:40:15', NULL),
(49, 43, 1, '2', 0, 1, '2020-07-01 20:40:51', NULL),
(50, 43, 2, '0', 0, 1, '2020-07-01 20:40:51', NULL),
(51, 44, 2, '0', 1, 0, '2020-07-01 20:41:23', NULL),
(52, 44, 7, '', 1, 0, '2020-07-01 20:41:23', NULL),
(53, 45, 2, '0', 1, 0, '2020-07-01 20:41:54', NULL),
(54, 46, 2, '0', 1, 0, '2020-07-01 20:42:12', NULL),
(55, 46, 7, '', 1, 0, '2020-07-01 20:42:12', NULL),
(56, 47, 1, '2', 1, 0, '2020-07-01 20:42:53', NULL),
(57, 47, 9, '1', 1, 0, '2020-07-01 20:42:53', NULL),
(58, 48, 2, '0', 1, 0, '2020-07-01 20:43:25', NULL),
(59, 48, 8, '', 1, 0, '2020-07-01 20:43:25', NULL),
(60, 49, 8, '', 1, 0, '2020-07-01 20:43:59', NULL),
(61, 49, 9, '1', 1, 0, '2020-07-01 20:43:59', NULL),
(62, 50, 2, '0', 1, 0, '2020-07-01 20:44:23', NULL),
(63, 52, 1, '2', 1, 0, '2020-07-01 20:45:18', NULL),
(64, 54, 8, '', 1, 0, '2020-07-01 20:45:37', NULL),
(65, 61, 1, '2', 1, 0, '2020-07-05 17:35:29', NULL),
(66, 61, 2, '0', 1, 0, '2020-07-05 17:35:29', NULL),
(67, 61, 7, '', 1, 0, '2020-07-05 17:35:29', NULL),
(68, 41, 2, '0', 1, 0, '2020-07-09 19:30:45', NULL),
(69, 41, 9, '1', 1, 0, '2020-07-09 19:30:45', NULL),
(70, 42, 2, '0', 1, 0, '2020-07-09 19:30:54', NULL),
(71, 42, 9, '1', 1, 0, '2020-07-09 19:30:54', 10),
(72, 43, 7, '', 0, 1, '2020-07-15 13:06:29', NULL),
(73, 43, 7, '', 0, 1, '2020-07-15 13:06:37', NULL),
(74, 43, 7, '', 0, 1, '2020-07-15 13:06:43', NULL),
(75, 43, 7, '', 0, 1, '2020-07-15 13:06:50', NULL),
(76, 43, 8, '', 0, 1, '2020-07-15 13:07:29', NULL),
(77, 43, 0, '', 1, 0, '2020-07-15 13:07:44', NULL),
(78, 1, 2, 'Lima', 1, 1, '2021-02-17 00:00:00', 29),
(79, 1, 2, 'Lima', 1, 1, '2021-02-17 00:00:00', 29.4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  ADD PRIMARY KEY (`especialidad_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`_pk_roles`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuariosede`
--
ALTER TABLE `usuariosede`
  ADD PRIMARY KEY (`usuariosede_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `especialidad`
--
ALTER TABLE `especialidad`
  MODIFY `especialidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `_pk_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuariosede`
--
ALTER TABLE `usuariosede`
  MODIFY `usuariosede_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
