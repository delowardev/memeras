-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2019 at 03:05 AM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memeras-dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'totam', 'totam', 'Rerum qui iste voluptatem nesciunt.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(2, 'ut', 'eligendi', 'Vel quasi totam qui debitis officiis ipsa.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(3, 'esse', 'dicta', 'Recusandae quos repellendus inventore unde omnis.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(4, 'nulla', 'occaecati', 'Non esse ea molestias quis totam odit ea.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(5, 'dolores', 'quas', 'Est modi quo non dolor tenetur provident.', '2019-09-17 19:53:23', '2019-09-17 19:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `parent` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_25_084315_entrust_setup_tables', 1),
(4, '2019_08_25_084333_create_posts_table', 1),
(5, '2019_08_27_010104_create_comments_table', 1),
(6, '2019_09_18_013519_create_categories_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(11, 26, 'Reiciendis eius repellendus id et.', 'Nam accusantium repellat autem voluptate. Voluptatibus sunt quam quidem ullam voluptatem ab. Aperiam magni maxime sit nesciunt incidunt. Repudiandae et est qui. Velit et dolores explicabo porro similique sed et. In ut dicta quia ratione aliquam molestiae. Voluptatem quod earum et blanditiis natus atque quidem. Occaecati sed fuga nam eveniet adipisci nulla minima. Voluptas magnam omnis perspiciatis. Quia cum quae accusantium optio eum sunt. Aut ex perferendis pariatur velit et odit.', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(12, 25, 'Reiciendis quae neque soluta nisi ipsa.', 'Temporibus accusamus vel quaerat totam deserunt praesentium. Sunt animi maiores rerum nam consequuntur maxime sequi. Veritatis ipsa officia facere officia beatae voluptates. Voluptatem quibusdam voluptatibus accusantium et omnis alias quibusdam. Molestias incidunt distinctio voluptatibus esse et voluptates. Voluptatum aspernatur dolorem ullam sint dicta iusto rerum at. Suscipit necessitatibus accusamus odit ex pariatur sit tempora cumque.', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(13, 4, 'Ut nemo incidunt quisquam aut.', 'Et possimus qui fuga necessitatibus sit itaque dolorum tenetur. Soluta corrupti eaque qui sint ut in. Corporis et consequuntur quisquam debitis qui eos qui. Aperiam hic nobis id sit ut rerum excepturi. Deserunt quas aliquam in pariatur tenetur laudantium ut. Ex rerum et aut atque. Amet non debitis dolores qui quis eius. Alias quis distinctio assumenda maiores placeat. Modi doloribus sed beatae et et fugiat exercitationem.', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(14, 14, 'Doloribus est ut et nobis ea.', 'Unde dolores assumenda est non iusto. Mollitia officia veniam saepe nulla eos. Laborum aut voluptatum quae enim. Laudantium vero numquam vel dolor. Adipisci consequuntur natus alias minus. Ratione laborum enim officiis quia quia labore voluptas. Animi nesciunt sed tempora expedita dolores veniam officiis. Iste delectus rerum dolor. Vel unde magnam accusamus rem ut saepe nobis. Ut sed et consequatur dolorem repellendus. Delectus et est est eveniet. Quae error consequatur qui quis placeat et.', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(15, 5, 'Totam molestiae voluptatem et.', 'Repellat perferendis veritatis aut doloribus. Aliquid nostrum a est. Rerum repellat ex quas amet reiciendis vel ducimus. Quia aspernatur ea vel tenetur. Enim ipsam distinctio qui aliquid. Aliquam minus dolorum quo expedita et eum dolorem animi. Minus qui iusto ut molestiae non sit. Inventore et id et incidunt quidem nihil. Numquam voluptatem doloremque harum consequatur itaque voluptas magni quia.', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(16, 28, 'Perferendis est non et eos labore esse.', 'Et et quo ab culpa aut. Vel error vero rerum unde. Totam sapiente laborum et sed error ad. Nisi odio odio illo vitae. Qui ab incidunt commodi ea autem ea. Sunt et et nihil quae molestiae tempore possimus. Voluptatibus est nostrum et hic. Aliquid rerum sit velit voluptatum rerum. Eligendi dignissimos quia ut beatae nulla velit. Quibusdam ab minima error sunt exercitationem. Et aperiam officia adipisci at provident.', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(17, 1, 'Quo ipsum et eligendi nihil corporis.', 'Quis autem laboriosam quisquam est nobis omnis. Laboriosam accusantium dicta ducimus aut. Perferendis dolores aut reprehenderit veniam. Iusto aut magnam et facere. Velit impedit necessitatibus sit quas sed voluptates id et. Distinctio reiciendis voluptas voluptatem doloribus esse consequatur. Autem qui voluptatum est et sapiente quia corrupti. Numquam rerum eum ut. Repellendus aut repellendus sed qui hic. Consequatur qui neque voluptatem temporibus et. Doloremque dolor alias explicabo et.', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(18, 18, 'Rerum aut est cum autem fugit.', 'Impedit sapiente accusantium et saepe. Et fugiat ut et nam odio nulla et. Ea unde quis rerum mollitia provident aperiam. Cumque amet quia rem et. Itaque eius excepturi dolor et velit recusandae. Ut facere laudantium dolor. Qui quas praesentium qui saepe facilis aperiam. Ut asperiores neque deserunt aliquid et. Explicabo quo rerum ut atque. Beatae reprehenderit qui voluptatem atque molestias harum. Omnis eius molestias cupiditate laborum.', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(19, 1, 'Placeat sunt animi aut saepe.', 'Dolores vero ea sint libero molestiae laboriosam architecto. Eos magni laboriosam non alias. Et atque eveniet et eius laborum error. Quidem consequatur quaerat aut veritatis ut dolores. Quibusdam culpa et repellat omnis accusamus. Voluptatem laborum odio dolorum id cupiditate deleniti quae harum. Asperiores consectetur aperiam et quaerat autem. Unde unde iste et odio qui.', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(20, 17, 'Nulla libero doloribus ratione adipisci.', 'Magnam explicabo quis minus dignissimos repellat. Tenetur sit ut nemo laborum velit quibusdam. Porro fugiat amet repudiandae libero voluptatem rerum ut. Molestias facilis itaque perspiciatis. Aut porro natus et nihil. Harum quod natus eligendi a ab libero ut. Iusto earum magnam maiores. Cumque fugiat vel minus quidem. Dolor qui rem maxime quas. Repellat aliquam rem doloribus mollitia quis voluptatibus praesentium. Ipsam quis eum tempora sunt facere voluptas.', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(21, 2, 'Rerum id quia voluptas sint quibusdam eos.', 'Nihil et exercitationem est. Ullam assumenda expedita numquam non. Et facere molestias distinctio quod hic vel. Consequuntur blanditiis ipsum et laudantium iure sed. Dicta consequatur dignissimos possimus quis consequuntur aperiam. Distinctio molestiae sunt quam omnis harum optio sed voluptatibus. Corporis enim quis ea dolor exercitationem a veritatis.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(22, 1, 'Libero corporis corporis sed.', 'Illo reiciendis consequatur ea error. Sequi odit nulla molestiae rerum qui. Animi quasi labore voluptas velit voluptas aut. Quidem nihil rerum facere et sapiente ut et. A vitae quas eligendi. Saepe repudiandae placeat in vel quis. Ullam ex harum dolores quae repellendus omnis et numquam. Vel voluptas autem omnis aut cumque alias quibusdam. Quibusdam reprehenderit quaerat quo porro sint molestias consequatur. Ut et quis tenetur non assumenda corporis officiis. Aut quasi odit enim porro.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(23, 4, 'Aut ut et quod vero non.', 'Totam voluptates tenetur minima doloremque omnis. Id tenetur eum harum voluptatibus ea rerum. Sit iste eum libero. Magnam doloremque commodi dolorum. Necessitatibus vitae aliquid dolorem quia qui minus. Dolorem repudiandae unde odit quia et. Labore vel doloribus voluptatem animi repudiandae ratione omnis aut. Eius harum hic rerum beatae. Nostrum iure amet maxime qui alias. Eum at nam quia amet consequuntur est non. Alias hic blanditiis omnis saepe accusamus laborum asperiores.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(24, 23, 'Consequuntur voluptatem impedit sed.', 'Et aut ullam et ducimus est. Ea iusto et optio excepturi quam. Dolore laborum amet ut vero nemo. Omnis adipisci quidem reiciendis. Doloremque iste deserunt cupiditate ut. Deserunt quo ea omnis in deserunt accusantium non. Ea autem reprehenderit voluptates eius iure distinctio. Libero quam ex magnam culpa magni et hic. Et corrupti ut facere eius. Excepturi nisi qui odio non voluptatem deserunt ut. Deleniti voluptas non velit id in. Voluptate natus molestiae velit nostrum recusandae vitae.', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(25, 3, 'Est esse dolorum quam harum.', 'Unde velit sed vel exercitationem. Et voluptates nesciunt maiores sapiente. Facilis beatae et nam dolorem repellat quos earum. Magni nihil laboriosam odio. Praesentium eveniet dolor sit iure est. Maxime natus omnis officiis repellat quaerat aut. Autem reiciendis illo laborum sit dignissimos accusantium maxime.', '2019-09-17 19:53:23', '2019-09-17 19:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Delowar Hossain', 'delowardev@gmail.com', NULL, '$2y$10$DODbyLyEm3JHwWASF1/Cd.XGuM.yr3FpYh0VQy6OcY2VYA.DERKBi', NULL, '2019-08-25 02:58:40', '2019-08-25 02:58:40'),
(2, 'Moni Akter', 'delowar@delowar.com', NULL, '$2y$10$mA.fJE8TwU0F1.NpM3mLuu8oKURukqTD4njnz20VRHtXdbeZEAhC.', NULL, '2019-08-25 02:58:55', '2019-08-25 02:58:55'),
(3, 'iFdAu ZBp00g', '6us61k3PY2@gmail.com', NULL, '$2y$10$/C17of/J6ztb2fd8TRmq0uztKQ0xNJ0ux/TjvCEHk459/fyvTf9Aq', NULL, '2019-08-26 19:29:27', '2019-08-26 19:29:27'),
(4, 'ltS7i xeODg5', 'idEbIWVfxN@gmail.com', NULL, '$2y$10$arxPqnaHjeaMUi52BnqkNO55g26BOuoOciVnRP1Z.pyuWTf6MvRAm', NULL, '2019-08-26 19:29:27', '2019-08-26 19:29:27'),
(5, 'zO5fk HEsfxf', 'RgTW9rwayV@gmail.com', NULL, '$2y$10$6U5SHC8iYjvAyldeUXHXl.gk6hfHYfC2Cq2GG0oUGTkxYgJMaU6EG', NULL, '2019-08-26 19:29:27', '2019-08-26 19:29:27'),
(6, 'Qonqs 7mnbqf', 'W1BoDJv2VI@gmail.com', NULL, '$2y$10$Hj7HudYqsgD9XJrxN1uJNONDUHyPe6DYu.xkwNQSUf2mDi6IpXPem', NULL, '2019-08-26 19:29:27', '2019-08-26 19:29:27'),
(7, 'Emanuel Rice', 'dicki.wyman@example.org', '2019-08-31 20:18:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qO7yPuAI6z', '2019-08-31 20:18:43', '2019-08-31 20:18:43'),
(8, 'Maxime Halvorson Jr.', 'lparker@example.com', '2019-08-31 20:18:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b6dETT1lV9', '2019-08-31 20:18:43', '2019-08-31 20:18:43'),
(9, 'Dr. Nathanael Frami', 'bernardo.cremin@example.org', '2019-08-31 20:18:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 't53LjwM4WG', '2019-08-31 20:18:43', '2019-08-31 20:18:43'),
(10, 'Dr. Damon Huel', 'adeline65@example.com', '2019-08-31 20:18:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OXFzaUfgSE', '2019-08-31 20:18:43', '2019-08-31 20:18:43'),
(11, 'Alvah Kautzer', 'marcos03@example.net', '2019-08-31 20:18:43', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EEWzkFf8aH', '2019-08-31 20:18:43', '2019-08-31 20:18:43'),
(12, 'Hayley Grant', 'oorn@example.com', '2019-08-31 20:33:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IehjQGMlk5', '2019-08-31 20:33:23', '2019-08-31 20:33:23'),
(13, 'Mrs. Rebeka Bashirian', 'qwest@example.net', '2019-08-31 20:33:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hVVo7wTDUl', '2019-08-31 20:33:23', '2019-08-31 20:33:23'),
(14, 'Ms. Jennie Schmeler MD', 'satterfield.heidi@example.com', '2019-08-31 20:33:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S951bYmTQi', '2019-08-31 20:33:23', '2019-08-31 20:33:23'),
(15, 'Webster O''Reilly MD', 'kemmer.meaghan@example.net', '2019-08-31 20:33:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YhWvOsPxdw', '2019-08-31 20:33:23', '2019-08-31 20:33:23'),
(16, 'Jacques Koch', 'gerlach.arthur@example.com', '2019-08-31 20:33:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's1Sn3XmkJ0', '2019-08-31 20:33:23', '2019-08-31 20:33:23'),
(17, 'Elizabeth Rath', 'grady.etha@example.net', '2019-08-31 20:33:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b8q2QfyXK6', '2019-08-31 20:33:36', '2019-08-31 20:33:36'),
(18, 'Mr. Tyrese Kuhn', 'eankunding@example.com', '2019-08-31 20:33:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'W9TzFwtWDK', '2019-08-31 20:33:36', '2019-08-31 20:33:36'),
(19, 'Jany Legros', 'wterry@example.org', '2019-08-31 20:33:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8TAMdzX5lW', '2019-08-31 20:33:36', '2019-08-31 20:33:36'),
(20, 'Ludwig Kovacek', 'elvera.kuvalis@example.net', '2019-08-31 20:33:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KxQLmOdT4i', '2019-08-31 20:33:36', '2019-08-31 20:33:36'),
(21, 'Khalil Johns', 'cgibson@example.org', '2019-08-31 20:33:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'qVRZu4QFVK', '2019-08-31 20:33:36', '2019-08-31 20:33:36'),
(22, 'Darren Schinner', 'hansen.aliya@example.net', '2019-08-31 20:35:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VAqfujjNA7', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(23, 'Brisa Stehr', 'cindy69@example.net', '2019-08-31 20:35:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nPaTKYw3tb', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(24, 'Ms. Magnolia Swift', 'morissette.claudine@example.org', '2019-08-31 20:35:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EOkv2CllFo', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(25, 'Marcia Hilpert PhD', 'rau.cletus@example.org', '2019-08-31 20:35:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YfMMmH4cge', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(26, 'Miss Halie Nikolaus', 'ruthe.crooks@example.org', '2019-08-31 20:35:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dj0vqq03EN', '2019-08-31 20:35:03', '2019-08-31 20:35:03'),
(27, 'Neva Leffler', 'eusebio.cormier@example.com', '2019-08-31 20:35:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '91pJ2OIhQX', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(28, 'Mrs. Kaylee Jacobson IV', 'arturo12@example.net', '2019-08-31 20:35:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IiaShUlH7V', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(29, 'Owen Gutmann', 'mueller.raina@example.com', '2019-08-31 20:35:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bSAXV2gtHT', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(30, 'Deven Stokes DDS', 'rlehner@example.org', '2019-08-31 20:35:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HCkyHoQHlJ', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(31, 'Ms. Lenore Larkin', 'bogan.loraine@example.net', '2019-08-31 20:35:26', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AZPX3q4Biz', '2019-08-31 20:35:26', '2019-08-31 20:35:26'),
(32, 'Brittany Gottlieb', 'rebekah.fritsch@example.org', '2019-09-17 19:53:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mzAk3hd8Rb', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(33, 'Kelli Brown', 'ledner.meaghan@example.org', '2019-09-17 19:53:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OsnNwu5dib', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(34, 'Aubrey Lebsack', 'rorn@example.net', '2019-09-17 19:53:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'JtH3jwdS3H', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(35, 'Hugh Wolff', 'jarred.dibbert@example.org', '2019-09-17 19:53:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CwX3ifv83b', '2019-09-17 19:53:23', '2019-09-17 19:53:23'),
(36, 'Favian Morar', 'pacocha.ronaldo@example.net', '2019-09-17 19:53:23', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ylSGqs8uSK', '2019-09-17 19:53:23', '2019-09-17 19:53:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
