-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 08:18 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropout`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_class`
--

CREATE TABLE `assigned_class` (
  `as_id` int(10) NOT NULL,
  `c_id` int(10) NOT NULL,
  `t_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assigned_class`
--

INSERT INTO `assigned_class` (`as_id`, `c_id`, `t_id`) VALUES
(1, 2, 2),
(2, 1, 1),
(3, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `a_id` int(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `s_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`a_id`, `status`, `date`, `time`, `s_id`) VALUES
(1, 'present', '2022-06-07', '07:44:00', 0),
(2, 'present', '2022-06-29', '18:22:00', 2),
(3, 'present', '2022-07-16', '09:52:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
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
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add parent', 8, 'add_parent'),
(30, 'Can change parent', 8, 'change_parent'),
(31, 'Can delete parent', 8, 'delete_parent'),
(32, 'Can view parent', 8, 'view_parent'),
(33, 'Can add teacher', 9, 'add_teacher'),
(34, 'Can change teacher', 9, 'change_teacher'),
(35, 'Can delete teacher', 9, 'delete_teacher'),
(36, 'Can view teacher', 9, 'view_teacher'),
(37, 'Can add assigned class', 10, 'add_assignedclass'),
(38, 'Can change assigned class', 10, 'change_assignedclass'),
(39, 'Can delete assigned class', 10, 'delete_assignedclass'),
(40, 'Can view assigned class', 10, 'view_assignedclass'),
(41, 'Can add attendance', 11, 'add_attendance'),
(42, 'Can change attendance', 11, 'change_attendance'),
(43, 'Can delete attendance', 11, 'delete_attendance'),
(44, 'Can view attendance', 11, 'view_attendance'),
(45, 'Can add dropout result', 12, 'add_dropoutresult'),
(46, 'Can change dropout result', 12, 'change_dropoutresult'),
(47, 'Can delete dropout result', 12, 'delete_dropoutresult'),
(48, 'Can view dropout result', 12, 'view_dropoutresult'),
(49, 'Can add extra activity', 13, 'add_extraactivity'),
(50, 'Can change extra activity', 13, 'change_extraactivity'),
(51, 'Can delete extra activity', 13, 'delete_extraactivity'),
(52, 'Can view extra activity', 13, 'view_extraactivity'),
(53, 'Can add internal mark', 14, 'add_internalmark'),
(54, 'Can change internal mark', 14, 'change_internalmark'),
(55, 'Can delete internal mark', 14, 'delete_internalmark'),
(56, 'Can view internal mark', 14, 'view_internalmark'),
(57, 'Can add student', 15, 'add_student'),
(58, 'Can change student', 15, 'change_student'),
(59, 'Can delete student', 15, 'delete_student'),
(60, 'Can view student', 15, 'view_student'),
(61, 'Can add classes', 16, 'add_classes'),
(62, 'Can change classes', 16, 'change_classes'),
(63, 'Can delete classes', 16, 'delete_classes'),
(64, 'Can view classes', 16, 'view_classes'),
(65, 'Can add result', 17, 'add_result'),
(66, 'Can change result', 17, 'change_result'),
(67, 'Can delete result', 17, 'delete_result'),
(68, 'Can view result', 17, 'view_result');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `c_id` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`c_id`, `class_name`, `division`, `status`) VALUES
(1, '10', 'b', 'approved'),
(2, 'tyufgyhuj', 'fgyhj', 'approved'),
(3, 'tyufgyhuj', 'fgyhj', 'rejected'),
(4, '+2', 'b', 'rejected');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(10, 'assigned_class', 'assignedclass'),
(11, 'attendance', 'attendance'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(16, 'classes', 'classes'),
(5, 'contenttypes', 'contenttype'),
(12, 'dropout_result', 'dropoutresult'),
(13, 'extra_activity', 'extraactivity'),
(14, 'internal_mark', 'internalmark'),
(7, 'login', 'login'),
(8, 'parent', 'parent'),
(17, 'result', 'result'),
(6, 'sessions', 'session'),
(15, 'student', 'student'),
(9, 'teacher', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-06 10:36:21.708792'),
(2, 'auth', '0001_initial', '2022-07-06 10:36:36.529832'),
(3, 'admin', '0001_initial', '2022-07-06 10:36:40.594245'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-06 10:36:40.705445'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-06 10:36:40.787936'),
(6, 'assigned_class', '0001_initial', '2022-07-06 10:36:40.831108'),
(7, 'attendance', '0001_initial', '2022-07-06 10:36:40.871036'),
(8, 'contenttypes', '0002_remove_content_type_name', '2022-07-06 10:36:42.236724'),
(9, 'auth', '0002_alter_permission_name_max_length', '2022-07-06 10:36:43.832678'),
(10, 'auth', '0003_alter_user_email_max_length', '2022-07-06 10:36:44.747632'),
(11, 'auth', '0004_alter_user_username_opts', '2022-07-06 10:36:44.813579'),
(12, 'auth', '0005_alter_user_last_login_null', '2022-07-06 10:36:45.823640'),
(13, 'auth', '0006_require_contenttypes_0002', '2022-07-06 10:36:45.868655'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2022-07-06 10:36:45.938268'),
(15, 'auth', '0008_alter_user_username_max_length', '2022-07-06 10:36:46.223709'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2022-07-06 10:36:46.376957'),
(17, 'auth', '0010_alter_group_name_max_length', '2022-07-06 10:36:46.658479'),
(18, 'auth', '0011_update_proxy_permissions', '2022-07-06 10:36:46.955531'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2022-07-06 10:36:47.826532'),
(20, 'classes', '0001_initial', '2022-07-06 10:36:47.946005'),
(21, 'dropout_result', '0001_initial', '2022-07-06 10:36:47.984402'),
(22, 'extra_activity', '0001_initial', '2022-07-06 10:36:48.033607'),
(23, 'internal_mark', '0001_initial', '2022-07-06 10:36:48.084939'),
(24, 'login', '0001_initial', '2022-07-06 10:36:48.143924'),
(25, 'parent', '0001_initial', '2022-07-06 10:36:48.190988'),
(26, 'sessions', '0001_initial', '2022-07-06 10:36:49.185083'),
(27, 'student', '0001_initial', '2022-07-06 10:36:49.228338'),
(28, 'teacher', '0001_initial', '2022-07-06 10:36:49.287437'),
(29, 'result', '0001_initial', '2022-07-07 06:33:59.541446');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('19rcj11dj0rw75dayplka9uxycmu9vqm', 'eyJ1aWQiOjN9:1oCZVA:j20tXxicNF6xXmL0Av9w4llLrXptBNDhQJiq-tQkr_g', '2022-07-30 04:34:00.515507'),
('1r1b109ainp52ntmhjop4jxp8227m18x', 'eyJ1aWQiOjB9:1p0IjB:g-Hb9fYHzxquKz8WzUPnLKtHm8okzPdM-tM7c5QzN6A', '2022-12-14 08:46:01.270781'),
('l8gxndff44hvukg5shz35tfxwragmasn', 'eyJ1aWQiOjB9:1p2oPQ:v_P9fZQC3haNV4McWkRUqjJyiyptgzKA5rhCjpZXNj8', '2022-12-21 07:00:00.669352'),
('vrpiockrxi7t778hbkybnnm8zllxxze5', 'eyJ1aWQiOjR9:1oRVN1:dA6s6dvYIeVEyapT-h5yjLkU22O-m6fMwVlBbR3wNAU', '2022-09-09 09:11:19.068285'),
('yupttts43lu6wmfd01ev5jrt4iar1j08', 'eyJ1aWQiOjB9:1oDjbf:jPCjYQbTUuU6D83UPONbDPMsw5TaXJxq_bUpKdiatak', '2022-08-02 09:33:31.802645');

-- --------------------------------------------------------

--
-- Table structure for table `extra_activity`
--

CREATE TABLE `extra_activity` (
  `e_id` int(10) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `s_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `extra_activity`
--

INSERT INTO `extra_activity` (`e_id`, `activity`, `s_id`) VALUES
(1, 'abcd', 0),
(2, 'pqrs', 2);

-- --------------------------------------------------------

--
-- Table structure for table `internal_mark`
--

CREATE TABLE `internal_mark` (
  `int_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `mark` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internal_mark`
--

INSERT INTO `internal_mark` (`int_id`, `s_id`, `sub_id`, `mark`, `date`, `time`) VALUES
(1, 1, 1, 55, '2022-11-30', '12:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `type`, `username`, `password`, `u_id`) VALUES
(1, 'teacher', 'anju ', 'anju', 3),
(2, 'admin', 'admin', 'admin', 0),
(4, 'parent', 'abcd', '1234', 4),
(5, 'teacher', 'dsds', 'dsd', 5),
(6, 'teacher', 'abcde', '1234', 6),
(7, 'teacher', 'abcde', '1234', 7),
(8, 'teacher', 'aa', 'aa', 8),
(9, 'teacher', 'appu', 'appu', 11),
(10, 'teacher', '', '', 12),
(11, 'teacher', 'Ammu', '1234', 13);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `p_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `s_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`p_id`, `name`, `password`, `contact_no`, `email`, `s_id`) VALUES
(1, 'abcd', '', 755800, 'ab@gmail.com', 0),
(2, 'abcd', '', 755800, 'ab@gmail.com', 0),
(4, 'abcd', '1234', 88990, 'ab123@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `rs_id` int(10) NOT NULL,
  `s_id` int(10) NOT NULL,
  `c_id` int(50) NOT NULL,
  `total mark` varchar(50) NOT NULL,
  `result` varchar(50) NOT NULL,
  `sub_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`rs_id`, `s_id`, `c_id`, `total mark`, `result`, `sub_id`) VALUES
(1, 1, 10, '77', 'pass', 0),
(2, 1, 10, '77', 'pass', 0),
(3, 1, 2, '55', 'pass', 0),
(4, 3, 4, '55', 'pass', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_no` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `name`, `address`, `phone_no`, `email`, `status`) VALUES
(1, 'ammu m', 'kozhikode', 1122334, 'ammu@gmail.com', 'approved'),
(2, 'ammu', 'kozhikode', 1122334, 'ammu@gmail.com', 'approved'),
(3, 'achu', 'abcd', 7558007, 'achu@gmail.com', 'rejected'),
(4, 'abcd', 'aa', 98, 'ab@gmail.com', 'approved'),
(5, 'aa', 'malappuram', 1234567890, 'sneha@gmail.com', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `subject`, `c_id`) VALUES
(1, 'malayalam', 1),
(2, 'English', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `name`, `email`, `address`, `phone`, `qualification`, `password`) VALUES
(7, 'abcde', 'abc@gmail.com', 'pqrs', '1234', 'rfhrth', '1234'),
(10, 'babin', 'b@gmail.com', 'abc', '9876543210', 'abc', 'babin'),
(11, 'appu', 'aa@gmail.com', 'aaaaaaaa', '7557007213', '+2', 'appu'),
(13, 'Ammu', 'ab@gmail.com', 'abcd', '7902955784', 'pg', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_class`
--
ALTER TABLE `assigned_class`
  ADD PRIMARY KEY (`as_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`a_id`);

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
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`c_id`);

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
-- Indexes for table `extra_activity`
--
ALTER TABLE `extra_activity`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `internal_mark`
--
ALTER TABLE `internal_mark`
  ADD PRIMARY KEY (`int_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_class`
--
ALTER TABLE `assigned_class`
  MODIFY `as_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `a_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `extra_activity`
--
ALTER TABLE `extra_activity`
  MODIFY `e_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `internal_mark`
--
ALTER TABLE `internal_mark`
  MODIFY `int_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `rs_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
