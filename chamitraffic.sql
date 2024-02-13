-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2024 at 05:10 AM
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
-- Database: `chamitraffic`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-10-16 06:27:57', '2023-10-16 06:27:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080/chamitraffic', 'yes'),
(2, 'home', 'http://localhost:8080/chamitraffic', 'yes'),
(3, 'blogname', 'Chami Traffic', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'info@achyutlabs.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"advanced-custom-fields-pro-main/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:68:\"D:\\xampp\\htdocs\\chamitraffic/wp-content/themes/chami-child/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'chami-child', 'yes'),
(41, 'stylesheet', 'chami-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '6', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1712989676', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:9:{i:1698737278;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1698776878;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698776888;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1698820077;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698820088;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1698820091;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1699261828;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1699338477;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.3.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1698734424;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1697437700;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698734430;s:7:\"checked\";a:4:{s:11:\"chami-child\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.9\";s:17:\"twentytwentythree\";s:3:\"1.2\";s:15:\"twentytwentytwo\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.9.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.2.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.5.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(136, 'can_compress_scripts', '1', 'yes'),
(149, 'current_theme', 'Chami Traffic', 'yes'),
(150, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1697438129;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(154, 'finished_updating_comment_type', '1', 'yes'),
(156, 'theme_mods_chami-child', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(159, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'acf_version', '6.1.7', 'yes'),
(176, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":3,\"critical\":2}', 'yes'),
(230, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1699007353', 'no'),
(231, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(236, '_transient_timeout_acf_plugin_updates', '1698907228', 'no'),
(237, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:39:\"advanced-custom-fields-pro-main/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:39:\"advanced-custom-fields-pro-main/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:39:\"advanced-custom-fields-pro-main/acf.php\";s:5:\"6.1.7\";}}', 'no'),
(238, '_site_transient_timeout_theme_roots', '1698736229', 'no'),
(239, '_site_transient_theme_roots', 'a:4:{s:11:\"chami-child\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(240, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1698734431;s:8:\"response\";a:1:{s:39:\"advanced-custom-fields-pro-main/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:39:\"advanced-custom-fields-pro-main/acf.php\";s:11:\"new_version\";s:5:\"6.2.2\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.4\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20231025\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}}s:7:\"checked\";a:2:{s:39:\"advanced-custom-fields-pro-main/acf.php\";s:5:\"6.1.7\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.3\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_last', '1'),
(4, 6, '_edit_lock', '1697447896:1'),
(7, 6, '_wp_page_template', 'home.php'),
(8, 9, '_wp_trash_meta_status', 'publish'),
(9, 9, '_wp_trash_meta_time', '1697447673'),
(10, 10, '_edit_last', '1'),
(11, 10, '_edit_lock', '1697459053:1'),
(12, 10, '_wp_page_template', 'about.php'),
(13, 12, '_edit_last', '1'),
(14, 12, '_edit_lock', '1697459449:1'),
(15, 12, '_wp_page_template', 'services.php'),
(16, 14, '_edit_last', '1'),
(17, 14, '_edit_lock', '1698734478:1'),
(18, 16, '_wp_attached_file', '2023/10/bg.png'),
(19, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:909;s:4:\"file\";s:14:\"2023/10/bg.png\";s:8:\"filesize\";i:13725;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(20, 12, 'breadcumb-img', '16'),
(21, 12, '_breadcumb-img', 'field_652d065f0e1d4'),
(22, 17, 'breadcumb-img', '16'),
(23, 17, '_breadcumb-img', 'field_652d065f0e1d4'),
(24, 20, '_wp_attached_file', '2023/10/big-img.png'),
(25, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:770;s:6:\"height\";i:550;s:4:\"file\";s:19:\"2023/10/big-img.png\";s:8:\"filesize\";i:4487;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(26, 12, 'service-img', '20'),
(27, 12, '_service-img', 'field_652d080cb0e4c'),
(28, 12, '_', 'field_652d0822b0e4d'),
(29, 21, 'breadcumb-img', '16'),
(30, 21, '_breadcumb-img', 'field_652d065f0e1d4'),
(31, 21, 'service-img', '20'),
(32, 21, '_service-img', 'field_652d080cb0e4c'),
(33, 24, '_wp_attached_file', '2023/10/img.png'),
(34, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:320;s:6:\"height\";i:255;s:4:\"file\";s:15:\"2023/10/img.png\";s:8:\"filesize\";i:1508;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 12, 'service_heading', 'Premier Traffic Control Services | Ensuring Safe Traffic Management'),
(36, 12, '_service_heading', 'field_652d0822b0e4d'),
(37, 12, 'first-paragraph', 'Welcome to Chami Traffic, your go-to source for expert traffic control services. With a strong commitment to safety and efficiency, we offer temporary traffic control, traffic signal coordination, detour planning, and trained personnel for seamless traffic management. Rely on us for 24/7 support in ensuring smooth and secure traffic flow.\r\n'),
(38, 12, '_first-paragraph', 'field_652d09a0485fd'),
(39, 12, 'side-img', '24'),
(40, 12, '_side-img', 'field_652d09bd01d0f'),
(41, 25, 'breadcumb-img', '16'),
(42, 25, '_breadcumb-img', 'field_652d065f0e1d4'),
(43, 25, 'service-img', '20'),
(44, 25, '_service-img', 'field_652d080cb0e4c'),
(45, 25, 'service_heading', ''),
(46, 25, '_service_heading', 'field_652d0822b0e4d'),
(47, 25, 'first-paragraph', ''),
(48, 25, '_first-paragraph', 'field_652d09a0485fd'),
(49, 25, 'side-img', '24'),
(50, 25, '_side-img', 'field_652d09bd01d0f'),
(51, 27, '_edit_last', '1'),
(52, 27, '_edit_lock', '1697516966:1'),
(53, 27, '_wp_page_template', 'services.php'),
(54, 27, 'breadcumb-img', '16'),
(55, 27, '_breadcumb-img', 'field_652d065f0e1d4'),
(56, 27, 'service-img', '20'),
(57, 27, '_service-img', 'field_652d080cb0e4c'),
(58, 27, 'service_heading', 'Optimizing Urban Flow: Professional Pedestrian Management Services'),
(59, 27, '_service_heading', 'field_652d0822b0e4d'),
(60, 27, 'first-paragraph', 'At Chami Traffic, we understand that pedestrian safety and efficient movement are essential in any urban environment. That\'s why we offer comprehensive pedestrian management services to help you create a safe, organized, and pleasant atmosphere for both pedestrians and the community at large.'),
(61, 27, '_first-paragraph', 'field_652d09a0485fd'),
(62, 27, 'side-img', '24'),
(63, 27, '_side-img', 'field_652d09bd01d0f'),
(64, 27, 'service-details', '<p>In today\'s bustling urban landscapes, ensuring the safety and accessibility of pedestrians is of paramount importance. Managing the flow of foot traffic, mitigating potential hazards, and creating a pedestrian-friendly environment are critical for the well-being of the community and the success of businesses and events. </p>\r\n<p>Our team consists of seasoned professionals with extensive expertise in pedestrian management, urban planning, and safety protocols, providing a wealth of knowledge to every project. We acknowledge the uniqueness of each situation, tailoring our services to address your specific requirements and challenges. We collaborate closely with you to craft strategies that seamlessly align with your urban environment. The safety of pedestrians is our utmost priority, and we are dedicated to implementing measures that prevent accidents, alleviate traffic congestion, and establish secure surroundings.</p>\r\n<p> Our solutions not only bolster safety but also contribute to the development of more dynamic and flourishing communities, underpinned by our strong belief that pedestrian-friendly urban spaces lead to an enhanced quality of life for all residents.</p>\r\n<p>By choosing Chami Traffic, you\'re choosing a partner dedicated to making your environment safer, more pedestrian-friendly, and better for everyone. Contact us today to discuss how our pedestrian management services can enhance the safety and accessibility of your urban space.</p>'),
(65, 27, '_service-details', 'field_652d0a6798317'),
(66, 28, 'breadcumb-img', '16'),
(67, 28, '_breadcumb-img', 'field_652d065f0e1d4'),
(68, 28, 'service-img', '20'),
(69, 28, '_service-img', 'field_652d080cb0e4c'),
(70, 28, 'service_heading', ''),
(71, 28, '_service_heading', 'field_652d0822b0e4d'),
(72, 28, 'first-paragraph', ''),
(73, 28, '_first-paragraph', 'field_652d09a0485fd'),
(74, 28, 'side-img', '24'),
(75, 28, '_side-img', 'field_652d09bd01d0f'),
(76, 28, 'service-details', ''),
(77, 28, '_service-details', 'field_652d0a6798317'),
(78, 29, '_edit_last', '1'),
(79, 29, '_edit_lock', '1698734303:1'),
(80, 29, '_wp_page_template', 'services.php'),
(81, 29, 'breadcumb-img', '16'),
(82, 29, '_breadcumb-img', 'field_652d065f0e1d4'),
(83, 29, 'service-img', '20'),
(84, 29, '_service-img', 'field_652d080cb0e4c'),
(85, 29, 'service_heading', ''),
(86, 29, '_service_heading', 'field_652d0822b0e4d'),
(87, 29, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(88, 29, '_first-paragraph', 'field_652d09a0485fd'),
(89, 29, 'side-img', '24'),
(90, 29, '_side-img', 'field_652d09bd01d0f'),
(91, 29, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n<h4 class=\"title\">We offer a comprehensive range of equipment for rent:</h4>\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>Trailer-mounted arrow boards that enhance traffic visibility and safety.</p></li>\r\n                                <li><p>Variable message sign (VMS) boards of both B and C-Class</p></li>\r\n                                <li><p>Solar-powered portable Traffic Signals</p></li>\r\n                                <li><p>Emergency stop (E-Stop) portable traffic signals (PTSS) for rapid response in critical situations.</p></li>\r\n                                <li><p>\"Portaboom\" boom gate systems, providing versatile access control solutions.</p></li>\r\n                                <li><p>Rely on our offerings of Armorzone and concrete barriers to bolster site safety and delineation.</p></li>\r\n                                <li><p>Traffic signs and devices for road work</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>We also provide safety harnesses and impact protection equipment, prioritizing driver well-being on the job.</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(92, 29, '_service-details', 'field_652d0a6798317'),
(93, 30, 'breadcumb-img', '16'),
(94, 30, '_breadcumb-img', 'field_652d065f0e1d4'),
(95, 30, 'service-img', '20'),
(96, 30, '_service-img', 'field_652d080cb0e4c'),
(97, 30, 'service_heading', ''),
(98, 30, '_service_heading', 'field_652d0822b0e4d'),
(99, 30, 'first-paragraph', ''),
(100, 30, '_first-paragraph', 'field_652d09a0485fd'),
(101, 30, 'side-img', '24'),
(102, 30, '_side-img', 'field_652d09bd01d0f'),
(103, 30, 'service-details', ''),
(104, 30, '_service-details', 'field_652d0a6798317'),
(105, 31, '_edit_last', '1'),
(106, 31, '_edit_lock', '1698734482:1'),
(107, 31, '_wp_page_template', 'services.php'),
(108, 31, 'breadcumb-img', '16'),
(109, 31, '_breadcumb-img', 'field_652d065f0e1d4'),
(110, 31, 'service-img', '20'),
(111, 31, '_service-img', 'field_652d080cb0e4c'),
(112, 31, 'service_heading', ''),
(113, 31, '_service_heading', 'field_652d0822b0e4d'),
(114, 31, 'first-paragraph', 'At Chami Traffic, we understand that effective traffic management is crucial for the success and safety of any project, be it construction, special events, or roadwork. Our comprehensive range of services ensures that your traffic needs are met with precision and efficiency.'),
(115, 31, '_first-paragraph', 'field_652d09a0485fd'),
(116, 31, 'side-img', '24'),
(117, 31, '_side-img', 'field_652d09bd01d0f'),
(118, 31, 'service-details', '<p>When engaged in tasks in proximity to roadways, it is imperative to have appropriate traffic control arrangements and permits in place. Moreover, if there is a need to install traffic signs and devices within the road reserve, a comprehensive traffic guidance scheme and/or traffic control plan is essential. Depending on the jurisdiction and the ownership of the road or assets involved, you might also find it necessary to secure a road occupancy permit from the respective authority, whether it be the local council or a specific entity like Vic Roads. This is precisely where Chami Traffic distinguishes itself. We specialize in the meticulous preparation of all the requisite traffic plans and permits essential for your project.</p>\r\n<p>Our expertise lies in ensuring the safety and compliance of your operations with the regulatory framework. We possess the knowledge and experience necessary to formulate robust traffic control strategies and devise meticulous traffic guidance schemes, tailoring each plan to meet the unique requirements of your project. Our team also excels in navigating the complex landscape of permit acquisition, streamlining the process and obtaining the necessary approvals from relevant authorities. By entrusting Chami Traffic, you can be confident that your project will proceed with the utmost adherence to safety standards and regulatory compliance, allowing you to focus on your core objectives while we manage the intricacies of traffic control planning and permit acquisition.\"</p>\r\n<h4 class=\"title\">Our team dedicated to design and planning is here to support you by:</h4>\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>Conducting a thorough hazard and risk assessment for the worksite.</p></li>\r\n                                <li><p>Offering guidance on the necessary level of traffic control.</p></li>\r\n                                <li><p>Procuring the essential traffic guidance schemes (TGS), traffic control plans (TCP), or traffic management plans (TMP) as needed.</p></li>\r\n                                <li><p>Managing the submission process to either the local council or the relevant Main Road Authority, should it be necessary.</p></li>\r\n                                <li><p>Coordinating police permits, when they are a requisite part of the project.</p></li>\r\n</ul>\r\n</div>\r\n<p>Ready to discuss your project\'s traffic needs or get a quote? Contact our team today.</p>\r\n'),
(119, 31, '_service-details', 'field_652d0a6798317'),
(120, 32, 'breadcumb-img', '16'),
(121, 32, '_breadcumb-img', 'field_652d065f0e1d4'),
(122, 32, 'service-img', '20'),
(123, 32, '_service-img', 'field_652d080cb0e4c'),
(124, 32, 'service_heading', ''),
(125, 32, '_service_heading', 'field_652d0822b0e4d'),
(126, 32, 'first-paragraph', ''),
(127, 32, '_first-paragraph', 'field_652d09a0485fd'),
(128, 32, 'side-img', '24'),
(129, 32, '_side-img', 'field_652d09bd01d0f'),
(130, 32, 'service-details', ''),
(131, 32, '_service-details', 'field_652d0a6798317'),
(132, 33, '_edit_last', '1'),
(133, 33, '_edit_lock', '1697451030:1'),
(134, 34, '_edit_last', '1'),
(135, 34, '_edit_lock', '1697451541:1'),
(136, 34, '_wp_page_template', 'contact.php'),
(137, 36, '_menu_item_type', 'custom'),
(138, 36, '_menu_item_menu_item_parent', '0'),
(139, 36, '_menu_item_object_id', '36'),
(140, 36, '_menu_item_object', 'custom'),
(141, 36, '_menu_item_target', ''),
(142, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(143, 36, '_menu_item_xfn', ''),
(144, 36, '_menu_item_url', '#'),
(146, 37, '_menu_item_type', 'post_type'),
(147, 37, '_menu_item_menu_item_parent', '0'),
(148, 37, '_menu_item_object_id', '6'),
(149, 37, '_menu_item_object', 'page'),
(150, 37, '_menu_item_target', ''),
(151, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(152, 37, '_menu_item_xfn', ''),
(153, 37, '_menu_item_url', ''),
(155, 38, '_menu_item_type', 'post_type'),
(156, 38, '_menu_item_menu_item_parent', '0'),
(157, 38, '_menu_item_object_id', '10'),
(158, 38, '_menu_item_object', 'page'),
(159, 38, '_menu_item_target', ''),
(160, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 38, '_menu_item_xfn', ''),
(162, 38, '_menu_item_url', ''),
(164, 39, '_menu_item_type', 'post_type'),
(165, 39, '_menu_item_menu_item_parent', '36'),
(166, 39, '_menu_item_object_id', '29'),
(167, 39, '_menu_item_object', 'page'),
(168, 39, '_menu_item_target', ''),
(169, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 39, '_menu_item_xfn', ''),
(171, 39, '_menu_item_url', ''),
(173, 40, '_menu_item_type', 'post_type'),
(174, 40, '_menu_item_menu_item_parent', '36'),
(175, 40, '_menu_item_object_id', '27'),
(176, 40, '_menu_item_object', 'page'),
(177, 40, '_menu_item_target', ''),
(178, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 40, '_menu_item_xfn', ''),
(180, 40, '_menu_item_url', ''),
(182, 41, '_menu_item_type', 'post_type'),
(183, 41, '_menu_item_menu_item_parent', '36'),
(184, 41, '_menu_item_object_id', '31'),
(185, 41, '_menu_item_object', 'page'),
(186, 41, '_menu_item_target', ''),
(187, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 41, '_menu_item_xfn', ''),
(189, 41, '_menu_item_url', ''),
(191, 42, '_menu_item_type', 'post_type'),
(192, 42, '_menu_item_menu_item_parent', '36'),
(193, 42, '_menu_item_object_id', '12'),
(194, 42, '_menu_item_object', 'page'),
(195, 42, '_menu_item_target', ''),
(196, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(197, 42, '_menu_item_xfn', ''),
(198, 42, '_menu_item_url', ''),
(200, 43, '_menu_item_type', 'custom'),
(201, 43, '_menu_item_menu_item_parent', '0'),
(202, 43, '_menu_item_object_id', '43'),
(203, 43, '_menu_item_object', 'custom'),
(204, 43, '_menu_item_target', ''),
(205, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(206, 43, '_menu_item_xfn', ''),
(207, 43, '_menu_item_url', '#'),
(209, 44, '_menu_item_type', 'post_type'),
(210, 44, '_menu_item_menu_item_parent', '0'),
(211, 44, '_menu_item_object_id', '34'),
(212, 44, '_menu_item_object', 'page'),
(213, 44, '_menu_item_target', ''),
(214, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(215, 44, '_menu_item_xfn', ''),
(216, 44, '_menu_item_url', ''),
(218, 12, 'service-details', '<p>At Chami Traffic, we specialize in providing top-tier traffic control services, ensuring safe and efficient traffic management. Our dedicated team of professionals is committed to maintaining order, enhancing safety, and minimizing disruptions on the road.</p>\r\n<p>Our team is highly proficient in traffic signal coordination, ensuring that traffic moves efficiently. We understand the intricacies of optimizing signal timing to prevent congestion and delays.</p>\r\n<p>At Chami Traffic, we pride ourselves on being the go-to choice for clients who demand safe, efficient, and reliable traffic control. When you partner with us, you\'re choosing a team dedicated to maintaining order on the road, keeping the public safe, and ensuring your projects proceed without disruptions. Contact us today for expert traffic control solutions that you can depend on.</p>'),
(219, 12, '_service-details', 'field_652d0a6798317'),
(220, 45, 'breadcumb-img', '16'),
(221, 45, '_breadcumb-img', 'field_652d065f0e1d4'),
(222, 45, 'service-img', '20'),
(223, 45, '_service-img', 'field_652d080cb0e4c'),
(224, 45, 'service_heading', 'Premier Traffic Control Services | Ensuring Safe Traffic Management'),
(225, 45, '_service_heading', 'field_652d0822b0e4d'),
(226, 45, 'first-paragraph', 'Welcome to Chami Traffic, your go-to source for expert traffic control services. With a strong commitment to safety and efficiency, we offer temporary traffic control, traffic signal coordination, detour planning, and trained personnel for seamless traffic management. Rely on us for 24/7 support in ensuring smooth and secure traffic flow.\r\n'),
(227, 45, '_first-paragraph', 'field_652d09a0485fd'),
(228, 45, 'side-img', '24'),
(229, 45, '_side-img', 'field_652d09bd01d0f'),
(230, 45, 'service-details', '<p>At Chami Traffic, we specialize in providing top-tier traffic control services, ensuring safe and efficient traffic management. Our dedicated team of professionals is committed to maintaining order, enhancing safety, and minimizing disruptions on the road.</p>\r\n<p>Our team is highly proficient in traffic signal coordination, ensuring that traffic moves efficiently. We understand the intricacies of optimizing signal timing to prevent congestion and delays.</p>\r\n<p>At Chami Traffic, we pride ourselves on being the go-to choice for clients who demand safe, efficient, and reliable traffic control. When you partner with us, you\'re choosing a team dedicated to maintaining order on the road, keeping the public safe, and ensuring your projects proceed without disruptions. Contact us today for expert traffic control solutions that you can depend on.</p>'),
(231, 45, '_service-details', 'field_652d0a6798317'),
(232, 46, 'breadcumb-img', '16'),
(233, 46, '_breadcumb-img', 'field_652d065f0e1d4'),
(234, 46, 'service-img', '20'),
(235, 46, '_service-img', 'field_652d080cb0e4c'),
(236, 46, 'service_heading', 'Optimizing Urban Flow: Professional Pedestrian Management Services'),
(237, 46, '_service_heading', 'field_652d0822b0e4d'),
(238, 46, 'first-paragraph', 'At Chami Traffic, we understand that pedestrian safety and efficient movement are essential in any urban environment. That\'s why we offer comprehensive pedestrian management services to help you create a safe, organized, and pleasant atmosphere for both pedestrians and the community at large.'),
(239, 46, '_first-paragraph', 'field_652d09a0485fd'),
(240, 46, 'side-img', '24'),
(241, 46, '_side-img', 'field_652d09bd01d0f'),
(242, 46, 'service-details', '<p>In today\'s bustling urban landscapes, ensuring the safety and accessibility of pedestrians is of paramount importance. Managing the flow of foot traffic, mitigating potential hazards, and creating a pedestrian-friendly environment are critical for the well-being of the community and the success of businesses and events. </p>\r\n<p>Our team consists of seasoned professionals with extensive expertise in pedestrian management, urban planning, and safety protocols, providing a wealth of knowledge to every project. We acknowledge the uniqueness of each situation, tailoring our services to address your specific requirements and challenges. We collaborate closely with you to craft strategies that seamlessly align with your urban environment. The safety of pedestrians is our utmost priority, and we are dedicated to implementing measures that prevent accidents, alleviate traffic congestion, and establish secure surroundings.</p>\r\n<p> Our solutions not only bolster safety but also contribute to the development of more dynamic and flourishing communities, underpinned by our strong belief that pedestrian-friendly urban spaces lead to an enhanced quality of life for all residents.</p>\r\n<p>By choosing Chami Traffic, you\'re choosing a partner dedicated to making your environment safer, more pedestrian-friendly, and better for everyone. Contact us today to discuss how our pedestrian management services can enhance the safety and accessibility of your urban space.</p>'),
(243, 46, '_service-details', 'field_652d0a6798317'),
(244, 47, 'breadcumb-img', '16'),
(245, 47, '_breadcumb-img', 'field_652d065f0e1d4'),
(246, 47, 'service-img', '20'),
(247, 47, '_service-img', 'field_652d080cb0e4c'),
(248, 47, 'service_heading', ''),
(249, 47, '_service_heading', 'field_652d0822b0e4d'),
(250, 47, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(251, 47, '_first-paragraph', 'field_652d09a0485fd'),
(252, 47, 'side-img', '24'),
(253, 47, '_side-img', 'field_652d09bd01d0f'),
(254, 47, 'service-details', 'We offer a comprehensive range of equipment for rent:\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(255, 47, '_service-details', 'field_652d0a6798317'),
(256, 48, 'breadcumb-img', '16'),
(257, 48, '_breadcumb-img', 'field_652d065f0e1d4'),
(258, 48, 'service-img', '20'),
(259, 48, '_service-img', 'field_652d080cb0e4c'),
(260, 48, 'service_heading', ''),
(261, 48, '_service_heading', 'field_652d0822b0e4d'),
(262, 48, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(263, 48, '_first-paragraph', 'field_652d09a0485fd'),
(264, 48, 'side-img', '24'),
(265, 48, '_side-img', 'field_652d09bd01d0f'),
(266, 48, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n\r\nWe offer a comprehensive range of equipment for rent:\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(267, 48, '_service-details', 'field_652d0a6798317'),
(268, 49, 'breadcumb-img', '16'),
(269, 49, '_breadcumb-img', 'field_652d065f0e1d4'),
(270, 49, 'service-img', '20'),
(271, 49, '_service-img', 'field_652d080cb0e4c'),
(272, 49, 'service_heading', ''),
(273, 49, '_service_heading', 'field_652d0822b0e4d'),
(274, 49, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(275, 49, '_first-paragraph', 'field_652d09a0485fd'),
(276, 49, 'side-img', '24'),
(277, 49, '_side-img', 'field_652d09bd01d0f'),
(278, 49, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n\r\nWe offer a comprehensive range of equipment for rent:\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(279, 49, '_service-details', 'field_652d0a6798317'),
(280, 50, 'breadcumb-img', '16'),
(281, 50, '_breadcumb-img', 'field_652d065f0e1d4'),
(282, 50, 'service-img', '20'),
(283, 50, '_service-img', 'field_652d080cb0e4c'),
(284, 50, 'service_heading', ''),
(285, 50, '_service_heading', 'field_652d0822b0e4d'),
(286, 50, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(287, 50, '_first-paragraph', 'field_652d09a0485fd'),
(288, 50, 'side-img', '24'),
(289, 50, '_side-img', 'field_652d09bd01d0f'),
(290, 50, 'service-details', '\r\nWe offer a comprehensive range of equipment for rent:\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(291, 50, '_service-details', 'field_652d0a6798317'),
(292, 51, 'breadcumb-img', '16'),
(293, 51, '_breadcumb-img', 'field_652d065f0e1d4'),
(294, 51, 'service-img', '20'),
(295, 51, '_service-img', 'field_652d080cb0e4c'),
(296, 51, 'service_heading', ''),
(297, 51, '_service_heading', 'field_652d0822b0e4d'),
(298, 51, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(299, 51, '_first-paragraph', 'field_652d09a0485fd'),
(300, 51, 'side-img', '24'),
(301, 51, '_side-img', 'field_652d09bd01d0f'),
(302, 51, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\nWe offer a comprehensive range of equipment for rent:\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(303, 51, '_service-details', 'field_652d0a6798317'),
(304, 52, 'breadcumb-img', '16'),
(305, 52, '_breadcumb-img', 'field_652d065f0e1d4'),
(306, 52, 'service-img', '20'),
(307, 52, '_service-img', 'field_652d080cb0e4c'),
(308, 52, 'service_heading', ''),
(309, 52, '_service_heading', 'field_652d0822b0e4d'),
(310, 52, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(311, 52, '_first-paragraph', 'field_652d09a0485fd'),
(312, 52, 'side-img', '24'),
(313, 52, '_side-img', 'field_652d09bd01d0f'),
(314, 52, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\nWe offer a comprehensive range of equipment for rent:\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>\"E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(315, 52, '_service-details', 'field_652d0a6798317'),
(316, 53, 'breadcumb-img', '16'),
(317, 53, '_breadcumb-img', 'field_652d065f0e1d4'),
(318, 53, 'service-img', '20'),
(319, 53, '_service-img', 'field_652d080cb0e4c'),
(320, 53, 'service_heading', ''),
(321, 53, '_service_heading', 'field_652d0822b0e4d'),
(322, 53, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(323, 53, '_first-paragraph', 'field_652d09a0485fd'),
(324, 53, 'side-img', '24'),
(325, 53, '_side-img', 'field_652d09bd01d0f'),
(326, 53, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n<p>We offer a comprehensive range of equipment for rent:\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>\"E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div></p>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(327, 53, '_service-details', 'field_652d0a6798317'),
(328, 54, 'breadcumb-img', '16'),
(329, 54, '_breadcumb-img', 'field_652d065f0e1d4'),
(330, 54, 'service-img', '20'),
(331, 54, '_service-img', 'field_652d080cb0e4c'),
(332, 54, 'service_heading', ''),
(333, 54, '_service_heading', 'field_652d0822b0e4d'),
(334, 54, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(335, 54, '_first-paragraph', 'field_652d09a0485fd'),
(336, 54, 'side-img', '24'),
(337, 54, '_side-img', 'field_652d09bd01d0f'),
(338, 54, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n<h4 class=\"title\">We offer a comprehensive range of equipment for rent:</h4>\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>VMS Boards: B and C-Class</p></li>\r\n                                <li><p>Trailer Mounted Arrow Boards</p></li>\r\n                                <li><p>Portable Traffic Signals – Solar Powered</p></li>\r\n                                <li><p>\"E Stop” Portable Traffic Signals (PTSS)</p></li>\r\n                                <li><p>“Portaboom” Boom Gate Systems</p></li>\r\n                                <li><p>Armourzone & Concrete Barriers</p></li>\r\n                                <li><p>Road Work Signs and Devices</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>Safety Harness and Impact Protection for the Driver</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(339, 54, '_service-details', 'field_652d0a6798317'),
(340, 55, 'breadcumb-img', '16'),
(341, 55, '_breadcumb-img', 'field_652d065f0e1d4'),
(342, 55, 'service-img', '20'),
(343, 55, '_service-img', 'field_652d080cb0e4c'),
(344, 55, 'service_heading', ''),
(345, 55, '_service_heading', 'field_652d0822b0e4d'),
(346, 55, 'first-paragraph', 'At Chami Traffic, we understand that effective traffic management is crucial for the success and safety of any project, be it construction, special events, or roadwork. Our comprehensive range of services ensures that your traffic needs are met with precision and efficiency.'),
(347, 55, '_first-paragraph', 'field_652d09a0485fd'),
(348, 55, 'side-img', '24'),
(349, 55, '_side-img', 'field_652d09bd01d0f'),
(350, 55, 'service-details', '<p>When engaged in tasks in proximity to roadways, it is imperative to have appropriate traffic control arrangements and permits in place. Moreover, if there is a need to install traffic signs and devices within the road reserve, a comprehensive traffic guidance scheme and/or traffic control plan is essential. Depending on the jurisdiction and the ownership of the road or assets involved, you might also find it necessary to secure a road occupancy permit from the respective authority, whether it be the local council or a specific entity like Vic Roads. This is precisely where Chami Traffic distinguishes itself. We specialize in the meticulous preparation of all the requisite traffic plans and permits essential for your project.</p>\r\n<p>Our expertise lies in ensuring the safety and compliance of your operations with the regulatory framework. We possess the knowledge and experience necessary to formulate robust traffic control strategies and devise meticulous traffic guidance schemes, tailoring each plan to meet the unique requirements of your project. Our team also excels in navigating the complex landscape of permit acquisition, streamlining the process and obtaining the necessary approvals from relevant authorities. By entrusting Chami Traffic, you can be confident that your project will proceed with the utmost adherence to safety standards and regulatory compliance, allowing you to focus on your core objectives while we manage the intricacies of traffic control planning and permit acquisition.\"</p>\r\n<h4 class=\"title\">Our team dedicated to design and planning is here to support you by:</h4>\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>Conducting a thorough hazard and risk assessment for the worksite.</p></li>\r\n                                <li><p>Offering guidance on the necessary level of traffic control.</p></li>\r\n                                <li><p>Procuring the essential traffic guidance schemes (TGS), traffic control plans (TCP), or traffic management plans (TMP) as needed.</p></li>\r\n                                <li><p>Managing the submission process to either the local council or the relevant Main Road Authority, should it be necessary.</p></li>\r\n                                <li><p>Coordinating police permits, when they are a requisite part of the project.</p></li>\r\n</ul>\r\n</div>\r\n<p>Ready to discuss your project\'s traffic needs or get a quote? Contact our team today.</p>\r\n'),
(351, 55, '_service-details', 'field_652d0a6798317'),
(352, 56, 'breadcumb-img', '16'),
(353, 56, '_breadcumb-img', 'field_652d065f0e1d4'),
(354, 56, 'service-img', '20'),
(355, 56, '_service-img', 'field_652d080cb0e4c'),
(356, 56, 'service_heading', ''),
(357, 56, '_service_heading', 'field_652d0822b0e4d'),
(358, 56, 'first-paragraph', 'Chami Traffic is your one-stop solution for all your traffic control equipment rental needs. With a wide range of high-quality equipment and a commitment to safety, we help you manage traffic effectively and ensure the safety of workers and the public.'),
(359, 56, '_first-paragraph', 'field_652d09a0485fd'),
(360, 56, 'side-img', '24'),
(361, 56, '_side-img', 'field_652d09bd01d0f'),
(362, 56, 'service-details', '<p>Our extensive and diverse inventory proudly showcases a comprehensive array of top-tier traffic control equipment, ensuring that you have unfettered access to the full spectrum of tools required for the seamless orchestration of successful traffic management. With equipment meticulously maintained and prepared to meet the exacting standards of traffic management, you can confidently rely on our well-stocked arsenal for a wide range of projects, from construction to events and roadwork.</p>\r\n<h4 class=\"title\">We offer a comprehensive range of equipment for rent:</h4>\r\n<div class=\"list-points\">\r\n<ul class=\"desc-list\">\r\n                                <li><p>Trailer-mounted arrow boards that enhance traffic visibility and safety.</p></li>\r\n                                <li><p>Variable message sign (VMS) boards of both B and C-Class</p></li>\r\n                                <li><p>Solar-powered portable Traffic Signals</p></li>\r\n                                <li><p>Emergency stop (E-Stop) portable traffic signals (PTSS) for rapid response in critical situations.</p></li>\r\n                                <li><p>\"Portaboom\" boom gate systems, providing versatile access control solutions.</p></li>\r\n                                <li><p>Rely on our offerings of Armorzone and concrete barriers to bolster site safety and delineation.</p></li>\r\n                                <li><p>Traffic signs and devices for road work</p></li>\r\n                                <li><p>Scorpion Attenuators (driver supplied)</p></li>\r\n                                <li><p>We also provide safety harnesses and impact protection equipment, prioritizing driver well-being on the job.</p></li>\r\n</ul>\r\n</div>\r\n<p>In addition to equipment rental, we offer traffic management planning and consulting services, helping you create effective traffic control strategies.</p>\r\n<p>Feel free to contact our dedicated customer support team for any inquiries or assistance. </p>'),
(363, 56, '_service-details', 'field_652d0a6798317'),
(364, 57, '_edit_last', '1'),
(365, 57, '_edit_lock', '1697524158:1'),
(366, 57, '_wp_page_template', 'employment.php');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-10-16 06:27:57', '2023-10-16 06:27:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-10-16 06:27:57', '2023-10-16 06:27:57', '', 0, 'http://localhost:8080/chamitraffic/?p=1', 0, 'post', '', 1),
(2, 1, '2023-10-16 06:27:57', '2023-10-16 06:27:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost:8080/chamitraffic/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-10-16 06:27:57', '2023-10-16 06:27:57', '', 0, 'http://localhost:8080/chamitraffic/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-10-16 06:27:57', '2023-10-16 06:27:57', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost:8080/chamitraffic.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-10-16 06:27:57', '2023-10-16 06:27:57', '', 0, 'http://localhost:8080/chamitraffic/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-10-16 06:27:59', '2023-10-16 06:27:59', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-10-16 06:27:59', '2023-10-16 06:27:59', '', 0, 'http://localhost:8080/chamitraffic/2023/10/16/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-10-16 09:13:29', '2023-10-16 09:13:29', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-10-16 09:13:29', '2023-10-16 09:13:29', '', 0, 'http://localhost:8080/chamitraffic/?page_id=6', 0, 'page', '', 0),
(8, 1, '2023-10-16 09:13:29', '2023-10-16 09:13:29', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2023-10-16 09:13:29', '2023-10-16 09:13:29', '', 6, 'http://localhost:8080/chamitraffic/?p=8', 0, 'revision', '', 0),
(9, 1, '2023-10-16 09:14:33', '2023-10-16 09:14:33', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-16 09:14:33\"\n    },\n    \"page_on_front\": {\n        \"value\": \"6\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-10-16 09:14:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'eef1e3c2-8680-4b0b-86cb-ea8fdcb0eabe', '', '', '2023-10-16 09:14:33', '2023-10-16 09:14:33', '', 0, 'http://localhost:8080/chamitraffic/2023/10/16/eef1e3c2-8680-4b0b-86cb-ea8fdcb0eabe/', 0, 'customize_changeset', '', 0),
(10, 1, '2023-10-16 09:20:53', '2023-10-16 09:20:53', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2023-10-16 09:20:53', '2023-10-16 09:20:53', '', 0, 'http://localhost:8080/chamitraffic/?page_id=10', 0, 'page', '', 0),
(11, 1, '2023-10-16 09:20:53', '2023-10-16 09:20:53', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2023-10-16 09:20:53', '2023-10-16 09:20:53', '', 10, 'http://localhost:8080/chamitraffic/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-10-16 09:38:36', '2023-10-16 09:38:36', '', 'Traffic Control', '', 'publish', 'closed', 'closed', '', 'traffic-control', '', '', '2023-10-16 12:30:49', '2023-10-16 12:30:49', '', 0, 'http://localhost:8080/chamitraffic/?page_id=12', 0, 'page', '', 0),
(13, 1, '2023-10-16 09:38:36', '2023-10-16 09:38:36', '', 'Traffic Control', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-16 09:38:36', '2023-10-16 09:38:36', '', 12, 'http://localhost:8080/chamitraffic/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-10-16 09:50:16', '2023-10-16 09:50:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"services.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Service Page', 'service-page', 'publish', 'closed', 'closed', '', 'group_652d065f82b61', '', '', '2023-10-31 06:41:17', '2023-10-31 06:41:17', '', 0, 'http://localhost:8080/chamitraffic/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2023-10-16 09:50:16', '2023-10-16 09:50:16', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Breadcumb Img', 'breadcumb-img', 'publish', 'closed', 'closed', '', 'field_652d065f0e1d4', '', '', '2023-10-16 09:50:16', '2023-10-16 09:50:16', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=15', 0, 'acf-field', '', 0),
(16, 1, '2023-10-16 09:51:41', '2023-10-16 09:51:41', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2023-10-16 09:51:41', '2023-10-16 09:51:41', '', 12, 'http://localhost:8080/chamitraffic/wp-content/uploads/2023/10/bg.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2023-10-16 09:51:46', '2023-10-16 09:51:46', '', 'Traffic Control', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-16 09:51:46', '2023-10-16 09:51:46', '', 12, 'http://localhost:8080/chamitraffic/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-10-16 09:53:39', '2023-10-16 09:53:39', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Service Img', 'service-img', 'publish', 'closed', 'closed', '', 'field_652d080cb0e4c', '', '', '2023-10-16 09:53:39', '2023-10-16 09:53:39', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2023-10-16 09:53:39', '2023-10-16 09:53:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Service Heading', 'service_heading', 'publish', 'closed', 'closed', '', 'field_652d0822b0e4d', '', '', '2023-10-16 09:58:13', '2023-10-16 09:58:13', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&#038;p=19', 2, 'acf-field', '', 0),
(20, 1, '2023-10-16 09:54:47', '2023-10-16 09:54:47', '', 'big-img', '', 'inherit', 'open', 'closed', '', 'big-img', '', '', '2023-10-16 09:54:47', '2023-10-16 09:54:47', '', 12, 'http://localhost:8080/chamitraffic/wp-content/uploads/2023/10/big-img.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2023-10-16 09:54:50', '2023-10-16 09:54:50', '', 'Traffic Control', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-16 09:54:50', '2023-10-16 09:54:50', '', 12, 'http://localhost:8080/chamitraffic/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-10-16 10:00:15', '2023-10-16 10:00:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'first paragraph', 'first-paragraph', 'publish', 'closed', 'closed', '', 'field_652d09a0485fd', '', '', '2023-10-16 10:00:15', '2023-10-16 10:00:15', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=22', 3, 'acf-field', '', 0),
(23, 1, '2023-10-16 10:01:32', '2023-10-16 10:01:32', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'side img', 'side-img', 'publish', 'closed', 'closed', '', 'field_652d09bd01d0f', '', '', '2023-10-16 10:01:32', '2023-10-16 10:01:32', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=23', 4, 'acf-field', '', 0),
(24, 1, '2023-10-16 10:02:08', '2023-10-16 10:02:08', '', 'img', '', 'inherit', 'open', 'closed', '', 'img', '', '', '2023-10-16 10:02:08', '2023-10-16 10:02:08', '', 12, 'http://localhost:8080/chamitraffic/wp-content/uploads/2023/10/img.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2023-10-16 10:02:14', '2023-10-16 10:02:14', '', 'Traffic Control', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-16 10:02:14', '2023-10-16 10:02:14', '', 12, 'http://localhost:8080/chamitraffic/?p=25', 0, 'revision', '', 0),
(26, 1, '2023-10-16 10:03:35', '2023-10-16 10:03:35', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'service details', 'service-details', 'publish', 'closed', 'closed', '', 'field_652d0a6798317', '', '', '2023-10-16 10:03:35', '2023-10-16 10:03:35', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=26', 5, 'acf-field', '', 0),
(27, 1, '2023-10-16 10:04:59', '2023-10-16 10:04:59', '', 'Pedestrian Management', '', 'publish', 'closed', 'closed', '', 'pedestrian-management', '', '', '2023-10-17 04:31:48', '2023-10-17 04:31:48', '', 0, 'http://localhost:8080/chamitraffic/?page_id=27', 0, 'page', '', 0),
(28, 1, '2023-10-16 10:04:59', '2023-10-16 10:04:59', '', 'Pedestrian Management', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-10-16 10:04:59', '2023-10-16 10:04:59', '', 27, 'http://localhost:8080/chamitraffic/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-10-16 10:05:31', '2023-10-16 10:05:31', '', 'Equipments', '', 'publish', 'closed', 'closed', '', 'equipments', '', '', '2023-10-17 05:16:47', '2023-10-17 05:16:47', '', 0, 'http://localhost:8080/chamitraffic/?page_id=29', 0, 'page', '', 0),
(30, 1, '2023-10-16 10:05:31', '2023-10-16 10:05:31', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-16 10:05:31', '2023-10-16 10:05:31', '', 29, 'http://localhost:8080/chamitraffic/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-10-16 10:06:03', '2023-10-16 10:06:03', '', 'Plans and Permits', '', 'publish', 'closed', 'closed', '', 'plans-and-permits', '', '', '2023-10-17 05:12:06', '2023-10-17 05:12:06', '', 0, 'http://localhost:8080/chamitraffic/?page_id=31', 0, 'page', '', 0),
(32, 1, '2023-10-16 10:06:03', '2023-10-16 10:06:03', '', 'Plans and Permits', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-10-16 10:06:03', '2023-10-16 10:06:03', '', 31, 'http://localhost:8080/chamitraffic/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-10-16 10:10:30', '0000-00-00 00:00:00', '', 'Contact Us', '', 'draft', 'closed', 'closed', '', '', '', '', '2023-10-16 10:10:30', '2023-10-16 10:10:30', '', 0, 'http://localhost:8080/chamitraffic/?page_id=33', 0, 'page', '', 0),
(34, 1, '2023-10-16 10:10:50', '2023-10-16 10:10:50', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2023-10-16 10:10:50', '2023-10-16 10:10:50', '', 0, 'http://localhost:8080/chamitraffic/?page_id=34', 0, 'page', '', 0),
(35, 1, '2023-10-16 10:10:50', '2023-10-16 10:10:50', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2023-10-16 10:10:50', '2023-10-16 10:10:50', '', 34, 'http://localhost:8080/chamitraffic/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=39', 6, 'nav_menu_item', '', 0),
(40, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=41', 7, 'nav_menu_item', '', 0),
(42, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '42', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=42', 4, 'nav_menu_item', '', 0),
(43, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 'Employment', '', 'publish', 'closed', 'closed', '', 'employment', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=43', 8, 'nav_menu_item', '', 0),
(44, 1, '2023-10-16 10:17:54', '2023-10-16 10:17:54', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2023-10-16 10:17:54', '2023-10-16 10:17:54', '', 0, 'http://localhost:8080/chamitraffic/?p=44', 9, 'nav_menu_item', '', 0),
(45, 1, '2023-10-16 12:30:49', '2023-10-16 12:30:49', '', 'Traffic Control', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-10-16 12:30:49', '2023-10-16 12:30:49', '', 12, 'http://localhost:8080/chamitraffic/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-10-17 04:31:48', '2023-10-17 04:31:48', '', 'Pedestrian Management', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-10-17 04:31:48', '2023-10-17 04:31:48', '', 27, 'http://localhost:8080/chamitraffic/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-10-17 04:44:04', '2023-10-17 04:44:04', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:44:04', '2023-10-17 04:44:04', '', 29, 'http://localhost:8080/chamitraffic/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-10-17 04:46:26', '2023-10-17 04:46:26', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:46:26', '2023-10-17 04:46:26', '', 29, 'http://localhost:8080/chamitraffic/?p=48', 0, 'revision', '', 0),
(49, 1, '2023-10-17 04:48:49', '2023-10-17 04:48:49', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:48:49', '2023-10-17 04:48:49', '', 29, 'http://localhost:8080/chamitraffic/?p=49', 0, 'revision', '', 0),
(50, 1, '2023-10-17 04:53:20', '2023-10-17 04:53:20', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:53:20', '2023-10-17 04:53:20', '', 29, 'http://localhost:8080/chamitraffic/?p=50', 0, 'revision', '', 0),
(51, 1, '2023-10-17 04:53:35', '2023-10-17 04:53:35', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:53:35', '2023-10-17 04:53:35', '', 29, 'http://localhost:8080/chamitraffic/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-10-17 04:54:12', '2023-10-17 04:54:12', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 04:54:12', '2023-10-17 04:54:12', '', 29, 'http://localhost:8080/chamitraffic/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-10-17 05:01:04', '2023-10-17 05:01:04', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 05:01:04', '2023-10-17 05:01:04', '', 29, 'http://localhost:8080/chamitraffic/?p=53', 0, 'revision', '', 0),
(54, 1, '2023-10-17 05:02:11', '2023-10-17 05:02:11', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 05:02:11', '2023-10-17 05:02:11', '', 29, 'http://localhost:8080/chamitraffic/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-10-17 05:12:06', '2023-10-17 05:12:06', '', 'Plans and Permits', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2023-10-17 05:12:06', '2023-10-17 05:12:06', '', 31, 'http://localhost:8080/chamitraffic/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-10-17 05:16:47', '2023-10-17 05:16:47', '', 'Equipments', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-10-17 05:16:47', '2023-10-17 05:16:47', '', 29, 'http://localhost:8080/chamitraffic/?p=56', 0, 'revision', '', 0),
(57, 1, '2023-10-17 05:22:57', '2023-10-17 05:22:57', '', 'Employment', '', 'publish', 'closed', 'closed', '', 'employment', '', '', '2023-10-17 05:22:57', '2023-10-17 05:22:57', '', 0, 'http://localhost:8080/chamitraffic/?page_id=57', 0, 'page', '', 0),
(58, 1, '2023-10-17 05:22:57', '2023-10-17 05:22:57', '', 'Employment', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2023-10-17 05:22:57', '2023-10-17 05:22:57', '', 57, 'http://localhost:8080/chamitraffic/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-10-31 06:41:17', '2023-10-31 06:41:17', 'a:19:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:12:\"preview_size\";s:6:\"medium\";}', 'Images slider', 'images_slider', 'publish', 'closed', 'closed', '', 'field_6540a179da5ec', '', '', '2023-10-31 06:41:17', '2023-10-31 06:41:17', '', 14, 'http://localhost:8080/chamitraffic/?post_type=acf-field&p=59', 6, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary', 'primary', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(36, 2, 0),
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0),
(41, 2, 0),
(42, 2, 0),
(43, 2, 0),
(44, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 9);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1697449901'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BD0pkZf1x9kXAHSEnE.3G06lTz3Nig/', 'admin', 'info@achyutlabs.com', 'http://localhost:8080/chamitraffic', '2023-10-16 06:27:57', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
