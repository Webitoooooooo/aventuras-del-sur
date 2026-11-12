-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2026 at 12:29 AM
-- Server version: 10.11.16-MariaDB
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aventuras_del_sur`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 3, 'add_permission'),
(6, 'Can change permission', 3, 'change_permission'),
(7, 'Can delete permission', 3, 'delete_permission'),
(8, 'Can view permission', 3, 'view_permission'),
(9, 'Can add group', 2, 'add_group'),
(10, 'Can change group', 2, 'change_group'),
(11, 'Can delete group', 2, 'delete_group'),
(12, 'Can view group', 2, 'view_group'),
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
(25, 'Can add perfil', 7, 'add_perfil'),
(26, 'Can change perfil', 7, 'change_perfil'),
(27, 'Can delete perfil', 7, 'delete_perfil'),
(28, 'Can view perfil', 7, 'view_perfil'),
(29, 'Can add categoria', 8, 'add_categoria'),
(30, 'Can change categoria', 8, 'change_categoria'),
(31, 'Can delete categoria', 8, 'delete_categoria'),
(32, 'Can view categoria', 8, 'view_categoria'),
(33, 'Can add experiencia', 9, 'add_experiencia'),
(34, 'Can change experiencia', 9, 'change_experiencia'),
(35, 'Can delete experiencia', 9, 'delete_experiencia'),
(36, 'Can view experiencia', 9, 'view_experiencia'),
(37, 'Can add inscripcion', 10, 'add_inscripcion'),
(38, 'Can change inscripcion', 10, 'change_inscripcion'),
(39, 'Can delete inscripcion', 10, 'delete_inscripcion'),
(40, 'Can view inscripcion', 10, 'view_inscripcion');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$1500000$YJVYj7pfgGTYiLZ5hnzMwy$cey8gos7dAFrQwZSD+EnBmDlbdgJeSmc1YiTjGozDTU=', '2026-11-12 22:55:26.701544', 1, 'admin', '', '', '', 1, 1, '2026-11-12 22:40:14.251903'),
(2, 'pbkdf2_sha256$1500000$UrzCj9XakvlBcoVsrQmOax$ugcSpL3Z8TgzgQOzHynYCC+IN9Fz657+SRoFA16g9R8=', '2026-11-12 22:59:08.859361', 0, 'guia1', '', '', 'guia1@aventuras.cl', 0, 1, '2026-11-12 22:52:52.160334'),
(3, 'pbkdf2_sha256$1500000$hbYtfHne7TuoXocHuz7rFt$wXt2IFmJOfH0uQdSDw57pVRIRaB853xv3uOIsIr9/YA=', '2026-11-12 23:07:03.853702', 0, 'guia2', '', '', 'guia2@aventuras.cl', 0, 1, '2026-11-12 22:53:55.655558'),
(4, 'pbkdf2_sha256$1500000$MeklqMlTd7y3LTUoIzUDAR$tUqISl26KwHMVq6B+mCZsZ3g22GW9Vqsvcy9Du5XWag=', '2026-11-12 23:26:17.609140', 0, 'turista1', '', '', 'turista1@aventuras.cl', 0, 1, '2026-11-12 22:54:22.307513'),
(5, 'pbkdf2_sha256$1500000$sUkmR15ZtTnXA21TFonoEK$dm/jcWe6BFwL/aDzx0QRewjVb5DdS1D/uvepW3sjEN4=', '2026-11-12 23:27:44.863678', 0, 'turista2', '', '', 'turista2@aventuras.cl', 0, 1, '2026-11-12 22:54:56.568076');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cuentas_perfil`
--

CREATE TABLE `cuentas_perfil` (
  `id` bigint(20) NOT NULL,
  `rol` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cuentas_perfil`
--

INSERT INTO `cuentas_perfil` (`id`, `rol`, `user_id`) VALUES
(1, 'ADMIN', 1),
(2, 'GUIA', 2),
(3, 'GUIA', 3),
(4, 'TURISTA', 4),
(5, 'TURISTA', 5);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'group'),
(3, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'cuentas', 'perfil'),
(8, 'experiencias', 'categoria'),
(9, 'experiencias', 'experiencia'),
(10, 'experiencias', 'inscripcion'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2026-11-12 22:38:30.936166'),
(2, 'auth', '0001_initial', '2026-11-12 22:38:31.136134'),
(3, 'admin', '0001_initial', '2026-11-12 22:38:31.177448'),
(4, 'admin', '0002_logentry_remove_auto_add', '2026-11-12 22:38:31.181261'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2026-11-12 22:38:31.185423'),
(6, 'contenttypes', '0002_remove_content_type_name', '2026-11-12 22:38:31.224848'),
(7, 'auth', '0002_alter_permission_name_max_length', '2026-11-12 22:38:31.250566'),
(8, 'auth', '0003_alter_user_email_max_length', '2026-11-12 22:38:31.263028'),
(9, 'auth', '0004_alter_user_username_opts', '2026-11-12 22:38:31.266716'),
(10, 'auth', '0005_alter_user_last_login_null', '2026-11-12 22:38:31.287322'),
(11, 'auth', '0006_require_contenttypes_0002', '2026-11-12 22:38:31.288722'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2026-11-12 22:38:31.293210'),
(13, 'auth', '0008_alter_user_username_max_length', '2026-11-12 22:38:31.306592'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2026-11-12 22:38:31.320536'),
(15, 'auth', '0010_alter_group_name_max_length', '2026-11-12 22:38:31.334157'),
(16, 'auth', '0011_update_proxy_permissions', '2026-11-12 22:38:31.339586'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2026-11-12 22:38:31.367431'),
(18, 'cuentas', '0001_initial', '2026-11-12 22:38:31.390926'),
(19, 'experiencias', '0001_initial', '2026-11-12 22:38:31.474858'),
(20, 'sessions', '0001_initial', '2026-11-12 22:38:31.489010');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q8a5994g7xetar6yzajjitry1w1fjhfq', '.eJxVjLEOgjAQQP_lZtKUg1rLppuDi-JMjutVQEKTApPx3w0Jg67vvbw3NLQuXbPOkpreQwUGsl_WEr9k2oQfaHpGxXFaUt-qLVG7ndU1ehnPe_s36GjuoIK2xMCFFo1ciD8EY70jQ87nNrfWGGYKhGR06TQFjXmh7ZGFyTnEEgUySHGECurH7XKvT_D5ApSHPFg:1xReCm:SM8v4DFvtkEJm40j9qLRtaKT9GPMcrle4OJupBpZS5o', '2026-11-26 23:27:44.865531');

-- --------------------------------------------------------

--
-- Table structure for table `experiencias_categoria`
--

CREATE TABLE `experiencias_categoria` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `activa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiencias_categoria`
--

INSERT INTO `experiencias_categoria` (`id`, `nombre`, `descripcion`, `activa`) VALUES
(1, 'Trekking', 'Rutas de senderismo y alta montaña.', 1),
(2, 'Canopy', 'Circuito de tirolesa entre árboles nativos.', 1),
(3, 'Kayak', 'Navegación guiada en ríos y lagunas del parque.', 1),
(4, 'Arriendo de Equipos', 'Equipamiento técnico para excursiones.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `experiencias_experiencia`
--

CREATE TABLE `experiencias_experiencia` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cupo_maximo` int(10) UNSIGNED NOT NULL CHECK (`cupo_maximo` >= 0),
  `fecha_hora` datetime(6) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `creador_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiencias_experiencia`
--

INSERT INTO `experiencias_experiencia` (`id`, `titulo`, `descripcion`, `precio`, `cupo_maximo`, `fecha_hora`, `categoria_id`, `creador_id`) VALUES
(1, 'Mirador del Cóndor', 'Caminata de dificultad media hasta la cumbre con vista panorámica al valle.', 15000.00, 12, '2026-11-15 09:00:00.000000', 1, 2),
(2, 'Tirolesa Bosque Nativo', 'Recorrido de 400 metros sobre el bosque con equipo de seguridad incluido.', 22000.00, 8, '2026-11-16 11:30:00.000000', 2, 2),
(3, 'Travesía Río Claro', 'Descenso en kayak por aguas tranquilas. Ideal para principiantes, se incluye chaleco y remo.', 25000.00, 6, '2026-11-17 15:00:00.000000', 3, 2),
(4, 'Pack Bastones y Carpa 2P', 'Arriendo diario de carpa impermeable para dos personas más par de bastones de trekking.', 10000.00, 10, '2026-11-18 08:30:00.000000', 4, 2),
(5, 'Trekking Nocturno Bajo Estrellas', 'Sendero nocturno con linternas frontales para observación de fauna y cielo despejado.', 18000.00, 10, '2026-11-19 21:30:00.000000', 1, 3),
(6, 'Canopy Extremo 5 Estaciones', 'Circuito completo de cinco plataformas en altura con guía certificado.', 30000.00, 6, '2026-11-20 10:00:00.000000', 2, 3),
(7, 'Kayak al Atardecer en Laguna', 'Paseo guiado en kayak doble durante la puesta de sol con una charla ecológica.', 20000.00, 8, '2026-11-21 18:30:00.000000', 3, 3),
(8, 'Kit Escalada y Casco', 'Arriendo completo de arnés, casco homologado y mosquetones por jornada.', 12000.00, 5, '2026-11-22 09:00:00.000000', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `experiencias_inscripcion`
--

CREATE TABLE `experiencias_inscripcion` (
  `id` bigint(20) NOT NULL,
  `fecha_inscripcion` datetime(6) NOT NULL,
  `estado_pago` varchar(15) NOT NULL,
  `experiencia_id` bigint(20) NOT NULL,
  `turista_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experiencias_inscripcion`
--

INSERT INTO `experiencias_inscripcion` (`id`, `fecha_inscripcion`, `estado_pago`, `experiencia_id`, `turista_id`) VALUES
(1, '2026-11-12 23:26:36.001183', 'PENDIENTE', 1, 4),
(2, '2026-11-12 23:26:45.758365', 'PENDIENTE', 6, 4),
(3, '2026-11-12 23:27:13.661981', 'PENDIENTE', 2, 4),
(4, '2026-11-12 23:27:47.902342', 'PENDIENTE', 8, 5),
(5, '2026-11-12 23:27:55.946958', 'PENDIENTE', 5, 5),
(6, '2026-11-12 23:27:59.879338', 'PENDIENTE', 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `experiencias_categoria`
--
ALTER TABLE `experiencias_categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiencias_experie_categoria_id_b03f452f_fk_experienc` (`categoria_id`),
  ADD KEY `experiencias_experiencia_creador_id_70b19025_fk_auth_user_id` (`creador_id`);

--
-- Indexes for table `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiencias_inscrip_experiencia_id_2fbecc6b_fk_experienc` (`experiencia_id`),
  ADD KEY `experiencias_inscripcion_turista_id_fbc539cd_fk_auth_user_id` (`turista_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `experiencias_categoria`
--
ALTER TABLE `experiencias_categoria`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cuentas_perfil`
--
ALTER TABLE `cuentas_perfil`
  ADD CONSTRAINT `cuentas_perfil_user_id_38159a56_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `experiencias_experiencia`
--
ALTER TABLE `experiencias_experiencia`
  ADD CONSTRAINT `experiencias_experie_categoria_id_b03f452f_fk_experienc` FOREIGN KEY (`categoria_id`) REFERENCES `experiencias_categoria` (`id`),
  ADD CONSTRAINT `experiencias_experiencia_creador_id_70b19025_fk_auth_user_id` FOREIGN KEY (`creador_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `experiencias_inscripcion`
--
ALTER TABLE `experiencias_inscripcion`
  ADD CONSTRAINT `experiencias_inscrip_experiencia_id_2fbecc6b_fk_experienc` FOREIGN KEY (`experiencia_id`) REFERENCES `experiencias_experiencia` (`id`),
  ADD CONSTRAINT `experiencias_inscripcion_turista_id_fbc539cd_fk_auth_user_id` FOREIGN KEY (`turista_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
