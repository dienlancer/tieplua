-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 19, 2018 lúc 07:48 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tieplua`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK', 1, '2017-11-12 06:15:56', '2017-11-12 06:15:55', '2017-11-12 06:15:56'),
(2, 1, 'rcp04qHne8oATtrTCwKl9FuckJEarSCb', 1, '2017-11-12 06:20:02', '2017-11-12 06:20:02', '2017-11-12 06:20:02'),
(3, 1, 'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0', 1, '2017-11-12 06:24:14', '2017-11-12 06:24:14', '2017-11-12 06:24:14'),
(4, 1, 'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA', 1, '2017-11-12 06:26:26', '2017-11-12 06:26:26', '2017-11-12 06:26:26'),
(5, 1, '1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg', 1, '2017-11-12 07:22:52', '2017-11-12 07:22:52', '2017-11-12 07:22:52'),
(6, 1, 'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ', 1, '2017-11-12 07:23:56', '2017-11-12 07:23:56', '2017-11-12 07:23:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `album`
--

INSERT INTO `album` (`id`, `fullname`, `alias`, `meta_keyword`, `meta_description`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cơn mơ chiều', 'con-mo-chieu', 'metakeyword Cơn mơ chiều', 'metadescription Cơn mơ chiều', 'thuvienhinh-1.png', 1, 1, '2018-01-08 16:17:33', '2018-01-09 03:00:06'),
(5, 'Giấc nồng', 'giac-nong', 'metakeyword Giấc nồng', 'metadescription Giấc nồng', 'thuvienhinh-2.png', 2, 1, '2018-01-08 19:55:00', '2018-01-09 03:03:46'),
(6, 'Tắm trăng', 'tam-trang', 'metakeyword Tắm trăng', 'metadescription Tắm trăng', 'thuvienhinh-3.png', 3, 1, '2018-01-09 03:04:39', '2018-01-09 03:04:39'),
(7, 'Hành tinh lạ', 'hanh-tinh-la', 'metakeyword Hành tinh lạ', 'metadescription Hành tinh lạ', 'thuvienhinh-4.png', 4, 1, '2018-01-09 03:05:05', '2018-01-09 03:05:05'),
(8, 'Thiên chức', 'thien-chuc', 'metakeyword Thiên chức', 'metadescription Thiên chức', 'thuvienhinh-5.png', 5, 1, '2018-01-09 03:05:49', '2018-01-09 03:05:49'),
(9, 'Suối vắng', 'suoi-vang', 'metakeyword Suối vắng', 'metadescription Suối vắng', 'thuvienhinh-6.png', 6, 1, '2018-01-09 03:06:19', '2018-01-09 03:06:19'),
(10, 'Viên mãn', 'vien-man', 'metakeyword Viên mãn', 'metadescription Viên mãn', 'thuvienhinh-7.png', 7, 1, '2018-01-09 03:08:30', '2018-01-09 03:08:30'),
(11, 'Hạnh phúc', 'hanh-phuc', 'metakeyword Hạnh phúc', 'metadescription Hạnh phúc', 'thuvienhinh-8.png', 8, 1, '2018-01-09 03:09:18', '2018-01-09 03:09:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Juventus lên nhì bảng Serie A, Milan thảm bại trước đội đèn đỏ', 'juventus-len-nhi-bang-serie-a,-milan-tham-bai-truoc-doi-den-do', 'conmochieu-1.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p style=\"text-align:justify\">Juventus đ&atilde; tận dụng thất bại của Inter ở v&ograve;ng n&agrave;y để vượt qua đối thủ l&ecirc;n đứng thứ hai tr&ecirc;n bảng điểm. Serie A đang chứng kiến một cuộc đua hấp dẫn sau lượt đi khi bốn đội đứng đầu kh&ocirc;ng c&aacute;ch xa nhau. Napoli, Juventus, Inter v&agrave; Roma lần lượt c&oacute; 42, 41, 40 v&agrave; 38 điểm.</p>\n\n<p style=\"text-align:justify\">Trong trận đấu ng&agrave;y chủ nhật, Juventus l&agrave;m kh&aacute;ch tới s&acirc;n Bologna v&agrave; c&oacute; chiến thắng nhờ m&agrave;n tr&igrave;nh diễn ấn tượng của tiền vệ Miralem Pjanic. Tiền vệ người Bosnia ghi b&agrave;n mở tỷ số từ chấm đ&aacute; phạt với c&uacute; dứt điểm v&agrave;o g&oacute;c gần g&acirc;y bất ngờ cho thủ m&ocirc;n Mirante. Đ&acirc;y l&agrave; lần thứ 14 đ&aacute; phạt th&agrave;nh b&agrave;n của Pjanic, th&agrave;nh t&iacute;ch m&agrave; kh&ocirc;ng cầu thủ n&agrave;o ở Serie A s&aacute;nh bằng trong 10 năm trở lại đ&acirc;y.</p>\n\n<p style=\"text-align:justify\"><br />\nChưa dừng lại ở đ&oacute;, Pjanic c&ograve;n c&oacute; đường chuyền đẳng cấp để kiến tạo cho Mandzukic băng xuống ghi b&agrave;n nh&acirc;n đ&ocirc;i tỷ số ở cuối hiệp một. Trận đấu được ấn định tỷ số 3-0 với pha bắt v&ocirc; l&ecirc; cực mạnh của tiền vệ Matuidi trong hiệp hai sau khi hậu vệ Bologna ph&aacute; b&oacute;ng thiếu quyết đo&aacute;n.</p>\n\n<p style=\"text-align:justify\">Ở trận đấu cuối c&ugrave;ng lượt đi, Juventus sẽ tiếp Roma trước khi bước v&agrave;o kỳ nghỉ dịp năm mới.<br />\nTrong khi th&agrave;nh Turin h&acirc;n hoan với chiến thắng th&igrave; ở trận đ&aacute; sớm, Milan đ&atilde; bất ngờ thua 0-3 tr&ecirc;n s&acirc;n đội b&oacute;ng đứng thứ 19 l&agrave; Hellas Verona. Một trong những cầu thủ đang được Juventus cho mượn ở Verona l&agrave; tiền đạo Moise Kean đ&atilde; ghi b&agrave;n v&agrave;o lưới Milan.</p>\n\n<p style=\"text-align:justify\">Điều đ&aacute;ng n&oacute;i khi Milan vừa gi&agrave;nh chiến thắng 3-0 trước Verona ở Coppa Italy chỉ ba ng&agrave;y trước. Mặc d&ugrave; phải l&agrave;m kh&aacute;ch thay v&igrave; được chơi ở San Siro th&igrave; đ&acirc;y vẫn l&agrave; kết quả kh&oacute; nuốt cho t&acirc;n HLV Gennaro Gattuso. Thất bại n&agrave;y khiến họ dậm ch&acirc;n ở vị tr&iacute; thứ bảy, k&eacute;m vị tr&iacute; thứ tư của Roma tới 14 điểm.</p>\n\n<p style=\"text-align:justify\">Trung vệ Antonio Caracciolo đ&aacute;nh đầu mở tỷ số cho Verona trong hiệp một trước khi hai cầu thủ v&agrave;o s&acirc;n thay người l&agrave; Moise Kean v&agrave; Daniel Bessa ghi b&agrave;n ở ph&uacute;t 55 v&agrave; 77. Thất bại nặng nề về tỷ số, Milan c&ograve;n phải kết th&uacute;c trận đấu với 10 người bởi Suso nhận thẻ đỏ sau h&agrave;nh vi dẫm l&ecirc;n Daniele Verde.</p>\n\n<p style=\"text-align:justify\">Kể từ khi Gattuso nhậm chức, Milan chỉ gi&agrave;nh vỏn vẹn một điểm trước hai đội cuối bảng. Ở trận đấu đầu ti&ecirc;n tr&ecirc;n ghế n&oacute;ng, Gattuso phải chứng kiến Milan bị Benevento cầm h&ograve;a 2-2 nhờ b&agrave;n đ&aacute;nh đầu của thủ m&ocirc;n.</p>', '', '', '', 2, 1, 1, '2017-12-18 02:25:20', '2018-01-18 18:58:40'),
(2, 'Liverpool trở lại top 4 với trận đại thắng Bournemouth', 'liverpool-tro-lai-top-4-voi-tran-dai-thang-bournemouth', 'conmochieu-2.png', 'Nulla enim massa, fermentum nec ultrices ut, venenatis ac ante. Vestibulum aliquet nisi sed lectus tristique faucibus. Nullam rutrum accumsan augue. Integer ut nibh id ipsum fringilla facilisis. Ut ac dolor nisi. Nulla facilisi. Quisque varius sollicitudin pellentesque. Sed vulputate ex id sapien rhoncus, sed vehicula libero blandit. Nunc volutpat condimentum iaculis. Maecenas est justo, volutpat sollicitudin aliquet et, bibendum nec dolor. Nullam tincidunt dolor odio, imperdiet lobortis erat facilisis quis. Maecenas at neque nec tortor dignissim faucibus quis eu metus.', '<p style=\"text-align:justify\">Liverpool đ&atilde; trải qua hai trận h&ograve;a thất vọng trước những đội b&oacute;ng đang trong giai đoạn khủng hoảng l&agrave; Everton v&agrave; West Ham. Trướcđ&oacute; đo&agrave;n qu&acirc;n th&agrave;nh phố cảng gi&agrave;nh những chiến thắng đậm li&ecirc;n tiếp ở cả đấu trường Ngoại hạng Anh v&agrave; Champions League.</p>\n\n<p style=\"text-align:justify\">Hai bước lạc nhịp của Liverpool đ&atilde; được chấn chỉnh lại trước Bournemouth, đội b&oacute;ng đang tụt dần xuống cuối bảng. Bộ ba tấn c&ocirc;ng Coutinho, Salah v&agrave; Firmino thay nhau lập c&ocirc;ng, xen giữa l&agrave; b&agrave;n thắng của trung vệ Dejan Lovren đ&atilde; đưa Liverpool vượt mặt Arsenal để t&aacute;i chiếm vị tr&iacute; thứ tư.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/hinh-the-thao.jpg\" style=\"height:278px; width:500px\" /></p>\n\n<p style=\"text-align:justify\">Trong đ&oacute; phải kể tới hai pha độc diễn của Coutinho v&agrave; Salah ngay ở hiệp đầu ti&ecirc;n. Coutinho mở tỷ số với pha đi b&oacute;ng từ ngo&agrave;i v&ograve;ng 16m50 v&agrave; cắt ngang từ c&aacute;nh tr&aacute;i trước khi dứt điểm sệt v&agrave;o g&oacute;c gần. Salah kh&ocirc;ng chịu thua k&eacute;m với pha lập c&ocirc;ng b&ecirc;n c&aacute;nh tr&aacute;i nhưng lần n&agrave;y cầu thủ người Ai Cập c&oacute; c&uacute; cứa l&ograve;ng v&agrave;o g&oacute;c xa sau khi lừa qua ba hậu vệ đối phương.<br />\nB&agrave;n thắng của Salah gi&uacute;p anh trở th&agrave;nh cầu thủ đầu ti&ecirc;n thi đấu ở Ngoại hạng Anh c&aacute;n mốc 20 b&agrave;n tr&ecirc;n mọi đấu trường m&ugrave;a n&agrave;y. Trong khi đ&oacute; Coutinho ghi dấu ấn l&ecirc;n b&agrave;n thứ 14 sau 10 trận s&acirc;n kh&aacute;ch gần nhất của Liverpool, bao gồm t&aacute;m pha lập c&ocirc;ng v&agrave; s&aacute;u kiến tạo.</p>\n\n<p style=\"text-align:justify\">Th&agrave;nh vi&ecirc;n c&ograve;n lại của bộ ba tấn c&ocirc;ng l&agrave; Roberto Firmino thậm ch&iacute; c&ograve;n hiệu quả hơn hai đồng đội ở trận đấu n&agrave;y. Tiền đạo Brazil c&oacute; pha m&oacute;c b&oacute;ng đầy nỗ lực để kiến tạo cho Lovren đ&aacute;nh đầu cận th&agrave;nh ghi b&agrave;n trước khi tự m&igrave;nh ấn định tỷ số 4-0 ở hiệp hai.</p>\n\n<p style=\"text-align:justify\">Chiến thắng tưng bừng trước Bournemouth sẽ l&agrave; m&agrave;n chạy đ&agrave; cho trận đại chiến với Arsenal v&agrave;o cuối tuần sau. Đ&acirc;y l&agrave; trận đấu mang t&iacute;nh quyết định tới vị tr&iacute; thứ tư ở m&ugrave;a giải năm nay.</p>\n\n<p style=\"text-align:justify\">Liverpool thậm ch&iacute; c&ograve;n c&oacute; lợi thế về ng&agrave;y nghỉ khi họ kh&ocirc;ng phải đ&aacute; Cup li&ecirc;n đo&agrave;n v&agrave;o giữa tuần, trong khi Arsenal ra s&acirc;n đấu với West Ham.</p>', '', '', '', 7, 2, 1, '2017-12-18 02:25:44', '2018-01-18 18:59:00'),
(3, 'Rooney: \'Man City hiện tại chưa thể sánh với Man Utd năm 2008\'', 'rooney:-man-city-hien-tai-chua-the-sanh-voi-man-utd-nam-2008', 'conmochieu-3.png', 'Integer pellentesque vehicula mauris, vel volutpat ante ultricies id. Nulla ultrices nibh risus, ac varius nisl varius non. Nulla eu quam bibendum, porta turpis in, tincidunt ligula. In nisl turpis, hendrerit tempor elit sit amet, lobortis faucibus diam. Nunc eget quam ut justo viverra euismod at eu ligula. Etiam ex tortor, luctus in laoreet sed, bibendum id nunc. Etiam eu finibus felis, ut consectetur lectus. Mauris sit amet lectus purus. Ut nec sapien orci. Vestibulum ut neque sit amet tellus viverra venenatis. Mauris gravida ultricies lorem a ultrices. Nam eget laoreet arcu, non scelerisque elit.', '<p style=\"text-align:justify\">&quot;T&ocirc;i kh&ocirc;ng nghĩ Man City đang l&agrave; đội hay nhất lịch sử. Họ phải duy tr&igrave; phong độ v&agrave; đạt th&ecirc;m nhiều th&agrave;nh tựu để bắt kịp Man Utd năm 2008&quot;, Wayne Rooney n&oacute;i tr&ecirc;n talkSPORT. &quot;C&oacute; rất nhiều đội mạnh xuy&ecirc;n suốt lịch sử giải. Man City cần đoạt danh hiệu, v&agrave; giữ được sự ổn định để lọt v&agrave;o nh&oacute;m đ&oacute;&quot;.<br />\nRooney l&agrave; trụ cột trong đội h&igrave;nh của HLV Sir Alex Ferguson v&ocirc; địch Ngoại hạng Anh v&agrave; Champions League năm 2008. Khi đ&oacute;, họ đứng tr&ecirc;n Chelsea hai điểm ở giải trong nước, đồng thời đ&aacute;nh gục đội b&oacute;ng T&acirc;y London ở chung kết Champions League tại Moscow. Trong giai đoạn 2007-2011, Man Utd đoạt bốn danh hiệu Ngoại hạng Anh trong năm m&ugrave;a, b&ecirc;n cạnh hai ng&ocirc;i &aacute; qu&acirc;n giải danh gi&aacute; ch&acirc;u &Acirc;u.</p>\n\n<p style=\"text-align:justify\">D&ugrave; vậy, cựu đội trưởng Man Utd v&agrave; tuyển Anh đ&aacute;nh gi&aacute; cao Man City hiện tại: &quot;Pep Guardiola xứng đ&aacute;ng được vinh danh trong th&agrave;nh c&ocirc;ng của Man City l&uacute;c n&agrave;y. C&aacute;ch &ocirc;ng ấy vận h&agrave;nh đội b&oacute;ng hiện tại thật xuất sắc. Nhưng t&ocirc;i kh&ocirc;ng nghĩ họ sẽ bất bại cho đến hết m&ugrave;a giải. C&oacute; khoảng năm, s&aacute;u đội đủ khả năng thắng bất cứ đối thủ n&agrave;o. T&ocirc;i d&aacute;m chắc Man City sẽ gục ng&atilde; ở một trong những trận đ&oacute;&quot;.<br />\nĐội chủ s&acirc;n Etihad đang giữ kỷ lục 16 chiến thắng li&ecirc;n tiếp ở Ngoại hạng Anh, kể từ trận h&ograve;a Everton 1-1 tại v&ograve;ng hai. Bại tướng gần nhất của họ l&agrave; Tottenham, trong trận cầu Man City chơi tr&ecirc;n ch&acirc;n suốt 90 ph&uacute;t v&agrave; gi&agrave;nh thắng lợi 4-1.</p>', '', '', '', NULL, 3, 1, '2017-12-18 02:25:56', '2018-01-18 18:59:08'),
(4, 'Mourinho lầm tưởng Tony Pulis còn dẫn dắt West Brom', 'mourinho-lam-tuong-tony-pulis-con-dan-dat-west-brom', 'conmochieu-4.png', 'Etiam ac lacinia arcu, vitae faucibus arcu. Cras vulputate nunc ac lacus efficitur facilisis. Nullam accumsan, enim eget egestas vulputate, augue nunc fringilla augue, sed tincidunt purus est non elit. Fusce efficitur imperdiet augue eu gravida. In mollis interdum nunc, a accumsan ipsum suscipit ac. Nam quis velit eget tortor feugiat pharetra lacinia vel lorem. Maecenas vel elit dictum justo pretium eleifend. Fusce nibh eros, semper eget neque aliquet, venenatis lacinia massa. Integer posuere pharetra nunc, eget gravida libero.', '<p style=\"text-align:justify\">Ph&aacute;t biểu sau trận thắng 2-1 ở s&acirc;n The Hawthorns, HLV Jose Mourinho nhầm t&ecirc;n đồng nghiệp b&ecirc;n kia chiến tuyến: &quot;Man Utd xứng đ&aacute;ng thắng v&igrave; đ&atilde; chơi hay hơn. Ch&uacute;ng t&ocirc;i hiểu r&otilde; độ nguy hiểm của West Brom trong c&aacute;c t&igrave;nh huống cố định. Tony l&agrave; chuy&ecirc;n gia trong t&igrave;nh huống như thế. Đội của &ocirc;ng ấy gi&agrave;u thể lực v&agrave; mạnh mẽ trong kh&ocirc;ng chiến. Ch&uacute;ng t&ocirc;i đ&atilde; chuẩn bị tinh thần đối mặt pha b&oacute;ng như vậy&quot;.<br />\nMourinho kh&ocirc;ng hề ph&aacute;t hiện sai lầm, cho đến một l&uacute;c sau, khi &ocirc;ng n&oacute;i đến c&aacute;i t&ecirc;n Alan trong phần c&ograve;n lại của m&agrave;n phỏng vấn: &quot;Ch&uacute;ng t&ocirc;i đ&atilde; kiểm so&aacute;t trận đấu kh&aacute; l&acirc;u. Sau đ&oacute; họ phản kh&aacute;ng dữ dội. Alan thực hiện một số thay đổi để tăng chất lượng đội, trong đ&oacute; c&oacute; sự xuất hiện của một tiền đạo l&ugrave;i (Jay Rodriguez). Man Utd c&oacute; cơ hội để kết liễu trận đấu nhưng bỏ lỡ. Đ&oacute; cũng l&agrave; l&uacute;c họ ghi b&agrave;n. Điều n&agrave;y ho&agrave;n to&agrave;n b&igrave;nh thường. Alan đ&atilde; thử mọi phương &aacute;n nhưng ch&uacute;ng t&ocirc;i vẫn xứng đ&aacute;ng c&oacute; ba điểm&quot;.</p>\n\n<p style=\"text-align:justify\">Pulis dẫn dắt West Brom từ th&aacute;ng 1/2015 v&agrave; k&yacute; hợp đồng mới với đội hồi th&aacute;ng T&aacute;m vừa qua. Chuỗi phong độ kh&ocirc;ng tốt v&agrave; lối chơi thiếu đẹp mắt của West Brom được cho l&agrave; nguy&ecirc;n nh&acirc;n khiến nh&agrave; cầm qu&acirc;n 59 tuổi bị c&aacute;ch chức. Pulis nổi tiếng với lối chơi đậm chất thể lực truyền thống của Anh. &Ocirc;ng cũng c&oacute; quan hệ bạn b&egrave; th&acirc;n thiết với Mourinho.</p>', '', '', '', 3, 4, 1, '2017-12-18 02:27:42', '2018-01-18 18:59:15'),
(5, 'Thùy Linh vô địch giải cầu lông quốc tế Italy', 'thuy-linh-vo-dich-giai-cau-long-quoc-te-italy', 'conmochieu-5.png', 'Maecenas facilisis viverra nulla nec tempor. Vestibulum bibendum, metus et faucibus porttitor, orci odio elementum tortor, at feugiat eros neque id lacus. Vestibulum eleifend tortor velit. Suspendisse id elit in quam sollicitudin fermentum sit amet vel dui. Nam lobortis ultrices nisl in ultrices. Etiam sed gravida nisi, at elementum nunc. Praesent volutpat ligula magna, in elementum sapien ultricies id.', '<p style=\"text-align:justify\">Trong trận chung kết đơn nữ ng&agrave;y 17/12, Nguyễn Th&ugrave;y Linh (thứ 80 thế giới) hạ gục Line Christophersen (299 thế giới) với điểm s&aacute;t n&uacute;t 24-22, 16-21 v&agrave; 23-21 qua 56 ph&uacute;t. Tay vợt người Ph&uacute; Thọ nhận gần 2.000 đ&ocirc;la tiền thưởng v&agrave; c&oacute; th&ecirc;m 4.000 điểm.<br />\nĐ&acirc;y l&agrave; lần đầu ti&ecirc;n Th&ugrave;y Linh v&ocirc; địch một giải Challenge &ndash; đứng thứ tư hệ thống cầu l&ocirc;ng quốc tế, sau c&aacute;c giải của BWF, Super Series v&agrave; Grand Prix. Tay vợt 20 tuổi đ&aacute;nh bại bốn đối thủ kh&aacute;c tr&ecirc;n đường tới chung kết, trong lần đầu ti&ecirc;n một m&igrave;nh du đấu ch&acirc;u &Acirc;u.</p>\n\n<p style=\"text-align:justify\">Ng&ocirc;i vương ở đất nước h&igrave;nh chiếc ủng c&oacute; thể đưa Th&ugrave;y Linh v&agrave;o top 70 thế giới trong bảng xếp hạng BWF v&agrave;o thứ Năm tới. So với c&aacute;ch đ&acirc;y hơn hai năm khi c&ocirc; c&ograve;n đứng ngo&agrave;i top 200, đ&acirc;y l&agrave; bước tiến đ&aacute;ng kể. Th&ugrave;y Linh được coi như tay vợt sẽ kế tục Vũ Thị Trang để trở th&agrave;nh số một Việt Nam trong tương lai.</p>\n\n<p style=\"text-align:justify\">Tại SEA Games 2017, Th&ugrave;y Linh lọt đến tứ kết v&agrave; chỉ chịu g&aacute;c vợt trước đối thủ chủ nh&agrave; Malaysia &ndash; Sonia Cheah Su Ya.</p>', '', '', '', 2, 5, 1, '2017-12-18 02:28:24', '2018-01-18 18:59:25'),
(6, 'Trọng tài được bênh vực sau khi tước bàn thắng hợp lệ của Barca', 'trong-tai-duoc-benh-vuc-sau-khi-tuoc-ban-thang-hop-le-cua-barca', 'conmochieu-6.png', 'Suspendisse accumsan lacus id elit luctus, et vulputate lacus fermentum. Fusce maximus ante mi, vel venenatis nibh tempor et. Nunc orci nibh, accumsan non sollicitudin ac, tincidunt eu justo. Mauris finibus imperdiet neque, quis fermentum nulla tristique sed. Etiam dapibus ligula ut magna tempor cursus. Etiam et massa ac nisi mattis pulvinar. Aliquam at justo a arcu fringilla gravida. Morbi laoreet porttitor ex, a laoreet sem suscipit ac. Suspendisse potenti. Suspendisse potenti. Integer luctus ex quis nulla fermentum, eget pulvinar libero aliquet. Quisque tempus dignissim commodo. Pellentesque mollis magna a mi pulvinar, ac tempus leo aliquam.', '<p style=\"text-align:justify\">T&igrave;nh huống diễn ra khi Luis Suarez thực hiện một c&uacute; s&uacute;t cận th&agrave;nh ở ph&uacute;t 45. Từ ch&acirc;n tiền đạo người Uruguay, b&oacute;ng vượt qua vạch v&ocirc;i trước khi bị thủ m&ocirc;n Ruben Martinez đẩy ra.</p>\n\n<p style=\"text-align:justify\">Trọng t&agrave;i Lahoz quyết định kh&ocirc;ng c&ocirc;ng nhận b&agrave;n thắng, bất chấp phản đối của Luis Suarez. M&aacute;y quay truyền h&igrave;nh cũng cho thấy r&otilde; b&oacute;ng vượt qua hẳn vạch v&ocirc;i rồi mới bị đẩy ra.<br />\nTuy nhi&ecirc;n, cựu trọng t&agrave;i Andujar Oliver đ&atilde; l&ecirc;n tiếng bảo vệ đồng nghiệp: &quot;Chỉ c&oacute; c&ocirc;ng nghệ mới x&aacute;c định được b&agrave;n thắng của Luis Suarez. Lahoz kh&ocirc;ng thể l&agrave;m g&igrave; hơn trong t&igrave;nh huống n&agrave;y&quot;.</p>\n\n<p style=\"text-align:justify\">Đ&acirc;y kh&ocirc;ng phải l&agrave; lần đầu ti&ecirc;n Barca bị từ chối b&agrave;n thắng sau khi b&oacute;ng qua vạch v&ocirc;i m&ugrave;a n&agrave;y. Ở trận h&ograve;a Valencia, trọng t&agrave;i cũng tước một b&agrave;n của Lionel Messi d&ugrave; b&oacute;ng qua vạch v&ocirc;i h&agrave;ng chục centimet.</p>\n\n<p style=\"text-align:justify\">So với trận h&ograve;a Valencia, điểm kh&aacute;c biệt ở trận gặp Deportivo l&agrave; Barca gi&agrave;nh chiến thắng. Suarez v&agrave; Paulinho đều lập c&uacute; đ&uacute;p gi&uacute;p đội b&oacute;ng đ&egrave; bẹp đối thủ với tỷ số 4-0, vững v&agrave;ng ở đỉnh bảng La Liga.</p>', '', '', '', 10, 6, 1, '2017-12-18 02:28:45', '2018-01-18 18:59:33'),
(7, 'Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 'thai-lan-ton-that-nghiem-trong-truoc-them-vong-chung-ket-u23-chau-a', 'conmochieu-7.png', 'Không có được lực lượng mạnh nhất nhưng HLV Zoran Jankovic tự tin Thái Lan sẽ có điểm tại giải đấu trên đất Trung Quốc.', '<p style=\"text-align:justify\">Th&aacute;i Lan chốt danh s&aacute;ch 23 cầu thủ tham dự v&ograve;ng chung kết U23 ch&acirc;u &Aacute; v&agrave;o chiều 2/1. HLV Zoran Jankovic buộc phải để Shinnaphat Leeaoh, Phitiwat Sukjitthammakul v&agrave; Suriya Singmui ở nh&agrave; v&igrave; l&yacute; do chấn thương. Bộ đ&ocirc;i Kannarin Thawornsak v&agrave; Noppol Pholkum c&oacute; t&ecirc;n trong danh s&aacute;ch sang Trung Quốc nhưng kh&ocirc;ng thể đ&aacute; trận ra qu&acirc;n gặp Triều Ti&ecirc;n v&igrave; chưa ho&agrave;n to&agrave;n hồi phục v&agrave; &aacute;n treo gi&ograve;.</p>\n\n<p style=\"text-align:justify\">&ldquo;T&ocirc;i sẽ phải xoay xở với đội h&igrave;nh thiếu một số cầu thủ quan trọng. Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng c&oacute; Shinnaphat, cầu thủ thể hiện ấn tượng tại giải giao hữu M-150 vừa qua. To&agrave;n đội chắc cũng sẽ nhớ Phitiwat v&agrave; Suriya. C&ograve;n Kannarin chưa hồi phục chấn thương v&agrave; Noppol bị treo gi&ograve; nữa. Nếu tất cả c&aacute;c cầu thủ n&agrave;y đều c&oacute; thể c&oacute; mặt, chắc chắn Th&aacute;i Lan sẽ kh&aacute;c&rdquo;, HLV Jankovic chia sẻ.</p>\n\n<p style=\"text-align:justify\">Tại v&ograve;ng chung kết U23 ch&acirc;u &Aacute;, Th&aacute;i Lan nằm ở bảng B c&ugrave;ng đương kim v&ocirc; địch Nhật Bản, Triều Ti&ecirc;n v&agrave; Palestine. Ở trận ra qu&acirc;n ng&agrave;y 10/1, họ đối đầu Triều Ti&ecirc;n. Hai đội đ&atilde; đối đầu nhau tại giải giao hữu M-150 vừa qua.</p>\n\n<p style=\"text-align:justify\">&ldquo;Ch&uacute;ng t&ocirc;i đụng Triều Ti&ecirc;n tại Buriam th&aacute;ng trước v&agrave; thất bại 0-1. Nhưng ở trận đấu đ&oacute; t&ocirc;i thực hiện rất nhiều sự thay đổi trong đội h&igrave;nh, sau trận đấu với Nhật Bản. T&ocirc;i tin chắc nếu h&ocirc;m đ&oacute; m&igrave;nh d&ugrave;ng tất cả những cầu thủ tốt nhất, Th&aacute;i Lan đ&atilde; thắng&rdquo;, HLV Jankovic tuy&ecirc;n bố.</p>\n\n<p style=\"text-align:justify\">V&ograve;ng chung kết U23 ch&acirc;u &Aacute; c&oacute; t&iacute;nh chất quyết định với chiếc ghế của HLV Jankovic. Chiến lược gia người Serbia trước đ&oacute; đ&atilde; phải hứng chịu sự chỉ tr&iacute;ch lớn của người h&acirc;m mộ khi Th&aacute;i Lan thua Việt Nam, đứng cuối giải tứ h&ugrave;ng M-150 ngay tr&ecirc;n s&acirc;n nh&agrave;.</p>\n\n<p style=\"text-align:justify\">S&aacute;ng nay 3/1, Th&aacute;i Lan di chuyển sang Trung Quốc. Đội sẽ c&oacute; th&ecirc;m trận giao hữu với Australia trước khi bước v&agrave;o tranh t&agrave;i tại v&ograve;ng chung kết U23 ch&acirc;u &Aacute;.</p>', 'chú thích Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 'metakeyword Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 'metadescription Thái Lan tổn thất nghiêm trọng trước thềm vòng chung kết U23 châu Á', 28, 7, 1, '2018-01-03 07:29:00', '2018-01-18 18:59:40'),
(8, 'Guardiola đưa De Bruyne lên mây', 'guardiola-dua-de-bruyne-len-may', 'conmochieu-8.png', 'Tiền vệ người Bỉ không cần nghỉ ngơi, dù được chẩn đoán chấn thương cách đây hai ngày.', '<p style=\"text-align:justify\">&quot;Kevin De Bruyne đ&atilde; cho thấy một nh&acirc;n c&aacute;ch tuyệt vời&quot;, Pep Guardiola khen học tr&ograve; sau trận thắng Watford 3-1 h&ocirc;m 2/1. &quot;Cậu ấy n&oacute;i với t&ocirc;i, rằng muốn được chơi b&oacute;ng, bất chấp vấn đề với mắt c&aacute; gặp phải ở trận đấu với Crystal Palace. De Bruyne đ&atilde; cho ch&uacute;ng t&ocirc;i nhiều thứ, v&agrave; tối nay l&agrave; một m&agrave;n tr&igrave;nh diễn ho&agrave;n hảo&quot;.</p>\n\n<p style=\"text-align:justify\">Tiền vệ người Bỉ phải rời s&acirc;n bằng c&aacute;ng sau t&igrave;nh huống va chạm với Jason Puncheon ở cuối trận gặp Crystal Palace h&ocirc;m 31/12. D&ugrave; kh&ocirc;ng gặp vấn đề nghi&ecirc;m trọng, ng&ocirc;i sao h&agrave;ng đầu Man City được cho l&agrave; sẽ nghỉ ngơi tối 2/1. Tuy nhi&ecirc;n, anh khiến tất cả bất ngờ khi đ&aacute; ch&iacute;nh v&agrave; chơi 80 ph&uacute;t.<br />\nMan City chỉ mất 38 gi&acirc;y để t&igrave;m được m&agrave;nh lưới Watford, trước khi c&oacute; th&ecirc;m hai b&agrave;n nữa để kết th&uacute;c trận đấu v&ograve;ng 22 bằng chiến thắng 3-1. Đội chủ s&acirc;n Etihad đ&atilde; tr&aacute;nh được sự sụp đổ d&acirc;y chuyền vốn bị đồn đo&aacute;n sau trận h&ograve;a kh&ocirc;ng b&agrave;n thắng với Crystal Palace.</p>\n\n<p style=\"text-align:justify\">&quot;Ch&uacute;ng t&ocirc;i đ&atilde; khởi đầu trận đấu rất tốt, v&agrave; hiệp hai cũng như vậy&quot;, Guardiola nhận x&eacute;t. &quot;Đ&oacute; l&agrave; phản ứng t&iacute;ch cực sau khi để mất điểm ở Selhurst Park c&aacute;ch đ&acirc;y hai ng&agrave;y. Ch&uacute;ng t&ocirc;i đ&atilde; đ&aacute;nh bại một đội b&oacute;ng được tổ chức tốt, v&agrave; gi&agrave;nh th&ecirc;m ba điểm nữa. Mọi chuyện đơn giản chỉ c&oacute; vậy&quot;.</p>\n\n<p style=\"text-align:justify\">Khoảng c&aacute;ch giữa Man City v&agrave; nh&oacute;m b&aacute;m đuổi trở lại với mốc 15 điểm. Nếu Chelsea vượt qua Arsenal tối 3/1, v&agrave; đ&ograve;i lại vị tr&iacute; nh&igrave; bảng của Man Utd, khoảng c&aacute;ch n&agrave;y sẽ xuống 14, nhưng cựu HLV Barca tỏ vẻ kh&ocirc;ng quan t&acirc;m nhiều tới việc ấy.</p>\n\n<p style=\"text-align:justify\">&quot;Điều quan trọng l&agrave; ch&uacute;ng t&ocirc;i tạo ra được nhiều cơ hội r&otilde; n&eacute;t. T&ocirc;i kh&ocirc;ng nhớ ch&iacute;nh x&aacute;c, nhưng cầu thủ t&ocirc;i c&oacute; khoảng năm hay s&aacute;u cơ hội c&oacute; thể ghi b&agrave;n. Mục ti&ecirc;u của Man City l&agrave; chơi hay hơn đối thủ trong mọi trận đấu, v&agrave; giờ ch&uacute;ng t&ocirc;i đang đi đ&uacute;ng con đường ấy&quot;, nh&agrave; cầm qu&acirc;n 46 tuổi thổ lộ.</p>', 'chú thích Tiền vệ người Bỉ không cần nghỉ ngơi, dù được chẩn đoán chấn thương cách đây hai ngày.', 'metakeyword Guardiola đưa De Bruyne lên mây', 'metadescription Guardiola đưa De Bruyne lên mây', 5, 8, 1, '2018-01-03 07:30:50', '2018-01-18 18:59:47'),
(9, 'Man City trút giận lên Watford', 'man-city-trut-gian-len-watford', 'conmochieu-10.png', 'Sau khi bị Crystal Palace cắt đứt mạch thắng 18 trận, Man City bùng nổ trở lại, hạ Watford 3-1 trên sân nhà Etihad.', '<p style=\"text-align:justify\">Mở điểm từ gi&acirc;y 38, nh&acirc;n đ&ocirc;i c&aacute;ch biệt sau gần 15 ph&uacute;t v&agrave; ghi b&agrave;n thứ ba sau một tiếng đầu ti&ecirc;n, Man City dường như kh&ocirc;ng bị t&aacute;c động t&acirc;m l&yacute; bởi kết quả trước đ&oacute; ở s&acirc;n Selhurst Park. Họ kiểm so&aacute;t 77% thời lượng b&oacute;ng, với 17 pha dứt điểm, b&oacute;p nghẹt cơ hội c&oacute; điểm của đội kh&aacute;ch.</p>\n\n<p style=\"text-align:center\"><img alt=\"Cặp đôi Silva - De Bruyne tái xuất giúp Man City trở lại quỹ đạo\" src=\"/upload/hinh-2.jpg\" style=\"margin-left:5px; margin-right:5px\" /></p>\n\n<p style=\"text-align:center\"><em>Cặp đ&ocirc;i Silva - De Bruyne t&aacute;i xuất gi&uacute;p Man City trở lại quỹ đạo</em></p>\n\n<p style=\"text-align:justify\">HLV Pep Guardiola mất tiền đạo Gabriel Jesus trong khoảng hai th&aacute;ng tới sau chấn thương d&acirc;y chằng đầu gối ở Palace. Nhưng Kevin de Bruyne hồi phục thần tốc để tiếp tục đ&aacute; ch&iacute;nh b&ecirc;n cạnh David Silva &ndash; tiền vệ gạt qua vấn đề gia đ&igrave;nh để trở lại đưa Man City về quỹ đạo. H&agrave;ng thủ đội chủ nh&agrave; cũng ch&agrave;o đ&oacute;n trung vệ John Stones t&aacute;i xuất, tạo ra bộ khung mạnh nhất m&agrave; Guardiola đang sở hữu.</p>\n\n<p style=\"text-align:justify\">Man City dồn l&ecirc;n ngay sau hiệu c&ograve;i khai cuộc, với những t&igrave;nh huống đan b&oacute;ng b&ecirc;n c&aacute;nh tr&aacute;i. Silva chọc khe đ&uacute;ng tầm Sane bắt tốc độ, căng ngang để Sterling đệm b&oacute;ng v&agrave;o lưới trống. Đ&acirc;y l&agrave; b&agrave;n thắng sớm nhất ở Ngoại hạng Anh m&ugrave;a n&agrave;y. Thế bế tắc bị ph&aacute; vỡ ch&oacute;ng v&aacute;nh khiến h&agrave;ng thủ Watford đổ sụp.</p>\n\n<p style=\"text-align:center\"><img alt=\"Sterling ghi bàn sớm nhất Ngoại hạng Anh mùa này\" src=\"/upload/hinh-3.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>Sterling ghi b&agrave;n sớm nhất Ngoại hạng Anh m&ugrave;a n&agrave;y</em></p>\n\n<p style=\"text-align:justify\">Đến ph&uacute;t 12, vẫn l&agrave; Silva chọc khe đ&uacute;ng nhịp sang c&aacute;nh phải cho De Bruyne chuyền b&oacute;ng tầm thấp v&agrave;o cấm địa. Sergio Aguero đ&atilde; chờ sẵn ở trong, nhưng trong nỗ lực chuồi người ph&aacute; b&oacute;ng, hậu vệ Christian Kabasele v&ocirc; t&igrave;nh đ&aacute; phản. &ldquo;Đ&oacute; c&oacute; vẻ l&agrave; c&aacute;ch duy nhất để Watford ghi b&agrave;n trận n&agrave;y&rdquo;, một CĐV b&igrave;nh luận h&agrave;i hước tr&ecirc;n Reddit.</p>\n\n<p style=\"text-align:justify\">Lợi thế dẫn hai b&agrave;n khiến trận đấu coi như sớm an b&agrave;i, gi&uacute;p Man City chơi b&oacute;ng như đ&aacute; tập trong thời gian c&ograve;n lại. Aguero đ&atilde; c&oacute; thể ghi hat-trick với những cơ hội cuối hiệp một v&agrave; đầu hiệp hai, trong đ&oacute; c&oacute; pha dứt điểm dội x&agrave; ngang.</p>\n\n<p style=\"text-align:justify\">Nhưng trung phong người Argentina vẫn được mừng b&agrave;n thắng ở trận n&agrave;y. Ph&uacute;t 63, De Bruyne tiếp tục thực hiện đường tạt b&oacute;ng kh&oacute; chịu từ c&aacute;nh phải, khiến thủ m&ocirc;n Gomes kh&ocirc;ng thể bắt d&iacute;nh. Aguero nhanh ch&acirc;n đ&aacute; bồi trong t&iacute;ch tắc, ghi b&agrave;n thứ 13 tại giải.</p>\n\n<p style=\"text-align:center\"><img alt=\"\" src=\"/upload/hinh-1.jpg\" /></p>\n\n<p style=\"text-align:center\"><em>De Bruyne đ&atilde; c&oacute; ch&iacute;n đường kiến tạo tại Ngoại hạng Anh m&ugrave;a n&agrave;y</em></p>\n\n<p style=\"text-align:justify\">Watford đ&atilde; kh&ocirc;ng thể chọc thủng lưới Man City tr&ecirc;n s&acirc;n kh&aacute;ch kể từ năm 1988. Sau 30 năm, đội qu&acirc;n của HLV Marco Silva đ&atilde; h&oacute;a giải lời nguyền, d&ugrave; b&agrave;n thắng của Andre Gray chẳng l&agrave;m ảnh hưởng đến kết cục trận đấu.</p>\n\n<p style=\"text-align:justify\">Chiến thắng gi&uacute;p Man City gia tăng khoảng c&aacute;ch 15 điểm hơn Man Utd v&agrave; 17 điểm hơn Chelsea - đội vẫn c&ograve;n trận đ&aacute; muộn v&ograve;ng 22 gặp Arsenal.</p>', 'chú thích Man City trút giận lên Watford', 'metakeyword Man City trút giận lên Watford', 'metadescription Man City trút giận lên Watford', 45, 9, 1, '2018-01-03 07:32:25', '2018-01-18 18:59:55'),
(10, 'Tottenham lên thứ năm trong ngày Harry Kane dự bị', 'tottenham-len-thu-nam-trong-ngay-harry-kane-du-bi', 'conmochieu-11.png', 'Á quân Ngoại hạng Anh mùa 2016-2017 tận dụng tốt cú sảy chân của Arsenal để chiếm vị trí của đối thủ bằng chiến thắng 2-0 trước Swansea.', '<p style=\"text-align:justify\">Mauricio Pochettino chủ t&acirc;m để d&agrave;nh Harry Kane cho trận tiếp đối thủ kh&oacute; chơi West Ham sau đ&acirc;y hai ng&agrave;y. Trước một Swansea đang ch&igrave;m nghỉm ở đ&aacute;y bảng điểm, &ocirc;ng thầy người Argentina xếp Fernando Llorente đ&aacute; ch&iacute;nh từ đầu. Cựu cầu thủ Juventus kh&ocirc;ng phụ sự tin tưởng, mở tỷ số ngay ph&uacute;t 12 bằng pha đ&aacute;nh đầu sở trường.</p>\n\n<p style=\"text-align:justify\">B&agrave;n thắng sớm gi&uacute;p Tottenham dễ đ&aacute; hơn hẳn trong gần 80 ph&uacute;t c&ograve;n lại. Kh&ocirc;ng tấn c&ocirc;ng &agrave;o ạt, đội kh&aacute;ch kiểm so&aacute;t thế trận bằng những đường ban bật cự ly ngắn. Với tỷ lệ giữ b&oacute;ng l&ecirc;n đến gần 68%, &quot;G&agrave; trống&quot; kh&ocirc;ng cho &quot;Thi&ecirc;n nga đen&quot; cơ hội n&agrave;o san bằng c&aacute;ch biệt, trước khi tung đ&ograve;n kết liễu &iacute;t ph&uacute;t trước khi hết giờ, bằng pha dứt điểm của Dele Alli.<br />\nViệc được nghỉ bảy ng&agrave;y, so với ba của đối thủ, gi&uacute;p Tottenham v&ocirc; c&ugrave;ng sung sức trong chuyến viếng thăm s&acirc;n Liberty tối 2/1. Tr&ecirc;n đ&agrave; hưng phấn với mạch thắng từ cuối năm 2017, Tottenham sớm c&oacute; lợi thế dẫn b&agrave;n. Ph&uacute;t 12, Christian Eriksen treo b&oacute;ng chuẩn x&aacute;c từ c&uacute; đ&aacute; phạt b&ecirc;n c&aacute;nh tr&aacute;i, để Llorente đ&aacute;nh đầu v&agrave;o g&oacute;c xa, mở tỷ số.</p>\n\n<p style=\"text-align:justify\">Thầy tr&ograve; Pochettino đ&atilde; thắng ba trong bốn lần l&agrave;m kh&aacute;ch gần nhất của Swansea, v&agrave; phong độ ấy tiếp tục được thể hiện tối 2/1. D&ugrave; vắng tiền đạo chủ lực, Tottenham vẫn ho&agrave;n to&agrave;n chủ động, nhất l&agrave; ở những t&igrave;nh huống cố định. Ngo&agrave;i pha l&agrave;m b&agrave;n đầu trận, Llorente c&ograve;n &iacute;t nhất hai lần nữa uy hiếp khung th&agrave;nh Swansea bằng những c&uacute; chạy cắt mặt sở trường. Tuy nhi&ecirc;n, tiền đạo người T&acirc;y Ban Nha kh&ocirc;ng một lần th&agrave;nh c&ocirc;ng th&ecirc;m.<br />\nNgười chơi nổi bật tr&ecirc;n s&acirc;n Liberty tối 2/1 l&agrave; Eriksen. Tiền vệ người Đan Mạch vừa l&agrave; người giữ nhịp cho c&aacute;c đợt l&ecirc;n b&oacute;ng của đội kh&aacute;ch, vừa l&agrave; ch&acirc;n đ&aacute; phạt tạo s&oacute;ng gi&oacute; trực tiếp về ph&iacute;a khung th&agrave;nh Lukas Fabianski. Trong v&ograve;ng hơn một ph&uacute;t, từ ph&uacute;t 62, cầu thủ được mệnh danh l&agrave; &quot;Beckham của Đan Mạch&quot; hai lần khiến cựu thủ th&agrave;nh Arsenal vất vả cản ph&aacute; những t&igrave;nh huống b&oacute;ng chết, khi anh c&oacute; g&oacute;c s&uacute;t thuận lợi.</p>\n\n<p style=\"text-align:justify\">Swansea dồn l&ecirc;n mạnh mẽ trong hiệp hai, với những đường treo b&oacute;ng bổng từ hai c&aacute;nh. Ph&uacute;t 70, thiếu ch&uacute;t nữa đội chủ nh&agrave; l&agrave;m n&ecirc;n chuyện khi b&oacute;ng chạm lưng Jan Vertonghen bay ngược trở lại khung th&agrave;nh Hugo Lloris, rồi t&igrave;m tới cột dọc. T&aacute;m ph&uacute;t sau cơ hội n&agrave;y, Tottenham đ&aacute;p trả bằng c&uacute; đệm b&oacute;ng trong v&ograve;ng cấm của Son Heung-min, từ quả tạt b&ecirc;n c&aacute;nh phải của Eriksen. B&oacute;ng đi chệch cột dọc trong gang tấc.<br />\nNửa cuối hiệp hai, Harry Kane mới được tung v&agrave;o s&acirc;n. Cầu thủ dẫn đầu danh s&aacute;ch vua ph&aacute; lưới lập tức để lại dấu ấn trong b&agrave;n ấn định chiến thắng. Ph&uacute;t 89, tiền đạo 24 tuổi khởi xướng pha phản c&ocirc;ng b&ecirc;n c&aacute;nh tr&aacute;i. Anh dẫn b&oacute;ng dọc bi&ecirc;n rồi chuyền bổng cho Alli ở ph&iacute;a trong. C&uacute; dứt điểm đầu ti&ecirc;n của tiền vệ số 20 bị chặn lại, nhưng b&oacute;ng bật ra đ&uacute;ng tầm băng v&agrave;o đ&aacute; bồi của cầu thủ n&agrave;y, v&agrave; anh kh&ocirc;ng kh&oacute; để s&uacute;t b&oacute;ng v&agrave;o lưới trống khi Fabianski đ&atilde; lỡ trớn.</p>\n\n<p style=\"text-align:justify\">Chiến thắng chung cuộc 2-0 gi&uacute;p Tottenham c&oacute; 40 điểm sau 21 v&ograve;ng đấu, vượt qua Arsenal với hai điểm nhiều hơn để chiếm vị tr&iacute; thứ năm. Hiện đội b&oacute;ng th&agrave;nh London k&eacute;m đội xếp tr&ecirc;n Liverpool bốn điểm nhưng c&ograve;n một trận trong tay.</p>', 'chú thích Tottenham lên thứ năm trong ngày Harry Kane dự bị', 'metakeyword Tottenham lên thứ năm trong ngày Harry Kane dự bị', 'metadescription Tottenham lên thứ năm trong ngày Harry Kane dự bị', 15, 10, 1, '2018-01-03 07:43:42', '2018-01-18 19:00:02'),
(11, 'Wenger gặp vạ vì bình luận về trọng tài', 'wenger-gap-va-vi-binh-luan-ve-trong-tai', 'conmochieu-12.png', 'HLV của Arsenal bị cho là dùng từ ngữ không đúng mực với các trọng tài sau trận hòa giữa Arsenal và West Brom.', '<p style=\"text-align:justify\">&quot;Từ ngữ hoặc h&agrave;nh động của &ocirc;ng ấy trong ph&ograve;ng thay đồ của trọng t&agrave;i bị buộc tội l&agrave; lạm dụng hoặc kh&ocirc;ng th&iacute;ch hợp, hoặc chất vấn t&iacute;nh trung thực của đội ngũ trọng t&agrave;i&quot;, th&ocirc;ng b&aacute;o của ban kỷ luật LĐBĐ Anh (FA) c&oacute; đoạn.<br />\nTrọng t&agrave;i Mike Dean thổi phạt lỗi để b&oacute;ng chạm tay trong v&ograve;ng cấm của Calum Chambers khi trận đấu bước sang ph&uacute;t 89, khiến Arsenal bị thủng lưới v&agrave; bị West Brom cầm h&ograve;a 1-1. Quyết định n&agrave;y khiến Arsene Wenger phản ứng dữ dội v&igrave; &ocirc;ng cho rằng Chambers r&otilde; r&agrave;ng kh&ocirc;ng cố &yacute; để b&oacute;ng chạm tay khi anh chỉ đứng c&aacute;ch Kieran Gibbs, người đưa b&oacute;ng tr&uacute;ng tay Chambers, 2 met.</p>\n\n<p style=\"text-align:justify\">Wenger sẽ c&oacute; thời hạn đến 18h ng&agrave;y 5/1 để phản hồi c&aacute;o buộc của FA. Trả lời phỏng vấn h&ocirc;m 2/1, HLV của Arsenal n&oacute;i: &quot;Chuyện n&agrave;y thật đ&aacute;ng thất vọng. Điều khiến t&ocirc;i phiền l&ograve;ng l&agrave; việc n&agrave;y diễn ra nhiều lần trong m&ugrave;a giải, tại Stoke, Watford, Man City, b&acirc;y giờ l&agrave; West Brom&quot;.</p>\n\n<p style=\"text-align:justify\">&quot;Đ&oacute; l&agrave; sự tr&ugrave;ng hợp khiến t&ocirc;i lo ngại. Đ&oacute; l&agrave; l&yacute; do tại sao t&ocirc;i kh&ocirc;ng h&agrave;i l&ograve;ng với quyết định của trọng t&agrave;i, t&ocirc;i kh&ocirc;ng hiểu tại sao &ocirc;ng ta thổi phạt đền. N&oacute; thật kh&ocirc;ng giống với những g&igrave; đ&atilde; diễn ra. Tr&ecirc;n kh&iacute;a cạnh đ&oacute;, c&oacute; một ch&uacute;t lo lắng với t&ocirc;i&quot;, Wenger n&oacute;i tiếp.</p>\n\n<p style=\"text-align:justify\">Arsenal, đang đứng thứ năm tại Ngoại hạng Anh, sẽ tiếp đội đứng thứ ba Chelsea v&agrave;o rạng s&aacute;ng ng&agrave;y 4/1 (giờ H&agrave; Nội).</p>', 'chú thích Wenger gặp vạ vì bình luận về trọng tài', 'metakeyword Wenger gặp vạ vì bình luận về trọng tài', 'metadescription Wenger gặp vạ vì bình luận về trọng tài', 1, 11, 1, '2018-01-03 07:45:23', '2018-01-18 19:00:10'),
(12, 'Pochettino: \'Tottenham thắng vì lối chơi, không phải do nghỉ nhiều hơn\'', 'pochettino-tottenham-thang-vi-loi-choi,-khong-phai-do-nghi-nhieu-hon', 'conmochieu-13.png', 'HLV của Tottenham cho rằng thầy trò ông xứng đáng với chiến thắng ba điểm có được trên sân Swansea ở Ngoại hạng Anh hôm 2/1.', '<p style=\"text-align:justify\">&quot;T&ocirc;i nghĩ kết quả chung cuộc, tự th&acirc;n n&oacute; đ&atilde; n&oacute;i l&ecirc;n tất cả. Một chiến thắng xứng đ&aacute;ng d&agrave;nh cho Tottenham&quot;, Mauricio Pochettino n&oacute;i với Sky Sports. &quot;Ch&uacute;ng t&ocirc;i đơn giản l&agrave; hay hơn Swansea&quot;.</p>\n\n<p style=\"text-align:justify\">&Aacute; qu&acirc;n m&ugrave;a giải 2016-2017 c&oacute; bảy ng&agrave;y nghỉ, so với ba của Swansea, trước cuộc đọ sức tối 2/1. Tottenham cũng l&agrave; một trong những đội c&oacute; thời gian nghỉ d&agrave;i nhất trong chặng marathon từ Gi&aacute;ng sinh đến đầu năm mới. Họ chơi bốn trận trong v&ograve;ng 12 ng&agrave;y, so với 10 ng&agrave;y của Man City, v&agrave; ch&iacute;n của Man Utd.<br />\n&quot;Vấn đề ở đ&acirc;y kh&ocirc;ng nằm ở thể lực&quot;, Pochettino phủ nhận lợi thế nghỉ nhiều hơn so với Swansea. &quot;Ch&uacute;ng t&ocirc;i đ&atilde; &aacute;p đảo trong suốt 90 ph&uacute;t, tạo ra nhiều cơ hội ăn b&agrave;n hơn v&agrave; xứng đ&aacute;ng gi&agrave;nh chiến thắng chung cuộc. Tuy nhi&ecirc;n, điều t&ocirc;i mừng hơn l&agrave; c&aacute;ch học tr&ograve; vượt qua điều kiện thời tiết, trời mưa, lạnh, để gi&agrave;nh chiến thắng&quot;.</p>\n\n<p style=\"text-align:justify\">Tottenham đ&atilde; vươn l&ecirc;n vị tr&iacute; thứ năm, hơn hai điểm so với Arsenal đứng kế sau. &quot;G&agrave; trống&quot; c&ograve;n k&eacute;m Liverpool đứng tr&ecirc;n bốn điểm, nhưng c&ograve;n một trận trong tay, gặp West Ham sau đ&acirc;y hai ng&agrave;y.</p>\n\n<p style=\"text-align:justify\">Pochettino đ&atilde; chủ động dưỡng sức cho tiền đạo chủ lực Harry Kane trong chuyến h&agrave;nh qu&acirc;n tới s&acirc;n Liberty tối 2/1. Tiền đạo dẫn đầu danh s&aacute;ch vua ph&aacute; lưới Ngoại hạng Anh m&ugrave;a n&agrave;y v&agrave;o s&acirc;n ph&uacute;t 68, v&agrave; g&oacute;p c&ocirc;ng trong b&agrave;n ấn định chiến thắng 2-0 của Dele Alli.</p>\n\n<p style=\"text-align:justify\">&quot;Trận gặp Swansea giống như một buổi tập cho Harry Kane trước v&ograve;ng đấu kế tiếp. Cậu ấy gặp một ch&uacute;t vấn đề về tăng tốc trước trận gặp Swansea, v&agrave; hy vọng, Kane sẽ ổn trong 24 giờ tới&quot;, &ocirc;ng thầy 45 tuổi thổ lộ. &quot;Kane l&agrave; một tiền đạo to&agrave;n diện, kh&ocirc;ng chỉ giỏi ghi b&agrave;n, m&agrave; c&ograve;n biết c&aacute;ch giữ b&oacute;ng, x&acirc;y dựng lối chơi v&agrave; kiến tạo cơ hội&quot;.</p>', 'chú thích HLV của Tottenham cho rằng thầy trò ông xứng đáng với chiến thắng ba điểm có được trên sân Swansea ở Ngoại hạng Anh hôm 2/1.', 'metakeyword Pochettino: \'Tottenham thắng vì lối chơi, không phải do nghỉ nhiều hơn\'', 'metadescription Pochettino: \'Tottenham thắng vì lối chơi, không phải do nghỉ nhiều hơn\'', NULL, 12, 1, '2018-01-03 07:47:53', '2018-01-18 19:00:17'),
(13, 'Man City mất Gabriel Jesus từ bốn đến sáu tuần', 'man-city-mat-gabriel-jesus-tu-bon-den-sau-tuan', 'conmochieu-14.png', 'HLV Pep Guardiola kỳ vọng tuyển thủ Brazil có thể trở lại trước vòng 1/8 Champions League gặp Basel ngày 13/2.', '<p style=\"text-align:justify\">&ldquo;Jesus sẽ vắng mặt trong bốn đến s&aacute;u tuần, c&oacute; thể l&acirc;u hơn&rdquo;, Guardiola tiết lộ về chấn thương đầu gối của học tr&ograve;.</p>\n\n<p style=\"text-align:justify\">Ch&acirc;n s&uacute;t 20 tuổi nhăn nh&oacute; rời s&acirc;n sau khi tranh chấp với Andros Townsend ở trận gặp Crystal Palace ng&agrave;y 31/12. Anh thậm ch&iacute; rơi nước mắt v&igrave; đau đớn.<br />\nTrang chủ Man City x&aacute;c nhận tiền đạo trưởng th&agrave;nh từ Palmeiras bị r&aacute;ch d&acirc;y chằng giữa gối. Trong th&ocirc;ng b&aacute;o mới nhất tr&ecirc;n Instagram, Jesus cho biết chấn thương kh&ocirc;ng nghi&ecirc;m trọng như lo ngại, v&igrave; kh&ocirc;ng cần phẫu thuật. Anh kỳ vọng sẽ kịp trở lại cho chuyến đi tới Basel. Trước đ&oacute;, Jesus phải lỡ nhiều trận ở Ngoại hạng Anh, trong đ&oacute; c&oacute; trận l&agrave;m kh&aacute;ch ở s&acirc;n Anfield của Liverpool.</p>\n\n<p style=\"text-align:justify\">B&ecirc;n cạnh Jesus, tiền vệ David Silva c&oacute; nguy cơ tiếp tục vắng mặt trong một số trận đấu tới v&igrave; l&yacute; do c&aacute; nh&acirc;n. Tuyển thủ T&acirc;y Ban Nha d&agrave;nh thời gian b&ecirc;n gia đ&igrave;nh trong Gi&aacute;ng Sinh, nhưng đ&atilde; trở lại g&oacute;p c&ocirc;ng v&agrave;o chiến thắng 3-1 trước Watford. Dẫu vậy, Silva c&oacute; thể sẽ bay về qu&ecirc; nh&agrave; một lần nữa do vấn đề gia đ&igrave;nh vẫn chưa được giải quyết.</p>\n\n<p style=\"text-align:justify\">&ldquo;Ch&uacute;ng t&ocirc;i mừng khi Silva đ&atilde; trở lại. Cậu ấy rất quan trọng với đội b&oacute;ng. Nhưng kh&ocirc;ng biết Silva sẽ ở c&ugrave;ng ch&uacute;ng t&ocirc;i bao l&acirc;u, khi quyết định thuộc về cậu ấy. Silva muốn thi đấu, nhưng gia đ&igrave;nh l&agrave; quan trọng nhất thế gian. D&ugrave; Man City đ&aacute;nh rơi bao nhi&ecirc;u điểm, t&ocirc;i cũng kh&ocirc;ng hối th&uacute;c Silva. Cậu ấy c&oacute; thể ra s&acirc;n, hoặc trở về T&acirc;y Ban Nha, t&ugrave;y &yacute; muốn. Tất cả phụ thuộc v&agrave;o t&igrave;nh trạng gia đ&igrave;nh Silva&rdquo;, Guardiola cho hay.</p>', 'chú thích Man City mất Gabriel Jesus từ bốn đến sáu tuần', 'metakeyword Man City mất Gabriel Jesus từ bốn đến sáu tuần', 'metadescription Man City mất Gabriel Jesus từ bốn đến sáu tuần', 2, 13, 1, '2018-01-03 07:49:39', '2018-01-18 19:00:24'),
(14, 'Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 'man-city-dan-dau-ve-so-cau-thu-kien-tao-tai-ngoai-hang-anh', 'conmochieu-15.png', 'Đội chủ sân Etihad góp ba cầu thủ vào danh sách 10 ngôi sao kiến tạo giỏi nhất trong giai đoạn đầu Ngoại hạng Anh 2017-2018.', '<p style=\"text-align:justify\">Ba cầu thủ của Man City gồm Kevin De Bruyne, David Silva v&agrave; Leroy Sane. Đ&acirc;y cũng l&agrave; ba cầu thủ chiếm ba vị tr&iacute; dẫn đầu trong danh s&aacute;ch.</p>\n\n<p style=\"text-align:justify\">De Bruyne đứng ở vị tr&iacute; số một nhờ ch&iacute;n đường chuyền dọn cỗ th&agrave;nh c&ocirc;ng cho đồng đội. Ở hai suất tiếp theo, Silva v&agrave; Sane đều c&oacute; t&aacute;m lần dọn cỗ th&agrave;nh c&ocirc;ng.<br />\nMan Utd chỉ c&oacute; một cầu thủ g&oacute;p mặt trong Top 10 l&agrave; Paul Pogba. Tiền vệ người Ph&aacute;p c&oacute; bảy lần dọn cỗ th&agrave;nh c&ocirc;ng, bằng th&agrave;nh t&iacute;ch với Riyad Mahrez.</p>\n\n<p style=\"text-align:justify\">B&ecirc;n cạnh Mahrez, Leicester City c&ograve;n c&oacute; một cầu thủ kh&aacute;c trong Top 10 l&agrave; Marc Albrighton. Việc c&oacute; hai ch&acirc;n chuyền hiệu quả phần n&agrave;o giải th&iacute;ch tại sao Leicester City thi đấy tốt thời gian gần đ&acirc;y.</p>\n\n<p style=\"text-align:justify\">Giống Man Utd, bốn đội gồm Liverpool, Chelsea, Tottenham v&agrave; Arsenal đều chỉ c&oacute; một cầu thủ lọt v&agrave;o Top 10. Đ&acirc;y cũng l&agrave; l&yacute; do dẫn đến việc năm ứng cử vi&ecirc;n n&agrave;y đều thua Man City về số b&agrave;n thắng.</p>\n\n<p style=\"text-align:justify\"><strong>10 cầu thủ kiến tạo giỏi nhất nửa đầu m&ugrave;a Ngoại hạng Anh:</strong></p>\n\n<p style=\"text-align:justify\">1. De Bruyne, đội Man City, 9 đường chuyền dọn cỗ th&agrave;nh c&ocirc;ng<br />\n2. Silva v&agrave; Sane, Man City, 8<br />\n3. Pogba (Man Utd) v&agrave; Mahrez (Leicester City), 7<br />\n4. Albrighton (Leicester City), Alli (Tottenham), Coutinho (Liverpool), Ramsey (Arsenal) v&agrave; Azpilicueta (Chelsea), 6</p>', 'chú thích Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 'metakeyword Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 'metadescription Man City dẫn đầu về số cầu thủ kiến tạo tại Ngoại hạng Anh', 12, 14, 1, '2018-01-03 07:52:45', '2018-01-18 19:00:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `category_article_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_article_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, '2017-12-18 02:25:21', '2017-12-18 02:25:21'),
(3, 3, 6, '2017-12-18 02:25:56', '2017-12-18 02:25:56'),
(4, 4, 6, '2017-12-18 02:27:42', '2017-12-18 02:27:42'),
(5, 5, 6, '2017-12-18 02:28:24', '2017-12-18 02:28:24'),
(6, 6, 6, '2017-12-18 02:28:45', '2017-12-18 02:28:45'),
(14, 2, 7, '2018-01-03 04:00:14', '2018-01-03 04:00:14'),
(16, 8, 4, '2018-01-03 07:30:50', '2018-01-03 07:30:50'),
(17, 9, 4, '2018-01-03 07:32:25', '2018-01-03 07:32:25'),
(18, 10, 4, '2018-01-03 07:43:42', '2018-01-03 07:43:42'),
(19, 11, 5, '2018-01-03 07:45:23', '2018-01-03 07:45:23'),
(20, 12, 5, '2018-01-03 07:47:53', '2018-01-03 07:47:53'),
(21, 13, 5, '2018-01-03 07:49:40', '2018-01-03 07:49:40'),
(22, 14, 5, '2018-01-03 07:52:45', '2018-01-03 07:52:45'),
(23, 7, 4, '2018-01-03 09:34:46', '2018-01-03 09:34:46'),
(24, 7, 5, '2018-01-03 09:34:46', '2018-01-03 09:34:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `category_id`, `caption`, `alt`, `image`, `page_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bé đón giáng sinh', 'bé đón giáng sinh 1', 'be-don-giang-sinh.png', 'https://www.hdwallpapers.in', 1, 1, '2017-12-16 05:03:34', '2017-12-28 08:46:03'),
(2, 1, 'Khi trẻ cười', 'khi trẻ cười 2', 'khi-tre-cuoi.png', 'cloudbeauty.vn', 2, 1, '2017-12-16 05:04:04', '2017-12-28 08:46:01'),
(3, 2, '', '', 'member-1.png', '', 1, 1, '2017-12-28 02:38:24', '2017-12-28 02:40:03'),
(4, 2, '', '', 'member-2.png', '', 2, 1, '2017-12-28 02:38:40', '2017-12-28 02:40:03'),
(5, 2, '', '', 'member-3.png', '', 3, 1, '2017-12-28 02:38:51', '2017-12-28 02:40:07'),
(6, 2, '', '', 'member-4.png', '', 4, 1, '2017-12-28 02:38:59', '2017-12-28 02:40:03'),
(7, 2, '', '', 'member-5.png', '', 5, 1, '2017-12-28 02:39:08', '2017-12-28 02:40:03'),
(8, 2, '', '', 'member-6.png', '', 6, 1, '2017-12-28 02:39:19', '2017-12-28 02:40:03'),
(9, 2, '', '', 'member-7.png', '', 7, 1, '2017-12-28 02:39:28', '2017-12-28 02:40:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_article`
--

INSERT INTO `category_article` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Dịch vụ', 'metakeyword dịch vụ', 'metadescription dịch vụ', 'dich-vu', 0, NULL, 1, 1, '2017-12-18 02:17:10', '2018-01-04 17:04:18'),
(5, 'Hoạt động', 'metakeword hoạt động', 'metadescription hoạt động', 'hoat-dong', 0, NULL, 2, 1, '2017-12-18 02:17:19', '2018-01-08 07:17:28'),
(6, 'Tin nội bộ', 'metakeword Tin nội bộ', 'metadescription Tin nội bộ', 'tin-noi-bo', 0, NULL, 3, 1, '2017-12-18 02:18:30', '2018-01-03 08:15:13'),
(7, 'Tin cộng đồng', 'metakeyword Tin cộng đồng', 'metadescription Tin cộng đồng', 'tin-cong-dong', 0, NULL, 4, 1, '2018-01-02 10:02:08', '2018-01-03 08:15:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_banner`
--

INSERT INTO `category_banner` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Slideshow', 'slideshow', 1, 1, '2017-12-16 05:02:58', '2017-12-28 08:45:44'),
(2, 'Đối tác', 'doi-tac', 1, 2, '2017-12-26 04:32:09', '2017-12-26 04:38:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', '', '', 'dien-thoai', NULL, 1, 0, 1, '2018-01-02 05:00:16', '2018-01-02 05:00:16'),
(2, 'Tablet', '', '', 'tablet', NULL, 1, 0, 2, '2018-01-02 05:00:28', '2018-01-08 07:18:38'),
(3, 'Laptop', '', '', 'laptop', NULL, 1, 0, 3, '2018-01-02 05:00:37', '2018-01-02 05:00:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_video`
--

DROP TABLE IF EXISTS `category_video`;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_video`
--

INSERT INTO `category_video` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'metakeyword video', 'metadescription video', 'video', NULL, 'thuvienhinh-1.png', 1, 1, '2018-01-09 10:03:48', '2018-01-09 11:08:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mobilephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `email`, `fullname`, `address`, `phone`, `mobilephone`, `fax`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'diemnguyen', '4d6b91520256cc8b073806b667fca04c', 'diemnguyen@dienkim.com', 'Nguyễn Thị Hồng Diễm', '14 Trần Huy Liệu', '0988152334', '9932283992', '5437739787', 1, 1, '2018-01-05 15:31:29', '2018-01-09 04:42:14'),
(2, 'khoatran', 'e10adc3949ba59abbe56e057f20f883e', 'khoatran@dienkim.com', 'Trần Đăng Khoa', '14 Huỳnh Văn Bánh', '0988152335', '9932283997', '5437739782', 1, 1, '2018-01-05 15:36:39', '2018-01-05 15:36:39'),
(3, 'vunh', 'e10adc3949ba59abbe56e057f20f883e', 'vunguyenhoang@dienkim.com', 'Nguyễn Hoàng Vũ', '16 Trường Sơn', '0988152331', '0874783779', '7675787833', 1, 1, '2018-01-05 15:44:56', '2018-01-05 15:44:56'),
(4, 'hanhlt', 'e10adc3949ba59abbe56e057f20f883e', 'hanhlt@dienkim.com', 'Lê Thị Hạnh', '18 Nguyễn Diệu', '0988123458', '7928492298', '7773573334', 1, 1, '2018-01-06 10:26:55', '2018-01-06 10:26:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_member`
--

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_member`
--

INSERT INTO `group_member` (`id`, `fullname`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, '2016-12-17 05:05:18', '2018-01-09 10:42:35'),
(2, 'Bài viết', 2, '2016-12-17 05:05:41', '2018-01-09 10:42:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_privilege`
--

INSERT INTO `group_privilege` (`id`, `group_member_id`, `privilege_id`, `created_at`, `updated_at`) VALUES
(2699, 1, 1, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2700, 1, 2, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2701, 1, 3, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2702, 1, 4, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2703, 1, 5, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2704, 1, 16, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2705, 1, 17, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2706, 1, 18, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2707, 1, 19, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2708, 1, 24, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2709, 1, 25, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2710, 1, 33, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2711, 1, 43, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2712, 1, 44, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2713, 1, 49, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2714, 1, 50, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2715, 1, 55, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2716, 1, 56, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2717, 1, 57, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2718, 1, 58, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2719, 1, 59, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2720, 1, 60, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2721, 1, 61, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2722, 1, 62, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2723, 1, 63, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2724, 1, 67, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2725, 1, 68, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2726, 1, 79, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2727, 1, 80, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2728, 1, 85, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2729, 1, 86, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2730, 1, 103, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2731, 1, 104, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2732, 1, 105, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2733, 1, 106, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2734, 1, 107, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2735, 1, 108, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2736, 1, 109, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2737, 1, 110, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2738, 1, 111, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2739, 1, 112, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2740, 1, 113, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2741, 1, 114, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2742, 1, 115, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2743, 1, 116, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2744, 1, 117, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2745, 1, 118, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2746, 1, 119, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2747, 1, 120, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2748, 1, 121, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2749, 1, 122, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2750, 1, 123, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2751, 1, 124, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2752, 1, 125, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2753, 1, 126, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2754, 1, 127, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2755, 1, 128, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2756, 1, 129, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2757, 1, 130, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2758, 1, 131, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2759, 1, 132, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2760, 1, 133, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2761, 1, 134, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2762, 1, 135, '2018-01-09 10:36:16', '2018-01-09 10:36:16'),
(2763, 1, 136, '2018-01-09 10:36:17', '2018-01-09 10:36:17'),
(2764, 1, 137, '2018-01-09 10:36:17', '2018-01-09 10:36:17'),
(2765, 1, 138, '2018-01-09 10:36:17', '2018-01-09 10:36:17'),
(2766, 1, 139, '2018-01-09 10:36:17', '2018-01-09 10:36:17'),
(2767, 1, 140, '2018-01-09 10:36:17', '2018-01-09 10:36:17'),
(2768, 2, 1, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2769, 2, 2, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2770, 2, 3, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2771, 2, 4, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2772, 2, 5, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2773, 2, 16, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2774, 2, 17, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2775, 2, 33, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2776, 2, 49, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2777, 2, 50, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2778, 2, 55, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2779, 2, 56, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2780, 2, 57, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2781, 2, 58, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2782, 2, 59, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2783, 2, 60, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2784, 2, 61, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2785, 2, 62, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2786, 2, 63, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2787, 2, 67, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2788, 2, 68, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2789, 2, 79, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2790, 2, 80, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2791, 2, 85, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2792, 2, 86, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2793, 2, 103, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2794, 2, 104, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2795, 2, 105, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2796, 2, 106, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2797, 2, 107, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2798, 2, 108, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2799, 2, 109, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2800, 2, 110, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2801, 2, 111, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2802, 2, 112, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2803, 2, 113, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2804, 2, 114, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2805, 2, 115, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2806, 2, 116, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2807, 2, 117, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2808, 2, 118, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2809, 2, 119, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2810, 2, 120, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2811, 2, 121, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2812, 2, 122, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2813, 2, 123, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2814, 2, 124, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2815, 2, 125, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2816, 2, 126, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2817, 2, 127, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2818, 2, 128, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2819, 2, 129, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2820, 2, 130, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2821, 2, 131, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2822, 2, 132, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2823, 2, 133, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2824, 2, 134, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2825, 2, 135, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2826, 2, 136, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2827, 2, 137, '2018-01-09 10:36:25', '2018-01-09 10:36:25'),
(2828, 2, 138, '2018-01-09 10:36:26', '2018-01-09 10:36:26'),
(2829, 2, 139, '2018-01-09 10:36:26', '2018-01-09 10:36:26'),
(2830, 2, 140, '2018-01-09 10:36:26', '2018-01-09 10:36:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mobilephone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_method_id` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `fullname`, `alias`, `parent_id`, `menu_type_id`, `level`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', 'trang-chu', 0, 1, 0, 1, 1, '2017-12-15 03:38:30', '2018-01-10 03:36:35'),
(2, 'Giới thiệu', 'gioi-thieu', 0, 1, 0, 2, 1, '2017-12-15 03:38:47', '2018-01-03 10:35:33'),
(3, 'Dịch vụ hoạt động', 'dich-vu-hoat-dong', 0, 1, 0, 3, 1, '2017-12-15 03:39:06', '2017-12-15 03:39:06'),
(4, 'Dự án', 'du-an', 0, 1, 0, 4, 1, '2017-12-15 03:39:22', '2017-12-15 03:39:22'),
(5, 'Tin tức sự kiện', 'tin-tuc-su-kien', 0, 1, 0, 5, 1, '2017-12-15 03:39:38', '2018-01-02 10:07:26'),
(6, 'Tiếp lửa', 'tiep-lua', 0, 1, 0, 6, 1, '2017-12-15 03:39:53', '2017-12-15 03:39:53'),
(7, 'Danh bạ', 'danh-ba', 0, 1, 0, 7, 1, '2017-12-15 03:40:04', '2017-12-15 03:40:04'),
(8, 'Thư viện', 'thu-vien', 0, 1, 0, 8, 1, '2017-12-15 03:40:21', '2018-01-05 01:28:12'),
(9, 'Liên hệ', 'lien-he', 0, 1, 0, 9, 1, '2017-12-15 03:40:34', '2017-12-15 03:40:34'),
(10, 'Dịch vụ hoạt động', 'dich-vu-hoat-dong', 0, 2, 0, 1, 1, '2017-12-28 05:03:15', '2017-12-28 05:03:15'),
(11, 'Dự án', 'dich-vu-hoat-dong', 0, 2, 0, 2, 1, '2017-12-28 05:03:29', '2017-12-28 05:03:29'),
(12, 'Tin tức sự kiện', 'dich-vu-hoat-dong', 0, 2, 0, 3, 1, '2017-12-28 05:03:45', '2017-12-28 05:03:45'),
(13, 'Tiếp lửa', 'dich-vu-hoat-dong', 0, 2, 0, 4, 1, '2017-12-28 05:03:57', '2017-12-28 05:03:57'),
(14, 'Danh bạ', 'dich-vu-hoat-dong', 0, 2, 0, 5, 1, '2017-12-28 05:04:12', '2017-12-28 05:04:12'),
(15, 'Thư viện', 'dich-vu-hoat-dong', 0, 2, 0, 6, 1, '2017-12-28 05:04:28', '2017-12-28 05:04:28'),
(16, 'Tin nội bộ', 'tin-noi-bo', 5, 1, 1, 1, 1, '2018-01-02 10:08:14', '2018-01-02 10:08:14'),
(17, 'Tin cộng đồng', 'tin-cong-dong', 5, 1, 1, 2, 1, '2018-01-02 10:08:28', '2018-01-02 10:08:28'),
(18, 'Dịch vụ', 'dich-vu', 3, 1, 1, 1, 1, '2018-01-02 10:08:51', '2018-01-02 10:08:51'),
(19, 'Hoạt động', 'hoat-dong', 3, 1, 1, 2, 1, '2018-01-02 10:09:03', '2018-01-02 10:09:03'),
(20, 'Tin nội bộ', 'tin-noi-bo', 0, 3, 0, 1, 1, '2018-01-03 04:28:30', '2018-01-03 04:28:30'),
(21, 'Tin cộng đồng', 'tin-cong-dong', 0, 3, 0, 2, 1, '2018-01-03 04:28:42', '2018-01-03 04:28:42'),
(22, 'Dịch vụ', 'dich-vu', 0, 4, 0, 1, 1, '2018-01-03 08:03:39', '2018-01-03 08:03:39'),
(23, 'Hoạt động', 'hoat-dong', 0, 4, 0, 2, 1, '2018-01-03 08:03:48', '2018-01-03 08:03:48'),
(24, 'Hình ảnh', 'hinh-anh', 8, 1, 1, 1, 1, '2018-01-09 03:31:00', '2018-01-09 03:31:00'),
(25, 'Video', 'video', 8, 1, 1, 2, 1, '2018-01-09 03:31:12', '2018-01-09 11:08:24'),
(26, 'Trang chủ', 'trang-chu', 0, 5, 0, 1, 1, '2018-01-09 19:32:06', '2018-01-09 19:32:06'),
(27, 'Giới thiệu', 'gioi-thieu', 0, 5, 0, 2, 1, '2018-01-09 19:32:20', '2018-01-09 19:32:20'),
(28, 'Dịch vụ hoạt động', 'dich-vu-hoat-dong', 0, 5, 0, 3, 1, '2018-01-09 19:32:58', '2018-01-09 19:33:02'),
(29, 'Dự án', 'du-an', 0, 5, 0, 4, 1, '2018-01-09 19:33:36', '2018-01-09 19:33:40'),
(30, 'Tin tức sự kiện', 'tin-tuc-su-kien', 0, 5, 0, 5, 1, '2018-01-09 19:34:04', '2018-01-09 19:34:19'),
(31, 'Tiếp lửa', 'tiep-lua', 0, 5, 0, 6, 1, '2018-01-09 19:34:46', '2018-01-09 19:34:46'),
(32, 'Danh bạ', 'danh-ba', 0, 5, 0, 7, 1, '2018-01-09 19:35:01', '2018-01-09 19:35:01'),
(33, 'Thư viện', 'thu-vien', 0, 5, 0, 8, 1, '2018-01-09 19:35:30', '2018-01-09 19:35:30'),
(34, 'Hình ảnh', 'hinh-anh', 33, 5, 1, 1, 1, '2018-01-09 19:35:52', '2018-01-09 19:35:52'),
(35, 'Video', 'video', 33, 5, 1, 2, 1, '2018-01-09 19:36:42', '2018-01-09 19:36:42'),
(36, 'Liên hệ', 'lien-he', 0, 5, 0, 9, 1, '2018-01-09 19:37:00', '2018-01-09 19:37:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MainMenu', 'main-menu', 1, 1, '2017-12-15 03:37:06', '2017-12-15 03:37:06'),
(2, 'Danh mục', 'danh-muc', 1, 2, '2017-12-28 05:02:29', '2017-12-28 05:02:29'),
(3, 'Tin tức sự kiện', 'tin-tuc-su-kien', 1, 3, '2018-01-03 04:22:54', '2018-01-03 04:28:15'),
(4, 'Dịch vụ hoạt động', 'dich-vu-hoat-dong', 1, 4, '2018-01-03 07:59:52', '2018-01-03 07:59:57'),
(5, 'MobileMenu', 'mobile-menu', 1, 5, '2018-01-09 19:31:48', '2018-01-09 19:31:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_item`
--

DROP TABLE IF EXISTS `module_item`;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `module_item`
--

INSERT INTO `module_item` (`id`, `fullname`, `item_id`, `position`, `component`, `setting`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Tin mới nhất', '[{\"id\":1,\"sort_order\":\"1\"},{\"id\":3,\"sort_order\":\"2\"},{\"id\":4,\"sort_order\":\"3\"},{\"id\":5,\"sort_order\":\"4\"},{\"id\":6,\"sort_order\":\"5\"}]', 'tin-moi-nhat', 'article', NULL, 1, 1, '2017-12-18 02:58:38', '2018-01-07 11:48:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `organization`
--

INSERT INTO `organization` (`id`, `fullname`, `alias`, `meta_keyword`, `meta_description`, `image`, `address`, `phone`, `email`, `website`, `intro`, `content`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trung tâm Hành động vì sự phát triển cộng đồng ACDC', 'trung-tam-hanh-dong-vi-su-phat-trien-cong-dong-acdc', 'metakeyword Trung tâm Hành động vì sự phát triển cộng đồng (ACDC)', 'metadescription Trung tâm Hành động vì sự phát triển cộng đồng (ACDC)', 'conmochieu-4.png', 'Số 11 Dãy D2-2, ngõ 95 Phố Chùa Bộc, Quận Đống Đa, Hà Nội', '04 3564 3053', 'admin@acdc.org.vn', 'http://www.acdc.org.vn', 'Trung tâm Hành động vì sự phát triển cộng đồng (ACDC) được thành lập theo quyết định số B-54/2011/ĐK-KH&CN của Sở Khoa học và Công nghệ ngày 27 tháng 12 năm 2011. Trung tâm được hình thành và phát triển nhằm xây dựng một xã hội không vật cản và vì quyền của NKT với tôn chỉ mục đích là “Chúng tôi tồn tại vì sự phát triển của cộng đồng NKT Việt Nam”.', '<p style=\"text-align:justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;</p>', 45, 1, 1, '2018-01-08 04:40:13', '2018-01-18 19:29:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `fullname`, `alias`, `theme_location`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Trung tâm tiếp lửa', 'trung-tam-tiep-lua', 'trung-tam-widget', NULL, '', '<p><strong>Địa chỉ :</strong> Th&ocirc;n 7 x&atilde; An Ph&uacute; - Pleiku - Gia Lai</p>\n\n<p><strong>Đơn vị trực thuộc :</strong> C&ocirc;ng ty cổ phần TaGroup</p>\n\n<p><strong>Chịu tr&aacute;ch nhiệm nội dung :</strong> L&ecirc; Th&uacute;c Vinh</p>', '', '', '', NULL, 8, 1, '2017-12-28 04:10:41', '2018-01-14 13:00:43'),
(2, 'Về chúng tôi', 've-chung-toi', 'about-us-widget', NULL, '', '<p>Nghị lực sống l&agrave; một doanh nghiệp x&atilde; hội hoạt động trong lĩnh vực hỗ trợ ho&agrave; nhập to&agrave;n diện cho người khuyết tật ( NKT ) th&ocirc;ng qua đ&agrave;o tạo , tư vấn định hướng gi&uacute;p NKT t&igrave;m được việc l&agrave;m ph&ugrave; hợp , hỗ trợ t&igrave;m nguồn ti&ecirc;u thụ sản phẩm của NKT . Từ đ&oacute; , gi&uacute;p NKT tự tin v&agrave; dễ d&agrave;ng ho&agrave; nhập với cộng đồng , giảm bớt g&aacute;nh nặng cho gia đ&igrave;nh v&agrave; x&atilde; hội .</p>', '', '', '', NULL, 3, 1, '2017-12-28 04:54:45', '2018-01-14 13:00:54'),
(4, 'Giới thiệu', 'gioi-thieu', NULL, NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\n\nWhy do we use it?\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', '', 'metakeyword giới thiệu', 'metadescription giới thiệu', 203, 7, 1, '2018-01-03 10:35:10', '2018-01-18 19:31:39'),
(5, 'Thông tin liên hệ', 'thong-tin-lien-he', 'thong-tin-lien-he-widget', NULL, '', '<p style=\"text-align:justify\"><span style=\"font-size:28px\"><span style=\"color:#ff8c00\"><strong>C&ocirc;ng Ty TNHH VIDOCO</strong></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Địa chỉ: 35/6 B&ugrave;i Quang L&agrave; - P.12 - Q. G&ograve; Vấp - HCM</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Website: www.vienthammyyurihanh.com</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>E-mail: tieplua.net@gmail.com</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Tel: <span style=\"color:#ff0000\">096.302.7720</span></strong></span></p>', '', '', '', NULL, 1, 1, '2018-01-03 18:36:03', '2018-01-14 16:15:30'),
(6, 'Dịch vụ hoạt động', 'dich-vu-hoat-dong', 'dich-vu-hoat-dong-widget', 'conmochieu-1.png', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '', 'chú thích dịch vụ hoạt động', 'metakeyword dịch vụ hoạt động', 'metadescription dịch vụ hoạt động', 4, 2, 1, '2018-01-04 02:38:17', '2018-01-18 19:00:56'),
(7, 'Dự án', 'du-an', 'du-an-widget', 'conmochieu-2.png', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '', 'chú thích dịch vụ hoạt động', 'metakeyword dịch vụ hoạt động', 'metakeyword dịch vụ hoạt động', 2, 4, 1, '2018-01-04 02:39:28', '2018-01-18 19:01:04'),
(8, 'Tham vấn đồng cảnh', 'tham-van-dong-canh', 'tham-van-widget', 'conmochieu-4.png', 'Vivamus accumsan neque id auctor ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Curabitur porttitor suscipit odio, ac viverra erat. Nullam ac felis nec erat placerat tincidunt. Phasellus dui libero, sollicitudin vitae vestibulum a, sagittis a risus. Nunc volutpat dolor nec erat congue, eu consequat erat consequat. Quisque nec placerat ligula. Donec convallis elit urna, nec dignissim lorem fermentum in. Ut vestibulum urna diam, ultrices porttitor massa blandit et. Ut a iaculis arcu. Sed accumsan in ipsum in suscipit. Quisque faucibus sed nisi quis accumsan. Vivamus sed nulla vel ante euismod faucibus nec in elit. Vestibulum quis est mauris.', '', 'chú thích tham vấn đồng cảnh', 'metakeyword tham vấn đồng cảnh', 'metadescription thấm vấn đồng cảnh', 3, 6, 1, '2018-01-04 02:40:35', '2018-01-18 19:01:11'),
(9, 'Fanpage', 'fanpage', 'fanpage-footer', NULL, '<div class=\"fb-page\" data-href=\"https://www.facebook.com/gonguyenlieumy/\" data-tabs=\"timeline\" data-width=\"250\" data-height=\"200\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/gonguyenlieumy/\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/gonguyenlieumy/\">Công ty tnhh Greenecolife</a></blockquote></div>', '', '', '', '', NULL, 9, 1, '2018-01-18 15:55:58', '2018-01-18 15:56:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chuyển khoản', 'chuyen-khoan', '', 1, 1, '2018-01-07 17:25:13', '2018-01-07 17:25:13'),
(2, 'Trực tiếp', 'truc-tiep', '', 2, 1, '2018-01-07 17:25:25', '2018-01-07 17:25:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(6, 1, 'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf', '2017-11-12 08:12:08', '2017-11-12 08:12:08'),
(12, 1, 'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp', '2017-11-12 08:20:55', '2017-11-12 08:20:55'),
(20, 1, 'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5', '2017-11-12 08:44:06', '2017-11-12 08:44:06'),
(27, 1, 'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt', '2017-11-12 10:14:09', '2017-11-12 10:14:09'),
(35, 1, 'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ', '2017-11-12 10:41:59', '2017-11-12 10:41:59'),
(43, 3, 'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP', '2017-11-12 10:51:37', '2017-11-12 10:51:37'),
(45, 3, '61CQHzrI8v42ppzJ35HclGUgzulYNwKD', '2017-11-12 10:51:57', '2017-11-12 10:51:57'),
(48, 4, 'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk', '2017-11-12 11:00:38', '2017-11-12 11:00:38'),
(52, 4, 'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo', '2017-11-12 11:04:17', '2017-11-12 11:04:17'),
(64, 4, 'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0', '2017-11-12 11:20:36', '2017-11-12 11:20:36'),
(68, 4, 'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO', '2017-11-12 11:21:48', '2017-11-12 11:21:48'),
(71, 4, 'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi', '2017-11-12 11:22:33', '2017-11-12 11:22:33'),
(73, 4, 'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K', '2017-11-12 11:22:59', '2017-11-12 11:22:59'),
(74, 4, 'm0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg', '2017-11-12 11:23:03', '2017-11-12 11:23:03'),
(94, 1, 'W1uglu6PzKaOfwxa766IOJ33NDdulIri', '2017-11-12 13:01:17', '2017-11-12 13:01:17'),
(105, 4, 'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N', '2017-11-12 19:31:42', '2017-11-12 19:31:42'),
(106, 4, '1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB', '2017-11-12 19:31:45', '2017-11-12 19:31:45'),
(107, 4, 'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH', '2017-11-12 19:31:51', '2017-11-12 19:31:51'),
(110, 4, 'RyU6rnrEVVwusqJpB1boWgpODKNKthib', '2017-11-12 19:32:50', '2017-11-12 19:32:50'),
(113, 4, '2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3', '2017-11-12 19:34:34', '2017-11-12 19:34:34'),
(115, 1, 'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6', '2017-11-12 19:36:57', '2017-11-12 19:36:57'),
(119, 4, 'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe', '2017-11-12 19:44:50', '2017-11-12 19:44:50'),
(124, 1, '1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX', '2017-11-12 20:47:34', '2017-11-12 20:47:34'),
(125, 1, 'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt', '2017-11-13 17:44:28', '2017-11-13 17:44:28'),
(129, 1, 'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp', '2017-11-13 23:43:59', '2017-11-13 23:43:59'),
(134, 1, 'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d', '2017-11-14 07:10:53', '2017-11-14 07:10:53'),
(135, 1, 'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ', '2017-11-14 10:00:40', '2017-11-14 10:00:40'),
(138, 1, 'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE', '2017-11-14 20:35:29', '2017-11-14 20:35:29'),
(139, 1, 'CDF73h1lqr864dh5T5BQdTRf0hcrS45y', '2017-11-15 01:20:36', '2017-11-15 01:20:36'),
(143, 1, '50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG', '2017-11-15 10:34:05', '2017-11-15 10:34:05'),
(145, 1, 'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb', '2017-11-15 10:45:25', '2017-11-15 10:45:25'),
(149, 1, 'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP', '2017-11-15 21:20:42', '2017-11-15 21:20:42'),
(154, 1, 'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4', '2017-11-16 12:09:09', '2017-11-16 12:09:09'),
(155, 1, 'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0', '2017-11-16 19:00:45', '2017-11-16 19:00:45'),
(156, 1, 'a2STqoxCKAdKjJBxt5RxyBo23j196SqS', '2017-11-17 01:55:13', '2017-11-17 01:55:13'),
(157, 1, 'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5', '2017-11-17 03:54:15', '2017-11-17 03:54:15'),
(158, 1, 'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd', '2017-11-17 09:26:45', '2017-11-17 09:26:45'),
(159, 1, 'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi', '2017-11-17 21:05:41', '2017-11-17 21:05:41'),
(162, 1, '0fsBWGHy3uFkICDp4rgusPKisYenbUr5', '2017-11-18 08:03:50', '2017-11-18 08:03:50'),
(163, 1, 'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c', '2017-11-19 05:53:59', '2017-11-19 05:53:59'),
(164, 1, 'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup', '2017-11-20 05:47:41', '2017-11-20 05:47:41'),
(165, 1, 'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O', '2017-11-21 03:33:18', '2017-11-21 03:33:18'),
(166, 1, 'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1', '2017-11-21 04:17:05', '2017-11-21 04:17:05'),
(167, 1, 'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY', '2017-11-21 17:39:32', '2017-11-21 17:39:32'),
(168, 1, 'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw', '2017-11-21 23:49:19', '2017-11-21 23:49:19'),
(169, 1, 'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC', '2017-11-22 18:21:12', '2017-11-22 18:21:12'),
(173, 1, 'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP', '2017-11-23 05:15:58', '2017-11-23 05:15:58'),
(174, 1, 'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF', '2017-11-23 18:51:55', '2017-11-23 18:51:55'),
(175, 1, 'STmoiFXISPPMkYZ46mHVd1FgZleRFPma', '2017-11-24 01:23:33', '2017-11-24 01:23:33'),
(176, 1, 'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H', '2017-11-24 02:11:20', '2017-11-24 02:11:20'),
(177, 1, 'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC', '2017-11-24 06:39:38', '2017-11-24 06:39:38'),
(178, 1, '6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T', '2017-11-25 05:02:32', '2017-11-25 05:02:32'),
(179, 1, 'tKhufJfgecAKrGEAT2EBaEPLaf517QVS', '2017-11-25 09:08:54', '2017-11-25 09:08:54'),
(180, 1, 't3XDlldaLWhVaxrPuwM6dT02mMflr87j', '2017-11-25 19:53:59', '2017-11-25 19:53:59'),
(182, 1, 'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU', '2017-11-25 21:10:55', '2017-11-25 21:10:55'),
(184, 1, 'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ', '2017-11-25 21:32:34', '2017-11-25 21:32:34'),
(185, 1, 'r6cxynGaM90IU8uZA7aJFjox941jTivP', '2017-11-26 05:12:26', '2017-11-26 05:12:26'),
(198, 1, 'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz', '2017-11-26 10:37:48', '2017-11-26 10:37:48'),
(199, 1, 'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX', '2017-11-26 11:20:11', '2017-11-26 11:20:11'),
(202, 1, 'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq', '2017-11-26 20:07:36', '2017-11-26 20:07:36'),
(203, 1, 'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg', '2017-11-26 23:06:11', '2017-11-26 23:06:11'),
(204, 1, '6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc', '2017-11-27 00:00:05', '2017-11-27 00:00:05'),
(205, 1, 'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx', '2017-11-27 02:16:57', '2017-11-27 02:16:57'),
(206, 1, 'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX', '2017-11-27 07:58:05', '2017-11-27 07:58:05'),
(207, 1, 'qFJkZtCoPK72qECK96tX226VuMubIMBv', '2017-11-27 19:23:06', '2017-11-27 19:23:06'),
(208, 1, 'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ', '2017-11-27 20:15:53', '2017-11-27 20:15:53'),
(209, 1, 'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug', '2017-11-27 20:17:20', '2017-11-27 20:17:20'),
(210, 1, 'UpPwfQYjNbyRmztTDCfl16md4weLyjG3', '2017-11-30 08:03:21', '2017-11-30 08:03:21'),
(211, 1, 'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD', '2017-12-01 10:48:28', '2017-12-01 10:48:28'),
(212, 1, 'xoOGCB3x8fVFoBznts5EU1k13GmZiO11', '2017-12-02 19:53:50', '2017-12-02 19:53:50'),
(214, 1, 'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm', '2017-12-03 11:57:16', '2017-12-03 11:57:16'),
(216, 1, 'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY', '2017-12-03 17:58:34', '2017-12-03 17:58:34'),
(217, 1, 'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T', '2017-12-04 11:12:33', '2017-12-04 11:12:33'),
(218, 1, '0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF', '2017-12-05 09:04:17', '2017-12-05 09:04:17'),
(219, 1, '8J8vasVhkLwqagOIRNKwiIU94QoexH4O', '2017-12-05 18:41:41', '2017-12-05 18:41:41'),
(220, 1, 'JChXlObze9eklsMJrTNLH6ekOw47H5mz', '2017-12-06 00:14:21', '2017-12-06 00:14:21'),
(221, 1, 'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw', '2017-12-06 08:20:51', '2017-12-06 08:20:51'),
(222, 1, 'F40EmMwa02fVssVHs66z0XASzB3S5sqM', '2017-12-08 11:51:41', '2017-12-08 11:51:41'),
(223, 1, 'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO', '2017-12-10 19:42:21', '2017-12-10 19:42:21'),
(224, 1, 'JebpNZTP11ct8IzcxmbYePuG978Jpumq', '2017-12-10 20:05:44', '2017-12-10 20:05:44'),
(226, 1, 'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz', '2017-12-10 21:48:03', '2017-12-10 21:48:03'),
(227, 1, 'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE', '2017-12-11 09:24:23', '2017-12-11 09:24:23'),
(228, 1, 'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE', '2017-12-11 20:07:50', '2017-12-11 20:07:50'),
(229, 1, 'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa', '2017-12-12 10:23:23', '2017-12-12 10:23:23'),
(230, 1, 'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv', '2017-12-12 19:38:58', '2017-12-12 19:38:58'),
(231, 1, '5P3ys652WPCFCcMEtYp9K6YFz8KClLdt', '2017-12-12 20:37:12', '2017-12-12 20:37:12'),
(232, 1, 'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb', '2017-12-12 20:48:06', '2017-12-12 20:48:06'),
(233, 1, 'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC', '2017-12-12 21:39:03', '2017-12-12 21:39:03'),
(234, 1, 'LspxbedO8o6CbiofYR0uqLfOwunUpfCT', '2017-12-12 22:11:41', '2017-12-12 22:11:41'),
(235, 1, 'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga', '2017-12-12 23:42:01', '2017-12-12 23:42:01'),
(236, 1, '9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK', '2017-12-13 01:24:31', '2017-12-13 01:24:31'),
(237, 1, 'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr', '2017-12-13 01:26:17', '2017-12-13 01:26:17'),
(238, 1, 'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa', '2017-12-13 01:27:02', '2017-12-13 01:27:02'),
(239, 1, 'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6', '2017-12-13 02:42:24', '2017-12-13 02:42:24'),
(241, 1, 'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL', '2017-12-13 11:11:26', '2017-12-13 11:11:26'),
(243, 1, '5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN', '2017-12-13 19:46:28', '2017-12-13 19:46:28'),
(244, 1, 'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai', '2017-12-13 20:18:26', '2017-12-13 20:18:26'),
(245, 1, 'p89msT6X0idRVFgnJegC63D5VXzGzQZs', '2017-12-13 20:46:43', '2017-12-13 20:46:43'),
(247, 1, 'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ', '2017-12-13 23:44:24', '2017-12-13 23:44:24'),
(248, 1, 'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw', '2017-12-14 02:24:40', '2017-12-14 02:24:40'),
(249, 1, 'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70', '2017-12-14 05:39:40', '2017-12-14 05:39:40'),
(251, 1, 'gYei12wI1Xx9L458waGZcXrpzfJSLrEw', '2017-12-14 05:40:20', '2017-12-14 05:40:20'),
(253, 1, 'o0i98RskGVcDO68h58WHtVILX3X7GyZZ', '2017-12-14 08:30:08', '2017-12-14 08:30:08'),
(254, 1, 'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT', '2017-12-14 17:36:03', '2017-12-14 17:36:03'),
(255, 1, 'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P', '2017-12-14 18:39:23', '2017-12-14 18:39:23'),
(256, 1, 'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw', '2017-12-14 19:13:37', '2017-12-14 19:13:37'),
(257, 1, 'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q', '2017-12-14 19:20:29', '2017-12-14 19:20:29'),
(258, 1, 'bEwsrdAAVsEols37gzepZRofpjQ5CpkS', '2017-12-14 19:46:00', '2017-12-14 19:46:00'),
(259, 1, 'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14', '2017-12-14 20:36:43', '2017-12-14 20:36:43'),
(260, 1, 'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9', '2017-12-15 07:13:52', '2017-12-15 07:13:52'),
(265, 1, 'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v', '2017-12-15 23:56:34', '2017-12-15 23:56:34'),
(269, 1, 'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h', '2017-12-16 00:27:26', '2017-12-16 00:27:26'),
(270, 1, 'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP', '2017-12-16 00:40:12', '2017-12-16 00:40:12'),
(271, 1, 'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL', '2017-12-16 02:57:23', '2017-12-16 02:57:23'),
(272, 1, '5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K', '2017-12-16 08:08:53', '2017-12-16 08:08:53'),
(282, 1, 'EUtWgeynbqabsviLDajTiXg6az4xEx4S', '2017-12-16 11:25:51', '2017-12-16 11:25:51'),
(283, 1, 'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj', '2017-12-16 20:33:48', '2017-12-16 20:33:48'),
(284, 1, '958RICNQ5SWqdtnNopOEAQEGjy71OLrP', '2017-12-17 07:52:39', '2017-12-17 07:52:39'),
(286, 1, '5wQF5syYD14KXWyo2G0TdOpFgPvDwWML', '2017-12-17 19:52:04', '2017-12-17 19:52:04'),
(287, 1, '57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7', '2017-12-25 19:27:36', '2017-12-25 19:27:36'),
(288, 1, 'pSNdXiePmuervyNG25HffYLqSY4CqCNV', '2017-12-25 21:29:41', '2017-12-25 21:29:41'),
(289, 1, 'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A', '2017-12-25 21:47:02', '2017-12-25 21:47:02'),
(290, 1, 'loABizfP1dl9zchCj2681qVIsF3OKrJ3', '2017-12-27 10:38:20', '2017-12-27 10:38:20'),
(291, 1, '6oNxIkIquNcQIOEPZnb9gd69OiMONpDD', '2017-12-27 10:45:14', '2017-12-27 10:45:14'),
(292, 1, '1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ', '2017-12-27 19:13:01', '2017-12-27 19:13:01'),
(293, 1, 'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu', '2017-12-27 19:25:12', '2017-12-27 19:25:12'),
(294, 1, 'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS', '2017-12-27 22:32:12', '2017-12-27 22:32:12'),
(295, 1, '5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux', '2017-12-28 01:38:51', '2017-12-28 01:38:51'),
(296, 1, '6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g', '2017-12-29 02:09:33', '2017-12-29 02:09:33'),
(297, 1, 'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV', '2017-12-29 05:40:48', '2017-12-29 05:40:48'),
(298, 1, 'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB', '2018-01-01 19:20:46', '2018-01-01 19:20:46'),
(299, 1, 'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o', '2018-01-01 19:42:39', '2018-01-01 19:42:39'),
(300, 1, 'TMAKb6m8MTahrN1lFJTIoni9vymizoPX', '2018-01-01 22:34:23', '2018-01-01 22:34:23'),
(301, 1, 'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(302, 1, 'mP3Z9KVER7893IYjcGERZFXKDhm7biAm', '2018-01-02 18:30:12', '2018-01-02 18:30:12'),
(303, 1, 'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy', '2018-01-03 00:41:50', '2018-01-03 00:41:50'),
(304, 1, 'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW', '2018-01-03 05:04:01', '2018-01-03 05:04:01'),
(305, 1, 'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267', '2018-01-03 09:50:30', '2018-01-03 09:50:30'),
(308, 1, 'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz', '2018-01-03 10:32:13', '2018-01-03 10:32:13'),
(309, 1, 'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC', '2018-01-03 19:35:54', '2018-01-03 19:35:54'),
(310, 1, 'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF', '2018-01-04 00:00:04', '2018-01-04 00:00:04'),
(311, 1, 'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp', '2018-01-04 07:50:26', '2018-01-04 07:50:26'),
(312, 1, 'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD', '2018-01-04 18:27:00', '2018-01-04 18:27:00'),
(313, 1, 'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H', '2018-01-05 05:03:20', '2018-01-05 05:03:20'),
(314, 1, 'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju', '2018-01-05 07:13:15', '2018-01-05 07:13:15'),
(315, 1, 'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP', '2018-01-06 03:08:10', '2018-01-06 03:08:10'),
(316, 1, 'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan', '2018-01-06 12:28:22', '2018-01-06 12:28:22'),
(317, 1, 'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h', '2018-01-06 22:56:38', '2018-01-06 22:56:38'),
(318, 1, 'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV', '2018-01-07 04:20:27', '2018-01-07 04:20:27'),
(319, 1, 'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4', '2018-01-07 07:12:26', '2018-01-07 07:12:26'),
(320, 1, 'TSocJysjRMp42L96vEg02rwZBiEUKyyN', '2018-01-07 09:18:55', '2018-01-07 09:18:55'),
(321, 1, 'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg', '2018-01-07 19:37:24', '2018-01-07 19:37:24'),
(322, 1, 'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y', '2018-01-08 02:28:24', '2018-01-08 02:28:24'),
(323, 1, '8CEZcoGrealxWIzhXRxoDIGmPieyZkGP', '2018-01-08 04:07:45', '2018-01-08 04:07:45'),
(324, 1, '9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL', '2018-01-08 08:56:34', '2018-01-08 08:56:34'),
(325, 1, 'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67', '2018-01-08 10:14:35', '2018-01-08 10:14:35'),
(327, 1, 'loNG0asl3Sj6zCitYw1n692cZ5AWL72j', '2018-01-08 23:13:14', '2018-01-08 23:13:14'),
(328, 1, 'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1', '2018-01-08 23:20:42', '2018-01-08 23:20:42'),
(329, 1, 'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh', '2018-01-09 01:22:36', '2018-01-09 01:22:36'),
(330, 1, 'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl', '2018-01-09 11:51:15', '2018-01-09 11:51:15'),
(331, 1, 'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp', '2018-01-09 20:29:19', '2018-01-09 20:29:19'),
(332, 1, 'u8Sws2cOYM59AjPh3LDqpzGfy6EyIPSC', '2018-01-10 04:24:11', '2018-01-10 04:24:11'),
(333, 1, '94nGbvzGk3VAXe4KivjwJ461e9DNjTrF', '2018-01-10 04:27:44', '2018-01-10 04:27:44'),
(334, 1, 'wnBYBOVVrFwe2UC3sFpr743eqWdoePdj', '2018-01-11 08:26:05', '2018-01-11 08:26:05'),
(335, 1, 'PXeJICZxBqfI2SMFdpggV3IMDJXu4ICH', '2018-01-14 05:59:00', '2018-01-14 05:59:00'),
(336, 1, 'tQmbzwqtlNOUhmVBd27kJliiN8gCG5vq', '2018-01-14 05:59:21', '2018-01-14 05:59:21'),
(337, 1, 'kdGobmZaQA9j9eEBrNpcNYEHmQxnhh3u', '2018-01-14 06:19:14', '2018-01-14 06:19:14'),
(338, 1, 'E3BC47sHKa9A0iD3bI7UObLY3hE5sRkE', '2018-01-14 09:11:59', '2018-01-14 09:11:59'),
(339, 1, 'JgsIzzzOyrSbY3CRiPSEJo87Lfo18qpB', '2018-01-14 23:43:27', '2018-01-14 23:43:27'),
(340, 1, 'RA4cHX8X6dvE7kwfBXzcyGCAZL97Tx6Q', '2018-01-15 11:44:01', '2018-01-15 11:44:01'),
(341, 1, 'dZMrtzjeb82Hizn0b7GLRgt9ORAmZ6i0', '2018-01-16 04:40:01', '2018-01-16 04:40:01'),
(342, 1, 'i5J9OKzFOF3urPxmHRFJ9X6w3xxgt1qQ', '2018-01-17 19:23:53', '2018-01-17 19:23:53'),
(343, 1, '7OX7sRZxS3nGAAzl1wVgEDZU3IaZhclu', '2018-01-17 23:53:30', '2018-01-17 23:53:30'),
(344, 1, 'M3R2j0Afrz4yVI8xx4hQ6YpmYAsvrIBe', '2018-01-18 03:30:55', '2018-01-18 03:30:55'),
(345, 1, 'r55OQqD0Q9MytGbBFx86J93jiHbxuOZB', '2018-01-18 08:55:33', '2018-01-18 08:55:33'),
(346, 1, '5DbaavVIEZo8zmsi90dIC2GJarHp6Cjw', '2018-01-18 08:59:02', '2018-01-18 08:59:02'),
(347, 1, 'jLUQxFVvRf1dPrIqkbIOCdvrpGXejfKw', '2018-01-18 21:44:22', '2018-01-18 21:44:22'),
(348, 1, 'XiAxHUrdrgfLtV5mTyLJrahAjOJnPoie', '2018-01-18 23:00:44', '2018-01-18 23:00:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `photo`
--

INSERT INTO `photo` (`id`, `album_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 1, 'conmochieu-1.png', 6, 1, '2018-01-09 07:07:39', '2018-01-09 07:08:16'),
(5, 1, 'conmochieu-2.png', 8, 1, '2018-01-09 07:07:40', '2018-01-09 07:08:16'),
(6, 1, 'conmochieu-3.png', 10, 1, '2018-01-09 07:07:40', '2018-01-09 07:08:16'),
(7, 1, 'conmochieu-4.png', 12, 1, '2018-01-09 07:07:41', '2018-01-09 07:08:16'),
(8, 1, 'conmochieu-5.png', 14, 1, '2018-01-09 07:07:41', '2018-01-09 07:08:16'),
(9, 1, 'conmochieu-6.png', 16, 1, '2018-01-09 07:07:42', '2018-01-09 07:08:16'),
(10, 1, 'conmochieu-7.png', 2, 1, '2018-01-09 07:07:42', '2018-01-09 07:08:16'),
(11, 1, 'conmochieu-8.png', 3, 1, '2018-01-09 07:07:43', '2018-01-09 07:08:16'),
(12, 1, 'conmochieu-9.png', 4, 1, '2018-01-09 07:07:43', '2018-01-09 07:08:16'),
(13, 1, 'conmochieu-10.png', 5, 1, '2018-01-09 07:07:44', '2018-01-09 07:08:16'),
(14, 1, 'conmochieu-11.png', 7, 1, '2018-01-09 07:07:44', '2018-01-09 07:08:16'),
(15, 1, 'conmochieu-12.png', 9, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(16, 1, 'conmochieu-13.png', 11, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(17, 1, 'conmochieu-14.png', 13, 1, '2018-01-09 07:07:45', '2018-01-09 07:08:16'),
(18, 1, 'conmochieu-15.png', 15, 1, '2018-01-09 07:07:46', '2018-01-09 07:08:16'),
(19, 1, 'conmochieu-16.png', 1, 1, '2018-01-09 07:07:46', '2018-01-09 07:07:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `fullname`, `controller`, `action`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'category-article-list', 'category-article', 'list', 1, '2017-05-18 06:49:30', '2017-05-19 17:26:33'),
(2, 'category-article-form', 'category-article', 'form', 2, '2017-05-18 06:50:32', '2017-11-26 16:43:37'),
(3, 'category-article-trash', 'category-article', 'trash', 3, '2017-05-18 06:51:27', '2017-11-26 16:43:37'),
(4, 'article-list', 'article', 'list', 1, '2017-05-18 08:34:41', '2017-05-19 18:11:35'),
(5, 'article-form', 'article', 'form', 2, '2017-05-18 08:35:17', '2017-05-19 17:24:54'),
(16, 'category-article-status', 'category-article', 'status', 4, '2017-05-19 08:23:46', '2017-11-26 16:43:37'),
(17, 'category-article-delete', 'category-article', 'delete', 5, '2017-05-19 08:25:14', '2017-11-26 16:43:37'),
(18, 'privilege-list', 'privilege', 'list', 1, NULL, '2017-11-26 16:43:37'),
(19, 'privilege-form', 'privilege', 'form', 2, NULL, '2017-11-26 16:43:37'),
(24, 'group-member-list', 'group-member', 'list', 1, '2017-05-19 11:59:40', '2017-11-26 16:43:37'),
(25, 'group-member-form', 'group-member', 'form', 2, '2017-05-19 12:00:09', '2017-11-26 16:43:37'),
(33, 'category-article-ordering', 'category-article', 'ordering', 6, '2017-05-19 17:29:14', '2017-11-26 16:43:37'),
(43, 'user-list', 'user', 'list', 1, '2017-05-19 17:45:27', '2017-11-26 16:43:37'),
(44, 'user-form', 'user', 'form', 2, '2017-05-19 17:45:57', '2017-11-26 16:43:37'),
(49, 'menu-type-list', 'menu-type', 'list', 1, '2017-05-19 17:49:35', '2017-11-26 16:43:37'),
(50, 'menu-type-form', 'menu-type', 'form', 2, '2017-05-19 17:49:53', '2017-11-26 16:43:37'),
(55, 'menu-list', 'menu', 'list', 1, '2017-05-19 18:01:20', '2017-11-26 16:43:37'),
(56, 'menu-form', 'menu', 'form', 2, '2017-05-19 18:01:38', '2017-11-26 16:43:37'),
(57, 'menu-trash', 'menu', 'trash', 3, '2017-05-19 18:01:52', '2017-11-26 16:43:37'),
(58, 'menu-delete', 'menu', 'delete', 4, '2017-05-19 18:02:17', '2017-11-26 16:43:37'),
(59, 'menu-status', 'menu', 'status', 5, '2017-05-19 18:02:31', '2017-11-26 16:43:37'),
(60, 'menu-ordering', 'menu', 'ordering', 6, '2017-05-19 18:02:50', '2017-11-26 16:43:37'),
(61, 'media-list', 'media', 'list', 1, '2017-05-19 18:05:47', '2017-11-26 16:43:37'),
(62, 'media-form', 'media', 'form', 2, '2017-05-19 18:06:05', '2017-11-26 16:43:37'),
(63, 'media-trash', 'media', 'trash', 3, '2017-05-19 18:06:22', '2017-11-26 16:43:37'),
(67, 'product-list', 'product', 'list', 1, '2017-05-19 18:09:08', '2017-11-26 16:43:37'),
(68, 'product-form', 'product', 'form', 2, '2017-05-19 18:09:20', '2017-11-26 16:43:37'),
(79, 'invoice-list', 'invoice', 'list', 1, '2017-05-19 18:14:02', '2017-11-26 16:43:37'),
(80, 'invoice-form', 'invoice', 'form', 2, '2017-05-19 18:14:30', '2017-11-26 16:43:37'),
(85, 'customer-list', 'customer', 'list', 1, '2017-05-19 18:16:10', '2017-11-26 16:43:37'),
(86, 'customer-form', 'customer', 'form', 2, '2017-05-19 18:16:33', '2017-11-26 16:43:37'),
(103, 'category-product-list', 'category-product', 'list', 1, '2017-11-26 14:50:53', '2017-11-26 14:50:53'),
(104, 'category-product-form', 'category-product', 'form', 2, '2017-11-26 14:51:11', '2017-11-26 14:51:11'),
(105, 'payment-method-list', 'payment-method', 'list', 1, '2017-11-26 14:52:56', '2017-11-26 14:52:56'),
(106, 'payment-method-form', 'payment-method', 'form', 2, '2017-11-26 14:53:10', '2017-11-26 14:53:10'),
(107, 'module-item-list', 'module-item', 'list', 1, '2017-11-26 14:54:56', '2017-11-26 14:54:56'),
(108, 'module-item-form', 'module-item', 'form', 2, '2017-11-26 14:55:07', '2017-11-26 14:55:07'),
(109, 'setting-system-list', 'setting-system', 'list', 1, '2017-11-26 14:56:14', '2017-11-26 14:56:31'),
(110, 'setting-system-form', 'setting-system', 'form', 2, '2017-11-26 14:56:46', '2017-11-26 14:56:46'),
(111, 'category-product-trash', 'category-product', 'trash', 3, '2017-11-26 16:31:27', '2017-11-26 16:31:45'),
(112, 'category-product-status', 'category-product', 'status', 4, '2017-11-26 16:32:17', '2017-11-26 16:32:17'),
(113, 'category-product-delete', 'category-product', 'delete', 5, '2017-11-26 16:32:50', '2017-11-26 16:32:50'),
(114, 'category-product-ordering', 'category-product', 'ordering', 6, '2017-11-26 16:33:08', '2017-11-26 16:33:08'),
(115, 'category-banner-list', 'category-banner', 'list', 1, '2017-12-12 04:05:17', '2017-12-12 04:05:17'),
(116, 'category-banner-form', 'category-banner', 'form', 2, '2017-12-12 04:05:47', '2017-12-12 04:05:47'),
(117, 'category-banner-trash', 'category-banner', 'trash', 3, '2017-12-12 04:06:15', '2017-12-12 04:06:15'),
(118, 'category-banner-status', 'category-banner', 'status', 4, '2017-12-12 04:06:43', '2017-12-12 04:06:43'),
(119, 'category-banner-delete', 'category-banner', 'delete', 5, '2017-12-12 04:07:11', '2017-12-12 04:08:01'),
(120, 'category-banner-ordering', 'category-banner', 'ordering', 6, '2017-12-12 04:07:32', '2017-12-12 04:08:01'),
(121, 'banner-list', 'banner', 'list', 1, '2017-12-12 07:41:46', '2017-12-12 07:41:46'),
(122, 'banner-form', 'banner', 'form', 2, '2017-12-12 07:41:56', '2017-12-12 07:41:56'),
(123, 'page-list', 'page', 'list', 1, '2017-12-13 18:10:13', '2017-12-13 18:10:13'),
(124, 'page-form', 'page', 'form', 2, '2017-12-13 18:10:24', '2017-12-13 18:10:24'),
(125, 'project-list', 'project', 'list', 1, '2018-01-04 09:45:36', '2018-01-04 09:45:36'),
(126, 'project-form', 'project', 'form', 2, '2018-01-04 09:45:49', '2018-01-04 09:45:49'),
(127, 'project-article-list', 'project-article', 'list', 1, '2018-01-04 15:21:53', '2018-01-04 15:21:53'),
(128, 'project-article-form', 'project-article', 'form', 2, '2018-01-04 15:22:08', '2018-01-04 15:22:08'),
(129, 'supporter-list', 'supporter', 'list', 1, '2018-01-07 17:18:23', '2018-01-07 17:18:23'),
(130, 'supporter-form', 'supporter', 'form', 2, '2018-01-07 17:18:39', '2018-01-07 17:18:39'),
(131, 'organization-list', 'organization', 'list', 1, '2018-01-08 04:32:03', '2018-01-08 04:32:03'),
(132, 'organization-form', 'organization', 'form', 2, '2018-01-08 04:32:17', '2018-01-08 04:32:17'),
(133, 'album-list', 'album', 'list', 1, '2018-01-08 15:57:00', '2018-01-08 15:57:00'),
(134, 'album-form', 'album', 'form', 2, '2018-01-08 15:57:10', '2018-01-08 15:57:10'),
(135, 'photo-list', 'photo', 'list', 1, '2018-01-08 18:07:30', '2018-01-08 18:07:30'),
(136, 'photo-form', 'photo', 'form', 2, '2018-01-08 18:07:39', '2018-01-08 18:07:39'),
(137, 'category-video-list', 'category-video', 'list', 1, '2018-01-09 09:54:53', '2018-01-09 09:54:53'),
(138, 'category-video-form', 'category-video', 'form', 2, '2018-01-09 09:55:06', '2018-01-09 09:55:06'),
(139, 'video-list', 'video', 'list', 1, '2018-01-09 09:55:16', '2018-01-09 09:55:16'),
(140, 'video-form', 'video', 'form', 2, '2018-01-09 09:55:24', '2018-01-09 09:55:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `child_image` text CHARACTER SET utf8,
  `price` decimal(11,2) DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `count_view`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '778831', 'Sản phẩm 1', '', '', 'san-pham-1', NULL, 1, NULL, '500000.00', '200000.00', '', '', NULL, 1, '2018-01-02 05:01:01', '2018-01-07 19:00:34'),
(2, '123321', 'Sản phẩm 2', '', '', 'san-pham-2', NULL, 1, NULL, '0.00', '0.00', '', '', NULL, 2, '2018-01-02 05:01:46', '2018-01-08 07:18:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE `product_category` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_product_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_category`
--

INSERT INTO `product_category` (`id`, `product_id`, `category_product_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2018-01-02 05:01:01', '2018-01-02 05:01:01'),
(2, 1, 3, '2018-01-02 05:01:01', '2018-01-02 05:01:01'),
(3, 2, 2, '2018-01-02 05:01:46', '2018-01-02 05:01:46'),
(4, 2, 3, '2018-01-02 05:01:46', '2018-01-02 05:01:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `total_cost` text COLLATE utf8_unicode_ci,
  `intro` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `plan` text COLLATE utf8_unicode_ci,
  `sponsor` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project`
--

INSERT INTO `project` (`id`, `fullname`, `alias`, `meta_keyword`, `meta_description`, `image`, `count_view`, `total_cost`, `intro`, `overview`, `plan`, `sponsor`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Jesse Lingard với cú bật nhảy ở Man Utd', 'jesse-lingard-voi-cu-bat-nhay-o-man-utd', 'metakeyword Jesse Lingard với cú bật nhảy ở Man Utd', 'metadescription Jesse Lingard với cú bật nhảy ở Man Utd', 'conmochieu-6.png', 321, '<p>kinh ph&iacute;&nbsp;Jesse Lingard với c&uacute; bật nhảy ở Man Utd</p>', 'Lingard một lần nữa trở thành tâm điểm trong chiến thắng 2-0 mới đây trước Everton, tiếp đà vọt đi dưới sự dạy dỗ của HLV Jose Mourinho.', '<p>tổng quan&nbsp;Jesse Lingard với c&uacute; bật nhảy ở Man Utd</p>', '<p>kế hoạch&nbsp;Jesse Lingard với c&uacute; bật nhảy ở Man Utd</p>', '<p>t&agrave;i trợ&nbsp;Jesse Lingard với c&uacute; bật nhảy ở Man Utd</p>', 1, 1, '2018-01-04 18:34:30', '2018-01-18 19:01:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_article`
--

DROP TABLE IF EXISTS `project_article`;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_article`
--

INSERT INTO `project_article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `project_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', 'sam-allardyce---ga-hlv-thuc-dung-nhat-ngoai-hang-anh', 'conmochieu-16.png', 'Với những ai yêu bóng đá Anh, Big Sam  như một người bạn lâu năm. Có thì bình thường nhưng vắng mặt là cảm giác… thiếu thiếu.', '<p>Allardyce l&agrave; một trong những gương mặt dễ nhận ra nhất của b&oacute;ng đ&aacute; Anh. &Ocirc;ng đ&atilde; c&oacute; 21 năm thi đấu chuy&ecirc;n nghiệp, v&agrave; đang ở năm thứ 27 kể từ khi khởi nghiệp cầm qu&acirc;n. Trong số HLV c&ograve;n l&agrave;m việc tại Anh, &ocirc;ng gi&agrave; 63 tuổi n&agrave;y chịu k&eacute;m duy nhất một người về th&acirc;m ni&ecirc;n: Arsene Wenger của Arsenal.</p>\n\n<p>Khi Big Sam ra tự truyện, HLV huyền thoại Alex Ferguson thậm ch&iacute; xung phong viết lời tựa. Ferguson gọi Big Sam l&agrave; một phần kh&ocirc;ng thể t&aacute;ch rời của lịch sử b&oacute;ng đ&aacute; Anh. Thời c&ograve;n l&agrave;m cầu thủ, &ocirc;ng l&agrave; một hậu vệ rắn mặt c&oacute; tiếng. Đến mức Ferguson từng bảo Allardyce đ&atilde; k&egrave;m ai tối Chủ nhật th&igrave; s&aacute;ng thứ Hai người ấy ăn cũng kh&ocirc;ng nổi. Khi chuyển sang cầm qu&acirc;n, c&aacute;c đội b&oacute;ng của &ocirc;ng cũng chơi thứ b&oacute;ng đ&aacute; rất kh&oacute; chịu.</p>\n\n<p>Ngoại h&igrave;nh th&ocirc; kệch, sẵn s&agrave;ng thực dụng đến xấu x&iacute; l&agrave; m&ocirc; tả gần nhất về Big Sam.&nbsp;<br />\nL&agrave; người Anh, nhưng Big Sam kh&ocirc;ng mang một ch&uacute;t n&agrave;o tinh thần hiệp sĩ. C&aacute;c đội b&oacute;ng của &ocirc;ng lu&ocirc;n ng&atilde; vờ, c&acirc;u giờ, tiểu xảo, v&agrave; kh&ocirc;ng từ một thủ đoạn n&agrave;o để đạt kết quả - một phong c&aacute;ch &quot;rất&hellip; Allardyce&quot;. Big Sam cũng d&iacute;nh v&agrave;o nghi &aacute;n hay t&aacute;c động để CLB của &ocirc;ng mua cầu thủ c&oacute; c&ugrave;ng người đại diện, để được... chia phần trăm. Ngay cả trong trải nghiệm cầm qu&acirc;n lớn nhất cuộc đời &ndash; HLV trưởng của đội tuyển Anh, Big Sam cũng d&iacute;nh v&agrave;o một b&ecirc; bối t&agrave;y trời. Bị ph&oacute;ng vi&ecirc;n Telegraph giả dạng l&agrave;m người đại diện của một c&ocirc;ng ty ch&acirc;u &Aacute;, Big Sam h&agrave;o hứng b&agrave;y vẽ cho họ c&aacute;ch l&aacute;ch luật chuyển nhượng. Trong l&uacute;c cao hứng, &ocirc;ng c&ograve;n tiện mồm ch&ecirc; bai Gary Neville v&agrave; Roy Hodgson - người tiền nhiệm ở tuyển Anh.&nbsp;</p>\n\n<p>Vậy m&agrave; &ocirc;ng vẫn sống tốt, sống khỏe bất chấp những scandal của bản th&acirc;n. V&igrave; trong những l&uacute;c gian kh&oacute;, CLB n&agrave;o cũng cần một con người thực dụng như thế. Allardyce kh&ocirc;ng phải l&agrave; một cầu thủ xuất ch&uacute;ng khi c&ograve;n thi đấu, n&ecirc;n &ocirc;ng khởi nghiệp HLV từ những CLB rất nhỏ. Đầu ti&ecirc;n l&agrave; trải nghiệm HLV ki&ecirc;m cầu thủ tại CLB Ireland Limerick, sau đ&oacute; l&agrave; c&aacute;c đội hạng dưới ở Anh như Preston North End, Blackpool v&agrave; Notts County.</p>\n\n<p>Nhưng Big Sam chỉ ch&iacute;nh thức g&acirc;y tiếng vang khi cầm qu&acirc;n cho Bolton Wanderers. Khi &ocirc;ng tiếp quản v&agrave;o năm 1999, CLB c&ograve;n lặn ngụp ở nửa dưới của giải Division Two (tương đương hạng Tư trong hệ thống c&aacute;c giải b&oacute;ng đ&aacute; Anh). Khi &ocirc;ng rời đi v&agrave;o năm 2007, Bolton l&agrave; đội thường xuy&ecirc;n g&oacute;p mặt ở nửa tr&ecirc;n của Ngoại hạng Anh, đ&atilde; gi&agrave;nh v&eacute; dự Cup ch&acirc;u &Acirc;u lần đầu ti&ecirc;n v&agrave; duy nhất trong lịch sử.</p>\n\n<p>Bolton của Big Sam những năm ấy chơi thứ b&oacute;ng đ&aacute; gi&agrave;u sức mạnh, với những cầu thủ đ&atilde; qua thời đỉnh cao. &Ocirc;ng ch&agrave;o đ&oacute;n tất cả, từ dạng bất trị như Nicolas Anelka, sớm nắng chiều mưa như Jay-Jay Okocha, cần c&ugrave; b&ugrave; khả năng như Gary Speed hay những người ngỡ như qu&aacute; gi&agrave; v&agrave; qu&aacute; yếu để đ&aacute; ở Ngoại hạng Anh như Fernando Hierro, Ivan Campo, Youri Djorkaeff...</p>\n\n<p>Big Sam l&agrave; một trong những HLV đầu ti&ecirc;n &aacute;p dụng thống k&ecirc; v&agrave; ph&acirc;n t&iacute;ch v&agrave;o lối chơi. &Ocirc;ng c&oacute; một đội ngũ số liệu đ&ocirc;ng như bầu đo&agrave;n th&ecirc; tử của một ng&ocirc;i sao nhạc pop, cung cấp cho &ocirc;ng mọi th&ocirc;ng số từ thể lực đến dinh dưỡng. Khi luật việt vị thay đổi v&agrave;o năm 2003, Big Sam l&agrave; HLV hiếm hoi kh&ocirc;ng than v&atilde;n m&agrave; th&iacute;ch nghi cực nhanh, biến n&oacute; th&agrave;nh lợi thế cho đội của &ocirc;ng.</p>\n\n<p>Youri Djorkaeff (&aacute;o trắng) chỉ l&agrave; một trong nhiều ng&ocirc;i sao hết thời ở c&aacute;c CLB lớn, sang Bolton v&agrave; tỏa s&aacute;ng trở lại ở Ngoại hạng Anh dưới trướng Sam Allardyce.&nbsp;</p>\n\n<p>Big Sam l&agrave; mẫu HLV m&agrave; kh&ocirc;ng ai muốn, nhưng ai cũng cần. Sau khi rời Bolton, &ocirc;ng lang bạt qua s&aacute;u CLB kh&aacute;c nhau ở Ngoại hạng Anh v&agrave; lu&ocirc;n đảm bảo rằng: khi &ocirc;ng rời đi, CLB đều tốt hơn khi &ocirc;ng đến. L&uacute;c truyền th&ocirc;ng Anh ca tụng HLV Marco Silva của Watford, Big Sam n&oacute;i: &ldquo;Đừng s&iacute;nh ngoại thế, t&ocirc;i chưa rớt hạng bao giờ, Marco từng rớt hạng với Hull City đấy&rdquo;.</p>\n\n<p>Big Sam tự h&agrave;o kh&ocirc;ng hề qu&aacute;, bởi d&ugrave; kh&ocirc;ng c&oacute; danh hiệu n&agrave;o khi l&agrave;m HLV trưởng, &quot;chiếc Cup&quot; lớn nhất đời &ocirc;ng l&agrave; chưa bao giờ rớt hạng, kể cả CLB &ocirc;ng cầm c&oacute; đang khủng hoảng đến đ&acirc;u đi nữa. N&oacute;i theo ng&ocirc;n ngữ khoa học, luật vạn vật hấp dẫn kh&ocirc;ng t&aacute;c động l&ecirc;n Big Sam, v&igrave; đội b&oacute;ng của &ocirc;ng kh&ocirc;ng bao giờ rơi xuống hạng dưới.</p>\n\n<p>Th&aacute;ng 7/2017, sau khi vớt Crystal Palace từ c&otilde;i chết trở về, &ocirc;ng ra đi v&agrave; tuy&ecirc;n bố kh&ocirc;ng cầm qu&acirc;n cấp độ CLB nữa. Vậy m&agrave; khi đề nghị từ Everton đến bốn th&aacute;ng sau đ&oacute;, Big Sam nhận lời ngay. Mấy th&aacute;ng ngồi ngo&agrave;i, chơi với con ch&aacute;u khiến Big Sam nhớ việc. V&agrave; dường như Ngoại hạng Anh cũng nhớ &ocirc;ng. H&igrave;nh ảnh một &ocirc;ng gi&agrave; b&ecirc;n đường piste, d&aacute;ng mập mạp, miệng li&ecirc;n tục nhai kẹo cao su, hay cười cợt v&igrave; đủ thứ l&yacute; do thật quen thuộc, giống như một người bạn l&acirc;u năm. C&oacute; th&igrave; kh&ocirc;ng để &yacute;, nhưng vắng lại nhớ ngay.</p>\n\n<p>Allardyce nhận được sự qu&yacute; mến, nể trọng từ những bậc đồng nghiệp khả k&iacute;nh lừng danh như Alex Ferguson.&nbsp;<br />\nV&agrave; Big Sam trở lại, lợi hại như xưa. Everton của &ocirc;ng thua hai trận gần nhất, nhưng họ r&otilde; r&agrave;ng đ&atilde; l&agrave; một đội b&oacute;ng ho&agrave;n to&agrave;n kh&aacute;c so với khi &ocirc;ng nhậm chức. Hiện th&acirc;n r&otilde; nhất cho thay đổi m&agrave; Allardyce mang lại l&agrave; Wayne Rooney. Trước khi Big Sam đến, anh đ&aacute; 11 trận, ghi bốn b&agrave;n v&agrave; kh&ocirc;ng kiến tạo được g&igrave;. Sau khi c&oacute; Big Sam, anh ghi s&aacute;u b&agrave;n, kiến tạo hai lần chỉ sau ... năm trận. Từ chỗ đang ở dưới khu vực đ&egrave;n đỏ, b&acirc;y giờ Everton đang lơ lửng ở giữa bảng điểm.</p>\n\n<p>B&iacute; quyết cầm qu&acirc;n của Big Sam thực ra rất giản dị, đ&atilde; theo &ocirc;ng từ những ng&agrave;y đầu cầm qu&acirc;n. &quot;T&ocirc;i lu&ocirc;n khuy&ecirc;n mọi cầu thủ h&atilde;y chuyền quả b&oacute;ng l&ecirc;n tr&ecirc;n nếu c&oacute; thể. Ngay cả trước những đội b&oacute;ng ph&ograve;ng ngự hay nhất Ngoại hạng Anh, một đường chuyền nhanh l&ecirc;n tr&ecirc;n cũng c&oacute; thể tạo ra cơ hội ghi b&agrave;n. Chuyền ngang hoặc chuyền về chỉ c&agrave;ng l&agrave;m đối phương tổ chức ph&ograve;ng ngự tốt hơn m&agrave; th&ocirc;i&quot;, &ocirc;ng n&oacute;i tr&ecirc;n Sky Sports.&nbsp;</p>\n\n<p>Trang Wikipedia th&igrave; m&ocirc; tả như sau: &quot;Khi c&ograve;n l&agrave; hậu vệ, &ocirc;ng rất ngại xử l&yacute; b&oacute;ng. C&oacute; b&oacute;ng l&agrave; chuyền ngay cho người đứng gần nhất&quot;. Nghe cứ như&hellip; đ&ugrave;n đẩy tr&aacute;ch nhiệm. V&agrave; khi l&agrave;m HLV, Big Sam cũng khuy&ecirc;n c&aacute;c cầu thủ h&atilde;y đ&ugrave;n đẩy như thế. C&oacute; b&oacute;ng cứ chuyền l&ecirc;n tr&ecirc;n cho người thuận lợi nhất, nếu pha b&oacute;ng ấy kh&ocirc;ng th&agrave;nh c&ocirc;ng th&igrave; cầu thủ cũng kh&ocirc;ng c&oacute; lỗi.</p>\n\n<p>Big Sam giống như hiện th&acirc;n cho một tư duy thực dụng đến tận c&ugrave;ng, nhưng vẫn c&oacute; đất sống giữa một Ngoại hạng Anh trăm hoa đua nở. Người h&acirc;m mộ v&agrave; giới chuy&ecirc;n m&ocirc;n hay than thở về việc những HLV trẻ của Anh quốc kh&ocirc;ng được trao cơ hội. Nhưng vấn đề l&agrave; khi gặp kh&oacute; khăn, trong đầu c&aacute;c CLB Ngoại hạng Anh lu&ocirc;n bật ra c&aacute;i t&ecirc;n Sam Allardyce như một phản xạ. Học tr&ograve; cũ Jermain Defoe đ&atilde; n&oacute;i: &quot;&Ocirc;ng ấy lu&ocirc;n n&oacute;i với ch&uacute;ng t&ocirc;i như sau: &#39;T&ocirc;i kh&ocirc;ng bận t&acirc;m chuyện mấy cậu đ&aacute; đấm thế n&agrave;o, miễn thắng l&agrave; được&quot;.</p>\n\n<p>Big Sam chắc chắn sẽ kh&ocirc;ng bao giờ được chọn mặt gửi v&agrave;ng cho những c&ocirc;ng việc lớn như tại Man Utd, Man City, Arsenal, Chelsea&hellip; Nhưng nh&agrave; cầm qu&acirc;n n&agrave;y vẫn th&uacute; vị theo c&aacute;ch của ri&ecirc;ng &ocirc;ng: ng&ocirc;ng ngh&ecirc;nh, l&igrave; lợm, giang hồ với một phương ch&acirc;m sống duy nhất: c&aacute;i g&igrave; c&oacute; lợi th&igrave; l&agrave;m th&ocirc;i!</p>', '', 'metakeyword Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', 'metadescription Sam Allardyce - gã HLV thực dụng nhất Ngoại hạng Anh', NULL, 10, 1, 1, '2018-01-04 18:37:46', '2018-01-18 19:01:31'),
(11, 'Andy Murray rút khỏi Australia Mở rộng 2018', 'andy-murray-rut-khoi-australia-mo-rong-2018', 'conmochieu-15.png', 'Tay vợt người Scotland vẫn chưa bình phục chấn thương hông kể từ Wimbledon 2017.', '<p>&ldquo;T&ocirc;i sẽ kh&ocirc;ng tham g&oacute;p mặt giải đấu ở Melbourne năm nay, do chưa sẵn s&agrave;ng&rdquo;, Murray th&ocirc;ng b&aacute;o. &ldquo;T&ocirc;i sẽ trở về London để xem x&eacute;t c&aacute;c khả năng tiếp theo. T&ocirc;i cũng cảm k&iacute;ch v&igrave; những lời ch&uacute;c của mọi người. Hy vọng t&ocirc;i sẽ sớm trở lại&rdquo;.<br />\nTrong tiết lộ tr&ecirc;n Instagram &iacute;t ng&agrave;y trước, Murray cho biết chấn thương h&ocirc;ng kh&ocirc;ng tiến triển tốt, d&ugrave; đ&atilde; nghỉ thi đấu s&aacute;u th&aacute;ng qua. Tay vợt sở hữu ba Grand Slam đứng trước hai lựa chọn: tiếp tục qu&aacute; tr&igrave;nh hồi phục hoặc l&ecirc;n b&agrave;n mổ. Nhưng phẫu thuật chỉ l&agrave; phương &aacute;n B với Murray do anh c&oacute; thể đối mặt những rủi ro kh&oacute; lường.</p>\n\n<p>Murray từng năm lần v&agrave;o chung kết Australia Mở rộng (2010, 2011, 2013, 2015, 2016), nhưng đều gục ng&atilde;. Trận đấu chuy&ecirc;n nghiệp gần nhất của tay vợt 30 tuổi l&agrave; thất bại trước Sam Querrey ở tứ kết Wimbledon 2017. Anh tham dự trận đấu biểu diễn với Roger Federer th&aacute;ng 11/2017, với thất bại 3-6, 6-3, 6-10. Tuần trước, Murray cũng đ&aacute;nh một trận biểu diễn c&ugrave;ng Roberto Bautista Agut tại Abu Dhabi. Nhưng chấn thương ph&aacute;t t&aacute;c khiến anh phải r&uacute;t khỏi giải ATP 250 ở Brisbane.</p>\n\n<p>B&ecirc;n cạnh Murray, nhiều tay vợt h&agrave;ng đầu cũng c&oacute; nguy cơ lỡ hẹn giải Grand Slam đầu ti&ecirc;n năm 2018, như Novak Djokovic, Rafael Nadal v&agrave; Stan Wawrinka.</p>', '', 'metakeyword Andy Murray rút khỏi Australia Mở rộng 2018', 'metadescription Andy Murray rút khỏi Australia Mở rộng 2018', NULL, 10, 2, 1, '2018-01-04 18:39:04', '2018-01-18 19:01:37'),
(12, 'Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'pochettino:-tottenham-se-xem-xet-neu-kane-de-nghi-ra-di', 'conmochieu-14.png', '\"Gà trống\" không muốn mất tiền đạo chủ lực nhưng sẽ cân nhắc nếu bản thân Harry Kane đề bạt nguyện vọng rời CLB - như Modric và Bale từng làm.', '<p>&quot;L&agrave; HLV của Tottenham, t&ocirc;i c&oacute; thể n&oacute;i rằng nếu Real Madrid đưa ra đề nghị, ch&uacute;ng t&ocirc;i sẽ từ chối. Bởi v&igrave; cậu ấy sẽ ở đ&acirc;y v&agrave; họ hiểu điều đ&oacute;&quot;, Pochettino trả lời phỏng vấn k&ecirc;nh truyền h&igrave;nh El Chiringuito.&nbsp;</p>\n\n<p>&quot;Tuy nhi&ecirc;n, nếu cầu thủ đề bạt nguyện vọng ra đi, giống như trường hợp của Modric v&agrave; Bale, ch&uacute;ng t&ocirc;i sẽ xem điều g&igrave; c&oacute; thể diễn ra. H&ocirc;m nay, chuyện đ&oacute; chưa xảy ra. T&ocirc;i hy vọng Harry Kane sẽ ở đ&acirc;y th&ecirc;m nhiều năm v&agrave; đ&oacute;ng g&oacute;p th&ecirc;m nhiều b&agrave;n, gi&agrave;nh những chiến thắng v&agrave; danh hiệu. Đ&oacute; l&agrave; mong muốn của ch&uacute;ng t&ocirc;i&quot;.<br />\nKane đang l&agrave; mục ti&ecirc;u theo đuổi của Real - đội b&oacute;ng từng chi&ecirc;u mộ những hảo thủ từ Tottenham như Gareth Bale hay Luka Modric.</p>\n\n<p>Kane trải qua một năm 2017 th&agrave;nh c&ocirc;ng khi ph&aacute; kỷ lục số b&agrave;n nhiều nhất tại Ngoại hạng Anh trong một năm của Alan Shearer (37). Anh nổi l&ecirc;n l&agrave; một trong những trung phong hay nhất ch&acirc;u &Acirc;u v&agrave; m&agrave;n tr&igrave;nh diễn xuất sắc trong hai trận đấu với Real ở v&ograve;ng bảng Champions League khiến &quot;Kền kền trắng&quot; đặt quyết t&acirc;m chi&ecirc;u mộ Kane.</p>\n\n<p>Kane đang dẫn đầu danh s&aacute;ch ghi b&agrave;n tại Ngoại hạng Anh với 18 b&agrave;n, gi&uacute;p Tottenham đứng thứ năm. H&ocirc;m nay, anh v&agrave; đồng đội sẽ l&agrave;m kh&aacute;ch tr&ecirc;n s&acirc;n của West Ham, trong trận đấu muộn ở v&ograve;ng 22.</p>\n\n<p>Kane l&agrave; vua ph&aacute; lưới Ngoại hạng Anh trong hai m&ugrave;a giải gần nhất, ghi 25 b&agrave;n ở m&ugrave;a 2015-2016 v&agrave; 29 b&agrave;n ở m&ugrave;a 2016-2017.</p>', 'chú thích Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'metakeyword Neymar Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', 'metadescription Neymar Pochettino: \'Tottenham sẽ xem xét nếu Kane đề nghị ra đi\'', NULL, 10, 3, 1, '2018-01-04 18:41:15', '2018-01-18 19:01:42'),
(13, 'Lịch thi đấu ở Anh khắc nghiệt như thế nào', 'lich-thi-dau-o-anh-khac-nghiet-nhu-the-nao', 'conmochieu-13.png', 'Tờ AS (Tây Ban Nha) dẫn thống kê về số trận tối đa mà một đội bóng hàng đầu tại Anh chơi mỗi mùa để ủng hộ quan điểm của Pep Guardiola.', '<p>Guardiola đ&atilde; khơi lại cuộc tranh luận về kỳ nghỉ đ&ocirc;ng tại Ngoại hạng Anh, khi cho rằng lịch thi đấu hiện tại &quot;đang hủy hoại cầu thủ&quot;. Ph&aacute;t biểu được HLV người T&acirc;y Ban Nha đưa ra sau trận thắng Watford với tỷ số 3-1 h&ocirc;m 2/1, hai ng&agrave;y sau khi họ bị Crystal Palace cầm h&ograve;a kh&ocirc;ng b&agrave;n thắng.</p>\n\n<p>Cựu HLV Barca ho&agrave;n to&agrave;n c&oacute; l&yacute; khi đưa ra nhận định như vậy. T&iacute;nh đến ng&agrave;y 4/1, Man City đ&atilde; chơi tổng cộng 25 trận tại giải quốc nội m&ugrave;a 2017-2018, bao gồm Ngoại hạng Anh v&agrave; Cup Li&ecirc;n đo&agrave;n. Con số n&agrave;y với Juventus tại Italy l&agrave; 22, t&iacute;nh cả trận đấu tối nay với Cagliari. Trong khi đ&oacute;, Bayern Munich, Barca v&agrave; PSG mới chơi 20 trận từ đầu m&ugrave;a.<br />\nNếu muốn ẵm trọn mọi danh hiệu tại nước Anh, bao gồm Ngoại hạng Anh, Cup FA v&agrave; Cup Li&ecirc;n đo&agrave;n, Man City phải ra s&acirc;n tổng cộng 50 trận. Nếu họ c&oacute; một kết quả h&ograve;a, ở bất kỳ v&ograve;ng n&agrave;o trước b&aacute;n kết, con số n&agrave;y sẽ tăng th&ecirc;m, với mức tối đa l&agrave; 53 trận. Tại Bundesliga, với 18 đội tham dự, một đội muốn th&acirc;u t&oacute;m mọi danh hiệu trong nước chỉ phải đ&aacute; 40 trận. Con số n&agrave;y ở T&acirc;y Ban Nha l&agrave; 47 trận v&agrave; Italy l&agrave; 43 trận.</p>\n\n<p>Ph&aacute;p v&agrave; Bồ Đ&agrave;o Nha, giống nước Anh, c&oacute; hai giải đấu Cup trong nước, nhưng họ đều c&oacute; biện ph&aacute;p cắt giảm số trận cho những đội thi đấu ở giải h&agrave;ng đầu l&agrave; Ligue 1 v&agrave; Primeira Liga. C&aacute;c đội dự Ligue 1 được đặc c&aacute;ch v&agrave;o đ&aacute; những v&ograve;ng s&acirc;u hơn so với Ngoại hạng Anh, v&agrave; họ chỉ phải thi đấu 47 trận nếu muốn đoạt cả ba danh hiệu. Tại Bồ Đ&agrave;o Nha, số đội dự Primeira Liga l&agrave; 18. Điều ấy gi&uacute;p số trận tối đa m&agrave; một CLB nước n&agrave;y phải đấu trong nước chỉ l&agrave; 45.</p>\n\n<p>Tr&ecirc;n to&agrave;n ch&acirc;u &Acirc;u, ngoại trừ Anh, kh&ocirc;ng CLB n&agrave;o c&oacute; thể chơi qu&aacute; 48 trận quốc nội. Ch&iacute;nh việc phải đấu đến 50 trận khiến b&oacute;ng đ&aacute; Anh kh&ocirc;ng thể sắp xếp kỳ nghỉ đ&ocirc;ng, điều m&agrave; tất cả c&aacute;c giải đấu h&agrave;ng đầu ch&acirc;u &Acirc;u đều l&agrave;m.</p>\n\n<p>Nếu x&eacute;t năm giải v&ocirc; địch quốc gia lớn, kỳ nghỉ đ&ocirc;ng ngắn nhất thuộc về T&acirc;y Ban Nha. C&aacute;c CLB nước n&agrave;y c&oacute; 10 ng&agrave;y nghỉ từ Gi&aacute;ng sinh đến đầu năm mới. Tiếp theo l&agrave; Italy (14 ng&agrave;y), Ph&aacute;p (16 ng&agrave;y) v&agrave; Đức (22 ng&agrave;y). Bồ Đ&agrave;o Nha, nước cũng c&oacute; hai giải đấu c&uacute;p trong nước như Anh, cũng c&oacute; kỳ nghỉ đ&ocirc;ng d&agrave;i bảy ng&agrave;y.<br />\nArsenal m&ugrave;a 2017-2018 l&agrave; v&iacute; dụ r&otilde; nhất cho lịch thi đấu khắc nghiệt tại Anh. Thầy tr&ograve; Arsene Wenger c&oacute; thể phải chơi tổng cộng 69 trận, nếu v&agrave;o chung kết Europa League, Cup FA v&agrave; Cup Li&ecirc;n đo&agrave;n (đ&atilde; đi đến b&aacute;n kết). So với Real Madrid, đội phải tham dự FIFA Club World Cup v&agrave; đ&aacute; Si&ecirc;u Cup ch&acirc;u &Acirc;u, &quot;Ph&aacute;o thủ&quot; chơi nhiều hơn tới năm trận.</p>', '', 'metakeyword Lịch thi đấu ở Anh khắc nghiệt như thế nào', 'metadescription Lịch thi đấu ở Anh khắc nghiệt như thế nào', NULL, 10, 4, 1, '2018-01-04 18:43:11', '2018-01-18 19:01:49'),
(14, 'LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'lebron-james-bat-luc-nhin-doi-nha-tham-bai-truoc-boston-celtics', 'conmochieu-12.png', 'Ngôi sao sáng nhất của Cleveland Cavaliers không thể vực dậy phong độ kém cỏi của toàn đội trong trận thua đậm 88-102 trước Boston Celtics.', '<p>Quyết định để ng&ocirc;i sao Isaiah Thomas ngồi ngo&agrave;i của HLV Tyronn Lue gần như ngay lập tức ảnh hưởng l&ecirc;n lối chơi của Cleveland Cavaliers trong chuyến l&agrave;m kh&aacute;ch tại Boston. Đội đương kim &Aacute; qu&acirc;n NBA tấn c&ocirc;ng bế tắc trước h&agrave;ng thủ vững chắc nhất giải. Ngay cả LeBron James cũng chỉ c&oacute; 19 điểm trận n&agrave;y, nhiều nhất đội nhưng kh&ocirc;ng đủ để tạo kh&aacute;c biệt. Trong khi đ&oacute;, chấn thương khiến Kevin Love chỉ chơi 21 ph&uacute;t với đ&uacute;ng một pha n&eacute;m hai điểm th&agrave;nh c&ocirc;ng trong 11 lần n&eacute;m rổ.<br />\nCleveland Cavaliers bị Boston Celtics dẫn điểm trong cả bốn hiệp, trong đ&oacute; khoảng c&aacute;ch lớn nhất l&agrave; 11 điểm ngay sau hiệp đầu ti&ecirc;n. M&agrave;n phủ đầu g&acirc;y sốc của Kyrie Irving v&agrave; c&aacute;c đồng đội khiến đội kh&aacute;ch kh&ocirc;ng thể gượng dậy trong phần c&ograve;n lại của trận đấu. Khoảng năm ph&uacute;t cuối, HLV Tyronn Lue thậm ch&iacute; c&ograve;n bu&ocirc;ng xu&ocirc;i khi r&uacute;t LeBron James khỏi s&acirc;n.</p>\n\n<p>Chiến lược gia 40 tuổi cũng thực hiện đ&uacute;ng những g&igrave; tuy&ecirc;n bố trước trận khi kh&ocirc;ng cho Isaiah Thomas chơi một ph&uacute;t n&agrave;o. Cầu thủ đ&oacute;ng g&oacute;p 17 điểm ở chiến thắng trước Portland Trail Blazers h&ocirc;m qua lặng lẽ ngồi nh&igrave;n đội nh&agrave; bị đội b&oacute;ng cũ của anh v&ugrave;i dập với tỷ số c&aacute;ch biệt 102-88.<br />\nTrận thua thứ 13 từ đầu m&ugrave;a khiến Cleveland Cavaliers ch&ocirc;n ch&acirc;n ở vị tr&iacute; thứ ba miền Đ&ocirc;ng. Trong khi Boston Celtics củng cố vững chắc ng&ocirc;i đầu với th&agrave;nh t&iacute;ch 31 thắng &ndash; 10 thua. Phong độ xuống dốc của LeBron James v&agrave; đồng đội (thua 5 trong 6 trận gần nhất) khiến họ bị Washington Wizards phả hơi n&oacute;ng v&agrave;o g&aacute;y với c&aacute;ch biệt chỉ ba chiến thắng. Ở lượt đấu n&agrave;y, cặp b&agrave;i tr&ugrave;ng John Wall - Bradley Beal tiếp tục tỏa s&aacute;ng, đ&oacute;ng g&oacute;p 52 điểm mang về chiến thắng 121-103 cho đại diện thủ đ&ocirc; trước đối thủ New York Knicks.</p>\n\n<p>Tại miền T&acirc;y, Golden State Warriors c&oacute; chuyến l&agrave;m kh&aacute;ch tưởng như dễ d&agrave;ng tới s&acirc;n Dallas Mavericks. Nhưng sau khi dẫn đối thủ 9 điểm ở hiệp một, nh&agrave; đương kim v&ocirc; địch bất ngờ đ&aacute;nh mất nhịp độ tấn c&ocirc;ng. Họ để Dallas v&ugrave;ng l&ecirc;n trong hai hiệp tiếp theo, b&aacute;m s&aacute;t với c&aacute;ch biệt chỉ hai điểm.</p>\n\n<p>Trong hiệp bốn, đ&ocirc;i b&ecirc;n tạo ra thế trận ăn miếng trả miếng. Khi trận đấu c&ograve;n s&aacute;u gi&acirc;y, Harison Barnes l&ecirc;n rổ th&agrave;nh c&ocirc;ng gỡ h&ograve;a 122-122 cho chủ nh&agrave;. Tuy nhi&ecirc;n, Stephen Curry, bằng đẳng cấp si&ecirc;u sao, đ&atilde; kh&ocirc;ng để đối thủ k&eacute;o v&agrave;o hiệp phụ. C&uacute; n&eacute;m ba điểm lạnh l&ugrave;ng của cầu thủ vừa trở lại sau chấn thương ở thời điểm đồng hồ c&ograve;n 3 gi&acirc;y đ&atilde; dập tắt mọi hy vọng của Dallas Mavericks. Thắng nghẹt thở 125-122, Warriors củng cố vững chắc ng&ocirc;i đầu miền T&acirc;y với th&agrave;nh t&iacute;ch 30 thắng &ndash; 8 thua.<br />\nĐội đang xếp thứ hai sau họ l&agrave; Houston Rockets cũng c&oacute; chiến thắng trong loạt trận s&aacute;ng nay. Vắng Jame Harden v&igrave; chấn thương, khả năng tấn c&ocirc;ng của Rockets sụt giảm tr&ocirc;ng thấy. Nhưng trước đối thủ Orlando Magic, Chris Paul v&agrave; đồng đội đ&atilde; ph&ograve;ng ngự chắc chắn. Rockets chỉ để đối thủ ghi 98 điểm, trong khi sự tỏa s&aacute;ng của nh&acirc;n tố dự bị Gerald Green (27 điểm) v&agrave; trung phong Capela (21 điểm) mang về cho họ 116 điểm.</p>\n\n<p>Tương tự Houston Rockets, Oklahoma City Thunder cũng gi&agrave;nh chiến thắng c&aacute;ch biệt trước Los Angeles Lakers. Bộ ba Westbrook-Anthony-George ghi tổng cộng 65 điểm gi&uacute;p đội nh&agrave; c&oacute; trận thắng c&aacute;ch biệt nhất từ đầu m&ugrave;a với tỷ số 133-96. Việc thiếu vắng Lonzo Ball (chấn thương vai) đang khiến Lakers rơi v&agrave;o khủng hoảng trầm trọng với trận thua thứ 8 li&ecirc;n tiếp, tụt xuống vị tr&iacute; b&eacute;t bảng miền T&acirc;y với th&agrave;nh t&iacute;ch 11 thắng &ndash; 25 thua.</p>\n\n<p>Ng&agrave;y mai, hai đội đầu bảng l&agrave; Golden State Warriors v&agrave; Houston Rockets sẽ gặp nhau tại Toyota Center. Kh&aacute;n giả Việt Nam c&oacute; thể xem trực tiếp trận đấu n&agrave;y v&agrave;o l&uacute;c 8h (giờ H&agrave; Nội) tr&ecirc;n k&ecirc;nh Thể thao Tin tức HD.</p>', 'chú thích LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'metakeyword LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', 'metadescription LeBron James bất lực nhìn đội nhà thảm bại trước Boston Celtics', NULL, 10, 5, 1, '2018-01-04 18:44:44', '2018-01-18 19:02:00'),
(15, 'Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'ky-thu-tam-tuoi-gay-bat-ngo-o-cup-chien-thang', 'conmochieu-11.png', 'Phạm Trần Gia Phúc vượt qua nhà vô địch châu Á Thu Thảo (nhảy xa) và Thanh Tùng (thể dục dụng cụ) để trở thành \"Vận động viên yêu thích của năm\".', '<p>Phần thưởng &ldquo;Vận động vi&ecirc;n y&ecirc;u th&iacute;ch của năm&rdquo; do người h&acirc;m mộ b&igrave;nh chọn qua tin nhắn điện thoại. Sau ba th&aacute;ng, chiến thắng thuộc về Phạm Trần Gia Ph&uacute;c. Kỳ thủ t&aacute;m tuổi năm vừa qua gi&agrave;nh năm HC v&agrave;ng ở s&acirc;n chơi Đ&ocirc;ng Nam &Aacute;, ch&acirc;u &Aacute; v&agrave; thế giới. Hai &ldquo;bại tướng&rdquo; của Gia Ph&uacute;c l&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; nhảy xa Thu Thảo v&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; thể dục dụng cụ Thanh T&ugrave;ng.</p>\n\n<p>H&ocirc;m nay 4/1, ban tổ chức cũng đ&atilde; tiến h&agrave;nh chốt ba ứng vi&ecirc;n cuối c&ugrave;ng cho c&aacute;c giải thưởng như &ldquo;Vận động vi&ecirc;n nam của năm&rdquo;, &ldquo;Vận động vi&ecirc;n nữ của năm&rdquo;, &ldquo;HLV của năm&rdquo;...Danh s&aacute;ch mỗi hạng mục gồm một nh&acirc;n vật do người h&acirc;m mộ b&igrave;nh chọn v&agrave; hai người do Hội đồng b&igrave;nh chọn gồm c&aacute;c chuy&ecirc;n gia v&agrave; nh&agrave; b&aacute;o chọn.</p>\n\n<p>Ở hạng mục &ldquo;Nữ vận động vi&ecirc;n của năm&rdquo;, bất ngờ xảy ra khi T&uacute; Chinh &ldquo;trượt&rdquo; top 3. Đ&acirc;y l&agrave; đ&aacute;ng tiếc lớn khi nữ VĐV của TP HCM ngay lần đầu tham dự đ&atilde; gi&agrave;nh ba HC V&agrave;ng SEA Games, đồng thời được gọi l&agrave; &ldquo;nữ ho&agrave;ng tốc độ&rdquo; khi thống trị cự ly ngắn 100m v&agrave; 200m. Ba nữ VĐV v&agrave;o chung kết l&agrave; k&igrave;nh ngư &Aacute;nh Vi&ecirc;n, Thu Thảo v&agrave; chủ nh&acirc;n ba tấm HC v&agrave;ng điền kinh Nguyễn Thị Huyền.</p>\n\n<p>Ở hạng mục &ldquo;Nam vận động vi&ecirc;n của nam&rdquo;, đ&ocirc; cử Thạch Kim Tuấn cạnh tranh c&ugrave;ng đồng đội Nguyễn Văn Vinh v&agrave; nh&agrave; v&ocirc; địch ch&acirc;u &Aacute; thể dục dụng cụ L&ecirc; Thanh T&ugrave;ng. Điều đặc biệt l&agrave; Thạch Kim Tuấn mới được v&agrave;o danh s&aacute;ch ứng vi&ecirc;n nhờ &ldquo;v&eacute; vớt&rdquo; sau khi gi&agrave;nh hai HC v&agrave;ng giải cử tạ thế giới.</p>\n\n<p>Tại hạng mục &ldquo;HLV của năm&rdquo;, &ocirc;ng Mai Đức Chung đang c&oacute; lợi thế lớn. Vị chiến lược gia n&agrave;y g&acirc;y ấn tượng mạnh khi gi&uacute;p tuyển nữ Việt Nam gi&agrave;nh HC v&agrave;ng SEA Games 29, đồng thời nhận vai tr&ograve; HLV tạm quyền ở đội tuyển nam, gi&agrave;nh s&aacute;u điểm trước Campuchia, g&oacute;p c&ocirc;ng lớn đoạt dự v&ograve;ng chung kết Asian Cup. Cạnh tranh c&ugrave;ng &ocirc;ng l&agrave; hai HLV bộ m&ocirc;n điền kinh Thanh Hương v&agrave; Vũ Ngọc Lợi.</p>\n\n<p>Người chiến thắng ở c&aacute;c hạng mục sẽ được xướng t&ecirc;n tại lễ trao giải v&agrave;o ng&agrave;y 16/1 tới.&nbsp;</p>', 'chú thích Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'metakeyword Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', 'metadescription Kỳ thủ tám tuổi gây bất ngờ ở Cup Chiến thắng', NULL, 10, 6, 1, '2018-01-04 18:52:02', '2018-01-18 19:02:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_member`
--

INSERT INTO `project_member` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 4, '2018-01-07 14:09:20', '2018-01-07 14:09:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `page_url` varchar(255) DEFAULT NULL,
  `logo_frontend` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting_system`
--

INSERT INTO `setting_system` (`id`, `fullname`, `alias`, `title`, `meta_keyword`, `meta_description`, `author`, `copyright`, `google_site_verification`, `google_analytics`, `page_url`, `logo_frontend`, `favicon`, `setting`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Setting System', 'setting-system', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'máy tính,  laptop cũ,  điện thoại thông minh', 'Bán lẻ máy tính, laptop, điện thoại mới cũ trên toàn quốc. DC Mobile một trong những thương hiệu có tiếng lâu đời về các sản phẩm công nghệ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ', 'DC Mobile Chuyên kinh doanh điện thoại, máy tính laptop mới cũ [seodekiemtien@gmail.com]', 'KqqAiIZhyvjETFMGGAwT_GliP8lOHb4-lIpwli3Fua8', '444111222', 'https://dcmobile.vn', 'logo.png', 'favicon.ico', '[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"6\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"16\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"250\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"trietnk01@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Công Ty TNHH VIDOCO\"},{\"field_name\":\"Địa chỉ\",\"field_code\":\"address\",\"field_value\":\"35/6 Bùi Quang Là - P.12 - Q. Gò Vấp - HCM\"},{\"field_name\":\"Telephone\",\"field_code\":\"telephone\",\"field_value\":\"096.302.7721\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/nguyenvan.laptrinh\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"https://twitter.com/\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"https://plus.google.com/u/0/?hl=vi\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"https://www.youtube.com/watch?v=kAcV7S3sySU\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"http://flickr.com\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"http://daidung.vn/\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.257683433271!2d106.65122531418271!3d10.791565461866467!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ecaab26b129%3A0x6a3e66ad2406aa1c!2zQuG7h25oIHZp4buHbiBUaOG7kW5nIE5o4bqldA!5e0!3m2!1svi!2s!4v1512324613289\"}]', 1, 1, '2017-12-03 07:45:35', '2018-01-19 06:01:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supporter`
--

DROP TABLE IF EXISTS `supporter`;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supporter`
--

INSERT INTO `supporter` (`id`, `fullname`, `number_money`, `payment_method_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Thu Hằng', '1000000', 1, 1, 1, '2018-01-07 17:32:50', '2018-01-07 17:47:21'),
(7, 'Trần Gia Lạc', '2000000', 2, 2, 1, '2018-01-07 18:02:15', '2018-01-08 07:19:18'),
(8, 'Lê Văn Đại', '2000000', 1, 3, 1, '2018-01-08 02:38:56', '2018-01-08 09:29:07'),
(9, 'Nguyễn Mạnh Hùng', '3000000', 2, 4, 1, '2018-01-08 02:39:19', '2018-01-08 02:39:19'),
(10, 'Trần Tiến Dư', '3000000', 2, 5, 1, '2018-01-08 02:39:35', '2018-01-08 02:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(2, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(3, NULL, 'global', NULL, '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(4, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(5, NULL, 'global', NULL, '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(6, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(7, NULL, 'global', NULL, '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(8, NULL, 'ip', '127.0.0.1', '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(9, NULL, 'global', NULL, '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(10, NULL, 'ip', '127.0.0.1', '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(11, NULL, 'global', NULL, '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(12, NULL, 'ip', '127.0.0.1', '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(13, NULL, 'global', NULL, '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(14, NULL, 'ip', '127.0.0.1', '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(15, NULL, 'global', NULL, '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(16, NULL, 'ip', '127.0.0.1', '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(17, NULL, 'global', NULL, '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(18, NULL, 'ip', '127.0.0.1', '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(19, NULL, 'global', NULL, '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(20, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(21, NULL, 'global', NULL, '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(22, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(23, NULL, 'global', NULL, '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(24, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(25, NULL, 'global', NULL, '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(26, NULL, 'ip', '127.0.0.1', '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(27, NULL, 'global', NULL, '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(28, NULL, 'ip', '127.0.0.1', '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(29, NULL, 'global', NULL, '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(30, NULL, 'ip', '127.0.0.1', '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(31, NULL, 'global', NULL, '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(32, NULL, 'ip', '127.0.0.1', '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(33, NULL, 'global', NULL, '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(34, NULL, 'ip', '127.0.0.1', '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(35, NULL, 'global', NULL, '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(36, NULL, 'ip', '127.0.0.1', '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(37, NULL, 'global', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(38, NULL, 'ip', '127.0.0.1', '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(39, 1, 'user', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(40, NULL, 'global', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(41, NULL, 'ip', '127.0.0.1', '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(42, 1, 'user', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(43, NULL, 'global', NULL, '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(44, NULL, 'ip', '127.0.0.1', '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(45, NULL, 'global', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(46, NULL, 'ip', '127.0.0.1', '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(47, 4, 'user', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(48, NULL, 'global', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(49, NULL, 'ip', '127.0.0.1', '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(50, 4, 'user', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(51, NULL, 'global', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(52, NULL, 'ip', '127.0.0.1', '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(53, 4, 'user', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(54, NULL, 'global', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(55, NULL, 'ip', '127.0.0.1', '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(56, 1, 'user', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(57, NULL, 'global', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(58, NULL, 'ip', '127.0.0.1', '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(59, 1, 'user', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(60, NULL, 'global', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(61, NULL, 'ip', '127.0.0.1', '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(62, 1, 'user', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(63, NULL, 'global', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(64, NULL, 'ip', '127.0.0.1', '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(65, 4, 'user', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(66, NULL, 'global', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(67, NULL, 'ip', '127.0.0.1', '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(68, 4, 'user', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(69, NULL, 'global', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(70, NULL, 'ip', '127.0.0.1', '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(71, 1, 'user', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(72, NULL, 'global', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(73, NULL, 'ip', '127.0.0.1', '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(74, 1, 'user', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(75, NULL, 'global', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(76, NULL, 'ip', '127.0.0.1', '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(77, 1, 'user', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(78, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(79, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(80, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(81, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(82, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(83, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(84, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(85, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(86, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(87, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(88, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(89, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(90, NULL, 'global', NULL, '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(91, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(92, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(93, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(94, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(95, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(96, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(97, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(98, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(99, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(100, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(101, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(102, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(103, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(104, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(105, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(106, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(107, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(108, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(109, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(110, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(111, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(112, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(113, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(114, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(115, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(116, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(117, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(118, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(119, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(120, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(121, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(122, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(123, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(124, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(125, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(126, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(127, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(128, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(129, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(130, NULL, 'global', NULL, '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(131, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(132, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(133, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(134, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(135, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(136, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(137, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(138, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(139, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(140, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(141, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(142, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(143, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(144, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(145, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(146, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(147, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(148, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(149, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(150, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(151, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(152, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(153, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(154, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(155, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(156, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(157, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(158, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(159, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(160, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(161, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(162, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(163, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(164, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(165, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(166, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(167, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(168, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(169, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(170, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(171, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(172, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(173, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(174, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(175, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(176, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(177, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(178, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(179, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(180, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(181, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(182, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(183, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(184, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(185, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(186, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(187, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(188, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(189, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(190, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(191, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(192, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(193, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(194, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(195, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(196, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(197, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(198, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(199, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(200, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(201, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(202, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(203, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(204, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(205, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(206, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(207, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(208, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(209, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(210, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(211, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(212, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(213, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(214, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(215, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(216, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(217, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(218, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(219, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(220, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(221, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(222, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(223, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(224, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(225, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(226, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(227, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(228, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(229, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(230, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(231, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(232, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(233, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(234, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(235, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(236, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(237, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(238, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(239, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(240, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(241, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(242, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(243, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(244, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(245, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(246, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(247, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(248, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(249, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(250, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(251, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(252, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(253, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(254, NULL, 'global', NULL, '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(255, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(256, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(257, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(258, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(259, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(260, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(261, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(262, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(263, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(264, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(265, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(266, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(267, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(268, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(269, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(270, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(271, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(272, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(273, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(274, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(275, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(276, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(277, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(278, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(279, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(280, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(281, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(282, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(283, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(284, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(285, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(286, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(287, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(288, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(289, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(290, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(291, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(292, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(293, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(294, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(295, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(296, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(297, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(298, NULL, 'global', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(299, NULL, 'ip', '127.0.0.1', '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(300, 4, 'user', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(301, NULL, 'global', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(302, NULL, 'ip', '127.0.0.1', '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(303, 1, 'user', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(304, NULL, 'global', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(305, NULL, 'ip', '127.0.0.1', '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(306, 1, 'user', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(307, NULL, 'global', NULL, '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(308, NULL, 'ip', '127.0.0.1', '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(309, NULL, 'global', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(310, NULL, 'ip', '127.0.0.1', '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(311, 1, 'user', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(312, NULL, 'global', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(313, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(314, 6, 'user', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(315, NULL, 'global', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(316, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(317, 6, 'user', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(318, NULL, 'global', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(319, NULL, 'ip', '127.0.0.1', '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(320, 1, 'user', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(321, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(322, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(323, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(324, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(325, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(326, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(327, NULL, 'global', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(328, NULL, 'ip', '127.0.0.1', '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(329, 1, 'user', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(330, NULL, 'global', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(331, NULL, 'ip', '127.0.0.1', '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(332, 1, 'user', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(333, NULL, 'global', NULL, '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(334, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(335, NULL, 'global', NULL, '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(336, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(337, NULL, 'global', NULL, '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(338, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(339, NULL, 'global', NULL, '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(340, NULL, 'ip', '127.0.0.1', '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(341, NULL, 'global', NULL, '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(342, NULL, 'ip', '127.0.0.1', '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(343, NULL, 'global', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(344, NULL, 'ip', '127.0.0.1', '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(345, 1, 'user', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(346, NULL, 'global', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(347, NULL, 'ip', '127.0.0.1', '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(348, 1, 'user', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(349, NULL, 'global', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(350, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(351, 1, 'user', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(352, NULL, 'global', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(353, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(354, 1, 'user', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(355, NULL, 'global', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(356, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(357, 1, 'user', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(358, NULL, 'global', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(359, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(360, 1, 'user', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(361, NULL, 'global', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(362, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(363, 1, 'user', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(364, NULL, 'global', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(365, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(366, 1, 'user', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(367, NULL, 'global', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(368, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(369, 1, 'user', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(370, NULL, 'global', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(371, NULL, 'ip', '127.0.0.1', '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(372, 1, 'user', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(373, NULL, 'global', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(374, NULL, 'ip', '127.0.0.1', '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(375, 1, 'user', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(376, NULL, 'global', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(377, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(378, 1, 'user', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(379, NULL, 'global', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(380, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(381, 1, 'user', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(382, NULL, 'global', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(383, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(384, 1, 'user', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(385, NULL, 'global', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(386, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(387, 1, 'user', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(388, NULL, 'global', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(389, NULL, 'ip', '127.0.0.1', '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(390, 1, 'user', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(391, NULL, 'global', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(392, NULL, 'ip', '127.0.0.1', '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(393, 1, 'user', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(394, NULL, 'global', NULL, '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(395, NULL, 'ip', '127.0.0.1', '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(396, NULL, 'global', NULL, '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(397, NULL, 'ip', '127.0.0.1', '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(398, NULL, 'global', NULL, '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(399, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(400, NULL, 'global', NULL, '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(401, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(402, NULL, 'global', NULL, '2018-01-14 23:43:22', '2018-01-14 23:43:22'),
(403, NULL, 'ip', '127.0.0.1', '2018-01-14 23:43:22', '2018-01-14 23:43:22'),
(404, NULL, 'global', NULL, '2018-01-17 19:23:49', '2018-01-17 19:23:49'),
(405, NULL, 'ip', '127.0.0.1', '2018-01-17 19:23:49', '2018-01-17 19:23:49'),
(406, 1, 'user', NULL, '2018-01-17 19:23:49', '2018-01-17 19:23:49'),
(407, NULL, 'global', NULL, '2018-01-17 23:53:22', '2018-01-17 23:53:22'),
(408, NULL, 'ip', '127.0.0.1', '2018-01-17 23:53:22', '2018-01-17 23:53:22'),
(409, 1, 'user', NULL, '2018-01-17 23:53:22', '2018-01-17 23:53:22'),
(410, NULL, 'global', NULL, '2018-01-18 03:30:48', '2018-01-18 03:30:48'),
(411, NULL, 'ip', '127.0.0.1', '2018-01-18 03:30:48', '2018-01-18 03:30:48'),
(412, 1, 'user', NULL, '2018-01-18 03:30:48', '2018-01-18 03:30:48'),
(413, NULL, 'global', NULL, '2018-01-18 08:55:29', '2018-01-18 08:55:29'),
(414, NULL, 'ip', '127.0.0.1', '2018-01-18 08:55:29', '2018-01-18 08:55:29'),
(415, 1, 'user', NULL, '2018-01-18 08:55:29', '2018-01-18 08:55:29'),
(416, NULL, 'global', NULL, '2018-01-18 10:35:58', '2018-01-18 10:35:58'),
(417, NULL, 'ip', '127.0.0.1', '2018-01-18 10:35:58', '2018-01-18 10:35:58'),
(418, 1, 'user', NULL, '2018-01-18 10:35:58', '2018-01-18 10:35:58'),
(419, NULL, 'global', NULL, '2018-01-18 11:56:41', '2018-01-18 11:56:41'),
(420, NULL, 'ip', '127.0.0.1', '2018-01-18 11:56:41', '2018-01-18 11:56:41'),
(421, 1, 'user', NULL, '2018-01-18 11:56:41', '2018-01-18 11:56:41'),
(422, NULL, 'global', NULL, '2018-01-18 12:26:53', '2018-01-18 12:26:53'),
(423, NULL, 'ip', '127.0.0.1', '2018-01-18 12:26:53', '2018-01-18 12:26:53'),
(424, 1, 'user', NULL, '2018-01-18 12:26:53', '2018-01-18 12:26:53'),
(425, NULL, 'global', NULL, '2018-01-18 21:44:18', '2018-01-18 21:44:18'),
(426, NULL, 'ip', '127.0.0.1', '2018-01-18 21:44:18', '2018-01-18 21:44:18'),
(427, 1, 'user', NULL, '2018-01-18 21:44:18', '2018-01-18 21:44:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_member_id` int(11) DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `group_member_id`, `password`, `permissions`, `last_login`, `fullname`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'diennk@dienkim.com', 1, '$2y$10$5lqJ4.ezQjGFnGjeIp/lB.tTvNhQUPbwiUsjS.BOpPIKGmmckNSu.', NULL, '2018-01-18 23:00:44', 'Nguyễn Kim Điền', 'nguyen-kim-dien.png', 5, 1, '2017-11-12 07:23:56', '2018-01-18 23:00:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_video_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `fullname`, `category_video_id`, `image`, `video_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đi tham quan núi Bà Đen 2', 1, 'thuvienhinh-1.png', 'F5gQLpScOsI', 2, 1, '2018-01-09 11:01:55', '2018-01-09 11:49:30'),
(5, 'Đi tham quan núi Bà Đen', 1, 'thuvienhinh-2.png', 'BDBb1h-eLsY', 1, 1, '2018-01-09 11:04:06', '2018-01-09 11:49:08'),
(6, 'Đi tham quan núi Bà Đen 3', 1, 'thuvienhinh-3.png', 'rQt2EuoN6oo', 3, 1, '2018-01-09 11:04:29', '2018-01-09 11:49:42'),
(7, 'Đi tham quan núi Bà Đen 4', 1, 'thuvienhinh-4.png', 'jLzAqwCjPuU', 4, 1, '2018-01-09 11:04:54', '2018-01-09 11:49:49'),
(8, 'Đi tham quan núi Bà Đen 5', 1, 'thuvienhinh-5.png', 'koeu_AnZ0BQ', 5, 1, '2018-01-09 11:05:20', '2018-01-09 11:49:56'),
(9, 'Đi tham quan núi Bà Đen 6', 1, 'thuvienhinh-6.png', 'jM53ZU2MCzU', 6, 1, '2018-01-09 11:05:37', '2018-01-09 11:50:04'),
(10, 'Đi tham quan núi Bà Đen 7', 1, 'thuvienhinh-7.png', 'u7xIydku_Yw', 7, 1, '2018-01-09 11:05:53', '2018-01-09 11:50:11'),
(11, 'Đi tham quan núi Bà Đen 8', 1, 'thuvienhinh-8.png', 'yGvSEhQXu4g', 8, 1, '2018-01-09 11:06:08', '2018-01-09 11:50:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `module_item`
--
ALTER TABLE `module_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Chỉ mục cho bảng `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_article`
--
ALTER TABLE `project_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Chỉ mục cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category_video`
--
ALTER TABLE `category_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2831;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `module_item`
--
ALTER TABLE `module_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `organization`
--
ALTER TABLE `organization`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=349;

--
-- AUTO_INCREMENT cho bảng `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `project_article`
--
ALTER TABLE `project_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
