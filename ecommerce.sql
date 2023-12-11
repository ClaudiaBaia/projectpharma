-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Out-2023 às 13:42
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `prod_qty` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) NOT NULL,
  `meta_title` varchar(191) NOT NULL,
  `meta_descrip` varchar(191) NOT NULL,
  `meta_keywords` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Dermocosmetic', 'dermocosmetic', 'Products for all skin types', 0, 1, '1697542172.jpg', 'dermocosmetica', 'Products for all skin types, facial and body use. The care your skin needs for everyday use', 'dermocosmetica', '2023-10-10 15:32:41', '2023-10-17 10:32:37'),
(2, 'Health', 'health', 'Health', 0, 1, '1696958430.jpg', 'health', 'health', 'health', '2023-10-10 16:20:30', '2023-10-10 16:20:30'),
(3, 'Hair', 'hair', 'Hair products for better hair health', 0, 1, '1697541744.jpg', 'hair', 'hair', 'hair', '2023-10-17 10:22:24', '2023-10-17 10:37:47'),
(4, 'Makeup', 'makeup', 'Makeup', 0, 1, '1697542309.jpg', 'makeup', 'makeup', 'makeup', '2023-10-17 10:31:49', '2023-10-17 10:38:01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_06_133913_create_categories_table', 2),
(7, '2023_10_07_152543_create_products_table', 3),
(8, '2023_10_09_150122_create_carts_table', 4),
(9, '2023_10_10_154247_create_orders_table', 5),
(10, '2023_10_10_155034_create_order_items_table', 5),
(11, '2023_10_13_141244_create_wishlists_table', 6),
(12, '2023_10_13_174356_create_ratings_table', 7),
(13, '2023_10_13_175409_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `fname` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) DEFAULT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `pincode` varchar(191) NOT NULL,
  `total_price` varchar(191) NOT NULL,
  `payment_mode` varchar(191) NOT NULL,
  `payment_id` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) DEFAULT NULL,
  `tracking_no` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'claudia', 'santos', 'baia@gmail.com', '+351999555222', 'rua x', 'rua y', 'Porto', 'no', 'Portugal', '4460', '14', 'COD', NULL, 1, NULL, 'claudia2996', '2023-10-13 18:12:25', '2023-10-17 10:18:22'),
(2, '4', 'user', 'last', 'claudiasantosisla@hotmail.com', '99988778', 'rua x', 'rua y', 'Porto', 'no', 'Portugal', '4460', '14', 'COD', NULL, 0, NULL, 'claudia5691', '2023-10-16 14:35:27', '2023-10-16 14:35:27'),
(3, '1', 'claudia', 'santos', 'baia@gmail.com', '+351999555222', 'rua x', 'rua y', 'Porto', 'no', 'Portugal', '4460', '12', 'COD', NULL, 0, NULL, 'claudia5681', '2023-10-17 10:42:56', '2023-10-17 10:42:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `price` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '14', '2023-10-13 18:12:25', '2023-10-13 18:12:25'),
(2, '2', '1', '1', '14', '2023-10-16 14:35:27', '2023-10-16 14:35:27'),
(3, '3', '7', '1', '12', '2023-10-17 10:42:56', '2023-10-17 10:42:56');

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` longtext NOT NULL,
  `original_price` varchar(191) NOT NULL,
  `selling_price` varchar(191) NOT NULL,
  `image` varchar(191) NOT NULL,
  `qty` varchar(191) NOT NULL,
  `tax` varchar(191) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'SVR Sebiaclear', 'health', 'SVR Sebiaclear Gel is a cleansing gel, which cleanses and purifies the complexion, while balancing oily skin.', 'SVR Sebiaclear Gel is a cleansing gel, which cleanses and purifies the complexion, while balancing oily skin.', '16.00', '14', '1696957815.jpg', '21', '2', 0, 1, 'svr sebiaclear', 'svr sebiaclear', 'SVR Sebiaclear Gel is a cleansing gel, which cleanses and purifies the complexion, while balancing oily skin.', '2023-10-10 16:10:15', '2023-10-16 14:35:27'),
(2, 1, 'Vichy Neovadiol  SPF50 - 50ml', 'dermocosmetic', 'The Vichy Neovadiol Spot Day Cream SPF50 has a triple anti-aging effect', 'The Vichy Neovadiol Spot Day Cream SPF50 has a triple anti-aging effect on the skin and reliably protects against UVA and UVB radiation thanks to the integrated broad-spectrum sun protection factor.', '44', '44', '1696958016.webp', '2', '3', 0, 1, 'Vichy Neovadiol', 'Vichy Neovadiol', 'The Vichy Neovadiol Spot Day Cream SPF50 has a triple anti-aging effect', '2023-10-10 16:13:36', '2023-10-18 08:34:48'),
(3, 2, 'Thermacare Thermal Knee Band', 'Thermacare Thermal Knee Band', 'Indicated for the effective and targeted relief of knee pain associated with: overexertion, strains and sprains, arthritis and/or muscle tension.', 'Indicated for the effective and targeted relief of knee pain associated with: overexertion, strains and sprains, arthritis and/or muscle tension.', '30', '25', '1696958578.jpeg', '2', '2', 0, 1, 'Thermacare Thermal Knee Band', 'Thermacare Thermal', 'Thermacare Thermal Knee Band', '2023-10-10 16:22:58', '2023-10-16 13:25:51'),
(6, 1, 'Avène Body Scrub', 'dermocosmetic', 'Avène Body Scrub is an exfoliating gel, helps to exfoliate, while preparing the skin for moisturizing care', 'Avène Body Scrub is an exfoliating gel, helps to exfoliate, while preparing the skin for moisturizing care', '15', '8', '1697541477.jpg', '2', '2', 0, 1, 'avene', 'avene body', 'Avène Body Scrub is an exfoliating gel, helps to exfoliate, while preparing the skin for moisturizing care', '2023-10-17 10:17:57', '2023-10-18 09:25:08'),
(7, 3, 'Lazartigue Fortifying Shampoo', 'hair', 'A shampoo that stimulates the healthy growth of the hair fiber. Improves scalp health.', 'A shampoo that stimulates the healthy growth of the hair fiber. Improves scalp health.', '14', '12', '1697541886.jpg', '11', '2', 0, 1, 'lazartigue', 'lazartigue', 'lazartigue', '2023-10-17 10:24:46', '2023-10-17 10:42:56'),
(9, 4, 'Sensilis Eyeshadow Palette', 'makeup', 'Shadows that melt to infinity to create a naturally homogeneous effect', 'Shadows that melt to infinity to create a naturally homogeneous effect', '14', '12', '1697542598.jpg', '4', '4', 0, 1, 'sensilis', 'sensilis', 'Shadows that melt to infinity to create a naturally homogeneous effect', '2023-10-17 10:36:38', '2023-10-17 10:41:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `stars_rated` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '4', '2023-10-13 19:34:47', '2023-10-13 19:34:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `user_review` mediumtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `lname` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `address1` varchar(191) NOT NULL,
  `address2` varchar(191) NOT NULL,
  `city` varchar(191) NOT NULL,
  `state` varchar(191) NOT NULL,
  `country` varchar(191) NOT NULL,
  `pincode` varchar(191) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'claudia', 'baia@gmail.com', NULL, '$2y$10$4OH7E2Egf/ODU3H26Kos.OYU5A8ktt0UWoKww0fW4NB3EQkx6Nrb2', 'santos', '+351999555222', 'rua x', 'rua y', 'Porto', 'no', 'Portugal', '4460', 1, NULL, '2023-10-06 08:47:05', '2023-10-13 18:12:25'),
(4, 'user', 'user@gmail.com', NULL, '$2y$10$Y3N1m4qs6l07ke4Ba5wG6uKoBiLEYhyhn3vX.nbuUtlwI547ycTLG', 'last', '99988778', 'rua x', 'rua y', 'Porto', 'no', 'Portugal', '4460', 0, NULL, '2023-10-06 10:16:05', '2023-10-16 14:35:27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `prod_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices para tabela `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
