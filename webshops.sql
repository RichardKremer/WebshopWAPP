-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 jun 2019 om 15:41
-- Serverversie: 10.1.38-MariaDB
-- PHP-versie: 7.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshops`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(255) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'iusto', 'Quisquam totam quas est qui aperiam ad recusandae fuga molestiae aspernatur omnis tempora voluptatibus aut ipsum assumenda atque dolor tenetur beatae. HALLO!', '2019-05-20 13:07:20', '2019-06-18 10:47:00'),
(2, 0, 'natus', 'Perferendis quas odit est eum tenetur dolore laboriosam rerum magnam sit molestiae tenetur praesentium saepe aperiam laudantium id dolores non facilis qui dolorem.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(3, 0, 'voluptatem', 'Voluptatem eveniet rerum amet sit assumenda modi nemo voluptate doloribus ad non est debitis commodi reprehenderit est aspernatur alias ducimus non facere consequatur architecto laudantium et.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(4, 0, 'culpa', 'Excepturi ea maxime inventore consequatur fugit cupiditate dolorem maiores expedita quis cupiditate ut nam nulla voluptatibus eum molestiae incidunt omnis ut aut et ut earum aliquid.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(5, 0, 'pariatur', 'Eligendi est veniam nemo est tenetur sit dolores dolor dolore voluptatem ut perferendis repellendus officia quo accusamus non dolores qui aut a dolorum sed est.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(7, 0, 'HDDs', 'Alles HDD!', '2019-06-18 10:47:57', '2019-06-18 10:47:57');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_15_073121_create_products_table', 1),
(4, '2019_05_15_125215_create_categories_table', 1),
(5, '2019_05_15_125236_create_subcategories_table', 1),
(6, '2019_05_16_100906_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('PvT_Shifty@hotmail.com', '$2y$10$laY7Li1CIFpcRJ/rHQxSZONNbcuALrFOMI3oYodoHmn0AtIZfKzom', '2019-05-22 11:11:28');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(65,2) NOT NULL,
  `inStock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `image_url`, `product_name`, `description`, `price`, `inStock`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '/images/iets.png', 'unde', 'Ut quas eaque placeat quia voluptates nihil reiciendis reprehenderit aut ipsum libero autem similique similique natus in inventore tenetur sed ipsa porro et voluptatum cum.', '70.80', 145, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(2, 1, 1, '/images/iets.png', 'modi', 'Debitis dolores error ipsam vero quisquam et maxime cum omnis temporibus atque provident deleniti qui velit earum ab placeat quia iusto facilis asperiores.', '114.70', 124, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(3, 1, 2, '/images/iets.png', 'sunt', 'Numquam ut est ex quis consequatur sit aut architecto cupiditate nesciunt aut beatae esse eligendi.', '70.62', 188, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(4, 1, 2, '/images/iets.png', 'aut', 'Nisi voluptatem ut corrupti totam qui eum a vitae et est eius sequi dolores praesentium debitis quaerat.', '148.35', 179, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(5, 1, 3, '/images/iets.png', 'eaque', 'Nihil itaque id similique nulla assumenda consequatur deleniti doloribus velit quis sunt veniam sit ipsam.', '40.89', 192, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(6, 1, 3, '/images/iets.png', 'suscipit', 'Tenetur libero dolor vitae asperiores repellendus corrupti nihil iste pariatur itaque aut fuga accusantium amet laboriosam sapiente est ut quod.', '6.42', 46, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(7, 2, 4, '/images/iets.png', 'rerum', 'Mollitia aut mollitia iure quis architecto eum exercitationem ex quisquam provident reprehenderit et et aut aut id non unde animi modi ducimus laboriosam dolorum rerum dolor at sed.', '1.45', 81, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(8, 2, 4, '/images/iets.png', 'consequatur', 'Ducimus beatae commodi quaerat dolorem illo consequuntur accusamus nobis dolore autem et dolorum et tempora eaque qui excepturi vero non nobis eos.', '471.70', 139, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(9, 2, 5, '/images/iets.png', 'tempore', 'Sed esse possimus sequi aliquid molestiae porro enim enim facilis officia consequatur ipsa voluptatem qui soluta fugiat omnis ex sapiente ut aut est libero molestiae et et non.', '450.57', 175, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(10, 2, 5, '/images/iets.png', 'voluptate', 'Odio porro illo repellendus quo vel incidunt totam atque et et maxime soluta possimus reiciendis ratione.', '367.95', 174, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(11, 2, 6, '/images/iets.png', 'voluptas', 'Dolor velit sit ut omnis cum similique autem est maxime quidem iusto et sit ut ullam vitae dolor.', '377.02', 145, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(12, 2, 6, '/images/iets.png', 'modi', 'Magnam vel commodi natus omnis aliquid perspiciatis dolores aspernatur expedita adipisci voluptatem voluptas eaque aspernatur totam earum.', '140.72', 182, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(13, 3, 7, '/images/iets.png', 'cupiditate', 'Omnis est optio soluta placeat eum harum impedit sit nesciunt eius tempora qui ratione saepe.', '37.43', 16, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(14, 3, 7, '/images/iets.png', 'rem', 'Cum nihil odio qui est praesentium tempora nisi aut accusantium consequuntur est voluptatem nihil cumque sed corporis assumenda et et rem earum rerum quia accusamus quia a.', '33.75', 99, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(15, 3, 8, '/images/iets.png', 'quibusdam', 'Nam autem consequatur tempore sint quod at excepturi qui voluptatem vitae quis culpa ex et quia doloribus deserunt consequatur rerum fugiat sint vero expedita fugit.', '375.11', 81, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(16, 3, 8, '/images/iets.png', 'fuga', 'Corrupti autem necessitatibus facere doloribus odio illum voluptatibus sit sit enim modi reprehenderit soluta quaerat ratione beatae laboriosam et quo reprehenderit inventore quia aspernatur.', '400.89', 160, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(17, 3, 9, '/images/iets.png', 'iste', 'Corporis nulla similique quibusdam laborum necessitatibus voluptates veritatis ipsum neque perferendis aut et quos voluptate.', '462.11', 121, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(18, 3, 9, '/images/iets.png', 'ad', 'Quasi animi voluptatibus dolore qui quam eaque eligendi possimus doloremque blanditiis ut maiores eveniet non odit mollitia non est non qui voluptatum.', '121.09', 28, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(19, 4, 10, '/images/iets.png', 'nostrum', 'Pariatur blanditiis saepe sint ea atque deserunt voluptate optio eos debitis aut omnis vero repellat et dolorem in veritatis odit repellendus qui alias sapiente ea sit et.', '214.00', 63, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(20, 4, 10, '/images/iets.png', 'necessitatibus', 'Incidunt ut libero iure corrupti qui saepe modi quis ullam ut qui rerum velit facere itaque.', '234.32', 135, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(21, 4, 11, '/images/iets.png', 'repellat', 'Consequuntur reprehenderit voluptatibus et rerum incidunt molestiae sed dolorem mollitia et omnis consequuntur minima eum reiciendis nesciunt vitae nihil ut incidunt consequatur sed.', '245.18', 167, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(22, 4, 11, '/images/iets.png', 'et', 'Dolorem ad quisquam itaque maxime sint consequuntur ullam quo et illo beatae necessitatibus dolores similique aut fugiat id.', '79.06', 28, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(23, 4, 12, '/images/iets.png', 'vel', 'Mollitia veniam quidem saepe a consequatur quae nam sint nihil eligendi explicabo illum officiis sequi iure dignissimos expedita est.', '354.35', 115, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(24, 4, 12, '/images/iets.png', 'pariatur', 'Est quia quos deserunt quis soluta iusto itaque aperiam ipsa placeat illum iure corrupti laboriosam velit temporibus eaque omnis quidem praesentium placeat.', '179.30', 86, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(25, 5, 13, '/images/iets.png', 'blanditiis', 'Sunt et ipsa aut quidem non et minima facilis eius harum iure ducimus est id enim sed repellat facilis velit qui voluptatem cum magnam.', '462.12', 41, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(26, 5, 13, '/images/iets.png', 'neque', 'Rerum natus aut sunt beatae dolorem aut modi natus veritatis aut assumenda culpa adipisci.', '436.82', 54, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(27, 5, 14, '/images/iets.png', 'commodi', 'Nam unde quidem omnis qui incidunt natus facere est delectus voluptatem voluptas iste quis ut qui.', '344.34', 174, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(28, 5, 14, '/images/iets.png', 'sint', 'Qui delectus id qui veniam atque sed voluptates impedit deleniti qui eos est non quisquam consequatur eum excepturi.', '458.03', 105, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(29, 5, 15, '/images/iets.png', 'ut', 'Dolorem occaecati fugiat perferendis laboriosam eos suscipit sint velit praesentium corporis aut distinctio esse dolorem molestiae officia quia iure illo quia minima a.', '168.23', 55, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(30, 5, 15, '/images/iets.png', 'suscipit', 'Et voluptatem dolor perspiciatis vel non necessitatibus eos illum voluptatem aperiam ut assumenda illum voluptatem itaque vel quia.', '421.46', 153, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(31, 1, 1, '/images/cute_little_turtle-1920x1080.jpg', 'super hdd!', 'een hdd die iets is', '548.00', 99, '2019-06-18 10:57:24', '2019-06-18 10:57:24'),
(32, 1, 1, 'images (1).jpg', 'SSD', 'een ssd voor uw...', '100.90', 34, '2019-06-18 11:02:27', '2019-06-18 11:02:27'),
(33, 1, 1, 'JPEG_20171218_011134.png', 'Lester', 'pester', '0.69', 35, '2019-06-18 11:10:21', '2019-06-18 11:10:21'),
(34, 1, 3, 'lenovo.jpg', 'imagetest', 'wEEWENog een', '222.28', 2323, '2019-06-18 11:12:33', '2019-06-18 11:12:33'),
(35, 5, 7, 'cute_little_turtle-1920x1080.jpg', 'Sqrl', 'erl', '86731.80', 11, '2019-06-18 11:16:37', '2019-06-18 11:16:37'),
(36, 2, 5, 'images (1).jpg', 'Ja', 'nee', '967.90', 68, '2019-06-18 11:19:06', '2019-06-18 11:19:06'),
(37, 2, 4, '/images/JPEG_20180111_175400.png', 'Haha', 'werkt niet', '869.47', 748, '2019-06-18 11:24:51', '2019-06-18 11:24:51');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `product_id`, `title`, `description`, `rating`, `created_at`, `updated_at`) VALUES
(1, 4, 1, 'strategize B2C web-readiness', 'Nobis in neque omnis quia voluptates aperiam in numquam voluptates velit voluptas voluptatibus exercitationem autem et quasi dolores nobis saepe amet.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(2, 15, 1, 'matrix clicks-and-mortar systems', 'Repellat rem adipisci doloribus tempore doloribus ut accusamus perferendis ut at corrupti id minus reiciendis ex praesentium molestias ut ipsa adipisci.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(3, 4, 1, 'streamline holistic systems', 'Nihil culpa rerum eius in voluptatem omnis dolorem illo dolor occaecati ad et culpa iusto nemo qui deleniti illo et non voluptatem.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(4, 2, 1, 'matrix clicks-and-mortar channels', 'Et ipsam ut est mollitia ducimus aspernatur illo et dolor esse necessitatibus occaecati enim velit qui soluta ut ea esse quisquam.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(5, 6, 1, 'embrace distributed mindshare', 'Quasi officia ut eum sit ex ullam adipisci illo sed non dolorem voluptas quos voluptas ut nostrum et laborum harum excepturi consectetur architecto veniam numquam quisquam aut qui.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(6, 11, 2, 'matrix vertical content', 'Et blanditiis inventore dolorum consequatur aut nemo sint et in cumque consequuntur sint voluptatem et in nihil enim dolorum doloremque minus ipsum incidunt.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(7, 16, 2, 'matrix granular functionalities', 'Libero non et culpa quidem et odit nisi voluptas odit eligendi ut quae possimus quis tempore et tempore omnis temporibus et doloremque in et velit in.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(8, 20, 2, 'syndicate real-time methodologies', 'Labore ab voluptates quia tenetur earum aut cupiditate cumque aut officiis nobis sed qui magnam laboriosam ipsam eos et modi sit mollitia ut perspiciatis mollitia in.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(9, 9, 2, 'redefine interactive vortals', 'Ipsam ratione fugit qui quae inventore expedita nihil quidem odio voluptas excepturi non laborum vero quo nihil architecto qui perspiciatis aliquam reprehenderit.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(10, 17, 2, 'leverage sexy schemas', 'Iure nihil sed est et voluptate praesentium illum quasi est totam id exercitationem fugit omnis sed enim rem voluptas tenetur voluptatibus non nobis magnam repellat culpa quis minima.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(11, 9, 3, 'maximize rich architectures', 'Architecto unde optio deserunt numquam nihil temporibus praesentium aspernatur eum fuga laudantium aspernatur sapiente aliquam porro debitis enim ea provident qui et est non.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(12, 15, 3, 'streamline robust portals', 'Aut molestias enim corrupti voluptatem unde velit dolores accusamus aut aut voluptas mollitia debitis id architecto sit est ducimus et.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(13, 12, 3, 'deliver ubiquitous web-readiness', 'Aut ex ex reprehenderit in magni incidunt et ea ut ab nulla qui omnis voluptatem labore veniam dolorem sunt tempora qui illum totam.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(14, 6, 3, 'integrate dynamic initiatives', 'Provident ut aut atque et quasi consectetur aliquid nostrum asperiores earum cumque id praesentium et velit iste officiis adipisci dolorum dignissimos tenetur exercitationem laudantium.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(15, 16, 3, 'synergize enterprise portals', 'Est mollitia aut incidunt deserunt qui ea temporibus autem sed optio odio sint aspernatur.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(16, 19, 4, 'expedite extensible supply-chains', 'Placeat omnis asperiores perspiciatis rerum excepturi voluptatem eos cupiditate quis sint ad distinctio iure in est asperiores soluta.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(17, 13, 4, 'iterate integrated webservices', 'Sunt perspiciatis iure provident id quisquam ut maxime numquam mollitia porro fugiat nisi enim rerum cum eaque delectus dolorem corporis vitae sit omnis.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(18, 8, 4, 'embrace robust functionalities', 'At fugiat culpa qui consequuntur voluptas reiciendis similique repellat quis voluptas ut minus modi libero rerum laboriosam aut itaque nulla impedit maiores voluptate.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(19, 13, 4, 'drive dot-com bandwidth', 'Rerum velit earum eveniet ducimus repudiandae aut aliquid eos dolorum ut minima animi dolor asperiores eveniet autem qui sit ad ut expedita architecto.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(20, 18, 4, 'exploit scalable e-markets', 'Id sint quasi molestias numquam aperiam corporis rerum dignissimos animi sit qui rerum quia autem.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(21, 18, 5, 'enhance visionary methodologies', 'Magni magni alias ut maiores nam magni facilis quisquam est harum expedita eum quia expedita quasi.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(22, 13, 5, 'harness e-business deliverables', 'Sit sit temporibus modi voluptatum eius consequatur repellendus omnis labore nesciunt consequuntur repudiandae quo architecto qui non est deleniti sint.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(23, 10, 5, 'recontextualize transparent webservices', 'Nesciunt ipsa consequatur quo necessitatibus debitis hic hic ullam debitis qui aut rerum perspiciatis sint numquam ea sed quia sapiente dignissimos temporibus porro et omnis quasi eaque totam.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(24, 2, 5, 'visualize customized eyeballs', 'Autem omnis consectetur consequuntur qui a animi eos perferendis eum sed aut sapiente ea ut non veniam odit illum modi ea.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(25, 19, 5, 'benchmark sticky solutions', 'Debitis qui hic debitis voluptatem ut qui voluptate amet voluptates et repudiandae itaque.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(26, 3, 6, 'redefine innovative web-readiness', 'Nam nihil id tempore ut est non voluptas sed perferendis voluptates perferendis ut est ut culpa consectetur sequi.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(27, 3, 6, 'strategize viral functionalities', 'Ex nesciunt rem fuga totam enim doloremque reiciendis numquam dolore ea minima molestias voluptatem est sed asperiores accusamus inventore laborum culpa blanditiis.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(28, 11, 6, 'innovate cross-media markets', 'Sed voluptatem ducimus temporibus aut maxime ut assumenda soluta molestiae eos doloribus temporibus.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(29, 6, 6, 'optimize bricks-and-clicks synergies', 'Porro ullam sint magnam eum asperiores commodi aut repudiandae sapiente consequatur suscipit quae aspernatur sapiente cupiditate incidunt non molestias sint dolorem facere.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(30, 14, 6, 'whiteboard impactful e-tailers', 'Esse animi nemo non ipsum aut rerum quas dolorem dolores iusto iure nobis exercitationem dolore nobis sint odio sit pariatur ipsum aliquam minus quibusdam natus.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(31, 13, 7, 'drive world-class applications', 'Voluptate esse voluptatibus et voluptatum suscipit omnis eos rem alias et consequatur reiciendis ut omnis perferendis non exercitationem asperiores cupiditate placeat amet.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(32, 14, 7, 'engage proactive e-tailers', 'Nemo maxime dicta voluptates temporibus dolorem hic et fugit animi porro cum provident maiores sed qui id.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(33, 8, 7, 'deliver intuitive e-services', 'Adipisci id ipsa id quisquam odio non iusto ea delectus voluptas sint id rerum ut quod sunt in sunt minus.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(34, 12, 7, 'mesh one-to-one e-tailers', 'Et ad quia ipsam ipsam iusto ea dolorem incidunt mollitia alias in rem eius culpa voluptas quasi distinctio placeat deleniti nemo.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(35, 20, 7, 'empower front-end e-markets', 'Ullam suscipit sed et tenetur quas expedita dolorem consequatur ducimus aliquid ut qui quibusdam doloremque.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(36, 1, 8, 'redefine next-generation portals', 'Maiores quod ad voluptas temporibus ea quia quo eos veritatis rem in sapiente officia tempore tenetur voluptatem sint.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(37, 17, 8, 'streamline web-enabled convergence', 'Soluta in placeat expedita laborum hic reiciendis iusto et impedit est aspernatur est atque ab fugit repellat temporibus sunt.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(38, 19, 8, 'expedite virtual webservices', 'Quisquam asperiores maxime qui voluptate eum ab architecto et voluptate et ipsum et quis dolorem odit beatae odio iusto voluptatem.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(39, 3, 8, 'recontextualize turn-key schemas', 'Minus laudantium occaecati ducimus iusto culpa tempore cupiditate sunt ut et alias assumenda libero dolores ipsa excepturi distinctio qui illum modi quasi distinctio.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(40, 9, 8, 'maximize synergistic portals', 'Et nihil eos id dolores sit iure modi nisi blanditiis recusandae explicabo modi voluptas enim consequatur cumque magni repellendus asperiores.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(41, 1, 9, 'orchestrate open-source platforms', 'Quia qui odio ipsam aut delectus neque non est quos eos fugiat incidunt.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(42, 7, 9, 'engineer real-time platforms', 'In ipsam vel esse atque facilis omnis tempora doloremque eos ipsam quis molestiae officia sint ipsam.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(43, 13, 9, 'reintermediate visionary platforms', 'Quae nulla quasi dolores voluptas aperiam qui atque voluptas sapiente voluptas quos sint.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(44, 1, 9, 'maximize mission-critical technologies', 'Aut ipsa ut aut quia porro quaerat ratione ut consequatur voluptatem non aut nihil quam sit et soluta numquam facilis sapiente eius et iusto quos minus similique.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(45, 11, 9, 'synthesize web-enabled partnerships', 'Eius est temporibus blanditiis consequatur repellat expedita impedit non repellat sed ut voluptas molestias quia facere ut nobis.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(46, 9, 10, 'iterate interactive systems', 'Magni dolores quae qui nulla voluptate non quia et natus quia ratione inventore rem sunt a qui fugit cumque et officiis distinctio nobis.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(47, 16, 10, 'embrace enterprise platforms', 'Omnis magni quo aut nulla repudiandae dolorem soluta et illo eum delectus adipisci vel voluptates.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(48, 1, 10, 'implement bricks-and-clicks platforms', 'Inventore consectetur consequatur perferendis sed deleniti maiores laudantium odit accusamus dignissimos eaque fugit quidem et est sed eveniet.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(49, 13, 10, 'extend 24/365 markets', 'Quis voluptatem eligendi sint optio nobis nesciunt explicabo quod perferendis aut occaecati consequatur cum velit fugit officia occaecati officia tenetur repellendus excepturi rerum enim id.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(50, 7, 10, 'implement turn-key e-tailers', 'Quaerat distinctio ea pariatur nostrum non ratione ad saepe ipsa occaecati voluptas praesentium possimus non sunt accusamus qui in dolore voluptatem et facere voluptatum voluptas nam dignissimos.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(51, 19, 11, 'engage scalable e-commerce', 'Distinctio eum quis unde eveniet adipisci sint in voluptates blanditiis veritatis eum quibusdam deserunt qui quam numquam voluptas corporis aut iure quia quo aperiam.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(52, 5, 11, 'empower back-end e-tailers', 'Praesentium sint non repudiandae enim qui necessitatibus harum dolorem aut facere non debitis rerum nobis odio vel autem iure numquam id quas voluptates id repellendus voluptas mollitia et.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(53, 18, 11, 'facilitate robust eyeballs', 'Laboriosam magnam distinctio quia omnis at consequuntur ut nostrum iusto eos nostrum est alias amet iusto enim dolor sunt id ab rerum aliquid sunt sint eos.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(54, 4, 11, 'streamline frictionless bandwidth', 'Enim voluptate debitis voluptas sed ipsa eum voluptatem eos mollitia vel nisi ad doloremque consequuntur voluptatem est perferendis illum ab ipsam dolore eaque ab ea est recusandae ab.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(55, 18, 11, 'generate e-business infrastructures', 'Ut quod laborum delectus quidem impedit quia odio quis corporis provident atque incidunt vel ut quasi est qui quisquam ducimus eligendi iste autem autem ipsa rerum ab.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(56, 1, 12, 'synergize customized infomediaries', 'Quaerat a eos voluptas iure nihil molestiae laborum tempora et qui quia consectetur labore ea optio.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(57, 3, 12, 'syndicate granular webservices', 'Rerum sunt culpa voluptas iste iure quia nihil voluptatem dolores quas laborum delectus recusandae voluptas adipisci dolor delectus.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(58, 10, 12, 'synthesize cutting-edge portals', 'Dolor vel sit odit non non quisquam illo delectus accusantium repellendus quidem eos omnis et necessitatibus libero odit et laboriosam repellat accusamus iusto praesentium eum aspernatur ut vero.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(59, 12, 12, 'architect enterprise convergence', 'Repudiandae sit dolorum culpa labore et quaerat ea expedita at eligendi dignissimos sint vitae porro voluptas voluptas temporibus doloribus harum ea et vero corrupti et aut quia.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(60, 17, 12, 'orchestrate proactive supply-chains', 'Est non neque rerum est rerum beatae commodi sapiente iusto ut cupiditate voluptatum tempore incidunt nostrum sed.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(61, 16, 13, 'generate B2C systems', 'Saepe veniam perspiciatis numquam in a fuga cum repellat et nobis praesentium architecto harum totam sapiente dolores qui quisquam itaque est molestias.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(62, 16, 13, 'iterate next-generation architectures', 'Adipisci voluptatum repellat id aut impedit voluptatem possimus vel et voluptatum quam qui necessitatibus iusto ab est architecto rerum nostrum.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(63, 6, 13, 'benchmark back-end e-commerce', 'Velit voluptatum quae dolorum saepe occaecati hic ipsum animi nemo quos eligendi eos voluptas natus dolores et at corrupti ut saepe voluptatem placeat veritatis culpa enim.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(64, 13, 13, 'seize turn-key partnerships', 'Veniam hic at sint asperiores iure consequuntur dolor omnis expedita dolores blanditiis ab commodi aut corrupti quia nemo enim sunt nulla et ea natus repellendus et et.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(65, 18, 13, 'expedite 24/365 content', 'Blanditiis tempore iste voluptatum ex qui quo velit provident libero deserunt tenetur et et modi facilis aut quam ipsum.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(66, 6, 14, 'syndicate plug-and-play metrics', 'Assumenda ipsam facere commodi iusto ab dolor adipisci unde quibusdam consequatur cupiditate dolor iure voluptate nihil harum facilis rerum voluptatem aperiam.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(67, 14, 14, 'embrace strategic partnerships', 'Distinctio asperiores nulla dolores dolores reiciendis enim ea ea qui et tenetur voluptas praesentium sunt dignissimos et temporibus qui corrupti quo.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(68, 5, 14, 'cultivate global models', 'Nobis aspernatur explicabo dignissimos quo quibusdam enim dicta aut porro repudiandae nihil magni numquam dignissimos sunt in repudiandae illum modi voluptatem ut nesciunt dolor nihil est ut quae a.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(69, 20, 14, 'redefine customized synergies', 'Nemo aperiam praesentium itaque nihil qui et omnis ipsum eos quo nesciunt maxime tempore soluta beatae nemo consectetur repellendus porro in dolor illo veniam.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(70, 19, 14, 'deploy cutting-edge platforms', 'Et rerum eum ducimus officiis suscipit aliquid quisquam error nisi recusandae exercitationem vel officiis pariatur voluptas quaerat repudiandae omnis cupiditate.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(71, 1, 15, 'repurpose user-centric e-markets', 'Nisi in sint non et nihil dignissimos omnis iste necessitatibus aut cupiditate inventore repellendus perferendis tenetur fugiat ad exercitationem et corrupti excepturi saepe et facilis dolor quis.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(72, 7, 15, 'reintermediate ubiquitous relationships', 'Totam nihil est et rerum reiciendis porro recusandae quibusdam omnis doloremque architecto magni minima rerum.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(73, 6, 15, 'incubate clicks-and-mortar web-readiness', 'Porro sapiente reprehenderit eos asperiores officia quis in iste molestiae est ut consequatur exercitationem deserunt velit quo laudantium quod aut.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(74, 7, 15, 'recontextualize real-time schemas', 'Architecto et est id molestias ut quibusdam nobis sequi nobis et praesentium minima sed amet repellendus.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(75, 16, 15, 'orchestrate best-of-breed functionalities', 'Quas qui eligendi beatae sint accusamus officiis ut aut ratione repellendus ea ratione eius deleniti rerum blanditiis omnis sunt alias sint.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(76, 2, 16, 'implement bricks-and-clicks vortals', 'Perferendis voluptas est recusandae nobis quod consequatur sed neque cupiditate dolor non quibusdam architecto ipsam quis ut quaerat sunt.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(77, 6, 16, 'utilize strategic relationships', 'Dicta error occaecati placeat ducimus fugiat optio dolores voluptas unde nostrum quo aliquid fuga ipsum vel sapiente est tenetur rerum dolorem exercitationem quis.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(78, 12, 16, 'reintermediate robust ROI', 'Adipisci sed sit exercitationem laudantium aut eius tempora necessitatibus alias doloribus accusamus quam error culpa adipisci et consectetur eos.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(79, 4, 16, 'repurpose user-centric webservices', 'Aut fuga numquam rerum officia reiciendis cupiditate qui harum autem omnis molestiae est odit et hic quo consequatur dolores voluptate voluptatem excepturi officiis dolorem.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(80, 13, 16, 'envisioneer next-generation synergies', 'Est quidem exercitationem consequatur vitae aspernatur omnis et doloribus tempore id at aperiam et.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(81, 15, 17, 'engage B2B markets', 'Qui et in blanditiis sunt ut voluptatem laborum error magnam consequuntur natus consequatur quod ut.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(82, 5, 17, 'maximize clicks-and-mortar convergence', 'Et facere aut rerum totam earum optio aut omnis et ea dolorem repellat rem iure et dolorem quos nemo.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(83, 2, 17, 'scale sexy networks', 'Voluptatem at iste omnis saepe iusto et ad nam fuga itaque ratione dignissimos minima explicabo adipisci nihil optio et sunt.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(84, 9, 17, 'monetize turn-key metrics', 'Aut molestiae odio officia maxime exercitationem voluptates sed dolores suscipit aperiam harum eum delectus error sit maiores mollitia ut sint non amet dolores voluptas et.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(85, 15, 17, 'empower impactful webservices', 'Qui ut blanditiis voluptas earum tempore praesentium deleniti praesentium sit repudiandae quaerat maxime magnam aut.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(86, 17, 18, 'empower end-to-end e-markets', 'Ab expedita fuga officia cumque modi quasi minus consequatur quo dolore quidem maiores fugiat odio.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(87, 7, 18, 'repurpose cross-platform deliverables', 'Ipsam dolor quaerat quam ipsum rerum aperiam alias quis delectus libero officiis omnis maiores aut ad vel a quas et modi id.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(88, 9, 18, 'innovate virtual metrics', 'Temporibus qui delectus at modi molestiae voluptatum distinctio sit in non numquam beatae officia consequuntur iusto ab corrupti doloremque ab autem.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(89, 3, 18, 'synthesize web-enabled markets', 'Rerum et vitae saepe possimus et rem quos nemo autem magnam modi quo temporibus mollitia possimus.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(90, 5, 18, 'extend vertical channels', 'Quo maxime quia adipisci ut dignissimos nisi laboriosam voluptatum rem quaerat tenetur sit molestiae et quia natus distinctio necessitatibus provident earum enim non.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(91, 3, 19, 'implement viral supply-chains', 'Repellendus quod sed quia voluptas ducimus dolorem qui eligendi harum quidem aut placeat id eius odit quis saepe provident officia velit eos.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(92, 18, 19, 'syndicate one-to-one methodologies', 'Ipsa ea nisi ab perferendis est aliquam pariatur dolore et est nesciunt cumque repellendus eos at eligendi consectetur.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(93, 10, 19, 'productize intuitive eyeballs', 'Illo doloremque debitis dignissimos sapiente eius tempora id ipsam est doloribus aut est et possimus ipsum quae earum quia et soluta est.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(94, 5, 19, 'implement granular methodologies', 'Sint ea a qui numquam non commodi dolorum suscipit ut enim vel quae accusantium assumenda voluptatibus odit molestiae ut ipsa non dolor incidunt velit.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(95, 20, 19, 'target one-to-one webservices', 'Culpa voluptatem voluptas esse ipsam in natus libero voluptatibus est nemo earum totam eligendi.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(96, 14, 20, 'scale integrated mindshare', 'Sit error pariatur ut nostrum dolorem vitae nisi saepe sed dolores nostrum placeat quae qui quis dolores est sed explicabo in sunt iste asperiores explicabo.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(97, 20, 20, 'utilize real-time interfaces', 'Quo laborum pariatur exercitationem aliquam asperiores quos quis voluptatem expedita blanditiis est porro ex earum.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(98, 19, 20, 'disintermediate open-source infrastructures', 'Dolorem adipisci consequuntur sunt et non ut quam quis ratione fugiat provident ea voluptatem provident.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(99, 10, 20, 'embrace ubiquitous relationships', 'Rerum fugit ut vero quia deleniti possimus dolorem deserunt odio fugit neque et enim et a at fugiat aut.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(100, 17, 20, 'reintermediate best-of-breed infomediaries', 'Deleniti eius architecto sunt ut modi dolor autem cum voluptas et vel occaecati et facilis sed sed nostrum esse adipisci deleniti corporis sunt corrupti tempora inventore iste.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(101, 7, 21, 'productize visionary schemas', 'Quo quibusdam qui molestiae velit velit facere quidem aut asperiores veritatis sequi provident quisquam consequatur dolore aspernatur similique id qui sint maiores quibusdam nihil voluptatem cumque provident ut beatae.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(102, 15, 21, 'facilitate out-of-the-box models', 'Quisquam et ut totam dicta laborum aut a ipsam possimus exercitationem qui et earum deserunt est qui voluptas quo rerum amet consequatur.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(103, 4, 21, 'integrate rich schemas', 'Et reiciendis perspiciatis veritatis quos rerum nobis necessitatibus aliquid maiores esse tempore vel ratione a dolor tempore et minus eos consectetur voluptates iste occaecati minus numquam.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(104, 11, 21, 'whiteboard killer webservices', 'Iusto qui et odio soluta repellat reprehenderit doloribus cum doloremque saepe corporis voluptas veniam est harum rerum et impedit esse et facere nisi ad.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(105, 16, 21, 'target vertical applications', 'Eaque cum totam tenetur quia delectus minima quod repellat sed cumque pariatur occaecati at fugiat quo repellendus et dolore et sit nulla delectus molestiae et.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(106, 14, 22, 'unleash integrated channels', 'A sed rerum rerum aut veniam sunt magni sed nihil ut eum in velit tempora optio minima et tenetur error non ea labore omnis.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(107, 14, 22, 'target collaborative models', 'Necessitatibus nam voluptas est ullam cumque tempore numquam velit dolores magnam dolor expedita ad nulla consequatur voluptatum architecto maiores molestias.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(108, 3, 22, 'whiteboard cross-media networks', 'Rem delectus at quia non perferendis rerum aliquam ut praesentium ullam nihil qui ex consequatur ratione.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(109, 10, 22, 'envisioneer distributed functionalities', 'Quis soluta consequatur eos nihil dicta molestiae iure ratione qui nemo fugiat dolorem similique ipsa deleniti non odit ea illo occaecati eaque excepturi.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(110, 17, 22, 'benchmark turn-key partnerships', 'Pariatur ex maiores ut est aspernatur optio velit neque temporibus ipsa rem neque blanditiis.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(111, 4, 23, 'drive innovative platforms', 'Ab aut et quis perspiciatis id sit perferendis maxime explicabo perspiciatis id quia minus aut atque est laboriosam excepturi.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(112, 10, 23, 'exploit seamless vortals', 'Aperiam velit cumque non nulla deleniti alias excepturi molestiae quia veniam id adipisci sed.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(113, 6, 23, 'implement efficient e-markets', 'Exercitationem recusandae consequatur ut officiis voluptas ut rerum aliquid temporibus autem accusamus sed nulla nulla repellat et voluptatibus excepturi id ducimus tempora.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(114, 4, 23, 'seize vertical channels', 'Et autem rerum voluptate odit est accusamus unde non nemo amet iure atque cupiditate nostrum consequuntur nisi hic est non sit.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(115, 13, 23, 'deploy sticky infomediaries', 'Et ea doloremque ullam explicabo non similique incidunt cumque deserunt cumque ducimus assumenda nisi vitae enim molestiae quod at molestias nisi commodi.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(116, 11, 24, 'visualize distributed paradigms', 'Nisi aspernatur mollitia nisi provident reiciendis sint quas nihil culpa pariatur laudantium tempora quidem eligendi quas est fugit molestiae fugit.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(117, 13, 24, 'innovate virtual synergies', 'Quis earum sit aperiam animi est aut fuga pariatur nemo iure est quo dicta animi ut quo voluptatem odit quia animi eaque consequuntur voluptas non quae dolorem.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(118, 2, 24, 'engineer wireless interfaces', 'Aliquid velit est aut commodi et harum corporis enim rerum est earum est perspiciatis nobis consectetur ea magnam dolorem ut mollitia unde occaecati repellat ullam sit.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(119, 15, 24, 'whiteboard extensible networks', 'Amet illo quae aut consequatur a ducimus magnam cum est consequatur adipisci consequatur id aut et nihil quidem eos voluptas maxime.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(120, 2, 24, 'expedite user-centric interfaces', 'Voluptates sunt ut totam laudantium aut magni dolor molestiae nemo id debitis vero ad nostrum.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(121, 7, 25, 'syndicate mission-critical experiences', 'Rem similique vero eum ut est itaque sed eum et quia excepturi dolorum blanditiis aut excepturi dolorum dolores cumque rem sit saepe est qui delectus.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(122, 7, 25, 'integrate cutting-edge users', 'Delectus tempora non quasi est nihil natus animi neque quia temporibus et eveniet ut ut et voluptas aut molestiae in et laboriosam aut veniam qui est quia.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(123, 6, 25, 'innovate ubiquitous webservices', 'Dolores voluptatem est eum unde in atque ut quia consequatur et ad velit et quia.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(124, 19, 25, 'syndicate revolutionary markets', 'Ipsum vel sed hic nostrum magnam totam blanditiis veniam et suscipit amet rerum beatae magnam aperiam minima aut ullam excepturi quam eligendi animi animi animi consequatur.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(125, 4, 25, 'enable killer schemas', 'Quod et officia ut aut officiis velit dolores id harum repellendus veritatis necessitatibus tempora sint minima.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(126, 5, 26, 'whiteboard compelling platforms', 'Quia delectus similique delectus quam distinctio dignissimos inventore non qui et impedit amet voluptas ex sunt nostrum ut ut voluptatem animi quasi deserunt hic quod sint et.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(127, 17, 26, 'target back-end methodologies', 'Ab sunt est quaerat praesentium illum rerum est cupiditate blanditiis rerum non quisquam et nulla blanditiis doloremque ea.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(128, 6, 26, 'empower sexy ROI', 'Laudantium voluptatem consequatur sit perferendis soluta minus repudiandae tenetur rerum non quibusdam placeat animi ad magni.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(129, 20, 26, 'utilize strategic action-items', 'Autem est voluptatibus voluptatibus velit at et temporibus provident velit quasi occaecati rem sed.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(130, 16, 26, 'cultivate scalable webservices', 'Aut doloremque aliquid ut iste adipisci eum earum expedita nobis soluta ut autem.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(131, 11, 27, 'deploy open-source technologies', 'Repellat ut molestiae deleniti magnam suscipit optio vel consectetur et nemo cumque perspiciatis eos consequuntur optio harum quia hic est fuga quos ipsa odio.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(132, 15, 27, 'facilitate B2B schemas', 'Repellendus explicabo eum hic dicta eligendi ea eos ut ipsum qui voluptatem occaecati officia excepturi illo nihil molestias sunt qui optio ullam debitis voluptatem voluptas.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(133, 11, 27, 'visualize mission-critical technologies', 'Esse quisquam sit sit sed voluptatem reprehenderit vel enim et dolores animi maiores consequatur id vel velit autem laudantium sit consectetur dicta eum impedit voluptatibus dignissimos iusto autem.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(134, 17, 27, 'utilize cross-platform eyeballs', 'Nulla id ea velit assumenda est ad saepe repudiandae est et non dignissimos dolores odio quo explicabo et quas laboriosam exercitationem ipsa repellendus in reiciendis omnis.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(135, 13, 27, 'engineer magnetic mindshare', 'Veniam consequatur iusto sit atque esse et harum harum esse iure harum laudantium sed non quasi.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(136, 16, 28, 'innovate collaborative e-markets', 'Numquam quis quidem modi et odio molestiae voluptas explicabo aut laborum voluptatibus ea et magnam amet sed dolores nisi ipsam.', 5, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(137, 4, 28, 'synthesize world-class interfaces', 'Nihil ut eveniet iure occaecati ducimus nostrum et alias sed et sequi voluptatem eum numquam qui laborum qui inventore ut.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(138, 14, 28, 'engage global initiatives', 'Quia et rerum fugiat beatae et sunt odio sit voluptatem non porro optio est minus tempora possimus dolores provident veritatis.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(139, 19, 28, 'evolve frictionless markets', 'Placeat in eum omnis illum at sequi voluptatibus voluptas et sed tenetur occaecati.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(140, 13, 28, 'orchestrate proactive markets', 'Dolores aut dolores possimus neque quibusdam unde at ea ex fuga quia officiis quam.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(141, 2, 29, 'evolve strategic systems', 'Sint itaque non quo explicabo reiciendis nobis ut et nostrum ipsam unde culpa ea maxime corporis aut.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(142, 1, 29, 'cultivate virtual paradigms', 'Modi possimus eius maiores rerum officiis occaecati atque eveniet sed laboriosam eveniet ipsa dicta non veritatis a ut molestiae adipisci ratione rerum voluptatem officiis placeat hic et provident.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(143, 4, 29, 'evolve ubiquitous models', 'Ea voluptatem eius sit in velit at nemo est sed et est quis consequuntur et dolor at perferendis sapiente beatae odio eum est perferendis.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(144, 3, 29, 'maximize global users', 'Quos similique doloremque alias possimus et eius error eos id voluptatum suscipit vel aut distinctio omnis.', 3, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(145, 9, 29, 'utilize user-centric ROI', 'Beatae vel quam fugit nulla aut qui eos ea consequatur asperiores cupiditate consequuntur reiciendis totam facere.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(146, 4, 30, 'revolutionize sticky partnerships', 'Modi id qui dolor est reiciendis eaque nostrum in sed debitis voluptas ea est ullam eaque.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(147, 9, 30, 'generate scalable models', 'Laborum non iste voluptatem ea quas eum quis magnam qui et assumenda ipsa consequatur ea iste est nostrum corrupti deserunt rerum delectus.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(148, 4, 30, 'innovate 24/7 action-items', 'Cum et reprehenderit inventore qui maiores voluptatem quia non illo qui quidem voluptatem mollitia et enim.', 1, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(149, 7, 30, 'enable dynamic initiatives', 'Assumenda nobis ut voluptas et veniam fugiat ut at provident similique aut quisquam maxime at qui nesciunt harum aliquam vitae omnis et sit autem in maiores accusantium sapiente.', 2, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(150, 6, 30, 'disintermediate rich partnerships', 'Qui qui exercitationem nesciunt velit porro temporibus quo mollitia quibusdam debitis nesciunt ut tempore alias tempora occaecati vel soluta aut iste pariatur possimus earum aut excepturi ipsam illo.', 4, '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(151, 21, 14, 'Stefan', 'Alles dat ik wil zeggen over dit product', 4, '2019-05-23 16:48:19', '2019-05-23 16:48:19'),
(152, 21, 14, 'Stefan', 'Alles dat deze lelijke bakkes verdiend', 0, '2019-05-23 16:48:55', '2019-05-23 16:48:55'),
(153, 21, 14, 'dat is zo', 'of toch niet', 5, '2019-05-23 17:00:19', '2019-05-23 17:00:19'),
(154, 21, 14, 'niks', 'alles', 5, '2019-05-23 17:00:41', '2019-05-23 17:00:41'),
(155, 21, 10, 'Wat dom zeg', 'Ik weet niks', 1, '2019-05-24 09:11:16', '2019-05-24 09:11:16'),
(156, 21, 10, 'wat een review', 'dat niks uitmaakt', 5, '2019-05-24 09:12:59', '2019-05-24 09:12:59'),
(157, 21, 1, 'Alles', 'dat een reviews verdiend', 1, '2019-05-24 09:14:55', '2019-05-24 09:14:55'),
(158, 21, 3, 'iets', 'anders', 4, '2019-05-24 09:58:44', '2019-05-24 09:58:44'),
(159, 21, 1, 'best product', 'iets anders', 3, '2019-06-03 13:05:18', '2019-06-03 13:05:18'),
(160, 21, 37, 'Hallo', 'cool ding', 5, '2019-06-18 11:26:47', '2019-06-18 11:26:47'),
(161, 21, 37, 'wie is deze?', 'kzweer', 1, '2019-06-18 11:29:02', '2019-06-18 11:29:02');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `summary`, `created_at`, `updated_at`) VALUES
(1, 1, 'et', 'Corrupti magni voluptatem ipsa neque veritatis quasi.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(2, 1, 'tempora', 'Hic occaecati sunt in.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(3, 1, 'omnis', 'Aliquid odit itaque ipsa debitis pariatur voluptates.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(4, 2, 'autem', 'Cum et quis officia tempora non.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(5, 2, 'illum', 'Ea est necessitatibus enim beatae non ut quasi assumenda.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(6, 2, 'ea', 'Placeat in voluptatem fugiat numquam.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(7, 3, 'numquam', 'Quia aspernatur quo dolore fuga atque nihil nostrum.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(8, 3, 'quia', 'Quasi sunt est accusamus.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(9, 3, 'provident', 'Earum aut aut quasi minus nihil beatae qui.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(10, 4, 'fugit', 'Nostrum corrupti doloribus rerum atque.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(11, 4, 'enim', 'Facere maxime vero voluptas.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(12, 4, 'sapiente', 'Aspernatur ullam autem nostrum voluptatem enim quia sit aut.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(13, 5, 'numquam', 'Expedita sint nisi deserunt.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(14, 5, 'dolorem', 'Delectus aliquid in natus iusto vel exercitationem id.', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(15, 5, 'saepe', 'Dolorum sint accusantium quibusdam aperiam.', '2019-05-20 13:07:20', '2019-05-20 13:07:20');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `admin` int(255) NOT NULL DEFAULT '0',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jaquan Conn', 'zaria80@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7aJZv2lkP6', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(2, 'Alfred Kunde', 'berneice41@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZTocuj17PK', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(3, 'Prof. Carson Connelly', 'dahlia.osinski@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '9VzRCrL6pr', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(4, 'Jazmyn Johns', 'ferry.margot@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3A5mbFNZXc', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(5, 'Newton Conroy', 'jace60@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YGrHTUteJv', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(6, 'Arnoldo Cartwright', 'bennie.boyle@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bHzY43Cn15', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(7, 'Kenyatta Hane Jr.', 'janie.marquardt@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MKulznzbgO', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(8, 'Ms. Tiara Fahey IV', 'tracey42@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V3wGCLB19q', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(9, 'Dr. Hillard Breitenberg', 'kflatley@example.org', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jSEUBNvL0B', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(10, 'Lula Bradtke', 'hvon@example.org', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2xExWx4UIc', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(11, 'Leta Hills', 'baron99@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b1n2iK7b1F', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(12, 'Florida Hansen', 'nedra10@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FgJOecyKkK', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(13, 'Prof. Afton Sauer Sr.', 'drunolfsdottir@example.org', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Km4Rt2WdGe', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(14, 'Kali Balistreri', 'jude99@example.org', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QJoRXX3xPd', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(15, 'Johnpaul Goodwin', 'gkirlin@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iMdLqG5uEZ', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(16, 'Mrs. Shanny Wilderman', 'howe.micah@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bO6oXvcSlA', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(17, 'Prof. Jewel Zboncak', 'elliot.hyatt@example.org', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EWXXjYpo1A', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(18, 'Shana Turcotte', 'qleuschke@example.net', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ywkmIM6D8B', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(19, 'Alisha Donnelly PhD', 'sipes.lawson@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'smFTLCNzgX', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(20, 'Mr. Michael Gibson Jr.', 'letha25@example.com', '2019-05-20 13:07:20', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NlAvkeS7tx', '2019-05-20 13:07:20', '2019-05-20 13:07:20'),
(21, 'Admin', 'PvT_Shifty@hotmail.com', NULL, 1, '$2y$10$ZuO1sKTfFnyB.28QlRxzp.MTjnFkUepTCAIbCwqQrNAONUd8.qljy', '8wh0jZAzqCjf3jxPVBZljIfkhurUeuIRWHaYjba0WnhZvvZPi1ozaGzrSeQV', '2019-05-22 11:02:17', '2019-05-22 11:02:17'),
(22, 'TestUser', 'ja@iets.nee', NULL, 0, '$2y$10$UU6cM7y0j0isudL72rGKquei0/HICHKJHDgrUs469uLym42056p0.', NULL, '2019-06-18 08:46:59', '2019-06-18 08:46:59');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `subcategory_id` (`subcategory_id`);

--
-- Indexen voor tabel `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexen voor tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT voor een tabel `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT voor een tabel `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
