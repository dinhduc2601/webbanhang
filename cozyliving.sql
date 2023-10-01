-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2023 at 08:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cozyliving`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add chuyen muc', 7, 'add_chuyenmuc'),
(26, 'Can change chuyen muc', 7, 'change_chuyenmuc'),
(27, 'Can delete chuyen muc', 7, 'delete_chuyenmuc'),
(28, 'Can view chuyen muc', 7, 'view_chuyenmuc'),
(29, 'Can add mau sac', 8, 'add_mausac'),
(30, 'Can change mau sac', 8, 'change_mausac'),
(31, 'Can delete mau sac', 8, 'delete_mausac'),
(32, 'Can view mau sac', 8, 'view_mausac'),
(33, 'Can add san pham', 9, 'add_sanpham'),
(34, 'Can change san pham', 9, 'change_sanpham'),
(35, 'Can delete san pham', 9, 'delete_sanpham'),
(36, 'Can view san pham', 9, 'view_sanpham'),
(37, 'Can add slide', 10, 'add_slide'),
(38, 'Can change slide', 10, 'change_slide'),
(39, 'Can delete slide', 10, 'delete_slide'),
(40, 'Can view slide', 10, 'view_slide'),
(41, 'Can add banner bottom', 11, 'add_bannerbottom'),
(42, 'Can change banner bottom', 11, 'change_bannerbottom'),
(43, 'Can delete banner bottom', 11, 'delete_bannerbottom'),
(44, 'Can view banner bottom', 11, 'view_bannerbottom'),
(45, 'Can add banner top', 12, 'add_bannertop'),
(46, 'Can change banner top', 12, 'change_bannertop'),
(47, 'Can delete banner top', 12, 'delete_bannertop'),
(48, 'Can view banner top', 12, 'view_bannertop'),
(49, 'Can add banner mid', 13, 'add_bannermid'),
(50, 'Can change banner mid', 13, 'change_bannermid'),
(51, 'Can delete banner mid', 13, 'delete_bannermid'),
(52, 'Can view banner mid', 13, 'view_bannermid'),
(53, 'Can add nha tai tro', 14, 'add_nhataitro'),
(54, 'Can change nha tai tro', 14, 'change_nhataitro'),
(55, 'Can delete nha tai tro', 14, 'delete_nhataitro'),
(56, 'Can view nha tai tro', 14, 'view_nhataitro'),
(57, 'Can add thong tin', 15, 'add_thongtin'),
(58, 'Can change thong tin', 15, 'change_thongtin'),
(59, 'Can delete thong tin', 15, 'delete_thongtin'),
(60, 'Can view thong tin', 15, 'view_thongtin'),
(61, 'Can add loai thong tin', 16, 'add_loaithongtin'),
(62, 'Can change loai thong tin', 16, 'change_loaithongtin'),
(63, 'Can delete loai thong tin', 16, 'delete_loaithongtin'),
(64, 'Can view loai thong tin', 16, 'view_loaithongtin'),
(65, 'Can add tin tuc', 17, 'add_tintuc'),
(66, 'Can change tin tuc', 17, 'change_tintuc'),
(67, 'Can delete tin tuc', 17, 'delete_tintuc'),
(68, 'Can view tin tuc', 17, 'view_tintuc'),
(69, 'Can add khach hang', 18, 'add_khachhang'),
(70, 'Can change khach hang', 18, 'change_khachhang'),
(71, 'Can delete khach hang', 18, 'delete_khachhang'),
(72, 'Can view khach hang', 18, 'view_khachhang'),
(73, 'Can add lien he', 19, 'add_lienhe'),
(74, 'Can change lien he', 19, 'change_lienhe'),
(75, 'Can delete lien he', 19, 'delete_lienhe'),
(76, 'Can view lien he', 19, 'view_lienhe'),
(77, 'Can add Sản Phẩm Giỏ Hàng', 20, 'add_sanphamgiohang'),
(78, 'Can change Sản Phẩm Giỏ Hàng', 20, 'change_sanphamgiohang'),
(79, 'Can delete Sản Phẩm Giỏ Hàng', 20, 'delete_sanphamgiohang'),
(80, 'Can view Sản Phẩm Giỏ Hàng', 20, 'view_sanphamgiohang'),
(81, 'Can add Giỏ Hàng', 21, 'add_giohang'),
(82, 'Can change Giỏ Hàng', 21, 'change_giohang'),
(83, 'Can delete Giỏ Hàng', 21, 'delete_giohang'),
(84, 'Can view Giỏ Hàng', 21, 'view_giohang'),
(85, 'Can add Chi Tiết Đơn Hàng', 22, 'add_chitietdonhang'),
(86, 'Can change Chi Tiết Đơn Hàng', 22, 'change_chitietdonhang'),
(87, 'Can delete Chi Tiết Đơn Hàng', 22, 'delete_chitietdonhang'),
(88, 'Can view Chi Tiết Đơn Hàng', 22, 'view_chitietdonhang'),
(89, 'Can add Đơn Hàng', 23, 'add_donhang'),
(90, 'Can change Đơn Hàng', 23, 'change_donhang'),
(91, 'Can delete Đơn Hàng', 23, 'delete_donhang'),
(92, 'Can view Đơn Hàng', 23, 'view_donhang');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$ueQHw1JZxi13n6PbN74zpK$GXzdQMNcCLEOKpgTrRefyd3giTVJLxsUCDTUxEL39PA=', '2023-09-08 03:19:19.000000', 1, 'admin', 'Phuong Linh', 'Phan', '21730031@ms.uit.edu.vn', 1, 1, '2023-06-13 23:20:32.000000'),
(3, 'pbkdf2_sha256$600000$VdQ1trXlTRfkodCnxvWLY7$EJwUkTvUbPwhJ5hcGDMqeWfES3EDV2veePU7ZAj97rI=', '2023-06-22 14:06:08.000000', 0, 'khachhang1', 'Nguyen', 'Minh', 'Nguyen@gmail.com', 0, 1, '2023-06-22 10:21:52.000000'),
(4, 'pbkdf2_sha256$600000$vRtGlwkGj67qFcsDRTIYYf$wEBKbnSqydEmZuFTmlCcsOJdE7ozPpr/kPdk2AEEOSA=', '2023-09-29 16:38:39.060121', 1, 'linhadmin', '', '', 'linh@gmail.com', 1, 1, '2023-09-29 01:54:28.470249'),
(5, 'pbkdf2_sha256$600000$lSadYnyt6Z0AsmCsZRIZz9$qK0nX4I6K6p0S4MAEE6RjsGgvxwuGE8kqa9NRT2DZGI=', '2023-09-29 02:31:59.718988', 0, 'linhpnp', 'Linh Phan', 'Phuong', '', 0, 1, '2023-09-29 02:31:46.014793'),
(6, 'pbkdf2_sha256$600000$frPRGnBgORi2cGCPDYv5yj$9i8YZNl0StogUg7rx578d9ciZdFxZfYmfl5OuSQoYdg=', '2023-09-29 13:28:13.912050', 0, 'khachhang111', 'Dinh', 'Nam', '', 0, 1, '2023-09-29 08:01:43.997740'),
(7, 'pbkdf2_sha256$600000$3Ug0CAnmb33FeU3s1nJwFT$GqfomY8s8vw3pYhR1zKcCEMSw2vQ4pMwvM6tQx5Rxok=', '2023-09-30 10:00:00.000000', 0, 'user1', 'User', 'One', 'user1@example.com', 0, 1, '2023-09-30 10:00:00.000000'),
(8, 'pbkdf2_sha256$600000$4oY3JEMHbQyBQiP01BwwrB$VGosqLq0G6G6vOBXUxdQkU8wQl7OvAvq72JYOTeLxRK', '2023-09-30 10:30:00.000000', 0, 'user2', 'User', 'Two', 'user2@example.com', 0, 1, '2023-09-30 10:30:00.000000'),
(9, 'pbkdf2_sha256$600000$8oX3YEMHcDzBPiP03BwwrC$WGosqLq0G6G6vOBXUxdQkU8wQl7OvAvq72JYOTeLxRK', '2023-09-30 11:00:00.000000', 0, 'user3', 'User', 'Three', 'user3@example.com', 0, 1, '2023-09-30 11:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart_giohang`
--

CREATE TABLE `cart_giohang` (
  `id` bigint(20) NOT NULL,
  `KhachHang_id` bigint(20) NOT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MauSac_id` bigint(20) DEFAULT NULL,
  `MoTaNgan` longtext DEFAULT NULL,
  `SanPham_id` bigint(20) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `TenSanPham` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart_giohang`
--

INSERT INTO `cart_giohang` (`id`, `KhachHang_id`, `GiaBan`, `MauSac_id`, `MoTaNgan`, `SanPham_id`, `SoLuong`, `TenSanPham`) VALUES
(52, 5, 250000, 2, '', 3, 1, 'Ghế ăn');

-- --------------------------------------------------------

--
-- Table structure for table `contact_lienhe`
--

CREATE TABLE `contact_lienhe` (
  `id` bigint(20) NOT NULL,
  `TenKhachHang` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_lienhe`
--

INSERT INTO `contact_lienhe` (`id`, `TenKhachHang`, `Email`, `SoDienThoai`, `TieuDe`, `NoiDung`) VALUES
(1, 'Hoàng Văn', 'hoangvan@gmail.com', '0945678901', 'Yêu cầu hỗ trợ sản phẩm', 'Tôi cần sự hỗ trợ về sản phẩm Sofa Nhung'),
(2, 'Mai Phương', 'maiphuong123@gmail.com', '0956789012', 'Đặt hàng sản phẩm ', 'Tôi muốn đặt hàng sản phẩm'),
(3, 'Ngọc Anh Gia Hùng', 'ngohung@gmail.com', '0967890143', 'Liên hệ tài chính', 'Tôi cần thêm thông tin về thanh toán đơn hàng'),
(6, 'Minh Chau', 'chau@gmail.com', '0983374616', 'Đặt hàng', '1 đơn'),
(7, 'Nguyễn Văn Thái', 'thainguyen@gmail.com', '0901234567', 'Yêu cầu báo giá', 'Vui lòng gửi báo giá sản phẩm Ghế sắt '),
(8, 'Lê Thị Định', 'ledinhminhb@gmail.com', '0912345678', 'Hỗ trợ kỹ thuật', 'Tôi gặp vấn đề khi sử dụng sản phẩm Sofa Vải'),
(9, 'Trần Văn Anh', 'tranvanhc@gmail.com', '0923456789', 'Phản hồi dịch vụ', 'Tôi rất hài lòng với dịch vụ của bạn'),
(10, 'Phạm Thị Dung', 'phandd@gmail.com', '0934567890', 'Thông tin tuyển dụng', 'Tôi muốn nộp đơn xin việc tại công ty'),
(11, 'Nguyễn Hoàng Văn', 'hoangvan@gmail.com', '0945678901', 'Yêu cầu hỗ trợ sản phẩm C', 'Tôi cần sự hỗ trợ về sản phẩm Sofa Nhung'),
(12, 'Mai Thị Phương', 'maiphuong@gmail.com', '0956789012', 'Đặt hàng sản phẩm D', 'Tôi muốn đặt hàng sản phẩm D'),
(13, 'Ngọc Anh Gia', 'ngocanhgia@gmail.com', '0967890123', 'Liên hệ tài chính', 'Tôi cần thêm thông tin về thanh toán'),
(14, 'Đặng Văn Hùng', 'danghung@gmail.com', '0978901234', 'Báo cáo lỗi ứng dụng', 'Tôi gặp lỗi khi sử dụng ứng dụng'),
(15, 'Lê Quang Tiến', 'lequang@gmail.com', '0989012345', 'Hỏi về sản phẩm E', 'Tôi muốn biết thêm về sản phẩm'),
(16, 'Nguyễn Thị Kim Anh', 'kimanh@gmail.com', '0990123456', 'Góp ý và đề xuất', 'Tôi có một số góp ý về dịch vụ'),
(17, 'Trần Quốc Lập', 'tranquoc@gmail.com', '0911122334', 'Thông tin khuyến mãi', 'Tôi muốn nhận thông tin về chương trình khuyến mãi'),
(18, 'Phạm Văn Mạnh', 'phammanh@gmail.com', '0912233445', 'Hướng dẫn đổi trả', 'Tôi muốn biết cách đổi trả sản phẩm'),
(19, 'Lê Thị Ngọc Anh', 'ngocanh@gmail.com', '0913344556', 'Yêu cầu bảo hành', 'Tôi cần bảo hành sản phẩm'),
(20, 'Nguyễn Văn Phú', 'nguyenphu@gmail.com', '0914455667', 'Hỗ trợ kỹ thuật ứng dụng', 'Tôi gặp vấn đề kỹ thuật với ứng dụng'),
(21, 'Trần Thị Quỳnh', 'tranquynh@gmail.com', '0915566778', 'Thông tin chi tiết sản phẩm F', 'Tôi muốn biết thông tin chi tiết về sản phẩm F'),
(22, 'Vũ Văn Rồng', 'vurong@gmail.com', '0916677889', 'Phản hồi dịch vụ', 'Dịch vụ của bạn rất tốt'),
(23, 'Hồ Thị Sương', 'hosuong@gmail.com', '0917788990', 'Liên hệ hợp tác', 'Tôi muốn hợp tác với công ty của bạn về lâu dài'),
(24, 'Nguyễn Văn Tâm', 'nguyentam@gmail.com', '0918899001', 'Yêu cầu tư vấn sản phẩm', 'Tôi cần tư vấn về các giải pháp của bạn');

-- --------------------------------------------------------

--
-- Table structure for table `customer_khachhang`
--

CREATE TABLE `customer_khachhang` (
  `id` bigint(20) NOT NULL,
  `SoDienThoai` varchar(11) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `User_id` int(11) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_khachhang`
--

INSERT INTO `customer_khachhang` (`id`, `SoDienThoai`, `DiaChi`, `GioiTinh`, `User_id`, `DuongDan`) VALUES
(3, '0999999999', 'Hà Nội', '1', 1, 'nam-chu-minh-1'),
(4, '0999999999', NULL, '1', 3, 'nguyen-minh-3'),
(5, NULL, NULL, '', 5, 'linh-phan-phuong-5'),
(6, NULL, NULL, '', 6, 'dinh-nam-6'),
(7, '098438921', 'Hải Phòng', '1', 7, 'user-one-7');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(226, '2023-09-29 05:36:59.027379', '1', 'Cozy Sofa', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 10, 4),
(227, '2023-09-29 05:42:56.662227', '1', 'Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"TenChuyenMuc\", \"DuongDan\", \"HinhAnh\"]}}]', 7, 4),
(228, '2023-09-29 05:43:26.084507', '4', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(229, '2023-09-29 05:44:20.742437', '4', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(230, '2023-09-29 05:44:57.426752', '3', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(231, '2023-09-29 05:45:15.154411', '4', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(232, '2023-09-29 05:45:18.400200', '3', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[]', 12, 4),
(233, '2023-09-29 05:45:27.433936', '2', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(234, '2023-09-29 05:46:25.687378', '1', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 12, 4),
(235, '2023-09-29 05:48:00.044812', '3', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 13, 4),
(236, '2023-09-29 05:48:21.003618', '2', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 13, 4),
(237, '2023-09-29 05:48:29.948687', '1', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 13, 4),
(238, '2023-09-29 05:49:12.972562', '4', 'Sản phẩm nổi bật', 1, '[{\"added\": {}}]', 7, 4),
(239, '2023-09-29 05:49:16.734123', '3', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"ChuyenMuc\"]}}]', 13, 4),
(240, '2023-09-29 05:49:22.154052', '3', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[]', 13, 4),
(241, '2023-09-29 05:49:26.311361', '2', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"ChuyenMuc\"]}}]', 13, 4),
(242, '2023-09-29 05:49:29.795916', '1', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"ChuyenMuc\"]}}]', 13, 4),
(243, '2023-09-29 05:51:40.198460', '1', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 11, 4),
(244, '2023-09-29 05:52:01.302945', '1', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[]', 11, 4),
(245, '2023-09-29 05:52:30.698846', '3', 'Rau sạch', 3, '', 7, 4),
(246, '2023-09-29 05:56:34.174633', '7', '1', 2, '[{\"changed\": {\"fields\": [\"TenNhaTaiTro\", \"HinhAnh\"]}}]', 14, 4),
(247, '2023-09-29 05:56:48.677426', '6', '2', 2, '[{\"changed\": {\"fields\": [\"TenNhaTaiTro\", \"HinhAnh\"]}}]', 14, 4),
(248, '2023-09-29 05:57:02.608935', '5', '3', 2, '[{\"changed\": {\"fields\": [\"TenNhaTaiTro\", \"HinhAnh\"]}}]', 14, 4),
(249, '2023-09-29 05:57:14.591248', '1', '4', 2, '[{\"changed\": {\"fields\": [\"TenNhaTaiTro\", \"HinhAnh\"]}}]', 14, 4),
(250, '2023-09-29 05:57:32.573148', '10', '5', 1, '[{\"added\": {}}]', 14, 4),
(251, '2023-09-29 06:08:17.989571', '2', 'Ghế Lounge Comfy', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"MoTaNgan\", \"MoTaDai\", \"The\", \"DuongDan\"]}}]', 9, 4),
(252, '2023-09-29 06:09:26.119848', '2', 'Ghế Lounge Comfy', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 4),
(253, '2023-09-29 06:19:21.623777', '2', 'Ghế Lounge Comfy', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 4),
(254, '2023-09-29 06:24:51.286460', '3', 'Ghế ăn Elegance', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"PhanTramGiam\", \"MoTaNgan\", \"MoTaDai\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(255, '2023-09-29 06:25:30.454658', '3', 'Ghế ăn Elegance', 2, '[]', 9, 4),
(256, '2023-09-29 06:25:59.902723', '3', 'Ghế ăn Elegance', 2, '[{\"changed\": {\"fields\": [\"The\"]}}]', 9, 4),
(257, '2023-09-29 06:28:14.181991', '3', 'Ghế ăn Elegance', 2, '[{\"changed\": {\"fields\": [\"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 4),
(258, '2023-09-29 06:30:39.645788', '3', 'Ghế ăn Elegance', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 4),
(259, '2023-09-29 06:39:56.364493', '4', 'Ghế đọc sách Vintage', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"MoTaNgan\", \"MoTaDai\", \"ChuyenMuc\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(260, '2023-09-29 06:41:42.008266', '4', 'Ghế đọc sách Vintage', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 4),
(261, '2023-09-29 06:43:12.316190', '4', 'Ghế đọc sách Vintage', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\"]}}]', 9, 4),
(262, '2023-09-29 06:49:07.193047', '5', 'Ghế Accent Lexicon Elle', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"PhanTramGiam\", \"MoTaNgan\", \"MoTaDai\", \"MauSac\", \"The\", \"DuongDan\"]}}]', 9, 4),
(263, '2023-09-29 06:49:35.967252', '5', 'Ghế Accent Lexicon Elle', 2, '[]', 9, 4),
(264, '2023-09-29 06:50:09.050962', '5', 'Ghế Accent Lexicon Elle', 2, '[{\"changed\": {\"fields\": [\"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\"]}}]', 9, 4),
(265, '2023-09-29 06:50:40.300528', '5', 'Ghế Accent Lexicon Elle', 2, '[{\"changed\": {\"fields\": [\"MauSac\"]}}]', 9, 4),
(266, '2023-09-29 06:55:09.986872', '7', 'Ghế Espresso', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"MoTaNgan\", \"MoTaDai\", \"ChuyenMuc\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(267, '2023-09-29 06:58:47.848899', '8', 'Ghế GIA Mid Century Modern', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"PhanTramGiam\", \"MoTaNgan\", \"MoTaDai\", \"ChuyenMuc\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(268, '2023-09-29 07:02:27.882327', '9', 'Ghế Tựa Tay Vải Phong Cách Christopher', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"MoTaNgan\", \"MoTaDai\", \"ChuyenMuc\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(269, '2023-09-29 07:09:32.409584', '10', 'Ghế kim loại', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"PhanTramGiam\", \"MoTaNgan\", \"MoTaDai\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(270, '2023-09-29 07:13:18.906417', '11', 'Ghế tựa Homepot', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"MoTaNgan\", \"MoTaDai\", \"ChuyenMuc\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(271, '2023-09-29 07:13:54.975488', '15', 'ALBUM ENHYPEN - DARK BLOOD TYUI', 3, '', 9, 4),
(272, '2023-09-29 07:16:23.416590', '12', 'Ghế Sofa MoNiBloom', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"MoTaNgan\", \"MoTaDai\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(273, '2023-09-29 07:20:38.659932', '13', 'Sofa Woody', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"GiaKhuyenMai\", \"GiaBan\", \"PhanTramGiam\", \"MoTaNgan\", \"MoTaDai\", \"MauSac\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(274, '2023-09-29 07:23:53.333278', '14', 'Ghế da Lamerge', 2, '[{\"changed\": {\"fields\": [\"TenSanPham\", \"MoTaNgan\", \"MoTaDai\", \"The\", \"AnhChinh\", \"AnhPhu1\", \"AnhPhu2\", \"AnhPhu3\", \"DuongDan\"]}}]', 9, 4),
(275, '2023-09-29 07:29:21.675691', '9', 'Cá nhân hóa nội thất  phong cách riêng của bạn', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\", \"DuongDan\"]}}]', 17, 4),
(276, '2023-09-29 07:32:51.123224', '8', 'Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\", \"DuongDan\"]}}]', 17, 4),
(277, '2023-09-29 07:33:08.350221', '8', 'Căn hộ màu nâu cam đất xinh mê với chi phí nội thất hợp lý', 2, '[{\"changed\": {\"fields\": [\"TieuDe\"]}}]', 17, 4),
(278, '2023-09-29 07:34:04.329449', '8', 'Căn hộ màu nâu cam đất xinh mê với chi phí nội thất hợp lý', 2, '[{\"changed\": {\"fields\": [\"NoiDung\"]}}]', 17, 4),
(279, '2023-09-29 07:37:23.128628', '7', 'Trang trí phòng khách nhỏ: Sai lầm và cách khắc phục', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\", \"DuongDan\"]}}]', 17, 4),
(280, '2023-09-29 07:40:08.264547', '6', 'Những kiểu trang trí phòng khách ĐẸP mà vô cùng HIỆN ĐẠI', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\", \"DuongDan\"]}}]', 17, 4),
(281, '2023-09-29 07:43:39.813885', '5', 'BẮT KỊP XU HƯỚNG THIẾT KẾ NỘI THẤT HIỆN ĐẠI CHO NGÔI NHÀ CỦA BẠN', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\", \"DuongDan\"]}}]', 17, 4),
(282, '2023-09-29 07:47:46.366685', '4', 'Các xu hướng thiết kế nội thất đang làm mưa làm gió hiện nay', 2, '[{\"changed\": {\"fields\": [\"TieuDe\", \"AnhChinh\", \"The\", \"NoiDung\"]}}]', 17, 4),
(283, '2023-09-29 07:47:55.680688', '3', '5 tuyệt chiêu \"trị\" trẻ lười ăn rau quả', 3, '', 17, 4),
(284, '2023-09-29 07:49:56.467648', '3', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 13, 4),
(285, '2023-09-29 07:50:03.835667', '2', 'Banner Chuyên Mục: Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 13, 4),
(286, '2023-09-29 07:50:59.541679', '1', 'Banner Chuyên Mục: Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\", \"ChuyenMuc\"]}}]', 13, 4),
(287, '2023-09-29 07:58:35.330612', '4', 'Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 4),
(288, '2023-09-29 07:58:46.565800', '1', 'Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 4),
(289, '2023-09-29 07:59:02.525539', '4', 'Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 4),
(290, '2023-09-29 07:59:10.851581', '1', 'Sản phẩm mới', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 4),
(291, '2023-09-29 07:59:40.695475', '4', 'Sản phẩm nổi bật', 2, '[{\"changed\": {\"fields\": [\"HinhAnh\"]}}]', 7, 4),
(292, '2023-09-29 07:59:56.341035', '6', 'Minh Chau - Đặt hàng', 2, '[]', 19, 4),
(293, '2023-09-29 16:39:27.954391', '21', 'Mã Đơn Hàng: 7 - Sản Phẩm: Ghế đọc sách Vintage - Giá Bán: 400000 - Số Lượng: 1 - Tổng Tiền: 400000', 2, '[]', 22, 4),
(294, '2023-09-29 17:46:53.714274', '11', 'Nguyễn Hoàng Văn - Yêu cầu hỗ trợ sản phẩm C', 2, '[]', 19, 4),
(295, '2023-09-29 18:01:55.731771', '7', 'MKH: 7, Họ Tên: User One', 1, '[{\"added\": {}}]', 18, 4),
(296, '2023-09-29 18:02:09.893501', '4', 'MKH: 3, Họ Tên: Nguyen Minh', 2, '[{\"changed\": {\"fields\": [\"DuongDan\"]}}]', 18, 4),
(297, '2023-09-29 18:02:23.182614', '4', 'MKH: 3, Họ Tên: Nguyen Minh', 2, '[]', 18, 4),
(298, '2023-09-29 18:04:12.198631', '21', 'Mã Đơn Hàng: 7 - Sản Phẩm: Ghế đọc sách Vintage - Giá Bán: 400000 - Số Lượng: 1 - Tổng Tiền: 400000', 2, '[]', 22, 4),
(299, '2023-09-29 18:07:55.996795', '3', 'Mã Đơn Hàng: 3 - Khách Hàng: Phuong Linh Phan - Tổng Tiền: 4515000 - Thời Gian: 2023-07-01 17:19:51', 2, '[{\"changed\": {\"fields\": [\"TrangThai\"]}}]', 23, 4),
(300, '2023-09-29 18:08:04.739793', '8', 'Mã Đơn Hàng: 8 - Khách Hàng: Phuong Linh Phan - Tổng Tiền: 4515000 - Thời Gian: 2023-07-01 17:19:51', 2, '[{\"changed\": {\"fields\": [\"TrangThai\"]}}]', 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(21, 'cart', 'giohang'),
(20, 'cart', 'sanphamgiohang'),
(19, 'contact', 'lienhe'),
(5, 'contenttypes', 'contenttype'),
(18, 'customer', 'khachhang'),
(17, 'news', 'tintuc'),
(22, 'order', 'chitietdonhang'),
(23, 'order', 'donhang'),
(7, 'product', 'chuyenmuc'),
(8, 'product', 'mausac'),
(9, 'product', 'sanpham'),
(6, 'sessions', 'session'),
(11, 'website', 'bannerbottom'),
(13, 'website', 'bannermid'),
(12, 'website', 'bannertop'),
(16, 'website', 'loaithongtin'),
(14, 'website', 'nhataitro'),
(10, 'website', 'slide'),
(15, 'website', 'thongtin');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-06-13 08:18:47.335964'),
(2, 'auth', '0001_initial', '2023-06-13 08:18:47.833626'),
(3, 'admin', '0001_initial', '2023-06-13 08:18:47.945675'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-06-13 08:18:47.953653'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-13 08:18:47.960885'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-06-13 08:18:48.059811'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-06-13 08:18:48.112567'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-06-13 08:18:48.173857'),
(9, 'auth', '0004_alter_user_username_opts', '2023-06-13 08:18:48.184833'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-06-13 08:18:48.226644'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-06-13 08:18:48.229967'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-13 08:18:48.239941'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-06-13 08:18:48.258918'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-13 08:18:48.276923'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-06-13 08:18:48.329238'),
(16, 'auth', '0011_update_proxy_permissions', '2023-06-13 08:18:48.340530'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-13 08:18:48.360027'),
(18, 'sessions', '0001_initial', '2023-06-13 08:18:48.400889'),
(19, 'product', '0001_initial', '2023-06-13 23:19:19.294943'),
(20, 'product', '0002_alter_chuyenmuc_duongdan_alter_sanpham_duongdan', '2023-06-14 08:53:53.580105'),
(21, 'product', '0003_alter_sanpham_giaban_alter_sanpham_giakhuyenmai', '2023-06-14 09:16:03.118514'),
(22, 'website', '0001_initial', '2023-06-14 09:25:40.245541'),
(23, 'website', '0002_slide_hienthi', '2023-06-14 09:31:17.930503'),
(24, 'website', '0003_bannertop_bannermid_bannerbottom', '2023-06-14 09:50:32.082480'),
(25, 'product', '0004_sanpham_phantramgiam', '2023-06-14 12:14:56.997648'),
(26, 'product', '0005_alter_sanpham_tensanpham', '2023-06-14 15:48:35.984367'),
(27, 'product', '0006_chuyenmuc_hinhanh', '2023-06-15 13:15:27.664153'),
(28, 'website', '0004_nhataitro', '2023-06-15 13:20:56.467076'),
(29, 'website', '0005_alter_nhataitro_hinhanh', '2023-06-15 14:15:40.851201'),
(30, 'website', '0006_alter_nhataitro_hinhanh', '2023-06-15 14:16:39.929382'),
(31, 'website', '0007_loaithongtin_thongtin', '2023-06-15 14:45:54.334995'),
(32, 'website', '0008_rename_tenloai_thongtin_loaithongtin', '2023-06-15 14:47:52.817334'),
(33, 'website', '0009_loaithongtin_maloai', '2023-06-15 15:01:57.624779'),
(34, 'website', '0010_alter_thongtin_loaithongtin', '2023-06-15 15:06:25.134524'),
(35, 'website', '0011_alter_thongtin_loaithongtin', '2023-06-15 15:06:25.360084'),
(36, 'website', '0012_alter_thongtin_hinhanh', '2023-06-15 15:07:09.844588'),
(37, 'website', '0013_alter_thongtin_giatri', '2023-06-15 15:09:58.193795'),
(38, 'news', '0001_initial', '2023-06-15 19:53:17.632754'),
(39, 'news', '0002_tintuc_duongdan', '2023-06-15 20:05:12.277517'),
(40, 'news', '0003_alter_tintuc_duongdan', '2023-06-15 20:06:29.348452'),
(41, 'news', '0004_alter_tintuc_options', '2023-06-21 20:09:09.329854'),
(42, 'product', '0007_alter_chuyenmuc_options_alter_mausac_options_and_more', '2023-06-21 20:09:09.352922'),
(43, 'website', '0014_alter_nhataitro_options_alter_thongtin_options', '2023-06-21 20:09:09.359909'),
(44, 'customer', '0001_initial', '2023-06-21 20:30:10.409209'),
(45, 'customer', '0002_alter_khachhang_options_khachhang_duongdan', '2023-06-21 20:34:43.967525'),
(46, 'customer', '0003_alter_khachhang_gioitinh', '2023-06-21 20:35:36.041171'),
(47, 'customer', '0004_alter_khachhang_diachi_alter_khachhang_sodienthoai', '2023-06-21 20:36:07.771908'),
(48, 'contact', '0001_initial', '2023-06-22 14:15:25.338487'),
(49, 'cart', '0001_initial', '2023-06-28 11:05:36.772969'),
(50, 'contact', '0002_alter_lienhe_options', '2023-06-28 11:05:36.780061'),
(51, 'cart', '0002_alter_sanphamgiohang_giaban_and_more', '2023-06-28 11:08:30.891913'),
(52, 'cart', '0003_remove_giohang_sanphamgiohang_giohang_giaban_and_more', '2023-06-28 21:50:19.235208'),
(53, 'website', '0015_alter_thongtin_options', '2023-06-28 21:50:19.241947'),
(54, 'cart', '0004_alter_giohang_khachhang', '2023-06-28 21:53:59.803486'),
(55, 'order', '0001_initial', '2023-07-01 11:59:45.837512'),
(56, 'order', '0002_donhang_ghichu_alter_donhang_trangthai', '2023-07-01 16:32:15.711431'),
(57, 'order', '0003_alter_chitietdonhang_giaban_and_more', '2023-07-01 16:42:41.485416'),
(58, 'order', '0004_alter_donhang_trangthai', '2023-07-01 17:03:51.524960'),
(59, 'order', '0005_alter_donhang_trangthai', '2023-07-01 17:04:51.039199'),
(60, 'order', '0006_alter_donhang_trangthai', '2023-07-01 17:06:05.300276'),
(61, 'order', '0007_alter_donhang_trangthai', '2023-07-01 17:08:59.124619'),
(62, 'product', '0008_alter_sanpham_motadai', '2023-07-02 05:05:22.294263'),
(63, 'order', '0008_chitietdonhang_mausac', '2023-09-07 22:58:27.048579');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('but5so1ikrhbv47ar4q06l8o61oceyjn', '.eJxVjDsOwjAQBe_iGln-kdiU9DmDtd5d4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIiBnH63RLgg-sO6A711iS2ui5zkrsiD9rl1Iif18P9OyjQy7f2mJVOjGHIIY-AgZnCSNZYpRUbh0E5dMYTJCTSYHxg8MoB4tl6xeL9AQuhOMI:1qm8Rc:4NzbYG8y_JPRLcLW35fg6jIPfLB217am3_p7j7zdbZY', '2023-10-13 08:01:52.615905'),
('hmss158a2wfntfqswnmuc218nsqfpp2i', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qCLAD:tvX0OPlLeSwRbdu1i7XqPZehzJZfDxFM2YRR3wH7sqA', '2023-07-06 14:19:57.578255'),
('juaab5dpvrd6mt0155wjdmdlexivaz3h', '.eJxVjMsOwiAQRf-FtSHQGV4u3fsNBBiQqoGktCvjv2uTLnR7zzn3xXzY1uq3kRc_EzszZKffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rN0mNCBMBOADpVLA5WYySMJONWiinFDmjtUAbBEoBURZjVNFFKi3Y-wOlkDYv:1qm36n:0EYb2mwWVSDI7ZLR4-4ko1-ufWz5r3Jb9ONt4Igyobk', '2023-10-13 02:20:01.798309'),
('l0h04vvy7o1i1kgzrk55xshndo6ohzrd', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qEDYo:oNTzqN1YCYs8WK2T02sgP20sK5NlUgOUYi0G1ioJe4U', '2023-07-11 18:37:06.094192'),
('pdo4j04kzg1r6v3rheqv5i436vf9py19', '.eJxVjEEOwiAQRe_C2hApyDAu3XuGBoYZqRpISrsy3l2bdKHb_977LzXGdSnj2nkep6zOyqjD75YiPbhuIN9jvTVNrS7zlPSm6J12fW2Zn5fd_TsosZdv7cX6iE4G4zw6ELRRgjcIJwByjJQzITpPg80JExwZkC0EzxKCmKTeH89HN7c:1qeS1f:uDNaHeXwQhBsCpBAeVKaa7Jqgt1RxiPW7oYXvytT3Kg', '2023-09-22 03:19:19.102854'),
('v3le70rpb55fqkv82p9dne2lsj1xqagm', '.eJxVjL0KwzAQg9_FczE-_6dj9zyDOduXOm1xIE6m0ndvDBla0CD0SXqzgPtWwt5oDXNmVwbs8ptFTE-qHeQH1vvC01K3dY68V_hJGx-XTK_b2f07KNhKXxtwgqxUOMhDVqEDYdA6r3AylAG8yqgP44WkONgo9KRIQ3TCRZvY5wvFbzdf:1qFp6g:YGpQCVJMTtmaHfB1CEo-GTuffGasod32je4tmHw28vI', '2023-07-16 04:54:42.516578'),
('ze4o9e0tbrexg73v2mk8s0j0qgtphamu', '.eJxVjMsOwiAQRf-FtSHQGV4u3fsNBBiQqoGktCvjv2uTLnR7zzn3xXzY1uq3kRc_EzszZKffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rN0mNCBMBOADpVLA5WYySMJONWiinFDmjtUAbBEoBURZjVNFFKi3Y-wOlkDYv:1qm57p:gUXsDrQ6-tjD2_MoJ96y4GLDu8dpOBbpkriSVREhaHQ', '2023-10-13 04:29:13.508491'),
('zf4d7i4kwjsrrfp6a24pnp8un4q2tzsy', '.eJxVjMsOwiAQRf-FtSHQGV4u3fsNBBiQqoGktCvjv2uTLnR7zzn3xXzY1uq3kRc_EzszZKffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rN0mNCBMBOADpVLA5WYySMJONWiinFDmjtUAbBEoBURZjVNFFKi3Y-wOlkDYv:1qm3J0:zVYpq_7kmTFfLjNPJSrn79VZnV9djXoZc2ILZthgxMI', '2023-10-13 02:32:38.639319');

-- --------------------------------------------------------

--
-- Table structure for table `news_tintuc`
--

CREATE TABLE `news_tintuc` (
  `id` bigint(20) NOT NULL,
  `TieuDe` varchar(500) NOT NULL,
  `NoiDung` longtext NOT NULL,
  `AnhChinh` varchar(100) NOT NULL,
  `The` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `DuongDan` varchar(550) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_tintuc`
--

INSERT INTO `news_tintuc` (`id`, `TieuDe`, `NoiDung`, `AnhChinh`, `The`, `created_at`, `updated_at`, `DuongDan`) VALUES
(4, 'Các xu hướng thiết kế nội thất đang làm mưa làm gió hiện nay', '<div>\r\n<p><strong>Sử dụng m&agrave;u sắc nổi bật</strong></p>\r\n\r\n<p>Viện m&agrave;u sắc Pantone c&ocirc;ng bố m&agrave;u đỏ t&iacute;a &ldquo;Viva Magenta&rdquo; được chọn l&agrave;m m&agrave;u đại diện cho năm 2023. Đ&acirc;y l&agrave; m&agrave;u sắc tượng trưng cho quyền lực, vẻ đẹp t&aacute;o bạo v&agrave; sự đổi mới. M&agrave;u sắc của năm 2023 truyền cảm hứng cho cộng đồng nội thất s&aacute;ng tạo n&ecirc;n những mẫu thiết kế đẹp mắt.</p>\r\n\r\n<p>B&ecirc;n cạnh m&agrave;u đỏ t&iacute;a, những m&agrave;u sắc nổi bật chẳng hạn như xanh ngọc, v&agrave;ng kim, xanh n&otilde;n chuối cũng trở th&agrave;nh lựa chọn được ưa chuộng trong năm nay. Khi được sử dụng đ&uacute;ng c&aacute;ch, những t&ocirc;ng m&agrave;u n&agrave;y được sử dụng để tạo n&ecirc;n kh&ocirc;ng gian nội thất độc đ&aacute;o.</p>\r\n\r\n<p><img alt=\"7 xu hướng thiết kế nội thất sẽ \'làm mưa làm gió\' năm 2023 - 1\" src=\"https://image.vtcnews.vn/resize/th/upload/2023/01/11/726099-638090547651042726-17260516.png\" style=\"height:371px\" /></p>\r\n\r\n<p>Thiết kế nội thất với m&agrave;u đỏ t&iacute;a trở th&agrave;nh xu hướng năm 2023.</p>\r\n\r\n<p><strong>Phong c&aacute;ch nội thất &ldquo;ho&agrave;i cổ&rdquo;</strong></p>\r\n\r\n<p>Một xu hướng kh&aacute;c đ&oacute; l&agrave; sử dụng những phong c&aacute;ch chẳng hạn như Retro hay Vintage v&agrave;o thiết kế nội thất. Những phong c&aacute;ch n&agrave;y tạo n&ecirc;n kh&ocirc;ng gian sống ho&agrave;i cổ, mang đến &ldquo;điểm nhấn&rdquo; th&uacute; vị cho cuộc sống hiện đại.</p>\r\n\r\n<p>C&aacute;ch hiệu quả nhất để mang vẻ đẹp xưa cũ v&agrave;o kh&ocirc;ng gian sống đ&oacute; l&agrave; sử dụng những m&oacute;n đồ nội thất c&oacute; kiểu d&aacute;ng sang trọng. Nếu muốn tạo n&ecirc;n một thiết kế th&uacute; vị th&igrave; bạn c&oacute; thể lựa chọn những m&oacute;n nội thất c&oacute; m&agrave;u sắc nổi bật. Ch&uacute;ng mang trong m&igrave;nh n&eacute;t thẩm mỹ mang đậm t&iacute;nh &ldquo;ho&agrave;i niệm&rdquo; nhưng vẫn &ldquo;hợp thời&rdquo;.</p>\r\n\r\n<p><img alt=\"7 xu hướng thiết kế nội thất sẽ \'làm mưa làm gió\' năm 2023 - 2\" src=\"https://image.vtcnews.vn/resize/th/upload/2023/01/11/726099-638090547654479542-17260559.png\" style=\"height:451px\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>Phong c&aacute;ch nội thất &ldquo;ho&agrave;i cổ&rdquo; ng&agrave;y c&agrave;ng được lựa chọn nhiều.</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>Gạch k&iacute;nh ng&agrave;y c&agrave;ng được ưa chuộng</strong></p>\r\n\r\n<p>Sử dụng gạch k&iacute;nh l&agrave; một trong những xu hướng thiết kế nội thất 2023 nổi bật nhất. Ch&uacute;ng l&agrave; vật liệu được ph&aacute;t minh v&agrave;o những năm 80 của thế kỷ trước, được ưa chuộng trong thời gian gần đ&acirc;y v&agrave; xuất hiện ng&agrave;y c&agrave;ng nhiều trong những c&ocirc;ng tr&igrave;nh hiện đại.</p>\r\n\r\n<p>Gạch k&iacute;nh được lựa chọn nhiều l&agrave; do đặc t&iacute;nh của ch&uacute;ng. Với khả năng xuy&ecirc;n s&aacute;ng tốt, gạch k&iacute;nh &ldquo;mở ra&rdquo; kh&ocirc;ng gian nội thất s&aacute;ng sủa v&agrave; th&ocirc;ng tho&aacute;ng hơn. Ngo&agrave;i ra, những d&ograve;ng gạch k&iacute;nh mới c&ograve;n c&oacute; khả năng c&aacute;ch &acirc;m, chống nhiệt, chống ch&aacute;y mang đến một c&ocirc;ng tr&igrave;nh an to&agrave;n v&agrave; tiện nghi.</p>\r\n\r\n<p><img alt=\"7 xu hướng thiết kế nội thất sẽ \'làm mưa làm gió\' năm 2023 - 3\" src=\"https://image.vtcnews.vn/resize/th/upload/2023/01/11/726099-638090547659791755-17260607.png\" style=\"height:440px\" /></p>\r\n\r\n<p>Gạch k&iacute;nh c&oacute; xu hướng được d&ugrave;ng nhiều trong c&aacute;c c&ocirc;ng tr&igrave;nh hiện đại.</p>\r\n\r\n<p><strong>Sử dụng nội thất th&acirc;n thiện m&ocirc;i trường</strong></p>\r\n\r\n<p>Năm 2023 được dự đo&aacute;n l&agrave; thời điểm l&ecirc;n ng&ocirc;i của phong c&aacute;ch nội thất Organic. Xu hướng n&agrave;y được thể hiện qua sự tối giản trong c&aacute;ch b&agrave;i tr&iacute; nh&agrave; ở trong thời gian gần đ&acirc;y. Đồng thời, c&aacute;c sản phẩm nội thất được l&agrave;m bằng gỗ t&aacute;i chế cũng được c&aacute;c chủ đầu tư lựa chọn nhiều hơn.</p>\r\n\r\n<p><strong>Những đường cong xuất hiện thường xuy&ecirc;n</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một trong những xu hướng nổi bật trong năm 2023. C&aacute;c kiến tr&uacute;c sư cố gắng đưa những đường cong mềm mại v&agrave;o trong t&aacute;c phẩm của m&igrave;nh để s&aacute;ng tạo n&ecirc;n những kh&ocirc;ng gian kiến tr&uacute;c t&aacute;o bạo. Đường cong thiết kế dần thay thế cho những đường thẳng để tạo điểm nhấn cho những c&ocirc;ng tr&igrave;nh thiết kế hiện đại.</p>\r\n\r\n<p>Xu hướng thiết kế nội thất 2023 n&agrave;y c&ograve;n được thể hiện qua c&aacute;ch lựa chọn nội thất. Như c&aacute;ch Gi&aacute;m đốc Max Depret nhận định: &ldquo;<em>Kiểu thiết kế của những năm 70 đ&atilde; trở lại kh&ocirc;ng chỉ tr&ecirc;n s&agrave;n diễn thời trang m&agrave; c&ograve;n trong ng&agrave;nh nội thất. Bạn sẽ nhận thấy những đường cong xuất hiện ng&agrave;y c&agrave;ng phổ biến từ gương lượn s&oacute;ng, b&agrave;n gỗ cạnh cong đến c&aacute;c &ocirc; cửa v&ograve;m</em>&rdquo;.</p>\r\n\r\n<p><img alt=\"7 xu hướng thiết kế nội thất sẽ \'làm mưa làm gió\' năm 2023 - 4\" src=\"https://image.vtcnews.vn/resize/th/upload/2023/01/11/726099-638090547662292361-17260638.png\" style=\"height:660px\" /></p>\r\n\r\n<p>Kiến tr&uacute;c m&aacute;i v&ograve;m được d&ugrave;ng để tạo điểm nhấn cho kh&ocirc;ng gian.</p>\r\n\r\n<p><iframe id=\"content-inread-video-35344ffc47d54313a5124ce884f72aa7-1695973546928\" sandbox=\"\"></iframe></p>\r\n\r\n<p><strong>Trải thảm kiểu d&aacute;ng độc đ&aacute;o</strong></p>\r\n\r\n<p>C&aacute;c sản phẩm thảm trải s&agrave;n ng&agrave;y c&agrave;ng c&oacute; nhiều thiết kế mới với hoa văn, m&agrave;u sắc v&agrave; kiểu d&aacute;ng độc đ&aacute;o. Sử dụng một tấm thảm bắt mắt đ&atilde; trở th&agrave;nh lựa chọn của nhiều gia đ&igrave;nh để tạo điểm nhấn gi&uacute;p căn nh&agrave; trở n&ecirc;n thu h&uacute;t hơn.</p>\r\n\r\n<p><strong>Thiết kế ph&ograve;ng l&agrave;m việc tại nh&agrave;</strong></p>\r\n\r\n<p>Từ sau khi đại dịch COVID-19 b&ugrave;ng nổ, nhiều người đ&atilde; l&agrave;m quen với phong c&aacute;ch l&agrave;m việc từ xa. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do khiến nhu cầu thiết kế v&agrave; thi c&ocirc;ng ph&ograve;ng l&agrave;m việc tại nh&agrave; tăng cao trong thời gian gần đ&acirc;y.</p>\r\n\r\n<p>Xu hướng thiết kế ph&ograve;ng l&agrave;m việc từ xa sẽ tiếp tục ph&aacute;t triển mạnh mẽ trong năm 2023. Thậm ch&iacute; nhiều người c&ograve;n mong muốn thi c&ocirc;ng b&agrave;n l&agrave;m việc th&ocirc;ng minh ngay trong ph&ograve;ng ngủ. Những chiếc b&agrave;n được t&iacute;ch hợp c&ugrave;ng tủ quần &aacute;o c&oacute; thể &ldquo;giấu&rdquo; đi khi kh&ocirc;ng c&ograve;n nhu cầu sử dụng, gi&uacute;p tiết kiệm kh&ocirc;ng gian sống nhưng vẫn đảm bảo chức năng của căn ph&ograve;ng.</p>\r\n\r\n<p><img alt=\"7 xu hướng thiết kế nội thất sẽ \'làm mưa làm gió\' năm 2023 - 5\" src=\"https://image.vtcnews.vn/resize/th/upload/2023/01/11/726099-638090547665575199-17260667.png\" style=\"height:457px\" /></p>\r\n\r\n<p>C&aacute;c gia chủ ng&agrave;y c&agrave;ng quan t&acirc;m đến việc thiết kế ph&ograve;ng l&agrave;m việc tại nh&agrave;.</p>\r\n</div>', 'uploads/post-1_WlUlLX9.jpg', 'Xuhuong, Decor, Noithat', '2023-06-16 07:57:19.017618', '2023-09-29 07:47:46.365686', 'cac-xu-huong-thiet-ke-noi-that-ang-lam-mua-lam-gio-hien-nay'),
(5, 'BẮT KỊP XU HƯỚNG THIẾT KẾ NỘI THẤT HIỆN ĐẠI CHO NGÔI NHÀ CỦA BẠN', '<p>Thiết kế nội thất - Trong thời đại hiện đại, việc sở hữu một kh&ocirc;ng gian sống đẹp v&agrave; tiện nghi l&agrave; điều được đa số mọi người ưu ti&ecirc;n h&agrave;ng đầu.. Trong b&agrave;i viết n&agrave;y, ch&uacute;ng ta sẽ c&ugrave;ng t&igrave;m hiểu về c&aacute;c yếu tố quan trọng trong thiết kế nội thất hiện đại.</p>\r\n\r\n<h2><strong>1. Thiết kế nội thất tối giản</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://cdn.mediamart.vn/images/Upload/images/mau-noi-that-phong-khach-dep48.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Thiết kế nội thất hiện đại lu&ocirc;n được x&acirc;y dựng dựa tr&ecirc;n nguy&ecirc;n tắc tối giản, tạo ra kh&ocirc;ng gian sống th&ocirc;ng tho&aacute;ng, đơn giản nhưng sang trọng. C&aacute;c vật dụng v&agrave; trang tr&iacute; được chọn lọc cẩn thận để tạo ra sự c&acirc;n đối trong kh&ocirc;ng gian.</p>\r\n\r\n<h2><strong>2. Thiết kế nội thất t&ocirc;ng m&agrave;u trung t&iacute;nh</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://noithatdiemtrang.com/uploads/slider/trang-tri-noi-that-phu-yen-32543434563244.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Trong thiết kế nội thất hiện đại, t&ocirc;ng m&agrave;u trung t&iacute;nh như trắng, đen, x&aacute;m, n&acirc;u, beige,... được ưu ti&ecirc;n sử dụng để tạo ra sự h&agrave;i h&ograve;a v&agrave; thời thượng. M&agrave;u sắc được &aacute;p dụng hợp l&yacute; tr&ecirc;n c&aacute;c vật dụng, tường, s&agrave;n nh&agrave;, tủ kệ,... để tạo ra một kh&ocirc;ng gian sống đẹp mắt.</p>\r\n\r\n<h2><strong>3. Sử dụng đồ nội thất hiện đại</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://athenacompany.com.vn/wp-content/uploads/2020/03/luu-y-khi-hoan-thien-noi-that.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Đồ nội thất hiện đại c&oacute; thiết kế đơn giản, tinh tế, ch&uacute; trọng đến t&iacute;nh thực dụng v&agrave; tiện nghi. Bạn c&oacute; thể sử dụng c&aacute;c sản phẩm từ c&aacute;c thương hiệu nổi tiếng trong ng&agrave;nh nội thất hiện đại như IKEA, Mobilia, Boconcept,... để tạo ra kh&ocirc;ng gian sống đẹp v&agrave; tiện nghi.</p>\r\n\r\n<h2><strong>4. &Aacute;nh s&aacute;ng tự nhi&ecirc;n v&agrave; điện</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://thietkethicongdn.com/wp-content/uploads/2019/04/C%C3%A1ch-b%E1%BB%91-tr%C3%AD-%C4%91%C3%A8n-chi%E1%BA%BFu-s%C3%A1ng-cho-ph%C3%B2ng-ng%E1%BB%A7-h%E1%BB%A3p-l%C3%BD-v%C3%A0-t%E1%BB%91t-cho-s%E1%BB%A9c-kh%E1%BB%8Fe6.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>&Aacute;nh s&aacute;ng l&agrave; yếu tố quan trọng trong thiết kế nội thất hiện đại. Thiết kế tối giản y&ecirc;u cầu sử dụng &aacute;nh s&aacute;ng tự nhi&ecirc;n, tạo ra sự giao thoa giữa b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i, gi&uacute;p cho kh&ocirc;ng gian sống trở n&ecirc;n tho&aacute;ng đ&atilde;ng hơn. Đồng thời, &aacute;nh s&aacute;ng điện cũng được sử dụng một c&aacute;ch hợp l&yacute; để tạo ra kh&ocirc;ng gian sống đẹp mắt, ấm &aacute;p v&agrave; tiện nghi.</p>\r\n\r\n<h2><strong>5. C&aacute;c vật dụng trang tr&iacute;</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://angcovat.vn/imagesdata/TIN309018/cac-mau-trang-tri-phong-khach-dep-voi-sach.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Trong thiết kế nội thất hiện đại, c&aacute;c vật dụng trang tr&iacute; được chọn lọc cẩn thận để tạo ra sự c&acirc;n đối v&agrave; thẩm mỹ trong kh&ocirc;ng gian sống. Điều quan trọng l&agrave; phải chọn c&aacute;c vật dụng trang tr&iacute; ph&ugrave; hợp với kiểu d&aacute;ng của kh&ocirc;ng gian sống v&agrave; tr&aacute;nh việc qu&aacute; tải.</p>\r\n\r\n<h2><strong>6. Kết hợp vật liệu</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://storage.googleapis.com/pai-images/dc890237697345cdafa926d6e158ed8e.jpeg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Kết hợp c&aacute;c loại vật liệu kh&aacute;c nhau như gỗ, kim loại, thủy tinh,... l&agrave; một trong những yếu tố quan trọng tạo n&ecirc;n sự đa dạng v&agrave; th&uacute; vị trong thiết kế nội thất hiện đại.</p>\r\n\r\n<p>Sự h&agrave;i h&ograve;a giữa c&aacute;c vật liệu kh&aacute;c nhau sẽ tạo ra một kh&ocirc;ng gian sống độc đ&aacute;o v&agrave; ấn tượng. V&iacute; dụ, bạn c&oacute; thể kết hợp ghế sofa da v&agrave; b&agrave;n c&agrave; ph&ecirc; bằng gỗ để tạo ra sự c&acirc;n đối trong ph&ograve;ng kh&aacute;ch.</p>\r\n\r\n<h2><strong>7. Thiết kế nội thất mở</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://nhadat24h.net/duan/images/7187/3121/thiet-ke-can-ho-tai-florence-my-dinh.jpg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Thiết kế mở l&agrave; xu hướng được ưa chuộng trong thiết kế nội thất hiện đại. Theo đ&oacute;, c&aacute;c kh&ocirc;ng gian sống được kết nối với nhau để tạo ra sự tho&aacute;ng đ&atilde;ng v&agrave; th&ocirc;ng tho&aacute;ng. Điều n&agrave;y cũng gi&uacute;p cho ng&ocirc;i nh&agrave; trở n&ecirc;n rộng r&atilde;i hơn.</p>\r\n\r\n<h2><strong>8. Thiết kế nội thất tạo điểm nhấn&nbsp;</strong></h2>\r\n\r\n<p><img alt=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" src=\"https://thearchitecturedesigns.com/wp-content/uploads/2022/09/Enhance-the-Homes-Interior-4.jpeg\" title=\"Bắt kịp xu hướng thiết kế nội thất hiện đại cho ngôi nhà của bạn\" /></p>\r\n\r\n<p>Bạn c&oacute; thể sử dụng c&aacute;c vật dụng trang tr&iacute; đặc biệt hoặc tường ốp đ&aacute;, gỗ,... để tạo ra sự kh&aacute;c biệt v&agrave; thu h&uacute;t.</p>', 'uploads/post-3_K2m8RpH_Dp6iXAL.jpg', 'Decor, Noithat', '2023-06-16 07:59:05.342955', '2023-09-29 07:43:39.812883', 'bat-kip-xu-huong-thiet-ke-noi-that-hien-ai-cho-ngoi-nha-cua-ban'),
(6, 'Những kiểu trang trí phòng khách ĐẸP mà vô cùng HIỆN ĐẠI', '<h2>1. Những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ, diện t&iacute;ch hẹp</h2>\r\n\r\n<p>Với đặc điểm kh&ocirc;ng gian nhỏ, hẹp, c&aacute;c ph&ograve;ng kh&aacute;ch n&agrave;y cần c&oacute; sự b&agrave;i tr&iacute; đơn giản để tr&aacute;nh đem lại cảm gi&aacute;c chật chội. Những mẫu nội thất cũng n&ecirc;n gắn với c&aacute;c họa tiết tối giản.<br />\r\n<br />\r\nTh&ecirc;m v&agrave;o đ&oacute;, gia chủ cũng kh&ocirc;ng n&ecirc;n d&ugrave;ng t&ocirc;ng m&agrave;u tối sẽ c&agrave;ng l&agrave;m hẹp kh&ocirc;ng gian. Dưới đ&acirc;y l&agrave; một số kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch th&iacute;ch hợp d&agrave;nh cho kh&ocirc;ng gian nhỏ:<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Trang trí phòng khách có diện tích hẹp theo phong cách hiện đại\" src=\"https://noithattrevietnam.com/uploaded/1_1.jpg\" /></p>\r\n\r\n<p><em>Trang tr&iacute; ph&ograve;ng kh&aacute;ch c&oacute; diện t&iacute;ch hẹp theo phong c&aacute;ch hiện đại</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Phòng khách có các chi tiết đơn giản tiết kiệm không gian\" src=\"https://noithattrevietnam.com/uploaded/1_2.jpg\" /></p>\r\n\r\n<p><em>Ph&ograve;ng kh&aacute;ch c&oacute; c&aacute;c chi tiết đơn giản tiết kiệm kh&ocirc;ng gian</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Màu sắc hài hòa tổng quan cho cả căn nhà\" src=\"https://noithattrevietnam.com/uploaded/1_3.jpg\" /></p>\r\n\r\n<p><em>M&agrave;u sắc h&agrave;i h&ograve;a tổng quan cho cả căn nh&agrave;</em></p>\r\n\r\n<h2>2. Trang tr&iacute; ph&ograve;ng kh&aacute;ch nh&agrave; ống</h2>\r\n\r\n<p><img alt=\"Nội thất cho phòng khách nhà ống nên đơn giản để tiết kiệm không gian\" src=\"https://noithattrevietnam.com/uploaded/2_1.jpg\" /></p>\r\n\r\n<p><em>Nội thất cho ph&ograve;ng kh&aacute;ch nh&agrave; ống n&ecirc;n đơn giản để tiết kiệm kh&ocirc;ng gian</em></p>\r\n\r\n<p><br />\r\nĐặc t&iacute;nh của nh&agrave; ống l&agrave; hẹp chiều ngang v&agrave; d&agrave;i. Do đ&oacute;, c&agrave;ng đi s&acirc;u v&agrave;o trong sẽ c&agrave;ng k&eacute;m tho&aacute;ng đ&atilde;ng. V&igrave; vậy, nếu c&oacute; điều kiện, bạn c&oacute; thể đặt th&ecirc;m c&acirc;y xanh hoặc tiểu cảnh cho ph&ograve;ng kh&aacute;ch. Kiểu trang tr&iacute; n&agrave;y vừa tăng th&ecirc;m kh&ocirc;ng gian xanh m&agrave; gi&uacute;p ph&ograve;ng kh&aacute;ch th&ecirc;m dễ chịu.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Chọn tông màu sáng để phòng khách thoáng hơn\" src=\"https://noithattrevietnam.com/uploaded/2_2.jpg\" /></p>\r\n\r\n<p><em>Chọn t&ocirc;ng m&agrave;u s&aacute;ng để ph&ograve;ng kh&aacute;ch tho&aacute;ng hơn</em></p>\r\n\r\n<p><br />\r\nNgo&agrave;i ra, nh&agrave; ống thường hẹp v&agrave; nhiều g&oacute;c n&ecirc;n bạn n&ecirc;n tận dụng nội thất cho những g&oacute;c cạnh n&agrave;y. C&aacute;c g&oacute;c nh&agrave; n&agrave;y bạn c&oacute; thể đặt th&ecirc;m kệ hoặc c&acirc;y xanh.&nbsp;<br />\r\n<br />\r\nVới nội thất, bạn n&ecirc;n chọn những nội thất c&oacute; k&iacute;ch thước nhỏ, gọn, &iacute;t chi tiết tạo sự gần gũi, ấm &aacute;p cho căn ph&ograve;ng.&nbsp;<br />\r\n<br />\r\nVề m&agrave;u sắc cho những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch nh&agrave; ống thường chọn t&ocirc;ng m&agrave;u nhẹ nh&agrave;ng. &nbsp;C&aacute;c m&agrave;u sắc dịu d&agrave;ng &iacute;t tương phản đem đến sự dễ chịu, thư th&aacute;i.&nbsp;<br />\r\n<br />\r\n<em>&gt;&gt; Bạn n&ecirc;n xem ngay tr&ecirc;n&nbsp;</em><em>12&nbsp;<a href=\"https://noithattrevietnam.com/cong-trinh-noi-that-phong-khach/\">c&ocirc;ng tr&igrave;nh thiết kế nội thất ph&ograve;ng kh&aacute;ch</a>&nbsp;đẹp - hiện đại như MƠ m&agrave; Nội Thất Trẻ đ&atilde; thực hiện để tham khảo nh&eacute;.</em></p>\r\n\r\n<h2>3. Những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch c&oacute; cầu thang</h2>\r\n\r\n<p>Hiện nay rất nhiều nh&agrave; c&oacute; cầu thang gắn liền với ph&ograve;ng kh&aacute;ch. Nếu biết c&aacute;ch trang tr&iacute;, sắp xếp bạn c&oacute; thể tạo n&eacute;t ấn tượng cho ph&ograve;ng kh&aacute;ch của gia đ&igrave;nh. Một số kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch bạn c&oacute; thể tham khảo dưới đ&acirc;y:<br />\r\n<br />\r\nBạn c&oacute; thể d&ugrave;ng v&aacute;ch ngăn bằng gỗ để ngăn c&aacute;ch với cầu thang. T&ugrave;y từng ng&ocirc;i nh&agrave; m&agrave; bạn chọn bức ngăn ph&ugrave; hợp như kệ s&aacute;ch, tủ trang tr&iacute;. C&oacute; v&aacute;ch ngăn sẽ gi&uacute;p ph&ograve;ng kh&aacute;ch vu&ocirc;ng hơn v&agrave; đảm bảo độ k&iacute;n đ&aacute;o cho gia đ&igrave;nh.&nbsp;<br />\r\n<br />\r\nNội thất n&ecirc;n t&ocirc;ng hợp t&ocirc;ng với cầu thang để c&oacute; sự phối m&agrave;u ho&agrave;n hảo. Bạn n&ecirc;n chọn m&agrave;u nội thất c&ugrave;ng với m&agrave;u sắc, chất liệu gỗ của cầu thang.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Màu sắc nội thất phòng khách nên cùng tông với thời gian\" src=\"https://noithattrevietnam.com/uploaded/3_1.jpg\" /></p>\r\n\r\n<p><em>M&agrave;u sắc nội thất ph&ograve;ng kh&aacute;ch n&ecirc;n c&ugrave;ng t&ocirc;ng với thời gian</em></p>\r\n\r\n<p><br />\r\nMột &yacute; tưởng nữa bạn c&oacute; thể tận dụng cầu thang trở th&agrave;nh tủ s&aacute;ch của gia đ&igrave;nh. Điều n&agrave;y vừa gi&uacute;p tối ưu diện t&iacute;ch m&agrave; vẫn đảm bảo mỹ quan cho ph&ograve;ng kh&aacute;ch.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Tận dụng giá sách ngay ở cầu thang\" src=\"https://noithattrevietnam.com/uploaded/3_2.jpg\" /></p>\r\n\r\n<p><em>Tận dụng gi&aacute; s&aacute;ch ngay ở cầu thang</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Cách bài trí phòng khách phù hợp khi có cầu thang\" src=\"https://noithattrevietnam.com/uploaded/3_3.jpg\" /></p>\r\n\r\n<p><em>C&aacute;ch b&agrave;i tr&iacute; ph&ograve;ng kh&aacute;ch ph&ugrave; hợp khi c&oacute; cầu thang</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Bạn nên trang trí các họa tiết đơn giản cho phòng khách\" src=\"https://noithattrevietnam.com/uploaded/3_4.jpg\" /></p>\r\n\r\n<p><em>Bạn n&ecirc;n trang tr&iacute; c&aacute;c họa tiết đơn giản cho ph&ograve;ng kh&aacute;ch</em></p>\r\n\r\n<h2>4. Kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch đơn giản,&nbsp;hiện đại</h2>\r\n\r\n<p><img alt=\"Nội thất theo khối vuông tạo nét hiện đại\" src=\"https://noithattrevietnam.com/uploaded/4_1.jpg\" /></p>\r\n\r\n<p><em>Nội thất theo khối vu&ocirc;ng tạo n&eacute;t hiện đại</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Màu sắc tươi sáng góp phần tạo cho phòng khách hiện đại hơn\" src=\"https://noithattrevietnam.com/uploaded/4_2.jpg\" /></p>\r\n\r\n<p><em>M&agrave;u sắc tươi s&aacute;ng g&oacute;p phần tạo cho ph&ograve;ng kh&aacute;ch hiện đại hơn</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Tận dụng thiên nhiên cho phòng khách\" src=\"https://noithattrevietnam.com/uploaded/4_3.jpg\" /></p>\r\n\r\n<p><em>Tận dụng thi&ecirc;n nhi&ecirc;n cho ph&ograve;ng kh&aacute;ch</em></p>\r\n\r\n<p><br />\r\nHiện nay c&aacute;c nh&agrave; chung cư hoặc biệt thự thường c&oacute; xu hướng chọn những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch hiện đại, trang nh&atilde;. V&igrave; vậy, bạn c&oacute; thể sử dụng nội thất v&agrave; trang tr&iacute; theo khối vu&ocirc;ng đem lại sự kho&aacute;ng đạt, rộng r&atilde;i nhưng vẫn hiện đại cho ph&ograve;ng kh&aacute;ch.<br />\r\n<br />\r\nVới c&aacute;c căn hộ chung cư, bạn c&oacute; thể sử dụng ghế sofa đi k&egrave;m với b&agrave;n k&iacute;nh. Bạn n&ecirc;n hạn chế nội thất bằng gỗ theo kiểu d&aacute;ng cũ sẽ kh&oacute; l&agrave;m nổi bật sự hiện đại cho ph&ograve;ng kh&aacute;ch. Ngo&agrave;i ra c&aacute;c t&ocirc;ng m&agrave;u s&aacute;ng, tươi trẻ cũng n&ecirc;n được ưu ti&ecirc;n hơn.&nbsp;</p>\r\n\r\n<h2>5. Ứng dụng phong thủy cho những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch đẹp m&agrave; rẻ</h2>\r\n\r\n<p>Trong phong thủy, ph&ograve;ng kh&aacute;ch được xem như nơi thu h&uacute;t t&agrave;i lộc. V&igrave; thế, khi trang tr&iacute; văn ph&ograve;ng n&ecirc;n lưu &yacute;. Bạn n&ecirc;n sử dụng nội thất vu&ocirc;ng vắn để đem lại cho gia chủ sự thoải m&aacute;i.<br />\r\n<br />\r\nGia chủ cũng cần sắp xếp b&agrave;n ghế sao cho đều quay mặt ra cửa nhưng kh&ocirc;ng được đối diện cửa ra v&agrave;o. Ph&ograve;ng kh&aacute;ch n&ecirc;n được giữ sạch sẽ tạo sự thoải m&aacute;i cho người ở.<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Phòng khách nhiều màu sắc nhưng vẫn hài hòa\" src=\"https://noithattrevietnam.com/uploaded/5_1.jpeg\" /></p>\r\n\r\n<p><em>Ph&ograve;ng kh&aacute;ch nhiều m&agrave;u sắc nhưng vẫn h&agrave;i h&ograve;a</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Phòng khách tận dụng tối đa không gian với thiên nhiên\" src=\"https://noithattrevietnam.com/uploaded/5_2.jpg\" /></p>\r\n\r\n<p><em>Ph&ograve;ng kh&aacute;ch tận dụng tối đa kh&ocirc;ng gian với thi&ecirc;n nhi&ecirc;n</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Ứng dụng phong thủy cho phòng khách]\" src=\"https://noithattrevietnam.com/uploaded/5_3.jpg\" /></p>\r\n\r\n<p><em>Ứng dụng phong thủy cho ph&ograve;ng kh&aacute;ch</em></p>\r\n\r\n<p><br />\r\nViệc chọn được những kiểu trang tr&iacute; ph&ograve;ng kh&aacute;ch đẹp gi&uacute;p bạn r&uacute;t ngắn thời gian l&ecirc;n kế hoạch cho căn nh&agrave;. Th&ecirc;m v&agrave;o đ&oacute;, ph&ograve;ng kh&aacute;ch đẹp hợp phong thủy c&ograve;n đem lại sự thoải m&aacute;i v&agrave; lộc cho gia chủ.</p>', 'uploads/61MIEQljhgL._AC_SX679__3eZV4RA_pPRqb9s.jpg', 'Tips, Noithat,Decor', '2023-06-16 08:01:13.398159', '2023-09-29 07:40:08.262573', 'nhung-kieu-trang-tri-phong-khach-ep-ma-vo-cung-hien-ai'),
(7, 'Trang trí phòng khách nhỏ: Sai lầm và cách khắc phục', '<p>Ph&ograve;ng kh&aacute;ch lu&ocirc;n l&agrave; &ldquo;tr&aacute;i tim&rdquo; của căn nh&agrave;, nơi để tiếp kh&aacute;ch, nơi để gia đ&igrave;nh qu&acirc;y quần v&agrave; cũng l&agrave; nơi thể hiện phong c&aacute;ch, guu thẩm mỹ của chủ nh&agrave;. V&igrave; vậy, việc&nbsp;<strong>trang tr&iacute; ph&ograve;ng kh&aacute;ch</strong>&nbsp;<strong>nhỏ</strong>&nbsp;lu&ocirc;n được ch&uacute; trọng, d&agrave;nh nhiều t&acirc;m huyết.</p>\r\n\r\n<p>L&agrave;m thế n&agrave;o để trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ vừa đẹp, tiện nghi lại vừa thoải m&aacute;i cho sinh hoạt của gia đ&igrave;nh l&agrave; c&acirc;u hỏi được nhiều người quan t&acirc;m.</p>\r\n\r\n<p>Trước khi bắt tay v&agrave;o trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ, bạn h&atilde;y xem những sai lầm phổ biến khi trang tr&iacute; ph&ograve;ng kh&aacute;ch để tiết kiệm thời gian, c&ocirc;ng sức v&agrave; chi ph&iacute; nh&eacute;.</p>\r\n\r\n<h2><strong>Sai lầm phổ biến khi trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ</strong></h2>\r\n\r\n<p>Khi thiết kế ph&ograve;ng kh&aacute;ch, đặc biệt l&agrave; trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ, bạn phải l&ecirc;n kế hoạch sử dụng đồ đạc thật cụ thể để kh&ocirc;ng gian kh&ocirc;ng bị rối rắm. Dưới đ&acirc;y l&agrave; những sai lầm khi trang tr&iacute; ph&ograve;ng kh&aacute;ch đơn giản.</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_1\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_1.jpg\" style=\"height:624px; width:960px\" /></p>\r\n\r\n<h3><strong>Lạm dụng qu&aacute; nhiều đồ nội thất</strong></h3>\r\n\r\n<p>Khi c&oacute; qu&aacute; nhiều đồ nội thất, ph&ograve;ng kh&aacute;ch của bạn rất dễ trở th&agrave;nh một đống hổ lốn v&agrave; kh&ocirc;ng theo một phong c&aacute;ch n&agrave;o cả. Bạn sẽ lu&ocirc;n cảm thấy ngột ngạt, chật chội khi bước v&agrave;o căn ph&ograve;ng.</p>\r\n\r\n<p>H&atilde;y n&ecirc;n nhớ, ph&ograve;ng kh&aacute;ch l&agrave; nơi đ&oacute;n tiếp kh&aacute;ch đến nh&agrave; v&agrave; cũng l&agrave; kh&ocirc;ng gian sinh hoạt chung, ch&iacute;nh v&igrave; vậy ph&ograve;ng kh&aacute;ch phải thật rộng r&atilde;i, đồ đạc phải sắp xếp thật hợp l&yacute; để tạo ra cảm gi&aacute;c dễ chịu, thoải m&aacute;i. Vậy, h&atilde;y học c&aacute;ch tiết chế, chọn lọc khi thiết kế, trước ti&ecirc;n l&agrave; x&aacute;c định theo một phong c&aacute;ch độc nhất cho cả kh&ocirc;ng gian căn ph&ograve;ng.</p>\r\n\r\n<h3><strong>Kh&ocirc;ng lập kế hoạch</strong></h3>\r\n\r\n<p>Khi trang tr&iacute; nh&agrave;, bạn rất dễ bị cuốn đi với m&agrave;u sắc, đồ đạc, v&igrave; vậy nếu kh&ocirc;ng c&oacute; một kế hoạch cụ thể khi trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ th&igrave; bạn sẽ chẳng biết xếp đồ n&agrave;o v&agrave;o đ&acirc;u cho hợp l&yacute;. Mặt kh&aacute;c, việc mua qu&aacute; nhiều đồ khi kh&ocirc;ng c&oacute; kế hoạch sẽ rất tốn k&eacute;m v&agrave; l&atilde;ng ph&iacute;.</p>\r\n\r\n<h3><strong>Thiếu linh hoạt</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; kh&ocirc;ng gian được sử dụng h&agrave;ng ng&agrave;y n&ecirc;n rất cần t&iacute;nh linh hoạt trong thiết kế để mang đến sự thoải m&aacute;i v&agrave; tiện dụng. Đừng qu&ecirc;n đến t&iacute;nh khả năng di chuyển của mỗi m&oacute;n đồ khi bạn lựa chọn ch&uacute;ng.</p>\r\n\r\n<h3><strong>Sai k&iacute;ch thước</strong></h3>\r\n\r\n<p>60 cm l&agrave; k&iacute;ch thước tối thiếu của lối di chuyển trong ph&ograve;ng kh&aacute;ch. Ch&iacute;nh v&igrave; vậy, bạn h&atilde;y sắp xếp v&agrave; lựa chọn những m&oacute;n đồ nội thất trong ph&ograve;ng kh&aacute;ch thật hợp l&yacute;. Thực tế th&igrave; bạn sẽ lựa chọn những m&oacute;n đồ nội thất qu&aacute; cỡ với căn ph&ograve;ng, hoặc lựa chọn m&oacute;n đồ lọt thỏm giữa kh&ocirc;ng gian rộng r&atilde;i của ph&ograve;ng kh&aacute;ch. Những m&oacute;n đồ phụ kiện nhỏ nhưng khi được sử dụng qu&aacute; nhiều sinh ra cảm gi&aacute;c lộn xộn v&agrave; bừa b&atilde;i cho gian ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n\r\n<h3><strong>Chạy theo xu hướng</strong></h3>\r\n\r\n<p>Đ&acirc;y l&agrave; lỗi rất phổ biến m&agrave; nhiều người khi trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ đ&atilde; từng mắc. Khi bạn cứ mải chạy theo xu hướng m&agrave; kh&ocirc;ng để &yacute; đến việc căn ph&ograve;ng của m&igrave;nh c&oacute; hợp với xu hướng đ&oacute; hay kh&ocirc;ng. Bạn sẽ lu&ocirc;n chạy theo xu hướng sao? Tất nhi&ecirc;n, đ&oacute; cũng l&agrave; một &yacute; tưởng, song lại lấy đi của bạn kh&aacute; nhiều c&ocirc;ng sức v&agrave; chi ph&iacute;. Để tr&aacute;nh việc n&agrave;y, bạn n&ecirc;n lựa chọn một phong c&aacute;ch y&ecirc;u th&iacute;ch nhất, ph&ugrave; hợp với bạn nhất, một phong c&aacute;ch c&oacute; thể gắn b&oacute; với bạn suốt một thời gian d&agrave;i.</p>\r\n\r\n<h2><strong>B&iacute; quyết để trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ ấn tượng</strong></h2>\r\n\r\n<p>Việc trang tr&iacute; ph&ograve;ng kh&aacute;ch diện t&iacute;ch nhỏ cũng tương tự như trang tr&iacute; ph&ograve;ng kh&aacute;ch c&oacute; diện t&iacute;ch lớn hay trung b&igrave;nh, quan trọng l&agrave; bạn phải bố tr&iacute; được kh&ocirc;ng gian ph&ugrave; hợp cho căn ph&ograve;ng m&agrave; kh&ocirc;ng mất đi t&iacute;nh tiện &iacute;ch.</p>\r\n\r\n<p>H&atilde;y tham khảo một số mẫu trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ, trang tr&iacute; ph&ograve;ng kh&aacute;ch đơn giản ấn tượng nhất:</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_8\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_8.jpg\" style=\"height:621px; width:960px\" /></p>\r\n\r\n<p>Tận dụng những m&agrave;u sắc nổi bật khiến căn ph&ograve;ng ấn tượng hơn.</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_7\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_7.jpg\" style=\"height:789px; width:960px\" /></p>\r\n\r\n<p>Hoặc chỉ cần sử dụng những m&agrave;u đơn sắc với sự sắp xếp hợp l&yacute; cũng khiến &quot;căn ph&ograve;ng nhỏ m&agrave; h&oacute;a rộng&quot;.</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_5\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_5.jpg\" style=\"height:640px; width:960px\" /></p>\r\n\r\n<p>Trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ 15m2 với số lượng đồ nội thất vừa phải c&ugrave;ng sử dụng gam m&agrave;u tươi s&aacute;ng gi&uacute;p căn ph&ograve;ng tho&aacute;ng, rộng r&atilde;i hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_4\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_4.jpg\" style=\"height:763px; width:960px\" /></p>\r\n\r\n<p>Một gợi &yacute; th&uacute; vị khi thiết kế ph&ograve;ng kh&aacute;ch nhỏ 10m2 chỉ đơn giản với sofa, b&agrave;n, thảm v&agrave; tranh treo tường.</p>\r\n\r\n<p><img alt=\"trang_tri_PK_nho_2\" src=\"https://images.cenhomes.vn/2019/06/trang_tri_PK_nho_2.jpg\" style=\"height:639px; width:960px\" /></p>\r\n\r\n<p>Kh&ocirc;ng gian nhẹ nh&agrave;ng với tone m&agrave;u be của đồ nội thất mang đến kh&ocirc;ng gian thoải m&aacute;i.</p>\r\n\r\n<p>Hy vọng với những gợi &yacute; tr&ecirc;n đ&acirc;y sẽ gi&uacute;p bạn&nbsp;<strong>trang tr&iacute; ph&ograve;ng kh&aacute;ch nhỏ</strong>&nbsp;thật ấn tượng v&agrave; tiện nghi.</p>', 'uploads/img-grid-1_2ERpSnP_3PUscYv.jpg', 'Tips', '2023-06-16 08:03:18.569906', '2023-09-29 07:37:23.124650', 'trang-tri-phong-khach-nho-sai-lam-va-cach-khac-phuc'),
(8, 'Căn hộ màu nâu cam đất xinh mê với chi phí nội thất hợp lý', '<p>Son th&igrave; c&oacute; son cam đất v&agrave; căn hộ cũng c&oacute; căn hộ m&agrave;u cam đất lu&ocirc;n nha. Tất nhi&ecirc;n, đ&acirc;y l&agrave; t&ocirc;ng m&agrave;u trendy, hiện đại, lạ lạ, hay hay, khiến ng&ocirc;i nh&agrave; c&oacute; m&agrave;u sắc mới mẻ chứ kh&ocirc;ng đi theo lối m&ograve;n, kh&ocirc;ng giống như &quot;một khu&ocirc;n đ&uacute;c ra&quot; với những căn nh&agrave; kh&aacute;c. &Yacute; tưởng sử dụng m&agrave;u sắc bắt mắt n&agrave;y đến từ một căn hộ ở Nha Trang. L&yacute; do chọn m&agrave;u cam đất l&agrave; v&igrave; đ&acirc;y l&agrave; t&ocirc;ng m&agrave;u nổi bật, thu h&uacute;t, tạo cảm gi&aacute;c sinh động, hợp với trẻ con. Tất nhi&ecirc;n, để căn nh&agrave; th&ecirc;m tinh tế th&igrave; gia chủ cũng kh&eacute;o chọn th&ecirc;m m&agrave;u n&acirc;u, trắng để bổ trợ, mang đến visual h&agrave;i ho&agrave;, xinh xắn cho tổ ấm ri&ecirc;ng.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/dsc7341-hdr-16140709672272095809984.jpg\" rel=\"lightbox\" title=\"DSC_7341-HDR\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/dsc7341-hdr-16140709672272095809984.jpg\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40657-ch-16140714383351629171712.png\" rel=\"lightbox\" title=\"Ảnh chụp Màn hình 2021-02-23 lúc 4.06.57 CH\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40657-ch-16140714383351629171712.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40846-ch-1614071438634862753522.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40846-ch-1614071438634862753522.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40538-ch-1614071437668481940115.png\" rel=\"lightbox\" title=\"Ảnh chụp Màn hình 2021-02-23 lúc 4.05.38 CH\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40538-ch-1614071437668481940115.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 1.\" /></a></p>\r\n\r\n<p>Căn hộ rộng 78m2 gồm ph&ograve;ng kh&aacute;ch, ph&ograve;ng bếp, ph&ograve;ng ngủ, ph&ograve;ng chơi đ&ugrave;a của trẻ con. Nơi n&agrave;y cũng c&oacute; view rất đẹp từ tr&ecirc;n cao, tăng cảm gi&aacute;c chill cho c&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh. Ng&ocirc;i nh&agrave; được decor theo xu hướng hiện đại, tuy nhi&ecirc;n c&oacute; th&ecirc;m hơi hướng Nhật Bản n&ecirc;n nội thất cũng được chọn lựa theo style tối giản, kh&ocirc;ng cầu k&igrave;. Ph&ograve;ng kh&aacute;ch c&oacute; phong c&aacute;ch thiền n&ecirc;n hợp để nghỉ ngơi, uống tr&agrave;, đọc s&aacute;ch.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40520-ch-16140714376621546976301.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40520-ch-16140714376621546976301.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40816-ch-16140714383531123338844.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40816-ch-16140714383531123338844.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40955-ch-16140714390751045661365.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40955-ch-16140714390751045661365.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" /></a></p>\r\n\r\n<p><iframe id=\"adnzone_sponsor_516398\" sandbox=\"\" scrolling=\"no\"></iframe></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-45436-ch-1614074085427441580677.png\" target=\"_blank\" title=\"Căn hộ nâu cam đất xịn xò cũng thiết kế theo không gian mở, giúp nhà cửa rộng thoáng hơn vài phần. Từ phòng khách có thể nhìn sang bếp, bàn ăn\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 3.\" id=\"img_288610450334371840\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-45436-ch-1614074085427441580677.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 3.\" /></a></p>\r\n\r\n<p>Căn hộ n&acirc;u cam đất xịn x&ograve; cũng thiết kế theo kh&ocirc;ng gian mở, gi&uacute;p nh&agrave; cửa rộng tho&aacute;ng hơn v&agrave;i phần. Từ ph&ograve;ng kh&aacute;ch c&oacute; thể nh&igrave;n sang bếp, b&agrave;n ăn</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; chọn t&ocirc;ng cam đất chủ đạo n&ecirc;n c&aacute;c chi tiết decor trong nh&agrave; cũng c&oacute; sự &quot;ăn rơ&quot; về m&agrave;u sắc để tổng thể kh&ocirc;ng bị lệch t&ocirc;ng. Điểm đ&aacute;ng khen l&agrave; ng&ocirc;i nh&agrave; cho cảm gi&aacute;c thoải m&aacute;i, vừa hiện đại, vừa ho&agrave;i cổ, truyền thống. B&ecirc;n cạnh nội thất, những chi tiết decor như cửa sổ h&igrave;nh v&ograve;m, h&igrave;nh vẽ tr&ograve;n sơn tr&ecirc;n tường cũng tạo cho căn hộ n&eacute;t mềm mại, duy&ecirc;n d&aacute;ng rất ri&ecirc;ng. Được biết, gi&aacute; mua nh&agrave; th&ocirc; l&agrave; 1,3 tỷ đồng. Sau đ&oacute;, gia chủ đ&atilde; cải tạo lại bằng c&aacute;ch ph&aacute; phần x&acirc;y tường, sơn lại tường trần v&agrave; decor nội thất. Tổng chi ph&iacute; tr&ecirc;n l&agrave; 250 triệu.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-41004-ch-161407143908968340038.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-41004-ch-161407143908968340038.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40740-ch-1614071438346361468809.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40740-ch-1614071438346361468809.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-41017-ch-1614071439342662102965.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-41017-ch-1614071439342662102965.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 4.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40448-ch-16140714374371457002095.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40448-ch-16140714374371457002095.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40633-ch-1614071438099982455310.png\" rel=\"lightbox\" title=\"Ảnh chụp Màn hình 2021-02-23 lúc 4.06.33 CH\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40633-ch-1614071438099982455310.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/dsc7427-16140709672771113951698.jpg\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/dsc7427-16140709672771113951698.jpg\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 5.\" /></a></p>\r\n\r\n<p>Kh&ocirc;ng chỉ c&oacute; m&agrave;u sắc hay ho, căn hộ c&ograve;n g&acirc;y ấn tượng với ph&ograve;ng chơi đ&ugrave;a của trẻ con với hệ tường leo n&uacute;i. C&aacute;c chi tiết trong ph&ograve;ng đều được thiết kế an to&agrave;n như hệ tủ kệ được xử l&yacute; bo cong.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40923-ch-1614071438650422118384.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 6.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40923-ch-1614071438650422118384.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 6.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40947-ch-16140714386621251559483.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 6.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40947-ch-16140714386621251559483.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 6.\" /></a></p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40955-ch-16140714390751045661365.png\" rel=\"lightbox\" title=\"\"><img alt=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" src=\"https://kenh14cdn.com/thumb_w/660/203336854389633024/2021/2/23/anh-chup-man-hinh-2021-02-23-luc-40955-ch-16140714390751045661365.png\" title=\"Căn hộ màu nâu cam đất xinh mê tơi: Phòng khách decor kiểu Nhật, chi phí nội thất hợp lý không ngờ - Ảnh 2.\" /></a></p>', 'uploads/81v9GSMRfWL._AC_SX679__33yolAn_jHoNBXD.jpg', 'Thietke, Noithat', '2023-06-16 08:03:59.520532', '2023-09-29 07:34:04.328415', 'can-ho-mau-nau-cam-at-xinh-me-voi-chi-phi-noi-that-hop-ly'),
(9, 'Cá nhân hóa nội thất  phong cách riêng của bạn', '<p>Mỗi m&oacute;n đồ hiện diện trong căn nh&agrave; đều gắn b&oacute; với từng th&oacute;i quen sinh hoạt hằng ng&agrave;y của gia chủ, ngo&agrave;i ra c&ograve;n c&oacute; cả những vị kh&aacute;ch gh&eacute; thăm nh&agrave;. Đ&oacute; ch&iacute;nh l&agrave; l&yacute; do v&igrave; sao nhiều người ưu ti&ecirc;n lựa chọn những m&oacute;n nội thất c&oacute; thể đắt tiền, độc đ&aacute;o, kh&aacute;c lạ hay nổi bật điểm g&igrave; đ&oacute;. Cốt yếu vẫn l&agrave; g&acirc;y ấn tượng v&agrave; thu h&uacute;t sự ch&uacute; &yacute;.&nbsp;</p>\r\n\r\n<p>Tuy nhi&ecirc;n, gi&aacute; trị thực sự của nội thất mang t&iacute;nh c&aacute; nh&acirc;n h&oacute;a l&agrave; cảm gi&aacute;c thỏa m&atilde;n khi m&oacute;n đồ mang một đặc trưng y&ecirc;u th&iacute;ch n&agrave;o đ&oacute; của người sở hữu. Bởi lẽ mỗi khi bạn sử dụng, ngắm nh&igrave;n hay giới thiệu đến người kh&aacute;c, cũng ch&iacute;nh l&agrave; l&uacute;c bạn thể hiện bản th&acirc;n th&ocirc;ng qua những yếu tố đặc trưng đ&oacute;.&nbsp;</p>\r\n\r\n<p><img src=\"https://haydecor.com/wp-content/uploads/2023/08/ca-nhan-hoa-noi-that-mang-phong-cach-rieng-3.jpg\" /></p>\r\n\r\n<h2><strong>1. C&aacute; nh&acirc;n h&oacute;a nội thất l&agrave; g&igrave;?</strong></h2>\r\n\r\n<p>C&aacute; nh&acirc;n h&oacute;a nội thất hiểu đơn giản l&agrave; mang những chi tiết được thiết kế ri&ecirc;ng độc bản v&agrave;o trong từng sản phẩm theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n\r\n<p>T&iacute;nh c&aacute; nh&acirc;n h&oacute;a thường tạo n&ecirc;n c&aacute;c sản phẩm kh&aacute;c với thiết kế nguy&ecirc;n bản ban đầu, c&oacute; thể thay đổi về m&agrave;u sắc, kiểu d&aacute;ng, vật liệu hay họa tiết đặc biệt.&nbsp;</p>\r\n\r\n<h2><strong>2. V&igrave; sao t&iacute;nh c&aacute; nh&acirc;n h&oacute;a nội thất lại được ưa chuộng?</strong></h2>\r\n\r\n<p>Như đ&atilde; n&oacute;i, mỗi ch&uacute;ng ta đều l&agrave; một phi&ecirc;n bản độc lập v&agrave; c&oacute; nhu cầu thể hiện r&otilde; phi&ecirc;n bản ấy ra ngo&agrave;i th&ocirc;ng qua nhiều c&aacute;ch, đặc biệt l&agrave; nơi m&agrave; m&igrave;nh sống mỗi ng&agrave;y.&nbsp;</p>\r\n\r\n<p>X&atilde; hội ph&aacute;t triển, nhu cầu thẩm mỹ v&agrave; chất lượng sống tăng cao, những người c&oacute; gu c&ugrave;ng mức thu nhập tốt c&agrave;ng muốn sở hữu những thứ mang dấu ấn ri&ecirc;ng.&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng gian sống kh&ocirc;ng chỉ để ở, nơi đ&oacute; c&ograve;n l&agrave; một thế giới thu nhỏ thể hiện bản thể của gia chủ th&ocirc;ng qua c&aacute;ch m&agrave; mỗi người cảm nhận khi bước v&agrave;o trong căn nh&agrave;. Kiến tr&uacute;c, m&agrave;u sắc, h&igrave;nh khối, c&aacute;ch b&agrave;y tr&iacute;, mọi thứ điều n&oacute;i l&ecirc;n sở th&iacute;ch, lối sống của gia chủ.&nbsp;</p>', 'uploads/post-2_Ir9fbv6_cHR8zDh.jpg', 'Noithat', '2023-06-16 08:04:55.730326', '2023-09-29 07:29:21.672401', 'ca-nhan-hoa-noi-that-phong-cach-rieng-cua-ban');

-- --------------------------------------------------------

--
-- Table structure for table `order_chitietdonhang`
--

CREATE TABLE `order_chitietdonhang` (
  `id` bigint(20) NOT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `TongTien` int(11) DEFAULT NULL,
  `DonHang_id` bigint(20) NOT NULL,
  `SanPham_id` bigint(20) NOT NULL,
  `MauSac_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_chitietdonhang`
--

INSERT INTO `order_chitietdonhang` (`id`, `GiaBan`, `SoLuong`, `TongTien`, `DonHang_id`, `SanPham_id`, `MauSac_id`) VALUES
(14, 200000, 1, 200000, 3, 13, 1),
(18, 200000, 1, 200000, 5, 14, 1),
(19, 750000, 1, 750000, 6, 2, 3),
(20, 750000, 1, 750000, 7, 2, 3),
(21, 400000, 1, 400000, 7, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_donhang`
--

CREATE TABLE `order_donhang` (
  `id` bigint(20) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `DiaChi` varchar(11) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `ThoiGian` datetime(6) NOT NULL,
  `TrangThai` varchar(25) NOT NULL,
  `KhachHang_id` bigint(20) NOT NULL,
  `GhiChu` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_donhang`
--

INSERT INTO `order_donhang` (`id`, `SoDienThoai`, `DiaChi`, `TongTien`, `ThoiGian`, `TrangThai`, `KhachHang_id`, `GhiChu`) VALUES
(3, '0999999999', 'TP.Hồ Chí M', 4515000, '2023-07-01 17:19:51.497488', 'dxl', 3, ''),
(4, '0999999999', 'Hà Nội', 241500, '2023-07-01 17:29:05.790087', 'Đã giao', 3, ''),
(5, '0999999999', 'Hà Nội 2', 714000, '2023-09-07 23:02:35.291422', 'khh', 3, '2'),
(6, '0913341123', 'None ', 819000, '2023-09-29 08:05:06.444427', 'khh', 6, ''),
(7, '0915115331', 'Hanoi', 1331000, '2023-09-29 13:35:16.911685', 'cxl', 6, ''),
(8, '0999999999', 'TP.Hồ Chí M', 4515000, '2023-07-01 17:19:51.497488', 'cxl', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `product_chuyenmuc`
--

CREATE TABLE `product_chuyenmuc` (
  `id` bigint(20) NOT NULL,
  `TenChuyenMuc` varchar(255) NOT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_chuyenmuc`
--

INSERT INTO `product_chuyenmuc` (`id`, `TenChuyenMuc`, `DuongDan`, `created_at`, `updated_at`, `HinhAnh`) VALUES
(1, 'Sản phẩm mới', 'san-pham-moi', '2023-06-14 08:54:04.537444', '2023-09-29 07:59:10.848570', 'uploads/81nYWp3cXnL._AC_SX679__8vt27pi_2q2By8m.jpg'),
(4, 'Sản phẩm nổi bật', 'san-pham-noi-bat', '2023-09-29 05:49:12.971672', '2023-09-29 07:59:40.693472', 'uploads/img-grid-1_2ERpSnP_3PUscYv_D38lXlD.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_mausac`
--

CREATE TABLE `product_mausac` (
  `id` bigint(20) NOT NULL,
  `TenMauSac` varchar(255) NOT NULL,
  `MaMauSac` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_mausac`
--

INSERT INTO `product_mausac` (`id`, `TenMauSac`, `MaMauSac`, `created_at`, `updated_at`) VALUES
(1, 'Theme', '#837678', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(2, 'Green', '#9ac45c', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(3, 'Blue', '#6d5cc4', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(4, 'White', '#000000', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(5, 'Yellow', '#ffff00', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460'),
(6, 'Red', '#ff0000', '2023-06-14 08:47:25.636460', '2023-06-14 08:47:25.636460');

-- --------------------------------------------------------

--
-- Table structure for table `product_sanpham`
--

CREATE TABLE `product_sanpham` (
  `id` bigint(20) NOT NULL,
  `TenSanPham` varchar(255) NOT NULL,
  `GiaKhuyenMai` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MoTaNgan` longtext NOT NULL,
  `MoTaDai` longtext NOT NULL,
  `The` varchar(255) NOT NULL,
  `AnhChinh` varchar(100) DEFAULT NULL,
  `AnhPhu1` varchar(100) DEFAULT NULL,
  `AnhPhu2` varchar(100) DEFAULT NULL,
  `AnhPhu3` varchar(100) DEFAULT NULL,
  `DuongDan` varchar(50) DEFAULT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL,
  `PhanTramGiam` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_sanpham`
--

INSERT INTO `product_sanpham` (`id`, `TenSanPham`, `GiaKhuyenMai`, `GiaBan`, `MoTaNgan`, `MoTaDai`, `The`, `AnhChinh`, `AnhPhu1`, `AnhPhu2`, `AnhPhu3`, `DuongDan`, `TrangThai`, `created_at`, `updated_at`, `ChuyenMuc_id`, `PhanTramGiam`) VALUES
(2, 'Ghế Lounge Comfy', 1000000, 750000, 'Ghế Lounge Comfy là sự kết hợp hoàn hảo giữa thiết kế hiện đại và thoải mái tối đa.', '<p>Được chế tạo với khung gỗ chắc chắn v&agrave; lớp đệm d&agrave;y, n&oacute; đảm bảo sự thoải m&aacute;i v&agrave; hỗ trợ tối ưu. Bọc b&ecirc;n ngo&agrave;i l&agrave; lớp vải &ecirc;m &aacute;i v&agrave; dễ chịu, mang đến cảm gi&aacute;c mềm mại v&agrave; ấm &aacute;p.</p>\r\n\r\n<p>Ghế Lounge Comfy kh&ocirc;ng chỉ l&agrave; một m&oacute;n đồ trang tr&iacute;, m&agrave; c&ograve;n l&agrave; nơi bạn c&oacute; thể thả m&igrave;nh v&agrave;o sau một ng&agrave;y d&agrave;i. Thiết kế thời trang với đường n&eacute;t mượt m&agrave; v&agrave; m&agrave;u sắc trang nh&atilde; l&agrave;m cho n&oacute; ph&ugrave; hợp với nhiều phong c&aacute;ch nội thất kh&aacute;c nhau. Đặt ghế n&agrave;y trong ph&ograve;ng kh&aacute;ch hoặc ph&ograve;ng ngủ của bạn để tạo n&ecirc;n một g&oacute;c thư gi&atilde;n ri&ecirc;ng tư.</p>\r\n\r\n<p>Ghế Lounge Comfy cũng l&agrave; sự lựa chọn tuyệt vời cho kh&ocirc;ng gian gặp gỡ gia đ&igrave;nh v&agrave; bạn b&egrave;. D&ugrave; l&agrave; để xem phim, đọc s&aacute;ch, hoặc thậm ch&iacute; l&agrave; nghị sự c&ocirc;ng việc, ghế n&agrave;y sẽ l&agrave;m cho mọi hoạt động trở n&ecirc;n thoải m&aacute;i hơn. H&atilde;y để ch&uacute;ng t&ocirc;i gi&uacute;p bạn tạo ra một kh&ocirc;ng gian ấm &aacute;p v&agrave; đầy phong c&aacute;ch với Ghế Lounge Comfy!</p>', 'Sanphammoi', 'uploads/Lounge_Comfy.jpg', 'uploads/Lounge_Comfy_2.jpg', 'uploads/Lounge_Comfy_1.jpg', 'uploads/Lounge_Comfy_3.jpg', 'ghe-lounge-comfy', 1, '2023-09-14 15:34:18.602378', '2023-09-29 06:19:21.619293', 1, 25),
(3, 'Ghế ăn Elegance', 400000, 250000, 'Ghế ăn Elegance mang đến vẻ đẹp tinh tế và sự thoải mái trong bữa ăn gia đình.', '<p>Ghế ăn Elegance l&agrave; một t&aacute;c phẩm nghệ thuật của thiết kế nội thất. Được tạo ra với sự t&ocirc;n trọng đối với vẻ đẹp v&agrave; sự thoải m&aacute;i, n&oacute; l&agrave; sự lựa chọn l&yacute; tưởng cho những bữa ăn gia đ&igrave;nh trở n&ecirc;n đặc biệt hơn.</p>\r\n\r\n<p>Ghế được chế tạo bằng khung gỗ chắc chắn v&agrave; bọc lớp đệm &ecirc;m &aacute;i, đảm bảo sự thoải m&aacute;i trong suốt thời gian d&agrave;i ngồi. Với thiết kế đơn giản v&agrave; tinh tế, n&oacute; dễ d&agrave;ng kết hợp với bất kỳ b&agrave;n ăn n&agrave;o v&agrave; tạo n&ecirc;n một bầu kh&ocirc;ng gian ấm c&uacute;ng cho bữa ăn gia đ&igrave;nh.</p>\r\n\r\n<p>Ghế ăn Elegance kh&ocirc;ng chỉ l&agrave; một sản phẩm nội thất, m&agrave; c&ograve;n l&agrave; một phần của trải nghiệm th&uacute; vị mỗi khi bạn ngồi xuống bữa ăn. Sự kết hợp ho&agrave;n hảo giữa chất lượng v&agrave; thiết kế l&agrave;m cho n&oacute; trở th&agrave;nh điểm nhấn trong ph&ograve;ng ăn của bạn. Bạn v&agrave; gia đ&igrave;nh sẽ tận hưởng kh&ocirc;ng gian ấm &aacute;p v&agrave; th&uacute; vị hơn với Ghế ăn Elegance.</p>', 'Sanphammoi', 'uploads/Ghế_ăn_Elegance.png', 'uploads/Ghế_ăn_Elegance_2.png', 'uploads/Ghế_ăn_Elegance_Bi4nRtp.png', 'uploads/Ghế_ăn_Elegance_2_w4QQD2X.png', 'ghe-an-elegance', 1, '2023-06-14 15:35:05.961654', '2023-09-29 06:30:39.639317', 1, 37),
(4, 'Ghế đọc sách Vintage', 800000, 400000, 'Với thiết kế cổ điển và chất liệu da cao cấp, nó không chỉ là một chiếc ghế, mà còn là một tác phẩm nghệ thuật trong không gian sống của bạn.', '<p>Ghế đọc s&aacute;ch Vintage kh&ocirc;ng chỉ l&agrave; nơi bạn c&oacute; thể thư gi&atilde;n v&agrave; đọc s&aacute;ch y&ecirc;u th&iacute;ch, m&agrave; c&ograve;n l&agrave; một phần của trang tr&iacute; nội thất tạo n&ecirc;n phong c&aacute;ch độc đ&aacute;o. Đặt ghế n&agrave;y trong ph&ograve;ng kh&aacute;ch hoặc g&oacute;c đọc s&aacute;ch của bạn v&agrave; tận hưởng sự sang trọng v&agrave; thoải m&aacute;i m&agrave; n&oacute; mang lại.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc ghế đẹp v&agrave; độc đ&aacute;o để bổ sung v&agrave;o kh&ocirc;ng gian sống của m&igrave;nh, Ghế đọc s&aacute;ch Vintage sẽ l&agrave; một lựa chọn xuất sắc.</p>', 'Sanphamnoibat', 'uploads/61Jeg0uIc5L._AC_SX679__gkQqKrb.jpg', 'uploads/81jkQ7dZ87L._AC_SX679__pLP0KiZ.jpg', 'uploads/81jETVeTzvL._AC_SX679__ozNmbrQ.jpg', 'uploads/81yLYom2qDL._AC_SX679__jYaFsDt.jpg', 'ghe-oc-sach-vintage', 1, '2023-06-14 15:35:45.546392', '2023-09-29 06:43:12.312411', 4, 50),
(5, 'Ghế Accent Lexicon Elle', 1500000, 750000, 'Đây là một sản phẩm nội thất sang trọng với thiết kế tinh tế và màu xám trang nhã. Ghế này thích hợp để tạo điểm nhấn trong không gian sống của bạn, mang đến sự thoải mái và phong cách.', '<p>Với m&agrave;u sắc x&aacute;m trầm v&agrave; trang nh&atilde;, n&oacute; kh&ocirc;ng chỉ l&agrave; một m&oacute;n đồ trang tr&iacute;, m&agrave; c&ograve;n l&agrave; một phần của kh&ocirc;ng gian sống tinh tế v&agrave; thoải m&aacute;i.</p>\r\n\r\n<p>Ghế n&agrave;y được chế tạo bằng chất liệu chất lượng v&agrave; khung gỗ chắc chắn, đảm bảo t&iacute;nh bền v&agrave; độ ổn định. Điểm đặc biệt của sản phẩm ch&iacute;nh l&agrave; thiết kế đường n&eacute;t mượt m&agrave; v&agrave; tỉ mỉ, tạo n&ecirc;n vẻ đẹp tinh tế v&agrave; hiện đại. Lớp đệm d&agrave;y v&agrave; &ecirc;m &aacute;i l&agrave;m cho việc ngồi tr&ecirc;n ghế trở n&ecirc;n thoải m&aacute;i v&agrave; thư gi&atilde;n.</p>\r\n\r\n<p>&quot;Ghế Accent Lexicon Elle&quot; kh&ocirc;ng chỉ l&agrave; một chiếc ghế b&igrave;nh thường, m&agrave; c&ograve;n l&agrave; một n&eacute;t độc đ&aacute;o trong trang tr&iacute; nội thất của bạn. N&oacute; c&oacute; thể đặt ở nhiều vị tr&iacute; kh&aacute;c nhau trong ng&ocirc;i nh&agrave; của bạn, từ ph&ograve;ng kh&aacute;ch cho đến ph&ograve;ng ngủ hay g&oacute;c đọc s&aacute;ch. Sự kết hợp ho&agrave;n hảo giữa m&agrave;u x&aacute;m trung t&iacute;nh v&agrave; thiết kế hiện đại gi&uacute;p n&oacute; ph&ugrave; hợp với nhiều phong c&aacute;ch nội thất kh&aacute;c nhau.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một m&oacute;n đồ trang tr&iacute; độc đ&aacute;o v&agrave; đẳng cấp hoặc một chỗ ngồi thoải m&aacute;i để thư gi&atilde;n, &quot;Ghế Accent Lexicon Elle, M&agrave;u X&aacute;m&quot; chắc chắn l&agrave; một lựa chọn xuất sắc. H&atilde;y tạo n&ecirc;n kh&ocirc;ng gian sống đẳng cấp v&agrave; th&uacute; vị với sản phẩm n&agrave;y.</p>', 'ghetua, sanphamnoibat', 'uploads/A11Lc17HRlL._AC_SX679__H5iYxWY.jpg', 'uploads/A176JMdebwL._AC_SX679__8LiWzXA.jpg', 'uploads/A11uwAhb5LL._AC_SX679__zOpHrqK.jpg', 'uploads/91v83rvdoL._AC_SX679_.jpg', 'ghe-accent-lexicon-elle', 1, '2023-06-14 15:36:20.081250', '2023-09-29 06:50:40.297834', 1, 50),
(7, 'Ghế Espresso', 4000000, 2500000, 'Ghế Espresso là một sản phẩm nội thất đơn giản và đẹp mắt, mang đậm dấu ấn của phong cách cổ điển.', '<p>Ghế được chế tạo từ chất liệu gỗ tự nhi&ecirc;n chất lượng cao, gi&uacute;p n&oacute; c&oacute; t&iacute;nh bền vững v&agrave; độ ổn định. Thiết kế của ghế Espresso rất đơn giản v&agrave; truyền thống, với đường n&eacute;t mượt m&agrave; v&agrave; chi tiết tinh tế. Điểm đ&aacute;ng ch&uacute; &yacute; l&agrave; lớp l&oacute;t ghế bằng vải &ecirc;m &aacute;i, gi&uacute;p tạo cảm gi&aacute;c thoải m&aacute;i khi ngồi.</p>\r\n\r\n<p>Ghế Espresso c&oacute; khả năng th&iacute;ch ứng với nhiều kh&ocirc;ng gian kh&aacute;c nhau. Bạn c&oacute; thể đặt n&oacute; trong ph&ograve;ng kh&aacute;ch l&agrave;m điểm nhấn trang tr&iacute;, trong ph&ograve;ng ngủ để tạo g&oacute;c đọc s&aacute;ch ri&ecirc;ng tư, hoặc trong ph&ograve;ng ăn để kết hợp với b&agrave;n ăn của bạn.</p>\r\n\r\n<p>Đ&acirc;y kh&ocirc;ng chỉ l&agrave; một chiếc ghế, m&agrave; c&ograve;n l&agrave; một phần của trải nghiệm sống. Ghế Espresso l&agrave; nơi bạn c&oacute; thể thư gi&atilde;n sau một ng&agrave;y d&agrave;i hoặc tận hưởng bữa ăn gia đ&igrave;nh ấm &aacute;p. Sự kết hợp ho&agrave;n hảo giữa m&agrave;u sắc đẹp v&agrave; thiết kế truyền thống gi&uacute;p n&oacute; th&iacute;ch hợp với nhiều phong c&aacute;ch nội thất kh&aacute;c nhau.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc ghế đơn giản, đẹp v&agrave; đ&aacute;ng y&ecirc;u để bổ sung v&agrave;o kh&ocirc;ng gian sống của m&igrave;nh, Ghế Espresso chắc chắn l&agrave; một lựa chọn tuyệt vời.</p>', 'Ghe, Epresso', 'uploads/61m3TNVc1PL._AC_SX679__vfPkANj.jpg', 'uploads/81m8wK2HiNL._AC_SX679__bMGIsts.jpg', 'uploads/811LpOXN1ZL._AC_SX679__SaGAuYy.jpg', 'uploads/719LV9TZAML._AC_SX679__8LnLCnc.jpg', 'ghe-espresso', 1, '2023-06-14 15:38:35.890326', '2023-09-29 06:55:09.974922', 4, 37),
(8, 'Ghế GIA Mid Century Modern', 1000000, 400000, 'Ghế GIA có thiết kế thấp và hiện đại với các đường nét mượt mà và góc cạnh tinh tế.', '<p>Với m&agrave;u sắc trung t&iacute;nh v&agrave; phong c&aacute;ch độc đ&aacute;o, Ghế GIA th&iacute;ch hợp cho nhiều loại kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch kh&aacute;c nhau. N&oacute; c&oacute; thể l&agrave; điểm nhấn trong trang tr&iacute; hoặc một chỗ ngồi thoải m&aacute;i để ch&agrave;o đ&oacute;n bạn b&egrave; v&agrave; gia đ&igrave;nh.</p>\r\n\r\n<p>Ghế GIA Mid Century Modern Accent kh&ocirc;ng chỉ l&agrave; một sản phẩm nội thất, m&agrave; c&ograve;n l&agrave; một tuyệt t&aacute;c nghệ thuật. Với sự kết hợp ho&agrave;n hảo giữa thiết kế đẹp v&agrave; t&iacute;nh thực tiễn, n&oacute; đem lại sự h&agrave;i l&ograve;ng cho bất kỳ ai ưa chuộng phong c&aacute;ch hiện đại v&agrave; thanh lịch.</p>', 'GIA, Giamgia', 'uploads/718Y3gcDDxL._AC_SX679__Tj44D8Y.jpg', 'uploads/712ndytdkjL._AC_SX679__SFbQEMQ.jpg', 'uploads/81rSEtwodnL._AC_SX679__2AgwPal.jpg', 'uploads/712ndytdkjL._AC_SX679__ohd3JrN.jpg', 'ghe-gia-mid-century-modern', 1, '2023-06-14 15:40:34.079598', '2023-09-29 06:58:47.846911', 4, 60),
(9, 'Ghế Tựa Tay Vải Phong Cách Christopher', 400000, 250000, 'Ghế Tựa Tay Vải Phong Cách Trung Thế Kỷ Isaac của Christopher Knight Home\" là một sản phẩm nội thất đẹp mắt và độc đáo, mang trong mình nét đẹp và phong cách của thời kỳ trung thế kỷ 20', '<p>Được thiết kế bởi Christopher Knight Home, một thương hiệu nổi tiếng trong lĩnh vực nội thất, ghế n&agrave;y tự h&agrave;o về sự kết hợp ho&agrave;n hảo giữa thiết kế cổ điển v&agrave; t&iacute;nh thực tiễn.</p>\r\n\r\n<p>Ghế được l&agrave;m từ chất liệu vải cao cấp, tạo cảm gi&aacute;c mềm mại v&agrave; thoải m&aacute;i khi ngồi. Thiết kế với tựa tay v&agrave; đệm l&oacute;t &ecirc;m &aacute;i mang lại sự hỗ trợ v&agrave; thoải m&aacute;i tối ưu cho người sử dụng. Ch&acirc;n ghế l&agrave;m bằng gỗ chắc chắn, đảm bảo t&iacute;nh ổn định v&agrave; độ bền theo thời gian.</p>\r\n\r\n<p>Với phong c&aacute;ch trung thế kỷ, Ghế Isaac mang đến sự thanh lịch v&agrave; sang trọng cho kh&ocirc;ng gian nội thất của bạn. M&agrave;u sắc trung t&iacute;nh v&agrave; thiết kế tối giản gi&uacute;p n&oacute; dễ d&agrave;ng kết hợp với nhiều loại trang tr&iacute; v&agrave; phong c&aacute;ch nội thất kh&aacute;c nhau. Ghế n&agrave;y c&oacute; thể đặt trong ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ hoặc g&oacute;c đọc s&aacute;ch để tạo điểm nhấn v&agrave; chỗ ngồi thoải m&aacute;i.</p>\r\n\r\n<p>&quot;Ghế Tựa Tay Vải Phong C&aacute;ch Trung Thế Kỷ Isaac của Christopher Knight Home&quot; kh&ocirc;ng chỉ l&agrave; một m&oacute;n đồ trang tr&iacute;, m&agrave; c&ograve;n l&agrave; một nơi để bạn thư gi&atilde;n v&agrave; tận hưởng thời gian của m&igrave;nh. Được chế tạo với chất lượng v&agrave; sự tinh tế, đ&acirc;y chắc chắn l&agrave; một sản phẩm nội thất đẳng cấp v&agrave; đ&aacute;ng đầu tư.</p>', 'ghe, sanphamgiamgia', 'uploads/91sPR7zjTSL._AC_SX679__LCcQPsM.jpg', 'uploads/A16xMHBwQoL._AC_SX679__pOB97dV.jpg', 'uploads/81qauRJwtAL._AC_SX679__ZgcaUlL.jpg', 'uploads/81YbYhry0nL._AC_SX679__HRP5MSu.jpg', 'ghe-tua-tay-vai-phong-cach-christopher', 1, '2023-06-14 15:41:12.443780', '2023-09-29 07:02:27.877353', 4, 37),
(10, 'Ghế kim loại', 400000, 250000, 'Ghế Kim Loại Zinnus là một sản phẩm nội thất độc đáo và hiện đại, được làm từ chất liệu kim loại chắc chắn và được thiết kế với sự tinh tế.', '<ul>\r\n	<li>\r\n	<p><strong>Phong C&aacute;ch Đương Đại Tinh Tế</strong>: Ghế &nbsp;được thiết kế với h&igrave;nh d&aacute;ng hiện đại v&agrave; sắc n&eacute;t, đem lại sự tươi mới v&agrave; sang trọng cho mọi kh&ocirc;ng gian nội thất như ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ, văn ph&ograve;ng, hoặc g&oacute;c đọc s&aacute;ch của bạn.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sự Thoải M&aacute;i Đ&aacute;ng Thưởng Thức</strong>: Được thiết kế rộng r&atilde;i, ghế &nbsp;c&oacute; đệm bọc b&ecirc;n trong bằng bọt biển băm nhỏ gi&uacute;p đệm &ocirc;m vừa vặn theo h&igrave;nh d&aacute;ng của bạn, hỗ trợ từng đường cong cơ thể, mang lại sự thoải m&aacute;i tốt nhất cho bạn, cho d&ugrave; bạn đang đọc s&aacute;ch, xem TV, hay thưởng thức c&agrave; ph&ecirc; buổi s&aacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sản Xuất Bền Bỉ</strong>: Khung th&eacute;p tr&ograve;n v&agrave; chắc chắn tạo n&ecirc;n sự cấu tr&uacute;c vững chắc, c&oacute; thể chịu tải trọng l&ecirc;n đến 250 lbs (khoảng 113 kg), đảm bảo sự ổn định v&agrave; độ bền của ghế trong thời gian d&agrave;i sử dụng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Lắp Đặt Dễ D&agrave;ng</strong>: Tất cả c&aacute;c bộ phận, c&ocirc;ng cụ v&agrave; hướng dẫn lắp r&aacute;p được đ&oacute;ng g&oacute;i trong một hộp để gi&uacute;p bạn lắp đặt dễ d&agrave;ng trong v&ograve;ng chưa đầy 30 ph&uacute;t.&nbsp;</p>\r\n	</li>\r\n</ul>', 'ghe, sanphammoi', 'uploads/81bwiKeVWzL._AC_SX679__jnvSpLT.jpg', 'uploads/81BGxZczURL._AC_SX679__jwIkpe7.jpg', 'uploads/20230527_FrX0KYrsJr_dWiCBtb.jpeg', 'uploads/81iHVSgWmgL._AC_SX679__yhVczzN.jpg', 'ghe-kim-loai', 1, '2023-06-14 15:41:50.200879', '2023-09-29 07:09:32.402577', 1, 37),
(11, 'Ghế tựa Homepot', 4000000, 2000000, 'Ghế tựa hiện đại thoải mái', '<ul>\r\n	<li>\r\n	<p><strong>Phong C&aacute;ch Đương Đại Tinh Tế</strong>: Ghế &nbsp;được thiết kế với h&igrave;nh d&aacute;ng hiện đại v&agrave; sắc n&eacute;t, đem lại sự tươi mới v&agrave; sang trọng cho mọi kh&ocirc;ng gian nội thất như ph&ograve;ng kh&aacute;ch, ph&ograve;ng ngủ, văn ph&ograve;ng, hoặc g&oacute;c đọc s&aacute;ch của bạn.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sự Thoải M&aacute;i Đ&aacute;ng Thưởng Thức</strong>: Được thiết kế rộng r&atilde;i, ghế c&oacute; đệm bọc b&ecirc;n trong bằng bọt biển băm nhỏ gi&uacute;p đệm &ocirc;m vừa vặn theo h&igrave;nh d&aacute;ng của bạn, hỗ trợ từng đường cong cơ thể, mang lại sự thoải m&aacute;i tốt nhất cho bạn, cho d&ugrave; bạn đang đọc s&aacute;ch, xem TV, hay thưởng thức c&agrave; ph&ecirc; buổi s&aacute;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Chất Lượng Đ&aacute;ng Tin Cậy</strong>: Homepot lu&ocirc;n cam kết đem đến sản phẩm chất lượng v&agrave; bền bỉ. Ghế tựa được l&agrave;m từ c&aacute;c vật liệu chất lượng cao, đảm bảo t&iacute;nh ổn định v&agrave; độ bền trong thời gian d&agrave;i.</p>\r\n	</li>\r\n	<li>\r\n	<p><strong>Sự Linh Hoạt</strong>: Ghế tựa Homepot kh&ocirc;ng chỉ th&iacute;ch hợp cho ph&ograve;ng kh&aacute;ch m&agrave; c&ograve;n c&oacute; thể đặt trong ph&ograve;ng ngủ, ph&ograve;ng l&agrave;m việc hoặc bất kỳ kh&ocirc;ng gian n&agrave;o bạn muốn tạo điểm nhấn. Sự linh hoạt trong việc sử dụng gi&uacute;p bạn tận dụng tối đa gi&aacute; trị của sản phẩm.</p>\r\n\r\n	<p>Nếu bạn đang t&igrave;m kiếm một chiếc ghế tựa chất lượng, thoải m&aacute;i v&agrave; phong c&aacute;ch cho ng&ocirc;i nh&agrave; của m&igrave;nh, ghế tựa Homepot c&oacute; thể l&agrave; sự lựa chọn ho&agrave;n hảo.</p>\r\n	</li>\r\n</ul>', 'Homepot, Sanphammoi', 'uploads/61MIEQljhgL._AC_SX679__3eZV4RA.jpg', 'uploads/81e5lFT1olL._AC_SX679__urzgvc4.jpg', 'uploads/91RuTFXiEwL._AC_SX679__v3M4vXU.jpg', 'uploads/71y8vcBCXnL._AC_SX679__MTPNSgJ.jpg', 'ghe-tua-homepot', 1, '2023-06-14 15:50:00.891538', '2023-09-29 07:13:18.903726', 4, 50),
(12, 'Ghế Sofa MoNiBloom', 4000000, 1500000, 'Sofa MoNiBloom là một tác phẩm nghệ thuật trong thế giới nội thất. Với thiết kế tinh tế và sự chăm sóc đặc biệt về chi tiết, nó không chỉ là một chiếc ghế ngồi mà còn là một tác phẩm nghệ thuật độc đáo trong không gian sống của bạn.', '<p>Sofa MoNiBloom l&agrave; một t&aacute;c phẩm nghệ thuật trong thế giới nội thất. Với thiết kế tinh tế v&agrave; sự chăm s&oacute;c đặc biệt về chi tiết, n&oacute; kh&ocirc;ng chỉ l&agrave; một chiếc ghế ngồi m&agrave; c&ograve;n l&agrave; một t&aacute;c phẩm nghệ thuật độc đ&aacute;o trong kh&ocirc;ng gian sống của bạn.</p>\r\n\r\n<p><strong>Thiết Kế Tối Giản V&agrave; Hiện Đại</strong>: Sofa MoNiBloom sở hữu thiết kế tối giản, với c&aacute;c đường n&eacute;t mượt m&agrave; v&agrave; g&oacute;c cạnh thanh lịch, tạo n&ecirc;n sự ho&agrave;n hảo v&agrave; hiện đại cho kh&ocirc;ng gian của bạn. Sự kết hợp giữa thẩm mỹ v&agrave; sự thoải m&aacute;i l&agrave; điểm đặc biệt của sản phẩm n&agrave;y.</p>\r\n\r\n<p><strong>Chất Lượng Vượt Trội</strong>: MoNiBloom lu&ocirc;n đặt chất lượng l&ecirc;n h&agrave;ng đầu. Sofa được l&agrave;m từ c&aacute;c vật liệu chất lượng cao, đảm bảo độ bền v&agrave; sự ổn định. Khung sofa được chế tạo để chịu được tải trọng v&agrave; sử dụng l&acirc;u d&agrave;i m&agrave; vẫn giữ được h&igrave;nh d&aacute;ng ban đầu.</p>\r\n\r\n<p><strong>Sự Thoải M&aacute;i Tối Đa</strong>: Với đệm m&uacute;t mịn m&agrave;ng v&agrave; tựa lưng &ecirc;m &aacute;i, sofa MoNiBloom mang lại sự thoải m&aacute;i tối đa cho người sử dụng. Bạn c&oacute; thể thư gi&atilde;n v&agrave; nghỉ ngơi một c&aacute;ch dễ d&agrave;ng sau một ng&agrave;y l&agrave;m việc căng thẳng.</p>\r\n\r\n<p><strong>Sự Linh Hoạt</strong>: Sofa MoNiBloom kh&ocirc;ng chỉ l&agrave; một chiếc ghế ngồi m&agrave; c&ograve;n c&oacute; thể biến th&agrave;nh một nơi nằm d&agrave;i thoải m&aacute;i. Sự linh hoạt n&agrave;y gi&uacute;p bạn tận dụng tối ưu kh&ocirc;ng gian v&agrave; sử dụng sản phẩm đa dạng trong nhiều t&igrave;nh huống.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc sofa sang trọng, chất lượng v&agrave; thoải m&aacute;i cho kh&ocirc;ng gian sống của m&igrave;nh, sofa MoNiBloom l&agrave; một sự lựa chọn xuất sắc.</p>', 'moniblom', 'uploads/711XFrPwvhL._AC_SX679__g7XoYN9.jpg', 'uploads/71NKgRd2IHL._AC_SX679__2AO75rZ.jpg', 'uploads/61h0AtaYiL._AC_SX679_.jpg', 'uploads/51bLS5kdbVL._AC_SX679__2R0AJ1H.jpg', 'ghe-sofa-monibloom', 1, '2023-06-15 10:37:39.878342', '2023-09-29 07:16:23.406576', 1, 62),
(13, 'Sofa Woody', 2000000, 1500000, 'Sofa Woody sang trọng độc đáo, chỉ có tại Cozy Living', '<p><strong>Sofa Woody - Sự H&ograve;a Quyện Của Thi&ecirc;n Nhi&ecirc;n V&agrave; Nghệ Thuật</strong></p>\r\n\r\n<p>Sofa Woody mang đến cho kh&ocirc;ng gian sống của bạn sự giao thoa tuyệt vời giữa thi&ecirc;n nhi&ecirc;n v&agrave; nghệ thuật. Với vẻ đẹp tự nhi&ecirc;n của gỗ v&agrave; thiết kế tinh tế, n&oacute; l&agrave; một phần trang tr&iacute; v&agrave; nội thất độc đ&aacute;o.</p>\r\n\r\n<p><strong>Thiết Kế Tự Nhi&ecirc;n</strong>: Sofa Woody được l&agrave;m từ gỗ tự nhi&ecirc;n cao cấp, tạo n&ecirc;n vẻ đẹp mộc mạc v&agrave; ấm &aacute;p. Với c&aacute;c đường n&eacute;t đơn giản v&agrave; sự tự nhi&ecirc;n của vật liệu, n&oacute; th&iacute;ch hợp với nhiều loại nội thất v&agrave; phong c&aacute;ch.</p>\r\n\r\n<p><strong>Sự Thoải M&aacute;i Tối Đa</strong>: Với đệm m&uacute;t d&agrave;y v&agrave; tựa lưng &ecirc;m &aacute;i, sofa Woody mang lại sự thoải m&aacute;i tối đa cho bạn v&agrave; gia đ&igrave;nh. Bạn c&oacute; thể thư gi&atilde;n, đọc s&aacute;ch, hoặc xem phim một c&aacute;ch thoải m&aacute;i tr&ecirc;n chiếc ghế n&agrave;y.</p>\r\n\r\n<p><strong>Chất Lượng Bền Bỉ</strong>: Gỗ tự nhi&ecirc;n được chọn lựa kỹ lưỡng v&agrave; xử l&yacute; cẩn thận để đảm bảo độ bền v&agrave; sự ổn định của sản phẩm. Sofa Woody được thiết kế để tồn tại v&agrave; phục vụ gia đ&igrave;nh bạn trong nhiều năm tới.</p>\r\n\r\n<p><strong>Sự Kết Hợp Linh Hoạt</strong>: Với vẻ đẹp tự nhi&ecirc;n v&agrave; thiết kế đơn giản, sofa Woody dễ d&agrave;ng kết hợp với c&aacute;c phụ kiện v&agrave; trang tr&iacute; nội thất kh&aacute;c. Bạn c&oacute; thể tạo ra một kh&ocirc;ng gian ấm c&uacute;ng v&agrave; th&acirc;n thiện với sự h&ograve;a quyện của thi&ecirc;n nhi&ecirc;n.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc sofa tự nhi&ecirc;n, đẹp v&agrave; thoải m&aacute;i cho ng&ocirc;i nh&agrave; của m&igrave;nh, sofa Woody l&agrave; một sự lựa chọn xuất sắc để tạo điểm nhấn trong kh&ocirc;ng gian sống của bạn.</p>', 'Sofa', 'uploads/81C5Uk7hwfL._AC_SX679__G4lMtRA.jpg', 'uploads/61txzvUPl3L._AC_SX679__Ub4T9VU.jpg', 'uploads/81C5Uk7hwfL._AC_SX679__uAFDQ99.jpg', 'uploads/61txzvUPl3L._AC_SX679__ynlfNbP.jpg', 'sofa-woody', 1, '2023-06-15 10:39:01.668188', '2023-09-29 07:20:38.653076', 1, 25),
(14, 'Ghế da Lamerge', 500000, 200000, 'Ghế Da Lamerge - Sự Kết Hợp Hoàn Hảo Giữa Phong Cách Và Sự Sang Trọng', '<p>Ghế da Lamerge l&agrave; biểu tượng của sự sang trọng v&agrave; phong c&aacute;ch trong nội thất. Với thiết kế tinh tế v&agrave; sự chăm s&oacute;c đặc biệt về chi tiết, n&oacute; l&agrave; một t&aacute;c phẩm nghệ thuật độc đ&aacute;o trong kh&ocirc;ng gian sống của bạn.</p>\r\n\r\n<p><strong>Chất Liệu Da Cao Cấp</strong>: Ghế Lamerge được l&agrave;m từ da cao cấp, mang lại vẻ đẹp v&agrave; t&iacute;nh bền bỉ đặc trưng của da thật. Da c&ograve;n c&oacute; khả năng th&iacute;ch nghi với nhiệt độ cơ thể, mang lại sự thoải m&aacute;i v&agrave; sang trọng cho người sử dụng.</p>\r\n\r\n<p><strong>Thiết Kế Đẳng Cấp</strong>: Thiết kế của ghế da Lamerge thể hiện sự đẳng cấp v&agrave; thẩm mỹ. C&aacute;c đường n&eacute;t mượt m&agrave;, tỉ mỉ v&agrave; c&aacute;c chi tiết tỉnh t&aacute;o tạo n&ecirc;n một chiếc ghế vượt trội về phong c&aacute;ch.</p>\r\n\r\n<p><strong>Sự Thoải M&aacute;i Ho&agrave;n Hảo</strong>: Với đệm m&uacute;t mịn m&agrave;ng v&agrave; tựa lưng được thiết kế chuẩn mực, ghế da Lamerge mang lại sự thoải m&aacute;i ho&agrave;n hảo cho người sử dụng. Bạn c&oacute; thể thư gi&atilde;n v&agrave; nghỉ ngơi một c&aacute;ch th&uacute; vị sau một ng&agrave;y l&agrave;m việc căng thẳng.</p>\r\n\r\n<p><strong>Sự Kết Hợp Ho&agrave;n Hảo</strong>: Ghế da Lamerge kh&ocirc;ng chỉ l&agrave; một chiếc ghế ngồi m&agrave; c&ograve;n l&agrave; một t&aacute;c phẩm nghệ thuật. Với sự kết hợp ho&agrave;n hảo giữa chất liệu, thiết kế v&agrave; sự thoải m&aacute;i, n&oacute; l&agrave; một điểm nhấn trong kh&ocirc;ng gian sống của bạn.</p>\r\n\r\n<p>Nếu bạn đang t&igrave;m kiếm một chiếc ghế da đẳng cấp v&agrave; sang trọng để l&agrave;m phong c&aacute;ch cho ng&ocirc;i nh&agrave; hoặc văn ph&ograve;ng của m&igrave;nh, ghế da Lamerge l&agrave; một lựa chọn xuất sắc để thể hiện sự sang trọng v&agrave; đẳng cấp.</p>', 'gheda', 'uploads/81v9GSMRfWL._AC_SX679__33yolAn.jpg', 'uploads/81HvHiz5N4L._AC_SX679__mHhVVqd.jpg', 'uploads/81pF6A3ZwL._AC_SX679_.jpg', 'uploads/81nYWp3cXnL._AC_SX679__8vt27pi.jpg', 'ghe-da-lamerge', 1, '2023-06-15 11:27:13.681733', '2023-09-29 07:23:53.327448', 1, 60);

-- --------------------------------------------------------

--
-- Table structure for table `product_sanpham_mausac`
--

CREATE TABLE `product_sanpham_mausac` (
  `id` bigint(20) NOT NULL,
  `sanpham_id` bigint(20) NOT NULL,
  `mausac_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_sanpham_mausac`
--

INSERT INTO `product_sanpham_mausac` (`id`, `sanpham_id`, `mausac_id`) VALUES
(44, 2, 3),
(48, 3, 1),
(45, 3, 3),
(46, 3, 4),
(49, 3, 6),
(10, 4, 1),
(50, 4, 3),
(51, 4, 4),
(13, 5, 1),
(52, 5, 3),
(53, 5, 4),
(55, 5, 6),
(19, 7, 1),
(56, 7, 3),
(57, 7, 4),
(58, 7, 5),
(22, 8, 1),
(59, 8, 5),
(60, 9, 4),
(28, 10, 1),
(61, 10, 4),
(62, 11, 4),
(63, 12, 5),
(64, 13, 4),
(40, 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannerbottom`
--

CREATE TABLE `website_bannerbottom` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannerbottom`
--

INSERT INTO `website_bannerbottom` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/sofa-collection-banner_hUGFCWA.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannermid`
--

CREATE TABLE `website_bannermid` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannermid`
--

INSERT INTO `website_bannermid` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/b1.jpg', 1, 1),
(2, 'uploads/726099-638090547665575199-17260667_qBi3jk0.png', 1, 4),
(3, 'uploads/726099-638090547654479542-17260559_TkYltWW.png', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `website_bannertop`
--

CREATE TABLE `website_bannertop` (
  `id` bigint(20) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `HienThi` tinyint(1) NOT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_bannertop`
--

INSERT INTO `website_bannertop` (`id`, `HinhAnh`, `HienThi`, `ChuyenMuc_id`) VALUES
(1, 'uploads/why-choose-us-img_CvKk6v0.jpg', 1, 1),
(2, 'uploads/post-3_K2m8RpH.jpg', 1, 1),
(3, 'uploads/post-2_GMNGhty.jpg', 1, 1),
(4, 'uploads/post-1_6YTn6IB.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_loaithongtin`
--

CREATE TABLE `website_loaithongtin` (
  `id` bigint(20) NOT NULL,
  `TenLoai` varchar(255) NOT NULL,
  `MaLoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_loaithongtin`
--

INSERT INTO `website_loaithongtin` (`id`, `TenLoai`, `MaLoai`) VALUES
(1, 'Tiêu Đề Website', 'tieudeweb'),
(2, 'Số Điện Thoại', 'sodienthoai'),
(3, 'Địa Chỉ', 'diachi'),
(4, 'Email', 'email'),
(5, 'Giới Thiệu', 'gioithieu'),
(6, 'Favicon', 'favicon'),
(7, 'Logo', 'logo'),
(8, 'Phí Ship', 'phiship'),
(9, 'Phí VAT', 'phivat');

-- --------------------------------------------------------

--
-- Table structure for table `website_nhataitro`
--

CREATE TABLE `website_nhataitro` (
  `id` bigint(20) NOT NULL,
  `Tennhataitro` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_nhataitro`
--

INSERT INTO `website_nhataitro` (`id`, `Tennhataitro`, `HinhAnh`) VALUES
(1, '4', 'uploads/c4_uZ2ANvc.png'),
(5, '3', 'uploads/c3_Rgli7sM.png'),
(6, '2', 'uploads/c2_lPgMvNG.png'),
(7, '1', 'uploads/c1_04x2Cwt.png'),
(10, '5', 'uploads/c5_0K6fCDv.png');

-- --------------------------------------------------------

--
-- Table structure for table `website_slide`
--

CREATE TABLE `website_slide` (
  `id` bigint(20) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `MoTaNgan` varchar(255) NOT NULL,
  `MoTaDai` varchar(255) NOT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `ChuyenMuc_id` bigint(20) NOT NULL,
  `HienThi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_slide`
--

INSERT INTO `website_slide` (`id`, `TieuDe`, `MoTaNgan`, `MoTaDai`, `HinhAnh`, `ChuyenMuc_id`, `HienThi`) VALUES
(1, 'Cozy Sofa', 'Sang trọng, phong cách, và sáng tạo', 'Cozy Living tự hào cung cấp đa dạng các sản phẩm nội thất, tạo nên không gian sang trọng và ấm cúng cho bạn', 'uploads/banner_01_4.png', 1, 1),
(2, 'Sofa Vải', 'Sự lựa chọn hiện đại', 'Mang đến sự trải nghiệm hàng đầu cho không gian sống của bạn.', 'uploads/banner_02_VT6Wsv2.png', 1, 1),
(4, 'Cozy Sofa', 'Sang trọng, phong cách, và sáng tạo', 'Tạo nên không gian sang trọng và ấm cúng có 1 không 2 cho bạn', 'uploads/banner_01_4.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `website_thongtin`
--

CREATE TABLE `website_thongtin` (
  `id` bigint(20) NOT NULL,
  `GiaTri` varchar(255) DEFAULT NULL,
  `HinhAnh` varchar(100) DEFAULT NULL,
  `LoaiThongTin_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `website_thongtin`
--

INSERT INTO `website_thongtin` (`id`, `GiaTri`, `HinhAnh`, `LoaiThongTin_id`) VALUES
(1, 'Cozyliving.vn', '', 1),
(2, '099.999.9999', '', 2),
(3, 'Trường Đại học CNTT - DHQG TP.HCM', '', 3),
(4, 'lienhe@cozyliving.vn', '', 4),
(5, 'CozyLiving.vn - Chúng tôi tạo nên không gian ấm cúng và đáng sống dành riêng cho bạn ', '', 5),
(6, NULL, 'uploads/Cozy Living Logo.png', 6),
(8, NULL, 'uploads/logo nhỏ.png', 7),
(10, '10', '', 9),
(11, '60000', '', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_giohang_MauSac_id_0c91fda1_fk_product_mausac_id` (`MauSac_id`),
  ADD KEY `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` (`SanPham_id`),
  ADD KEY `cart_giohang_KhachHang_id_cc1f0311` (`KhachHang_id`);

--
-- Indexes for table `contact_lienhe`
--
ALTER TABLE `contact_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_id` (`User_id`),
  ADD KEY `customer_khachhang_DuongDan_69604dd5` (`DuongDan`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news_tintuc`
--
ALTER TABLE `news_tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_tintuc_DuongDan_91dc3f60` (`DuongDan`);

--
-- Indexes for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` (`DonHang_id`),
  ADD KEY `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` (`SanPham_id`),
  ADD KEY `order_chitietdonhang_MauSac_id_cf199770_fk_product_mausac_id` (`MauSac_id`);

--
-- Indexes for table `order_donhang`
--
ALTER TABLE `order_donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` (`KhachHang_id`);

--
-- Indexes for table `product_chuyenmuc`
--
ALTER TABLE `product_chuyenmuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_chuyenmuc_DuongDan_e77170d5` (`DuongDan`);

--
-- Indexes for table `product_mausac`
--
ALTER TABLE `product_mausac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sanpham_TenSanPham_c5ee5702_uniq` (`TenSanPham`),
  ADD KEY `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` (`ChuyenMuc_id`),
  ADD KEY `product_sanpham_DuongDan_8974332b` (`DuongDan`);

--
-- Indexes for table `product_sanpham_mausac`
--
ALTER TABLE `product_sanpham_mausac`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sanpham_MauSac_sanpham_id_mausac_id_58907eba_uniq` (`sanpham_id`,`mausac_id`),
  ADD KEY `product_sanpham_MauSac_mausac_id_d0c72e0e_fk_product_mausac_id` (`mausac_id`);

--
-- Indexes for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` (`ChuyenMuc_id`);

--
-- Indexes for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_loaithongtin`
--
ALTER TABLE `website_loaithongtin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_nhataitro`
--
ALTER TABLE `website_nhataitro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_slide`
--
ALTER TABLE `website_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` (`ChuyenMuc_id`);

--
-- Indexes for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `website_thongtin_LoaiThongTin_id_d8d175d7_uniq` (`LoaiThongTin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `contact_lienhe`
--
ALTER TABLE `contact_lienhe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `news_tintuc`
--
ALTER TABLE `news_tintuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_donhang`
--
ALTER TABLE `order_donhang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_chuyenmuc`
--
ALTER TABLE `product_chuyenmuc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_mausac`
--
ALTER TABLE `product_mausac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_sanpham_mausac`
--
ALTER TABLE `product_sanpham_mausac`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_loaithongtin`
--
ALTER TABLE `website_loaithongtin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `website_nhataitro`
--
ALTER TABLE `website_nhataitro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `website_slide`
--
ALTER TABLE `website_slide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_giohang`
--
ALTER TABLE `cart_giohang`
  ADD CONSTRAINT `cart_giohang_KhachHang_id_cc1f0311_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`),
  ADD CONSTRAINT `cart_giohang_MauSac_id_0c91fda1_fk_product_mausac_id` FOREIGN KEY (`MauSac_id`) REFERENCES `product_mausac` (`id`),
  ADD CONSTRAINT `cart_giohang_SanPham_id_fce07c2b_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`);

--
-- Constraints for table `customer_khachhang`
--
ALTER TABLE `customer_khachhang`
  ADD CONSTRAINT `customer_khachhang_User_id_7e78d39d_fk_auth_user_id` FOREIGN KEY (`User_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `order_chitietdonhang`
--
ALTER TABLE `order_chitietdonhang`
  ADD CONSTRAINT `order_chitietdonhang_DonHang_id_1115646e_fk_order_donhang_id` FOREIGN KEY (`DonHang_id`) REFERENCES `order_donhang` (`id`),
  ADD CONSTRAINT `order_chitietdonhang_MauSac_id_cf199770_fk_product_mausac_id` FOREIGN KEY (`MauSac_id`) REFERENCES `product_mausac` (`id`),
  ADD CONSTRAINT `order_chitietdonhang_SanPham_id_c606706e_fk_product_sanpham_id` FOREIGN KEY (`SanPham_id`) REFERENCES `product_sanpham` (`id`);

--
-- Constraints for table `order_donhang`
--
ALTER TABLE `order_donhang`
  ADD CONSTRAINT `order_donhang_KhachHang_id_593be4ef_fk_customer_khachhang_id` FOREIGN KEY (`KhachHang_id`) REFERENCES `customer_khachhang` (`id`);

--
-- Constraints for table `product_sanpham`
--
ALTER TABLE `product_sanpham`
  ADD CONSTRAINT `product_sanpham_ChuyenMuc_id_4f786436_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_bannerbottom`
--
ALTER TABLE `website_bannerbottom`
  ADD CONSTRAINT `website_bannerbottom_ChuyenMuc_id_46c47830_fk_product_c` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_bannermid`
--
ALTER TABLE `website_bannermid`
  ADD CONSTRAINT `website_bannermid_ChuyenMuc_id_7759a49b_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_bannertop`
--
ALTER TABLE `website_bannertop`
  ADD CONSTRAINT `website_bannertop_ChuyenMuc_id_d2d3bac7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_slide`
--
ALTER TABLE `website_slide`
  ADD CONSTRAINT `website_slide_ChuyenMuc_id_43ea82c7_fk_product_chuyenmuc_id` FOREIGN KEY (`ChuyenMuc_id`) REFERENCES `product_chuyenmuc` (`id`);

--
-- Constraints for table `website_thongtin`
--
ALTER TABLE `website_thongtin`
  ADD CONSTRAINT `website_thongtin_LoaiThongTin_id_d8d175d7_fk_website_l` FOREIGN KEY (`LoaiThongTin_id`) REFERENCES `website_loaithongtin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
