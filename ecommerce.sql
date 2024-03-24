-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 06:08 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(300) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `first_name`, `last_name`, `phone`, `address`, `city`, `province`, `zip_code`, `u_id`, `createtime`) VALUES
(1, 'gdfgdf', 'khkhjk', '', 'dasgfdg', 'gfdhdg', 'gfdhfg', '84841', 2, '2024-03-12 22:47:15'),
(2, 'uytity', 'popi.jk', '', 'oiuouil', 'ou,jb,nm', 'tyutyuty', '56501', 2, '2024-03-12 22:49:31'),
(3, '', '', '', '', '', '', '', 2, '2024-03-12 22:49:33'),
(4, 'fgdgdf', 'kjhkhj', '8481878941', 'jtyjtyj', 'jytkgbgh', 'gdfgdf', '88153', 2, '2024-03-12 23:34:37'),
(5, 'iyuiyu', 'eqweqw', '08745123', 'poip;ljk', 'rertfd', 'qwes', '54804', 2, '2024-03-13 20:25:06'),
(6, 'sun', 'phuri', '04856123', '454 ถนนแตก', 'หาดใหญ่', 'สงขลา', '90110', 3, '2024-03-21 00:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `bank_withdraw`
--

CREATE TABLE `bank_withdraw` (
  `bank_id` int(11) NOT NULL,
  `bank_name` varchar(30) NOT NULL,
  `bank_code` varchar(10) NOT NULL,
  `enable` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bank_withdraw`
--

INSERT INTO `bank_withdraw` (`bank_id`, `bank_name`, `bank_code`, `enable`) VALUES
(1, 'ธนาคารกสิกรไทย', 'KASITHBK', 1),
(2, 'ธนาคารกรุงเทพ', 'BKKBTHBK', 1),
(3, 'ธนาคารกรุงไทย', 'KRTHTHBK', 1),
(4, 'ธนาคารไทยพาณิชย์', 'SICOTHBK', 1),
(5, 'ธนาคารออมสิน', 'GSBATHBK', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int(11) NOT NULL,
  `banner_tier` enum('0','1','2') NOT NULL,
  `banner_img` varchar(200) DEFAULT NULL,
  `banner_alt` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner_tier`, `banner_img`, `banner_alt`, `createtime`) VALUES
(6, '0', '/asset/img/banner/1710949378-Untitled-1-16_1_.png', '1', '2024-03-20 22:42:58'),
(7, '0', '/asset/img/banner/1710949526-Artboard_7_150x-100_1_.png', '2', '2024-03-20 22:45:26'),
(8, '0', '/asset/img/banner/1710950230-Artboard_44_1_2_.png', '3', '2024-03-20 22:57:10'),
(12, '1', '/asset/img/banner/1710952253-th-11134210-7r991-lrsiu6e68z1q3c (1).png', '1', '2024-03-20 23:28:44'),
(13, '1', '/asset/img/banner/1710952261-th-11134210-7r98o-lrsiu6e6bs6m92_1.png', '2', '2024-03-20 23:28:54'),
(14, '1', '/asset/img/banner/1710952267-th-11134210-7r991-lrsiu6e6adm68f_1.png', '3', '2024-03-20 23:29:03'),
(15, '1', '/asset/img/banner/1711032576-AW-Mainpro-302x230-1_11zon.png', '4', '2024-03-21 21:49:36');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `u_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`u_id`, `product_id`, `quantity`, `shipping_id`, `createtime`) VALUES
(2, 3, 1, 0, '2024-03-13 21:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `cart_temp`
--

CREATE TABLE `cart_temp` (
  `cart_id` varchar(20) NOT NULL,
  `u_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cart_temp`
--

INSERT INTO `cart_temp` (`cart_id`, `u_id`, `product_id`) VALUES
('WxfaZlP4jQyOGOEohSaT', 2, 1),
('9aEemhFmnxEGE1OSqKHs', 2, 1),
('fPQYytslxTRmR8VnmmO8', 3, 11),
('PsoZWbtSr7hAl6hlIV2Z', 3, 11),
('2ElxkJImAKxETvkNY8fy', 2, 19);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_weight` int(2) NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_img` varchar(200) NOT NULL,
  `category_alt` varchar(200) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `cart_id` varchar(20) NOT NULL,
  `shipping_provider_id` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `track_code` varchar(300) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(300) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `province` varchar(20) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `u_id` int(11) NOT NULL,
  `status` enum('pending','processing','shipped','cancelled') DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `payment_method` enum('transfer','cod') DEFAULT NULL,
  `context` varchar(300) DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp(),
  `end_process_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `pay_slip` varchar(100) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` enum('pending','approve','decline') DEFAULT 'pending',
  `update_status_time` datetime DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `u_id`, `pay_slip`, `order_id`, `status`, `update_status_time`, `createtime`) VALUES
(1, 2, '/asset/img/payment_slip/1710949031-image.png', 2, 'approve', '2024-03-20 22:37:26', '2024-03-20 22:37:11'),
(2, 3, '/asset/img/payment_slip/1710955904-image.png', 3, 'approve', '2024-03-21 00:32:38', '2024-03-21 00:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_description` varchar(1000) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `store_id` int(10) NOT NULL,
  `product_price` int(8) NOT NULL,
  `category_id` int(11) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_description`, `product_quantity`, `store_id`, `product_price`, `category_id`, `createtime`) VALUES
(6, 'NIKE AIR FORCE1 07 WHITE (CW2288-111)', '<p>NIKE AIR FORCE1 07 WHITE</p><p>ความเปล่งประกายยังคงอยู่ใน Nike Air Force 1 \'07 ซึ่งเป็นรองเท้าบาสรุ่น OG ที่ใส่ลูกเล่นสดใหม่ให้กับสิ่งที่คุณรู้จักดีที่สุด: ส่วนหุ้มชั้นนอกที่เย็บติดทนทาน พื้นผิวที่สะอาดตา และปริมาณแสงที่ลงตัวที่จะทำให้คุณเปล่งประกาย</p>', 5, 2, 3700, 0, '2024-03-20 23:49:44'),
(7, 'VANS VN0005UBBLK Old Skool VR3 SUEDE BLACK', '<p>VANS Old Skool VR3</p><p>Vans เป็นผู้ผลิตรองเท้าสเก็ตบอร์ดและเครื่องแต่งกายที่เกี่ยวข้องในอเมริกา ตั้งอยู่ในเมืองซานตาอานา รัฐแคลิฟอร์เนีย โดยมี VF Corporation เป็นเจ้าของ บริษัทยังสนับสนุนทีมโต้คลื่น สโนว์บอร์ด BMX และมอเตอร์ครอสอีกด้วย</p>', 6, 2, 2600, 0, '2024-03-21 00:07:42'),
(8, 'NIKE DUNK LOW RETRO BLACK WHITE (DD1391-100)', '<p>NIKE DUNK LOW RETRO BLACK WHITE</p><p>Nike Dunk Low Retro รังสรรค์มาเพื่อพื้นไม้เนื้อแข็งแต่กลับโดดเด่นบนท้องถนน กลับมาอีกครั้งพร้อมส่วนหุ้มชั้นนอกเฉียบคมและสีสันของทีมรุ่นออริจินัล ไอคอนบาสเก็ตบอลคู่นี้สื่อถึงกลิ่นอายของยุค 80 ด้วยหนังระดับพรีเมียมที่ส่วนบนที่ดูดีและสวมใส่ได้ดียิ่งขึ้น เทคโนโลยีรองเท้าสมัยใหม่ช่วยนำความสบายมาสู่ศตวรรษที่ 21</p>', 6, 2, 3700, 0, '2024-03-21 00:12:05'),
(9, 'NIKE W DUNK LOW VDAY (FQ7056-100)', '<p>NIKE W DUNK LOW VDAY</p><p>รังสรรค์มาเพื่อพื้นไม้เนื้อแข็งแต่กลับได้รับความนิยมบนท้องถนน โดยไอคอนบาสเก็ตบอลแห่งยุค 80 นี้กลับมาพร้อมรายละเอียดสุดคลาสสิกและห่วงสไตล์ย้อนยุคที่เปล่งประกาย รุ่นวันวาเลนไทน์อันแสนหวานนี้ยังคงนำเสนอสไตล์วินเทจของ Dunk นอกจากนี้ส่วนหุ้มข้อบุนวมทรงไม่หุ้มข้อยังช่วยให้คุณพกพาเกมไปได้ทุกที่ด้วยความสบาย</p>', 3, 2, 4700, 0, '2024-03-21 00:14:33'),
(10, 'ADIDAS SAMBAE W FTWWHT/FTWWHT/CBLACK (IG5744)', '<p>ADIDAS SAMBAE W FTWWHT/FTWWHT/CBLACK</p><p>รองเท้า Adidas Samba คู่นี้เพิ่มความทันสมัยให้กับดีไซน์อันเป็นเอกลักษณ์ เวอร์ชันนี้ซึ่งครั้งหนึ่งเคยเป็นรองเท้าฟุตบอลในร่ม ผลิตจากหนังเรียบลื่น พื้นรองเท้ายางพาราโปร่งแสง และแถบ 3-Stripes ปักระดับพรีเมียมที่ช่วยให้เปลี่ยนลุคไปตามท้องถนนได้อย่างลงตัว รายละเอียดเล็กๆ น้อยๆ เช่น ฝาครอบปลายเท้าแบบเย็บและหมุนทำให้ดูมีสไตล์</p>', 6, 2, 3800, 0, '2024-03-21 00:18:06'),
(11, 'ADIDAS Yeezy Boost 350 V2 (HQ6316)', '<p>ADIDAS Yeezy Boost 350 V2</p><p>Yeezy Boost 350 V2 \'Pure Oat\' ปรับโฉมโฉมใหม่ให้กับนักวิ่งไลฟ์สไตล์ โดยเน้นด้วยอัปเปอร์ Primeknit ที่ระบายอากาศได้ดีในสีงาช้างอันละเอียดอ่อน แถบโมโนฟิลาเมนต์ด้านข้างเพิ่มองค์ประกอบซีทรูให้กับดีไซน์มินิมอล ขณะที่แถบดึงแบบสานที่ส้นช่วยให้ใส่และถอดได้ง่าย ภายในรองเท้ามีตราสัญลักษณ์ 3 แถบที่ส้นรองเท้าด้านในและมีตราประทับ \'Yeezy\' บนแผ่นรองพื้นรองเท้า ระบบลดแรงกระแทกที่ตอบสนองได้มาจากพื้นรองเท้าชั้นกลาง Boost ที่หุ้มด้วย TPU แบบเต็มความยาวเท้า</p>', 1, 2, 9000, 0, '2024-03-21 00:19:54'),
(12, 'CONVERSE X QUARTERSNACKS ONE STAR PRO OX BLACK (A09555CM_S4BKXX)', '<p>CONVERSE X QUARTERSNACKS ONE STAR PRO OX BLACK</p><p>บล็อกที่เกิดจากฉาก Tompkins Square Park ในปี 2548 Quartersnacks ได้กลายเป็นผู้มีอำนาจต่อต้านเผด็จการในการเล่นสเก็ตบอร์ดในนครนิวยอร์กและอื่น ๆ One Star Pro ได้รับการปรับปรุงใหม่สำหรับการเล่นสเก็ตบอร์ด โดยยังคงรักษาเส้นสายของรูปทรงดั้งเดิม และนำเอางานศิลปะของ Quartersnacks แบบกำหนดเองและสัมผัสการออกแบบมาในส่วนบนจากหนังกลับระดับพรีเมียม ตั้งแต่เชือกผูกรองเท้าอ้วนและรายละเอียดหนังงู ไปจนถึงกราฟิกที่ได้แรงบันดาลใจจากนักกีฬาและหลักปฏิบัติอันเป็นเอกลักษณ์ Quartersnacks One Star Pro ยกย่องให้กับยุคอันเป็นเอกลักษณ์</p>', 5, 2, 3800, 0, '2024-03-21 00:22:14'),
(13, 'NEW BALANCE 2002R (ML2002RC)', '<p>NEW BALANCE 2002R</p><p>2002R ขอแนะนำรองเท้าวิ่งทางเทคนิคยอดนิยมจากปี 2010 อีกครั้ง โดยเสริมดีไซน์ดั้งเดิมด้วยการอัปเกรดประสิทธิภาพสมัยใหม่ อย่าเรียกว่าย้อนยุคเลย โครงสร้างส่วนบนแบบตาข่ายและหนังซูเอดถูกถ่ายทอดด้วยส่วนโค้งเพรียวบางและส่วนคัตเอาต์เพื่อลุคคลาสสิกล้ำอนาคต ประสิทธิภาพของ Stability Web และพื้นรองเท้าชั้นนอกดูดซับแรงกระแทก N-ergy พื้นรองเท้าชั้นกลาง ABZORB และระบบลดแรงกระแทกส้นเท้า ABZORB SBS มอบความสบายและประสิทธิภาพที่ไม่สามารถระบุวันที่ได้</p>', 4, 2, 5400, 0, '2024-03-21 00:25:18'),
(14, 'LMC ARCH OG SWEATSHIRT BLACK(0LM23FSW103)', '<p>380G/M CUT &amp; SEWN</p><p>ARCH OG LOGO PRINT</p><p><br></p><p>- COLOR : BLACK</p><p>- METERIAL : COTTON 100%</p>', 5, 2, 4190, 0, '2024-03-21 00:27:48'),
(15, 'CARNIVAL FW23 GOOD HEART CREWNECK CREAM', '<p>CARNIVAL FW23 GOOD HEART CREWNECK CREAM</p><p>-100% COTTON</p><p>(French terry 430G/M2)</p><p>-SILK SCREEN</p>', 10, 2, 2190, 0, '2024-03-21 13:45:19'),
(16, 'CARNIVAL X ROUND TWO SKETCH OVS T-SHIRT BLACK', '<p>CARNIVAL X ROUND TWO SKETCH OVERSIZED T-SHIRT</p><p>COLOR: BLACK</p><p>MATERIAL: 100% COTTON (200G/M2)</p>', 3, 2, 1690, 0, '2024-03-21 13:47:04'),
(17, 'CARNIVAL ROUND TWO SW LOGO CAP YELLOW', '<p>CARNIVAL X ROUND SW LOGO CAP</p><p>SIZE: OS</p>', 4, 2, 1290, 0, '2024-03-21 13:48:21'),
(19, 'เสื้อแฟนบอลอาร์เซนอลทีมเหย้า', '<p>เสื้อแฟนบอลอาร์เซนอลทีมเหย้า</p>', 9, 4, 350, 0, '2024-03-21 15:16:36'),
(20, 'เสื้อแฟนบอลเรอัลมาดริดทีมเหย้า', '<p>เสื้อแฟนบอลเรอัลมาดริดทีมเหย้า</p>', 350, 4, 350, 0, '2024-03-21 15:18:40'),
(21, 'เสื้อแฟนบอลแมนยูทีมเหย้า', '<p>เสื้อแฟนบอลแมนยูทีมเหย้า</p>', 10, 4, 350, 0, '2024-03-21 15:21:02'),
(22, 'เสื้อแฟนบอลแมนซิตี้ทีมเหย้า', '<p>เสื้อแฟนบอลแมนซิตี้ทีมเหย้า</p>', 10, 4, 350, 0, '2024-03-21 15:22:20'),
(23, 'เสื้อแฟนบอลลิเวอร์พูลทีมเหย้า', '<p>เสื้อแฟนบอลลิเวอร์พูลทีมเหย้า</p>', 10, 4, 350, 0, '2024-03-21 15:24:56'),
(24, 'Arsenal Special Edition', '<p>Arsenal Special Edition</p>', 10, 4, 400, 0, '2024-03-21 15:26:35'),
(25, 'เสื้อแฟนบอลสเปอร์ทีมเหย้า', '<p>เสื้อแฟนบอลสเปอร์ทีมเหย้า</p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">-เสื้อจริงจะมี Logo แบรนด์ที่อกซ้ายทุกตัว</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">-ผลิตจากผ้าโพลีเอสเตอร์ 100% เนื้อนิ่ม ใส่สบาย แห้งเร็ว ระบายอากาศได้ดี ไม่หดตัว</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">-สปอนเซอร์ : ทรานเฟอร์ด้วยเครื่องรีดความร้อนสูง</span></p>', 10, 4, 350, 0, '2024-03-21 21:30:48'),
(26, 'เสื้อเชียร์ทีมชาติไทย Thailand National Team Kit 2021-22', '<p>เสื้อเชียร์ทีมชาติไทย Thailand National Team Kit (Cheer Version)</p><p>ถูกออกแบบและผลิตด้วยวิธีการทอแบบ Jacquard ให้มีลายแบบเดียวกันกับชุดแข่งขันสำหรับนักเตะ (Player Version) เพื่อตอกย้ำพลังศรัทธาและการรวมใจเพื่อเป็นหนึ่งเดียวของแฟนบอลส่งผ่านเสื้อเชียร์ตัวใหม่ ผลิตโดยใช้นวัตกรรม COMBALITE โดยเป็นรุ่นที่แฟนบอลชาวไทยทุกคนสามารถจับจองเป็นเจ้าของได้ ในราคาสุดคุ้มเพียง 399 บาท</p>', 10, 4, 399, 0, '2024-03-21 21:35:52'),
(27, 'นีเวีย เอ็กซ์ตร้า ไบรท์ 10 ซูเปอร์ วิตามิน สกิน ฟู้ด บอดี้ เซรั่ม ยูธ โพรเทค 320 มล.', '<p>นีเวีย เอ็กซ์ตร้า ไบรท์ 10 ซูเปอร์ วิตามิน แอนด์ สกิน ฟู้ด บอดี้ เซรั่ม ยูธ โพรเทค เซรั่มบำรุงผิวกาย เนื้อบางเบา เพื่อผิวดูอ่อนเยาว์ อิ่มฟู ดูกระจ่างใส เรียบเนียน และดูกระชับ ใน 5 วัน สูตรผสานนวัตกรรม 10 สุดยอดวิตามินและอาหารผิว อุดมไปด้วยวิตามินซีเข้มข้น 150 เท่า ไนอาซินาไมด์ วิตามินเอ โปร-บี5 บี9 และอี พร้อม SPF15 และ คอลลาเจน โพรเทค</p><p>- วิตามินซีเข้มข้น 150 เท่า ช่วยลดเลือนจุดด่างดำฝังลึก แก้ยาก ให้ดูกระจ่างใส</p><p>- สารสกัดจากโกลเดนฟรุต (พีช ไลม์ แอปริคอต และแมงโก) อุดมไปด้วยสารแอนตี้ออกซิแดนท์ ช่วยบำรุงผิวให้ดูอ่อนเยาว์</p><p>- วิตามินซี เอ ไนอาซินาไมด์ โปร-บี5 บี9 และอี ช่วยฟื้นบำรุง ผิวที่หมองคล้ำ และแห้งกร้าน</p><p>- คอลลาเจน โพรเทค ปกป้องผิวจากแสงแดดด้วย เอสพีเอฟ 15 เมื่อเปรียบเทียบปริมาณวิตามินซีกับผลิตภัณฑ์บำรุงผิวนีเวียสูตรเก่า</p><p>ทดสอบในอาสาสมัครจำนวน 32 คน อายุ18-45 ปี เดือนมกราคม - มีนาคม 2566 โดย Spincontrol Asia Co. Ltd. ประเทศไทย ดูกระจ่างใสอย่างเป็นธรรมชาติ เครื่องสำอางไม่สามารถเปลี่ยนแปลงสีผิว ผลลัพธ์ที่ได้ขึ้นอยู่กับสภาพผิวของแต่ละบุคคล ผิวชั้นอีพิเดอร์ม', 5, 3, 259, 0, '2024-03-21 21:49:04');

-- --------------------------------------------------------

--
-- Table structure for table `product_favorite`
--

CREATE TABLE `product_favorite` (
  `u_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_favorite`
--

INSERT INTO `product_favorite` (`u_id`, `product_id`, `createtime`) VALUES
(3, 11, '2024-03-21 00:29:30'),
(2, 6, '2024-03-21 23:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `product_img`
--

CREATE TABLE `product_img` (
  `product_id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img_url` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_img`
--

INSERT INTO `product_img` (`product_id`, `weight`, `img_url`) VALUES
(2, 0, '/asset/img/product_img/1710340926-297086043_576328157526396_1070729382121748905_n.png'),
(3, 0, '/asset/img/product_img/1710341163-garenaworld2022_invitation_ticket.png'),
(4, 0, '/asset/img/product_img/1710774339-393476566_316114351139776_1006147138129732784_n.jpg'),
(5, 0, '/asset/img/product_img/1710778236-1.png'),
(1, 0, '/asset/img/product_img/1710952992-cw2288-111_3_4_1_1.png'),
(6, 0, '/asset/img/product_img/1710953384-cw2288-111_3_4_1_1.png'),
(7, 0, '/asset/img/product_img/1710954462-th-11134207-7r98w-lrfolct1xfb1d5.jpg'),
(8, 0, '/asset/img/product_img/1710954725-1391-100_2_11zon.png'),
(9, 0, '/asset/img/product_img/1710954873-aurora_fq7056-100_phsrh000-2000_11zon.png'),
(10, 0, '/asset/img/product_img/1710955086-ig5744_2_footwear_photography_side-lateral-view_white_11zon.png'),
(11, 0, '/asset/img/product_img/1710955194-hq6316_1_footwear_photography---ecommerce_side-lateral-center-view_white_1_1_11zon.png'),
(12, 0, '/asset/img/product_img/1710955334-a09555cm_s4bkxx-1_11zon.png'),
(13, 0, '/asset/img/product_img/1710955518-ml2002rc-1_1_11zon.png'),
(14, 0, '/asset/img/product_img/1710955668-0c6e5308f4588819e40e4ad3b5687ea3_11zon.png'),
(15, 0, '/asset/img/product_img/1711003519-7543_1__11zon.png'),
(16, 0, '/asset/img/product_img/1711003624-0z5a97969_11zon.png'),
(17, 0, '/asset/img/product_img/1711003701-0z5a97962_11zon.png'),
(19, 0, '/asset/img/product_img/1711008996-cn-11134207-7r98o-lnwxc9vzswi0e0.jpg'),
(20, 0, '/asset/img/product_img/1711009120-cn-11134207-7r98o-lnwxc9vqilcr4c.jpg'),
(21, 0, '/asset/img/product_img/1711009262-th-11134207-7r992-lsqoanm1fxpqa1.jpg'),
(22, 0, '/asset/img/product_img/1711009340-cn-11134207-7r98o-lqj5ucscv9y06d.jpg'),
(23, 0, '/asset/img/product_img/1711009496-sg-11134201-7qvee-liq6r339iy312e.jpg'),
(24, 0, '/asset/img/product_img/1711009595-sg-11134201-7rbl9-lox8ywygdkd3a7.jpg'),
(25, 0, '/asset/img/product_img/1711031463-a1.png'),
(26, 0, '/asset/img/product_img/1711031752-a36da5ce67c55116a1d3a293e02c2a85.jpg'),
(27, 0, '/asset/img/product_img/1711032544-zoom-side-306307_11zon.png');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `review_id` int(11) NOT NULL,
  `sub_order_id` int(11) NOT NULL,
  `star_score` int(11) NOT NULL,
  `review_msg` varchar(300) DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_review`
--

INSERT INTO `product_review` (`review_id`, `sub_order_id`, `star_score`, `review_msg`, `createtime`) VALUES
(1, 1, 5, 'กาก', '2024-03-20 22:38:17'),
(2, 2, 5, 'ใส่สบาย ราคาถูก', '2024-03-21 00:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `product_shipping`
--

CREATE TABLE `product_shipping` (
  `product_id` int(11) NOT NULL,
  `shipping_provider_id` int(11) NOT NULL,
  `shipping_price` int(11) NOT NULL,
  `shipping_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product_shipping`
--

INSERT INTO `product_shipping` (`product_id`, `shipping_provider_id`, `shipping_price`, `shipping_time`) VALUES
(1, 1, 30, '3-5'),
(6, 1, 50, '3-5'),
(7, 1, 50, '3-5'),
(8, 1, 50, '3-5'),
(9, 1, 50, '3-5'),
(10, 1, 50, '3-5'),
(11, 1, 50, '3-5'),
(12, 1, 50, '3-5'),
(13, 2, 50, '3-5'),
(14, 2, 50, '3-5'),
(15, 2, 50, '3-5'),
(16, 1, 30, '3-5'),
(16, 2, 50, '3-5'),
(17, 2, 50, '3-5'),
(19, 1, 50, '3-5'),
(20, 2, 30, '3-5'),
(21, 1, 30, '3-5'),
(22, 1, 30, '3-5'),
(23, 1, 30, '3-5'),
(24, 1, 30, '3-5'),
(25, 1, 30, '3-5'),
(25, 2, 30, '3-5'),
(26, 1, 30, '3-5'),
(27, 1, 30, '3-5');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_provider`
--

CREATE TABLE `shipping_provider` (
  `shipping_provider_id` int(11) NOT NULL,
  `shipping_name` varchar(100) NOT NULL,
  `enable` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shipping_provider`
--

INSERT INTO `shipping_provider` (`shipping_provider_id`, `shipping_name`, `enable`) VALUES
(1, 'Kerry Express', 1),
(2, 'J&T Express Thailand', 1),
(3, 'ไปรษณีย์ไทย', 1),
(4, 'Ninja Van', 1);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_description` varchar(800) NOT NULL,
  `store_img` varchar(200) DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp(),
  `store_balance` int(11) DEFAULT 0,
  `store_address` varchar(100) NOT NULL,
  `store_city` varchar(100) NOT NULL,
  `store_province` varchar(100) NOT NULL,
  `store_zip_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `u_id`, `store_name`, `store_description`, `store_img`, `createtime`, `store_balance`, `store_address`, `store_city`, `store_province`, `store_zip_code`) VALUES
(1, 1, 'del and sun', '', NULL, '2024-03-12 21:26:17', 0, '128/1 ถนน กาญจนวนิช ตำบล ท่าข้าม', 'หาดใหญ่', 'สงขลา', '90110'),
(2, 2, 'Carnival', '', '/asset/img/store_profile/1710949223-MoR7p0w__400x400.jpg', '2024-03-12 22:19:18', 9050, '151 ถนนพัง', 'หาดใหญ่', 'สงขลา', '90110'),
(3, 3, 'Trash HERO', '', '/asset/img/store_profile/1711032339-ดาวน์โหลด.png', '2024-03-21 13:55:23', 0, '856 ถนนเป็นหลุม', 'หาดใหญ่', 'สงขลา', '98741'),
(4, 4, 'FC football', '', '/asset/img/store_profile/1711009016-logo-ea-sports-fc.png.adapt.crop16x9.575p.png', '2024-03-21 14:55:53', 0, '856 ถนนเป็นหลุม', 'หาดใหญ่', 'สงขลา', '90110');

-- --------------------------------------------------------

--
-- Table structure for table `store_follower`
--

CREATE TABLE `store_follower` (
  `store_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_order`
--

CREATE TABLE `sub_order` (
  `sub_order_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub_order`
--

INSERT INTO `sub_order` (`sub_order_id`, `order_id`, `product_id`, `quantity`, `total_price`) VALUES
(1, 2, 1, 5, 400),
(2, 3, 11, 1, 9000),
(3, 4, 19, 1, 350);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` int(10) DEFAULT NULL,
  `last_notification_id` int(11) NOT NULL,
  `rank` enum('admin','user') DEFAULT 'user',
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `firstname`, `lastname`, `username`, `password`, `email`, `phone`, `last_notification_id`, `rank`, `createtime`) VALUES
(2, 'nobparut', 'phurithanasawad', 's123456', 'bcb15f821479b4d5772bd0ca866c00ad5f926e3580720659cc80d39c9d09802a', 'nobparut.p@rmutsvmail.com', 2147483647, 0, 'admin', '2024-03-12 22:17:58'),
(3, 'gusun', 'kihee', 'g123456', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'kihee@gmail.com', 456871123, 0, 'user', '2024-03-21 00:29:06'),
(4, 'cp', 'up', 'c123456', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'cpup@gmail.com', 844123456, 0, 'user', '2024-03-21 14:48:58');

-- --------------------------------------------------------

--
-- Table structure for table `user_notification`
--

CREATE TABLE `user_notification` (
  `notification_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `notification_msg` varchar(300) NOT NULL,
  `notification_url` varchar(100) DEFAULT NULL,
  `createtime` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_request`
--

CREATE TABLE `withdraw_request` (
  `withdraw_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `withdraw_balance` int(11) NOT NULL,
  `fees` int(11) NOT NULL,
  `bank_id` varchar(10) NOT NULL,
  `account_number` varchar(20) NOT NULL,
  `createtime` datetime DEFAULT current_timestamp(),
  `status` enum('pending','approve','decline') DEFAULT 'pending',
  `update_status_time` datetime DEFAULT NULL,
  `withdraw_slip` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `withdraw_request`
--

INSERT INTO `withdraw_request` (`withdraw_id`, `store_id`, `withdraw_balance`, `fees`, `bank_id`, `account_number`, `createtime`, `status`, `update_status_time`, `withdraw_slip`) VALUES
(1, 2, 107, 3, '1', '4151616', '2024-03-20 23:38:11', 'approve', '2024-03-20 23:38:36', '/asset/img/withdraw_slip/1710952716-work5_019.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `bank_withdraw`
--
ALTER TABLE `bank_withdraw`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `shipping_provider`
--
ALTER TABLE `shipping_provider`
  ADD PRIMARY KEY (`shipping_provider_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `sub_order`
--
ALTER TABLE `sub_order`
  ADD PRIMARY KEY (`sub_order_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `user_notification`
--
ALTER TABLE `user_notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  ADD PRIMARY KEY (`withdraw_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_withdraw`
--
ALTER TABLE `bank_withdraw`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_provider`
--
ALTER TABLE `shipping_provider`
  MODIFY `shipping_provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sub_order`
--
ALTER TABLE `sub_order`
  MODIFY `sub_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_notification`
--
ALTER TABLE `user_notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraw_request`
--
ALTER TABLE `withdraw_request`
  MODIFY `withdraw_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
