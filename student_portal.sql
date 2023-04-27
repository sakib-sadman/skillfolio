-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2023 at 04:37 PM
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
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `major` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `user_id`, `institution`, `major`, `degree`, `start`, `end`, `created_at`, `updated_at`) VALUES
(2, 3, 'Mohammadpur Preparatory Higher & Secondary School', 'Science', 'SSC', '2006', '2014', '2023-03-05 16:29:01', '2023-03-05 16:29:01'),
(3, 3, 'B. A.F Shaheen College', 'Science', 'HSC', '2014', '2016', '2023-03-05 16:29:25', '2023-03-05 16:29:25'),
(4, 3, 'United International University', 'Web Development', 'BSCSE', '2017', '2021', '2023-03-05 16:29:56', '2023-03-05 16:29:56'),
(5, 3, 'United International University', 'Software Engineering', 'MSCSE', '2023', 'present', '2023-03-05 16:30:23', '2023-03-05 16:31:48');

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
(3, 'public/storage/images/users/Eyygwhu8Zo4o50R6E4IKBzt7iBhALevwvTNGj82a.jpg', 'jpg', 'App\\Models\\User', 3, '2023-03-16 16:26:20', '2023-03-16 16:26:20');

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
(1, 'Junior React Developer', 'Katabon', 'Genesis', '15000/- BDT', '2023-03-25', '<p>Job Type: Full-Time</p><p>Job Description:</p><p>We are seeking a Junior React Developer to join our team. As a Junior React Developer, you will work closely with senior developers and project managers to develop and maintain web applications using ReactJS. You will also have the opportunity to learn and work with other cutting-edge technologies and frameworks.</p><p>Responsibilities:</p><ul><li>Develop new user-facing features using ReactJS</li><li>Build reusable components and libraries for future use</li><li>Translate designs and wireframes into high-quality code</li><li>Optimize applications for maximum speed and scalability</li><li>Collaborate with other team members and stakeholders to deliver high-quality products</li><li>Troubleshoot and debug issues as they arise</li><li>Keep up to date with emerging trends and technologies in web development</li></ul><p>Requirements:</p><ul><li>Strong proficiency in ReactJS, with a good understanding of its core principles</li><li>Familiarity with popular ReactJS workflows such as Redux or MobX</li><li>Knowledge of HTML, CSS, and JavaScript</li><li>Experience with Git and version control</li><li>Ability to write clean, maintainable code</li><li>Strong problem-solving and analytical skills</li><li>Excellent communication and teamwork skills</li><li>Bachelor\'s degree in Computer Science or related field is preferred, but not required</li></ul><p>Benefits:</p><ul><li>Competitive salary and benefits package</li><li>Opportunities for professional development and growth</li><li>Collaborative and supportive work environment</li><li>Work on interesting and challenging projects</li></ul><p>If you are a self-starter with a passion for web development and a desire to learn and grow, we encourage you to apply for this exciting opportunity.</p><p>&nbsp;</p><p>Send your email to hr@genesis.com</p>', 1, NULL, '2023-03-05 08:22:08', '2023-03-05 08:22:08'),
(2, 'Junior Laravel Developer', 'Katabon', 'Medigene IT', '25000/- BDT', '2023-03-17', '<p>Job Type: Full-Time</p><p>Job Description:</p><p>We are seeking a Junior Laravel Developer to join our team. As a Junior Laravel Developer, you will work closely with senior developers and project managers to develop and maintain web applications using Laravel PHP framework. You will also have the opportunity to learn and work with other cutting-edge technologies and frameworks.</p><p>Responsibilities:</p><ul><li>Develop and maintain web applications using Laravel PHP framework</li><li>Collaborate with other team members and stakeholders to deliver high-quality products</li><li>Translate designs and wireframes into high-quality code</li><li>Optimize applications for maximum speed and scalability</li><li>Troubleshoot and debug issues as they arise</li><li>Keep up to date with emerging trends and technologies in web development</li></ul><p>Requirements:</p><ul><li>Strong proficiency in Laravel PHP framework, with a good understanding of its core principles</li><li>Knowledge of PHP, HTML, CSS, and JavaScript</li><li>Experience with MySQL and database design</li><li>Ability to write clean, maintainable code</li><li>Strong problem-solving and analytical skills</li><li>Excellent communication and teamwork skills</li><li>Bachelor\'s degree in Computer Science or related field is preferred, but not required</li></ul><p>Benefits:</p><ul><li>Competitive salary and benefits package</li><li>Opportunities for professional development and growth</li><li>Collaborative and supportive work environment</li><li>Work on interesting and challenging projects</li></ul><p>If you are a self-starter with a passion for web development and a desire to learn and grow, we encourage you to apply for this exciting opportunity.</p><p>&nbsp;</p><p>Send your CV to hr@gmail.com.uiu.ad</p>', 0, NULL, '2023-03-05 08:23:25', '2023-03-05 09:22:44'),
(3, 'Senior Devops Engineer', 'Dhaka, Shahbag-1233', 'Softuculous', '150000/- BDT', '2023-04-01', '<p>Job Summary: We are looking for a skilled and experienced DevOps Engineer to join our team. As a DevOps Engineer, you will be responsible for developing and implementing DevOps methodologies, automating infrastructure and deployment pipelines, and ensuring the reliability, availability, and scalability of our systems. You will work closely with developers, QA engineers, and operations teams to ensure that our software is deployed quickly and reliably. The ideal candidate will have a solid understanding of DevOps principles and practices, experience with cloud platforms, and strong scripting and automation skills.</p><p>Responsibilities:</p><ul><li>Develop and implement DevOps methodologies to streamline software development and delivery processes</li><li>Automate infrastructure and deployment pipelines using tools like Ansible, Terraform, and Jenkins</li><li>Manage and configure cloud-based environments (AWS, Azure, GCP)</li><li>Collaborate with developers, QA engineers, and operations teams to ensure the reliability, availability, and scalability of our systems</li><li>Develop and maintain monitoring, logging, and alerting systems to identify and resolve issues proactively</li><li>Implement security best practices and ensure compliance with regulatory requirements</li><li>Continuously evaluate and improve the performance and scalability of our systems</li><li>Document processes, procedures, and tools to ensure consistency and knowledge transfer across the team</li></ul><p>Requirements:</p><ul><li>Bachelor\'s degree in Computer Science, Engineering, or a related field</li><li>3+ years of experience in DevOps or a related field</li><li>Strong understanding of DevOps principles and practices</li><li>Experience with cloud platforms (AWS, Azure, GCP)</li><li>Strong scripting and automation skills (e.g., Python, Bash, PowerShell)</li><li>Experience with configuration management tools (e.g., Ansible, Puppet, Chef)</li><li>Experience with containerization and orchestration tools (e.g., Docker, Kubernetes)</li><li>Experience with continuous integration and deployment tools (e.g., Jenkins, GitLab CI/CD)</li><li>Strong problem-solving and analytical skills</li><li>Excellent communication and collaboration skills</li><li>Ability to work independently and as part of a team in a fast-paced environment</li></ul><p>If you think you have the right skills and experience for this role, we would love to hear from you. Please submit your resume and cover letter to apply for this position. <strong>kia@gmail.com</strong></p>', 1, NULL, '2023-03-05 09:27:07', '2023-03-05 09:27:07'),
(4, 'Weapons Specialists', 'Jazmyneview', 'Altenwerth-Hudson', '49289', '2023-06-30', 'Cum dolores velit veritatis rerum voluptas aut expedita rerum. Necessitatibus consequatur rerum laborum aperiam. Dolorum earum perspiciatis vero. Dolorum minima consequatur alias.\n\nDolores magnam voluptatem atque labore quasi. Suscipit sunt incidunt ipsa beatae quod autem qui. Voluptatum aut culpa et rem. Enim odio deleniti est aut totam.\n\nDeserunt iure suscipit nulla et ut suscipit harum. Placeat velit iste aspernatur voluptatem. Id unde ipsum est fugiat officia et.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(5, 'Log Grader and Scaler', 'Gulgowskiville', 'Hartmann Ltd', '31584', '2023-08-12', 'Accusantium ipsa quisquam iusto id non tempora nam. Dolorem possimus rerum quibusdam aspernatur voluptas aut voluptatum aut. Omnis officia ut delectus quas.\n\nEt atque aliquam id. Inventore velit voluptas dolorem odio adipisci voluptates accusamus. Impedit inventore possimus quibusdam inventore non non quasi. Recusandae fuga aut delectus a. Rerum minima doloribus aut quia ducimus aut.\n\nSed praesentium quaerat aliquam. Eius explicabo voluptas laboriosam dolorum velit odio totam. Maxime repellendus aliquam consectetur quibusdam cum aperiam.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(6, 'Lodging Manager', 'Adelaton', 'Fahey, Orn and Fadel', '40363', '2023-04-09', 'Exercitationem sunt deserunt accusamus nihil illum est consequatur. Repellat qui odio eum dolorem velit fugit eius. Necessitatibus sunt est enim porro esse at.\n\nQuas fugiat necessitatibus deserunt recusandae doloribus commodi vel. Quibusdam molestias sed dolorem quos voluptatem in et. Est nihil aut et natus in quasi.\n\nSunt sint quod vel hic tempora. Ea ipsum quasi odio et. Est non et eius maiores eius.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(7, 'Housekeeper', 'East Aliyah', 'Heaney-Schiller', '22554', '2023-09-09', 'Alias quis placeat aut laboriosam qui dicta exercitationem. Rem dolorem voluptatem dolorem nisi neque maiores. Minus omnis nostrum sed nostrum cum velit nisi.\n\nAutem voluptas non aperiam tempora. Suscipit eligendi aut doloremque aut dolore rerum ex cum. Nihil explicabo ullam commodi provident. Deserunt unde ea excepturi est iste nemo.\n\nQuisquam dolor labore autem id molestias voluptatibus minus. Non et temporibus temporibus quia nostrum eum pariatur. Accusantium est quis et non ut sequi. Iusto voluptatem optio consequuntur veritatis hic.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(8, 'Chemist', 'Cecilstad', 'Hickle PLC', '59907', '2023-04-19', 'Blanditiis accusamus earum cum aliquid excepturi ut. Modi consequatur est aut ducimus doloremque aut. Officia officiis molestiae nemo dolor sed delectus. Perspiciatis ab quia consequatur ad natus.\n\nPlaceat numquam nobis et quia. Soluta saepe ut aperiam. Odio cupiditate quia non est harum voluptates vel ut.\n\nRecusandae magni qui vero neque officia atque. Deserunt illum commodi cum veritatis. Enim dolor alias quo. Doloribus nihil reiciendis itaque nihil magni assumenda.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(9, 'Animal Trainer', 'Annaville', 'Koelpin-Davis', '53281', '2023-12-10', 'Nisi culpa aut itaque nihil totam aut autem. Animi corporis nostrum tempora.\n\nVelit aperiam quis dolorum et sed consequatur. Nisi illo consequuntur fugiat ut hic voluptatem et. Ut ut quia exercitationem iure dolore vero provident. Dicta eius ad modi asperiores harum.\n\nModi officia ipsam esse ut non possimus assumenda quia. Et nihil est asperiores fugit tempore. Sed quia voluptate est. Nobis tenetur explicabo corrupti et ab deleniti magni nobis.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(10, 'Physicist', 'Port Clarissa', 'Rau, Ortiz and Johnston', '49626', '2023-10-14', 'Officia quo corrupti nobis et deleniti qui. Dicta ipsum et hic magnam quos molestiae. Nulla dolorem quaerat cupiditate velit modi cum aut.\n\nAtque et error enim et. Aut doloremque est voluptatem facere corporis quia et. Maxime ut illo rerum enim quis. Impedit esse dolorem aut voluptates.\n\nDeserunt ipsam quaerat vel officia modi saepe. Consectetur rerum ut optio doloribus recusandae accusamus. Inventore est tempore iure non rerum aperiam. Adipisci ea ut cum.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(11, 'Transformer Repairer', 'Port Evangelineport', 'Rosenbaum-Altenwerth', '76454', '2023-03-08', 'Asperiores dolore eius quia. Ad sit doloremque doloremque praesentium est sunt. Quas perferendis odio facilis recusandae in est dolorem ducimus. Sint velit vel laudantium quis in minus dignissimos cum.\n\nExercitationem aut laudantium inventore excepturi enim iusto. Possimus distinctio voluptas rerum distinctio explicabo. Sit et quia non aliquid adipisci non. Commodi doloremque dolores molestiae perferendis. Est iusto eius eius harum molestiae eos reprehenderit deserunt.\n\nAut iste aspernatur odio officiis cupiditate reiciendis voluptas. Deleniti perferendis debitis quisquam numquam autem. Quasi amet provident sit corporis culpa. Incidunt eaque omnis quos quisquam. Reiciendis ut sequi saepe iusto repudiandae sit.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(12, 'Manager of Food Preparation', 'Osinskichester', 'Torphy, Schuppe and Koch', '49316', '2023-10-26', 'Ducimus facere et perspiciatis tenetur impedit nam. Occaecati quidem ut quia repellat. Est veniam aut sint sed dignissimos suscipit. Ullam mollitia illum aliquam temporibus consequatur.\n\nTotam quod asperiores magnam sequi qui atque fugiat voluptatum. Dolore et delectus eum. Soluta ipsam eos qui nostrum.\n\nDolorum praesentium doloribus dolores delectus. Doloribus dolore voluptas atque voluptatibus eaque. Ea consequatur ad delectus. Ipsa molestias fugiat delectus voluptatum placeat ut qui.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(13, 'Food Science Technician', 'Port Marlene', 'King-Williamson', '24454', '2023-04-09', 'Sed blanditiis et inventore error omnis aut nisi. Et omnis sapiente nostrum iste et. Quia quasi numquam itaque vero ullam tempora corrupti. Itaque porro voluptatum quaerat repellat.\n\nMaxime recusandae iusto omnis illum voluptatum. Tempora cum eius et aut. Quis aspernatur qui blanditiis delectus recusandae maxime. Distinctio odio expedita necessitatibus.\n\nDebitis dolor eligendi iusto et optio vitae asperiores. Sit animi facere officiis debitis eos ea consequuntur. Consequatur similique optio et. Eveniet beatae id qui nulla suscipit rerum vitae nulla.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(14, 'Mechanical Engineer', 'Lake Wilbertmouth', 'Strosin, Romaguera and Auer', '48348', '2023-12-16', 'Animi est omnis modi consequuntur fugit explicabo. In aspernatur quia ad. Perspiciatis ipsam quo qui est. Temporibus sit consectetur perferendis.\n\nDistinctio id reprehenderit dolor dicta. Consectetur officia error minus ullam. Et vel nihil pariatur adipisci quisquam amet.\n\nIn quia debitis accusamus atque. Explicabo dolores et impedit velit autem hic. Totam ad qui blanditiis sunt odio et expedita. Vel maiores omnis et repudiandae quia vel. Autem nihil non iusto distinctio.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(15, 'Highway Patrol Pilot', 'Port Marisashire', 'Kiehn Ltd', '38052', '2023-04-08', 'Quos quod ea recusandae voluptatem. Cumque voluptatibus eveniet veritatis est aut et. Repellat exercitationem earum aut asperiores ea. Qui dicta et sint et minima fugiat odio.\n\nQuia qui soluta et. Aliquam voluptatem mollitia quia deserunt voluptatum molestias ipsum. Voluptates atque rem natus dolor ut repellendus dolorum. Non adipisci voluptatem sint similique.\n\nNeque necessitatibus consectetur sint laudantium omnis iusto molestias. Animi nobis hic et libero assumenda inventore et. Reiciendis quaerat autem quo tempore. Numquam ab saepe similique libero nemo pariatur nam. Minima libero esse dolorem sit rerum.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(16, 'Telemarketer', 'South Vernonmouth', 'Cruickshank-Keeling', '35269', '2023-09-26', 'Autem est voluptas maiores qui. Atque error accusantium consequatur dolore. Nulla ut magnam voluptatem ut dolores molestiae beatae. Inventore iure et numquam quibusdam delectus dolores.\n\nEt eos sint ea. Est fugiat velit molestias et ut. Maxime ratione nesciunt soluta molestias. Sequi harum debitis possimus deserunt. Omnis provident ut a et aut tempora et cumque.\n\nQui amet nostrum officia quo voluptatem occaecati. Non sed porro aut explicabo qui alias et. Odit reiciendis velit odio vero velit quis.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(17, 'Precision Dyer', 'Sheridanland', 'Runolfsson-Wyman', '76600', '2023-07-30', 'Officia porro in amet maxime a. Dolorem ea sunt et.\n\nNon est possimus consectetur eos quas. Sapiente commodi quae qui dolorem eaque cupiditate et. Tempore alias perspiciatis voluptatem autem dolores enim error.\n\nDebitis molestiae praesentium qui natus corrupti consequatur. Voluptas est possimus neque quod aperiam molestias. Quasi minus mollitia et deserunt molestias impedit accusantium sed. Deleniti veniam animi qui ut dolorem cumque.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(18, 'Gas Appliance Repairer', 'Geraldinefort', 'Connelly Group', '70859', '2023-10-22', 'Omnis qui suscipit quis qui quibusdam illum. Exercitationem autem eos in illum qui est. Neque asperiores est aut necessitatibus. Sunt iure sequi veritatis minima.\n\nVelit in minima quia qui. Eum aut perspiciatis praesentium rerum dicta repellat. Cum ab et laborum cum.\n\nDolores totam vitae quam impedit. Eius qui a ipsa atque reprehenderit dolores et. Consequatur provident fugiat rerum itaque quia alias odit et.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(19, 'Roofer', 'West Eudoraberg', 'Nicolas, Smitham and McCullough', '52837', '2023-10-28', 'Vel cumque quidem omnis sed veniam qui. Sunt sint omnis doloremque vel. Molestias nobis quisquam voluptatem voluptate. A ea fugiat itaque laboriosam velit reprehenderit.\n\nAd voluptatem hic qui. Et tempore consequatur ut libero beatae debitis accusamus voluptatem. Eveniet eos magni aspernatur quia asperiores natus. Nam sunt minima quos et occaecati earum maxime. Et aperiam modi eveniet ut.\n\nConsequuntur aut blanditiis et quia. Excepturi magni incidunt voluptas fugiat rerum et nisi consequatur.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(20, 'Postal Service Mail Sorter', 'Huldamouth', 'Okuneva, Schneider and Blick', '77131', '2023-03-25', 'Eius et sed cumque dolorum consectetur. Ut autem quis facere voluptates incidunt possimus. Voluptates dolorem ipsa illo et accusamus. Veniam corporis ipsam explicabo officia ea.\n\nCorporis quod error inventore aut. Voluptas aut enim tenetur recusandae et exercitationem aut officiis.\n\nQuos aut neque odit cum ullam. Quibusdam tempora laboriosam quae nemo itaque ut dolorum.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(21, 'Woodworking Machine Setter', 'Janeborough', 'Lemke, Satterfield and Douglas', '48063', '2024-01-20', 'Est fugiat debitis et dolor ea voluptatem quo veniam. Hic nihil et eum vel. Omnis modi ea non aut maiores.\n\nUnde sunt temporibus qui fugiat qui temporibus. Cupiditate aliquid in repudiandae voluptates excepturi. Quo est sapiente tenetur et molestiae.\n\nEum et similique minus modi maiores inventore inventore eum. Qui laborum dignissimos eaque dolor numquam. Consequuntur quidem libero vel inventore et. Perspiciatis est ipsam tempora doloribus. Provident repudiandae corporis incidunt ut soluta vel.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(22, 'CFO', 'Donside', 'Lynch-Batz', '78348/- BDT', '2023-09-04', '<p>At quisquam quia reprehenderit voluptatem dignissimos ea suscipit. Quisquam suscipit minima qui doloremque perferendis aliquid. Ea autem aspernatur quis iure. Tempore est voluptatem amet facilis. Qui in consequuntur magnam corrupti reprehenderit fugit itaque ut. Ab porro quo eaque. Corrupti odio quos est at est a nesciunt. Accusantium corrupti fugiat ipsa doloribus et. Enim quo consequatur non inventore error voluptates quod. Molestias molestiae qui autem non officiis. Non esse sed ut molestiae recusandae et unde. Unde et molestiae distinctio.</p>', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 17:44:40'),
(23, 'Pump Operators', 'Port Darrinstad', 'Veum and Sons', '74713', '2023-04-23', 'Laborum a deserunt perferendis minus. Qui provident eos repudiandae corrupti veritatis. Ut similique et ullam tempore dolor est soluta. Voluptas placeat necessitatibus molestias est autem.\n\nVoluptates ipsum voluptas beatae voluptatibus. Nisi illo aut atque dolor placeat dignissimos est. Quia et sed rerum assumenda facilis tempore. Aut iusto porro nesciunt sint esse sequi repudiandae.\n\nCommodi eos et aut consequatur enim aut ipsam. Nam dolorum culpa facere fuga nulla veritatis praesentium. Rem eum sint et pariatur deleniti sequi et.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(24, 'Pharmacist', 'Port Delilah', 'Hayes Inc', '29567', '2023-11-09', 'Officiis voluptas ut ut aut enim. Fuga laudantium error fugit unde similique distinctio consequatur. Ut quidem qui sed est enim.\n\nQui assumenda qui ut magnam et ut ducimus. Reprehenderit et cumque quo cum perspiciatis. Provident enim consequatur enim maxime sunt sint dolore tempore.\n\nPraesentium et dolorem optio non dolor aut vitae. Ut minima consequatur nostrum quam est sequi et. Et ut quos incidunt id accusantium.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(25, 'Textile Knitting Machine Operator', 'North Gracielabury', 'Lebsack, Gibson and Schoen', '32802', '2023-04-26', 'Et ea hic id incidunt. Iusto molestiae quia nihil facilis ut corporis.\n\nId similique sed vero aut. Non totam impedit quidem ea architecto expedita. Ullam asperiores quam quos incidunt aut quod. Quia perferendis quia nisi tempora cumque et.\n\nFacere inventore enim sequi ipsam nihil commodi voluptatem. Accusantium architecto quia quam ullam perferendis. Optio a non accusantium voluptatem voluptatem architecto.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(26, 'Pantograph Engraver', 'Harbermouth', 'Pollich, Schultz and Swaniawski', '40914', '2023-06-17', 'Consequuntur eum est est ut rem nulla. Dolores ipsam eum aut ad ea. Animi nemo rerum consectetur sed maxime quidem nemo. Corrupti ea dolor cupiditate dolore nihil molestiae eveniet.\n\nNihil qui odit amet quaerat ipsum. Nemo quod eos fugit impedit vero porro nihil. In non nobis illo at id inventore. Sed at consectetur rerum et.\n\nDolorem consequatur sunt qui sint. Voluptatum voluptates quisquam quis sit ut ut aut qui.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(27, 'Interaction Designer', 'Hermanborough', 'Abshire LLC', '52014', '2023-04-26', 'Et neque ab delectus sunt et. Expedita vel et et autem quia est. Illum suscipit qui sunt quam earum non et. Excepturi est aspernatur debitis placeat eum.\n\nIpsum sunt accusamus aut et accusantium ad et possimus. Nam quas ut laudantium voluptatibus aliquam omnis. Pariatur assumenda debitis est deserunt provident non.\n\nModi cum rerum vel qui. Sint cupiditate et eveniet consequatur debitis veritatis qui. In voluptate sint accusantium. Tenetur quasi harum vel maiores ut non.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(28, 'Photographic Reproduction Technician', 'West Katrinamouth', 'McCullough, Friesen and Ankunding', '39463', '2023-03-11', 'Quisquam laboriosam expedita quasi commodi. Ut qui maiores hic voluptatem. Adipisci maxime unde aliquid quia quidem qui. Itaque ab illum rerum saepe dolor.\n\nTemporibus nesciunt similique autem numquam. Et exercitationem eos ex eligendi. Eos soluta earum asperiores officia fuga. Ipsum ipsa hic velit ipsum temporibus.\n\nQuis assumenda quidem labore neque qui velit ipsa. Molestiae repellendus eveniet dolores reiciendis veritatis quaerat ut. Non aliquid similique eaque molestiae qui tempora est.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(29, 'Baker', 'Abernathyview', 'Waelchi LLC', '43967', '2024-01-24', 'Sint consequatur molestias ut. Quaerat aut amet consequatur in quia dolor exercitationem. Perferendis facilis voluptas assumenda pariatur omnis. Explicabo et ut ad sunt. Nesciunt ut sint velit et rerum debitis.\n\nMinima officia est non similique nihil et voluptatum. Odio ad magni iusto perspiciatis non enim. Occaecati impedit reiciendis dolore nihil. Sit in quia sint et qui veritatis rerum.\n\nEum debitis debitis occaecati fugit consequuntur ex. Ducimus neque illo quasi repellat sed sit. Exercitationem cum ut alias molestiae sed soluta. Nihil eveniet possimus aut nemo.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(30, 'Electrician', 'New Mauricio', 'Smith, Heller and McCullough', '48708', '2023-12-25', 'Quo exercitationem eum et laudantium. Iusto alias porro et veritatis. Libero voluptatem sunt consequatur repellat aut. Aperiam repellendus doloremque quia aliquam sed pariatur.\n\nEnim tempora deserunt consectetur impedit ipsa autem. Molestiae sit aliquid et aut animi iste autem dolorem. Ad repellendus perferendis magni deleniti provident.\n\nMollitia dolores facere aliquam. Dignissimos officiis earum ipsum quod excepturi nisi. Praesentium sed molestiae animi dolor pariatur.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(31, 'Professor', 'Alshire', 'Lueilwitz, Cummerata and Abernathy', '71449', '2023-08-11', 'Repellendus placeat accusantium nemo. Et ducimus omnis et corrupti quidem quam culpa. Dolorem aut molestias minima blanditiis est qui voluptatem. Eos et quaerat placeat debitis rerum. Eius aut ab quisquam et.\n\nQuos repellendus eveniet ipsam eaque repellendus. Laborum est laboriosam qui totam inventore libero. Velit molestiae dolore minus voluptatem pariatur eos. Dignissimos nihil temporibus quo omnis at libero aliquam.\n\nIure quibusdam fugiat eveniet sint. Magnam quae aspernatur est. Rerum repudiandae sapiente deleniti aut.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(32, 'Boilermaker', 'Lake Garrettbury', 'Sanford, Reynolds and Kutch', '70317', '2023-06-29', 'Minus deleniti delectus tenetur vel exercitationem temporibus explicabo. Ab voluptas corrupti molestias officiis aut hic. Labore tenetur placeat provident voluptatem.\n\nFuga id ratione quis. Odio dolorem dolores laborum iusto autem facilis et. Alias totam provident consequuntur.\n\nLibero libero iure asperiores libero. Deserunt ex et sed ipsum rerum dolorum. Porro dolorum sunt rerum animi. Aspernatur laudantium modi corrupti. Distinctio quis ea aut qui aut voluptas eos et.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(33, 'Forging Machine Setter', 'Lake Heloise', 'Hodkiewicz, Sauer and Casper', '59063', '2023-04-27', 'Nobis eveniet tempora optio. Aspernatur voluptatem nemo nemo. Est harum a est non fugiat.\n\nQuia et ea alias dolor quidem voluptatibus id explicabo. Illo molestias dolorem natus quo. Voluptas minus illo optio excepturi.\n\nEa quia id sapiente praesentium aliquam. Sit in sequi consequatur neque est. Facilis est beatae amet dolores. Accusantium reiciendis magnam enim temporibus iusto est. Veritatis libero ut dolorem repudiandae dolorum aut dicta.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(34, 'Obstetrician', 'Swaniawskiton', 'Cummings-Mosciski', '66363', '2023-07-15', 'Illo nam error harum voluptate facilis. Ut aspernatur ullam neque inventore alias voluptatum. Non qui molestiae recusandae iusto quia. At ipsum consectetur ut labore. Vero quos neque autem dolore recusandae.\n\nEum non rerum quod excepturi enim. Quo consequatur sed veritatis est quidem. Ut reiciendis ut eos dolorem occaecati est.\n\nLaborum sit incidunt asperiores nisi est. Expedita aut voluptatum consequatur ut omnis asperiores quia. Sequi omnis qui necessitatibus iusto accusamus quam omnis. Voluptatum alias quas quibusdam nostrum assumenda.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(35, 'Heat Treating Equipment Operator', 'North Jeradshire', 'Will-Collins', '67973', '2023-12-13', 'Delectus possimus sed et iste error. Aut assumenda ipsum ipsum. Ullam sapiente itaque ducimus sint ipsam ratione necessitatibus. Ut non et quia sunt.\n\nVitae deserunt dolores impedit libero et qui. Et laborum voluptatem illo dignissimos voluptas quia voluptas. Dignissimos tempore nisi et omnis mollitia corrupti. Dolores numquam fugit nobis et eum voluptates maxime aperiam.\n\nMinus enim incidunt nihil eos tempora similique. Ea minus ea et qui. Qui et quaerat beatae iste nam non. Illum culpa aperiam eos qui aperiam voluptatibus.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(36, 'Aerospace Engineer', 'Port Abdullah', 'Gibson Group', '51698', '2024-02-16', 'Pariatur omnis ipsa fuga magni voluptatibus voluptatem. Nihil ut minus culpa provident pariatur. Quis dolor modi sed sit fugiat veritatis. Quisquam impedit culpa aperiam.\n\nEt et asperiores ut at dolores. Beatae suscipit itaque libero asperiores numquam pariatur sit. Quidem et consequuntur sapiente consequatur sit omnis tempore.\n\nOmnis quia libero consectetur adipisci voluptas aspernatur. Vel sunt consequuntur sequi omnis vel. Minima est vel assumenda possimus.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(37, 'Engineering Technician', 'East Norbertofurt', 'Lehner, Jakubowski and Ledner', '77714', '2023-06-08', 'Unde quos consequatur voluptatem quis est praesentium est voluptas. Rerum quis consequatur at possimus in quia et. Commodi iure perspiciatis et. Qui consequatur suscipit optio numquam nesciunt omnis.\n\nQuae repellendus corporis mollitia eum dignissimos alias dicta. Aut quis nostrum accusantium rerum atque cum voluptates cupiditate. Perferendis ipsum et sit. Expedita nobis doloremque temporibus voluptas facilis.\n\nVoluptas dolorum qui minus modi enim excepturi. Fugiat iusto sit placeat minus. Et ad blanditiis vitae natus veniam. Tempore sapiente tempora reprehenderit pariatur.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(38, 'Crushing Grinding Machine Operator', 'Schimmelside', 'Dickens, Wintheiser and Emard', '77384', '2023-10-03', 'Voluptatum fugit eum ut sunt. Ut voluptates aut sapiente blanditiis facere tempore. Provident maxime id fugit assumenda est commodi autem.\n\nConsectetur recusandae mollitia distinctio voluptatibus omnis qui rerum. Sapiente laudantium ut quaerat eligendi provident voluptatem minus. At dolores quaerat architecto dolorem rem est. Ipsa et et culpa blanditiis quaerat labore.\n\nIure accusantium quod atque et id. Porro vel quis molestias et omnis consequatur. Quidem voluptatem sunt aliquid aut eaque porro harum temporibus. Nobis beatae est repellendus quasi.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(39, 'Interior Designer', 'North Steviehaven', 'Dare-Senger', '44322', '2023-08-31', 'Ut impedit dicta dolores. Porro nisi consectetur quia omnis veritatis eveniet cumque asperiores. Quaerat ex nam quia et fuga.\n\nSimilique et voluptate quae reprehenderit cupiditate qui. Laudantium quae optio eum voluptatem eos. Adipisci voluptatibus perferendis tempore impedit temporibus autem.\n\nAliquam eum nesciunt quia. Similique officia magnam eos ratione laudantium. Mollitia omnis ipsum porro voluptas debitis. Quis delectus magnam voluptas aut magnam optio.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(40, 'Real Estate Appraiser', 'Medastad', 'Sipes, Goldner and Gislason', '78572', '2024-02-19', 'Incidunt vel sed dolores nesciunt ut ad nemo voluptas. Deleniti sapiente sunt sed assumenda unde deserunt quisquam eum. Nihil repellat vel minus vel dolores.\n\nDistinctio fugit repellat quo est. Molestias omnis culpa et nulla. Ea praesentium at facere velit et.\n\nAliquid commodi rerum culpa dolorem consectetur. Eos voluptatum corporis consequatur rerum enim quas asperiores. Aperiam iure culpa temporibus aut amet enim dolore.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(41, 'Machine Feeder', 'North Icieshire', 'Streich-Hintz', '68006', '2023-03-23', 'Quasi laborum a saepe enim deserunt. Quis incidunt voluptatem quia possimus modi quis. Ipsam et eveniet molestias omnis aperiam illo.\n\nAd sint soluta omnis in. Omnis ab aspernatur sit quia et. Illo et quae nemo porro qui non qui. Est perferendis modi nihil non quasi praesentium nihil.\n\nSunt aut cum et voluptatem illum. Laudantium omnis quas impedit est dolorem consequatur quia. Quo voluptatem et est nulla ipsum magni non. Quia sed molestiae ut sint maxime minus.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(42, 'Portable Power Tool Repairer', 'North Chanelle', 'Muller Inc', '57669', '2023-10-13', 'Sequi voluptas tenetur sunt et qui. Et tempora est id. Porro quae earum maxime voluptas illo.\n\nVoluptatibus impedit adipisci perferendis asperiores tempore. Illo sunt quidem similique et. Tempore praesentium provident voluptatum et fuga veniam qui.\n\nAd non accusamus error sit tenetur repudiandae et. Architecto exercitationem ut labore consectetur et dolorem. Veniam deleniti omnis soluta officiis.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(43, 'Storage Manager OR Distribution Manager', 'Brannonshire', 'Glover, Tillman and O\'Connell', '67624', '2023-10-16', 'Voluptatem illum ipsam repudiandae magni. Aut veniam blanditiis deserunt dolore cumque odio. Saepe nulla aut quod error. Omnis eos cumque ullam et voluptate.\n\nBlanditiis deserunt temporibus beatae id id. Esse nisi et molestias ut. Cupiditate corrupti molestiae amet fugit rerum id.\n\nConsequuntur voluptas totam dignissimos sit excepturi. Aperiam temporibus eaque dicta neque voluptatum. Est voluptatem tenetur et quasi nihil. Quis sit dolore vel nemo nisi aut adipisci.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(44, 'Set and Exhibit Designer', 'New Keyonport', 'Baumbach-Rogahn', '67350', '2023-04-22', 'Amet eveniet quaerat explicabo voluptate. Voluptatem architecto accusantium inventore mollitia tenetur. Voluptatum ducimus in dolorem blanditiis necessitatibus ipsa dolor id.\n\nArchitecto quia aperiam recusandae quia. Dolor iste eligendi perspiciatis et in. Perspiciatis odit a omnis provident ipsa consectetur deleniti.\n\nSunt amet nisi libero. Consequatur corrupti et saepe maxime in dolor. Provident non fuga corrupti dolores tempora ut deserunt molestiae.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(45, 'Law Clerk', 'New Jessstad', 'Dibbert, Von and Cormier', '75677', '2023-03-26', 'Est eos voluptatum optio sed eaque nisi. Atque molestias ad sequi voluptatem. Odio modi suscipit possimus expedita voluptatibus aut ullam.\n\nAut ducimus suscipit voluptatum illo fugit. Et autem facere enim sapiente qui eum. Velit tempore saepe a. A numquam molestiae distinctio quis laborum.\n\nEnim dolorem repellat iste placeat. Voluptatem occaecati vel porro rerum enim. Iusto consequatur quo modi ut tenetur. Illo et inventore voluptas numquam.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(46, 'Physical Scientist', 'Brakusland', 'Maggio Group', '58741', '2023-12-06', 'Natus repudiandae ut est et temporibus qui nisi. Aliquam beatae commodi laborum labore cumque similique. Aperiam eos veritatis autem consequuntur accusantium. Et omnis fugit recusandae nihil dolor ullam. Qui blanditiis minus recusandae voluptatum expedita laudantium delectus.\n\nDolorem qui molestias est a nemo inventore. Perferendis dolorum quo corporis esse. Placeat in nemo est neque et ex consequatur.\n\nVoluptas explicabo omnis adipisci velit possimus nihil. Commodi alias est quas id ipsa. Quia ea eum veritatis officia. Ipsum quia reiciendis qui praesentium expedita ut. Sit ut iusto autem illo hic autem.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(47, 'Financial Examiner', 'Welchburgh', 'Harber-Klocko', '59702', '2023-12-23', 'Laudantium ut ipsum eum fugiat magni qui minima. Necessitatibus praesentium excepturi maxime. Numquam nulla nisi eum sed.\n\nIn reiciendis sunt et iste. Consequatur nemo sed et occaecati ipsa repellendus. Distinctio corrupti autem debitis deleniti qui.\n\nIllum tempore maxime distinctio maiores qui itaque quis. Et ad consequuntur voluptatum et odit omnis molestiae. Sit reprehenderit rerum voluptatem minus dolor molestias similique.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(48, 'Head Nurse', 'Rebaport', 'Wiza-Senger', '57263', '2023-05-22', 'Nam pariatur quibusdam accusamus est. Natus adipisci quia sint porro cupiditate et occaecati. Est doloremque iure sequi soluta.\n\nTemporibus praesentium et et dolores unde debitis. Qui blanditiis natus quidem sed ullam. Eos consequatur cumque explicabo itaque iste sunt eum temporibus.\n\nQuisquam sapiente laborum quia et repellat. In natus quasi asperiores at consequuntur. Sint vero enim quae accusantium.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(49, 'Building Inspector', 'Floridaborough', 'Davis-Boehm', '68052', '2023-08-26', 'Est rerum libero omnis recusandae. Ipsam itaque tempora incidunt esse voluptas iure sed odit. Tempore dolorem et voluptates error beatae voluptate fugit dolorem. Eos consequatur laudantium reprehenderit possimus numquam cumque voluptatem.\n\nSed molestiae rem magnam voluptas commodi vel. Quos amet expedita rerum expedita cupiditate deleniti voluptatem ut. Qui maxime id ut iure voluptas non vero ut. Commodi culpa nulla autem aut. Asperiores incidunt sapiente iste aliquid et iste.\n\nEt harum vero dignissimos cum harum sit. Eos qui minus ipsum magni saepe omnis ex.', 0, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(50, 'Buyer', 'Hillsfurt', 'Stracke, Ernser and Robel', '57292', '2023-06-01', 'Quibusdam ducimus dolores consequatur tempore molestiae ullam molestiae. Quo vitae inventore in. Blanditiis temporibus minima ut.\n\nVelit debitis reiciendis aliquam. Excepturi tempore reprehenderit voluptatem iure iusto.\n\nSoluta odit ipsum deserunt quis. Reprehenderit nam aut sunt quam ut necessitatibus perferendis. Sed repellat asperiores dolore.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(51, 'Telecommunications Facility Examiner', 'Nikolasmouth', 'Wolff and Sons', '31030', '2023-08-02', 'Laboriosam aliquid sit dicta totam atque velit. Consequatur neque vero culpa vitae adipisci eum. Reiciendis nihil officiis tempore sapiente id doloribus omnis facilis. Quia omnis ut repellendus officia nemo.\n\nAutem occaecati neque ea. Temporibus earum odit deserunt voluptas dolorum maxime. Eveniet error laborum non odit numquam possimus. Nemo et cupiditate vel.\n\nIpsam architecto ut unde ipsum vitae. Animi aut repellendus iste saepe commodi ea atque. Architecto delectus rerum est est ut perferendis.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 17:47:22'),
(52, 'Municipal Fire Fighting Supervisor', 'New Dulce', 'Gleichner-Gerlach', '36743', '2023-07-21', 'Cupiditate accusantium ut ut ea cumque non rerum. Porro quisquam sapiente accusamus doloribus minima. Rerum facilis quo accusamus in dolorem delectus ipsa. Necessitatibus voluptatem voluptatem laborum possimus consectetur sit inventore.\n\nEt reiciendis natus aperiam inventore neque molestiae. Aut veritatis quo voluptate omnis animi odit at. Pariatur odit unde voluptatem quam saepe.\n\nHic ut sit eius rerum. Placeat optio aut odit libero tempore qui deserunt rerum. Sequi rerum ut cupiditate sit voluptas et. Ipsum qui sunt dolorem ab error.', 1, NULL, '2023-03-05 09:49:01', '2023-03-05 09:49:01'),
(53, 'Cement Mason and Concrete Finisher', 'Port Eldonside', 'Mitchell-Grady', '35807', '2024-02-17', 'Ipsam eos consectetur autem modi enim quia sed. Molestiae est consequatur veniam natus voluptatem quod. Ipsam aut est enim quasi ut. Aperiam unde nesciunt voluptatem perspiciatis. Molestias adipisci aut aut et.\n\nRepellendus veniam accusantium illum fugiat recusandae quia nihil praesentium. Ad quos architecto quo. Nesciunt optio architecto sapiente omnis.\n\nVoluptates aut adipisci ut provident itaque id. Vero sunt non cum quis est accusamus sint aut. Magnam autem hic omnis tempora assumenda dolorem. Corrupti et reprehenderit quisquam ut itaque corrupti similique.', 1, '2023-03-05 17:44:50', '2023-03-05 09:49:01', '2023-03-05 17:44:50'),
(54, 'Django Developer', 'Dhaka', 'JIJLKL', '35000-45000/- BDT', '2023-03-31', '<p>Job Summary: We are seeking a talented Django Developer to join our dynamic team. As a Django Developer, you will be responsible for developing and maintaining web applications using Django framework. The ideal candidate will have strong experience in Python programming and web development with a passion for creating clean, efficient, and scalable code.</p><p><strong>Responsibilities:</strong></p><figure class=\"table\"><table><tbody><tr><td>asd</td><td>asd</td></tr></tbody></table></figure><ul><li>Developing, maintaining, and enhancing web applications using Django framework</li><li>Designing and implementing RESTful APIs</li><li>Writing clean, efficient, and reusable code</li><li>Collaborating with cross-functional teams to identify and solve complex problems</li><li>Participating in code review and testing to ensure high-quality deliverables</li><li>Staying up-to-date with industry trends and best practices in software development</li><li>Troubleshooting and debugging web applications</li><li>Developing and maintaining documentation for developed applications</li></ul><p>Requirements:</p><ul><li>Bachelor’s or Master’s degree in Computer Science or a related field</li><li>Strong experience in Python programming</li><li>Proficiency in Django framework</li><li>Experience with HTML/CSS, JavaScript, and jQuery</li><li>Experience with SQL databases (preferably PostgreSQL)</li><li>Familiarity with Git version control</li><li>Understanding of software development principles, design patterns, and best practices</li><li>Excellent problem-solving and communication skills</li><li>Ability to work independently and in a team environment</li><li>Strong attention to detail</li></ul><p>Nice to have:</p><ul><li>Experience with front-end frameworks such as React, Vue.js, or AngularJS</li><li>Experience with Docker and Kubernetes</li><li>Experience with AWS or other cloud services</li></ul><p>We offer competitive salary packages, flexible working hours, and opportunities for professional growth and development. If you are a motivated and passionate Django Developer looking for a challenging and rewarding career opportunity, please apply with your resume and cover letter.<br><br>send email to hr@gmail.com</p>', 1, NULL, '2023-03-05 17:44:03', '2023-03-05 17:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `job_recommendations`
--

CREATE TABLE `job_recommendations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `recommendation_letter` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=pending, -1=not approved, 1=approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_recommendations`
--

INSERT INTO `job_recommendations` (`id`, `user_id`, `faculty_id`, `recommendation_letter`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '<p>Dear [Employer\'s Name],</p><p>I am writing to highly recommend [Employee\'s Name] for the position of [Position Name] in your organization. I had the pleasure of working with [Employee\'s Name] for [Duration of Employment] at [Previous Company/Institution] and I can confidently say that [he/she/they] is one of the best employees I have had the pleasure of working with.</p><p>[Employee\'s Name] is an incredibly hardworking, dedicated, and detail-oriented individual who always goes above and beyond in their work. [He/She/They] is a quick learner and has the ability to work well under pressure while maintaining a positive attitude. [He/She/They] is always willing to help out colleagues and is a team player in every sense of the word.</p><p>During [his/her/their] time at [Previous Company/Institution], [Employee\'s Name] demonstrated excellent communication skills, both written and verbal. [He/She/They] was responsible for [list of responsibilities], and consistently met or exceeded expectations in these areas. [He/She/They] was also instrumental in [list of achievements or contributions to the company/institution].</p><p>I believe that [Employee\'s Name] would be a valuable asset to your organization and I highly recommend [him/her/them] for the position of [Position Name]. [He/She/They] has my strongest endorsement, and I am confident that [he/she/they] would excel in [his/her/their] role at your company.</p><p>Please do not hesitate to contact me if you require any further information about [Employee\'s Name] or [his/her/their] work at [Previous Company/Institution].</p><p>Sincerely,</p><p>[Your Name]</p>', 1, '2023-03-14 20:18:58', '2023-03-16 15:38:18');

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
(7, '2023_03_03_150217_add_statusto_users_table', 1),
(8, '2023_03_04_162232_create_job_portals_table', 1),
(9, '2023_03_05_191900_create_education_table', 2),
(10, '2023_03_05_192001_create_trainings_table', 2),
(11, '2023_03_05_192032_create_work_experiences_table', 2),
(12, '2023_03_11_191159_create_student_skills_table', 3),
(13, '2023_03_15_014032_create_job_recommendations_table', 4);

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
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
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
(1, 'admin', 'web', '2023-03-05 07:18:27', '2023-03-05 07:18:27'),
(2, 'faculty', 'web', '2023-03-05 07:18:27', '2023-03-05 07:18:27'),
(3, 'student', 'web', '2023-03-05 07:18:27', '2023-03-05 07:18:27');

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
-- Table structure for table `student_skills`
--

CREATE TABLE `student_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `faculty_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_completed` date NOT NULL,
  `course_grade` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_skills`
--

INSERT INTO `student_skills` (`id`, `user_id`, `faculty_id`, `course_name`, `course_completed`, `course_grade`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'sdfghdfsgh', '2023-03-15', 'B-', 1, '2023-03-11 13:35:07', '2023-03-11 16:04:40'),
(4, 3, 2, 'sdfghdfsgh', '2023-03-15', 'B-', 1, '2023-03-11 13:35:07', '2023-03-11 16:05:15'),
(5, 3, 2, 'sdfghdfsgh', '2023-03-15', 'B-', -1, '2023-03-11 13:35:07', '2023-03-11 16:05:25'),
(6, 3, 2, 'sdfghdfsgh', '2023-03-15', 'B-', -1, '2023-03-11 13:35:07', '2023-03-11 16:07:34');

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institution` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `user_id`, `title`, `institution`, `duration`, `training_date`, `description`, `created_at`, `updated_at`) VALUES
(2, 3, 'Web Developement', 'Creative IT', '6', '2020-06-06', 'Learned laravel and PHP', '2023-03-05 16:31:05', '2023-03-05 16:31:05'),
(3, 3, 'AWS Architecture', 'Azzad.com', '3', '2023-03-03', 'Learning AWS Architecture with lab', '2023-03-05 16:33:08', '2023-03-05 16:33:08');

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
(1, 'Admin', 'admin@gmail.com', 'male', NULL, '017', NULL, '$2y$10$GYCswAlpHTBNdGYVdDUTYOMnJ.oRWKv3154mw6ewKOgmW/lnVdadW', 1, 'ucbd3Iv1uTciXD6VJhDEcSnTY8Ue4cTaBV4c5MyvviJZThJ1aWWTNWY57vU5', '2023-03-05 07:18:27', '2023-03-05 17:37:28'),
(2, 'Faculty', 'faculty@gmail.com', NULL, NULL, '019816322', NULL, '$2y$10$AUfsmAsn/5EmTN3OXtYJBe.hUJSnRTN/JIx14ov.KKc9sKKieqU2G', 1, 'hNpFG5LaQBh2Lgqj5ImQlL5zJyOSg8PGkzNUUc3acKXJZmVXeLkxtpyo2FDu', '2023-03-05 07:18:28', '2023-03-05 07:18:28'),
(3, 'Student', 'student@gmail.com', 'male', NULL, '201', NULL, '$2y$10$IYTYhGKwFwCrqi7TqlrEies4/EVibYPgk6/R/dh0ELifXKL0cBNlm', 1, 'BuPsBF8o413amKgmn0lQCjiynwlhALLG48GGmWtz3E3IiPRxPkE2NAgRZwfV', '2023-03-05 07:18:28', '2023-03-11 14:49:13'),
(4, 'Tushar', 'tushar@gmail.com', 'male', NULL, '01465463127', 'Mirpur', '$2y$10$lr7mi6gMo5z.yx4pprNA6edzdKmDbMwOsX.Xki6dCwF06dyc0Y5Ai', 0, NULL, '2023-03-11 14:29:04', '2023-03-11 14:40:32'),
(5, 'asdfgasdf', 'adasdfasdfasdfmin@gmail.com', 'male', NULL, '134', 'asdfgasd', '$2y$10$Ov0.QqhxAaAmzTUqYi8eg.IGvV7Mnghzos.uts9mWTjVhGVKftFl6', 0, NULL, '2023-03-11 14:32:56', '2023-03-11 14:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `work_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_experiences`
--

INSERT INTO `work_experiences` (`id`, `user_id`, `work_place`, `designation`, `start`, `end`, `job_description`, `created_at`, `updated_at`) VALUES
(2, 3, 'Paper Art', 'Jr Software Developer', '2021', '2021', 'Details', '2023-03-05 16:26:42', '2023-03-05 16:26:42'),
(3, 3, 'Medigene IT', 'Software Engineer', '2023', 'present', 'Laravel', '2023-03-05 16:27:15', '2023-03-05 16:27:15'),
(4, 3, 'Techstring IT', 'Co-founder & Managing Director', '2022', 'present', 'Maintain project mapping and all others', '2023-03-05 16:27:56', '2023-03-05 16:28:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `job_recommendations`
--
ALTER TABLE `job_recommendations`
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
-- Indexes for table `student_skills`
--
ALTER TABLE `student_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_portals`
--
ALTER TABLE `job_portals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `job_recommendations`
--
ALTER TABLE `job_recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_skills`
--
ALTER TABLE `student_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
