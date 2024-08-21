-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 18, 2022 at 04:23 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veritabani`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(225) NOT NULL,
  `bank_sube` varchar(225) NOT NULL,
  `bank_hesap` varchar(225) NOT NULL,
  `bank_iban` text NOT NULL,
  `bank_alici` varchar(225) NOT NULL,
  `bank_gorsel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `bank_name`, `bank_sube`, `bank_hesap`, `bank_iban`, `bank_alici`, `bank_gorsel`) VALUES
(3, 'Ziraat Bankası', '1234', '123456789', 'TR1234567891011', 'Ziraat Bankası', 'assets/cloud/uploads/ac700872037b7345888619fcc8e1c973.jpg'),
(4, 'Vakıf Bank', '1234', '123456789', 'TR1234567891011', 'Vakıf Bank', 'assets/cloud/uploads/0d7e8e8fd4283bae92df351138524e94.jpg'),
(5, 'QNB Finans Bank', '1234', '123456789', 'TR1234567891011', 'Finans Bank', 'assets/cloud/uploads/bb7e3766978915416d3d300e88310dae.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` text COLLATE utf8mb4_bin NOT NULL,
  `category_url` varchar(225) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `client_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` text NOT NULL,
  `telephone` varchar(225) DEFAULT NULL,
  `login_date` datetime DEFAULT NULL,
  `login_ip` varchar(225) NOT NULL,
  `client_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF',
  `access` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`client_id`, `name`, `email`, `username`, `password`, `telephone`, `login_date`, `login_ip`, `client_type`, `access`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', 'd2da1e9f79c6ca6d5d60c7a2b8673c5a', '-', '2021-10-12 03:30:08', '78.165.44.217', '2', '{\"admin_access\":\"1\",\"siparisler\":\"1\",\"urunler\":\"1\",\"kategoriler\":\"1\",\"referanslar\":\"1\",\"hizmetler\":\"1\",\"blog\":\"1\",\"sayfalar\":\"1\",\"mesajlar\":\"1\",\"galeri\":\"1\",\"gorunum\":\"1\",\"ayarlar\":\"1\",\"guvenlik\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `client_report`
--

CREATE TABLE `client_report` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `action` text NOT NULL,
  `report_ip` varchar(225) NOT NULL,
  `report_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_name` text CHARACTER SET utf8 NOT NULL,
  `comment_content` text CHARACTER SET utf8 NOT NULL,
  `comment_image` text NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_name`, `comment_content`, `comment_image`, `comment_date`) VALUES
(2, 'Zeynep Alşen', 'Profesyonel ve kurumsallığı ön planda tutarak kalitesini beğendiğim bir hizmet firması olarak başarılarınızın devamını diler, sürekli birlikte çalışmamızı temenni ederim.', 'assets_new/images/testimonial/img-1.jpg', '2022-12-18 15:33:32'),
(6, 'İsmail Rüştü', 'Profesyonel ve kurumsallığı ön planda tutarak kalitesini beğendiğim bir hizmet firması olarak başarılarınızın devamını diler, sürekli birlikte çalışmamızı temenni ederim.', 'assets_new/images/testimonial/img-2.jpg', '2022-12-18 15:33:38'),
(7, 'Berk Bayram', 'Profesyonel ve kurumsallığı ön planda tutarak kalitesini beğendiğim bir hizmet firması olarak başarılarınızın devamını diler, sürekli birlikte çalışmamızı temenni ederim.', 'assets_new/images/testimonial/img-3.jpg', '2022-12-18 15:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `faq_id` int(11) NOT NULL,
  `faq_name` text CHARACTER SET utf8 NOT NULL,
  `faq_content` text CHARACTER SET utf8 NOT NULL,
  `faq_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`faq_id`, `faq_name`, `faq_content`, `faq_date`) VALUES
(2, 'Diş Taşlarını Temizletmek Zararlı Mı?', 'Tabiki zararlı değildir. Hatta bu işlemi temel alan anabilim dalı dahi vardır. Diş taşları bütün dişeti hastalıklarının etken faktörüdür. Nihai itibarı ile ağızdan bilinçli ve ehil ellerce uzaklaştırılması gerekir. Ancak \'\'nasılsa diş hekimim temizler\'\' mantığı ile ağız hijyen uygulamalarından uzak durmak her işlemden sonra diştaşı birikimine çanak tutar. Önemli olan diş taşlarını temizletmek değil, dişleri temiz tutmaktır. Çünkü diş taşı temizliği kozmetik bir iş değil, bir tedavi biçimidir.', '2022-12-18 15:32:52'),
(3, 'Diş İpi Kullanmalı Mıyım?', 'Tabiki evet. Diş ipi bize en çok yardımcı oral hijyen araçlarındandır. Diş fırçası ile ulaşamayacağımız diş arası bölgeleri, çürüksel veya diş eti ile alakalı tüm hastalıkların genellikle başlangıç yeridir. Bilhassa çapraşık dişlerde durum daha da önem kazanır. Bu yüzden diş fırçalamaya ek olarak günde bir kere diş ipi kullanmakta fayda vardır. Not: Lütfen hangi diş ipinin size uygun olduğunu ve diş ipinin nasıl kullanılacağınızı hekiminize danışınız.', '2022-12-18 15:32:58'),
(4, 'Diş Beyazlatmak Zararlı Mıdır?', 'Aslında bu konu hekim camiasını da ikiye bölmüştür. Faydasına inanmayan hekimlerin yanısıra çalışmaların sonuç verdiğini ispat eden meslektaşlarımızda vardır. Biz Medikodent hekimleri olarak, diş beyazlatmanın uygun teknik,uygun ekipman ve uygun nosyon rehberliği ve uygun vaka seçimi kriterlerinin hepsinin aynı andaki beraberliğinde, başarılı olacağını kabul etmekteyiz. Çünkü sağlığın tanımı fiziksel,biyolojik ve ruhsal açıdan tam bir iyilik hali olarak yapılıyorsa, dişlerinin renginden memnun olmayan ve bunu kendisine problem kabul eden kişi sağlıksız sayılır.Bu tanıma uyan kişi için, diş beyazlatma bir tedavi biçimi olacaktır. Ancak kabul etmek gerekirse diş beyazlatma beklentisi ile kliniğimize gelen hastaların asıl sorunu boyayıcı maddelerle kirli görünen dişlerdir ve bunun tedavisi ise profesyonelce ama gayet rutin bir işlem olan diş taşı temizliği ve parlatmadır. Ve tecrübeyle sabittir ki, bir çok kişi için bu işlem en uygun tedavidir. Ancak yinede dişlerinin daha beyaz görünmesini isteyen kişilere vital bleaching dediğimiz yöntem uygulanabilir. Ancak hasta beklentileri gerçeklik sınırlarını aşmamalıdır. Diş beyazlatmada ütopik beklentiler karşılanamaz ve memnuniyetsizlik oluşur. Buna ilaveten örnek verecek olursak; çaydan gördüğümüz zarar kadar yada tv seyrederken aldığımız radyasyon kadar minimal bir zararı göze almak gerekir ve herşeye rağmen uygun şartların varlığında diş beyazlatma yapılabilir. Ve başarılı sonuçlar almak hiçde zor değildir.', '2022-12-18 15:33:02'),
(5, 'Çokça Çay, Kahve İçiyorum. Dişlerime Zarar Verir Mi?', 'Çay ve kahvenin aşırı tüketilmesi dişlerde sarımsı kahverengi lekelere sebep olur. Bu estetik bir kayıp olarak algılanabilir. Netice olarak bu alanlar özellikle oral hijyeni yetersiz hastalarda diş taşlarının tutunacağı birikim bölgeleri haline gelir ve dişeti hastalıklarının oluşmasına katkı yapar. Mümkünse çay ve kahve tüketimi azaltılmalı, günde 2 defa dişler en az 2 dk süreyle fırçalanmalıdır.', '2022-12-18 15:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_name` text CHARACTER SET utf8 NOT NULL,
  `file_url` varchar(225) NOT NULL,
  `file_type` text NOT NULL,
  `file_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_name`, `file_url`, `file_type`, `file_date`) VALUES
(9, 'Test resim 1', 'assets_new/images/gallery/img-6.jpg', '2', '2021-09-22 05:38:50'),
(10, 'Test resim 2', 'assets_new/images/gallery/img-7.jpg', '2', '2021-09-22 05:40:56'),
(11, 'Test resim 3', 'assets_new/images/gallery/img-8.jpg', '2', '2021-09-22 05:41:03'),
(12, 'Test resim 4', 'assets_new/images/gallery/img-9.jpg', '2', '2021-09-22 05:41:11'),
(13, 'Örnek Planlarımız', 'assets/cloud/uploads/ef1d736a3adb42ef63321b5724cd8685.pdf', '1', '2021-09-22 05:47:33'),
(14, 'Çalışma Programlarımız', 'assets/cloud/uploads/0f5e31210906167c129522dcb2a83580.pdf', '1', '2021-09-22 05:47:42'),
(15, 'Test PDF', 'assets/cloud/uploads/65e14d0eaf4f7f4f0655fd71769a8772.pdf', '1', '2021-09-22 05:49:01'),
(16, 'Test PDF 2', 'assets/cloud/uploads/9b090dcb070fea316774e0040ac57d03.pdf', '1', '2021-09-22 05:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_product` int(11) NOT NULL,
  `order_customer` text NOT NULL,
  `order_amount` double NOT NULL,
  `order_note` varchar(225) DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `cargo_no` varchar(225) DEFAULT NULL,
  `cargo_company` varchar(225) DEFAULT NULL,
  `order_status` int(11) NOT NULL DEFAULT '1',
  `payment_method` int(11) NOT NULL,
  `payment_privatecode` double NOT NULL,
  `payment_status` enum('1','2') NOT NULL DEFAULT '1',
  `payment_extra` text,
  `customer_ip` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(225) NOT NULL,
  `page_keywords` varchar(225) NOT NULL,
  `page_description` varchar(225) NOT NULL,
  `page_image` text NOT NULL,
  `page_get` varchar(225) NOT NULL,
  `page_content` text NOT NULL,
  `page_type` enum('1','2','3') NOT NULL,
  `page_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `page_name`, `page_keywords`, `page_description`, `page_image`, `page_get`, `page_content`, `page_type`, `page_date`) VALUES
(13, 'Bütçe Yönetimi', 'ev, temizlik', 'Canlı veya cansız dişlerde bulunan renklenmelerin ve lekelerin yok edilmesine olanak tanıyan müdahale diş beyazlatma olarak bilinir. \r\n', 'assets_new/images/services/services-1.jpg', 'butce-yonetimi', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '1', '2021-10-14 05:17:16'),
(14, 'Strateji ve Planlama', 'site, temizliği', 'Eksik olan dişlerin yerine yenisinin yapılabilmesi için çene kemiğine uygulanan vidalama işlemi implant olarak bilinir.\r\n', 'assets_new/images/services/services-2.jpg', 'strateji-ve-planlama', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '1', '2021-10-14 05:17:29'),
(19, 'Lorem Ipsum Nedir?', 'Deneme Blog 1', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', 'assets_new/images/blog/img-1.jpg', 'deneme-blog-1', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '3', '2021-09-29 07:09:09'),
(20, 'Neden Kullanırız?\r\n', 'Deneme Blog 2', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', 'assets_new/images/blog/img-2.jpg', 'deneme-blog-2', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '3', '2021-09-29 07:09:13'),
(21, 'Nereden Bulabilirim?\r\n', 'Deneme Blog 3', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', 'assets_new/images/blog/img-3.jpg', 'deneme-blog-3', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '3', '2021-09-29 07:09:16'),
(23, 'NLogo İstanbul', 'anahtar, kelime', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', '', 'nlogo-istanbul', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '2', '2021-10-14 05:19:30'),
(34, 'Pazar Yönetimi', 'balayi', 'Balayı suitleri', '', 'pazar-yonetimi', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '1', '2021-10-14 05:17:36'),
(35, 'Sembol İstanbul', 'balo', 'Mezuniyet balo', '', 'sembol-istanbul', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '2', '2021-10-14 05:19:07'),
(36, 'Sinpaş İnşaat', 'Doğum Günü Partisi', 'Doğum Günü Partisi', '', 'sinpas-insaat', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '2', '2021-10-14 05:19:38'),
(38, 'Kurumsal Finansman', 'site, temizliği', 'Eksik olan dişlerin yerine yenisinin yapılabilmesi için çene kemiğine uygulanan vidalama işlemi implant olarak bilinir.\r\n', 'assets_new/images/services/services-2.jpg', 'kurumsal-finansman', '<div id=\"lipsum\" style=\"margin: 0px; padding: 0px; text-align: justify;\"><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Phasellus id eros vitae odio pharetra pulvinar. Nunc lobortis nunc quis venenatis accumsan. Aenean id lectus ut augue blandit suscipit a vel sapien. Quisque a maximus purus, eget fringilla nulla. Nulla sed magna eget arcu sagittis ornare. Quisque ullamcorper nibh nunc, id tristique odio molestie a. In vehicula enim augue.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vivamus ac erat congue, scelerisque turpis quis, egestas mi. Donec velit lectus, vehicula eu quam non, rutrum porta lectus. Duis laoreet facilisis metus, fringilla sollicitudin justo interdum et. Maecenas accumsan luctus gravida. Sed et leo ullamcorper, laoreet dolor egestas, hendrerit mauris. Ut lobortis fringilla ex, id venenatis purus sollicitudin eu. Donec id nunc vitae est ultricies fringilla. Suspendisse cursus felis eu nisl convallis suscipit. Vivamus eu ex sed massa varius ultricies. Sed et turpis magna. Praesent mollis bibendum rhoncus. Aliquam erat volutpat. In scelerisque dolor elit. Sed ut ex nec arcu rutrum convallis ut a elit. Nullam malesuada mauris augue, et hendrerit lorem interdum nec.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Vestibulum sed porta mauris. Nulla ac nibh feugiat, pellentesque magna id, commodo arcu. Aliquam at laoreet dui, non euismod eros. Praesent id dictum diam, at mattis nunc. Pellentesque dictum consectetur erat sit amet mattis. Sed non lacus ex. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Sed tincidunt vitae augue quis scelerisque. Donec ullamcorper purus ut elit fermentum scelerisque. Cras at eros non nisl porttitor fermentum. Praesent fringilla felis nec tempus congue. Vivamus eleifend odio et dapibus varius. Aenean eu nibh nisl. Curabitur pharetra metus at accumsan scelerisque. Aliquam auctor dolor quis mi volutpat, ut ornare odio auctor. Maecenas gravida enim dui, vitae consectetur ante facilisis in. Cras libero eros, sagittis non nibh at, ornare lobortis dolor. Morbi sed velit blandit, ultrices dui vel, commodo nulla. Nulla vel nunc elit. Quisque tortor tellus, consectetur sit amet ultrices at, auctor vel ex.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\">Mauris pulvinar metus mollis ipsum hendrerit, a tempor mauris faucibus. Mauris id magna ex. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas eu magna sagittis, rutrum nunc ac, iaculis ligula. Nulla malesuada elit ut euismod laoreet. Suspendisse ultrices interdum dui in porta. Nulla euismod varius nunc, in tempor metus sodales et.</p></div>', '1', '2021-10-14 05:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL,
  `method_name` varchar(225) NOT NULL,
  `method_get` varchar(225) NOT NULL,
  `method_type` enum('1','2') NOT NULL DEFAULT '2' COMMENT '2 -> ON, 1 -> OFF	',
  `method_extras` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `method_name`, `method_get`, `method_type`, `method_extras`) VALUES
(1, 'PayTR', 'paytr', '2', '{\"name\":\"Paytr\",\"method_type\":\"2\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}'),
(2, 'PayTR Havale/EFT', 'paytr_havale', '2', '{\"method_type\":\"2\",\"name\":\"Paytr Havale&EFT\",\"min\":\"1\",\"max\":\"0\",\"merchant_id\":\"\",\"merchant_key\":\"\",\"merchant_salt\":\"\",\"fee\":\"0\"}'),
(3, 'Shopier', 'shopier', '2', '{\"method_type\":\"1\",\"name\":\"Shopier\",\"min\":\"1\",\"max\":\"0\",\"apiKey\":\"\",\"apiSecret\":\"\",\"website_index\":\"1\",\"processing_fee\":\"1\",\"fee\":\"0\"}'),
(4, 'Paywant', 'paywant', '2', '{\"name\":\"Paywant\",\"method_type\":\"2\",\"apiKey\":\"\",\"apiSecret\":\"\",\"fee\":\"0\",\"commissionType\":\"2\",\"payment_type\":[\"1\",\"2\",\"3\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_name` varchar(225) CHARACTER SET utf8 NOT NULL,
  `product_details` text CHARACTER SET utf8 NOT NULL,
  `product_image` text,
  `product_price` double NOT NULL,
  `product_type` int(11) NOT NULL,
  `product_keyword` text CHARACTER SET utf8 NOT NULL,
  `product_desc` text CHARACTER SET utf8 NOT NULL,
  `product_content` text CHARACTER SET utf8 NOT NULL,
  `product_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `reference_id` int(11) NOT NULL,
  `reference_name` varchar(225) CHARACTER SET utf8 NOT NULL,
  `reference_image` varchar(225) CHARACTER SET utf8 NOT NULL,
  `reference_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reference`
--

INSERT INTO `reference` (`reference_id`, `reference_name`, `reference_image`, `reference_url`) VALUES
(5, 'Ziraat Bankası', 'img/brands-1.png', 'https://www.yazilimdemosu.com'),
(6, 'Lenovo', 'img/brands-2.png', 'https://yazilimdemosu.com'),
(7, 'Kola', 'img/brands-3.png', 'https://yazilimdemosu.com'),
(8, 'Kargo', 'img/brands-4.png', 'https://yazilimdemosu.com'),
(9, 'Yemek', 'img/brands-5.png', 'https://yazilimdemosu.com'),
(10, 'Yemek', 'img/brands-6.png', 'https://yazilimdemosu.com');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `site_title` text,
  `site_description` text,
  `site_keywords` text,
  `site_logo` text,
  `site_name` text,
  `site_currency` enum('TRY','EUR','USD') NOT NULL DEFAULT 'TRY',
  `site_telephone` text NOT NULL,
  `site_mail` text NOT NULL,
  `site_address` text NOT NULL,
  `site_maps` text NOT NULL,
  `favicon` text,
  `recaptcha` enum('1','2') NOT NULL DEFAULT '1',
  `recaptcha_key` text,
  `recaptcha_secret` text,
  `custom_header` text,
  `custom_footer` text,
  `custom_meta` text NOT NULL,
  `smtp_user` text NOT NULL,
  `smtp_pass` text NOT NULL,
  `smtp_server` text NOT NULL,
  `smtp_port` varchar(225) NOT NULL,
  `smtp_protocol` enum('0','ssl','tls') NOT NULL,
  `alert_type` enum('1','2','3') NOT NULL,
  `alert_newmanuelservice` enum('1','2') NOT NULL,
  `alert_newticket` enum('1','2') NOT NULL,
  `sms_provider` varchar(225) NOT NULL,
  `sms_title` varchar(225) NOT NULL,
  `sms_user` varchar(225) NOT NULL,
  `sms_pass` varchar(225) NOT NULL,
  `admin_mail` varchar(225) NOT NULL,
  `admin_telephone` varchar(225) NOT NULL,
  `site_maintenance` enum('1','2') NOT NULL DEFAULT '2',
  `instagram` text NOT NULL,
  `twitter` text NOT NULL,
  `facebook` text NOT NULL,
  `linkedin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title`, `site_description`, `site_keywords`, `site_logo`, `site_name`, `site_currency`, `site_telephone`, `site_mail`, `site_address`, `site_maps`, `favicon`, `recaptcha`, `recaptcha_key`, `recaptcha_secret`, `custom_header`, `custom_footer`, `custom_meta`, `smtp_user`, `smtp_pass`, `smtp_server`, `smtp_port`, `smtp_protocol`, `alert_type`, `alert_newmanuelservice`, `alert_newticket`, `sms_provider`, `sms_title`, `sms_user`, `sms_pass`, `admin_mail`, `admin_telephone`, `site_maintenance`, `instagram`, `twitter`, `facebook`, `linkedin`) VALUES
(1, 'Kurumsal Firma', 'gsdfgsdfg', 'sdfgsdfg', 'assets/cloud/uploads/7ef6b3c1ecfa872e52b8b982aad2f5f7.png', 'Kurumsal Ajans Firma', 'TRY', '0 850 555 55 55', 'info@ajans.com', 'Yenimahalle/Ankara', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12237.8778792869!2d32.7990765!3d39.9308873!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa9ee717727a3fee!2zVMO8cmtpeWUgQ3VtaHVyaXlldGkgQ3VtaHVyYmHFn2thbmzEscSfxLE!5e0!3m2!1str!2str!4v1633093778313!5m2!1str!2str', 'assets/cloud/uploads/c25c0e85f9d96a61e19a690adfb7a9af.png', '2', '6LfxE4YbAAAAAKCL_eXQGLtb_FeSRbmlPZXlo7Cx', '6LfxE4YbAAAAAGy8aZihFgfOYvMRPZ5Aih7rh4NP', '', '', '', '', '', 'veritabanında settings kısmında port 587 olarak ayarlı', '587', '0', '3', '2', '2', 'netgsm', '', '', '', '', '', '1', 'https://instagram.com/instagram/', 'https://www.twitter.com/twitter/', 'https://www.facebook.com/facebook/', 'https://www.linkedin.com/');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_name` text CHARACTER SET utf8 NOT NULL,
  `slider_content` text CHARACTER SET utf8 NOT NULL,
  `slider_image` text NOT NULL,
  `slider_bg` text NOT NULL,
  `slider_button` text CHARACTER SET utf8 NOT NULL,
  `slider_url` varchar(225) CHARACTER SET utf8 NOT NULL,
  `slider_sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_name`, `slider_content`, `slider_image`, `slider_bg`, `slider_button`, `slider_url`, `slider_sid`) VALUES
(6, 'Geleceğe Birlikte', 'ABC Topluluğu’nun sürdürülebilir, kârlı büyüme yaklaşımı olan Geleceğe. Birlikte; gücünü yaratacağımız dönüşümden ve iş birliklerine olan inancımızdan alıyor.\r\n\r\n', '', 'assets_new/images/slider/slide-2.jpg', 'Firmamız Hakkında', 'hakkimizda', 1),
(7, 'Nesiller Boyu Eşitlik\r\n', 'Geleceğe Birlikte, imzacısı olduğumuz BM Kadının Güçlenmesi İlkeleri ve Koç Topluluğu Etik İlkeleri ışığında yönetim kurulunda en az yüzde 30 kadın temsiliyeti taahhüdünde bulunuyoruz.', '', 'assets_new/images/slider/slide-3.jpg', 'Bize Ulaşın', 'iletisim', 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `team_name` text CHARACTER SET utf8 NOT NULL,
  `team_statu` text CHARACTER SET utf8 NOT NULL,
  `team_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`team_id`, `team_name`, `team_statu`, `team_image`) VALUES
(2, 'Murat B.', 'Aile Avukatı', 'images/resource/team-1.jpg'),
(4, 'Ayla Ç.', 'Aile Avukatı', 'images/resource/team-2.jpg'),
(5, 'Emir S.', 'Bilişim Avukatı', 'images/resource/team-3.jpg'),
(6, 'Ali O.', 'Ağır Ceza Avukatı', 'images/resource/team-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL,
  `customer_name` varchar(225) NOT NULL,
  `customer_email` varchar(225) NOT NULL,
  `customer_telephone` varchar(225) NOT NULL,
  `ticket_subject` varchar(225) NOT NULL,
  `ticket_message` varchar(225) NOT NULL,
  `ticket_date` datetime NOT NULL,
  `reply_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `client_report`
--
ALTER TABLE `client_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `payment_privatecode` (`payment_privatecode`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`reference_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client_report`
--
ALTER TABLE `client_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `reference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
