-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 26, 2019 at 10:21 PM
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
-- Table structure for table `matches_hero`
--

CREATE TABLE `matches_hero` (
  `hero_id` int(11) NOT NULL,
  `hero_name` varchar(100) NOT NULL,
  `url_full_portrait` varchar(200) NOT NULL,
  `url_large_portrait` varchar(200) NOT NULL,
  `url_small_portrait` varchar(200) NOT NULL,
  `url_vertical_portrait` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `matches_hero`
--

INSERT INTO `matches_hero` (`hero_id`, `hero_name`, `url_full_portrait`, `url_large_portrait`, `url_small_portrait`, `url_vertical_portrait`) VALUES
(0, 'Null', 'null', 'null', 'null', 'null'),
(1, 'Anti-Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/antimage_vert.jpg'),
(2, 'Axe', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/axe_vert.jpg'),
(3, 'Bane', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bane_vert.jpg'),
(4, 'Bloodseeker', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bloodseeker_vert.jpg'),
(5, 'Crystal Maiden', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/crystal_maiden_vert.jpg'),
(6, 'Drow Ranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/drow_ranger_vert.jpg'),
(7, 'Earthshaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earthshaker_vert.jpg'),
(8, 'Juggernaut', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/juggernaut_vert.jpg'),
(9, 'Mirana', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/mirana_vert.jpg'),
(10, 'Morphling', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/morphling_vert.jpg'),
(11, 'Shadow Fiend', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nevermore_vert.jpg'),
(12, 'Phantom Lancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_lancer_vert.jpg'),
(13, 'Puck', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/puck_vert.jpg'),
(14, 'Pudge', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pudge_vert.jpg'),
(15, 'Razor', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/razor_vert.jpg'),
(16, 'Sand King', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sand_king_vert.jpg'),
(17, 'Storm Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/storm_spirit_vert.jpg'),
(18, 'Sven', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sven_vert.jpg'),
(19, 'Tiny', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tiny_vert.jpg'),
(20, 'Vengeful Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/vengefulspirit_vert.jpg'),
(21, 'Windranger', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/windrunner_vert.jpg'),
(22, 'Zeus', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/zuus_vert.jpg'),
(23, 'Kunkka', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/kunkka_vert.jpg'),
(25, 'Lina', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lina_vert.jpg'),
(26, 'Lion', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lion_vert.jpg'),
(27, 'Shadow Shaman', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_shaman_vert.jpg'),
(28, 'Slardar', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slardar_vert.jpg'),
(29, 'Tidehunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tidehunter_vert.jpg'),
(30, 'Witch Doctor', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/witch_doctor_vert.jpg'),
(31, 'Lich', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lich_vert.jpg'),
(32, 'Riki', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/riki_vert.jpg'),
(33, 'Enigma', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enigma_vert.jpg'),
(34, 'Tinker', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tinker_vert.jpg'),
(35, 'Sniper', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/sniper_vert.jpg'),
(36, 'Necrophos', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/necrolyte_vert.jpg'),
(37, 'Warlock', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/warlock_vert.jpg'),
(38, 'Beastmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/beastmaster_vert.jpg'),
(39, 'Queen of Pain', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/queenofpain_vert.jpg'),
(40, 'Venomancer', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/venomancer_vert.jpg'),
(41, 'Faceless Void', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/faceless_void_vert.jpg'),
(42, 'Wraith King', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skeleton_king_vert.jpg'),
(43, 'Death Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/death_prophet_vert.jpg'),
(44, 'Phantom Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phantom_assassin_vert.jpg'),
(45, 'Pugna', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pugna_vert.jpg'),
(46, 'Templar Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/templar_assassin_vert.jpg'),
(47, 'Viper', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/viper_vert.jpg'),
(48, 'Luna', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/luna_vert.jpg'),
(49, 'Dragon Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dragon_knight_vert.jpg'),
(50, 'Dazzle', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dazzle_vert.jpg'),
(51, 'Clockwerk', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rattletrap_vert.jpg'),
(52, 'Leshrac', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/leshrac_vert.jpg'),
(53, 'Nature\'s Prophet', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/furion_vert.jpg'),
(54, 'Lifestealer', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/life_stealer_vert.jpg'),
(55, 'Dark Seer', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_seer_vert.jpg'),
(56, 'Clinkz', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/clinkz_vert.jpg'),
(57, 'Omniknight', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/omniknight_vert.jpg'),
(58, 'Enchantress', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/enchantress_vert.jpg'),
(59, 'Huskar', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/huskar_vert.jpg'),
(60, 'Night Stalker', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/night_stalker_vert.jpg'),
(61, 'Broodmother', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/broodmother_vert.jpg'),
(62, 'Bounty Hunter', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bounty_hunter_vert.jpg'),
(63, 'Weaver', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/weaver_vert.jpg'),
(64, 'Jakiro', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/jakiro_vert.jpg'),
(65, 'Batrider', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/batrider_vert.jpg'),
(66, 'Chen', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chen_vert.jpg'),
(67, 'Spectre', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spectre_vert.jpg'),
(68, 'Ancient Apparition', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ancient_apparition_vert.jpg'),
(69, 'Doom', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/doom_bringer_vert.jpg'),
(70, 'Ursa', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ursa_vert.jpg'),
(71, 'Spirit Breaker', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/spirit_breaker_vert.jpg'),
(72, 'Gyrocopter', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/gyrocopter_vert.jpg'),
(73, 'Alchemist', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/alchemist_vert.jpg'),
(74, 'Invoker', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/invoker_vert.jpg'),
(75, 'Silencer', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/silencer_vert.jpg'),
(76, 'Outworld Devourer', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/obsidian_destroyer_vert.jpg'),
(77, 'Lycan', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lycan_vert.jpg'),
(78, 'Brewmaster', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/brewmaster_vert.jpg'),
(79, 'Shadow Demon', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shadow_demon_vert.jpg'),
(80, 'Lone Druid', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/lone_druid_vert.jpg'),
(81, 'Chaos Knight', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/chaos_knight_vert.jpg'),
(82, 'Meepo', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/meepo_vert.jpg'),
(83, 'Treant Protector', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/treant_vert.jpg'),
(84, 'Ogre Magi', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ogre_magi_vert.jpg'),
(85, 'Undying', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/undying_vert.jpg'),
(86, 'Rubick', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/rubick_vert.jpg'),
(87, 'Disruptor', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/disruptor_vert.jpg'),
(88, 'Nyx Assassin', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/nyx_assassin_vert.jpg'),
(89, 'Naga Siren', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/naga_siren_vert.jpg'),
(90, 'Keeper of the Light', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/keeper_of_the_light_vert.jpg'),
(91, 'Io', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/wisp_vert.jpg'),
(92, 'Visage', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/visage_vert.jpg'),
(93, 'Slark', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/slark_vert.jpg'),
(94, 'Medusa', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/medusa_vert.jpg'),
(95, 'Troll Warlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/troll_warlord_vert.jpg'),
(96, 'Centaur Warrunner', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/centaur_vert.jpg'),
(97, 'Magnus', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/magnataur_vert.jpg'),
(98, 'Timbersaw', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/shredder_vert.jpg'),
(99, 'Bristleback', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/bristleback_vert.jpg'),
(100, 'Tusk', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/tusk_vert.jpg'),
(101, 'Skywrath Mage', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/skywrath_mage_vert.jpg'),
(102, 'Abaddon', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abaddon_vert.jpg'),
(103, 'Elder Titan', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/elder_titan_vert.jpg'),
(104, 'Legion Commander', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/legion_commander_vert.jpg'),
(105, 'Techies', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/techies_vert.jpg'),
(106, 'Ember Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/ember_spirit_vert.jpg'),
(107, 'Earth Spirit', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/earth_spirit_vert.jpg'),
(108, 'Underlord', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/abyssal_underlord_vert.jpg'),
(109, 'Terrorblade', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/terrorblade_vert.jpg'),
(110, 'Phoenix', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/phoenix_vert.jpg'),
(111, 'Oracle', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/oracle_vert.jpg'),
(112, 'Winter Wyvern', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/winter_wyvern_vert.jpg'),
(113, 'Arc Warden', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/arc_warden_vert.jpg'),
(114, 'Monkey King', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/monkey_king_vert.jpg'),
(119, 'Dark Willow', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/dark_willow_vert.jpg'),
(120, 'Pangolier', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_full.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_lg.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_sb.png', 'http://cdn.dota2.com/apps/dota2/images/heroes/pangolier_vert.jpg'),
(121, 'Grimstroke', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_full.png', 'null', 'http://cdn.dota2.com/apps/dota2/images/heroes/grimstroke_sb.png', 'null');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matches_hero`
--
ALTER TABLE `matches_hero`
  ADD PRIMARY KEY (`hero_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
