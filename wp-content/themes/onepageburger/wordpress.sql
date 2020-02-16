-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 16 fév. 2020 à 11:39
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `wordpress`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=MyISAM AUTO_INCREMENT=346 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Resto burger', 'yes'),
(4, 'blogdescription', 'Check the best burger', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'francois.simao@hotmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=93&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:39:\"disable-gutenberg/disable-gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:67:\"C:\\wamp64\\www\\wordpress/wp-content/themes/twentyseventeen/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'onepageburger', 'yes'),
(41, 'stylesheet', 'onepageburger', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:24:{i:2;a:4:{s:5:\"title\";s:20:\"À propos de ce site\";s:4:\"text\";s:99:\"C’est peut-être le bon endroit pour vous présenter et votre site ou insérer quelques crédits.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:14:\"Retrouvez-nous\";s:4:\"text\";s:189:\"<strong>Adresse</strong>\nAvenue des Champs-Élysées\n75008, Paris\n\n<strong>Heures d’ouverture</strong>\nDu lundi au vendredi : 9h00&ndash;17h00\nLes samedi et dimanche : 11h00&ndash;15h00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:39:\"<p class=\"fs-21px\">BURGER DU MOMENT</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:153:\"L\'ARGENTIN\r\n<p class=\"text-danger\">15.90€</p>\r\nPesto de tomate maison\r\n+\r\nTranches de rumstek\r\nsnacker\r\n+\r\nChimichurri\r\n+\r\nSalade\r\n+\r\nTomate\r\n+\r\nAvocat\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:6;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:35:\"<p class=\"fs-21px\">MENU DU MIDI</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:419:\"                    <p>/ / / / / / / / / / </p>\r\n                    <p class=\"text-danger\">12.90€</p>\r\n                    <p>BURGER au choix<br>(sauf Fun Burger et Burger du mois)<br>+<br>frites\r\n                        \"maisons\"<br>+<br>1 boisson SOFT<br>(+1.50€ Burger \"Le Funny Duck\" + 1€ le verre de vin + 1€\r\n                        la\r\n                        pression Tiger Bock + 1.50€ le Picon)</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:35:\"<p class=\"fs-21px\">MENU DU MIDI</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:260:\"/ / / / / / / / / /\r\n<p class=\"text-danger\">12.90€</p>\r\nBURGER au choix\r\n(sauf Fun Burger et Burger du mois)\r\n+\r\nfrites\r\n\"maisons\"\r\n+\r\n1 boisson SOFT\r\n(+1.50€ Burger \"Le Funny Duck\" + 1€ le verre de vin + 1€\r\nla\r\npression Tiger Bock + 1.50€ le Picon)\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:10;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:51:\"<p class=\"fs-21px\">MENU KIDS\r\n(jusqu\'à 12 ans)</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:11;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:193:\"<p class=\"text-danger mt-2\">7.90€</p>\r\n1 plat : Steak haché ou Burger enfant\r\n(cheddar,\r\nketchup,mayonnaise)\r\n+\r\nfrites\r\n\"maison\"\r\n+\r\n1 boisson SOFT\r\n+\r\n1 dessert (glace 1 boule\r\nou compote)\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:12;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:38:\"<p class=\"fs-21px\">OFFRE DU MOMENT</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:14;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:231:\"/ / / / / / / / / /\r\n<p class=\"text-danger mb-1\">1 + 1 = 3 !</p>\r\n<p class=\"line-height mt-1\">2 Burgers achetés = 1 Burger Américains offert\r\n(avec frites\r\n\"maison\")\r\nValable\r\nuniquement du mardi au jeudi, le soir à emporter</p>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:15;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:319:\"<h4 class=\"card__heading\"><span class=\"card__heading-span card__heading-span--1\">LE Vesoul’R 12.90€ </span></h4>\r\n<div class=\"card__details\">\r\n<ul>\r\n 	<li>Steak pur bœuf 150 gr</li>\r\n 	<li>Fromage de bleu</li>\r\n 	<li>Oignons caramélisés</li>\r\n 	<li>Poitrine fumée</li>\r\n 	<li>Poitrine fumée</li>\r\n</ul>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:16;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:463:\"<div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Steak pur bœuf 150 gr</li>\r\n                                    <li>Fromage de bleu</li>\r\n                                    <li>Oignons caramélisés</li>\r\n                                    <li>Poitrine fumée</li>\r\n                                    <li>Poitrine fumée</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:17;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:705:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">LE FUNNY DUCK 14.90€</span>\r\n                            </h4>\r\n                            \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Steak pur boeuf 150 gr</li>\r\n                                    <li>Confit de canard</li>\r\n                                    <li>Oignons caramélisés</li>\r\n                                    <li>Confiture de figues</li>\r\n                                    <li>Chèvre frais</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:18;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:679:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">L’AMÉRICAIN 11.90€</span>\r\n                            </h4>\r\n                            \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Steak pur bœuf 150 gr</li>\r\n                                    <li>Salade, Tomate</li>\r\n                                    <li>Oignons</li>\r\n                                    <li>Cheddar</li>\r\n                                    <li>Sauce cocktail</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:19;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:771:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">LE VEGGIE 12.90€ </span>\r\n                            </h4>\r\n                            \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Galette de pomme de terre</li>\r\n                                    <li>Champignons</li>\r\n                                    <li>Courgettes grillées</li>\r\n                                    <li>Tomates confites</li>\r\n                                    <li>Tomme de Savoie</li>\r\n                                    <li>Fromage blanc “maison”</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:20;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:752:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">LE MONTAGNARD 12.90€ </span>\r\n                            </h4>\r\n                            \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Steak pur bœuf 150 gr</li>\r\n                                    <li>Raclette</li>\r\n                                    <li>Poitrine fumée</li>\r\n                                    <li>Oignons caramélisés</li>\r\n                                    <li>Ciboulette</li>\r\n                                    <li>Sauce cocktail</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:21;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:762:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">Le Saônois 13.90€ </span>\r\n                            </h4>\r\n                            \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Steak pur bœuf 150 gr</li>\r\n                                    <li>Munster</li>\r\n                                    <li>Galette de pomme de terre</li>\r\n                                    <li>Oignons caramélisés</li>\r\n                                    <li>Poitrine fumée</li>\r\n                                    <li>Sauce aïoli</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:22;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:919:\"<h4 class=\"card__heading\">\r\n                                <span class=\"card__heading-span card__heading-span--1\">LE FUN BURGER 14.90€</span>\r\n                            </h4>                           \r\n                            <div class=\"card__details\">\r\n                                <ul>\r\n                                    <li>Composez-le vous-même : </li>\r\n                                    <li>une viande au choix + 4 ingrédients au choix + une sauce au choix</li>\r\n                                    <li>Nos burgers sont accompagnés de frites “maison” ou d’une petite salade verte.\r\n                                    </li>\r\n                                    <li>Pour les grosses faims, une viande peut être rajoutée (+ 4€) ou un ingrédient au\r\n                                        choix (+ 1€).</li>\r\n                                </ul>\r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:23;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:296:\"<h4 class=\"card__heading\"><span class=\" card__heading-span card__heading-span--1\">LE CHICKY 11.90€</span></h4>\r\n<div class=\"card__details\">\r\n<ul>\r\n 	<li>Poulet rôti</li>\r\n 	<li>Salade, Tomate</li>\r\n 	<li>Oignons , caramélisés</li>\r\n 	<li>Sauce tartare</li>\r\n 	<li>Cheddar</li>\r\n</ul>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:25;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:958:\"<div class=\"card__side card__side--back card__side--back-1\">\r\n<div class=\"card__cta mt-5\">\r\n<div class=\"card__price-box\">\r\n<p class=\"card__price-only\">LE VESOUL’R</p>\r\n<p class=\"card__price-value\">12.90€</p>\r\n\r\n</div>\r\n<a id=\"Reserve1\" class=\"btn btn--white\" href=\"#popup\">Reserver!</a>\r\n\r\n</div>\r\n<div class=\"card-des\">\r\n<div class=\"card-rating text-center\"><span class=\"text-light\">Avis :</span>\r\n<img class=\"card-rating-img ml-2\" src=\"wp-content/themes/onepageburger/images/bouton-burger.png\" alt=\"...\" />\r\n<img class=\"card-rating-img\" src=\"wp-content/themes/onepageburger/images/bouton-burger.png\" alt=\"...\" />\r\n<img class=\"card-rating-img\" src=\"wp-content/themes/onepageburger/images/bouton-burger.png\" alt=\"...\" />\r\n<img class=\"card-rating-img\" src=\"wp-content/themes/onepageburger/images/bouton-burger.png\" alt=\"...\" />\r\n<img class=\"card-rating-img\" src=\"wp-content/themes/onepageburger/images/bouton-burger.png\" alt=\"...\" /></div>\r\n</div>\r\n</div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:26;a:4:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:475:\"<div class=\"card__cta mt-5\">\r\n                                <div class=\"card__price-box\">\r\n                                    <p class=\"card__price-only\">LE VESOUL’R</p>\r\n                                    <p class=\"card__price-value\">12.90€</p>\r\n                                    \r\n                                </div>\r\n                                <a href=\"#popup\" id=\"Reserve1\" class=\"btn btn--white\">Reserver!</a>       \r\n                            </div>\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '93', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1594477031', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:17:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:7:\"text-16\";i:1;s:15:\"media_gallery-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:8:\"search-2\";i:5;s:14:\"recent-posts-2\";i:6;s:17:\"recent-comments-2\";i:7;s:10:\"archives-2\";i:8;s:12:\"categories-2\";i:9;s:6:\"meta-2\";}s:6:\"offre5\";a:1:{i:0;s:7:\"text-15\";}s:6:\"offre6\";a:1:{i:0;s:7:\"text-17\";}s:6:\"offre7\";a:1:{i:0;s:7:\"text-18\";}s:6:\"offre8\";a:1:{i:0;s:7:\"text-19\";}s:6:\"offre9\";a:1:{i:0;s:7:\"text-20\";}s:7:\"offre10\";a:1:{i:0;s:7:\"text-23\";}s:7:\"offre11\";a:1:{i:0;s:7:\"text-21\";}s:7:\"offre12\";a:1:{i:0;s:7:\"text-22\";}s:6:\"offre1\";a:2:{i:0;s:6:\"text-4\";i:1;s:6:\"text-5\";}s:6:\"offre2\";a:2:{i:0;s:6:\"text-8\";i:1;s:6:\"text-9\";}s:6:\"offre3\";a:2:{i:0;s:7:\"text-10\";i:1;s:7:\"text-11\";}s:6:\"offre4\";a:2:{i:0;s:7:\"text-12\";i:1;s:7:\"text-14\";}s:14:\"my_custom_zone\";a:1:{i:0;s:13:\"media_image-2\";}s:15:\"nouvelle-zone-2\";a:2:{i:0;s:6:\"text-6\";i:1;s:6:\"text-7\";}s:7:\"offre13\";a:2:{i:0;s:7:\"text-25\";i:1;s:7:\"text-26\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:6:{i:1581697033;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581733033;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1581776232;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581776261;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581776263;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:2:{i:2;a:15:{s:4:\"size\";s:6:\"medium\";s:5:\"width\";i:1023;s:6:\"height\";i:702;s:7:\"caption\";s:0:\"\";s:3:\"alt\";s:0:\"\";s:9:\"link_type\";s:6:\"custom\";s:8:\"link_url\";s:0:\"\";s:13:\"image_classes\";s:0:\"\";s:12:\"link_classes\";s:0:\"\";s:8:\"link_rel\";s:0:\"\";s:17:\"link_target_blank\";b:0;s:11:\"image_title\";s:0:\"\";s:13:\"attachment_id\";i:79;s:3:\"url\";s:89:\"http://localhost/wordpress/wp-content/uploads/2020/01/3939131203_fc9bde4999_b-300x206.jpg\";s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:2:{i:2;a:6:{s:5:\"title\";s:0:\"\";s:3:\"ids\";a:0:{}s:7:\"columns\";i:3;s:4:\"size\";s:9:\"thumbnail\";s:9:\"link_type\";s:4:\"post\";s:14:\"orderby_random\";b:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579089963;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(344, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581694158;s:7:\"checked\";a:4:{s:13:\"onepageburger\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(343, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581694158;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(341, '_site_transient_timeout_theme_roots', '1581695953', 'no'),
(342, '_site_transient_theme_roots', 'a:4:{s:13:\"onepageburger\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(133, 'can_compress_scripts', '1', 'no'),
(271, 'category_children', 'a:0:{}', 'yes'),
(294, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(345, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1581694159;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:3:\"2.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"disable-gutenberg/disable-gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/disable-gutenberg\";s:4:\"slug\";s:17:\"disable-gutenberg\";s:6:\"plugin\";s:39:\"disable-gutenberg/disable-gutenberg.php\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/disable-gutenberg/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/disable-gutenberg.2.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-256x256.png?rev=1925990\";s:2:\"1x\";s:70:\"https://ps.w.org/disable-gutenberg/assets/icon-128x128.png?rev=1925990\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(219, 'recovery_mode_email_last_sent', '1579178844', 'yes'),
(150, 'recently_activated', 'a:0:{}', 'yes'),
(153, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579085557;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(218, 'theme_mods_onepageburger', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"menuheader\";i:6;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1579088807;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:8:\"search-2\";i:3;s:14:\"recent-posts-2\";i:4;s:17:\"recent-comments-2\";i:5;s:10:\"archives-2\";i:6;s:12:\"categories-2\";i:7;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:89;}', 'yes'),
(157, 'current_theme', 'maquette burger', 'yes'),
(158, 'theme_switched', '', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(205, 85, '_menu_item_object', 'custom'),
(204, 85, '_menu_item_object_id', '85'),
(199, 84, '_menu_item_xfn', ''),
(200, 84, '_menu_item_url', '#'),
(201, 84, '_menu_item_orphaned', '1579179133'),
(202, 85, '_menu_item_type', 'custom'),
(203, 85, '_menu_item_menu_item_parent', '0'),
(198, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 71, '_edit_lock', '1579170009:1'),
(176, 80, '_edit_last', '1'),
(177, 80, '_edit_lock', '1579169989:1'),
(196, 84, '_menu_item_object', 'custom'),
(180, 80, '_wp_trash_meta_status', 'publish'),
(181, 80, '_wp_trash_meta_time', '1579170137'),
(182, 80, '_wp_desired_post_slug', 'fffffffffffffffff'),
(183, 64, '_wp_page_template', 'page.php'),
(242, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:158;s:6:\"height\";i:155;s:4:\"file\";s:23:\"2020/01/logo-navbar.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"logo-navbar-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(241, 89, '_wp_attached_file', '2020/01/logo-navbar.png'),
(240, 71, '_wp_desired_post_slug', 'article-essai'),
(239, 71, '_wp_trash_meta_time', '1579181201'),
(238, 71, '_wp_trash_meta_status', 'publish'),
(193, 84, '_menu_item_type', 'custom'),
(194, 84, '_menu_item_menu_item_parent', '0'),
(195, 84, '_menu_item_object_id', '84'),
(197, 84, '_menu_item_target', ''),
(168, 71, '_edit_last', '1'),
(166, 64, '_edit_last', '1'),
(167, 64, '_edit_lock', '1579262560:1'),
(206, 85, '_menu_item_target', ''),
(207, 85, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(208, 85, '_menu_item_xfn', ''),
(209, 85, '_menu_item_url', '#'),
(211, 86, '_menu_item_type', 'custom'),
(212, 86, '_menu_item_menu_item_parent', '0'),
(213, 86, '_menu_item_object_id', '86'),
(214, 86, '_menu_item_object', 'custom'),
(215, 86, '_menu_item_target', ''),
(216, 86, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 86, '_menu_item_xfn', ''),
(218, 86, '_menu_item_url', '#'),
(220, 87, '_menu_item_type', 'custom'),
(221, 87, '_menu_item_menu_item_parent', '0'),
(222, 87, '_menu_item_object_id', '87'),
(223, 87, '_menu_item_object', 'custom'),
(224, 87, '_menu_item_target', ''),
(225, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 87, '_menu_item_xfn', ''),
(227, 87, '_menu_item_url', '#'),
(229, 88, '_menu_item_type', 'custom'),
(230, 88, '_menu_item_menu_item_parent', '0'),
(231, 88, '_menu_item_object_id', '88'),
(232, 88, '_menu_item_object', 'custom'),
(233, 88, '_menu_item_target', ''),
(234, 88, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(235, 88, '_menu_item_xfn', ''),
(236, 88, '_menu_item_url', '#'),
(243, 89, '_wp_attachment_image_alt', 'logo'),
(245, 90, '_wp_trash_meta_status', 'publish'),
(246, 90, '_wp_trash_meta_time', '1579181583'),
(247, 91, '_wp_trash_meta_status', 'publish'),
(248, 91, '_wp_trash_meta_time', '1579182208'),
(249, 92, '_wp_trash_meta_status', 'publish'),
(250, 92, '_wp_trash_meta_time', '1579182228'),
(251, 93, '_edit_last', '1'),
(252, 93, '_wp_page_template', 'page.php'),
(253, 93, '_edit_lock', '1579264043:1'),
(254, 95, '_wp_attached_file', '2020/01/burger-1.png'),
(255, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:439;s:6:\"height\";i:237;s:4:\"file\";s:20:\"2020/01/burger-1.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"burger-1-300x162.png\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"burger-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 64, '_wp_desired_post_slug', 'bbfxdfd'),
(260, 64, '_wp_trash_meta_time', '1579262710'),
(259, 64, '_wp_trash_meta_status', 'publish'),
(262, 97, '_edit_last', '1'),
(263, 97, '_wp_page_template', 'default'),
(264, 97, '_edit_lock', '1579264841:1'),
(265, 97, '_wp_trash_meta_status', 'publish'),
(266, 97, '_wp_trash_meta_time', '1579264990'),
(267, 97, '_wp_desired_post_slug', '97-2');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(89, 1, '2020-01-16 14:32:39', '2020-01-16 13:32:39', '', 'logo-navbar', '', 'inherit', 'open', 'closed', '', 'logo-navbar', '', '', '2020-01-16 14:32:58', '2020-01-16 13:32:58', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/logo-navbar.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2020-01-16 13:52:12', '0000-00-00 00:00:00', '', '|OFFRES & MENUS', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-01-16 13:52:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=84', 1, 'nav_menu_item', '', 0),
(85, 1, '2020-01-16 13:53:34', '2020-01-16 12:53:34', '', '|OFFRES ET MENUS', '', 'publish', 'closed', 'closed', '', 'offres-et-menus', '', '', '2020-01-16 13:54:46', '2020-01-16 12:54:46', '', 0, 'http://localhost/wordpress/?p=85', 1, 'nav_menu_item', '', 0),
(86, 1, '2020-01-16 13:54:25', '2020-01-16 12:54:25', '', '|LA CARTE', '', 'publish', 'closed', 'closed', '', 'la-carte', '', '', '2020-01-16 13:54:46', '2020-01-16 12:54:46', '', 0, 'http://localhost/wordpress/?p=86', 2, 'nav_menu_item', '', 0),
(87, 1, '2020-01-16 13:54:25', '2020-01-16 12:54:25', '', '|COMMANDER', '', 'publish', 'closed', 'closed', '', 'commander', '', '', '2020-01-16 13:54:46', '2020-01-16 12:54:46', '', 0, 'http://localhost/wordpress/?p=87', 3, 'nav_menu_item', '', 0),
(88, 1, '2020-01-16 13:54:25', '2020-01-16 12:54:25', '', '|CONTACT & ACCES', '', 'publish', 'closed', 'closed', '', 'contact-acces', '', '', '2020-01-16 13:54:46', '2020-01-16 12:54:46', '', 0, 'http://localhost/wordpress/?p=88', 4, 'nav_menu_item', '', 0),
(90, 1, '2020-01-16 14:33:03', '2020-01-16 13:33:03', '{\n    \"onepageburger::custom_logo\": {\n        \"value\": 89,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-16 13:33:03\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd94d4650-2308-40ea-9748-e98699c6657b', '', '', '2020-01-16 14:33:03', '2020-01-16 13:33:03', '', 0, 'http://localhost/wordpress/2020/01/16/d94d4650-2308-40ea-9748-e98699c6657b/', 0, 'customize_changeset', '', 0),
(91, 1, '2020-01-16 14:43:28', '2020-01-16 13:43:28', '{\n    \"blogdescription\": {\n        \"value\": \"Check the best burger\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-16 13:43:28\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '80cd9771-ee21-4fdf-96ca-458953a446ab', '', '', '2020-01-16 14:43:28', '2020-01-16 13:43:28', '', 0, 'http://localhost/wordpress/2020/01/16/80cd9771-ee21-4fdf-96ca-458953a446ab/', 0, 'customize_changeset', '', 0),
(92, 1, '2020-01-16 14:43:48', '2020-01-16 13:43:48', '{\n    \"blogname\": {\n        \"value\": \"Resto burger\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-01-16 13:43:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b5578492-2497-4e4d-8be4-71ba75daca5f', '', '', '2020-01-16 14:43:48', '2020-01-16 13:43:48', '', 0, 'http://localhost/wordpress/2020/01/16/b5578492-2497-4e4d-8be4-71ba75daca5f/', 0, 'customize_changeset', '', 0),
(93, 1, '2020-01-16 14:58:49', '2020-01-16 13:58:49', '<p class=\"p-header text-center text-light\">Bienvenue dans notre chaleureux\r\nrestaurant où l\'on vous accueillera comme notre famille</p>', '', '', 'publish', 'closed', 'closed', '', '93-2', '', '', '2020-01-17 13:29:36', '2020-01-17 12:29:36', '', 0, 'http://localhost/wordpress/?page_id=93', 0, 'page', '', 0),
(94, 1, '2020-01-16 14:58:49', '2020-01-16 13:58:49', '<p class=\"p-header text-center text-light\">Bienvenue dans notre chaleureux\r\nrestaurant où l\'on vous accueillera comme notre famille</p>', '', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2020-01-16 14:58:49', '2020-01-16 13:58:49', '', 93, 'http://localhost/wordpress/2020/01/16/93-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2020-01-16 17:29:16', '2020-01-16 16:29:16', '', 'burger-1', '', 'inherit', 'open', 'closed', '', 'burger-1', '', '', '2020-01-17 12:59:40', '2020-01-17 11:59:40', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/01/burger-1.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2020-01-17 13:38:13', '2020-01-17 12:38:13', '<img class=\"img-fluid card__picture--img\" src=\"wp-content/themes/onepageburger/images/burger-1.png\" alt=\"...\" />\r\n<h4 class=\"card__heading\"><span class=\"card__heading-span card__heading-span--1\">LE Vesoul’R 12.90€ </span></h4>\r\n<div class=\"card__details\">\r\n<ul>\r\n 	<li>Steak pur bœuf 150 gr</li>\r\n 	<li>Fromage de bleu</li>\r\n 	<li>Oignons caramélisés</li>\r\n 	<li>Poitrine fumée</li>\r\n 	<li>Poitrine fumée</li>\r\n</ul>\r\n</div>', '', '', 'trash', 'closed', 'closed', '', '97-2__trashed', '', '', '2020-01-17 13:43:10', '2020-01-17 12:43:10', '', 0, 'http://localhost/wordpress/?page_id=97', 0, 'page', '', 0),
(98, 1, '2020-01-17 13:38:13', '2020-01-17 12:38:13', '<img class=\"img-fluid card__picture--img\" src=\"wp-content/themes/onepageburger/images/burger-1.png\" alt=\"...\" />', '', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-01-17 13:38:13', '2020-01-17 12:38:13', '', 97, 'http://localhost/wordpress/2020/01/17/97-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2020-01-17 13:41:54', '2020-01-17 12:41:54', '<img class=\"img-fluid card__picture--img\" src=\"wp-content/themes/onepageburger/images/burger-1.png\" alt=\"...\" />\r\n<h4 class=\"card__heading\"><span class=\"card__heading-span card__heading-span--1\">LE Vesoul’R 12.90€ </span></h4>\r\n<div class=\"card__details\">\r\n<ul>\r\n 	<li>Steak pur bœuf 150 gr</li>\r\n 	<li>Fromage de bleu</li>\r\n 	<li>Oignons caramélisés</li>\r\n 	<li>Poitrine fumée</li>\r\n 	<li>Poitrine fumée</li>\r\n</ul>\r\n</div>', '', '', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2020-01-17 13:41:54', '2020-01-17 12:41:54', '', 97, 'http://localhost/wordpress/2020/01/17/97-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-01-16 11:21:57', '2020-01-16 10:21:57', 'vtbgfbhfn', 'fffffffffffffffff', '', 'trash', 'open', 'open', '', 'fffffffffffffffff__trashed', '', '', '2020-01-16 11:22:17', '2020-01-16 10:22:17', '', 0, 'http://localhost/wordpress/?p=80', 0, 'post', '', 0),
(81, 1, '2020-01-16 11:21:57', '2020-01-16 10:21:57', 'vtbgfbhfn', 'fffffffffffffffff', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2020-01-16 11:21:57', '2020-01-16 10:21:57', '', 80, 'http://localhost/wordpress/2020/01/16/80-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2020-01-16 08:17:16', '2020-01-16 07:17:16', 'bienvenu', 'essai', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-16 08:17:16', '2020-01-16 07:17:16', '', 64, 'http://localhost/wordpress/2020/01/16/64-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-01-16 08:15:08', '2020-01-16 07:15:08', '<img class=\"alignnone size-medium wp-image-76\" src=\"http://localhost/wordpress/wp-content/uploads/2020/01/79476564_2788787071151909_7361180766857854976_n-300x291.jpg\" alt=\"\" width=\"300\" height=\"291\" />bienvenu', 'essai', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-16 08:15:08', '2020-01-16 07:15:08', '', 64, 'http://localhost/wordpress/2020/01/16/64-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-01-15 18:23:04', '2020-01-15 17:23:04', 'olaaaaaaaaaaa', 'article essai', '', 'trash', 'open', 'open', '', 'article-essai__trashed', '', '', '2020-01-16 14:26:42', '2020-01-16 13:26:42', '', 0, 'http://localhost/wordpress/?p=71', 0, 'post', '', 0),
(72, 1, '2020-01-15 18:20:36', '2020-01-15 17:20:36', '', 'article essai', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-15 18:20:36', '2020-01-15 17:20:36', '', 71, 'http://localhost/wordpress/2020/01/15/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-01-15 18:22:58', '2020-01-15 17:22:58', 'olaaaaaaaaaaa', 'article essai', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2020-01-15 18:22:58', '2020-01-15 17:22:58', '', 71, 'http://localhost/wordpress/2020/01/15/71-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-01-14 13:48:40', '2020-01-14 12:48:40', 'bienvenu', 'essai', '', 'trash', 'closed', 'closed', '', 'bbfxdfd__trashed', '', '', '2020-01-17 13:05:10', '2020-01-17 12:05:10', '', 0, 'http://localhost/wordpress/?page_id=64', 0, 'page', '', 0),
(65, 1, '2020-01-14 13:48:40', '2020-01-14 12:48:40', 'gffdxhxx', 'bbfxdfd', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-14 13:48:40', '2020-01-14 12:48:40', '', 64, 'http://localhost/wordpress/2020/01/14/64-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2020-01-15 13:08:21', '2020-01-15 12:08:21', 'gffdxhxx', 'essai', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-15 13:08:21', '2020-01-15 12:08:21', '', 64, 'http://localhost/wordpress/2020/01/15/64-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2020-01-15 13:08:31', '2020-01-15 12:08:31', 'bienvenu', 'essai', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2020-01-15 13:08:31', '2020-01-15 12:08:31', '', 64, 'http://localhost/wordpress/2020/01/15/64-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(6, 'Menu header', 'menu-header', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(71, 1, 0),
(80, 1, 0),
(85, 6, 0),
(86, 6, 0),
(87, 6, 0),
(88, 6, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(6, 6, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Zlatan25'),
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
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"cef0b11cc0a0cd3783cdc6b11a7e0682816c4a0e357759974e2b5fc4618adb3d\";a:4:{s:10:\"expiration\";i:1579445127;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1579272327;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(21, 1, 'wp_user-settings-time', '1579268876'),
(22, 1, 'closedpostboxes_page', 'a:0:{}'),
(23, 1, 'metaboxhidden_page', 'a:6:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(24, 1, 'wp_media_library_mode', 'grid'),
(25, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Zlatan25', '$P$BvhLRQ6d6SRaECBKb8d1v85Me4JJXi/', 'zlatan25', 'francois.simao@hotmail.com', '', '2020-01-13 14:17:11', '', 0, 'Zlatan25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
