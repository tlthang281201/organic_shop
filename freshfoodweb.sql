-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 09, 2023 lúc 08:26 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freshfoodweb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `scontent` varchar(500) NOT NULL,
  `content` longtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `published` int(1) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `scontent`, `content`, `thumb`, `published`, `alias`, `create_date`, `views`) VALUES
(1, 'Học cách chế biến món canh ngao dứa cà chua thanh mát, ngon ngọt', 'Thời tiết mùa hè oi bức khiến khẩu vị thưởng thức món ăn của bạn không còn ngon hơn trước, để điều chỉnh lại vị giác của bản thân. Bếp Thực phẩm Nhanh xin bật mí cách chế biến món canh ngao dứa cà chu', 'Thời tiết mùa hè oi bức khiến khẩu vị thưởng thức món ăn của bạn không còn ngon hơn trước, để điều chỉnh lại vị giác của bản thân. Bếp Thực phẩm Nhanh xin bật mí cách chế biến món canh ngao dứa cà chua đầy ngon ngọt, thanh mát giúp F5 cho đầu lưỡi của bạn. Nào hãy cùng tham khảo ngay nhé!', '1.jpg', 1, 'hoc-cach-che-bien', '2023-08-30 18:01:22', 12),
(2, 'Món chay nấm hương nhồi đậu hũ sốt cà ngọt tuyệt trong ngày mùng 1', 'Cùng bắt tay thực hiện món chay nấm hương nhồi đậu hũ sốt cà từ công thức Bếp Thực Phẩm Nhanh  trong ngày mùng 1 tháng mới bình an. Cùng tham khảo nhé!', 'Cùng bắt tay thực hiện món chay nấm hương nhồi đậu hũ sốt cà từ công thức Bếp Thực Phẩm Nhanh  trong ngày mùng 1 tháng mới bình an. Cùng tham khảo nhé!', '2.jpg', 1, 'nam-huong-nhoi-dau-hu', '2023-08-30 18:15:35', 1),
(3, 'Bí quyết nấu lẩu ếch măng chua vô', 'Cùng bắt tay thực hiện món chay nấm hương nhồi đậu hũ sốt cà từ công thức Bếp Thực Phẩm Nhanh trong ngày mùng 1 tháng mới bình an. Cùng tham khảo nhé!', 'Cùng bắt tay thực hiện món chay nấm hương nhồi đậu hũ sốt cà từ công thức Bếp Thực Phẩm Nhanh trong ngày mùng 1 tháng mới bình an. Cùng tham khảo nhé!', '3.jpg', 1, 'nam-huong-nhoi-dau-hu-2', '2023-08-30 18:15:35', 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `blog_id`, `name`, `comment`, `create_date`) VALUES
(1, 2, 'thắng', 'blog này hay quá', '2023-09-01'),
(20, 3, 'huy', 'blog hay qua', '2023-09-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `published` int(1) NOT NULL,
  `alias` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `published`, `alias`) VALUES
(1, 'Rau củ quả', 'rau củ quả', 1, 'rau-cu-qua'),
(2, 'Trái cây', 'trái cây', 1, 'trai-cay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cities`
--

CREATE TABLE `cities` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `cities`
--

INSERT INTO `cities` (`id`, `name`, `type`) VALUES
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(300) NOT NULL,
  `message` text NOT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `create_date`) VALUES
(9, 'adad', NULL, 'dâd', 'adada', '2023-09-03'),
(10, 'adaddad', NULL, 'ada', 'adadad', '2023-09-03'),
(11, 'qưdqd', NULL, 'đưqqđ', 'dqwdqwdqwd', '2023-09-03'),
(12, 'ada', NULL, 'adad', 'đaad', '2023-09-03'),
(13, 'ad', NULL, 'a', 'a', '2023-09-03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` int(1) NOT NULL,
  `expire_date` date NOT NULL,
  `quantity` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `max_discount` int(11) DEFAULT NULL,
  `total_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `type`, `expire_date`, `quantity`, `value`, `max_discount`, `total_order`) VALUES
(1, 'Code giảm giá 2/9', 'pok2mKduip', 1, '2023-09-09', 18, 10, 100000, 100000),
(2, 'Code giảm giá 30/4', 'MIk2OKdhuy', 2, '2023-09-10', 19, 100000, NULL, 300000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `districts`
--

CREATE TABLE `districts` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `districts`
--

INSERT INTO `districts` (`id`, `name`, `type`, `city_id`) VALUES
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_code` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `ship_date` date DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `deleted` int(1) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `paid` int(1) NOT NULL,
  `pay_date` datetime DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `shipper_id` int(11) DEFAULT NULL,
  `city` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `ward` int(6) NOT NULL,
  `address` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `order_code`, `user_id`, `order_date`, `ship_date`, `status`, `deleted`, `payment_id`, `paid`, `pay_date`, `note`, `shipper_id`, `city`, `district`, `ward`, `address`, `subtotal`, `discount`, `total`) VALUES
(3, '31d488606f', 4, '2023-09-09 01:17:58', NULL, 'Chưa giao hàng', 0, 2, 0, NULL, NULL, NULL, 49, 504, 20446, 'k hoàng diệu', 1270000, 100000, 1170000),
(4, '7120c2cf1c', 4, '2023-09-09 01:24:45', NULL, 'Chưa giao hàng', 0, 1, 0, NULL, 'adadadad', NULL, 46, 477, 19873, 'k5020', 1270000, 100000, 1170000),
(5, '57ef283a1c', 4, '2023-09-09 01:30:12', NULL, 'Chưa giao hàng', 0, 1, 0, NULL, NULL, NULL, 49, 505, 20476, 'khoang', 1270000, 100000, 1170000),
(6, 'd6e7be34d4', 4, '2023-09-09 01:31:17', NULL, 'Chưa giao hàng', 0, 1, 0, NULL, NULL, NULL, 48, 492, 20239, 'dqwdqdqw', 1270000, 100000, 1170000),
(7, 'df4742d41e', 4, '2023-09-10 00:24:41', NULL, 'Chưa giao hàng', 0, 2, 0, NULL, NULL, NULL, 48, 492, 20248, 'hoàng diệu', 620000, 100000, 520000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `total`) VALUES
(4, 3, 2, 10, 310000),
(5, 3, 3, 20, 160000),
(6, 3, 1, 40, 800000),
(7, 4, 2, 10, 310000),
(8, 4, 3, 20, 160000),
(9, 4, 1, 40, 800000),
(10, 6, 2, 10, 310000),
(11, 6, 3, 20, 160000),
(12, 6, 1, 40, 800000),
(13, 7, 2, 20, 620000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `sdescription` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `cate_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `featured` int(1) NOT NULL,
  `published` int(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `alias` varchar(300) NOT NULL,
  `stocks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `sdescription`, `description`, `cate_id`, `price`, `unit`, `discount`, `featured`, `published`, `create_date`, `alias`, `stocks`) VALUES
(1, 'Bắp cải tím', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5.', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 1, 20000, 'kg', NULL, 1, 1, '2023-08-25 14:47:02', 'qua-bo', 1000),
(2, 'Quả bơ', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 2, 31000, 'kg', NULL, 1, 1, '2023-08-25 21:06:19', 'bi-dao', 980),
(3, 'Bí đao', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 1, 15000, 'gam', 8000, 1, 1, '2023-08-25 21:06:19', 'bap-cai', 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comment`
--

CREATE TABLE `product_comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comment`
--

INSERT INTO `product_comment` (`id`, `product_id`, `user_id`, `name`, `comment`, `create_date`) VALUES
(1, 1, 1, 'thắng', 'bán uy tín', '2023-08-25 21:10:02'),
(2, 2, 3, 'tuấn', 'bán nhanh uy tín', '2023-08-25 21:10:37'),
(3, 3, 2, 'nga', 'bán nhanh uy tín', '2023-08-25 21:10:37'),
(4, 1, 4, 'quỳnh', 'bán nhanh uy tín', '2023-08-25 21:10:37'),
(5, 1, NULL, 'Thắng', 'bán nhanh', '2023-08-27 00:11:31'),
(6, 3, NULL, 'tuấn', 'bán nhanh uy tín', '2023-08-29 23:56:10'),
(24, 3, NULL, 'ada', 'dqwdqwdqwdqwd', '2023-09-03 02:00:28'),
(25, 3, NULL, 'qưdqwd', 'dqwdqwdqwdqdw', '2023-09-03 02:00:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_image`
--

CREATE TABLE `product_image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_image`
--

INSERT INTO `product_image` (`id`, `product_id`, `path`) VALUES
(1, 1, 'bapcai.jpg'),
(2, 1, 'bidao.jpg'),
(3, 2, 'hanh (1).jpg'),
(4, 2, 'hanh (2).jpg'),
(5, 3, 'bapcaitim.jpg'),
(6, 3, 'bap (2).png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `shippers`
--

CREATE TABLE `shippers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `shippers`
--

INSERT INTO `shippers` (`id`, `name`, `phone`, `address`) VALUES
(1, 'Tấn Lộc', '0123332221', 'hoàng diệu'),
(2, 'Nam Khoa', '0272898227', 'ngô quyền'),
(3, 'Quang thắng', '0278292819', 'ngô quyền');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `level` int(1) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT current_timestamp(),
  `email_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `level`, `address`, `district`, `ward`, `city`, `password`, `remember_token`, `create_date`, `email_verified_at`) VALUES
(1, 'Trần Lý Thắng', 'abc@gmail.com', '0926069058', 0, 'k572/72 ông ích khiêm', 'Hải châu', 'Hải châu 2', 'Đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL),
(3, 'Nguyễn Văn A', 'abcd@gmail.com', '0243220339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL),
(4, 'Trần Văn B', 'abc1@gmail.com', '0243122339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', 'bmslWtDZVPmpv4ZaB3xoaUvNHxVfV3m3FHXSDvt4qv5D2yQVBIDm3Z2CAym8', NULL, NULL),
(5, 'Ngô Văn Thắng', 'abc2@gmail.com', '0223310339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', 'Fsusdk4BSIdoOTDe6I67igYZN9gKQUZd7aUyRBfx9EW2gZ8kzj3jc4Lxb7po', NULL, NULL),
(13, 'Trần Thắng', 'abc3@gmail.com', '0232352399', 0, NULL, NULL, NULL, NULL, '$2y$10$YL7f9L7ijeMBlW2rJa74BeMzpyUzp.aZf72XJ0uOfaiCO9My8Joa2', 'QPBtFaVvQrbj92sc84wD3H4OGovCb3kQnz38MaR9bPfbSS6YttBdulyCtYCN', '2023-09-06 00:52:07', NULL),
(14, 'thắng', 'abc4@gmail.com', '012312392', 0, NULL, NULL, NULL, NULL, '$2y$10$kIO.plklWPXCB8MTlH9sr.giulqhQF/o0HLNvj9.xu4xuoCQElUri', NULL, '2023-09-06 15:10:55', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `wards`
--

CREATE TABLE `wards` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `wards`
--

INSERT INTO `wards` (`id`, `name`, `type`, `district_id`) VALUES
(19330, 'Phường Đông Giang', 'Phường', 461),
(19333, 'Phường 1', 'Phường', 461),
(19336, 'Phường Đông Lễ', 'Phường', 461),
(19339, 'Phường Đông Thanh', 'Phường', 461),
(19342, 'Phường 2', 'Phường', 461),
(19345, 'Phường 4', 'Phường', 461),
(19348, 'Phường 5', 'Phường', 461),
(19351, 'Phường Đông Lương', 'Phường', 461),
(19354, 'Phường 3', 'Phường', 461),
(19357, 'Phường 1', 'Phường', 462),
(19358, 'Phường An Đôn', 'Phường', 462),
(19360, 'Phường 2', 'Phường', 462),
(19361, 'Phường 3', 'Phường', 462),
(19363, 'Thị trấn Hồ Xá', 'Thị trấn', 464),
(19366, 'Thị trấn Bến Quan', 'Thị trấn', 464),
(19369, 'Xã Vĩnh Thái', 'Xã', 464),
(19372, 'Xã Vĩnh Tú', 'Xã', 464),
(19375, 'Xã Vĩnh Chấp', 'Xã', 464),
(19378, 'Xã Vĩnh Trung', 'Xã', 464),
(19381, 'Xã Vĩnh Kim', 'Xã', 464),
(19384, 'Xã Vĩnh Thạch', 'Xã', 464),
(19387, 'Xã Vĩnh Long', 'Xã', 464),
(19390, 'Xã Vĩnh Nam', 'Xã', 464),
(19393, 'Xã Vĩnh Khê', 'Xã', 464),
(19396, 'Xã Vĩnh Hòa', 'Xã', 464),
(19399, 'Xã Vĩnh Hiền', 'Xã', 464),
(19402, 'Xã Vĩnh Thủy', 'Xã', 464),
(19405, 'Xã Vĩnh Lâm', 'Xã', 464),
(19408, 'Xã Vĩnh Thành', 'Xã', 464),
(19411, 'Xã Vĩnh Tân', 'Xã', 464),
(19414, 'Thị trấn Cửa Tùng', 'Thị trấn', 464),
(19417, 'Xã Vĩnh Hà', 'Xã', 464),
(19420, 'Xã Vĩnh Sơn', 'Xã', 464),
(19423, 'Xã Vĩnh Giang', 'Xã', 464),
(19426, 'Xã Vĩnh Ô', 'Xã', 464),
(19429, 'Thị trấn Khe Sanh', 'Thị trấn', 465),
(19432, 'Thị trấn Lao Bảo', 'Thị trấn', 465),
(19435, 'Xã Hướng Lập', 'Xã', 465),
(19438, 'Xã Hướng Việt', 'Xã', 465),
(19441, 'Xã Hướng Phùng', 'Xã', 465),
(19444, 'Xã Hướng Sơn', 'Xã', 465),
(19447, 'Xã Hướng Linh', 'Xã', 465),
(19450, 'Xã Tân Hợp', 'Xã', 465),
(19453, 'Xã Hướng Tân', 'Xã', 465),
(19456, 'Xã Tân Thành', 'Xã', 465),
(19459, 'Xã Tân Long', 'Xã', 465),
(19462, 'Xã Tân Lập', 'Xã', 465),
(19465, 'Xã Tân Liên', 'Xã', 465),
(19468, 'Xã Húc', 'Xã', 465),
(19471, 'Xã Thuận', 'Xã', 465),
(19474, 'Xã Hướng Lộc', 'Xã', 465),
(19477, 'Xã Ba Tầng', 'Xã', 465),
(19480, 'Xã Thanh', 'Xã', 465),
(19483, 'Xã  A Dơi', 'Xã', 465),
(19486, 'Xã A Xing', 'Xã', 465),
(19489, 'Xã A Túc', 'Xã', 465),
(19492, 'Xã Xy', 'Xã', 465),
(19495, 'Thị trấn Gio Linh', 'Thị trấn', 466),
(19496, 'Thị trấn Cửa Việt', 'Thị trấn', 466),
(19498, 'Xã Trung Giang', 'Xã', 466),
(19501, 'Xã Trung Hải', 'Xã', 466),
(19504, 'Xã Trung Sơn', 'Xã', 466),
(19507, 'Xã Gio Phong', 'Xã', 466),
(19510, 'Xã Gio Mỹ', 'Xã', 466),
(19513, 'Xã Vĩnh Trường', 'Xã', 466),
(19516, 'Xã Gio Bình', 'Xã', 466),
(19519, 'Xã Gio Hải', 'Xã', 466),
(19522, 'Xã Gio An', 'Xã', 466),
(19525, 'Xã Gio Châu', 'Xã', 466),
(19528, 'Xã Gio Thành', 'Xã', 466),
(19531, 'Xã Gio Việt', 'Xã', 466),
(19534, 'Xã Linh Thượng', 'Xã', 466),
(19537, 'Xã Gio Sơn', 'Xã', 466),
(19540, 'Xã Gio Hòa', 'Xã', 466),
(19543, 'Xã Gio Mai', 'Xã', 466),
(19546, 'Xã Hải Thái', 'Xã', 466),
(19549, 'Xã Linh Hải', 'Xã', 466),
(19552, 'Xã Gio Quang', 'Xã', 466),
(19555, 'Thị trấn Krông Klang', 'Thị trấn', 467),
(19558, 'Xã Mò Ó', 'Xã', 467),
(19561, 'Xã Hướng Hiệp', 'Xã', 467),
(19564, 'Xã Đa Krông', 'Xã', 467),
(19567, 'Xã Triệu Nguyên', 'Xã', 467),
(19570, 'Xã Ba Lòng', 'Xã', 467),
(19573, 'Xã Hải Phúc', 'Xã', 467),
(19576, 'Xã Ba Nang', 'Xã', 467),
(19579, 'Xã Tà Long', 'Xã', 467),
(19582, 'Xã Húc Nghì', 'Xã', 467),
(19585, 'Xã A Vao', 'Xã', 467),
(19588, 'Xã Tà Rụt', 'Xã', 467),
(19591, 'Xã A Bung', 'Xã', 467),
(19594, 'Xã A Ngo', 'Xã', 467),
(19597, 'Thị trấn Cam Lộ', 'Thị trấn', 468),
(19600, 'Xã Cam Tuyền', 'Xã', 468),
(19603, 'Xã Cam An', 'Xã', 468),
(19606, 'Xã Cam Thủy', 'Xã', 468),
(19609, 'Xã Cam Thanh', 'Xã', 468),
(19612, 'Xã Cam Thành', 'Xã', 468),
(19615, 'Xã Cam Hiếu', 'Xã', 468),
(19618, 'Xã Cam Chính', 'Xã', 468),
(19621, 'Xã Cam Nghĩa', 'Xã', 468),
(19624, 'Thị Trấn Ái Tử', 'Thị trấn', 469),
(19627, 'Xã Triệu An', 'Xã', 469),
(19630, 'Xã Triệu Vân', 'Xã', 469),
(19633, 'Xã Triệu Phước', 'Xã', 469),
(19636, 'Xã Triệu Độ', 'Xã', 469),
(19639, 'Xã Triệu Trạch', 'Xã', 469),
(19642, 'Xã Triệu Thuận', 'Xã', 469),
(19645, 'Xã Triệu Đại', 'Xã', 469),
(19648, 'Xã Triệu Hòa', 'Xã', 469),
(19651, 'Xã Triệu Lăng', 'Xã', 469),
(19654, 'Xã Triệu Sơn', 'Xã', 469),
(19657, 'Xã Triệu Long', 'Xã', 469),
(19660, 'Xã Triệu Tài', 'Xã', 469),
(19663, 'Xã Triệu Đông', 'Xã', 469),
(19666, 'Xã Triệu Trung', 'Xã', 469),
(19669, 'Xã Triệu Ái', 'Xã', 469),
(19672, 'Xã Triệu Thượng', 'Xã', 469),
(19675, 'Xã Triệu Giang', 'Xã', 469),
(19678, 'Xã Triệu Thành', 'Xã', 469),
(19681, 'Thị trấn Hải Lăng', 'Thị trấn', 470),
(19684, 'Xã Hải An', 'Xã', 470),
(19687, 'Xã Hải Ba', 'Xã', 470),
(19690, 'Xã Hải Xuân', 'Xã', 470),
(19693, 'Xã Hải Quy', 'Xã', 470),
(19696, 'Xã Hải Quế', 'Xã', 470),
(19699, 'Xã Hải Vĩnh', 'Xã', 470),
(19702, 'Xã Hải Phú', 'Xã', 470),
(19705, 'Xã Hải Lệ', 'Xã', 462),
(19708, 'Xã Hải Thượng', 'Xã', 470),
(19711, 'Xã Hải Dương', 'Xã', 470),
(19714, 'Xã Hải Thiện', 'Xã', 470),
(19717, 'Xã Hải Lâm', 'Xã', 470),
(19720, 'Xã Hải Thành', 'Xã', 470),
(19723, 'Xã Hải Hòa', 'Xã', 470),
(19726, 'Xã Hải Tân', 'Xã', 470),
(19729, 'Xã Hải Trường', 'Xã', 470),
(19732, 'Xã Hải Thọ', 'Xã', 470),
(19735, 'Xã Hải Sơn', 'Xã', 470),
(19738, 'Xã Hải Chánh', 'Xã', 470),
(19741, 'Xã Hải Khê', 'Xã', 470),
(19744, 'Phường Phú Thuận', 'Phường', 474),
(19747, 'Phường Phú Bình', 'Phường', 474),
(19750, 'Phường Tây Lộc', 'Phường', 474),
(19753, 'Phường Thuận Lộc', 'Phường', 474),
(19756, 'Phường Phú Hiệp', 'Phường', 474),
(19759, 'Phường Phú Hậu', 'Phường', 474),
(19762, 'Phường Thuận Hòa', 'Phường', 474),
(19765, 'Phường Thuận Thành', 'Phường', 474),
(19768, 'Phường Phú Hòa', 'Phường', 474),
(19771, 'Phường Phú Cát', 'Phường', 474),
(19774, 'Phường Kim Long', 'Phường', 474),
(19777, 'Phường Vĩ Dạ', 'Phường', 474),
(19780, 'Phường Phường Đúc', 'Phường', 474),
(19783, 'Phường Vĩnh Ninh', 'Phường', 474),
(19786, 'Phường Phú Hội', 'Phường', 474),
(19789, 'Phường Phú Nhuận', 'Phường', 474),
(19792, 'Phường Xuân Phú', 'Phường', 474),
(19795, 'Phường Trường An', 'Phường', 474),
(19798, 'Phường Phước Vĩnh', 'Phường', 474),
(19801, 'Phường An Cựu', 'Phường', 474),
(19803, 'Phường An Hòa', 'Phường', 474),
(19804, 'Phường Hương Sơ', 'Phường', 474),
(19807, 'Phường Thuỷ Biều', 'Phường', 474),
(19810, 'Phường Hương Long', 'Phường', 474),
(19813, 'Phường Thuỷ Xuân', 'Phường', 474),
(19815, 'Phường An Đông', 'Phường', 474),
(19816, 'Phường An Tây', 'Phường', 474),
(19819, 'Thị trấn Phong Điền', 'Thị trấn', 476),
(19822, 'Xã Điền Hương', 'Xã', 476),
(19825, 'Xã Điền Môn', 'Xã', 476),
(19828, 'Xã Điền Lộc', 'Xã', 476),
(19831, 'Xã Phong Bình', 'Xã', 476),
(19834, 'Xã Điền Hòa', 'Xã', 476),
(19837, 'Xã Phong Chương', 'Xã', 476),
(19840, 'Xã Phong Hải', 'Xã', 476),
(19843, 'Xã Điền Hải', 'Xã', 476),
(19846, 'Xã Phong Hòa', 'Xã', 476),
(19849, 'Xã Phong Thu', 'Xã', 476),
(19852, 'Xã Phong Hiền', 'Xã', 476),
(19855, 'Xã Phong Mỹ', 'Xã', 476),
(19858, 'Xã Phong An', 'Xã', 476),
(19861, 'Xã Phong Xuân', 'Xã', 476),
(19864, 'Xã Phong Sơn', 'Xã', 476),
(19867, 'Thị trấn Sịa', 'Thị trấn', 477),
(19870, 'Xã Quảng Thái', 'Xã', 477),
(19873, 'Xã Quảng Ngạn', 'Xã', 477),
(19876, 'Xã Quảng Lợi', 'Xã', 477),
(19879, 'Xã Quảng Công', 'Xã', 477),
(19882, 'Xã Quảng Phước', 'Xã', 477),
(19885, 'Xã Quảng Vinh', 'Xã', 477),
(19888, 'Xã Quảng An', 'Xã', 477),
(19891, 'Xã Quảng Thành', 'Xã', 477),
(19894, 'Xã Quảng Thọ', 'Xã', 477),
(19897, 'Xã Quảng Phú', 'Xã', 477),
(19900, 'Thị trấn Thuận An', 'Thị trấn', 478),
(19903, 'Xã Phú Thuận', 'Xã', 478),
(19906, 'Xã Phú Dương', 'Xã', 478),
(19909, 'Xã Phú Mậu', 'Xã', 478),
(19912, 'Xã Phú An', 'Xã', 478),
(19915, 'Xã Phú Hải', 'Xã', 478),
(19918, 'Xã Phú Xuân', 'Xã', 478),
(19921, 'Xã Phú Diên', 'Xã', 478),
(19924, 'Xã Phú Thanh', 'Xã', 478),
(19927, 'Xã Phú Mỹ', 'Xã', 478),
(19930, 'Xã Phú Thượng', 'Xã', 478),
(19933, 'Xã Phú Hồ', 'Xã', 478),
(19936, 'Xã Vinh Xuân', 'Xã', 478),
(19939, 'Xã Phú Lương', 'Xã', 478),
(19942, 'Thị trấn Phú Đa', 'Thị trấn', 478),
(19945, 'Xã Vinh Thanh', 'Xã', 478),
(19948, 'Xã Vinh An', 'Xã', 478),
(19951, 'Xã Vinh Phú', 'Xã', 478),
(19954, 'Xã Vinh Thái', 'Xã', 478),
(19957, 'Xã Vinh Hà', 'Xã', 478),
(19960, 'Phường Phú Bài', 'Phường', 479),
(19963, 'Xã Thủy Vân', 'Xã', 479),
(19966, 'Xã Thủy Thanh', 'Xã', 479),
(19969, 'Phường Thủy Dương', 'Phường', 479),
(19972, 'Phường Thủy Phương', 'Phường', 479),
(19975, 'Phường Thủy Châu', 'Phường', 479),
(19978, 'Phường Thủy Lương', 'Phường', 479),
(19981, 'Xã Thủy Bằng', 'Xã', 479),
(19984, 'Xã Thủy Tân', 'Xã', 479),
(19987, 'Xã Thủy Phù', 'Xã', 479),
(19990, 'Xã Phú Sơn', 'Xã', 479),
(19993, 'Xã Dương Hòa', 'Xã', 479),
(19996, 'Phường Tứ Hạ', 'Phường', 480),
(19999, 'Xã Hải Dương', 'Xã', 480),
(20002, 'Xã Hương Phong', 'Xã', 480),
(20005, 'Xã Hương Toàn', 'Xã', 480),
(20008, 'Phường Hương Vân', 'Phường', 480),
(20011, 'Phường Hương Văn', 'Phường', 480),
(20014, 'Xã Hương Vinh', 'Xã', 480),
(20017, 'Phường Hương Xuân', 'Phường', 480),
(20020, 'Phường Hương Chữ', 'Phường', 480),
(20023, 'Phường Hương An', 'Phường', 480),
(20026, 'Xã Hương Bình', 'Xã', 480),
(20029, 'Phường Hương Hồ', 'Phường', 480),
(20032, 'Xã Hương Thọ', 'Xã', 480),
(20035, 'Xã Bình Điền', 'Xã', 480),
(20038, 'Xã Hồng Tiến', 'Xã', 480),
(20041, 'Xã Bình Thành', 'Xã', 480),
(20044, 'Thị trấn A Lưới', 'Thị trấn', 481),
(20047, 'Xã Hồng Vân', 'Xã', 481),
(20050, 'Xã Hồng Hạ', 'Xã', 481),
(20053, 'Xã Hồng Kim', 'Xã', 481),
(20056, 'Xã Hồng Trung', 'Xã', 481),
(20059, 'Xã Hương Nguyên', 'Xã', 481),
(20062, 'Xã Bắc Sơn', 'Xã', 481),
(20065, 'Xã Hồng Bắc', 'Xã', 481),
(20068, 'Xã A Ngo', 'Xã', 481),
(20071, 'Xã Sơn Thủy', 'Xã', 481),
(20074, 'Xã Phú Vinh', 'Xã', 481),
(20077, 'Xã Hồng Quảng', 'Xã', 481),
(20080, 'Xã Hương Phong', 'Xã', 481),
(20083, 'Xã Nhâm', 'Xã', 481),
(20086, 'Xã Hồng Thượng', 'Xã', 481),
(20089, 'Xã Hồng Thái', 'Xã', 481),
(20092, 'Xã Hương Lâm', 'Xã', 481),
(20095, 'Xã A Roằng', 'Xã', 481),
(20098, 'Xã Đông Sơn', 'Xã', 481),
(20101, 'Xã A Đớt', 'Xã', 481),
(20104, 'Xã Hồng Thủy', 'Xã', 481),
(20107, 'Thị trấn Phú Lộc', 'Thị trấn', 482),
(20110, 'Thị trấn Lăng Cô', 'Thị trấn', 482),
(20113, 'Xã Vinh Mỹ', 'Xã', 482),
(20116, 'Xã Vinh Hưng', 'Xã', 482),
(20119, 'Xã Vinh Hải', 'Xã', 482),
(20122, 'Xã Vinh Giang', 'Xã', 482),
(20125, 'Xã Vinh Hiền', 'Xã', 482),
(20128, 'Xã Lộc Bổn', 'Xã', 482),
(20131, 'Xã Lộc Sơn', 'Xã', 482),
(20134, 'Xã Lộc Bình', 'Xã', 482),
(20137, 'Xã Lộc Vĩnh', 'Xã', 482),
(20140, 'Xã Lộc An', 'Xã', 482),
(20143, 'Xã Lộc Điền', 'Xã', 482),
(20146, 'Xã Lộc Thủy', 'Xã', 482),
(20149, 'Xã Lộc Trì', 'Xã', 482),
(20152, 'Xã Lộc Tiến', 'Xã', 482),
(20155, 'Xã Lộc Hòa', 'Xã', 482),
(20158, 'Xã Xuân Lộc', 'Xã', 482),
(20161, 'Thị trấn Khe Tre', 'Thị trấn', 483),
(20164, 'Xã Hương Phú', 'Xã', 483),
(20167, 'Xã Hương Sơn', 'Xã', 483),
(20170, 'Xã Hương Lộc', 'Xã', 483),
(20173, 'Xã Thượng Quảng', 'Xã', 483),
(20176, 'Xã Hương Hòa', 'Xã', 483),
(20179, 'Xã Hương Giang', 'Xã', 483),
(20182, 'Xã Hương Hữu', 'Xã', 483),
(20185, 'Xã Thượng Lộ', 'Xã', 483),
(20188, 'Xã Thượng Long', 'Xã', 483),
(20191, 'Xã Thượng Nhật', 'Xã', 483),
(20194, 'Phường Hòa Hiệp Bắc', 'Phường', 490),
(20195, 'Phường Hòa Hiệp Nam', 'Phường', 490),
(20197, 'Phường Hòa Khánh Bắc', 'Phường', 490),
(20198, 'Phường Hòa Khánh Nam', 'Phường', 490),
(20200, 'Phường Hòa Minh', 'Phường', 490),
(20203, 'Phường Tam Thuận', 'Phường', 491),
(20206, 'Phường Thanh Khê Tây', 'Phường', 491),
(20207, 'Phường Thanh Khê Đông', 'Phường', 491),
(20209, 'Phường Xuân Hà', 'Phường', 491),
(20212, 'Phường Tân Chính', 'Phường', 491),
(20215, 'Phường Chính Gián', 'Phường', 491),
(20218, 'Phường Vĩnh Trung', 'Phường', 491),
(20221, 'Phường Thạc Gián', 'Phường', 491),
(20224, 'Phường An Khê', 'Phường', 491),
(20225, 'Phường Hòa Khê', 'Phường', 491),
(20227, 'Phường Thanh Bình', 'Phường', 492),
(20230, 'Phường Thuận Phước', 'Phường', 492),
(20233, 'Phường Thạch Thang', 'Phường', 492),
(20236, 'Phường Hải Châu  I', 'Phường', 492),
(20239, 'Phường Hải Châu II', 'Phường', 492),
(20242, 'Phường Phước Ninh', 'Phường', 492),
(20245, 'Phường Hòa Thuận Tây', 'Phường', 492),
(20246, 'Phường Hòa Thuận Đông', 'Phường', 492),
(20248, 'Phường Nam Dương', 'Phường', 492),
(20251, 'Phường Bình Hiên', 'Phường', 492),
(20254, 'Phường Bình Thuận', 'Phường', 492),
(20257, 'Phường Hòa Cường Bắc', 'Phường', 492),
(20258, 'Phường Hòa Cường Nam', 'Phường', 492),
(20260, 'Phường Khuê Trung', 'Phường', 495),
(20263, 'Phường Thọ Quang', 'Phường', 493),
(20266, 'Phường Nại Hiên Đông', 'Phường', 493),
(20269, 'Phường Mân Thái', 'Phường', 493),
(20272, 'Phường An Hải Bắc', 'Phường', 493),
(20275, 'Phường Phước Mỹ', 'Phường', 493),
(20278, 'Phường An Hải Tây', 'Phường', 493),
(20281, 'Phường An Hải Đông', 'Phường', 493),
(20284, 'Phường Mỹ An', 'Phường', 494),
(20285, 'Phường Khuê Mỹ', 'Phường', 494),
(20287, 'Phường Hoà Quý', 'Phường', 494),
(20290, 'Phường Hoà Hải', 'Phường', 494),
(20293, 'Xã Hòa Bắc', 'Xã', 497),
(20296, 'Xã Hòa Liên', 'Xã', 497),
(20299, 'Xã Hòa Ninh', 'Xã', 497),
(20302, 'Xã Hòa Sơn', 'Xã', 497),
(20305, 'Phường Hòa Phát', 'Phường', 495),
(20306, 'Phường Hòa An', 'Phường', 495),
(20308, 'Xã Hòa Nhơn', 'Xã', 497),
(20311, 'Phường Hòa Thọ Tây', 'Phường', 495),
(20312, 'Phường Hòa Thọ Đông', 'Phường', 495),
(20314, 'Phường Hòa Xuân', 'Phường', 495),
(20317, 'Xã Hòa Phú', 'Xã', 497),
(20320, 'Xã Hòa Phong', 'Xã', 497),
(20323, 'Xã Hòa Châu', 'Xã', 497),
(20326, 'Xã Hòa Tiến', 'Xã', 497),
(20329, 'Xã Hòa Phước', 'Xã', 497),
(20332, 'Xã Hòa Khương', 'Xã', 497),
(20335, 'Phường Tân Thạnh', 'Phường', 502),
(20338, 'Phường Phước Hòa', 'Phường', 502),
(20341, 'Phường An Mỹ', 'Phường', 502),
(20344, 'Phường Hòa Hương', 'Phường', 502),
(20347, 'Phường An Xuân', 'Phường', 502),
(20350, 'Phường An Sơn', 'Phường', 502),
(20353, 'Phường Trường Xuân', 'Phường', 502),
(20356, 'Phường An Phú', 'Phường', 502),
(20359, 'Xã Tam Thanh', 'Xã', 502),
(20362, 'Xã Tam Thăng', 'Xã', 502),
(20364, 'Thị trấn Phú Thịnh', 'Thị trấn', 518),
(20365, 'Xã Tam Thành', 'Xã', 518),
(20368, 'Xã Tam An', 'Xã', 518),
(20371, 'Xã Tam Phú', 'Xã', 502),
(20374, 'Xã Tam Đàn', 'Xã', 518),
(20375, 'Phường Hoà Thuận', 'Phường', 502),
(20377, 'Xã Tam Lộc', 'Xã', 518),
(20380, 'Xã Tam Phước', 'Xã', 518),
(20383, 'Xã Tam Vinh', 'Xã', 518),
(20386, 'Xã Tam Thái', 'Xã', 518),
(20387, 'Xã Tam Đại', 'Xã', 518),
(20389, 'Xã Tam Ngọc', 'Xã', 502),
(20392, 'Xã Tam Dân', 'Xã', 518),
(20395, 'Xã Tam Lãnh', 'Xã', 518),
(20398, 'Phường Minh An', 'Phường', 503),
(20401, 'Phường Tân An', 'Phường', 503),
(20404, 'Phường Cẩm Phô', 'Phường', 503),
(20407, 'Phường Thanh Hà', 'Phường', 503),
(20410, 'Phường Sơn Phong', 'Phường', 503),
(20413, 'Phường Cẩm Châu', 'Phường', 503),
(20416, 'Phường Cửa Đại', 'Phường', 503),
(20419, 'Phường Cẩm An', 'Phường', 503),
(20422, 'Xã Cẩm Hà', 'Xã', 503),
(20425, 'Xã Cẩm Kim', 'Xã', 503),
(20428, 'Phường Cẩm Nam', 'Phường', 503),
(20431, 'Xã Cẩm Thanh', 'Xã', 503),
(20434, 'Xã Tân Hiệp', 'Xã', 503),
(20437, 'Xã Ch\'ơm', 'Xã', 504),
(20440, 'Xã Ga Ri', 'Xã', 504),
(20443, 'Xã A Xan', 'Xã', 504),
(20446, 'Xã Tr\'Hy', 'Xã', 504),
(20449, 'Xã Lăng', 'Xã', 504),
(20452, 'Xã A Nông', 'Xã', 504),
(20455, 'Xã A Tiêng', 'Xã', 504),
(20458, 'Xã Bha Lê', 'Xã', 504),
(20461, 'Xã A Vương', 'Xã', 504),
(20464, 'Xã Dang', 'Xã', 504),
(20467, 'Thị trấn P Rao', 'Thị trấn', 505),
(20470, 'Xã Tà Lu', 'Xã', 505),
(20473, 'Xã Sông Kôn', 'Xã', 505),
(20476, 'Xã Jơ Ngây', 'Xã', 505),
(20479, 'Xã A Ting', 'Xã', 505),
(20482, 'Xã  Tư', 'Xã', 505),
(20485, 'Xã Ba', 'Xã', 505),
(20488, 'Xã A Rooi', 'Xã', 505),
(20491, 'Xã Za Hung', 'Xã', 505),
(20494, 'Xã Mà Cooi', 'Xã', 505),
(20497, 'Xã Ka Dăng', 'Xã', 505),
(20500, 'Thị Trấn Ái Nghĩa', 'Thị trấn', 506),
(20503, 'Xã Đại Sơn', 'Xã', 506),
(20506, 'Xã Đại Lãnh', 'Xã', 506),
(20509, 'Xã Đại Hưng', 'Xã', 506),
(20512, 'Xã Đại Hồng', 'Xã', 506),
(20515, 'Xã Đại Đồng', 'Xã', 506),
(20518, 'Xã Đại Quang', 'Xã', 506),
(20521, 'Xã Đại Nghĩa', 'Xã', 506),
(20524, 'Xã Đại Hiệp', 'Xã', 506),
(20527, 'Xã Đại Thạnh', 'Xã', 506),
(20530, 'Xã Đại Chánh', 'Xã', 506),
(20533, 'Xã Đại Tân', 'Xã', 506),
(20536, 'Xã Đại Phong', 'Xã', 506),
(20539, 'Xã Đại Minh', 'Xã', 506),
(20542, 'Xã Đại Thắng', 'Xã', 506),
(20545, 'Xã Đại Cường', 'Xã', 506),
(20547, 'Xã Đại An', 'Xã', 506),
(20548, 'Xã Đại Hòa', 'Xã', 506),
(20551, 'Phường Vĩnh Điện', 'Phường', 507),
(20554, 'Xã Điện Tiến', 'Xã', 507),
(20557, 'Xã Điện Hòa', 'Xã', 507),
(20560, 'Xã Điện Thắng Bắc', 'Xã', 507),
(20561, 'Xã Điện Thắng Trung', 'Xã', 507),
(20562, 'Xã Điện Thắng Nam', 'Xã', 507),
(20563, 'Phường Điện Ngọc', 'Phường', 507),
(20566, 'Xã Điện Hồng', 'Xã', 507),
(20569, 'Xã Điện Thọ', 'Xã', 507),
(20572, 'Xã Điện Phước', 'Xã', 507),
(20575, 'Phường Điện An', 'Phường', 507),
(20578, 'Phường Điện Nam Bắc', 'Phường', 507),
(20579, 'Phường Điện Nam Trung', 'Phường', 507),
(20580, 'Phường Điện Nam Đông', 'Phường', 507),
(20581, 'Phường Điện Dương', 'Phường', 507),
(20584, 'Xã Điện Quang', 'Xã', 507),
(20587, 'Xã Điện Trung', 'Xã', 507),
(20590, 'Xã Điện Phong', 'Xã', 507),
(20593, 'Xã Điện Minh', 'Xã', 507),
(20596, 'Xã Điện Phương', 'Xã', 507),
(20599, 'Thị trấn Nam Phước', 'Thị trấn', 508),
(20602, 'Xã Duy Thu', 'Xã', 508),
(20605, 'Xã Duy Phú', 'Xã', 508),
(20608, 'Xã Duy Tân', 'Xã', 508),
(20611, 'Xã Duy Hòa', 'Xã', 508),
(20614, 'Xã Duy Châu', 'Xã', 508),
(20617, 'Xã Duy Trinh', 'Xã', 508),
(20620, 'Xã Duy Sơn', 'Xã', 508),
(20623, 'Xã Duy Trung', 'Xã', 508),
(20626, 'Xã Duy Phước', 'Xã', 508),
(20629, 'Xã Duy Thành', 'Xã', 508),
(20632, 'Xã Duy Vinh', 'Xã', 508),
(20635, 'Xã Duy Nghĩa', 'Xã', 508),
(20638, 'Xã Duy Hải', 'Xã', 508),
(20641, 'Thị trấn Đông Phú', 'Thị trấn', 509),
(20644, 'Xã Quế Xuân 1', 'Xã', 509),
(20647, 'Xã Quế Xuân 2', 'Xã', 509),
(20650, 'Xã Quế Phú', 'Xã', 509),
(20651, 'Xã Hương An', 'Xã', 509),
(20653, 'Xã Quế Cường', 'Xã', 509),
(20656, 'Xã Quế Trung', 'Xã', 519),
(20659, 'Xã Quế Hiệp', 'Xã', 509),
(20662, 'Xã Quế Thuận', 'Xã', 509),
(20665, 'Xã Phú Thọ', 'Xã', 509),
(20668, 'Xã Quế Ninh', 'Xã', 519),
(20669, 'Xã Phước Ninh', 'Xã', 519),
(20671, 'Xã Quế Lộc', 'Xã', 519),
(20672, 'Xã Sơn Viên', 'Xã', 519),
(20674, 'Xã Quế Phước', 'Xã', 519),
(20677, 'Xã Quế Long', 'Xã', 509),
(20680, 'Xã Quế Châu', 'Xã', 509),
(20683, 'Xã Quế Phong', 'Xã', 509),
(20686, 'Xã Quế An', 'Xã', 509),
(20689, 'Xã Quế Minh', 'Xã', 509),
(20692, 'Xã Quế Lâm', 'Xã', 519),
(20695, 'Thị trấn Thạnh Mỹ', 'Thị trấn', 510),
(20698, 'Xã Laêê', 'Xã', 510),
(20699, 'Xã Chơ Chun', 'Xã', 510),
(20701, 'Xã Zuôich', 'Xã', 510),
(20702, 'Xã Tà Pơơ', 'Xã', 510),
(20704, 'Xã La Dêê', 'Xã', 510),
(20705, 'Xã Đắc Tôi', 'Xã', 510),
(20707, 'Xã Chà Vàl', 'Xã', 510),
(20710, 'Xã Tà Bhinh', 'Xã', 510),
(20713, 'Xã Cà Dy', 'Xã', 510),
(20716, 'Xã Đắc Pre', 'Xã', 510),
(20719, 'Xã Đắc Pring', 'Xã', 510),
(20722, 'Thị trấn Khâm Đức', 'Thị trấn', 511),
(20725, 'Xã Phước Xuân', 'Xã', 511),
(20728, 'Xã Phước Hiệp', 'Xã', 511),
(20729, 'Xã Phước Hoà', 'Xã', 511),
(20731, 'Xã Phước Đức', 'Xã', 511),
(20734, 'Xã Phước Năng', 'Xã', 511),
(20737, 'Xã Phước Mỹ', 'Xã', 511),
(20740, 'Xã Phước Chánh', 'Xã', 511),
(20743, 'Xã Phước Công', 'Xã', 511),
(20746, 'Xã Phước Kim', 'Xã', 511),
(20749, 'Xã Phước Lộc', 'Xã', 511),
(20752, 'Xã Phước Thành', 'Xã', 511),
(20755, 'Thị trấn Tân An', 'Thị trấn', 512),
(20758, 'Xã Hiệp Hòa', 'Xã', 512),
(20761, 'Xã Hiệp Thuận', 'Xã', 512),
(20764, 'Xã Quế Thọ', 'Xã', 512),
(20767, 'Xã Bình Lâm', 'Xã', 512),
(20770, 'Xã Sông Trà', 'Xã', 512),
(20773, 'Xã Phước Trà', 'Xã', 512),
(20776, 'Xã Phước Gia', 'Xã', 512),
(20779, 'Xã Quế Bình', 'Xã', 512),
(20782, 'Xã Quế Lưu', 'Xã', 512),
(20785, 'Xã Thăng Phước', 'Xã', 512),
(20788, 'Xã Bình Sơn', 'Xã', 512),
(20791, 'Thị trấn Hà Lam', 'Thị trấn', 513),
(20794, 'Xã Bình Dương', 'Xã', 513),
(20797, 'Xã Bình Giang', 'Xã', 513),
(20800, 'Xã Bình Nguyên', 'Xã', 513),
(20803, 'Xã Bình Phục', 'Xã', 513),
(20806, 'Xã Bình Triều', 'Xã', 513),
(20809, 'Xã Bình Đào', 'Xã', 513),
(20812, 'Xã Bình Minh', 'Xã', 513),
(20815, 'Xã Bình Lãnh', 'Xã', 513),
(20818, 'Xã Bình Trị', 'Xã', 513),
(20821, 'Xã Bình Định Bắc', 'Xã', 513),
(20822, 'Xã Bình Định Nam', 'Xã', 513),
(20824, 'Xã Bình Quý', 'Xã', 513),
(20827, 'Xã Bình Phú', 'Xã', 513),
(20830, 'Xã Bình Chánh', 'Xã', 513),
(20833, 'Xã Bình Tú', 'Xã', 513),
(20836, 'Xã Bình Sa', 'Xã', 513),
(20839, 'Xã Bình Hải', 'Xã', 513),
(20842, 'Xã Bình Quế', 'Xã', 513),
(20845, 'Xã Bình An', 'Xã', 513),
(20848, 'Xã Bình Trung', 'Xã', 513),
(20851, 'Xã Bình Nam', 'Xã', 513),
(20854, 'Thị trấn Tiên Kỳ', 'Thị trấn', 514),
(20857, 'Xã Tiên Sơn', 'Xã', 514),
(20860, 'Xã Tiên Hà', 'Xã', 514),
(20863, 'Xã Tiên Cẩm', 'Xã', 514),
(20866, 'Xã Tiên Châu', 'Xã', 514),
(20869, 'Xã Tiên Lãnh', 'Xã', 514),
(20872, 'Xã Tiên Ngọc', 'Xã', 514),
(20875, 'Xã Tiên Hiệp', 'Xã', 514),
(20878, 'Xã Tiên Cảnh', 'Xã', 514),
(20881, 'Xã Tiên Mỹ', 'Xã', 514),
(20884, 'Xã Tiên Phong', 'Xã', 514),
(20887, 'Xã Tiên Thọ', 'Xã', 514),
(20890, 'Xã Tiên An', 'Xã', 514),
(20893, 'Xã Tiên Lộc', 'Xã', 514),
(20896, 'Xã Tiên Lập', 'Xã', 514),
(20899, 'Thị trấn Trà My', 'Thị trấn', 515),
(20900, 'Xã Trà Sơn', 'Xã', 515),
(20902, 'Xã Trà Kót', 'Xã', 515),
(20905, 'Xã Trà Nú', 'Xã', 515),
(20908, 'Xã Trà Đông', 'Xã', 515),
(20911, 'Xã Trà Dương', 'Xã', 515),
(20914, 'Xã Trà Giang', 'Xã', 515),
(20917, 'Xã Trà Bui', 'Xã', 515),
(20920, 'Xã Trà Đốc', 'Xã', 515),
(20923, 'Xã Trà Tân', 'Xã', 515),
(20926, 'Xã Trà Giác', 'Xã', 515),
(20929, 'Xã Trà Giáp', 'Xã', 515),
(20932, 'Xã Trà Ka', 'Xã', 515),
(20935, 'Xã Trà Leng', 'Xã', 516),
(20938, 'Xã Trà Dơn', 'Xã', 516),
(20941, 'Xã Trà Tập', 'Xã', 516),
(20944, 'Xã Trà Mai', 'Xã', 516),
(20947, 'Xã Trà Cang', 'Xã', 516),
(20950, 'Xã Trà Linh', 'Xã', 516),
(20953, 'Xã Trà Nam', 'Xã', 516),
(20956, 'Xã Trà Don', 'Xã', 516),
(20959, 'Xã Trà Vân', 'Xã', 516),
(20962, 'Xã Trà Vinh', 'Xã', 516),
(20965, 'Thị trấn Núi Thành', 'Thị trấn', 517),
(20968, 'Xã Tam Xuân I', 'Xã', 517),
(20971, 'Xã Tam Xuân II', 'Xã', 517),
(20974, 'Xã Tam Tiến', 'Xã', 517),
(20977, 'Xã Tam Sơn', 'Xã', 517),
(20980, 'Xã Tam Thạnh', 'Xã', 517),
(20983, 'Xã Tam Anh Bắc', 'Xã', 517),
(20984, 'Xã Tam Anh Nam', 'Xã', 517),
(20986, 'Xã Tam Hòa', 'Xã', 517),
(20989, 'Xã Tam Hiệp', 'Xã', 517),
(20992, 'Xã Tam Hải', 'Xã', 517),
(20995, 'Xã Tam Giang', 'Xã', 517),
(20998, 'Xã Tam Quang', 'Xã', 517),
(21001, 'Xã Tam Nghĩa', 'Xã', 517),
(21004, 'Xã Tam Mỹ Tây', 'Xã', 517),
(21005, 'Xã Tam Mỹ Đông', 'Xã', 517),
(21007, 'Xã Tam Trà', 'Xã', 517),
(21010, 'Phường Lê Hồng Phong', 'Phường', 522),
(21013, 'Phường Trần Phú', 'Phường', 522),
(21016, 'Phường Quảng Phú', 'Phường', 522),
(21019, 'Phường Nghĩa Chánh', 'Phường', 522),
(21022, 'Phường Trần Hưng Đạo', 'Phường', 522),
(21025, 'Phường Nguyễn Nghiêm', 'Phường', 522),
(21028, 'Phường Nghĩa Lộ', 'Phường', 522),
(21031, 'Phường Chánh Lộ', 'Phường', 522),
(21034, 'Xã Nghĩa Dũng', 'Xã', 522),
(21037, 'Xã Nghĩa Dõng', 'Xã', 522),
(21040, 'Thị Trấn Châu Ổ', 'Thị trấn', 524),
(21043, 'Xã Bình Thuận', 'Xã', 524),
(21046, 'Xã Bình Thạnh', 'Xã', 524),
(21049, 'Xã Bình Đông', 'Xã', 524),
(21052, 'Xã Bình Chánh', 'Xã', 524),
(21055, 'Xã Bình Nguyên', 'Xã', 524),
(21058, 'Xã Bình Khương', 'Xã', 524),
(21061, 'Xã Bình Trị', 'Xã', 524),
(21064, 'Xã Bình An', 'Xã', 524),
(21067, 'Xã Bình Hải', 'Xã', 524),
(21070, 'Xã Bình Dương', 'Xã', 524),
(21073, 'Xã Bình Phước', 'Xã', 524),
(21076, 'Xã Bình Thới', 'Xã', 524),
(21079, 'Xã Bình Hòa', 'Xã', 524),
(21082, 'Xã Bình Trung', 'Xã', 524),
(21085, 'Xã Bình Minh', 'Xã', 524),
(21088, 'Xã Bình Long', 'Xã', 524),
(21091, 'Xã Bình Thanh Tây', 'Xã', 524),
(21094, 'Xã Bình Phú', 'Xã', 524),
(21097, 'Xã Bình Thanh Đông', 'Xã', 524),
(21100, 'Xã Bình Chương', 'Xã', 524),
(21103, 'Xã Bình Hiệp', 'Xã', 524),
(21106, 'Xã Bình Mỹ', 'Xã', 524),
(21109, 'Xã Bình Tân', 'Xã', 524),
(21112, 'Xã Bình Châu', 'Xã', 524),
(21115, 'Thị trấn Trà Xuân', 'Thị trấn', 525),
(21118, 'Xã Trà Giang', 'Xã', 525),
(21121, 'Xã Trà Thủy', 'Xã', 525),
(21124, 'Xã Trà Hiệp', 'Xã', 525),
(21127, 'Xã Trà Bình', 'Xã', 525),
(21130, 'Xã Trà Phú', 'Xã', 525),
(21133, 'Xã Trà Lâm', 'Xã', 525),
(21136, 'Xã Trà Tân', 'Xã', 525),
(21139, 'Xã Trà Sơn', 'Xã', 525),
(21142, 'Xã Trà Bùi', 'Xã', 525),
(21145, 'Xã Trà Thanh', 'Xã', 526),
(21148, 'Xã Trà Khê', 'Xã', 526),
(21151, 'Xã Trà Quân', 'Xã', 526),
(21154, 'Xã Trà Phong', 'Xã', 526),
(21157, 'Xã Trà Lãnh', 'Xã', 526),
(21160, 'Xã Trà Nham', 'Xã', 526),
(21163, 'Xã Trà Xinh', 'Xã', 526),
(21166, 'Xã Trà Thọ', 'Xã', 526),
(21169, 'Xã Trà Trung', 'Xã', 526),
(21172, 'Phường Trương Quang Trọng', 'Phường', 522),
(21175, 'Xã Tịnh Thọ', 'Xã', 527),
(21178, 'Xã Tịnh Trà', 'Xã', 527),
(21181, 'Xã Tịnh Phong', 'Xã', 527),
(21184, 'Xã Tịnh Hiệp', 'Xã', 527),
(21187, 'Xã Tịnh Hòa', 'Xã', 522),
(21190, 'Xã Tịnh Kỳ', 'Xã', 522),
(21193, 'Xã Tịnh Bình', 'Xã', 527),
(21196, 'Xã Tịnh Đông', 'Xã', 527),
(21199, 'Xã Tịnh Thiện', 'Xã', 522),
(21202, 'Xã Tịnh Ấn Đông', 'Xã', 522),
(21205, 'Xã Tịnh Bắc', 'Xã', 527),
(21208, 'Xã Tịnh Châu', 'Xã', 522),
(21211, 'Xã Tịnh Khê', 'Xã', 522),
(21214, 'Xã Tịnh Long', 'Xã', 522),
(21217, 'Xã Tịnh Sơn', 'Xã', 527),
(21220, 'Xã Tịnh Hà', 'Xã', 527),
(21223, 'Xã Tịnh Ấn Tây', 'Xã', 522),
(21226, 'Xã Tịnh Giang', 'Xã', 527),
(21229, 'Xã Tịnh Minh', 'Xã', 527),
(21232, 'Xã Tịnh An', 'Xã', 522),
(21235, 'Thị trấn La Hà', 'Thị trấn', 528),
(21238, 'Thị trấn Sông Vệ', 'Thị trấn', 528),
(21241, 'Xã Nghĩa Lâm', 'Xã', 528),
(21244, 'Xã Nghĩa Thắng', 'Xã', 528),
(21247, 'Xã Nghĩa Thuận', 'Xã', 528),
(21250, 'Xã Nghĩa Kỳ', 'Xã', 528),
(21253, 'Xã Nghĩa Phú', 'Xã', 522),
(21256, 'Xã Nghĩa Hà', 'Xã', 522),
(21259, 'Xã Nghĩa Sơn', 'Xã', 528),
(21262, 'Xã Nghĩa An', 'Xã', 522),
(21265, 'Xã Nghĩa Thọ', 'Xã', 528),
(21268, 'Xã Nghĩa Hòa', 'Xã', 528),
(21271, 'Xã Nghĩa Điền', 'Xã', 528),
(21274, 'Xã Nghĩa Thương', 'Xã', 528),
(21277, 'Xã Nghĩa Trung', 'Xã', 528),
(21280, 'Xã Nghĩa Hiệp', 'Xã', 528),
(21283, 'Xã Nghĩa Phương', 'Xã', 528),
(21286, 'Xã Nghĩa Mỹ', 'Xã', 528),
(21289, 'Thị trấn Di Lăng', 'Thị trấn', 529),
(21292, 'Xã Sơn Hạ', 'Xã', 529),
(21295, 'Xã Sơn Thành', 'Xã', 529),
(21298, 'Xã Sơn Nham', 'Xã', 529),
(21301, 'Xã Sơn Bao', 'Xã', 529),
(21304, 'Xã Sơn Linh', 'Xã', 529),
(21307, 'Xã Sơn Giang', 'Xã', 529),
(21310, 'Xã Sơn Trung', 'Xã', 529),
(21313, 'Xã Sơn Thượng', 'Xã', 529),
(21316, 'Xã Sơn Cao', 'Xã', 529),
(21319, 'Xã Sơn Hải', 'Xã', 529),
(21322, 'Xã Sơn Thủy', 'Xã', 529),
(21325, 'Xã Sơn Kỳ', 'Xã', 529),
(21328, 'Xã Sơn Ba', 'Xã', 529),
(21331, 'Xã Sơn Bua', 'Xã', 530),
(21334, 'Xã Sơn Mùa', 'Xã', 530),
(21335, 'Xã Sơn Liên', 'Xã', 530),
(21337, 'Xã Sơn Tân', 'Xã', 530),
(21338, 'Xã Sơn Màu', 'Xã', 530),
(21340, 'Xã Sơn Dung', 'Xã', 530),
(21341, 'Xã Sơn Long', 'Xã', 530),
(21343, 'Xã Sơn Tinh', 'Xã', 530),
(21346, 'Xã Sơn Lập', 'Xã', 530),
(21349, 'Xã Long Sơn', 'Xã', 531),
(21352, 'Xã Long Mai', 'Xã', 531),
(21355, 'Xã Thanh An', 'Xã', 531),
(21358, 'Xã Long Môn', 'Xã', 531),
(21361, 'Xã Long Hiệp', 'Xã', 531),
(21364, 'Thị trấn Chợ Chùa', 'Thị trấn', 532),
(21367, 'Xã Hành Thuận', 'Xã', 532),
(21370, 'Xã Hành Dũng', 'Xã', 532),
(21373, 'Xã Hành Trung', 'Xã', 532),
(21376, 'Xã Hành Nhân', 'Xã', 532),
(21379, 'Xã Hành Đức', 'Xã', 532),
(21382, 'Xã Hành Minh', 'Xã', 532),
(21385, 'Xã Hành Phước', 'Xã', 532),
(21388, 'Xã Hành Thiện', 'Xã', 532),
(21391, 'Xã Hành Thịnh', 'Xã', 532),
(21394, 'Xã Hành Tín Tây', 'Xã', 532),
(21397, 'Xã Hành Tín  Đông', 'Xã', 532),
(21400, 'Thị trấn Mộ Đức', 'Thị trấn', 533),
(21403, 'Xã Đức Lợi', 'Xã', 533),
(21406, 'Xã Đức Thắng', 'Xã', 533),
(21409, 'Xã Đức Nhuận', 'Xã', 533),
(21412, 'Xã Đức Chánh', 'Xã', 533),
(21415, 'Xã Đức Hiệp', 'Xã', 533),
(21418, 'Xã Đức Minh', 'Xã', 533),
(21421, 'Xã Đức Thạnh', 'Xã', 533),
(21424, 'Xã Đức Hòa', 'Xã', 533),
(21427, 'Xã Đức Tân', 'Xã', 533),
(21430, 'Xã Đức Phú', 'Xã', 533),
(21433, 'Xã Đức Phong', 'Xã', 533),
(21436, 'Xã Đức Lân', 'Xã', 533),
(21439, 'Thị trấn Đức Phổ', 'Thị trấn', 534),
(21442, 'Xã Phổ An', 'Xã', 534),
(21445, 'Xã Phổ Phong', 'Xã', 534),
(21448, 'Xã Phổ Thuận', 'Xã', 534),
(21451, 'Xã Phổ Văn', 'Xã', 534),
(21454, 'Xã Phổ Quang', 'Xã', 534),
(21457, 'Xã Phổ Nhơn', 'Xã', 534),
(21460, 'Xã Phổ Ninh', 'Xã', 534),
(21463, 'Xã Phổ Minh', 'Xã', 534),
(21466, 'Xã Phổ Vinh', 'Xã', 534),
(21469, 'Xã Phổ Hòa', 'Xã', 534),
(21472, 'Xã Phổ Cường', 'Xã', 534),
(21475, 'Xã Phổ Khánh', 'Xã', 534),
(21478, 'Xã Phổ Thạnh', 'Xã', 534),
(21481, 'Xã Phổ Châu', 'Xã', 534),
(21484, 'Thị trấn Ba Tơ', 'Thị trấn', 535),
(21487, 'Xã Ba Điền', 'Xã', 535),
(21490, 'Xã Ba Vinh', 'Xã', 535),
(21493, 'Xã Ba Thành', 'Xã', 535),
(21496, 'Xã Ba Động', 'Xã', 535),
(21499, 'Xã Ba Dinh', 'Xã', 535),
(21500, 'Xã Ba Giang', 'Xã', 535),
(21502, 'Xã Ba Liên', 'Xã', 535),
(21505, 'Xã Ba Ngạc', 'Xã', 535),
(21508, 'Xã Ba Khâm', 'Xã', 535),
(21511, 'Xã Ba Cung', 'Xã', 535),
(21514, 'Xã Ba Chùa', 'Xã', 535),
(21517, 'Xã Ba Tiêu', 'Xã', 535),
(21520, 'Xã Ba Trang', 'Xã', 535),
(21523, 'Xã Ba Tô', 'Xã', 535),
(21526, 'Xã Ba Bích', 'Xã', 535),
(21529, 'Xã Ba Vì', 'Xã', 535),
(21532, 'Xã Ba Lế', 'Xã', 535),
(21535, 'Xã Ba Nam', 'Xã', 535),
(21538, 'Xã Ba Xa', 'Xã', 535),
(21541, 'Xã An Vĩnh', 'Xã', 536),
(21544, 'Xã An Hải', 'Xã', 536),
(21547, 'Xã An Bình', 'Xã', 536);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_image`
--
ALTER TABLE `product_image`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `product_image`
--
ALTER TABLE `product_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `shippers`
--
ALTER TABLE `shippers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
