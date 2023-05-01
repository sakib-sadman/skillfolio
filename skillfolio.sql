-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 08:53 PM
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
-- Database: `skillfolio`
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
(1, 'Mixing and Blending Machine Operator', 'Karinafort', 'Volkman, Eichmann and Raynor', '54991', '2023-06-18', 'Molestias illo quas soluta soluta molestiae. Illum iure adipisci rem itaque impedit inventore asperiores. Impedit repellendus aut tempore eos nesciunt.\n\nFugiat accusamus est totam ut et culpa quae. Et iusto quibusdam in veniam. Ad numquam eum et nesciunt. Nemo aut aliquid cum officia et.\n\nDicta rem nobis et temporibus. Quis dolores quae inventore est magni. Nesciunt odio libero aliquam aut asperiores quia animi accusantium.', 0, NULL, '2023-05-01 16:13:45', '2023-05-01 16:13:45'),
(2, 'Platemaker', 'Junefort', 'Weimann, Dach and Mosciski', '51295', '2024-01-24', 'Quas quo accusantium ut dolorum debitis dolores minus. Culpa soluta voluptatem illo tempore veritatis ea vel. Esse neque repellat quia ut quibusdam. Possimus et quia excepturi voluptas placeat.\n\nEst consequatur et sed quidem recusandae aut dolores eos. Nihil ut omnis et. Aperiam ducimus aut nobis dolorum ut dolores sed.\n\nEa quas maiores sit amet. Repellat voluptas ipsam a. Minima laudantium sed culpa consequatur et dignissimos. Totam dolor doloremque autem eius distinctio et quia sed.', 1, NULL, '2023-05-01 16:13:45', '2023-05-01 16:13:45'),
(3, 'Storage Manager OR Distribution Manager', 'New Alphonso', 'Wyman-Hackett', '30107', '2024-04-12', 'Nihil et et minus ducimus earum tempore corporis. Atque qui beatae et alias aut et minus voluptatem. Magni corrupti consequatur non expedita sequi.\n\nDeserunt quo adipisci voluptatem illo. Corporis aspernatur et dolorem illum eveniet nostrum. Et voluptatem voluptate molestiae consequatur qui. Excepturi sed tempora nemo omnis dolores officiis.\n\nExpedita ipsa tempora quam dolores. Molestiae delectus aliquid animi ut nihil dignissimos et. Impedit velit recusandae sed minus.', 0, NULL, '2023-05-01 16:13:45', '2023-05-01 16:13:45'),
(4, 'Tax Examiner', 'South Fabianburgh', 'Barton-Spencer', '74906', '2023-05-20', 'Sed excepturi exercitationem eos fuga. Aut natus consequatur saepe. Cupiditate nulla ut nisi omnis. Necessitatibus odio iure odio rerum reiciendis.\n\nEst doloremque cumque placeat aut quam. Aut minima at voluptatum.\n\nError fugiat aut non. Quasi qui est dolor illo consequatur et. Pariatur ipsa blanditiis excepturi ea et sint et.', 0, NULL, '2023-05-01 16:13:45', '2023-05-01 16:13:45'),
(5, 'Manufacturing Sales Representative', 'South Howardside', 'Hamill, Moore and Corwin', '48778', '2023-07-21', 'Iure quidem aliquid voluptates culpa sequi minus iste. Odit animi a voluptatum sapiente. Aut nobis et in nobis nulla quisquam. A nihil iusto quibusdam.\n\nFugit debitis non deleniti. Debitis eos corrupti molestiae accusantium aut. Consectetur dolorem error aliquam voluptatem necessitatibus. Voluptatem quaerat aperiam dolor est occaecati et ut.\n\nA est tempora molestias labore officia rerum. Sed quas fugiat id reiciendis. Dolor aliquid incidunt nam.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(6, 'Waitress', 'North Lelahport', 'Trantow, Prohaska and Leuschke', '25314', '2024-03-19', 'Doloremque totam dolorem et eum. Accusamus atque iure fugiat. Amet error odit sunt quia corporis non. Consequatur eveniet nihil neque exercitationem iure.\n\nEum voluptatem dignissimos aliquam at perspiciatis atque. Asperiores aut aut debitis. Nihil distinctio id nemo reiciendis et voluptatibus in.\n\nOfficia aliquid magni a sint libero inventore inventore. Accusamus necessitatibus aperiam odio non. Quia modi eveniet deleniti. Iusto voluptatem quo totam laboriosam nobis.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(7, 'Social Scientists', 'Buckstad', 'Stanton-Zulauf', '51571', '2024-02-24', 'Omnis et et voluptatem ducimus fuga autem excepturi. Tenetur dolor sed consequuntur numquam et tempora nihil. Sequi deleniti exercitationem neque eum ipsam quam distinctio velit.\n\nQuo minus et ad sunt. Iure laboriosam porro libero eos neque. Vel qui accusamus qui fugiat est voluptatem odio.\n\nTempore et omnis minus veniam. Recusandae ducimus doloribus esse ipsam quia. Sunt non reprehenderit sed aut. Provident dolorum asperiores quibusdam ut qui nulla repudiandae consequuntur.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(8, 'Respiratory Therapist', 'Elyseton', 'Konopelski-Kuphal', '52398', '2024-03-25', 'Occaecati voluptatem facere necessitatibus illum. Suscipit temporibus labore laudantium et magni sed. Molestias vero voluptatem qui qui accusantium veniam. Repellat totam quia ex aut cupiditate.\n\nEt quia quia aut dolorum. Ea dolorem voluptatem consequatur. Maxime qui consequatur quaerat quo. Quis corrupti ut iste fuga ut est nihil.\n\nEst deserunt nulla ea voluptatum quos. Ut nulla eum aut suscipit. Aut quidem fugit earum.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(9, 'Motion Picture Projectionist', 'North Marcberg', 'Bailey PLC', '33900', '2023-12-06', 'Omnis expedita tenetur quisquam sequi. Aut facilis vel provident dolores sit temporibus. Eaque perspiciatis aliquid id quidem praesentium ducimus. Officiis nam eum deleniti debitis culpa.\n\nAutem ut error corrupti sit. Laudantium odio natus quisquam nam vel quia dignissimos. Cumque exercitationem voluptas dolorum quis molestiae. Sint illo nihil est eligendi perspiciatis qui voluptates ab.\n\nOccaecati id accusantium maxime vel ut. Quidem doloribus illum unde odio cumque ut minus. Quia voluptate vel id commodi. Asperiores magnam quo temporibus veritatis.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(10, 'Anthropology Teacher', 'North Zandershire', 'Buckridge, Schaefer and Moen', '72954', '2024-01-11', 'Dicta quia velit odio maiores autem sit ut. Pariatur earum molestiae eius neque modi sed. Rerum dolor et assumenda culpa at deleniti excepturi. Doloribus debitis deleniti saepe.\n\nNesciunt assumenda unde rerum. Autem consequatur eius non. Soluta voluptatibus eos omnis provident vero laborum laudantium sunt.\n\nLaudantium distinctio et cupiditate autem et tempora corporis sequi. Non nemo quasi ea sed natus. Voluptates et asperiores adipisci.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(11, 'Environmental Scientist', 'Reillyberg', 'Wilkinson, Kshlerin and Welch', '74672', '2024-02-05', 'Quo aut maxime ipsam nihil ea commodi. Veritatis tempora et minima sunt. Quia quam et et velit qui culpa illum reiciendis. Et rerum sed rerum magni dolorem ut.\n\nConsectetur odit iure iusto accusantium possimus. Soluta omnis voluptates minima aut sapiente neque sequi ut. Ex qui eveniet eligendi inventore voluptatem. Consequatur error maiores recusandae dolor.\n\nA velit sapiente rerum. Consequatur nemo et ab velit recusandae et. Nemo fugit laudantium fugiat et dolorem. Enim ut assumenda dolor est aut aut nam. Nisi cum sunt ea cumque qui veniam rem.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(12, 'Vice President Of Human Resources', 'North Faustinotown', 'Stroman-Boehm', '64913', '2023-10-10', 'Quo qui repellendus repellat reiciendis. Et dolor maiores minus et consequatur. Ut vel maiores eveniet placeat velit. Corporis et doloribus minus excepturi fugiat.\n\nDolores quas magnam vero. Hic blanditiis dolorem illo quae ut non sequi. Fuga voluptas doloribus qui expedita.\n\nEx quaerat omnis repudiandae officiis pariatur. Doloribus necessitatibus et sed possimus molestiae consequuntur voluptates. Ut minima est et aperiam.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(13, 'Producers and Director', 'Labadieburgh', 'Bode-Crona', '43612', '2023-05-04', 'Eaque qui architecto omnis deleniti dolor tempore ducimus nisi. Et sapiente et ipsum quae et non. Repellendus maxime quasi aspernatur praesentium voluptatem ea ab ipsa.\n\nCommodi praesentium vel rem maxime. Corrupti eaque explicabo quia voluptatem temporibus eos. Et aut officia quisquam non quia minus maiores.\n\nEt aut voluptatem provident. Consectetur ex voluptas eveniet qui aut. Deleniti ut laboriosam magnam dignissimos impedit. Praesentium iusto quo consectetur aut illum amet consequatur.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(14, 'Airline Pilot OR Copilot OR Flight Engineer', 'Angelhaven', 'Willms, Swift and Kunde', '40796', '2024-01-02', 'Sapiente voluptatem laboriosam ad voluptas quas hic autem. Similique tempore suscipit ut corrupti et architecto perspiciatis vel. At voluptatem ut vel aut. Quam molestias aut ut tempora doloremque.\n\nError ratione et quas dolores aliquid. Consectetur blanditiis quae odit sunt. Quam sunt quos sunt aperiam voluptas. Omnis quaerat non voluptatibus omnis ut.\n\nModi dolore recusandae placeat ea voluptatem. Nobis ipsum numquam quo pariatur dicta quam. Velit est aut ea adipisci. Optio minus consequatur et in saepe. Occaecati dolore est assumenda.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(15, 'Library Assistant', 'North Carissaville', 'Huels and Sons', '37556', '2024-01-01', 'Id eveniet et facere molestiae quidem. Illo fugit temporibus ipsam optio ratione. Sed aut sint repellendus consequatur vitae dolor in neque.\n\nConsequatur autem error alias aut. Maxime tenetur enim voluptatem autem nam iure accusamus natus. Reiciendis autem accusamus minus ut neque exercitationem.\n\nDolorem ad quisquam est tempore ut. Et nulla aut voluptas ut quos. Incidunt et quis et et. Repudiandae exercitationem molestias quis sint et incidunt iusto.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(16, 'Editor', 'North Angela', 'Lemke-Wisoky', '30271', '2023-09-15', 'Dolorum tempora quia alias numquam dolorem vel error rem. Aut animi officia ea fugiat explicabo rerum omnis. Et maiores optio atque et a possimus ut.\n\nOptio quidem aliquid aut enim. Omnis ratione rem id corporis quia. Est eveniet soluta officia cupiditate quia laboriosam. Alias rerum culpa saepe voluptas excepturi aliquid perferendis.\n\nCorrupti eos nobis sint nesciunt perspiciatis maxime. Aut nobis dolores distinctio dolor qui quasi. Ducimus debitis ducimus nemo voluptatibus tempora quas. Quasi pariatur voluptatum laborum voluptas reiciendis odit.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(17, 'Scientific Photographer', 'East Madelynn', 'Mills-Runolfsson', '79112', '2024-02-22', 'Praesentium quis dolores ut officiis incidunt. Commodi ea debitis quia adipisci. Ut eius suscipit provident eos rerum quod.\n\nPraesentium consectetur voluptas officiis consectetur. Sequi voluptatibus nihil iure dolorem debitis. Nemo eum velit voluptatem impedit molestiae. Ad itaque esse dolorem ipsa optio.\n\nNeque ex dolores aspernatur porro numquam ratione. Commodi quia nesciunt dignissimos similique dolorem. Quis porro unde optio illo provident nulla omnis.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(18, 'Production Inspector', 'Kameronborough', 'Russel, Cremin and Williamson', '71033', '2023-12-19', 'Placeat consequatur ea dolores repellendus dolores nesciunt quis. Nulla rerum dolor sed quia voluptatem sed officiis. Eaque dolorem qui provident praesentium accusantium.\n\nEt sed corrupti cupiditate ea. Aliquam adipisci commodi enim omnis doloremque. Temporibus non magnam quisquam.\n\nId eveniet ut facere qui. Autem quasi omnis impedit atque. Aliquam dicta aut non ad. Consequatur id vel ratione odit mollitia.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(19, 'Architect', 'Jerrellton', 'Harris, Friesen and Runte', '72811', '2024-03-26', 'Aut molestias eum sed tempora. Et iure voluptas qui. Sint voluptatem adipisci voluptas consectetur numquam. Qui nostrum qui praesentium ex non architecto.\n\nNumquam excepturi nihil dicta enim. Sapiente molestiae quam provident commodi. Nemo aliquam aut recusandae nam quasi. Eius animi sint neque minima.\n\nAut ut inventore quo eligendi laborum. Officia dolorem est ea fugit quod vel quaerat. Qui autem facilis placeat fugit quos dolores et.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(20, 'Electrical Parts Reconditioner', 'Sporermouth', 'Ratke LLC', '22127', '2023-05-05', 'Excepturi aspernatur sequi occaecati dignissimos beatae unde. A earum rem aut perferendis et tempore ut aut.\n\nUt dignissimos occaecati et blanditiis. Totam explicabo sequi qui alias unde. Sed eligendi rerum omnis nobis.\n\nSit velit et aut nihil aut non laudantium quia. Esse quas iste soluta perferendis. Dolores dolorum beatae repudiandae dicta qui dignissimos. Totam odio laboriosam quo velit rem. Vero ipsum quia aperiam eaque quae enim.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(21, 'Drywall Installer', 'East Emiliohaven', 'Parker Inc', '61072', '2024-01-07', 'Dicta veniam rerum consequuntur sit ut. Id doloremque fuga sed odio eum et. Voluptas nihil enim praesentium eveniet nesciunt velit. Eum repellat in dolorem nisi commodi.\n\nIste quia voluptatem saepe aut voluptatibus dolorem. Alias inventore sit non deleniti est libero ut. Sed iure aut omnis cupiditate quo maxime. Ut voluptatem quia velit rerum. Amet harum maiores earum laudantium ut.\n\nExcepturi quia autem voluptates ex. Doloremque eligendi explicabo illum architecto reiciendis tempora quas. Eos et iste necessitatibus distinctio assumenda. Ut minima aut tenetur beatae modi eaque vel.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(22, 'Production Planning', 'East Arloport', 'McLaughlin, Price and Bode', '29833', '2023-06-15', 'Sed quisquam voluptas non qui. Suscipit consequatur quae totam sed quidem quisquam. Alias minima impedit facere esse nesciunt iusto voluptatem.\n\nMagnam aspernatur ut id rerum. Minima in minima libero cum eos aut. Tempora in sapiente aut aut libero velit quo.\n\nIure quia tempore quia iure incidunt. Nam autem sunt corrupti et nostrum. Deleniti et perferendis natus consequuntur quisquam. Dolorem ut et officia repellat. Totam velit ea et voluptas non.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(23, 'Receptionist and Information Clerk', 'Misaelmouth', 'Macejkovic Group', '75872', '2024-04-08', 'In rerum sunt laboriosam eveniet quasi veniam. Sed consequatur consequatur perferendis quia nobis vel iure. Praesentium ut aspernatur et similique deserunt et.\n\nVero ex repellendus doloremque natus atque officiis accusantium omnis. Non suscipit nulla est nam ea. Itaque similique in perferendis culpa velit omnis.\n\nMollitia velit sit sequi odit. Maxime illo id nihil et aut aperiam cum ipsa. Dolorem omnis labore architecto eius.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(24, 'Ambulance Driver', 'East Christophe', 'Champlin, Donnelly and Will', '22872', '2023-11-03', 'Id sint eos cum quod velit incidunt ex. Eum quisquam qui mollitia perferendis.\n\nVoluptas voluptatem voluptatem quia voluptas numquam. Maiores rerum consequatur sint aut voluptates sapiente. Repellendus voluptatem et mollitia aspernatur reiciendis.\n\nAut sapiente et deleniti sit. Nesciunt itaque accusamus voluptatem placeat unde repellat incidunt.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(25, 'Protective Service Worker', 'North Rhianna', 'Hayes-Homenick', '25398', '2024-01-10', 'Hic sapiente cupiditate veritatis in. Eum cupiditate quos quasi sunt omnis iste. Commodi aliquam pariatur est ut in quibusdam dolorem deserunt.\n\nMollitia ut nam dolor enim consectetur porro. Illum iure ipsum dolorem dicta consequatur illo dolorem nihil. Non architecto a id aliquid aut quo.\n\nQui quos mollitia magni vel molestiae totam. Molestias labore expedita animi ut quod debitis. Et expedita delectus deserunt dignissimos.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(26, 'Photographic Reproduction Technician', 'North Stephanyburgh', 'Murazik-Beatty', '51940', '2023-08-16', 'Facilis eos ullam est corrupti molestiae debitis est aperiam. Quam dicta eos itaque odit velit debitis voluptatibus. Labore at enim quos. Totam maxime facilis praesentium vel qui rerum.\n\nVelit aut recusandae ratione accusantium quo officiis. Dicta et voluptas nostrum placeat quia in temporibus. Quod dicta odio consequatur et consequatur vel aspernatur. Optio ipsum itaque doloribus consequatur quia autem quo.\n\nPorro nam reiciendis distinctio ut ad in cumque. Beatae cumque sapiente vel deserunt unde repellat. Excepturi debitis corrupti et qui.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(27, 'Architectural Drafter OR Civil Drafter', 'Zolamouth', 'Rosenbaum Ltd', '43143', '2023-08-12', 'In cumque sit dolorum reiciendis perferendis ipsa facilis. Numquam itaque delectus quas mollitia nisi ut qui.\n\nSit ad veniam animi est dolores. Reprehenderit ullam non architecto ut.\n\nQuis cupiditate voluptatibus recusandae a. Totam et possimus saepe a dignissimos qui nihil. Officia reprehenderit voluptas voluptatum sit.', 0, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(28, 'Fence Erector', 'Faustinomouth', 'Funk-Shanahan', '21487', '2023-11-19', 'Iste eaque voluptatem eos cumque doloribus ducimus cum. Quia rem optio adipisci voluptas officia ipsa omnis qui. Magni quia accusantium et molestias sed.\n\nVel non quo saepe repellendus dignissimos qui suscipit. Et quo ipsa iste necessitatibus ipsam nulla. Dolor dolorum earum dolor neque iusto esse autem nulla. Adipisci deserunt dolorem dolor voluptatibus qui saepe.\n\nCulpa et eum est sed enim eligendi expedita velit. Repudiandae sint qui et exercitationem in. Iste iusto eos quaerat perferendis. Quo reiciendis esse est id voluptate consequuntur.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(29, 'Automotive Glass Installers', 'North Betsy', 'Ullrich-Koch', '46148', '2023-08-07', 'Deserunt non repudiandae labore qui. Quae beatae amet nulla ipsum dolorem minus. Voluptatum nulla quia labore omnis. Molestiae optio iure amet.\n\nQuo ut adipisci qui. Aut non sapiente numquam consequuntur. Et ut vel et consectetur et velit adipisci itaque.\n\nVoluptatum natus atque quia et. Inventore enim saepe ullam iure nostrum at dolores. Sunt ea id laudantium ipsum totam eos repudiandae in.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(30, 'Adjustment Clerk', 'East Jaclynland', 'Johns-Halvorson', '46511', '2023-11-16', 'Quidem laborum deleniti sint iusto quisquam vel doloremque occaecati. Exercitationem omnis autem perspiciatis. Dicta quo ut esse atque nam facilis impedit. Quia inventore et nesciunt assumenda.\n\nEos ut itaque error id ut esse reiciendis. Praesentium consequatur id laboriosam nihil saepe et adipisci cum. Temporibus explicabo nesciunt laudantium voluptatum. Dolorem repellendus ratione eveniet repudiandae qui sunt.\n\nMaxime qui aliquam ut excepturi explicabo ipsa optio. Soluta molestiae in expedita aliquam excepturi qui. Voluptates quibusdam eligendi eius aut suscipit quaerat enim perspiciatis. Qui eaque perferendis id libero cum dignissimos.', 1, NULL, '2023-05-01 16:13:46', '2023-05-01 16:13:46'),
(31, 'Telecommunications Line Installer', 'Elnamouth', 'Maggio Group', '63105', '2023-12-28', 'Eum perspiciatis ut qui rerum ipsum enim laboriosam. Doloribus placeat quae et officia quam atque eos nam. Quibusdam quo rem reprehenderit.\n\nDucimus est necessitatibus dolor vero est. Facilis nobis distinctio error ut culpa nihil. Vel alias distinctio mollitia quidem. Enim ea minus sit enim tempora.\n\nSed repellat cum modi et exercitationem omnis aut. Consequatur fugiat sed error omnis odit ut consectetur. Odio amet possimus quis sunt consequatur quibusdam. Qui dolores est qui. Dolorem voluptate provident quos sint enim cupiditate nostrum.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(32, 'Maintenance Worker', 'North Mateoburgh', 'Rowe, Rath and Schmidt', '39370', '2023-07-20', 'Provident sit accusantium iste animi architecto et. Dolorem cupiditate qui dolores eum est odio repellendus explicabo. Ut autem nihil quia est et eligendi.\n\nModi nihil ad et repellendus consequatur. Dolores nulla sint molestiae porro provident. Laborum ullam aut excepturi unde. Odit incidunt quos pariatur tempore et facere quia voluptas.\n\nEligendi error ducimus suscipit doloribus quae natus dolorem dolorem. Fugiat odit dolor ut in aut velit distinctio. Inventore commodi reiciendis repellendus voluptatem est illum et possimus. Harum soluta voluptate aut sapiente magnam.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(33, 'Radio Mechanic', 'Lednerhaven', 'Marquardt, Kuphal and Oberbrunner', '79276', '2023-12-18', 'Facilis odit praesentium est eaque. Iusto atque libero aut asperiores repellendus rem. Facere repellat consequatur dolor fuga quo.\n\nModi ratione fuga doloribus consequatur laboriosam nam. Ipsum architecto qui harum assumenda in ut. Et eligendi optio minima dolorem sunt culpa. Et corrupti pariatur earum voluptate qui earum unde velit.\n\nSimilique voluptatem architecto impedit. Ex dolorem eius excepturi. Sit iste ea inventore cum est veritatis voluptates. Reprehenderit voluptas nemo cumque quia sed laboriosam sed.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(34, 'Paste-Up Worker', 'Eugeneshire', 'Lueilwitz-Terry', '41743', '2023-07-03', 'Quidem delectus mollitia non repellat. Quis quos aut quas accusantium odit assumenda. Esse quia aperiam et odio repudiandae modi quia. Officiis voluptas laborum sint et nam suscipit laboriosam a.\n\nQuia ad in est adipisci omnis debitis. Odio eum dolores fuga. Eum ipsum quis autem sed et velit.\n\nLibero minima fuga sed nihil dolorum dolorem vitae. Consectetur doloribus et aut ut minima aut hic molestias. Optio ut accusantium esse facere.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(35, 'Surveying Technician', 'West Kayden', 'Boyle Group', '49819', '2024-01-21', 'Distinctio aperiam adipisci quo repudiandae quaerat vero nemo. Quam temporibus sint tempore temporibus ex. Aut occaecati quaerat nemo praesentium.\n\nDucimus ut sit quaerat omnis dolor. Rerum et ut ratione ut pariatur odio doloribus. Rerum aut quia similique pariatur ab earum alias. Ipsam odit illum dolores sunt sed optio voluptates.\n\nQuo officiis non voluptas aut laborum corrupti nihil. Sit delectus sapiente aperiam nisi et ullam. Iste dignissimos ipsam id porro vel incidunt voluptatem.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(36, 'Outdoor Power Equipment Mechanic', 'Toniview', 'Block-Lueilwitz', '66508', '2024-02-23', 'Provident quod et qui corporis expedita qui nihil. Amet officiis qui dolor voluptatem officiis. Ut aut voluptas doloribus voluptatem eligendi ea. Dolores nihil dolorum quaerat dolorum aut quae.\n\nOmnis error ut rerum assumenda voluptates officiis aliquid. Doloremque molestias perspiciatis consequatur nostrum. Magni et harum sequi ut minima beatae.\n\nNisi hic ratione voluptas voluptatem sint ut et. Possimus nostrum repellat et sequi. Sed commodi accusamus sed quibusdam labore. Inventore velit hic molestiae eum aspernatur corrupti sed.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(37, 'Industrial Machinery Mechanic', 'O\'Connellland', 'Marks Group', '40848', '2024-03-09', 'In odio impedit ipsum est totam ea. Autem sint est voluptates eum et eum omnis. Neque placeat non officiis asperiores molestiae.\n\nQuis sunt quaerat debitis vel. Explicabo est tempore sed fugiat suscipit et. Consectetur officiis nostrum rem.\n\nConsequatur mollitia temporibus voluptas aut consequuntur nam consequatur ratione. Saepe delectus quo repellat. Modi aperiam sed sit alias et. Qui culpa atque fuga accusamus dolorum labore.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(38, 'Computer Specialist', 'Cruickshanktown', 'Daugherty-Davis', '25523', '2023-07-13', 'Sunt fugit sed totam ea iure mollitia illum non. Nobis impedit occaecati nemo sint culpa eos maxime. Non repellat aliquid fuga omnis. Suscipit veritatis consequatur reiciendis itaque velit iusto at.\n\nVelit aut eligendi omnis rerum dolorem amet qui. Dolorem accusantium id labore voluptas. Eum qui quia qui dignissimos et omnis quia inventore. Et placeat aut mollitia temporibus eaque.\n\nAut et facilis est beatae est impedit dolorum. Et reiciendis architecto dolores molestias voluptatem. Explicabo quisquam sit suscipit rerum accusamus ipsa consequuntur.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(39, 'Education Administrator', 'Gertrudeberg', 'Jacobs Ltd', '30506', '2023-09-27', 'Repellat excepturi et numquam fuga corporis corporis est. Ut beatae culpa sit voluptas. Hic saepe eaque voluptatem dolore voluptatem in quaerat. Sed provident enim fuga.\n\nVoluptas harum et error voluptatem. Vel commodi aut nihil aperiam reprehenderit facilis aspernatur. Dolores reprehenderit beatae corrupti. Optio cumque illo porro atque.\n\nEt voluptas voluptas quis autem. Eum delectus ut delectus sit recusandae et. Modi ipsam a quas itaque aut consectetur vero.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(40, 'Cartoonist', 'New Devyn', 'Hill Group', '45677', '2023-09-12', 'Quisquam sint ex facere molestiae ipsum similique. Fuga deserunt quae sed autem saepe vitae.\n\nBeatae qui vel doloremque sit. Aliquid voluptates architecto voluptatibus veritatis. Sint cumque rerum amet corrupti esse eligendi blanditiis. Nesciunt dolores optio et voluptatem. Fuga rerum ut fuga non numquam architecto eius quasi.\n\nFacere accusamus error voluptatum dolorum consequatur quia incidunt. Laudantium rem quis laudantium et et officiis quia. Atque porro dicta enim qui. Dignissimos ratione sequi quia earum.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(41, 'Social Media Marketing Manager', 'Andyfurt', 'Berge, Powlowski and Williamson', '32504', '2024-05-01', 'Qui quia dolores voluptatem et eum consequuntur animi repudiandae. Quibusdam quisquam ad quo quis recusandae facere et qui. Facilis laboriosam ad officiis.\n\nAccusamus sed ut occaecati et voluptatem qui rem. Dolores eius non a sed. Eaque porro dicta perferendis possimus rerum. Dolorum voluptas perspiciatis voluptatem eligendi tempora perspiciatis aliquid.\n\nLaborum ut id rerum. Magni adipisci facere quia animi quo. Non voluptatem minus quis maxime qui.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(42, 'Extruding Machine Operator', 'Ferryland', 'Ankunding-Williamson', '26919', '2024-02-20', 'Aut natus quisquam quasi alias rerum. Porro vitae veniam eos rerum et. Ad accusamus libero qui quaerat tempore dolor enim.\n\nQuas voluptatem dolore dolor quaerat aut numquam quibusdam deleniti. Non unde ea dolorem. Ad voluptatem sit et.\n\nDistinctio ut quia officiis. Adipisci deleniti quis magni adipisci mollitia. Ut rerum vero itaque explicabo.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(43, 'Able Seamen', 'Lake Robyn', 'Metz PLC', '26327', '2023-11-03', 'Quibusdam qui porro ut ut iusto ea quasi velit. Quos rem enim aut ut molestiae. Architecto non quia nulla occaecati aut praesentium debitis. Numquam et voluptas et recusandae dolores.\n\nSint doloribus minima nostrum dolores tempora eius aut. Beatae asperiores beatae culpa. Omnis quis ut voluptas consectetur voluptas.\n\nEa est dolorem sed. Eos laudantium qui id dolor velit sed adipisci. Est animi delectus quod dolore quas voluptates. Adipisci quos quia velit cumque quae quasi.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(44, 'Maid', 'Port Kacibury', 'Lynch, Treutel and Hyatt', '72287', '2024-02-11', 'Voluptatibus quas nihil natus voluptatibus perferendis. Ducimus nemo praesentium molestias ea. Unde amet et explicabo totam culpa fuga ut.\n\nIllo neque quidem ut cupiditate dignissimos eum. Debitis alias praesentium quo eaque quidem corrupti nam. Molestiae ducimus repudiandae dolor ipsam doloremque. Adipisci nobis aut ipsa aut explicabo et.\n\nIpsam autem rem dignissimos. Velit labore harum cumque ab consequuntur nihil nihil. Et nam ex quam magnam fuga. Aut atque qui aperiam delectus.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(45, 'Musician', 'New Leif', 'Hayes Group', '69450', '2023-06-26', 'Sint sequi et odio quo. Quia adipisci et quo beatae non quam.\n\nMaxime veritatis et soluta quo reprehenderit molestiae. Similique veritatis deleniti atque tempora. Quidem ad hic id quis laborum nihil corrupti. Dolore impedit fugiat eum totam incidunt.\n\nUt nihil consequuntur commodi eius vel. Et quae ipsam est corporis est sunt. Alias exercitationem corporis et ullam laudantium quibusdam at nihil.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(46, 'Archeologist', 'New Murl', 'Greenholt PLC', '23863', '2023-07-26', 'Perferendis hic dolorem sit perspiciatis. Consectetur quo sed id voluptates qui quibusdam. Voluptas et occaecati consequatur accusamus sapiente est in.\n\nQuia natus error nisi sint. Omnis possimus excepturi recusandae cumque qui odit in. Eos unde est quos tenetur repellat omnis est.\n\nNatus numquam et quibusdam maxime eum blanditiis aut. Adipisci reiciendis est commodi voluptatum vel sapiente.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(47, 'Interpreter OR Translator', 'New Jerrodside', 'Yundt-Tromp', '24203', '2024-04-11', 'Voluptatem earum odit praesentium pariatur est eveniet recusandae. Quia id fuga adipisci architecto ut molestiae magni. Laboriosam possimus assumenda quisquam iste reprehenderit culpa quas. Et et vero quibusdam animi est. Nobis beatae repellendus qui nihil qui quas.\n\nVel laudantium alias voluptates laborum. Distinctio fugit at accusantium cum nihil. Et facere et sunt error.\n\nLabore vitae magni quisquam est asperiores et rerum. Magnam animi ut recusandae magni nihil.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(48, 'Title Examiner', 'East Ezekielstad', 'Bauch Inc', '37177', '2023-08-27', 'Est facere aliquam ipsum. Incidunt eius sequi assumenda. Molestiae delectus consequuntur ea possimus dolores. Distinctio qui incidunt autem repellendus aut. In sed sit vel.\n\nConsequatur quia temporibus commodi nobis blanditiis qui. Ab qui vero cum voluptatem. Dolor voluptatem vitae atque aperiam qui aut debitis. Voluptatem atque qui dolorem ea expedita alias velit.\n\nIpsam harum aut quos at voluptate accusamus molestiae. Nesciunt voluptas quo et rerum. Quisquam earum libero et sed iusto.', 1, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(49, 'Floor Layer', 'Abernathyville', 'Leuschke-Kautzer', '77745', '2023-11-12', 'Explicabo aliquam esse in est ut iusto necessitatibus. Autem necessitatibus est nemo qui iure ea omnis. Minus porro et soluta et excepturi. Perferendis et aperiam sint consectetur eum sit.\n\nEt minima voluptatum velit nemo. Nesciunt dolores et animi laboriosam quis enim veritatis. Est aliquid nesciunt perferendis nemo dolor.\n\nAccusantium nemo nihil voluptates quisquam tempore. Non occaecati numquam assumenda quidem. Ducimus voluptatem quia architecto. Commodi sint architecto iste.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47'),
(50, 'State', 'West Isaiasburgh', 'Goldner, Zboncak and Moen', '32239', '2024-02-27', 'Sed accusantium sit sed fugit accusamus voluptates. Illum distinctio magni architecto odit aut. Ut adipisci quae nesciunt cupiditate quia tempora.\n\nSapiente rem quo consequatur aut et quia ut. Nam sed tempora autem saepe voluptatem soluta eligendi voluptates. Rerum quia veniam provident nihil vero soluta porro. Sunt reiciendis dolores molestias officiis dolor illum et.\n\nMagnam laboriosam in dolorem tempore qui. Beatae inventore quaerat ducimus magni. Quidem nisi voluptas distinctio laboriosam. Numquam iure eos et consequatur facilis. Doloremque non et qui nostrum consectetur quidem.', 0, NULL, '2023-05-01 16:13:47', '2023-05-01 16:13:47');

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
(9, '2023_03_05_191900_create_education_table', 1),
(10, '2023_03_05_192001_create_trainings_table', 1),
(11, '2023_03_05_192032_create_work_experiences_table', 1),
(12, '2023_03_11_191159_create_student_skills_table', 1),
(13, '2023_03_15_014032_create_job_recommendations_table', 1),
(14, '2023_05_01_232159_create_skill_tests_table', 2);

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
(3, 'App\\Models\\User', 3);

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
(1, 'admin', 'web', '2023-05-01 16:13:55', '2023-05-01 16:13:55'),
(2, 'faculty', 'web', '2023-05-01 16:13:55', '2023-05-01 16:13:55'),
(3, 'student', 'web', '2023-05-01 16:13:55', '2023-05-01 16:13:55');

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
-- Table structure for table `skill_tests`
--

CREATE TABLE `skill_tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `exam_participated_date` date NOT NULL,
  `marks_obtained` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill_tests`
--

INSERT INTO `skill_tests` (`id`, `user_id`, `skill_id`, `exam_participated_date`, `marks_obtained`, `created_at`, `updated_at`) VALUES
(3, 3, 1, '2023-05-02', '2', '2023-05-01 18:51:11', '2023-05-01 18:51:11');

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
(1, 'Admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$tE2QNyAqMtWQni0kHaR7fOx8wjk3a6GVZgYduJVOpVFy3au2jeKty', 1, NULL, '2023-05-01 16:13:55', '2023-05-01 16:13:55'),
(2, 'Faculty', 'faculty@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$L3Eb0lK9yHcFFRIPvCJW9ugNEcDjSMxlJbgv0If3FIMWoKYuC80Sy', 1, NULL, '2023-05-01 16:13:55', '2023-05-01 16:13:55'),
(3, 'Student', 'student@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$vf/Df9wu3hpqkElv7/K2xuN50gRNptIGjjaDI399iAMPgtLx49/a.', 1, NULL, '2023-05-01 16:13:56', '2023-05-01 16:13:56');

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
-- Indexes for table `skill_tests`
--
ALTER TABLE `skill_tests`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_portals`
--
ALTER TABLE `job_portals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `job_recommendations`
--
ALTER TABLE `job_recommendations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `skill_tests`
--
ALTER TABLE `skill_tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_skills`
--
ALTER TABLE `student_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
