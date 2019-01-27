-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 27, 2019 at 07:21 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotabet`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_follower`
--

CREATE TABLE `accounts_follower` (
  `id` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_notification`
--

CREATE TABLE `accounts_notification` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL,
  `is_seen` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `coin` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `image`, `coin`, `user_id`) VALUES
(1, 'default.jpg', 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add ban', 1, 'add_ban'),
(2, 'Can change ban', 1, 'change_ban'),
(3, 'Can delete ban', 1, 'delete_ban'),
(4, 'Can view ban', 1, 'view_ban'),
(5, 'Can add bet', 2, 'add_bet'),
(6, 'Can change bet', 2, 'change_bet'),
(7, 'Can delete bet', 2, 'delete_bet'),
(8, 'Can view bet', 2, 'view_bet'),
(9, 'Can add hero', 3, 'add_hero'),
(10, 'Can change hero', 3, 'change_hero'),
(11, 'Can delete hero', 3, 'delete_hero'),
(12, 'Can view hero', 3, 'view_hero'),
(13, 'Can add item', 4, 'add_item'),
(14, 'Can change item', 4, 'change_item'),
(15, 'Can delete item', 4, 'delete_item'),
(16, 'Can view item', 4, 'view_item'),
(17, 'Can add item_ inventory', 5, 'add_item_inventory'),
(18, 'Can change item_ inventory', 5, 'change_item_inventory'),
(19, 'Can delete item_ inventory', 5, 'delete_item_inventory'),
(20, 'Can view item_ inventory', 5, 'view_item_inventory'),
(21, 'Can add match', 6, 'add_match'),
(22, 'Can change match', 6, 'change_match'),
(23, 'Can delete match', 6, 'delete_match'),
(24, 'Can view match', 6, 'view_match'),
(25, 'Can add pick', 7, 'add_pick'),
(26, 'Can change pick', 7, 'change_pick'),
(27, 'Can delete pick', 7, 'delete_pick'),
(28, 'Can view pick', 7, 'view_pick'),
(29, 'Can add player', 8, 'add_player'),
(30, 'Can change player', 8, 'change_player'),
(31, 'Can delete player', 8, 'delete_player'),
(32, 'Can view player', 8, 'view_player'),
(33, 'Can add settings', 9, 'add_settings'),
(34, 'Can change settings', 9, 'change_settings'),
(35, 'Can delete settings', 9, 'delete_settings'),
(36, 'Can view settings', 9, 'view_settings'),
(37, 'Can add stats', 10, 'add_stats'),
(38, 'Can change stats', 10, 'change_stats'),
(39, 'Can delete stats', 10, 'delete_stats'),
(40, 'Can view stats', 10, 'view_stats'),
(41, 'Can add team', 11, 'add_team'),
(42, 'Can change team', 11, 'change_team'),
(43, 'Can delete team', 11, 'delete_team'),
(44, 'Can view team', 11, 'view_team'),
(45, 'Can add follower', 12, 'add_follower'),
(46, 'Can change follower', 12, 'change_follower'),
(47, 'Can delete follower', 12, 'delete_follower'),
(48, 'Can view follower', 12, 'view_follower'),
(49, 'Can add notification', 13, 'add_notification'),
(50, 'Can change notification', 13, 'change_notification'),
(51, 'Can delete notification', 13, 'delete_notification'),
(52, 'Can view notification', 13, 'view_notification'),
(53, 'Can add profile', 14, 'add_profile'),
(54, 'Can change profile', 14, 'change_profile'),
(55, 'Can delete profile', 14, 'delete_profile'),
(56, 'Can view profile', 14, 'view_profile'),
(57, 'Can add completed task', 15, 'add_completedtask'),
(58, 'Can change completed task', 15, 'change_completedtask'),
(59, 'Can delete completed task', 15, 'delete_completedtask'),
(60, 'Can view completed task', 15, 'view_completedtask'),
(61, 'Can add task', 16, 'add_task'),
(62, 'Can change task', 16, 'change_task'),
(63, 'Can delete task', 16, 'delete_task'),
(64, 'Can view task', 16, 'view_task'),
(65, 'Can add log entry', 17, 'add_logentry'),
(66, 'Can change log entry', 17, 'change_logentry'),
(67, 'Can delete log entry', 17, 'delete_logentry'),
(68, 'Can view log entry', 17, 'view_logentry'),
(69, 'Can add permission', 18, 'add_permission'),
(70, 'Can change permission', 18, 'change_permission'),
(71, 'Can delete permission', 18, 'delete_permission'),
(72, 'Can view permission', 18, 'view_permission'),
(73, 'Can add group', 19, 'add_group'),
(74, 'Can change group', 19, 'change_group'),
(75, 'Can delete group', 19, 'delete_group'),
(76, 'Can view group', 19, 'view_group'),
(77, 'Can add user', 20, 'add_user'),
(78, 'Can change user', 20, 'change_user'),
(79, 'Can delete user', 20, 'delete_user'),
(80, 'Can view user', 20, 'view_user'),
(81, 'Can add content type', 21, 'add_contenttype'),
(82, 'Can change content type', 21, 'change_contenttype'),
(83, 'Can delete content type', 21, 'delete_contenttype'),
(84, 'Can view content type', 21, 'view_contenttype'),
(85, 'Can add session', 22, 'add_session'),
(86, 'Can change session', 22, 'change_session'),
(87, 'Can delete session', 22, 'delete_session'),
(88, 'Can view session', 22, 'view_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$ad4z04Y4b1zX$BAVYSc5nRkhqYtJmVJItv7N6mr2JM8TfIhQChtuKzU0=', '2019-01-26 23:11:08.560538', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2019-01-26 23:07:50.105715');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `background_task`
--

CREATE TABLE `background_task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background_task`
--

INSERT INTO `background_task` (`id`, `task_name`, `task_params`, `task_hash`, `verbose_name`, `priority`, `run_at`, `repeat`, `repeat_until`, `queue`, `attempts`, `failed_at`, `last_error`, `locked_by`, `locked_at`, `creator_object_id`, `creator_content_type_id`) VALUES
(72, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:57.667177', 30, NULL, NULL, 0, NULL, '', '3529', '2019-01-27 17:27:53.157214', NULL, NULL),
(73, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:24:59.540351', 30, NULL, NULL, 0, NULL, '', '4132', '2019-01-27 17:30:11.476554', NULL, NULL),
(75, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:25:03.113471', 30, NULL, NULL, 0, NULL, '', '4465', '2019-01-27 17:33:03.821879', NULL, NULL),
(76, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:25:03.195875', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(77, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:27:55.818728', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(78, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:30:12.453439', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(79, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:30:12.580843', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(80, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:30:14.076956', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(81, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:30:14.703255', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(82, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:31:55.903703', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(83, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:31:57.764608', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(84, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:32:56.066564', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(85, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:32:56.153250', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(86, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:33:07.584394', 30, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(87, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:33:07.713302', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL),
(88, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:35:00.051683', 300, NULL, NULL, 0, NULL, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `background_task_completedtask`
--

CREATE TABLE `background_task_completedtask` (
  `id` int(11) NOT NULL,
  `task_name` varchar(190) NOT NULL,
  `task_params` longtext NOT NULL,
  `task_hash` varchar(40) NOT NULL,
  `verbose_name` varchar(255) DEFAULT NULL,
  `priority` int(11) NOT NULL,
  `run_at` datetime(6) NOT NULL,
  `repeat` bigint(20) NOT NULL,
  `repeat_until` datetime(6) DEFAULT NULL,
  `queue` varchar(190) DEFAULT NULL,
  `attempts` int(11) NOT NULL,
  `failed_at` datetime(6) DEFAULT NULL,
  `last_error` longtext NOT NULL,
  `locked_by` varchar(64) DEFAULT NULL,
  `locked_at` datetime(6) DEFAULT NULL,
  `creator_object_id` int(10) UNSIGNED DEFAULT NULL,
  `creator_content_type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background_task_completedtask`
--

INSERT INTO `background_task_completedtask` (`id`, `task_name`, `task_params`, `task_hash`, `verbose_name`, `priority`, `run_at`, `repeat`, `repeat_until`, `queue`, `attempts`, `failed_at`, `last_error`, `locked_by`, `locked_at`, `creator_object_id`, `creator_content_type_id`) VALUES
(4, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:17:23.563536', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:16:57.913523', NULL, NULL),
(5, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:17:24.328032', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:24.120064', NULL, NULL),
(6, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:17:52.398305', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:24.980830', NULL, NULL),
(7, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:17:54.249676', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:54.057249', NULL, NULL),
(8, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:18:19.813348', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:17:54.968252', NULL, NULL),
(9, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:18:45.127119', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:18:20.336184', NULL, NULL),
(10, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:12.918582', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:18:46.256683', NULL, NULL),
(11, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:39.404259', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:13.320670', NULL, NULL),
(12, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:19:51.493938', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:41.129082', NULL, NULL),
(13, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:07.329124', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:19:57.124376', NULL, NULL),
(14, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:18.560067', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:08.082810', NULL, NULL),
(15, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:40.231156', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:29.485421', NULL, NULL),
(16, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:20:51.529491', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:40.566197', NULL, NULL),
(17, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:07.899314', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:20:57.143771', NULL, NULL),
(18, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:19.581154', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:08.472037', NULL, NULL),
(19, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:41.217380', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:30.349262', NULL, NULL),
(20, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:21:51.315584', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:41.465240', NULL, NULL),
(21, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:10.423175', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:21:56.965016', NULL, NULL),
(22, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:22:11.221081', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:11.024748', NULL, NULL),
(23, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:22.383683', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:11.480729', NULL, NULL),
(24, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:22:23.569472', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:23.117918', NULL, NULL),
(25, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:40.168232', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:29.338876', NULL, NULL),
(26, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:22:51.821631', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:40.583522', NULL, NULL),
(27, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:08.229977', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:22:57.421741', NULL, NULL),
(28, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:19.025710', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:08.824559', NULL, NULL),
(29, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:40.363790', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:29.494166', NULL, NULL),
(30, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:23:51.705988', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:41.198561', NULL, NULL),
(31, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:08.371297', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:23:57.288169', NULL, NULL),
(32, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:20.554077', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:08.939129', NULL, NULL),
(33, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:36.710697', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:26.272244', NULL, NULL),
(34, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:24:50.211540', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:24:37.207024', NULL, NULL),
(35, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:11.405722', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:00.670929', NULL, NULL),
(36, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:23.720851', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:11.702042', NULL, NULL),
(37, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:39.754194', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:29.547182', NULL, NULL),
(38, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:25:52.404196', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:40.494332', NULL, NULL),
(39, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:07.927596', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:25:57.953266', NULL, NULL),
(40, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:19.566842', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:08.622632', NULL, NULL),
(41, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:40.928132', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:29.884394', NULL, NULL),
(42, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:26:51.935075', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:41.491248', NULL, NULL),
(43, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:08.756091', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:26:58.177321', NULL, NULL),
(44, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:27:09.210046', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:09.031451', NULL, NULL),
(45, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:21.094558', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:09.799045', NULL, NULL),
(46, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-26 23:27:22.036738', 300, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:21.835043', NULL, NULL),
(47, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:39.012121', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:27.562036', NULL, NULL),
(48, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-26 23:27:50.436574', 30, NULL, NULL, 1, NULL, '', '3307', '2019-01-26 23:27:39.727508', NULL, NULL),
(49, 'background.views.api', '[[], {}]', '4d96636969445c88e5d06155ada392b42b126ebe', NULL, 0, '2019-01-27 17:27:52.368451', 30, NULL, NULL, 1, NULL, '', '3529', '2019-01-27 17:24:58.337559', NULL, NULL),
(50, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:30:10.140601', 300, NULL, NULL, 1, NULL, '', '4132', '2019-01-27 17:30:09.934003', NULL, NULL),
(51, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:30:10.960818', 300, NULL, NULL, 1, NULL, '', '4132', '2019-01-27 17:30:10.791871', NULL, NULL),
(52, 'background.views.paycheck', '[[], {}]', 'cb8c4c13683a92d6e3fa9dd302fd8a1d363ba6b2', NULL, 0, '2019-01-27 17:33:03.223489', 300, NULL, NULL, 1, NULL, '', '4465', '2019-01-27 17:33:03.015828', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-01-26 23:11:19.688920', '1', 'background.views.paycheck - 2019-01-26 23:08:18.487114+00:00', 3, '', 15, 1),
(2, '2019-01-26 23:11:27.257942', '7', 'background.views.paycheck', 3, '', 16, 1),
(3, '2019-01-26 23:11:27.542592', '6', 'background.views.api', 3, '', 16, 1),
(4, '2019-01-26 23:11:27.753387', '5', 'background.views.paycheck', 3, '', 16, 1),
(5, '2019-01-26 23:11:27.831027', '4', 'background.views.paycheck', 3, '', 16, 1),
(6, '2019-01-26 23:11:27.908628', '3', 'background.views.api', 3, '', 16, 1),
(7, '2019-01-26 23:11:28.262816', '1', 'background.views.api', 3, '', 16, 1),
(8, '2019-01-26 23:14:25.371471', '2', 'background.views.paycheck - 2019-01-26 23:11:57.005251+00:00', 3, '', 15, 1),
(9, '2019-01-26 23:14:32.041396', '14', 'background.views.paycheck', 3, '', 16, 1),
(10, '2019-01-26 23:14:32.309819', '13', 'background.views.api', 3, '', 16, 1),
(11, '2019-01-26 23:14:32.674668', '12', 'background.views.paycheck', 3, '', 16, 1),
(12, '2019-01-26 23:14:32.763281', '11', 'background.views.paycheck', 3, '', 16, 1),
(13, '2019-01-26 23:14:32.852598', '10', 'background.views.api', 3, '', 16, 1),
(14, '2019-01-26 23:14:32.941239', '8', 'background.views.api', 3, '', 16, 1),
(15, '2019-01-26 23:15:53.530997', '0', 'Team object (0)', 1, '[{\"added\": {}}]', 11, 1),
(16, '2019-01-26 23:16:09.435812', '0', 'Player object (0)', 1, '[{\"added\": {}}]', 8, 1),
(17, '2019-01-26 23:16:32.674334', '3', 'background.views.paycheck - 2019-01-26 23:15:01.195767+00:00', 3, '', 15, 1),
(18, '2019-01-26 23:16:38.910593', '23', 'background.views.paycheck', 3, '', 16, 1),
(19, '2019-01-26 23:16:39.164033', '22', 'background.views.api', 3, '', 16, 1),
(20, '2019-01-26 23:16:39.241605', '21', 'background.views.paycheck', 3, '', 16, 1),
(21, '2019-01-26 23:16:39.608141', '20', 'background.views.api', 3, '', 16, 1),
(22, '2019-01-26 23:16:39.685552', '19', 'background.views.paycheck', 3, '', 16, 1),
(23, '2019-01-26 23:16:39.763259', '18', 'background.views.paycheck', 3, '', 16, 1),
(24, '2019-01-26 23:16:39.841220', '17', 'background.views.api', 3, '', 16, 1),
(25, '2019-01-26 23:16:39.985106', '15', 'background.views.api', 3, '', 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'follower'),
(13, 'accounts', 'notification'),
(14, 'accounts', 'profile'),
(17, 'admin', 'logentry'),
(19, 'auth', 'group'),
(18, 'auth', 'permission'),
(20, 'auth', 'user'),
(15, 'background_task', 'completedtask'),
(16, 'background_task', 'task'),
(21, 'contenttypes', 'contenttype'),
(1, 'matches', 'ban'),
(2, 'matches', 'bet'),
(3, 'matches', 'hero'),
(4, 'matches', 'item'),
(5, 'matches', 'item_inventory'),
(6, 'matches', 'match'),
(7, 'matches', 'pick'),
(8, 'matches', 'player'),
(9, 'matches', 'settings'),
(10, 'matches', 'stats'),
(11, 'matches', 'team'),
(22, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-01-26 23:04:36.210740'),
(2, 'auth', '0001_initial', '2019-01-26 23:04:58.073672'),
(3, 'accounts', '0001_initial', '2019-01-26 23:05:09.619693'),
(4, 'admin', '0001_initial', '2019-01-26 23:05:14.113968'),
(5, 'admin', '0002_logentry_remove_auto_add', '2019-01-26 23:05:14.216507'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2019-01-26 23:05:14.474947'),
(7, 'contenttypes', '0002_remove_content_type_name', '2019-01-26 23:05:17.176668'),
(8, 'auth', '0002_alter_permission_name_max_length', '2019-01-26 23:05:20.102801'),
(9, 'auth', '0003_alter_user_email_max_length', '2019-01-26 23:05:22.154907'),
(10, 'auth', '0004_alter_user_username_opts', '2019-01-26 23:05:22.286930'),
(11, 'auth', '0005_alter_user_last_login_null', '2019-01-26 23:05:23.675176'),
(12, 'auth', '0006_require_contenttypes_0002', '2019-01-26 23:05:23.764125'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2019-01-26 23:05:23.858974'),
(14, 'auth', '0008_alter_user_username_max_length', '2019-01-26 23:05:26.049126'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2019-01-26 23:05:27.878610'),
(16, 'background_task', '0001_initial', '2019-01-26 23:05:43.639802'),
(17, 'background_task', '0002_auto_20170927_1109', '2019-01-26 23:05:59.709708'),
(18, 'matches', '0001_initial', '2019-01-26 23:06:52.222059'),
(19, 'sessions', '0001_initial', '2019-01-26 23:06:53.554132');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('r6wf507k3dgfxqqmn1a8gl7cp6yxjquy', 'ZTE2NDJlN2ZlNWU2NTZmMDIxNzE0NzVjMzMzMzZjMmMzYWU2NzU5Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmNTA2MTQ5ODUzYjhlYTQyOTU1ZWRmNDFhMjc1ZTkxMzliNjUyNzllIn0=', '2019-02-09 23:11:08.740615');

-- --------------------------------------------------------

--
-- Table structure for table `matches_ban`
--

CREATE TABLE `matches_ban` (
  `id` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_ban`
--

INSERT INTO `matches_ban` (`id`, `side`, `slot`, `hero_id`, `match_id`) VALUES
(1, 0, 0, 2, 4364833202),
(2, 0, 1, 99, 4364833202),
(3, 0, 2, 121, 4364833202),
(4, 0, 3, 12, 4364833202),
(5, 0, 4, 95, 4364833202),
(6, 0, 5, 35, 4364833202),
(7, 1, 0, 82, 4364833202),
(8, 1, 1, 101, 4364833202),
(9, 1, 2, 114, 4364833202),
(10, 1, 3, 92, 4364833202),
(11, 1, 4, 28, 4364833202),
(12, 1, 5, 76, 4364833202),
(13, 0, 0, 100, 4364846246),
(14, 0, 1, 96, 4364846246),
(15, 0, 2, 38, 4364846246),
(16, 0, 3, 55, 4364846246),
(17, 0, 4, 59, 4364846246),
(18, 0, 5, 23, 4364846246),
(19, 1, 0, 103, 4364846246),
(20, 1, 1, 84, 4364846246),
(21, 1, 2, 92, 4364846246),
(22, 1, 3, 73, 4364846246),
(23, 1, 4, 69, 4364846246),
(24, 1, 5, 74, 4364846246),
(25, 0, 0, 31, 4367471701),
(26, 0, 1, 38, 4367471701),
(27, 1, 0, 97, 4367471701),
(28, 1, 1, 44, 4367471701),
(29, 0, 0, 2, 4367437670),
(30, 0, 1, 68, 4367437670),
(31, 0, 2, 78, 4367437670),
(32, 0, 3, 76, 4367437670),
(33, 0, 4, 70, 4367437670),
(34, 0, 5, 46, 4367437670),
(35, 1, 0, 59, 4367437670),
(36, 1, 1, 81, 4367437670),
(37, 1, 2, 91, 4367437670),
(38, 1, 3, 12, 4367437670),
(39, 1, 4, 47, 4367437670),
(40, 1, 5, 101, 4367437670),
(41, 0, 0, 19, 4367440396),
(42, 0, 1, 109, 4367440396),
(43, 0, 2, 100, 4367440396),
(44, 0, 3, 44, 4367440396),
(45, 0, 4, 95, 4367440396),
(46, 0, 5, 76, 4367440396),
(47, 1, 0, 93, 4367440396),
(48, 1, 1, 59, 4367440396),
(49, 1, 2, 99, 4367440396),
(50, 1, 3, 41, 4367440396),
(51, 1, 4, 8, 4367440396),
(52, 1, 5, 10, 4367440396),
(53, 0, 0, 85, 4367462435),
(54, 0, 1, 121, 4367462435),
(55, 0, 2, 31, 4367462435),
(56, 0, 3, 29, 4367462435),
(57, 0, 4, 19, 4367462435),
(58, 1, 0, 74, 4367462435),
(59, 1, 1, 50, 4367462435),
(60, 1, 2, 93, 4367462435),
(61, 1, 3, 1, 4367462435),
(62, 1, 4, 44, 4367462435),
(63, 0, 0, 61, 4367465285),
(64, 0, 1, 97, 4367465285),
(65, 0, 2, 44, 4367465285),
(66, 0, 3, 94, 4367465285),
(67, 0, 4, 110, 4367465285),
(68, 1, 0, 50, 4367465285),
(69, 1, 1, 92, 4367465285),
(70, 1, 2, 121, 4367465285),
(71, 1, 3, 38, 4367465285),
(72, 1, 4, 86, 4367465285),
(73, 0, 0, 26, 4367472895),
(74, 1, 0, 1, 4367472895),
(75, 0, 0, 78, 4367443891),
(76, 0, 1, 31, 4367443891),
(77, 0, 2, 19, 4367443891),
(78, 0, 3, 44, 4367443891),
(79, 0, 4, 34, 4367443891),
(80, 0, 5, 114, 4367443891),
(81, 1, 0, 91, 4367443891),
(82, 1, 1, 109, 4367443891),
(83, 1, 2, 38, 4367443891),
(84, 1, 3, 107, 4367443891),
(85, 1, 4, 121, 4367443891),
(86, 1, 5, 86, 4367443891),
(87, 0, 0, 91, 4367431157),
(88, 0, 1, 90, 4367431157),
(89, 0, 2, 31, 4367431157),
(90, 0, 3, 76, 4367431157),
(91, 0, 4, 69, 4367431157),
(92, 0, 5, 10, 4367431157),
(93, 1, 0, 94, 4367431157),
(94, 1, 1, 103, 4367431157),
(95, 1, 2, 111, 4367431157),
(96, 1, 3, 59, 4367431157),
(97, 1, 4, 98, 4367431157),
(98, 1, 5, 34, 4367431157),
(99, 0, 0, 91, 4367466566),
(100, 0, 1, 107, 4367466566),
(101, 0, 2, 94, 4367466566),
(102, 0, 3, 121, 4367466566),
(103, 0, 4, 59, 4367466566),
(104, 1, 0, 8, 4367466566),
(105, 1, 1, 10, 4367466566),
(106, 1, 2, 38, 4367466566),
(107, 1, 3, 111, 4367466566),
(108, 0, 0, 97, 4367463455),
(109, 0, 1, 19, 4367463455),
(110, 0, 2, 121, 4367463455),
(111, 0, 3, 41, 4367463455),
(112, 1, 0, 107, 4367463455),
(113, 1, 1, 100, 4367463455),
(114, 1, 2, 103, 4367463455),
(115, 1, 3, 45, 4367463455),
(116, 0, 0, 38, 4367450262),
(117, 0, 1, 19, 4367450262),
(118, 0, 2, 28, 4367450262),
(119, 0, 3, 18, 4367450262),
(120, 0, 4, 109, 4367450262),
(121, 0, 5, 76, 4367450262),
(122, 1, 0, 50, 4367450262),
(123, 1, 1, 100, 4367450262),
(124, 1, 2, 78, 4367450262),
(125, 1, 3, 34, 4367450262),
(126, 1, 4, 27, 4367450262),
(127, 1, 5, 45, 4367450262),
(128, 0, 0, 31, 4367414622),
(129, 0, 1, 19, 4367414622),
(130, 0, 2, 38, 4367414622),
(131, 0, 3, 69, 4367414622),
(132, 0, 4, 29, 4367414622),
(133, 0, 5, 59, 4367414622),
(134, 1, 0, 92, 4367414622),
(135, 1, 1, 78, 4367414622),
(136, 1, 2, 85, 4367414622),
(137, 1, 3, 55, 4367414622),
(138, 1, 4, 93, 4367414622),
(139, 1, 5, 23, 4367414622),
(140, 0, 0, 121, 4367454597),
(141, 0, 1, 78, 4367454597),
(142, 0, 2, 31, 4367454597),
(143, 0, 3, 41, 4367454597),
(144, 0, 4, 19, 4367454597),
(145, 0, 5, 10, 4367454597),
(146, 1, 0, 107, 4367454597),
(147, 1, 1, 8, 4367454597),
(148, 1, 2, 26, 4367454597),
(149, 1, 3, 84, 4367454597),
(150, 1, 4, 63, 4367454597),
(151, 1, 5, 86, 4367454597),
(152, 0, 2, 19, 4367471701),
(153, 1, 2, 27, 4367471701),
(154, 0, 5, 101, 4367462435),
(155, 1, 5, 76, 4367462435),
(156, 0, 1, 100, 4367472895),
(157, 0, 2, 42, 4367472895),
(158, 1, 1, 59, 4367472895),
(159, 1, 2, 78, 4367472895),
(160, 0, 3, 93, 4367471701),
(161, 1, 3, 1, 4367471701),
(162, 0, 4, 59, 4367471701),
(163, 1, 4, 109, 4367471701),
(164, 0, 5, 14, 4367465285),
(165, 1, 5, 114, 4367465285),
(166, 0, 3, 121, 4367472895),
(167, 0, 4, 61, 4367472895),
(168, 1, 3, 12, 4367472895),
(169, 1, 4, 109, 4367472895),
(170, 0, 5, 82, 4367466566),
(171, 1, 4, 29, 4367466566),
(172, 1, 5, 65, 4367466566),
(173, 0, 4, 29, 4367463455),
(174, 0, 5, 38, 4367463455),
(175, 1, 4, 1, 4367463455),
(176, 1, 5, 35, 4367463455),
(177, 0, 0, 53, 4367482273),
(178, 0, 1, 111, 4367482273),
(179, 0, 2, 38, 4367482273),
(180, 0, 3, 59, 4367482273),
(181, 0, 4, 76, 4367482273),
(182, 1, 0, 85, 4367482273),
(183, 1, 1, 50, 4367482273),
(184, 1, 2, 121, 4367482273),
(185, 1, 3, 12, 4367482273),
(186, 1, 4, 109, 4367482273);

-- --------------------------------------------------------

--
-- Table structure for table `matches_bet`
--

CREATE TABLE `matches_bet` (
  `id` int(11) NOT NULL,
  `result` int(11) NOT NULL,
  `coin` int(11) NOT NULL,
  `is_payed` tinyint(1) NOT NULL,
  `date` datetime(6) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches_hero`
--

CREATE TABLE `matches_hero` (
  `hero_id` int(11) NOT NULL,
  `hero_name` varchar(100) NOT NULL,
  `url_full_portrait` varchar(200) NOT NULL,
  `url_small_portrait` varchar(200) NOT NULL,
  `url_large_portrait` varchar(200) NOT NULL,
  `url_vertical_portrait` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_hero`
--

INSERT INTO `matches_hero` (`hero_id`, `hero_name`, `url_full_portrait`, `url_small_portrait`, `url_large_portrait`, `url_vertical_portrait`) VALUES
(0, 'Null', 'null', 'null', 'null', 'null'),
(1, 'Anti-Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_vert.jpg'),
(2, 'Axe', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_vert.jpg'),
(3, 'Bane', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_vert.jpg'),
(4, 'Bloodseeker', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_vert.jpg'),
(5, 'Crystal Maiden', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_vert.jpg'),
(6, 'Drow Ranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_vert.jpg'),
(7, 'Earthshaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_vert.jpg'),
(8, 'Juggernaut', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_vert.jpg'),
(9, 'Mirana', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_vert.jpg'),
(10, 'Morphling', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_vert.jpg'),
(11, 'Shadow Fiend', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_vert.jpg'),
(12, 'Phantom Lancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_vert.jpg'),
(13, 'Puck', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_vert.jpg'),
(14, 'Pudge', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_vert.jpg'),
(15, 'Razor', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_vert.jpg'),
(16, 'Sand King', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_vert.jpg'),
(17, 'Storm Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_vert.jpg'),
(18, 'Sven', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_vert.jpg'),
(19, 'Tiny', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_vert.jpg'),
(20, 'Vengeful Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_vert.jpg'),
(21, 'Windranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_vert.jpg'),
(22, 'Zeus', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_vert.jpg'),
(23, 'Kunkka', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_vert.jpg'),
(25, 'Lina', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_vert.jpg'),
(26, 'Lion', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_vert.jpg'),
(27, 'Shadow Shaman', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_vert.jpg'),
(28, 'Slardar', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_vert.jpg'),
(29, 'Tidehunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_vert.jpg'),
(30, 'Witch Doctor', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_vert.jpg'),
(31, 'Lich', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_vert.jpg'),
(32, 'Riki', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_vert.jpg'),
(33, 'Enigma', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_vert.jpg'),
(34, 'Tinker', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_vert.jpg'),
(35, 'Sniper', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_vert.jpg'),
(36, 'Necrophos', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_vert.jpg'),
(37, 'Warlock', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_vert.jpg'),
(38, 'Beastmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_vert.jpg'),
(39, 'Queen of Pain', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_vert.jpg'),
(40, 'Venomancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_vert.jpg'),
(41, 'Faceless Void', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_vert.jpg'),
(42, 'Wraith King', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_vert.jpg'),
(43, 'Death Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_vert.jpg'),
(44, 'Phantom Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_vert.jpg'),
(45, 'Pugna', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_vert.jpg'),
(46, 'Templar Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_vert.jpg'),
(47, 'Viper', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_vert.jpg'),
(48, 'Luna', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_vert.jpg'),
(49, 'Dragon Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_vert.jpg'),
(50, 'Dazzle', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_vert.jpg'),
(51, 'Clockwerk', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_vert.jpg'),
(52, 'Leshrac', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_vert.jpg'),
(53, 'Nature\'s Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_vert.jpg'),
(54, 'Lifestealer', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_vert.jpg'),
(55, 'Dark Seer', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_vert.jpg'),
(56, 'Clinkz', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_vert.jpg'),
(57, 'Omniknight', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_vert.jpg'),
(58, 'Enchantress', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_vert.jpg'),
(59, 'Huskar', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_vert.jpg'),
(60, 'Night Stalker', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_vert.jpg'),
(61, 'Broodmother', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_vert.jpg'),
(62, 'Bounty Hunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_vert.jpg'),
(63, 'Weaver', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_vert.jpg'),
(64, 'Jakiro', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_vert.jpg'),
(65, 'Batrider', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_vert.jpg'),
(66, 'Chen', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_vert.jpg'),
(67, 'Spectre', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_vert.jpg'),
(68, 'Ancient Apparition', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_vert.jpg'),
(69, 'Doom', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_vert.jpg'),
(70, 'Ursa', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_vert.jpg'),
(71, 'Spirit Breaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_vert.jpg'),
(72, 'Gyrocopter', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_vert.jpg'),
(73, 'Alchemist', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_vert.jpg'),
(74, 'Invoker', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_vert.jpg'),
(75, 'Silencer', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_vert.jpg'),
(76, 'Outworld Devourer', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_vert.jpg'),
(77, 'Lycan', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_vert.jpg'),
(78, 'Brewmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_vert.jpg'),
(79, 'Shadow Demon', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_vert.jpg'),
(80, 'Lone Druid', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_vert.jpg'),
(81, 'Chaos Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_vert.jpg'),
(82, 'Meepo', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_vert.jpg'),
(83, 'Treant Protector', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_vert.jpg'),
(84, 'Ogre Magi', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_vert.jpg'),
(85, 'Undying', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_vert.jpg'),
(86, 'Rubick', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_vert.jpg'),
(87, 'Disruptor', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_vert.jpg'),
(88, 'Nyx Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_vert.jpg'),
(89, 'Naga Siren', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_vert.jpg'),
(90, 'Keeper of the Light', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_vert.jpg'),
(91, 'Io', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_vert.jpg'),
(92, 'Visage', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_vert.jpg'),
(93, 'Slark', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_vert.jpg'),
(94, 'Medusa', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_vert.jpg'),
(95, 'Troll Warlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_vert.jpg'),
(96, 'Centaur Warrunner', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_vert.jpg'),
(97, 'Magnus', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_vert.jpg'),
(98, 'Timbersaw', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_vert.jpg'),
(99, 'Bristleback', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_vert.jpg'),
(100, 'Tusk', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_vert.jpg'),
(101, 'Skywrath Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_vert.jpg'),
(102, 'Abaddon', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_vert.jpg'),
(103, 'Elder Titan', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_vert.jpg'),
(104, 'Legion Commander', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_vert.jpg'),
(105, 'Techies', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_vert.jpg'),
(106, 'Ember Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_vert.jpg'),
(107, 'Earth Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_vert.jpg'),
(108, 'Underlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_vert.jpg'),
(109, 'Terrorblade', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_vert.jpg'),
(110, 'Phoenix', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_vert.jpg'),
(111, 'Oracle', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_vert.jpg'),
(112, 'Winter Wyvern', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_vert.jpg'),
(113, 'Arc Warden', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_vert.jpg'),
(114, 'Monkey King', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_vert.jpg'),
(119, 'Dark Willow', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_vert.jpg'),
(120, 'Pangolier', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_vert.jpg'),
(121, 'Grimstroke', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_sb.png', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `matches_item`
--

CREATE TABLE `matches_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `url_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_item`
--

INSERT INTO `matches_item` (`item_id`, `item_name`, `url_image`) VALUES
(0, 'Null', 'null'),
(1, 'Blink Dagger', 'http://cdn.dota2.com/apps/dota2/images/items/blink_lg.png'),
(2, 'Blades of Attack', 'http://cdn.dota2.com/apps/dota2/images/items/blades_of_attack_lg.png'),
(3, 'Broadsword', 'http://cdn.dota2.com/apps/dota2/images/items/broadsword_lg.png'),
(4, 'Chainmail', 'http://cdn.dota2.com/apps/dota2/images/items/chainmail_lg.png'),
(5, 'Claymore', 'http://cdn.dota2.com/apps/dota2/images/items/claymore_lg.png'),
(6, 'Helm of Iron Will', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_iron_will_lg.png'),
(7, 'Javelin', 'http://cdn.dota2.com/apps/dota2/images/items/javelin_lg.png'),
(8, 'Mithril Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/mithril_hammer_lg.png'),
(9, 'Platemail', 'http://cdn.dota2.com/apps/dota2/images/items/platemail_lg.png'),
(10, 'Quarterstaff', 'http://cdn.dota2.com/apps/dota2/images/items/quarterstaff_lg.png'),
(11, 'Quelling Blade', 'http://cdn.dota2.com/apps/dota2/images/items/quelling_blade_lg.png'),
(12, 'Ring of Protection', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_protection_lg.png'),
(13, 'Gauntlets of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/gauntlets_lg.png'),
(14, 'Slippers of Agility', 'http://cdn.dota2.com/apps/dota2/images/items/slippers_lg.png'),
(15, 'Mantle of Intelligence', 'http://cdn.dota2.com/apps/dota2/images/items/mantle_lg.png'),
(16, 'Iron Branch', 'http://cdn.dota2.com/apps/dota2/images/items/branches_lg.png'),
(17, 'Belt of Strength', 'http://cdn.dota2.com/apps/dota2/images/items/belt_of_strength_lg.png'),
(18, 'Band of Elvenskin', 'http://cdn.dota2.com/apps/dota2/images/items/boots_of_elves_lg.png'),
(19, 'Robe of the Magi', 'http://cdn.dota2.com/apps/dota2/images/items/robe_lg.png'),
(20, 'Circlet', 'http://cdn.dota2.com/apps/dota2/images/items/circlet_lg.png'),
(21, 'Ogre Axe', 'http://cdn.dota2.com/apps/dota2/images/items/ogre_axe_lg.png'),
(22, 'Blade of Alacrity', 'http://cdn.dota2.com/apps/dota2/images/items/blade_of_alacrity_lg.png'),
(23, 'Staff of Wizardry', 'http://cdn.dota2.com/apps/dota2/images/items/staff_of_wizardry_lg.png'),
(24, 'Ultimate Orb', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_orb_lg.png'),
(25, 'Gloves of Haste', 'http://cdn.dota2.com/apps/dota2/images/items/gloves_lg.png'),
(26, 'Morbid Mask', 'http://cdn.dota2.com/apps/dota2/images/items/lifesteal_lg.png'),
(27, 'Ring of Regen', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_regen_lg.png'),
(28, 'Sage\'s Mask', 'http://cdn.dota2.com/apps/dota2/images/items/sobi_mask_lg.png'),
(29, 'Boots of Speed', 'http://cdn.dota2.com/apps/dota2/images/items/boots_lg.png'),
(30, 'Gem of True Sight', 'http://cdn.dota2.com/apps/dota2/images/items/gem_lg.png'),
(31, 'Cloak', 'http://cdn.dota2.com/apps/dota2/images/items/cloak_lg.png'),
(32, 'Talisman of Evasion', 'http://cdn.dota2.com/apps/dota2/images/items/talisman_of_evasion_lg.png'),
(33, 'Cheese', 'http://cdn.dota2.com/apps/dota2/images/items/cheese_lg.png'),
(34, 'Magic Stick', 'http://cdn.dota2.com/apps/dota2/images/items/magic_stick_lg.png'),
(35, 'Recipe: Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png\r\n'),
(36, 'Magic Wand', 'http://cdn.dota2.com/apps/dota2/images/items/magic_wand_lg.png'),
(37, 'Ghost Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ghost_lg.png'),
(38, 'Clarity', 'http://cdn.dota2.com/apps/dota2/images/items/clarity_lg.png'),
(39, 'Healing Salve', 'http://cdn.dota2.com/apps/dota2/images/items/flask_lg.png'),
(40, 'Dust of Appearance', 'http://cdn.dota2.com/apps/dota2/images/items/dust_lg.png'),
(41, 'Bottle', 'http://cdn.dota2.com/apps/dota2/images/items/bottle_lg.png'),
(42, 'Observer Ward', 'http://cdn.dota2.com/apps/dota2/images/items/ward_observer_lg.png'),
(43, 'Sentry Ward', 'http://cdn.dota2.com/apps/dota2/images/items/ward_sentry_lg.png'),
(44, 'Tango', 'http://cdn.dota2.com/apps/dota2/images/items/tango_lg.png'),
(45, 'Animal Courier', 'http://cdn.dota2.com/apps/dota2/images/items/courier_lg.png'),
(46, 'Town Portal Scroll', 'http://cdn.dota2.com/apps/dota2/images/items/tpscroll_lg.png'),
(47, 'Recipe: Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(48, 'Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_lg.png'),
(49, 'Recipe: Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(50, 'Phase Boots', 'http://cdn.dota2.com/apps/dota2/images/items/phase_boots_lg.png'),
(51, 'Demon Edge', 'http://cdn.dota2.com/apps/dota2/images/items/demon_edge_lg.png'),
(52, 'Eaglesong', 'http://cdn.dota2.com/apps/dota2/images/items/eagle_lg.png'),
(53, 'Reaver', 'http://cdn.dota2.com/apps/dota2/images/items/reaver_lg.png'),
(54, 'Sacred Relic', 'http://cdn.dota2.com/apps/dota2/images/items/relic_lg.png'),
(55, 'Hyperstone', 'http://cdn.dota2.com/apps/dota2/images/items/hyperstone_lg.png'),
(56, 'Ring of Health', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_health_lg.png'),
(57, 'Void Stone', 'http://cdn.dota2.com/apps/dota2/images/items/void_stone_lg.png'),
(58, 'Mystic Staff', 'http://cdn.dota2.com/apps/dota2/images/items/mystic_staff_lg.png'),
(59, 'Energy Booster', 'http://cdn.dota2.com/apps/dota2/images/items/energy_booster_lg.png'),
(60, 'Point Booster', 'http://cdn.dota2.com/apps/dota2/images/items/point_booster_lg.png'),
(61, 'Vitality Booster', 'http://cdn.dota2.com/apps/dota2/images/items/vitality_booster_lg.png'),
(62, 'Recipe: Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_power_treads_lg.png'),
(63, 'Power Treads', 'http://cdn.dota2.com/apps/dota2/images/items/power_treads_lg.png'),
(64, 'Recipe: Hand of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_hand_of_midas_lg.png'),
(65, 'Hand of Midas', 'http://cdn.dota2.com/apps/dota2/images/items/hand_of_midas_lg.png'),
(66, 'Recipe: Oblivion Staff', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(67, 'Oblivion Staff', 'http://cdn.dota2.com/apps/dota2/images/items/oblivion_staff_lg.png'),
(68, 'Recipe: Perseverance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(69, 'Perseverance', 'http://cdn.dota2.com/apps/dota2/images/items/pers_lg.png'),
(70, 'Recipe: Poor Man\'s Shield', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(71, 'Poor Man\'s Shield', 'http://cdn.dota2.com/apps/dota2/images/items/poor_mans_shield_lg.png'),
(72, 'Recipe: Bracer', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(73, 'Bracer', 'http://cdn.dota2.com/apps/dota2/images/items/bracer_lg.png'),
(74, 'Recipe: Wraith Band', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png\r\n'),
(75, 'Wraith Band', 'http://cdn.dota2.com/apps/dota2/images/items/wraith_band_lg.png'),
(76, 'Recipe: Null Talisman', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(77, 'Null Talisman', 'http://cdn.dota2.com/apps/dota2/images/items/null_talisman_lg.png'),
(78, 'Recipe: Mekansm', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(79, 'Mekansm', 'http://cdn.dota2.com/apps/dota2/images/items/mekansm_lg.png'),
(80, 'Recipe: Vladmir\'s Offering', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(81, 'Vladmir\'s Offering', 'http://cdn.dota2.com/apps/dota2/images/items/vladmir_lg.png'),
(85, 'Recipe: Buckler', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(86, 'Buckler', 'http://cdn.dota2.com/apps/dota2/images/items/buckler_lg.png'),
(87, 'Recipe: Ring of Basilius', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(88, 'Ring of Basilius', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_basilius_lg.png'),
(89, 'Recipe: Pipe of Insight', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(90, 'Pipe of Insight', 'http://cdn.dota2.com/apps/dota2/images/items/pipe_lg.png'),
(91, 'Recipe: Urn of Shadows', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(92, 'Urn of Shadows', 'http://cdn.dota2.com/apps/dota2/images/items/urn_of_shadows_lg.png'),
(93, 'Recipe: Headdress', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(94, 'Headdress', 'http://cdn.dota2.com/apps/dota2/images/items/headdress_lg.png'),
(95, 'Recipe: Scythe of Vyse', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(96, 'Scythe of Vyse', 'http://cdn.dota2.com/apps/dota2/images/items/sheepstick_lg.png'),
(97, 'Recipe: Orchid Malevolence', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(98, 'Orchid Malevolence', 'http://cdn.dota2.com/apps/dota2/images/items/orchid_lg.png'),
(99, 'Recipe: Eul\'s Scepter of Divinity', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(100, 'Eul\'s Scepter of Divinity', 'http://cdn.dota2.com/apps/dota2/images/items/cyclone_lg.png'),
(101, 'Recipe: Force Staff', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(102, 'Force Staff', 'http://cdn.dota2.com/apps/dota2/images/items/force_staff_lg.png'),
(103, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(104, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_lg.png'),
(105, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(106, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_lg.png'),
(107, 'Recipe: Aghanim\'s Scepter', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(108, 'Aghanim\'s Scepter', 'http://cdn.dota2.com/apps/dota2/images/items/ultimate_scepter_lg.png'),
(109, 'Recipe: Refresher Orb', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(110, 'Refresher Orb', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_lg.png'),
(111, 'Recipe: Assault Cuirass', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(112, 'Assault Cuirass', 'http://cdn.dota2.com/apps/dota2/images/items/assault_lg.png'),
(113, 'Recipe: Heart of Tarrasque', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(114, 'Heart of Tarrasque', 'http://cdn.dota2.com/apps/dota2/images/items/heart_lg.png'),
(115, 'Recipe: Black King Bar', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(116, 'Black King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/black_king_bar_lg.png'),
(117, 'Aegis of the Immortal', 'http://cdn.dota2.com/apps/dota2/images/items/aegis_lg.png'),
(118, 'Recipe: Shiva\'s Guard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(119, 'Shiva\'s Guard', 'http://cdn.dota2.com/apps/dota2/images/items/shivas_guard_lg.png'),
(120, 'Recipe: Bloodstone', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(121, 'Bloodstone', 'http://cdn.dota2.com/apps/dota2/images/items/bloodstone_lg.png'),
(122, 'Recipe: Linken\'s Sphere', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(123, 'Linken\'s Sphere', 'http://cdn.dota2.com/apps/dota2/images/items/sphere_lg.png'),
(124, 'Recipe: Vanguard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(125, 'Vanguard', 'http://cdn.dota2.com/apps/dota2/images/items/vanguard_lg.png'),
(126, 'Recipe: Blade Mail', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(127, 'Blade Mail', 'http://cdn.dota2.com/apps/dota2/images/items/blade_mail_lg.png'),
(128, 'Recipe: Soul Booster', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(129, 'Soul Booster', 'http://cdn.dota2.com/apps/dota2/images/items/soul_booster_lg.png'),
(130, 'Recipe: Hood of Defiance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(131, 'Hood of Defiance', 'http://cdn.dota2.com/apps/dota2/images/items/hood_of_defiance_lg.png'),
(132, 'Recipe: Divine Rapier', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(133, 'Divine Rapier', 'http://cdn.dota2.com/apps/dota2/images/items/rapier_lg.png'),
(134, 'Recipe: Monkey King Bar', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(135, 'Monkey King Bar', 'http://cdn.dota2.com/apps/dota2/images/items/monkey_king_bar_lg.png'),
(136, 'Recipe: Radiance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(137, 'Radiance', 'http://cdn.dota2.com/apps/dota2/images/items/radiance_lg.png'),
(138, 'Recipe: Butterfly', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(139, 'Butterfly', 'http://cdn.dota2.com/apps/dota2/images/items/butterfly_lg.png'),
(140, 'Recipe: Daedalus', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(141, 'Daedalus', 'http://cdn.dota2.com/apps/dota2/images/items/greater_crit_lg.png'),
(142, 'Recipe: Skull Basher', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(143, 'Skull Basher', 'http://cdn.dota2.com/apps/dota2/images/items/basher_lg.png'),
(144, 'Recipe: Battle Fury', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(145, 'Battle Fury', 'http://cdn.dota2.com/apps/dota2/images/items/bfury_lg.png'),
(146, 'Recipe: Manta Style', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(147, 'Manta Style', 'http://cdn.dota2.com/apps/dota2/images/items/manta_lg.png'),
(148, 'Recipe: Crystalys', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(149, 'Crystalys', 'http://cdn.dota2.com/apps/dota2/images/items/lesser_crit_lg.png'),
(150, 'Recipe: Armlet of Mordiggian', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(151, 'Armlet of Mordiggian', 'http://cdn.dota2.com/apps/dota2/images/items/armlet_lg.png'),
(152, 'Shadow Blade', 'http://cdn.dota2.com/apps/dota2/images/items/invis_sword_lg.png'),
(153, 'Recipe: Sange and Yasha', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(154, 'Sange and Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/sange_and_yasha_lg.png'),
(155, 'Recipe: Satanic', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(156, 'Satanic', 'http://cdn.dota2.com/apps/dota2/images/items/satanic_lg.png'),
(157, 'Recipe: Mjollnir', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(158, 'Mjollnir', 'http://cdn.dota2.com/apps/dota2/images/items/mjollnir_lg.png'),
(159, 'Recipe: Eye of Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_skadi_lg.png'),
(160, 'Eye of Skadi', 'http://cdn.dota2.com/apps/dota2/images/items/skadi_lg.png'),
(161, 'Recipe: Sange', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(162, 'Sange', 'http://cdn.dota2.com/apps/dota2/images/items/sange_lg.png'),
(163, 'Recipe: Helm of the Dominator', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(164, 'Helm of the Dominator', 'http://cdn.dota2.com/apps/dota2/images/items/helm_of_the_dominator_lg.png'),
(165, 'Recipe: Maelstrom', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(166, 'Maelstrom', 'http://cdn.dota2.com/apps/dota2/images/items/maelstrom_lg.png'),
(167, 'Recipe: Desolator', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(168, 'Desolator', 'http://cdn.dota2.com/apps/dota2/images/items/desolator_lg.png'),
(169, 'Recipe: Yasha', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(170, 'Yasha', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_lg.png'),
(171, 'Recipe: Mask of Madness', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(172, 'Mask of Madness', 'http://cdn.dota2.com/apps/dota2/images/items/mask_of_madness_lg.png'),
(173, 'Recipe: Diffusal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(174, 'Diffusal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/diffusal_blade_lg.png'),
(175, 'Recipe: Ethereal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(176, 'Ethereal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/ethereal_blade_lg.png'),
(177, 'Recipe: Soul Ring', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(178, 'Soul Ring', 'http://cdn.dota2.com/apps/dota2/images/items/soul_ring_lg.png'),
(179, 'Recipe: Arcane Boots', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(180, 'Arcane Boots', 'http://cdn.dota2.com/apps/dota2/images/items/arcane_boots_lg.png'),
(181, 'Orb of Venom', 'http://cdn.dota2.com/apps/dota2/images/items/orb_of_venom_lg.png'),
(182, 'Stout Shield', 'http://cdn.dota2.com/apps/dota2/images/items/stout_shield_lg.png'),
(183, 'Recipe: Shadow Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(184, 'Recipe: Drum of Endurance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(185, 'Drum of Endurance', 'http://cdn.dota2.com/apps/dota2/images/items/ancient_janggo_lg.png'),
(186, 'Recipe: Medallion of Courage', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(187, 'Medallion of Courage', 'http://cdn.dota2.com/apps/dota2/images/items/medallion_of_courage_lg.png'),
(188, 'Smoke of Deceit', 'http://cdn.dota2.com/apps/dota2/images/items/smoke_of_deceit_lg.png'),
(189, 'Recipe: Veil of Discord', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(190, 'Veil of Discord', 'http://cdn.dota2.com/apps/dota2/images/items/veil_of_discord_lg.png'),
(191, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(192, 'Recipe: Necronomicon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(193, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_2_lg.png'),
(194, 'Necronomicon', 'http://cdn.dota2.com/apps/dota2/images/items/necronomicon_3_lg.png'),
(197, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(198, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(199, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(200, 'Recipe: Dagon', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(201, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_2_lg.png'),
(202, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_3_lg.png'),
(203, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_4_lg.png'),
(204, 'Dagon', 'http://cdn.dota2.com/apps/dota2/images/items/dagon_5_lg.png'),
(205, 'Recipe: Rod of Atos', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(206, 'Rod of Atos', 'http://cdn.dota2.com/apps/dota2/images/items/rod_of_atos_lg.png'),
(207, 'Recipe: Abyssal Blade', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(208, 'Abyssal Blade', 'http://cdn.dota2.com/apps/dota2/images/items/abyssal_blade_lg.png'),
(209, 'Recipe: Heaven\'s Halberd', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(210, 'Heaven\'s Halberd', 'http://cdn.dota2.com/apps/dota2/images/items/heavens_halberd_lg.png'),
(211, 'Recipe: Ring of Aquila', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(212, 'Ring of Aquila', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_aquila_lg.png'),
(213, 'Recipe: Tranquil Boots', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(214, 'Tranquil Boots', 'http://cdn.dota2.com/apps/dota2/images/items/tranquil_boots_lg.png'),
(215, 'Shadow Amulet', 'http://cdn.dota2.com/apps/dota2/images/items/shadow_amulet_lg.png'),
(216, 'Enchanted Mango', 'http://cdn.dota2.com/apps/dota2/images/items/enchanted_mango_lg.png'),
(217, 'Recipe: Observer and Sentry Wards', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_ward_dispenser_lg.png'),
(218, 'Observer and Sentry Wards', 'http://cdn.dota2.com/apps/dota2/images/items/ward_dispenser_lg.png'),
(219, 'Recipe: Boots of Travel', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(220, 'Boots of Travel', 'http://cdn.dota2.com/apps/dota2/images/items/travel_boots_2_lg.png'),
(221, 'Recipe: Lotus Orb', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(222, 'Recipe: Meteor Hammer', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(223, 'Meteor Hammer', 'http://cdn.dota2.com/apps/dota2/images/items/meteor_hammer_lg.png'),
(224, 'Recipe: Nullifier', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(225, 'Nullifier', 'http://cdn.dota2.com/apps/dota2/images/items/nullifier_lg.png'),
(226, 'Lotus Orb', 'http://cdn.dota2.com/apps/dota2/images/items/lotus_orb_lg.png'),
(227, 'Recipe: Solar Crest', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(228, 'Recipe: Octarine Core', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(229, 'Solar Crest', 'http://cdn.dota2.com/apps/dota2/images/items/solar_crest_lg.png'),
(230, 'Recipe: Guardian Greaves', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(231, 'Guardian Greaves', 'http://cdn.dota2.com/apps/dota2/images/items/guardian_greaves_lg.png'),
(232, 'Aether Lens', 'http://cdn.dota2.com/apps/dota2/images/items/aether_lens_lg.png'),
(233, 'Recipe: Aether Lens', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(234, 'Recipe: Dragon Lance', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(235, 'Octarine Core', 'http://cdn.dota2.com/apps/dota2/images/items/octarine_core_lg.png'),
(236, 'Dragon Lance', 'http://cdn.dota2.com/apps/dota2/images/items/dragon_lance_lg.png'),
(237, 'Faerie Fire', 'http://cdn.dota2.com/apps/dota2/images/items/faerie_fire_lg.png'),
(238, 'Iron Talon Recipe', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_iron_talon_lg.png'),
(239, 'Iron Talon', 'http://cdn.dota2.com/apps/dota2/images/items/iron_talon_lg.png'),
(240, 'Blight Stone', 'http://cdn.dota2.com/apps/dota2/images/items/blight_stone_lg.png'),
(241, 'Tango (Shared)', 'http://cdn.dota2.com/apps/dota2/images/items/tango_single_lg.png'),
(242, 'Crimson Guard', 'http://cdn.dota2.com/apps/dota2/images/items/crimson_guard_lg.png'),
(243, 'Recipe: Crimson Guard', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(244, 'Wind Lace', 'http://cdn.dota2.com/apps/dota2/images/items/wind_lace_lg.png'),
(245, 'Recipe: Bloodthorn', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(246, 'Recipe: Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/recipe_moon_shard_lg.png'),
(247, 'Moon Shard', 'http://cdn.dota2.com/apps/dota2/images/items/moon_shard_lg.png'),
(248, 'Recipe: Silver Edge', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(249, 'Silver Edge', 'http://cdn.dota2.com/apps/dota2/images/items/silver_edge_lg.png'),
(250, 'Bloodthorn', 'http://cdn.dota2.com/apps/dota2/images/items/bloodthorn_lg.png'),
(251, 'Recipe: Echo Sabre', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(252, 'Echo Sabre', 'http://cdn.dota2.com/apps/dota2/images/items/echo_sabre_lg.png'),
(253, 'Recipe: Glimmer Cape', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(254, 'Glimmer Cape', 'http://cdn.dota2.com/apps/dota2/images/items/glimmer_cape_lg.png'),
(255, 'Recipe: Aeon Disk', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(256, 'Aeon Disk', 'http://cdn.dota2.com/apps/dota2/images/items/combo_breaker_lg.png'),
(257, 'Tome of Knowledge', 'http://cdn.dota2.com/apps/dota2/images/items/tome_of_knowledge_lg.png'),
(258, 'Recipe: Kaya', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(259, 'Kaya', 'http://cdn.dota2.com/apps/dota2/images/items/trident_lg.png'),
(260, 'Refresher Shard', 'http://cdn.dota2.com/apps/dota2/images/items/refresher_shard_lg.png'),
(261, 'Crown', 'http://cdn.dota2.com/apps/dota2/images/items/crown_lg.png'),
(262, 'Recipe: Hurricane Pike', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(263, 'Hurricane Pike', 'http://cdn.dota2.com/apps/dota2/images/items/hurricane_pike_lg.png'),
(265, 'Infused Raindrops', 'http://cdn.dota2.com/apps/dota2/images/items/infused_raindrop_lg.png'),
(266, 'Recipe: Spirit Vessel', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(267, 'Spirit Vessel', 'http://cdn.dota2.com/apps/dota2/images/items/spirit_vessel_lg.png'),
(268, 'Recipe: Holy Locket', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(269, 'Holy Locket', 'http://cdn.dota2.com/apps/dota2/images/items/holy_locket_lg.png'),
(272, 'Recipe: Kaya and Sange', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(273, 'Kaya and Sange', 'http://cdn.dota2.com/apps/dota2/images/items/kaya_and_sange_lg.png'),
(274, 'Recipe: Yasha and Kaya', 'cdn.dota2.com/apps/dota2/images/items/recipe_lg.png'),
(275, 'DOTA_Tooltip_Ability_item_trident', 'null'),
(276, 'DOTA_Tooltip_Ability_item_combo_breaker', 'null'),
(277, 'Yasha and Kaya', 'http://cdn.dota2.com/apps/dota2/images/items/yasha_and_kaya_lg.png'),
(279, 'Ring of Tarrasque', 'http://cdn.dota2.com/apps/dota2/images/items/ring_of_tarrasque_lg.png'),
(1021, 'River Vial: Chrome', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter_lg.png'),
(1022, 'River Vial: Dry', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter2_lg.png'),
(1023, 'River Vial: Slime', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter3_lg.png'),
(1024, 'River Vial: Oil', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter4_lg.png'),
(1025, 'River Vial: Electrified', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter5_lg.png'),
(1026, 'River Vial: Potion', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter6_lg.png'),
(1027, 'River Vial: Blood', 'http://cdn.dota2.com/apps/dota2/images/items/river_painter7_lg.png'),
(1028, 'Tombstone', 'null'),
(1029, 'Super Blink Dagger', 'null'),
(1030, 'Pocket Tower', 'null'),
(1032, 'Pocket Roshan', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `matches_item_inventory`
--

CREATE TABLE `matches_item_inventory` (
  `id` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_item_inventory`
--

INSERT INTO `matches_item_inventory` (`id`, `slot`, `item_id`, `match_id`, `player_id`) VALUES
(1, 0, 0, 4364887521, 0),
(2, 1, 180, 4364887521, 0),
(3, 2, 77, 4364887521, 0),
(4, 3, 6, 4364887521, 0),
(5, 4, 0, 4364887521, 0),
(6, 5, 0, 4364887521, 0),
(7, 0, 81, 4364846246, 163580946),
(8, 1, 147, 4364846246, 163580946),
(9, 2, 75, 4364846246, 163580946),
(10, 3, 75, 4364846246, 163580946),
(11, 4, 63, 4364846246, 163580946),
(12, 5, 123, 4364846246, 163580946),
(13, 0, 63, 4364846246, 179625075),
(14, 1, 1, 4364846246, 179625075),
(15, 2, 168, 4364846246, 179625075),
(16, 3, 75, 4364846246, 179625075),
(17, 4, 236, 4364846246, 179625075),
(18, 5, 75, 4364846246, 179625075),
(19, 0, 1, 4364846246, 129105279),
(20, 1, 36, 4364846246, 129105279),
(21, 2, 102, 4364846246, 129105279),
(22, 3, 86, 4364846246, 129105279),
(23, 4, 180, 4364846246, 129105279),
(24, 5, 182, 4364846246, 129105279),
(25, 0, 36, 4364846246, 119984038),
(26, 1, 92, 4364846246, 119984038),
(27, 2, 29, 4364846246, 119984038),
(28, 3, 188, 4364846246, 119984038),
(29, 4, 232, 4364846246, 119984038),
(30, 5, 244, 4364846246, 119984038),
(31, 0, 254, 4364846246, 75678907),
(32, 1, 244, 4364846246, 75678907),
(33, 2, 34, 4364846246, 75678907),
(34, 3, 218, 4364846246, 75678907),
(35, 4, 29, 4364846246, 75678907),
(36, 5, 188, 4364846246, 75678907),
(37, 0, 36, 4364846246, 47150177),
(38, 1, 265, 4364846246, 47150177),
(39, 2, 42, 4364846246, 47150177),
(40, 3, 244, 4364846246, 47150177),
(41, 4, 73, 4364846246, 47150177),
(42, 5, 29, 4364846246, 47150177),
(43, 0, 63, 4364846246, 122534469),
(44, 1, 92, 4364846246, 122534469),
(45, 2, 40, 4364846246, 122534469),
(46, 3, 244, 4364846246, 122534469),
(47, 4, 182, 4364846246, 122534469),
(48, 5, 181, 4364846246, 122534469),
(49, 0, 182, 4364846246, 116307658),
(50, 1, 50, 4364846246, 116307658),
(51, 2, 40, 4364846246, 116307658),
(52, 3, 41, 4364846246, 116307658),
(53, 4, 252, 4364846246, 116307658),
(54, 5, 1, 4364846246, 116307658),
(55, 0, 50, 4364846246, 38131454),
(56, 1, 145, 4364846246, 38131454),
(57, 2, 182, 4364846246, 38131454),
(58, 3, 75, 4364846246, 38131454),
(59, 4, 170, 4364846246, 38131454),
(60, 5, 75, 4364846246, 38131454),
(61, 0, 77, 4364846246, 156173917),
(62, 1, 1, 4364846246, 156173917),
(63, 2, 63, 4364846246, 156173917),
(64, 3, 108, 4364846246, 156173917),
(65, 4, 7, 4364846246, 156173917),
(66, 5, 77, 4364846246, 156173917),
(67, 0, 0, 4367471701, 116139178),
(68, 1, 0, 4367471701, 116139178),
(69, 2, 0, 4367471701, 116139178),
(70, 3, 0, 4367471701, 116139178),
(71, 4, 0, 4367471701, 116139178),
(72, 5, 0, 4367471701, 116139178),
(73, 0, 0, 4367471701, 102689086),
(74, 1, 0, 4367471701, 102689086),
(75, 2, 0, 4367471701, 102689086),
(76, 3, 0, 4367471701, 102689086),
(77, 4, 0, 4367471701, 102689086),
(78, 5, 0, 4367471701, 102689086),
(79, 0, 0, 4367471701, 167699609),
(80, 1, 0, 4367471701, 167699609),
(81, 2, 0, 4367471701, 167699609),
(82, 3, 0, 4367471701, 167699609),
(83, 4, 0, 4367471701, 167699609),
(84, 5, 0, 4367471701, 167699609),
(85, 0, 0, 4367471701, 98300172),
(86, 1, 0, 4367471701, 98300172),
(87, 2, 0, 4367471701, 98300172),
(88, 3, 0, 4367471701, 98300172),
(89, 4, 0, 4367471701, 98300172),
(90, 5, 0, 4367471701, 98300172),
(91, 0, 0, 4367471701, 127566393),
(92, 1, 0, 4367471701, 127566393),
(93, 2, 0, 4367471701, 127566393),
(94, 3, 0, 4367471701, 127566393),
(95, 4, 0, 4367471701, 127566393),
(96, 5, 0, 4367471701, 127566393),
(97, 0, 0, 4367471701, 196863261),
(98, 1, 0, 4367471701, 196863261),
(99, 2, 0, 4367471701, 196863261),
(100, 3, 0, 4367471701, 196863261),
(101, 4, 0, 4367471701, 196863261),
(102, 5, 0, 4367471701, 196863261),
(103, 0, 0, 4367471701, 205266364),
(104, 1, 0, 4367471701, 205266364),
(105, 2, 0, 4367471701, 205266364),
(106, 3, 0, 4367471701, 205266364),
(107, 4, 0, 4367471701, 205266364),
(108, 5, 0, 4367471701, 205266364),
(109, 0, 0, 4367471701, 177681222),
(110, 1, 0, 4367471701, 177681222),
(111, 2, 0, 4367471701, 177681222),
(112, 3, 0, 4367471701, 177681222),
(113, 4, 0, 4367471701, 177681222),
(114, 5, 0, 4367471701, 177681222),
(115, 0, 0, 4367471701, 235619418),
(116, 1, 0, 4367471701, 235619418),
(117, 2, 0, 4367471701, 235619418),
(118, 3, 0, 4367471701, 235619418),
(119, 4, 0, 4367471701, 235619418),
(120, 5, 0, 4367471701, 235619418),
(121, 0, 0, 4367471701, 182886288),
(122, 1, 0, 4367471701, 182886288),
(123, 2, 0, 4367471701, 182886288),
(124, 3, 0, 4367471701, 182886288),
(125, 4, 0, 4367471701, 182886288),
(126, 5, 0, 4367471701, 182886288),
(127, 0, 214, 4367437670, 241886357),
(128, 1, 36, 4367437670, 241886357),
(129, 2, 188, 4367437670, 241886357),
(130, 3, 0, 4367437670, 241886357),
(131, 4, 0, 4367437670, 241886357),
(132, 5, 0, 4367437670, 241886357),
(133, 0, 181, 4367437670, 164524777),
(134, 1, 214, 4367437670, 164524777),
(135, 2, 34, 4367437670, 164524777),
(136, 3, 92, 4367437670, 164524777),
(137, 4, 0, 4367437670, 164524777),
(138, 5, 0, 4367437670, 164524777),
(139, 0, 145, 4367437670, 850623086),
(140, 1, 0, 4367437670, 850623086),
(141, 2, 0, 4367437670, 850623086),
(142, 3, 75, 4367437670, 850623086),
(143, 4, 75, 4367437670, 850623086),
(144, 5, 63, 4367437670, 850623086),
(145, 0, 100, 4367437670, 328153234),
(146, 1, 63, 4367437670, 328153234),
(147, 2, 77, 4367437670, 328153234),
(148, 3, 77, 4367437670, 328153234),
(149, 4, 38, 4367437670, 328153234),
(150, 5, 77, 4367437670, 328153234),
(151, 0, 11, 4367437670, 917046393),
(152, 1, 81, 4367437670, 917046393),
(153, 2, 182, 4367437670, 917046393),
(154, 3, 216, 4367437670, 917046393),
(155, 4, 187, 4367437670, 917046393),
(156, 5, 29, 4367437670, 917046393),
(157, 0, 36, 4367437670, 433152247),
(158, 1, 63, 4367437670, 433152247),
(159, 2, 182, 4367437670, 433152247),
(160, 3, 75, 4367437670, 433152247),
(161, 4, 75, 4367437670, 433152247),
(162, 5, 11, 4367437670, 433152247),
(163, 0, 214, 4367437670, 413236452),
(164, 1, 0, 4367437670, 413236452),
(165, 2, 0, 4367437670, 413236452),
(166, 3, 42, 4367437670, 413236452),
(167, 4, 182, 4367437670, 413236452),
(168, 5, 0, 4367437670, 413236452),
(169, 0, 73, 4367437670, 875919386),
(170, 1, 182, 4367437670, 875919386),
(171, 2, 73, 4367437670, 875919386),
(172, 3, 50, 4367437670, 875919386),
(173, 4, 11, 4367437670, 875919386),
(174, 5, 0, 4367437670, 875919386),
(175, 0, 0, 4367437670, 156578849),
(176, 1, 0, 4367437670, 156578849),
(177, 2, 0, 4367437670, 156578849),
(178, 3, 0, 4367437670, 156578849),
(179, 4, 0, 4367437670, 156578849),
(180, 5, 0, 4367437670, 156578849),
(181, 0, 0, 4367437670, 338679078),
(182, 1, 0, 4367437670, 338679078),
(183, 2, 0, 4367437670, 338679078),
(184, 3, 0, 4367437670, 338679078),
(185, 4, 0, 4367437670, 338679078),
(186, 5, 0, 4367437670, 338679078),
(187, 0, 36, 4367440396, 219868571),
(188, 1, 216, 4367440396, 219868571),
(189, 2, 0, 4367440396, 219868571),
(190, 3, 214, 4367440396, 219868571),
(191, 4, 0, 4367440396, 219868571),
(192, 5, 0, 4367440396, 219868571),
(193, 0, 214, 4367440396, 841084310),
(194, 1, 44, 4367440396, 841084310),
(195, 2, 182, 4367440396, 841084310),
(196, 3, 216, 4367440396, 841084310),
(197, 4, 36, 4367440396, 841084310),
(198, 5, 56, 4367440396, 841084310),
(199, 0, 44, 4367440396, 898671777),
(200, 1, 15, 4367440396, 898671777),
(201, 2, 0, 4367440396, 898671777),
(202, 3, 265, 4367440396, 898671777),
(203, 4, 20, 4367440396, 898671777),
(204, 5, 29, 4367440396, 898671777),
(205, 0, 75, 4367440396, 60363867),
(206, 1, 63, 4367440396, 60363867),
(207, 2, 44, 4367440396, 60363867),
(208, 3, 75, 4367440396, 60363867),
(209, 4, 26, 4367440396, 60363867),
(210, 5, 0, 4367440396, 60363867),
(211, 0, 63, 4367440396, 313331533),
(212, 1, 11, 4367440396, 313331533),
(213, 2, 181, 4367440396, 313331533),
(214, 3, 182, 4367440396, 313331533),
(215, 4, 0, 4367440396, 313331533),
(216, 5, 75, 4367440396, 313331533),
(217, 0, 44, 4367440396, 339729266),
(218, 1, 216, 4367440396, 339729266),
(219, 2, 0, 4367440396, 339729266),
(220, 3, 0, 4367440396, 339729266),
(221, 4, 178, 4367440396, 339729266),
(222, 5, 42, 4367440396, 339729266),
(223, 0, 44, 4367440396, 298485750),
(224, 1, 36, 4367440396, 298485750),
(225, 2, 178, 4367440396, 298485750),
(226, 3, 0, 4367440396, 298485750),
(227, 4, 0, 4367440396, 298485750),
(228, 5, 0, 4367440396, 298485750),
(229, 0, 73, 4367440396, 203166983),
(230, 1, 11, 4367440396, 203166983),
(231, 2, 182, 4367440396, 203166983),
(232, 3, 73, 4367440396, 203166983),
(233, 4, 0, 4367440396, 203166983),
(234, 5, 0, 4367440396, 203166983),
(235, 0, 182, 4367440396, 842516350),
(236, 1, 0, 4367440396, 842516350),
(237, 2, 11, 4367440396, 842516350),
(238, 3, 214, 4367440396, 842516350),
(239, 4, 0, 4367440396, 842516350),
(240, 5, 0, 4367440396, 842516350),
(241, 0, 44, 4367440396, 453808096),
(242, 1, 0, 4367440396, 453808096),
(243, 2, 0, 4367440396, 453808096),
(244, 3, 75, 4367440396, 453808096),
(245, 4, 75, 4367440396, 453808096),
(246, 5, 75, 4367440396, 453808096),
(247, 0, 16, 4367462435, 130659058),
(248, 1, 44, 4367462435, 130659058),
(249, 2, 16, 4367462435, 130659058),
(250, 3, 75, 4367462435, 130659058),
(251, 4, 182, 4367462435, 130659058),
(252, 5, 16, 4367462435, 130659058),
(253, 0, 44, 4367462435, 86001592),
(254, 1, 182, 4367462435, 86001592),
(255, 2, 216, 4367462435, 86001592),
(256, 3, 11, 4367462435, 86001592),
(257, 4, 29, 4367462435, 86001592),
(258, 5, 16, 4367462435, 86001592),
(259, 0, 0, 4367462435, 897224141),
(260, 1, 0, 4367462435, 897224141),
(261, 2, 182, 4367462435, 897224141),
(262, 3, 0, 4367462435, 897224141),
(263, 4, 16, 4367462435, 897224141),
(264, 5, 16, 4367462435, 897224141),
(265, 0, 241, 4367462435, 324560783),
(266, 1, 241, 4367462435, 324560783),
(267, 2, 237, 4367462435, 324560783),
(268, 3, 38, 4367462435, 324560783),
(269, 4, 77, 4367462435, 324560783),
(270, 5, 77, 4367462435, 324560783),
(271, 0, 0, 4367462435, 202495098),
(272, 1, 0, 4367462435, 202495098),
(273, 2, 38, 4367462435, 202495098),
(274, 3, 0, 4367462435, 202495098),
(275, 4, 44, 4367462435, 202495098),
(276, 5, 216, 4367462435, 202495098),
(277, 0, 182, 4367462435, 415150491),
(278, 1, 16, 4367462435, 415150491),
(279, 2, 16, 4367462435, 415150491),
(280, 3, 39, 4367462435, 415150491),
(281, 4, 44, 4367462435, 415150491),
(282, 5, 11, 4367462435, 415150491),
(283, 0, 44, 4367462435, 291964656),
(284, 1, 0, 4367462435, 291964656),
(285, 2, 0, 4367462435, 291964656),
(286, 3, 182, 4367462435, 291964656),
(287, 4, 216, 4367462435, 291964656),
(288, 5, 0, 4367462435, 291964656),
(289, 0, 44, 4367462435, 403686974),
(290, 1, 0, 4367462435, 403686974),
(291, 2, 216, 4367462435, 403686974),
(292, 3, 0, 4367462435, 403686974),
(293, 4, 34, 4367462435, 403686974),
(294, 5, 39, 4367462435, 403686974),
(295, 0, 44, 4367462435, 152400802),
(296, 1, 0, 4367462435, 152400802),
(297, 2, 0, 4367462435, 152400802),
(298, 3, 75, 4367462435, 152400802),
(299, 4, 0, 4367462435, 152400802),
(300, 5, 241, 4367462435, 152400802),
(301, 0, 42, 4367462435, 93967043),
(302, 1, 44, 4367462435, 93967043),
(303, 2, 38, 4367462435, 93967043),
(304, 3, 216, 4367462435, 93967043),
(305, 4, 39, 4367462435, 93967043),
(306, 5, 216, 4367462435, 93967043),
(307, 0, 244, 4367465285, 843514900),
(308, 1, 44, 4367465285, 843514900),
(309, 2, 39, 4367465285, 843514900),
(310, 3, 0, 4367465285, 843514900),
(311, 4, 0, 4367465285, 843514900),
(312, 5, 0, 4367465285, 843514900),
(313, 0, 11, 4367465285, 67367001),
(314, 1, 182, 4367465285, 67367001),
(315, 2, 16, 4367465285, 67367001),
(316, 3, 13, 4367465285, 67367001),
(317, 4, 241, 4367465285, 67367001),
(318, 5, 42, 4367465285, 67367001),
(319, 0, 44, 4367465285, 59668878),
(320, 1, 16, 4367465285, 59668878),
(321, 2, 16, 4367465285, 59668878),
(322, 3, 38, 4367465285, 59668878),
(323, 4, 216, 4367465285, 59668878),
(324, 5, 0, 4367465285, 59668878),
(325, 0, 44, 4367465285, 282835880),
(326, 1, 182, 4367465285, 282835880),
(327, 2, 16, 4367465285, 282835880),
(328, 3, 16, 4367465285, 282835880),
(329, 4, 16, 4367465285, 282835880),
(330, 5, 16, 4367465285, 282835880),
(331, 0, 182, 4367465285, 72127063),
(332, 1, 44, 4367465285, 72127063),
(333, 2, 39, 4367465285, 72127063),
(334, 3, 216, 4367465285, 72127063),
(335, 4, 0, 4367465285, 72127063),
(336, 5, 0, 4367465285, 72127063),
(337, 0, 0, 4367465285, 902258142),
(338, 1, 0, 4367465285, 902258142),
(339, 2, 0, 4367465285, 902258142),
(340, 3, 0, 4367465285, 902258142),
(341, 4, 0, 4367465285, 902258142),
(342, 5, 0, 4367465285, 902258142),
(343, 0, 44, 4367465285, 202023362),
(344, 1, 16, 4367465285, 202023362),
(345, 2, 216, 4367465285, 202023362),
(346, 3, 237, 4367465285, 202023362),
(347, 4, 39, 4367465285, 202023362),
(348, 5, 16, 4367465285, 202023362),
(349, 0, 77, 4367465285, 364439480),
(350, 1, 237, 4367465285, 364439480),
(351, 2, 42, 4367465285, 364439480),
(352, 3, 0, 4367465285, 364439480),
(353, 4, 0, 4367465285, 364439480),
(354, 5, 0, 4367465285, 364439480),
(355, 0, 0, 4367465285, 215646289),
(356, 1, 39, 4367465285, 215646289),
(357, 2, 44, 4367465285, 215646289),
(358, 3, 0, 4367465285, 215646289),
(359, 4, 0, 4367465285, 215646289),
(360, 5, 182, 4367465285, 215646289),
(361, 0, 42, 4367465285, 456130120),
(362, 1, 44, 4367465285, 456130120),
(363, 2, 39, 4367465285, 456130120),
(364, 3, 34, 4367465285, 456130120),
(365, 4, 16, 4367465285, 456130120),
(366, 5, 0, 4367465285, 456130120),
(367, 0, 0, 4367472895, 290676288),
(368, 1, 0, 4367472895, 290676288),
(369, 2, 0, 4367472895, 290676288),
(370, 3, 0, 4367472895, 290676288),
(371, 4, 0, 4367472895, 290676288),
(372, 5, 0, 4367472895, 290676288),
(373, 0, 0, 4367472895, 908585368),
(374, 1, 0, 4367472895, 908585368),
(375, 2, 0, 4367472895, 908585368),
(376, 3, 0, 4367472895, 908585368),
(377, 4, 0, 4367472895, 908585368),
(378, 5, 0, 4367472895, 908585368),
(379, 0, 0, 4367472895, 391654690),
(380, 1, 0, 4367472895, 391654690),
(381, 2, 0, 4367472895, 391654690),
(382, 3, 0, 4367472895, 391654690),
(383, 4, 0, 4367472895, 391654690),
(384, 5, 0, 4367472895, 391654690),
(385, 0, 0, 4367472895, 342827109),
(386, 1, 0, 4367472895, 342827109),
(387, 2, 0, 4367472895, 342827109),
(388, 3, 0, 4367472895, 342827109),
(389, 4, 0, 4367472895, 342827109),
(390, 5, 0, 4367472895, 342827109),
(391, 0, 0, 4367472895, 172097221),
(392, 1, 0, 4367472895, 172097221),
(393, 2, 0, 4367472895, 172097221),
(394, 3, 0, 4367472895, 172097221),
(395, 4, 0, 4367472895, 172097221),
(396, 5, 0, 4367472895, 172097221),
(397, 0, 0, 4367472895, 314796169),
(398, 1, 0, 4367472895, 314796169),
(399, 2, 0, 4367472895, 314796169),
(400, 3, 0, 4367472895, 314796169),
(401, 4, 0, 4367472895, 314796169),
(402, 5, 0, 4367472895, 314796169),
(403, 0, 0, 4367472895, 404950056),
(404, 1, 0, 4367472895, 404950056),
(405, 2, 0, 4367472895, 404950056),
(406, 3, 0, 4367472895, 404950056),
(407, 4, 0, 4367472895, 404950056),
(408, 5, 0, 4367472895, 404950056),
(409, 0, 0, 4367472895, 347667133),
(410, 1, 0, 4367472895, 347667133),
(411, 2, 0, 4367472895, 347667133),
(412, 3, 0, 4367472895, 347667133),
(413, 4, 0, 4367472895, 347667133),
(414, 5, 0, 4367472895, 347667133),
(415, 0, 0, 4367472895, 839663084),
(416, 1, 0, 4367472895, 839663084),
(417, 2, 0, 4367472895, 839663084),
(418, 3, 0, 4367472895, 839663084),
(419, 4, 0, 4367472895, 839663084),
(420, 5, 0, 4367472895, 839663084),
(421, 0, 0, 4367472895, 907476097),
(422, 1, 0, 4367472895, 907476097),
(423, 2, 0, 4367472895, 907476097),
(424, 3, 0, 4367472895, 907476097),
(425, 4, 0, 4367472895, 907476097),
(426, 5, 0, 4367472895, 907476097),
(427, 0, 63, 4367443891, 313640215),
(428, 1, 75, 4367443891, 313640215),
(429, 2, 36, 4367443891, 313640215),
(430, 3, 75, 4367443891, 313640215),
(431, 4, 11, 4367443891, 313640215),
(432, 5, 26, 4367443891, 313640215),
(433, 0, 75, 4367443891, 188118583),
(434, 1, 75, 4367443891, 188118583),
(435, 2, 75, 4367443891, 188118583),
(436, 3, 63, 4367443891, 188118583),
(437, 4, 39, 4367443891, 188118583),
(438, 5, 42, 4367443891, 188118583),
(439, 0, 182, 4367443891, 192154907),
(440, 1, 29, 4367443891, 192154907),
(441, 2, 73, 4367443891, 192154907),
(442, 3, 73, 4367443891, 192154907),
(443, 4, 0, 4367443891, 192154907),
(444, 5, 36, 4367443891, 192154907),
(445, 0, 29, 4367443891, 168286535),
(446, 1, 218, 4367443891, 168286535),
(447, 2, 0, 4367443891, 168286535),
(448, 3, 0, 4367443891, 168286535),
(449, 4, 0, 4367443891, 168286535),
(450, 5, 0, 4367443891, 168286535),
(451, 0, 0, 4367443891, 256567825),
(452, 1, 34, 4367443891, 256567825),
(453, 2, 0, 4367443891, 256567825),
(454, 3, 180, 4367443891, 256567825),
(455, 4, 0, 4367443891, 256567825),
(456, 5, 182, 4367443891, 256567825),
(457, 0, 181, 4367443891, 122009948),
(458, 1, 34, 4367443891, 122009948),
(459, 2, 73, 4367443891, 122009948),
(460, 3, 29, 4367443891, 122009948),
(461, 4, 0, 4367443891, 122009948),
(462, 5, 38, 4367443891, 122009948),
(463, 0, 77, 4367443891, 81693581),
(464, 1, 214, 4367443891, 81693581),
(465, 2, 102, 4367443891, 81693581),
(466, 3, 0, 4367443891, 81693581),
(467, 4, 77, 4367443891, 81693581),
(468, 5, 0, 4367443891, 81693581),
(469, 0, 180, 4367443891, 168935030),
(470, 1, 0, 4367443891, 168935030),
(471, 2, 0, 4367443891, 168935030),
(472, 3, 0, 4367443891, 168935030),
(473, 4, 0, 4367443891, 168935030),
(474, 5, 0, 4367443891, 168935030),
(475, 0, 182, 4367443891, 165945304),
(476, 1, 73, 4367443891, 165945304),
(477, 2, 29, 4367443891, 165945304),
(478, 3, 36, 4367443891, 165945304),
(479, 4, 11, 4367443891, 165945304),
(480, 5, 216, 4367443891, 165945304),
(481, 0, 63, 4367443891, 188592330),
(482, 1, 73, 4367443891, 188592330),
(483, 2, 2, 4367443891, 188592330),
(484, 3, 73, 4367443891, 188592330),
(485, 4, 73, 4367443891, 188592330),
(486, 5, 6, 4367443891, 188592330),
(487, 0, 178, 4367431157, 123787524),
(488, 1, 180, 4367431157, 123787524),
(489, 2, 182, 4367431157, 123787524),
(490, 3, 164, 4367431157, 123787524),
(491, 4, 0, 4367431157, 123787524),
(492, 5, 0, 4367431157, 123787524),
(493, 0, 34, 4367431157, 83867257),
(494, 1, 182, 4367431157, 83867257),
(495, 2, 63, 4367431157, 83867257),
(496, 3, 11, 4367431157, 83867257),
(497, 4, 41, 4367431157, 83867257),
(498, 5, 75, 4367431157, 83867257),
(499, 0, 265, 4367431157, 113331514),
(500, 1, 29, 4367431157, 113331514),
(501, 2, 0, 4367431157, 113331514),
(502, 3, 43, 4367431157, 113331514),
(503, 4, 0, 4367431157, 113331514),
(504, 5, 36, 4367431157, 113331514),
(505, 0, 29, 4367431157, 3916428),
(506, 1, 182, 4367431157, 3916428),
(507, 2, 73, 4367431157, 3916428),
(508, 3, 34, 4367431157, 3916428),
(509, 4, 41, 4367431157, 3916428),
(510, 5, 38, 4367431157, 3916428),
(511, 0, 36, 4367431157, 245373129),
(512, 1, 75, 4367431157, 245373129),
(513, 2, 11, 4367431157, 245373129),
(514, 3, 63, 4367431157, 245373129),
(515, 4, 182, 4367431157, 245373129),
(516, 5, 75, 4367431157, 245373129),
(517, 0, 29, 4367431157, 92028391),
(518, 1, 34, 4367431157, 92028391),
(519, 2, 44, 4367431157, 92028391),
(520, 3, 42, 4367431157, 92028391),
(521, 4, 0, 4367431157, 92028391),
(522, 5, 0, 4367431157, 92028391),
(523, 0, 34, 4367431157, 71869498),
(524, 1, 29, 4367431157, 71869498),
(525, 2, 237, 4367431157, 71869498),
(526, 3, 73, 4367431157, 71869498),
(527, 4, 182, 4367431157, 71869498),
(528, 5, 0, 4367431157, 71869498),
(529, 0, 11, 4367431157, 141690233),
(530, 1, 63, 4367431157, 141690233),
(531, 2, 73, 4367431157, 141690233),
(532, 3, 73, 4367431157, 141690233),
(533, 4, 73, 4367431157, 141690233),
(534, 5, 41, 4367431157, 141690233),
(535, 0, 63, 4367431157, 122049498),
(536, 1, 22, 4367431157, 122049498),
(537, 2, 36, 4367431157, 122049498),
(538, 3, 11, 4367431157, 122049498),
(539, 4, 75, 4367431157, 122049498),
(540, 5, 75, 4367431157, 122049498),
(541, 0, 73, 4367431157, 88719902),
(542, 1, 237, 4367431157, 88719902),
(543, 2, 11, 4367431157, 88719902),
(544, 3, 180, 4367431157, 88719902),
(545, 4, 81, 4367431157, 88719902),
(546, 5, 73, 4367431157, 88719902),
(547, 0, 0, 4367466566, 126174633),
(548, 1, 0, 4367466566, 126174633),
(549, 2, 0, 4367466566, 126174633),
(550, 3, 0, 4367466566, 126174633),
(551, 4, 0, 4367466566, 126174633),
(552, 5, 0, 4367466566, 126174633),
(553, 0, 0, 4367466566, 84390306),
(554, 1, 0, 4367466566, 84390306),
(555, 2, 0, 4367466566, 84390306),
(556, 3, 0, 4367466566, 84390306),
(557, 4, 0, 4367466566, 84390306),
(558, 5, 0, 4367466566, 84390306),
(559, 0, 0, 4367466566, 195353057),
(560, 1, 0, 4367466566, 195353057),
(561, 2, 0, 4367466566, 195353057),
(562, 3, 0, 4367466566, 195353057),
(563, 4, 0, 4367466566, 195353057),
(564, 5, 0, 4367466566, 195353057),
(565, 0, 0, 4367466566, 88611330),
(566, 1, 0, 4367466566, 88611330),
(567, 2, 0, 4367466566, 88611330),
(568, 3, 0, 4367466566, 88611330),
(569, 4, 0, 4367466566, 88611330),
(570, 5, 0, 4367466566, 88611330),
(571, 0, 0, 4367466566, 97597779),
(572, 1, 0, 4367466566, 97597779),
(573, 2, 0, 4367466566, 97597779),
(574, 3, 0, 4367466566, 97597779),
(575, 4, 0, 4367466566, 97597779),
(576, 5, 0, 4367466566, 97597779),
(577, 0, 0, 4367466566, 84021752),
(578, 1, 0, 4367466566, 84021752),
(579, 2, 0, 4367466566, 84021752),
(580, 3, 0, 4367466566, 84021752),
(581, 4, 0, 4367466566, 84021752),
(582, 5, 0, 4367466566, 84021752),
(583, 0, 0, 4367466566, 151433883),
(584, 1, 0, 4367466566, 151433883),
(585, 2, 0, 4367466566, 151433883),
(586, 3, 0, 4367466566, 151433883),
(587, 4, 0, 4367466566, 151433883),
(588, 5, 0, 4367466566, 151433883),
(589, 0, 0, 4367466566, 133167741),
(590, 1, 0, 4367466566, 133167741),
(591, 2, 0, 4367466566, 133167741),
(592, 3, 0, 4367466566, 133167741),
(593, 4, 0, 4367466566, 133167741),
(594, 5, 0, 4367466566, 133167741),
(595, 0, 0, 4367466566, 179284293),
(596, 1, 0, 4367466566, 179284293),
(597, 2, 0, 4367466566, 179284293),
(598, 3, 0, 4367466566, 179284293),
(599, 4, 0, 4367466566, 179284293),
(600, 5, 0, 4367466566, 179284293),
(601, 0, 0, 4367466566, 134271697),
(602, 1, 0, 4367466566, 134271697),
(603, 2, 0, 4367466566, 134271697),
(604, 3, 0, 4367466566, 134271697),
(605, 4, 0, 4367466566, 134271697),
(606, 5, 0, 4367466566, 134271697),
(607, 0, 16, 4367463455, 173971950),
(608, 1, 216, 4367463455, 173971950),
(609, 2, 44, 4367463455, 173971950),
(610, 3, 182, 4367463455, 173971950),
(611, 4, 0, 4367463455, 173971950),
(612, 5, 0, 4367463455, 173971950),
(613, 0, 44, 4367463455, 94923783),
(614, 1, 216, 4367463455, 94923783),
(615, 2, 42, 4367463455, 94923783),
(616, 3, 0, 4367463455, 94923783),
(617, 4, 216, 4367463455, 94923783),
(618, 5, 0, 4367463455, 94923783),
(619, 0, 44, 4367463455, 97975407),
(620, 1, 39, 4367463455, 97975407),
(621, 2, 182, 4367463455, 97975407),
(622, 3, 0, 4367463455, 97975407),
(623, 4, 0, 4367463455, 97975407),
(624, 5, 0, 4367463455, 97975407),
(625, 0, 20, 4367463455, 197574429),
(626, 1, 42, 4367463455, 197574429),
(627, 2, 15, 4367463455, 197574429),
(628, 3, 237, 4367463455, 197574429),
(629, 4, 15, 4367463455, 197574429),
(630, 5, 16, 4367463455, 197574429),
(631, 0, 237, 4367463455, 101779337),
(632, 1, 39, 4367463455, 101779337),
(633, 2, 216, 4367463455, 101779337),
(634, 3, 216, 4367463455, 101779337),
(635, 4, 44, 4367463455, 101779337),
(636, 5, 43, 4367463455, 101779337),
(637, 0, 218, 4367463455, 208533206),
(638, 1, 44, 4367463455, 208533206),
(639, 2, 38, 4367463455, 208533206),
(640, 3, 0, 4367463455, 208533206),
(641, 4, 216, 4367463455, 208533206),
(642, 5, 39, 4367463455, 208533206),
(643, 0, 44, 4367463455, 118375042),
(644, 1, 182, 4367463455, 118375042),
(645, 2, 16, 4367463455, 118375042),
(646, 3, 16, 4367463455, 118375042),
(647, 4, 16, 4367463455, 118375042),
(648, 5, 16, 4367463455, 118375042),
(649, 0, 182, 4367463455, 147220610),
(650, 1, 216, 4367463455, 147220610),
(651, 2, 0, 4367463455, 147220610),
(652, 3, 216, 4367463455, 147220610),
(653, 4, 216, 4367463455, 147220610),
(654, 5, 44, 4367463455, 147220610),
(655, 0, 39, 4367463455, 111015380),
(656, 1, 44, 4367463455, 111015380),
(657, 2, 38, 4367463455, 111015380),
(658, 3, 0, 4367463455, 111015380),
(659, 4, 0, 4367463455, 111015380),
(660, 5, 0, 4367463455, 111015380),
(661, 0, 16, 4367463455, 170913702),
(662, 1, 241, 4367463455, 170913702),
(663, 2, 0, 4367463455, 170913702),
(664, 3, 15, 4367463455, 170913702),
(665, 4, 20, 4367463455, 170913702),
(666, 5, 15, 4367463455, 170913702),
(667, 0, 44, 4367450262, 419996957),
(668, 1, 237, 4367450262, 419996957),
(669, 2, 0, 4367450262, 419996957),
(670, 3, 216, 4367450262, 419996957),
(671, 4, 38, 4367450262, 419996957),
(672, 5, 216, 4367450262, 419996957),
(673, 0, 34, 4367450262, 201076382),
(674, 1, 216, 4367450262, 201076382),
(675, 2, 39, 4367450262, 201076382),
(676, 3, 44, 4367450262, 201076382),
(677, 4, 0, 4367450262, 201076382),
(678, 5, 0, 4367450262, 201076382),
(679, 0, 39, 4367450262, 922993404),
(680, 1, 237, 4367450262, 922993404),
(681, 2, 15, 4367450262, 922993404),
(682, 3, 36, 4367450262, 922993404),
(683, 4, 15, 4367450262, 922993404),
(684, 5, 241, 4367450262, 922993404),
(685, 0, 11, 4367450262, 124892657),
(686, 1, 182, 4367450262, 124892657),
(687, 2, 216, 4367450262, 124892657),
(688, 3, 44, 4367450262, 124892657),
(689, 4, 34, 4367450262, 124892657),
(690, 5, 0, 4367450262, 124892657),
(691, 0, 11, 4367450262, 324683793),
(692, 1, 44, 4367450262, 324683793),
(693, 2, 216, 4367450262, 324683793),
(694, 3, 39, 4367450262, 324683793),
(695, 4, 182, 4367450262, 324683793),
(696, 5, 0, 4367450262, 324683793),
(697, 0, 20, 4367450262, 245787317),
(698, 1, 0, 4367450262, 245787317),
(699, 2, 44, 4367450262, 245787317),
(700, 3, 16, 4367450262, 245787317),
(701, 4, 0, 4367450262, 245787317),
(702, 5, 16, 4367450262, 245787317),
(703, 0, 15, 4367450262, 124536605),
(704, 1, 15, 4367450262, 124536605),
(705, 2, 15, 4367450262, 124536605),
(706, 3, 15, 4367450262, 124536605),
(707, 4, 0, 4367450262, 124536605),
(708, 5, 0, 4367450262, 124536605),
(709, 0, 44, 4367450262, 76400933),
(710, 1, 39, 4367450262, 76400933),
(711, 2, 182, 4367450262, 76400933),
(712, 3, 11, 4367450262, 76400933),
(713, 4, 0, 4367450262, 76400933),
(714, 5, 0, 4367450262, 76400933),
(715, 0, 182, 4367450262, 172715549),
(716, 1, 44, 4367450262, 172715549),
(717, 2, 237, 4367450262, 172715549),
(718, 3, 216, 4367450262, 172715549),
(719, 4, 216, 4367450262, 172715549),
(720, 5, 0, 4367450262, 172715549),
(721, 0, 44, 4367450262, 207472406),
(722, 1, 0, 4367450262, 207472406),
(723, 2, 38, 4367450262, 207472406),
(724, 3, 0, 4367450262, 207472406),
(725, 4, 182, 4367450262, 207472406),
(726, 5, 0, 4367450262, 207472406),
(727, 0, 44, 4367414622, 383896707),
(728, 1, 34, 4367414622, 383896707),
(729, 2, 180, 4367414622, 383896707),
(730, 3, 0, 4367414622, 383896707),
(731, 4, 0, 4367414622, 383896707),
(732, 5, 0, 4367414622, 383896707),
(733, 0, 11, 4367414622, 191381091),
(734, 1, 75, 4367414622, 191381091),
(735, 2, 182, 4367414622, 191381091),
(736, 3, 172, 4367414622, 191381091),
(737, 4, 63, 4367414622, 191381091),
(738, 5, 75, 4367414622, 191381091),
(739, 0, 265, 4367414622, 145014956),
(740, 1, 63, 4367414622, 145014956),
(741, 2, 75, 4367414622, 145014956),
(742, 3, 36, 4367414622, 145014956),
(743, 4, 75, 4367414622, 145014956),
(744, 5, 0, 4367414622, 145014956),
(745, 0, 178, 4367414622, 289979990),
(746, 1, 81, 4367414622, 289979990),
(747, 2, 75, 4367414622, 289979990),
(748, 3, 63, 4367414622, 289979990),
(749, 4, 63, 4367414622, 289979990),
(750, 5, 117, 4367414622, 289979990),
(751, 0, 92, 4367414622, 260193276),
(752, 1, 40, 4367414622, 260193276),
(753, 2, 180, 4367414622, 260193276),
(754, 3, 42, 4367414622, 260193276),
(755, 4, 265, 4367414622, 260193276),
(756, 5, 240, 4367414622, 260193276),
(757, 0, 75, 4367414622, 401689764),
(758, 1, 63, 4367414622, 401689764),
(759, 2, 11, 4367414622, 401689764),
(760, 3, 75, 4367414622, 401689764),
(761, 4, 10, 4367414622, 401689764),
(762, 5, 182, 4367414622, 401689764),
(763, 0, 29, 4367414622, 121427456),
(764, 1, 42, 4367414622, 121427456),
(765, 2, 34, 4367414622, 121427456),
(766, 3, 0, 4367414622, 121427456),
(767, 4, 0, 4367414622, 121427456),
(768, 5, 0, 4367414622, 121427456),
(769, 0, 36, 4367414622, 867500427),
(770, 1, 42, 4367414622, 867500427),
(771, 2, 38, 4367414622, 867500427),
(772, 3, 180, 4367414622, 867500427),
(773, 4, 77, 4367414622, 867500427),
(774, 5, 39, 4367414622, 867500427),
(775, 0, 77, 4367414622, 845827351),
(776, 1, 77, 4367414622, 845827351),
(777, 2, 29, 4367414622, 845827351),
(778, 3, 25, 4367414622, 845827351),
(779, 4, 39, 4367414622, 845827351),
(780, 5, 265, 4367414622, 845827351),
(781, 0, 261, 4367414622, 64124212),
(782, 1, 216, 4367414622, 64124212),
(783, 2, 216, 4367414622, 64124212),
(784, 3, 180, 4367414622, 64124212),
(785, 4, 0, 4367414622, 64124212),
(786, 5, 182, 4367414622, 64124212),
(787, 0, 154, 4367402382, 0),
(788, 1, 36, 4367402382, 0),
(789, 2, 168, 4367402382, 0),
(790, 3, 73, 4367402382, 0),
(791, 4, 50, 4367402382, 0),
(792, 5, 182, 4367402382, 0),
(793, 0, 11, 4367454597, 437823134),
(794, 1, 73, 4367454597, 437823134),
(795, 2, 39, 4367454597, 437823134),
(796, 3, 182, 4367454597, 437823134),
(797, 4, 0, 4367454597, 437823134),
(798, 5, 36, 4367454597, 437823134),
(799, 0, 29, 4367454597, 899073269),
(800, 1, 44, 4367454597, 899073269),
(801, 2, 237, 4367454597, 899073269),
(802, 3, 216, 4367454597, 899073269),
(803, 4, 16, 4367454597, 899073269),
(804, 5, 0, 4367454597, 899073269),
(805, 0, 11, 4367454597, 264817668),
(806, 1, 182, 4367454597, 264817668),
(807, 2, 0, 4367454597, 264817668),
(808, 3, 75, 4367454597, 264817668),
(809, 4, 36, 4367454597, 264817668),
(810, 5, 0, 4367454597, 264817668),
(811, 0, 34, 4367454597, 196128067),
(812, 1, 77, 4367454597, 196128067),
(813, 2, 77, 4367454597, 196128067),
(814, 3, 0, 4367454597, 196128067),
(815, 4, 0, 4367454597, 196128067),
(816, 5, 0, 4367454597, 196128067),
(817, 0, 181, 4367454597, 175002436),
(818, 1, 182, 4367454597, 175002436),
(819, 2, 29, 4367454597, 175002436),
(820, 3, 34, 4367454597, 175002436),
(821, 4, 244, 4367454597, 175002436),
(822, 5, 16, 4367454597, 175002436),
(823, 0, 44, 4367454597, 168206774),
(824, 1, 39, 4367454597, 168206774),
(825, 2, 29, 4367454597, 168206774),
(826, 3, 0, 4367454597, 168206774),
(827, 4, 188, 4367454597, 168206774),
(828, 5, 0, 4367454597, 168206774),
(829, 0, 0, 4367454597, 429005121),
(830, 1, 0, 4367454597, 429005121),
(831, 2, 0, 4367454597, 429005121),
(832, 3, 0, 4367454597, 429005121),
(833, 4, 0, 4367454597, 429005121),
(834, 5, 0, 4367454597, 429005121),
(835, 0, 0, 4367454597, 243943036),
(836, 1, 0, 4367454597, 243943036),
(837, 2, 0, 4367454597, 243943036),
(838, 3, 0, 4367454597, 243943036),
(839, 4, 0, 4367454597, 243943036),
(840, 5, 0, 4367454597, 243943036),
(841, 0, 0, 4367454597, 199790745),
(842, 1, 0, 4367454597, 199790745),
(843, 2, 0, 4367454597, 199790745),
(844, 3, 0, 4367454597, 199790745),
(845, 4, 0, 4367454597, 199790745),
(846, 5, 0, 4367454597, 199790745),
(847, 0, 0, 4367454597, 332818045),
(848, 1, 0, 4367454597, 332818045),
(849, 2, 0, 4367454597, 332818045),
(850, 3, 0, 4367454597, 332818045),
(851, 4, 0, 4367454597, 332818045),
(852, 5, 0, 4367454597, 332818045),
(853, 0, 182, 4367485065, 884681441),
(854, 1, 44, 4367485065, 884681441),
(855, 2, 11, 4367485065, 884681441),
(856, 3, 237, 4367485065, 884681441),
(857, 4, 0, 4367485065, 884681441),
(858, 5, 0, 4367485065, 884681441),
(859, 0, 237, 4367485065, 332561278),
(860, 1, 16, 4367485065, 332561278),
(861, 2, 16, 4367485065, 332561278),
(862, 3, 15, 4367485065, 332561278),
(863, 4, 15, 4367485065, 332561278),
(864, 5, 15, 4367485065, 332561278),
(865, 0, 0, 4367482273, 200428387),
(866, 1, 0, 4367482273, 200428387),
(867, 2, 0, 4367482273, 200428387),
(868, 3, 0, 4367482273, 200428387),
(869, 4, 0, 4367482273, 200428387),
(870, 5, 0, 4367482273, 200428387),
(871, 0, 0, 4367482273, 158525695),
(872, 1, 0, 4367482273, 158525695),
(873, 2, 0, 4367482273, 158525695),
(874, 3, 0, 4367482273, 158525695),
(875, 4, 0, 4367482273, 158525695),
(876, 5, 0, 4367482273, 158525695),
(877, 0, 0, 4367482273, 163356386),
(878, 1, 0, 4367482273, 163356386),
(879, 2, 0, 4367482273, 163356386),
(880, 3, 0, 4367482273, 163356386),
(881, 4, 0, 4367482273, 163356386),
(882, 5, 0, 4367482273, 163356386),
(883, 0, 0, 4367482273, 384724867),
(884, 1, 0, 4367482273, 384724867),
(885, 2, 0, 4367482273, 384724867),
(886, 3, 0, 4367482273, 384724867),
(887, 4, 0, 4367482273, 384724867),
(888, 5, 0, 4367482273, 384724867),
(889, 0, 0, 4367482273, 150938521),
(890, 1, 0, 4367482273, 150938521),
(891, 2, 0, 4367482273, 150938521),
(892, 3, 0, 4367482273, 150938521),
(893, 4, 0, 4367482273, 150938521),
(894, 5, 0, 4367482273, 150938521),
(895, 0, 0, 4367482273, 385647834),
(896, 1, 0, 4367482273, 385647834),
(897, 2, 0, 4367482273, 385647834),
(898, 3, 0, 4367482273, 385647834),
(899, 4, 0, 4367482273, 385647834),
(900, 5, 0, 4367482273, 385647834),
(901, 0, 0, 4367482273, 223650435),
(902, 1, 0, 4367482273, 223650435),
(903, 2, 0, 4367482273, 223650435),
(904, 3, 0, 4367482273, 223650435),
(905, 4, 0, 4367482273, 223650435),
(906, 5, 0, 4367482273, 223650435),
(907, 0, 0, 4367482273, 154052658),
(908, 1, 0, 4367482273, 154052658),
(909, 2, 0, 4367482273, 154052658),
(910, 3, 0, 4367482273, 154052658),
(911, 4, 0, 4367482273, 154052658),
(912, 5, 0, 4367482273, 154052658),
(913, 0, 0, 4367482273, 41080683),
(914, 1, 0, 4367482273, 41080683),
(915, 2, 0, 4367482273, 41080683),
(916, 3, 0, 4367482273, 41080683),
(917, 4, 0, 4367482273, 41080683),
(918, 5, 0, 4367482273, 41080683),
(919, 0, 0, 4367482273, 203947582),
(920, 1, 0, 4367482273, 203947582),
(921, 2, 0, 4367482273, 203947582),
(922, 3, 0, 4367482273, 203947582),
(923, 4, 0, 4367482273, 203947582),
(924, 5, 0, 4367482273, 203947582);

-- --------------------------------------------------------

--
-- Table structure for table `matches_match`
--

CREATE TABLE `matches_match` (
  `match_id` bigint(20) NOT NULL,
  `spectator` int(11) NOT NULL,
  `series_type` int(11) NOT NULL,
  `r_wins` int(11) NOT NULL,
  `d_wins` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `roshan_respawn_timer` int(11) NOT NULL,
  `r_score` int(11) NOT NULL,
  `d_score` int(11) NOT NULL,
  `r_tower_state` int(11) NOT NULL,
  `d_tower_state` int(11) NOT NULL,
  `r_barracks_state` int(11) NOT NULL,
  `d_barracks_state` int(11) NOT NULL,
  `is_over` int(11) NOT NULL,
  `winner` int(11) NOT NULL,
  `date` datetime(6) NOT NULL,
  `d_team_id` int(11) NOT NULL,
  `r_team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_match`
--

INSERT INTO `matches_match` (`match_id`, `spectator`, `series_type`, `r_wins`, `d_wins`, `duration`, `roshan_respawn_timer`, `r_score`, `d_score`, `r_tower_state`, `d_tower_state`, `r_barracks_state`, `d_barracks_state`, `is_over`, `winner`, `date`, `d_team_id`, `r_team_id`) VALUES
(4364833202, 1, 0, 0, 0, 1851, 0, 27, 34, 1982, 1920, 63, 48, 0, 0, '2019-01-26 23:11:51.891194', 6709757, 6712646),
(4364846246, 16, 1, 1, 0, 1556, 0, 25, 26, 1831, 1920, 63, 48, 0, 0, '2019-01-26 23:19:13.879685', 6325327, 5057280),
(4364887521, 0, 0, 0, 0, 787, 0, 5, 3, 2047, 2047, 63, 63, 0, 0, '2019-01-26 23:27:56.551418', 4997618, 4997576),
(4367402382, 0, 0, 0, 0, 2528, 56, 47, 37, 1828, 1796, 63, 51, 0, 0, '2019-01-27 17:33:04.426590', 4997606, 4997576),
(4367414622, 0, 1, 0, 0, 844, 633, 18, 10, 2047, 2022, 63, 63, 0, 0, '2019-01-27 17:24:59.036637', 6569401, 6660118),
(4367431157, 1441, 1, 0, 0, 736, 0, 12, 8, 1983, 2046, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 59, 6711290),
(4367437670, 1, 0, 0, 0, 889, 0, 31, 11, 2047, 2036, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6644384, 6542010),
(4367440396, 1, 0, 0, 0, 522, 0, 9, 4, 2047, 2046, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6209142, 4590548),
(4367443891, 0, 0, 0, 0, 700, 0, 7, 13, 2046, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 3756152, 5403729),
(4367450262, 2, 0, 0, 0, 137, 0, 0, 1, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6720168, 6622802),
(4367454597, 67, 0, 0, 0, 254, 0, 6, 2, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6684039, 6614476),
(4367462435, 2, 0, 0, 0, 183, 0, 2, 0, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 1157724, 2520648),
(4367463455, 86, 0, 0, 0, 0, 0, 0, 0, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6405832, 5055770),
(4367465285, 0, 0, 0, 0, 0, 0, 0, 0, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6567899, 2412067),
(4367466566, 107, 0, 0, 0, 0, 0, 0, 0, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 4299978, 5679840),
(4367471701, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-01-27 17:33:04.426590', 2901563, 1695199),
(4367472895, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-01-27 17:33:04.426590', 5262892, 6352000),
(4367482273, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-01-27 17:33:04.426590', 3150192, 5326096),
(4367485065, 0, 0, 0, 0, 11, 0, 0, 0, 2047, 2047, 63, 63, 0, 0, '2019-01-27 17:33:04.426590', 6173908, 6186178);

-- --------------------------------------------------------

--
-- Table structure for table `matches_pick`
--

CREATE TABLE `matches_pick` (
  `id` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `slot` int(11) NOT NULL,
  `hero_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_pick`
--

INSERT INTO `matches_pick` (`id`, `side`, `slot`, `hero_id`, `match_id`) VALUES
(1, 1, 0, 2, 4364833202),
(2, 1, 1, 99, 4364833202),
(3, 1, 2, 121, 4364833202),
(4, 1, 3, 12, 4364833202),
(5, 1, 4, 95, 4364833202),
(6, 1, 5, 35, 4364833202),
(7, 1, 0, 100, 4364846246),
(8, 1, 1, 96, 4364846246),
(9, 1, 2, 38, 4364846246),
(10, 1, 3, 55, 4364846246),
(11, 1, 4, 59, 4364846246),
(12, 1, 5, 23, 4364846246),
(13, 1, 0, 31, 4367471701),
(14, 1, 1, 38, 4367471701),
(15, 1, 0, 2, 4367437670),
(16, 1, 1, 68, 4367437670),
(17, 1, 2, 78, 4367437670),
(18, 1, 3, 76, 4367437670),
(19, 1, 4, 70, 4367437670),
(20, 1, 5, 46, 4367437670),
(21, 1, 0, 19, 4367440396),
(22, 1, 1, 109, 4367440396),
(23, 1, 2, 100, 4367440396),
(24, 1, 3, 44, 4367440396),
(25, 1, 4, 95, 4367440396),
(26, 1, 5, 76, 4367440396),
(27, 1, 0, 85, 4367462435),
(28, 1, 1, 121, 4367462435),
(29, 1, 2, 31, 4367462435),
(30, 1, 3, 29, 4367462435),
(31, 1, 4, 19, 4367462435),
(32, 1, 0, 61, 4367465285),
(33, 1, 1, 97, 4367465285),
(34, 1, 2, 44, 4367465285),
(35, 1, 3, 94, 4367465285),
(36, 1, 4, 110, 4367465285),
(37, 1, 0, 26, 4367472895),
(38, 1, 0, 78, 4367443891),
(39, 1, 1, 31, 4367443891),
(40, 1, 2, 19, 4367443891),
(41, 1, 3, 44, 4367443891),
(42, 1, 4, 34, 4367443891),
(43, 1, 5, 114, 4367443891),
(44, 1, 0, 91, 4367431157),
(45, 1, 1, 90, 4367431157),
(46, 1, 2, 31, 4367431157),
(47, 1, 3, 76, 4367431157),
(48, 1, 4, 69, 4367431157),
(49, 1, 5, 10, 4367431157),
(50, 1, 0, 91, 4367466566),
(51, 1, 1, 107, 4367466566),
(52, 1, 2, 94, 4367466566),
(53, 1, 3, 121, 4367466566),
(54, 1, 4, 59, 4367466566),
(55, 1, 0, 97, 4367463455),
(56, 1, 1, 19, 4367463455),
(57, 1, 2, 121, 4367463455),
(58, 1, 3, 41, 4367463455),
(59, 1, 0, 38, 4367450262),
(60, 1, 1, 19, 4367450262),
(61, 1, 2, 28, 4367450262),
(62, 1, 3, 18, 4367450262),
(63, 1, 4, 109, 4367450262),
(64, 1, 5, 76, 4367450262),
(65, 1, 0, 31, 4367414622),
(66, 1, 1, 19, 4367414622),
(67, 1, 2, 38, 4367414622),
(68, 1, 3, 69, 4367414622),
(69, 1, 4, 29, 4367414622),
(70, 1, 5, 59, 4367414622),
(71, 1, 0, 121, 4367454597),
(72, 1, 1, 78, 4367454597),
(73, 1, 2, 31, 4367454597),
(74, 1, 3, 41, 4367454597),
(75, 1, 4, 19, 4367454597),
(76, 1, 5, 10, 4367454597),
(77, 1, 2, 19, 4367471701),
(78, 1, 5, 101, 4367462435),
(79, 1, 1, 100, 4367472895),
(80, 1, 2, 42, 4367472895),
(81, 1, 3, 93, 4367471701),
(82, 0, 0, 121, 4367471701),
(83, 0, 1, 85, 4367471701),
(84, 0, 2, 94, 4367471701),
(85, 0, 3, 55, 4367471701),
(86, 1, 0, 18, 4367471701),
(87, 1, 1, 30, 4367471701),
(88, 1, 2, 48, 4367471701),
(89, 1, 3, 108, 4367471701),
(90, 0, 0, 38, 4367462435),
(91, 0, 1, 97, 4367462435),
(92, 0, 2, 111, 4367462435),
(93, 0, 3, 8, 4367462435),
(94, 0, 4, 86, 4367462435),
(95, 1, 0, 5, 4367462435),
(96, 1, 1, 109, 4367462435),
(97, 1, 2, 84, 4367462435),
(98, 1, 3, 69, 4367462435),
(99, 1, 4, 6, 4367462435),
(100, 0, 0, 38, 4367437670),
(101, 0, 1, 107, 4367437670),
(102, 0, 2, 119, 4367437670),
(103, 0, 3, 1, 4367437670),
(104, 0, 4, 13, 4367437670),
(105, 1, 0, 100, 4367437670),
(106, 1, 1, 69, 4367437670),
(107, 1, 2, 31, 4367437670),
(108, 1, 3, 93, 4367437670),
(109, 1, 4, 39, 4367437670),
(110, 0, 0, 121, 4367440396),
(111, 0, 1, 96, 4367440396),
(112, 0, 2, 114, 4367440396),
(113, 0, 3, 26, 4367440396),
(114, 0, 4, 94, 4367440396),
(115, 1, 0, 31, 4367440396),
(116, 1, 1, 28, 4367440396),
(117, 1, 2, 91, 4367440396),
(118, 1, 3, 48, 4367440396),
(119, 1, 4, 23, 4367440396),
(120, 0, 0, 31, 4367465285),
(121, 0, 1, 8, 4367465285),
(122, 0, 2, 87, 4367465285),
(123, 0, 3, 96, 4367465285),
(124, 0, 4, 23, 4367465285),
(125, 1, 0, 90, 4367465285),
(126, 1, 1, 29, 4367465285),
(127, 1, 2, 26, 4367465285),
(128, 1, 3, 74, 4367465285),
(129, 1, 4, 93, 4367465285),
(130, 0, 0, 103, 4367472895),
(131, 0, 1, 99, 4367472895),
(132, 0, 2, 41, 4367472895),
(133, 1, 0, 31, 4367472895),
(134, 1, 1, 107, 4367472895),
(135, 1, 2, 85, 4367472895),
(136, 0, 0, 19, 4367431157),
(137, 0, 1, 50, 4367431157),
(138, 0, 2, 55, 4367431157),
(139, 0, 3, 44, 4367431157),
(140, 0, 4, 106, 4367431157),
(141, 1, 0, 107, 4367431157),
(142, 1, 1, 64, 4367431157),
(143, 1, 2, 23, 4367431157),
(144, 1, 3, 29, 4367431157),
(145, 1, 4, 109, 4367431157),
(146, 0, 0, 100, 4367466566),
(147, 0, 1, 95, 4367466566),
(148, 0, 2, 76, 4367466566),
(149, 0, 3, 86, 4367466566),
(150, 0, 4, 96, 4367466566),
(151, 1, 0, 31, 4367466566),
(152, 1, 1, 18, 4367466566),
(153, 1, 2, 98, 4367466566),
(154, 1, 3, 25, 4367466566),
(155, 1, 4, 120, 4367466566),
(156, 0, 0, 31, 4367463455),
(157, 0, 1, 96, 4367463455),
(158, 0, 2, 90, 4367463455),
(159, 0, 3, 8, 4367463455),
(160, 0, 4, 34, 4367463455),
(161, 1, 0, 111, 4367463455),
(162, 1, 1, 76, 4367463455),
(163, 1, 2, 18, 4367463455),
(164, 1, 3, 114, 4367463455),
(165, 1, 4, 112, 4367463455),
(166, 0, 0, 18, 4367443891),
(167, 0, 1, 111, 4367443891),
(168, 0, 2, 96, 4367443891),
(169, 0, 3, 95, 4367443891),
(170, 0, 4, 35, 4367443891),
(171, 1, 0, 100, 4367443891),
(172, 1, 1, 97, 4367443891),
(173, 1, 2, 59, 4367443891),
(174, 1, 3, 50, 4367443891),
(175, 1, 4, 76, 4367443891),
(176, 0, 0, 31, 4367450262),
(177, 0, 1, 8, 4367450262),
(178, 0, 2, 96, 4367450262),
(179, 0, 3, 64, 4367450262),
(180, 0, 4, 74, 4367450262),
(181, 1, 0, 69, 4367450262),
(182, 1, 1, 121, 4367450262),
(183, 1, 2, 85, 4367450262),
(184, 1, 3, 12, 4367450262),
(185, 1, 4, 101, 4367450262),
(186, 0, 0, 31, 4367482273),
(187, 0, 1, 29, 4367482273),
(188, 0, 2, 97, 4367482273),
(189, 1, 0, 100, 4367482273),
(190, 1, 1, 8, 4367482273),
(191, 1, 2, 78, 4367482273),
(192, 0, 0, 100, 4367454597),
(193, 0, 1, 93, 4367454597),
(194, 0, 2, 58, 4367454597),
(195, 0, 3, 23, 4367454597),
(196, 0, 4, 50, 4367454597),
(197, 1, 0, 90, 4367454597),
(198, 1, 1, 16, 4367454597),
(199, 1, 2, 38, 4367454597),
(200, 1, 3, 22, 4367454597),
(201, 1, 4, 1, 4367454597);

-- --------------------------------------------------------

--
-- Table structure for table `matches_player`
--

CREATE TABLE `matches_player` (
  `player_id` bigint(20) NOT NULL,
  `player_name` varchar(100) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_player`
--

INSERT INTO `matches_player` (`player_id`, `player_name`, `team_id`) VALUES
(0, 'NULL', 0),
(3916428, '`,??q', 6711290),
(38131454, 'bakugo', 6325327),
(41080683, '??????_??????_???', 3150192),
(47150177, 'maxemoe', 6325327),
(51686777, '?????', 5098006),
(59668878, 'Chocola', 2412067),
(60363867, '.', 4590548),
(64124212, 'SonicZoom', 6569401),
(67367001, 'TerlKabot', 2412067),
(71869498, '?k?q', 59),
(72127063, '???? ???????? ??????', 2412067),
(75678907, 'est! est!! est!!!', 5057280),
(76400933, 'Scred4stl.Spotlight', 6720168),
(81693581, 'gand.o[n]e (Vovomas)', 3756152),
(83867257, '@?i?q', 6711290),
(84021752, '103%', 4299978),
(84390306, 'SG.Luci', 5679840),
(86001592, 'eXplore', 2520648),
(88611330, 'SG.mini', 5679840),
(88719902, ' ???q', 59),
(92028391, ' r?q', 59),
(93967043, 'Ragnar', 1157724),
(94923783, '????q', 5055770),
(97597779, 'SG.MahhxD', 5679840),
(97975407, '???$r', 5055770),
(98300172, 'Rosé <3', 1695199),
(101779337, '`??q', 5055770),
(102689086, 'Yosemite', 1695199),
(105428201, 'twitch.tv/motinhacsgo', 6712646),
(111015380, 'RbAPPE# @InsaneGaming', 6405832),
(113331514, 'pC??q', 6711290),
(114882978, 'DemiLight ?', 5098006),
(116139178, 'I Don\'t Care', 1695199),
(116307658, 'merman', 6325327),
(118375042, 'ç', 6405832),
(119984038, 'turtl3n3ck', 5057280),
(121427456, 'CaptainUptempo', 6569401),
(122009948, 'BlackDrago', 3756152),
(122049498, '`?q?q', 59),
(122534469, 'HydroSK', 6325327),
(123787524, '??e?q', 6711290),
(124536605, 'PTS distribution', 6720168),
(124892657, '~', 6622802),
(126174633, 'SG.Sexyfat', 5679840),
(127566393, '1', 1695199),
(129105279, 'UIC.SammY-', 5057280),
(130659058, '123', 2520648),
(133167741, 'Mr.GyO?', 4299978),
(133355515, 'Clint Eastwood ?', 6712646),
(134271697, 'BOOM!!', 4299978),
(136642011, '???????? ?5?????????', 6709757),
(141690233, '7m?q', 59),
(145014956, 'Ruling', 6660118),
(147220610, 'Africa', 6405832),
(150938521, '?????', 5326096),
(151433883, 'Mr.Stephanie', 4299978),
(152400802, 'SOSI JOPU', 1157724),
(154052658, '?????? ? ????', 3150192),
(155272593, 'wintercherry', 6709757),
(156173917, 'Grand Mistress Meo', 6325327),
(156578849, 'Dilaumoro', 6644384),
(156977406, '??????????', 5098006),
(158525695, '.', 5326096),
(163356386, 'Truth drowns in wine', 5326096),
(163580946, '\'Pk ?', 5057280),
(164524777, 'The end.', 6542010),
(165945304, '?????Ø§????', 3756152),
(167699609, 'ShoNe', 1695199),
(168206774, 'TheFallenLegend[ACE]', 6684039),
(168286535, '02', 5403729),
(168935030, 'Croha', 3756152),
(170913702, 'Shinku', 6405832),
(172097221, 'Aemulus', 6352000),
(172715549, 'Vlad130301', 6720168),
(173971950, '????q', 5055770),
(175002436, '4lay', 6614476),
(177681222, 'Mr.Rafa', 2901563),
(179284293, 'Guré Léiman', 4299978),
(179625075, 'Cancer_17 ????????douyu5744646', 5057280),
(182886288, 'Fibroni', 2901563),
(185822577, '--TaTaS--', 6709757),
(188118583, 'bambi', 5403729),
(188592330, '?????-??????', 3756152),
(191381091, '?????? ?? ??????????', 6660118),
(192154907, 'sq1', 5403729),
(195353057, 'SG.Golem', 5679840),
(196128067, '~ Melodick', 6614476),
(196863261, 'Take it boy', 2901563),
(197574429, ' 8?q', 5055770),
(197633557, '???? ??? ? ???????)', 6434963),
(199790745, 'BLink', 6684039),
(200428387, '????? ?????', 5326096),
(201076382, 'BorisTheBlade', 6622802),
(202023362, 'Tartarus?', 6567899),
(202495098, 'Jefferzione', 2520648),
(203166983, 'Vezuchiy', 6209142),
(203947582, 'Nightmares', 3150192),
(205266364, 'tired', 2901563),
(207472406, 'Audi (brew test-drive)', 6720168),
(208533206, 'DunningKruger', 6405832),
(215646289, 'One way or the other you die', 6567899),
(219868571, 'FUCKING LIVING WATER', 4590548),
(223650435, '????????', 3150192),
(231520863, 'flipgodd', 6712646),
(235619418, 'Tilt = Lose', 2901563),
(241886357, '?? ??', 6542010),
(243943036, 'Ryujin', 6684039),
(245373129, '????q', 6711290),
(245787317, 'Tenth', 6720168),
(256567825, 'Minato', 5403729),
(258067271, '???????? ???? ??????????', 6434963),
(260193276, 'HeenN', 6660118),
(264817668, 'Pearl Harbour,Korea', 6614476),
(282835880, 'EZ CLAP YA ?????1', 2412067),
(289979990, '9Rom@wwka', 6660118),
(290676288, '???', 6352000),
(291964656, 'kudasai', 1157724),
(295037923, '???????', 6709757),
(298485750, '±25', 6209142),
(313331533, 'sadness', 4590548),
(313640215, 'kill me, dude.', 5403729),
(314796169, '69', 5262892),
(314882028, 'Rap God', 6434963),
(324560783, 'Gas', 2520648),
(324683793, 'vasQaaaaaaaaaaaaaaa', 6622802),
(328153234, 'nutsalow', 6542010),
(332561278, 'N0N1ck_N0Sk1ll', 6173908),
(332818045, 'Abeng', 6684039),
(338679078, 'BTW.PGDW', 6644384),
(339729266, '[OM] Freeze_cheese', 6209142),
(342827109, 'BOo', 6352000),
(347667133, 'Artiz', 5262892),
(353542282, 'closed in yourself', 6434963),
(364439480, 'Kiseijuu', 6567899),
(367163919, 'Lexus', 5098006),
(383797967, 'I AM NOT GAY', 6434963),
(383896707, 'Wild_Dog', 6660118),
(384724867, '???????? ???????', 5326096),
(385647834, 'Desire', 3150192),
(391654690, 'ka6an4ik (KXC)', 6352000),
(401223431, '-1 level', 6712646),
(401689764, 'Legendary Player', 6569401),
(403686974, 'VBRS', 1157724),
(404950056, '?urák', 5262892),
(413236452, 'BTW.????', 6644384),
(415150491, 'N0len JayS', 1157724),
(419996957, 'Gryffindor. Meyson', 6622802),
(429005121, '?Faylyne- ?BeHereYou!', 6684039),
(433152247, 'BTW.TyP(0_0)ld_', 6644384),
(437823134, '1104vm-8', 6614476),
(453808096, '? ????????', 6209142),
(456130120, '?', 6567899),
(839663084, 'redmalchik', 5262892),
(841084310, 'GLinomu$', 4590548),
(842516350, 'Ilya \"ALOHADANCE\" Korobkin', 6209142),
(843514900, 'Clown 4', 2412067),
(845827351, 'the are you', 6569401),
(850623086, '18+)', 6542010),
(867500427, 'A1fog', 6569401),
(875919386, 'BTW.Echo', 6644384),
(884681441, 'maryana ro fan', 6186178),
(897224141, 'Ya 5asha i ya 9bashu', 2520648),
(898671777, 'TuckGGDROP.COM', 4590548),
(899073269, 'BhulLe', 6614476),
(902258142, 'HaM6aVaH', 6567899),
(903543268, 'let me burn', 5098006),
(907476097, 'QoLii', 5262892),
(908585368, 'Capitaluga', 6352000),
(917046393, 'smurf', 6542010),
(920019185, 'NECKFACE', 6712646),
(922993404, '?????????', 6622802),
(932573670, 'mister Prus', 6709757);

-- --------------------------------------------------------

--
-- Table structure for table `matches_settings`
--

CREATE TABLE `matches_settings` (
  `id` int(11) NOT NULL,
  `num_of_objects_per_page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `matches_stats`
--

CREATE TABLE `matches_stats` (
  `id` int(11) NOT NULL,
  `kills` int(11) NOT NULL,
  `death` int(11) NOT NULL,
  `assits` int(11) NOT NULL,
  `last_hits` int(11) NOT NULL,
  `denies` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `gpm` int(11) NOT NULL,
  `xpm` int(11) NOT NULL,
  `ultimate_cooldown` int(11) NOT NULL,
  `respawn_timer` int(11) NOT NULL,
  `pos_x` double NOT NULL,
  `pos_y` double NOT NULL,
  `net_worth` int(11) NOT NULL,
  `side` int(11) NOT NULL,
  `hero_id_id` int(11) NOT NULL,
  `match_id` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_stats`
--

INSERT INTO `matches_stats` (`id`, `kills`, `death`, `assits`, `last_hits`, `denies`, `gold`, `level`, `gpm`, `xpm`, `ultimate_cooldown`, `respawn_timer`, `pos_x`, `pos_y`, `net_worth`, `side`, `hero_id_id`, `match_id`, `player_id`) VALUES
(1, 0, 3, 0, 16, 1, 100, 5, 168, 162, 0, 0, 6524.60205078125, 4105.22216796875, 2090, 1, 98, 4364887521, 0),
(2, 5, 4, 11, 257, 12, 1650, 20, 649, 681, 4, 0, -2330.83642578125, 1885.19177246094, 16035, 0, 1, 4364846246, 163580946),
(3, 5, 3, 6, 197, 23, 1387, 19, 582, 605, 0, 0, -1586.14721679688, -454.75634765625, 14147, 0, 46, 4364846246, 179625075),
(4, 5, 2, 12, 105, 16, 1760, 15, 442, 427, 49, 0, -2901.50854492188, 2579.34912109375, 10610, 0, 97, 4364846246, 129105279),
(5, 4, 7, 14, 43, 7, 2543, 13, 332, 315, 0, 0, -3063.94458007812, 1699.71044921875, 7098, 0, 121, 4364846246, 119984038),
(6, 6, 10, 9, 13, 2, 1638, 14, 320, 356, 4, 0, 188.495483398438, -2404.32153320312, 5243, 0, 31, 4364846246, 75678907),
(7, 4, 8, 12, 13, 0, 1370, 11, 235, 237, 0, 0, 2509.76586914062, 992.836059570312, 3695, 1, 26, 4364846246, 47150177),
(8, 2, 8, 15, 9, 0, 738, 10, 210, 217, 14, 0, 3418.28637695312, 1104.4423828125, 4048, 1, 71, 4364846246, 122534469),
(9, 5, 4, 11, 55, 6, 690, 14, 344, 377, 0, 0, 3433.82153320312, 3105.22143554688, 8220, 1, 19, 4364846246, 116307658),
(10, 4, 3, 4, 147, 11, 608, 16, 417, 483, 23, 0, 1677.37084960938, 937.941040039062, 9938, 1, 8, 4364846246, 38131454),
(11, 11, 2, 5, 125, 11, 264, 15, 444, 408, 0, 0, 3431.25268554688, 1595.45959472656, 10384, 1, 21, 4364846246, 156173917),
(12, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367471701, 116139178),
(13, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367471701, 102689086),
(14, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367471701, 167699609),
(15, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367471701, 98300172),
(16, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367471701, 127566393),
(17, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367471701, 196863261),
(18, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367471701, 205266364),
(19, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367471701, 177681222),
(20, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367471701, 235619418),
(21, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367471701, 182886288),
(22, 5, 1, 8, 4, 6, 481, 8, 289, 251, 0, 0, 2994.67822265625, 5689.46826171875, 3511, 0, 119, 4367437670, 241886357),
(23, 4, 3, 12, 3, 1, 586, 10, 272, 365, 41, 0, 1989.90563964844, 5114.13671875, 3416, 0, 107, 4367437670, 164524777),
(24, 7, 0, 2, 88, 40, 927, 11, 508, 409, 0, 0, 6510.57080078125, -1529.13049316406, 7787, 0, 1, 4367437670, 850623086),
(25, 5, 2, 4, 70, 28, 1291, 13, 489, 531, 3, 0, 1544.24499511719, 1483.73913574219, 7066, 0, 13, 4367437670, 328153234),
(26, 10, 5, 5, 51, 8, 1109, 11, 462, 431, 0, 0, 329.935546875, 4939.93798828125, 6329, 0, 38, 4367437670, 917046393),
(27, 6, 5, 3, 47, 13, 2149, 9, 399, 311, 74, 0, 437.622100830078, 5129.1650390625, 5409, 1, 93, 4367437670, 433152247),
(28, 1, 6, 1, 6, 0, 1341, 8, 230, 269, 0, 0, 655.359619140625, 5342.0400390625, 2716, 1, 100, 4367437670, 413236452),
(29, 0, 5, 2, 35, 5, 801, 6, 287, 185, 138, 0, 3182.76928710938, 5651.29638671875, 3831, 1, 69, 4367437670, 875919386),
(30, 2, 9, 7, 10, 0, 1, 7, 230, 204, 0, 0, 6950, 6500, 51, 1, 31, 4367437670, 156578849),
(31, 2, 6, 1, 24, 5, 2, 6, 197, 195, 0, 0, 7136, 6688, 52, 1, 39, 4367437670, 338679078),
(32, 1, 2, 5, 0, 0, 304, 5, 215, 211, 0, 0, -1944.99377441406, 1630.06884765625, 1874, 0, 26, 4367440396, 219868571),
(33, 2, 0, 2, 34, 5, 630, 5, 335, 209, 0, 0, -1922.93188476562, 6167.771484375, 3390, 0, 96, 4367440396, 841084310),
(34, 1, 2, 3, 5, 4, 907, 5, 229, 209, 0, 0, -2536.92944335938, 3839.65283203125, 2022, 0, 121, 4367440396, 898671777),
(35, 1, 0, 1, 45, 33, 646, 6, 411, 318, 0, 0, 6369.208984375, -3371.9267578125, 4046, 0, 94, 4367440396, 60363867),
(36, 3, 0, 0, 39, 27, 1419, 8, 426, 465, 0, 0, -1136.32263183594, 1007.91320800781, 4039, 0, 114, 4367440396, 313331533),
(37, 1, 2, 1, 8, 5, 141, 4, 187, 182, 0, 0, -73.0855331420898, 2122.9990234375, 1646, 1, 91, 4367440396, 339729266),
(38, 1, 2, 0, 4, 0, 175, 3, 155, 115, 0, 0, 2329.8203125, -1452.896484375, 1485, 1, 31, 4367440396, 298485750),
(39, 0, 3, 1, 27, 6, 92, 6, 219, 288, 52, 0, 1020.60858154297, 694.924987792969, 2022, 1, 23, 4367440396, 203166983),
(40, 0, 0, 1, 6, 2, 81, 3, 140, 89, 0, 0, 5939.55615234375, -1762.109375, 1531, 1, 28, 4367440396, 842516350),
(41, 1, 2, 1, 30, 12, 739, 5, 243, 194, 0, 0, 1051.12060546875, 3235.53881835938, 2374, 1, 48, 4367440396, 453808096),
(42, 1, 0, 1, 17, 14, 482, 3, 509, 271, 0, 0, 5941.09375, -5279.28662109375, 2117, 0, 8, 4367462435, 130659058),
(43, 0, 0, 0, 10, 4, 138, 2, 274, 193, 0, 0, -7003, 4711.49853515625, 1398, 0, 38, 4367462435, 86001592),
(44, 0, 0, 0, 0, 0, 393, 2, 117, 151, 0, 0, -5712.9482421875, 4321.79248046875, 773, 0, 97, 4367462435, 897224141),
(45, 0, 0, 0, 19, 11, 750, 4, 425, 419, 0, 0, -772.701538085938, -750.421569824219, 1950, 0, 86, 4367462435, 324560783),
(46, 1, 0, 1, 0, 1, 301, 2, 217, 155, 0, 0, 6277.1484375, -5595.2978515625, 981, 0, 111, 4367462435, 202495098),
(47, 0, 0, 0, 9, 2, 171, 2, 232, 177, 0, 0, -6123.89404296875, 4764.86669921875, 1271, 1, 109, 4367462435, 415150491),
(48, 0, 1, 0, 1, 0, 369, 2, 130, 95, 0, 0, 5399.93896484375, -3868.36108398438, 779, 1, 69, 4367462435, 291964656),
(49, 0, 0, 0, 0, 1, 191, 2, 119, 125, 0, 0, -2921.53540039062, 4881.7021484375, 711, 1, 84, 4367462435, 403686974),
(50, 0, 1, 0, 3, 2, 115, 3, 158, 237, 0, 0, -37.7223358154297, -2.26749038696289, 905, 1, 6, 4367462435, 152400802),
(51, 0, 0, 0, 1, 0, 146, 2, 129, 98, 0, 0, 5442.1513671875, -4194.50927734375, 641, 1, 5, 4367462435, 93967043),
(52, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, -5892.4365234375, -6137.36083984375, 540, 0, 31, 4367465285, 843514900),
(53, 0, 0, 0, 0, 0, 15, 1, 0, 0, 0, 0, -5920.74853515625, -5954.65625, 650, 0, 23, 4367465285, 67367001),
(54, 0, 0, 0, 0, 0, 5, 1, 0, 0, 0, 0, -6871.41748046875, -6297.0859375, 510, 0, 87, 4367465285, 59668878),
(55, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, -6950, -6275.00390625, 560, 0, 8, 4367465285, 282835880),
(56, 0, 0, 0, 0, 0, 40, 1, 0, 0, 0, 0, -7100, -6150.00390625, 560, 0, 96, 4367465285, 72127063),
(57, 0, 0, 0, 0, 0, 600, 1, 0, 0, 0, 0, 6900, 6649.99609375, 650, 1, 90, 4367465285, 902258142),
(58, 0, 0, 0, 0, 0, 70, 1, 0, 0, 0, 0, 6568.37060546875, 5707.396484375, 560, 1, 29, 4367465285, 202023362),
(59, 0, 0, 0, 0, 0, 15, 1, 0, 0, 0, 0, 7100, 6375.99609375, 650, 1, 74, 4367465285, 364439480),
(60, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 6662.2490234375, 6125.267578125, 470, 1, 93, 4367465285, 215646289),
(61, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 7300, 6099.99609375, 650, 1, 26, 4367465285, 456130120),
(62, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367472895, 290676288),
(63, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367472895, 908585368),
(64, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367472895, 391654690),
(65, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367472895, 342827109),
(66, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367472895, 172097221),
(67, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367472895, 314796169),
(68, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367472895, 404950056),
(69, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367472895, 347667133),
(70, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367472895, 839663084),
(71, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367472895, 907476097),
(72, 2, 2, 0, 58, 23, 297, 7, 375, 271, 22, 0, -217.055419921875, -3453.47778320312, 4457, 0, 95, 4367443891, 313640215),
(73, 1, 4, 2, 55, 7, 505, 8, 325, 364, 0, 0, -4553.5205078125, 250.617645263672, 3665, 0, 35, 4367443891, 188118583),
(74, 2, 4, 0, 16, 3, 338, 6, 232, 236, 44, 0, -4852.36474609375, 5755.8349609375, 2518, 0, 96, 4367443891, 192154907),
(75, 0, 1, 3, 1, 4, 207, 6, 128, 221, 71, 5, 6757.46630859375, -4435.92236328125, 932, 0, 111, 4367443891, 168286535),
(76, 2, 2, 2, 10, 1, 917, 8, 262, 327, 0, 0, -5842.0244140625, 5292.9208984375, 2817, 0, 18, 4367443891, 256567825),
(77, 0, 4, 7, 2, 1, 25, 5, 180, 183, 0, 0, 2718.51489257812, -5019.4736328125, 1945, 1, 100, 4367443891, 122009948),
(78, 6, 1, 0, 54, 16, 1310, 11, 484, 518, 0, 0, 29.2374820709229, 694.130310058594, 5690, 1, 76, 4367443891, 81693581),
(79, 3, 1, 2, 1, 6, 220, 6, 209, 230, 0, 0, 5361.740234375, -5605.17041015625, 2020, 1, 50, 4367443891, 168935030),
(80, 1, 0, 2, 28, 5, 664, 7, 268, 252, 57, 0, 4864.69677734375, -5816.8037109375, 2649, 1, 97, 4367443891, 165945304),
(81, 3, 1, 4, 51, 17, 350, 8, 419, 348, 0, 0, 5299.7421875, -5711.65234375, 5155, 1, 59, 4367443891, 188592330),
(82, 2, 1, 2, 115, 1, 409, 11, 502, 544, 78, 0, -295.625, 5910.52587890625, 6139, 0, 55, 4367431157, 123787524),
(83, 1, 3, 0, 50, 4, 183, 9, 321, 358, 4, 16, 2831.94702148438, -6340.23388671875, 3378, 0, 106, 4367431157, 83867257),
(84, 3, 1, 5, 13, 3, 53, 7, 241, 249, 0, 0, -1228.01000976562, 4920.69482421875, 1553, 0, 50, 4367431157, 113331514),
(85, 1, 2, 7, 10, 0, 303, 6, 231, 237, 0, 0, -2222.90209960938, -1487.30163574219, 2548, 0, 19, 4367431157, 3916428),
(86, 4, 1, 6, 64, 6, 2581, 9, 470, 357, 0, 0, 55.2492752075195, 5845.8154296875, 6051, 0, 44, 4367431157, 245373129),
(87, 0, 6, 3, 5, 0, 53, 5, 146, 144, 0, 0, 2325.11962890625, 4780.88916015625, 918, 1, 64, 4367431157, 92028391),
(88, 1, 3, 5, 1, 0, 460, 6, 179, 211, 0, 0, 6865.7978515625, -4376.0986328125, 1995, 1, 107, 4367431157, 71869498),
(89, 3, 1, 0, 67, 17, 1338, 10, 418, 437, 0, 0, 4592.58447265625, -4267.9697265625, 5163, 1, 23, 4367431157, 141690233),
(90, 2, 2, 1, 61, 8, 195, 8, 364, 314, 0, 12, 712.908264160156, 6170.44287109375, 4505, 1, 109, 4367431157, 122049498),
(91, 1, 0, 1, 101, 0, 1466, 11, 491, 531, 0, 0, -1441.84118652344, -917.182189941406, 6141, 1, 29, 4367431157, 88719902),
(92, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367466566, 126174633),
(93, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367466566, 84390306),
(94, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367466566, 195353057),
(95, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367466566, 88611330),
(96, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367466566, 97597779),
(97, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367466566, 84021752),
(98, 0, 0, 0, 0, 0, 45, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367466566, 151433883),
(99, 0, 0, 0, 0, 0, 400, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367466566, 133167741),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367466566, 179284293),
(101, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367466566, 134271697),
(102, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 1542.70422363281, -5142.62744140625, 560, 0, 8, 4367463455, 173971950),
(103, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 980.683837890625, -4978.79296875, 570, 0, 31, 4367463455, 94923783),
(104, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, -4519.810546875, -163.146148681641, 560, 0, 96, 4367463455, 97975407),
(105, 0, 0, 0, 0, 0, 45, 1, 0, 0, 0, 0, -2539.59130859375, 88.4505310058594, 650, 0, 34, 4367463455, 197574429),
(106, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, -5894.39013671875, 2879.08764648438, 560, 0, 90, 4367463455, 101779337),
(107, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 5811.513671875, -2372.14184570312, 380, 1, 111, 4367463455, 208533206),
(108, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, -2103.0244140625, 5365, 560, 1, 114, 4367463455, 118375042),
(109, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, 4270.2998046875, -1596.80529785156, 560, 1, 18, 4367463455, 147220610),
(110, 0, 0, 0, 0, 0, 10, 1, 0, 0, 0, 0, -995.5107421875, 4783.38330078125, 545, 1, 112, 4367463455, 111015380),
(111, 0, 0, 0, 0, 0, 115, 1, 0, 0, 0, 0, 160.428512573242, 734.093566894531, 650, 1, 76, 4367463455, 170913702),
(112, 0, 1, 0, 0, 0, 246, 2, 143, 130, 0, 0, -6700, -6700, 646, 0, 64, 4367450262, 419996957),
(113, 0, 0, 0, 0, 0, 134, 2, 143, 157, 0, 0, 5544.951171875, -3452.36206054688, 684, 0, 31, 4367450262, 201076382),
(114, 0, 0, 0, 5, 2, 197, 3, 237, 351, 0, 0, -1038.2021484375, -622.285400390625, 1147, 0, 74, 4367450262, 922993404),
(115, 0, 0, 0, 6, 2, 48, 2, 264, 142, 0, 0, -6277.669921875, 3802.65551757812, 1058, 0, 96, 4367450262, 124892657),
(116, 0, 0, 0, 8, 2, 498, 2, 286, 211, 0, 0, 5817.2138671875, -3342.0546875, 1218, 0, 8, 4367450262, 324683793),
(117, 0, 0, 0, 1, 1, 306, 2, 130, 147, 0, 0, 6266.19970703125, -1483.04260253906, 711, 1, 121, 4367450262, 245787317),
(118, 0, 0, 0, 10, 2, 222, 3, 287, 372, 0, 0, -196.831817626953, -106.940635681152, 1262, 1, 101, 4367450262, 124536605),
(119, 1, 0, 0, 6, 3, 570, 2, 358, 182, 0, 0, -6143.67822265625, 4259.65234375, 1385, 1, 12, 4367450262, 76400933),
(120, 0, 0, 0, 8, 2, 629, 2, 269, 168, 0, 0, 6619.44482421875, -1659.22521972656, 1179, 1, 69, 4367450262, 172715549),
(121, 0, 0, 1, 0, 0, 52, 1, 137, 97, 0, 0, -6038.92333984375, 4769.77490234375, 682, 1, 85, 4367450262, 207472406),
(122, 2, 3, 3, 1, 2, 29, 8, 215, 257, 0, 0, -88.0427169799805, 1484.29809570312, 2119, 0, 68, 4367414622, 383896707),
(123, 0, 2, 3, 101, 19, 275, 10, 463, 407, 0, 30, 6903.6796875, -3579.3408203125, 6600, 0, 8, 4367414622, 191381091),
(124, 3, 0, 4, 57, 14, 941, 11, 405, 436, 0, 0, 5417.27392578125, -5589.9560546875, 5926, 0, 63, 4367414622, 145014956),
(125, 8, 2, 0, 104, 4, 1649, 13, 614, 564, 8, 0, 599.568054199219, 1880.72045898438, 7939, 0, 61, 4367414622, 289979990),
(126, 5, 3, 9, 3, 2, 488, 7, 281, 234, 0, 0, -226.814636230469, 1036.75891113281, 3593, 0, 100, 4367414622, 260193276),
(127, 1, 1, 3, 53, 10, 468, 9, 301, 322, 62, 0, -1827.43151855469, 4485.41259765625, 4203, 1, 41, 4367414622, 401689764),
(128, 2, 4, 4, 16, 2, 837, 7, 212, 241, 0, 0, 212.068267822266, 2367.037109375, 1612, 1, 50, 4367414622, 121427456),
(129, 2, 2, 6, 95, 0, 377, 9, 249, 338, 0, 0, 6039.3330078125, -2547.1826171875, 3027, 1, 121, 4367414622, 867500427),
(130, 3, 7, 3, 34, 5, 860, 8, 246, 268, 0, 0, 3215.9833984375, 3041.87133789062, 3225, 1, 74, 4367414622, 845827351),
(131, 2, 4, 4, 21, 9, 722, 8, 221, 286, 65, 0, 6537.662109375, -2948.16333007812, 2962, 1, 88, 4367414622, 64124212),
(132, 7, 15, 16, 43, 6, 256, 22, 360, 482, 0, 55, -2576.22631835938, -3868.00146484375, 12021, 1, 100, 4367402382, 0),
(133, 1, 0, 0, 23, 13, 360, 5, 429, 491, 0, 0, -654.6455078125, 23.8325996398926, 2470, 0, 23, 4367454597, 437823134),
(134, 0, 0, 1, 1, 1, 34, 3, 148, 200, 0, 0, 4800.24169921875, -5123.40478515625, 989, 0, 58, 4367454597, 899073269),
(135, 1, 0, 0, 25, 15, 776, 4, 429, 270, 0, 0, 5463.91455078125, -5759.52734375, 2191, 0, 93, 4367454597, 264817668),
(136, 2, 0, 2, 18, 4, 966, 4, 409, 297, 0, 0, -5859.06396484375, 5109.2919921875, 2246, 0, 50, 4367454597, 196128067),
(137, 2, 2, 2, 0, 2, 34, 3, 274, 171, 0, 0, -3748.39208984375, -2797.8115234375, 1509, 0, 100, 4367454597, 175002436),
(138, 0, 0, 0, 3, 0, 69, 2, 130, 108, 0, 0, 5844.05615234375, -5064.73828125, 979, 1, 90, 4367454597, 168206774),
(139, 0, 1, 0, 5, 1, 366, 2, 145, 136, 0, 0, 5887.22607421875, -5205.03759765625, 956, 1, 38, 4367454597, 429005121),
(140, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367454597, 243943036),
(141, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367454597, 199790745),
(142, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367454597, 332818045),
(143, 0, 0, 0, 0, 0, 58, 1, 0, 0, 0, 0, -2590.80419921875, -2265.34252929688, 668, 0, 28, 4367485065, 884681441),
(144, 0, 0, 0, 0, 0, 43, 1, 0, 0, 0, 0, 1965.95434570312, 1385.56909179688, 668, 1, 43, 4367485065, 332561278),
(145, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367482273, 200428387),
(146, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367482273, 158525695),
(147, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367482273, 163356386),
(148, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367482273, 384724867),
(149, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4367482273, 150938521),
(150, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367482273, 385647834),
(151, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367482273, 223650435),
(152, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367482273, 154052658),
(153, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367482273, 41080683),
(154, 0, 0, 0, 0, 0, 600, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 4367482273, 203947582);

-- --------------------------------------------------------

--
-- Table structure for table `matches_team`
--

CREATE TABLE `matches_team` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matches_team`
--

INSERT INTO `matches_team` (`team_id`, `team_name`) VALUES
(0, 'NULL'),
(59, 'Kaipi'),
(1157724, '| THE RAMPAGE |'),
(1695199, 'Hoodlums'),
(2412067, 'DENCHIK\'s FIVE'),
(2520648, 'MemeCommandos'),
(2901563, 'Hot Finland Guys '),
(3150192, '?orsaire'),
(3756152, 'BIGrussianASS'),
(4299978, 'Meraki- Gaming'),
(4590548, 'Restart'),
(4997576, 'Default bots'),
(4997606, 'BotExperiment'),
(4997618, 'PubSimulator'),
(5055770, 'Gorillaz-Pride'),
(5057280, 'Dota at UIC'),
(5098006, 'Four Teammate Around Battle'),
(5262892, '123QWE'),
(5326096, 'NEXT VIGRAEM'),
(5403729, 'Japan Ninja'),
(5679840, 'SG e-sports'),
(6173908, '3DG'),
(6186178, 'CHUPAKABRIKI'),
(6209142, 'Op Mizantrops'),
(6325327, 'UT Austin Longhorns'),
(6352000, 'OverTerror'),
(6405832, 'Insane Gaming'),
(6434963, 'Gryaznii Trysi'),
(6542010, 'Gladiators Team'),
(6567899, 'Nice Procast Gaming'),
(6569401, 'Team Fiend'),
(6614476, 'IndoNationsID'),
(6622802, 'Gryffindor '),
(6644384, 'BornToWin'),
(6660118, 'Team Fiend Demons '),
(6684039, 'Tubruk Gaming'),
(6709757, 'KaKvSSSR'),
(6711290, 'The ReaL DeaL'),
(6712646, 'NoHat'),
(6720168, 'Team Monkey');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_follower_follower_id_19eba97d_fk_auth_user_id` (`follower_id`),
  ADD KEY `accounts_follower_user_id_9916d53d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_notification_user_id_30e6cfc5_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

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
-- Indexes for table `background_task`
--
ALTER TABLE `background_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background_task_creator_content_type_61cc9af3_fk_django_co` (`creator_content_type_id`),
  ADD KEY `background_task_task_name_4562d56a` (`task_name`),
  ADD KEY `background_task_task_hash_d8f233bd` (`task_hash`),
  ADD KEY `background_task_priority_88bdbce9` (`priority`),
  ADD KEY `background_task_run_at_7baca3aa` (`run_at`),
  ADD KEY `background_task_queue_1d5f3a40` (`queue`),
  ADD KEY `background_task_attempts_a9ade23d` (`attempts`),
  ADD KEY `background_task_failed_at_b81bba14` (`failed_at`),
  ADD KEY `background_task_locked_by_db7779e3` (`locked_by`),
  ADD KEY `background_task_locked_at_0fb0f225` (`locked_at`);

--
-- Indexes for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `background_task_comp_creator_content_type_21d6a741_fk_django_co` (`creator_content_type_id`),
  ADD KEY `background_task_completedtask_task_name_388dabc2` (`task_name`),
  ADD KEY `background_task_completedtask_task_hash_91187576` (`task_hash`),
  ADD KEY `background_task_completedtask_priority_9080692e` (`priority`),
  ADD KEY `background_task_completedtask_run_at_77c80f34` (`run_at`),
  ADD KEY `background_task_completedtask_queue_61fb0415` (`queue`),
  ADD KEY `background_task_completedtask_attempts_772a6783` (`attempts`),
  ADD KEY `background_task_completedtask_failed_at_3de56618` (`failed_at`),
  ADD KEY `background_task_completedtask_locked_by_edc8a213` (`locked_by`),
  ADD KEY `background_task_completedtask_locked_at_29c62708` (`locked_at`);

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
-- Indexes for table `matches_ban`
--
ALTER TABLE `matches_ban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_ban_match_id_hero_id_8865498e_uniq` (`match_id`,`hero_id`),
  ADD KEY `matches_ban_hero_id_db827c80_fk_matches_hero_hero_id` (`hero_id`);

--
-- Indexes for table `matches_bet`
--
ALTER TABLE `matches_bet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matches_bet_match_id_fe44477e_fk_matches_match_match_id` (`match_id`),
  ADD KEY `matches_bet_user_id_64be7fef_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `matches_hero`
--
ALTER TABLE `matches_hero`
  ADD PRIMARY KEY (`hero_id`);

--
-- Indexes for table `matches_item`
--
ALTER TABLE `matches_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_item_inventory_match_id_player_id_slot_c6b33ba7_uniq` (`match_id`,`player_id`,`slot`),
  ADD KEY `matches_item_inventory_item_id_54fb8a53_fk_matches_item_item_id` (`item_id`),
  ADD KEY `matches_item_invento_player_id_7e64cc1d_fk_matches_p` (`player_id`);

--
-- Indexes for table `matches_match`
--
ALTER TABLE `matches_match`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `matches_match_d_team_id_c175be32_fk_matches_team_team_id` (`d_team_id`),
  ADD KEY `matches_match_r_team_id_6bafb78f_fk_matches_team_team_id` (`r_team_id`);

--
-- Indexes for table `matches_pick`
--
ALTER TABLE `matches_pick`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_pick_match_id_hero_id_cd1d1d48_uniq` (`match_id`,`hero_id`),
  ADD KEY `matches_pick_hero_id_b2228f14_fk_matches_hero_hero_id` (`hero_id`);

--
-- Indexes for table `matches_player`
--
ALTER TABLE `matches_player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `matches_player_team_id_177e01b8_fk_matches_team_team_id` (`team_id`);

--
-- Indexes for table `matches_settings`
--
ALTER TABLE `matches_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matches_stats`
--
ALTER TABLE `matches_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `matches_stats_match_id_player_id_92fd3f09_uniq` (`match_id`,`player_id`),
  ADD KEY `matches_stats_hero_id_id_88beb8be_fk_matches_hero_hero_id` (`hero_id_id`),
  ADD KEY `matches_stats_player_id_e78fe325_fk_matches_player_player_id` (`player_id`);

--
-- Indexes for table `matches_team`
--
ALTER TABLE `matches_team`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `background_task`
--
ALTER TABLE `background_task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `matches_ban`
--
ALTER TABLE `matches_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT for table `matches_bet`
--
ALTER TABLE `matches_bet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=925;

--
-- AUTO_INCREMENT for table `matches_pick`
--
ALTER TABLE `matches_pick`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `matches_settings`
--
ALTER TABLE `matches_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matches_stats`
--
ALTER TABLE `matches_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_follower`
--
ALTER TABLE `accounts_follower`
  ADD CONSTRAINT `accounts_follower_follower_id_19eba97d_fk_auth_user_id` FOREIGN KEY (`follower_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `accounts_follower_user_id_9916d53d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_notification`
--
ALTER TABLE `accounts_notification`
  ADD CONSTRAINT `accounts_notification_user_id_30e6cfc5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

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
-- Constraints for table `background_task`
--
ALTER TABLE `background_task`
  ADD CONSTRAINT `background_task_creator_content_type_61cc9af3_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `background_task_completedtask`
--
ALTER TABLE `background_task_completedtask`
  ADD CONSTRAINT `background_task_comp_creator_content_type_21d6a741_fk_django_co` FOREIGN KEY (`creator_content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matches_ban`
--
ALTER TABLE `matches_ban`
  ADD CONSTRAINT `matches_ban_hero_id_db827c80_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_ban_match_id_e6500e0e_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`);

--
-- Constraints for table `matches_bet`
--
ALTER TABLE `matches_bet`
  ADD CONSTRAINT `matches_bet_match_id_fe44477e_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_bet_user_id_64be7fef_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `matches_item_inventory`
--
ALTER TABLE `matches_item_inventory`
  ADD CONSTRAINT `matches_item_invento_match_id_742073ba_fk_matches_m` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_item_invento_player_id_7e64cc1d_fk_matches_p` FOREIGN KEY (`player_id`) REFERENCES `matches_player` (`player_id`),
  ADD CONSTRAINT `matches_item_inventory_item_id_54fb8a53_fk_matches_item_item_id` FOREIGN KEY (`item_id`) REFERENCES `matches_item` (`item_id`);

--
-- Constraints for table `matches_match`
--
ALTER TABLE `matches_match`
  ADD CONSTRAINT `matches_match_d_team_id_c175be32_fk_matches_team_team_id` FOREIGN KEY (`d_team_id`) REFERENCES `matches_team` (`team_id`),
  ADD CONSTRAINT `matches_match_r_team_id_6bafb78f_fk_matches_team_team_id` FOREIGN KEY (`r_team_id`) REFERENCES `matches_team` (`team_id`);

--
-- Constraints for table `matches_pick`
--
ALTER TABLE `matches_pick`
  ADD CONSTRAINT `matches_pick_hero_id_b2228f14_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_pick_match_id_84e6dea1_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`);

--
-- Constraints for table `matches_player`
--
ALTER TABLE `matches_player`
  ADD CONSTRAINT `matches_player_team_id_177e01b8_fk_matches_team_team_id` FOREIGN KEY (`team_id`) REFERENCES `matches_team` (`team_id`);

--
-- Constraints for table `matches_stats`
--
ALTER TABLE `matches_stats`
  ADD CONSTRAINT `matches_stats_hero_id_id_88beb8be_fk_matches_hero_hero_id` FOREIGN KEY (`hero_id_id`) REFERENCES `matches_hero` (`hero_id`),
  ADD CONSTRAINT `matches_stats_match_id_df7395f1_fk_matches_match_match_id` FOREIGN KEY (`match_id`) REFERENCES `matches_match` (`match_id`),
  ADD CONSTRAINT `matches_stats_player_id_e78fe325_fk_matches_player_player_id` FOREIGN KEY (`player_id`) REFERENCES `matches_player` (`player_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
