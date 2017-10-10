-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2017 at 11:22 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `haimocweddingv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_album_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `name`, `content`, `path`, `image_cover`, `isActive`, `order`, `user_id`, `category_album_id`, `created_at`, `updated_at`) VALUES
(2, 'Ảnh Cưới Đức Và Ngân', NULL, 'anh-cuoi-duc-va-ngan', 'images/uploads/images/album/ducngan/NHAT4480-min.png', 1, 1, 1, 2, '2017-10-07 05:28:50', '2017-10-08 11:14:13'),
(3, 'Ảnh Cưới Huy Và Trâm', '<p>1</p>', 'anh-cuoi-huy-va-tram', 'images/uploads/images/album/huytram/NAMZ1905-min.png', 1, 1, 1, 2, '2017-10-09 07:14:54', '2017-10-09 07:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `category_albums`
--

CREATE TABLE `category_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_albums`
--

INSERT INTO `category_albums` (`id`, `name`, `path`, `isActive`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Phóng Sự Ngày Cưới', 'phong-su-ngay-cuoi', 1, 1, '2017-10-07 05:08:20', '2017-10-07 13:40:19'),
(2, 'Album Ngoại Cảnh', 'album-ngoai-canh', 1, 1, '2017-10-07 05:32:11', '2017-10-07 13:40:04'),
(3, 'Album Gia Đình - Em Bé', 'album-gia-dinh-em-be', 1, 1, '2017-10-07 13:40:41', '2017-10-07 13:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2017-10-03 06:54:38', '2017-10-03 06:54:38'),
(2, 'User', '2017-10-03 06:54:38', '2017-10-03 06:54:38'),
(3, 'Tin Tức', '2017-10-03 06:54:38', '2017-10-03 06:54:38'),
(4, 'Cấu Hình', '2017-10-03 06:54:38', '2017-10-03 06:54:38'),
(5, 'Location', '2017-10-03 13:40:42', '2017-10-03 13:40:42'),
(7, 'Album', '2017-10-04 12:54:15', '2017-10-04 12:54:15'),
(8, 'Quotation', '2017-10-07 01:38:49', '2017-10-07 01:38:49'),
(9, 'Loại Album', '2017-10-07 03:37:37', '2017-10-07 03:37:37'),
(10, 'Bài Viết', '2017-10-10 02:36:55', '2017-10-10 02:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images_albums`
--

CREATE TABLE `images_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images_albums`
--

INSERT INTO `images_albums` (`id`, `image`, `album_id`, `created_at`, `updated_at`) VALUES
(5, 'images/uploads/images/album/ducngan/NHAT4432-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(6, 'images/uploads/images/album/ducngan/NHAT4434-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(7, 'images/uploads/images/album/ducngan/NHAT4454-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(8, 'images/uploads/images/album/ducngan/NHAT4470-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(9, 'images/uploads/images/album/ducngan/NHAT4480-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(10, 'images/uploads/images/album/ducngan/NHAT4498-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(11, 'images/uploads/images/album/ducngan/NHAT4501-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(12, 'images/uploads/images/album/ducngan/NHAT4510-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(13, 'images/uploads/images/album/ducngan/NHAT4535-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(14, 'images/uploads/images/album/ducngan/NHAT4553-Edit-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(15, 'images/uploads/images/album/ducngan/NHAT4564-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(16, 'images/uploads/images/album/ducngan/NHAT4576-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(17, 'images/uploads/images/album/ducngan/NHAT4579-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(18, 'images/uploads/images/album/ducngan/NHAT4595-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(19, 'images/uploads/images/album/ducngan/NHAT4632-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(20, 'images/uploads/images/album/ducngan/NHAT4737-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(21, 'images/uploads/images/album/ducngan/NHAT4782-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(22, 'images/uploads/images/album/ducngan/NHAT4846-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(23, 'images/uploads/images/album/ducngan/NHAT4848-min.png', 2, '2017-10-08 11:12:33', '2017-10-08 11:12:33'),
(24, 'images/uploads/images/album/ducngan/NHAT4859-min.png', 2, '2017-10-08 11:12:34', '2017-10-08 11:12:34'),
(25, 'images/uploads/images/album/huytram/10-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(26, 'images/uploads/images/album/huytram/NAMZ1824-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(27, 'images/uploads/images/album/huytram/NAMZ1827-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(28, 'images/uploads/images/album/huytram/NAMZ1874-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(29, 'images/uploads/images/album/huytram/NAMZ1905-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(30, 'images/uploads/images/album/huytram/NAMZ1912-min.png', 3, '2017-10-09 07:14:54', '2017-10-09 07:14:54'),
(31, 'images/uploads/images/album/huytram/NAMZ1921-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(32, 'images/uploads/images/album/huytram/NAMZ1950-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(33, 'images/uploads/images/album/huytram/NAMZ2026-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(34, 'images/uploads/images/album/huytram/NAMZ2048-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(35, 'images/uploads/images/album/huytram/NAMZ2049-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(36, 'images/uploads/images/album/huytram/NAMZ2071-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(37, 'images/uploads/images/album/huytram/NAMZ2074-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(38, 'images/uploads/images/album/huytram/NAMZ2144-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(39, 'images/uploads/images/album/huytram/NAMZ2158-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(40, 'images/uploads/images/album/huytram/NAMZ2161-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(41, 'images/uploads/images/album/huytram/NAMZ2167-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(42, 'images/uploads/images/album/huytram/NAMZ2188-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(43, 'images/uploads/images/album/huytram/NAMZ2198-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(44, 'images/uploads/images/album/huytram/NAMZ2215-min.png', 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image_cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_avata` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_background` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_mota_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mota_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_mota_1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_mota_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mota_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_mota_2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_mota_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_mota_3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_mota_3` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `content`, `image_cover`, `image_avata`, `image_mobile`, `image_background`, `image_mota_1`, `title_mota_1`, `content_mota_1`, `image_mota_2`, `title_mota_2`, `content_mota_2`, `image_mota_3`, `title_mota_3`, `content_mota_3`, `isActive`, `order`, `created_at`, `updated_at`, `path`) VALUES
(2, 'Cầu Tình Yêu', '<p>Vị tr&iacute; thuận lợi, view đẹp mắt đ&atilde; gi&uacute;p cho c&acirc;y cầu n&agrave;y c&agrave;ng ng&agrave;y c&agrave;ng hot. Kh&ocirc;ng chỉ l&agrave; điểm vui chơi, h&ograve; hẹn, cầu t&igrave;nh y&ecirc;u c&ograve;n được nhiều c&ocirc; d&acirc;u ch&uacute; rể lựa chọn ghi lại khoảnh khắc kỉ niệm trong bộ ảnh cưới</p>', 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/cautinhyeu.png', NULL, 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/temp/1.jpg', 'Nơi Chụp Ảnh Cưới Lãng Mạn', '<p>Địa Điểm L&yacute; Tưởng, Gợi Nhớ Kh&ocirc;ng Kh&iacute; N&ecirc;n Thơ Cho C&aacute;c C&acirc;u Chuyện T&igrave;nh, L&agrave; Sự Khởi Đầu Cho Một Cặp Đ&ocirc;i T&igrave;m Đến Ngưỡng Cửa H&ocirc;n Nh&acirc;n</p>', 'images/uploads/images/diadiem/temp/1.jpg', 'Ổ Khóa Tình Yêu', '<p>Kh&ocirc;ng Biết Đ&atilde; C&oacute; Bao Nhi&ecirc;u T&igrave;nh Y&ecirc;u H&igrave;nh Th&agrave;nh, Ph&aacute;t Triển Rồi Đơm Hoa Kết Tr&aacute;i Nhờ Biểu Tượng Của Sự Kết Nối, Của Gặp Gỡ V&agrave; Hạnh Ngộ N&agrave;y</p>', 'images/uploads/images/diadiem/temp/1.jpg', 'Tình Yêu Bền Chặt Của Đôi Lứa', '<p>Kh&ocirc;ng Gian S&ocirc;ng Nước Cộng Với Đ&egrave;n Thiết Kế H&igrave;nh Tr&aacute;i Tim Đỏ Sẽ Gi&uacute;p C&aacute;c Cặp Đ&ocirc;i C&oacute; Th&ecirc;m Cảm Nhận Đặc Biệt Trong Ng&agrave;y Hạnh Ph&uacute;c.</p>', 1, 2, '2017-10-04 14:18:38', '2017-10-08 13:29:33', 'cau-tinh-yeu'),
(3, 'Đèo Hải Vân', '<p>Bối cảnh thơ mộng, thần ti&ecirc;n của đ&egrave;o Hải V&acirc;n sẽ l&agrave; một nơi tuyệt vời cho bạn chụp h&igrave;nh cưới đấy.</p>', 'images/uploads/images/album/temp/01-156.jpg', 'images/uploads/images/diadiem/deohaivan.png', NULL, 'images/uploads/images/album/temp/01-156.jpg', 'images/uploads/images/album/temp/01-156.jpg', 'Thiên Hạ Đệ Nhất Hùng Quan', '<p>Cảnh Quan Đẹp Tuyệt Vời Như Một Bức Tranh Thủy Mặc Với Một B&ecirc;n L&agrave; N&uacute;i Non H&ugrave;ng Vĩ, Một B&ecirc;n L&agrave; Biển Lăng C&ocirc; Xanh Trong Vắt</p>', 'images/uploads/images/album/temp/01-156.jpg', 'Cảnh Đẹp Núi Rừng Và Biển Cả', '<p>Tất Cả H&ograve;a Quyện V&agrave;o Nhau, Mang Lại Những H&igrave;nh Ảnh Lạ Mắt, Tinh Tế V&agrave; Độc Đ&aacute;o</p>', 'images/uploads/images/album/temp/01-156.jpg', 'Bối Cảnh Thơ Mộng, Thần Tiên', '<p>Gi&uacute;p Cả Hai C&oacute; Được Cảm X&uacute;c, Ấn Tượng L&agrave; Y&ecirc;u Cầu Tối Thiểu V&agrave; Đ&egrave;o Hải V&acirc;n Ho&agrave;n To&agrave;n Đ&aacute;p Ứng Được Ti&ecirc;u Ch&iacute; Đ&oacute;</p>', 1, 1, '2017-10-04 14:43:38', '2017-10-08 13:05:08', 'deo-hai-van'),
(4, 'Resort', '<p>test</p>', 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/resort.png', NULL, 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 1, 3, '2017-10-07 13:57:48', '2017-10-08 09:45:33', 'resort'),
(5, 'Phim Trường', '<p>1</p>', 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/phimtruong.png', NULL, 'images/uploads/images/diadiem/temp/1.jpg', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 'images/uploads/images/diadiem/temp/1.jpg', '1', '<p>1</p>', 1, 4, '2017-10-07 13:58:22', '2017-10-08 09:45:54', 'phim-truong'),
(6, 'Bãi Đá', '<p>1</p>', 'images/uploads/images/diadiem/baida.png', 'images/uploads/images/diadiem/baida.png', NULL, 'images/uploads/images/diadiem/baida.png', 'images/uploads/images/album/ducngan/NHAT4470-min.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/baida.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/baida.png', '1', '<p>1</p>', 1, 5, '2017-10-08 09:46:45', '2017-10-08 11:18:42', 'bai-da'),
(7, 'Bà Nà', '<p>1</p>', 'images/uploads/images/diadiem/bana.png', 'images/uploads/images/diadiem/bana.png', NULL, 'images/uploads/images/diadiem/bana.png', 'images/uploads/images/diadiem/bana.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/bana.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/bana.png', '1', '<p>1</p>', 1, 6, '2017-10-08 09:47:38', '2017-10-08 09:47:38', 'ba-na'),
(8, 'Biển Đà Nẵng', '<p>1</p>', 'images/uploads/images/diadiem/biendanang.png', 'images/uploads/images/diadiem/biendanang.png', NULL, 'images/uploads/images/diadiem/biendanang.png', 'images/uploads/images/diadiem/biendanang.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/biendanang.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/biendanang.png', '1', '<p>1</p>', 1, 7, '2017-10-08 10:08:52', '2017-10-08 10:08:52', 'bien-da-nang'),
(9, 'Bồ Câu', '<p>1</p>', 'images/uploads/images/diadiem/bocau.png', 'images/uploads/images/diadiem/bocau.png', NULL, 'images/uploads/images/diadiem/bocau.png', 'images/uploads/images/diadiem/bocau.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/bocau.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/bocau.png', '1', '<p>1</p>', 1, 8, '2017-10-08 10:09:34', '2017-10-08 10:09:34', 'bo-cau'),
(10, 'Đồi Chè', '<p>1</p>', 'images/uploads/images/diadiem/doiche.png', 'images/uploads/images/diadiem/doiche.png', NULL, 'images/uploads/images/diadiem/doiche.png', 'images/uploads/images/diadiem/doiche.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/doiche.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/doiche.png', '1', '<p>1</p>', 1, 9, '2017-10-08 10:11:20', '2017-10-08 10:11:20', 'doi-che'),
(11, 'Đồi Thông', '<p>1</p>', 'images/uploads/images/diadiem/doithong.png', 'images/uploads/images/diadiem/doithong.png', NULL, 'images/uploads/images/diadiem/doithong.png', 'images/uploads/images/diadiem/doithong.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/doithong.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/doithong.png', '1', '<p>1</p>', 1, 10, '2017-10-08 10:12:05', '2017-10-08 10:12:05', 'doi-thong'),
(12, 'Hội An', '<p>1</p>', 'images/uploads/images/diadiem/hoian.png', 'images/uploads/images/diadiem/hoian.png', NULL, 'images/uploads/images/diadiem/hoian.png', 'images/uploads/images/diadiem/hoian.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/hoian.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/hoian.png', '1', '<p>1</p>', 1, 11, '2017-10-08 10:13:14', '2017-10-08 10:13:14', 'hoi-an'),
(13, 'Hồ Xanh', '<p>1</p>', 'images/uploads/images/diadiem/hoxanh.png', 'images/uploads/images/diadiem/hoxanh.png', NULL, 'images/uploads/images/diadiem/hoxanh.png', 'images/uploads/images/diadiem/hoxanh.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/hoxanh.png', '1', '<p>1</p>', 'images/uploads/images/diadiem/hoxanh.png', '1', '<p>1</p>', 1, 12, '2017-10-08 10:13:53', '2017-10-08 10:13:53', 'ho-xanh');

-- --------------------------------------------------------

--
-- Table structure for table `location_albums`
--

CREATE TABLE `location_albums` (
  `location_id` int(10) UNSIGNED NOT NULL,
  `album_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_albums`
--

INSERT INTO `location_albums` (`location_id`, `album_id`, `created_at`, `updated_at`) VALUES
(5, 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(6, 2, '2017-10-08 11:17:50', '2017-10-08 11:17:50'),
(7, 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(8, 2, '2017-10-08 11:12:32', '2017-10-08 11:12:32'),
(8, 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(9, 3, '2017-10-09 07:14:55', '2017-10-09 07:14:55'),
(12, 2, '2017-10-08 11:12:32', '2017-10-08 11:12:32'),
(13, 2, '2017-10-08 11:12:32', '2017-10-08 11:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_09_08_085902_create_entrust_setup_tables', 2),
(4, '2017_09_08_092809_create_sliders_tables', 2),
(5, '2017_09_08_142322_create_news_table', 2),
(6, '2017_09_08_092701_create_configs_tables', 3),
(10, '2017_10_03_153539_create_location_albums_table', 5),
(11, '2017_10_03_154633_create_locations_albums_table', 6),
(15, '2017_10_07_075921_create_quotations_table', 8),
(16, '2017_10_03_152342_create_categoryalbums_table', 9),
(17, '2017_10_03_152648_create_albums_table', 10),
(18, '2017_10_03_154745_create_images_albums_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `isPost` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_post_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `path`, `content`, `isPost`, `image`, `category_post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', '<h2 style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:30px"><span style="font-family:helveticaneuelight"><strong><span style="color:#333333"><em><span style="background-color:#ffffff">Hải Mộc Wedding</span></em></span></strong></span></span></h2>\r\n\r\n<div class="container" style="-webkit-text-stroke-width:0px; border:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 15px; text-align:start; width:1170px">\r\n<div class="p-authentic-photo__description" style="border:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:15px; padding:0px; text-align:justify">\r\n<p style="margin-left:0px; margin-right:0px"><span style="font-size:13px"><em><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Đ&aacute;m cưới l&agrave; khởi đầu cho một chặng đường mới của c&aacute;c đ&ocirc;i uy&ecirc;n ương, v&igrave; thế lựa chọn dịch vụ cho ng&agrave;y trọng đại của cuộc đời l&agrave; rất quan trọng.&nbsp;<strong>Hải Mộc Wedding</strong>&nbsp;tự h&agrave;o l&agrave; một trong những&nbsp;<strong>nh&agrave; cung cấp dịch vụ cưới trọn g&oacute;i h&agrave;ng đầu, gi&aacute; cả phải chăng nhất</strong>&nbsp;hiện nay. Bởi v&igrave; ngo&agrave;i kỹ năng, nghiệp vụ chuy&ecirc;n nghiệp, phong c&aacute;ch phục vụ chu đ&aacute;o ch&iacute;nh &nbsp;l&agrave; yếu tố ch&uacute;ng t&ocirc;i lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n coi đ&aacute;m cưới của kh&aacute;ch h&agrave;ng l&agrave; một sự kiện quan trọng kh&ocirc;ng chỉ của c&ocirc; d&acirc;u - ch&uacute; rể m&agrave; c&ograve;n của ch&iacute;nh những th&agrave;nh vi&ecirc;n&nbsp;<strong>Hải Mộc Wedding</strong>, bởi&nbsp;<strong>Hải Mộc</strong>&nbsp;hiểu mỗi đ&aacute;m cưới l&agrave; &ldquo;duy nhất&rdquo;!</span></span></span></span></span></span></span></span></span></span></span></em></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">H&atilde;y đến với&nbsp;<strong>Hải Mộc Wedding</strong>, kể cho ch&uacute;ng t&ocirc;i nghe c&acirc;u chuyện t&igrave;nh y&ecirc;u v&agrave; chia sẻ dự định cưới sắp tới của hai bạn. Ch&uacute;ng t&ocirc;i sẽ c&ugrave;ng bạn l&agrave;m n&ecirc;n một ng&agrave;y trọng đại thật &yacute; nghĩa với những dịch vụ tốt nhất, chăm ch&uacute;t ho&agrave;n hảo đến từng chi tiết.</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><strong><em><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">C&aacute;c dịch vụ cưới tại&nbsp;Hải Mộc Wedding&nbsp;gồm:</span></span></span></em></strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Chụp h&igrave;nh cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Trọn g&oacute;i ng&agrave;y cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">&Aacute;o cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Trang điểm c&ocirc; d&acirc;u</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Tư vấn cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">v&agrave; những dịch vụ cưới đi k&egrave;m kh&aacute;c...</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><strong><em><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Hải Mộc Wedding lu&ocirc;n l&agrave;m bạn thật đẹp v&agrave; hạnh ph&uacute;c trong ng&agrave;y trọng đại!</span></span></span></em></strong></span></span></span></span></span></span></span></span></span></p>\r\n</div>\r\n</div>', 1, 'images/uploads/images/album/ducngan/NHAT4859-min.png', 2, 1, '2017-10-10 02:57:16', '2017-10-10 02:57:16');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2017-10-03 06:56:15', '2017-10-03 06:56:15'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(9, 'news-list', 'Xem Toàn Bộ Tin Tức', 'Được Xem Toàn Bộ Tin Tức', 3, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(10, 'news-create', 'Tạo Tin Tức Mới', 'Được Tạo Tin Tức Mới', 3, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(11, 'news-edit', 'Cập Nhật Tin Tức', 'Được Cập Nhật Tin Tức', 3, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(12, 'news-delete', 'Xóa Tin Tức', 'Được Xóa Tin Tức', 3, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(13, 'config-list', 'Toàn Quyền Cấu Hình', 'Được Toàn Quyền Cấu Hình', 4, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(14, 'config-create', 'Thêm Mới Cấu Hình', 'Được Thêm Mới Cấu Hình', 4, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(15, 'config-edit', 'Cập Nhật Cấu Hình', 'Được Cập Nhật Cấu Hình', 4, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(16, 'config-delete', 'Xóa Cấu Hình', 'Được Xóa Cấu Hình', 4, '2017-10-03 06:56:16', '2017-10-03 06:56:16'),
(17, 'location-list', 'Xem Danh Sách Địa Điểm', 'Được Xem Danh Sách Địa Điểm', 5, '2017-10-03 13:40:54', '2017-10-03 13:40:54'),
(18, 'location-create', 'Thêm Mới Địa Điểm', 'Được Thêm Mới Địa Điểm', 5, '2017-10-03 13:40:54', '2017-10-03 13:40:54'),
(19, 'location-edit', 'Cập Nhật Địa Điểm', 'Được Cập Nhật Địa Điểm', 5, '2017-10-03 13:40:54', '2017-10-03 13:40:54'),
(20, 'location-delete', 'Xóa Địa Điểm', 'Được Xóa Địa Điểm', 5, '2017-10-03 13:40:54', '2017-10-03 13:40:54'),
(21, 'album-list', 'Xem Danh Sách Album', 'Được Xem Danh SáchAlbum', 7, '2017-10-04 12:55:33', '2017-10-04 12:55:33'),
(22, 'album-create', 'Thêm Mới Album', 'Được Thêm Mới Album', 7, '2017-10-04 12:55:33', '2017-10-04 12:55:33'),
(23, 'album-edit', 'Cập Nhật Album', 'Được Cập Nhật Album', 7, '2017-10-04 12:55:33', '2017-10-04 12:55:33'),
(24, 'album-delete', 'Xóa Địa Album', 'Được Xóa Album', 7, '2017-10-04 12:55:33', '2017-10-04 12:55:33'),
(25, 'quotation-list', 'Xem Danh Sách Báo Giá', 'Được Xem Danh Sách Báo Giá', 8, '2017-10-07 01:40:03', '2017-10-07 01:40:03'),
(26, 'quotation-create', 'Thêm Mới Báo Giá', 'Được Thêm Mới Báo Giá', 8, '2017-10-07 01:40:03', '2017-10-07 01:40:03'),
(27, 'quotation-edit', 'Cập Nhật Báo Giá', 'Được Cập Nhật Báo Giá', 8, '2017-10-07 01:40:03', '2017-10-07 01:40:03'),
(28, 'quotation-delete', 'Xóa Địa Báo Giá', 'Được Xóa Báo Giá', 8, '2017-10-07 01:40:03', '2017-10-07 01:40:03'),
(29, 'categoryalbum-list', 'Xem Danh Sách Loại Album', 'Được Xem Danh Sách Loại Album', 9, '2017-10-07 03:39:24', '2017-10-07 03:39:24'),
(30, 'categoryalbum-create', 'Thêm Mới Loại Album', 'Được Thêm Mới Loại Album', 9, '2017-10-07 03:39:24', '2017-10-07 03:39:24'),
(31, 'categoryalbum-edit', 'Cập Nhật Loại Album', 'Được Cập Nhật Loại Album', 9, '2017-10-07 03:39:24', '2017-10-07 03:39:24'),
(32, 'categoryalbum-delete', 'Xóa Địa Loại Album', 'Được Xóa Loại Album', 9, '2017-10-07 03:39:24', '2017-10-07 03:39:24'),
(33, 'post-list', 'Xem Danh Sách Bài Viết', 'Được Xem Danh Sách Bài Viết', 10, '2017-10-10 02:38:27', '2017-10-10 02:38:27'),
(34, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 10, '2017-10-10 02:38:27', '2017-10-10 02:38:27'),
(35, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 10, '2017-10-10 02:38:27', '2017-10-10 02:38:27'),
(36, 'post-delete', 'Xóa Địa Bài Viết', 'Được Xóa Bài Viết', 10, '2017-10-10 02:38:27', '2017-10-10 02:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quotations`
--

INSERT INTO `quotations` (`id`, `name`, `path`, `image_cover`, `image`, `content`, `type`, `isActive`, `order`, `created_at`, `updated_at`) VALUES
(1, 'Quang Và Thư', 'quang-va-thu', 'images/uploads/images/album/ducngan/NHAT4564-min.png', 'images/uploads/images/1.jpg', '<p>test</p>', 0, 1, 1, '2017-10-07 01:42:30', '2017-10-10 03:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2017-10-03 06:58:23', '2017-10-03 06:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_order` int(11) NOT NULL DEFAULT '1',
  `slider_is_active` tinyint(1) NOT NULL DEFAULT '1',
  `slider_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_order`, `slider_is_active`, `slider_image`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'images/uploads/images/slider/2_1495620718917.jpg', '2017-10-07 13:42:58', '2017-10-07 13:43:51'),
(2, 1, 1, 'images/uploads/images/slider/NAMZ1624bg_1495333128630.jpg', '2017-10-07 13:43:58', '2017-10-07 13:43:58'),
(3, 1, 1, 'images/uploads/images/slider/NAMZ1778bg_1495333317878.jpg', '2017-10-07 13:44:05', '2017-10-07 13:44:05'),
(4, 1, 1, 'images/uploads/images/slider/NAMZ1888_1495333162043.jpg', '2017-10-07 13:44:13', '2017-10-07 13:44:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$f9dC8r/wNwMjH9pvn.TaDO5b8GLdERSMmScnNyOB6yK58i/opCrB.', NULL, '2017-10-03 06:52:37', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `albums_user_id_foreign` (`user_id`),
  ADD KEY `albums_category_album_id_foreign` (`category_album_id`);

--
-- Indexes for table `category_albums`
--
ALTER TABLE `category_albums`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_albums_name_unique` (`name`);

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Indexes for table `images_albums`
--
ALTER TABLE `images_albums`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_albums_album_id_foreign` (`album_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_albums`
--
ALTER TABLE `location_albums`
  ADD PRIMARY KEY (`location_id`,`album_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

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
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category_albums`
--
ALTER TABLE `category_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images_albums`
--
ALTER TABLE `images_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_category_album_id_foreign` FOREIGN KEY (`category_album_id`) REFERENCES `category_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `albums_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images_albums`
--
ALTER TABLE `images_albums`
  ADD CONSTRAINT `images_albums_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
