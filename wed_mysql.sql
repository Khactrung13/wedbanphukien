-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th8 04, 2023 lúc 06:26 AM
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
-- Cơ sở dữ liệu: `wed_mysql`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(10, 'khactrung', 'e10adc3949ba59abbe56e057f20f883e', 1),
(11, '123', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id_baiviet`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmucbaiviet`, `tinhtrang`, `hinhanh`) VALUES
(8, 'Tin covid hôm nay', '<p>Thống nhất chuyển COVID-19 từ bệnh truyền nhiễm nh&oacute;m A xuống nh&oacute;m B</p>\r\n', '<p>Ban Chỉ đạo Quốc gia ph&ograve;ng, chống dịch COVID-19 thống nhất chuyển bệnh COVID-19 từ bệnh truyền nhiễm nh&oacute;m A sang bệnh truyền nhiễm nh&oacute;m B, đồng thời ban h&agrave;nh hướng dẫn việc &aacute;p dụng c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch COVID-19 ph&ugrave; hợp với dịch bệnh nh&oacute;m B.</p>\r\n\r\n<p>Chiều 3/6, tại Phi&ecirc;n họp thứ 20 Ban chỉ đạo Quốc gia ph&ograve;ng, chống dịch COVID-19, Bộ Y tế (Cơ quan thường trực Ban Chỉ đạo Quốc gia) b&aacute;o c&aacute;o về c&ocirc;ng t&aacute;c ph&ograve;ng, chống dịch COVID-19.</p>\r\n\r\n<p>Ban Chỉ đạo Quốc gia ph&ograve;ng, chống dịch COVID-19 thống nhất&nbsp;<a href=\"https://suckhoedoisong.vn/du-chuyen-tu-benh-nhom-a-xuong-nhom-b-thi-covid-19-van-co-tinh-dac-thu-169230530103242123.htm\" target=\"_blank\">chuyển bệnh COVID-19 từ bệnh truyền nhiễm nh&oacute;m A sang bệnh truyền nhiễm nh&oacute;m B&nbsp;</a>, đồng thời ban h&agrave;nh hướng dẫn việc &aacute;p dụng c&aacute;c biện ph&aacute;p ph&ograve;ng, chống dịch COVID-19 ph&ugrave; hợp với dịch bệnh nh&oacute;m B v&agrave; khuyến c&aacute;o của Tổ chức Y tế thế giới để x&acirc;y dựng&nbsp;Kế hoạch kiểm so&aacute;t, quản l&yacute; bền vững đối với dịch COVID-19 giai đoạn 2023-2025&nbsp;ph&ugrave; hợp với t&igrave;nh h&igrave;nh mới.</p>\r\n', 6, 1, '1688307549_covid.jpg'),
(12, 'Thành lập quận Đông Anh', '<p>Sẽ th&ocirc;ng qua Đề &aacute;n th&agrave;nh lập quận Đ&ocirc;ng Anh tại kỳ họp thứ 12, HĐND TP H&agrave; Nội</p>\r\n', '<p>Dự kiến kỳ họp thứ 12 (kỳ họp thường lệ) năm 2023 của HĐND TP H&agrave; Nội kh&oacute;a XVI, nhiệm kỳ 2021-2026 sẽ diễn ra từ ng&agrave;y 3 đến 6-7-2023.</p>\r\n\r\n<p>Trong đ&oacute;, c&aacute;c nội dung ban h&agrave;nh nghị quyết chuy&ecirc;n đề gồm: Về ph&aacute;t triển kinh tế - x&atilde; hội, bảo đảm an ninh quốc ph&ograve;ng; thu, chi ng&acirc;n s&aacute;ch, nhiệm vụ trọng t&acirc;m 6 th&aacute;ng cuối năm 2023; điều chỉnh kế hoạch đầu tư c&ocirc;ng trung hạn 5 năm 2021-2025 cấp th&agrave;nh phố; điều chỉnh kế hoạch đầu tư c&ocirc;ng năm 2023; định hướng kế hoạch đầu tư c&ocirc;ng th&agrave;nh phố năm 2024; ph&ecirc; duyệt chủ trương đầu tư, điều chỉnh chủ trương đầu tư một số dự &aacute;n sử dụng vốn đầu tư c&ocirc;ng th&agrave;nh phố; quy định về nội dung, mức chi thuộc thẩm quyền của HĐND TP H&agrave; Nội (12 mức chi)&hellip;</p>\r\n\r\n<p>HĐND TP H&agrave; Nội cũng th&ocirc;ng qua điều chỉnh bảng gi&aacute; c&aacute;c loại đất tr&ecirc;n địa b&agrave;n th&agrave;nh phố &aacute;p dụng đến ng&agrave;y 31-12-2024; ph&iacute; thư viện đối với c&aacute;c thư viện trực thuộc th&agrave;nh phố, quận, huyện, thị x&atilde;; quy định về ch&iacute;nh s&aacute;ch miễn, giảm ph&iacute;, lệ ph&iacute; khi người d&acirc;n, cơ quan, tổ chức thực hiện thủ tục h&agrave;nh ch&iacute;nh tr&ecirc;n hệ thống dịch vụ c&ocirc;ng trực tuyến; quy định về một số ch&iacute;nh s&aacute;ch khuyến kh&iacute;ch ph&aacute;t triển n&ocirc;ng nghiệp, n&ocirc;ng th&ocirc;n tr&ecirc;n địa b&agrave;n TP H&agrave; Nội đến năm 2030; danh mục dịch vụ sự nghiệp c&ocirc;ng sử dụng ng&acirc;n s&aacute;ch nh&agrave; nước trong lĩnh vực t&agrave;i nguy&ecirc;n v&agrave; m&ocirc;i trường tr&ecirc;n địa b&agrave;n TP H&agrave; Nội; quy định chế độ hỗ trợ đặc th&ugrave; của TP H&agrave; Nội đối với người l&agrave;m nhiệm vụ tiếp c&ocirc;ng d&acirc;n, xử l&yacute; đơn khiếu nại, tố c&aacute;o, kiến nghị phản &aacute;nh tr&ecirc;n địa b&agrave;n TP H&agrave; Nội.</p>\r\n', 6, 1, '1688309932_tintuc.jpg'),
(13, 'Apple iCloud+ ', '<p>Apple iCloud+ tại Việt Nam tăng gi&aacute; &quot;ch&oacute;ng mặt&quot;</p>\r\n\r\n<h2>&nbsp;</h2>\r\n', '<p><strong>Nếu đang sử dụng iPhone, người d&ugrave;ng c&oacute; thể cần kiểm tra g&oacute;i dung lượng iCloud của m&igrave;nh ngay từ b&acirc;y giờ để tr&aacute;nh mất một khoản tiền kh&ocirc;ng hề nhỏ.</strong></p>\r\n\r\n<p>Mặc d&ugrave;&nbsp;<a href=\"https://www.24h.com.vn/apple-c55e3987.html\">Apple</a>&nbsp;cung cấp cho người d&ugrave;ng 5 GB dung lượng lưu trữ miễn ph&iacute; tr&ecirc;n iCloud, nhưng điều n&agrave;y kh&ocirc;ng k&eacute;o d&agrave;i v&agrave; rất nhiều người d&ugrave;ng chọn trả tiền cho thu&ecirc; bao đ&aacute;m m&acirc;y cao cấp của Apple, iCloud+.</p>\r\n\r\n<p>Vấn đề l&agrave; giờ đ&acirc;y, một số g&oacute;i iCloud+ đ&atilde; tăng gi&aacute; ch&oacute;ng mặt l&ecirc;n tới 29% khiến người d&ugrave;ng kh&ocirc;ng cảm thấy h&agrave;i l&ograve;ng về điều đ&oacute;. Trong khi mức gi&aacute; mỗi th&aacute;ng cho 50 GB tr&ecirc;n iCloud+ kh&ocirc;ng c&oacute; thay đổi, c&aacute;c g&oacute;i cao hơn tại Việt Nam đều đ&atilde; bị tăng gi&aacute;.</p>\r\n\r\n<p>Cụ thể, chi ph&iacute; mỗi th&aacute;ng cho iCloud+ từ 59.000 đồng l&ecirc;n 69.000 đồng cho g&oacute;i 200 GB, hoặc từ 199.000 đồng l&ecirc;n 249.000 đồng cho g&oacute;i 2 TB. Như vậy, đối với những ai cần 2 TB dung lượng lưu trữ tr&ecirc;n iCloud+, số tiền m&agrave; họ phải chi ra th&ecirc;m mỗi th&aacute;ng l&agrave; 50.000 đồng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1, '1688310124_tincongnghe.jpg'),
(17, 'GAME', '<p>Nghịch l&yacute; số lượt tải game tr&ecirc;n Android &aacute;p đảo iOS, nhưng doanh thu tr&ecirc;n iOS cao hơn</p>\r\n', '<p><strong>Theo b&aacute;o c&aacute;o mới nhất của Adjust v&agrave; Sensor Tower, game di động l&agrave; thị trường gi&agrave;u tiềm năng tại khu vực Đ&ocirc;ng Nam &Aacute;.</strong></p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o mới nhất của Adjust v&agrave; Sensor Tower, game di động l&agrave; thị trường gi&agrave;u tiềm năng tại khu vực Đ&ocirc;ng Nam &Aacute;. Theo đ&oacute;, cứ 3 người sở hữu điện thoại th&ocirc;ng minh th&igrave; c&oacute; 1 người chơi game di động &iacute;t nhất một lần một tuần.</p>\r\n\r\n<p>Điều đ&oacute; kh&ocirc;ng mấy bất ngờ khi lượt tải game <a href=\"https://www.24h.com.vn/android-c407e4051.html\">Android</a> (93%) ho&agrave;n to&agrave;n &aacute;p đảo lượt tải game <a href=\"https://www.24h.com.vn/ios-c407e4045.html\">iOS</a> tại khu vực Đ&ocirc;ng Nam &Aacute;. Tuy nhi&ecirc;n, c&oacute; một sự thật l&agrave; doanh thu mỗi lượt tải game iOS thường cao hơn đ&aacute;ng kể so với Android.</p>\r\n\r\n<p>Game nhập vai l&agrave; ph&acirc;n kh&uacute;c phụ c&oacute; doanh thu cao nhất tr&ecirc;n mỗi lượt c&agrave;i đặt, mức cao nhất được ghi nhận tại Singapore l&agrave; 20,08 USD. C&aacute;c nh&agrave; ph&aacute;t triển game nhập vai được khuyến nghị c&oacute; thể khai th&aacute;c thị trường Singapore, game thủ tại đ&acirc;y rất sẵn s&agrave;ng chi tiền để c&oacute; những trải nghiệm chơi game th&uacute; vị.</p>\r\n', 1, 1, '1688314206_tincongnghe2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`) VALUES
(16, 28, '1626', 0),
(17, 28, '4116', 0),
(18, 28, '328', 0),
(19, 29, '9005', 0),
(20, 30, '488', 0),
(21, 29, '4280', 0),
(22, 28, '7331', 0),
(23, 29, '9588', 0),
(24, 29, '2309', 0),
(25, 29, '1268', 0),
(26, 33, '4301', 1),
(27, 33, '2606', 1),
(28, 29, '8807', 0),
(29, 29, '1565', 0),
(30, 138, '4436', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(23, '1626', 43, 1),
(24, '1626', 35, 1),
(25, '4116', 33, 1),
(26, '4116', 49, 1),
(27, '328', 43, 4),
(28, '328', 49, 1),
(29, '9005', 35, 2),
(30, '488', 43, 2),
(31, '488', 35, 1),
(32, '4280', 43, 1),
(33, '7331', 33, 1),
(34, '7331', 62, 1),
(35, '7331', 43, 1),
(36, '9588', 43, 1),
(37, '2309', 49, 1),
(38, '1268', 61, 1),
(39, '4301', 59, 1),
(40, '8807', 61, 1),
(41, '1565', 61, 1),
(42, '4436', 62, 1),
(43, '4436', 31, 1),
(44, '4436', 43, 1),
(45, '4436', 44, 1),
(46, '4436', 60, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(250) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(28, 'Nguyễn Khắc Trung ', 'khactrung060801@gmail.com', 'Huế', 'e10adc3949ba59abbe56e057f20f883e', '0775561151'),
(44, 'trung', 'trung', 'hue', 'trung', '123'),
(138, '1', '1', '1', 'c4ca4238a0b923820dcc509a6f75849b', '1'),
(139, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(27, 'Ốp lưng', 3),
(28, 'Tai nghe', 2),
(29, 'Kính cường lực', 3),
(33, 'Màn hình', 4),
(34, 'Sạc điện thoại', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_danhmucbaiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_danhmucbaiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(1, 'Tin công nghệ', 1),
(6, 'Tin thời sự', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\r\n	<li>\r\n	<p>Số điện thoại :<strong>&nbsp;0775561151 (Nguyễn Khắc Trung) ||&nbsp;0822376705 (L&ecirc; Kim Thạnh)</strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Địa chỉ : <strong><em>Thừa Thi&ecirc;n Huế</em></strong></p>\r\n	</li>\r\n	<li>\r\n	<p>Facebook:&nbsp;<em><a href=\"https://www.facebook.com/profile.php?id=100006598323130\" target=\"_blank\">https://www.facebook.com/profile.php?id=100006598323130</a></em></p>\r\n	</li>\r\n</ol>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` longtext NOT NULL,
  `noidung` longtext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(31, 'Kính cường lực 01', '00111', '300000', 20, 'kinhcuongluc.jpg', '<p>3213213</p>\r\n', '<p>21321</p>\r\n', 1, 29),
(33, 'Tai nghe 02', '002', '500000', 50, 'sony.jpg', '<p>1233123</p>\r\n', '<p>123</p>\r\n', 1, 28),
(35, 'Tai nghe 01', '001', '300000', 20, 'img.jpeg', '<p>213123</p>\r\n', '<p>123</p>\r\n', 1, 28),
(40, 'Màn hình 01', '005', '450000', 213, '1689442775_man.jpg', '<p>ưqeqweqwe</p>\r\n', '<p>qewqeqw</p>\r\n', 1, 33),
(43, 'Ốp lưng 02', '009', '220000', 59, 'oplung02.jpg', '<p>op lung</p>\r\n', '<p>op lung</p>\r\n', 1, 27),
(44, 'Ốp lưng 01', '00122', '300000', 50, 'oplung1.jpg', '<p>op lung dien thoai</p>\r\n', '<p>op lung dth</p>\r\n', 1, 27),
(46, 'Màn hình 02', '012', '230000', 34, '1689442411_manhinh01.jpg', '<p>213</p>\r\n', '<p>213</p>\r\n', 1, 33),
(49, 'Kính cường lực 02', '123', '300000', 50, '1687882580_kinhcuongluc1.jpg', '<p>kinh cuong luc</p>\r\n', '<p>kinh cuong luc</p>\r\n', 1, 29),
(57, 'Sạc 01', '1234', '150000', 1000, '1689441119_sac.jpg', '<p>sac dien thoai</p>\r\n', '<p>sac dien thoai</p>\r\n', 1, 34),
(58, 'Sạc 02', '002', '150000', 29, '1689441095_sac01.jpg', '<p>Sạc điện thoại</p>\r\n', '<p>Sạc điện thoại</p>\r\n', 1, 34),
(59, 'Sạc 03', '003', '120000', 45, '1689441087_sac02.jpg', '<p>Sạc điện thoại</p>\r\n', '<p>Sạc điện thoại</p>\r\n', 1, 34),
(60, 'Sạc 04', '004', '90000', 10, '1689441078_sac03.jpg', '<p>Sạc điện thoại</p>\r\n', '<p>Sạc điện thoại</p>\r\n', 1, 34),
(61, 'Sạc 2006', '005', '210000', 40, '1689441071_sac04.jpg', '<p>Sạc điện thoại</p>\r\n', '<p>Sạc điện thoại</p>\r\n', 1, 34),
(62, 'Sạc 06', '006', '260000', 30, '1689441049_sac05.jpg', '<p>Sạc điện thoại</p>\r\n', '<p>Sạc điện thoại</p>\r\n', 1, 34);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_danhmucbaiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_danhmucbaiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
