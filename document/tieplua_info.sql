-- MySQL dump 10.14  Distrib 5.5.52-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: tieplua_info
-- ------------------------------------------------------
-- Server version	5.5.52-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK',1,'2017-11-12 06:15:56','2017-11-12 06:15:55','2017-11-12 06:15:56'),(2,1,'rcp04qHne8oATtrTCwKl9FuckJEarSCb',1,'2017-11-12 06:20:02','2017-11-12 06:20:02','2017-11-12 06:20:02'),(3,1,'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0',1,'2017-11-12 06:24:14','2017-11-12 06:24:14','2017-11-12 06:24:14'),(4,1,'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA',1,'2017-11-12 06:26:26','2017-11-12 06:26:26','2017-11-12 06:26:26'),(5,1,'1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg',1,'2017-11-12 07:22:52','2017-11-12 07:22:52','2017-11-12 07:22:52'),(6,1,'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ',1,'2017-11-12 07:23:56','2017-11-12 07:23:56','2017-11-12 07:23:56');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'Thành viên Tiếp Lửa','thanh-vien-tiep-lua','thành viên tiếp lửa','Hình ảnh của các thành viên hoạt động tại trung tâm tiếp lửa. Ban quản lý, điều hành, nhân sự v.v','thanh-vien.jpg',1,1,'2018-01-08 16:17:33','2018-03-05 18:47:33');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (14,'Website tieplua.info chính thức đi vào hoạt động','website-tiepluainfo-chinh-thuc-di-vao-hoat-dong','logo (1).png','Ra mắt website www.tieplua.info - Câu lạc bộ người khuyết tật sài gòn.','<p style=\"text-align:justify\"><img alt=\"\" src=\"/upload/logo.png\" style=\"float:left; height:25px; width:38px\" />&nbsp; - Sau một thời gian chuẩn bị v&agrave; x&acirc;y dựng website. H&ocirc;m nay ch&uacute;ng t&ocirc;i ch&iacute;nh thức đưa website&nbsp;đi v&agrave;o hoạt động</p>\n\n<p><br />\nĐược sự t&agrave;i trợ t&ecirc;n miền v&agrave; m&aacute;y chủ từ C&ocirc;ng Ty TNHH Vidoco. Sau một thời gian chuẩn bị v&agrave; x&acirc;y dựng website. H&ocirc;m nay ch&uacute;ng t&ocirc;i ch&iacute;nh thức đưa website đi v&agrave;o hoạt động.&nbsp;</p>\n\n<p>Website đang trong giai đoạn chạy thử nghiệm v&agrave; chờ xin giấy ph&eacute;p hoạt động.<br />\n<br />\nWebsite được chạy tr&ecirc;n t&ecirc;n miền ch&iacute;nh thức của Trung Tậm Tiếp Lửa <strong>www.tieplua.info.&nbsp;</strong>B&ecirc;n cạnh đ&oacute;, để hỗ trợ cho website hoạt động c&oacute; hiệu quả. Ch&uacute;ng t&ocirc;i x&acirc;y dựng&nbsp;fanpage tr&ecirc;n facebook tại địa chỉ:&nbsp;<a href=\"https://web.archive.org/web/20131216131825/https://www.facebook.com/TiepLua.net\">https://www.facebook.com</a>.</p>\n\n<p>&nbsp;Trong giai đoạn khởi đầu x&acirc;y dựng c&ograve;n rất nhiều kh&oacute; khăn. Ch&uacute;ng t&ocirc;i rất mong nhận được mọi sự đ&oacute;ng g&oacute;p &yacute; kiến, x&acirc;y dựng v&agrave; đồng h&agrave;nh c&ugrave;ng ch&uacute;ng t&ocirc;i tr&ecirc;n những chặng đường sau n&agrave;y.&nbsp;<br />\n<br />\nThay mặt trung t&acirc;m - xin ch&acirc;n th&agrave;nh cảm ơn c&aacute;c c&ocirc; ch&uacute;, anh chị, v&agrave; c&aacute;c bạn đ&atilde; tận t&igrave;nh gi&uacute;p đỡ trong thời gian qua.</p>\n\n<p>&nbsp;</p>\n\n<p>Xin ch&acirc;n th&agrave;nh cảm ơn</p>\n\n<p>&nbsp;</p>\n\n<p>Đại diện ban quản trị&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>L&ecirc; Th&uacute;c Vinh</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>','','tieplua.info, câu lạc bộ người khuyết tật, người khuyết tật sài gòn','Website tieplua.info là một cổng thông tin của Câu lạc bộ người khuyết tật Sài Gòn. Ra mắt đi vào hoạt động ngày 06/03/2018',60,1,1,'2018-01-03 07:52:45','2018-05-05 06:22:52'),(15,'Chương trình 20 máy tính cho câu lạc bộ Tiếp Lửa','chuong-trinh-20-may-tinh-cho-cau-lac-bo-tiep-lua','chuong-trinh-20-may-tinh-cho-nguoi-khuyet-tat.png','Chương trình 20 máy tính cho câu lạc bộ tiếp lửa là hoạt động mang ý nghĩa nhân văn, với tinh thần tương thân tương ái, tạo điều kiện học tập cho những bạn có hoàn cảnh khó khăn, khuyết tật có cơ hội được học nghề.','<p style=\"text-align:justify\">Với tinh thần tương th&acirc;n tương &aacute;i, l&aacute; l&agrave;nh đ&ugrave;m l&aacute; r&aacute;ch, chương tr&igrave;nh 20 m&aacute;y t&iacute;nh cho c&acirc;u lạc bộ tiếp lửa nhằm k&ecirc;u gọi c&aacute;c nh&agrave; hảo t&acirc;m c&ugrave;ng nhau chung tay ủng hộ 20 chiếc m&aacute;y t&iacute;nh cho c&acirc;u lạc bộ Tiếp Lửa. Đ&acirc;y l&agrave; chương tr&igrave;nh mang &yacute; nghĩa nh&acirc;n văn, tạo điều kiện cho c&aacute;c bạn c&oacute; ho&agrave;n cảnh kh&oacute; khăn,&nbsp;khuyết tật c&oacute; cơ hội được học nghề, được tiếp cận những kiến thức c&ocirc;ng nghệ th&ocirc;ng tin từ những người c&oacute; chuy&ecirc;n m&ocirc;n cao, c&oacute; t&acirc;m truyền lại.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\"><img alt=\"\" src=\"/upload/tieplua/chuong-trinh-20-may-tinh-cho-nguoi-khuyet-tat.png\" /></p>\r\n\r\n<p style=\"text-align:justify\">Sau khi học xong, c&acirc;u lạc bộ Tiếp Lửa sẽ giới thiệu việc l&agrave;m cho c&aacute;c bạn đủ kiến thức l&agrave;m việc với mức lương ổn định. Từ đ&oacute; tạo điều kiện cho những bạn c&oacute; ho&agrave;n cảnh k&eacute;m may mắn c&oacute; thu nhập ổn định.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Để l&agrave;m được việc c&oacute; &yacute; nghĩa nh&acirc;n văn n&agrave;y, th&igrave; cần đ&ograve;i hỏi nhiều nh&agrave; tổ chức, cộng đồng, c&aacute;c nh&agrave; hảo t&acirc;m c&ugrave;ng nhau chung sức hỗ trợ 20 chiếc m&aacute;y t&iacute;nh để trang bị cho c&aacute;c bạn c&oacute; điều kiện học v&agrave; thực h&agrave;nh thật tốt. Mọi sự đ&oacute;ng g&oacute;p của c&aacute;c nh&agrave; hảo t&acirc;m sẽ mang &yacute; nghĩa rất lớn cho cộng đồng v&agrave; x&atilde; hội.</p>\r\n\r\n<p style=\"text-align:justify\">Tiếp lửa l&agrave; c&acirc;u lạc bộ ra đời với mục đ&iacute;ch tạo điều kiện hết m&igrave;nh cho những bạn c&oacute; ho&agrave;n cảnh kh&oacute; khăn, khuyết tật được học nghề đến nơi đến chốn, giới thiệu việc l&agrave;m cho những bạn c&oacute; nhu cầu t&igrave;m việc. Đ&acirc;y cũng l&agrave; s&acirc;n chơi bổ &iacute;ch cho người khuyết tật, l&agrave; nơi giao lưu học hỏi những kiến thức hay, những kinh nghiệm sống, d&igrave;u dắt những th&agrave;nh vi&ecirc;n kh&oacute; khăn c&oacute; được cuộc sống tốt hơn.</p>\r\n\r\n<p style=\"text-align:justify\">Xin c&aacute;m ơn c&aacute;c nh&agrave; hảo t&acirc;m đ&atilde; quan t&acirc;m v&agrave; hỗ trợ.</p>\r\n\r\n<p style=\"text-align:justify\">Mọi th&ocirc;ng tin chi tiết, xin vui l&ograve;ng li&ecirc;n hệ qua địa chỉ:</p>\r\n\r\n<p style=\"text-align:justify\">TRUNG T&Acirc;M TIẾP LỬA</p>\r\n\r\n<p style=\"text-align:justify\">Địa chỉ: 35/6 - Đường B&ugrave;i Quang L&agrave; - Phường 12 - Quận G&ograve; Vấp - TP.HCM</p>\r\n\r\n<p style=\"text-align:justify\">Điện thoại: 0949.027.720</p>\r\n\r\n<p style=\"text-align:justify\">Website:&nbsp;https://tieplua.info</p>','','','Chương trình 20 máy tính cho câu lạc bộ tiếp lửa với mục đích tạo điều kiện cho những bạn khuyết tật có điều kiện học nghề, tạo thu nhập cho chính bản thân họ. Chương trình kêu gọi các nhà hảo tâm quyên góp 20 máy tính để các bạn có thể học được.',51,1,1,'2018-03-19 08:44:14','2018-05-05 14:30:55');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_category`
--

DROP TABLE IF EXISTS `article_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_category`
--

LOCK TABLES `article_category` WRITE;
/*!40000 ALTER TABLE `article_category` DISABLE KEYS */;
INSERT INTO `article_category` VALUES (25,14,6,'2018-03-05 18:40:05','2018-03-05 18:40:05'),(26,15,7,'2018-03-19 08:44:14','2018-03-19 08:44:14');
/*!40000 ALTER TABLE `article_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,1,'20 Máy Tính Cho NKT','20 máy tính cho người khuyết tật','chuong-trinh-20-may-tinh-cho-nguoi-khuyet-tat.png','https://www.hdwallpapers.in',1,1,'2017-12-16 05:03:34','2018-03-19 07:56:42'),(3,2,'','','member-1.png','',1,1,'2017-12-28 02:38:24','2017-12-28 02:40:03'),(4,2,'','','member-2.png','',2,1,'2017-12-28 02:38:40','2017-12-28 02:40:03'),(5,2,'','','member-3.png','',3,1,'2017-12-28 02:38:51','2017-12-28 02:40:07'),(6,2,'','','member-4.png','',4,1,'2017-12-28 02:38:59','2017-12-28 02:40:03'),(7,2,'','','member-5.png','',5,1,'2017-12-28 02:39:08','2017-12-28 02:40:03'),(8,2,'','','member-6.png','',6,1,'2017-12-28 02:39:19','2017-12-28 02:40:03'),(9,2,'','','member-7.png','',7,1,'2017-12-28 02:39:28','2017-12-28 02:40:03');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_article`
--

DROP TABLE IF EXISTS `category_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_article`
--

LOCK TABLES `category_article` WRITE;
/*!40000 ALTER TABLE `category_article` DISABLE KEYS */;
INSERT INTO `category_article` VALUES (4,'Dịch vụ','metakeyword dịch vụ','metadescription dịch vụ','dich-vu',0,NULL,1,1,'2017-12-18 02:17:10','2018-01-04 17:04:18'),(5,'Hoạt động','metakeword hoạt động','metadescription hoạt động','hoat-dong',0,NULL,2,1,'2017-12-18 02:17:19','2018-01-08 07:17:28'),(6,'Tin nội bộ','metakeword Tin nội bộ','metadescription Tin nội bộ','tin-noi-bo',0,NULL,3,1,'2017-12-18 02:18:30','2018-01-03 08:15:13'),(7,'Tin cộng đồng','metakeyword Tin cộng đồng','metadescription Tin cộng đồng','tin-cong-dong',0,NULL,4,1,'2018-01-02 10:02:08','2018-01-03 08:15:31');
/*!40000 ALTER TABLE `category_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_banner`
--

LOCK TABLES `category_banner` WRITE;
/*!40000 ALTER TABLE `category_banner` DISABLE KEYS */;
INSERT INTO `category_banner` VALUES (1,'Slideshow','slideshow',1,1,'2017-12-16 05:02:58','2017-12-28 08:45:44'),(2,'Đối tác','doi-tac',1,2,'2017-12-26 04:32:09','2017-12-26 04:38:35');
/*!40000 ALTER TABLE `category_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_product`
--

DROP TABLE IF EXISTS `category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_product`
--

LOCK TABLES `category_product` WRITE;
/*!40000 ALTER TABLE `category_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_video`
--

DROP TABLE IF EXISTS `category_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_video`
--

LOCK TABLES `category_video` WRITE;
/*!40000 ALTER TABLE `category_video` DISABLE KEYS */;
INSERT INTO `category_video` VALUES (1,'Video','metakeyword video','metadescription video','video',NULL,'thuvienhinh-1.png',1,1,'2018-01-09 10:03:48','2018-01-09 11:08:05');
/*!40000 ALTER TABLE `category_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donation`
--

DROP TABLE IF EXISTS `donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donation` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `total_cost` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donation`
--

LOCK TABLES `donation` WRITE;
/*!40000 ALTER TABLE `donation` DISABLE KEYS */;
INSERT INTO `donation` VALUES (1,'20 Máy tính cũ cho CLB Tiếp Lửa','20-may-tinh-cu-cho-clb-tiep-lua','20 Máy tính cũ cho CLB Tiếp Lửa','20 Máy tính cũ cho CLB Tiếp Lửa','90000000',1,1,'2018-03-16 04:54:33','2018-03-19 08:37:32'),(2,'Quyên góp 2','quyen-gop-2','metakeyword Quyên góp 2','metadescription Quyên góp 2','200000000',2,0,'2018-03-16 04:58:10','2018-03-18 17:31:13');
/*!40000 ALTER TABLE `donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_member`
--

DROP TABLE IF EXISTS `group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_member`
--

LOCK TABLES `group_member` WRITE;
/*!40000 ALTER TABLE `group_member` DISABLE KEYS */;
INSERT INTO `group_member` VALUES (1,'Administrator','',1,'2016-12-17 05:05:18','2018-03-19 05:56:24'),(2,'Bài viết',NULL,2,'2016-12-17 05:05:41','2018-01-09 10:42:43'),(3,'Thành viên thường','thanh-vien-thuong',3,'2018-02-22 08:04:14','2018-02-22 08:04:14');
/*!40000 ALTER TABLE `group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2902 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_privilege`
--

LOCK TABLES `group_privilege` WRITE;
/*!40000 ALTER TABLE `group_privilege` DISABLE KEYS */;
INSERT INTO `group_privilege` VALUES (2768,2,1,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2769,2,2,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2770,2,3,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2771,2,4,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2772,2,5,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2773,2,16,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2774,2,17,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2775,2,33,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2776,2,49,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2777,2,50,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2778,2,55,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2779,2,56,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2780,2,57,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2781,2,58,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2782,2,59,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2783,2,60,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2784,2,61,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2785,2,62,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2786,2,63,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2787,2,67,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2788,2,68,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2789,2,79,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2790,2,80,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2791,2,85,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2792,2,86,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2793,2,103,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2794,2,104,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2795,2,105,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2796,2,106,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2797,2,107,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2798,2,108,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2799,2,109,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2800,2,110,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2801,2,111,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2802,2,112,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2803,2,113,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2804,2,114,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2805,2,115,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2806,2,116,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2807,2,117,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2808,2,118,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2809,2,119,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2810,2,120,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2811,2,121,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2812,2,122,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2813,2,123,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2814,2,124,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2815,2,125,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2816,2,126,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2817,2,127,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2818,2,128,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2819,2,129,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2820,2,130,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2821,2,131,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2822,2,132,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2823,2,133,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2824,2,134,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2825,2,135,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2826,2,136,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2827,2,137,'2018-01-09 10:36:25','2018-01-09 10:36:25'),(2828,2,138,'2018-01-09 10:36:26','2018-01-09 10:36:26'),(2829,2,139,'2018-01-09 10:36:26','2018-01-09 10:36:26'),(2830,2,140,'2018-01-09 10:36:26','2018-01-09 10:36:26'),(2831,1,1,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2832,1,2,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2833,1,3,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2834,1,4,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2835,1,5,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2836,1,16,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2837,1,17,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2838,1,18,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2839,1,19,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2840,1,24,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2841,1,25,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2842,1,33,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2843,1,43,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2844,1,44,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2845,1,49,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2846,1,50,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2847,1,55,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2848,1,56,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2849,1,57,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2850,1,58,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2851,1,59,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2852,1,60,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2853,1,61,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2854,1,62,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2855,1,63,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2856,1,67,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2857,1,68,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2858,1,79,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2859,1,80,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2860,1,85,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2861,1,86,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2862,1,103,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2863,1,104,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2864,1,105,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2865,1,106,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2866,1,107,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2867,1,108,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2868,1,109,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2869,1,110,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2870,1,111,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2871,1,112,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2872,1,113,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2873,1,114,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2874,1,115,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2875,1,116,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2876,1,117,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2877,1,118,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2878,1,119,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2879,1,120,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2880,1,121,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2881,1,122,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2882,1,123,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2883,1,124,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2884,1,125,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2885,1,126,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2886,1,127,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2887,1,128,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2888,1,129,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2889,1,130,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2890,1,131,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2891,1,132,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2892,1,133,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2893,1,134,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2894,1,135,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2895,1,136,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2896,1,137,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2897,1,138,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2898,1,139,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2899,1,140,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2900,1,141,'2018-03-19 05:56:24','2018-03-19 05:56:24'),(2901,1,142,'2018-03-19 05:56:24','2018-03-19 05:56:24');
/*!40000 ALTER TABLE `group_privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice_detail`
--

LOCK TABLES `invoice_detail` WRITE;
/*!40000 ALTER TABLE `invoice_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `invoice_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Trang chủ','trang-chu',0,1,NULL,0,1,1,'2017-12-15 03:38:30','2018-01-10 03:36:35'),(3,'Dịch vụ hoạt động','dich-vu-hoat-dong',0,1,NULL,0,3,1,'2017-12-15 03:39:06','2017-12-15 03:39:06'),(4,'Dự án','du-an',0,1,NULL,0,4,1,'2017-12-15 03:39:22','2017-12-15 03:39:22'),(5,'Tin tức sự kiện','tin-tuc-su-kien',0,1,NULL,0,5,1,'2017-12-15 03:39:38','2018-01-02 10:07:26'),(6,'Tiếp lửa','tiep-lua',0,1,NULL,0,6,1,'2017-12-15 03:39:53','2017-12-15 03:39:53'),(7,'Danh bạ','danh-ba',0,1,NULL,0,7,1,'2017-12-15 03:40:04','2017-12-15 03:40:04'),(8,'Thư viện','co-cau-to-chuc',0,1,'',0,8,1,'2017-12-15 03:40:21','2018-03-20 01:53:42'),(9,'Liên hệ','lien-he',0,1,NULL,0,9,1,'2017-12-15 03:40:34','2017-12-15 03:40:34'),(10,'Dịch vụ hoạt động','dich-vu-hoat-dong',0,2,NULL,0,1,1,'2017-12-28 05:03:15','2017-12-28 05:03:15'),(11,'Dự án','dich-vu-hoat-dong',0,2,NULL,0,2,1,'2017-12-28 05:03:29','2017-12-28 05:03:29'),(12,'Tin tức sự kiện','dich-vu-hoat-dong',0,2,NULL,0,3,1,'2017-12-28 05:03:45','2017-12-28 05:03:45'),(13,'Tiếp lửa','dich-vu-hoat-dong',0,2,NULL,0,4,1,'2017-12-28 05:03:57','2017-12-28 05:03:57'),(14,'Danh bạ','dich-vu-hoat-dong',0,2,NULL,0,5,1,'2017-12-28 05:04:12','2017-12-28 05:04:12'),(15,'Thư viện','dich-vu-hoat-dong',0,2,NULL,0,6,1,'2017-12-28 05:04:28','2017-12-28 05:04:28'),(16,'Tin nội bộ','tin-noi-bo',5,1,NULL,1,1,1,'2018-01-02 10:08:14','2018-01-02 10:08:14'),(17,'Tin cộng đồng','tin-cong-dong',5,1,NULL,1,2,1,'2018-01-02 10:08:28','2018-01-02 10:08:28'),(18,'Dịch vụ','dich-vu',3,1,NULL,1,1,1,'2018-01-02 10:08:51','2018-01-02 10:08:51'),(19,'Hoạt động','hoat-dong',3,1,NULL,1,2,1,'2018-01-02 10:09:03','2018-01-02 10:09:03'),(20,'Tin nội bộ','tin-noi-bo',0,3,NULL,0,1,1,'2018-01-03 04:28:30','2018-01-03 04:28:30'),(21,'Tin cộng đồng','tin-cong-dong',0,3,NULL,0,2,1,'2018-01-03 04:28:42','2018-01-03 04:28:42'),(22,'Dịch vụ','dich-vu',0,4,NULL,0,1,1,'2018-01-03 08:03:39','2018-01-03 08:03:39'),(23,'Hoạt động','hoat-dong',0,4,NULL,0,2,1,'2018-01-03 08:03:48','2018-01-03 08:03:48'),(24,'Hình ảnh','hinh-anh',8,1,NULL,1,1,1,'2018-01-09 03:31:00','2018-01-09 03:31:00'),(25,'Video','video',8,1,NULL,1,2,1,'2018-01-09 03:31:12','2018-01-09 11:08:24'),(26,'Trang chủ','trang-chu',0,5,NULL,0,1,1,'2018-01-09 19:32:06','2018-01-09 19:32:06'),(27,'Giới thiệu','gioi-thieu-tiep-lua',0,5,NULL,0,2,1,'2018-01-09 19:32:20','2018-01-09 19:32:20'),(28,'Dịch vụ hoạt động','dich-vu-hoat-dong',0,5,NULL,0,3,1,'2018-01-09 19:32:58','2018-01-09 19:33:02'),(29,'Dự án','du-an',0,5,NULL,0,4,1,'2018-01-09 19:33:36','2018-01-09 19:33:40'),(30,'Tin tức sự kiện','tin-tuc-su-kien',0,5,NULL,0,5,1,'2018-01-09 19:34:04','2018-01-09 19:34:19'),(31,'Tiếp lửa','tiep-lua',0,5,NULL,0,6,1,'2018-01-09 19:34:46','2018-01-09 19:34:46'),(32,'Danh bạ','danh-ba',0,5,NULL,0,7,1,'2018-01-09 19:35:01','2018-01-09 19:35:01'),(33,'Thư viện','co-cau-to-chuc',0,5,'',0,8,1,'2018-01-09 19:35:30','2018-03-20 19:23:54'),(34,'Hình ảnh','hinh-anh',33,5,NULL,1,1,1,'2018-01-09 19:35:52','2018-01-09 19:35:52'),(35,'Video','video',33,5,NULL,1,2,1,'2018-01-09 19:36:42','2018-01-09 19:36:42'),(36,'Liên hệ','lien-he',0,5,NULL,0,9,1,'2018-01-09 19:37:00','2018-01-09 19:37:06'),(40,'Giới thiệu','gioi-thieu-tiep-lua',0,1,'',0,1,1,'2018-05-02 10:13:13','2018-05-02 10:13:13'),(41,'Giới thiệu Tiếp Lửa','gioi-thieu-tiep-lua',40,1,'',1,1,1,'2018-05-02 10:13:41','2018-05-02 10:13:41'),(42,'Cơ cấu tổ chức','co-cau-to-chuc',40,1,'',1,1,1,'2018-05-02 10:17:03','2018-05-02 10:17:03');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_type`
--

LOCK TABLES `menu_type` WRITE;
/*!40000 ALTER TABLE `menu_type` DISABLE KEYS */;
INSERT INTO `menu_type` VALUES (1,'MainMenu','main-menu',1,1,'2017-12-15 03:37:06','2017-12-15 03:37:06'),(2,'Danh mục','danh-muc',1,2,'2017-12-28 05:02:29','2017-12-28 05:02:29'),(3,'Tin tức sự kiện','tin-tuc-su-kien',1,3,'2018-01-03 04:22:54','2018-01-03 04:28:15'),(4,'Dịch vụ hoạt động','dich-vu-hoat-dong',1,4,'2018-01-03 07:59:52','2018-01-03 07:59:57'),(5,'MobileMenu','mobile-menu',1,5,'2018-01-09 19:31:48','2018-01-09 19:31:48');
/*!40000 ALTER TABLE `menu_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `module_item`
--

DROP TABLE IF EXISTS `module_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `module_item`
--

LOCK TABLES `module_item` WRITE;
/*!40000 ALTER TABLE `module_item` DISABLE KEYS */;
INSERT INTO `module_item` VALUES (1,'Tin mới nhất','[{\"id\":15,\"sort_order\":\"1\"},{\"id\":14,\"sort_order\":\"2\"}]','tin-moi-nhat','article',NULL,1,1,'2017-12-18 02:58:38','2018-05-02 11:16:39');
/*!40000 ALTER TABLE `module_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Trung tâm Hành động vì sự phát triển cộng đồng ACDC','trung-tam-hanh-dong-vi-su-phat-trien-cong-dong-acdc','metakeyword Trung tâm Hành động vì sự phát triển cộng đồng (ACDC)','metadescription Trung tâm Hành động vì sự phát triển cộng đồng (ACDC)','conmochieu-4.png','Số 11 Dãy D2-2, ngõ 95 Phố Chùa Bộc, Quận Đống Đa, Hà Nội','04 3564 3053','admin@acdc.org.vn','http://www.acdc.org.vn','Trung tâm Hành động vì sự phát triển cộng đồng (ACDC) được thành lập theo quyết định số B-54/2011/ĐK-KH&CN của Sở Khoa học và Công nghệ ngày 27 tháng 12 năm 2011. Trung tâm được hình thành và phát triển nhằm xây dựng một xã hội không vật cản và vì quyền của NKT với tôn chỉ mục đích là “Chúng tôi tồn tại vì sự phát triển của cộng đồng NKT Việt Nam”.','<p style=\"text-align:justify\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&nbsp;</p>',69,1,1,'2018-01-08 04:40:13','2018-05-05 06:23:02');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (1,'Trung tâm tiếp lửa','trung-tam-tiep-lua','trung-tam-widget',NULL,'','<p><strong>Địa chỉ:</strong> 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp HCM</p>\n\n<p><strong>Đơn vị trực thuộc :</strong> C&ocirc;ng Ty TNHH VIDOCO</p>\n\n<p><strong>Chịu tr&aacute;ch nhiệm:</strong> L&ecirc; Th&uacute;c Vinh</p>\n\n<p>Điện thoại: 0949.027720</p>\n\n<p>Email: tieplua.net@gmail.com</p>\n\n<p>Website: www.tieplua.info | www.tieplua.net | www.tieplua.com | www.tieplua.edu.vn</p>','','','',1,8,1,'2017-12-28 04:10:41','2018-05-02 10:12:32'),(2,'Về Chúng Tôi','ve-chung-toi','about-us-widget',NULL,'','<p>Tiếp lửa l&agrave; c&acirc;u lạc bộ người khuyết tật. Hoạt động trong lĩnh vực hỗ trợ ho&agrave; nhập to&agrave;n diện cho người khuyết tật ( NKT). Ch&uacute;ng t&ocirc;i bắt đầu bằng sự kết nối, tư vấn định hướng gi&uacute;p <strong>người khuyết tật </strong>ho&agrave; nhập v&agrave;o cuộc sống. Đ&agrave;o tạo nghề, định hướng t&igrave;m được việc l&agrave;m ph&ugrave; hợp, hỗ trợ ti&ecirc;u thụ sản phẩm của người khuyết tật l&agrave;m ra. Từ đ&oacute;, gi&uacute;p họ tự tin v&agrave; vươn l&ecirc;n, tự ph&aacute;t triển bản th&acirc;n như bao người kh&aacute;c.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>','','người khuyết tật','',4,3,1,'2017-12-28 04:54:45','2018-05-02 10:02:28'),(4,'Giới thiệu Tiếp Lửa','gioi-thieu-tiep-lua','',NULL,'Tiếp lửa là một câu lạc bộ hoạt động trong lĩnh vực hỗ trợ hòa nhập toàn diện cho người khuyết tật (NKT) thông qua đào tạo, tư vấn định hướng giúp NKT tìm được việc làm phù hợp, hỗ trợ tìm nguồn tiêu thụ sản phẩm của NKT. Từ đó, giúp NKT tự tin và dễ dàng hòa nhập với cộng đồng, giảm bớt gánh nặng cho gia đình và xã hội.','<p><strong>LỊCH SỬ H&Igrave;NH TH&Agrave;NH</strong><br />\r\n-&nbsp; &nbsp; 18/05/2010: Lập nh&oacute;m &ldquo;người khuyết tật&rsquo;&rsquo; tại An Ph&uacute; - Pleiku - Gia Lai<br />\r\n-&nbsp; &nbsp; 27/06/2015: Th&agrave;nh lập C&acirc;u lạc bộ tiếp lửa hoạt động tại 30A Trần Văn Ơn - T&acirc;n Ph&uacute; - Hồ Ch&iacute; Minh<br />\r\n-&nbsp; &nbsp; 06/03/2018: C&acirc;u lạc bộ tiếp lửa ch&iacute;nh thức hoạt động với sự bảo trợ của C&ocirc;ng Ty TNHH Vidoco - trụ sở tại 35/6 B&ugrave;i Quang L&agrave;, P12, Quận G&ograve; Vấp<br />\r\n<br />\r\n<strong>HOẠT ĐỘNG Đ&Agrave;O TẠO</strong><br />\r\nVới vai tr&ograve; &ldquo;cầu nối&rdquo; cho NKT qua c&aacute;c bước: Hướng nghiệp - Tiếp nhận - Chăm s&oacute;c h&ograve;a nhập - Đ&agrave;o tạo chuy&ecirc;n s&acirc;u - Hỗ trợ cung cấp việc l&agrave;m cho NKT, Trung t&acirc;m Tiếp lửa&nbsp;cung cấp:<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp; C&aacute;c kh&oacute;a đ&agrave;o tạo CNTT: Tin học văn ph&ograve;ng; Quản trị nội dung Website; Thiết kế đồ họa; Thiết kế website, seo, marketing online<br />\r\n-&nbsp;&nbsp;&nbsp; C&aacute;c kh&oacute;a đ&agrave;o tạo bổ trợ: Tiếng Anh giao tiếp; Kỹ năng sống độc lập; Kỹ năng mềm; Kỹ năng l&agrave;m việc trong doanh nghiệp.<br />\r\n<br />\r\n<strong>HOẠT ĐỘNG SẢN XUẤT - KINH DOANH</strong><br />\r\nNhằm tạo điều kiện cho c&aacute;c học vi&ecirc;n sau khi tốt nghiệp được l&agrave;m quen v&agrave; trau dồi kỹ năng l&agrave;m việc, đồng thời bổ sung nguồn t&agrave;i ch&iacute;nh bền vững cho sự ph&aacute;t triển l&acirc;u d&agrave;i của Trung t&acirc;m, C&Ocirc;NG TY TNHH VIDOCO&nbsp;được th&agrave;nh lập với c&aacute;c dịch vụ:&nbsp;<br />\r\n<br />\r\n-&nbsp;&nbsp;&nbsp; Thiết kế - quản trị website<br />\r\n-&nbsp;&nbsp;&nbsp; Thiết kế đồ họa&nbsp;<br />\r\n-&nbsp;&nbsp;&nbsp; Quảng c&aacute;o trực tuyến<br />\r\n-&nbsp;&nbsp;&nbsp; Thương mại điện tử (quảng b&aacute;, ti&ecirc;u thụ sản phẩm của người khuyết tật)<br />\r\n-&nbsp;&nbsp;&nbsp; Giới thiệu việc l&agrave;m cho người khuyết tật<br />\r\n<br />\r\n<strong>HOẠT ĐỘNG X&Atilde; HỘI KH&Aacute;C</strong><br />\r\n-&nbsp;&nbsp;&nbsp; Tổ chức v&agrave; k&ecirc;u gọi c&aacute;c hoạt động từ thiện.<br />\r\n-&nbsp;&nbsp;&nbsp; Tạo s&acirc;n chơi giao lưu, kết nối cộng đồng.<br />\r\n-&nbsp;&nbsp;&nbsp; Tham gia c&aacute;c hoạt động x&atilde; hội kh&aacute;c.</p>','','metakeyword giới thiệu','metadescription giới thiệu',296,7,1,'2018-01-03 10:35:10','2018-05-07 05:08:51'),(5,'Thông tin liên hệ','thong-tin-lien-he','thong-tin-lien-he-widget',NULL,'','<p style=\"text-align:justify\"><span style=\"color:#ff8c00\"><span style=\"font-size:28px\"><strong>C&Acirc;U LẠC BỘ TIẾP LỬA</strong></span></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>VPDĐ: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, Hồ Ch&iacute; Minh</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Website: www.tieplua.info | www.tieplua.net | www.tieplua.edu.vn | www.tieplua.com</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Email: tieplua.net@gmail.com</strong></span></p>\n\n<p style=\"text-align:justify\"><span style=\"font-size:18px\"><strong>Tel: <span style=\"color:#ff0000\">0963.027.720 ( Trưởng nh&oacute;m - Mr Vinh )&nbsp;</span></strong></span></p>','','','',NULL,1,1,'2018-01-03 18:36:03','2018-03-03 16:30:05'),(6,'Dịch vụ hoạt động','dich-vu-hoat-dong','dich-vu-hoat-dong-widget','dich_vu.jpg','Với vai trò “cầu nối” cho người khuyết tật qua các bước: Hướng nghiệp - Tiếp nhận - Chăm sóc hòa nhập - Đào tạo chuyên sâu - Hỗ trợ việc làm cho NKT. Quảng bá tiêu thụ sản phẩm của NKT','','chú thích dịch vụ hoạt động','metakeyword dịch vụ hoạt động','metadescription dịch vụ hoạt động',4,2,1,'2018-01-04 02:38:17','2018-03-19 08:19:35'),(7,'Dự án','du-an','du-an-widget','viec_lam.jpg','Trung Tâm Tiếp Lửa luôn xây dựng những dự án nhằm phục vụ cho cộng đồng người khuyết tật. Đào Tạo (tieplua.edu.vn) | Việc làm | Cổng thông tin (www.tieplua.net) | Thương mại điện tử (tieplua.com)','','chú thích dịch vụ hoạt động','metakeyword dịch vụ hoạt động','metakeyword dịch vụ hoạt động',2,4,1,'2018-01-04 02:39:28','2018-03-19 08:18:52'),(8,'Tham vấn đồng cảnh','tham-van-dong-canh','tham-van-widget','tham_van.jpg','Tham vấn đồng cảnh là một hoạt động rất cần thiết đối với người khuyết tật (NKT) khi muốn sống độc lập. Nó mang ý nghĩa sâu xa: NKT có quyền tự do chọn lựa, tự do quyết định và ...','','chú thích tham vấn đồng cảnh','metakeyword tham vấn đồng cảnh','metadescription thấm vấn đồng cảnh',29,6,1,'2018-01-04 02:40:35','2018-05-05 06:22:32'),(9,'Fanpage','fanpage','fanpage-footer',NULL,'<div class=\"fb-page\" data-href=\"https://www.facebook.com/Trung-Tâm-Tiếp-Lửa-1922029917839211\" data-tabs=\"timeline\" data-width=\"250\" data-height=\"200\" data-small-header=\"true\" data-adapt-container-width=\"true\" data-hide-cover=\"false\" data-show-facepile=\"true\"><blockquote cite=\"https://www.facebook.com/Trung-Tâm-Tiếp-Lửa-1922029917839211\" class=\"fb-xfbml-parse-ignore\"><a href=\"https://www.facebook.com/gonguyenlieumy/\">Trung Tâm Tiếp Lửa</a></blockquote></div>','','','','',NULL,9,1,'2018-01-18 15:55:58','2018-03-19 07:51:32'),(10,'Cơ cấu tổ chức','co-cau-to-chuc','',NULL,'','<p><img alt=\"\" src=\"/upload/tieplua/so-do-to-chuc-tiep-lua.JPG\" style=\"height:480px; width:847px\" /></p>\r\n\r\n<p style=\"text-align:center\"><strong>H&igrave;nh ảnh cơ cấu tổ chức trung t&acirc;m Tiếp lửa 2018</strong></p>','','','',9,1,1,'2018-05-02 10:16:33','2018-05-07 05:26:43');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_method`
--

LOCK TABLES `payment_method` WRITE;
/*!40000 ALTER TABLE `payment_method` DISABLE KEYS */;
INSERT INTO `payment_method` VALUES (1,'Chuyển khoản','chuyen-khoan','',1,1,'2018-01-07 17:25:13','2018-01-07 17:25:13'),(2,'Trực tiếp','truc-tiep','',2,1,'2018-01-07 17:25:25','2018-01-07 17:25:25');
/*!40000 ALTER TABLE `payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=452 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (6,1,'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf','2017-11-12 08:12:08','2017-11-12 08:12:08'),(12,1,'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp','2017-11-12 08:20:55','2017-11-12 08:20:55'),(20,1,'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5','2017-11-12 08:44:06','2017-11-12 08:44:06'),(27,1,'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt','2017-11-12 10:14:09','2017-11-12 10:14:09'),(35,1,'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ','2017-11-12 10:41:59','2017-11-12 10:41:59'),(43,3,'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP','2017-11-12 10:51:37','2017-11-12 10:51:37'),(45,3,'61CQHzrI8v42ppzJ35HclGUgzulYNwKD','2017-11-12 10:51:57','2017-11-12 10:51:57'),(48,4,'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk','2017-11-12 11:00:38','2017-11-12 11:00:38'),(52,4,'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo','2017-11-12 11:04:17','2017-11-12 11:04:17'),(64,4,'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0','2017-11-12 11:20:36','2017-11-12 11:20:36'),(68,4,'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO','2017-11-12 11:21:48','2017-11-12 11:21:48'),(71,4,'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi','2017-11-12 11:22:33','2017-11-12 11:22:33'),(73,4,'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K','2017-11-12 11:22:59','2017-11-12 11:22:59'),(74,4,'m0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg','2017-11-12 11:23:03','2017-11-12 11:23:03'),(94,1,'W1uglu6PzKaOfwxa766IOJ33NDdulIri','2017-11-12 13:01:17','2017-11-12 13:01:17'),(105,4,'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N','2017-11-12 19:31:42','2017-11-12 19:31:42'),(106,4,'1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB','2017-11-12 19:31:45','2017-11-12 19:31:45'),(107,4,'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH','2017-11-12 19:31:51','2017-11-12 19:31:51'),(110,4,'RyU6rnrEVVwusqJpB1boWgpODKNKthib','2017-11-12 19:32:50','2017-11-12 19:32:50'),(113,4,'2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3','2017-11-12 19:34:34','2017-11-12 19:34:34'),(115,1,'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6','2017-11-12 19:36:57','2017-11-12 19:36:57'),(119,4,'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe','2017-11-12 19:44:50','2017-11-12 19:44:50'),(124,1,'1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX','2017-11-12 20:47:34','2017-11-12 20:47:34'),(125,1,'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt','2017-11-13 17:44:28','2017-11-13 17:44:28'),(129,1,'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp','2017-11-13 23:43:59','2017-11-13 23:43:59'),(134,1,'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d','2017-11-14 07:10:53','2017-11-14 07:10:53'),(135,1,'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ','2017-11-14 10:00:40','2017-11-14 10:00:40'),(138,1,'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE','2017-11-14 20:35:29','2017-11-14 20:35:29'),(139,1,'CDF73h1lqr864dh5T5BQdTRf0hcrS45y','2017-11-15 01:20:36','2017-11-15 01:20:36'),(143,1,'50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG','2017-11-15 10:34:05','2017-11-15 10:34:05'),(145,1,'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb','2017-11-15 10:45:25','2017-11-15 10:45:25'),(149,1,'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP','2017-11-15 21:20:42','2017-11-15 21:20:42'),(154,1,'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4','2017-11-16 12:09:09','2017-11-16 12:09:09'),(155,1,'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0','2017-11-16 19:00:45','2017-11-16 19:00:45'),(156,1,'a2STqoxCKAdKjJBxt5RxyBo23j196SqS','2017-11-17 01:55:13','2017-11-17 01:55:13'),(157,1,'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5','2017-11-17 03:54:15','2017-11-17 03:54:15'),(158,1,'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd','2017-11-17 09:26:45','2017-11-17 09:26:45'),(159,1,'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi','2017-11-17 21:05:41','2017-11-17 21:05:41'),(162,1,'0fsBWGHy3uFkICDp4rgusPKisYenbUr5','2017-11-18 08:03:50','2017-11-18 08:03:50'),(163,1,'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c','2017-11-19 05:53:59','2017-11-19 05:53:59'),(164,1,'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup','2017-11-20 05:47:41','2017-11-20 05:47:41'),(165,1,'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O','2017-11-21 03:33:18','2017-11-21 03:33:18'),(166,1,'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1','2017-11-21 04:17:05','2017-11-21 04:17:05'),(167,1,'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY','2017-11-21 17:39:32','2017-11-21 17:39:32'),(168,1,'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw','2017-11-21 23:49:19','2017-11-21 23:49:19'),(169,1,'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC','2017-11-22 18:21:12','2017-11-22 18:21:12'),(173,1,'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP','2017-11-23 05:15:58','2017-11-23 05:15:58'),(174,1,'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF','2017-11-23 18:51:55','2017-11-23 18:51:55'),(175,1,'STmoiFXISPPMkYZ46mHVd1FgZleRFPma','2017-11-24 01:23:33','2017-11-24 01:23:33'),(176,1,'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H','2017-11-24 02:11:20','2017-11-24 02:11:20'),(177,1,'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC','2017-11-24 06:39:38','2017-11-24 06:39:38'),(178,1,'6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T','2017-11-25 05:02:32','2017-11-25 05:02:32'),(179,1,'tKhufJfgecAKrGEAT2EBaEPLaf517QVS','2017-11-25 09:08:54','2017-11-25 09:08:54'),(180,1,'t3XDlldaLWhVaxrPuwM6dT02mMflr87j','2017-11-25 19:53:59','2017-11-25 19:53:59'),(182,1,'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU','2017-11-25 21:10:55','2017-11-25 21:10:55'),(184,1,'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ','2017-11-25 21:32:34','2017-11-25 21:32:34'),(185,1,'r6cxynGaM90IU8uZA7aJFjox941jTivP','2017-11-26 05:12:26','2017-11-26 05:12:26'),(198,1,'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz','2017-11-26 10:37:48','2017-11-26 10:37:48'),(199,1,'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX','2017-11-26 11:20:11','2017-11-26 11:20:11'),(202,1,'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq','2017-11-26 20:07:36','2017-11-26 20:07:36'),(203,1,'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg','2017-11-26 23:06:11','2017-11-26 23:06:11'),(204,1,'6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc','2017-11-27 00:00:05','2017-11-27 00:00:05'),(205,1,'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx','2017-11-27 02:16:57','2017-11-27 02:16:57'),(206,1,'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX','2017-11-27 07:58:05','2017-11-27 07:58:05'),(207,1,'qFJkZtCoPK72qECK96tX226VuMubIMBv','2017-11-27 19:23:06','2017-11-27 19:23:06'),(208,1,'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ','2017-11-27 20:15:53','2017-11-27 20:15:53'),(209,1,'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug','2017-11-27 20:17:20','2017-11-27 20:17:20'),(210,1,'UpPwfQYjNbyRmztTDCfl16md4weLyjG3','2017-11-30 08:03:21','2017-11-30 08:03:21'),(211,1,'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD','2017-12-01 10:48:28','2017-12-01 10:48:28'),(212,1,'xoOGCB3x8fVFoBznts5EU1k13GmZiO11','2017-12-02 19:53:50','2017-12-02 19:53:50'),(214,1,'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm','2017-12-03 11:57:16','2017-12-03 11:57:16'),(216,1,'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY','2017-12-03 17:58:34','2017-12-03 17:58:34'),(217,1,'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T','2017-12-04 11:12:33','2017-12-04 11:12:33'),(218,1,'0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF','2017-12-05 09:04:17','2017-12-05 09:04:17'),(219,1,'8J8vasVhkLwqagOIRNKwiIU94QoexH4O','2017-12-05 18:41:41','2017-12-05 18:41:41'),(220,1,'JChXlObze9eklsMJrTNLH6ekOw47H5mz','2017-12-06 00:14:21','2017-12-06 00:14:21'),(221,1,'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw','2017-12-06 08:20:51','2017-12-06 08:20:51'),(222,1,'F40EmMwa02fVssVHs66z0XASzB3S5sqM','2017-12-08 11:51:41','2017-12-08 11:51:41'),(223,1,'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO','2017-12-10 19:42:21','2017-12-10 19:42:21'),(224,1,'JebpNZTP11ct8IzcxmbYePuG978Jpumq','2017-12-10 20:05:44','2017-12-10 20:05:44'),(226,1,'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz','2017-12-10 21:48:03','2017-12-10 21:48:03'),(227,1,'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE','2017-12-11 09:24:23','2017-12-11 09:24:23'),(228,1,'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE','2017-12-11 20:07:50','2017-12-11 20:07:50'),(229,1,'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa','2017-12-12 10:23:23','2017-12-12 10:23:23'),(230,1,'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv','2017-12-12 19:38:58','2017-12-12 19:38:58'),(231,1,'5P3ys652WPCFCcMEtYp9K6YFz8KClLdt','2017-12-12 20:37:12','2017-12-12 20:37:12'),(232,1,'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb','2017-12-12 20:48:06','2017-12-12 20:48:06'),(233,1,'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC','2017-12-12 21:39:03','2017-12-12 21:39:03'),(234,1,'LspxbedO8o6CbiofYR0uqLfOwunUpfCT','2017-12-12 22:11:41','2017-12-12 22:11:41'),(235,1,'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga','2017-12-12 23:42:01','2017-12-12 23:42:01'),(236,1,'9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK','2017-12-13 01:24:31','2017-12-13 01:24:31'),(237,1,'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr','2017-12-13 01:26:17','2017-12-13 01:26:17'),(238,1,'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa','2017-12-13 01:27:02','2017-12-13 01:27:02'),(239,1,'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6','2017-12-13 02:42:24','2017-12-13 02:42:24'),(241,1,'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL','2017-12-13 11:11:26','2017-12-13 11:11:26'),(243,1,'5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN','2017-12-13 19:46:28','2017-12-13 19:46:28'),(244,1,'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai','2017-12-13 20:18:26','2017-12-13 20:18:26'),(245,1,'p89msT6X0idRVFgnJegC63D5VXzGzQZs','2017-12-13 20:46:43','2017-12-13 20:46:43'),(247,1,'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ','2017-12-13 23:44:24','2017-12-13 23:44:24'),(248,1,'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw','2017-12-14 02:24:40','2017-12-14 02:24:40'),(249,1,'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70','2017-12-14 05:39:40','2017-12-14 05:39:40'),(251,1,'gYei12wI1Xx9L458waGZcXrpzfJSLrEw','2017-12-14 05:40:20','2017-12-14 05:40:20'),(253,1,'o0i98RskGVcDO68h58WHtVILX3X7GyZZ','2017-12-14 08:30:08','2017-12-14 08:30:08'),(254,1,'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT','2017-12-14 17:36:03','2017-12-14 17:36:03'),(255,1,'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P','2017-12-14 18:39:23','2017-12-14 18:39:23'),(256,1,'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw','2017-12-14 19:13:37','2017-12-14 19:13:37'),(257,1,'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q','2017-12-14 19:20:29','2017-12-14 19:20:29'),(258,1,'bEwsrdAAVsEols37gzepZRofpjQ5CpkS','2017-12-14 19:46:00','2017-12-14 19:46:00'),(259,1,'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14','2017-12-14 20:36:43','2017-12-14 20:36:43'),(260,1,'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9','2017-12-15 07:13:52','2017-12-15 07:13:52'),(265,1,'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v','2017-12-15 23:56:34','2017-12-15 23:56:34'),(269,1,'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h','2017-12-16 00:27:26','2017-12-16 00:27:26'),(270,1,'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP','2017-12-16 00:40:12','2017-12-16 00:40:12'),(271,1,'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL','2017-12-16 02:57:23','2017-12-16 02:57:23'),(272,1,'5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K','2017-12-16 08:08:53','2017-12-16 08:08:53'),(282,1,'EUtWgeynbqabsviLDajTiXg6az4xEx4S','2017-12-16 11:25:51','2017-12-16 11:25:51'),(283,1,'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj','2017-12-16 20:33:48','2017-12-16 20:33:48'),(284,1,'958RICNQ5SWqdtnNopOEAQEGjy71OLrP','2017-12-17 07:52:39','2017-12-17 07:52:39'),(286,1,'5wQF5syYD14KXWyo2G0TdOpFgPvDwWML','2017-12-17 19:52:04','2017-12-17 19:52:04'),(287,1,'57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7','2017-12-25 19:27:36','2017-12-25 19:27:36'),(288,1,'pSNdXiePmuervyNG25HffYLqSY4CqCNV','2017-12-25 21:29:41','2017-12-25 21:29:41'),(289,1,'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A','2017-12-25 21:47:02','2017-12-25 21:47:02'),(290,1,'loABizfP1dl9zchCj2681qVIsF3OKrJ3','2017-12-27 10:38:20','2017-12-27 10:38:20'),(291,1,'6oNxIkIquNcQIOEPZnb9gd69OiMONpDD','2017-12-27 10:45:14','2017-12-27 10:45:14'),(292,1,'1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ','2017-12-27 19:13:01','2017-12-27 19:13:01'),(293,1,'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu','2017-12-27 19:25:12','2017-12-27 19:25:12'),(294,1,'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS','2017-12-27 22:32:12','2017-12-27 22:32:12'),(295,1,'5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux','2017-12-28 01:38:51','2017-12-28 01:38:51'),(296,1,'6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g','2017-12-29 02:09:33','2017-12-29 02:09:33'),(297,1,'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV','2017-12-29 05:40:48','2017-12-29 05:40:48'),(298,1,'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB','2018-01-01 19:20:46','2018-01-01 19:20:46'),(299,1,'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o','2018-01-01 19:42:39','2018-01-01 19:42:39'),(300,1,'TMAKb6m8MTahrN1lFJTIoni9vymizoPX','2018-01-01 22:34:23','2018-01-01 22:34:23'),(301,1,'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr','2018-01-02 00:59:34','2018-01-02 00:59:34'),(302,1,'mP3Z9KVER7893IYjcGERZFXKDhm7biAm','2018-01-02 18:30:12','2018-01-02 18:30:12'),(303,1,'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy','2018-01-03 00:41:50','2018-01-03 00:41:50'),(304,1,'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW','2018-01-03 05:04:01','2018-01-03 05:04:01'),(305,1,'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267','2018-01-03 09:50:30','2018-01-03 09:50:30'),(308,1,'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz','2018-01-03 10:32:13','2018-01-03 10:32:13'),(309,1,'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC','2018-01-03 19:35:54','2018-01-03 19:35:54'),(310,1,'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF','2018-01-04 00:00:04','2018-01-04 00:00:04'),(311,1,'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp','2018-01-04 07:50:26','2018-01-04 07:50:26'),(312,1,'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD','2018-01-04 18:27:00','2018-01-04 18:27:00'),(313,1,'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H','2018-01-05 05:03:20','2018-01-05 05:03:20'),(314,1,'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju','2018-01-05 07:13:15','2018-01-05 07:13:15'),(315,1,'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP','2018-01-06 03:08:10','2018-01-06 03:08:10'),(316,1,'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan','2018-01-06 12:28:22','2018-01-06 12:28:22'),(317,1,'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h','2018-01-06 22:56:38','2018-01-06 22:56:38'),(318,1,'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV','2018-01-07 04:20:27','2018-01-07 04:20:27'),(319,1,'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4','2018-01-07 07:12:26','2018-01-07 07:12:26'),(320,1,'TSocJysjRMp42L96vEg02rwZBiEUKyyN','2018-01-07 09:18:55','2018-01-07 09:18:55'),(321,1,'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg','2018-01-07 19:37:24','2018-01-07 19:37:24'),(322,1,'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y','2018-01-08 02:28:24','2018-01-08 02:28:24'),(323,1,'8CEZcoGrealxWIzhXRxoDIGmPieyZkGP','2018-01-08 04:07:45','2018-01-08 04:07:45'),(324,1,'9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL','2018-01-08 08:56:34','2018-01-08 08:56:34'),(325,1,'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67','2018-01-08 10:14:35','2018-01-08 10:14:35'),(327,1,'loNG0asl3Sj6zCitYw1n692cZ5AWL72j','2018-01-08 23:13:14','2018-01-08 23:13:14'),(328,1,'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1','2018-01-08 23:20:42','2018-01-08 23:20:42'),(329,1,'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh','2018-01-09 01:22:36','2018-01-09 01:22:36'),(330,1,'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl','2018-01-09 11:51:15','2018-01-09 11:51:15'),(331,1,'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp','2018-01-09 20:29:19','2018-01-09 20:29:19'),(332,1,'u8Sws2cOYM59AjPh3LDqpzGfy6EyIPSC','2018-01-10 04:24:11','2018-01-10 04:24:11'),(333,1,'94nGbvzGk3VAXe4KivjwJ461e9DNjTrF','2018-01-10 04:27:44','2018-01-10 04:27:44'),(334,1,'wnBYBOVVrFwe2UC3sFpr743eqWdoePdj','2018-01-11 08:26:05','2018-01-11 08:26:05'),(335,1,'PXeJICZxBqfI2SMFdpggV3IMDJXu4ICH','2018-01-14 05:59:00','2018-01-14 05:59:00'),(336,1,'tQmbzwqtlNOUhmVBd27kJliiN8gCG5vq','2018-01-14 05:59:21','2018-01-14 05:59:21'),(337,1,'kdGobmZaQA9j9eEBrNpcNYEHmQxnhh3u','2018-01-14 06:19:14','2018-01-14 06:19:14'),(338,1,'E3BC47sHKa9A0iD3bI7UObLY3hE5sRkE','2018-01-14 09:11:59','2018-01-14 09:11:59'),(339,1,'JgsIzzzOyrSbY3CRiPSEJo87Lfo18qpB','2018-01-14 23:43:27','2018-01-14 23:43:27'),(340,1,'RA4cHX8X6dvE7kwfBXzcyGCAZL97Tx6Q','2018-01-15 11:44:01','2018-01-15 11:44:01'),(341,1,'dZMrtzjeb82Hizn0b7GLRgt9ORAmZ6i0','2018-01-16 04:40:01','2018-01-16 04:40:01'),(342,1,'i5J9OKzFOF3urPxmHRFJ9X6w3xxgt1qQ','2018-01-17 19:23:53','2018-01-17 19:23:53'),(343,1,'7OX7sRZxS3nGAAzl1wVgEDZU3IaZhclu','2018-01-17 23:53:30','2018-01-17 23:53:30'),(344,1,'M3R2j0Afrz4yVI8xx4hQ6YpmYAsvrIBe','2018-01-18 03:30:55','2018-01-18 03:30:55'),(345,1,'r55OQqD0Q9MytGbBFx86J93jiHbxuOZB','2018-01-18 08:55:33','2018-01-18 08:55:33'),(346,1,'5DbaavVIEZo8zmsi90dIC2GJarHp6Cjw','2018-01-18 08:59:02','2018-01-18 08:59:02'),(347,1,'jLUQxFVvRf1dPrIqkbIOCdvrpGXejfKw','2018-01-18 21:44:22','2018-01-18 21:44:22'),(348,1,'XiAxHUrdrgfLtV5mTyLJrahAjOJnPoie','2018-01-18 23:00:44','2018-01-18 23:00:44'),(349,1,'YGZKZA6av6Bg3zTd3QvrD4th2Xvcj1rB','2018-01-31 10:52:46','2018-01-31 10:52:46'),(350,1,'v95lgpEPmk1ty6oVpoXo6yQwObov9pqi','2018-02-22 00:44:19','2018-02-22 00:44:19'),(351,1,'FNWPwTCC3vzWKzgETu8FFLp2u0IC34F7','2018-02-22 00:44:19','2018-02-22 00:44:19'),(352,1,'PiZbnZMVev5ePGsjdBQ7vb7lwVzfNHcC','2018-02-22 00:46:02','2018-02-22 00:46:02'),(353,1,'znMG41fwjsJoAjijdfaHGOK9aSTR2ov1','2018-02-22 00:46:02','2018-02-22 00:46:02'),(354,1,'mazpAK1GQagyQuChDgfElWXBnur55vg9','2018-02-22 00:51:07','2018-02-22 00:51:07'),(355,1,'ZcuKBCUB1TgqFg079FOojePkonQP5BBc','2018-02-22 00:51:07','2018-02-22 00:51:07'),(356,2,'VVp6H6SC86xFm1fEQLZgWRKcnB78pT3o','2018-02-22 01:34:04','2018-02-22 01:34:04'),(358,1,'1VGDvrl4etW2Ugelb2dSiBnyjtwnfcE8','2018-02-22 01:54:47','2018-02-22 01:54:47'),(370,6,'9qQF9T55KfRVIAFOcUKwO8aqcKlLT2XY','2018-02-22 02:53:57','2018-02-22 02:53:57'),(371,1,'Cmsf4axbRa2Tv2rHZTUUntWfSWmhwW3X','2018-02-23 02:08:20','2018-02-23 02:08:20'),(372,1,'RED4dKaeXgyyR7XSyNTjBljhS0upzBv6','2018-02-23 02:08:20','2018-02-23 02:08:20'),(373,1,'BYKAZP2Kn5oWnba0gyexmQHfhC0VPcpI','2018-02-23 02:18:07','2018-02-23 02:18:07'),(375,1,'dF7oFvZafEip7gdO6zZxWOGJCk0cm6Qk','2018-02-23 03:00:49','2018-02-23 03:00:49'),(376,1,'4iAEPJRSHuHNgOs7TFcPA1cIKqwmWbN1','2018-02-23 03:00:49','2018-02-23 03:00:49'),(377,1,'KX6tImQ6qHgxhh1qT6JgjjUCz2Rngnej','2018-02-23 11:40:04','2018-02-23 11:40:04'),(378,1,'CBOfApsiv2yw8NAbrF9K3sZFFDSiGap3','2018-02-23 11:40:04','2018-02-23 11:40:04'),(379,1,'dYbsT5NwLbOTbskyLDuqOtAvLvEp6p1r','2018-02-25 05:40:40','2018-02-25 05:40:40'),(380,1,'vN5l95ceC43opJ1slf4X16btTWDznVRl','2018-02-25 05:40:40','2018-02-25 05:40:40'),(381,1,'xtsAh9KR7SfFPdNn4HlLA5F69jnsx5nK','2018-02-26 01:00:19','2018-02-26 01:00:19'),(383,1,'X87ItTJ3RXIMJ8G0rkSAxL7CpQUYdXp8','2018-02-26 01:05:59','2018-02-26 01:05:59'),(384,1,'KGpdNGYpzW4V5fagBv6k2dvBTzp23nJp','2018-03-02 03:57:24','2018-03-02 03:57:24'),(385,1,'CwMQQoU7hcUEH5Ogfye8n4h3Zr3zmWW0','2018-03-02 03:57:24','2018-03-02 03:57:24'),(386,1,'zcHWbwcAUhgs912eaqb6BNvV40oDlgoy','2018-03-03 09:00:34','2018-03-03 09:00:34'),(388,1,'T7J1zRImQFtfzXzIleVLBHyDoFMsqdkl','2018-03-03 09:01:46','2018-03-03 09:01:46'),(390,1,'hC6PBwJ4Y0tfGzlIr15EMWiGr0aPPu8Z','2018-03-03 09:16:45','2018-03-03 09:16:45'),(391,1,'xRMMwCXIcUNmZBxL9oO6vF1MRHT7sqMi','2018-03-03 09:16:45','2018-03-03 09:16:45'),(392,1,'EDEPgeJH5UhFkpHSiuGbwvPyW2dnNY6Y','2018-03-03 09:26:46','2018-03-03 09:26:46'),(393,1,'8LtINAD6NceHSXqx5zYzwXmKcF2Oe2cC','2018-03-03 09:26:46','2018-03-03 09:26:46'),(394,1,'2g4099FYgyh7NRAmCkAT177knhJPoEV4','2018-03-03 09:30:48','2018-03-03 09:30:48'),(396,1,'PyXb9v4rW7Wz3jOjY2dke23FpfXe8fX1','2018-03-03 11:22:46','2018-03-03 11:22:46'),(398,1,'EZAErQIJmVgUkjg7IjQLFbTyvjqZiMSA','2018-03-03 11:32:10','2018-03-03 11:32:10'),(400,1,'pr3Q2kDeWiV3LCr16Bql3LOyhkAw514R','2018-03-03 11:41:59','2018-03-03 11:41:59'),(402,1,'8B3HK3EkZyDjEX6NjnFY2zb0MP8gh0mV','2018-03-03 11:42:04','2018-03-03 11:42:04'),(404,1,'IpSlmDQXTRmxN6QQ1F1G28vRyenjfVHX','2018-03-03 12:04:05','2018-03-03 12:04:05'),(406,1,'EB37kpqGPUb5knYsMKtbRTyhuldxDcTz','2018-03-04 10:14:22','2018-03-04 10:14:22'),(408,1,'kIZN8LYfaspXzCFnOVNvXhnXagRkPG4Q','2018-03-05 00:50:46','2018-03-05 00:50:46'),(409,1,'hwvBQP24sZsXpfqj2mfkbWX0Pxi362Ha','2018-03-05 00:50:46','2018-03-05 00:50:46'),(410,1,'FRYdeyK6WRRNwIoBcJdny4pCkVVBhsi3','2018-03-05 10:48:54','2018-03-05 10:48:54'),(411,1,'YdgRMWemfs5ViLc5p9euzAUybGAThyom','2018-03-05 10:48:54','2018-03-05 10:48:54'),(412,1,'8hM5XEG23qRKZRUtvdXmjhsnVxibIham','2018-03-08 00:23:21','2018-03-08 00:23:21'),(413,1,'MigOYE3Q10zH1P8xqCnb9iFqNan7ElRb','2018-03-08 00:23:21','2018-03-08 00:23:21'),(414,1,'SHhAkcwALGJEmOrvUX6kWz3fDG2qS5Mk','2018-03-08 03:34:14','2018-03-08 03:34:14'),(415,1,'B04k22uABtMsKESCIanj1hhgBtJVoyBH','2018-03-08 03:34:14','2018-03-08 03:34:14'),(416,1,'MmMThKve2xDD9yl7pEsUthHB8hLSMz1J','2018-03-08 03:40:43','2018-03-08 03:40:43'),(417,1,'c7o5qesZzqoaOqaVmiR91sTHot80YOIt','2018-03-08 03:40:43','2018-03-08 03:40:43'),(418,1,'Ip9zRur2Y8lqhmZ1S3MEmECeYlYaWm3T','2018-03-08 04:47:58','2018-03-08 04:47:58'),(419,1,'FrwAaFRVaKNXpFURnRsWRJWvqnfCOLrX','2018-03-08 04:47:58','2018-03-08 04:47:58'),(420,1,'BIVUXE11PdYqnmcaQJI6VNqqs0xptMRQ','2018-03-09 22:53:59','2018-03-09 22:53:59'),(422,1,'Kf1oZBT4BzML7YsRHuNoM9hPFIhZeOaz','2018-03-10 08:35:37','2018-03-10 08:35:37'),(424,1,'tDnnySVIN0eBznsX3L8md8tomSW92CKI','2018-03-10 10:48:00','2018-03-10 10:48:00'),(425,1,'GMzHsyKfCW5eeaXE6SK7t0aLjuCzpwAg','2018-03-18 08:09:47','2018-03-18 08:09:47'),(426,1,'fJxuthWntCJGZ8qz2GjkDaiUMQh5rwjS','2018-03-18 08:09:47','2018-03-18 08:09:47'),(427,1,'yh5hiBQomQPYIGfIp3Idus0ms2eT0la9','2018-03-18 08:09:48','2018-03-18 08:09:48'),(429,1,'OcqkbuIqH0QqWx0UudZmRc4LZ62pZLLZ','2018-03-18 08:12:36','2018-03-18 08:12:36'),(430,1,'oMuSRA4SA9CVOKCLEb7dN1KjXcOA4rih','2018-03-18 08:12:36','2018-03-18 08:12:36'),(433,1,'rXxMAVKLW9i6Nveoh4ptKIA7gJ3RrR27','2018-03-19 01:22:00','2018-03-19 01:22:00'),(434,1,'hJb9CRfRZJtKsCAR9fb3JHf1T9C7qfup','2018-03-19 01:38:16','2018-03-19 01:38:16'),(435,1,'kEuV4Sct4UhERbEyCfDqH7oD618f5Af2','2018-03-19 01:38:38','2018-03-19 01:38:38'),(436,1,'Pg1OZ6m2FD93m3Izj9sqLyW8mlGWS0UD','2018-03-19 01:38:44','2018-03-19 01:38:44'),(438,1,'xgie74Z3RyS9QxOE6K9GVTPxqjhwyOnR','2018-03-19 01:39:12','2018-03-19 01:39:12'),(440,1,'016kadD8AxvudJ5nEUcCXdfyMcadWOyT','2018-03-19 01:50:39','2018-03-19 01:50:39'),(441,1,'U3teSfPjtkuswiKqVDal6RLsTlOXNyYG','2018-03-19 01:52:39','2018-03-19 01:52:39'),(445,1,'ltL7yGyM3GsWqfPOwkhf1guIliQAfYWz','2018-03-19 02:33:35','2018-03-19 02:33:35'),(446,1,'ICu8Ju0H3kidnyHN7aM9gLmISdtHdmy8','2018-03-19 18:52:26','2018-03-19 18:52:26'),(447,1,'lR1O5hEZFLg0367rD5MHBhEa49jJOEIx','2018-03-20 12:12:47','2018-03-20 12:12:47'),(448,1,'2QLP7ZDRquRDwCqiQ4zMA4w0sA0wOfnu','2018-03-20 12:23:15','2018-03-20 12:23:15'),(450,1,'v2EOX0tct371wmxdaKMwWq2AEOdCHa0Y','2018-04-04 20:49:19','2018-04-04 20:49:19'),(451,1,'wRqfp4sY5asLMpcqLHfMgPusl8LnorFy','2018-05-02 02:56:24','2018-05-02 02:56:24');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
INSERT INTO `photo` VALUES (20,1,'le-thuc-vinh-gd.jpg',1,1,'2018-03-05 18:53:50','2018-03-05 18:53:50');
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilege`
--

DROP TABLE IF EXISTS `privilege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilege`
--

LOCK TABLES `privilege` WRITE;
/*!40000 ALTER TABLE `privilege` DISABLE KEYS */;
INSERT INTO `privilege` VALUES (1,'category-article-list','category-article','list',1,'2017-05-18 06:49:30','2017-05-19 17:26:33'),(2,'category-article-form','category-article','form',1,'2017-05-18 06:50:32','2017-11-26 16:43:37'),(3,'category-article-trash','category-article','trash',1,'2017-05-18 06:51:27','2017-11-26 16:43:37'),(4,'article-list','article','list',1,'2017-05-18 08:34:41','2017-05-19 18:11:35'),(5,'article-form','article','form',1,'2017-05-18 08:35:17','2017-05-19 17:24:54'),(16,'category-article-status','category-article','status',1,'2017-05-19 08:23:46','2017-11-26 16:43:37'),(17,'category-article-delete','category-article','delete',1,'2017-05-19 08:25:14','2017-11-26 16:43:37'),(18,'privilege-list','privilege','list',1,NULL,'2017-11-26 16:43:37'),(19,'privilege-form','privilege','form',1,NULL,'2017-11-26 16:43:37'),(24,'group-member-list','group-member','list',1,'2017-05-19 11:59:40','2017-11-26 16:43:37'),(25,'group-member-form','group-member','form',1,'2017-05-19 12:00:09','2017-11-26 16:43:37'),(33,'category-article-ordering','category-article','ordering',1,'2017-05-19 17:29:14','2017-11-26 16:43:37'),(43,'user-list','user','list',1,'2017-05-19 17:45:27','2017-11-26 16:43:37'),(44,'user-form','user','form',1,'2017-05-19 17:45:57','2017-11-26 16:43:37'),(49,'menu-type-list','menu-type','list',1,'2017-05-19 17:49:35','2017-11-26 16:43:37'),(50,'menu-type-form','menu-type','form',1,'2017-05-19 17:49:53','2017-11-26 16:43:37'),(55,'menu-list','menu','list',1,'2017-05-19 18:01:20','2017-11-26 16:43:37'),(56,'menu-form','menu','form',1,'2017-05-19 18:01:38','2017-11-26 16:43:37'),(57,'menu-trash','menu','trash',1,'2017-05-19 18:01:52','2017-11-26 16:43:37'),(58,'menu-delete','menu','delete',1,'2017-05-19 18:02:17','2017-11-26 16:43:37'),(59,'menu-status','menu','status',1,'2017-05-19 18:02:31','2017-11-26 16:43:37'),(60,'menu-ordering','menu','ordering',1,'2017-05-19 18:02:50','2017-11-26 16:43:37'),(61,'media-list','media','list',1,'2017-05-19 18:05:47','2017-11-26 16:43:37'),(62,'media-form','media','form',1,'2017-05-19 18:06:05','2017-11-26 16:43:37'),(63,'media-trash','media','trash',1,'2017-05-19 18:06:22','2017-11-26 16:43:37'),(67,'product-list','product','list',1,'2017-05-19 18:09:08','2017-11-26 16:43:37'),(68,'product-form','product','form',1,'2017-05-19 18:09:20','2017-11-26 16:43:37'),(79,'invoice-list','invoice','list',1,'2017-05-19 18:14:02','2017-11-26 16:43:37'),(80,'invoice-form','invoice','form',1,'2017-05-19 18:14:30','2017-11-26 16:43:37'),(85,'customer-list','customer','list',1,'2017-05-19 18:16:10','2017-11-26 16:43:37'),(86,'customer-form','customer','form',1,'2017-05-19 18:16:33','2017-11-26 16:43:37'),(103,'category-product-list','category-product','list',1,'2017-11-26 14:50:53','2017-11-26 14:50:53'),(104,'category-product-form','category-product','form',1,'2017-11-26 14:51:11','2017-11-26 14:51:11'),(105,'payment-method-list','payment-method','list',1,'2017-11-26 14:52:56','2017-11-26 14:52:56'),(106,'payment-method-form','payment-method','form',1,'2017-11-26 14:53:10','2017-11-26 14:53:10'),(107,'module-item-list','module-item','list',1,'2017-11-26 14:54:56','2017-11-26 14:54:56'),(108,'module-item-form','module-item','form',1,'2017-11-26 14:55:07','2017-11-26 14:55:07'),(109,'setting-system-list','setting-system','list',1,'2017-11-26 14:56:14','2017-11-26 14:56:31'),(110,'setting-system-form','setting-system','form',1,'2017-11-26 14:56:46','2017-11-26 14:56:46'),(111,'category-product-trash','category-product','trash',1,'2017-11-26 16:31:27','2017-11-26 16:31:45'),(112,'category-product-status','category-product','status',1,'2017-11-26 16:32:17','2017-11-26 16:32:17'),(113,'category-product-delete','category-product','delete',1,'2017-11-26 16:32:50','2017-11-26 16:32:50'),(114,'category-product-ordering','category-product','ordering',1,'2017-11-26 16:33:08','2017-11-26 16:33:08'),(115,'category-banner-list','category-banner','list',1,'2017-12-12 04:05:17','2017-12-12 04:05:17'),(116,'category-banner-form','category-banner','form',1,'2017-12-12 04:05:47','2017-12-12 04:05:47'),(117,'category-banner-trash','category-banner','trash',1,'2017-12-12 04:06:15','2017-12-12 04:06:15'),(118,'category-banner-status','category-banner','status',1,'2017-12-12 04:06:43','2017-12-12 04:06:43'),(119,'category-banner-delete','category-banner','delete',1,'2017-12-12 04:07:11','2017-12-12 04:08:01'),(120,'category-banner-ordering','category-banner','ordering',1,'2017-12-12 04:07:32','2017-12-12 04:08:01'),(121,'banner-list','banner','list',1,'2017-12-12 07:41:46','2017-12-12 07:41:46'),(122,'banner-form','banner','form',1,'2017-12-12 07:41:56','2017-12-12 07:41:56'),(123,'page-list','page','list',1,'2017-12-13 18:10:13','2017-12-13 18:10:13'),(124,'page-form','page','form',1,'2017-12-13 18:10:24','2017-12-13 18:10:24'),(125,'project-list','project','list',1,'2018-01-04 09:45:36','2018-01-04 09:45:36'),(126,'project-form','project','form',1,'2018-01-04 09:45:49','2018-01-04 09:45:49'),(127,'project-article-list','project-article','list',1,'2018-01-04 15:21:53','2018-01-04 15:21:53'),(128,'project-article-form','project-article','form',1,'2018-01-04 15:22:08','2018-01-04 15:22:08'),(129,'supporter-list','supporter','list',1,'2018-01-07 17:18:23','2018-01-07 17:18:23'),(130,'supporter-form','supporter','form',1,'2018-01-07 17:18:39','2018-01-07 17:18:39'),(131,'organization-list','organization','list',1,'2018-01-08 04:32:03','2018-01-08 04:32:03'),(132,'organization-form','organization','form',1,'2018-01-08 04:32:17','2018-01-08 04:32:17'),(133,'album-list','album','list',1,'2018-01-08 15:57:00','2018-01-08 15:57:00'),(134,'album-form','album','form',1,'2018-01-08 15:57:10','2018-01-08 15:57:10'),(135,'photo-list','photo','list',1,'2018-01-08 18:07:30','2018-01-08 18:07:30'),(136,'photo-form','photo','form',1,'2018-01-08 18:07:39','2018-01-08 18:07:39'),(137,'category-video-list','category-video','list',1,'2018-01-09 09:54:53','2018-01-09 09:54:53'),(138,'category-video-form','category-video','form',1,'2018-01-09 09:55:06','2018-01-09 09:55:06'),(139,'video-list','video','list',1,'2018-01-09 09:55:16','2018-01-09 09:55:16'),(140,'video-form','video','form',1,'2018-01-09 09:55:24','2018-01-09 09:55:24'),(141,'donation-list','donation','list',1,'2018-03-19 05:56:00','2018-03-19 05:56:00'),(142,'donation-form','donation','form',1,'2018-03-19 05:56:10','2018-03-19 05:56:10');
/*!40000 ALTER TABLE `privilege` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (10,'Đào tạo nghề miễn phí cho người khuyết tật','dao-tao-nghe-mien-phi-cho-nguoi-khuyet-tat','đào tạo nghề cho người khuyết tật','Với mục đích giúp đỡ các bạn khuyết tật có thêm cơ hội nghề nghiệp mới cho bản thân, Trung tâm Tiếp Lửa liên tục tổ chức các khóa đào tạo nghề miễn phí dành cho người khuyết tật (NKT).','dao-tao-nghe-mien-phi-nkt-686224389.jpg',376,'<p style=\"text-align:center\"><strong>BẢNG DỰ TR&Ugrave; KINH PH&Iacute; Đ&Agrave;O TẠO NGHỀ CHO 10 HỌC VI&Ecirc;N&nbsp;</strong></p>\r\n\r\n<p style=\"text-align:center\"><strong>Thời gian đ&agrave;o tạo kho&aacute; học 6 th&aacute;ng</strong></p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p><strong>Đơn vị t&iacute;nh: ng&agrave;n đồng</strong></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>Hạng mục</strong></td>\r\n			<td><strong>ĐVT</strong></td>\r\n			<td><strong>Số lượng</strong></td>\r\n			<td><strong>Đơn gi&aacute;</strong></td>\r\n			<td><strong>Th&agrave;nh ti&ecirc;n</strong></td>\r\n			<td><strong>Ghi ch&uacute;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"7\"><strong>I. Trang thiết bị ban đầu</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>M&aacute;y t&iacute;nh b&agrave;n phục vụ học tập</td>\r\n			<td>Bộ</td>\r\n			<td>10</td>\r\n			<td>4.500.000</td>\r\n			<td style=\"text-align:right\">45.000.000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>B&agrave;n ghế</td>\r\n			<td>Bộ</td>\r\n			<td>4</td>\r\n			<td>1.000.000</td>\r\n			<td style=\"text-align:right\">4.000.000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>Thu&ecirc; mặt bằng</td>\r\n			<td>Th&aacute;ng</td>\r\n			<td>6</td>\r\n			<td>5.000.000</td>\r\n			<td>30.000.000</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"7\"><strong>II. Chi ph&iacute; đ&agrave;o tạo cho 10 học vi&ecirc;n/ năm</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>1.</td>\r\n			<td>Chi ph&iacute; sinh hoạt ăn uống</td>\r\n			<td>người</td>\r\n			<td>10</td>\r\n			<td>6.000.000</td>\r\n			<td>60.000.000</td>\r\n			<td>Phụ thu học vi&ecirc;n</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2.</td>\r\n			<td>Học ph&iacute;</td>\r\n			<td>kho&aacute;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n			<td>Miễn ph&iacute;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>','Với mục đích giúp đỡ các bạn khuyết tật có điều kiện tiếp cận với nghề SEO và có thêm cơ hội nghề nghiệp mới cho bản thân, Trung tâm liên tục tổ chức các khóa học SEO miễn phí dành cho người khuyết tật  (NKT). Khóa học được tổ chức với mong muốn giúp các bạn NKT có được nền tảng kiến thức cơ bản về SEO và có khả năng tự SEO website lên TOP Google.','<p>I. D&agrave;nh cho học vi&ecirc;n</p>\r\n\r\n<p>1. <strong>Th&ocirc;ng b&aacute;o tuyển sinh</strong>:</p>\r\n\r\n<p>Trung t&acirc;m sẽ li&ecirc;n tục th&ocirc;ng b&aacute;o tuyển sinh tr&ecirc;n website www.tieplua.info.</p>\r\n\r\n<p><strong>2. Đối tượng x&eacute;t tuyển:</strong></p>\r\n\r\n<p>L&agrave; người khuyết tật vận động; tự sinh hoạt vệ sinh c&aacute; nh&acirc;n được; Tr&iacute; &oacute;c b&igrave;nh thường, Kh&ocirc;ng run tay, run ch&acirc;n; Tr&igrave;nh độ văn h&oacute;a tối thiểu l&agrave; Trung học cơ sở; độ tuổi từ 16-35&nbsp;tuổi.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Y&ecirc;u cầu hồ sơ gồm c&oacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>Đơn xin học nghề theo mẫu của trung t&acirc;m hoặc thư viết tay (giới thiệu về bản th&acirc;n v&agrave; n&oacute;i r&otilde; về nguyện vọng xin học nghề);</li>\r\n	<li>Sơ yếu l&yacute; lịch c&oacute; x&aacute;c nhận của địa phương nơi cư tr&uacute;;</li>\r\n	<li>Bản photo chứng minh nh&acirc;n d&acirc;n (c&ocirc;ng chứng);</li>\r\n	<li>Giấy kh&aacute;m sức khỏe (c&oacute; x&aacute;c nhận t&igrave;nh trạng khuyết tật của bệnh vi&ecirc;n );</li>\r\n	<li>02 ảnh ch&acirc;n dung (4x6);</li>\r\n	<li>01 ảnh chụp to&agrave;n th&acirc;n (10x15);</li>\r\n	<li>Giấy cam kết (khi được nhập học) v&agrave; giấy x&aacute;c nhận l&agrave; hộ ngh&egrave;o (nếu c&oacute;).</li>\r\n</ul>\r\n\r\n<p><strong>Học ph&iacute;:</strong> Miễn 100% Học Ph&iacute; ( Trị gi&aacute; kho&aacute; học 15.000.000 vnd)</p>\r\n\r\n<p><strong>Chi ph&iacute; sinh hoạt: </strong></p>\r\n\r\n<ul>\r\n	<li>Tiền nh&agrave;: 500.000/ th&aacute;ng * 6 th&aacute;ng = 3.000.000 vnd</li>\r\n	<li>Tiền sinh hoạt ăn uống: 700.000/ th&aacute;ng * 6 th&aacute;ng = 4.200.000 vnd</li>\r\n	<li>Tổng mức ph&iacute;: 7.200.000 vnd. Sẽ được hỗ trợ khi c&oacute; mạnh thường quận gi&uacute;p đỡ. Hoặc c&oacute; giấy chứng nhận hộ ngh&egrave;o, trung t&acirc;m sẽ hỗ trợ khoản chi ph&iacute; n&agrave;y.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>Nộp hồ sơ: </strong>Th&iacute; sinh gửi hồ sơ qua đường bưu điện theo địa chỉ trong th&ocirc;ng b&aacute;o tuyển sinh (Hồ sơ kh&ocirc;ng ho&agrave;n lại).</p>\r\n\r\n<p><strong>Phỏng vấn:</strong> Khi nhận được hồ sơ, Trung t&acirc;m sẽ li&ecirc;n lạc với th&iacute; sinh để phỏng vấn (trực tiếp hoặc qua điện thoại) để tư vấn về c&aacute;c kh&oacute;a học, định hướng nghề nghiệp v&agrave; trả lời c&aacute;c thắc mắc.</p>\r\n\r\n<p><strong>Nhập học:</strong> Nếu tr&uacute;ng tuyển, học vi&ecirc;n sẽ được th&ocirc;ng b&aacute;o thời gian nhập học trước 10 ng&agrave;y.</p>','<p>​Kế hoạch tổ chức kho&aacute; đ&agrave;o tạo nghề miễn ph&iacute;</p>','<p>Qu&yacute; vị &acirc;n nh&acirc;n c&oacute; thể t&agrave;i trợ bằng c&aacute;c h&igrave;nh thức:</p>\r\n\r\n<p>1. Lan toả, giới thiệu dự &aacute;n n&agrave;y đến c&aacute;c đối tượng l&agrave; người khuyết tật, thanh thiếu ni&ecirc;n, trẻ em cơ nhở</p>\r\n\r\n<p>2. Nhận đỡ đầu, t&agrave;i trợ học bổng cho đối tượng m&agrave; qu&yacute; &acirc;n nh&acirc;n muốn gi&uacute;p đỡ.</p>\r\n\r\n<p>3. Hỗ trợ tiền mặt, hiện vật nhằm gi&uacute;p c&aacute;c học vi&ecirc;n c&oacute; m&ocirc;i trường học tập tốt hơn.</p>\r\n\r\n<p>4. Tham gia hỗ trợ giảng dạy, trợ giảng. C&aacute;c kiến thức chuy&ecirc;n m&ocirc;n ph&ugrave; hợp với kho&aacute; đ&agrave;o tạo,</p>\r\n\r\n<p>5. Tạo m&ocirc;i trường l&agrave;m việc cho người khuyết tật, sau khi học nghề tại trung t&acirc;m Tiếp Lửa.</p>\r\n\r\n<p>&nbsp;</p>',1,1,'2018-01-04 18:34:30','2018-05-05 06:22:47');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_article`
--

DROP TABLE IF EXISTS `project_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
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
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_article`
--

LOCK TABLES `project_article` WRITE;
/*!40000 ALTER TABLE `project_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_member`
--

DROP TABLE IF EXISTS `project_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_member`
--

LOCK TABLES `project_member` WRITE;
/*!40000 ALTER TABLE `project_member` DISABLE KEYS */;
INSERT INTO `project_member` VALUES (1,10,4,'2018-01-07 14:09:20','2018-01-07 14:09:20'),(2,10,7,'2018-02-22 09:29:09','2018-02-22 09:29:09'),(3,10,3,'2018-02-22 09:30:55','2018-02-22 09:30:55'),(6,10,5,'2018-02-22 09:38:13','2018-02-22 09:38:13'),(8,10,6,'2018-02-22 09:53:57','2018-02-22 09:53:57'),(9,10,1,'2018-05-02 12:17:17','2018-05-02 12:17:17'),(10,10,1,'2018-05-02 12:17:23','2018-05-02 12:17:23'),(11,10,1,'2018-05-02 12:18:03','2018-05-02 12:18:03');
/*!40000 ALTER TABLE `project_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `logo_frontend` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting_system`
--

LOCK TABLES `setting_system` WRITE;
/*!40000 ALTER TABLE `setting_system` DISABLE KEYS */;
INSERT INTO `setting_system` VALUES (1,'Setting System','setting-system','Tiếp Lửa - Câu lạc bộ người khuyết tật sài gòn','người khuyết tật, tàn tật, việc làm người khuyết tật','Câu lạc bộ Tiếp Lửa chính là nơi chan hòa đồng cảm, nơi có những hỗ trợ hợp lý chắp thêm đôi cánh sáng tạo giúp người khuyết tật vượt qua những khiếm khuyết bản thân','Tiếp lửa','Tiếp lửa [tieplua.net@gmail.com]','yrwmPGpDFbHGPnbCxy-s-JAF-hgZPtvJ2ps-5EgF9zk','UA-115497602-1','logo.png','favicon.ico','[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"6\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"16\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"250\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"trietnk01@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Câu Lạc Bộ Tiếp Lửa\"},{\"field_name\":\"Địa chỉ\",\"field_code\":\"address\",\"field_value\":\"35/6 Bùi Quang Là,  Phường 12, Quận Gò Vấp HCM\"},{\"field_name\":\"Telephone\",\"field_code\":\"telephone\",\"field_value\":\"0949.027.720\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/tttieplua\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"#\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"#\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"#\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"#\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"#\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/place/35+B%C3%B9i+Quang+L%C3%A0,+ph%C6%B0%E1%BB%9Dng+12,+G%C3%B2+V%E1%BA%A5p,+H%E1%BB%93+Ch%C3%AD+Minh/@10.8356451,106.6361182,17z/data=!3m1!4b1!4m5!3m4!1s0x317529787c8fabbf:0x63001628079b32c3!8m2!3d10.8356451!4d106.6383069\"}]',1,1,'2017-12-03 07:45:35','2018-05-02 10:05:54');
/*!40000 ALTER TABLE `setting_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporter`
--

DROP TABLE IF EXISTS `supporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `donation_id` int(11) DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporter`
--

LOCK TABLES `supporter` WRITE;
/*!40000 ALTER TABLE `supporter` DISABLE KEYS */;
INSERT INTO `supporter` VALUES (1,'Huỳnh Vũ',1,500000,'Ủng hộ thông qua khoá học Seo',2,2,1,'2018-01-07 17:32:50','2018-03-19 08:10:45'),(2,'Lê Thúc Vinh',1,5000000,'Nộp quỹ Câu lạc bộ',2,1,1,'2018-03-16 05:19:56','2018-03-19 08:06:23'),(3,'Trần Thuý Nga',1,1000000,'',1,1,1,'2018-05-02 11:20:16','2018-05-02 11:20:16');
/*!40000 ALTER TABLE `supporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=494 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,NULL,'global',NULL,'2017-11-12 07:00:10','2017-11-12 07:00:10'),(2,NULL,'ip','127.0.0.1','2017-11-12 07:00:10','2017-11-12 07:00:10'),(3,NULL,'global',NULL,'2017-11-12 07:00:22','2017-11-12 07:00:22'),(4,NULL,'ip','127.0.0.1','2017-11-12 07:00:22','2017-11-12 07:00:22'),(5,NULL,'global',NULL,'2017-11-12 07:00:36','2017-11-12 07:00:36'),(6,NULL,'ip','127.0.0.1','2017-11-12 07:00:36','2017-11-12 07:00:36'),(7,NULL,'global',NULL,'2017-11-12 07:05:02','2017-11-12 07:05:02'),(8,NULL,'ip','127.0.0.1','2017-11-12 07:05:02','2017-11-12 07:05:02'),(9,NULL,'global',NULL,'2017-11-12 07:30:11','2017-11-12 07:30:11'),(10,NULL,'ip','127.0.0.1','2017-11-12 07:30:11','2017-11-12 07:30:11'),(11,NULL,'global',NULL,'2017-11-12 07:32:49','2017-11-12 07:32:49'),(12,NULL,'ip','127.0.0.1','2017-11-12 07:32:49','2017-11-12 07:32:49'),(13,NULL,'global',NULL,'2017-11-12 07:39:23','2017-11-12 07:39:23'),(14,NULL,'ip','127.0.0.1','2017-11-12 07:39:23','2017-11-12 07:39:23'),(15,NULL,'global',NULL,'2017-11-12 07:55:42','2017-11-12 07:55:42'),(16,NULL,'ip','127.0.0.1','2017-11-12 07:55:42','2017-11-12 07:55:42'),(17,NULL,'global',NULL,'2017-11-12 07:59:33','2017-11-12 07:59:33'),(18,NULL,'ip','127.0.0.1','2017-11-12 07:59:33','2017-11-12 07:59:33'),(19,NULL,'global',NULL,'2017-11-12 08:01:13','2017-11-12 08:01:13'),(20,NULL,'ip','127.0.0.1','2017-11-12 08:01:13','2017-11-12 08:01:13'),(21,NULL,'global',NULL,'2017-11-12 08:01:34','2017-11-12 08:01:34'),(22,NULL,'ip','127.0.0.1','2017-11-12 08:01:34','2017-11-12 08:01:34'),(23,NULL,'global',NULL,'2017-11-12 08:01:41','2017-11-12 08:01:41'),(24,NULL,'ip','127.0.0.1','2017-11-12 08:01:41','2017-11-12 08:01:41'),(25,NULL,'global',NULL,'2017-11-12 08:02:05','2017-11-12 08:02:05'),(26,NULL,'ip','127.0.0.1','2017-11-12 08:02:05','2017-11-12 08:02:05'),(27,NULL,'global',NULL,'2017-11-12 08:12:23','2017-11-12 08:12:23'),(28,NULL,'ip','127.0.0.1','2017-11-12 08:12:23','2017-11-12 08:12:23'),(29,NULL,'global',NULL,'2017-11-12 08:18:51','2017-11-12 08:18:51'),(30,NULL,'ip','127.0.0.1','2017-11-12 08:18:51','2017-11-12 08:18:51'),(31,NULL,'global',NULL,'2017-11-12 08:19:22','2017-11-12 08:19:22'),(32,NULL,'ip','127.0.0.1','2017-11-12 08:19:22','2017-11-12 08:19:22'),(33,NULL,'global',NULL,'2017-11-12 08:34:38','2017-11-12 08:34:38'),(34,NULL,'ip','127.0.0.1','2017-11-12 08:34:38','2017-11-12 08:34:38'),(35,NULL,'global',NULL,'2017-11-12 10:21:38','2017-11-12 10:21:38'),(36,NULL,'ip','127.0.0.1','2017-11-12 10:21:38','2017-11-12 10:21:38'),(37,NULL,'global',NULL,'2017-11-12 10:38:16','2017-11-12 10:38:16'),(38,NULL,'ip','127.0.0.1','2017-11-12 10:38:16','2017-11-12 10:38:16'),(39,1,'user',NULL,'2017-11-12 10:38:16','2017-11-12 10:38:16'),(40,NULL,'global',NULL,'2017-11-12 10:39:37','2017-11-12 10:39:37'),(41,NULL,'ip','127.0.0.1','2017-11-12 10:39:37','2017-11-12 10:39:37'),(42,1,'user',NULL,'2017-11-12 10:39:37','2017-11-12 10:39:37'),(43,NULL,'global',NULL,'2017-11-12 10:58:13','2017-11-12 10:58:13'),(44,NULL,'ip','127.0.0.1','2017-11-12 10:58:13','2017-11-12 10:58:13'),(45,NULL,'global',NULL,'2017-11-12 10:59:19','2017-11-12 10:59:19'),(46,NULL,'ip','127.0.0.1','2017-11-12 10:59:19','2017-11-12 10:59:19'),(47,4,'user',NULL,'2017-11-12 10:59:19','2017-11-12 10:59:19'),(48,NULL,'global',NULL,'2017-11-12 11:00:10','2017-11-12 11:00:10'),(49,NULL,'ip','127.0.0.1','2017-11-12 11:00:10','2017-11-12 11:00:10'),(50,4,'user',NULL,'2017-11-12 11:00:10','2017-11-12 11:00:10'),(51,NULL,'global',NULL,'2017-11-12 11:04:27','2017-11-12 11:04:27'),(52,NULL,'ip','127.0.0.1','2017-11-12 11:04:27','2017-11-12 11:04:27'),(53,4,'user',NULL,'2017-11-12 11:04:27','2017-11-12 11:04:27'),(54,NULL,'global',NULL,'2017-11-12 11:05:04','2017-11-12 11:05:04'),(55,NULL,'ip','127.0.0.1','2017-11-12 11:05:04','2017-11-12 11:05:04'),(56,1,'user',NULL,'2017-11-12 11:05:04','2017-11-12 11:05:04'),(57,NULL,'global',NULL,'2017-11-12 11:08:43','2017-11-12 11:08:43'),(58,NULL,'ip','127.0.0.1','2017-11-12 11:08:43','2017-11-12 11:08:43'),(59,1,'user',NULL,'2017-11-12 11:08:43','2017-11-12 11:08:43'),(60,NULL,'global',NULL,'2017-11-12 11:14:37','2017-11-12 11:14:37'),(61,NULL,'ip','127.0.0.1','2017-11-12 11:14:37','2017-11-12 11:14:37'),(62,1,'user',NULL,'2017-11-12 11:14:37','2017-11-12 11:14:37'),(63,NULL,'global',NULL,'2017-11-12 11:18:13','2017-11-12 11:18:13'),(64,NULL,'ip','127.0.0.1','2017-11-12 11:18:13','2017-11-12 11:18:13'),(65,4,'user',NULL,'2017-11-12 11:18:13','2017-11-12 11:18:13'),(66,NULL,'global',NULL,'2017-11-12 11:19:22','2017-11-12 11:19:22'),(67,NULL,'ip','127.0.0.1','2017-11-12 11:19:22','2017-11-12 11:19:22'),(68,4,'user',NULL,'2017-11-12 11:19:22','2017-11-12 11:19:22'),(69,NULL,'global',NULL,'2017-11-12 12:21:15','2017-11-12 12:21:15'),(70,NULL,'ip','127.0.0.1','2017-11-12 12:21:15','2017-11-12 12:21:15'),(71,1,'user',NULL,'2017-11-12 12:21:15','2017-11-12 12:21:15'),(72,NULL,'global',NULL,'2017-11-12 12:30:54','2017-11-12 12:30:54'),(73,NULL,'ip','127.0.0.1','2017-11-12 12:30:54','2017-11-12 12:30:54'),(74,1,'user',NULL,'2017-11-12 12:30:54','2017-11-12 12:30:54'),(75,NULL,'global',NULL,'2017-11-12 12:31:09','2017-11-12 12:31:09'),(76,NULL,'ip','127.0.0.1','2017-11-12 12:31:09','2017-11-12 12:31:09'),(77,1,'user',NULL,'2017-11-12 12:31:09','2017-11-12 12:31:09'),(78,NULL,'global',NULL,'2017-11-12 19:20:51','2017-11-12 19:20:51'),(79,NULL,'ip','127.0.0.1','2017-11-12 19:20:51','2017-11-12 19:20:51'),(80,NULL,'global',NULL,'2017-11-12 19:20:51','2017-11-12 19:20:51'),(81,NULL,'ip','127.0.0.1','2017-11-12 19:20:51','2017-11-12 19:20:51'),(82,NULL,'global',NULL,'2017-11-12 19:20:52','2017-11-12 19:20:52'),(83,NULL,'ip','127.0.0.1','2017-11-12 19:20:52','2017-11-12 19:20:52'),(84,NULL,'global',NULL,'2017-11-12 19:20:52','2017-11-12 19:20:52'),(85,NULL,'ip','127.0.0.1','2017-11-12 19:20:52','2017-11-12 19:20:52'),(86,NULL,'global',NULL,'2017-11-12 19:20:52','2017-11-12 19:20:52'),(87,NULL,'ip','127.0.0.1','2017-11-12 19:20:52','2017-11-12 19:20:52'),(88,NULL,'global',NULL,'2017-11-12 19:20:52','2017-11-12 19:20:52'),(89,NULL,'ip','127.0.0.1','2017-11-12 19:20:52','2017-11-12 19:20:52'),(90,NULL,'global',NULL,'2017-11-12 19:24:30','2017-11-12 19:24:30'),(91,NULL,'ip','127.0.0.1','2017-11-12 19:24:30','2017-11-12 19:24:30'),(92,NULL,'global',NULL,'2017-11-12 19:24:31','2017-11-12 19:24:31'),(93,NULL,'ip','127.0.0.1','2017-11-12 19:24:31','2017-11-12 19:24:31'),(94,NULL,'global',NULL,'2017-11-12 19:24:31','2017-11-12 19:24:31'),(95,NULL,'ip','127.0.0.1','2017-11-12 19:24:31','2017-11-12 19:24:31'),(96,NULL,'global',NULL,'2017-11-12 19:24:31','2017-11-12 19:24:31'),(97,NULL,'ip','127.0.0.1','2017-11-12 19:24:31','2017-11-12 19:24:31'),(98,NULL,'global',NULL,'2017-11-12 19:24:31','2017-11-12 19:24:31'),(99,NULL,'ip','127.0.0.1','2017-11-12 19:24:31','2017-11-12 19:24:31'),(100,NULL,'global',NULL,'2017-11-12 19:24:31','2017-11-12 19:24:31'),(101,NULL,'ip','127.0.0.1','2017-11-12 19:24:31','2017-11-12 19:24:31'),(102,NULL,'global',NULL,'2017-11-12 19:24:32','2017-11-12 19:24:32'),(103,NULL,'ip','127.0.0.1','2017-11-12 19:24:32','2017-11-12 19:24:32'),(104,NULL,'global',NULL,'2017-11-12 19:24:32','2017-11-12 19:24:32'),(105,NULL,'ip','127.0.0.1','2017-11-12 19:24:32','2017-11-12 19:24:32'),(106,NULL,'global',NULL,'2017-11-12 19:24:32','2017-11-12 19:24:32'),(107,NULL,'ip','127.0.0.1','2017-11-12 19:24:32','2017-11-12 19:24:32'),(108,NULL,'global',NULL,'2017-11-12 19:24:33','2017-11-12 19:24:33'),(109,NULL,'ip','127.0.0.1','2017-11-12 19:24:33','2017-11-12 19:24:33'),(110,NULL,'global',NULL,'2017-11-12 19:24:33','2017-11-12 19:24:33'),(111,NULL,'ip','127.0.0.1','2017-11-12 19:24:33','2017-11-12 19:24:33'),(112,NULL,'global',NULL,'2017-11-12 19:24:33','2017-11-12 19:24:33'),(113,NULL,'ip','127.0.0.1','2017-11-12 19:24:33','2017-11-12 19:24:33'),(114,NULL,'global',NULL,'2017-11-12 19:24:33','2017-11-12 19:24:33'),(115,NULL,'ip','127.0.0.1','2017-11-12 19:24:33','2017-11-12 19:24:33'),(116,NULL,'global',NULL,'2017-11-12 19:24:34','2017-11-12 19:24:34'),(117,NULL,'ip','127.0.0.1','2017-11-12 19:24:34','2017-11-12 19:24:34'),(118,NULL,'global',NULL,'2017-11-12 19:24:34','2017-11-12 19:24:34'),(119,NULL,'ip','127.0.0.1','2017-11-12 19:24:34','2017-11-12 19:24:34'),(120,NULL,'global',NULL,'2017-11-12 19:24:34','2017-11-12 19:24:34'),(121,NULL,'ip','127.0.0.1','2017-11-12 19:24:34','2017-11-12 19:24:34'),(122,NULL,'global',NULL,'2017-11-12 19:24:35','2017-11-12 19:24:35'),(123,NULL,'ip','127.0.0.1','2017-11-12 19:24:35','2017-11-12 19:24:35'),(124,NULL,'global',NULL,'2017-11-12 19:24:35','2017-11-12 19:24:35'),(125,NULL,'ip','127.0.0.1','2017-11-12 19:24:35','2017-11-12 19:24:35'),(126,NULL,'global',NULL,'2017-11-12 19:24:35','2017-11-12 19:24:35'),(127,NULL,'ip','127.0.0.1','2017-11-12 19:24:35','2017-11-12 19:24:35'),(128,NULL,'global',NULL,'2017-11-12 19:24:35','2017-11-12 19:24:35'),(129,NULL,'ip','127.0.0.1','2017-11-12 19:24:35','2017-11-12 19:24:35'),(130,NULL,'global',NULL,'2017-11-12 19:24:39','2017-11-12 19:24:39'),(131,NULL,'ip','127.0.0.1','2017-11-12 19:24:39','2017-11-12 19:24:39'),(132,NULL,'global',NULL,'2017-11-12 19:24:40','2017-11-12 19:24:40'),(133,NULL,'ip','127.0.0.1','2017-11-12 19:24:40','2017-11-12 19:24:40'),(134,NULL,'global',NULL,'2017-11-12 19:24:40','2017-11-12 19:24:40'),(135,NULL,'ip','127.0.0.1','2017-11-12 19:24:40','2017-11-12 19:24:40'),(136,NULL,'global',NULL,'2017-11-12 19:24:40','2017-11-12 19:24:40'),(137,NULL,'ip','127.0.0.1','2017-11-12 19:24:40','2017-11-12 19:24:40'),(138,NULL,'global',NULL,'2017-11-12 19:24:40','2017-11-12 19:24:40'),(139,NULL,'ip','127.0.0.1','2017-11-12 19:24:40','2017-11-12 19:24:40'),(140,NULL,'global',NULL,'2017-11-12 19:24:41','2017-11-12 19:24:41'),(141,NULL,'ip','127.0.0.1','2017-11-12 19:24:41','2017-11-12 19:24:41'),(142,NULL,'global',NULL,'2017-11-12 19:24:41','2017-11-12 19:24:41'),(143,NULL,'ip','127.0.0.1','2017-11-12 19:24:41','2017-11-12 19:24:41'),(144,NULL,'global',NULL,'2017-11-12 19:24:41','2017-11-12 19:24:41'),(145,NULL,'ip','127.0.0.1','2017-11-12 19:24:41','2017-11-12 19:24:41'),(146,NULL,'global',NULL,'2017-11-12 19:24:41','2017-11-12 19:24:41'),(147,NULL,'ip','127.0.0.1','2017-11-12 19:24:41','2017-11-12 19:24:41'),(148,NULL,'global',NULL,'2017-11-12 19:24:42','2017-11-12 19:24:42'),(149,NULL,'ip','127.0.0.1','2017-11-12 19:24:42','2017-11-12 19:24:42'),(150,NULL,'global',NULL,'2017-11-12 19:24:42','2017-11-12 19:24:42'),(151,NULL,'ip','127.0.0.1','2017-11-12 19:24:42','2017-11-12 19:24:42'),(152,NULL,'global',NULL,'2017-11-12 19:24:42','2017-11-12 19:24:42'),(153,NULL,'ip','127.0.0.1','2017-11-12 19:24:42','2017-11-12 19:24:42'),(154,NULL,'global',NULL,'2017-11-12 19:24:42','2017-11-12 19:24:42'),(155,NULL,'ip','127.0.0.1','2017-11-12 19:24:42','2017-11-12 19:24:42'),(156,NULL,'global',NULL,'2017-11-12 19:24:43','2017-11-12 19:24:43'),(157,NULL,'ip','127.0.0.1','2017-11-12 19:24:43','2017-11-12 19:24:43'),(158,NULL,'global',NULL,'2017-11-12 19:24:43','2017-11-12 19:24:43'),(159,NULL,'ip','127.0.0.1','2017-11-12 19:24:43','2017-11-12 19:24:43'),(160,NULL,'global',NULL,'2017-11-12 19:24:43','2017-11-12 19:24:43'),(161,NULL,'ip','127.0.0.1','2017-11-12 19:24:43','2017-11-12 19:24:43'),(162,NULL,'global',NULL,'2017-11-12 19:24:44','2017-11-12 19:24:44'),(163,NULL,'ip','127.0.0.1','2017-11-12 19:24:44','2017-11-12 19:24:44'),(164,NULL,'global',NULL,'2017-11-12 19:24:44','2017-11-12 19:24:44'),(165,NULL,'ip','127.0.0.1','2017-11-12 19:24:44','2017-11-12 19:24:44'),(166,NULL,'global',NULL,'2017-11-12 19:24:44','2017-11-12 19:24:44'),(167,NULL,'ip','127.0.0.1','2017-11-12 19:24:44','2017-11-12 19:24:44'),(168,NULL,'global',NULL,'2017-11-12 19:24:44','2017-11-12 19:24:44'),(169,NULL,'ip','127.0.0.1','2017-11-12 19:24:45','2017-11-12 19:24:45'),(170,NULL,'global',NULL,'2017-11-12 19:24:45','2017-11-12 19:24:45'),(171,NULL,'ip','127.0.0.1','2017-11-12 19:24:45','2017-11-12 19:24:45'),(172,NULL,'global',NULL,'2017-11-12 19:24:45','2017-11-12 19:24:45'),(173,NULL,'ip','127.0.0.1','2017-11-12 19:24:45','2017-11-12 19:24:45'),(174,NULL,'global',NULL,'2017-11-12 19:24:45','2017-11-12 19:24:45'),(175,NULL,'ip','127.0.0.1','2017-11-12 19:24:45','2017-11-12 19:24:45'),(176,NULL,'global',NULL,'2017-11-12 19:24:45','2017-11-12 19:24:45'),(177,NULL,'ip','127.0.0.1','2017-11-12 19:24:45','2017-11-12 19:24:45'),(178,NULL,'global',NULL,'2017-11-12 19:24:46','2017-11-12 19:24:46'),(179,NULL,'ip','127.0.0.1','2017-11-12 19:24:46','2017-11-12 19:24:46'),(180,NULL,'global',NULL,'2017-11-12 19:24:46','2017-11-12 19:24:46'),(181,NULL,'ip','127.0.0.1','2017-11-12 19:24:46','2017-11-12 19:24:46'),(182,NULL,'global',NULL,'2017-11-12 19:24:46','2017-11-12 19:24:46'),(183,NULL,'ip','127.0.0.1','2017-11-12 19:24:46','2017-11-12 19:24:46'),(184,NULL,'global',NULL,'2017-11-12 19:24:46','2017-11-12 19:24:46'),(185,NULL,'ip','127.0.0.1','2017-11-12 19:24:46','2017-11-12 19:24:46'),(186,NULL,'global',NULL,'2017-11-12 19:24:47','2017-11-12 19:24:47'),(187,NULL,'ip','127.0.0.1','2017-11-12 19:24:47','2017-11-12 19:24:47'),(188,NULL,'global',NULL,'2017-11-12 19:24:47','2017-11-12 19:24:47'),(189,NULL,'ip','127.0.0.1','2017-11-12 19:24:47','2017-11-12 19:24:47'),(190,NULL,'global',NULL,'2017-11-12 19:24:47','2017-11-12 19:24:47'),(191,NULL,'ip','127.0.0.1','2017-11-12 19:24:47','2017-11-12 19:24:47'),(192,NULL,'global',NULL,'2017-11-12 19:24:48','2017-11-12 19:24:48'),(193,NULL,'ip','127.0.0.1','2017-11-12 19:24:48','2017-11-12 19:24:48'),(194,NULL,'global',NULL,'2017-11-12 19:24:48','2017-11-12 19:24:48'),(195,NULL,'ip','127.0.0.1','2017-11-12 19:24:48','2017-11-12 19:24:48'),(196,NULL,'global',NULL,'2017-11-12 19:24:48','2017-11-12 19:24:48'),(197,NULL,'ip','127.0.0.1','2017-11-12 19:24:48','2017-11-12 19:24:48'),(198,NULL,'global',NULL,'2017-11-12 19:24:49','2017-11-12 19:24:49'),(199,NULL,'ip','127.0.0.1','2017-11-12 19:24:49','2017-11-12 19:24:49'),(200,NULL,'global',NULL,'2017-11-12 19:24:49','2017-11-12 19:24:49'),(201,NULL,'ip','127.0.0.1','2017-11-12 19:24:49','2017-11-12 19:24:49'),(202,NULL,'global',NULL,'2017-11-12 19:24:49','2017-11-12 19:24:49'),(203,NULL,'ip','127.0.0.1','2017-11-12 19:24:49','2017-11-12 19:24:49'),(204,NULL,'global',NULL,'2017-11-12 19:24:50','2017-11-12 19:24:50'),(205,NULL,'ip','127.0.0.1','2017-11-12 19:24:50','2017-11-12 19:24:50'),(206,NULL,'global',NULL,'2017-11-12 19:24:50','2017-11-12 19:24:50'),(207,NULL,'ip','127.0.0.1','2017-11-12 19:24:50','2017-11-12 19:24:50'),(208,NULL,'global',NULL,'2017-11-12 19:24:50','2017-11-12 19:24:50'),(209,NULL,'ip','127.0.0.1','2017-11-12 19:24:50','2017-11-12 19:24:50'),(210,NULL,'global',NULL,'2017-11-12 19:24:51','2017-11-12 19:24:51'),(211,NULL,'ip','127.0.0.1','2017-11-12 19:24:51','2017-11-12 19:24:51'),(212,NULL,'global',NULL,'2017-11-12 19:24:51','2017-11-12 19:24:51'),(213,NULL,'ip','127.0.0.1','2017-11-12 19:24:51','2017-11-12 19:24:51'),(214,NULL,'global',NULL,'2017-11-12 19:24:57','2017-11-12 19:24:57'),(215,NULL,'ip','127.0.0.1','2017-11-12 19:24:57','2017-11-12 19:24:57'),(216,NULL,'global',NULL,'2017-11-12 19:24:57','2017-11-12 19:24:57'),(217,NULL,'ip','127.0.0.1','2017-11-12 19:24:57','2017-11-12 19:24:57'),(218,NULL,'global',NULL,'2017-11-12 19:24:57','2017-11-12 19:24:57'),(219,NULL,'ip','127.0.0.1','2017-11-12 19:24:57','2017-11-12 19:24:57'),(220,NULL,'global',NULL,'2017-11-12 19:24:57','2017-11-12 19:24:57'),(221,NULL,'ip','127.0.0.1','2017-11-12 19:24:57','2017-11-12 19:24:57'),(222,NULL,'global',NULL,'2017-11-12 19:24:58','2017-11-12 19:24:58'),(223,NULL,'ip','127.0.0.1','2017-11-12 19:24:58','2017-11-12 19:24:58'),(224,NULL,'global',NULL,'2017-11-12 19:24:58','2017-11-12 19:24:58'),(225,NULL,'ip','127.0.0.1','2017-11-12 19:24:58','2017-11-12 19:24:58'),(226,NULL,'global',NULL,'2017-11-12 19:24:58','2017-11-12 19:24:58'),(227,NULL,'ip','127.0.0.1','2017-11-12 19:24:58','2017-11-12 19:24:58'),(228,NULL,'global',NULL,'2017-11-12 19:24:58','2017-11-12 19:24:58'),(229,NULL,'ip','127.0.0.1','2017-11-12 19:24:58','2017-11-12 19:24:58'),(230,NULL,'global',NULL,'2017-11-12 19:24:58','2017-11-12 19:24:58'),(231,NULL,'ip','127.0.0.1','2017-11-12 19:24:58','2017-11-12 19:24:58'),(232,NULL,'global',NULL,'2017-11-12 19:24:59','2017-11-12 19:24:59'),(233,NULL,'ip','127.0.0.1','2017-11-12 19:24:59','2017-11-12 19:24:59'),(234,NULL,'global',NULL,'2017-11-12 19:24:59','2017-11-12 19:24:59'),(235,NULL,'ip','127.0.0.1','2017-11-12 19:24:59','2017-11-12 19:24:59'),(236,NULL,'global',NULL,'2017-11-12 19:24:59','2017-11-12 19:24:59'),(237,NULL,'ip','127.0.0.1','2017-11-12 19:24:59','2017-11-12 19:24:59'),(238,NULL,'global',NULL,'2017-11-12 19:25:00','2017-11-12 19:25:00'),(239,NULL,'ip','127.0.0.1','2017-11-12 19:25:00','2017-11-12 19:25:00'),(240,NULL,'global',NULL,'2017-11-12 19:25:00','2017-11-12 19:25:00'),(241,NULL,'ip','127.0.0.1','2017-11-12 19:25:00','2017-11-12 19:25:00'),(242,NULL,'global',NULL,'2017-11-12 19:25:00','2017-11-12 19:25:00'),(243,NULL,'ip','127.0.0.1','2017-11-12 19:25:00','2017-11-12 19:25:00'),(244,NULL,'global',NULL,'2017-11-12 19:25:00','2017-11-12 19:25:00'),(245,NULL,'ip','127.0.0.1','2017-11-12 19:25:00','2017-11-12 19:25:00'),(246,NULL,'global',NULL,'2017-11-12 19:25:00','2017-11-12 19:25:00'),(247,NULL,'ip','127.0.0.1','2017-11-12 19:25:00','2017-11-12 19:25:00'),(248,NULL,'global',NULL,'2017-11-12 19:25:01','2017-11-12 19:25:01'),(249,NULL,'ip','127.0.0.1','2017-11-12 19:25:01','2017-11-12 19:25:01'),(250,NULL,'global',NULL,'2017-11-12 19:25:01','2017-11-12 19:25:01'),(251,NULL,'ip','127.0.0.1','2017-11-12 19:25:01','2017-11-12 19:25:01'),(252,NULL,'global',NULL,'2017-11-12 19:25:01','2017-11-12 19:25:01'),(253,NULL,'ip','127.0.0.1','2017-11-12 19:25:01','2017-11-12 19:25:01'),(254,NULL,'global',NULL,'2017-11-12 19:25:02','2017-11-12 19:25:02'),(255,NULL,'ip','127.0.0.1','2017-11-12 19:25:02','2017-11-12 19:25:02'),(256,NULL,'global',NULL,'2017-11-12 19:25:32','2017-11-12 19:25:32'),(257,NULL,'ip','127.0.0.1','2017-11-12 19:25:32','2017-11-12 19:25:32'),(258,NULL,'global',NULL,'2017-11-12 19:25:32','2017-11-12 19:25:32'),(259,NULL,'ip','127.0.0.1','2017-11-12 19:25:32','2017-11-12 19:25:32'),(260,NULL,'global',NULL,'2017-11-12 19:25:32','2017-11-12 19:25:32'),(261,NULL,'ip','127.0.0.1','2017-11-12 19:25:32','2017-11-12 19:25:32'),(262,NULL,'global',NULL,'2017-11-12 19:25:33','2017-11-12 19:25:33'),(263,NULL,'ip','127.0.0.1','2017-11-12 19:25:33','2017-11-12 19:25:33'),(264,NULL,'global',NULL,'2017-11-12 19:25:33','2017-11-12 19:25:33'),(265,NULL,'ip','127.0.0.1','2017-11-12 19:25:33','2017-11-12 19:25:33'),(266,NULL,'global',NULL,'2017-11-12 19:25:33','2017-11-12 19:25:33'),(267,NULL,'ip','127.0.0.1','2017-11-12 19:25:33','2017-11-12 19:25:33'),(268,NULL,'global',NULL,'2017-11-12 19:25:34','2017-11-12 19:25:34'),(269,NULL,'ip','127.0.0.1','2017-11-12 19:25:34','2017-11-12 19:25:34'),(270,NULL,'global',NULL,'2017-11-12 19:25:34','2017-11-12 19:25:34'),(271,NULL,'ip','127.0.0.1','2017-11-12 19:25:34','2017-11-12 19:25:34'),(272,NULL,'global',NULL,'2017-11-12 19:25:34','2017-11-12 19:25:34'),(273,NULL,'ip','127.0.0.1','2017-11-12 19:25:34','2017-11-12 19:25:34'),(274,NULL,'global',NULL,'2017-11-12 19:25:34','2017-11-12 19:25:34'),(275,NULL,'ip','127.0.0.1','2017-11-12 19:25:34','2017-11-12 19:25:34'),(276,NULL,'global',NULL,'2017-11-12 19:25:35','2017-11-12 19:25:35'),(277,NULL,'ip','127.0.0.1','2017-11-12 19:25:35','2017-11-12 19:25:35'),(278,NULL,'global',NULL,'2017-11-12 19:25:35','2017-11-12 19:25:35'),(279,NULL,'ip','127.0.0.1','2017-11-12 19:25:35','2017-11-12 19:25:35'),(280,NULL,'global',NULL,'2017-11-12 19:25:35','2017-11-12 19:25:35'),(281,NULL,'ip','127.0.0.1','2017-11-12 19:25:35','2017-11-12 19:25:35'),(282,NULL,'global',NULL,'2017-11-12 19:25:35','2017-11-12 19:25:35'),(283,NULL,'ip','127.0.0.1','2017-11-12 19:25:35','2017-11-12 19:25:35'),(284,NULL,'global',NULL,'2017-11-12 19:25:36','2017-11-12 19:25:36'),(285,NULL,'ip','127.0.0.1','2017-11-12 19:25:36','2017-11-12 19:25:36'),(286,NULL,'global',NULL,'2017-11-12 19:25:36','2017-11-12 19:25:36'),(287,NULL,'ip','127.0.0.1','2017-11-12 19:25:36','2017-11-12 19:25:36'),(288,NULL,'global',NULL,'2017-11-12 19:25:36','2017-11-12 19:25:36'),(289,NULL,'ip','127.0.0.1','2017-11-12 19:25:36','2017-11-12 19:25:36'),(290,NULL,'global',NULL,'2017-11-12 19:25:37','2017-11-12 19:25:37'),(291,NULL,'ip','127.0.0.1','2017-11-12 19:25:37','2017-11-12 19:25:37'),(292,NULL,'global',NULL,'2017-11-12 19:25:37','2017-11-12 19:25:37'),(293,NULL,'ip','127.0.0.1','2017-11-12 19:25:37','2017-11-12 19:25:37'),(294,NULL,'global',NULL,'2017-11-12 19:25:37','2017-11-12 19:25:37'),(295,NULL,'ip','127.0.0.1','2017-11-12 19:25:37','2017-11-12 19:25:37'),(296,NULL,'global',NULL,'2017-11-12 19:25:37','2017-11-12 19:25:37'),(297,NULL,'ip','127.0.0.1','2017-11-12 19:25:37','2017-11-12 19:25:37'),(298,NULL,'global',NULL,'2017-11-12 19:36:41','2017-11-12 19:36:41'),(299,NULL,'ip','127.0.0.1','2017-11-12 19:36:41','2017-11-12 19:36:41'),(300,4,'user',NULL,'2017-11-12 19:36:41','2017-11-12 19:36:41'),(301,NULL,'global',NULL,'2017-11-12 19:44:35','2017-11-12 19:44:35'),(302,NULL,'ip','127.0.0.1','2017-11-12 19:44:35','2017-11-12 19:44:35'),(303,1,'user',NULL,'2017-11-12 19:44:35','2017-11-12 19:44:35'),(304,NULL,'global',NULL,'2017-11-13 12:12:10','2017-11-13 12:12:10'),(305,NULL,'ip','127.0.0.1','2017-11-13 12:12:10','2017-11-13 12:12:10'),(306,1,'user',NULL,'2017-11-13 12:12:10','2017-11-13 12:12:10'),(307,NULL,'global',NULL,'2017-11-15 04:15:14','2017-11-15 04:15:14'),(308,NULL,'ip','127.0.0.1','2017-11-15 04:15:14','2017-11-15 04:15:14'),(309,NULL,'global',NULL,'2017-11-25 05:02:29','2017-11-25 05:02:29'),(310,NULL,'ip','127.0.0.1','2017-11-25 05:02:29','2017-11-25 05:02:29'),(311,1,'user',NULL,'2017-11-25 05:02:29','2017-11-25 05:02:29'),(312,NULL,'global',NULL,'2017-11-25 21:57:16','2017-11-25 21:57:16'),(313,NULL,'ip','127.0.0.1','2017-11-25 21:57:16','2017-11-25 21:57:16'),(314,6,'user',NULL,'2017-11-25 21:57:16','2017-11-25 21:57:16'),(315,NULL,'global',NULL,'2017-11-25 21:57:22','2017-11-25 21:57:22'),(316,NULL,'ip','127.0.0.1','2017-11-25 21:57:22','2017-11-25 21:57:22'),(317,6,'user',NULL,'2017-11-25 21:57:22','2017-11-25 21:57:22'),(318,NULL,'global',NULL,'2017-11-26 20:07:31','2017-11-26 20:07:31'),(319,NULL,'ip','127.0.0.1','2017-11-26 20:07:31','2017-11-26 20:07:31'),(320,1,'user',NULL,'2017-11-26 20:07:31','2017-11-26 20:07:31'),(321,NULL,'global',NULL,'2017-11-27 00:24:45','2017-11-27 00:24:45'),(322,NULL,'ip','127.0.0.1','2017-11-27 00:24:45','2017-11-27 00:24:45'),(323,1,'user',NULL,'2017-11-27 00:24:45','2017-11-27 00:24:45'),(324,NULL,'global',NULL,'2017-11-27 00:24:45','2017-11-27 00:24:45'),(325,NULL,'ip','127.0.0.1','2017-11-27 00:24:45','2017-11-27 00:24:45'),(326,1,'user',NULL,'2017-11-27 00:24:45','2017-11-27 00:24:45'),(327,NULL,'global',NULL,'2017-11-30 08:03:16','2017-11-30 08:03:16'),(328,NULL,'ip','127.0.0.1','2017-11-30 08:03:16','2017-11-30 08:03:16'),(329,1,'user',NULL,'2017-11-30 08:03:16','2017-11-30 08:03:16'),(330,NULL,'global',NULL,'2017-12-03 07:41:47','2017-12-03 07:41:47'),(331,NULL,'ip','127.0.0.1','2017-12-03 07:41:47','2017-12-03 07:41:47'),(332,1,'user',NULL,'2017-12-03 07:41:47','2017-12-03 07:41:47'),(333,NULL,'global',NULL,'2017-12-03 11:49:24','2017-12-03 11:49:24'),(334,NULL,'ip','127.0.0.1','2017-12-03 11:49:24','2017-12-03 11:49:24'),(335,NULL,'global',NULL,'2017-12-03 11:49:31','2017-12-03 11:49:31'),(336,NULL,'ip','127.0.0.1','2017-12-03 11:49:31','2017-12-03 11:49:31'),(337,NULL,'global',NULL,'2017-12-03 11:49:49','2017-12-03 11:49:49'),(338,NULL,'ip','127.0.0.1','2017-12-03 11:49:49','2017-12-03 11:49:49'),(339,NULL,'global',NULL,'2017-12-03 11:50:32','2017-12-03 11:50:32'),(340,NULL,'ip','127.0.0.1','2017-12-03 11:50:32','2017-12-03 11:50:32'),(341,NULL,'global',NULL,'2017-12-03 11:54:18','2017-12-03 11:54:18'),(342,NULL,'ip','127.0.0.1','2017-12-03 11:54:18','2017-12-03 11:54:18'),(343,NULL,'global',NULL,'2017-12-04 11:12:12','2017-12-04 11:12:12'),(344,NULL,'ip','127.0.0.1','2017-12-04 11:12:12','2017-12-04 11:12:12'),(345,1,'user',NULL,'2017-12-04 11:12:12','2017-12-04 11:12:12'),(346,NULL,'global',NULL,'2017-12-05 09:04:13','2017-12-05 09:04:13'),(347,NULL,'ip','127.0.0.1','2017-12-05 09:04:13','2017-12-05 09:04:13'),(348,1,'user',NULL,'2017-12-05 09:04:13','2017-12-05 09:04:13'),(349,NULL,'global',NULL,'2017-12-08 11:51:32','2017-12-08 11:51:32'),(350,NULL,'ip','127.0.0.1','2017-12-08 11:51:32','2017-12-08 11:51:32'),(351,1,'user',NULL,'2017-12-08 11:51:32','2017-12-08 11:51:32'),(352,NULL,'global',NULL,'2017-12-08 11:51:37','2017-12-08 11:51:37'),(353,NULL,'ip','127.0.0.1','2017-12-08 11:51:37','2017-12-08 11:51:37'),(354,1,'user',NULL,'2017-12-08 11:51:37','2017-12-08 11:51:37'),(355,NULL,'global',NULL,'2017-12-13 11:11:12','2017-12-13 11:11:12'),(356,NULL,'ip','127.0.0.1','2017-12-13 11:11:12','2017-12-13 11:11:12'),(357,1,'user',NULL,'2017-12-13 11:11:12','2017-12-13 11:11:12'),(358,NULL,'global',NULL,'2017-12-13 11:11:19','2017-12-13 11:11:19'),(359,NULL,'ip','127.0.0.1','2017-12-13 11:11:19','2017-12-13 11:11:19'),(360,1,'user',NULL,'2017-12-13 11:11:19','2017-12-13 11:11:19'),(361,NULL,'global',NULL,'2017-12-13 11:11:21','2017-12-13 11:11:21'),(362,NULL,'ip','127.0.0.1','2017-12-13 11:11:21','2017-12-13 11:11:21'),(363,1,'user',NULL,'2017-12-13 11:11:21','2017-12-13 11:11:21'),(364,NULL,'global',NULL,'2017-12-13 19:46:17','2017-12-13 19:46:17'),(365,NULL,'ip','127.0.0.1','2017-12-13 19:46:17','2017-12-13 19:46:17'),(366,1,'user',NULL,'2017-12-13 19:46:17','2017-12-13 19:46:17'),(367,NULL,'global',NULL,'2017-12-13 19:46:22','2017-12-13 19:46:22'),(368,NULL,'ip','127.0.0.1','2017-12-13 19:46:22','2017-12-13 19:46:22'),(369,1,'user',NULL,'2017-12-13 19:46:22','2017-12-13 19:46:22'),(370,NULL,'global',NULL,'2017-12-16 00:21:37','2017-12-16 00:21:37'),(371,NULL,'ip','127.0.0.1','2017-12-16 00:21:37','2017-12-16 00:21:37'),(372,1,'user',NULL,'2017-12-16 00:21:37','2017-12-16 00:21:37'),(373,NULL,'global',NULL,'2017-12-17 18:07:51','2017-12-17 18:07:51'),(374,NULL,'ip','127.0.0.1','2017-12-17 18:07:51','2017-12-17 18:07:51'),(375,1,'user',NULL,'2017-12-17 18:07:51','2017-12-17 18:07:51'),(376,NULL,'global',NULL,'2017-12-29 02:09:21','2017-12-29 02:09:21'),(377,NULL,'ip','127.0.0.1','2017-12-29 02:09:21','2017-12-29 02:09:21'),(378,1,'user',NULL,'2017-12-29 02:09:21','2017-12-29 02:09:21'),(379,NULL,'global',NULL,'2017-12-29 02:09:27','2017-12-29 02:09:27'),(380,NULL,'ip','127.0.0.1','2017-12-29 02:09:27','2017-12-29 02:09:27'),(381,1,'user',NULL,'2017-12-29 02:09:27','2017-12-29 02:09:27'),(382,NULL,'global',NULL,'2017-12-29 05:40:34','2017-12-29 05:40:34'),(383,NULL,'ip','127.0.0.1','2017-12-29 05:40:34','2017-12-29 05:40:34'),(384,1,'user',NULL,'2017-12-29 05:40:34','2017-12-29 05:40:34'),(385,NULL,'global',NULL,'2017-12-29 05:40:39','2017-12-29 05:40:39'),(386,NULL,'ip','127.0.0.1','2017-12-29 05:40:39','2017-12-29 05:40:39'),(387,1,'user',NULL,'2017-12-29 05:40:39','2017-12-29 05:40:39'),(388,NULL,'global',NULL,'2018-01-01 19:20:37','2018-01-01 19:20:37'),(389,NULL,'ip','127.0.0.1','2018-01-01 19:20:37','2018-01-01 19:20:37'),(390,1,'user',NULL,'2018-01-01 19:20:37','2018-01-01 19:20:37'),(391,NULL,'global',NULL,'2018-01-05 05:03:06','2018-01-05 05:03:06'),(392,NULL,'ip','127.0.0.1','2018-01-05 05:03:06','2018-01-05 05:03:06'),(393,1,'user',NULL,'2018-01-05 05:03:06','2018-01-05 05:03:06'),(394,NULL,'global',NULL,'2018-01-07 02:06:01','2018-01-07 02:06:01'),(395,NULL,'ip','127.0.0.1','2018-01-07 02:06:01','2018-01-07 02:06:01'),(396,NULL,'global',NULL,'2018-01-08 23:12:58','2018-01-08 23:12:58'),(397,NULL,'ip','127.0.0.1','2018-01-08 23:12:58','2018-01-08 23:12:58'),(398,NULL,'global',NULL,'2018-01-08 23:13:07','2018-01-08 23:13:07'),(399,NULL,'ip','127.0.0.1','2018-01-08 23:13:07','2018-01-08 23:13:07'),(400,NULL,'global',NULL,'2018-01-08 23:13:09','2018-01-08 23:13:09'),(401,NULL,'ip','127.0.0.1','2018-01-08 23:13:09','2018-01-08 23:13:09'),(402,NULL,'global',NULL,'2018-01-14 23:43:22','2018-01-14 23:43:22'),(403,NULL,'ip','127.0.0.1','2018-01-14 23:43:22','2018-01-14 23:43:22'),(404,NULL,'global',NULL,'2018-01-17 19:23:49','2018-01-17 19:23:49'),(405,NULL,'ip','127.0.0.1','2018-01-17 19:23:49','2018-01-17 19:23:49'),(406,1,'user',NULL,'2018-01-17 19:23:49','2018-01-17 19:23:49'),(407,NULL,'global',NULL,'2018-01-17 23:53:22','2018-01-17 23:53:22'),(408,NULL,'ip','127.0.0.1','2018-01-17 23:53:22','2018-01-17 23:53:22'),(409,1,'user',NULL,'2018-01-17 23:53:22','2018-01-17 23:53:22'),(410,NULL,'global',NULL,'2018-01-18 03:30:48','2018-01-18 03:30:48'),(411,NULL,'ip','127.0.0.1','2018-01-18 03:30:48','2018-01-18 03:30:48'),(412,1,'user',NULL,'2018-01-18 03:30:48','2018-01-18 03:30:48'),(413,NULL,'global',NULL,'2018-01-18 08:55:29','2018-01-18 08:55:29'),(414,NULL,'ip','127.0.0.1','2018-01-18 08:55:29','2018-01-18 08:55:29'),(415,1,'user',NULL,'2018-01-18 08:55:29','2018-01-18 08:55:29'),(416,NULL,'global',NULL,'2018-01-18 10:35:58','2018-01-18 10:35:58'),(417,NULL,'ip','127.0.0.1','2018-01-18 10:35:58','2018-01-18 10:35:58'),(418,1,'user',NULL,'2018-01-18 10:35:58','2018-01-18 10:35:58'),(419,NULL,'global',NULL,'2018-01-18 11:56:41','2018-01-18 11:56:41'),(420,NULL,'ip','127.0.0.1','2018-01-18 11:56:41','2018-01-18 11:56:41'),(421,1,'user',NULL,'2018-01-18 11:56:41','2018-01-18 11:56:41'),(422,NULL,'global',NULL,'2018-01-18 12:26:53','2018-01-18 12:26:53'),(423,NULL,'ip','127.0.0.1','2018-01-18 12:26:53','2018-01-18 12:26:53'),(424,1,'user',NULL,'2018-01-18 12:26:53','2018-01-18 12:26:53'),(425,NULL,'global',NULL,'2018-01-18 21:44:18','2018-01-18 21:44:18'),(426,NULL,'ip','127.0.0.1','2018-01-18 21:44:18','2018-01-18 21:44:18'),(427,1,'user',NULL,'2018-01-18 21:44:18','2018-01-18 21:44:18'),(428,NULL,'global',NULL,'2018-02-22 00:44:14','2018-02-22 00:44:14'),(429,NULL,'ip','127.0.0.1','2018-02-22 00:44:14','2018-02-22 00:44:14'),(430,1,'user',NULL,'2018-02-22 00:44:14','2018-02-22 00:44:14'),(431,NULL,'global',NULL,'2018-02-25 05:40:36','2018-02-25 05:40:36'),(432,NULL,'ip','127.0.0.1','2018-02-25 05:40:36','2018-02-25 05:40:36'),(433,1,'user',NULL,'2018-02-25 05:40:36','2018-02-25 05:40:36'),(434,NULL,'global',NULL,'2018-02-26 01:00:14','2018-02-26 01:00:14'),(435,NULL,'ip','127.0.0.1','2018-02-26 01:00:14','2018-02-26 01:00:14'),(436,1,'user',NULL,'2018-02-26 01:00:14','2018-02-26 01:00:14'),(437,NULL,'global',NULL,'2018-03-05 00:50:33','2018-03-05 00:50:33'),(438,NULL,'ip','27.64.30.153','2018-03-05 00:50:33','2018-03-05 00:50:33'),(439,1,'user',NULL,'2018-03-05 00:50:33','2018-03-05 00:50:33'),(440,NULL,'global',NULL,'2018-03-18 22:55:13','2018-03-18 22:55:13'),(441,NULL,'ip','171.232.110.35','2018-03-18 22:55:13','2018-03-18 22:55:13'),(442,1,'user',NULL,'2018-03-18 22:55:13','2018-03-18 22:55:13'),(443,NULL,'global',NULL,'2018-03-19 00:50:03','2018-03-19 00:50:03'),(444,NULL,'ip','116.109.134.17','2018-03-19 00:50:03','2018-03-19 00:50:03'),(445,1,'user',NULL,'2018-03-19 00:50:03','2018-03-19 00:50:03'),(446,NULL,'global',NULL,'2018-03-19 01:22:00','2018-03-19 01:22:00'),(447,NULL,'ip','171.232.110.35','2018-03-19 01:22:00','2018-03-19 01:22:00'),(448,1,'user',NULL,'2018-03-19 01:22:00','2018-03-19 01:22:00'),(449,NULL,'global',NULL,'2018-03-19 01:30:48','2018-03-19 01:30:48'),(450,NULL,'ip','116.109.134.17','2018-03-19 01:30:48','2018-03-19 01:30:48'),(451,1,'user',NULL,'2018-03-19 01:30:48','2018-03-19 01:30:48'),(452,NULL,'global',NULL,'2018-03-19 01:30:54','2018-03-19 01:30:54'),(453,NULL,'ip','116.109.134.17','2018-03-19 01:30:54','2018-03-19 01:30:54'),(454,1,'user',NULL,'2018-03-19 01:30:54','2018-03-19 01:30:54'),(455,NULL,'global',NULL,'2018-03-19 01:31:10','2018-03-19 01:31:10'),(456,NULL,'ip','116.109.134.17','2018-03-19 01:31:10','2018-03-19 01:31:10'),(457,1,'user',NULL,'2018-03-19 01:31:10','2018-03-19 01:31:10'),(458,NULL,'global',NULL,'2018-03-19 01:31:26','2018-03-19 01:31:26'),(459,NULL,'ip','116.109.134.17','2018-03-19 01:31:26','2018-03-19 01:31:26'),(460,1,'user',NULL,'2018-03-19 01:31:26','2018-03-19 01:31:26'),(461,NULL,'global',NULL,'2018-03-19 01:31:34','2018-03-19 01:31:34'),(462,NULL,'ip','116.109.134.17','2018-03-19 01:31:34','2018-03-19 01:31:34'),(463,1,'user',NULL,'2018-03-19 01:31:34','2018-03-19 01:31:34'),(464,NULL,'global',NULL,'2018-03-19 01:39:18','2018-03-19 01:39:18'),(465,NULL,'ip','116.109.134.17','2018-03-19 01:39:18','2018-03-19 01:39:18'),(466,1,'user',NULL,'2018-03-19 01:39:18','2018-03-19 01:39:18'),(467,NULL,'global',NULL,'2018-03-19 02:39:14','2018-03-19 02:39:14'),(468,NULL,'ip','171.232.110.35','2018-03-19 02:39:14','2018-03-19 02:39:14'),(469,1,'user',NULL,'2018-03-19 02:39:14','2018-03-19 02:39:14'),(470,NULL,'global',NULL,'2018-03-19 03:02:38','2018-03-19 03:02:38'),(471,NULL,'ip','171.232.110.35','2018-03-19 03:02:38','2018-03-19 03:02:38'),(472,1,'user',NULL,'2018-03-19 03:02:38','2018-03-19 03:02:38'),(473,NULL,'global',NULL,'2018-03-19 03:15:59','2018-03-19 03:15:59'),(474,NULL,'ip','171.232.110.35','2018-03-19 03:15:59','2018-03-19 03:15:59'),(475,1,'user',NULL,'2018-03-19 03:15:59','2018-03-19 03:15:59'),(476,NULL,'global',NULL,'2018-03-19 04:02:47','2018-03-19 04:02:47'),(477,NULL,'ip','171.232.110.35','2018-03-19 04:02:47','2018-03-19 04:02:47'),(478,1,'user',NULL,'2018-03-19 04:02:47','2018-03-19 04:02:47'),(479,NULL,'global',NULL,'2018-04-04 19:49:28','2018-04-04 19:49:28'),(480,NULL,'ip','171.232.86.209','2018-04-04 19:49:28','2018-04-04 19:49:28'),(481,1,'user',NULL,'2018-04-04 19:49:28','2018-04-04 19:49:28'),(482,NULL,'global',NULL,'2018-05-02 02:55:19','2018-05-02 02:55:19'),(483,NULL,'ip','27.64.20.35','2018-05-02 02:55:19','2018-05-02 02:55:19'),(484,1,'user',NULL,'2018-05-02 02:55:19','2018-05-02 02:55:19'),(485,NULL,'global',NULL,'2018-05-02 02:55:23','2018-05-02 02:55:23'),(486,NULL,'ip','27.64.20.35','2018-05-02 02:55:23','2018-05-02 02:55:23'),(487,1,'user',NULL,'2018-05-02 02:55:23','2018-05-02 02:55:23'),(488,NULL,'global',NULL,'2018-05-02 02:55:58','2018-05-02 02:55:58'),(489,NULL,'ip','27.64.20.35','2018-05-02 02:55:58','2018-05-02 02:55:58'),(490,1,'user',NULL,'2018-05-02 02:55:58','2018-05-02 02:55:58'),(491,NULL,'global',NULL,'2018-05-02 02:56:15','2018-05-02 02:56:15'),(492,NULL,'ip','27.64.20.35','2018-05-02 02:56:15','2018-05-02 02:56:15'),(493,1,'user',NULL,'2018-05-02 02:56:15','2018-05-02 02:56:15');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_member`
--

DROP TABLE IF EXISTS `user_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_member`
--

LOCK TABLES `user_group_member` WRITE;
/*!40000 ALTER TABLE `user_group_member` DISABLE KEYS */;
INSERT INTO `user_group_member` VALUES (4,1,1,'2018-01-26 04:05:58','2018-01-26 04:05:58'),(25,3,8,'2018-01-29 02:40:24','2018-01-29 02:40:24'),(27,4,10,'2018-02-04 15:06:20','2018-02-04 15:06:20'),(28,3,9,'2018-02-04 16:48:12','2018-02-04 16:48:12'),(29,4,11,'2018-02-07 10:33:37','2018-02-07 10:33:37');
/*!40000 ALTER TABLE `user_group_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','tieplua.net@gmail.com','$2y$10$QnzB5LFqGr5yygB56f7ViOuQQwMkOuyJ9Au.TYI9rHpavtYWKP0Dq',NULL,'2018-05-02 02:56:24','Tiếp Lửa','logo-2-224913932.png',NULL,NULL,6,1,'2017-11-12 07:23:56','2018-05-02 02:56:24');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (4,'Đi tham quan núi Bà Đen 2',1,'thuvienhinh-1.png','F5gQLpScOsI',2,1,'2018-01-09 11:01:55','2018-01-09 11:49:30'),(5,'Đi tham quan núi Bà Đen',1,'thuvienhinh-2.png','BDBb1h-eLsY',1,1,'2018-01-09 11:04:06','2018-01-09 11:49:08'),(6,'Đi tham quan núi Bà Đen 3',1,'thuvienhinh-3.png','rQt2EuoN6oo',3,1,'2018-01-09 11:04:29','2018-01-09 11:49:42'),(7,'Đi tham quan núi Bà Đen 4',1,'thuvienhinh-4.png','jLzAqwCjPuU',4,1,'2018-01-09 11:04:54','2018-01-09 11:49:49'),(8,'Đi tham quan núi Bà Đen 5',1,'thuvienhinh-5.png','koeu_AnZ0BQ',5,1,'2018-01-09 11:05:20','2018-01-09 11:49:56'),(9,'Đi tham quan núi Bà Đen 6',1,'thuvienhinh-6.png','jM53ZU2MCzU',6,1,'2018-01-09 11:05:37','2018-01-09 11:50:04'),(10,'Đi tham quan núi Bà Đen 7',1,'thuvienhinh-7.png','u7xIydku_Yw',7,1,'2018-01-09 11:05:53','2018-01-09 11:50:11'),(11,'Đi tham quan núi Bà Đen 8',1,'thuvienhinh-8.png','yGvSEhQXu4g',8,1,'2018-01-09 11:06:08','2018-01-09 11:50:20');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tieplua_info'
--

--
-- Dumping routines for database 'tieplua_info'
--
/*!50003 DROP PROCEDURE IF EXISTS `pro_getArticle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getArticle`(IN `keyword` VARCHAR(255), IN `category_id` VARCHAR(255))
begin
SELECT
	n.id
    ,n.fullname
    
    ,n.alias        
    ,n.image
    ,n.intro
    ,n.content
    ,n.description
    ,n.meta_keyword
    ,n.meta_description
    ,n.sort_order
    ,n.status
    ,n.created_at
    ,n.updated_at
	 FROM 
    `article` n
    INNER JOIN `article_category` ac ON n.id = ac.article_id
    INNER JOIN `category_article` cate ON ac.category_article_id = cate.id
    WHERE
    (keyword ='' OR trim(lower(n.fullname)) LIKE CONCAT('%',keyword,'%'))
    AND INSTR(category_id,'#'+ac.category_article_id+'#') > 0
     GROUP BY 
    n.id
    ,n.fullname
    
    ,n.alias        
    ,n.image
    ,n.intro
    ,n.content
    ,n.description
    ,n.meta_keyword
    ,n.meta_description
    ,n.sort_order
    ,n.status
    ,n.created_at
    ,n.updated_at
    ORDER BY n.sort_order ASC;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getBanner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getBanner`(IN `category_id` INT(11))
begin
  SELECT 
    
    n.id,
    n.caption,
    n.image,
    n.page_url,  
    n.category_id,
    c.fullname as category_name,
    n.sort_order,
    n.status,
    n.created_at,
    n.updated_at 
  FROM
    `banner` n 
    INNER JOIN `category_banner` c ON n.category_id = c.id 
  WHERE
   n.category_id = category_id
    GROUP BY
  n.id,
    n.caption,
    n.image,
    n.page_url,  
    n.sort_order,
    n.category_id,
    c.fullname,
    n.status,
    n.created_at,
    n.updated_at 
  ORDER BY n.sort_order ASC ;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCategoryArticle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCategoryArticle`(IN `keyword` VARCHAR(255))
BEGIN	
    SELECT
    
	n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname AS parent_fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
	FROM 
    `category_article` n
    LEFT JOIN `category_article` a ON n.parent_id = a.id
    WHERE
    ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    group by
    n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname ,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC       
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCategoryArticleLimit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCategoryArticleLimit`(IN `keyword` VARCHAR(255), IN `position` INT(11), IN `totalItemsPerPage` INT(11))
SELECT 
	
	n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname AS parent_fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
	 FROM 
    `category_article` n
    LEFT JOIN `category_article` a ON n.parent_id = a.id
    WHERE
    ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    group by
    n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC
    LIMIT `position` , totalItemsPerPage ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCategoryBanner` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCategoryBanner`(IN `keyword` VARCHAR(255))
BEGIN
	SELECT 
	n.id
	,n.fullname
	,n.theme_location
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
	 FROM 
    `category_banner` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    group by
    n.id
	,n.fullname
	,n.theme_location
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCategoryProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCategoryProduct`(IN `keyword` VARCHAR(255) CHARSET utf8)
BEGIN
SELECT
    
	n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname AS parent_fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
	FROM 
    `category_product` n
    LEFT JOIN `category_product` a ON n.parent_id = a.id
    WHERE
    ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    group by
    n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCategoryProductLimit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCategoryProductLimit`(IN `keyword` VARCHAR(255) CHARSET utf8, IN `position` INT(11), IN `totalItemsPerPage` INT(11))
SELECT 
	
	n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname AS parent_fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
	 FROM 
    `category_product` n
    LEFT JOIN `category_product` a ON n.parent_id = a.id
    WHERE
    ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    GROUP BY
    n.id,
	n.fullname,
	n.alias,
	n.parent_id,
	a.fullname,
	n.image,
	n.sort_order,
	n.status,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC
    LIMIT `position` , totalItemsPerPage ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getCustomer`(IN `keyword` VARCHAR(255) CHARSET utf8)
    NO SQL
SELECT
   
	n.id,
	n.username,
	n.password,
	n.email,	
	n.fullname,
    n.address,
    n.phone,
    n.mobilephone,
    n.fax,
    n.status,
    n.sort_order,
	n.created_at,
	n.updated_at
	FROM 
    `customer` n
    WHERE
    ( (keyword='') OR ( LOWER(n.fullname) LIKE CONCAT('%',LOWER(keyword),'%')  ) )
    group by
    n.id,
	n.username,
	n.password,
	n.email,	
	n.fullname,
    n.address,
    n.phone,
    n.mobilephone,
    n.fax,
    n.status,
    n.sort_order,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getGroupMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getGroupMember`(IN `keyword` VARCHAR(255))
    NO SQL
SELECT
	n.id
	,n.fullname
	,n.sort_order
	,n.created_at
	,n.updated_at
     FROM 
    `group_member` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    group by
    n.id
	,n.fullname
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getInvoice` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getInvoice`(IN `keyword` VARCHAR(255) CHARSET utf8)
    NO SQL
SELECT
   
	n.id,
	n.code,
	n.username,
	n.email,	
	n.fullname,
    n.address,
    n.phone,
    n.mobilephone,
    n.fax,
    n.quantity,
    n.total_price,
    n.status,
    n.sort_order,
	n.created_at,
	n.updated_at
	FROM 
    `invoice` n
    WHERE
    ( (keyword='') OR ( LOWER(n.fullname) LIKE CONCAT('%',LOWER(keyword),'%')  ) )
    group by
    n.id,
	n.code,
	n.username,
	n.email,	
	n.fullname,
    n.address,
    n.phone,
    n.mobilephone,
    n.fax,
    n.quantity,
    n.total_price,
    n.status,
    n.sort_order,
	n.created_at,
	n.updated_at
    ORDER BY n.sort_order ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getMenu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getMenu`(IN `keyword` VARCHAR(255), IN `menu_type_id` INT(11))
BEGIN
SELECT 
n.id
	,n.fullname
	,n.alias
	,n.parent_id
	,a.fullname AS parent_fullname
	,n.menu_type_id
	,n.level
	,n.sort_order
	,n.status
	,n.created_at
	,n.updated_at
	 FROM 
    `menu` n
    LEFT JOIN `menu` a ON n.parent_id = a.id
    WHERE
   ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    AND (menu_type_id = '' OR n.menu_type_id = menu_type_id)
    group by
    n.id
	,n.fullname
	,n.alias
	,n.parent_id
	,a.fullname 
	,n.menu_type_id
	,n.level
	,n.sort_order
	,n.status
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC    ;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getMenuLimit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getMenuLimit`(IN `keyword` VARCHAR(255), IN `position` INT(11), IN `totalItemsPerPage` INT(11), IN `menu_type_id` INT(11))
SELECT 
	
	n.id
	,n.fullname
	,n.alias
	,n.parent_id
	,a.fullname AS parent_fullname
	,n.menu_type_id
	,n.level
	,n.sort_order
	,n.status
	,n.created_at
	,n.updated_at
	 FROM 
    `menu` n
    LEFT JOIN `menu` a ON n.parent_id = a.id
    WHERE
    ( keyword='' OR  LOWER(n.fullname) LIKE CONCAT('%',keyword,'%')  ) 
    AND (menu_type_id = 0 OR n.menu_type_id = menu_type_id)
    GROUP BY
    n.id
	,n.fullname
	,n.alias
	,n.parent_id
	,a.fullname 
	,n.menu_type_id
	,n.level
	,n.sort_order
	,n.status
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC
    LIMIT `position` , totalItemsPerPage ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getMenuType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getMenuType`(IN `keyword` VARCHAR(255))
BEGIN
	SELECT 
	n.id
	,n.fullname
	,n.theme_location
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
	 FROM 
    `menu_type` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    group by
    n.id
	,n.fullname
	,n.theme_location
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC
    ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getModuleItem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getModuleItem`(IN `keyword` VARCHAR(255))
BEGIN
SELECT 
n.id
	,n.fullname
	,n.item_id
	,n.position
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
	 FROM 
    `module_item` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    GROUP BY
	n.id
    	,n.fullname
	,n.item_id
	,n.position
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getPage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getPage`(IN `q` VARCHAR(255))
begin
SELECT
    n.id
    ,n.fullname
  
    ,n.alias        
    ,n.image
    ,n.intro
    ,n.content
    ,n.description
    ,n.meta_keyword
    ,n.meta_description
    ,n.sort_order
    ,n.status
    ,n.created_at
    ,n.updated_at
	 FROM 
    `page` n    
    WHERE
    (q ='' OR trim(lower(n.fullname)) LIKE CONCAT('%',q,'%'))
     GROUP BY 
    n.id
    ,n.fullname
   
    ,n.alias        
    ,n.image
    ,n.intro
    ,n.content
    ,n.description
    ,n.meta_keyword
    ,n.meta_description
    ,n.sort_order
    ,n.status
    ,n.created_at
    ,n.updated_at
    ORDER BY n.sort_order ASC;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getPaymentMethod` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getPaymentMethod`(IN `keyword` VARCHAR(255) charset utf8)
BEGIN
SELECT 
	n.id
	,n.fullname
	,n.alias
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
	 FROM 
    `payment_method` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    GROUP BY
	n.id
    	,n.fullname
    	,n.alias
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getPrivilege` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getPrivilege`(IN `keyword` VARCHAR(255) CHARSET utf8)
    NO SQL
SELECT
    
	n.id,
	n.fullname,
	n.controller,
	n.action,	
	n.sort_order,
	n.created_at,
	n.updated_at
	FROM 
    `privilege` n
  
    WHERE
    ( (keyword='') OR ( LOWER(n.fullname) LIKE CONCAT('%',LOWER(keyword),'%')  ) )
    group by
    n.id,
	n.fullname,
	n.controller,
	n.action,	
	n.sort_order,
	n.created_at,
	n.updated_at
    ORDER BY n.controller ASC , n.sort_order ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getProduct`(IN `keyword` VARCHAR(255), IN `category_id` VARCHAR(255))
begin
SELECT
    n.id
    ,n.code
    ,n.fullname
    ,n.alias   
    ,n.image
    ,n.status
    ,n.child_image
    ,n.price
    ,n.sale_price
    ,n.detail
    ,n.sort_order
    ,n.created_at    
    ,n.updated_at
	 FROM 
    `product` n
    INNER JOIN `product_category` ac ON n.id = ac.product_id
    INNER JOIN `category_product` cate ON ac.category_product_id = cate.id
    WHERE
    (keyword ='' OR trim(lower(n.fullname))  LIKE CONCAT('%',keyword,'%'))
    AND INSTR(category_id,'#'+ac.category_product_id+'#') > 0
     GROUP BY 
    n.id
    ,n.code
    ,n.fullname
    ,n.alias   
    ,n.image
    ,n.status
    ,n.child_image
    ,n.price
    ,n.sale_price
    ,n.detail
    ,n.sort_order
    ,n.created_at    
    ,n.updated_at
    ORDER BY n.sort_order ASC;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getSettingSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getSettingSystem`(IN `keyword` VARCHAR(255) charset utf8)
BEGIN
SELECT 
	n.id
	,n.fullname
	,n.alias
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
	 FROM 
    `setting_system` n
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    GROUP BY
	n.id
    	,n.fullname
    	,n.alias
	,n.status
	,n.sort_order
	,n.created_at
	,n.updated_at
    ORDER BY n.sort_order ASC;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `pro_getUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`tieplua.info`@`localhost` PROCEDURE `pro_getUser`(IN `keyword` VARCHAR(255), IN `group_member_id` INT)
    NO SQL
SELECT 
    n.id
    ,n.username
    ,n.email
    ,n.password
    ,n.status
    ,n.fullname
    ,n.group_member_id
    ,g.fullname as group_member_name
    ,n.sort_order
    ,n.created_at
    ,n.updated_at
    FROM 
    `users` n 
    left join group_member g on n.group_member_id = g.id
    WHERE
    (keyword ='' OR LOWER(n.fullname) LIKE CONCAT('%', LOWER(keyword) ,'%'))    
    AND (group_member_id = 0 OR n.group_member_id = group_member_id)
    group by
    n.id
    ,n.username
    ,n.email
    ,n.password
    ,n.status
    ,n.fullname
    ,n.group_member_id
    ,g.fullname 
    ,n.sort_order
    ,n.created_at
    ,n.updated_at
    ORDER BY n.sort_order ASC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-07 15:48:38
