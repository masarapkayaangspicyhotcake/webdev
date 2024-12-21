-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2024 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sports_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coach_user_id` int(11) NOT NULL,
  `specialization` varchar(50) DEFAULT NULL,
  `moderator_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `event_location` varchar(255) DEFAULT NULL,
  `event_image` longtext DEFAULT NULL,
  `event_description` text DEFAULT NULL,
  `school_year` varchar(9) DEFAULT NULL,
  `published` enum('yes','no') DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `match_record`
--

CREATE TABLE `match_record` (
  `match_record_id` int(11) NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `ranking` varchar(255) DEFAULT NULL,
  `awards` varchar(255) DEFAULT NULL,
  `winners` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE `moderator` (
  `moderator_user_id` int(11) NOT NULL,
  `actions` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `registration_id` int(11) NOT NULL,
  `student_user_id` int(11) NOT NULL,
  `school_year` varchar(9) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL,
  `sport_name` varchar(100) NOT NULL,
  `sport_image` varchar(255) DEFAULT NULL,
  `sport_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sport_coordinator`
--

CREATE TABLE `sport_coordinator` (
  `coordinator_user_id` int(11) NOT NULL,
  `assigned_department` varchar(50) DEFAULT NULL,
  `reports` varchar(255) DEFAULT NULL,
  `moderator_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sport_event_coach`
--

CREATE TABLE `sport_event_coach` (
  `sec_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `coach_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sport_schedule`
--

CREATE TABLE `sport_schedule` (
  `schedule_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `moderator_user_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_user_id` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `id_image` varchar(255) DEFAULT NULL,
  `medcert` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `moderator_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_user_id`, `cor`, `id_image`, `medcert`, `sex`, `course`, `section`, `birthday`, `address`, `contact_no`, `moderator_user_id`) VALUES
(24, '????\0JFIF\0\0\0\0\0\0???ICC_PROFILE\0\0\0?lcms\0\0mntrRGB XYZ ?\0\0\0	\0\0acspMSFT\0\0\0\0sawsctrl\0\0\0\0\0\0\0\0\0\0\0\0\0\0??\0\0\0\0\0?-hand??\0=@??=@t,???\"?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	desc\0\0\0?\0\0\0_cprt\0\0\0\0\0wtpt\0\0\0\0\0rXYZ\0\0,\0\0\0gXYZ\0\0@\0\0\0bXYZ\0\0T\0\0\0rTRC\0\0h\0\0\0`g', '????\0JFIF\0\0\0\0\0\0???ICC_PROFILE\0\0\0?lcms\0\0mntrRGB XYZ ?\0\0\0	\0\0acspMSFT\0\0\0\0sawsctrl\0\0\0\0\0\0\0\0\0\0\0\0\0\0??\0\0\0\0\0?-hand??\0=@??=@t,???\"?\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0	desc\0\0\0?\0\0\0_cprt\0\0\0\0\0wtpt\0\0\0\0\0rXYZ\0\0,\0\0\0gXYZ\0\0@\0\0\0bXYZ\0\0T\0\0\0rTRC\0\0h\0\0\0`g', '????\0JFIF\0\0H\0H\0\0??\0C\0\n\n\n		\n\Z%\Z# , #&\')*)-0-(0%()(??\0C\n\n\n\n(\Z\Z((((((((((((((((((((((((((((((((((((((((((((((((((??\0??\"\0??\0\0\0\0\0\0\0\0\0\0\0\0\0??\0\0\0\0\0\0\0\0\0\0\0\0\0\0??\0\0\0\0??X\0\0\0\0\0\0', 'Male', 'df', 'fd', '0111-11-11', 'dff', '65456', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tournament`
--

CREATE TABLE `tournament` (
  `tournament_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `coordinator_user_id` int(11) NOT NULL,
  `student_user_id` int(11) DEFAULT NULL,
  `members` int(20) DEFAULT NULL,
  `round` int(20) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tryouts`
--

CREATE TABLE `tryouts` (
  `tryout_id` int(11) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `coach_user_id` int(11) NOT NULL,
  `coordinator_user_id` int(11) NOT NULL,
  `standing` varchar(100) NOT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `college` varchar(100) DEFAULT NULL,
  `datetime_sign_up` datetime DEFAULT current_timestamp(),
  `datetime_last_online` datetime DEFAULT current_timestamp(),
  `role` enum('student','coach','sport_coordinator','moderator','admin') NOT NULL DEFAULT 'student',
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `first_name`, `middle_name`, `last_name`, `email`, `college`, `datetime_sign_up`, `datetime_last_online`, `role`, `is_active`) VALUES
(3, 'admin', '$2y$10$vq514qeHbUzmdD.1ViNtP.rhA.vtfKlmcga2ksD6b1/Wu.cwlxe56', 'Nestyss', NULL, 'Omongos', 'admin@admin', NULL, '2024-12-20 10:31:06', '2024-12-20 10:31:06', 'admin', 1),
(20, 'studentss', '$2y$10$M/fRGGZc7O0GdW5Wj8pwDuGQo735NGAcxqL8N10gpcGKuZXOdaIqS', 'student', NULL, 'student', 'student@student', NULL, '2024-12-20 15:02:21', '2024-12-20 15:02:21', 'student', 1),
(24, 'elvintroy', '$2y$10$OLAf2.JoUY.vMykHKos7oeL4LtkFSuv.0KcxdaZmS9KKDmvgI8eoO', 'elvintroy@gmail.com', NULL, 'elvintroy', 'student', NULL, '2024-12-20 15:45:03', '2024-12-20 15:45:03', 'student', 1),
(25, 'hatdog', '$2y$10$t0GkQPS6dNlN3Biq.nXNJOP.u00ocbSKEqDFFFrfoFBGfrqf1.r9G', 'hatdog@hatdog', NULL, 'hatdog', 'student', NULL, '2024-12-20 15:49:36', '2024-12-20 15:49:36', 'student', 1),
(27, 'augeight123', '$2y$10$K6DXQlmmGLfaMg2gfpevMelHCX/gR0x0xskc2MSA/mahDuwe43aHa', 'augeight123f', NULL, 'augeight123l', 'augeight123@wmsu.edi.ph', NULL, '2024-12-20 15:59:31', '2024-12-20 15:59:31', 'student', 1),
(28, 'carl123', '$2y$10$td3yNPiNUYosyeeX3yt8Suv/O7Nl1qkoPRRaQ.eX.OPk.UMGJ8c1K', 'carl', NULL, 'saludo', 'carl@carl', NULL, '2024-12-20 16:08:21', '2024-12-20 16:08:21', 'coach', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coach_user_id`),
  ADD KEY `fk_coach_moderator` (`moderator_user_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `match_record`
--
ALTER TABLE `match_record`
  ADD PRIMARY KEY (`match_record_id`),
  ADD UNIQUE KEY `tournament_id` (`tournament_id`);

--
-- Indexes for table `moderator`
--
ALTER TABLE `moderator`
  ADD PRIMARY KEY (`moderator_user_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`registration_id`),
  ADD KEY `fk_registrations_student` (`student_user_id`);

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sport_id`);

--
-- Indexes for table `sport_coordinator`
--
ALTER TABLE `sport_coordinator`
  ADD PRIMARY KEY (`coordinator_user_id`),
  ADD KEY `fk_coordinator_moderator` (`moderator_user_id`);

--
-- Indexes for table `sport_event_coach`
--
ALTER TABLE `sport_event_coach`
  ADD PRIMARY KEY (`sec_id`),
  ADD KEY `fk_sec_sport` (`sport_id`),
  ADD KEY `fk_sec_event` (`event_id`),
  ADD KEY `fk_sec_coach` (`coach_user_id`);

--
-- Indexes for table `sport_schedule`
--
ALTER TABLE `sport_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `fk_schedule_event` (`event_id`),
  ADD KEY `fk_schedule_moderator` (`moderator_user_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_user_id`),
  ADD KEY `fk_student_moderator` (`moderator_user_id`);

--
-- Indexes for table `tournament`
--
ALTER TABLE `tournament`
  ADD PRIMARY KEY (`tournament_id`),
  ADD KEY `fk_tournament_sport` (`sport_id`),
  ADD KEY `fk_tournament_coordinator` (`coordinator_user_id`),
  ADD KEY `fk_tournament_student` (`student_user_id`);

--
-- Indexes for table `tryouts`
--
ALTER TABLE `tryouts`
  ADD PRIMARY KEY (`tryout_id`),
  ADD KEY `fk_tryouts_sport` (`sport_id`),
  ADD KEY `fk_tryouts_registration` (`registration_id`),
  ADD KEY `fk_tryouts_coach` (`coach_user_id`),
  ADD KEY `fk_tryouts_coordinator` (`coordinator_user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_record`
--
ALTER TABLE `match_record`
  MODIFY `match_record_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `registration_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sport_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sport_event_coach`
--
ALTER TABLE `sport_event_coach`
  MODIFY `sec_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sport_schedule`
--
ALTER TABLE `sport_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tournament`
--
ALTER TABLE `tournament`
  MODIFY `tournament_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tryouts`
--
ALTER TABLE `tryouts`
  MODIFY `tryout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `fk_coach_moderator` FOREIGN KEY (`moderator_user_id`) REFERENCES `moderator` (`moderator_user_id`),
  ADD CONSTRAINT `fk_coach_user` FOREIGN KEY (`coach_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `match_record`
--
ALTER TABLE `match_record`
  ADD CONSTRAINT `fk_match_record_tournament` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`tournament_id`);

--
-- Constraints for table `moderator`
--
ALTER TABLE `moderator`
  ADD CONSTRAINT `fk_moderator_user` FOREIGN KEY (`moderator_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `fk_registrations_student` FOREIGN KEY (`student_user_id`) REFERENCES `student` (`student_user_id`);

--
-- Constraints for table `sport_coordinator`
--
ALTER TABLE `sport_coordinator`
  ADD CONSTRAINT `fk_coordinator_moderator` FOREIGN KEY (`moderator_user_id`) REFERENCES `moderator` (`moderator_user_id`),
  ADD CONSTRAINT `fk_coordinator_user` FOREIGN KEY (`coordinator_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `sport_event_coach`
--
ALTER TABLE `sport_event_coach`
  ADD CONSTRAINT `fk_sec_coach` FOREIGN KEY (`coach_user_id`) REFERENCES `coach` (`coach_user_id`),
  ADD CONSTRAINT `fk_sec_event` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `fk_sec_sport` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`);

--
-- Constraints for table `sport_schedule`
--
ALTER TABLE `sport_schedule`
  ADD CONSTRAINT `fk_schedule_event` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`),
  ADD CONSTRAINT `fk_schedule_moderator` FOREIGN KEY (`moderator_user_id`) REFERENCES `moderator` (`moderator_user_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_student_moderator` FOREIGN KEY (`moderator_user_id`) REFERENCES `moderator` (`moderator_user_id`),
  ADD CONSTRAINT `fk_student_user` FOREIGN KEY (`student_user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `tournament`
--
ALTER TABLE `tournament`
  ADD CONSTRAINT `fk_tournament_coordinator` FOREIGN KEY (`coordinator_user_id`) REFERENCES `sport_coordinator` (`coordinator_user_id`),
  ADD CONSTRAINT `fk_tournament_sport` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`),
  ADD CONSTRAINT `fk_tournament_student` FOREIGN KEY (`student_user_id`) REFERENCES `student` (`student_user_id`);

--
-- Constraints for table `tryouts`
--
ALTER TABLE `tryouts`
  ADD CONSTRAINT `fk_tryouts_coach` FOREIGN KEY (`coach_user_id`) REFERENCES `coach` (`coach_user_id`),
  ADD CONSTRAINT `fk_tryouts_coordinator` FOREIGN KEY (`coordinator_user_id`) REFERENCES `sport_coordinator` (`coordinator_user_id`),
  ADD CONSTRAINT `fk_tryouts_registration` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`registration_id`),
  ADD CONSTRAINT `fk_tryouts_sport` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
