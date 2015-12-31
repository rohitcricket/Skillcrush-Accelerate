-- phpMyAdmin SQL Dump
-- version 4.2.8.1
-- http://www.phpmyadmin.net
--
-- Host: pod-1664.wpengine.com
-- Generation Time: Nov 10, 2014 at 07:47 PM
-- Server version: 5.5.40-36.1-log
-- PHP Version: 5.3.2-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wp_skillcrush203`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2014-11-05 23:12:50', '2014-11-05 23:12:50', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0),
(2, 47329, 'Skillcrush RSS Feed', '', 'http://simplenewz.com/2014-10-07/Mainstream/feed/11202', '54.91.190.86', '2014-10-07 02:48:32', '2014-10-07 02:48:32', '[&#8230;] How Much Should You Charge for Freelance Web Design? [&#8230;]', 0, '0', '', 'pingback', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://skillcrush203.wpengine.com/', 'yes'),
(2, 'home', 'http://skillcrush203.wpengine.com/', 'yes'),
(3, 'blogname', 'Accelerate', 'yes'),
(4, 'blogdescription', 'Accelerate is a strategy and maketing agency aimed at making our clients visible and building their businesses.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'adda@skillcrush.com', 'yes'),
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
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:41:"wordpress-importer/wordpress-importer.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'accelerate-theme', 'yes'),
(42, 'stylesheet', 'accelerate-theme', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '29630', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '6', 'yes'),
(85, 'page_on_front', '5', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '29630', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:5:{i:1415651034;a:1:{s:26:"importer_scheduled_cleanup";a:1:{s:32:"8ed56e6c25286330953b4891a51c25d9";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:17;}}}}i:1415661173;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1415661184;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1415690520;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.0.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.0-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.0-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.0";s:7:"version";s:3:"4.0";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"3.8";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1415564600;s:15:"version_checked";s:3:"4.0";s:12:"translations";a:0:{}}', 'yes'),
(100, '_transient_random_seed', '08aec1e0cae22b19b4afef18ed1a2f40', 'yes'),
(104, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1415564601;s:7:"checked";a:4:{s:16:"accelerate-theme";s:3:"1.0";s:14:"twentyfourteen";s:3:"1.2";s:14:"twentythirteen";s:3:"1.3";s:12:"twentytwelve";s:3:"1.5";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(105, '_site_transient_timeout_browser_32596d9e421c7f99a0ff21594036956e', '1415833979', 'yes'),
(106, '_site_transient_browser_32596d9e421c7f99a0ff21594036956e', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:7:"Firefox";s:7:"version";s:4:"32.0";s:10:"update_url";s:23:"http://www.firefox.com/";s:7:"img_src";s:50:"http://s.wordpress.org/images/browsers/firefox.png";s:11:"img_src_ssl";s:49:"https://wordpress.org/images/browsers/firefox.png";s:15:"current_version";s:2:"16";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(108, 'can_compress_scripts', '1', 'yes'),
(131, 'theme_mods_twentyfourteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1415229601;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(132, 'current_theme', 'Accelerate Marketing', 'yes'),
(133, 'theme_mods_accelerate-theme', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"top-nav";i:2;s:12:"social-media";i:3;}}', 'yes'),
(134, 'theme_switched', '', 'yes'),
(145, '_site_transient_timeout_browser_619c0e72cd17894710908515fe40b552', '1416151486', 'yes'),
(146, '_site_transient_browser_619c0e72cd17894710908515fe40b552', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"38.0.2125.111";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(163, 'WPLANG', '', 'yes'),
(166, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(174, '_site_transient_timeout_popular_importers_en_US', '1415737392', 'yes'),
(175, '_site_transient_popular_importers_en_US', 'a:2:{s:9:"importers";a:8:{s:7:"blogger";a:4:{s:4:"name";s:7:"Blogger";s:11:"description";s:86:"Install the Blogger importer to import posts, comments, and users from a Blogger blog.";s:11:"plugin-slug";s:16:"blogger-importer";s:11:"importer-id";s:7:"blogger";}s:9:"wpcat2tag";a:4:{s:4:"name";s:29:"Categories and Tags Converter";s:11:"description";s:109:"Install the category/tag converter to convert existing categories to tags or tags to categories, selectively.";s:11:"plugin-slug";s:18:"wpcat2tag-importer";s:11:"importer-id";s:9:"wpcat2tag";}s:11:"livejournal";a:4:{s:4:"name";s:11:"LiveJournal";s:11:"description";s:82:"Install the LiveJournal importer to import posts from LiveJournal using their API.";s:11:"plugin-slug";s:20:"livejournal-importer";s:11:"importer-id";s:11:"livejournal";}s:11:"movabletype";a:4:{s:4:"name";s:24:"Movable Type and TypePad";s:11:"description";s:99:"Install the Movable Type importer to import posts and comments from a Movable Type or TypePad blog.";s:11:"plugin-slug";s:20:"movabletype-importer";s:11:"importer-id";s:2:"mt";}s:4:"opml";a:4:{s:4:"name";s:8:"Blogroll";s:11:"description";s:61:"Install the blogroll importer to import links in OPML format.";s:11:"plugin-slug";s:13:"opml-importer";s:11:"importer-id";s:4:"opml";}s:3:"rss";a:4:{s:4:"name";s:3:"RSS";s:11:"description";s:58:"Install the RSS importer to import posts from an RSS feed.";s:11:"plugin-slug";s:12:"rss-importer";s:11:"importer-id";s:3:"rss";}s:6:"tumblr";a:4:{s:4:"name";s:6:"Tumblr";s:11:"description";s:84:"Install the Tumblr importer to import posts &amp; media from Tumblr using their API.";s:11:"plugin-slug";s:15:"tumblr-importer";s:11:"importer-id";s:6:"tumblr";}s:9:"wordpress";a:4:{s:4:"name";s:9:"WordPress";s:11:"description";s:130:"Install the WordPress importer to import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.";s:11:"plugin-slug";s:18:"wordpress-importer";s:11:"importer-id";s:9:"wordpress";}}s:10:"translated";b:0;}', 'yes'),
(178, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1415564603;s:7:"checked";a:3:{s:19:"akismet/akismet.php";s:5:"3.0.2";s:9:"hello.php";s:3:"1.6";s:41:"wordpress-importer/wordpress-importer.php";s:5:"0.6.1";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.0.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.0.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:41:"wordpress-importer/wordpress-importer.php";O:8:"stdClass":6:{s:2:"id";s:5:"14975";s:4:"slug";s:18:"wordpress-importer";s:6:"plugin";s:41:"wordpress-importer/wordpress-importer.php";s:11:"new_version";s:5:"0.6.1";s:3:"url";s:49:"https://wordpress.org/plugins/wordpress-importer/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wordpress-importer.0.6.1.zip";}}}', 'yes'),
(179, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(191, 'category_children', 'a:0:{}', 'yes'),
(192, 'rewrite_rules', 'a:71:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(/[0-9]+)?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(193, 'limit_login_retries', 'a:1:{s:11:"108.73.3.12";i:1;}', 'no'),
(194, 'limit_login_retries_valid', 'a:1:{s:11:"108.73.3.12";i:1415679111;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, '_edit_last', '1'),
(3, 5, '_wp_page_template', 'default'),
(4, 5, '_edit_lock', '1415564448:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_wp_page_template', 'default'),
(7, 6, '_edit_lock', '1415229446:1'),
(8, 9, '_menu_item_type', 'post_type'),
(9, 9, '_menu_item_menu_item_parent', '0'),
(10, 9, '_menu_item_object_id', '5'),
(11, 9, '_menu_item_object', 'page'),
(12, 9, '_menu_item_target', ''),
(13, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(14, 9, '_menu_item_xfn', ''),
(15, 9, '_menu_item_url', ''),
(16, 9, '_menu_item_orphaned', '1415546843'),
(17, 10, '_menu_item_type', 'post_type'),
(18, 10, '_menu_item_menu_item_parent', '0'),
(19, 10, '_menu_item_object_id', '6'),
(20, 10, '_menu_item_object', 'page'),
(21, 10, '_menu_item_target', ''),
(22, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 10, '_menu_item_xfn', ''),
(24, 10, '_menu_item_url', ''),
(26, 11, '_menu_item_type', 'post_type'),
(27, 11, '_menu_item_menu_item_parent', '0'),
(28, 11, '_menu_item_object_id', '5'),
(29, 11, '_menu_item_object', 'page'),
(30, 11, '_menu_item_target', ''),
(31, 11, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(32, 11, '_menu_item_xfn', ''),
(33, 11, '_menu_item_url', ''),
(34, 11, '_menu_item_orphaned', '1415546843'),
(35, 12, '_menu_item_type', 'post_type'),
(36, 12, '_menu_item_menu_item_parent', '0'),
(37, 12, '_menu_item_object_id', '2'),
(38, 12, '_menu_item_object', 'page'),
(39, 12, '_menu_item_target', ''),
(40, 12, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(41, 12, '_menu_item_xfn', ''),
(42, 12, '_menu_item_url', ''),
(43, 12, '_menu_item_orphaned', '1415546843'),
(44, 13, '_menu_item_type', 'custom'),
(45, 13, '_menu_item_menu_item_parent', '0'),
(46, 13, '_menu_item_object_id', '13'),
(47, 13, '_menu_item_object', 'custom'),
(48, 13, '_menu_item_target', ''),
(49, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(50, 13, '_menu_item_xfn', ''),
(51, 13, '_menu_item_url', 'http://twitter.com/skillcrush'),
(53, 14, '_menu_item_type', 'custom'),
(54, 14, '_menu_item_menu_item_parent', '0'),
(55, 14, '_menu_item_object_id', '14'),
(56, 14, '_menu_item_object', 'custom'),
(57, 14, '_menu_item_target', ''),
(58, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(59, 14, '_menu_item_xfn', ''),
(60, 14, '_menu_item_url', 'http://facebook.com/skillcrush'),
(62, 2, '_wp_trash_meta_status', 'publish'),
(63, 2, '_wp_trash_meta_time', '1415564334'),
(66, 19, '_edit_last', '1'),
(67, 26, '_edit_last', '1'),
(68, 28, '_edit_last', '1'),
(69, 31, '_edit_last', '1'),
(70, 33, '_edit_last', '1'),
(71, 35, '_edit_last', '1'),
(72, 36, '_edit_last', '1'),
(73, 37, '_edit_last', '1'),
(74, 39, '_edit_last', '1'),
(75, 47329, '_thumbnail_id', '47328'),
(76, 47329, 'thank_you_cta', ''),
(77, 47329, '_thank_you_cta', 'field_531f10983e6d6'),
(78, 47329, 'main-image', 'http://skillcrush.com/wp-content/uploads/2014/10/freelance-pricing-guide.jpg'),
(79, 47329, '_main-image', 'field_529a9c2bc03e6'),
(80, 47329, 'subtitle', ''),
(81, 47329, '_subtitle', 'field_529a9dc8eea2f'),
(82, 47329, 'tweet', 'How much do you charge for freelance work? The ULTIMATE guide to setting your prices. http://goo.gl/1DmW5y via @Skillcrush'),
(83, 47329, '_tweet', 'field_53a1a27fe6609'),
(84, 47329, 'tweet-link', 'http://ctt.ec/V4a7l'),
(85, 47329, '_tweet-link', 'field_53a1a291e660a'),
(86, 47329, 'cptr_related', 'a:0:{}'),
(87, 47329, '_mepr_unauthorized_message_type', 'default'),
(88, 47329, '_mepr_unauthorized_message', ''),
(89, 47329, '_mepr_unauth_login', 'default'),
(90, 47329, '_mepr_unauth_excerpt_type', 'default'),
(91, 47329, '_mepr_unauth_excerpt_size', '100'),
(92, 47329, '_rawhtml_settings', '0,0,0,0'),
(93, 47329, '_su_rich_snippet_type', 'none'),
(94, 47329, 'headlines_post_guid', '356b5323-08a9-45f7-a087-e2306d4148cb'),
(95, 47329, '_su_title', 'How much to charge for freelance web design'),
(96, 47329, '_su_description', 'So many factors go into deciding how much to charge for your work. This free PDF download will guide you through the process.'),
(97, 47329, 'dsq_thread_id', '3076334264'),
(98, 1, '_wp_trash_meta_status', 'publish'),
(99, 1, '_wp_trash_meta_time', '1415564654'),
(100, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=47331 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2014-11-05 23:12:50', '2014-11-05 23:12:50', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2014-11-09 20:24:14', '2014-11-09 20:24:14', '', 0, 'http://localhost:8888/accelerate/?p=1', 0, 'post', '', 1),
(2, 1, '2014-11-05 23:12:50', '2014-11-05 23:12:50', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8888/accelerate/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2014-11-09 20:18:54', '2014-11-09 20:18:54', '', 0, 'http://localhost:8888/accelerate/?page_id=2', 0, 'page', '', 0),
(3, 1, '2014-11-05 23:12:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-11-05 23:12:59', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=3', 0, 'post', '', 0),
(4, 1, '2014-11-05 23:13:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2014-11-05 23:13:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=4', 0, 'post', '', 0),
(5, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n', 'Homepage', '', 'publish', 'open', 'open', '', 'homepage', '', '', '2014-11-09 20:19:07', '2014-11-09 20:19:07', '', 0, 'http://localhost:8888/accelerate/?page_id=5', 0, 'page', '', 0),
(6, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 0, 'http://localhost:8888/accelerate/?page_id=6', 0, 'page', '', 0),
(7, 1, '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-05 23:13:15', '2014-11-05 23:13:15', '', 5, 'http://localhost:8888/accelerate/?p=7', 0, 'revision', '', 0),
(8, 1, '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 'Blog', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2014-11-05 23:13:19', '2014-11-05 23:13:19', '', 6, 'http://localhost:8888/accelerate/?p=8', 0, 'revision', '', 0),
(9, 1, '2014-11-09 15:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-11-09 15:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2014-11-09 15:27:41', '2014-11-09 15:27:41', ' ', '', '', 'publish', 'open', 'open', '', '10', '', '', '2014-11-09 15:27:44', '2014-11-09 15:27:44', '', 0, 'http://localhost:8888/accelerate/?p=10', 1, 'nav_menu_item', '', 0),
(11, 1, '2014-11-09 15:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-11-09 15:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=11', 1, 'nav_menu_item', '', 0),
(12, 1, '2014-11-09 15:27:23', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'open', 'open', '', '', '', '', '2014-11-09 15:27:23', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/accelerate/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 'Twitter', '', 'publish', 'open', 'open', '', 'twitter', '', '', '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 0, 'http://localhost:8888/accelerate/?p=13', 1, 'nav_menu_item', '', 0),
(14, 1, '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 'Facebook', '', 'publish', 'open', 'open', '', 'facebook', '', '', '2014-11-09 19:26:01', '2014-11-09 19:26:01', '', 0, 'http://localhost:8888/accelerate/?p=14', 2, 'nav_menu_item', '', 0),
(15, 1, '2014-11-09 20:18:54', '2014-11-09 20:18:54', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost:8888/accelerate/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2014-11-09 20:18:54', '2014-11-09 20:18:54', '', 2, 'http://localhost:8888/accelerate/2014/11/09/2-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2014-11-09 20:19:07', '2014-11-09 20:19:07', '<h1>Accelerate Your Marketing.</h1>\r\n<h3>Save time. Increase sales. Make customers happier.</h3>\r\n', 'Homepage', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2014-11-09 20:19:07', '2014-11-09 20:19:07', '', 5, 'http://localhost:8888/accelerate/2014/11/09/5-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2014-10-12 17:45:15', '2014-10-12 17:45:15', '<ol>\n	<li><a href="http://skillcrush.com">Skillcrush</a> - just the best!</li>\n	<li><a href="http://tryruby.org">Try Ruby</a> - I love WHY!</li>\n	<li><a href="http://www.htmlandcssbook.com/">Jon Duckett</a> - Best books on programming. Period.</li>\n	<li><a href="http://railsgirls.com">Rails Girls</a> - Super cool, international code learning organization.</li>\n	<li><a href="http://girldevelopit.com">Girl Develop It </a>- Equally awesome in-person workshops all over the US.</li>\n	<li><a href="codeschool.com">Code School</a> - Great advanced tutorials and learning.</li>\n</ol>', 'My 5 Favorite Code Learning Resources', '', 'publish', 'open', 'open', '', 'my-5-favorite-code-learning-resources', '', '', '2014-10-12 17:45:15', '2014-10-12 17:45:15', '', 0, 'http://localhost:8888/starter/?p=19', 0, 'post', '', 0),
(26, 1, '2014-10-12 18:07:34', '2014-10-12 18:07:34', 'As you wait impatiently in line for your <a href="http://www.eonline.com/news/577755/this-is-why-starbucks-baristas-spell-your-name-wrong-on-coffee-cups" target="_blank">mislabeled</a> coffee cup (you’re already going to be 20 minutes late to the office), take a step back and think: THIS could be your office. You could skip the commute, bring your laptop and charger, and power through your to do list from anywhere, wherever you are.\n\nWorking remotely – whether from home, Starbucks, or another creative place – is booming. A Virgin Media Business <a href="http://thenextweb.com/uk/2012/02/22/home-sweet-home-60-of-uk-employees-could-be-working-remotely-within-a-decade/" target="_blank">survey</a> recently predicted that 60% of office-based employees will regularly work from home by 2022. And a separate survey featured in<a href="http://www.theguardian.com/money/work-blog/2014/apr/30/what-happened-to-remote-working">The Guardian</a> found that ⅓ of employees think commuting will be unheard of by 2036.\n\nBut, that’s the future and this is today, you say to yourself. You don’t have the skills or the resources to find a gig that would give you that kind of flexibility. That’s for 20-somethings working on a startup who code in hoodies, or stay-at-home moms who work as part-time assistants.\n\nWrong! In fact, completely wrong. The <a href="http://www.nytimes.com/2014/03/08/your-money/when-working-in-your-pajamas-is-more-productive.html?_r=0">typical remote employee</a> is a 40-something college graduate earning nearly $60,000 a year at a company with 100+ employees, according to the Census Bureau’s annual American Community Survey.\n\nIf working remotely tickles your fancy, check out this list of 25 great sites for finding remote work.\n<h1>Remote-Work Specific</h1>\n<h3>1. <a href="http://www.flexjobs.com/">FlexJobs</a></h3>\nFlexJobs has over 50 career categories, with jobs ranging from freelance to full-time, entry-level to executive. The best part? They screen the jobs before posting, so you don’t have to dig through shady opportunities. The site currently hosts more than 20K job listings including part-time and freelance opportunities!<strong><strong> </strong></strong>\n<h3>2. <a href="https://weworkremotely.com/">We Work Remotely</a></h3>\nSponsored by <a href="http://37signals.com/remote/">Remote</a>, the book by famed 37Signals founders, this job board is a catch-all of remote jobs from customer service to web design to programming. With the catchy subtag “Office not required,” and the cache of the 37Signals brand behind it, this site is sure to host remote opportunities at some of the hottest tech companies.\n<h3>3. <a href="http://workingnomads.co/">Working Nomads</a></h3>\nWorkingNomads (formerly goRemotely) delivers a curated list of remote jobs right to your inbox. Choose daily or weekly emails to make the remote job search come to you.\n<h3>4. <a href="https://www.staff.com/">Staff.com</a></h3>\nInstead of focusing on contract jobs, Staff.com features primarily long-term telecommuting jobs in a range of industries from persional assistants to programming. Choose to work either 80 hours a month (part-time) or 160 hours a month (full-time), and the site recruiters start matching you with employers!\n<h3>5. <a href="http://www.skipthedrive.com/">Skip The Drive</a></h3>\nWith a great name, a great resources tab (listing authors to follow and sites to check for help in the remote job world), and a decent listing of remote jobs, this site is true to its eponymous mission. Use what the site provides, you can completely skip that ugly morning commute.\n<h3>6. <a href="http://www.virtualvocations.com/">Virtual Vocations</a></h3>\nThis job board features only telecommuting jobs from technical writers to paralegals. Started by a stay-at-home mom frustrated with the job search for legitimate remote jobs, the company is still run by an entirely remote team. Plus, the blog has great tips, such as <a href="http://www.virtualvocations.com/blog/telecommuting-job-search-help/tips-taking-seasonal-telecommute-job/">a recent article</a> on how to take on a remote gig for the holiday season.\n\n&nbsp;\n<h1>Tech</h1>\n<h3>7. <a href="http://www.authenticjobs.com/">Authentic Jobs</a></h3>\nThe job board for web professionals. Just click the “wireless logo” (you’ll recognize it) and filter by remote jobs. Beautifully designed and easy to use, as you’d expect from a job board for creatives and developers!\n<h3>8. <a href="https://dribbble.com/jobs">Dribble</a></h3>\nDribble is a great site for designers to find their next gig. There’s a location tab right on top where you can click “remote / anywhere” and be off to the races finding your next work-from-home gig.\n<h3>9. <a href="https://angel.co/">AngelList</a></h3>\nAlways dreamed of working for a startup, but don’t live in a startup city hub? Head over to AngelList, a top site for startup jobs. When you search for a job on AngelList, click on “Job Type” and choose “Remote OK.”\n<h3>10. <a href="http://careers.stackoverflow.com/">Stack Overflow</a></h3>\nStack Overflow is a go-to jobs board for many top tech talent, especially web developers. Type in “remote” in the location field and you’ll bring up a list of more than 2,000 jobs that fit the bill.\n<h3>11. <a href="http://jobs.rubynow.com/">Ruby Now</a></h3>\nA job board entirely dedicated to Ruby developers. Once you graduate from the <a href="http://skillcrush.com/blueprint/web-developer/">Web Developer Blueprint</a>, and watch Adda’s video on <a href="https://www.youtube.com/watch?v=p5Lj3y3mOxw">how to get hired as a Ruby Developer</a>, head on over and get to work landing a remote gig here.\n\n&nbsp;\n<h1>Freelance and Contract</h1>\n<h3>12. <a href="http://www.skillbridge.co/">SkillBridge</a></h3>\nFocused on connecting top-tier former consultants with short-term engagements for high impact corporations, the SkillBridge model is taking the traditional consulting world by storm. As a consultant, you can focus on only remote work and only on projects (and with clients) you are passionate about. Whether you bring e-mail marketing expertise or are a whiz at building financial models, the SkillBridge site and model is a remote-worker-dream-come-true.\n<h3>13. <a href="https://www.fiverr.com/">Fiverr</a></h3>\nWith jobs starting at just $5 a pop, Fiverr is an amazing site to find your first gigs and build up a portfolio FAST. The site focuses on “gigs” or “micro-jobs,” such as editing an image in photoshop, designing a Facebook ad, or brainstorming SEO-rank-worthy article titles.\n<h3>14. <a href="https://www.odesk.com/">oDesk</a></h3>\noDesk features remote jobs in a suite of categories: from virtual assistants to mobile app developers. A little something extra to sweeten the deal: oDesk claims that more than 1 million companies, from Pinterest to OpenTable, use the site to hire remote freelancers.\n<h3>15. <a href="http://www.guru.com/">Guru</a></h3>\nWith the tagline “Work Your Way,” Guru allows freelancers to build profiles with portfolios of work. Employers find your profile, or search/apply for jobs. The homepage features a wide range of roles from WordPress Developers to  Logo Designers.\n<h3>16. <a href="https://www.elance.com/">Elance</a></h3>\nMore than 300K programmers and more than 200K designers use Elance to connect with remote job opportunities. Microsoft, Cisco, and Mozilla are just a few of the companies hiring contract workers on Elance.\n<h3>17. <a href="https://www.freelancer.com/">Freelancer.com</a></h3>\nClaiming to be “The World’s Largest Outsourcing Marketplace,” Freelancer.com is chock full of remote freelancing gigs. With over 13 million users, it features jobs for PHP developers, content writers, and web designers alike. Make a profile and start bidding on jobs!\n<h3>18. <a href="http://www.freelancermap.com/">Freelancer Map</a></h3>\nSearch thousands of IT projects that are remote, and almost always contract. This site has a global reach with projects at companies from Holland to Spain to Ohio!\n\n&nbsp;\n<h1>General</h1>\n<h3>19. <a href="https://www.themuse.com/jobs">The Muse</a></h3>\nWith a gorgeous user interface and fun-to-explore information about all the companies and jobs they feature, The Muse makes the job search easy. Search for the content features on the site that highlight remote opportunities, such as <a href="https://www.themuse.com/advice/7-companies-that-let-you-work-from-home">7 Companies That Let You Work From Home</a>.\n<h3>20. <a href="http://www.indeed.com/">Indeed</a></h3>\nOne of the most robust job boards you can find, Indeed pulls data from around the internet and around the world to bring together jobs. From Product Marketers to a “Technology Productivity Consultant,” Indeed’s 2K+ remote jobs run the gamut.\n<h3>21. <a href="http://www.idealist.org/">Idealist</a></h3>\nFor those who have always wanted to work on public health in Africa, or economic development in India, but weren’t willing to uproot from your friends, family, and country, Idealist.org has the opportunities for you.  You can filter all of your searches by selecting “remote” in the location category.\n<h3>22. <a href="http://www.careerbuilder.com/">Career Builder</a></h3>\nThe Career Builder jobs site is the largest online employment website in the United States! Type in “telecommute” or “remote” as a keyword and find more than 9K part-time, contract, and full-time jobs from brands like Forever 21 Inc, Xerox, and Univision.<strong><strong> </strong></strong>\n<h3>23. <a href="http://www.monster.com/">Monster</a></h3>\nThe first name you think of when you hear the words “job board,” Monster does indeed host a plethora of remote jobs. From remote customer service opportunities to remote user experience designers, there are plenty of options if you’re willing to sift.\n\n&nbsp;\n<h1>Direct Selling</h1>\n<em><strong>Note:</strong> I’d be remiss not to mention the amazing opportunities afforded by direct selling, also known as multi-level marketing. There is real opportunity with these types of jobs to work from home (or anywhere) and make an income. These companies often require upfront buy-in, so be sure to properly evaluate the opportunity before you jump in.</em>\n\n<em>A few of my favorites:</em>\n<h3>24. Beauty: <a href="https://www.avon.com/">Avon</a></h3>\nPerhaps the best-known and most-storied of the direct-selling opportunities, Avon has built an incredible business on the “Avon Lady Model.” Sell Avon beauty products, from lotion to lip gloss, to your friends and neighbors in exchange for the freedom of setting your own hours and working from home. <a href="http://www.marykay.com/">Mary Kay</a> is another skincare and makeup company that offers the opportunity to build your own business in this way.\n<h3>25. Jewelry: <a href="http://www.stelladot.com/">Stella &amp; Dot</a></h3>\nThis jewelry company has a “flexible entrepreneurship” model for stylists: host in-home or online trunk shows to display jewelry to friends. Flexibility and stye in one! If this doesn’t fit your style, there are several jewelry companies providing this type of remote job opportunity including <a href="https://www.chloeandisabel.com/">Chloe &amp; Isabel</a> and <a href="http://trend-tribe.com/">Trend Tribe</a>.', 'The Top 25 Sites For Finding Remote Jobs', '', 'publish', 'open', 'open', '', 'the-top-25-sites-for-finding-remote-jobs', '', '', '2014-10-12 18:07:34', '2014-10-12 18:07:34', '', 0, 'http://localhost:8888/starter/?p=26', 0, 'post', '', 0),
(28, 1, '2014-10-12 18:08:57', '2014-10-12 18:08:57', 'When starting a web site or a blog of any kind on WordPress there are certain plugins that can make your life 1000x easier. Not only will they save you time, but plugins can bring your site to the next level by making it more usable, searchable, and innovative.\n\nSo what is this magical “plugin” we speak of? A plugin is simply a program that you can install to add a <em>specific</em> feature to your website. For WordPress, these plugins are written in PHP and integrate seamlessly with your site.\n<h2>Installing A Plugin</h2>\nInstalling a plugin can be a little bit tricky if you haven’t done it before. First, log in to your WordPress admin page (https://[yourdomain.com]/wp-admin). From the admin dashboard, look to the left sidebar menu. There is an option on that menu to choose called “Plugins.” Click it! You’ll open the plugins settings tab. From here, there are two main ways to install:\n<h3>1.  Search for a plugin in the plugins library</h3>\nWhen you open the plugins setting tab, there is a search box on the main page. Type in the name of the specific plugin you are looking for, or a keyword (i.e. “SEO”) to find a list of options. You can also search by popular, new, favorites, or pre-determined keywords. Once you search, a list of matching results will appear. Research them by clicking “details” or install right away by clicking “install now.”\n\n<a href="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM.png"><img class="alignnone size-large wp-image-21682 aligncenter" src="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.23-PM-1024x375.png" alt="Search for Plugins" width="584" height="213" /></a>\n<h3>2. Upload your plugin</h3>\nYou can download a plugin as a .zip file to your computer, and then upload it to your site. Click the “upload” tab in the top navigation on the plugins settings tab, choose the file, and voila! Your plugin will upload and install for you. An important note is that you can only upload files in .zip format, so if you get an error message, check that!\n\n<a href="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM.png"><img class="alignnone size-large wp-image-21683 aligncenter" src="http://4b93n32qwvjj3ddn5w3yhffoas6.wpengine.netdna-cdn.com/wp-content/uploads/2014/05/Screen-Shot-2014-05-01-at-2.13.46-PM-1024x221.png" alt="Upload plugins" width="584" height="126" /></a>\n\nEvery plugin is slightly different with the setup required once it is installed – some require none at all, and others require a bit of work. Click into your plugin once you install it to make sure you follow the correct steps to get it up and running!\n<h2>Must Have Plugins</h2>\nAs you will see, there are thousands of plugins to choose from. What makes a plugin a must-have? Here’s the criteria we like to use at Skillcrush:\n<ul>\n	<li>Will the plugin make your site faster?</li>\n	<li>Will the plugin reduce spam?</li>\n	<li>Will the plugin help you better accomplish your site goals?</li>\n</ul>\nWe scoured to find you a few wonderfully helpful plugins that will accomplish just that! Try them out to make running your website much easier:\n<h3><a href="http://akismet.com/" target="_blank">Akismet</a></h3>\nThis is a great plugin for getting rid of annoying comment spam. If you are frequently disapproving or deleting spam comments, you need this. [<a href="http://akismet.com/">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/google-sitemap-generator/" target="_blank">Google XML Sitemaps</a></h3>\nThis plugin makes it much easier for search engines to go through your content. And, when a search engine can better index your content, it is more likely to show up in searches! Plus, this plugin notifies search engines whenever you publish a new post. [<a href="http://wordpress.org/plugins/google-sitemap-generator/" target="_blank">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/flaunt-your-clients-free/" target="_blank">Flaunt Your Clients</a></h3>\nThis is a fun plugin for web designers to use to make it easy for your clients to show how pleased they are with your work!  It creates a new custom post type specifically for client stories and testimonials. These “client pages” can be sorted by category, linked to blog posts, and more. [<a href="http://wordpress.org/plugins/flaunt-your-clients-free/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/wordpress-seo/" target="_blank">WordPress SEO by Yoast</a></h3>\nThis plugin is super useful for ANY blog: it is the ultimate optimization plugin. It enables you to determine how your post will look on Facebook and Google. It also allows you to optimize your page or post for Google search. There is a reason there have been over 7 million downloads to date! [<a href="https://wordpress.org/plugins/wordpress-seo/" target="_blank">Download here</a>]\n<h3><a href="http://wordpress.org/plugins/slick-social-share-buttons/" target="_blank">Slick Social Share</a></h3>\nThis plugin will get your stuff shared on social media seamlessly. Plus, it looks gorgeous on your site! [<a href="http://wordpress.org/plugins/slick-social-share-buttons/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/w3-total-cache/" target="_blank">W3 Total Cache</a></h3>\nThis plugin will help your site load faster (which, especially if you have a lot of high-resolution photos or images, is quite important). It has page cache, minification, database caching, CDN integration and browser caching to speed up loading times for site visitors. [<a href="https://wordpress.org/plugins/w3-total-cache/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/seo-automatic-links/" target="_blank">SEO Smart Links</a></h3>\nThis plugin fully automate the internal linking process of your WordPress blog. One of the best ways to keep people on your site and improve SEO is to link between your own site content and posts, and this makes it straightforward and no-brainer. It also can convert specific keywords into internal and affiliate links. [<a href="https://wordpress.org/plugins/seo-automatic-links/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/video-capture/" target="_blank">Video Capture</a></h3>\nThis plugin integrates video into your site in a big way. You simply put a shortcode into any page or post, and users will be able to record short videos, up to three minutes in length. It’s a fun feature to add, if you have a creative way to use it! [<a href="https://wordpress.org/plugins/video-capture/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/meet-my-team/" target="_blank">Meet My Team</a></h3>\nThis is great for showing off who is on your team. This plugin will provide you with a custom post type designed for displaying team members and their info. A shortcode displays the team members in a responsive grid on any page or post you like. Until you take a Skillcrush JavaScript <a href="http://skillcrush.com/skillcrush-blueprints/">class or blueprint</a>, it’s a great shortcut to make your site responsive! [<a href="https://wordpress.org/plugins/meet-my-team/" target="_blank">Download here</a>]\n<h3><a href="https://wordpress.org/plugins/contact-form-7/" target="_blank">Contact Form 7</a></h3>\nIf you ever filled out a contact form on a blog, it very well may be through Contact Form. This plugin provides easy contact forms for blogs (i.e. contact us for help / advertising, etc.). It also works in conjunction with Askimet (above!) so there won’t be any spam abuse with these forms. [<a href="https://wordpress.org/plugins/contact-form-7/" target="_blank">Download here</a>]\n\nDo you have any particularly helpful WordPress plugins? We’re always on the lookout for new favorites! Let us know.', '10 WordPress Plugins You Can’t Live Without', '', 'publish', 'open', 'open', '', '10-wordpress-plugins-you-cant-live-without', '', '', '2014-10-12 18:08:57', '2014-10-12 18:08:57', '', 0, 'http://localhost:8888/starter/?p=28', 0, 'post', '', 0),
(31, 1, '2014-10-12 18:10:49', '2014-10-12 18:10:49', 'A great morning routine can really make or break your day. In her book <em><a href="http://www.amazon.com/Successful-People-Breakfast-Mornings-ebook/dp/B007K3E2YK/?_encoding=UTF8&amp;camp=1789&amp;creative=9325&amp;linkCode=ur2&amp;tag=marandang-20" target="_blank">What the Most Successful People Do Before Breakfast</a></em>, Laura Vanderkam writes, “Seizing your mornings is the equivalent of that sound financial advice to pay yourself first.  If you wait until the end of the month to save what you have left, there will be nothing left over.  Likewise, if you wait until the end of the day to do meaningful but not urgent things like exercise, pray, read, ponder how to advance your career or grow your organization, or truly give your family your best, it probably won’t happen.”\n\nEven if you have never considered yourself a morning person, you are going to have to figure out how to work around that as some of the most successful people in the world attribute a lot of their productivity to a stellar morning routine. Check out these kings and queens of technology and their amazing morning routines.\n<h3>Padmasree Warrior,  Cisco Chief Technical and Strategy Officer</h3>\nCan you say early riser? Warrior <a href="http://www.lifehack.org/articles/lifestyle/the-daily-routine-of-17-ceos.html">wakes up at 4:30 a.m</a>., reads email for an hour, checks out the news, exercises, and gets her son ready for school. She is in the office by 8:30 at the latest and starts her workday.\n<h3>David Karp, Founder of Tumblr</h3>\nThe 28 year old founder and CEO of Tumblr, puts off checking his email until he gets to the office around 9:30 am, unlike many of his CEO colleagues. I guess he is of the philosophy that you should not start your day by checking email. As <a class="opennew" href="http://www.inc.com/magazine/201106/the-way-i-work-david-karp-of-tumblr.html" target="_blank">quoted in <em>Inc. Magazine</em></a>, “Reading e-mails at home never feels good or <em>productive</em> . If something urgently needs my attention, someone will call or text me.”\n<h3>Steve Jobs, late Apple CEO</h3>\nJobs spent his mornings re-evaluating his work and his goals in life. <a class="opennew" href="http://www.ted.com/talks/steve_jobs_how_to_live_before_you_die.html" target="_blank">In his speech to a graduating class at Stanford</a>, Jobs said:\n<blockquote>“For the past 33 years I have looked in the mirror every morning and asked myself: ‘If today were the last day of my life, would I want to do what I am about to do today?’ And whenever the answer has been ‘No’ for too many days in a row, I know I need to change something.”</blockquote>\n<h3>Marissa Mayer, CEO of Yahoo</h3>\nMayer is another early riser. We aren’t sure of the time but she has admitted she really doesn’t need much sleep to thrive (between <a href="http://www.businessinsider.com/successful-people-who-barely-sleep-2012-9?op=1">four and six hours of sleep on any given night</a>). Of course, this is also the woman who said <strong>t</strong><strong>here are 130 hours of potential work time in a week if you shower strategically.</strong>\n<h3>Jason Goldberg, CEO of Fab</h3>\nGoldberg is definitely of the school of thought that working out first thing in the morning makes you productive for the rest of the day. According to research, <a href="http://www.dailymail.co.uk/news/article-1095783/People-exercise-work-days-happier-suffer-stress-productive.html">published in the <em>International Journal of Workplace Health Management</em></a>, on exercise days, people’s mood significantly improved after exercising. Goldberg told Inc., “I start my day at 6 every morning, and the first thing I do is check overnight emails. Our technology team is based in India, so they’re ahead of us. After I respond to any urgent emails, I do my morning run on the treadmill at a full steep incline for 30 minutes. I try not to think about work. Instead, I watch TV shows on my iPad. Currently, I’m watching “Curb Your Enthusiasm”–I’m up to Season Six. My other favorite shows are “Top Chef”, “Dexter”, and “Mad Men”.”\n<h3>Alexa Von Tobel, CEO and Founder of LearnVest</h3>\nVon Tobel is also in support of a morning workout followed by a plan to the minute day. She told <a href="http://observer.com/2014/04/learnvest-founder-alexa-von-tobel-q-and-a/#ixzz33mpMd9Om" target="_blank">The Observer</a>:\n<blockquote>“I start with an early morning workout (whether a power walk with friends, barre class or spin class), which is critical to feeling energized for the whole day. My calendar is often scheduled down to 15-minute intervals, so I can (attempt to!) make time for everything — internal and external meetings, speaking events, interviews, etc. I try to put as much as possible on auto-pilot (ex: using shortcuts like eating basically the same thing for breakfast and lunch). Also, I like to tackle the hardest things first, so I think through my priorities the night before and make sure I have time for my most strategic work. "</blockquote>', 'The Morning Habits of 6 Successful People in Technology', '', 'publish', 'open', 'open', '', 'the-morning-habits-of-6-successful-people-in-technology', '', '', '2014-10-12 18:10:49', '2014-10-12 18:10:49', '', 0, 'http://localhost:8888/starter/?p=31', 0, 'post', '', 0),
(33, 1, '2014-10-12 18:12:09', '2014-10-12 18:12:09', 'It’s back to school season parents! Are you excited? Frantic? Both? You have a lot on your plate – starting hectic morning routines anew, helping with homework, packing healthy lunches, managing after school activities, WHEW.  And of-course during all this you’re probably wondering if your kids are learning the right things at school and how you can supplement their education at home.\n\nYou’ve no doubt heard about the importance of computer literacy and getting your kids into programming and coding. But with the abundance of apps, toys, and books available, it’s hard to know where to start. Here are my top 4 choices for parents looking to get their young ones into tech:\n<h3>1. <a href="http://www.gethopscotch.com/" target="_blank">Hopscotch</a></h3>\nThis iPad app lets kids drag and drop functioning blocks of code to build their own programs. The app teaches kids programming fundamentals as well as critical thinking and problem solving skills in a creative environment. The app fosters a “learn by experimenting” attitude and encourages kids to play and try things and see what works. Hopscotch was actually inspired by Scratch, # 3 on this list. Hopscotch cofounders Jocelyn Leavitt and Samantha John hope to get girls into programming earlier and help fill the void of women in tech.\n<h3>2. <a href="http://www.helloruby.com/" target="_blank">Hello Ruby</a></h3>\nWe love everything about Linda Liukas and her upcoming children’s book Hello Ruby. The book raised $100k in 24 hours on Kickstarter and more than exceeded its initial goal of $10k by raising just over $380k at the end of its campaign. The book aims to teach 4-7 year olds about programming and open source culture through a smart, mischievous female protagonist and her whimsical adventures. Parents get a workbook so they can learn and help their kids solve problems in the accompanying activity book. We interviewed Liukas at the completion of her Kickstarter project – <a href="http://skillcrush.com/2014/02/21/skillcrush-linda-liukas-rails-girls/" target="_blank">you can read that interview here.</a>\n<h3>3. <a href="http://scratch.mit.edu/" target="_blank">Scratch</a></h3>\nScratch is a brainchild of the Lifelong Kindergarten Group at MIT’s Media Lab. It’s a programming language and comes with an extensive online community of it’s own. It’s designed for kids aged 8-16 and is totally free to use. Scratch allows students to create their own animations, interactive stories and much more. It uses drag and drop blocks of code similar to Hopscotch.\n<h3>4. <a href="http://www.tynker.com/" target="_blank">Tynker</a></h3>\nI learned about Tynker from my old boss, who’s wife Tanya homeschools their 3 kids. Tynker provides self-paced courses with tutoring baked right in. Their tutorials are interactive and fun for kids, allowing them to unlock achievements and badges, create customized projects and characters and build video games while they learn programming concepts. Sharing projects on the web with others is a big focus of Tynker’s and they hold summer camps to foster collaboration and knowledge-sharing. They occasionally run <a href="http://www.tynker.com/blog/articles/tynker/a-room-full-of-girls-coding/" target="_blank">workshops exclusively for girls</a> as well.\n\nAre you an old hat at getting kids into tech? Know all the cool, fun, hip new programming and tech apps, toys and tools out there? Share your top picks in the comments below!', '4 Games You Will Want Your Kids to Play', '', 'publish', 'open', 'open', '', '4-games-you-will-want-your-kids-to-play', '', '', '2014-10-12 18:12:09', '2014-10-12 18:12:09', '', 0, 'http://localhost:8888/starter/?p=33', 0, 'post', '', 0),
(35, 1, '2014-10-12 18:13:16', '2014-10-12 18:13:16', 'When you ask a web server for a page, it’s PHP’s job to create it. When you browse a WordPress blog or make a post on Facebook, PHP is putting it all together.\n\nIf you wanted a very simple PHP page to greet you every time you looked at it, it might look something like this:\n\n<code>&lt;?php echo “Hi there stranger!”; ?&gt;</code>\n\nThat would make a web page that looked like this:\n<p class="code">Hi there stranger!</p>\nOne of the reasons many people learn PHP instead of Ruby or Python is that it comes installed on pretty much every web server out there. If you happen to have a bit of web space to your name, chances are you’re able to run PHP.\n\nA pretty typical way you’ll see people working with PHP is along with Linux (an operating system), <a title="Web Server" href="http://skillcrush.com/2012/07/03/web-server-2/">Apache</a> (a web server), <a title="MySQL" href="http://skillcrush.com/2012/12/04/mysql-2/">MySQL</a> (a database), and PHP. This kind of setup is called LAMP.\n<h5 class="cocktail-party-header">Cocktail Party Fact</h5>\nPHP supposedly stands for “PHP: Hypertext Preprocessor.” If you said “Hey, but that doesn’t say what PHP means!” then you get the point ;).', 'Tech Term: PHP', '', 'publish', 'open', 'open', '', 'tech-term-php', '', '', '2014-10-12 18:13:16', '2014-10-12 18:13:16', '', 0, 'http://localhost:8888/starter/?p=35', 0, 'post', '', 0),
(36, 1, '2014-10-12 18:14:06', '2014-10-12 18:14:06', 'Looking for a new job where you can put your tech know-how to work? Having digital skills opens up a world of career choices for you. Take a look at some of the latest and greatest jobs we’ve found that’ll let you flex your digital muscles.\n\nToday, we’re featuring jobs that require WordPress skills – and learn more by signing up to watch our webinar on Friday, August 1st: <a href="http://skillcrush.com/webinar-august-1st-signup">3 Ways to Make WordPress Bullet-Proof!</a>\n\n<strong>Position: <a href="https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112">Designer, Marketing &amp; Communications, Interactive Design</a>\nCompany: <a href="https://bu.silkroad.com/epostings/index.cfm?fuseaction=app.dspjob&amp;jobid=296409&amp;company_id=15509&amp;version=1&amp;jobBoardId=1112">Boston University</a></strong>\n<strong>Location: Boston, MA\n</strong>Start as a member of BU’s integrated design team. Take the lead on creating and improving websites through outstanding design. Manage, build, and grow Boston University’s nationally recognized and award-winning online magazine, Bostonia. Coordinate successful issue launches, liase between the magazine editor and the design team, and play a key role in enhancing the content management system (a customized installation of WordPress). Plus, participate in the design and front-end development of other WordPress-powered websites and editorial channels across the university.\n\n<strong>Position: <a href="http://www.idealist.org/view/job/W9C6NkTNN5sP/">Graphic Designer / Project Manager</a>\nCompany: <a href="http://www.idealist.org/view/org/72tfp76Bn3H4/">Community Blueprint</a></strong>\n<strong>Location: Minneapolis, MN</strong>\nCreate campaigns for governmental and nonprofit organizations focus on public health behavior change in this multi-faceted opportunity. A little experience with print and web design, project management skills, and an understanding of WordPress sets you up for success in this role. Your time will be split managing multiple projects and doing design for some or them.\n\n<strong>Position: <a href="http://www.idealist.org/view/job/4zdMTJ4HJFCp/">Web Designer</a>\nCompany: <a href="http://www.idealist.org/view/org/32gckNTTp6hmD/">Global Bioethics Initiative</a>\nLocation: New York, NY</strong>\nJump right in to help create and launch a new website for the Global Bioethics Initiative, focused on serving as an educational resource and a database for breaking news and research in the fields of organ trafficking and organ transplantation. The site will be made – ideally – using WordPress. Take your Skillcrush skills and create a beautiful, user-friendly, and content-centered site to cover organs, tissues, cells donation, and biotechnology policy trafficking stories.\n\n<strong>Position: <a href="http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE">Content Marketing Manager</a>\nCompany: <a href="http://infoscout.theresumator.com/apply/job_20140721170815_LB4IKVVYRHLJ8RFP/Content-Marketing-Manager.html?source=INDE">InfoScout</a>\nLocation: San Francisco, CA</strong>\nPut your marketing chops to work at this content marketing company, InfoScout. The current blog, InfoScout.co, is only scratching the surface of what can be done with the company’s data – so you will report directly to the CEO in this amazing opportunity to take the content to the next level. Bring your go-getter attitude to optimizing content, managing the WordPress blog, and growing the InfoScout newsletter base!', 'Classifieds: WordPress Edition', '', 'publish', 'open', 'open', '', 'classifieds-wordpress-edition', '', '', '2014-10-12 18:14:06', '2014-10-12 18:14:06', '', 0, 'http://localhost:8888/starter/?p=36', 0, 'post', '', 0),
(37, 1, '2014-10-12 18:15:01', '2014-10-12 18:15:01', 'When I launched <a href="http://skillcrush.com/2014/06/05/wordpress-com-vs-wordpress-org/www.crandlecakes.com">my blog</a> in 2012, I went about it like this: I Googled “WordPress blog,” clicked <a href="http://zh.wordpress.com/">a button</a> that said, “get a free blog,” and I started rolling.\n\nA year later, I realized I should have done more research. I wanted to change my site layout and add functions (like a hovering Pinterest button), and I realized (oh nooos!) I needed a “WordPress.org blog” for that.\n\nGetting a “WordPress.org blog,” it turns out, really means downloading the free, open-source <a href="http://wordpress.org/">WordPress web software</a> and using a third-party hosting service (like GoDaddy or Bluehost) to get your site online.\n\n<a href="https://wordpress.com/">WordPress.com</a>, on the other hand, takes care of all that legwork for you. You don’t worry about hosting or serving up files, and your blog comes with a free domain that looks something like this: <a href="http://www.myblog.wordpress.com/">www.mynewblog.wordpress.com</a>.\n\nBut when you hand over responsibility, you also lose control: your WordPress.com site will show ads unless you pay a yearly fee, and many upgrades, like hosting videos or buying a custom domain name for example, can get costly.\n\nTo add to the new-blogger confusion, when you’re working on your blog, the Dashboard (the place where you edit your blog from the back end) looks almost exactly the same no matter which avenue you take. Because WordPress.com runs on the same WordPress software as a self-hosted site, the user experience after setting up your blog isn’t that different.\n\nDeciding between starting a free WordPress.com blog and self-hosted WordPress site is as simple as deciding how much freedom you want over your site’s look and feel, how much behind-the-scenes work you’re willing to do, and whether you want to monetize your blog.\n\n<a href="http://howtomakemyblog.com/wordpress-com-org/"><img title="WordPress.com Vs WordPress.org Comparison" src="http://makemyblog1.how2make.netdna-cdn.com/wp-content/uploads/wordpress.com-vs-org.jpg" alt="WordPress.com Vs WordPress.org Comparison" width="800" height="1723" /></a>\n\n&nbsp;\n<h2>1. How much control do you want over your site’s look and feel?</h2>\nIf you’re okay with an “out of the box” theme [http://theme.wordpress.com/], WordPress.com might work for you. For an extra charge, you can customize some features, like fonts and background colors. Overall, though, you are limited when it comes to changing the design of your site.\n\nIf you’re looking at those themes and thinking, “but I want my Instagram feed up higher and I’d like social media buttons above the top navigation,” you’ll want to go with a self-hosted WordPress blog so you can access your site’s layout and HTML.\n<h2>2. What extra functionality do you want on your site?</h2>\nRemember that anecdote about the Pinterest hover button I wanted? WordPress.com is always updating and adding new features, but you will have more control on a self-hosted site. Through WordPress.org, you’ll have access to libraries of plugins [https://wordpress.org/plugins/] that can add features like interactive calendars, social media sharing options, and RSS feeds–not to mention, Google Analytics–to your site. And by accessing your site’s code, your opportunities to add to and embellish features are unlimited.\n<h2>3. Do you want to monetize your site?</h2>\n“Oh wow, I have so many pageviews! Maybe I can make a little cash with ads!” Nope. Not if you’re on a WordPress.com site. They’re giving you a lot for free; it’s no surprise that you can only sell ads in WordPress-approved ways. On a self-hosted site, however, the world is your oyster…or, you know, your sales floor.\n\nIn addition, while, WordPress.com recently introduced new ways to sell on your site, eCommerce is more established and flexible with a self-hosted site.\n<h2>4. How much can you spend?</h2>\nSelf-hosting is an upfront cost that ranges from a few dollars a month to closer to hundreds per year. But using a free WordPress.com blog and adding a lot of additional features can get pricey. Infographic cost comparison:<a href="http://howtomakemyblog.com/wordpress-com-org/">http://howtomakemyblog.com/wordpress-com-org/</a>\n\nWhen it comes down to it, WordPress.com is a valuable tool for users looking for a free option, who don’t need to customize or make money off of their site. But getting a self-hosted site through WordPress.org provides the most flexibility, freedom, and opportunity for growth. And let’s face it, you’re going to want to use this site to become a moneybags, and WordPress.org allows more freedom for turning your hard work into cold hard cash.', 'WordPress.com or WordPress.org? How to choose the right one for your blog', '', 'publish', 'open', 'open', '', 'wordpress-com-or-wordpress-org-how-to-choose-the-right-one-for-your-blog', '', '', '2014-10-12 18:15:01', '2014-10-12 18:15:01', '', 0, 'http://localhost:8888/starter/?p=37', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2014-10-12 18:18:14', '2014-10-12 18:18:14', '<p dir="ltr">Want to know the secret to <a href="http://skillcrush.com/2013/06/16/the-best-career-decision-i-ever-made/">my success</a>? How I managed to learn how to code and immediately start making money with my coding skills, while continuing to learn?</p>\n<p dir="ltr">The answer is simple: <a href="http://skillcrush.com/2013/08/01/wordpress-for-fun-profit/wordpress.org">WordPress</a>.</p>\n<p dir="ltr">WordPress is one of those incredible <a href="http://skillcrush.com/2012/08/29/open-source-software/">open source</a> gifts that just gives and gives and gives some more. And for the beginning coder who wants to keep learning new programming skills while making some money, WordPress is hands down the way to go.</p>\n<p dir="ltr">For those of you not familiar with the platform, WordPress is an open source <a href="http://skillcrush.com/2012/05/01/cms/">content management system</a> built in PHP. Originally, WordPress was designed for blogging. But now, thanks to the creation of custom post types and the hard work of thousands of WordPress plugin developers, the platform can do much, much more.</p>\n<p dir="ltr">I, like most developers, built my first website using HTML and CSS. Shortly thereafter, a good friend of mine suggested that I look into hacking around in WordPress. What he explained to me is that WordPress was a great content management system, and could be a good way for me to get familiar with some basic programming concepts like templating, working with loops, learning about database, and more fun things like that, while also building cool custom websites.</p>\n<p dir="ltr">He spent 30 minutes explaining to me how the application is set up and where to look for more information, and that was it, I was off to the races. Me and my new friend WordPress soon became inseparable.</p>\n<p dir="ltr">For a good year or so after that, I had a great side hustle going building marketing and content publishing websites with what can only described as an <em>extremely</em> limited tech skillset.</p>\n<p dir="ltr">Now, I look back at the websites I created with WordPress before I really knew anything about programming with a mix of horror and amazement.</p>\n<p dir="ltr">But honestly, I really shouldn’t be embarrassed because though they weren’t particular programmatically exciting, WordPress made it easy to build extremely robust custom marketing and content publishing websites even with only a small set of skills. Four years later, many of <a href="http://blog.papertiger.org/">the websites</a> I built are <a href="http://www.campbaco.com/">still alive</a> and <a href="http://companyb-ny.com/">going strong</a> (wow did I love big rounded buttons or what?).</p>\n\n<h5>The top five reasons why you should learn how to build in WordPress:</h5>\n<p dir="ltr"><strong>1. Do nothing, and you’ll still have a great website</strong>\nWordpress comes out of the box with arguably, one of the best content management systems in the world (thank you open source &amp; the power of hundreds of people working together on one web application). Now, there is still a learning curve and some people do complain that the WordPress backend is a little too complicated, but honestly, as someone who has done a lot of work with other systems (and seen what it looks like when you try to building something as robust as WordPress from scratch), they really have worked out a lot of the kinks!</p>\n<p dir="ltr"><strong>2. Chances are, someone else has already solved any problem you run into</strong>\nOne of the best parts of WordPress is that you have access to a HUGE library of open source <a href="http://wordpress.org/plugins/">WordPress plugins</a> that will allow you to customize the CMS in all manner of ways. If you find yourself wanting to add some functionality to your site that isn’t native to the platform (a slideshow, a contact form, a facebook login) chances are someone else has wanted to add that functionality and already done the hard work for you. And all you have to do is install the plugin!</p>\n<p dir="ltr"><strong>3. When you are lost, WordPress has the best docs</strong>\n<a href="http://codex.wordpress.org/Main_Page">The WordPress Codex</a> is seriously the most amazing, wonderful, searchable group of docs every created for any open source project ever. Anyone who has worked with other open source web applications or content management systems (*cough* Drupal *cough*) can tell you that the WordPress documents are spectacularly thorough, clear, and easy to use. If this is your first experience, know you are being seriously SPOILED.</p>\n<p dir="ltr"><strong>4. Did we mention the 5 minute install?</strong>\nOh, by the way, WordPress is incredibly easy to install on your local machine (let me introduce you to my friend <a href="http://www.wampserver.com/en/">WAMP</a> and <a href="http://www.mamp.info/en/index.html">MAMP</a> and the famous, <a href="http://codex.wordpress.org/Installing_WordPress">5 minute WordPress install</a>), and is supported by practically every web hosting service in the world. In fact, major web hosts like GoDaddy and <a href="http://hostgator.com/">HostGator</a> offer fancy things like “1-click” WordPress installation services that will have you up and running in a matter of seconds.</p>\n<p dir="ltr"><strong>5. And most importantly, knowing how to hack WordPress is known to lead to some serious CA$H\n</strong>Last, but not least, knowing how to customize WordPress is a seriously marketable tech skill. There are many many freelancers and companies that have built entire careers on hacking WordPress. Just ask our friend <a href="http://skillcrush.com/2013/04/05/zoe-rooney/">Zoe</a>!</p>\n<p dir="ltr">Have I convinced you that WordPress is awesome? Fantastic! Watch out for a post next week about advanced WordPress techniques.</p>', 'WordPress for fun & profit', '', 'publish', 'open', 'open', '', 'wordpress-for-fun-profit', '', '', '2014-10-12 18:18:14', '2014-10-12 18:18:14', '', 0, 'http://localhost:8888/starter/?p=39', 0, 'post', '', 0),
(47329, 1, '2014-10-02 16:40:57', '2014-10-02 16:40:57', '[download file="wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf" title="The Ultimate Guide to Charging for Freelance Work"]\n<h3><a style="text-decoration: none; color: #222222; font-weight: bold;" href="http://skillcrush.com/2014/09/29/skillcrushtv-ruby-pro/" target="_blank">Are you charging too much?</a></h3>\nOr not enough?\n\nWhen you are a freelancer, you set your own prices. There''s no boss to give you a raise, and no HR manager to negotiate your salary with.\n\nGetting your first couple freelance jobs is exhilarating. Someone is trusting YOU with their business, putting their brand in YOUR hands. It''s easy to feel like you are the lucky one. <em>They hired ME? But I''ve only been doing this for a few months!</em>\n\nEven so, didn''t you start this whole freelancing thing so you could up your income? But how can you avoid lowballing your client if you aren''t sure what fees are standard in the industry?\n\nWhen it comes to setting your freelance rates, there''s no one-size-fits-all. There are so many questions to consider: <em>How long will the project take? Is the client a breeze to work with? (or not?) How much money do you need to make to turn a profit? How much experience do you have?</em>\n\nSkillcrush designer (and experienced freelancer) Kristina Zmaic came up with the ULTIMATE guide to calculating your rates as a freelancer. Below, you''ll find a free PDF download that will help you decide what to charge, whether you''re a fresh-faced rookie building custom icons or a long-time WordPress developer.\n\nSo don''t let your first clients make you TOO starry-eyed. Enter your email address, download the FREE PDF guide, and calculate a freelance rate that will pay the bills, and then some!\n\n[download file="wp-content/uploads/2014/10/The-ULTIMATE-Guide-to-Charging-for-Freelance-Web-Design.pdf" title="The Ultimate Guide to Charging for Freelance Work"]\n\n<em>Are you SO ready to freelance, but lacking a few skills? <strong>You are just in time!</strong> Our next round of Skillcrush Career Blueprints start Monday, October 6. Learn web design or web development in a supportive community of fellow learners and passionate instructors, or join our brand new (!) WordPress Developer Blueprint. <a href="http://skillcrush.com/skillcrush-blueprints/" target="_blank">Sign up here</a>.</em>\n\n<em>No idea where to start? Freelancing on the side? Launching a whole new career? Something else?! I''m <a href="http://skillcrush.com/webinar-oct3-signup-page">hosting a webinar</a> TOMORROW at 1:00 p.m. CST to help you decide what career change is right for you, and where to go to learn the skills you need to make your dream a reality. <a href="http://skillcrush.com/webinar-oct3-signup-page">Sign up now</a>!</em>', 'How Much Should You Charge for Freelance Web Design?', 'Setting your freelance rates: demystified. ', 'publish', 'open', 'open', '', 'freelance-rates', '', '', '2014-10-02 16:40:57', '2014-10-02 16:40:57', '', 0, 'http://skillcrush.com/?p=47329', 0, 'post', '', 0),
(47330, 1, '2014-11-09 20:24:14', '2014-11-09 20:24:14', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2014-11-09 20:24:14', '2014-11-09 20:24:14', '', 1, 'http://localhost:8888/accelerate/2014/11/09/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Top Nav', 'top-nav', 0),
(3, 'Social Media Nav', 'social-media-nav', 0),
(4, 'Listicles', 'listicles', 0),
(5, 'Career', 'career', 0),
(6, 'WordPress', 'wordpress', 0),
(7, 'Advice', 'advice', 0),
(8, 'Apps', 'apps', 0),
(9, 'Technology', 'technology', 0),
(10, 'Blog', 'blog', 0),
(11, 'Career Success', 'career-success', 0),
(12, 'charge', 'charge', 0),
(13, 'design', 'design', 0),
(14, 'freelance', 'freelance', 0),
(15, 'Freelancing', 'freelancing', 0),
(16, 'prices', 'prices', 0),
(17, 'rates', 'rates', 0),
(18, 'web design', 'web-design-2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(13, 3, 0),
(14, 3, 0),
(19, 4, 0),
(26, 5, 0),
(28, 6, 0),
(31, 7, 0),
(33, 8, 0),
(35, 9, 0),
(36, 5, 0),
(36, 6, 0),
(37, 6, 0),
(39, 6, 0),
(47329, 10, 0),
(47329, 11, 0),
(47329, 12, 0),
(47329, 13, 0),
(47329, 14, 0),
(47329, 15, 0),
(47329, 16, 0),
(47329, 17, 0),
(47329, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 2),
(6, 6, 'category', '', 0, 4),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 1),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 1),
(11, 11, 'category', '', 0, 1),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'post_tag', '', 0, 1),
(15, 15, 'category', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=198;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47331;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
