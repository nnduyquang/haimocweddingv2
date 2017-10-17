-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2017 at 04:13 AM
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
  `isFocus` tinyint(1) DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_post_id` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `path`, `content`, `isPost`, `isFocus`, `image`, `category_post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', '<h2 style="margin-left:0px; margin-right:0px; text-align:center"><span style="font-size:30px"><span style="font-family:helveticaneuelight"><strong><span style="color:#333333"><em><span style="background-color:#ffffff">Hải Mộc Wedding</span></em></span></strong></span></span></h2>\r\n\r\n<div class="container" style="-webkit-text-stroke-width:0px; border:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 15px; text-align:start; width:1170px">\r\n<div class="p-authentic-photo__description" style="border:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; margin-top:15px; padding:0px; text-align:justify">\r\n<p style="margin-left:0px; margin-right:0px"><span style="font-size:13px"><em><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Đ&aacute;m cưới l&agrave; khởi đầu cho một chặng đường mới của c&aacute;c đ&ocirc;i uy&ecirc;n ương, v&igrave; thế lựa chọn dịch vụ cho ng&agrave;y trọng đại của cuộc đời l&agrave; rất quan trọng.&nbsp;<strong>Hải Mộc Wedding</strong>&nbsp;tự h&agrave;o l&agrave; một trong những&nbsp;<strong>nh&agrave; cung cấp dịch vụ cưới trọn g&oacute;i h&agrave;ng đầu, gi&aacute; cả phải chăng nhất</strong>&nbsp;hiện nay. Bởi v&igrave; ngo&agrave;i kỹ năng, nghiệp vụ chuy&ecirc;n nghiệp, phong c&aacute;ch phục vụ chu đ&aacute;o ch&iacute;nh &nbsp;l&agrave; yếu tố ch&uacute;ng t&ocirc;i lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu. Ch&uacute;ng t&ocirc;i lu&ocirc;n coi đ&aacute;m cưới của kh&aacute;ch h&agrave;ng l&agrave; một sự kiện quan trọng kh&ocirc;ng chỉ của c&ocirc; d&acirc;u - ch&uacute; rể m&agrave; c&ograve;n của ch&iacute;nh những th&agrave;nh vi&ecirc;n&nbsp;<strong>Hải Mộc Wedding</strong>, bởi&nbsp;<strong>Hải Mộc</strong>&nbsp;hiểu mỗi đ&aacute;m cưới l&agrave; &ldquo;duy nhất&rdquo;!</span></span></span></span></span></span></span></span></span></span></span></em></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">H&atilde;y đến với&nbsp;<strong>Hải Mộc Wedding</strong>, kể cho ch&uacute;ng t&ocirc;i nghe c&acirc;u chuyện t&igrave;nh y&ecirc;u v&agrave; chia sẻ dự định cưới sắp tới của hai bạn. Ch&uacute;ng t&ocirc;i sẽ c&ugrave;ng bạn l&agrave;m n&ecirc;n một ng&agrave;y trọng đại thật &yacute; nghĩa với những dịch vụ tốt nhất, chăm ch&uacute;t ho&agrave;n hảo đến từng chi tiết.</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><strong><em><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">C&aacute;c dịch vụ cưới tại&nbsp;Hải Mộc Wedding&nbsp;gồm:</span></span></span></em></strong></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Chụp h&igrave;nh cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Trọn g&oacute;i ng&agrave;y cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">&Aacute;o cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Trang điểm c&ocirc; d&acirc;u</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:36pt; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:Wingdings"><span style="color:#555555">&uuml;</span></span></span><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Tư vấn cưới</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0cm; margin-right:0cm"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">v&agrave; những dịch vụ cưới đi k&egrave;m kh&aacute;c...</span></span></span></span></span></span></span></span></span></span></span></span></p>\r\n\r\n<p style="margin-left:0px; margin-right:0px">&nbsp;</p>\r\n\r\n<p style="margin-left:0px; margin-right:0px; text-align:justify"><span style="font-size:13px"><span style="font-family:helveticaneuelight"><span style="color:#333333"><span style="background-color:#ffffff"><span style="font-size:15px"><span style="font-family:inherit"><span style="color:#616161"><span style="font-size:inherit"><span style="font-family:inherit"><strong><em><span style="font-size:13pt"><span style="font-family:&quot;Times New Roman&quot;,serif"><span style="color:#555555">Hải Mộc Wedding lu&ocirc;n l&agrave;m bạn thật đẹp v&agrave; hạnh ph&uacute;c trong ng&agrave;y trọng đại!</span></span></span></em></strong></span></span></span></span></span></span></span></span></span></p>\r\n</div>\r\n</div>', 1, 0, 'images/uploads/images/album/ducngan/NHAT4859-min.png', 2, 1, '2017-10-10 02:57:16', '2017-10-10 02:57:16'),
(2, 'Chụp ảnh cưới “độc”: cô dâu chú rể hòa vào không gian thiên nhiên', 'chup-anh-cuoi-doc-co-dau-chu-re-hoa-vao-khong-gian-thien-nhien', '<p>Bức ảnh c&ocirc; d&acirc;u ch&uacute; rể ngất ng&acirc;y trong nụ h&ocirc;n say đắm sẽ th&ecirc;m lạ v&agrave; độc đ&aacute;o với c&aacute;ch xử l&yacute; ảnh cặp đ&ocirc;i t&acirc;n giai nh&acirc;n kh&ocirc;ng m&agrave;u, thay v&agrave;o đ&oacute; l&agrave; kh&ocirc;ng gian thi&ecirc;n nhi&ecirc;n kho&aacute;ng đạt</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://localhost:8080/haimocweddingv2/images/uploads/images/tintucs/15056400_10154750640684516_2203929552045397153_n.jpg" style="height:700px; width:700px" /></p>\r\n\r\n<p>Bức ảnh cưới &nbsp;n&agrave;y chụp lại khoảnh khắc đ&ocirc;i c&ocirc; d&acirc;u ch&uacute; rể tay tan v&agrave;o nhau trong nụ h&ocirc;n say đắm. Người stylist chọn cho đ&ocirc;i c&ocirc; d&acirc;u ch&uacute; rể bộ trang phục mang phong c&aacute;ch vintage cổ diển v&agrave; l&atilde;ng mạn. Tr&ecirc;n nền trang phục cổ điển n&agrave;y, ảnh c&ocirc; d&acirc;u ch&uacute; rể chỉnh sang m&agrave;u đen trắng. Kh&ocirc;ng gian thi&ecirc;n nhi&ecirc;n b&ecirc;n ngo&agrave;i như cảnh chiều t&agrave;, cảnh c&aacute;nh đồng tuyết hoặc cảnh đồi n&uacute;i&hellip; được xử l&yacute; h&ograve;a v&agrave;o h&igrave;nh c&ocirc; d&acirc;u ch&uacute; rể. C&aacute;ch xử l&yacute; n&agrave;y mang lại cho bức ảnh cưới cảm gi&aacute;c l&atilde;ng mạn rất điện ảnh, cổ điển v&agrave; mộc mạc.</p>\r\n\r\n<p>Nguồn Marry.vn</p>', 1, 1, 'images/uploads/images/tintucs/15056400_10154750640684516_2203929552045397153_n.jpg', 1, 1, '2017-10-16 02:12:50', '2017-10-16 02:41:05'),
(3, 'Tuần trăng mật tại 8 bãi biển đẹp nhất Việt Nam', 'tuan-trang-mat-tai-8-bai-bien-dep-nhat-viet-nam', '<p>Du lịch biển l&agrave; lựa chọn th&uacute; vị cho&nbsp;kỳ nghỉ tuần trăng mật. Những b&atilde;i c&aacute;t d&agrave;i &ecirc;m ả, nước trong vắt, n&eacute;t thi&ecirc;n nhi&ecirc;n hoang sơ, h&ugrave;ng vĩ của biển tạo n&ecirc;n cảnh sắc kh&ocirc;ng thể l&atilde;ng mạn, ngọt ng&agrave;o hơn cho những cặp đ&ocirc;i vừa cưới. Dưới đ&acirc;y l&agrave; những &ldquo;đề cử&rdquo; đ&aacute;ng tham khảo!</p>\r\n\r\n<h2>&nbsp;Biển Lăng C&ocirc;, Huế</h2>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Biển Lăng C&ocirc; từ l&acirc;u đ&atilde; được xếp v&agrave;o h&agrave;ng những b&atilde;i biển c&oacute; phong cảnh đẹp nhất Việt Nam. Nơi đ&acirc;y c&oacute; b&atilde;i c&aacute;t trắng mịn trải d&agrave;i, nước trong xanh, s&oacute;ng &ecirc;m nhẹ vỗ bờ. Biển Lăng C&ocirc; c&ograve;n thu h&uacute;t kh&aacute;ch du lịch với nhiều c&aacute;nh rừng nhiệt đới rộng lớn, c&ugrave;ng đầm Lập An đầy huyền b&iacute;.</p>\r\n\r\n<h2>Biển C&ocirc; T&ocirc;, Quảng Ninh</h2>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat2.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>C&ocirc; T&ocirc; lu&ocirc;n m&ecirc; hoặc du kh&aacute;ch v&agrave;o mỗi m&ugrave;a h&egrave; bởi những b&atilde;i biển hoang sơ, bờ c&aacute;t trắng d&agrave;i v&agrave; l&agrave;n nước trong xanh, m&aacute;t lạnh. Cho đến nay, C&ocirc; T&ocirc; vẫn giữ được vẻ b&igrave;nh y&ecirc;n, kh&ocirc;ng qu&aacute; đ&ocirc;ng đ&uacute;c n&ecirc;n rất th&iacute;ch hợp cho c&aacute;c đ&ocirc;i uy&ecirc;n ương chọn hưởng tuần trăng mật</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="Top 5 khách sạn độc đáo cho kì du lịch trăng mật" src="http://www.marry.vn/wp-content/uploads/2017/05/05/11120571_878920962168413_1286047688698461664_o-e1493981161963-447x335.jpg" /></p>\r\n\r\n<p style="text-align:center">Top 5 kh&aacute;ch sạn độc đ&aacute;o cho k&igrave; du lịch trăng mật</p>\r\n</div>\r\n\r\n<p>C&ugrave;ng Marry thưởng ngoạn 5 địa điểm kh&aacute;ch sạn tuyệt vời d&agrave;nh ri&ecirc;ng cho k&igrave; du lịch trăng mật ngọt ...</p>\r\n\r\n<h2>Vịnh Hạ Long, Quảng Ninh</h2>\r\n\r\n<p>Vịnh Hạ Long sở hữu hơn 1600 h&ograve;n đảo với một vẻ đẹp h&ugrave;ng vĩ v&agrave; quyến rũ đ&aacute;ng kinh ngạc. Ở nơi non xanh nước biếc n&agrave;y, c&aacute;c cặp đ&ocirc;i ho&agrave;n to&agrave;n c&oacute; thể chọn l&agrave;m điểm ghi dấu kỷ niệm t&igrave;nh y&ecirc;u của m&igrave;nh với kh&ocirc;ng gian l&atilde;ng mạn v&agrave; ngọt ng&agrave;o, c&ugrave;ng ngắm mặt trời mọc tr&ecirc;n biển hay đi thuyền để kh&aacute;m ph&aacute; vẻ đẹp kỳ vỹ.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat3.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<h2>Biển Cửa Đại, Quảng Nam</h2>\r\n\r\n<p>B&atilde;i biển Cửa Đại nằm c&aacute;ch phố cổ Hội An 5 km về ph&iacute;a Đ&ocirc;ng mới được vinh danh l&agrave; một trong 25 b&atilde;i biển đẹp nhất ch&acirc;u &Aacute;. Đặc biệt, nước biển Cửa Đại buổi s&aacute;ng c&oacute; m&agrave;u xanh lục nhạt, đến chiều chuyển sang m&agrave;u xanh ngọc b&iacute;ch đậm. Cửa Đại l&agrave; nơi s&ocirc;ng Thu Bồn đổ ra biển n&ecirc;n ở đ&acirc;y c&oacute; rất nhiều c&aacute;, một trong những điểm th&iacute;ch th&uacute; nhất thu h&uacute;t du kh&aacute;ch du lịch ch&iacute;nh l&agrave; loại h&igrave;nh c&acirc;u c&aacute;.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat4.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<h2>Mũi n&eacute;, Phan Thiết</h2>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat5-e1495529406287.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Mũi N&eacute; l&agrave; một mũi biển rộng lớn, tuyệt đẹp c&aacute;ch trung t&acirc;m th&agrave;nh phố Phan Thiết 22km về hướng Đ&ocirc;ng Bắc. Điểm l&agrave;m n&ecirc;n kh&aacute;c biệt cho nơi n&agrave;y ch&iacute;nh l&agrave; những đồi c&aacute;t rộng m&ecirc;nh m&ocirc;ng, v&agrave;ng ruộm. Mũi N&eacute; c&oacute; rất nhiều khu resort sang trọng ph&ugrave; hợp cho việc nghỉ dưỡng của tất cả c&aacute;c tầng lớp kh&aacute;ch du lịch.</p>\r\n\r\n<h2>B&atilde;i biển Ninh Chữ, Ninh Thuận</h2>\r\n\r\n<p>B&atilde;i biển Ninh Chữ thuộc th&ocirc;n B&igrave;nh Sơn, thị trấn Kh&aacute;nh Hải, tỉnh Ninh Thuận, nổi tiếng l&agrave; một trong những b&atilde;i biển v&agrave; b&atilde;i tắm đẹp nhất, hoang sơ nhất ở miền Trung Việt Nam. B&atilde;i biển Ninh Chữ c&oacute; chiều d&agrave;i 10km, bờ biển bằng phẳng h&igrave;nh v&ograve;ng cung, nước biển trong xanh, c&aacute;t trắng mịn, kh&ocirc;ng kh&iacute; trong l&agrave;nh, quanh năm s&oacute;ng vỗ r&igrave; r&agrave;o&hellip; rất th&iacute;ch hợp cho c&aacute;c hoạt động du lịch như tắm biển, lướt v&aacute;n, c&acirc;u c&aacute;, du thuyền, leo n&uacute;i, săn bắn&hellip; Đ&acirc;y l&agrave; địa điểm tuần trăng mật th&iacute;ch hợp cho c&aacute;c cặp đ&ocirc;i th&iacute;ch kh&aacute;m ph&aacute;.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat6.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<h2>Biển Đại L&atilde;nh, Kh&aacute;nh Ho&agrave;</h2>\r\n\r\n<p>Biển Đại L&atilde;nh nằm ở giữa hai tỉnh Kh&aacute;nh H&ograve;a v&agrave; Ph&uacute; Y&ecirc;n, chỉ c&aacute;ch th&agrave;nh phố Nha Trang 80 km v&agrave; thị x&atilde; Tuy H&ograve;a 30 km, trong khu vực thuộc Vịnh V&acirc;n Phong. V&igrave; thế biển Đại L&atilde;nh mang cả vẻ đằm thắm của biển Nha Trang v&agrave; n&eacute;t hoang sơ của biển Ph&uacute; Y&ecirc;n.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat7-1024x574.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Biển rất trong n&ecirc;n kh&ocirc;ng bị hạn chế tầm nh&igrave;n, thậm ch&iacute; c&oacute; thể quan s&aacute;t hệ thống sinh vật dưới biển một c&aacute;ch r&otilde; n&eacute;t. Triền c&aacute;t thoai thoải, s&oacute;ng biển &ecirc;m v&agrave; vẻ đẹp tự nhi&ecirc;n chưa chịu nhiều t&aacute;c động của con người, nơi đ&acirc;y xứng đ&aacute;ng l&agrave; lựa chọn cho tuần trăng mật ri&ecirc;ng tư, an nhi&ecirc;n nhất</p>\r\n\r\n<h2>B&atilde;i d&agrave;i Ph&uacute; Quốc, Ki&ecirc;n Giang</h2>\r\n\r\n<p>C&aacute;ch th&agrave;nh phố Hồ Ch&iacute; Minh 35 ph&uacute;t m&aacute;y bay, Ph&uacute; Quốc tuyệt đẹp, thơ mộng với những c&aacute;nh rừng bạt ng&agrave;n, tr&ugrave; ph&uacute;, b&atilde;i biển hoang sơ, kh&ocirc;ng kh&iacute; trong l&agrave;nh c&ugrave;ng h&agrave;ng chục danh thắng m&ecirc; hoặc l&ograve;ng người.</p>\r\n\r\n<p style="text-align:center"><img alt="" src="http://www.marry.vn/wp-content/uploads/2017/05/23/dulichtrangmat8.jpg" style="height:547px; width:900px" /></p>\r\n\r\n<p>Trong số đ&oacute;, B&atilde;i D&agrave;i nằm ở ph&iacute;a ph&iacute;a t&acirc;y của h&ograve;n đảo, kh&ocirc;ng thể thiếu khi nhắc đến du lịch Ph&uacute; Quốc bởi vẻ đẹp hoang sơ của m&igrave;nh. B&atilde;i D&agrave;i, một b&atilde;i biển được bầu chọn l&agrave; đứng đầu trong 13 b&atilde;i biển hoang sơ v&agrave; đẹp nhất thế giới. Biển ở đ&acirc;y trong xanh, &iacute;t ghe thuyền neo đậu. Du kh&aacute;ch c&oacute; dịp h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh, ngắm h&agrave;ng dương xanh cao v&uacute;t x&ocirc;n xao trong gi&oacute;</p>\r\n\r\n<p>Nguồn Marry.vn</p>', 1, 0, 'images/uploads/images/tintucs/tt7_1495768224641.jpg', 1, 1, '2017-10-16 02:14:43', '2017-10-16 02:54:31'),
(4, 'Mê mẩn với phong cách chụp ảnh cưới ngược sáng huyền ảo', 'me-man-voi-phong-cach-chup-anh-cuoi-nguoc-sang-huyen-ao', '<p>Chọn được&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;ph&ugrave; hợp l&agrave; điều nhiều cặp đ&ocirc;i chuẩn bị kết h&ocirc;n&nbsp;kh&aacute; băn khoăn. Vừa muốn c&oacute; một&nbsp;<a href="http://www.marry.vn/loi-khuyen-tu-marry/7-y-tuong-chup-anh-cho-album-cuoi-hoan-hao" target="_blank">album ảnh cưới</a>&nbsp;đẹp, ấn tượng, lại vừa mang dấu ấn của ri&ecirc;ng m&igrave;nh, c&aacute;c c&ocirc; d&acirc;u ch&uacute; rể dễ bị &ldquo;ngợp&rdquo; trước sự đa đạng của c&aacute;c kiểu chụp ảnh cưới v&agrave; sự tư vấn từ c&aacute;c studio.</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới Hellomuse" src="http://www.marry.vn/wp-content/uploads/2016/11/16/hello-muse-studio-2-420x594.jpg" style="height:594px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Hellomuse</p>\r\n\r\n<p>Nếu bạn y&ecirc;u th&iacute;ch phong c&aacute;ch hiện đại, mơ m&agrave;ng, c&oacute; ch&uacute;t hơi hướng nghệ thuật, sao kh&ocirc;ng thử tham khảo&nbsp;<a href="http://www.marry.vn/dich-vu-cuoi/toan-quoc/chup-anh-cuoi/" target="_blank">p<em>hong c&aacute;ch chụp ảnh cưới</em></a>&nbsp;ngược s&aacute;ng. Vốn kh&ocirc;ng phải l&agrave; kỹ thuật chụp ảnh mới lạ trong nhiếp ảnh, tuy nhi&ecirc;n, để thực hiện một album ảnh cưới với&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;ngược s&aacute;ng l&agrave;m chủ đạo th&igrave; tại Việt Nam vẫn chưa nhiều người chọn.</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới ngược sáng" src="http://www.marry.vn/wp-content/uploads/2016/11/16/6c1821ec3e3d007f6d49154e11277de3-420x629.jpg" style="height:629px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Chụp ảnh ngược s&aacute;ng sẽ khiến bức ảnh trở n&ecirc;n l&atilde;ng mạn hơn rất nhiều. (Ảnh: Fran Menez)</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới phong cách lãng mạn với kỹ thuật chụp ngược sáng" src="http://www.marry.vn/wp-content/uploads/2016/11/16/7319c7b206817972db611d859fbce117-420x630.jpg" style="height:630px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Myka photography</p>\r\n\r\n<p>Trong một v&agrave;i năm trở lại đ&acirc;y, khi&nbsp;<em>phong c&aacute;ch chụp ảnh cưới H&agrave;n Quốc</em>&nbsp;trong một phim trường với đầy đủ phong c&aacute;ch l&atilde;ng mạn, sang trọng, ấn tượng đang thu h&uacute;t nhiều cặp đ&ocirc;i chọn lựa. Một trong những phong c&aacute;ch chụp ảnh cưới c&aacute;c nhiếp ảnh gia H&agrave;n Quốc ưa chuộng ch&iacute;nh l&agrave; chụp ảnh ngược s&aacute;ng.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ đơn thuần chọn c&aacute;ch chụp ảnh với nguồn s&aacute;ng ngược truyền thống l&agrave; mặt trời l&uacute;c b&igrave;nh minh hay ho&agrave;ng h&ocirc;n nữa. C&aacute;c nhiếp ảnh gia đ&atilde; chọn nguồn s&aacute;ng l&agrave; đ&egrave;n chiếu trong studio, hoặc nguồn s&aacute;ng tự nhi&ecirc;n từ cửa số để tạo n&ecirc;n sự đa dạng cho&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;n&agrave;y.</p>\r\n\r\n<p style="text-align:center"><img alt="Cô dâu trong ảnh cưới ngược sáng" src="http://www.marry.vn/wp-content/uploads/2016/11/16/c5b10b22f74178d642735dfaefdfb23c-420x266.jpg" style="height:266px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Weddingritz.com</p>\r\n\r\n<p style="text-align:center"><img alt="Cô dâu chú rể với ảnh ngược sáng" src="http://www.marry.vn/wp-content/uploads/2016/11/16/hello-muse-studio-4-420x281.jpg" style="height:281px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Hellomuse</p>\r\n\r\n<p>Với hiệu ứng &aacute;nh s&aacute;ng, bức ảnh được chụp theo&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;ngược s&aacute;ng n&agrave;y đặc biệt c&oacute; nước h&igrave;nh trong, tạo cảm gi&aacute;c mơ m&agrave;ng, huyền ảo v&agrave; đậm chất nghệ thuật. Với c&aacute;ch chơi s&aacute;ng n&agrave;y, c&ugrave;ng c&aacute;c nguồn s&aacute;ng đa đạng, nhiếp ảnh gia c&oacute; thể mang đến cho bạn một album cực kỳ ấn tượng, d&ugrave; bạn chọn&nbsp;<em>phong c&aacute;ch chụp ảnh cưới tự nhi&ecirc;n</em>, trẻ trung hay phong c&aacute;ch sang trọng, hiện đại.</p>\r\n\r\n<p>Nếu y&ecirc;u th&iacute;ch&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;ngược s&aacute;ng, bạn n&ecirc;n chia sẻ v&agrave; thỏa thuận kỹ lưỡng với nhiếp ảnh để c&oacute; thể c&oacute; được một bộ ảnh như &yacute;. T&ugrave;y v&agrave;o kỹ năng v&agrave; kinh nghiệm chụp ảnh ngược s&aacute;ng của nhiếp ảnh cũng như phong c&aacute;ch bạn muốn định h&igrave;nh cho album cưới của m&igrave;nh, bạn ho&agrave;n to&agrave;n c&oacute; thể c&oacute; được bộ&nbsp;<em>ảnh cưới tự nhi&ecirc;n v&agrave; giản dị</em>&nbsp;về trang phục, bối cảnh nhưng lại v&ocirc; c&ugrave;ng lung linh khi l&ecirc;n h&igrave;nh.</p>\r\n\r\n<p style="text-align:center"><img alt="Chụp ảnh cưới với khung cảnh thiên nhiên" src="http://www.marry.vn/wp-content/uploads/2016/11/16/229ef3a37e87e4f82fcf230ae994fe08-420x644.jpg" style="height:644px; width:420px" /></p>\r\n\r\n<p>Ảnh: Weddingritz.com</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới lúc hoàng hôn" src="http://www.marry.vn/wp-content/uploads/2016/11/16/f8ca2a6c00988c2b008b24896202f5d1-420x630.jpg" style="height:630px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Weddingritz.com</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới tự nhiên" src="http://www.marry.vn/wp-content/uploads/2016/11/16/c259dec3e7c3d17f67280520a428d111-420x573.jpg" style="height:573px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Kh&ocirc;ng cần chuẩn bị cầu kỳ, với&nbsp;<em>phong c&aacute;ch chụp ảnh cưới</em>&nbsp;ngược s&aacute;ng vẫn c&oacute; thể mang đến bức ảnh đẹp mơ m&agrave;ng.</p>\r\n\r\n<p style="text-align:center"><img alt="Ảnh cưới chụp lúc hoàng hôn" src="http://www.marry.vn/wp-content/uploads/2016/11/16/hello-muse-studio-3-420x556.jpg" style="height:556px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Hellomuse</p>\r\n\r\n<p style="text-align:center"><img alt="ảnh cưới ngược sáng cực kỳ sang trọng" src="http://www.marry.vn/wp-content/uploads/2016/11/16/hello-muse-studio-420x280.jpg" style="height:280px; width:420px" /></p>\r\n\r\n<p style="text-align:center">Ảnh: Hellomuse</p>\r\n\r\n<p><em>H. L</em></p>', 1, 1, 'images/uploads/images/tintucs/6c1821ec3e3d007f6d49154e11277de3-420x629.jpg', 1, 1, '2017-10-16 02:16:24', '2017-10-16 02:48:51'),
(5, 'Theme cưới đẹp mang màu thạch anh tím độc đáo và ma mị', 'theme-cuoi-dep-mang-mau-thach-anh-tim-doc-dao-va-ma-mi', '<p>Theme cưới đẹp mang phong c&aacute;ch Amethyst với sắc t&iacute;m huyền b&iacute; bao phủ sẽ mang đến cảm gi&aacute;c sang trọng v&agrave; qu&yacute; tộc cho bữa tiệc vui nhất đời bạn.</p>\r\n\r\n<p>Trong nửa cuối năm 2016 đến đầu 2017,&nbsp;&nbsp;mang c&aacute;c sắc th&aacute;i kh&aacute;c nhau của&nbsp;m&agrave;u hồng v&agrave; xanh l&aacute; mạ&nbsp;đ&atilde; c&oacute; cuộc &ldquo;c&agrave;n qu&eacute;t&rdquo; rầm rộ qua h&ocirc;n lễ ở cả ba miền. Nếu bạn đang t&igrave;m kiếm nguồn cảm hứng kh&aacute;c độc đ&aacute;o v&agrave; ấn tượng hơn, Marry xin giới thiệu theme cưới &ldquo;c&oacute; một kh&ocirc;ng hai&rdquo; mang t&ecirc;n Amethyst &ndash; thạch anh t&iacute;m b&iacute; ẩn.</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 1" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-1-783x1024.jpg" style="height:811px; width:620px" title="theme cưới đẹp màu thạch anh tím 1" /></p>\r\n\r\n<p style="text-align:center">Theme cưới đẹp mang m&agrave;u thạch anh t&iacute;m c&oacute; thể tạo ấn tượng về sự quyền qu&yacute;</p>\r\n\r\n<p>Từ xa xưa, t&iacute;m đ&atilde; được coi l&agrave; m&agrave;u sắc tượng trưng cho thế giới huyền b&iacute; v&agrave; quyền lực ho&agrave;ng gia. Đ&aacute; thạch anh t&iacute;m &ndash; Amethyst lu&ocirc;n được ưu &aacute;i xuất hiện trong trang sức cho ho&agrave;ng tộc v&agrave; đặc biệt l&agrave; tr&ecirc;n những chiếc vương miện. Trong nh&agrave; thờ Thi&ecirc;n Ch&uacute;a, đ&aacute; Amethyst với m&agrave;u sắc ma mị được coi như &ldquo;bảo vật của c&aacute;c gi&aacute;m mục&rdquo;.</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 2" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-8-1024x681.jpg" style="height:412px; width:620px" title="theme cưới đẹp màu thạch anh tím 2" /></p>\r\n\r\n<p style="text-align:center">C&ocirc; d&acirc;u xuất hiện trong theme cưới n&agrave;y n&ecirc;n được trang điểm theo t&ocirc;ng lạnh để t&ocirc;n l&ecirc;n vẻ đẹp vương giả, sắc sảo</p>\r\n\r\n<p>Thế nhưng điểm đặc biệt nhất của Amethyst kh&ocirc;ng nằm ở vẻ ngo&agrave;i m&agrave; l&agrave; lợi &iacute;ch lớn với sức khỏe. Từ&nbsp;thời Trung cổ, con người đ&atilde; biết d&ugrave;ng thạch anh để điều trị c&aacute;c chứng rối loạn thần kinh v&agrave; nhiễm độc. Khoa học hiện đại cũng x&aacute;c nhận rằng thạch anh c&oacute; thể gi&uacute;p thư gi&atilde;n tinh thần, t&igrave;m lại sự b&igrave;nh y&ecirc;n trong t&acirc;m hồn. V&igrave; c&oacute; &yacute; nghĩa đặc biệt như vậy, Amethyst tất yếu sẽ được chọn l&agrave;m biểu tượng cho rất nhiều gi&aacute; trị tinh thần tốt đẹp. M&agrave;u thạch anh t&iacute;m l&agrave; lời mời gọi t&igrave;nh y&ecirc;u, niềm vui v&agrave; sức khỏe đến với người sử dụng.</p>\r\n\r\n<p style="text-align:center"><img alt="Theme cưới đẹp mang tông tím pastel lãng mạn, trẻ trung cho cặp đôi hiện đại" src="http://www.marry.vn/wp-content/uploads/2017/02/20/Untitled-447x335.jpg" /></p>\r\n\r\n<p style="text-align:center">Theme cưới đẹp mang t&ocirc;ng t&iacute;m pastel l&atilde;ng mạn, trẻ trung cho cặp đ&ocirc;i hiện đại</p>\r\n\r\n<p>C&ugrave;ng tham khảo theme cưới với t&ocirc;ng m&agrave;u t&iacute;m pastel chủ đạo- một gợi &yacute; kh&aacute; t&aacute;o bạo v&agrave; trẻ trung...</p>\r\n\r\n<p>Ở nhiều nước &Acirc;u &ndash; Mỹ, d&ugrave;ng m&agrave;u Amethyst để tạo theme cưới đẹp đang dần trở th&agrave;nh tr&agrave;o lưu được nhiều cặp uy&ecirc;n ương trẻ y&ecirc;u th&iacute;ch. Sắc t&iacute;m n&agrave;y rất ph&ugrave; hợp để phối với m&agrave;u trắng, ng&agrave;, bạc v&agrave; v&agrave;ng &aacute;nh kim v&igrave; đều gợi n&ecirc;n cảm gi&aacute;c quyền qu&yacute;.&nbsp;Hoa trang tr&iacute; b&agrave;n tiệc&nbsp;trong tiệc cưới theme Amethyst n&ecirc;n l&agrave; những lo&agrave;i mang ba m&agrave;u sắc kể tr&ecirc;n, trong đ&oacute; ưu ti&ecirc;n nhất l&agrave; hồng t&iacute;m v&agrave; phong lan. Ngo&agrave;i ra, bạn cũng c&oacute; thể chọn th&ecirc;m tử đinh hương, tử đằng v&agrave; sao t&iacute;m để gi&uacute;p cấu tr&uacute;c bữa tiệc được c&acirc;n đối.</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 3" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-10-1024x681.jpg" style="height:412px; width:620px" title="theme cưới đẹp màu thạch anh tím 3" /></p>\r\n\r\n<p style="text-align:center">M&agrave;u thạch anh t&iacute;m c&oacute; thể phối nhịp nh&agrave;ng với c&aacute;c sắc t&iacute;m c&ugrave;ng t&ocirc;ng v&agrave; kim loại</p>\r\n\r\n<p>Mời bạn c&ugrave;ng chi&ecirc;m ngưỡng th&ecirc;m h&igrave;nh ảnh theme cưới đẹp mang sắc t&iacute;m ho&agrave;ng gia Amethyst để c&oacute; th&ecirc;m cảm hứng s&aacute;ng tạo cho ri&ecirc;ng m&igrave;nh:</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 4" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-2-783x1024.jpg" style="height:811px; width:620px" title="theme cưới đẹp màu thạch anh tím 4" /></p>\r\n\r\n<p>Thiệp cưới&nbsp;theo phong c&aacute;ch n&agrave;y cũng sẽ c&oacute; thiết kế huyền b&iacute; v&agrave; ph&aacute; c&aacute;ch. Bạn n&ecirc;n chọn những font chữ cổ điển để tăng th&ecirc;m ấn tượng thị gi&aacute;c</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 5" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-3-1024x681.jpg" style="height:412px; width:620px" title="theme cưới đẹp màu thạch anh tím 5" /></p>\r\n\r\n<p style="text-align:center">Nếu đủ chu đ&aacute;o, bạn c&oacute; thể chuẩn bị b&aacute;nh qu&agrave; trang tr&iacute; tiệc cưới với c&ugrave;ng t&ocirc;ng m&agrave;u n&agrave;y</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 6" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-4-783x1024.jpg" style="height:811px; width:620px" title="theme cưới đẹp màu thạch anh tím 6" /></p>\r\n\r\n<p style="text-align:center">B&oacute;&nbsp;hoa cầm tay c&ocirc; d&acirc;u&nbsp;phủ ngập trong sắc t&iacute;m tự nhi&ecirc;n của nhiều lo&agrave;i hoa đẹp</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 7" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-5-1024x679.jpg" style="height:411px; width:620px" title="theme cưới đẹp màu thạch anh tím 7" /></p>\r\n\r\n<p>Hoa hồng, lan v&agrave; tử đằng l&agrave; những lựa chọn ph&ugrave; hợp để xuất hiện trong theme cưới đẹp mang m&agrave;u Amethyst</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 8" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-6-1024x681.jpg" style="height:412px; width:620px" title="theme cưới đẹp màu thạch anh tím 8" /></p>\r\n\r\n<p style="text-align:center">B&aacute;nh kem cưới phối m&agrave;u t&iacute;m v&agrave; trắng thanh tao c&oacute; thể tạo n&ecirc;n ấn tượng đặc biệt với c&aacute;c kh&aacute;ch mời</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 9" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-7-1024x764.jpg" style="height:463px; width:620px" title="theme cưới đẹp màu thạch anh tím 9" /></p>\r\n\r\n<p style="text-align:center">Theme cưới Amethyst c&oacute; sức h&uacute;t ma mị v&agrave; b&iacute; ẩn rất r&otilde; rệt. Cổng hoa b&agrave;i tr&iacute; đơn giản v&agrave; tạo điểm nhấn lệch về một ph&iacute;a nhấn th&ecirc;m n&eacute;t đẹp tối giản của kh&ocirc;ng gian tiệc cưới</p>\r\n\r\n<p style="text-align:center"><img alt="theme cưới đẹp màu thạch anh tím 10" src="http://www.marry.vn/wp-content/uploads/2017/04/07/theme-cuoi-dep-mau-thach-anh-tim-9-1024x681.jpg" style="height:412px; width:620px" title="theme cưới đẹp màu thạch anh tím 10" /></p>\r\n\r\n<p style="text-align:center">B&agrave;n tiệc cưới được trang ho&agrave;ng chủ yếu bằng hoa v&agrave; trải khăn trắng giống như trong một bộ phim về ho&agrave;ng gia thời trung cổ</p>', 1, 1, 'images/uploads/images/tintucs/theme-cuoi-dep-mau-thach-anh-tim-1-768x1004.jpg', 1, 1, '2017-10-16 02:21:46', '2017-10-16 02:55:20'),
(6, 'Cắt giảm chi phí đám cưới hiệu quả với 25 bước đơn giản', 'cat-giam-chi-phi-dam-cuoi-hieu-qua-voi-25-buoc-don-gian', '<p><strong>Chi ph&iacute; đ&aacute;m cưới lu&ocirc;n l&agrave; một b&agrave;i to&aacute;n nan giải cho bất kỳ cặp đ&ocirc;i n&agrave;o trong qu&aacute; tr&igrave;nh chuẩn bị cho ng&agrave;y trọng đại. B&iacute; quyết đơn giản nhất để c&oacute; ng&agrave;y vui ho&agrave;n hảo, kh&ocirc;ng g&igrave; kh&aacute;c hơn l&agrave; một kế hoạch chi tiết v&agrave; 25 gợi &yacute; dưới đ&acirc;y</strong></p>\r\n\r\n<p>Việc&nbsp;chuẩn bị cho đ&aacute;m cưới&nbsp;tốt nhất n&ecirc;n được thực hiện khoảng 10 đến 12 th&aacute;ng trước ng&agrave;y cưới. Đặc biệt c&oacute; những phần việc nếu sớm chuẩn bị chắc chắn sẽ gi&uacute;p giảm được phần lớn chi ph&iacute; như nh&agrave; h&agrave;ng tiệc cưới, trang phục cưới, nghỉ dưỡng trăng mật&hellip;C&aacute;c c&ocirc; d&acirc;u ch&uacute; rể n&ecirc;n c&ugrave;ng nhau thống nhất ph&acirc;n bổ ng&acirc;n s&aacute;ch của m&igrave;nh v&agrave;o từng phần sao cho hợp l&yacute;, nhiều cặp đ&ocirc;i mong muốn ng&agrave;y cưới thật long trọng n&ecirc;n phần đ&atilde;i kh&aacute;ch sẽ chu đ&aacute;o v&agrave; thịnh soạn hơn c&aacute;c cặp đ&ocirc;i tổ chức tiệc cưới nhỏ ấm c&uacute;ng để tiết kiệm ng&acirc;n s&aacute;ch cho du lịch trăng mật. D&ugrave; được tổ chức như thế n&agrave;o, với 25 b&iacute; quyết đơn giản dưới đ&acirc;y chắc chắn c&aacute;c cặp đ&ocirc;i sẽ cắt giảm&nbsp;chi ph&iacute; đ&aacute;m cưới hiệu quả.</p>\r\n\r\n<p>Chuẩn bị thiệp cưới</p>\r\n\r\n<p>1. Chọn phong b&igrave; thiệp cưới một lớp, đơn sắc thay v&igrave; xếp lớp hoa văn hay chồng m&agrave;u sắc cầu kỳ.</p>\r\n\r\n<p>2. Nếu cảm thấy b&igrave; thiệp đơn điệu, bạn c&oacute; thể tự tay đ&iacute;nh th&ecirc;m hoa hay chi tiết trang tr&iacute; n&agrave;o đ&oacute;, dĩ nhi&ecirc;n cần sự trợ gi&uacute;p của ch&uacute; rể.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-thiep-cuoi-dep" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-thiep-cuoi-dep.jpg" style="height:752px; width:564px" /></p>\r\n\r\n<p style="text-align:center">Tự tay th&ecirc;m thắt c&aacute;c chi tiết cho thiệp cưới sinh động</p>\r\n\r\n<p>3.C&acirc;n nhắc về vấn đề thiết kế thiệp điện tử v&agrave; để kh&aacute;ch mời đăng nhập quyết định chuyện đi hay kh&ocirc;ng đi từ sớm.</p>\r\n\r\n<p>4. Mỗi b&agrave;n ăn chỉ n&ecirc;n trưng b&agrave;y một bảng biểu thong b&aacute;o về thực đơn cũng như lịch tr&igrave;nh của tiệc cưới, tr&aacute;nh in c&aacute; nh&acirc;n.</p>\r\n\r\n<p>Chuẩn bị hoa cưới</p>\r\n\r\n<p>5. Tận dụng lại hoa trang tr&iacute; trong lễ đ&iacute;nh h&ocirc;n để trưng b&agrave;y tr&ecirc;n b&agrave;n tiếp t&acirc;n hay thậm ch&iacute; tr&ecirc;n b&agrave;n tiệc cưới nếu bạn muốn đề nghị với đơn vị&nbsp;nh&agrave; h&agrave;ng tiệc cưới.</p>\r\n\r\n<p>6. L&aacute; c&acirc;y với m&agrave;u sắc xanh m&aacute;t tạo kh&ocirc;ng gian tiệc cưới rustic mộc mạc v&agrave; kh&ocirc;ng k&eacute;m phần hiện đại, đừng qu&ecirc;n tận dụng yếu tố n&agrave;y để cắt bớt tiền hoa.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-hoa-cuoi-dep" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-hoa-cuoi-dep.jpg" style="height:527px; width:702px" /></p>\r\n\r\n<p>7. Chen v&agrave;o kh&oacute;m hoa tr&ecirc;n b&agrave;n tiệc những c&acirc;y nến mộc để giảm bớt số lượng hoa đầy ắp.</p>\r\n\r\n<p>8. Thay hoa bằng những phụ kiện kh&aacute;c c&oacute; chi ph&iacute; thấp hơn chẳng hạn chanh, cam, t&aacute;o, thậm ch&iacute; b&ocirc;ng g&ograve;n hay l&ocirc;ng vũ&hellip;</p>\r\n\r\n<p>9. Gợi &yacute; cho đơn vị trang tr&iacute; sử dụng b&igrave;nh chứa nhựa thay v&igrave; chất liệu thuỷ tinh để cắm hoa trong tiệc cưới.</p>\r\n\r\n<p>10.&nbsp;Tập trung hoa chủ yếu ở phần backdrops, b&agrave;n tiếp t&acirc;n nơi kh&aacute;ch mời c&oacute; thể chụp h&igrave;nh c&ugrave;ng c&ocirc; d&acirc;u ch&uacute; rể.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-hoa-tuoi-dep" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-hoa-tuoi-dep.jpg" style="height:602px; width:802px" /></p>\r\n\r\n<p>Tập trung trang tr&iacute; hoa tươi ở backdrops chụp ảnh c&ugrave;ng kh&aacute;ch mời</p>\r\n\r\n<p>11. Chọn hoa theo m&ugrave;a thay v&igrave; y&ecirc;u cầu những loại hoa tr&aacute;i m&ugrave;a, kh&oacute; kiếm, ngo&agrave;i ra tối thiểu chọn 2-3 loại hoa để được giảm gi&aacute; theo số lượng.</p>\r\n\r\n<p>12. Hoa cho c&ocirc; d&acirc;u kh&ocirc;ng nhất thiết phải qu&aacute; đa dạng, phong ph&uacute;, một b&oacute; hoa m&agrave;u sắc ăn &yacute; h&agrave;i ho&agrave; với phong c&aacute;ch của bạn vẫn tốt nhất.</p>\r\n\r\n<p>Chuẩn bị d&agrave;nh ri&ecirc;ng cho c&ocirc; d&acirc;u</p>\r\n\r\n<p>13. Đặt may đầm cưới &iacute;t nhất khoảng 8-9 th&aacute;ng trước ng&agrave;y cưới để tr&aacute;nh chi ph&iacute; ph&aacute;t sinh cho thời gian qu&aacute; gấp g&aacute;p.</p>\r\n\r\n<p>14.&nbsp;Mua sắm&nbsp;mẫu v&aacute;y cưới ưng &yacute;&nbsp;ngay tại c&aacute;c triển l&atilde;m cưới để cắt giảm gần nửa chi ph&iacute; cần thiết cho đầu việc n&agrave;y.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-vay-cuoi-dep" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-vay-cuoi-dep.jpg" style="height:653px; width:980px" /></p>\r\n\r\n<p>15. Săn khuyến m&atilde;i chăm s&oacute;c da, những g&oacute;i đặc biệt d&agrave;nh ri&ecirc;ng cho c&ocirc; d&acirc;u để nhận được những lợi &iacute;ch tuyệt vời nhất.</p>\r\n\r\n<p>Chụp ảnh cưới</p>\r\n\r\n<p>16. Chọn g&oacute;i chụp ảnh kh&ocirc;ng qu&aacute; cầu kỳ về kh&acirc;u l&agrave;m album, chuyện n&agrave;y c&oacute; thể để về sau l&agrave;m cũng kh&ocirc;ng muộn.</p>\r\n\r\n<p>17. Đặt thời gian chụp ảnh khoảng 8-10 giờ thay v&igrave; bao nguy&ecirc;n ng&agrave;y khi bạn chọn g&oacute;i chụp ảnh ngay trong th&agrave;nh phố.</p>\r\n\r\n<p>18. Cho bản th&acirc;n nhiều cơ hội lựa chọn c&aacute;c nhiếp ảnh gia trẻ đang nổi, dĩ nhi&ecirc;n c&acirc;n nhắc v&agrave; tham khảo từ nhiều nguồn th&ocirc;ng tin.</p>\r\n\r\n<p>Chuẩn bị tiệc cưới</p>\r\n\r\n<p>19. Qu&agrave; cưới kh&ocirc;ng cần phải qu&aacute; cầu kỳ, chỉ cần những chiếc b&aacute;nh quy c&oacute; h&igrave;nh th&ugrave; ngộ nghĩnh hoặc vi&ecirc;n chocolate nhiều m&agrave;u.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-qua-cam-on" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-qua-cam-on.jpg" style="height:562px; width:702px" /></p>\r\n\r\n<p style="text-align:center">Qu&agrave; cảm ơn kh&aacute;ch mời đơn giản v&agrave; ngon miệng</p>\r\n\r\n<p>20. Đ&aacute;m cưới v&agrave;o tối c&aacute;c ng&agrave;y trong tuần sẽ cắt giảm được khối chi ph&iacute; so với tổ chức v&agrave;o những ng&agrave;y cuối tuần.</p>\r\n\r\n<p>21. Nếu đ&aacute;m cưới của bạn ở ngo&agrave;i trời, phục vụ thức ăn theo dạng buffet với những m&oacute;n ăn nhẹ sẽ v&ocirc; c&ugrave;ng hợp l&yacute;.</p>\r\n\r\n<p>22. B&aacute;nh cưới đẹp v&agrave; tiết kiệm nhất mọi thời đại? Kh&ocirc;ng g&igrave; kh&aacute;c ch&iacute;nh l&agrave; b&aacute;nh cưới mộc.</p>\r\n\r\n<p style="text-align:center"><img alt="cat-giam-chi-phi-dam-cuoi-banh-cuoi" src="http://www.marry.vn/wp-content/uploads/2017/02/03/cat-giam-chi-phi-dam-cuoi-banh-cuoi.jpg" style="height:562px; width:702px" /></p>\r\n\r\n<p style="text-align:center">B&aacute;nh cưới mộc đơn giản nhưng vẫn v&ocirc; c&ugrave;ng hấp dẫn</p>\r\n\r\n<p>23. Kh&ocirc;ng n&ecirc;n chọn thực đơn với những m&oacute;n ăn qu&aacute; cầu kỳ.</p>\r\n\r\n<p>24. Một buổi nhạc acoustic mộc mạc c&oacute; thể được thể hiện xuất sắc bởi những nh&oacute;m nhạc sinh vi&ecirc;n t&agrave;i năng, đừng qu&ecirc;n tận dụng.</p>\r\n\r\n<p>25.&nbsp;Kh&ocirc;ng nhất thiết phải tổ chức tiệc cưới ở những khu trung t&acirc;m, bạn c&oacute; thể tổ chức ở những quận ngoại th&agrave;nh, dĩ nhi&ecirc;n những người than thiết sẽ kh&ocirc;ng ngại xa x&ocirc;i đến tham dự.</p>\r\n\r\n<p>Nguồn Marry.vn</p>', 1, 0, 'images/uploads/images/tintucs/tt5_1495724998144.jpg', 1, 1, '2017-10-16 02:24:41', '2017-10-16 02:24:41'),
(7, '5 bài tập thể dục đơn giản giúp phái đẹp tút tát vóc dáng hoàn hảo', '5-bai-tap-the-duc-don-gian-giup-phai-dep-tut-tat-voc-dang-hoan-hao', '<p><strong>C&ugrave;ng Marry tham khảo loạt b&agrave;i tập thể dục v&agrave; thực đơn ăn ki&ecirc;ng gi&uacute;p c&ocirc; d&acirc;u r&egrave;n luyện v&oacute;c d&aacute;ng &ldquo;cấp tốc&rdquo; trước ng&agrave;y cưới.</strong></p>\r\n\r\n<p>Ng&agrave;y cưới&nbsp;lu&ocirc;n c&oacute; hằng t&aacute; c&aacute;c c&ocirc;ng việc, &aacute;p lực m&agrave; bạn cần phải sắp xếp thời gian để ho&agrave;n thiện, chuẩn bị. Trong giai đoạn n&agrave;y,&nbsp;c&ocirc; d&acirc;u&nbsp;sẽ kh&ocirc;ng c&oacute; qu&aacute; nhiều quỹ thời gian để&nbsp;săn s&oacute;c cho cơ thể v&agrave; v&oacute;c d&aacute;ng&nbsp;của m&igrave;nh, dẫn đến t&igrave;nh trạng sẽ k&eacute;m sắc trong ng&agrave;y cưới. Ch&iacute;nh v&igrave; vậy, c&aacute;c chuy&ecirc;n gia dinh dưỡng của tạp ch&iacute; danh tiếng Health&nbsp;đ&atilde; thiết kế một lịch tập bao gồm những b&agrave;i tập thể dục d&agrave;nh ri&ecirc;ng cho c&aacute;c c&ocirc; n&agrave;ng bận rộn phải &ldquo;chạy đua&rdquo; với thời gian trước ng&agrave;y cưới c&ugrave;ng một chế độ ăn ki&ecirc;ng hợp l&iacute; đế c&oacute; một v&oacute;c d&aacute;ng ho&agrave;n hảo.</p>\r\n\r\n<p>H&iacute;t đất một tay gi&uacute;p giảm v&ograve;ng eo, tăng số đo v&ograve;ng 1.</p>\r\n\r\n<p>B&agrave;i tập thể dục n&agrave;y được giới người mẫu, thi&ecirc;n thần của thương hiệu đồ l&oacute;t danh tiếng Victoria&rsquo;s Secret rất y&ecirc;u th&iacute;ch, đặc biệt l&agrave; trong khoảng thời gian 6 th&aacute;ng trước khi show diễn bắt đầu. L&agrave; b&agrave;i tập phối hợp c&aacute;c nh&oacute;m cơ tay, ngực v&agrave; v&ograve;ng eo, ph&aacute;i đẹp sẽ dễ d&agrave;ng lấy lại được v&oacute;c d&aacute;ng trong khoảng thời gian ngắn kh&ocirc;ng ngờ.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="349" src="https://www.youtube.com/embed/hpdB-jaq6HE?feature=oembed" width="620"></iframe></p>\r\n\r\n<p style="text-align:center">Pilates Boxing</p>\r\n\r\n<p>Thời gian gần đ&acirc;y, pilates trở th&agrave;nh bộ m&ocirc;n được nhiều người y&ecirc;u th&iacute;ch, đặc biệt l&agrave; ph&aacute;i nữ. Tuy c&aacute;c b&agrave;i tập tưởng chừng v&ocirc; c&ugrave;ng nhẹ nh&agrave;ng, nhưng lại tốn kh&aacute; nhiều mồ h&ocirc;i v&agrave; t&aacute;c động s&acirc;u v&agrave;o c&aacute;c nh&oacute;m cơ tr&ecirc;n cơ thể. H&atilde;y c&ugrave;ng Marry tham khảo b&agrave;i tập kết hợp giữa pilates c&ugrave;ng boxing năng động.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="349" src="https://www.youtube.com/embed/FlwdCD4oEHw?feature=oembed" width="620"></iframe></p>\r\n\r\n<p style="text-align:center">Động t&aacute;c r&egrave;n luyện cơ tay săn chắc</p>\r\n\r\n<p>Để c&oacute; một đ&ocirc;i tay chắc khỏe, thon thả trong ng&agrave;y cưới, nh&oacute;m chuy&ecirc;n gia dinh dưỡng của Health đ&atilde; s&aacute;ng tạo ra động t&aacute;c r&egrave;n luyện cơ tay v&ocirc; c&ugrave;ng vui nhộn gi&uacute;p c&aacute;c c&ocirc; g&aacute;i c&oacute; th&ecirc;m động lực để luyện tập trước ng&agrave;y cưới. Với động t&aacute;c n&agrave;y, bạn n&ecirc;n ch&uacute; &yacute; v&agrave;o việc siết v&agrave; gồng cơ khi tập, nếu kh&ocirc;ng sẽ kh&oacute; đạt được kết quả như mong muốn.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="349" src="https://www.youtube.com/embed/HOGF7eP70xM?feature=oembed" width="620"></iframe></p>\r\n\r\n<p style="text-align:center">Động t&aacute;c Plank lấy &yacute; tưởng từ c&aacute;c ch&uacute; c&aacute; heo</p>\r\n\r\n<p>Plank vốn nổi tiếng l&agrave; b&agrave;i tập t&aacute;c động tới to&agrave;n bộ c&aacute;c nh&oacute;m cơ một c&aacute;ch gắt gao nhất, tuy tưởng chừng chỉ l&agrave; giữ thăng bằng cho cơ thể trong một khoảng thời gian ngắn, nhưng bạn sẽ cảm thấy b&agrave;i tập n&agrave;y c&ograve;n kh&oacute; khăn hơn hẳn những động t&aacute;c như n&acirc;ng tạ hay đu x&agrave;. Với b&agrave;i tập m&agrave; Marry chọn lọc cho bạn, động t&aacute;c plank sẽ trở n&ecirc;n th&uacute; vị hơn khi bạn được đ&oacute;ng vai một ch&uacute; c&aacute; heo v&agrave; sớm lấy được v&oacute;c d&aacute;ng ho&agrave;n hảo trước ng&agrave;y cưới.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="349" src="https://www.youtube.com/embed/pCi_pi9YPLw?feature=oembed" width="620"></iframe></p>\r\n\r\n<p style="text-align:center">Động t&aacute;c phối hợp nh&oacute;m cơ bụng- &nbsp;đ&ugrave;i &ndash; tay.</p>\r\n\r\n<p>Với b&agrave;i tập cuối c&ugrave;ng n&agrave;y, ph&aacute;i đẹp sẽ được r&egrave;n luyện tất cả c&aacute;c nh&oacute;m cơ v&agrave; đẩy nhanh qu&aacute; tr&igrave;nh giảm c&acirc;n, đốt ch&aacute;y mỡ thừa cho cơ thể. Bạn n&ecirc;n lưu &yacute; khởi động v&agrave; l&agrave;m n&oacute;ng cơ thể thật kĩ trước khi luyện tập b&agrave;i tập &ldquo;kh&oacute; nhằn&rdquo; n&agrave;y.</p>\r\n\r\n<p style="text-align:center"><iframe frameborder="0" height="349" src="https://www.youtube.com/embed/R0OP-yzGbsI?feature=oembed" width="620"></iframe></p>\r\n\r\n<p style="text-align:center">Chế độ ăn uống hợp l&iacute;</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; thực đơn mẫu m&agrave; tạp ch&iacute; Health đ&atilde; chọn lọc đặc biệt d&agrave;nh ri&ecirc;ng cho c&aacute;c c&ocirc; d&acirc;u để gi&uacute;p c&aacute;c n&agrave;ng lu&ocirc;n giữ được v&oacute;c d&aacute;ng thon thả, mảnh khảnh trong ng&agrave;y cưới của m&igrave;nh.</p>\r\n\r\n<p style="text-align:center"><img alt="bài tập thể dục có vóc dáng hoàn hảo" src="http://www.marry.vn/wp-content/uploads/2017/03/13/53302078921a1x900.jpg" style="height:900px; width:1195px" /></p>\r\n\r\n<p style="text-align:center">Chế độ ăn uống đế c&oacute; một v&oacute;c d&aacute;ng ho&agrave;n hảo</p>\r\n\r\n<ul>\r\n	<li>Khi thức dậy, h&atilde;y d&ugrave;ng một ly nước ấm pha c&ugrave;ng nước cốt chanh v&agrave; mật ong.</li>\r\n	<li>Bữa s&aacute;ng : Khởi động ng&agrave;y mới nhẹ nh&agrave;ng với hỗn hợp c&aacute;c loại hạt c&ugrave;ng quả mọng, v&iacute; dụ d&acirc;u tằm, việt quất v&agrave; một &iacute;t hạt &oacute;c ch&oacute;. Sau khi d&ugrave;ng bữa s&aacute;ng, h&atilde;y uống một ly nước &eacute;p bưởi, cam v&agrave; một &iacute;t l&aacute; bạc h&agrave;.</li>\r\n	<li>Bữa trưa: H&atilde;y nạp năng lượng cho cơ thể bằng salad rau quả c&ugrave;ng c&aacute; hồi hun kh&oacute;i.</li>\r\n	<li>Bữa xế : Tuyệt chi&ecirc;u của c&aacute;c minh tinh m&agrave;n bạc Hollywood ch&iacute;nh l&agrave; chia nhỏ những bữa ăn ch&iacute;nh th&agrave;nh c&aacute;c bữa ăn nhỏ để cơ thể lu&ocirc;n ở trong t&igrave;nh trạng no, kh&ocirc;ng k&iacute;ch th&iacute;ch nhu cầu th&egrave;m ăn của cơ thể. H&atilde;y d&ugrave;ng một quả t&aacute;o hoặc chuối cho bữa ăn xế để tiếp th&ecirc;m năng lượng cho cơ thể.</li>\r\n	<li>Bữa tối : Hạn chế nạp năng lượng v&agrave;o cuối ng&agrave;y v&agrave; ăn trước 7h tối. Thực đơn m&agrave; Marry chọn cho bạn l&agrave; salad tr&aacute;i bơ, c&agrave; rốt hấp, đậu n&agrave;nh luộc.</li>\r\n</ul>\r\n\r\n<p style="text-align:center">Nguồn Marry.vn</p>', 1, 0, 'images/uploads/images/tintucs/tt3_1495724437911.jpg', 1, 1, '2017-10-16 02:27:05', '2017-10-16 02:27:05');
INSERT INTO `news` (`id`, `title`, `path`, `content`, `isPost`, `isFocus`, `image`, `category_post_id`, `user_id`, `created_at`, `updated_at`) VALUES
(8, 'Mẹo chăm sóc da và cơ thể tại nhà cho cô dâu trước ngày cưới', 'meo-cham-soc-da-va-co-the-tai-nha-cho-co-dau-truoc-ngay-cuoi', '<p>C&ugrave;ng Marry tham khảo những mẹo nhỏ chăm s&oacute;c da tại nh&agrave; gi&uacute;p c&aacute;c c&ocirc; d&acirc;u tiết kiệm được chi ph&iacute; cũng như c&oacute; vẻ ngo&agrave;i ho&agrave;n hảo hơn trong ng&agrave;y cưới.</p>\r\n\r\n<p>D&ugrave; những chuẩn bị cho ng&agrave;y cưới c&oacute; bận rộn thế n&agrave;o th&igrave; c&aacute;c c&ocirc; g&aacute;i kh&oacute; l&ograve;ng c&oacute; thể bỏ qua khoảng thời gian&nbsp;săn s&oacute;c cơ thể&nbsp;để lấy lại &ldquo;phong độ&rdquo; thật lộng lẫy trước ng&agrave;y cưới. Tuy nhi&ecirc;n c&aacute;c g&oacute;i dịch vụ săn s&oacute;c sắc đẹp hiện nay đều c&oacute; mức gi&aacute; kh&aacute; đắt đỏ&nbsp;v&agrave; tốn k&eacute;m, ch&iacute;nh v&igrave; vậy nhiều c&ocirc; d&acirc;u thường lựa chọn c&aacute;ch tự chăm s&oacute;c da v&agrave; dưỡng&nbsp;thể tại nh&agrave;. Dưới đ&acirc;y l&agrave; một số lưu &yacute; m&agrave; c&aacute;c c&ocirc; g&aacute;i n&ecirc;n lưu &yacute; nếu bạn đang c&oacute; kế hoạch giảm c&acirc;n, giữ d&aacute;ng v&agrave; săn s&oacute;c cơ thể với mức gi&aacute; &ldquo;hạt dẻ&rdquo;.</p>\r\n\r\n<p>Chăm s&oacute;c da, sức khỏe v&agrave; kế hoạch giảm c&acirc;n</p>\r\n\r\n<p>Trong tất cả những liệu tr&igrave;nh săn s&oacute;c cơ thể, phần đ&ocirc;ng c&aacute;c c&ocirc; d&acirc;u sẽ dồn sự ch&uacute; &yacute; cho việc chăm s&oacute;c da mặt hơn c&aacute;c v&ugrave;ng kh&aacute;c tr&ecirc;n cơ thể. Tuy nhi&ecirc;n theo lời khuy&ecirc;n từ c&aacute;c chuy&ecirc;n gia nếu da mặt bạn kh&ocirc;ng c&oacute; những vấn đề bệnh l&iacute; cần phải điều trị ngay lập tức th&igrave; kh&ocirc;ng n&ecirc;n qu&aacute; vội v&agrave;ng v&agrave; đầu tư t&agrave;i ch&iacute;nh để &ldquo;tr&ugrave;ng tu&rdquo; cấp tốc. Ngo&agrave;i ra bạn cũng kh&ocirc;ng n&ecirc;n lạm dụng c&aacute;c loại mỹ phẩm hứa hẹn sẽ gi&uacute;p l&agrave;n da săn chắc, t&aacute;i tạo hoặc trẻ h&oacute;a l&agrave;n da&hellip;.</p>\r\n\r\n<p>Điều tuyệt vời nhất bạn n&ecirc;n l&agrave;m trước thời gian lễ cưới diễn ra l&agrave; giữ cho l&agrave;n da khỏe mạnh. H&atilde;y uống nhiều nước, bổ sung th&ecirc;m rau xanh v&agrave; tr&aacute;i c&acirc;y trong thực đơn hằng ng&agrave;y cugn như tăng khẩu phần protein m&agrave; c&oacute; thể hấp thu mỗi ng&agrave;y để đạt được những kết quả tuyệt vời v&agrave; hiệu quả cho l&agrave;n da. Ngo&agrave;i ra bạn cũng n&ecirc;n tham khảo c&aacute;c loại tr&agrave; thảo mộc v&agrave;&nbsp;thức uống detox&nbsp;gi&uacute;p thải loại độc tố v&agrave; thanh lọc cơ thể.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="chăm sóc da 1" src="http://www.marry.vn/wp-content/uploads/2017/03/21/ch%C4%83m-s%C3%B3c-da-1.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Đối với việc giảm c&acirc;n, bạn kh&ocirc;ng cần phải qu&aacute; hoảng loạn tới mức phải đăng k&iacute; tất cả c&aacute;c kh&oacute;a tập thể dục, &ldquo;vung tiền&rdquo; để tập c&ugrave;ng HLV c&aacute; nh&acirc;n. Điều đơn giản nhất l&agrave; h&atilde;y để cho cơ thể c&oacute; những khoảng lặng tự do trước ng&agrave;y cưới. Bạn kh&ocirc;ng phải miệt m&agrave;i với những b&agrave;i tập vắt kiệt sức trong ph&ograve;ng gym, m&agrave; chỉ cần đi bộ hoặc chạy nhẹ nh&agrave;ng để tăng sức bền v&agrave; đốt mỡ thừa tr&ecirc;n cơ thể.</p>\r\n\r\n<p>Ngay cả khi bạn chỉ luyện tập 10 ph&uacute;t mỗi ng&agrave;y, hiệu quả tập luyện vẫn sẽ thể hiện r&otilde; r&agrave;ng ở c&aacute;c chỉ số đo của cơ thể. Khi đ&atilde; bắt đầu quen với c&aacute;c b&agrave;i tập, m&ocirc;n thể thao, bạn sẽ kh&ocirc;ng hề cảm thấy chuyện giảm c&acirc;n l&agrave; một sức &eacute;p qu&aacute; nặng nề khiến bản th&acirc;n phải lo lắng.</p>\r\n\r\n<div class="col-md-12">\r\n<p style="text-align:center"><img alt="chăm sóc da 2" src="http://www.marry.vn/wp-content/uploads/2017/03/21/ch%C4%83m-s%C3%B3c-da-3.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Chăm s&oacute;c t&oacute;c v&agrave; trang điểm</p>\r\n\r\n<p>Kh&ocirc;ng k&eacute;m phần quan trọng trong việc l&agrave;m đẹp trước ng&agrave;y cưới, m&aacute;i t&oacute;c cũng cần sự chăm s&oacute;c v&agrave; n&acirc;ng niu thật chu đ&aacute;o. Tuyệt nhi&ecirc;n bạn n&ecirc;n bỏ ngay suy nghĩ sẽ tự tay&hellip;cắt t&oacute;c tại nh&agrave; bởi trong giai đoạn cần duy tr&igrave; sự ho&agrave;n hảo n&agrave;y, tất cả những g&igrave; cần l&agrave;m l&agrave; cắt bỏ những phần đu&ocirc;i t&oacute;c chết v&igrave; xơ, nắng v&agrave; kh&oacute;i bụi.</p>\r\n\r\n<p>Về việc dưỡng t&oacute;c, nếu kh&ocirc;ng muốn mất nhiều thời gian tại c&aacute;c salon, bạn c&oacute; thể tự ủ t&oacute;c tại nh&agrave; với c&aacute;c bộ sản phẩm chăm dưỡng t&oacute;c chuy&ecirc;n nghiệp hoặc đơn giản l&agrave; ủ dầu dừa để mang lại vẻ s&aacute;ng b&oacute;ng, chắc khỏe cho m&aacute;i t&oacute;c.</p>\r\n\r\n<div class="col-md-12">\r\n<p><img alt="chăm sóc da 3" src="http://www.marry.vn/wp-content/uploads/2017/03/21/ch%C4%83m-s%C3%B3c-da-2.jpg" style="height:100%; width:100%" /></p>\r\n</div>\r\n\r\n<p>Tự tay trang điểm v&agrave;o ng&agrave;y cưới l&agrave; điều kh&ocirc;ng mấy được c&aacute;c chuy&ecirc;n gia khuyến kh&iacute;ch nhưng nếu kh&ocirc;ng muốn bỏ ra một khoản tiền để thu&ecirc; người makeup v&agrave;o ng&agrave;y cưới, bạn&nbsp;c&oacute; thể tham khảo c&aacute;c đoạn clip video tr&ecirc;n Youtube hoặc những layout trang điểm mẫu cho c&ocirc; d&acirc;u tr&ecirc;n c&aacute;c website cưới, c&aacute;c tạp ch&iacute; thời trang. Với những chỉ dẫn theo từng bước, chắc chắn c&aacute;c c&ocirc; g&aacute;i c&oacute; thể dễ d&agrave;ng l&agrave;m theo v&agrave; đạt được kết quả mỹ m&atilde;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nguồn Marry.vn</p>', 1, 0, 'images/uploads/images/tintucs/tt2_1495723424398.jpg', 1, 1, '2017-10-16 02:31:32', '2017-10-16 02:31:32'),
(9, 'Bí quyết cưới: Cô dâu cần mua sắm gì trước ngày cưới?', 'bi-quyet-cuoi-co-dau-can-mua-sam-gi-truoc-ngay-cuoi', '<p>C&oacute; rất nhiều việc cần chuẩn bị cho một h&ocirc;n lễ. Trong đ&oacute;, chỉ ri&ecirc;ng c&acirc;u hỏi c&ocirc; d&acirc;u cần mua sắm g&igrave; trước ng&agrave;y cưới cũng đủ khiến &ldquo;khổ chủ&rdquo; phải đau đầu.</p>\r\n\r\n<p>Chuẩn bị cho h&ocirc;n lễ&nbsp;l&agrave; c&ocirc;ng việc kh&ocirc;ng đơn giản, c&oacute; thể ph&aacute;t sinh nhiều t&igrave;nh huống ngo&agrave;i dự đo&aacute;n v&agrave; khiến &ldquo;khổ chủ&rdquo; mệt mỏi. V&igrave; vậy, bạn c&agrave;ng l&ecirc;n kế hoạch chuẩn bị sớm, chi tiết v&agrave; chia đều vai tr&ograve; cho từng người th&igrave; niềm vui ng&agrave;y đại hỷ sẽ c&agrave;ng vi&ecirc;n m&atilde;n hơn. Trong số những việc quan trọng cần chuẩn bị, c&acirc;u hỏi&nbsp;c&ocirc; d&acirc;u cần mua sắm g&igrave; trước ng&agrave;y cưới l&agrave; nỗi &ldquo;&aacute;m ảnh&rdquo; lớn. Bạn c&oacute; chắc m&igrave;nh đ&atilde; biết phải đầu tư bao nhi&ecirc;u tiền v&agrave; mua những g&igrave; để ng&agrave;y&nbsp;về nh&agrave; chồng&nbsp;kh&ocirc;ng phải lo nghĩ g&igrave; th&ecirc;m nữa?</p>\r\n\r\n<p style="text-align:center"><img alt="cô dâu cần mua sắm gì trước ngày cưới 1" src="http://www.marry.vn/wp-content/uploads/2017/04/26/co-dau-can-mua-sam-gi-truoc-ngay-cuoi-3.jpg" style="height:433px; width:650px" title="cô dâu cần mua sắm gì trước ngày cưới 1" /></p>\r\n\r\n<p style="text-align:center">C&ocirc; d&acirc;u cần mua sắm g&igrave; trước ng&agrave;y cưới? Số tiền đ&aacute;ng bỏ ra cho c&ocirc;ng việc ấy l&agrave; bao nhi&ecirc;u? Marry sẽ gi&uacute;p bạn giải đ&aacute;p c&acirc;u hỏi n&agrave;y</p>\r\n\r\n<p>Sau đ&acirc;y, Mi xin chia sẻ c&ugrave;ng bạn 10 việc c&ocirc; d&acirc;u cần đầu tư chi ph&iacute; trước ng&agrave;y cưới:</p>\r\n\r\n<h2>1. Nh&agrave; h&agrave;ng cưới</h2>\r\n\r\n<p>Tiền đầu tư cho nh&agrave; h&agrave;ng tổ chức tiệc sẽ l&agrave; con số &ldquo;khủng&rdquo; nhất trong to&agrave;n bộ chi ph&iacute; cưới, v&igrave; thế hạng mục n&agrave;y cần được quan t&acirc;m rốt r&aacute;o ngay từ đầu. Theo c&aacute;c chuy&ecirc;n gia, bạn n&ecirc;n t&igrave;m v&agrave; đặt nh&agrave; h&agrave;ng c&aacute;ch đ&aacute;m cưới &iacute;t nhất 4 th&aacute;ng. Nếu muốn đầu tư cho một h&ocirc;n lễ &ldquo;xịn&rdquo; tại nh&agrave; h&agrave;ng sang trọng, c&oacute; thể bạn sẽ cần đặt cọc trước cả năm.</p>\r\n\r\n<h2>2. Trang sức cưới</h2>\r\n\r\n<p>Trong c&aacute;c m&oacute;n trang sức d&ugrave;ng v&agrave;o dịp h&ocirc;n lễ, nhẫn cưới ch&iacute;nh l&agrave; phụ kiện quan trọng v&agrave; cần chuẩn bị chu đ&aacute;o hơn hết. C&ocirc; d&acirc;u v&agrave; ch&uacute; rể n&ecirc;n c&ugrave;ng b&agrave;n bạc v&agrave; t&igrave;m ra thiết kế ph&ugrave; hợp nhất với điều kiện t&agrave;i ch&iacute;nh của đ&ocirc;i b&ecirc;n. Việc n&agrave;y n&ecirc;n được chuẩn bị trước h&ocirc;n lễ &iacute;t nhất một th&aacute;ng. Ngo&agrave;i nhẫn, c&ocirc; d&acirc;u cũng n&ecirc;n chuẩn bị th&ecirc;m một số m&oacute;n trang sức kh&aacute;c như v&ograve;ng cổ, v&ograve;ng/lắc tay, hoa tai để phối hợp th&agrave;nh bộ trang sức cưới c&oacute; thể t&ocirc;n l&ecirc;n vẻ đẹp của m&igrave;nh.</p>\r\n\r\n<p style="text-align:center"><img alt="cô dâu cần mua sắm gì trước ngày cưới 1" src="http://www.marry.vn/wp-content/uploads/2017/04/26/co-dau-can-mua-sam-gi-truoc-ngay-cuoi-1.jpg" style="height:433px; width:650px" title="cô dâu cần mua sắm gì trước ngày cưới 1" /></p>\r\n\r\n<p>Đ&aacute;p &aacute;n thứ 2 cho c&acirc;u hỏi c&ocirc; d&acirc;u cần mua sắm g&igrave; trước ng&agrave;y cưới ch&iacute;nh l&agrave; phụ kiện thời trang</p>\r\n\r\n<h2>3. V&aacute;y v&agrave; phụ kiện thời trang cưới</h2>\r\n\r\n<p>C&ocirc; d&acirc;u cần mua sắm g&igrave; trước ng&agrave;y cưới? Sau nhẫn, v&aacute;y cưới ch&iacute;nh l&agrave; hạng mục n&ecirc;n được ưu ti&ecirc;n thứ ba. Bạn c&oacute; thể thu&ecirc; hoặc mua v&aacute;y cưới ri&ecirc;ng, tuy nhi&ecirc;n đều n&ecirc;n t&igrave;m đến những địa chỉ uy t&iacute;n v&agrave; lựa chọn cẩn thận. V&igrave; số đo của bạn c&oacute; thể thay đổi trong v&agrave;i th&aacute;ng, v&aacute;y cưới kh&ocirc;ng n&ecirc;n được mua c&aacute;ch h&ocirc;n lễ qu&aacute; xa. Thời gian l&yacute; tưởng nhất để chuẩn bị hạng mục n&agrave;y l&agrave; 2 th&aacute;ng trước h&ocirc;n lễ. B&ecirc;n cạnh đ&oacute;, bạn cũng cần chuẩn bị c&aacute;c m&oacute;n phụ kiện đi k&egrave;m như l&uacute;p đội đầu, vương miện/v&ograve;ng hoa/tr&acirc;m c&agrave;i đầu, gi&agrave;y v&agrave; nội y.</p>\r\n\r\n<h2>4. G&oacute;i chụp ảnh cưới</h2>\r\n\r\n<p>C&oacute; lẽ bạn cũng biết rằng đưa ra quyết định v&agrave; đặt g&oacute;i chụp ảnh cưới c&agrave;ng sớm th&igrave; c&agrave;ng dễ c&oacute; gi&aacute; tốt. Mặt kh&aacute;c, nếu bạn muốn&nbsp;chụp ảnh ngoại cảnh&nbsp;xa nơi ở th&igrave; việc chuẩn bị sớm cũng gi&uacute;p chuyến đi thuận lợi hơn. Đ&acirc;y cũng l&agrave; việc m&agrave; cả c&ocirc; d&acirc;u v&agrave; ch&uacute; rể n&ecirc;n c&ugrave;ng tham gia.</p>\r\n\r\n<p style="text-align:center"><img alt="cô dâu cần mua sắm gì trước ngày cưới 3" src="http://www.marry.vn/wp-content/uploads/2017/03/29/chup-anh-cuoi-o-da-nang-cho-nao-dep-cv-pham-van-dong-4.jpg" style="height:408px; width:650px" title="cô dâu cần mua sắm gì trước ngày cưới 3" /></p>\r\n\r\n<p>Đầu tư tiền v&agrave;o g&oacute;i chụp ảnh cưới uy t&iacute;n, bạn sẽ kh&ocirc;ng phải hối tiếc</p>\r\n\r\n<h2>5.&nbsp;C&aacute;c loại đồ trang tr&iacute; nội thất</h2>\r\n\r\n<p>Kh&ocirc;ng chỉ cần c&ugrave;ng ch&uacute; rể lo phần n&agrave;o việc sắp đặt ph&ograve;ng t&acirc;n h&ocirc;n, nhiệm vụ lớn của c&ocirc; d&acirc;u l&agrave; trang tr&iacute; cho nh&agrave; m&igrave;nh v&agrave;o lễ dạm ng&otilde; v&agrave; đ&aacute;m hỏi. Bạn n&ecirc;n sớm t&igrave;m c&aacute;c địa điểm b&aacute;n đồ trang tr&iacute; nội thất đẹp, gi&aacute; mềm để tiết kiệm chi ph&iacute; cho bản th&acirc;n v&agrave; gia đ&igrave;nh.</p>\r\n\r\n<h2>6.&nbsp;Thiệp mời đ&aacute;m cưới</h2>\r\n\r\n<p>D&ugrave; chỉ l&agrave; kh&acirc;u &ldquo;thứ yếu&rdquo; nhưng thiệp mời đ&aacute;m cưới c&oacute; &yacute; nghĩa kh&ocirc;ng hề nhỏ. Đ&acirc;y cũng l&agrave; việc c&ocirc; d&acirc;u v&agrave; ch&uacute; rể cần c&ugrave;ng nhau b&agrave;n bạc, thống nhất v&agrave; sớm triển khai trước h&ocirc;n lễ &iacute;t nhất 2 th&aacute;ng.</p>\r\n\r\n<p style="text-align:center"><img alt="cô dâu cần mua sắm gì trước ngày cưới 4" src="http://www.marry.vn/wp-content/uploads/2017/04/26/thiep-moi-dam-cuoi-sac-xanh-thien-thanh-5.jpg" style="height:553px; width:650px" title="cô dâu cần mua sắm gì trước ngày cưới 4" /></p>\r\n\r\n<h2>7. C&aacute;c g&oacute;i chăm s&oacute;c sắc đẹp</h2>\r\n\r\n<p>Chẳng c&ocirc; d&acirc;u n&agrave;o l&agrave; kh&ocirc;ng muốn xuất hiện trong h&ocirc;n lễ của m&igrave;nh thật xinh đẹp v&agrave; rạng rỡ. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao bạn n&ecirc;n đầu tư triệt để v&agrave; nghi&ecirc;m t&uacute;c v&agrave;o c&aacute;c g&oacute;i chăm s&oacute;c sắc đẹp. Đ&acirc;y l&agrave; hạng mục n&ecirc;n được thực hiện trước đ&aacute;m cưới &iacute;t nhất 3 th&aacute;ng v&igrave; bạn cần thời gian đủ d&agrave;i để cải thiện diện mạo an to&agrave;n. G&oacute;i chăm s&oacute;c sắc đẹp sẽ gồm việc điều trị da, chăm s&oacute;c t&oacute;c, cải thiện v&oacute;c d&aacute;ng (nếu cần).</p>\r\n\r\n<h2>8.&nbsp;C&aacute;c&nbsp;g&oacute;i chăm s&oacute;c sức khỏe v&agrave; thuốc bổ</h2>\r\n\r\n<p>Mu&ocirc;n v&agrave;n c&ocirc;ng việc cần chuẩn bị trước h&ocirc;n lễ c&oacute; thể khiến c&ocirc; d&acirc;u bị căng thẳng v&agrave; suy nhược thể chất. Vậy n&ecirc;n b&ecirc;n cạnh việc chăm s&oacute;c nhan sắc, bạn cũng cần đầu tư v&agrave;o việc chăm s&oacute;c sức khỏe. Trước đ&aacute;m cưới nửa năm, bạn n&ecirc;n đi kh&aacute;m tổng qu&aacute;t để biết m&igrave;nh c&oacute; thật sự khỏe mạnh v&agrave; sẵn s&agrave;ng kết h&ocirc;n hay chưa. Trong những th&aacute;ng cận kề đ&aacute;m cưới, bạn n&ecirc;n bổ sung c&aacute;c loại thuốc bổ để c&acirc;n bằng vi kho&aacute;ng v&agrave; tăng sức đề kh&aacute;ng cho m&igrave;nh.</p>\r\n\r\n<p>Nguồn Marry.vn</p>', 1, 0, 'images/uploads/images/tintucs/189993tt1_1495722347918.jpg', 1, 1, '2017-10-16 02:33:25', '2017-10-16 02:55:42');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
