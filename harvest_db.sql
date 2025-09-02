-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 09:18 AM
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
-- Database: `harvest_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

CREATE TABLE `directory` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `operation_time` varchar(100) NOT NULL,
  `contact_number` varchar(15) NOT NULL,
  `type` varchar(100) NOT NULL,
  `details_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `directory`
--

INSERT INTO `directory` (`id`, `name`, `address`, `operation_time`, `contact_number`, `type`, `details_link`) VALUES
(1, 'Malaysia Food Bank', '123 Jalan Food, Kuala Lumpur, Malaysia', 'Mon-Fri: 9 AM - 5 PM', '012-3456789', 'Food Distribution', 'https://foodbankmalaysia.com/'),
(2, 'Kechara Soup Kitchen', '17, Jalan Barat,Off Jalan Imbi,55100 Kuala Lumpur, Kuala Lumpur, Malaysia', 'Daily: 10 AM - 8 PM', '011-2233445', 'Soup Kitchen', 'https://kecharasoupkitchen.com/'),
(3, 'Kechara Food Bank', '17, Jalan Barat,Off Jalan Imbi,55100 Kuala Lumpur, Kuala Lumpur, Malaysia', 'Mon-Sat: 8 AM - 6 PM', '017-1122334', 'Food Distribution', 'https://kecharasoupkitchen.com/'),
(4, 'Komune Care Centre', 'Komune Living and Wellness, 21, Jalan Tasik Permaisuri 2, Bandar Tun Razak, 56000, Kuala Lumpur, Malaysia.', 'Mon-Fri: 10 AM - 4 PM', '03-9078 2626', 'Care Services', 'https://komunecare.com/?utm_source=adwords&utm_medium=ppc&utm_campaign=Komune%20CARE%20-%20Leads%20-%20Max%20Clicks&utm_term=senior%20care%20malaysia&hsa_acc=8960599693&hsa_cam=15269973769&hsa_grp=128431990463&hsa_ad=650013263726&hsa_src=g&hsa_tgt=kwd-326'),
(5, 'World Vision Malaysia', '532, Block A, Kelana Centre Point, Jalan SS 7/19, SS7, 47301 Petaling Jaya, Selangor', 'Mon-Sun: 9 AM - 7 PM', '019-3344556', 'Food Distribution', 'https://www.worldvision.com.my/en/sponsor-a-child/light-up-a-child-world-this-christmas?mc=15506&utm_term=non%20profit&utm_campaign=1000+Girls+CS+GENERIC+(SEM)&utm_source=adwords&utm_medium=ppc&hsa_acc=9466289323&hsa_cam=20371053484&hsa_grp=157948847731&h');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `donation_amount` decimal(10,2) NOT NULL,
  `card_no` varchar(16) NOT NULL,
  `card_holder` varchar(100) NOT NULL,
  `CVV2` char(3) NOT NULL,
  `exp` char(7) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `user_id`, `donation_amount`, `card_no`, `card_holder`, `CVV2`, `exp`, `created_at`) VALUES
(18, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:26:48'),
(19, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:27:17'),
(20, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:30:35'),
(21, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:33:35'),
(22, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:34:06'),
(23, 19, 1000.00, '18888888', 'chia yong qi', '222', '12/2028', '2024-12-12 22:40:07'),
(30, 26, 2000.00, '1111111111111111', 'wenjien', '543', '05/2002', '2024-12-13 08:29:38'),
(31, 26, 2000.00, '111111111111111', 'wenjien', '234', '12/2002', '2024-12-13 08:30:09'),
(32, 26, 1000.00, '1111111111111111', 'wenjien', '213', '12/2002', '2024-12-13 08:32:27'),
(33, 26, 1000.00, '1111111111111111', 'wenjien', '323', '12/2002', '2024-12-13 08:34:54'),
(34, 26, 1000.00, '1212121212121212', 'wenjien', '123', '05/2002', '2024-12-13 08:42:39'),
(36, 29, 1000.00, '1111111111111111', 'wenjien', '123', '05/2002', '2024-12-13 11:15:58'),
(37, 30, 1000.00, '1111111111111111', 'wenjien', '768', '05/2002', '2024-12-13 15:57:03'),
(40, 30, 1000.00, '1111111111111111', 'wenjien', '940', '12/2002', '2024-12-15 06:54:53'),
(41, 30, 1000.00, '1111111111111111', 'wenjien', '920', '10/2002', '2024-12-15 07:12:18'),
(42, 36, 1000.00, '1111111111111111', 'wenjien', '920', '12/2024', '2024-12-15 07:28:17'),
(43, 37, 1000.00, '1111111111111111', 'wenjien', '092', '08/2027', '2024-12-15 07:35:43'),
(44, 39, 1000.00, '1111111111111111', 'wenjien', '234', '10/2027', '2024-12-15 07:59:12'),
(45, 41, 1000.00, '111111111111111', 'wenjien', '920', '10/2039', '2024-12-15 08:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`) VALUES
(1, 29, 'Registration completed successfully!', '2024-12-13 03:14:28'),
(2, 29, 'Your donation was successfully completed!', '2024-12-13 03:15:59'),
(3, 29, 'You have received new points!', '2024-12-13 03:15:59'),
(4, 29, 'You have redeemed an item!', '2024-12-13 03:24:42'),
(5, 30, 'Registration completed successfully!', '2024-12-13 07:56:16'),
(6, 30, 'Your donation was successfully completed!', '2024-12-13 07:57:10'),
(7, 30, 'You have received new points!', '2024-12-13 07:57:10'),
(8, 30, 'You have redeemed an item!', '2024-12-13 07:58:01'),
(9, 31, 'Registration completed successfully!', '2024-12-13 12:08:22'),
(10, 24, 'Your donation was successfully completed!', '2024-12-14 15:18:04'),
(11, 24, 'You have received new points!', '2024-12-14 15:18:04'),
(12, 24, 'Your donation was successfully completed!', '2024-12-14 20:01:23'),
(13, 24, 'You have received new points!', '2024-12-14 20:01:23'),
(14, 24, 'You have redeemed an item!', '2024-12-14 20:15:20'),
(15, 30, 'Your donation was successfully completed!', '2024-12-14 22:54:58'),
(16, 30, 'You have received new points!', '2024-12-14 22:54:58'),
(17, 30, 'You have redeemed an item!', '2024-12-14 22:55:34'),
(18, 30, 'Your donation was successfully completed!', '2024-12-14 23:12:25'),
(19, 30, 'You have received new points!', '2024-12-14 23:12:25'),
(20, 30, 'You have redeemed an item!', '2024-12-14 23:12:56'),
(21, 35, 'Registration completed successfully!', '2024-12-14 23:16:52'),
(22, 36, 'Registration completed successfully!', '2024-12-14 23:26:52'),
(23, 36, 'Your donation was successfully completed!', '2024-12-14 23:28:24'),
(24, 36, 'You have received new points!', '2024-12-14 23:28:24'),
(25, 36, 'You have redeemed an item!', '2024-12-14 23:28:47'),
(26, 37, 'Registration completed successfully!', '2024-12-14 23:34:36'),
(27, 37, 'Your donation was successfully completed!', '2024-12-14 23:35:49'),
(28, 37, 'You have received new points!', '2024-12-14 23:35:49'),
(29, 39, 'Registration completed successfully!', '2024-12-14 23:57:40'),
(30, 39, 'Your donation was successfully completed!', '2024-12-14 23:59:17'),
(31, 39, 'You have received new points!', '2024-12-14 23:59:17'),
(32, 39, 'You have redeemed an item!', '2024-12-15 00:00:20'),
(33, 41, 'Registration completed successfully!', '2024-12-15 00:21:42'),
(34, 41, 'Your donation was successfully completed!', '2024-12-15 00:28:36'),
(35, 41, 'You have received new points!', '2024-12-15 00:28:36'),
(36, 41, 'You have redeemed an item!', '2024-12-15 00:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `resources_hub`
--

CREATE TABLE `resources_hub` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `resources_hub`
--

INSERT INTO `resources_hub` (`id`, `title`, `description`, `category`, `contact_info`, `link`) VALUES
(4, 'Community Library', 'A place to borrow books and study resources.', 'Education', 'contact@library.com', 'https://www.ppas.gov.my/'),
(5, 'Local Farmers Market', 'Find fresh produce and local goods.', 'Food', '012-3456789', 'https://www.facebook.com/farmersfreshmartsdnbhd'),
(6, 'City Animal Shelter', 'Animal Welfare', 'Nonprofit', '012-9876543', 'https://www.paws.org.my/');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `comment`, `rating`, `created_at`) VALUES
(1, 'asd', 3, '2024-12-08 07:31:06'),
(2, 'gdf', 4, '2024-12-14 20:24:24'),
(3, 'good job', 5, '2024-12-14 22:56:38'),
(4, 'good job', 4, '2024-12-14 23:13:42'),
(5, 'good job', 4, '2024-12-14 23:47:55'),
(6, 'good job', 5, '2024-12-15 00:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE `reward` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`id`, `name`, `code`, `image`, `price`) VALUES
(1, 'Rice - 1kg', 'A01', '/FinalAssignment/images/rice.jpg', 100.00),
(2, 'Toilet Paper', 'A02', '/FinalAssignment/images/toiletpaper.jpg', 50.00),
(3, 'Cooking Oil', 'A03', '/FinalAssignment/images/cookoil.jpg', 200.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pass` char(40) NOT NULL,
  `registration_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `pass`, `registration_date`) VALUES
(8, 'yap', 'yap@gmail.com', '4226580e360b94ccf49660f8e78cfc3b2fd9365a', '2024-11-27 16:24:42'),
(9, 'bob', 'bob@gmail.com', '48181acd22b3edaebc8a447868a7df7ce629920a', '2024-11-27 16:33:15'),
(10, 'hi', 'hi@gmail.com', 'c22b5f9178342609428d6f51b2c5af4c0bde6a42', '2024-11-27 16:33:55'),
(11, 'bye', 'bye@gmail.com', '78c9a53e2f28b543ea62c8266acfdf36d5c63e61', '2024-11-27 21:40:01'),
(12, 'hello', 'hello@gmail.com', 'aaf4c61ddcc5e8a2dabede0f3b482cd9aea9434d', '2024-11-27 21:41:30'),
(13, 'nice', 'nice@gmail.com', '5929e58a5aa1fde36b80ecc26548c50423ddf943', '2024-11-27 21:46:15'),
(14, 'can', 'can@gmail.com', '7e9219a0599eae1d9601883f894b4fbe60870586', '2024-11-27 21:46:58'),
(15, 'one', 'one@gmail.com', 'fe05bcdcdc4928012781a5f1a2a77cbb5398e106', '2024-11-27 21:47:33'),
(18, 'chia3', 'chia3@gmail.com', 'dfaf8921a7631943a42580806c7fb6e68f583a2d', '2024-11-30 12:55:04'),
(19, 'Chia', 'yongqichia@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-12-07 21:24:08'),
(20, 'Chia', 'yongqichia@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-08 15:14:30'),
(21, 'hello1', 'hello1@gmail.com', '88fdd585121a4ccb3d1540527aee53a77c77abb8', '2024-12-08 20:41:40'),
(22, 'hello2', 'hello2@gmail.com', '0f1defd5135596709273b3a1a07e466ea2bf4fff', '2024-12-10 00:12:25'),
(23, 'bye2', 'bye2@gmail.com', 'a88b220c84f5ba1d6395f857143148247c08903f', '2024-12-12 20:37:00'),
(26, 'harvest', 'harvest@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 07:45:49'),
(27, 'wenjien123', 'wenjien@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 10:40:34'),
(28, 'harvest111', 'harvest@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 10:42:25'),
(29, 'harvest12', 'harvest2002@gmail.co', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 11:14:20'),
(30, 'wenjien22', 'wji@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 15:56:01'),
(31, 'wenjien', 'wenjien@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-13 20:08:17'),
(32, 'harvest', 'harvest@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 00:26:14'),
(35, '20094363', 'wenjien@outlook.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 07:16:29'),
(36, 'newuser', 'harvest@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 07:26:45'),
(37, 'wenjien1', 'wenjien@hotmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 07:34:18'),
(38, 'newuser1', '20094363@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 07:49:49'),
(39, 'newuser2', 'newuser@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2024-12-15 07:57:36'),
(40, 'harvestnew', 'harvest@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2024-12-15 08:19:32'),
(41, 'newuser3', 'newuser@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 08:21:02'),
(42, 'wenjien44', '20094363@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-15 08:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_point`
--

CREATE TABLE `user_point` (
  `user_id` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_point`
--

INSERT INTO `user_point` (`user_id`, `points`) VALUES
(19, 0),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(19, 100),
(26, 150),
(26, 300),
(26, 200),
(26, 200),
(29, 0),
(30, 0),
(36, 0),
(37, 100),
(39, 0),
(41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` enum('Online','Physical') NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `registration_link` varchar(255) DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `current_attendees` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`id`, `title`, `description`, `type`, `location`, `date`, `start_time`, `end_time`, `registration_link`, `capacity`, `current_attendees`) VALUES
(64, 'Urban Gardening Workshop', 'Hands-on training for urban gardening.', 'Physical', '123 Garden Lane, KL', '2024-12-20', '20:00:00', '22:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 50, 13),
(65, 'Seed Starting', 'learn how to select the appropriate seeds for their garden.', 'Online', 'Zoom Meeting', '2024-12-15', '14:00:00', '16:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 50, 20),
(66, 'Worm and Backyard Composting', 'learn the basics when it comes to setting up and managing a backyard outdoor composter or indoor worm compost system.', 'Online', 'Microsoft Teams', '2024-12-18', '10:00:00', '12:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 40, 25),
(67, 'Cold Frame and Season Extension', 'learn how to grow delicious edibles all year round with season extension techniques..', 'Physical', 'Herb Haven, 456 Green Street, KL', '2024-12-22', '15:00:00', '17:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 30, 10),
(68, 'Lacto-Fermentation', 'Learn eco-friendly ways to manage pests in your garden.', 'Online', 'Google Meet', '2024-12-17', '11:00:00', '13:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 35, 15),
(69, 'Vertical Gardening Techniques', 'experience hands on how to cook and prepare a variety of lacto-fermented products s.', 'Physical', '789 Skyview Gardens, KL', '2024-12-19', '14:30:00', '16:30:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 50, 18),
(70, 'Aquaponics for Beginners', 'Introduction to aquaponics and sustainable farming.', 'Online', 'Zoom Meeting', '2024-12-21', '19:00:00', '21:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 45, 12),
(71, 'Winter Garden Planning', 'Prepare your garden for the winter season.', 'Online', 'Zoom Meeting', '2024-12-16', '09:00:00', '11:00:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 22, 22),
(72, 'Fruit Tree Pruning', 'Learn the techniques of pruning for healthy fruit trees.', 'Physical', 'Orchard Park, 987 Bloom Blvd, KL', '2024-12-23', '08:30:00', '10:30:00', 'https://youngurbanfarmers.com/gardening-services/workshops/', 40, 8),
(73, 'Water Conservation in Gardening', 'Tips and techniques for saving water while gardening.', 'Online', 'Google Meet', '2024-12-18', '13:00:00', '15:00:00', 'https://sdgacademy.org/goal/zero-hunger/', 25, 25),
(74, 'Garden Landscaping Basics', 'Introduction to designing beautiful garden landscapes.', 'Physical', 'Dream Gardens, 654 Design Street, KL', '2024-12-24', '16:00:00', '18:00:00', 'https://sdgacademy.org/goal/zero-hunger/', 50, 20),
(75, 'Seed Saving and Storage', 'Learn how to save and store seeds for future planting.', 'Online', 'Microsoft Teams', '2024-12-20', '17:00:00', '19:00:00', 'https://alison.com/tag/sdg-2-zero-hunger?utm_source=google&utm_medium=cpc&utm_campaign=Performance-Max_Tier-3_Workplace-Personality-Assessment&gad_source=1&gclid=Cj0KCQiApNW6BhD5ARIsACmEbkVdaCTYkrY3hOjxjDTVjEjildWdCMvSKQ2GG0XSHjBhPWi3EnsM7dMaAlkrEALw_wcB', 20, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `directory`
--
ALTER TABLE `directory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources_hub`
--
ALTER TABLE `resources_hub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward`
--
ALTER TABLE `reward`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_point`
--
ALTER TABLE `user_point`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `directory`
--
ALTER TABLE `directory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `resources_hub`
--
ALTER TABLE `resources_hub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reward`
--
ALTER TABLE `reward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donation`
--
ALTER TABLE `donation`
  ADD CONSTRAINT `donation_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_point`
--
ALTER TABLE `user_point`
  ADD CONSTRAINT `user_point_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
