-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2023 at 06:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parentable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `type`, `parentable_type`, `parentable_id`, `created_at`, `updated_at`) VALUES
(1, 'public/storage/images/users/Rgy8RBtcxrWpl58T0arDeFAcru3KQu4pBfiY5Fa3.jpg', 'jpg', 'App\\Models\\User', 1, '2023-03-03 08:57:07', '2023-03-03 08:57:07'),
(2, 'public/images/users/vxkWHe4FC3HMlAUYpAXvzyksQIuEQoyvxtmWFsND.jpg', 'jpg', 'App\\Models\\User', 2, '2023-03-03 09:08:31', '2023-03-03 09:08:31'),
(3, 'public/images/users/RkCpgjCMSqF8ubTe8c4gYzgjH0NPhAO29TisJ10m.jpg', 'jpg', 'App\\Models\\User', 3, '2023-03-03 09:30:47', '2023-03-03 09:30:47'),
(4, 'public/images/users/xNkwmiXvjbtNKEVI0sfR6Q1BBwxnlZsAT14pEi95.jpg', 'jpg', 'App\\Models\\User', 4, '2023-03-03 09:33:26', '2023-03-03 09:33:26'),
(5, 'public/images/users/V5Ch2lUZSNNosjCzUbSekIAwETRKAohGPpiJus5r.jpg', 'jpg', 'App\\Models\\User', 5, '2023-03-03 10:29:13', '2023-03-03 10:29:13');

-- --------------------------------------------------------

--
-- Table structure for table `job_portals`
--

CREATE TABLE `job_portals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_deadline` date DEFAULT NULL,
  `job_details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_portals`
--

INSERT INTO `job_portals` (`id`, `job_title`, `job_location`, `company_name`, `job_salary`, `job_deadline`, `job_details`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Jr Developer', 'Uttara, sector-4', 'BIT', '15000/-', '2023-03-21', '<p>Job Summary: We are seeking an experienced web developer to join our team. The successful candidate will be responsible for developing and maintaining web applications using Laravel and React. The ideal candidate will have a strong background in web development, as well as experience with these specific technologies.</p><p>Responsibilities:</p><ul><li>Develop and maintain web applications using Laravel and React</li><li>Collaborate with designers and other developers to build responsive, user-friendly web interfaces</li><li>Write clean, efficient, and well-documented code</li><li>Troubleshoot and debug issues as they arise</li><li>Participate in code reviews to ensure quality and consistency</li></ul><p>Requirements:</p><ul><li>3+ years of experience in web development</li><li>Strong proficiency in Laravel and React</li><li>Familiarity with front-end technologies such as HTML, CSS, and JavaScript</li><li>Experience with RESTful APIs and integrating with third-party services</li><li>Familiarity with Git and version control systems</li><li>Strong problem-solving and analytical skills</li><li>Ability to work independently and as part of a team</li><li>Excellent communication and collaboration skills</li></ul><p>Education:</p><ul><li>Bachelor\'s degree in computer science or a related field preferred, but not required</li></ul><p>We offer competitive compensation packages, flexible work hours, and opportunities for professional development and growth. If you are a talented web developer with experience in Laravel and React, we encourage you to apply for this exciting opportunity.</p><p>&nbsp;</p><p>Send Your CV to<i><strong> hr@bit.bd,com</strong></i></p>', 0, NULL, '2023-03-04 11:19:22', '2023-03-04 11:33:00'),
(2, 'Senior Designer (Photoshop/Illustrator)', 'Khilkhet', 'Basis IT', '45000-60000 BDT', '2023-04-08', '<p>Job Summary: We are seeking an experienced Senior Designer with expertise in Photoshop and Illustrator to join our team. The successful candidate will be responsible for creating and executing design solutions for a wide range of projects, from branding and marketing collateral to web and mobile app interfaces. The ideal candidate will have a strong portfolio demonstrating their design expertise and experience with these specific technologies.</p><p>Responsibilities:</p><ul><li>Develop creative concepts and design solutions that align with project goals and objectives</li><li>Work collaboratively with clients and internal teams to develop and refine design concepts</li><li>Use Photoshop and Illustrator to create high-quality, visually appealing designs</li><li>Create visual assets for use in print, digital, and social media channels</li><li>Prepare designs for final output and production</li><li>Mentor junior designers and provide feedback on their work</li></ul><p>Requirements:</p><ul><li>5+ years of experience in graphic design or a related field</li><li>Expertise in Photoshop and Illustrator</li><li>Strong portfolio demonstrating design skills and experience working on a range of projects</li><li>Familiarity with design trends and best practices</li><li>Excellent communication and collaboration skills</li><li>Ability to work independently and as part of a team</li><li>Strong problem-solving and analytical skills</li></ul><p>Education:</p><ul><li>Bachelor\'s degree in graphic design or a related field preferred, but not required</li></ul><p>We offer competitive compensation packages, flexible work hours, and opportunities for professional development and growth. If you are an experienced Senior Designer with expertise in Photoshop and Illustrator, we encourage you to apply for this exciting opportunity.</p><p>&nbsp;</p><p>Send Your CV to<i><strong> info@basis.bd</strong></i></p>', 1, NULL, '2023-03-04 11:23:30', '2023-03-04 11:32:50');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_30_080802_create_permission_tables', 1),
(6, '2022_12_06_070819_create_images_table', 1),
(7, '2023_03_03_150217_add_statusto_users_table', 2),
(8, '2023_03_04_162232_create_job_portals_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-03-03 08:46:30', '2023-03-03 08:46:30'),
(2, 'student', 'web', '2023-03-03 08:57:38', '2023-03-03 08:57:38'),
(3, 'faculty', 'web', '2023-03-03 08:57:46', '2023-03-03 08:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `email_verified_at`, `phone`, `address`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, NULL, '017', NULL, '$2y$10$Fm9yrycjwda0fk2ElR6QGOyBKQ83GkdnwOSXSF1kGOO6GPaVmfrO6', 1, 'oI4daba2stHWP3oWDUjjppjHDh7nCmi0NhayZ3DSTxeDJ3wa71xFG5wcBfNW', '2023-03-03 08:46:30', '2023-03-03 08:57:06'),
(3, 'Jellyfish', 'jellyfish0196@gmail.com', 'male', NULL, '017', NULL, '$2y$10$IxU0kP58CPbOe86Nwnl2RetesSF6peg6bEdDx1QOxO4fZ0LxqiEc6', 1, 'vRDnpQuPPeRPg6acZfC2rUSH9zLoohCIX8jevyJn2eo5zcF5qGj1BBQ8TYJz', '2023-03-03 09:30:47', '2023-03-04 10:17:45'),
(5, 'Faculty1', 'faculty1@gmail.com', 'male', NULL, '017', NULL, '$2y$10$/qGcwwpFoO.RgtoTT8V70O.WHct6qcnJyg.UMzGTwRIAubEd9xLwq', 1, 'nIwxk4bZroVYfWlmWunzUalcJjKugVyVl0KkZ6GstRpFeKZ70D6LN4ja4WzT', '2023-03-03 10:29:13', '2023-03-03 11:10:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_parentable_type_parentable_id_index` (`parentable_type`,`parentable_id`);

--
-- Indexes for table `job_portals`
--
ALTER TABLE `job_portals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_portals`
--
ALTER TABLE `job_portals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
