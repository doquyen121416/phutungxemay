-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2018 lúc 06:52 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hondaplus_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_category`
--

CREATE TABLE `hp_category` (
  `category_id` int(11) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `category_parentid` int(11) UNSIGNED NOT NULL,
  `category_img` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `category_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `category_order` int(11) UNSIGNED NOT NULL,
  `category_metakey` varchar(150) NOT NULL,
  `category_metadesc` varchar(150) NOT NULL,
  `category_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_createdby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `category_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `category_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `category_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_category`
--

INSERT INTO `hp_category` (`category_id`, `category_name`, `category_slug`, `category_parentid`, `category_img`, `category_type`, `category_order`, `category_metakey`, `category_metadesc`, `category_createdat`, `category_createdby`, `category_updatedat`, `category_updatedby`, `category_status`) VALUES
(1, 'Sản phẩm Bán Chạy', 'san-pham-ban-chay', 0, '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/YamahaLogo.jpg', 'product', 0, '0', '0', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, 'Sản Phẩm Cháy Hàng', 'san-pham-chay-hang', 0, '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/YamahaLogo.jpg', 'product', 0, '0', '0', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(4, 'Sản phẩm 3', 'san-pham-3', 0, '/hondaplus/public/images/upload/images/category/km-honda1821_20x20.jpg', 'product', 0, '0', '0', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(6, 'Sản phẩm 5', 'san-pham-5', 0, '/hondaplus/public/images/upload/images/category/km-honda1821_20x20.jpg', 'product', 1, '0', '0', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(17, 'Đồ mỹ nghệ 11', 'do-my-nghe', 12, '/hondaplus/public/images/upload/images/category/km-honda1821_20x20.jpg', 'post', 0, '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(28, 'Nguyễn hoàng phương', 'nguyen-hoang-phuong', 12, '/hondaplus/public/images/upload/images/category/km-honda1821_20x20.jpg', 'post', 0, '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(30, 'ssssssssssss', 'ssssssssssss', 11, '/hondaplus/public/images/upload/images/category/km-honda1821_20x20.jpg', 'post', 0, '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(45, 'Hàng chất lượng', 'hang-chat-luong', 0, 'public/images/add-img.png', 'product', 0, '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(46, 'yamaha', 'yamaha', 0, '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/YamahaLogo.jpg', 'product', 0, '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_config`
--

CREATE TABLE `hp_config` (
  `config_id` int(10) UNSIGNED NOT NULL,
  `config_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_logo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `config_img` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `config_themeid` int(11) NOT NULL,
  `config_metaauth` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_metakey` text COLLATE utf8_unicode_ci NOT NULL,
  `config_metadesc` text COLLATE utf8_unicode_ci NOT NULL,
  `config_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_map` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_namecompany` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_youtube` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_google` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_copyright` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_mastercard` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_visa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_skype` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config_status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hp_config`
--

INSERT INTO `hp_config` (`config_id`, `config_title`, `config_logo`, `config_img`, `config_themeid`, `config_metaauth`, `config_metakey`, `config_metadesc`, `config_address`, `config_map`, `config_phone`, `config_email`, `config_facebook`, `config_namecompany`, `config_youtube`, `config_twitter`, `config_google`, `config_copyright`, `config_company`, `config_mastercard`, `config_visa`, `config_skype`, `config_status`) VALUES
(4, 'PHP CUỐI KỲ', 'logo.png', 'logo.png', 1, '', '', '', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', '', '01626572333', 'haibibo98@gmail.com', 'https://www.facebook.com/profile.php?id=100006538484908', 'ĐỒ CHƠI XE MÁY ', '#', '#', '#', 'Nguyễn Đăng Tuấn Hải', '#', '#', '#', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_contact`
--

CREATE TABLE `hp_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_fullname` varchar(100) NOT NULL,
  `contact_email` varchar(100) NOT NULL,
  `contact_phone` varchar(15) NOT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_detail` mediumtext NOT NULL,
  `contact_createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `contact_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `contact_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_counter`
--

CREATE TABLE `hp_counter` (
  `counter_id` int(10) UNSIGNED NOT NULL,
  `counter_visit` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_images`
--

CREATE TABLE `hp_images` (
  `image_id` int(11) NOT NULL,
  `image_name` int(11) NOT NULL,
  `slider_order` int(11) NOT NULL,
  `slider_createdat` int(11) NOT NULL,
  `slider_createdby` int(11) NOT NULL,
  `slider_updatedat` int(11) NOT NULL,
  `slider_updatedby` int(11) NOT NULL,
  `slider_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_menu`
--

CREATE TABLE `hp_menu` (
  `menu_id` int(11) UNSIGNED NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) NOT NULL,
  `menu_link` varchar(255) DEFAULT NULL,
  `menu_tableid` int(11) DEFAULT NULL,
  `menu_parentid` int(11) NOT NULL DEFAULT '0',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `menu_position` varchar(255) NOT NULL,
  `menu_createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `menu_createdby` int(11) NOT NULL,
  `menu_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `menu_updatedby` int(11) NOT NULL,
  `menu_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_menu`
--

INSERT INTO `hp_menu` (`menu_id`, `menu_name`, `menu_type`, `menu_link`, `menu_tableid`, `menu_parentid`, `menu_order`, `menu_position`, `menu_createdat`, `menu_createdby`, `menu_updatedat`, `menu_updatedby`, `menu_status`) VALUES
(1, 'TRANG CHỦ', 'topic', 'trang-chu', 3, 0, 0, '0', '2018-09-28 21:38:49', 0, '0000-00-00 00:00:00', 0, 1),
(2, 'GIỚI THIỆU', 'topic', 'gioi-thieu', 2, 0, 0, '0', '2018-09-28 21:38:54', 0, '0000-00-00 00:00:00', 0, 1),
(3, 'SẢN PHẢM ', 'category', 'sanpham', 1, 0, 0, '0', '2018-09-28 21:39:00', 0, '0000-00-00 00:00:00', 0, 1),
(4, 'HÀNG BÁN CHẠY', 'category', 'hang-ban-chay', 12, 3, 0, '0', '2018-09-28 21:39:05', 0, '0000-00-00 00:00:00', 0, 1),
(5, 'LIÊN HỆ', 'topic', 'lien-he', 1, 0, 0, '0', '2018-09-28 21:39:09', 0, '0000-00-00 00:00:00', 0, 1),
(6, 'HÀNG GIẢM GIÁ', 'category', 'hang-giam-gia', 11, 3, 0, '0', '2018-09-28 21:39:13', 0, '0000-00-00 00:00:00', 0, 1),
(7, 'HÀNG MỚI VỀ', 'category', 'hang-moi-ve', 6, 3, 0, '0', '2018-09-28 21:39:17', 0, '0000-00-00 00:00:00', 0, 1),
(8, 'TIN TỨC', 'topic', 'tin-tuc', 5, 0, 0, '0', '2018-09-28 21:39:21', 0, '0000-00-00 00:00:00', 0, 1),
(9, 'DỊCH VỤ', 'topic', 'dich-vu', NULL, 0, 0, '0', '2018-09-28 21:39:25', 0, '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_option`
--

CREATE TABLE `hp_option` (
  `id_option` int(11) NOT NULL,
  `name_option` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `value_option` int(225) NOT NULL,
  `date_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_order`
--

CREATE TABLE `hp_order` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` int(11) NOT NULL,
  `order_userid` int(11) UNSIGNED NOT NULL,
  `order_createdate` date NOT NULL,
  `order_exportdate` date NOT NULL,
  `order_deliveryaddress` varchar(255) NOT NULL,
  `order_deliveryname` varchar(100) NOT NULL,
  `order_deliveryphone` varchar(255) NOT NULL,
  `order_deliveryemail` varchar(255) NOT NULL,
  `order_content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_idproduct` varchar(200) NOT NULL,
  `order_accounting` varchar(1000) NOT NULL,
  `order_price` int(11) NOT NULL,
  `order_cuont` varchar(200) NOT NULL,
  `oder_accounting` int(11) NOT NULL,
  `order_updatedat` timestamp NULL DEFAULT NULL,
  `order_updatedby` int(11) DEFAULT '0',
  `order_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_order`
--

INSERT INTO `hp_order` (`order_id`, `order_code`, `order_userid`, `order_createdate`, `order_exportdate`, `order_deliveryaddress`, `order_deliveryname`, `order_deliveryphone`, `order_deliveryemail`, `order_content`, `order_idproduct`, `order_accounting`, `order_price`, `order_cuont`, `oder_accounting`, `order_updatedat`, `order_updatedby`, `order_status`) VALUES
(44, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:31:53', 0, 1),
(45, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:32:17', 0, 1),
(46, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:33:03', 0, 1),
(47, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:33:35', 0, 1),
(48, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:34:36', 0, 1),
(49, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 2, '2018-11-02 03:36:26', 0, 1),
(50, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '', 0, '0', 0, '2018-11-02 07:28:26', 0, 1),
(51, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 40, '0', 0, '2018-11-02 07:29:05', 0, 1),
(52, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 40, '0', 0, '2018-11-02 07:29:52', 0, 1),
(53, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 40, '0', 0, '2018-11-02 07:30:25', 0, 1),
(54, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương chào các bạn', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 40, '0', 0, '2018-11-02 07:31:37', 0, 1),
(55, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương chào các bạn', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 40, '0', 0, '2018-11-02 07:32:51', 0, 1),
(56, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '0', '2', 48, '0', 0, '2018-11-02 07:33:49', 0, 1),
(57, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:04', 0, 1),
(58, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:12', 0, 1),
(59, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:13', 0, 1),
(60, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:13', 0, 1),
(61, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:13', 0, 1),
(62, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:13', 0, 1),
(63, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:37:13', 0, 1),
(64, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:38:07', 0, 1),
(65, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương 00', '0869847865000000', 'phuong97nhp@gmail.com', '000', '28', '2', 48, '20', 0, '2018-11-02 07:38:29', 0, 1),
(66, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương 00', '0869847865000000', 'phuong97nhp@gmail.com', '000', '28', '2', 48, '0', 0, '2018-11-02 07:39:32', 0, 1),
(67, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương 00', '0869847865000000', 'phuong97nhp@gmail.com', '000', '28', '2', 48, '20', 0, '2018-11-02 07:39:55', 0, 1),
(68, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phươngvfff', '0869847865', 'phuong97nhp@gmail.com', '', '28', '2', 48, '20', 0, '2018-11-02 07:40:50', 0, 1),
(69, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phươngvfff', '0869847865', 'phuong97nhp@gmail.com', '', '28|*15', '2', 48, '20|*4', 0, '2018-11-02 07:43:21', 0, 1),
(70, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phươngvfff', '0869847865', 'phuong97nhp@gmail.com', '', '28|*15', '2', 48, '20|*4', 0, '2018-11-02 07:43:39', 0, 1),
(71, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '28|*15', '2', 48, '20|*4', 0, '2018-11-02 07:51:08', 0, 1),
(72, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '28', '2', 2, '1', 0, '2018-11-02 07:53:05', 0, 1),
(73, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '28', '2', 2, '1', 0, '2018-11-02 07:55:12', 0, 1),
(74, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '137', '2', 72000, '2', 0, '2018-11-02 07:56:21', 0, 1),
(75, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '28', '2', 2, '1', 0, '2018-11-02 07:57:56', 0, 1),
(76, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '141', '2', 1230000, '30', 0, '2018-11-02 08:00:18', 0, 1),
(77, 0, 0, '0000-00-00', '0000-00-00', ' Đia chỉ', 'Nhập họ tên', 'Số điện thoại', 'Nhập email', '', '28', '2', 4, '2', 0, '2018-11-02 08:01:41', 0, 1),
(78, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương sđsdfs', '0869847865', 'phuong97nhp@gmail.com', '', '29', '2', 40, '20', 0, '2018-11-02 08:05:07', 0, 1),
(79, 0, 0, '0000-00-00', '0000-00-00', 'đường 22 hẻm 15', 'Nguyễn Hoàng Phương', '0869847865', 'phuong97nhp@gmail.com', '', '[]', '2', 0, '[]', 0, '2018-11-02 20:03:30', 0, 1),
(80, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'đáa', '577527222727', 'ưewđwdwwdw', 'ưdwdwdwdwdwdwd', '[]', '2', 0, '[]', 0, '2018-11-03 06:25:17', 0, 1),
(81, 0, 0, '0000-00-00', '0000-00-00', '45', 'dfsfsdfs', '54', '01697345855', '', '[\"147\"]', '1', 81000, '[1]', 0, '2018-11-04 03:28:35', 0, 1),
(82, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'ghjhgvhgv', '01626572333', '01697345855', 'jjijij', '[\"147\"]', '2', 81000, '[1]', 0, '2018-11-04 09:08:55', 0, 1),
(83, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'nguýnaasdasd', '01626572333', '01626572333', '5', '[\"147\"]', '2', 81000, '[1]', 0, '2018-11-05 05:46:36', 0, 1),
(84, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'rjghjdfhg', '01626572333', 'sfsdjkbf', '', '[\"147\"]', '1', 81000, '[1]', 0, '2018-11-06 03:07:53', 0, 1),
(85, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'ádgasghgdgas', '01626572333', 'sghsdgfsd', 'sdfsdfs', '[\"151\"]', '1', 111000, '[1]', 0, '2018-11-06 07:13:30', 0, 1),
(86, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'nguyễn tuấn hải', '01626572333', 'haibibo98@gmail.com', 'sdfjhsdjhfsd', '[\"146\"]', '2', 162000, '[2]', 0, '2018-12-09 01:14:44', 0, 1),
(87, 0, 0, '0000-00-00', '0000-00-00', '160 ấp 5c, lộc tấn, lộc ninh, bình phước', 'tuanhai', '01626572333', 'phamdongprob4@gmail.com', '', '[\"138\"]', '2', 71000, '[1]', 0, '2018-12-09 13:52:05', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_post`
--

CREATE TABLE `hp_post` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `post_topid` int(11) UNSIGNED DEFAULT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_titleseo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_slug` varchar(255) NOT NULL,
  `post_detail` longtext NOT NULL,
  `post_detailseo` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_categorys` int(11) NOT NULL,
  `post_tags` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `post_img` varchar(255) DEFAULT NULL,
  `post_type` varchar(50) DEFAULT 'post',
  `post_metakey` varchar(150) NOT NULL,
  `post_metadesc` varchar(150) NOT NULL,
  `post_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_createdby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `post_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `post_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_post`
--

INSERT INTO `hp_post` (`post_id`, `post_topid`, `post_title`, `post_titleseo`, `post_slug`, `post_detail`, `post_detailseo`, `post_categorys`, `post_tags`, `post_img`, `post_type`, `post_metakey`, `post_metadesc`, `post_createdat`, `post_createdby`, `post_updatedat`, `post_updatedby`, `post_status`) VALUES
(1, NULL, 'Phương thức giao hàng', '', 'trang/phuong-thuc-thanh-toan', '<p>1. PHẠM VI GIAO H&Agrave;NG:</p>\r\n\r\n<p><strong>- Phụ t&ugrave;ng xe m&aacute;y gi&aacute; tốt&nbsp;</strong>giao h&agrave;ng đến tất cả c&aacute;c khu vực trong phạm vi to&agrave;n l&atilde;nh thổ Việt Nam v&agrave; hợp t&aacute;c c&ugrave;ng những đơn vị vận chuyển đ&aacute;ng tin cậy với dịch vụ chuyển ph&aacute;t nhanh để giao h&agrave;ng trực tiếp đến Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><strong>-&nbsp;</strong><strong>Phụ t&ugrave;ng xe m&aacute;y gi&aacute; tốt</strong>&nbsp;gởi đến Qu&yacute; kh&aacute;ch h&agrave;ng dịch vụ &quot;GIAO H&Agrave;NG TẬN NƠI&quot; nhằm phục vụ tốt hơn cho Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu mua v&agrave; sử dụng phụ t&ugrave;ng - đồ chơi xe tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. THỜI GIAN GIAO H&Agrave;NG:</p>\r\n\r\n<p>-&nbsp;<strong>Khu vực TP. Hồ Ch&iacute; Minh:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; Giao h&agrave;ng trong v&ograve;ng 48h kể từ l&uacute;c Qu&yacute; kh&aacute;ch đặt h&agrave;ng.&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Khu vực c&aacute;c tỉnh th&agrave;nh kh&aacute;c tr&ecirc;n to&agrave;n quốc:</strong></p>\r\n\r\n<p>&nbsp;&nbsp;Giao h&agrave;ng trong v&ograve;ng&nbsp;từ 2 - 7 ng&agrave;y&nbsp;kể từ l&uacute;c Qu&yacute; kh&aacute;ch đặt h&agrave;ng.</p>\r\n\r\n<p>&nbsp; Mọi chi tiết xin li&ecirc;n hệ hotline: 0989.624.898</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>3. PH&Iacute; GIAO H&Agrave;NG:&nbsp;&aacute;p dụng cho đơn h&agrave;ng dưới 3kg.</p>\r\n\r\n<p>- Khu vực&nbsp;nội th&agrave;nh TP.HCM: mức ph&iacute; 20.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực&nbsp;ngoại th&agrave;nh 1 TP.HCM (gồm: Quận 9, 12, Thủ Đức, B&igrave;nh T&acirc;n): mức ph&iacute; 25.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực&nbsp;ngoại th&agrave;nh 2 TP.HCM (gồm: Củ Chi, B&igrave;nh Ch&aacute;nh, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n): mức ph&iacute; 30.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực c&aacute;c Tỉnh: mức ph&iacute; tham khảo tr&ecirc;n Giao h&agrave;ng nhanh.</p>\r\n\r\n<p>- Đặc biệt, đối với những&nbsp;<strong>đơn h&agrave;ng c&oacute; gi&aacute; trị từ 1.000.000đ trở l&ecirc;n sẽ được freeship</strong>&nbsp;trong khu vực Nội Th&agrave;nh của Tp.HCM, Giảm 50% ph&iacute; giao h&agrave;ng đối với Khu vực Ngoại Th&agrave;nh 1&amp;2 TP.HCM.&nbsp;</p>\r\n', '', 0, '', '/public/images/upload/images/a3.jpg', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, NULL, 'Phí giao hàng ', '', 'trang/phi-giao-hang', '<p>1. PHẠM VI GIAO H&Agrave;NG:</p>\r\n\r\n<p><strong>- Phụ t&ugrave;ng xe m&aacute;y gi&aacute; tốt&nbsp;</strong>giao h&agrave;ng đến tất cả c&aacute;c khu vực trong phạm vi to&agrave;n l&atilde;nh thổ Việt Nam v&agrave; hợp t&aacute;c c&ugrave;ng những đơn vị vận chuyển đ&aacute;ng tin cậy với dịch vụ chuyển ph&aacute;t nhanh để giao h&agrave;ng trực tiếp đến Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><strong>-&nbsp;</strong><strong>Phụ t&ugrave;ng xe m&aacute;y gi&aacute; tốt</strong>&nbsp;gởi đến Qu&yacute; kh&aacute;ch h&agrave;ng dịch vụ &quot;GIAO H&Agrave;NG TẬN NƠI&quot; nhằm phục vụ tốt hơn cho Qu&yacute; Kh&aacute;ch H&agrave;ng c&oacute; nhu cầu mua v&agrave; sử dụng phụ t&ugrave;ng - đồ chơi xe tr&ecirc;n to&agrave;n quốc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>2. THỜI GIAN GIAO H&Agrave;NG:</p>\r\n\r\n<p>-&nbsp;<strong>Khu vực TP. Hồ Ch&iacute; Minh:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; Giao h&agrave;ng trong v&ograve;ng 48h kể từ l&uacute;c Qu&yacute; kh&aacute;ch đặt h&agrave;ng.&nbsp;</p>\r\n\r\n<p>-&nbsp;<strong>Khu vực c&aacute;c tỉnh th&agrave;nh kh&aacute;c tr&ecirc;n to&agrave;n quốc:</strong></p>\r\n\r\n<p>&nbsp;&nbsp;Giao h&agrave;ng trong v&ograve;ng&nbsp;từ 2 - 7 ng&agrave;y&nbsp;kể từ l&uacute;c Qu&yacute; kh&aacute;ch đặt h&agrave;ng.</p>\r\n\r\n<p>&nbsp; Mọi chi tiết xin li&ecirc;n hệ hotline: 01626572333</p>\r\n\r\n<p>3. PH&Iacute; GIAO H&Agrave;NG:&nbsp;&aacute;p dụng cho đơn h&agrave;ng dưới 3kg.</p>\r\n\r\n<p>- Khu vực&nbsp;nội th&agrave;nh TP.HCM: mức ph&iacute; 20.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực&nbsp;ngoại th&agrave;nh 1 TP.HCM (gồm: Quận 9, 12, Thủ Đức, B&igrave;nh T&acirc;n): mức ph&iacute; 25.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực&nbsp;ngoại th&agrave;nh 2 TP.HCM (gồm: Củ Chi, B&igrave;nh Ch&aacute;nh, Nh&agrave; B&egrave;, H&oacute;c M&ocirc;n): mức ph&iacute; 30.000đ/đơn h&agrave;ng.</p>\r\n\r\n<p>- Khu vực c&aacute;c Tỉnh: mức ph&iacute; tham khảo tr&ecirc;n Giao h&agrave;ng nhanh.</p>\r\n\r\n<p>- Đặc biệt, đối với những&nbsp;<strong>đơn h&agrave;ng c&oacute; gi&aacute; trị từ 1.000.000đ trở l&ecirc;n sẽ được freeship</strong>&nbsp;trong khu vực Nội Th&agrave;nh của Tp.HCM, Giảm 50% ph&iacute; giao h&agrave;ng đối với Khu vực Ngoại Th&agrave;nh 1&amp;2 TP.HCM.&nbsp;</p>\r\n', '', 0, '', 'public/images/add-img.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, NULL, 'Tư vấn', '', 'trang/tu-van', '', '', 0, '', '/public/images/upload/images/a3.jpg', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(4, NULL, 'LIên hệ', '', 'trang/lien-he', '<p><strong>PHỤ T&Ugrave;NG XE M&Aacute;Y HONDA CH&Iacute;NH H&Atilde;NG</strong></p>\r\n\r\n<p>Địa chỉ: 160 ấp 5C, Lộc Tấn, Lộc Ninh, B&igrave;nh Phước</p>\r\n\r\n<p>Hotline:&nbsp;01626572333(phone, zalo, viber)</p>\r\n\r\n<p>Website: https://phutungxehonda.com</p>\r\n\r\n<p>Facebook:&nbsp;https://www.facebook.com/Haideptrai.nguyen98</p>\r\n', '', 0, '', '/hondaplus/public/images/upload/files/trang1.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(5, NULL, 'Hướng dẫn mua hàng', '', 'trang/huong-dan-mua-hang', '', '', 0, '', '/hondaplus/public/images/upload/files/trang1.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(6, NULL, 'Giới thiệu về Phụ tùng xe máy giá tốt', '', 'trang/gioi-thieu-ve-phu-tung-xe-may-gia-tot', '<p>Chuy&ecirc;n mua b&aacute;n sỉ &amp; lẻ:</p>\r\n\r\n<p>- Phụ t&ugrave;ng xe honda, yamaha, suzuki, sym ch&iacute;nh h&atilde;ng.</p>\r\n\r\n<p>- Đồ trang tr&iacute; s&agrave;nh điệu.</p>\r\n\r\n<p>- Đảm bảo chất lượng ch&iacute;nh h&atilde;ng, zin 100%.</p>\r\n\r\n<p>- Gi&aacute; cả tốt nhất thị trường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>PHỤ T&Ugrave;NG XE M&Aacute;Y GI&Aacute; TỐT<br />\r\nĐịa chỉ: 160 ấp 5C, Lộc Tấn, Lộc Ninh, B&igrave;nh Phước<br />\r\nHotline: 01626572333</p>\r\n\r\n<p>Facebook: https://www.facebook.com/Haideptrai.nguyen98</p>\r\n', '', 0, '', '/hondaplus/public/images/upload/files/trang1.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(7, NULL, 'Chính sách hậu mãi', '', 'trang/chinh-sach-hau-mai', '', '', 0, '', 'public/images/add-img.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(8, NULL, 'Chính sach abc', '', 'trang/chinh-sach-abc', '<p>abc</p>\r\n', '', 0, '', 'public/images/add-img.png', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(12, NULL, 'Mua hàng như thế nào ', '', 'trang/mua-hang-nhu-the-nao', '<p><strong>C&aacute;ch 1:</strong>&nbsp; Kh&aacute;ch h&agrave;ng lựa chọn mặt h&agrave;ng cần mua tr&ecirc;n trang web v&agrave; chọn &quot;<strong>Đặt mua</strong>&quot;. Sau đ&oacute; kh&aacute;ch h&agrave;ng điền c&aacute;c th&ocirc;ng tin chi tiết v&agrave;o phiếu giỏ h&agrave;ng v&agrave;&nbsp;nhấn n&uacute;t &quot;&nbsp;<strong>Đặt h&agrave;ng</strong>&quot;. Qu&aacute; tr&igrave;nh đặt h&agrave;ng đ&atilde; th&agrave;nh c&ocirc;ng.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&aacute;ch 2:</strong>&nbsp;Kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n hệ điện thoại, zalo, viber (số: 01626572333), facebook: https://www.facebook.com/Haideptrai.nguyen98</p>\r\n', '', 0, '', '/hondaplus/public/images/upload/images/gf/YamahaLogo.gif', 'page', '', '', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_product`
--

CREATE TABLE `hp_product` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_catid` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_slug` varchar(255) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `product_imglist` varchar(1000) DEFAULT NULL,
  `product_view` int(11) NOT NULL DEFAULT '1',
  `product_detail` longtext NOT NULL,
  `product_tags` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `product_number` int(11) UNSIGNED NOT NULL,
  `product_price` float(12,0) NOT NULL,
  `product_pricesale` float(12,0) NOT NULL,
  `product_metakey` varchar(150) NOT NULL,
  `product_metadesc` varchar(150) NOT NULL,
  `product_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_createdby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `product_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `product_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_product`
--

INSERT INTO `hp_product` (`product_id`, `product_catid`, `product_name`, `product_slug`, `product_img`, `product_imglist`, `product_view`, `product_detail`, `product_tags`, `product_number`, `product_price`, `product_pricesale`, `product_metakey`, `product_metadesc`, `product_createdat`, `product_createdby`, `product_updatedat`, `product_updatedby`, `product_status`) VALUES
(5, 3, 'Mâm Xe', 'mam-xe', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/mam.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/gfgfg\\/mam.jpg\",\"\\/public\\/images\\/upload\\/images\\/tinemlaychong.png\",\"\\/public\\/images\\/upload\\/images\\/a3.jpg\"]', 17, '<p>- B&aacute;nh m&acirc;m xe m&aacute;y được l&agrave;m bằng hợp kim nh&ocirc;m n&ecirc;n &iacute;t rỉ s&eacute;t do ảnh hưởng của m&ocirc;i trường xung quanh, cứng c&aacute;p&nbsp;bền bỉ hơn b&aacute;nh căm.<br />\r\n- M&acirc;m xe m&aacute;y (v&agrave;nh đ&uacute;c) c&oacute; trọng lượng nặng hơn xe b&aacute;nh căm, ch&iacute;nh v&igrave; đ&oacute; m&agrave; xe b&aacute;nh m&acirc;m cứng c&aacute;p hơn, vận h&agrave;nh ổn định ở tốt độ cao. Nhưng ngược lại, m&acirc;m xe c&oacute; khả năng giảm x&oacute;c&nbsp;k&eacute;m hơn b&aacute;nh căm do đ&oacute; khi đi cảm gi&aacute;c sẽ x&oacute;c hơn khi đi tr&ecirc;n đoạn&nbsp;đường gồ ghề. Trong khi đ&oacute;,&nbsp;b&aacute;nh căm th&igrave; nhẹ hơn, khả năng giảm x&oacute;c tốt hơn n&ecirc;n cảm gi&aacute;c đi sẽ &ecirc;m hơn tr&ecirc;n đường gồ ghề.<br />\r\n-&nbsp; Xe b&aacute;nh m&acirc;m thẩm mỹ đẹp&nbsp;hơn, tr&ocirc;ng mạnh mẽ v&agrave; cứng c&aacute;p, ấn tượng hơn xe b&aacute;nh căm.&nbsp;<br />\r\n- Khả năng t&iacute;ch hợp với vỏ kh&ocirc;ng ruột th&igrave; b&aacute;nh m&acirc;m tương th&iacute;ch dễ d&agrave;ng lắp đặt lốp kh&ocirc;ng săm v&agrave;o b&aacute;nh m&acirc;m, c&ograve;n b&aacute;nh căm do c&oacute; khe hở ngay ch&acirc;n căm n&ecirc;n kho&nbsp;lắp đặt vỏ kh&ocirc;ng ruột, nếu muốn gắn&nbsp;phải độ chế th&ecirc;m.</p>\r\n', '														', 26, 71000, 66000, 'Mâm Xe', 'Mâm Xe', '2018-12-09 07:40:33', 1, '2018-12-09 07:40:33', 1, 1),
(10, 3, 'Sạc Bình', 'sac-binh', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/sac.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/sac.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/142742.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/536456456.jpg\"]', 6, '<p>Truyền điện từ m&acirc;m lửa sang ắc quy</p>\r\n', '																												', 15, 71000, 61000, 'Sạc Bình', 'Sạc Bình', '2018-12-09 07:37:38', 1, '2018-12-09 07:37:38', 1, 1),
(29, 1, 'Phuột Trước', 'phuot-truoc', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/gggggg.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/gggggg.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/74747474.JPG\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/74747.jpg\"]', 8, '<p>Giảm s&oacute;c xe cho m&aacute;y đem đến sự an to&agrave;n v&agrave; &ecirc;m &aacute;i bằng c&aacute;ch t&aacute;ch biệt một c&aacute;ch tương đối giữa người l&aacute;i những chấn động, x&oacute;c v&agrave;&nbsp;đ&oacute;ng g&oacute;p v&agrave;o khả năng l&aacute;i v&agrave; khả năng phanh (thắng) của xe.</p>\r\n', '																												', 15, 71000, 61000, 'Phuộc Xe Máy', 'Phuộc Xe Máy', '2018-12-09 07:33:22', 1, '2018-12-09 07:33:22', 1, 1),
(30, 1, 'Mâm Lửa', 'mam-lua', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/mamlua.jpg', '[\"\\/public\\/images\\/upload\\/images\\/a3.jpg\",\"\\/public\\/images\\/upload\\/images\\/tinemlaychong.png\",\"\\/public\\/images\\/upload\\/images\\/a3.jpg\"]', 2, '<p>M&acirc;m lửa l&agrave; bộ ph&aacute;t điện&nbsp;hay c&ograve;n gọi l&agrave; m&acirc;m đ&egrave;n xe m&aacute;y. M&acirc;m lửa th&ocirc;ng qua bộ chỉnh lưu (cục sạc) l&agrave; nguồn cung cấp điện xoay chiều để nạp cho &aacute;c quy.</p>\r\n', '																												', 15, 71000, 61000, 'Mâm Lửa', 'Mâm Lửa', '2018-12-09 07:32:07', 1, '2018-12-09 07:32:07', 1, 1),
(31, 1, 'Dầu Motul', 'dau-motul', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/nhotxe.jpg', '[\"\\/public\\/images\\/upload\\/images\\/a3.jpg\",\"\\/public\\/images\\/upload\\/images\\/tinemlaychong.png\",\"\\/public\\/images\\/upload\\/images\\/a3.jpg\"]', 6, '<p>C&oacute; 5 t&aacute;c dụng:</p>\r\n\r\n<p>- T&aacute;c dụng b&ocirc;i trơn:&nbsp;Gi&uacute;p cho piston di chuyển l&ecirc;n xuống một c&aacute;ch nhẹ nh&agrave;ng, &ecirc;m &aacute;i trong l&ograve;ng xi-lanh.</p>\r\n\r\n<p>-&nbsp;T&aacute;c dụng l&agrave;m m&aacute;t:&nbsp;Tr&aacute;nh được t&igrave;nh trạng động cơ bị qu&aacute; nhiệt hay ch&aacute;y piston.</p>\r\n\r\n<p>- T&aacute;c dụng l&agrave;m k&iacute;n:&nbsp;Khi động cơ vận h&agrave;nh&nbsp;dầu nhớt như một lớp đệm mềm kh&ocirc;ng định h&igrave;nh bịt k&iacute;n khe hở giữa piston v&agrave; th&agrave;nh xi-lanh để &aacute;p suất sinh ra trong qu&aacute; tr&igrave;nh đốt ch&aacute;y nhi&ecirc;n liệu kh&ocirc;ng bị thất tho&aacute;t.</p>\r\n\r\n<p>- T&aacute;c dụng l&agrave;m sạch:&nbsp;Qu&aacute; tr&igrave;nh đốt ch&aacute;y nhi&ecirc;n liệu đương nhi&ecirc;n sẽ sản sinh ra muội đọng lại trong động cơ, t&aacute;c dụng tiếp theo của dầu nhớt ch&iacute;nh l&agrave; cuốn tr&ocirc;i v&agrave; l&agrave;m sạch những muội b&aacute;m n&agrave;y.</p>\r\n\r\n<p>- T&aacute;c dụng chống gỉ:&nbsp;Bề mặt của c&aacute;c chi tiết kim loại trong động cơ được bao bọc bằng một m&agrave;ng dầu mỏng c&oacute; t&aacute;c dụng hạn chế sự tiếp x&uacute;c với kh&ocirc;ng kh&iacute;, tr&aacute;nh được hiện tượng &ocirc;xy h&oacute;a dẫn đến han gỉ.</p>\r\n', '																												', 15, 71000, 61000, 'Dầu Motul', 'Dầu Motul', '2018-12-09 07:29:51', 1, '2018-12-09 07:29:51', 1, 1),
(32, 3, 'Rổ Xe', 'ro-xe', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/roxe.jpg', '[\"\\/public\\/images\\/upload\\/images\\/a3.jpg\",\"\\/public\\/images\\/upload\\/images\\/tinemlaychong.png\",\"\\/public\\/images\\/upload\\/images\\/a3.jpg\"]', 0, '<p>D&ugrave;ng để đựng balo, t&uacute;i x&aacute;ch, nước,...Thuận tiện hơn cho việc đi xe m&aacute;y</p>\r\n', '														', 15, 41000, 31000, 'Rổ Xe', 'Rổ Xe', '2018-12-09 07:23:42', 1, '2018-12-09 07:23:42', 1, 1),
(137, 1, 'Kiếng xe', 'kieng-xe', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/kieng.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/kieng.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/747474.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/747.jpg\"]', 27, '<p>D&ugrave;ng để quan s&aacute;t xe cộ v&agrave; chướng ngại ph&iacute;a sau, thuận tiện cho việc qua đường</p>\r\n', '																												', 3, 71000, 36000, 'Kiếng xe ', 'Kiếng xe ', '2018-12-09 07:21:54', 1, '2018-12-09 07:21:54', 1, 1),
(138, 3, 'Bugi', 'bugi', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/dsfdsfsdf/bugi.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/bugi.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/2.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/3.jpg\"]', 74, '<p>Ở động cơ đốt trong c&oacute; sử dụng hệ thống đ&aacute;nh lửa, bugi l&agrave;m nhiệm vụ ph&aacute;t tia lửa điện, k&iacute;ch th&iacute;ch sự bốc ch&aacute;y hỗn hợp kh&iacute; - nhi&ecirc;n liệu. Ngo&agrave;i ra bugi phải tản nhiệt thật nhanh để giảm bớt &aacute;p lực trong buồng đốt, điều kiện l&agrave;m việc khắc nghiệt &quot;l&uacute;c n&oacute;ng l&uacute;c lạnh&quot; như vậy, bugi trở th&agrave;nh chi tiết nhanh hỏng nhất trong hệ thống đ&aacute;nh lửa. Khi hư hỏng, sự ph&aacute;t tia lửa của bugi thay đổi cả về thời điểm v&agrave; cường độ, ảnh hưởng trực tiếp đến khả năng bốc ch&aacute;y hỗn hợp kh&iacute; - nhi&ecirc;n liệu dẫn đến c&ocirc;ng suất động cơ bị suy giảm động cơ vận h&agrave;nh kh&ocirc;ng ổn định được thậm ch&iacute; kh&ocirc;ng vận h&agrave;nh được.</p>\r\n', '																																			', 8, 71000, 61000, 'Bugi', 'Bugi', '2018-12-09 07:20:36', 1, '2018-12-09 07:20:36', 1, 1),
(140, 1, 'Phuộc Sau', 'phuoc-sau', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/gfgfg/phuot.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuot.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/4545.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/12.jpg\"]', 21, '<p>Giảm s&oacute;c xe cho m&aacute;y đem đến sự an to&agrave;n v&agrave; &ecirc;m &aacute;i bằng c&aacute;ch t&aacute;ch biệt một c&aacute;ch tương đối giữa người l&aacute;i những chấn động, x&oacute;c v&agrave;&nbsp;đ&oacute;ng g&oacute;p v&agrave;o khả năng l&aacute;i v&agrave; khả năng phanh (thắng) của xe.</p>\r\n', '																								Phuộc Xe Máy																																															', 6, 71000, 61000, 'Phuộc Xe Máy', 'Phuộc Xe Máy', '2018-12-09 07:19:36', 1, '2018-12-09 07:19:36', 1, 1),
(141, 1, 'Khóa Xe', 'khoa-xe', '/hondaplus/public/images/upload/images/8-canh-_w-anpha_bo-compressed-4027.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/%C4%91%C3%A8n%20demi\\/d%C3%A8%20xe\\/kh%C3%B3a%20xe\\/8-canh-_ex135-compressed-2449.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/%C4%91%C3%A8n%20demi\\/d%C3%A8%20xe\\/kh%C3%B3a%20xe\\/8-canh-_ex-150-compressed-5531.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/%C4%91%C3%A8n%20demi\\/d%C3%A8%20xe\\/kh%C3%B3a%20xe\\/8-canh-_no4-compressed-2473.jpg\"]', 38, '<p>D&ugrave;ng để chống trộm</p>\r\n', '																																																								', 17, 41000, 31000, 'Khóa Xe', 'Khóa xe', '2018-12-09 07:16:58', 1, '2018-12-09 07:16:58', 1, 1),
(142, 1, 'Đèn Pha Xe Máy', 'den-pha-xe-may', '/hondaplus/public/images/upload/images/b-3-chan-phi2compressed-3783.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/b-3-chan-phi2compressed-37832425_100x80.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/b-3-chan-phi1compressed-53483106_100x80(1).jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/b-3-chan-phi1compressed-53483106_100x80.jpg\"]', 85, '<p>Đ&egrave;n pha l&agrave; đ&egrave;n chiếu xa c&oacute; cường độ &aacute;nh s&aacute;ng mạnh, chiếu xa hơn v&agrave; tầm nh&igrave;n cao hơn, gi&uacute;p người điều khiển xe thấy được chướng ngại v&agrave; c&aacute;c biển b&aacute;o từ xa.</p>\r\n\r\n<p>Chế độ đ&egrave;n n&agrave;y sử dụng khi đi đường trường, cao tốc, nhưng nhiều người do kh&ocirc;ng hiểu biết hoặc do cố t&igrave;nh muốn g&acirc;y ch&uacute; &yacute; n&ecirc;n đ&atilde; sử dụng sai trong nội th&agrave;nh g&acirc;y l&oacute;a mắt, mất tầm nh&igrave;n cho c&aacute;c xe đi ngược chiều, dẫn đến nguy hiểm.</p>\r\n', '		Đèn Pha																										', 9, 66000, 26000, 'Đèn Pha Xe Máy', 'Đèn Pha', '2018-12-09 07:11:35', 1, '2018-12-09 07:11:35', 1, 1),
(143, 1, 'Bao Tay Xe Máy', 'bao-tay-xe-may', '/hondaplus/public/images/upload/images/bao-tay-kieu-3331.JPG', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/bao-tay-kieu_dh-compressed-0346.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/bao-tay-kieu-3331.JPG\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/bao-tay-kieu1-9333.jpg\"]', 5, '<p>Sản phẩm được thiết kế thời trang, phong c&aacute;ch. Phần tay nắm được trang bị miếng&nbsp;cao su chống trơn trượt</p>\r\n', 'Bao Tay Xe Máy						', 50, 81000, 26000, 'Bao Tay Xe Máy', 'Bao Tay Xe Máy', '2018-12-09 07:07:58', 1, '2018-12-09 07:07:58', 1, 1),
(144, 1, 'Baga', 'baga', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/baga.JPG', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/Ch%C3%A0o%20bu%E1%BB%95i%20s%C3%A1ng\\/baga_dr-lun-8837.JPG\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/Ch%C3%A0o%20bu%E1%BB%95i%20s%C3%A1ng\\/baga-mau_winner-8130.JPG\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/Ch%C3%A0o%20bu%E1%BB%95i%20s%C3%A1ng\\/baga_ex-135-9086.JPG\"]', 3, '<p>Thuận tiện cho việc kẹp &aacute;o mưa v&agrave;&nbsp;rất hữu dụng cho việc gắn rổ</p>\r\n', '								Baga							', 10, 76000, 51000, 'Baga', 'bagabagabagabagabagabagabagabagabaga', '2018-12-09 07:01:34', 1, '2018-12-09 07:01:34', 1, 1),
(145, 1, 'Nắp Xăng', 'nap-xang', '/hondaplus/public/images/upload/images/gf/images.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/images%20(1).jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/images%20(2).jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/gf\\/images.jpg\"]', 3, '<h3>Xe c&oacute; thể bị ch&aacute;y nếu qu&ecirc;n kh&ocirc;ng đ&oacute;ng nắp b&igrave;nh xăng n&ecirc;n ch&uacute;ng ta phải mua nắp xăng v&agrave; đậy lại</h3>\r\n', 'Nắp Xăng	', 40, 51000, 36000, 'Nguy cơ của việc không đóng nắp bình xăng ♥', 'Dù ở nhiệt độ thấp xăng vẫn rất dễ dàng bay hơi. Nếu bình được đóng kính, hơi chỉ tồn tại trong bình không thể thoát ra ngoài. Khi đạt tới áp suất bão', '2018-12-09 06:51:52', 1, '2018-12-09 06:51:52', 1, 1),
(146, 1, 'Cùm Tăng Tốc', 'cum-tang-toc', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/dddd.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/13710028_1065199126882576_6564086086703778409_n-Copy.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/cum-tang-toc-vang-1-day-ga-chinh-hang-ss-domino-1527915112.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/DSCF8226.jpg\"]', 13, '<p>Tăng tốc ga nhanh đầu của xe nhanh hơn c&ugrave;m b&igrave;nh thường. Gi&uacute;p r&uacute;t ngắn khoảng c&aacute;ch hết cuống ga, vặn ga nhẹ nh&agrave;ng, tăng tốc nhanh tuyệt đối.</p>\r\n', '					', 50, 81000, 71000, 'Cùm Tăng Tốc', 'Cùm Tăng TốcCùm Tăng TốcCùm Tăng TốcCùm Tăng TốcCùm Tăng Tốc', '2018-12-09 06:45:36', 1, '2018-12-09 06:45:36', 1, 1),
(147, 1, 'Bình xăng con', 'binh-xang-con', '/hondaplus/public/images/upload/images/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c/bingxangcon.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/B%C3%ACnh%20x%C4%83ng%20con\\/7128EkxzOZL.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/B%C3%ACnh%20x%C4%83ng%20con\\/images55.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/images\\/C%C3%B9m%20T%C4%83ng%20T%E1%BB%91c\\/B%C3%ACnh%20x%C4%83ng%20con\\/0KG9Ms_simg_d0daf0_800x1200_max-570x600.jpg\"]', 19, '<p>&nbsp;</p>\r\n\r\n<p>Đầu ti&ecirc;n, xăng được chuyển v&agrave;o buồng phao (float chamber) th&ocirc;ng qua ống dẫn đầu v&agrave;o (feed pipe)v&agrave; đường dẫn nhi&ecirc;n liệu (fuel inlet). Khi khoang chứa đ&atilde; nạp đầy đến một mức độ nhất định, phao v&agrave; kim chỉ van n&acirc;ng l&ecirc;n v&agrave; việc nạp nhi&ecirc;n liệu được ngưng lại hoặc cũng c&oacute; thể quan s&aacute;t qua m&aacute;t thần tr&ecirc;n chế ho&agrave; kh&iacute; xi lanh giảm xuống. &Aacute;p suất của kh&iacute; quyển sẽ đẩy kh&ocirc;ng kh&iacute; v&agrave;o trong bộ chế h&ograve;a kh&iacute;. Đ&oacute; l&agrave; nơi m&agrave; kh&ocirc;ng kh&iacute; sẽ được trộn với một lượng xăng th&iacute;ch hợp từ buồng phao để tạo ra hỗn hợp xăng + kh&ocirc;ng kh&iacute;, tỷ lệ xăng/kh&ocirc;ng kh&iacute; th&ocirc;ng thường v&agrave;o kho&atilde;ng 1g xăng/14,7g kh&ocirc;ng kh&iacute;.</p>\r\n\r\n<p>Nếu lượng xăng&gt; 1g/14,7g kh&ocirc;ng kh&iacute; hỗn hợp được gọi l&agrave; hỗn hợp gi&agrave;u, được d&ugrave;ng khi động cơ khởi động hoặc đang tăng ga, tăng tải. Nếu động cơ lu&ocirc;n hoạt động trong trạng th&aacute;i hỗn hợp gi&agrave;u sẽ sinh ra hiện tượng đống muội đen trong buồng đốt, bugi v&agrave; ống x&atilde;, hiệu suất sử dụng nhi&ecirc;n liệu giảm, &quot;ăn xăng&quot;.</p>\r\n\r\n<p>Nếu lượng xăng&lt; 1g/14,7g kh&ocirc;ng kh&iacute; hỗn hợp được gọi l&agrave; hỗn hợp ngh&egrave;o, sinh ra do điều chỉnh c&aacute;c th&ocirc;ng số bị sai lệch, c&aacute;c đường nạp xăng bị bẩn hoặc tắt. Nếu động cơ hoạt động trong trạng th&aacute;i hỗn hợp ngh&egrave;o c&ocirc;ng suất giảm, lực moment giảm (động cơ bị yếu) sinh ra hiện tượng đ&oacute;ng trắng trong buồng đốt v&agrave; bugi.</p>\r\n\r\n<p>Lượng nhi&ecirc;n liệu được phun sương sau khi d&atilde; hoa trộn với nhau được van tiết lưu c&ograve;n gọi l&agrave; bướm ga (throttle valve) điều chỉnh. Ở trong động cơ xe &ocirc; t&ocirc;, van tiết lưu được đ&oacute;ng v&agrave; mở nhờ sự vận h&agrave;nh của b&agrave;n đạp tăng tốc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hinh ảnh nhập thế anh nhận cũng k được ns chị may</p>\r\n', 'Bình xăng con																', 33, 1996000, 1296000, 'Bình xăng con', 'Bình xăng conBình xăng conBình xăng conBình xăng con', '2018-12-09 06:39:53', 1, '2018-12-09 06:39:53', 1, 1),
(148, 1, 'sirius', 'sirius', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/d%C6%B0a%20h%E1%BA%A5u.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/luu.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/qu%C3%BDt.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/t%C3%A1o.jpg\"]', 2, 'siriussiriussiriussiriussiriussiriussirius', '', 10, 71000, 61000, 'siriussiriussiriussirius', 'siriussiriussirius', '2018-11-05 05:54:21', 1, '2018-11-05 05:54:21', 1, 0),
(149, 1, 'bình mì', 'binh-mi', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/d%C6%B0a%20h%E1%BA%A5u.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/luu.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/qu%C3%BDt.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/t%C3%A1o.jpg\"]', 7, 'bình mìbình mìbình mìbình mìbình mìbình mì', '', 10, 71000, 61000, 'bình mìbình mìbình mìbình mìbình mì', '', '2018-11-05 07:16:08', 1, '2018-11-05 07:16:08', 1, 0),
(150, 1, 'Bugi Platinum (Bạch kim)', 'bugi-platinum-bach-kim', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/ds.JPG', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/ds.JPG\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/asaassda.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/aaa.jpg\"]', 3, '<p>Bugi Platinum (Bạch kim) rất được ưa chuộng sử dụng cho c&aacute;c loại động cơ cao cấp tr&ecirc;n thế giới. Bugi Platinum c&oacute; cực dương l&agrave;m bằng kim loại platin c&oacute; t&iacute;nh trơ, rất &iacute;t bị ăn m&ograve;n thậm ch&iacute; ở nhiệt độ cao. Tuổi thọ của bugi Platin cao gấp hai lần tuổi thọ của bugi Niken v&agrave; được đ&aacute;nh gi&aacute; cao khi sử dụng cho c&aacute;c loại động cơ đốt trong.</p>\r\n', '																					', 10, 111000, 81000, 'Bugi Platinum (Bạch kim)', '', '2018-12-09 07:20:20', 1, '2018-12-09 07:20:20', 1, 1),
(151, 1, 'tai nghe', 'tai-nghe', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/d%C6%B0a%20h%E1%BA%A5u.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/luu.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/qu%C3%BDt.jpg\",\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/t%C3%A1o.jpg\"]', 5, 'tai nghetai nghetai nghetai nghetai nghetai nghetai nghe', '', 10, 111000, 81000, 'tai nghetai nghetai nghetai nghe', 'tai nghetai nghetai nghetai nghe', '2018-11-06 07:12:51', 1, '2018-11-06 07:12:51', 1, 0),
(152, 1, 'nhựt duy', 'nhut-duy', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/%C3%A1dasd/aaa.jpg', '[\"\\/hondaplus\\/public\\/images\\/upload\\/files\\/bugi\\/phuoc\\/xe%20m%C3%A1y\\/%C3%A1dasd\\/aaa.jpg\",\"\",\"\"]', 2, 'nhựt duynhựt duynhựt duy', '', 10, 71000, 61000, 'nhựt duynhựt duynhựt duy', 'nhựt duynhựt duynhựt duy', '2018-11-12 08:30:23', 1, '2018-11-12 08:30:23', 1, 0),
(153, 1, 'sadsadas', 'sadsadas', '/hondaplus/public/images/upload/files/bugi/phuoc/xe%20m%C3%A1y/%C3%A1dasd/aaa.jpg', '[\"\",\"\",\"\"]', 2, '', '', 12, 81000, 71000, '', '', '2018-11-19 17:23:48', 1, '2018-11-19 17:23:48', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_slider`
--

CREATE TABLE `hp_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` varchar(255) NOT NULL,
  `slider_url` varchar(255) NOT NULL,
  `slider_position` varchar(100) NOT NULL,
  `slider_img` varchar(100) NOT NULL,
  `slider_order` int(11) NOT NULL,
  `slider_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slider_createdby` int(11) NOT NULL DEFAULT '1',
  `slider_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `slider_updatedby` int(11) NOT NULL DEFAULT '1',
  `slider_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_slider`
--

INSERT INTO `hp_slider` (`slider_id`, `slider_name`, `slider_url`, `slider_position`, `slider_img`, `slider_order`, `slider_createdat`, `slider_createdby`, `slider_updatedat`, `slider_updatedby`, `slider_status`) VALUES
(1, 'Mua là tặng mua là giảm', 'mua-la-tang-mua-la-giam', 'category', 'banner2.jpg', 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 'Đại tiệc sinh nhật ưu đãi bất ngờ', 'dai-tiec-sinh-nhat-ưu-dai-bat-ngo', 'category', 'banner1.jpg', 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(3, 'Ấm áp phút giây sum vầy', 'am-ap-phut-giay-sum-vay', 'single', 'banner3.jpg', 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_theme`
--

CREATE TABLE `hp_theme` (
  `theme_id` int(11) NOT NULL,
  `theme_name` varchar(255) NOT NULL,
  `theme_img` varchar(100) NOT NULL,
  `theme_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `theme_createdby` int(11) NOT NULL DEFAULT '1',
  `theme_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `theme_updatedby` int(11) NOT NULL DEFAULT '1',
  `theme_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_theme`
--

INSERT INTO `hp_theme` (`theme_id`, `theme_name`, `theme_img`, `theme_createdat`, `theme_createdby`, `theme_updatedat`, `theme_updatedby`, `theme_status`) VALUES
(1, 'noithat', 'theme1.jpg', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, 'Nguyễn Hoàng Phuong', 'theme2.jpg', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(3, 'Nguyễn Hoàng Phuong', 'theme3.jpg', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(4, 'Nguyễn Hoàng Phuong', 'theme4.jpg', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0),
(5, 'Nguyễn Hoàng Phuong', 'theme5.jpg', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_topic`
--

CREATE TABLE `hp_topic` (
  `topic_id` int(11) UNSIGNED NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `topic_slug` varchar(255) NOT NULL,
  `topic_parentid` int(11) UNSIGNED NOT NULL,
  `topic_order` int(11) UNSIGNED NOT NULL,
  `topic_metakey` varchar(150) NOT NULL,
  `topic_metadesc` varchar(150) NOT NULL,
  `topic_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_createdby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `topic_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `topic_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hp_user`
--

CREATE TABLE `hp_user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `user_fullname` varchar(255) NOT NULL,
  `user_username` varchar(225) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_lever` int(11) NOT NULL DEFAULT '0',
  `user_email` varchar(255) NOT NULL,
  `user_gender` tinyint(1) NOT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_img` varchar(100) DEFAULT NULL,
  `user_access` int(11) NOT NULL,
  `user_createdat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_createdby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `user_updatedat` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_updatedby` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `user_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `hp_user`
--

INSERT INTO `hp_user` (`user_id`, `user_fullname`, `user_username`, `user_password`, `user_lever`, `user_email`, `user_gender`, `user_phone`, `user_img`, `user_access`, `user_createdat`, `user_createdby`, `user_updatedat`, `user_updatedby`, `user_status`) VALUES
(1, '', 'admin', '210a28f50a8e9a0986df287ac9ae224de95b8978', 0, 'haibbo98@gmail.com', 0, '', NULL, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1),
(2, '', 'tuanhai', '210a28f50a8e9a0986df287ac9ae224de95b8978', 0, '', 0, '', NULL, 0, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1, 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hp_category`
--
ALTER TABLE `hp_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `hp_config`
--
ALTER TABLE `hp_config`
  ADD PRIMARY KEY (`config_id`);

--
-- Chỉ mục cho bảng `hp_contact`
--
ALTER TABLE `hp_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `hp_counter`
--
ALTER TABLE `hp_counter`
  ADD PRIMARY KEY (`counter_id`),
  ADD UNIQUE KEY `time` (`counter_id`);

--
-- Chỉ mục cho bảng `hp_images`
--
ALTER TABLE `hp_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Chỉ mục cho bảng `hp_menu`
--
ALTER TABLE `hp_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Chỉ mục cho bảng `hp_option`
--
ALTER TABLE `hp_option`
  ADD PRIMARY KEY (`id_option`);

--
-- Chỉ mục cho bảng `hp_order`
--
ALTER TABLE `hp_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Chỉ mục cho bảng `hp_post`
--
ALTER TABLE `hp_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Chỉ mục cho bảng `hp_product`
--
ALTER TABLE `hp_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `hp_slider`
--
ALTER TABLE `hp_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Chỉ mục cho bảng `hp_theme`
--
ALTER TABLE `hp_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Chỉ mục cho bảng `hp_topic`
--
ALTER TABLE `hp_topic`
  ADD PRIMARY KEY (`topic_id`);

--
-- Chỉ mục cho bảng `hp_user`
--
ALTER TABLE `hp_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hp_category`
--
ALTER TABLE `hp_category`
  MODIFY `category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `hp_config`
--
ALTER TABLE `hp_config`
  MODIFY `config_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hp_contact`
--
ALTER TABLE `hp_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hp_counter`
--
ALTER TABLE `hp_counter`
  MODIFY `counter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hp_images`
--
ALTER TABLE `hp_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hp_menu`
--
ALTER TABLE `hp_menu`
  MODIFY `menu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `hp_option`
--
ALTER TABLE `hp_option`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hp_order`
--
ALTER TABLE `hp_order`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `hp_post`
--
ALTER TABLE `hp_post`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `hp_product`
--
ALTER TABLE `hp_product`
  MODIFY `product_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT cho bảng `hp_slider`
--
ALTER TABLE `hp_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hp_theme`
--
ALTER TABLE `hp_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `hp_topic`
--
ALTER TABLE `hp_topic`
  MODIFY `topic_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hp_user`
--
ALTER TABLE `hp_user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
