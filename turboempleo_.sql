-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-08-2025 a las 04:46:49
-- Versión del servidor: 8.0.43
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turboempleo`
--
CREATE DATABASE IF NOT EXISTS `turboempleo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `turboempleo`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add rol', 7, 'add_rol'),
(26, 'Can change rol', 7, 'change_rol'),
(27, 'Can delete rol', 7, 'delete_rol'),
(28, 'Can view rol', 7, 'view_rol'),
(29, 'Can add usuarios', 8, 'add_usuarios'),
(30, 'Can change usuarios', 8, 'change_usuarios'),
(31, 'Can delete usuarios', 8, 'delete_usuarios'),
(32, 'Can view usuarios', 8, 'view_usuarios'),
(33, 'Can add empresa', 9, 'add_empresa'),
(34, 'Can change empresa', 9, 'change_empresa'),
(35, 'Can delete empresa', 9, 'delete_empresa'),
(36, 'Can view empresa', 9, 'view_empresa'),
(37, 'Can add aspirante', 10, 'add_aspirante'),
(38, 'Can change aspirante', 10, 'change_aspirante'),
(39, 'Can delete aspirante', 10, 'delete_aspirante'),
(40, 'Can view aspirante', 10, 'view_aspirante'),
(41, 'Can add proceso seleccion', 11, 'add_procesoseleccion'),
(42, 'Can change proceso seleccion', 11, 'change_procesoseleccion'),
(43, 'Can delete proceso seleccion', 11, 'delete_procesoseleccion'),
(44, 'Can view proceso seleccion', 11, 'view_procesoseleccion'),
(45, 'Can add vacante', 12, 'add_vacante'),
(46, 'Can change vacante', 12, 'change_vacante'),
(47, 'Can delete vacante', 12, 'delete_vacante'),
(48, 'Can view vacante', 12, 'view_vacante'),
(49, 'Can add detalle_ vacante', 13, 'add_detalle_vacante'),
(50, 'Can change detalle_ vacante', 13, 'change_detalle_vacante'),
(51, 'Can delete detalle_ vacante', 13, 'delete_detalle_vacante'),
(52, 'Can view detalle_ vacante', 13, 'view_detalle_vacante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(10, 'usuarios', 'aspirante'),
(13, 'usuarios', 'detalle_vacante'),
(9, 'usuarios', 'empresa'),
(11, 'usuarios', 'procesoseleccion'),
(7, 'usuarios', 'rol'),
(8, 'usuarios', 'usuarios'),
(12, 'usuarios', 'vacante');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-08-25 23:43:21.007477'),
(2, 'auth', '0001_initial', '2025-08-25 23:43:21.302830'),
(3, 'admin', '0001_initial', '2025-08-25 23:43:21.372578'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-08-25 23:43:21.379918'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-08-25 23:43:21.385055'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-08-25 23:43:21.440890'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-08-25 23:43:21.474293'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-08-25 23:43:21.491176'),
(9, 'auth', '0004_alter_user_username_opts', '2025-08-25 23:43:21.496917'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-08-25 23:43:21.528652'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-08-25 23:43:21.530027'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-08-25 23:43:21.535291'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-08-25 23:43:21.571803'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-08-25 23:43:21.606996'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-08-25 23:43:21.620976'),
(16, 'auth', '0011_update_proxy_permissions', '2025-08-25 23:43:21.627059'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-08-25 23:43:21.661761'),
(18, 'sessions', '0001_initial', '2025-08-25 23:43:21.680395'),
(19, 'usuarios', '0001_initial', '2025-08-25 23:43:21.719617'),
(20, 'usuarios', '0002_rol_usuarios_empresa_aspirante_delete_perfil', '2025-08-25 23:43:21.991765'),
(21, 'usuarios', '0003_procesoseleccion_vacante_detalle_vacante', '2025-08-25 23:43:22.171123'),
(22, 'usuarios', '0004_usuarios_email', '2025-08-25 23:43:22.209477'),
(23, 'usuarios', '0005_aspirante_asp_foto_empresa_em_curriculum_and_more', '2025-08-26 01:04:45.384475'),
(24, 'usuarios', '0006_aspirante_asp_cargo_aspirante_asp_ciudad_and_more', '2025-08-26 01:39:41.502941'),
(25, 'usuarios', '0007_remove_empresa_em_estado_remove_empresa_em_ubicacion_and_more', '2025-08-26 02:12:25.002507');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('xaoi03rdbglzq52k19xmlvifrpmkbtn0', '.eJxVjDkOwjAUBe_iGlneLVPScwbLfzEOIEeKkwpxd4iUAto3M-8lctnWlrfBS55InEUSp98NCj6474Dupd9miXNflwnkrsiDDnmdiZ-Xw_07aGW0b406qWitRzTGOaM8FCbPzM5SqIwaLTPVWBWVZL1W7CGGWCuQh2CTeH8A-bk4xg:1uqiw4:G1TXVpZRRgKtj_ctZPVijs1SrQh_Fe8V6oGaLnEV_0I', '2025-09-09 01:57:20.619706');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_aspirante`
--

CREATE TABLE `usuarios_aspirante` (
  `id` bigint NOT NULL,
  `asp_nombre` varchar(100) NOT NULL,
  `asp_apellido` varchar(100) NOT NULL,
  `asp_correo` varchar(254) NOT NULL,
  `asp_telefono` varchar(20) DEFAULT NULL,
  `asp_estado` varchar(50) DEFAULT NULL,
  `asp_curriculum` varchar(100) DEFAULT NULL,
  `asp_usuario_fk_id` bigint NOT NULL,
  `asp_foto` varchar(100) DEFAULT NULL,
  `asp_cargo` varchar(100) DEFAULT NULL,
  `asp_ciudad` varchar(100) DEFAULT NULL,
  `asp_departamento` varchar(100) DEFAULT NULL,
  `asp_descripcion` longtext,
  `asp_idiomas` json DEFAULT NULL,
  `asp_nacimiento_anio` int DEFAULT NULL,
  `asp_nacimiento_dia` int DEFAULT NULL,
  `asp_nacimiento_mes` int DEFAULT NULL,
  `asp_numeroId` varchar(30) DEFAULT NULL,
  `asp_ocupacion` varchar(100) DEFAULT NULL,
  `asp_tipoId` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_aspirante`
--

INSERT INTO `usuarios_aspirante` (`id`, `asp_nombre`, `asp_apellido`, `asp_correo`, `asp_telefono`, `asp_estado`, `asp_curriculum`, `asp_usuario_fk_id`, `asp_foto`, `asp_cargo`, `asp_ciudad`, `asp_departamento`, `asp_descripcion`, `asp_idiomas`, `asp_nacimiento_anio`, `asp_nacimiento_dia`, `asp_nacimiento_mes`, `asp_numeroId`, `asp_ocupacion`, `asp_tipoId`) VALUES
(1, '', 'pinzon', 'valeria10@gmail.com', '32121456', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '', 'perez', 'pablo@gmail.com', '1231614561', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '', 'ejemplo', 'pruebauser@email.com', '123456789', NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Miguel Angel', 'Lopez Leon', 'miguelo140807@gmail.com', '3214619970', NULL, 'curriculums/1._HOJA_DE_VIDA_ACTUALIZADA.pdf', 8, '', 'Tecnologo en desarrollo de software', 'Bogotá D.C', 'Cundinamarca', 'nada', NULL, 2007, 14, 8, '1021675278', 'Programador', 'CC'),
(6, 'Falcao', 'Garcia', 'falcao@gmail.com', '2315656', NULL, 'curriculums/Actividad_Investigación.pdf', 11, '', 'centro delantero', 'Bogotá D.C', 'Cundinamarca', 'nadanadadnadna', NULL, 1996, 20, 12, '2156165154', 'Futbolista', 'CC');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_detalle_vacante`
--

CREATE TABLE `usuarios_detalle_vacante` (
  `id` bigint NOT NULL,
  `dv_idAspirante_fk_id` bigint NOT NULL,
  `dv_idVacante_fk_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_empresa`
--

CREATE TABLE `usuarios_empresa` (
  `id` bigint NOT NULL,
  `em_nombre` varchar(150) NOT NULL,
  `em_sector` varchar(100) DEFAULT NULL,
  `em_contacto` varchar(100) DEFAULT NULL,
  `em_usuario_fk_id` bigint NOT NULL,
  `em_curriculum` varchar(100) DEFAULT NULL,
  `em_logo` varchar(100) DEFAULT NULL,
  `em_ciudad` varchar(100) DEFAULT NULL,
  `em_departamento` varchar(100) DEFAULT NULL,
  `em_descripcion` longtext,
  `em_direccion` varchar(255) DEFAULT NULL,
  `em_email` varchar(254) DEFAULT NULL,
  `em_idiomas` json DEFAULT NULL,
  `em_nit` varchar(50) DEFAULT NULL,
  `em_password` varchar(128) DEFAULT NULL,
  `em_sitioWeb` varchar(200) DEFAULT NULL,
  `em_tamano` varchar(50) DEFAULT NULL,
  `em_telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_empresa`
--

INSERT INTO `usuarios_empresa` (`id`, `em_nombre`, `em_sector`, `em_contacto`, `em_usuario_fk_id`, `em_curriculum`, `em_logo`, `em_ciudad`, `em_departamento`, `em_descripcion`, `em_direccion`, `em_email`, `em_idiomas`, `em_nit`, `em_password`, `em_sitioWeb`, `em_tamano`, `em_telefono`) VALUES
(2, 'cubicuero', 'Kennedy', 'Cubides', 12, 'empresas_docs/Modulo_I_NSODmzP.pdf', 'logos_empresas/images.jpeg', 'Bogotá D.C', 'Cundinamarca', 'los peores cueros del mercado', 'Cra 80 #12-21 sur', 'cubicu@gmail.com', '[\"Español (Nativo)\", \"Inglés\", \"Portugués\"]', '1231236153', 'cubides123', 'https://cubicueros.com', '11-50', '15615634');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_procesoseleccion`
--

CREATE TABLE `usuarios_procesoseleccion` (
  `id` bigint NOT NULL,
  `ps_tipoEntrevista` varchar(100) NOT NULL,
  `ps_modalidad` varchar(50) NOT NULL,
  `ps_direccion` varchar(255) DEFAULT NULL,
  `ps_estado` varchar(50) NOT NULL,
  `ps_fechaPostulacion` datetime(6) NOT NULL,
  `ps_idAspirante_fk_id` bigint NOT NULL,
  `ps_idEmpresa_fk_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_rol`
--

CREATE TABLE `usuarios_rol` (
  `id` bigint NOT NULL,
  `rol_nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_rol`
--

INSERT INTO `usuarios_rol` (`id`, `rol_nombre`) VALUES
(1, 'aspirante'),
(2, 'Empresa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuarios`
--

CREATE TABLE `usuarios_usuarios` (
  `id` bigint NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `user_nombre` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `user_rol_fk_id` bigint DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios_usuarios`
--

INSERT INTO `usuarios_usuarios` (`id`, `password`, `last_login`, `is_superuser`, `user_nombre`, `is_active`, `is_staff`, `user_rol_fk_id`, `email`) VALUES
(1, 'pbkdf2_sha256$1000000$mlMX01LtrnT8tBboCjfwS8$TcTZiOCzBRGSsm4LKTrwYAxBYS0ugn0D5wR29G5ZCa8=', NULL, 0, 'valeria', 1, 0, 1, NULL),
(2, 'pbkdf2_sha256$1000000$X5eLFCzea1IUcN9z5ydEL1$fdaFVuyOkwwesg+rnDX2cSDEX+VtK3iw5wBbbbxacvA=', NULL, 0, 'pablo', 1, 0, 1, NULL),
(3, 'pbkdf2_sha256$1000000$ToYfVtD7oe1MJt5aSLS0uF$/1ykyI0fxwIxQQs0GFHPyfYMfD++LaCAznVc17gJkjk=', NULL, 0, 'pruebauser', 1, 0, 1, NULL),
(8, 'pbkdf2_sha256$1000000$c4nKGXSXM7lqJ4G0kYfTul$mrtMntf65MgUWgQLfmpAY6Nh0UOh5097v/JU+RaS0rU=', NULL, 0, 'MiguelitoMillos', 1, 0, 1, NULL),
(9, 'pbkdf2_sha256$1000000$EMxzMWuygoSEofDEqbUvpY$kCqy99rjdrMvkVQasPac+WSdk7JQwKXADu7rJkvOiow=', '2025-08-26 01:57:20.617002', 1, 'admin', 1, 1, NULL, NULL),
(11, 'pbkdf2_sha256$1000000$u9uYKv3wQ6AwhXbWJFyXPf$LDD5yM52TqC2GEnzkyCgs1LWUUes8KkjLtOPR+JZ6LM=', NULL, 0, 'falcaitomillos', 1, 0, 1, NULL),
(12, 'pbkdf2_sha256$1000000$MtcqEpaLUFWDv1L0kuKdLQ$QejRmmq3lOkXgLIq2tsu66GR4ysitUiO8cZyEybKzCQ=', NULL, 0, 'cubicuero', 1, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuarios_groups`
--

CREATE TABLE `usuarios_usuarios_groups` (
  `id` bigint NOT NULL,
  `usuarios_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_usuarios_user_permissions`
--

CREATE TABLE `usuarios_usuarios_user_permissions` (
  `id` bigint NOT NULL,
  `usuarios_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_vacante`
--

CREATE TABLE `usuarios_vacante` (
  `id` bigint NOT NULL,
  `va_titulo` varchar(200) NOT NULL,
  `va_requisitos` longtext NOT NULL,
  `va_salario` decimal(10,2) NOT NULL,
  `va_ubicacion` varchar(100) NOT NULL,
  `va_descripcion` longtext NOT NULL,
  `va_estado` varchar(20) NOT NULL,
  `va_idEmpresa_fk_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `usuarios_aspirante`
--
ALTER TABLE `usuarios_aspirante`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `asp_correo` (`asp_correo`),
  ADD KEY `usuarios_aspirante_asp_usuario_fk_id_d1a29c7a_fk_usuarios_` (`asp_usuario_fk_id`);

--
-- Indices de la tabla `usuarios_detalle_vacante`
--
ALTER TABLE `usuarios_detalle_vacante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_detalle_vac_dv_idAspirante_fk_id_9e0bb55f_fk_usuarios_` (`dv_idAspirante_fk_id`),
  ADD KEY `usuarios_detalle_vac_dv_idVacante_fk_id_7aaa494e_fk_usuarios_` (`dv_idVacante_fk_id`);

--
-- Indices de la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_empresa_em_usuario_fk_id_6d574f18_fk_usuarios_` (`em_usuario_fk_id`);

--
-- Indices de la tabla `usuarios_procesoseleccion`
--
ALTER TABLE `usuarios_procesoseleccion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_procesosele_ps_idAspirante_fk_id_512b60d1_fk_usuarios_` (`ps_idAspirante_fk_id`),
  ADD KEY `usuarios_procesosele_ps_idEmpresa_fk_id_e704450f_fk_usuarios_` (`ps_idEmpresa_fk_id`);

--
-- Indices de la tabla `usuarios_rol`
--
ALTER TABLE `usuarios_rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_usuarios`
--
ALTER TABLE `usuarios_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_nombre` (`user_nombre`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `usuarios_usuarios_user_rol_fk_id_9eae53fd_fk_usuarios_rol_id` (`user_rol_fk_id`);

--
-- Indices de la tabla `usuarios_usuarios_groups`
--
ALTER TABLE `usuarios_usuarios_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_usuarios_groups_usuarios_id_group_id_31056d4d_uniq` (`usuarios_id`,`group_id`),
  ADD KEY `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `usuarios_usuarios_user_permissions`
--
ALTER TABLE `usuarios_usuarios_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarios_usuarios_user_p_usuarios_id_permission_i_1fb72da5_uniq` (`usuarios_id`,`permission_id`),
  ADD KEY `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `usuarios_vacante`
--
ALTER TABLE `usuarios_vacante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuarios_vacante_va_idEmpresa_fk_id_e5125dd7_fk_usuarios_` (`va_idEmpresa_fk_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `usuarios_aspirante`
--
ALTER TABLE `usuarios_aspirante`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios_detalle_vacante`
--
ALTER TABLE `usuarios_detalle_vacante`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios_procesoseleccion`
--
ALTER TABLE `usuarios_procesoseleccion`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_rol`
--
ALTER TABLE `usuarios_rol`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuarios`
--
ALTER TABLE `usuarios_usuarios`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuarios_groups`
--
ALTER TABLE `usuarios_usuarios_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_usuarios_user_permissions`
--
ALTER TABLE `usuarios_usuarios_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_vacante`
--
ALTER TABLE `usuarios_vacante`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `usuarios_aspirante`
--
ALTER TABLE `usuarios_aspirante`
  ADD CONSTRAINT `usuarios_aspirante_asp_usuario_fk_id_d1a29c7a_fk_usuarios_` FOREIGN KEY (`asp_usuario_fk_id`) REFERENCES `usuarios_usuarios` (`id`);

--
-- Filtros para la tabla `usuarios_detalle_vacante`
--
ALTER TABLE `usuarios_detalle_vacante`
  ADD CONSTRAINT `usuarios_detalle_vac_dv_idAspirante_fk_id_9e0bb55f_fk_usuarios_` FOREIGN KEY (`dv_idAspirante_fk_id`) REFERENCES `usuarios_aspirante` (`id`),
  ADD CONSTRAINT `usuarios_detalle_vac_dv_idVacante_fk_id_7aaa494e_fk_usuarios_` FOREIGN KEY (`dv_idVacante_fk_id`) REFERENCES `usuarios_vacante` (`id`);

--
-- Filtros para la tabla `usuarios_empresa`
--
ALTER TABLE `usuarios_empresa`
  ADD CONSTRAINT `usuarios_empresa_em_usuario_fk_id_6d574f18_fk_usuarios_` FOREIGN KEY (`em_usuario_fk_id`) REFERENCES `usuarios_usuarios` (`id`);

--
-- Filtros para la tabla `usuarios_procesoseleccion`
--
ALTER TABLE `usuarios_procesoseleccion`
  ADD CONSTRAINT `usuarios_procesosele_ps_idAspirante_fk_id_512b60d1_fk_usuarios_` FOREIGN KEY (`ps_idAspirante_fk_id`) REFERENCES `usuarios_aspirante` (`id`),
  ADD CONSTRAINT `usuarios_procesosele_ps_idEmpresa_fk_id_e704450f_fk_usuarios_` FOREIGN KEY (`ps_idEmpresa_fk_id`) REFERENCES `usuarios_empresa` (`id`);

--
-- Filtros para la tabla `usuarios_usuarios`
--
ALTER TABLE `usuarios_usuarios`
  ADD CONSTRAINT `usuarios_usuarios_user_rol_fk_id_9eae53fd_fk_usuarios_rol_id` FOREIGN KEY (`user_rol_fk_id`) REFERENCES `usuarios_rol` (`id`);

--
-- Filtros para la tabla `usuarios_usuarios_groups`
--
ALTER TABLE `usuarios_usuarios_groups`
  ADD CONSTRAINT `usuarios_usuarios_gr_usuarios_id_65c166be_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`),
  ADD CONSTRAINT `usuarios_usuarios_groups_group_id_1e265f46_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `usuarios_usuarios_user_permissions`
--
ALTER TABLE `usuarios_usuarios_user_permissions`
  ADD CONSTRAINT `usuarios_usuarios_us_permission_id_394f07a6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `usuarios_usuarios_us_usuarios_id_d860a7b5_fk_usuarios_` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios_usuarios` (`id`);

--
-- Filtros para la tabla `usuarios_vacante`
--
ALTER TABLE `usuarios_vacante`
  ADD CONSTRAINT `usuarios_vacante_va_idEmpresa_fk_id_e5125dd7_fk_usuarios_` FOREIGN KEY (`va_idEmpresa_fk_id`) REFERENCES `usuarios_empresa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
