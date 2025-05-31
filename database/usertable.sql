-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for card_marking_system
CREATE DATABASE IF NOT EXISTS `card_marking_system` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `card_marking_system`;

-- Dumping structure for table card_marking_system.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table card_marking_system.categories: ~2 rows (approximately)
INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
	(1, 'Spoken', '2025-04-28 13:39:14', '2025-04-28 13:39:15'),
	(2, 'Theory', '2025-04-28 13:39:25', '2025-04-28 13:39:26'),
	(3, 'Paper', '2025-04-28 14:35:50', '2025-04-28 14:35:50'),
	(4, 'Group', '2025-05-01 09:12:31', '2025-05-01 09:12:32');

-- Dumping structure for table card_marking_system.classes
CREATE TABLE IF NOT EXISTS `classes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `class_name` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table card_marking_system.classes: ~3 rows (approximately)
INSERT INTO `classes` (`id`, `class_name`, `updated_at`, `created_at`) VALUES
	(1, 'English', '2025-04-28 13:39:01', '2025-04-28 13:39:02'),
	(2, 'Scholarship', '2025-04-28 14:29:22', '2025-04-28 14:29:23'),
	(3, 'Mathematics', '2025-04-28 14:29:04', '2025-04-28 14:29:05');

-- Dumping structure for table card_marking_system.days
CREATE TABLE IF NOT EXISTS `days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.days: ~7 rows (approximately)
INSERT INTO `days` (`id`, `day_name`, `created_at`, `updated_at`) VALUES
	(1, 'Monday', '2025-04-08 13:15:06', '2025-04-08 13:15:07'),
	(2, 'Tuesday', '2025-04-08 13:15:14', '2025-04-08 13:15:15'),
	(3, 'Wednesday', '2025-04-08 13:15:37', '2025-04-08 13:15:38'),
	(4, 'Thursday', '2025-04-08 13:15:47', '2025-04-08 13:15:48'),
	(5, 'Friday', '2025-04-08 13:16:11', '2025-04-08 13:16:12'),
	(6, 'Saturday', '2025-04-08 13:16:28', '2025-04-08 13:16:29'),
	(7, 'Sunday', '2025-04-08 13:17:09', '2025-04-08 13:17:10');

-- Dumping structure for table card_marking_system.grades
CREATE TABLE IF NOT EXISTS `grades` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `grade_name` varchar(20) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table card_marking_system.grades: ~12 rows (approximately)
INSERT INTO `grades` (`id`, `grade_name`, `updated_at`, `created_at`) VALUES
	(1, 'Grade 1a', '2025-04-28 14:21:55', '2025-04-28 14:21:55'),
	(2, 'Grade 2', '2025-04-28 14:22:02', '2025-04-28 14:22:02'),
	(3, 'Grade 3', '2025-04-28 14:34:28', '2025-04-28 14:34:29'),
	(4, 'Grade 4', '2025-04-28 17:21:13', '2025-04-28 17:21:14'),
	(5, 'Grade 5', '2025-04-28 17:21:25', '2025-04-28 17:21:25'),
	(6, 'Grade 6', '2025-04-28 17:21:31', '2025-04-28 17:21:32'),
	(7, 'Grade 7', '2025-04-28 17:21:38', '2025-04-28 17:21:39'),
	(8, 'Grade 8', '2025-04-28 17:21:45', '2025-04-28 17:21:45'),
	(9, 'Grade 9', '2025-04-28 17:21:51', '2025-04-28 17:21:52'),
	(10, 'Grade 10', '2025-04-28 17:21:59', '2025-04-28 17:22:00'),
	(11, 'Grade 11', '2025-04-28 17:22:06', '2025-04-28 17:22:06'),
	(12, 'Grade 1b', '2025-05-18 07:33:04', '2025-05-18 07:33:04'),
	(19, 'Nursery', '2025-04-28 13:39:36', '2025-04-28 13:39:36');

-- Dumping structure for table card_marking_system.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.migrations: ~8 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2025_03_01_075325_create_months_table', 5),
	(6, '2025_03_01_075335_create_years_table', 5),
	(27, '2025_04_08_112801_create_students_table', 7),
	(30, '2025_04_08_130648_create_days_table', 9),
	(31, '2025_04_08_111714_create_classes_table', 10),
	(35, '2025_04_08_120337_create_student_reports_table', 11),
	(38, '2025_04_24_182755_create_users_table', 12),
	(39, '2025_04_28_195636_create_sessions_table', 13);

-- Dumping structure for table card_marking_system.months
CREATE TABLE IF NOT EXISTS `months` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.months: ~12 rows (approximately)
INSERT INTO `months` (`id`, `month`, `created_at`, `updated_at`) VALUES
	(1, 'January', '2025-03-01 11:15:42', '2025-03-01 11:15:43'),
	(2, 'February', '2025-03-01 11:15:51', '2025-03-01 11:15:52'),
	(3, 'March', '2025-03-01 11:16:00', '2025-03-01 11:16:01'),
	(4, 'April', '2025-04-02 08:53:20', '2025-04-02 08:53:20'),
	(5, 'May', '2025-04-25 09:59:52', '2025-04-25 09:59:53'),
	(6, 'June', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(7, 'July', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(8, 'August', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(9, 'September', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(10, 'October', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(11, 'November', '2025-04-25 11:00:00', '2025-04-25 11:00:00'),
	(12, 'December', '2025-04-25 11:00:00', '2025-04-25 11:00:00');

-- Dumping structure for table card_marking_system.students
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sno` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` text COLLATE utf8mb4_unicode_ci,
  `address2` text COLLATE utf8mb4_unicode_ci,
  `school` text COLLATE utf8mb4_unicode_ci,
  `g_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_mobile` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_whatsapp` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g_whatsapp2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_sno_unique` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.students: ~24 rows (approximately)
INSERT INTO `students` (`id`, `sno`, `name`, `address1`, `address2`, `school`, `g_name`, `g_mobile`, `g_whatsapp`, `g_whatsapp2`, `gender`, `dob`, `created_at`, `updated_at`) VALUES
	(30, '0001', 'Ayesh', NULL, NULL, NULL, NULL, NULL, '0783233760', NULL, 'female', NULL, '2025-05-09 04:13:33', '2025-05-18 06:04:39'),
	(31, '0002', 'Thisara', NULL, NULL, NULL, NULL, NULL, '0771900253', '0783233760', 'male', '2006-05-09', '2025-05-09 04:52:29', '2025-05-18 06:04:50'),
	(32, '5556', 'sandeepa', NULL, NULL, NULL, NULL, NULL, '0771900253', NULL, 'female', NULL, '2025-05-09 05:14:16', '2025-05-09 05:14:16'),
	(33, '4334', 'sachindu', NULL, NULL, NULL, NULL, NULL, '0783233760', NULL, 'male', NULL, '2025-05-09 05:45:13', '2025-05-18 08:52:21'),
	(34, '1005', 'Samith', NULL, NULL, NULL, NULL, NULL, '0712345682', NULL, 'female', NULL, '2025-05-15 11:31:50', '2025-05-15 11:31:50'),
	(35, '6001', 'Sandeepa', NULL, NULL, NULL, NULL, NULL, '0712345652', NULL, 'male', NULL, '2025-05-15 11:32:19', '2025-05-15 11:32:19'),
	(36, '0008', 'Sanka', NULL, NULL, NULL, NULL, NULL, '0783233760', '0771900253', 'female', NULL, '2025-05-16 09:21:13', '2025-05-18 08:13:42'),
	(37, '0010', 'Dulaj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'female', NULL, '2025-05-16 09:22:03', '2025-05-16 09:22:03'),
	(38, '0011', 'Chathura', NULL, NULL, NULL, NULL, '0761066698', '0761066699', NULL, 'female', NULL, '2025-05-16 09:33:22', '2025-05-16 09:33:22'),
	(39, '0012', 'Chathu', NULL, NULL, NULL, NULL, '0761066690', '0761066691', NULL, 'female', NULL, '2025-05-16 09:36:54', '2025-05-16 09:36:54'),
	(40, '0013', 'chathuri', NULL, NULL, NULL, NULL, '0761066698', '0761066699', '0761066690', 'female', NULL, '2025-05-16 09:45:15', '2025-05-16 09:45:15'),
	(41, '150', 'Ayesh Chathuranga', 'Rukmalgahahena, Diddenipotha, Makandura.', NULL, NULL, 'Chathura', NULL, '0783233760', '0701307646', 'female', NULL, '2025-05-18 04:15:59', '2025-05-18 04:15:59'),
	(42, '992', 'dilipa', NULL, NULL, NULL, NULL, NULL, '0783233760', '0761066690', 'male', NULL, '2025-05-18 04:16:59', '2025-05-18 06:15:02'),
	(43, '151', 'Sudira', NULL, NULL, NULL, NULL, NULL, '0712345679', NULL, 'male', NULL, '2025-05-18 04:38:40', '2025-05-18 04:38:40'),
	(44, '152', 'Ayesh Chathuranga', 'Rukmalgahahena, Diddenipotha, Makandura.', NULL, NULL, NULL, NULL, '0712345688', NULL, 'female', NULL, '2025-05-18 07:39:14', '2025-05-18 07:39:14'),
	(45, '133', 'Dinesh', NULL, NULL, NULL, NULL, NULL, '0712345682', NULL, 'female', NULL, '2025-05-18 08:25:24', '2025-05-18 08:25:24'),
	(46, '179', 'Thissa', NULL, NULL, NULL, NULL, NULL, '0712345671', NULL, 'male', NULL, '2025-05-18 08:35:11', '2025-05-18 08:35:11'),
	(47, '156', 'sadiru', NULL, NULL, NULL, NULL, NULL, '0712345671', NULL, 'female', NULL, '2025-05-19 05:34:45', '2025-05-19 05:34:45'),
	(48, '157', 'sadiru', NULL, NULL, NULL, NULL, NULL, '0712345682', NULL, 'female', NULL, '2025-05-19 05:37:54', '2025-05-19 05:37:54'),
	(49, '158', 'Rasindu', NULL, NULL, NULL, NULL, NULL, '0712345652', NULL, 'female', NULL, '2025-05-19 05:40:15', '2025-05-19 05:40:15'),
	(50, '159', 'Lakshan', NULL, NULL, NULL, NULL, NULL, '0712345652', NULL, 'female', NULL, '2025-05-19 05:44:20', '2025-05-19 05:44:20'),
	(51, '160', 'Lakshan2', NULL, NULL, NULL, NULL, NULL, '0783233760', NULL, 'female', NULL, '2025-05-19 05:45:54', '2025-05-19 05:45:54'),
	(52, '153', 'Madura', NULL, NULL, NULL, NULL, NULL, '0712345682', NULL, 'female', NULL, '2025-05-19 06:07:33', '2025-05-19 06:07:33'),
	(53, '154', 'Ranaveera', NULL, NULL, NULL, NULL, '0712345683', '0783233760', '0783233762', 'female', NULL, '2025-05-19 06:08:12', '2025-05-19 06:08:12');

-- Dumping structure for table card_marking_system.students_has_tuitions
CREATE TABLE IF NOT EXISTS `students_has_tuitions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `tuition_id` bigint unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_students_has_tuitions_students1_idx` (`student_id`),
  KEY `fk_students_has_tuitions_tuitions1_idx` (`tuition_id`),
  CONSTRAINT `fk_students_has_tuitions_students1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  CONSTRAINT `fk_students_has_tuitions_tuitions1` FOREIGN KEY (`tuition_id`) REFERENCES `tuitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.students_has_tuitions: ~33 rows (approximately)
INSERT INTO `students_has_tuitions` (`id`, `student_id`, `tuition_id`, `status`, `created_at`, `updated_at`) VALUES
	(19, 30, 1, 1, '2025-05-09 04:13:33', '2025-05-09 04:13:33'),
	(20, 31, 1, 1, '2025-05-09 04:52:29', '2025-05-09 04:52:29'),
	(21, 32, 14, 1, '2025-05-09 05:14:16', '2025-05-09 05:14:16'),
	(22, 33, 10, 1, '2025-05-09 05:45:13', '2025-05-09 05:45:13'),
	(23, 32, 1, 1, '2025-05-10 03:54:13', '2025-05-10 03:54:13'),
	(24, 34, 1, 1, '2025-05-15 11:31:50', '2025-05-15 11:31:50'),
	(25, 35, 1, 1, '2025-05-15 11:32:19', '2025-05-15 11:32:19'),
	(26, 31, 27, 1, '2025-05-15 15:54:57', '2025-05-15 15:54:57'),
	(27, 36, 1, 1, '2025-05-16 09:21:13', '2025-05-16 09:21:13'),
	(28, 37, 1, 1, '2025-05-16 09:22:03', '2025-05-16 09:22:03'),
	(29, 38, 1, 1, '2025-05-16 09:33:22', '2025-05-16 09:33:22'),
	(31, 40, 1, 1, '2025-05-16 09:45:15', '2025-05-16 09:45:15'),
	(32, 41, 20, 1, '2025-05-18 04:16:00', '2025-05-18 04:16:00'),
	(33, 42, 28, 1, '2025-05-18 04:16:59', '2025-05-18 04:16:59'),
	(34, 43, 20, 1, '2025-05-18 04:38:40', '2025-05-18 04:38:40'),
	(35, 30, 2, 1, '2025-05-18 06:05:40', '2025-05-18 06:05:40'),
	(36, 44, 1, 1, '2025-05-18 07:39:14', '2025-05-18 07:39:14'),
	(37, 36, 31, 1, '2025-05-18 07:43:23', '2025-05-18 07:43:23'),
	(38, 35, 31, 1, '2025-05-18 08:19:31', '2025-05-18 08:19:31'),
	(39, 45, 20, 1, '2025-05-18 08:25:24', '2025-05-18 08:25:24'),
	(40, 46, 31, 1, '2025-05-18 08:35:11', '2025-05-18 08:35:11'),
	(41, 33, 30, 1, '2025-05-18 08:51:25', '2025-05-18 08:51:25'),
	(42, 47, 31, 1, '2025-05-19 05:34:45', '2025-05-19 05:34:45'),
	(43, 48, 31, 1, '2025-05-19 05:37:54', '2025-05-19 05:37:54'),
	(44, 49, 31, 1, '2025-05-19 05:40:15', '2025-05-19 05:40:15'),
	(45, 50, 31, 1, '2025-05-19 05:44:20', '2025-05-19 05:44:20'),
	(46, 51, 31, 1, '2025-05-19 05:45:54', '2025-05-19 05:45:54'),
	(47, 52, 31, 1, '2025-05-19 06:07:33', '2025-05-19 06:07:33'),
	(48, 53, 31, 1, '2025-05-19 06:08:12', '2025-05-19 06:08:12'),
	(49, 36, 8, 1, '2025-05-21 15:27:50', '2025-05-21 15:27:50'),
	(50, 36, 22, 1, '2025-05-23 06:52:27', '2025-05-23 06:52:27'),
	(51, 36, 4, 1, '2025-05-25 05:49:23', '2025-05-25 05:49:23'),
	(52, 36, 29, 1, '2025-05-28 10:14:58', '2025-05-28 10:14:58');

-- Dumping structure for table card_marking_system.student_reports
CREATE TABLE IF NOT EXISTS `student_reports` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `student_id` bigint unsigned NOT NULL,
  `tuition_id` bigint unsigned NOT NULL,
  `month_id` bigint unsigned NOT NULL,
  `year_id` bigint unsigned NOT NULL,
  `week1` tinyint(1) NOT NULL DEFAULT '0',
  `week2` tinyint(1) NOT NULL DEFAULT '0',
  `week3` tinyint(1) NOT NULL DEFAULT '0',
  `week4` tinyint(1) NOT NULL DEFAULT '0',
  `week5` tinyint(1) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `reminder_week3` tinyint(1) DEFAULT '0',
  `reminder_week4` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_reports_student_id_foreign` (`student_id`),
  KEY `student_reports_month_id_foreign` (`month_id`),
  KEY `student_reports_year_id_foreign` (`year_id`),
  KEY `fk_student_reports_tuitions1_idx` (`tuition_id`),
  CONSTRAINT `fk_student_reports_tuitions1` FOREIGN KEY (`tuition_id`) REFERENCES `tuitions` (`id`),
  CONSTRAINT `student_reports_month_id_foreign` FOREIGN KEY (`month_id`) REFERENCES `months` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_reports_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  CONSTRAINT `student_reports_year_id_foreign` FOREIGN KEY (`year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.student_reports: ~31 rows (approximately)
INSERT INTO `student_reports` (`id`, `student_id`, `tuition_id`, `month_id`, `year_id`, `week1`, `week2`, `week3`, `week4`, `week5`, `paid`, `reminder_week3`, `reminder_week4`, `created_at`, `updated_at`) VALUES
	(35, 30, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-28 03:14:06'),
	(36, 31, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(37, 32, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(38, 34, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(39, 35, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(40, 36, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(41, 37, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(42, 38, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(43, 40, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(44, 44, 1, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(45, 30, 2, 5, 1, 0, 0, 0, 0, 0, 0, 1, 1, '2025-05-23 07:22:57', '2025-05-25 06:39:09'),
	(46, 36, 8, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(47, 41, 20, 5, 1, 0, 0, 0, 0, 0, 0, 1, 1, '2025-05-23 07:22:57', '2025-05-25 06:40:30'),
	(48, 43, 20, 5, 1, 0, 0, 0, 0, 0, 0, 1, 1, '2025-05-23 07:22:57', '2025-05-25 06:40:30'),
	(49, 45, 20, 5, 1, 0, 0, 0, 0, 0, 0, 1, 1, '2025-05-23 07:22:57', '2025-05-25 06:40:30'),
	(50, 36, 22, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:23:05'),
	(51, 31, 27, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(52, 42, 28, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(53, 33, 30, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(54, 36, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(55, 35, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(56, 46, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(57, 47, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(58, 48, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(59, 49, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(60, 50, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(61, 51, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(62, 52, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(63, 53, 31, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-23 07:22:57', '2025-05-23 07:22:57'),
	(64, 36, 4, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-25 05:49:30', '2025-05-25 05:49:30'),
	(65, 36, 29, 5, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2025-05-28 10:15:04', '2025-05-28 10:15:04');

-- Dumping structure for table card_marking_system.tuitions
CREATE TABLE IF NOT EXISTS `tuitions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `day_id` bigint unsigned NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `class_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tuitions_days1_idx` (`day_id`),
  KEY `fk_tuitions_categories1_idx` (`category_id`),
  KEY `fk_tuitions_classes1_idx` (`class_id`),
  CONSTRAINT `fk_tuitions_categories1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_tuitions_classes1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`),
  CONSTRAINT `fk_tuitions_days1` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.tuitions: ~31 rows (approximately)
INSERT INTO `tuitions` (`id`, `day_id`, `category_id`, `class_id`, `created_at`, `updated_at`) VALUES
	(1, 7, 2, 1, '2025-04-28 13:40:25', '2025-05-03 04:54:06'),
	(2, 1, 1, 1, '2025-04-28 13:42:45', '2025-05-03 04:54:32'),
	(3, 6, 4, 1, '2025-04-28 14:40:05', '2025-05-03 04:57:20'),
	(4, 5, 1, 1, '2025-04-28 16:47:55', '2025-05-03 04:54:44'),
	(5, 1, 4, 1, '2025-04-28 16:51:42', '2025-05-03 04:55:22'),
	(6, 4, 2, 2, '2025-04-28 16:52:40', '2025-04-28 16:52:41'),
	(7, 4, 2, 2, '2025-04-28 17:04:31', '2025-04-28 17:04:32'),
	(8, 5, 1, 1, '2025-05-01 09:02:17', '2025-05-02 14:23:26'),
	(9, 3, 1, 1, '2025-05-01 09:09:27', '2025-05-01 09:09:27'),
	(10, 5, 2, 2, '2025-05-01 09:17:35', '2025-05-01 09:17:37'),
	(11, 2, 3, 2, '2025-05-01 09:20:30', '2025-05-01 09:20:31'),
	(12, 7, 3, 2, '2025-05-01 09:21:11', '2025-05-01 09:21:12'),
	(13, 4, 3, 2, '2025-05-01 09:21:56', '2025-05-01 09:21:56'),
	(14, 4, 2, 3, '2025-05-01 09:27:42', '2025-05-01 09:27:42'),
	(15, 3, 2, 3, '2025-05-01 09:28:21', '2025-05-01 09:28:21'),
	(16, 6, 2, 3, '2025-05-01 09:30:51', '2025-05-01 09:30:52'),
	(17, 1, 2, 3, '2025-05-01 09:31:48', '2025-05-01 09:31:48'),
	(18, 2, 2, 3, '2025-05-01 09:33:05', '2025-05-01 09:33:06'),
	(19, 6, 2, 3, '2025-05-01 09:33:38', '2025-05-01 09:33:39'),
	(20, 1, 2, 1, '2025-05-01 09:36:19', '2025-05-03 04:58:54'),
	(21, 6, 2, 1, '2025-05-01 09:36:58', '2025-05-03 05:02:25'),
	(22, 6, 2, 1, '2025-05-01 09:37:34', '2025-05-01 09:37:34'),
	(23, 6, 2, 1, '2025-05-01 09:38:29', '2025-05-03 05:02:56'),
	(24, 6, 2, 1, '2025-05-01 09:39:15', '2025-05-01 09:39:15'),
	(25, 7, 2, 1, '2025-05-01 09:40:03', '2025-05-03 05:03:15'),
	(26, 2, 2, 1, '2025-05-01 09:40:47', '2025-05-03 05:03:29'),
	(27, 5, 2, 1, '2025-05-01 09:41:19', '2025-05-03 05:03:41'),
	(28, 7, 2, 1, '2025-05-01 09:41:57', '2025-05-03 05:03:51'),
	(29, 4, 2, 1, '2025-05-01 09:42:38', '2025-05-01 09:42:39'),
	(30, 3, 2, 1, '2025-05-01 09:43:09', '2025-05-03 05:04:12'),
	(31, 5, 2, 1, '2025-05-18 06:54:50', '2025-05-18 06:54:51');

-- Dumping structure for table card_marking_system.tuitions_has_grades
CREATE TABLE IF NOT EXISTS `tuitions_has_grades` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tuition_id` bigint unsigned NOT NULL,
  `grade_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_tuitions_has_grades_grades1_idx` (`grade_id`),
  KEY `fk_tuitions_has_grades_tuitions1_idx` (`tuition_id`),
  CONSTRAINT `fk_tuitions_has_grades_grades1` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  CONSTRAINT `fk_tuitions_has_grades_tuitions1` FOREIGN KEY (`tuition_id`) REFERENCES `tuitions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.tuitions_has_grades: ~36 rows (approximately)
INSERT INTO `tuitions_has_grades` (`id`, `tuition_id`, `grade_id`, `created_at`, `updated_at`) VALUES
	(1, 2, 2, '2025-05-01 09:06:23', '2025-05-01 09:06:24'),
	(2, 2, 3, '2025-05-01 09:06:42', '2025-05-01 09:06:43'),
	(3, 4, 4, '2025-05-01 09:07:41', '2025-05-01 09:07:41'),
	(4, 4, 5, '2025-05-01 09:07:59', '2025-05-01 09:08:00'),
	(5, 8, 7, '2025-05-01 09:08:42', '2025-05-01 09:08:43'),
	(6, 8, 8, '2025-05-01 09:08:53', '2025-05-01 09:08:53'),
	(7, 8, 9, '2025-05-01 09:09:05', '2025-05-01 09:09:06'),
	(8, 9, 10, '2025-05-01 09:09:50', '2025-05-01 09:09:50'),
	(9, 9, 11, '2025-05-01 09:10:02', '2025-05-01 09:10:03'),
	(10, 1, 19, '2025-05-01 09:47:53', '2025-05-01 09:47:54'),
	(11, 3, 9, '2025-05-01 09:47:54', '2025-05-01 09:47:55'),
	(12, 5, 1, '2025-05-01 09:14:29', '2025-05-01 09:14:30'),
	(13, 11, 3, '2025-05-01 09:15:28', '2025-05-01 09:15:28'),
	(14, 7, 4, '2025-05-01 09:16:45', '2025-05-01 09:16:46'),
	(15, 10, 5, '2025-05-01 09:17:59', '2025-05-01 09:17:59'),
	(16, 11, 3, '2025-05-01 09:20:48', '2025-05-01 09:20:48'),
	(17, 12, 4, '2025-05-01 09:21:41', '2025-05-01 09:21:42'),
	(18, 13, 5, '2025-05-01 09:22:23', '2025-05-01 09:22:24'),
	(19, 14, 6, '2025-05-01 09:28:01', '2025-05-01 09:28:01'),
	(20, 15, 7, '2025-05-01 09:29:00', '2025-05-01 09:29:00'),
	(21, 16, 8, '2025-05-01 09:31:13', '2025-05-01 09:31:14'),
	(22, 17, 9, '2025-05-01 09:32:17', '2025-05-01 09:32:18'),
	(23, 18, 10, '2025-05-01 09:33:19', '2025-05-01 09:33:19'),
	(24, 19, 11, '2025-05-01 09:34:01', '2025-05-01 09:34:01'),
	(25, 20, 1, '2025-05-01 09:36:38', '2025-05-01 09:36:39'),
	(26, 21, 2, '2025-05-01 09:37:12', '2025-05-01 09:37:13'),
	(28, 22, 3, '2025-05-01 09:37:55', '2025-05-01 09:37:56'),
	(29, 23, 4, '2025-05-01 09:38:56', '2025-05-01 09:38:57'),
	(30, 24, 5, '2025-05-01 09:39:32', '2025-05-01 09:39:33'),
	(31, 25, 6, '2025-05-01 09:40:21', '2025-05-01 09:40:22'),
	(32, 26, 7, '2025-05-01 09:40:59', '2025-05-01 09:40:59'),
	(33, 27, 8, '2025-05-01 09:41:37', '2025-05-01 09:41:38'),
	(34, 28, 9, '2025-05-01 09:42:11', '2025-05-01 09:42:12'),
	(35, 29, 10, '2025-05-01 09:42:52', '2025-05-01 09:42:53'),
	(36, 30, 11, '2025-05-01 09:43:27', '2025-05-01 09:43:28'),
	(38, 31, 12, '2025-05-18 06:55:12', '2025-05-18 06:55:13');

-- Dumping structure for table card_marking_system.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_payment_week3` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `before_payment_week4` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_nursery_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade1_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade2_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade3_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade4_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade5_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade6_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade7_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade8_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade9_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade10_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_grade11_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `after_payment_spoken_template` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `mode` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `password`, `before_payment_week3`, `before_payment_week4`, `after_payment_template`, `after_payment_nursery_template`, `after_payment_grade1_template`, `after_payment_grade2_template`, `after_payment_grade3_template`, `after_payment_grade4_template`, `after_payment_grade5_template`, `after_payment_grade6_template`, `after_payment_grade7_template`, `after_payment_grade8_template`, `after_payment_grade9_template`, `after_payment_grade10_template`, `after_payment_grade11_template`, `after_payment_spoken_template`, `status`, `mode`, `image_path`, `created_at`, `updated_at`) VALUES
	(1, 'ZYNERGY', 'zynergyedu@gmail.com', '1234', 'payweek3', 'payweek4', 'after_pay_sin', 'pay0', 'pay1', 'pay2', 'pay3', 'pay4', 'pay5', 'pay06', 'pay7', 'pay8', 'pay9', 'pay10', 'pay11', 'paysp', 1, 'D', 'uploads/users/zynergy_814500.jpeg', '2025-04-24 13:32:25', '2025-05-21 15:12:57'),
	(2, 'ADMIN', 'admin@gmail.com', 'admin1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'D', 'uploads/users/zynergy_485784.jpeg', '2025-05-06 12:08:29', '2025-05-06 16:16:15');

-- Dumping structure for table card_marking_system.years
CREATE TABLE IF NOT EXISTS `years` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `year` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table card_marking_system.years: ~2 rows (approximately)
INSERT INTO `years` (`id`, `year`, `created_at`, `updated_at`) VALUES
	(1, 2025, '2025-03-01 10:44:13', '2025-03-01 10:44:15'),
	(2, 2026, '2025-03-01 10:44:25', '2025-03-01 10:44:25'),
	(3, 2027, '2025-03-01 07:14:48', '2025-03-01 07:14:48');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
