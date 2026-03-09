-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 05, 2024 at 12:57 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `loanzilla`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrations`
--

DROP TABLE IF EXISTS `administrations`;
CREATE TABLE IF NOT EXISTS `administrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emailid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_code` varchar(99) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(299) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int NOT NULL DEFAULT '1' COMMENT '0=Admin,1=OfficeStaff, 2=IVR-Support-Staff,3=ItStaff',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '0 = No, 1 = Yes',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0 = No, 1 = Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `administrations`
--

INSERT INTO `administrations` (`id`, `rec_date`, `fullname`, `dob`, `mobile`, `emailid`, `password`, `staff_code`, `position`, `role`, `isActive`, `isDelete`) VALUES
(1, '2023-10-12 05:03:22', 'Verloop Web', NULL, '9408881214', 'info@verloopweb.com', '$2y$12$O5K5T.v4jbfHIlrm04ZQluYDErUJx6bjua/5SC66oHxJQftoGx3HC', NULL, NULL, 0, 1, 0),
(2, '2024-05-28 10:36:40', 'Staff One', NULL, '9600000001', 'staffone@yopmail.com', '$2y$12$OhvVO8l/5/RubB5ZrN/jZ.VqQweQ8J0E9otEcYOYT9IPeho0wNKuK', '0730', NULL, 2, 1, 0),
(3, '2024-05-28 11:22:12', 'Staff Two', NULL, '9600000002', 'stafftwo@yopmail.com', '$2y$12$sNzOVHd7NFeK.f28/OK4C.chmSWLfJo/guKX.e21xptxfBZj6tDfe', '1457', NULL, 2, 1, 0),
(4, '2024-05-28 11:23:48', 'Staff Three', NULL, '9600000003', 'staffthree@yopmail.com', '$2y$12$f978/ADtrrKoNTkP3uzja.wOnZ0rnL08ZAkqIVD3W.wD0m2BNwEFi', '0791', NULL, 2, 1, 0),
(5, '2024-05-28 11:25:29', 'Staff Four', NULL, '9600000004', 'stafffour@yopmail.com', '$2y$12$vt2mwjfd.6OEmr/NqVqUMuLPXNSMKiBYjjcAvDq6Fkxj14389S4C6', '1801', NULL, 2, 1, 0),
(6, '2024-05-28 11:26:06', 'Staff Five', '1996-05-01', '9600000005', 'stafffive@yopmail.com', '$2y$12$77mPIqSCF1Ev9lt7OxmfaewtUEaaIPy4aSEWE9QIahMqP3DTx2Vv6', '8518', 'Staff', 2, 1, 0),
(7, '2024-06-10 18:04:16', 'Developer One', NULL, '9800000001', 'developerone@yopmail.com', '$2y$12$bLUxJxaf14EJErD2s9LGruphIa.Yfkh2DAdJJV9OQ4O.iyU7p4z96', '1637', NULL, 3, 1, 0),
(8, '2024-06-10 18:05:41', 'Developer Two', NULL, '9800000002', 'developertwo@yopmail.com', '$2y$12$CZfFOjDJuVbisSBG3xksSe5vstHG7/wIRl8mn0DrH1xKV0YO3zNpm', '0214', NULL, 3, 1, 0),
(9, '2024-06-11 16:30:30', 'Office One', NULL, '9900000001', 'officeone@yopmail.com', '$2y$12$wT3Gh0F1U/Y8NIbGDf8K4es8ASNAKW9Vr0oNUK6C4Qja6FzE.THRu', '2159', NULL, 1, 1, 0),
(10, '2024-06-11 16:31:25', 'Office Two', NULL, '9900000002', 'officetwo@yopmail.com', '$2y$12$kBy2n/Y1CN9k6z.CbzF53up2FRSw68JGG06Hv16zRVD7/IuNUmORS', '6037', NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bankapplylink`
--

DROP TABLE IF EXISTS `bankapplylink`;
CREATE TABLE IF NOT EXISTS `bankapplylink` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankid` int NOT NULL,
  `roi` float(10,2) DEFAULT NULL,
  `tenures` tinyint DEFAULT NULL,
  `applyurl` varchar(256) NOT NULL,
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bankapplylink`
--

INSERT INTO `bankapplylink` (`id`, `rec_date`, `bankid`, `roi`, `tenures`, `applyurl`, `isDelete`) VALUES
(1, '2024-02-26 16:32:20', 1, 12.00, 38, 'https://google.com/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

DROP TABLE IF EXISTS `banks`;
CREATE TABLE IF NOT EXISTS `banks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bank_name` varchar(100) NOT NULL,
  `bank_image` varchar(255) NOT NULL,
  `order_no` int NOT NULL DEFAULT '0',
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `rec_date`, `bank_name`, `bank_image`, `order_no`, `isActive`, `isDelete`) VALUES
(1, '2024-02-20 09:05:27', 'Moneyview', '1706270037.png', 1, 1, 0),
(2, '2024-01-26 09:47:04', 'Cashe', '1706262434.png', 2, 1, 0),
(3, '2024-03-13 10:10:36', '<script>alert(\'call\')</script>', '1710304865.jpg', 1, 1, 1),
(4, '2024-08-14 12:30:33', 'test', '1723618854.png', 5, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_response`
--

DROP TABLE IF EXISTS `bank_response`;
CREATE TABLE IF NOT EXISTS `bank_response` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `customer_id` int NOT NULL,
  `application_id` int NOT NULL,
  `bank_id` int NOT NULL,
  `bank_response` text NOT NULL,
  `response_date_time` datetime NOT NULL,
  `status` tinyint NOT NULL COMMENT '0=true, 1=false',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(225) NOT NULL,
  `title` varchar(225) NOT NULL,
  `descriptions` longtext NOT NULL,
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `rec_date`, `slug`, `title`, `descriptions`, `isActive`, `isDelete`) VALUES
(1, '2024-03-26 17:35:01', 'MF9XQ0', 'We’re Hiring Video Editor | Adajan, Surat', '<p>We&rsquo;re Hiring Video Editor | Adajan, Surat<br />\r\n<br />\r\n✅ Eligibility:<br />\r\n&bull; Min. Qualification &ndash; Graduate<br />\r\n&bull; Experience &ndash; 2 Years<br />\r\n&bull; Must be proficient in video editing tools: Adobe After Effects/Premiere Pro, Illustrator, and Photoshop.<br />\r\n<br />\r\n✅ Job Role:<br />\r\n&bull; Create motion graphic explainer videos, slideshow videos, presentation videos, informational videos, and animated social media posts and reels.<br />\r\n&bull; Collaborate with the creative team to understand the requirements and present unique concepts.<br />\r\n<br />\r\n✅ Note:<br />\r\n&bull; Final Selection depends on the candidate&rsquo;s skill &ndash; judged by the company once the interview is done.<br />\r\n<br />\r\n&bull; Job Timing &ndash; 9:30 AM to 6:30 PM (Monday to Saturday).<br />\r\n<br />\r\nShare your CV at hr@loanzilla.com&nbsp;| +91 97125 63577</p>', 1, 0),
(6, '2024-02-22 11:23:15', 'Es9hV2', 'test', '<p>test test</p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:-201px; position:absolute; top:38px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `career_enquiries`
--

DROP TABLE IF EXISTS `career_enquiries`;
CREATE TABLE IF NOT EXISTS `career_enquiries` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `applyfor` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `qualifications` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `keyskills` longtext NOT NULL,
  `city` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `server_ip` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channel_partners`
--

DROP TABLE IF EXISTS `channel_partners`;
CREATE TABLE IF NOT EXISTS `channel_partners` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime DEFAULT NULL,
  `first_name` varchar(155) NOT NULL,
  `last_name` varchar(155) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password` text NOT NULL,
  `company_code` varchar(99) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `vat_gst_no` varchar(99) DEFAULT NULL,
  `phone` varchar(99) NOT NULL,
  `website` varchar(155) NOT NULL,
  `address` longtext,
  `city` varchar(99) DEFAULT NULL,
  `state` varchar(99) DEFAULT NULL,
  `pincode` varchar(99) DEFAULT NULL,
  `country` varchar(99) NOT NULL DEFAULT 'IN',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1=active,0=deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_enquiry`
--

DROP TABLE IF EXISTS `contact_enquiry`;
CREATE TABLE IF NOT EXISTS `contact_enquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fullname` varchar(225) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `server_ip` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_services`
--

DROP TABLE IF EXISTS `enroll_services`;
CREATE TABLE IF NOT EXISTS `enroll_services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `serviceid` int NOT NULL,
  `purchase_date` date NOT NULL,
  `valid_upto` date NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `paymentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `serviceid` (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `info_pages`
--

DROP TABLE IF EXISTS `info_pages`;
CREATE TABLE IF NOT EXISTS `info_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `rec_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `info_pages`
--

INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`) VALUES
(1, 'privacy-policy', '<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">The privacy of every user of Loanzilla is important for the company. This Privacy Policy mentions the data and information we collect about you, how we treat it, with whom we share it, and how we preserve and protect it.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">In the regular course of our business through this website, we gather your personal information through several sources, including:</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Information from you, such as applications or other sources which includes your name, address, marital status, employment, assets and income; and</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, and other financial services firms, banks, etc.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We&#39;re also dedicated to protecting the users of our website by addressing potential privacy concerns. Our privacy guidelines apply to all users globally. This policy applies to all information, in whatever form, relating to Loanzilla&rsquo;s business activities across the world, and to all information handled by Loanzilla, relating to other companies and organizations with whom it deals. It also covers all IT and information communications facilities operated by Loanzilla or on its behalf.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">This Privacy Policy covers the security, information, IT equipment and use of Loanzilla, a company incorporated under the laws, presently in force in India and has its registered office at 128, Green Elina, 1st Floor, Anand Mahal Road, Adajan, Surat, Gujarat, India - 395009 and all its affiliates. It also includes the use of email, internet, voice and mobile IT equipment. This policy applies to all Loanzilla Users, Clients, and employees (hereafter referred to as &lsquo;individuals&#39;).</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Subject to arbitration, only the courts and tribunals of Surat, Gujarat, shall have exclusive jurisdiction with respect to any suit, action or any other proceedings arising out of or in relation to the Loan Documents. Nothing contained in this clause shall limit any right of the Lender to commence any legal action or proceedings arising in relation to the Loan or the Loan Documents in any other court, tribunal or another appropriate forum, competent jurisdiction and the Borrower and/or the Guarantor hereby consent to that jurisdiction.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">How Loanzilla treats, manages, and protects Your Personal Information:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Loanzilla doesn&rsquo;t sell or trade information about current or former clients to third parties. </span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We may disclose your personal information as necessary to:</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Effect, administer, or enforce a transaction that you request or authorize;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Process or service a financial product or service that you request or authorize; or</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Maintain or service your account with us or with another entity.</span></span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Loanzilla may also disclose your personal information and data for everyday business purposes to organizations or firms who provide consulting, technology or other services for us and agree to maintain its confidentiality; others, such as attorneys, trustees, family members, or others who are authorized to represent you, your estate, or a joint or co-owner of your account; regulatory agencies; or as we are otherwise permitted or required by law or process of law.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Loanzilla restricts access to your personal information to our employees and to permitted third-parties who need to know that information to provide products or services for us, or to provide, process, or maintain any security, account, or investment product, service or program for you or your benefit. To protect your personal information from unauthorized access and use, we have adopted administrative, technical, and physical security procedures that comply with the Laws in India. These measures include computer safeguards and secured files and buildings.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">What Loanzilla can do with your personal information:</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We may use your personal information that we collect, or that is provided to us, for the following reasons:</span></span></span></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Considering any application for an account or service;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Carrying out our business functions and activities;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Collecting amounts you owe us, including taking enforcement action;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Exercising our rights and fulfilling our obligations under any agreement with you;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Exercising our rights and fulfilling our obligations for the purposes of complying with all applicable laws, including those relating to money laundering, terrorist financing, bribery, corruption, tax evasion, fraud and similar; and managing all economic and trade sanction risks;</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Generally administering and monitoring services provided to you (or any related entity); and</span></span></span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Providing you with information about our other services, or the services of selected third parties in which we think you may have an interest, including by post, telephone and electronic message &ndash; you can opt-out of receiving information about our other services and/or the services of selected third parties by informing us in writing.</span></span></span></span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Giving Personal Information to Third Parties:</span></span></span></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Loanzilla does not sell, trade, or otherwise transfer to outside parties your personally identifiable information. This does not include trusted third parties who assist us in operating our website, conducting our business, or servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect our or others&#39; rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses</span></span></span></span></p>\r\n\r\n<p><strong><span style=\"font-size:20px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Security and Confidentiality:</span></span></span></span></strong></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">The protection and security of your personal information are important to us. We generally follow industry-standard information security tools and measures, as well as internal procedures and strict guidelines to prevent information submitted to us, both during transmission and once we receive it from misuse and data leakage. No method of transmission over the internet, or method of electronic storage, is 100% secure, however. Therefore, while we strive to use commercially acceptable means to protect your personal information, which considerably reduces the risks of data misuse, we cannot guarantee its absolute security. To notify the Company about any security vulnerability or potential data&nbsp;breach, please contact us at: info@loanzilla.com and we will take the appropriate measures to address such an incident, as deemed necessary.Our employees can access the information on a &quot;need-to-know&quot; basis and are subject to confidentiality obligations.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">DATA ACCURACY</span></span></span></strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Personal Data must be accurate and, where necessary, kept up to date. It must be corrected or deleted without delay when inaccurate. It is advisable that you ensure that the Personal Data we use and hold is accurate, complete, kept up to date and relevant to the purpose for which we collected it. You must check the accuracy of any Personal Data at the point of collection and at regular intervals afterwards. You must take all reasonable steps to destroy or amend inaccurate or out-of-date Personal Data.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">LIMIT OF LIABILITY</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We shall not be liable for any confusion caused as a result of any of your actions or omission of any action, anything as a result of your viewing, reading or listening of any content. Although we will do our best to provide constant, uninterrupted access to our website, we accept no responsibility or liability for any interruption or delay.</span></span><br />\r\n<span dir=\"LTR\"><span style=\"font-family:Arial\">In no event will our total liability to you for all damages arising from your use of the service or information, materials or products included on or otherwise made available to you through the service exceed the amount you paid for the service related to your claim.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We have no liability for any loss, damage or misappropriation of your files under any circumstances or for any consequences related to changes, restrictions, suspension or termination of your service or the agreement. These liabilities shall apply to you even if their remedies shall fail their essential purpose.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">USAGE OF ADVERTISING ID</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">When you are using our application that incorporates our Services, we may also automatically record your Google and/or any other Advertising ID (if you are using an Android device) or your Advertising Identifier (IDFA - if you are using an IOS device; together with the Google and/or any other Advertising ID-&quot;Mobile Advertising IDs&quot;), for advertising or analytics purposes. The said Advertising ID is an anonymous identifier, provided by Google. If your device has an Advertising ID, we may collect and use it for advertising and user analytics purposes. If your device does not have an Advertising ID, we may use other persistent identifiers. The information collected may also be stored on your device. You can reset your mobile Advertising ID or opt-out of receiving targeted ads through your mobile Advertising IDs which are provided in our settings.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">COMPLIANCE &amp; COOPERATION WITH REGULATORS</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:11pt\"><span style=\"font-family:Arial\"><span dir=\"LTR\" style=\"font-size:11.0000pt\"><span style=\"font-family:Arial\">We regularly review this Privacy Policy and make sure that we process your personal information in ways that comply with regulations currently in force in India. We firmly comply with legal frameworks including data protection laws relating to the transfer of data.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">CONSENT</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">By using our website, you consent to our website&#39;s Privacy Policy. The usage of the website shall be construed as an acceptance of the Privacy Policy.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">GRIEVANCES</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">For any complaints and/or inquiries, you can send us formal written inquiries or complaints at info@loanzilla.com. All inquiries and/or complaints shall be examined and will be resolved expeditiously. Our team of experts will respond by contacting the person who made such inquiries and/or complaints. We work with the appropriate regulatory authorities, including local data protection authorities, to resolve any complaints regarding the transfer of your data that we cannot resolve with you directly.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">MODIFICATION OF THE POLICY</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">We reserve the right to modify this Privacy Policy at our own independent decision at any time. If the changes are significant, the Company shall spare no efforts to apprise its clientele and provide a prominent notice (including, for certain services, email notification of Privacy Policy changes). It is pertinent to remember that it shall be the Clients&#39; responsibility to read the Policy as amended every once in a while.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:20px\"><strong><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">USAGE OF COOKIES/COOKIES POLICY</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future visits, keep track of advertisements and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</span></span></span></span></p>', '2024-01-26 12:27:05');
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`) VALUES
(2, 'terms-conditions', '<p><span style=\"font-size:16px\">In these Terms &amp; Conditions, the words such as &ldquo;we&rdquo;, &ldquo;our&rdquo;, &ldquo;company&rdquo;, and &ldquo;us&rdquo; refer to Loanzilla and its undertaken system. And the words such as &ldquo;you&rdquo;, &ldquo;your&rdquo; refer to Loanzilla users, customers, associate partners, etc.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Here are the terms and conditions for Customers, Employees, and every user of our website - www.loanzilla.com. So, the terms and conditions are applied as per your role. You must read all the below-mentioned Terms &amp; Conditions carefully.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">The Company wishes to offer the services under the terms and conditions set forth and the user/customer wishes to be associated unconditionally with these terms and conditions.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Therefore, in consideration of the agreements contained in this, the parties, intending to be legally bound, agree to the correctness and authenticity of the following details given to the company:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\">Information from you, such as applications or other forms (which include your name, address, marital status, employment, assets and income); and</span></li>\r\n	<li><span style=\"font-size:16px\">Information about you, your accounts, and your holdings and transactions that we receive from you or others, such as account custodians, brokers, and other financial services firms, banks, etc.</span></li>\r\n</ul>\r\n\r\n<p><span style=\"font-size:16px\">If the company by any source finds out anyone bad-mouthing or defaming the company&#39;s reputation or company&#39;s members then strict legal action will be taken against the individual or group.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">We&#39;re also serious about protecting our users by addressing potential privacy concerns. Our terms and condition guidelines apply to all users across the world. These terms and conditions apply to all information, in whatever form, relating to Loanzilla&#39;s business activities worldwide, and to all information handled by Loanzilla, relating to other organizations with whom it deals. It also covers all IT and information communications facilities operated by Loanzilla or on its behalf.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>I M P O R T A N T &nbsp;&nbsp;C L A R I F I C A T I O N</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Loanzilla is not any NBFC (Non-Banking Financial Company). Loanzilla only offers consultation &amp; mediation services &ndash; meaning, Loanzilla has tie-ups with NBFCs; Loanzilla provides the service of submitting the customer file to the partnered NBFCs.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">LOAN DISBURSEMENT IS DONE BY NBFC ONLY &ndash; we only provide consultation and service to customers who have purchased our subscription plan. Loanzilla does not play any part in loan disbursement or repayment.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Once the customer file is submitted from our end, the following process will be solely between the customer and the NBFC(s).</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>OTP, DOCUMENTS &amp; CYBER SECURITY:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">1. The company only charges the Subscription Plan fees as per the amount mentioned on our website. No other fee/amount is charged from the customer by the company.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">2. The company&rsquo;s ONLY Customer Care number is <strong><a href=\"tel:+919724206519\">+91 97242&nbsp;06519</a></strong>&nbsp;and the official email IDs of the company are only the ones that have loanzilla.com as the domain. If you come across any other contact number/email from different domains claiming to be our company&rsquo;s customer care/team member, it might be a fraud.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">3. The company asks for OTP, documents, and cheques from the customer for file processing only and the company never misuses them. If anyone/company executive asks for your transaction/payment OTP or Debit/Credit/UPI/QR code/Online Banking OTP (or any other transactional OTP), then you must NOT share it. If the customer pays any charges other than the charge of the Subscription Plan, the company won&rsquo;t be responsible for any sort of loss faced by you. Just for security, after completing the loan process, the customer can go to the concerned bank and cancel their cheque. The company is not responsible if any problems/disputes arise in the future.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">4. If any customer data &amp; information, KYC documents, or OTP is misused at any point of time by any third-party &ndash; our company and its directors, employees, or associate partners, cannot be held responsible for the same in any matter whatsoever including any loss, harm, or damage faced by the customer/user. Customers are advised to bring in their own discretion in such matters. The information provided on the website is of a financial nature. It is a mutual understanding that customers&#39; association with the website will be at the customers&rsquo; will, preference and risk.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">5. The customers/users should be aware that Loanzilla only charges the fees of Subscription Plan whose payments are solely processed through its official domain https://loanzilla.com/. Any other third-party source (social media/emails/phone calls/websites) trying to solicit payments from the customers/users in the name of Loanzilla (or claiming to be Loanzilla&rsquo;s representative) is attempting defrauding.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">The above-stated points are for the benefit and awareness of our customers/website visitors. Still, if anyone faces any sort of loss by not following the above-mentioned points, our company cannot be held responsible/liable.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">If you have any confusion regarding the above-mentioned points, kindly call on the company&rsquo;s customer care number &ndash; <strong><a href=\"tel:+919724206519\">+91 97242&nbsp;06519</a></strong></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>SUBSCRIPTION PLAN TERMS AND CONDITIONS:</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\">The payment of Subscription Plan fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</span></li>\r\n	<li><span style=\"font-size:16px\">Loanzilla Subscription Plan is not transferable and is only valid up to its date of expiry (valid as per plan) and the plan may not be used by any person other than the purchaser.</span></li>\r\n	<li><span style=\"font-size:16px\">Renewal terms and conditions are at the discretion of Loanzilla.</span></li>\r\n	<li><span style=\"font-size:16px\">The Subscription Plan can only be used on/for our website.</span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong>CUSTOMER TERMS AND CONDITIONS:</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\">The payment of Subscription Plan fees is refundable only in accordance with the company&#39;s Cancellation &amp; Refund Policy.</span></li>\r\n	<li><span style=\"font-size:16px\">The company only takes the cost of the Subscription Plan. No other tip of service is charged.</span></li>\r\n	<li><span style=\"font-size:16px\">Customers can use the Subscription Plan only for loan purposes with given benefits. Also, buying a Subscription Plan lets you apply for a loan and it doesn&quot;t guarantee loan approval as the final loan approval depends on the banks and the customer profile. If the loan is rejected, you can still avail other benefits of the Subscription Plan.</span></li>\r\n	<li><span style=\"font-size:16px\">If a customer is viewing any advertisement/promotional content of the company and then approaching the company thinking that he/she will get the loan approval based on the advertisement, then it must be noted that a loan application will only be submitted once the customer buys Loanzilla Subscription Plan. Even after buying the Subscription Plan, the final loan approval depends on the bank(s) and customer profile. If the customer&quot;s profile doesn&rsquo;t match loan eligibility criteria, he/she won&rsquo;t be able to get a loan. Still, they can avail other benefits of the Subscription Plan.</span></li>\r\n	<li><span style=\"font-size:16px\">Subscription Plan can be used only by the persons who have purchased it and not by any other person(s), source or third party.</span></li>\r\n	<li><span style=\"font-size:16px\">If a customer reference does payment through the customer&#39;s own referral link which is provided by the company and if that shows in the customer&#39;s portal then the only company will give the reference payout of that customer.</span></li>\r\n	<li><span style=\"font-size:16px\">If the customer loan is approved in our company and he/she denies that loan approval then also Subscription Plan payment would not be refundable.</span></li>\r\n	<li><span style=\"font-size:16px\">If you do not give the OTP, documents, or document query for verification to the company&#39;s employee for the loan process, then your file will be rejected. (According to the criteria, if your file matches without OTP, your loan will be processed).</span></li>\r\n	<li><span style=\"font-size:16px\">If a customer has any queries regarding the loan process then he/she would have to contact that department where their files are in process.</span></li>\r\n	<li><span style=\"font-size:16px\">We will verify your documents in multiple banks; so whatever documents are submitted by customers in our company that will match with any bank criteria, in that bank only we will proceed with the loan process. (For example, if your file will match in 2 banks then our company&#39;s login department will log in your document only on that 2 banks. The verification is done by the company&#39;s employee and there is no proof available for the same.</span></li>\r\n	<li><span style=\"font-size:16px\">The document will be verified by the company in multiple banks. If your documents match the criteria of the bank, then the login process will be done in that bank. If your documents do not match the criteria of a bank, the company will give you a solution. You can take the solution and reapply after a certain period (as per plan) - and this will be shown on the customer portal.</span></li>\r\n	<li><span style=\"font-size:16px\">It is not fixed that the customer file will be logged in only in the banks listed on the company website. It may be logged in/verified in other banks also, depending on the customer file.</span></li>\r\n	<li><span style=\"font-size:16px\">Our company is not taking extra charges other than Subscription Plan charges. If any third-party charges you then our company is not responsible for that.</span></li>\r\n	<li><span style=\"font-size:16px\">There are no processing or file charges for customer loan approval. There is only one charge and that&#39;s only for the Subscription Plan - validity as per plan.</span></li>\r\n	<li><span style=\"font-size:16px\">Our company will log in customer files as per their requirements. (Example: If customer requirement is INR 1 lakh and if some bank criteria is up to INR 50,000 then we will not log in their file in that bank).</span></li>\r\n	<li><span style=\"font-size:16px\">Wherever the customer file is logged in by the company, these details will not be given to any customer in written or digital form.</span></li>\r\n	<li><span style=\"font-size:16px\">Loan offers and the pre-approval loans process depend only on the bank&#39;s rules and that type of loan is given only on customer behaviour. So, there is so much difference between that type of process and the company&#39;s process. If that loan is rejected in our company but gets approved by another company/source then the customer can&#39;t blame our company.</span></li>\r\n	<li><span style=\"font-size:16px\">Loan approval depends on your profile so if your documents are perfect and as per the bank criteria then you will get a loan through our company.</span></li>\r\n	<li><span style=\"font-size:16px\">The loan information is only given to the person who has applied for the loan.</span></li>\r\n	<li><span style=\"font-size:16px\">During the loan processing time, if any customer would not be in contact with us for 3 days, then that file will be rejected by our company.</span></li>\r\n	<li><span style=\"font-size:16px\">If your file is rejected in our company, then the customer has to make sure that they have to re-submit their documents, with the implemented company-suggested solution, in our company after a certain period (as per plan).</span></li>\r\n	<li><span style=\"font-size:16px\">The company is not responsible if the customer loan is rejected by any queries.</span></li>\r\n	<li><span style=\"font-size:16px\">If the customer will apply for the first time but his/her loan is rejected in our company then the company will give them a reason and solution for that. So at re-applying time if the customer will not resubmit a file with the solution implemented then the file will be again rejected in our company for the same reason. Still, the final loan approval will depend on the customer profile and the bank&#39;s criteria and rules &amp; regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">The company will provide only the reason for rejection to the customer and it would not be provided in the form of hard or soft copy - it will only be shown in the customer portal. Some banks only provide general reasons, they don&#39;t give us any specific reason so the customer should not complain about that.</span></li>\r\n	<li><span style=\"font-size:16px\">The customer has to give correct information about their CIBIL SCORE and PROFILE. If the customer gives wrong information, then the company will not be responsible for loan rejection.</span></li>\r\n	<li><span style=\"font-size:16px\">The company will not be providing any CIBIL REPORT in digital or hard copy to any customer in any situation.</span></li>\r\n	<li><span style=\"font-size:16px\">Bank charges are applicable as per banks&#39; rules and regulations.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">The company will take legal action against the customer who submitted fake documents. And the company won&quot;t take any responsibility for the loan process in this case.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">After the customer&rsquo;s file is logged in, the customer has to contact only the login department and coordinate with them &ndash; not any telecaller or other department of the company. The further process has to be done according to the login department.</span></li>\r\n	<li><span style=\"font-size:16px\">During the loan process if the rules of any bank change, then we have to follow those new rules.</span></li>\r\n	<li><span style=\"font-size:16px\">The customer has to give their registered phone number for being contacted by the login department.</span></li>\r\n	<li><span style=\"font-size:16px\">During the loan processing time, if the company gets any queries and it is not solving that in the given time, then the company has the authority to take more time to address the query. So, the customer must not complain about the same.</span></li>\r\n	<li><span style=\"font-size:16px\">If the customer wants to reapply in our company after file rejection or approval, then he/she has to re-submit their documents in the customer portal.</span></li>\r\n	<li><span style=\"font-size:16px\">When you are applying for a loan on our website, we are showing you only your Eligibility for the loan. So whatever details you enter on the website are accepted by software only, and that only shows your pre-approval and not your final loan approval. Approval only depends on your documents and the banks&#39; rules and regulations. We are not giving you any guarantee for the final loan approval.</span></li>\r\n	<li><span style=\"font-size:16px\">All the detailed criteria, terms, and information behind any of the company&quot;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&rsquo;s services. If any person has confusion, they can call on the company&quot;s customer care number to gain clarity before availing company&rsquo;s services.</span></li>\r\n	<li><span style=\"font-size:16px\">The customer&#39;s payment is executed by third-party payment sources. So whenever payment would be received by the company then only a Subscription Plan will be activated for the customer. If a customer&#39;s payment would be debited from his/her account but we don&#39;t receive any payment in the company&#39;s account then the company will not be responsible for that.</span></li>\r\n	<li><span style=\"font-size:16px\">For any reference customer&#39;s payout, their account verification is compulsory. After verification, if the payout amount is debited from the company&rsquo;s account and if it does not credit/reflect in the reference customer&rsquo;s account &ndash; the company won&quot;t be responsible for this issue.</span></li>\r\n	<li><span style=\"font-size:16px\">Our company is a private limited company and we are tied up with banks and corporate DSA. We are providing loans through banks only.</span></li>\r\n	<li><span style=\"font-size:16px\">Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">If anyone takes any legal action against the company then only our legal advisor would be dealing with that and Surat, Gujarat will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</span></li>\r\n	<li><span style=\"font-size:16px\">The eligibility age for buying a Subscription Plan is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription Plan.</span></li>\r\n	<li><span style=\"font-size:16px\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</span></li>\r\n	<li><span style=\"font-size:16px\">Every reference payout will have a deduction of 5% TDS.</span></li>\r\n	<li><span style=\"font-size:16px\">For the loan process, the company will only coordinate with the person who has purchased the Subscription Plan and has an ongoing loan process &ndash; the company won&rsquo;t coordinate with any third party.</span></li>\r\n	<li><span style=\"font-size:16px\">Every bank payout will have tax deductions as per the bank&quot;s rules and regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&quot;s terms and conditions and has to accept them unconditionally.</span></li>\r\n	<li><span style=\"font-size:16px\">The company will provide the appropriate loan services but the responsibility of customer handling will be of the reference customer.</span></li>\r\n	<li><span style=\"font-size:16px\">If any bank&#39;s rules or company&#39;s rules are changing during the processing time of the loan then the customer has to follow those new rules.</span></li>\r\n	<li><span style=\"font-size:16px\">The office holidays and bank holidays will not be counted as working days/business days. The company&quot;s office work will be done on working days only.</span></li>\r\n	<li><span style=\"font-size:16px\">Our promotional content may communicate messages like &#39;Get Personal Loan in 30 mins&#39; or &#39;Get Rs.5,00,000 in 5 mins&#39; on our company&rsquo;s social media, blogs/articles, ads, websites, emails, SMS, or any other medium &ndash; it must be carefully noted that these messages are only meant for marketing and promotional purposes. All the numerical values that depict time/number of steps/number of clicks &ndash; are for marketing and promotional purposes only. The final loan approval and process depend on the customer profile and the bank/NBFCs&rsquo; rules, regulations and criteria. If you have any sort of doubt before starting the process, you can call our customer care number (10 am to 5 pm &ndash; Monday to Saturday).</span></li>\r\n	<li><span style=\"font-size:16px\">As per the details/information entered by the user, even if the actual pre-approved amount is lesser than 2 Lakhs, the pre-approved amount shown on the website will be Rs.2 Lakhs (minimum). And, even if the actual pre-approved amount is more than 8.5 Lakhs, the pre-approved amount shown on the website will be Rs.8.5 Lakhs (maximum). The pre-approved amount/pre-approved loan offers are tentative &ndash; the final loan approval, loan sanction, and disbursement depend on the customer profile and the NBFCs&rsquo; rules and regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">The first login of the customer&rsquo;s file will be handled and executed by the company. To avail the reapplying option, the customer will have to perform the self-login(s).</span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong>REFERENCE TERMS AND CONDITIONS:</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\">Reference payout would be given to reference customers as per rules and regulations of our company.</span></li>\r\n	<li><span style=\"font-size:16px\">Our company will give payout only on Subscription Plan; it does not depend on the reference customer&#39;s loan approval or rejection.</span></li>\r\n	<li><span style=\"font-size:16px\">Whether the customer loan will be approved or not depends on the customer profile and the company does not give any guarantee for that.</span></li>\r\n	<li><span style=\"font-size:16px\">If customers are giving a reference in our company for loan purposes, for that we have some criteria. The customer has to give a reference based on that criteria. The company is not giving you any type of guarantee for the loan approval in any situation at any cost so customers who give a reference have to agree with the decision of that file&#39;s login department.</span></li>\r\n	<li><span style=\"font-size:16px\">The company will take legal action against the reference partner/customer who submitted fake documents. And the company won&quot;t take any responsibility for the loan process in this case.</span></li>\r\n	<li><span style=\"font-size:16px\">The Customer&#39;s terms and conditions are also applicable to the reference person&#39;s customers.</span></li>\r\n	<li><span style=\"font-size:16px\">Reference customer&#39;s payment is done through third-party payment sources. So whenever payment would be received by the company then only the Subscription Plan will be activated. If the customer&#39;s payment is debited from his/her account but the company doesn&#39;t receive any payment in the company&#39;s account then the company will not be responsible for any queries.</span></li>\r\n	<li><span style=\"font-size:16px\">During loan offers, if any reference person will do the online loan process then the company will give the payout up to 60% per Subscription Plan to the reference person. But before that, invoice generation is most important for any payout process.</span></li>\r\n	<li><span style=\"font-size:16px\">If the customer of reference will do an online process then the customer&#39;s payout will be given to the referral partner. But during processing time, if the company would refund that amount to the customer for any reason, then that customer&#39;s payout will be cut out from the reference person&#39;s next payout.</span></li>\r\n	<li><span style=\"font-size:16px\">Whatever documents are submitted by a reference person, they will be secure in our company. If documents will be misused by any other sources in future then our company is not responsible for that.</span></li>\r\n	<li><span style=\"font-size:16px\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customer will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</span></li>\r\n	<li><span style=\"font-size:16px\">If anyone takes any legal action against the company then only our legal advisor would be dealing with that and Surat, Gujarat remains the only junction for any legal procedure. No one can contact any employee or director of our company.</span></li>\r\n	<li><span style=\"font-size:16px\">If any person has a doubt/question regarding any of the company&quot;s terms and conditions, they can contact the company.</span></li>\r\n	<li><span style=\"font-size:16px\">Every reference payout will have a deduction of 5% TDS.</span></li>\r\n	<li><span style=\"font-size:16px\">The office holidays and bank holidays will not be counted as working days/business days. The company&quot;s office work will be done on working days only.</span></li>\r\n	<li><span style=\"font-size:16px\">The Company will have no responsibility for the promotions conducted and undertaken by the Customer Reference. The Customer Reference agrees that the promotions done by them are at their own risk, and the Customer Reference cannot hold the Company responsible for any sort of losses faced due to the promotions.</span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong>GENERAL TERMS AND CONDITIONS:</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\">If the login department fails to solve the customer queries with accuracy, dedication and responsibility, then the login department agency will be cancelled by the company.</span></li>\r\n	<li><span style=\"font-size:16px\">The Customer&#39;s loan process will take more days due to any festival.</span></li>\r\n	<li><span style=\"font-size:16px\">If anyone has GST then they have to add the GST number in their portal so that the company can provide a GST Return to them. If you haven&rsquo;t received your GST Return &ndash; you can raise a request or call on company&rsquo;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</span></li>\r\n	<li><span style=\"font-size:16px\">The Company is using Blogs for their advertising, so that content could be of the third party, so the company doesn&#39;t take guarantee of the information to be correct or incorrect.</span></li>\r\n	<li><span style=\"font-size:16px\">If customers, employees, any other person, or any other party has a problem with the company then they have to inform that problem to our company through notice; so, we can try to give you a solution of that but after that, any of them want to take a legal action then they have to inform the company through notice. Only then, the legal process will be started.</span></li>\r\n	<li><span style=\"font-size:16px\">If customers, employees, any other person, any other third party has a problem/dispute/misunderstanding with the company, the right to take the final decision over the concerned issue is reserved with the company and the concerned person will have to accept the solution provided by the company.</span></li>\r\n	<li><span style=\"font-size:16px\">The documents, cheques, and OTP that the company&#39;s employee asks the customer are for the processing of the loan, the company is not responsible if any problems/disputes arise in the future.</span></li>\r\n	<li><span style=\"font-size:16px\">During any process on the website, if there is any kind of mistake that happens due to the software or website technical problems, the final decision on such disputes can only be taken by the company and it has to be accepted by anyone concerned.</span></li>\r\n	<li><span style=\"font-size:16px\">The Company&#39;s authorized person can change any rules and regulations at any time; the concerned person must be regularly updated with the company&quot;s terms and conditions and has to accept them unconditionally.</span></li>\r\n	<li><span style=\"font-size:16px\">All the commitments made by the company&quot;s employees (any employee/person from the company), telecallers, or salespersons, etc. should be cross-checked by any concerned person (customer) from the Terms &amp; Conditions section of loanzilla.com before availing any of the company&quot;s services. Only the rules and regulations stated on the company website will be considered official.</span></li>\r\n	<li><span style=\"font-size:16px\">All the detailed criteria, terms, and information behind any of the company&quot;s concise promotional content (social media ads, banners, SMS, advertisements, emails, etc.) are stated in the Terms &amp; Conditions and Privacy Policy sections of&nbsp;the website. Any concerned person (customer, employee, etc.) must check and accept all the rules and regulations before availing any of the company&quot;s services. If any person has confusion, they can call on the company&quot;s customer care number to gain clarity before availing company&quot;s services.</span></li>\r\n	<li><span style=\"font-size:16px\">If any Customer Referral&rsquo;s customer gets a refund (due to any dispute like payment gateway problem or any other issue) then the referral payout will not be provided (if provided, it would be deducted from the next payout of the customer referral).</span></li>\r\n	<li><span style=\"font-size:16px\">While generating the payout for Customer Referrals, the company uses a third-party payment gateway. So, if the payout is stuck and put on hold due to any payment gateway issue (or any other issue), then the payout would be delayed and all the terms and conditions of the third-party payment gateway would be applied. In such cases, the payout will be released only when the third-party payment gateway releases the stuck payment. In case of a payout dispute with any bank, the bank&rsquo;s criteria will be applied and the payout will be released only when the bank approves the payment.</span></li>\r\n	<li><span style=\"font-size:16px\">If there is any dispute that arises between any concerned user ( customer, customer referral, etc.) and the company, their account will be disabled immediately by the company. In such a case, the user would be needed to contact the company for any query.</span></li>\r\n	<li><span style=\"font-size:16px\">All of the promotional content put and shared by the company, either on its website or any platform, is only for advertisement purposes. Any person should not assume it as the final loan approval or details of the loan. The final loan approval and specifics of the loan depend on the rules and regulations of various banks (or the concerned bank) and the customer profile. Every customer, or any other user must accept this clause and consider the bank&quot;s loan processing time only.</span></li>\r\n	<li><span style=\"font-size:16px\">The loan-related figures, rates, and information used in the promotional content of the company are general and for promotional purposes. The final nature and specifics of the loan in terms of the loan amount, interest rate, repayment tenure, loan processing fees, loan insurance, etc., depends solely on the customer profile and the rules and regulations stated by the concerned bank. The final loan details depend on the criteria set by the concerned bank(s).</span></li>\r\n	<li><span style=\"font-size:16px\">Loanzilla&#39;s company name, logo, content, business concept, software and system, pattern, website structure and design, and business process and offers are copyrighted with the company. If any individual or organization uses/copies any of the above-mentioned by even 1%, legal action may be taken against them.</span></li>\r\n	<li><span style=\"font-size:16px\">If any person (customer, employee, etc.) is involved in any of the company&#39;s processes then the company is authorized to record the phone calls with that person.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">If any customer applies for a loan in our company and if any other external person/organization commits fraud with that customer in terms of taking money from you or in any other way then, it will not be the company&quot;s responsibility for any kind of loss faced by the customer.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">Whatever loan offer is given to the customer is according to the customer profile. The customer will have to compulsorily accept the loan offer &ndash; he/she cannot deny the loan offer.</span></li>\r\n	<li><span style=\"font-size:16px\">The company has full authority to use the customer&quot;s information for purposes such as testimonials, advertisements, marketing, SMS, etc. The customer agrees that regulations of Do Not Disturb(DND)/National Do Not Call(NDNC) won&quot;t be applied in such practices.</span></li>\r\n	<li><span style=\"font-size:16px\">If any person (user, customer, etc.) visits our website and indulges in any activity &ndash; like clicking a button, link, filling forms, or any other activity on the website, it will clearly mean and express that the person agrees to and acknowledges all terms &amp; conditions, rules &amp; regulations, and policies of the company.</span></li>\r\n	<li><span style=\"font-size:16px\">After the loan approval, the bank charges will be applied as per the bank&quot;s rules and regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">No customer can contact the bank&rsquo;s employees to inquire about/get any information on the loan file processes.</span></li>\r\n	<li><span style=\"font-size:16px\">The customer, whose loan has been approved, must read and understand the bank agreement and the bank&rsquo;s terms and conditions carefully. After the loan process is done, the company can&rsquo;t be held responsible or liable for anything.</span></li>\r\n	<li><span style=\"font-size:16px\">The company will take legal action against the customer, reference customer, or any other person who submitted fake documents. And the company won&#39;t take any responsibility for the loan process in this case.</span></li>\r\n	<li><span style=\"font-size:16px\">Multiple partnered banks&#39; logos are shown on our website and our promotional content across many mediums &ndash; these are shown only for our company&#39;s marketing purpose. It might be possible that certain banks, whose logos are shown on our website/promotional content, are not partnered with our company. Also, these should not be assumed as any bank&#39;s advertisement.</span></li>\r\n	<li><span style=\"font-size:16px\">If anyone takes any legal action against the company then only our legal advisor would be dealing with that and Surat, Gujarat will only remain the junction for any legal procedure. No one would be able to contact any employee or director of our company.</span></li>\r\n	<li><span style=\"font-size:16px\">Any wrong/fake commitment or vocal statement given by the company&quot;s employees, etc. would be considered invalid. Only the solutions or solution-related vocal statements would be considered valid. All the company&rsquo;s Terms &amp; Conditions, Privacy Policy, Disclaimer, all other rules will be final and have to be followed.</span></li>\r\n	<li><span style=\"font-size:16px\">If any person has a doubt/question regarding any of the company&rsquo;s terms and conditions, they can contact the company.</span></li>\r\n	<li><span style=\"font-size:16px\">The office holidays and bank holidays will not be counted as working days/business days. The company&rsquo;s office work will be done on working days only.</span></li>\r\n	<li><span style=\"font-size:16px\">Loan processing time might get delayed because of any public holiday, technical problems, customer issues, etc.</span></li>\r\n	<li><span style=\"font-size:16px\">The Company will not be providing any proof for rejection in hard or soft copy.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">It might be possible that the content/figures/information shown on our website are not updated. So, to get the exact information regarding any of our website&quot;s content, Terms &amp; Conditions, Privacy Policy, Disclaimer, etc., you can call on our customer care number.</span></p>\r\n	</li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">After the purchase of the Subscription Plan, the Company Executive will call the concerned person within 24-48 hours (it could be delayed due to any reason) for the loan process or partner process. If the concerned person doesn&rsquo;t get a call, they can call on the company&rsquo;s customer care number.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">If the login process is going on and there has been no response from the login department, then the customer can call on the company&rsquo;s customer care number.</span></li>\r\n	<li><span style=\"font-size:16px\">The content and any process on the website can be changed or modified at any instance. So, the older version of the content and process won&quot;t be functional, valid, or a subject of argument for any person &ndash; and the customers, users, etc. have to stay timely updated and accept all the changes unconditionally. Only the current content and process of the website will be considered valid.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">The general criteria to apply for a business loan by a small business person are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); and Business Stability proof available (min. 1 year). Final loan approval completely depends on the customer profile and the bank&rsquo;s rules and criteria.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">By accessing our website, you affirm your age as 18 years or more. If you&quot;re someone below 18 years, we advise you not to access our website or the services.</span></li>\r\n	<li><span style=\"font-size:16px\">Any processes regarding the loan might get delayed due to public holidays, technical problems/software issues, etc.</span></li>\r\n	<li><span style=\"font-size:16px\">In case the update email/message regarding the processes of loan is not received by the customer due to a delay because of technical problems, software issues, or any other issue &ndash; they can call on the company&rsquo;s customer care between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</span></li>\r\n	<li><span style=\"font-size:16px\">In case the user, customer, any other person, or organization has a query/problem/issue or wants to raise a dispute with the company &ndash; they can either raise a request ticket or call on the company&quot;s customer care number between 10 AM to 5 PM (Monday to Saturday &ndash; only business days).</span></li>\r\n	<li><span style=\"font-size:16px\">Due to a software/system issue, it might happen that the dates mentioned in the Loan Status are late by 3-4 days.</span></li>\r\n	<li><span style=\"font-size:16px\">To get the TDS Return, the reference customer has to submit all the details/documents asked in their portal. Note: The TDS Return will be given starting from the financial year in which all the details/documents are submitted. The TDS Return won&rsquo;t be provided for the financial year(s) that are prior to the financial year in which the details/documents were submitted.</span></li>\r\n	<li><span style=\"font-size:16px\">The general criteria to apply for a personal loan by a salaried individual are &ndash; Min. Age: 21 years; Min. Salary: Rs.15,000/month (credited in the bank account); Salary Slips available; and Job Stability proof available. Final loan approval completely depends on the customer profile and the bank&quot;s rules and criteria.</span></li>\r\n	<li><span style=\"font-size:16px\">The general criteria to apply for a personal loan by a self-employed individual are &ndash; Min. Age: 21 years; IT Returns available (min. 1 year); Business Stability proof available; and Current Account in a bank. Final loan approval completely depends on the customer profile and the bank&quot;s rules and criteria.</span></li>\r\n	<li><span style=\"font-size:16px\">The general criteria to apply for a business loan by an audited report business person are &ndash; Min. Age: 21 years; Min. Rs.1 Crore+ Yearly Turnover; and Min. 2 Years Audited Report. Final loan approval completely depends on the customer profile and the bank&quot;s rules and criteria.</span></li>\r\n	<li><span style=\"font-size:16px\">The eligible age for buying a Subscription Plan is 18 - 62 years. The persons in this age bracket can avail benefits of the Subscription Plan offered by the company. The company only offers Subscription Plan and provides its benefits to the customers. The final loan approval depends on the customer profile and the bank&rsquo;s rules and criteria.</span></li>\r\n	<li><span style=\"font-size:16px\">For the Reference Customers who have given customer referrals to the company, it would be compulsory for them to submit their Payout Documents to the company within 30 days. If not submitted, all the payouts of the Reference Customers will be automatically cancelled. To get the cancelled payout, you can contact the company and discuss it.</span></li>\r\n	<li><span style=\"font-size:16px\">Any information/flow/system regarding our website shown in the videos posted on social media (or any platform) may be inaccurate, outdated, or different from our actual website. Only the most updated version of the website, terms &amp; conditions, and other policies shall be valid.</span></li>\r\n	<li><span style=\"font-size:16px\">The banks&rsquo; logos used in our ads, social media posts, blogs, emails, or any other medium is for promotional purposes only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">The banks&rsquo; logos shown on our website and the pre-approved offer displayed on our website are tentative only. The process will be done in that bank only under whose criteria the customer profile gets matched. The final loan approval and final loan process completely depend on the customer profile and the bank&rsquo;s criteria and rules and regulations.</span></li>\r\n	<li><span style=\"font-size:16px\">By purchasing the company&rsquo;s subscription, the customer is applying to get the company&rsquo;s services. All the benefits of the subscription will be given to the customer by the company.</span></li>\r\n	<li><span style=\"font-size:16px\">If any customer data &amp; information, KYC documents, or OTP is misused in future by any third-party, our company and its directors, employees, or associate partners, cannot be held responsible for the same in any matter whatsoever including any loss, harm, or damage due to the usage of information from the portal. Customers are advised to bring in their own discretion in such matters. The information provided on the website is of financial nature. It is a mutual understanding that customers association with the website will be at the customer&#39;s will, preference and risk.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">If any customer&rsquo;s documents are found to be fraud by the bank/financial institution or there&rsquo;s any sort of an issue with any customer&rsquo;s repayment of the loan to the banks/financial institution &ndash; then these matters have to be solely between the customer and the bank/financial institution. Our company and its directors, employees, or associate partners cannot be held responsible in such cases. If the customer documents are found to be fake and fraud and are used anywhere for any purpose, the company cannot be held responsible for the same.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">If any third-party gets a loan approved on someone else&rsquo;s identity and documents, then our company and its directors, employees, or associate partners cannot be held responsible.</span></li>\r\n	<li><span style=\"font-size:16px\">If any of the company&rsquo;s customers or any third-party wants a legal course, action and proceedings with the company, then only the company&rsquo;s legal team can be involved. There will absolutely be no involvement of the company&rsquo;s directors, associate partners, or employees in any legal proceeding. For any legal action or proceeding involving our company, Surat, Gujarat shall remain the only jurisdiction.</span></li>\r\n	<li><span style=\"font-size:16px\">TDS will be given only to the ones whose referral payout has been generated. If your TDS is deducted, you can contact your CA. If your TDS has been deducted and it&rsquo;s not showing, then you can contact the company&rsquo;s customer care number between 10 AM to 5 PM &ndash; Monday to Saturday (only business days).</span></li>\r\n	<li><span style=\"font-size:16px\">If any person enters incorrect information and starts the loan process on our website, and if this leads to any sort of a fraud in future, the company, its directors, employees, associate partners cannot be held responsible for the same.</span></li>\r\n	<li><span style=\"font-size:16px\">The pre-approved loan offers shown are from those banks/NBFCs that have eligibility criteria to which the customer&rsquo;s profile matches (profile evaluated as per the information entered by the customer). These pre-approved loan offers are tentative only &ndash; the final loan approval, loan sanction, and disbursement depend on the NBFC(s) and their rules and regulations. The company will only log in the customer&rsquo;s file in those NBFCs with which the company has tie-ups/partnerships/collaborations and where the customer&rsquo;s profile matches the NBFC eligibility criteria.</span></li>\r\n	<li><span style=\"font-size:16px\">Our company&rsquo;s services are strictly for the residents of India only &ndash; not for the non-residents. If any non-resident purchases our membership, they can request for a refund as per the company&rsquo;s Cancellation &amp; Refund Policy.</span></li>\r\n	<li><span style=\"font-size:16px\">In case a customer has mistakenly made more than a single payment, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">In case a customer has bought Subscriptions/Memberships from multiple companies that belong to our group of companies, the customer will be eligible to get a refund. The customer will have to request a refund within 48 hours of the payment through the Raising A Request section of the website or by calling on the company&rsquo;s registered contact number.</span></p>\r\n	</li>\r\n	<li><span style=\"font-size:16px\">The customers/users should be aware that Loanzilla only charges the fees of Subscription Plan whose payments are solely processed through its official domain loanzilla.com. Any other third-party source (social media/emails/phone calls/websites) trying to solicit payments from the customers/users in the name of Loanzilla (or claiming to be Loanzilla representative) is attempting defrauding.</span></li>\r\n	<li>\r\n	<p><span style=\"font-size:16px\">By registering with Loanzilla, you confirm that the information/details provided by you here is correct and accurate. You authorise Loanzilla and its authorized representatives to contact you for queries, OTP and document&nbsp;collection for the loan application process. This will override the registry on Do&nbsp;Not Disturb(DND) / National Do Not Call(NDNC). You can unsubscribe from our communication by mailing us your details to info@loanzilla.com. The OTP and document collection are only for loan application in our partnered NBFC(s). If any misuse/fraud is done with your documents/OTP at any point in time, Loanzilla cannot be held responsible for any sort of loss/damage.</span></p>\r\n	</li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong>PRE-APPROVAL LOAN OFFER TERMS AND CONDITIONS:</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">The Pre-Approved Loan Offer and the amount mentioned in it are solely shown based on the software calculation done on Monthly Income and Current Monthly EMI entered by the person. This &quot;Pre-Approved Loan Offer&quot; is tentative and not the final loan approval (this is already mentioned on the Pre-Approved loan Offer page) &ndash; as the final loan approval is given by the bank only; based on the bank&quot;s rules and regulations and the customer profile. And this is clearly stated in the company&quot;s Terms &amp; Conditions which is agreed by the person before registration.<br />\r\nHere&quot;s an example to know how the &quot;Pre-Approved Loan Offer&quot; is shown:</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Consider that a person (named &quot;Sam&quot;) enters the following details in our website:</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Monthly Income: Rs.1,00,000</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Current Monthly EMI: Rs.30,000</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Based on these details, Manish is left with Rs.70,000 in hand (deducting current EMI) every month. So, according to the general rules of the banks, the EMI of 50% of the in-hand amount can be approved. So, the loan amount that allows a maximum of Rs.35,000 (70,000/2) EMI can be approved. And based on the EMI and rate of interest (11% tentatively), the eligible amount is shown in the Pre-Approved Loan Offer. And based on this Rs.1903/lakh EMI is shown.</span></p>\r\n\r\n<p><span style=\"font-size:20px\"><strong>CANDIDATE TERMS AND CONDITIONS</strong></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:16px\">The interview time is fixed.</span></li>\r\n	<li><span style=\"font-size:16px\">The interview can&#39;t be taken any other time than the time decided by the company.</span></li>\r\n	<li><span style=\"font-size:16px\">The Company can ask any questions in the interview.</span></li>\r\n	<li><span style=\"font-size:16px\">The candidate will have to appear for the interview as many times as the company asks.</span></li>\r\n	<li><span style=\"font-size:16px\">A resume (Xerox) will be mandatory for the interview. The resume will not be returned. &nbsp;There will be no misuse of the resume.</span></li>\r\n</ol>\r\n\r\n<p><span style=\"font-size:20px\"><strong>USAGE OF COOKIES / COOKIES POLICY</strong></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cookies are small files that a site or its service provider transfers to your computer&#39;s hard drive through your web browser with your permission which enables the site or service provider&#39;s systems to recognize your browser and capture and remember certain information. We use cookies to help us understand and save your preferences for future&nbsp;visits, keep track of advertisements and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">The user, customer, or any other person accessing our website clearly expresses and agrees that they have fully read and understood the Terms &amp; Conditions and Privacy Policy of loanzilla.com &ndash; and they accept them unconditionally.</span></p>', '2024-01-26 12:27:05');
INSERT INTO `info_pages` (`id`, `slug`, `content`, `rec_date`) VALUES
(3, 'disclaimer', '<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Loanzilla and its customers and employees use and present www.loanzilla.com (the &ldquo;Website&rdquo;) for personal and informational purposes only. In addition, we further expressly disclaim any warranties or representations (expressed or implied) in respect of quality, suitability, accuracy, reliability, completeness, timeliness, performance for a particular purpose or legality of the services listed or displayed or transacted or the content on the website. You must not perceive and construe any such information or other material as legal, tax, investment, financial, or other advice. You completely acknowledge and undertake that you are accessing the services on the Loanzilla website and transacting at your own risk only and are using your best and prudent judgement before entering into and making any transactions through the website. You alone assume the sole responsibility of evaluating the merits and risks associated with the use of any information or other Content contained on the Loanzilla Website before making any decisions based on such information or other Content.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">Nothing contained on our Website constitutes a solicitation, recommendation, endorsement, or offer by Loanzilla to buy or sell any securities or other financial instruments in this or in any other jurisdiction in which such solicitation or offer would be unlawful under the securities laws of such jurisdiction. You further acknowledge that at no time shall any right, title or interest in the services sold through or displayed on the website vest with Loanzilla nor shall Loanzilla have any obligations or liabilities in respect of any transactions on the website.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">After you enter your details on our website for any purpose, the company takes no responsibility in case you come across instances of data misusage of any form.</span></span></span></span></p>', '2024-01-26 12:27:54'),
(4, 'refund-policy', '<p><span style=\"font-size:20px\"><span style=\"font-family:Arial\"><strong><em><span dir=\"LTR\"><span style=\"font-family:Arial\">We believe in prioritizing customer satisfaction above all!</span></span></em></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:20px\"><span style=\"font-family:Arial\"><strong><span dir=\"LTR\"><span style=\"font-family:Arial\">Under what circumstances is the Loanzilla Subscription Plan fee refundable?</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">A customer can be eligible for a refund if an e-mail requesting a refund is done by the customer (with the registered email id) to <a href=\"mailto:refund@loanzilla.com\"><strong>refund@loanzilla.com</strong></a> within 30 days of purchasing the Loanzilla Subscription Plan. The refund will be received by the customer (if eligible for a refund) within 24 to 48 hours of receiving the mail.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">There are certain areas/locations in which our company does not provide its services. If any person who has bought the Loanzilla Subscription Plan and belongs to such areas/locations can apply for a refund within 30 days of purchasing the Loanzilla Subscription Plan. To know the areas where our company does not provide services, please call on <strong><a href=\"tel:+919724206519\">+91 97242&nbsp;06519</a></strong></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">A customer might get a refund of the Loanzilla Subscription Plan fee if the company hasn&rsquo;t started the &lsquo;Customer Service Initiation&rsquo; (explained below) within 48 hours of the payment and a request for the same has been raised through Raise A Request within 30 days of the payment.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">If the customer is unable to communicate with the company in English, Hindi, or Gujarati, they can apply for a refund within 30 days of purchasing the Loanzilla Subscription Plan.</span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">What does Customer Service Initiation mean?</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">It is the first process done by the company that includes calling the customer for verification within 24-48 hours of the Loanzilla Subscription Plan payment. Even if the customer does not respond to the verification call, the Customer Service Initiation is considered as started and the update has been shown in the customer portal.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\">If you have any questions about our Cancellation and Refund Policy, please contact us between 10 am - 5 pm (only business days):</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0pt; margin-right:0pt\"><span style=\"font-size:16px\"><span style=\"font-family:Arial\"><span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By email: <a href=\"mailto:info@loanzilla.com?subject=Refund%20Regarding\">info@loanzilla.com</a></span></span></span><br />\r\n<span dir=\"LTR\"><span style=\"font-family:Arial\"><span style=\"font-family:Arial\">● By call: </span><strong><a href=\"tel:+919724206519\">+91 97242&nbsp;06519</a></strong></span></span></span></span></p>\r\n\r\n<div id=\"gtx-trans\" style=\"left:135px; position:absolute; top:484.125px\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', '2024-01-26 12:27:54'),
(5, 'welcome-message', '<h1 dir=\"ltr\"><span style=\"color:#000080\"><strong>Happy Diwali</strong></span></h1>\r\n\r\n<h4 dir=\"ltr\"><strong>Observing the Diwali holidays, our office will stay closed from <span style=\"color:#000080\">12th to 19th November 2023</span> &ndash; we&rsquo;ll resume from <span style=\"color:#000080\">20th November 2023</span>.</strong></h4>', '2024-02-23 06:00:52'),
(6, 'account-message', '<p><span style=\"font-family:Comic Sans MS,cursive\"><span style=\"font-size:22px\"><strong>Account Message</strong></span></span></p>', '2024-02-23 06:50:30'),
(7, 'facebookdomain', '1424', '2024-02-23 07:10:20'),
(8, 'facebookpixelkey', '23534544', '2024-02-23 07:10:20'),
(9, 'facebookaccesstoken', '4576578', '2024-02-23 07:10:45'),
(10, 'facebookeventname', 'qwefwefwe', '2024-02-23 07:11:04'),
(11, 'facebookeventid', '15', '2024-02-23 07:11:19');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL,
  `cardid` int NOT NULL,
  `inv_prefix` varchar(55) DEFAULT NULL,
  `inv_number` int DEFAULT NULL,
  `inv_date` date NOT NULL,
  `inv_price` double NOT NULL DEFAULT '0',
  `inv_cgst` double NOT NULL DEFAULT '0',
  `inv_sgst` double NOT NULL DEFAULT '0',
  `inv_igst` double NOT NULL DEFAULT '0',
  `inv_grandtotal` double NOT NULL DEFAULT '0',
  `remarks` longtext,
  `isdelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active,1=delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus`
--

DROP TABLE IF EXISTS `loanstatus`;
CREATE TABLE IF NOT EXISTS `loanstatus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `statusname` varchar(256) NOT NULL,
  `priorityno` int NOT NULL DEFAULT '1',
  `colorclass` varchar(50) NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loanstatus`
--

INSERT INTO `loanstatus` (`id`, `rec_date`, `statusname`, `priorityno`, `colorclass`, `isDelete`) VALUES
(1, '2020-10-13 19:30:40', 'Approved', 2, 'success', 0),
(2, '2020-10-13 19:30:40', 'Rejected', 3, 'danger', 0),
(3, '2020-10-13 19:30:40', 'In Process', 1, 'info', 0),
(4, '2021-08-28 08:03:33', 'Query Process', 4, 'warning', 0),
(5, '2021-10-29 05:37:03', 'File Reopen', 5, 'info', 0),
(6, '2022-06-03 09:50:19', 'Verification', 1, 'success', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loanstatus_remarks`
--

DROP TABLE IF EXISTS `loanstatus_remarks`;
CREATE TABLE IF NOT EXISTS `loanstatus_remarks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(256) NOT NULL,
  `remarks` longtext NOT NULL,
  `statusid` int NOT NULL DEFAULT '0',
  `isDelete` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loanstatus_remarks`
--

INSERT INTO `loanstatus_remarks` (`id`, `rec_date`, `title`, `remarks`, `statusid`, `isDelete`) VALUES
(1, '2022-03-08 12:07:11', 'Verification Successful (verification okay)', 'Dear Customer, Congratulations! Your verification has been done. The Login Department has asked you for the required documents. Kindly send the documents to the company\'s WhatsApp number (mentioned below) or submit the documents in your customer portal in the next 24-48 hours. Please stay in contact with the company for the next 7 working days. If you have any doubts or queries, you can call us on _____ between 10 AM to 5 PM (Monday to Saturday - only business days).', 6, 0),
(2, '2022-03-08 12:07:11', '4 day documents pending new (document warning)', 'Dear Customer, the company has still not received your documents for the loan process. Kindly submit the documents in your customer portal in 24-48 hours else your file will be automatically rejected from the system – and the same would be updated in your portal. For more info, you can call us on _____ between 10 AM to 5 PM (Monday to Saturday - only business days).', 3, 0),
(3, '2023-05-20 14:58:00', '4 day documents pending new - PL/BL (documents reject)', 'Dear Customer, the company has yet not received any documents or information from your side. This is leading to a rejection of your file. You can reapply for a loan after a certain period as per your membership. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days). \r\n\r\nThanks & Regards,\r\n Nowofloan', 2, 0),
(4, '2022-05-14 16:58:55', 'OTP Not Given (OTP warning remark)', 'Dear Customer, our company asked you for the OTP to take the loan process forward but you refused to share the OTP. As per bank rules, OTP is a must for the loan process. So, if you\'re willing to share the OTP for your loan process, kindly call us on _____ in the next 24-48 hours else your file will be automatically rejected from our system. You can call us between 10 AM to 5 PM (Monday to Saturday - only business days).', 3, 0),
(5, '2022-03-08 12:08:34', 'OTP Not Given (OTP reject)', 'Dear Customer, we regret to inform you that your file has been declined due to the fact that you didn\'t provide the required OTP for further processes. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(6, '2022-03-08 12:08:34', 'Customer not connect 2 days new (warning)', 'Dear Customer, the company\'s Login Department is trying to contact you regarding your loan process for the last 2 days. But you\'ve not responded or you\'re not coming in contact with the company. If you wish to take your loan process forward, kindly call on ___ in the next 24-48 hours (between 10 AM – 5 PM; between Monday and Saturday – only business days); otherwise, your file will be automatically rejected from the system.', 3, 0),
(7, '2022-03-08 12:09:20', 'Customer not connect 2 days new (reject)', 'Dear Customer, the company\'s Login Department has tried contacting you regarding the loan process. But as you\'ve not responded or you\'re not coming in contact with the company, your file has been automatically rejected from the system – and the same has been updated and shown in your portal. You can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(8, '2023-06-15 12:14:55', 'File Reject (ABP Low, CIBIL Low, PL / BL Inquiry)', 'Dear Customer, we regret to inform you that your file has been rejected. The reason for this decline is that you do not meet the required criteria (Average Banking, PL / BL inquiries, Obligations, CIBIL low, ABB low, etc.). For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(9, '2022-03-08 12:09:50', 'Language issue (warning)', 'Dear Customer, our company\'s login department contacted you but the process couldn\'t go further due to unclear or non-understandable communication/language from your end. We request you to make a trusted person/third-party call on your behalf within the next 24-48 hours and communicate in an understandable language/manner – failing in doing so would lead to automatic rejection of your file from the system. You can call us on _____ between 10 AM to 5 PM (Monday to Saturday - only business days).', 3, 0),
(10, '2022-03-08 12:09:50', 'Language Issue (reject)', 'Dear Customer, we regret to inform you that your file has been rejected due to unclear or non-understandable communication/language from your end. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(11, '2022-03-08 12:10:20', 'NR Switched Off At Login Time (warning)', 'Dear Customer, our Login Department had tried contacting you at the Customer Login Time but you were unreachable or your contact number was switched off. If you wish to take your loan process forward, kindly call us on _______ within the next 24-48 hours else your file will be automatically rejected in the system. You can call us between 10 AM to 5 PM (Monday to Saturday - only business days).', 3, 0),
(12, '2022-03-08 12:10:20', 'NR Switched Off At Login Time (reject)', 'Dear Customer, we regret to inform you that your file has been rejected because you were unreachable or your contact number was switched off at the Customer Login Time. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(13, '2022-03-08 12:10:50', 'Loan Approval Confirmation', 'Dear Customer, Congratulations! Your Personal Loan of amount ________ has been approved. For further details, you can call us on _____ between 10 AM to 5 PM (Monday to Saturday - only business days).', 1, 0),
(14, '2022-03-08 12:10:50', 'Application Reopened', 'Dear Customer, you had applied to our company for a loan but as you were not in contact with our company, your file was closed - mainly because of one of the following reasons: (1) You didn\'t submit your document to the company for the login process; (2) You didn\'t respond to our calls; (3) You didn\'t send any of OTP for the login process, etc. So now, as you contacted us again to reopen your file, we are re-opening your file for the loan process and after that, you have to be in contact with our company for 7 days. For more info, you can call us on _____ between 10 AM to 5 PM (Monday to Saturday - only business days).', 5, 0),
(15, '2022-03-08 12:11:18', 'Customer not interested (warning)', 'Dear Customer, our Login Department contacted you for the loan process but you were uninterested. If you wish to take your loan process forward, kindly call us on _______ within the next 24-48 hours else your file will be automatically rejected in the system. You can call us between 10 AM to 5 PM (Monday to Saturday - only business days).', 3, 0),
(16, '2022-03-08 12:11:18', 'Customer not interested (reject)', 'Dear Customer, we regret to inform you that your file has been rejected because of the uninterest shown by you pertaining to any reason(s). For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(17, '2022-06-07 14:18:50', 'NR/Switch off 10 day reject', 'Dear Customer, even after your file was rejected, our company called you for 3 time but still you didn’t respond or come in contact. Due to this, your file is finally rejected. For any query, kindly contact our company between 10 AM to 5 PM (Monday to Saturday – only business days). Thanks, Nowofloan', 2, 1),
(18, '2022-06-02 10:58:10', 'Process Hold', 'Dear Customer,\r\nAs requested by you, we have paused your loan process. Whenever you’re willing to start your loan process, kindly call the company on _________ between 10 AM to 5 PM (Monday to Saturday - only business days).', 2, 0),
(19, '2022-08-23 18:05:08', 'Link through login process', 'Dear Customer, we called you for the bank login process but you informed us that you would like to do the process through the link. So, we’re closing your file in our system. If you want any update regarding your file, you’ve to call/contact the bank directly.', 2, 0),
(20, '2023-05-20 14:59:34', '4 day documents pending new – FINMAX PLAN ( documents reject)', 'Dear Customer, the company has yet not received any documents or information from your side. This is leading to a rejection of your file. You can reapply for a loan after a certain period as per your membership. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days). \r\n\r\nThanks & Regards,\r\n Nowofloan\r\n', 2, 0),
(21, '2023-05-18 13:08:37', '4 day documents pending new – PL/BL ( documents reject)', 'Dear Customer, the company has yet not received any documents or information from your side. This is leading to a rejection of your file. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).\r\n\r\nThanks & Regards,\r\nNowofloan.com\r\n', 2, 1),
(22, '2023-05-18 13:09:55', '4 day documents pending new – FINMAX PLAN ( documents reject)', 'Dear Customer, the company has yet not received any documents or information from your side. This is leading to a rejection of your file. For more info, you can contact us between 10 AM to 5 PM (Monday to Saturday - only business days).\r\n\r\nThanks & Regards,\r\nNowofloan.com\r\n', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loan_applications`
--

DROP TABLE IF EXISTS `loan_applications`;
CREATE TABLE IF NOT EXISTS `loan_applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL DEFAULT '0',
  `loan_amount` bigint NOT NULL DEFAULT '0',
  `user_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=none, 1=salaried, 2=selfemployed',
  `loan_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 = personal loan, 2 = business loan',
  `monthly_income` varchar(255) NOT NULL DEFAULT '0',
  `cibilscore` int NOT NULL DEFAULT '0',
  `loan_purpose` varchar(255) NOT NULL DEFAULT 'Personal Use',
  `currentemi` bigint NOT NULL DEFAULT '0',
  `emibounce` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `application_number` varchar(99) DEFAULT NULL,
  `loantenure` int NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1=New, 2=Approve, 3=Reject',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active, 1=delete',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_applications`
--

INSERT INTO `loan_applications` (`id`, `rec_date`, `userid`, `loan_amount`, `user_type`, `loan_type`, `monthly_income`, `cibilscore`, `loan_purpose`, `currentemi`, `emibounce`, `application_number`, `loantenure`, `status`, `isDelete`) VALUES
(1, '2024-10-05 15:25:28', 1, 500000, 1, 1, '45000-55000', 0, 'Personal Use', 0, 0, 'xHwtAE35', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `loan_application_status`
--

DROP TABLE IF EXISTS `loan_application_status`;
CREATE TABLE IF NOT EXISTS `loan_application_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `applicationid` int NOT NULL,
  `statusid` int NOT NULL,
  `statusdate` date DEFAULT NULL,
  `bankid` int NOT NULL,
  `loanamount` int DEFAULT NULL,
  `loanroi` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loanterms` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processfees` int DEFAULT NULL,
  `insurance` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthlyemi` int DEFAULT NULL,
  `remarks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sanction_letter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `staffid` int NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loan_applied_history`
--

DROP TABLE IF EXISTS `loan_applied_history`;
CREATE TABLE IF NOT EXISTS `loan_applied_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `userid` int NOT NULL,
  `bankid` int NOT NULL,
  `loan_amount` varchar(299) NOT NULL,
  `loan_tenure` varchar(255) NOT NULL,
  `loan_rate` varchar(255) NOT NULL,
  `loan_emi` varchar(255) NOT NULL,
  `isDelete` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `membership_orders`
--

DROP TABLE IF EXISTS `membership_orders`;
CREATE TABLE IF NOT EXISTS `membership_orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `registration_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `card_number` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `paymentid` varchar(256) NOT NULL,
  `isActive` int NOT NULL DEFAULT '1',
  `isDelete` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_09_20_065913_create_sessions_table', 2),
(6, '2024_09_20_065920_create_cache_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `otp_verifications`
--

DROP TABLE IF EXISTS `otp_verifications`;
CREATE TABLE IF NOT EXISTS `otp_verifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) DEFAULT NULL,
  `otp` mediumint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_verifications`
--

INSERT INTO `otp_verifications` (`id`, `rec_date`, `mobile`, `email`, `otp`) VALUES
(1, '2024-10-05 15:04:31', '8530537178', '', 448118),
(2, '2024-10-05 15:05:20', '8530537178', '', 751021),
(3, '2024-10-05 15:10:33', '8530537178', '', 639106),
(4, '2024-10-05 15:15:26', '8530537178', '', 834251);

-- --------------------------------------------------------

--
-- Table structure for table `partner_tasks`
--

DROP TABLE IF EXISTS `partner_tasks`;
CREATE TABLE IF NOT EXISTS `partner_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assignees` int NOT NULL,
  `assign_to` varchar(199) NOT NULL,
  `task_title` varchar(199) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(199) DEFAULT NULL,
  `priority` varchar(99) NOT NULL DEFAULT 'Low',
  `task_module` varchar(255) NOT NULL,
  `task_status` varchar(55) NOT NULL DEFAULT 'Open',
  `completion_date` datetime DEFAULT NULL,
  `remarks` text,
  `project_name` varchar(255) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1=active,0=deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=no,1=yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `productname` varchar(256) NOT NULL,
  `productslug` varchar(256) NOT NULL,
  `amount` float(11,2) NOT NULL,
  `offeramount` float(11,2) NOT NULL,
  `inOffer` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `rec_date`, `productname`, `productslug`, `amount`, `offeramount`, `inOffer`) VALUES
(1, '2024-05-14 10:40:39', 'Self Apply', 'self-apply', 1299.00, 299.00, 1),
(2, '2024-05-14 10:40:39', 'Hire Loan Agent', 'hire-loan-agent', 2999.00, 499.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `razorpayentry`
--

DROP TABLE IF EXISTS `razorpayentry`;
CREATE TABLE IF NOT EXISTS `razorpayentry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `entryfor` int NOT NULL DEFAULT '0',
  `userid` int NOT NULL,
  `orderid` varchar(50) NOT NULL,
  `orderamount` float(11,2) NOT NULL,
  `ordernote` varchar(256) DEFAULT NULL,
  `referenceid` varchar(256) DEFAULT NULL,
  `txstatus` varchar(256) DEFAULT NULL,
  `paymentmode` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `refunds`
--

DROP TABLE IF EXISTS `refunds`;
CREATE TABLE IF NOT EXISTS `refunds` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `invoiceid` int NOT NULL,
  `ref_date` date DEFAULT NULL,
  `ref_number` varchar(256) NOT NULL,
  `ref_price` float(11,2) NOT NULL,
  `ref_cgst` float(11,2) NOT NULL,
  `ref_sgst` float(11,2) NOT NULL,
  `ref_igst` float(11,2) NOT NULL,
  `ref_grandtotal` float(11,2) NOT NULL,
  `paymentid` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roipackages`
--

DROP TABLE IF EXISTS `roipackages`;
CREATE TABLE IF NOT EXISTS `roipackages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bankid` int NOT NULL,
  `roi` float(11,2) NOT NULL,
  `termsyears` float(11,2) NOT NULL,
  `termsmonths` int NOT NULL,
  `isDelete` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roipackages`
--

INSERT INTO `roipackages` (`id`, `rec_date`, `bankid`, `roi`, `termsyears`, `termsmonths`, `isDelete`, `created_at`, `updated_at`) VALUES
(1, '2024-02-23 17:40:12', 1, 10.00, 4.00, 48, 0, '2024-02-23 12:10:12', '2024-02-23 12:48:56'),
(2, '2024-02-23 17:48:17', 2, 11.15, 3.00, 36, 0, '2024-02-23 12:18:17', '2024-02-23 12:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `services_name` varchar(255) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0 = no active',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0 = active, 1 = delete',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Y4xF1sjUYBjoSIoTm4igM6WsiiZPB0IqnoBtfnUI', NULL, '192.168.1.29', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YToxMjp7czo2OiJfdG9rZW4iO3M6NDA6IktKNzc5M1FxQVByejFEUTVTVGFCY1ExZ0ZNWnBOUVNxOXhoaDk1dzIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQzOiJodHRwOi8vMTkyLjE2OC4xLjI5OjgwMDAvc2VsZi1hcHBseS9idXktbm93Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJtb2JpbGUiO3M6MTA6Ijg1MzA1MzcxNzgiO3M6OToibG9hbl90eXBlIjtzOjE6IjEiO3M6MTA6ImlzVmVyaWZpZWQiO2k6MTtzOjY6InVzZXJpZCI7aToxO3M6NzoiYXBwbHlpZCI7aToxO3M6MTE6ImxvYW5fYW1vdW50IjtzOjY6IjUwMDAwMCI7czoxMzoicHJvY2Vzc19zdGVwcyI7aTo0O3M6ODoiZnVsbG5hbWUiO3M6MTM6IlZpY2t5IEphaXN3YWwiO3M6NToiZW1haWwiO3M6MjI6InZpY2t5dmVybG9vcEBnbWFpbC5jb20iO30=', 1728132639);

-- --------------------------------------------------------

--
-- Table structure for table `site_options`
--

DROP TABLE IF EXISTS `site_options`;
CREATE TABLE IF NOT EXISTS `site_options` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `option_key` varchar(255) NOT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_options`
--

INSERT INTO `site_options` (`id`, `rec_date`, `option_key`, `option_value`) VALUES
(1, '2024-06-03 17:43:21', 'newinvoiceno', '1'),
(2, '2024-04-18 11:05:19', 'account-msg-customer', 'For the Customers who have given other customer referrals to the company, it would be compulsory for them to submit their kyc Documents to the company within 30 days. If not submitted, all the payouts of the Customer will be automatically cancelled To  get the cancelled payout, you can contact the company and discuss it.');

-- --------------------------------------------------------

--
-- Table structure for table `source_entry`
--

DROP TABLE IF EXISTS `source_entry`;
CREATE TABLE IF NOT EXISTS `source_entry` (
  `id` int NOT NULL,
  `rec_date` date DEFAULT NULL,
  `utm_source` varchar(125) DEFAULT NULL,
  `utm_campaign` varchar(125) DEFAULT NULL,
  `utm_medium` varchar(125) DEFAULT NULL,
  `referral_code` varchar(99) DEFAULT NULL,
  `gclid` varchar(255) DEFAULT NULL,
  `fbclid` varchar(255) DEFAULT NULL,
  `client_ip` varchar(55) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_tasks`
--

DROP TABLE IF EXISTS `staff_tasks`;
CREATE TABLE IF NOT EXISTS `staff_tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `assignee_id` int NOT NULL,
  `follower_id` int NOT NULL,
  `task_title` varchar(299) NOT NULL,
  `task_desc` longtext NOT NULL,
  `attachment` varchar(299) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(55) NOT NULL,
  `task_module` varchar(199) NOT NULL,
  `task_status` varchar(55) NOT NULL,
  `completion_date` datetime DEFAULT NULL,
  `remarks` text,
  `projects` varchar(299) NOT NULL,
  `task_goal` varchar(55) NOT NULL,
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1 = active, 0= deactive',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0= no, 1= yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_requests`
--

DROP TABLE IF EXISTS `support_requests`;
CREATE TABLE IF NOT EXISTS `support_requests` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL,
  `ticketno` varchar(50) NOT NULL,
  `usertype` int NOT NULL DEFAULT '1' COMMENT '1 = customer, 2 = guest user',
  `firstname` varchar(125) NOT NULL,
  `lastname` varchar(125) NOT NULL,
  `mobile` varchar(99) NOT NULL,
  `email` varchar(99) NOT NULL,
  `issuetype` varchar(255) NOT NULL,
  `cardnumber` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `status` int NOT NULL DEFAULT '1' COMMENT '0=No,1=Yes',
  `serverip` varchar(99) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isDelete` int NOT NULL DEFAULT '0' COMMENT '0=No,1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

DROP TABLE IF EXISTS `user_documents`;
CREATE TABLE IF NOT EXISTS `user_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `profilephoto` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `lightbill` varchar(256) DEFAULT NULL,
  `bankstatement` varchar(256) DEFAULT NULL,
  `formsixteen` varchar(256) DEFAULT NULL,
  `salaryslip` varchar(256) DEFAULT NULL,
  `businessproof` varchar(256) DEFAULT NULL,
  `itreturn` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) NOT NULL,
  `isVerified` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_payout_documents`
--

DROP TABLE IF EXISTS `user_payout_documents`;
CREATE TABLE IF NOT EXISTS `user_payout_documents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int NOT NULL,
  `gstdoc` varchar(256) DEFAULT NULL,
  `gstdoc_number` varchar(256) DEFAULT NULL,
  `aadharcard` varchar(256) DEFAULT NULL,
  `aadharcard_number` varchar(256) DEFAULT NULL,
  `pancard` varchar(256) DEFAULT NULL,
  `pancard_number` varchar(256) DEFAULT NULL,
  `cancelcheque` varchar(256) DEFAULT NULL,
  `remarks` varchar(256) NOT NULL,
  `isVerified` tinyint NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

DROP TABLE IF EXISTS `user_registrations`;
CREATE TABLE IF NOT EXISTS `user_registrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int DEFAULT NULL,
  `rec_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dob` date DEFAULT NULL,
  `pancard` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(115) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `process_step` tinyint NOT NULL DEFAULT '0',
  `refcode` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_type` tinyint NOT NULL DEFAULT '0' COMMENT '0=none, 1=selfapply, 2=loan-agent',
  `isUser` tinyint NOT NULL DEFAULT '1' COMMENT '\r\n1=steps,2=register',
  `iAgree` tinyint NOT NULL DEFAULT '1' COMMENT '0=checked,1=unchecked',
  `isDnd` tinyint NOT NULL DEFAULT '0' COMMENT '0=no, 1=yes',
  `isDelete` tinyint NOT NULL DEFAULT '0' COMMENT '0=active, 1=delete',
  `isActive` tinyint NOT NULL DEFAULT '1' COMMENT '1= active, 0=noactive',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_registrations`
--

INSERT INTO `user_registrations` (`id`, `staff_id`, `rec_date`, `update_date`, `first_name`, `last_name`, `mobile`, `email`, `password`, `dob`, `pancard`, `pincode`, `city`, `state`, `process_step`, `refcode`, `acc_type`, `isUser`, `iAgree`, `isDnd`, `isDelete`, `isActive`) VALUES
(1, NULL, '2024-10-05 15:25:28', '2024-10-05 15:25:28', 'Vicky', 'Jaiswal', '8530537178', 'vickyverloop@gmail.com', NULL, '1995-01-01', 'QWERT7178Y', '395007', 'Surat', 'Gujarat', 3, NULL, 0, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_tree`
--

DROP TABLE IF EXISTS `user_tree`;
CREATE TABLE IF NOT EXISTS `user_tree` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rec_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `refferaltype` int NOT NULL DEFAULT '1' COMMENT '1=Customer, 2=Channel',
  `refferaluserid` int NOT NULL,
  `subuserid` int NOT NULL,
  `payout` int NOT NULL DEFAULT '0' COMMENT '0=No, 1=Yes',
  `payout_date` date DEFAULT NULL,
  `payout_amount` float(11,2) NOT NULL,
  `order_amount` float(11,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
