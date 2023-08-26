-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 26, 2023 lúc 10:24 PM
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
  `scontent` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `published` bit(1) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL,
  `published` bit(1) NOT NULL,
  `alias` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `published`, `alias`) VALUES
(1, 'Rau củ quả', 'rau củ quả', b'1', 'rau-cu-qua'),
(2, 'Trái cây', 'trái cây', b'1', 'trai-cay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `ship_date` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `paid` bit(1) NOT NULL,
  `pay_date` datetime DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `shipper_id` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
  `discount` int(11) DEFAULT NULL,
  `featured` bit(1) NOT NULL,
  `active` bit(1) NOT NULL,
  `create_date` datetime NOT NULL,
  `alias` varchar(300) NOT NULL,
  `stocks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `product_name`, `sdescription`, `description`, `cate_id`, `price`, `discount`, `featured`, `active`, `create_date`, `alias`, `stocks`) VALUES
(1, 'Bắp cải tím', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5.', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 1, 10000, NULL, b'1', b'1', '2023-08-25 14:47:02', 'qua-bo', 12),
(2, 'Quả bơ', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 2, 200000, NULL, b'1', b'1', '2023-08-25 21:06:19', 'bi-dao', 22),
(3, 'Bí đao', 'Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5', 'Công dụng: Quả bơ có chứa nhiều loại khoáng chất như kali, sắt, canxi, kẽm mangan, magie, selen và đồng có đến 14 loại vitamin cần thiết thiết yếu với cơ thể như A, C, E, B2, B6, B5. Các loại vitamin và khoáng chất này có tác dụng cung cấp những chất chống oxy hóa, ngăn ngừa da lão hóa, giúp phòng ngừa các bệnh ung thư hay đục thủy tinh thể.', 1, 340000, 230000, b'1', b'1', '2023-08-25 21:06:19', 'bap-cai', 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_comment`
--

CREATE TABLE `product_comment` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `comment` text NOT NULL,
  `rating` int(11) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_comment`
--

INSERT INTO `product_comment` (`id`, `product_id`, `user_id`, `email`, `name`, `comment`, `rating`, `create_date`) VALUES
(1, 1, 1, 'abc@gmail.com', 'thắng', 'bán uy tín', 3, '2023-08-25 21:10:02'),
(2, 2, 3, 'abcd@gmail.com', 'tuấn', 'bán nhanh uy tín', 4, '2023-08-25 21:10:37'),
(3, 3, 2, 'abc1@gmail.com', 'nga', 'bán nhanh uy tín', 5, '2023-08-25 21:10:37'),
(4, 1, 4, 'abcd1@gmail.com', 'quỳnh', 'bán nhanh uy tín', 2, '2023-08-25 21:10:37'),
(5, 1, NULL, 'abc@gmail.com', 'Thắng', 'bán nhanh', 5, '2023-08-27 00:11:31');

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
  `level` int(11) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `ward` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `level`, `address`, `district`, `ward`, `city`, `password`, `remember_token`, `create_date`, `email_verified_at`) VALUES
(1, 'Trần Lý Thắng', 'abc@gmail.com', '0926069058', 0, 'k572/72 ông ích khiêm', 'Hải châu', 'Hải châu 2', 'Đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL),
(3, 'Nguyễn Văn A', 'abcd@gmail.com', '0243220339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL),
(4, 'Trần Văn B', 'abc1@gmail.com', '0243122339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL),
(5, 'Ngô Văn Thắng', 'abc2@gmail.com', '0223310339', 0, 'hoàng diệu', 'hải châu', 'hải châu 2', 'đà nẵng', '$2y$10$vyQydFQyUc6qrqy0ZdmJXe3IiwRoRPHUZNPjbzG0Gs3nJ2oP5YAY.', NULL, NULL, NULL);

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
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `product_comment`
--
ALTER TABLE `product_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
