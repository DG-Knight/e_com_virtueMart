-- phpMyAdmin SQL Dump
-- version 4.3.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2016 at 06:37 AM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ecom_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_assets`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_assets`
--

INSERT INTO `bak_mhyjf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 101, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 70, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 71, 74, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 75, 76, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 77, 78, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 79, 80, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 81, 82, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 83, 86, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 87, 88, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 72, 73, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 84, 85, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 89, 90, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 91, 92, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 93, 94, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 95, 96, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 97, 98, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 99, 100, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 40, 41, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 18, 42, 43, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 44, 45, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 46, 47, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 48, 49, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 50, 51, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 52, 53, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 54, 55, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 56, 57, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 58, 59, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 60, 61, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 62, 63, 2, 'com_modules.module.16', 'Login Form', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(51, 18, 64, 65, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(52, 18, 66, 67, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 68, 69, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_associations`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_banners`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_banner_clients`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_categories`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_categories`
--

INSERT INTO `bak_mhyjf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 11, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_contact_details`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_content`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_content_rating`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_content_types`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_content_types`
--

INSERT INTO `bak_mhyjf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_extensions`
--

INSERT INTO `bak_mhyjf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `bak_mhyjf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_filters`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_finder_taxonomy`
--

INSERT INTO `bak_mhyjf_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_terms`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_finder_terms_common`
--

INSERT INTO `bak_mhyjf_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_finder_types`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_languages`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_languages`
--

INSERT INTO `bak_mhyjf_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_menu`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_menu`
--

INSERT INTO `bak_mhyjf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 43, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 29, 30, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 31, 32, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 33, 34, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 35, 36, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 37, 38, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 39, 40, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"3","num_columns":"3","num_links":"0","multi_column_order":"1","orderby_pri":"","orderby_sec":"front","order_date":"","show_pagination":"2","show_pagination_results":"1","show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"1","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 1, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_menu_types`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_menu_types`
--

INSERT INTO `bak_mhyjf_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_messages`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_modules`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_modules`
--

INSERT INTO `bak_mhyjf_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"0","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_modules_menu`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_modules_menu`
--

INSERT INTO `bak_mhyjf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_overrider`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_postinstall_messages`
--

INSERT INTO `bak_mhyjf_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_redirect_links`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_schemas`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_schemas`
--

INSERT INTO `bak_mhyjf_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_session`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_tags`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_tags`
--

INSERT INTO `bak_mhyjf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_template_styles`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_template_styles`
--

INSERT INTO `bak_mhyjf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_ucm_base`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_ucm_content`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_ucm_history`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_updates`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_update_sites`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `bak_mhyjf_update_sites`
--

INSERT INTO `bak_mhyjf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 0, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `bak_mhyjf_update_sites_extensions`
--

INSERT INTO `bak_mhyjf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(4, 28);

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_usergroups`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_usergroups`
--

INSERT INTO `bak_mhyjf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_users`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_user_keys`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_user_notes`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_user_profiles`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bak_mhyjf_viewlevels`
--

CREATE TABLE IF NOT EXISTS `bak_mhyjf_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bak_mhyjf_viewlevels`
--

INSERT INTO `bak_mhyjf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_assets`
--

CREATE TABLE IF NOT EXISTS `mhyjf_assets` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_assets`
--

INSERT INTO `mhyjf_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 137, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 18, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 19, 24, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 25, 26, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 27, 28, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 29, 30, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 31, 32, 1, 'com_login', 'com_login', '{}'),
(13, 1, 33, 34, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 35, 36, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 37, 38, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 39, 40, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 41, 42, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 43, 96, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 97, 100, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 101, 102, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 103, 104, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 105, 106, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 107, 108, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 109, 112, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.options":[],"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(26, 1, 113, 114, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 20, 21, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 98, 99, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 110, 111, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 115, 116, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 117, 118, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 119, 120, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 1, 121, 122, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 123, 124, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 125, 126, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 44, 45, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(40, 18, 46, 47, 2, 'com_modules.module.2', 'Login', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 18, 48, 49, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 18, 50, 51, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 18, 52, 53, 2, 'com_modules.module.8', 'Toolbar', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 18, 54, 55, 2, 'com_modules.module.9', 'Quick Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 18, 56, 57, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(46, 18, 58, 59, 2, 'com_modules.module.12', 'Admin Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 18, 60, 61, 2, 'com_modules.module.13', 'Admin Submenu', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 18, 62, 63, 2, 'com_modules.module.14', 'User Status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 18, 64, 65, 2, 'com_modules.module.15', 'Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 18, 66, 67, 2, 'com_modules.module.16', 'เข้าสู่ระบบ', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(51, 18, 68, 69, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(52, 18, 70, 71, 2, 'com_modules.module.79', 'Multilanguage status', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(53, 18, 72, 73, 2, 'com_modules.module.86', 'Joomla Version', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(54, 1, 127, 128, 1, 'com_virtuemart', 'VIRTUEMART', '{}'),
(55, 1, 129, 130, 1, 'com_virtuemart_allinone', 'VirtueMart_allinone', '{}'),
(56, 18, 74, 75, 2, 'com_modules.module.87', 'VM - Administrator Module', '{}'),
(57, 18, 76, 77, 2, 'com_modules.module.88', 'VM - Currencies Selector', '{}'),
(58, 18, 78, 79, 2, 'com_modules.module.89', 'VM - Featured products', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(59, 18, 80, 81, 2, 'com_modules.module.90', 'VM - Search in Shop', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(60, 18, 82, 83, 2, 'com_modules.module.91', 'VM - Manufacturer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(61, 18, 84, 85, 2, 'com_modules.module.92', 'ตะกร้าสินค้า', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(62, 18, 86, 87, 2, 'com_modules.module.93', 'หมวดหมู่สินค้า', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(63, 1, 131, 132, 1, 'com_jaextmanager', 'com_jaextmanager', '{}'),
(64, 1, 133, 134, 1, 'com_tcpdf', 'tcpdf', '{}'),
(65, 1, 135, 136, 1, 'com_imageshow', 'ImageShow', '{}'),
(66, 18, 88, 89, 2, 'com_modules.module.94', 'JSN ImageShow', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(67, 18, 90, 91, 2, 'com_modules.module.95', 'JSN imageshow Quick Icons', '{}'),
(68, 18, 92, 93, 2, 'com_modules.module.96', 'เลือกภาษา', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(69, 8, 22, 23, 2, 'com_content.category.8', 'สมัครสมาชิก', '{"core.create":{"6":1,"2":1,"3":1},"core.delete":{"6":1,"2":1},"core.edit":{"6":1,"2":1,"4":1},"core.edit.state":{"6":1,"2":1,"5":1},"core.edit.own":{"6":1,"2":1,"3":1}}'),
(70, 7, 16, 17, 2, 'com_contact.category.9', 'สมาชิก', '{"core.create":{"6":1,"2":1,"3":1},"core.delete":{"6":1,"2":1},"core.edit":{"6":1,"2":1,"4":1},"core.edit.state":{"6":1,"2":1,"5":1},"core.edit.own":{"6":1,"2":1,"3":1}}'),
(71, 18, 94, 95, 2, 'com_modules.module.97', 'ประกัน', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_associations`
--

CREATE TABLE IF NOT EXISTS `mhyjf_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_banners`
--

CREATE TABLE IF NOT EXISTS `mhyjf_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_banner_clients`
--

CREATE TABLE IF NOT EXISTS `mhyjf_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `mhyjf_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_categories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_categories`
--

INSERT INTO `mhyjf_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 15, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 69, 1, 11, 12, 1, 'registered', 'com_content', 'สมัครสมาชิก', 'registered', '', '', 1, 0, '0000-00-00 00:00:00', 2, '{"category_layout":"","image":"images\\/banners\\/Register_icon.png","image_alt":"รูปสมัครสมาชิก","t3_extrafields":""}', '', '', '{"author":"","robots":""}', 467, '2016-02-06 17:26:56', 467, '2016-02-06 17:30:59', 0, '*', 1),
(9, 70, 1, 13, 14, 1, 'registered', 'com_contact', 'สมาชิก', 'registered', '', '<p>ลูกค้าของเว็บไซต์</p>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"images\\/banners\\/Register_icon.png","image_alt":""}', '', '', '{"author":"","robots":""}', 467, '2016-02-06 17:38:44', 467, '2016-02-06 17:39:40', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_contact_details`
--

CREATE TABLE IF NOT EXISTS `mhyjf_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_contact_details`
--

INSERT INTO `mhyjf_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'ติดต่อเรา', '2016-02-06-07-50-59', 'ผู้จัดการร้าน', '171 หมู่6 ต.รูสะมิแล', 'เมือง', 'ปัตตานี', 'ไทย', '94000', '082-8063850', '', '', '', 'sao.apiwat@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 467, 4, 1, '082-8063-850', '', '', '', '', '*', '2016-02-06 07:50:00', 467, '', '2016-02-06 07:53:35', 467, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 5),
(2, 'สุชาดา หีมมะหมัด', '2016-02-06-19-09-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rohaninee_55@hotmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 469, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:09:20', 0, '', '2016-02-06 19:09:20', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(3, 'มูฮัมหมัด แวซู', '2016-02-06-19-16-38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 470, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:16:38', 0, '', '2016-02-06 19:16:38', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(4, 'dayu', 'dayu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'picture.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 471, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:26:51', 0, '', '2016-02-06 19:26:51', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(5, 'dayu (2)', 'dayu-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'picture.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 472, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:33:55', 0, '', '2016-02-06 19:33:55', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(6, 'dayu (3)', 'dayu-3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 473, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:37:46', 0, '', '2016-02-06 19:37:46', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(7, 'dayu (4)', 'dayu-4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 474, 34, 1, '', '', '', '', '', '*', '2016-02-06 19:38:57', 0, '', '2016-02-06 19:38:57', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(8, 'dayu (5)', 'dayu-5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 475, 34, 1, '', '', '', '', '', '*', '2016-02-07 04:50:54', 0, '', '2016-02-07 04:50:54', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(9, 'dayu (6)', 'dayu-6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 476, 34, 1, '', '', '', '', '', '*', '2016-02-07 04:53:35', 0, '', '2016-02-07 04:53:35', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(10, 'dayu (7)', 'dayu-7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 477, 34, 1, '', '', '', '', '', '*', '2016-02-07 08:25:16', 0, '', '2016-02-07 08:25:16', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(11, 'apiwat', 'apiwat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'darkeye_whan@hotmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 478, 34, 1, '', '', '', '', '', '*', '2016-02-08 06:51:10', 0, '', '2016-02-08 06:51:10', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(12, 'kiff', 'kiff', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'picture.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 479, 34, 1, '', '', '', '', '', '*', '2016-02-10 06:01:30', 0, '', '2016-02-10 06:01:30', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(13, 'kiff (2)', 'kiff-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sao.apiwat@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 480, 34, 1, '', '', '', '', '', '*', '2016-02-10 06:08:45', 0, '', '2016-02-10 06:08:45', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0),
(14, 'APIWAT', 'apiwat-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'picture.whan@gmail.com', 0, 0, 0, '0000-00-00 00:00:00', 0, '', 481, 34, 1, '', '', '', '', '', '*', '2016-02-10 06:21:34', 0, '', '2016-02-10 06:21:34', 0, '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_content`
--

CREATE TABLE IF NOT EXISTS `mhyjf_content` (
  `id` int(10) unsigned NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_contentitem_tag_map`
--

CREATE TABLE IF NOT EXISTS `mhyjf_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `mhyjf_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_content_rating`
--

CREATE TABLE IF NOT EXISTS `mhyjf_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_content_types`
--

CREATE TABLE IF NOT EXISTS `mhyjf_content_types` (
  `type_id` int(10) unsigned NOT NULL,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_content_types`
--

INSERT INTO `mhyjf_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `mhyjf_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_extensions`
--

CREATE TABLE IF NOT EXISTS `mhyjf_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10053 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_extensions`
--

INSERT INTO `mhyjf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"th-TH","site":"th-TH"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 0, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":"","filename":"simplepie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"de7f727749533c14066f45558ea58259"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.6","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2014","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com","version":"4.1.7","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"1","skin":"0","mobile":"0","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `mhyjf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 1, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{"detect_browser":"0","automatic_change":"1","item_associations":"1","remove_default_prefix":"0","lang_cookie":"0","alternate_meta":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 1, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 1, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"2","register-require_address2":"1","register-require_city":"2","register-require_region":"1","register-require_country":"2","register-require_postal_code":"2","register-require_phone":"2","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"2","register_tos_article":"","register-require_dob":"2","profile-require_address1":"2","profile-require_address2":"1","profile-require_city":"2","profile-require_region":"1","profile-require_country":"2","profile-require_postal_code":"2","profile-require_phone":"2","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_dob":"2"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.3","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"December 2015","author":"Joomla! Project","copyright":"(C) 2005 - 2015 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.8","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'VIRTUEMART', 'component', 'com_virtuemart', '', 1, 1, 0, 0, '{"name":"VIRTUEMART","type":"component","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"","group":"","filename":"virtuemart"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'VirtueMart_allinone', 'component', 'com_virtuemart_allinone', '', 1, 1, 0, 0, '{"name":"VirtueMart_allinone","type":"component","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'VM Payment - Standard', 'plugin', 'standard', 'vmpayment', 0, 1, 1, 0, '{"name":"Standard","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"Standard payment plugin","group":"","filename":"standard"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10003, 'VM Payment - Klarna', 'plugin', 'klarna', 'vmpayment', 0, 0, 1, 0, '{"name":"Klarna","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"Klarna VirtueMart Payment Plugin","group":"","filename":"klarna"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(10004, 'VM Payment - KlarnaCheckout', 'plugin', 'klarnacheckout', 'vmpayment', 0, 0, 1, 0, '{"name":"Klarna Checkout","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"","group":"","filename":"klarnacheckout"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10005, 'VM Payment - Sofort Banking/Überweisung', 'plugin', 'sofort', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10006, 'VM Payment - PayPal', 'plugin', 'paypal', 'vmpayment', 0, 0, 1, 0, '{"name":"PayPal","type":"plugin","creationDate":"November 10 2015","author":"VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"PayPal","group":"","filename":"paypal"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10007, 'VM Payment - Heidelpay', 'plugin', 'heidelpay', 'vmpayment', 0, 0, 1, 0, '{"name":"Heidelpay","type":"plugin","creationDate":"12-Sep-2012","author":"Heidelberger Payment GmbH","copyright":"Copyright Heidelberger Payment GmbH","authorEmail":"info@heidelpay.de","authorUrl":"http:\\/\\/www.heidelpay.de","version":"3.0.12","description":"\\n        <h2>Virtuemart Plugin von:<\\/h2><p><a href=\\"http:\\/\\/www.Heidelpay.de\\" target=\\"_blank\\"><img src=\\"http:\\/\\/www.heidelpay.de\\/gfx\\/logo.gif\\" style=\\"margin-right:20px;\\"\\/><\\/a><\\/p> ","group":"","filename":"heidelpay"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10008, 'VM Payment - Paybox', 'plugin', 'paybox', 'vmpayment', 0, 0, 1, 0, '{"name":"VM Payment - Paybox","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"<a href=\\"http:\\/\\/paybox.com\\" target=\\"_blank\\">Paybox<\\/a> \\n    ","group":"","filename":"paybox"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10009, 'VM Payment - Pay with Amazon', 'plugin', 'amazon', 'vmpayment', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"AMAZON payment plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10010, 'System - Pay with Amazon', 'plugin', 'amazon', 'system', 0, 0, 1, 0, '{"name":"AMAZON","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"AMAZON payment SYSTEM plugin","group":"","filename":"amazon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'VM Payment - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmpayment', 0, 0, 1, 0, '{"name":"realex_hpp_api","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"Realex HPP and API","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10012, 'VM UserField - Realex HPP & API', 'plugin', 'realex_hpp_api', 'vmuserfield', 0, 0, 1, 0, '{"name":"Realex_hpp_api","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"Card storage plugin for Realex","group":"","filename":"realex_hpp_api"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'VM Payment - Skrill', 'plugin', 'skrill', 'vmpayment', 0, 0, 1, 0, '{"name":"Skrill","type":"plugin","creationDate":"November 10 2015","author":"Skrill Holdings Limited","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.skrill.com","version":"3.0.12","description":"<a href=\\"http:\\/\\/www.skrill.com\\" target=\\"_blank\\">skrill<\\/a> is a popular\\n\\tpayment provider authorised by the Financial Services Authority of the United Kingdom (FSA). \\n    ","group":"","filename":"skrill"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10014, 'VM Payment - Authorize.net', 'plugin', 'authorizenet', 'vmpayment', 0, 0, 1, 0, '{"name":"Authorize.net AIM","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"Authorize.net AIM","group":"","filename":"authorizenet"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10015, 'VM Payment - Sofort iDeal', 'plugin', 'sofort_ideal', 'vmpayment', 0, 0, 1, 0, '{"name":"Sofort Ideal","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"<a href=\\"http:\\/www.sofort.com\\" target=\\"_blank\\">Sofort<\\/a> is a popular\\n\\tpayment provider and available in many countries. \\n    ","group":"","filename":"sofort"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10016, 'VM Payment - Klikandpay', 'plugin', 'klikandpay', 'vmpayment', 0, 0, 1, 0, '{"name":"VM Payment - klikandpay","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"Beta1","description":"<a href=\\"http:\\/\\/klikandpay.com\\" target=\\"_blank\\">klikandpay<\\/a> \\n    ","group":"","filename":"klikandpay"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10017, 'VM Shipment - By weight, ZIP and countries', 'plugin', 'weight_countries', 'vmshipment', 0, 1, 1, 0, '{"name":"By weight, ZIP and countries","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"VMSHIPMENT_WEIGHT_COUNTRIES_PLUGIN_DESC","group":"","filename":"weight_countries"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'VM Custom - Customer text input', 'plugin', 'textinput', 'vmcustom', 0, 1, 1, 0, '{"name":"VMCustom - textinput","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"text input plugin for product","group":"","filename":"textinput"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'VM Custom - Product specification', 'plugin', 'specification', 'vmcustom', 0, 1, 1, 0, '{"name":"plgvm_specification","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2014 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"VMCustom - specification; text input plugin for product","group":"","filename":"specification"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'VM Calculation - Avalara Tax', 'plugin', 'avalara', 'vmcalculation', 0, 0, 1, 0, '{"name":"VM - Calculation Avalara Tax","type":"plugin","creationDate":"November 10 2015","author":"Max Milbers","copyright":"Copyright (C) 2013 iStraxx UG (haftungsbeschr\\u00e4nkt). All rights reserved","authorEmail":"","authorUrl":"http:\\/\\/virtuemart.net","version":"3.0.12","description":"VM - Calculation Avalara Tax; On demand tax calculation for whole U.S.A.","group":"","filename":"avalara"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'VirtueMart Product', 'plugin', 'virtuemart', 'search', 0, 0, 1, 0, '{"name":"Search - VirtueMart","type":"plugin","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"PLG_SEARCH_VIRTUEMART_XML_DESCRIPTION","group":"","filename":"virtuemart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'mod_vmmenu', 'module', 'mod_vmmenu', '', 1, 1, 3, 0, '{"name":"VirtueMart Administrator Menu","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2013 Virtuemart Team. All rights reserved.","authorEmail":"max|at|virtuemart.net","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VMMENU_XML_DESCRIPTION","group":"","filename":"mod_vmmenu"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10023, 'mod_virtuemart_currencies', 'module', 'mod_virtuemart_currencies', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_currencies","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_CURRENCIES_DESC","group":"","filename":"mod_virtuemart_currencies"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(10024, 'mod_virtuemart_product', 'module', 'mod_virtuemart_product', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_product","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_PRODUCT_DESC","group":"","filename":"mod_virtuemart_product"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(10025, 'mod_virtuemart_search', 'module', 'mod_virtuemart_search', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_search","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_SEARCH_DESC","group":"","filename":"mod_virtuemart_search"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(10026, 'mod_virtuemart_manufacturer', 'module', 'mod_virtuemart_manufacturer', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_manufacturer","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_MANUFACTURER_DESC","group":"","filename":"mod_virtuemart_manufacturer"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(10027, 'mod_virtuemart_cart', 'module', 'mod_virtuemart_cart', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_cart","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_CART_DESC","group":"","filename":"mod_virtuemart_cart"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10028, 'mod_virtuemart_category', 'module', 'mod_virtuemart_category', '', 0, 1, 1, 0, '{"name":"mod_virtuemart_category","type":"module","creationDate":"November 10 2015","author":"The VirtueMart Development Team","copyright":"Copyright (C) 2004-2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"3.0.12","description":"MOD_VIRTUEMART_CATEGORY_DESC","group":"","filename":"mod_virtuemart_category"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(10029, 'com_virtuemart - th-TH', 'file', 'com_virtuemart-th-TH', '', 0, 1, 0, 0, '{"name":"com_virtuemart - th-TH","type":"file","creationDate":"22.01.2016","author":"VirtueMart language team","copyright":"\\u00a9 2008-2016 - compojoom-com. All rights reserved!","authorEmail":"max@virtuemart.net","authorUrl":"https:\\/\\/virtuemart.net","version":"2016-01-22-04-42-59","description":"\\n        This package was auto generated with CTransifex(https:\\/\\/compojoom.com). We''ve grabbed the latest language files for our extension from transifex.com.\\n        Special thanks to OpenTranslators (http:\\/\\/opentranslators.org) for helping us with this translation!\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 'purity_III', 'template', 'purity_iii', '', 0, 1, 1, 0, '{"name":"purity_III","type":"template","creationDate":"July 2015","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"1.1.5","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\" title=\\"Purity III Template demo\\">Live Demo<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\" title=\\"purity iii template documentation\\">Documentation<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\" title=\\"purity iii forum\\">Forum<\\/a> | <a href=\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\" title=\\"Purity III template more info\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{"tpl_article_info_datetime_format":"d M Y"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"December 09, 2015","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2015 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.5.2","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2015 <a href=''http:\\/\\/www.joomlart.com\\/'' title=''Visit Joomlart.com!''>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 467, '2016-02-08 09:39:24', 0, 0),
(10032, 'com_jaextmanager', 'component', 'com_jaextmanager', '', 1, 1, 0, 0, '{"name":"com_jaextmanager","type":"component","creationDate":"Feb 2015","author":"JoomlArt","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.joomlart.com","version":"2.6.0","description":"JA Extension Manager Component","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 'Helix3 - Ajax', 'plugin', 'helix3', 'ajax', 0, 1, 1, 0, '{"name":"Helix3 - Ajax","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":"","filename":"helix3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 'System - Helix3 Framework', 'plugin', 'helix3', 'system', 0, 1, 1, 0, '{"name":"System - Helix3 Framework","type":"plugin","creationDate":"Jan 2015","author":"JoomShaper.com","copyright":"Copyright (C) 2010 - 2015 JoomShaper. All rights reserved.","authorEmail":"support@joomshaper.com","authorUrl":"www.joomshaper.com","version":"1.0","description":"Helix3 Framework - Joomla Template Framework by JoomShaper","group":"","filename":"helix3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 'lt_techshop', 'template', 'lt_techshop', '', 0, 1, 1, 0, '{"name":"lt_techshop","type":"template","creationDate":"Jan 2015","author":"LTHEME.com","copyright":"Copyright (C) 2010 - 2015 ltheme.com. All rights reserved.","authorEmail":"info@ltheme.com","authorUrl":"http:\\/\\/www.ltheme.com","version":"1.0","description":"LT Tech Shop - Responsive Tech Shop Joomla! template","group":"","filename":"templateDetails"}', '{"sticky_header":"1","boxed_layout":"0","logo_type":"image","logo_position":"logo","body_bg_repeat":"inherit","body_bg_size":"inherit","body_bg_attachment":"inherit","body_bg_position":"0 0","enabled_copyright":"1","copyright_position":"footer1","copyright":"\\u00a9 2015 Your Company. All Rights Reserved. Designed By L.THEME","show_social_icons":"1","social_position":"top1","facebook":"http:\\/\\/facebook.com\\/lthemestore","twitter":"https:\\/\\/twitter.com\\/lthemestore","enable_contactinfo":"1","contact_position":"top2","contact_phone":"+228 872 4444","contact_email":"contact@email.com","comingsoon_mode":"0","comingsoon_title":"Coming Soon Title","comingsoon_date":"5-10-2018","comingsoon_content":"Coming soon content","preset":"preset1","preset1_bg":"#ffffff","preset1_text":"#000000","preset1_major":"#26aae1","preset2_bg":"#ffffff","preset2_text":"#000000","preset2_major":"#3d449a","preset3_bg":"#ffffff","preset3_text":"#000000","preset3_major":"#2bb673","preset4_bg":"#ffffff","preset4_text":"#000000","preset4_major":"#eb4947","menu":"mainmenu","menu_type":"mega_offcanvas","menu_animation":"menu-fade","enable_body_font":"1","body_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"300\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h1_font":"1","h1_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"800\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h2_font":"1","h2_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h3_font":"1","h3_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h4_font":"1","h4_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h5_font":"1","h5_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h6_font":"1","h6_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_navigation_font":"0","enable_custom_font":"0","compress_css":"0","compress_js":"0","lessoption":"0","show_post_format":"1","commenting_engine":"disabled","disqus_devmode":"0","intensedebate_acc":"","fb_width":"500","fb_cpp":"10","comments_count":"0","social_share":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 'tcpdf', 'component', 'com_tcpdf', '', 1, 1, 0, 0, '{"name":"tcpdf","type":"component","creationDate":"February 2015","author":"Nicola Asuni, The VirtueMart Development Team","copyright":"Copyright (c) 2001-2013 Nicola Asuni - Tecnick.com LTD - Tutti i diritti riservati - All Rights Reserved. 2015 Virtuemart Team. All rights reserved.","authorEmail":"","authorUrl":"http:\\/\\/www.virtuemart.net","version":"1.0.0","description":"TCPDF 6.0.096 by Nicola Asuni. Joomla Installer by the VirtueMart Team","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 'Thai', 'language', 'th-TH', '', 0, 1, 0, 0, '{"name":"Thai (\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22)","type":"language","creationDate":"2015-12-31","author":"Thai Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters & JoomlaCorner.com. All rights reserved.","authorEmail":"tt@joomlacorner.com","authorUrl":"www.joomlacorner.com","version":"3.4.8.1","description":"\\n    <div align=\\"center\\">\\n      <table border=\\"0\\" width=\\"100%\\">\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"100%\\" colspan=\\"2\\">\\n  \\t\\t      <div class=\\"alert alert-success center\\" align=\\"center\\">\\n  \\t\\t        <h3 class=\\"alert-heading\\">\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22\\u0e2a\\u0e33\\u0e2b\\u0e23\\u0e31\\u0e1a \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 3.4 \\u0e08\\u0e32\\u0e01\\u0e17\\u0e35\\u0e21\\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c <br \\/>\\u0e20\\u0e32\\u0e22\\u0e43\\u0e15\\u0e49\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e19\\u0e31\\u0e1a\\u0e2a\\u0e19\\u0e38\\u0e19\\u0e02\\u0e2d\\u0e07 \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14<\\/h3>\\n  \\t\\t      <\\/div>\\n  \\t\\t      <hr \\/>\\n  \\t\\t    <\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e23\\u0e32\\u0e22\\u0e25\\u0e30\\u0e40\\u0e2d\\u0e35\\u0e22\\u0e14 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22\\u0e2a\\u0e33\\u0e2b\\u0e23\\u0e31\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c (\\u0e14\\u0e49\\u0e32\\u0e19\\u0e2b\\u0e19\\u0e49\\u0e32)<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e44\\u0e1f\\u0e25\\u0e4c\\u0e20\\u0e32\\u0e29\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4.8v1<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <td width=\\"100%\\" colspan=\\"2\\"><hr \\/><\\/td>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.joomlacorner.com\\" target=\\"_blank\\">http:\\/\\/www.joomlacorner.com<\\/a><\\/td>\\n  \\t\\t <\\/tr>\\n  \\t\\t <tr>   \\n   \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.marvelic.co.th\\" target=\\"_blank\\">http:\\/\\/www.marvelic.co.th<\\/a><\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"100%\\" colspan=\\"2\\">\\n  \\t\\t      <strong><font color=\\"#008000\\">\\u0e17\\u0e48\\u0e32\\u0e19\\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e15\\u0e34\\u0e14\\u0e15\\u0e32\\u0e21\\u0e02\\u0e48\\u0e32\\u0e27\\u0e2a\\u0e32\\u0e23\\u0e41\\u0e25\\u0e30\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19\\u0e25\\u0e48\\u0e32\\u0e2a\\u0e38\\u0e14 \\u0e08\\u0e32\\u0e01\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e23\\u0e32\\u0e02\\u0e49\\u0e32\\u0e07\\u0e15\\u0e49\\u0e19<\\/font><\\/strong>\\n          <\\/td>\\n  \\t    <\\/tr>\\n      <\\/table>\\n    <\\/div>\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `mhyjf_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10039, 'Thai', 'language', 'th-TH', '', 1, 1, 0, 0, '{"name":"Thai (\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22)","type":"language","creationDate":"2015-12-31","author":"Thai Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters & JoomlaCorner.com. All rights reserved.","authorEmail":"tt@joomlacorner.com","authorUrl":"www.joomlacorner.com","version":"3.4.8.1","description":"\\n    <div align=\\"center\\">\\n      <table border=\\"0\\" width=\\"100%\\">\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"100%\\" colspan=\\"2\\">\\n  \\t\\t      <div class=\\"alert alert-success center\\" align=\\"center\\">\\n  \\t\\t        <h3 class=\\"alert-heading\\">\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22\\u0e2a\\u0e33\\u0e2b\\u0e23\\u0e31\\u0e1a \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 3.4 \\u0e08\\u0e32\\u0e01\\u0e17\\u0e35\\u0e21\\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c <br \\/>\\u0e20\\u0e32\\u0e22\\u0e43\\u0e15\\u0e49\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e19\\u0e31\\u0e1a\\u0e2a\\u0e19\\u0e38\\u0e19\\u0e42\\u0e14\\u0e22 \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14<\\/h3>\\n  \\t\\t      <\\/div>\\n  \\t\\t      <hr \\/>\\n  \\t\\t    <\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e23\\u0e32\\u0e22\\u0e25\\u0e30\\u0e40\\u0e2d\\u0e35\\u0e22\\u0e14 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22\\u0e2a\\u0e33\\u0e2b\\u0e23\\u0e31\\u0e1a\\u0e1c\\u0e39\\u0e49\\u0e14\\u0e39\\u0e41\\u0e25\\u0e23\\u0e30\\u0e1a\\u0e1a (\\u0e14\\u0e49\\u0e32\\u0e19\\u0e2b\\u0e25\\u0e31\\u0e07)<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e44\\u0e1f\\u0e25\\u0e4c\\u0e20\\u0e32\\u0e29\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4.8v1<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <td width=\\"100%\\" colspan=\\"2\\"><hr \\/><\\/td>\\n   \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.joomlacorner.com\\" target=\\"_blank\\">http:\\/\\/www.joomlacorner.com<\\/a><\\/td>\\n  \\t\\t <\\/tr>\\n  \\t\\t <tr>   \\n   \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.marvelic.co.th\\" target=\\"_blank\\">http:\\/\\/www.marvelic.co.th<\\/a><\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"100%\\" colspan=\\"2\\">\\n  \\t\\t      <strong><font color=\\"#008000\\">\\u0e17\\u0e48\\u0e32\\u0e19\\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e15\\u0e34\\u0e14\\u0e15\\u0e32\\u0e21\\u0e02\\u0e48\\u0e32\\u0e27\\u0e2a\\u0e32\\u0e23\\u0e41\\u0e25\\u0e30\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19\\u0e25\\u0e48\\u0e32\\u0e2a\\u0e38\\u0e14 \\u0e08\\u0e32\\u0e01\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e23\\u0e32\\u0e02\\u0e49\\u0e32\\u0e07\\u0e15\\u0e49\\u0e19<\\/font><\\/strong>\\n          <\\/td>\\n  \\t    <\\/tr>\\n      <\\/table>\\n    <\\/div>\\n    ","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10040, 'Thai Language Pack', 'package', 'pkg_th-TH', '', 0, 1, 1, 0, '{"name":"Thai Language Pack","type":"package","creationDate":"2015-12-31","author":"Thai Translation Team","copyright":"Copyright (C) 2005 - 2015 Open Source Matters & JoomlaCorner.com. All rights reserved.","authorEmail":"tt@joomlacorner.com","authorUrl":"www.joomlacorner.com","version":"3.4.8.1","description":"\\n\\t\\t<div align=\\"center\\">\\n\\t\\t<table border=\\"0\\" width=\\"100%\\">\\n\\t\\t<tr>\\n\\t\\t\\t<td width=\\"100%\\" colspan=\\"2\\">\\n\\t\\t\\t\\t<div class=\\"alert alert-success center\\" align=\\"center\\">\\n\\t\\t\\t\\t\\t<h3 class=\\"alert-heading\\">Joomla 3.4 Thai Language Pack by JoomlaCorner Team <br \\/>under Marvelic Engine Co.,Ltd.<br \\/><br \\/>\\u0e20\\u0e32\\u0e29\\u0e32\\u0e44\\u0e17\\u0e22\\u0e2a\\u0e33\\u0e2b\\u0e23\\u0e31\\u0e1a\\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 3.4 \\u0e08\\u0e32\\u0e01\\u0e17\\u0e35\\u0e21\\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c <br \\/>\\u0e20\\u0e32\\u0e22\\u0e43\\u0e15\\u0e49\\u0e01\\u0e32\\u0e23\\u0e2a\\u0e19\\u0e31\\u0e1a\\u0e2a\\u0e19\\u0e38\\u0e19\\u0e42\\u0e14\\u0e22 \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14<\\/h3>\\n  \\t\\t      <\\/div>\\n  \\t\\t      <hr \\/>\\n  \\t\\t    <\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e1b\\u0e23\\u0e30\\u0e01\\u0e2d\\u0e1a\\u0e14\\u0e49\\u0e27\\u0e22 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">\\u0e2a\\u0e48\\u0e27\\u0e19\\u0e02\\u0e2d\\u0e07\\u0e1c\\u0e39\\u0e49\\u0e14\\u0e39\\u0e41\\u0e25 (\\u0e14\\u0e49\\u0e32\\u0e19\\u0e2b\\u0e25\\u0e31\\u0e07) <br \\/>\\u0e41\\u0e25\\u0e30\\u0e2a\\u0e48\\u0e27\\u0e19\\u0e02\\u0e2d\\u0e07\\u0e44\\u0e0b\\u0e15\\u0e4c (\\u0e14\\u0e49\\u0e32\\u0e19\\u0e2b\\u0e19\\u0e49\\u0e32\\u0e40\\u0e27\\u0e47\\u0e1a)<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19 \\u0e02\\u0e2d\\u0e07\\u0e44\\u0e1f\\u0e25\\u0e4c\\u0e20\\u0e32\\u0e29\\u0e32 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\">3.4.8v1<\\/td>\\n  \\t    <\\/tr>\\n  \\t    <td width=\\"100%\\" colspan=\\"2\\"><hr \\/><\\/td>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e08\\u0e39\\u0e21\\u0e25\\u0e48\\u0e32\\u0e04\\u0e2d\\u0e23\\u0e4c\\u0e40\\u0e19\\u0e2d\\u0e23\\u0e4c :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.joomlacorner.com\\" target=\\"_blank\\">http:\\/\\/www.joomlacorner.com<\\/a><\\/td>\\n  \\t\\t <\\/tr>\\n  \\t\\t <tr>   \\n   \\t\\t    <td width=\\"40%\\"><u><strong>\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c \\u0e1a\\u0e23\\u0e34\\u0e29\\u0e31\\u0e17 \\u0e21\\u0e32\\u0e23\\u0e4c\\u0e40\\u0e27\\u0e25\\u0e34\\u0e04 \\u0e40\\u0e2d\\u0e47\\u0e19\\u0e08\\u0e34\\u0e49\\u0e19 \\u0e08\\u0e33\\u0e01\\u0e31\\u0e14 :<\\/strong><\\/u><\\/td>\\n  \\t\\t    <td width=\\"60%\\"><a href=\\"http:\\/\\/www.marvelic.co.th\\" target=\\"_blank\\">http:\\/\\/www.marvelic.co.th<\\/a><\\/td>\\n  \\t    <\\/tr>\\n  \\t    <tr>\\n  \\t\\t    <td width=\\"100%\\" colspan=\\"2\\">\\n  \\t\\t      <strong><font color=\\"#008000\\">\\u0e17\\u0e48\\u0e32\\u0e19\\u0e2a\\u0e32\\u0e21\\u0e32\\u0e23\\u0e16\\u0e15\\u0e34\\u0e14\\u0e15\\u0e32\\u0e21\\u0e02\\u0e48\\u0e32\\u0e27\\u0e2a\\u0e32\\u0e23\\u0e41\\u0e25\\u0e30\\u0e40\\u0e27\\u0e2d\\u0e23\\u0e4c\\u0e0a\\u0e31\\u0e19\\u0e25\\u0e48\\u0e32\\u0e2a\\u0e38\\u0e14 \\u0e08\\u0e32\\u0e01\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e23\\u0e32\\u0e02\\u0e49\\u0e32\\u0e07\\u0e15\\u0e49\\u0e19<\\/font><\\/strong>\\n          <\\/td>\\n  \\t    <\\/tr>\\n      <\\/table>\\n    <\\/div>\\n    ","group":"","filename":"pkg_th-TH"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10041, 'ImageShow', 'component', 'com_imageshow', '', 1, 1, 0, 0, '{"name":"ImageShow","type":"component","creationDate":"12\\/31\\/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"4.9.5","description":"JSN IMAGESHOW FREE","group":"","filename":"imageshow"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10042, 'Content - JSN ImageShow', 'plugin', 'imageshow', 'content', 0, 1, 1, 1, '{"name":"Content - JSN ImageShow","type":"plugin","creationDate":"12/31/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.9.5","description":"JSN_IMAGESHOW_CONTENT_PLUGIN","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10043, 'System - JSN ImageShow', 'plugin', 'imageshow', 'system', 0, 1, 1, 1, '{"name":"System - JSN ImageShow","type":"plugin","creationDate":"12/31/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.9.5","description":"JSN_IMAGESHOW_SYSTEM_PLUGIN","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10044, 'Button - ImageShow', 'plugin', 'imageshow', 'editors-xtd', 0, 1, 1, 1, '{"name":"Button - ImageShow","type":"plugin","creationDate":"12/31/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.9.5","description":"PLG_EDITOR_JSN_IMAGESHOW_XML_DESCRIPTION","group":"","filename":"imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10045, 'JSN ImageShow', 'module', 'mod_imageshow', '', 0, 1, 0, 1, '{"name":"JSN ImageShow","type":"module","creationDate":"12/31/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"4.9.5","description":"JSN_MODULE_JSN_IMAGESHOW_MODULE","group":"","filename":"mod_imageshow","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10046, 'JSN ImageShow Quick Icons', 'module', 'mod_imageshow_quickicon', '', 1, 1, 2, 1, '{"name":"JSN ImageShow Quick Icons","type":"module","creationDate":"12/31/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"4.9.5","description":"Quick access icon to reach JSN ImageShow Launch Pad","group":"","filename":"mod_imageshow_quickicon","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10047, 'plg_system_jsnframework', 'plugin', 'jsnframework', 'system', 0, 1, 1, 1, '{"name":"plg_system_jsnframework","type":"plugin","creationDate":"12/28/2015","author":"JoomlaShine.com","copyright":"Copyright (C) 2013 JoomlaShine.com. All Rights Reserved.","authorEmail":"admin@joomlashine.com","authorUrl":"www.joomlashine.com","version":"1.5.8","description":"PLG_SYSTEM_JSNFRAMEWORK_XML_DESCRIPTION","group":"","filename":"jsnframework","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', -9999, 0),
(10048, 'Source Picasa', 'plugin', 'sourcepicasa', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Source Picasa","type":"plugin","creationDate":"09/24/2014","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.1.7","description":"JSN IMAGESHOW IMAGE SOURCE PICASA","group":"","filename":"sourcepicasa","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10049, 'Theme Classic', 'plugin', 'themeclassic', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Classic","type":"plugin","creationDate":"11/20/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http://www.joomlashine.com","version":"1.3.7","description":"JSN IMAGESHOW SHOWCASE THEME CLASSIC PLUGIN","group":"","filename":"themeclassic","dependency":["imageshow"]}', '{"imageshow":"imageshow"}', '["imageshow"]', '', 0, '0000-00-00 00:00:00', 0, 0),
(10050, 'plg_installer_webinstaller', 'plugin', 'webinstaller', 'installer', 0, 1, 1, 0, '{"name":"plg_installer_webinstaller","type":"plugin","creationDate":"18 December 2013","author":"Joomla! Project","copyright":"Copyright (C) 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.0.5","description":"PLG_INSTALLER_WEBINSTALLER_XML_DESCRIPTION","group":"","filename":"webinstaller"}', '{"tab_position":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10051, 'Theme Carousel', 'plugin', 'themecarousel', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Carousel","type":"plugin","creationDate":"09\\/11\\/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.1.1","description":"JSN IMAGESHOW SHOWCASE THEME CAROUSEL PLUGIN","group":"","filename":"themecarousel"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10052, 'Theme Slider', 'plugin', 'themeslider', 'jsnimageshow', 0, 1, 1, 1, '{"name":"Theme Slider","type":"plugin","creationDate":"12\\/18\\/2015","author":"JoomlaShine.com","copyright":"Copyright (c) 2008 - 2013 - JoomlaShine.com","authorEmail":"admin@joomlashine.com","authorUrl":"http:\\/\\/www.joomlashine.com","version":"1.2.3","description":"JSN IMAGESHOW SHOWCASE THEME SLIDER PLUGIN","group":"","filename":"themeslider"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_filters`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links` (
  `link_id` int(10) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_finder_taxonomy`
--

INSERT INTO `mhyjf_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_terms`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_terms` (
  `term_id` int(10) unsigned NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_finder_terms_common`
--

INSERT INTO `mhyjf_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_finder_types`
--

CREATE TABLE IF NOT EXISTS `mhyjf_finder_types` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_external_source_picasa`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_external_source_picasa` (
  `external_source_id` int(11) unsigned NOT NULL,
  `external_source_profile_title` varchar(255) DEFAULT NULL,
  `picasa_username` varchar(255) DEFAULT '',
  `picasa_thumbnail_size` char(30) DEFAULT '144',
  `picasa_image_size` char(30) DEFAULT '1024'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_images`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_images` (
  `image_id` int(11) NOT NULL,
  `showlist_id` int(11) NOT NULL,
  `image_extid` varchar(255) DEFAULT NULL,
  `album_extid` varchar(255) DEFAULT NULL,
  `image_small` varchar(255) DEFAULT NULL,
  `image_medium` varchar(255) DEFAULT NULL,
  `image_big` text,
  `image_title` varchar(255) DEFAULT NULL,
  `image_alt_text` text,
  `image_description` text,
  `image_link` varchar(255) DEFAULT NULL,
  `ordering` int(11) DEFAULT '0',
  `custom_data` tinyint(1) DEFAULT '0',
  `sync` tinyint(1) DEFAULT '0',
  `image_size` varchar(25) DEFAULT NULL,
  `exif_data` text
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_images`
--

INSERT INTO `mhyjf_imageshow_images` (`image_id`, `showlist_id`, `image_extid`, `album_extid`, `image_small`, `image_medium`, `image_big`, `image_title`, `image_alt_text`, `image_description`, `image_link`, `ordering`, `custom_data`, `sync`, `image_size`, `exif_data`) VALUES
(12, 1, 'images/banners/logoEcom-01.jpg', 'images/banners', 'images/jsn_is_thumbs/images/banners/logoEcom-01.jpg', 'images/banners/logoEcom-01.jpg', 'images/banners/logoEcom-01.jpg', 'logoEcom-01.jpg', 'logoEcom-01.jpg', '', 'http://localhost/joomla/images/banners/logoEcom-01.jpg', 1, 0, 0, '45395', ''),
(18, 1, 'images/slishow2/1.jpg', 'images/slishow2', 'images/jsn_is_thumbs/images/slishow2/1.jpg', 'images/slishow2/1.jpg', 'images/slishow2/1.jpg', '1.jpg', '1.jpg', '', 'http://localhost/joomla/images/slishow2/1.jpg', 2, 0, 0, '320162', ''),
(19, 1, 'images/slishow2/2.jpg', 'images/slishow2', 'images/jsn_is_thumbs/images/slishow2/2.jpg', 'images/slishow2/2.jpg', 'images/slishow2/2.jpg', '2.jpg', '2.jpg', '', 'http://localhost/joomla/images/slishow2/2.jpg', 3, 0, 0, '407860', ''),
(20, 1, 'images/slishow2/4.jpg', 'images/slishow2', 'images/jsn_is_thumbs/images/slishow2/4.jpg', 'images/slishow2/4.jpg', 'images/slishow2/4.jpg', '4.jpg', '4.jpg', '', 'http://localhost/joomla/images/slishow2/4.jpg', 5, 0, 0, '55861', ''),
(21, 1, 'images/slishow2/5.jpg', 'images/slishow2', 'images/jsn_is_thumbs/images/slishow2/5.jpg', 'images/slishow2/5.jpg', 'images/slishow2/5.jpg', '5.jpg', '5.jpg', '', 'http://localhost/joomla/images/slishow2/5.jpg', 6, 0, 0, '75810', 'Canon/Canon EOS 5D Mark II, 1/125, f/16.0, 100mm, ISO-100, Flash did not fire, compulsory flash mode'),
(22, 1, 'images/slishow/3.jpg', 'images/slishow', 'images/jsn_is_thumbs/images/slishow/3.jpg', 'images/slishow/3.jpg', 'images/slishow/3.jpg', '3.jpg', '3.jpg', '', 'http://localhost/joomla/images/slishow/3.jpg', 4, 0, 0, '34282', ''),
(23, 1, 'images/slishow/6.jpg', 'images/slishow', 'images/jsn_is_thumbs/images/slishow/6.jpg', 'images/slishow/6.jpg', 'images/slishow/6.jpg', '6.jpg', '6.jpg', '', 'http://localhost/joomla/images/slishow/6.jpg', 7, 0, 0, '76877', '');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_log`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_log` (
  `log_id` int(11) unsigned NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `screen` varchar(100) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `time_created` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_log`
--

INSERT INTO `mhyjf_imageshow_log` (`log_id`, `user_id`, `url`, `result`, `screen`, `action`, `time_created`) VALUES
(1, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'ภาพสไลด์', 'showlist', 'add', '2016-02-03 03:39:19'),
(2, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-03 03:41:33'),
(3, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-03 03:41:41'),
(4, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-03 03:41:43'),
(5, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-03 03:41:46'),
(6, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-03 03:41:49'),
(7, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=showlist', 'ภาพสไลด์', 'showlist', 'modify', '2016-02-03 03:42:57'),
(8, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=showcase', 'แบบสไลน์1', 'showcase', 'add', '2016-02-03 03:47:04'),
(9, 467, '/Joomla/administrator/index.php?option=com_imageshow&controller=showcase', 'แบบสไลน์1', 'showcase', 'modify', '2016-02-03 03:48:47'),
(10, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=showcase', 'แบบสไลน์1', 'showcase', 'modify', '2016-02-07 04:06:19'),
(11, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:28:39'),
(12, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:28:46'),
(13, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:28:58'),
(14, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:31:58'),
(15, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:32:07'),
(16, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:34:00'),
(17, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 04:34:40'),
(18, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:24:28'),
(19, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:24:37'),
(20, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:24:44'),
(21, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:28:07'),
(22, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:28:28'),
(23, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:32:24'),
(24, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:32:29'),
(25, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:32:37'),
(26, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:32:42'),
(27, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:33:02'),
(28, 467, '/joomla/administrator/index.php?option=com_imageshow&controller=images&task=saveshowlist', 'ภาพสไลด์ ', 'addimages', 'any', '2016-02-09 07:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_showcase`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_showcase` (
  `showcase_id` int(11) unsigned NOT NULL,
  `showcase_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `general_overall_width` char(30) DEFAULT NULL,
  `general_overall_height` char(30) DEFAULT NULL,
  `date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_showcase`
--

INSERT INTO `mhyjf_imageshow_showcase` (`showcase_id`, `showcase_title`, `published`, `ordering`, `general_overall_width`, `general_overall_height`, `date_created`, `date_modified`) VALUES
(1, 'แบบสไลน์1', 1, 1, '100%', '350', '2016-02-03 03:02:04', '2016-02-09 11:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_showlist`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_showlist` (
  `showlist_id` int(11) NOT NULL,
  `showlist_title` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '0',
  `override_title` tinyint(1) DEFAULT '0',
  `override_description` tinyint(1) DEFAULT '0',
  `override_link` tinyint(1) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `access` tinyint(3) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `description` text,
  `showlist_link` text,
  `alter_autid` int(11) DEFAULT '0',
  `date_create` datetime DEFAULT NULL,
  `image_source_type` varchar(45) DEFAULT '',
  `image_source_name` varchar(45) DEFAULT '',
  `image_source_profile_id` int(11) DEFAULT '0',
  `authorization_status` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT '0000-00-00 00:00:00',
  `image_loading_order` char(30) DEFAULT NULL,
  `show_exif_data` char(100) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_showlist`
--

INSERT INTO `mhyjf_imageshow_showlist` (`showlist_id`, `showlist_title`, `published`, `override_title`, `override_description`, `override_link`, `ordering`, `access`, `hits`, `description`, `showlist_link`, `alter_autid`, `date_create`, `image_source_type`, `image_source_name`, `image_source_profile_id`, `authorization_status`, `date_modified`, `image_loading_order`, `show_exif_data`) VALUES
(1, 'ภาพสไลด์ ', 1, 0, 0, 0, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 'folder', 'folder', 0, 0, '0000-00-00 00:00:00', 'forward', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_source_profile`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_source_profile` (
  `external_source_profile_id` int(11) NOT NULL,
  `external_source_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_carousel`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_carousel` (
  `theme_id` int(11) unsigned NOT NULL,
  `image_source` char(150) DEFAULT 'thumbnails',
  `image_width` char(150) DEFAULT '',
  `image_height` char(150) DEFAULT '',
  `image_border_thickness` char(150) DEFAULT '5',
  `image_border_color` char(150) DEFAULT '#666666',
  `view_angle` char(150) DEFAULT '0',
  `transparency` char(150) DEFAULT '50',
  `scale` char(150) DEFAULT '35',
  `diameter` char(150) DEFAULT '50',
  `animation_duration` char(150) DEFAULT '0.6',
  `click_action` char(150) DEFAULT 'show_original_image',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `orientation` char(150) DEFAULT 'horizontal',
  `enable_drag_action` char(150) DEFAULT 'no',
  `show_caption` char(150) DEFAULT 'yes',
  `caption_background_color` char(150) DEFAULT '#000000',
  `caption_opacity` char(150) DEFAULT '75',
  `caption_show_title` char(150) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_show_description` char(150) DEFAULT 'yes',
  `caption_description_length_limitation` char(150) DEFAULT '50',
  `caption_description_css` text,
  `navigation_presentation` char(150) DEFAULT 'show',
  `auto_play` char(150) DEFAULT 'no',
  `slide_timing` char(150) DEFAULT '3',
  `pause_on_mouse_over` char(150) DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_classic_flash`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_classic_flash` (
  `theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_transition_type_fit` char(30) DEFAULT '',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_transition_type_expand` char(30) DEFAULT '',
  `imgpanel_img_motion_type_expand` char(30) DEFAULT '',
  `imgpanel_img_zooming_type_expand` char(30) DEFAULT 'center',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_img_show_image_shadow_fit` char(30) DEFAULT 'yes',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `imgpanel_show_watermark` char(30) DEFAULT 'no',
  `imgpanel_watermark_path` char(255) DEFAULT NULL,
  `imgpanel_watermark_position` char(30) DEFAULT '',
  `imgpanel_watermark_offset` char(30) DEFAULT NULL,
  `imgpanel_watermark_opacity` char(30) DEFAULT NULL,
  `imgpanel_show_overlay_effect` char(30) DEFAULT 'no',
  `imgpanel_overlay_effect_type` char(30) DEFAULT NULL,
  `imgpanel_show_inner_shawdow` char(30) DEFAULT 'yes',
  `imgpanel_inner_shawdow_color` char(30) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_collapsible_position` char(30) DEFAULT 'yes',
  `thumbpanel_thumb_browsing_mode` char(30) DEFAULT '',
  `thumbpanel_show_thumb_status` char(30) DEFAULT 'yes',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_presentation_mode` char(30) DEFAULT '',
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_enable_big_thumb` char(30) DEFAULT 'yes',
  `thumbpanel_big_thumb_size` char(30) DEFAULT NULL,
  `thumbpanel_thumb_row` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumb_opacity` char(30) DEFAULT '50',
  `thumbpanel_big_thumb_color` char(30) DEFAULT NULL,
  `thumbpanel_thumb_border` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_panel_position` char(30) DEFAULT '',
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_image_navigation` char(30) DEFAULT 'yes',
  `toolbarpanel_slideshow_player` char(30) DEFAULT 'yes',
  `toolbarpanel_show_fullscreen_switcher` char(30) DEFAULT 'yes',
  `toolbarpanel_show_tooltip` char(30) DEFAULT 'no',
  `slideshow_hide_thumb_panel` char(30) DEFAULT 'yes',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_hide_image_navigation` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_show_status` char(30) DEFAULT 'yes',
  `slideshow_enable_ken_burn_effect` char(30) DEFAULT 'yes',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_classic_javascript`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_classic_javascript` (
  `theme_id` int(11) unsigned NOT NULL,
  `imgpanel_presentation_mode` char(30) DEFAULT '0',
  `imgpanel_img_click_action_fit` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_fit` char(30) DEFAULT 'new-browser',
  `imgpanel_img_click_action_expand` char(30) DEFAULT '',
  `imgpanel_img_open_link_in_expand` char(30) DEFAULT 'new-browser',
  `imgpanel_bg_type` char(30) DEFAULT '',
  `imgpanel_bg_value` char(255) DEFAULT NULL,
  `thumbpanel_show_panel` char(30) DEFAULT NULL,
  `thumbpanel_panel_position` char(30) DEFAULT '',
  `thumbpanel_active_state_color` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_normal_state` char(30) DEFAULT NULL,
  `thumbpanel_border` char(30) DEFAULT NULL,
  `thumbpanel_thumb_width` char(30) DEFAULT NULL,
  `thumbpanel_thumb_height` char(30) DEFAULT NULL,
  `thumbpanel_thumnail_panel_color` char(30) DEFAULT NULL,
  `infopanel_panel_position` char(30) DEFAULT '',
  `infopanel_presentation` char(30) DEFAULT NULL,
  `infopanel_bg_color_fill` char(30) DEFAULT NULL,
  `infopanel_panel_click_action` char(30) DEFAULT NULL,
  `infopanel_open_link_in` char(30) DEFAULT 'new-browser',
  `infopanel_show_title` char(30) DEFAULT 'yes',
  `infopanel_title_css` char(250) DEFAULT NULL,
  `infopanel_show_des` char(30) DEFAULT 'yes',
  `infopanel_des_lenght_limitation` char(30) DEFAULT '',
  `infopanel_des_css` char(250) DEFAULT NULL,
  `infopanel_show_link` char(30) DEFAULT 'no',
  `infopanel_link_css` char(250) DEFAULT NULL,
  `toolbarpanel_presentation` char(30) DEFAULT '0',
  `toolbarpanel_show_counter` char(30) DEFAULT 'no',
  `slideshow_slide_timing` char(50) DEFAULT NULL,
  `slideshow_auto_play` char(30) DEFAULT 'no',
  `slideshow_looping` char(30) DEFAULT 'yes',
  `general_round_corner_radius` char(30) DEFAULT '',
  `general_border_color` char(30) DEFAULT '',
  `general_background_color` char(30) DEFAULT '',
  `general_border_stroke` char(30) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_theme_classic_javascript`
--

INSERT INTO `mhyjf_imageshow_theme_classic_javascript` (`theme_id`, `imgpanel_presentation_mode`, `imgpanel_img_click_action_fit`, `imgpanel_img_open_link_in_fit`, `imgpanel_img_click_action_expand`, `imgpanel_img_open_link_in_expand`, `imgpanel_bg_type`, `imgpanel_bg_value`, `thumbpanel_show_panel`, `thumbpanel_panel_position`, `thumbpanel_active_state_color`, `thumbpanel_thumnail_normal_state`, `thumbpanel_border`, `thumbpanel_thumb_width`, `thumbpanel_thumb_height`, `thumbpanel_thumnail_panel_color`, `infopanel_panel_position`, `infopanel_presentation`, `infopanel_bg_color_fill`, `infopanel_panel_click_action`, `infopanel_open_link_in`, `infopanel_show_title`, `infopanel_title_css`, `infopanel_show_des`, `infopanel_des_lenght_limitation`, `infopanel_des_css`, `infopanel_show_link`, `infopanel_link_css`, `toolbarpanel_presentation`, `toolbarpanel_show_counter`, `slideshow_slide_timing`, `slideshow_auto_play`, `slideshow_looping`, `general_round_corner_radius`, `general_border_color`, `general_background_color`, `general_border_stroke`) VALUES
(16, 'expand-out', 'no-action', 'new-browser', 'open-image-link', 'new-browser', 'solid-color', '#595959', 'on', 'bottom', '#ff6200', '#ffffff', '2', '60', '50', '#000000', 'top', 'on', '#a8a8a8', 'no-action', 'new-browser', 'no', 'font-family: Verdana;\r\nfont-size: 12px;\r\nfont-weight: bold;\r\ntext-align: left;\r\ncolor: #E9E9E9;', 'no', '50', 'font-family: Arial;\r\nfont-size: 11px;\r\nfont-weight: normal;\r\ntext-align: left;\r\ncolor: #AFAFAF;', 'no', 'font-family: Verdana;\r\nfont-size: 11px;\r\nfont-weight: bold;\r\ntext-align: right;\r\ncolor: #E06614;', 'auto', 'no', '4', 'yes', 'yes', '0', '#cccccc', '#efefef', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_classic_parameters`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_classic_parameters` (
  `id` int(11) NOT NULL,
  `general_swf_library` tinyint(1) DEFAULT '0',
  `root_url` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_profile`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_profile` (
  `theme_id` int(11) NOT NULL DEFAULT '0',
  `showcase_id` int(11) NOT NULL DEFAULT '0',
  `theme_name` varchar(255) NOT NULL DEFAULT '',
  `theme_style_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_imageshow_theme_profile`
--

INSERT INTO `mhyjf_imageshow_theme_profile` (`theme_id`, `showcase_id`, `theme_name`, `theme_style_name`) VALUES
(16, 1, 'themeclassic', 'javascript');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_imageshow_theme_slider`
--

CREATE TABLE IF NOT EXISTS `mhyjf_imageshow_theme_slider` (
  `theme_id` int(11) unsigned NOT NULL,
  `img_transition_effect` char(30) DEFAULT 'random',
  `img_transparent_background` char(150) DEFAULT 'no',
  `toolbar_navigation_arrows_presentation` char(30) DEFAULT 'show-on-mouse-over',
  `toolbar_slideshow_player_presentation` char(30) DEFAULT 'hide',
  `caption_show_caption` char(30) DEFAULT 'yes',
  `caption_title_css` text,
  `caption_description_css` text,
  `caption_link_css` text,
  `caption_caption_opacity` char(30) DEFAULT '75',
  `caption_title_show` char(30) DEFAULT 'yes',
  `caption_description_show` char(30) DEFAULT 'yes',
  `caption_link_show` char(30) DEFAULT 'no',
  `caption_position` char(150) DEFAULT 'bottom',
  `slideshow_slide_timming` int(11) DEFAULT '6',
  `slideshow_pause_on_mouseover` char(30) DEFAULT 'yes',
  `slideshow_auto_play` char(30) DEFAULT 'yes',
  `thumnail_panel_position` char(30) DEFAULT 'right',
  `thumbnail_panel_presentation` char(30) DEFAULT 'show',
  `thumbnail_presentation_mode` char(30) DEFAULT 'numbers',
  `thumbnail_active_state_color` char(30) DEFAULT '#CC3333',
  `click_action` char(150) DEFAULT 'no_action',
  `open_link_in` char(150) DEFAULT 'current_browser',
  `transition_speed` char(150) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_jaem_log`
--

CREATE TABLE IF NOT EXISTS `mhyjf_jaem_log` (
  `id` int(11) NOT NULL,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_jaem_services`
--

CREATE TABLE IF NOT EXISTS `mhyjf_jaem_services` (
  `id` int(11) NOT NULL,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_jaem_services`
--

INSERT INTO `mhyjf_jaem_services` (`id`, `ws_name`, `ws_mode`, `ws_uri`, `ws_user`, `ws_pass`, `ws_default`, `ws_core`) VALUES
(1, 'Local Service', 'local', '', '', '', 1, 1),
(2, 'JoomlArt Updates', 'remote', 'http://update.joomlart.com/service/', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_jsn_imageshow_config`
--

CREATE TABLE IF NOT EXISTS `mhyjf_jsn_imageshow_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_jsn_imageshow_config`
--

INSERT INTO `mhyjf_jsn_imageshow_config` (`name`, `value`) VALUES
('enable_update_checking', '1'),
('jquery_using', 'imageshow'),
('live_update_notification', '0'),
('max_thumbnail_size', '240'),
('number_of_images_on_loading', '30'),
('review_popup', '1'),
('show_quick_icons', '1');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_jsn_imageshow_messages`
--

CREATE TABLE IF NOT EXISTS `mhyjf_jsn_imageshow_messages` (
  `msg_id` int(11) NOT NULL,
  `msg_screen` varchar(150) DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_jsn_imageshow_messages`
--

INSERT INTO `mhyjf_jsn_imageshow_messages` (`msg_id`, `msg_screen`, `published`, `ordering`) VALUES
(1, 'LAUNCH_PAD', 1, 1),
(2, 'LAUNCH_PAD', 1, 2),
(3, 'SHOWLISTS', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_languages`
--

CREATE TABLE IF NOT EXISTS `mhyjf_languages` (
  `lang_id` int(11) unsigned NOT NULL,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_languages`
--

INSERT INTO `mhyjf_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 'th-TH', 'Thai (ภาษาไทย)', 'ไทย', 'th', 'th_th', '', '', '', '', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_menu`
--

CREATE TABLE IF NOT EXISTS `mhyjf_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_menu`
--

INSERT INTO `mhyjf_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 95, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 23, 28, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 24, 25, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 26, 27, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 29, 34, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 30, 31, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 32, 33, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_virtuemart&view=virtuemart&productsublayout=0', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":3,\\"menuParentId\\":\\"\\",\\"moduleId\\":\\"16\\"},{\\"type\\":\\"column\\",\\"colGrid\\":9,\\"menuParentId\\":\\"\\",\\"moduleId\\":\\"17\\"}]}]}","megamenu":"1","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 11, 12, 1, '*', 0),
(102, 'main', 'COM_VIRTUEMART', 'com-virtuemart', '', 'com-virtuemart', 'index.php?option=com_virtuemart', 'component', 0, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_virtuemart/assets/images/vmgeneral/menu_icon.png', 0, '{}', 53, 76, 0, '*', 1),
(103, 'main', 'COM_VIRTUEMART_MENU_CATEGORIES', 'com-virtuemart-menu-categories', '', 'com-virtuemart/com-virtuemart-menu-categories', 'index.php?option=com_virtuemart&view=category', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-categories.png', 0, '{}', 54, 55, 0, '*', 1),
(104, 'main', 'COM_VIRTUEMART_MENU_PRODUCTS', 'com-virtuemart-menu-products', '', 'com-virtuemart/com-virtuemart-menu-products', 'index.php?option=com_virtuemart&view=product', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-products.png', 0, '{}', 56, 57, 0, '*', 1),
(105, 'main', 'COM_VIRTUEMART_MENU_ORDERS', 'com-virtuemart-menu-orders', '', 'com-virtuemart/com-virtuemart-menu-orders', 'index.php?option=com_virtuemart&view=orders', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-orders.png', 0, '{}', 58, 59, 0, '*', 1),
(106, 'main', 'COM_VIRTUEMART_MENU_REPORT', 'com-virtuemart-menu-report', '', 'com-virtuemart/com-virtuemart-menu-report', 'index.php?option=com_virtuemart&view=report', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-report.png', 0, '{}', 60, 61, 0, '*', 1),
(107, 'main', 'COM_VIRTUEMART_MENU_USERS', 'com-virtuemart-menu-users', '', 'com-virtuemart/com-virtuemart-menu-users', 'index.php?option=com_virtuemart&view=user', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shoppers.png', 0, '{}', 62, 63, 0, '*', 1),
(108, 'main', 'COM_VIRTUEMART_MENU_MANUFACTURERS', 'com-virtuemart-menu-manufacturers', '', 'com-virtuemart/com-virtuemart-menu-manufacturers', 'index.php?option=com_virtuemart&view=manufacturer', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-manufacturers.png', 0, '{}', 64, 65, 0, '*', 1),
(109, 'main', 'COM_VIRTUEMART_MENU_STORE', 'com-virtuemart-menu-store', '', 'com-virtuemart/com-virtuemart-menu-store', 'index.php?option=com_virtuemart&view=user&task=editshop', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shop.png', 0, '{}', 66, 67, 0, '*', 1),
(110, 'main', 'COM_VIRTUEMART_MENU_MEDIAFILES', 'com-virtuemart-menu-mediafiles', '', 'com-virtuemart/com-virtuemart-menu-mediafiles', 'index.php?option=com_virtuemart&view=media', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-media.png', 0, '{}', 68, 69, 0, '*', 1),
(111, 'main', 'COM_VIRTUEMART_MENU_SHIPMENTMETHODS', 'com-virtuemart-menu-shipmentmethods', '', 'com-virtuemart/com-virtuemart-menu-shipmentmethods', 'index.php?option=com_virtuemart&view=shipmentmethod', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-shipmentmethods.png', 0, '{}', 70, 71, 0, '*', 1),
(112, 'main', 'COM_VIRTUEMART_MENU_PAYMENTMETHODS', 'com-virtuemart-menu-paymentmethods', '', 'com-virtuemart/com-virtuemart-menu-paymentmethods', 'index.php?option=com_virtuemart&view=paymentmethod', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-paymentmethods.png', 0, '{}', 72, 73, 0, '*', 1),
(113, 'main', 'COM_VIRTUEMART_MENU_CONFIGURATION', 'com-virtuemart-menu-configuration', '', 'com-virtuemart/com-virtuemart-menu-configuration', 'index.php?option=com_virtuemart&view=config', 'component', 0, 102, 2, 10000, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_virtuemart/assets/images/icon_16/menu-icon16-config.png', 0, '{}', 74, 75, 0, '*', 1),
(114, 'main', 'VirtueMart AIO', 'virtuemart-aio', '', 'virtuemart-aio', 'index.php?option=com_virtuemart_allinone', 'component', 0, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 77, 78, 0, '', 1),
(115, 'main', 'COM_JAEXTMANAGER', 'com-jaextmanager', '', 'com-jaextmanager', 'index.php?option=com_jaextmanager', 'component', 0, 1, 1, 10032, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jaextmanager/assets/images/jauc.png', 0, '{}', 79, 80, 0, '', 1),
(116, 'main', 'TCPDF', 'tcpdf', '', 'tcpdf', 'index.php?option=com_tcpdf', 'component', 0, 1, 1, 10037, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 81, 82, 0, '', 1),
(117, 'main', 'COM_IMAGESHOW', 'com-imageshow', '', 'com-imageshow', 'index.php?option=com_imageshow', 'component', 0, 1, 1, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-picture.png', 0, '{}', 83, 94, 0, '', 1),
(118, 'main', 'LAUNCH_PAD', 'launch-pad', '', 'com-imageshow/launch-pad', 'index.php?option=com_imageshow', 'component', 0, 117, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-off.png', 0, '{}', 84, 85, 0, '', 1),
(119, 'main', 'SHOWLISTS', 'showlists', '', 'com-imageshow/showlists', 'index.php?option=com_imageshow&controller=showlist', 'component', 0, 117, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-file.png', 0, '{}', 86, 87, 0, '', 1),
(120, 'main', 'SHOWCASES', 'showcases', '', 'com-imageshow/showcases', 'index.php?option=com_imageshow&controller=showcase', 'component', 0, 117, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-monitor.png', 0, '{}', 88, 89, 0, '', 1),
(121, 'main', 'CONFIGURATION_AND_MAINTENANCE', 'configuration-and-maintenance', '', 'com-imageshow/configuration-and-maintenance', 'index.php?option=com_imageshow&controller=maintenance&type=configs', 'component', 0, 117, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-cog.png', 0, '{}', 90, 91, 0, '', 1),
(122, 'main', 'ABOUT', 'about', '', 'com-imageshow/about', 'index.php?option=com_imageshow&controller=about', 'component', 0, 117, 2, 10041, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_imageshow/assets/images/icons-16/icon-star.png', 0, '{}', 92, 93, 0, '', 1),
(123, 'mainmenu', 'ตะกร้าสินค้า', '2016-02-06-07-05-15', '', '2016-02-06-07-05-15', 'index.php?option=com_virtuemart&view=cart', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"123\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 15, 16, 0, '*', 0),
(124, 'mainmenu', 'สมาชิก', 'member', '', 'member', 'index.php?option=com_users&view=registration', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"124\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"fa-user","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 17, 18, 0, '*', 0),
(125, 'mainmenu', 'เข้าสู่ระบบ', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', 1, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","menulayout":"{\\"width\\":600,\\"menuItem\\":1,\\"menuAlign\\":\\"right\\",\\"layout\\":[{\\"type\\":\\"row\\",\\"attr\\":[{\\"type\\":\\"column\\",\\"colGrid\\":12,\\"menuParentId\\":\\"125\\",\\"moduleId\\":\\"\\"}]}]}","megamenu":"0","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 19, 20, 0, '*', 0),
(126, 'mainmenu', 'ช้อปปิ้งออนไลน์', '2016-02-06-18-37-52', '', '2016-02-06-18-37-52', 'index.php?option=com_virtuemart&view=category&virtuemart_category_id=0&virtuemart_manufacturer_id=0&categorylayout=0&showcategory=1&showproducts=1&productsublayout=0', 'component', 1, 1, 1, 10000, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","dropdown_position":"right","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 13, 14, 0, '*', 0),
(127, 'mainmenu', 'ติดต่อเรา', '2016-02-07-04-33-47', '', '2016-02-07-04-33-47', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0,"masthead-title":"","masthead-slogan":"","dropdown_position":"right","showmenutitle":"1","icon":"","class":"","enable_page_title":"0","page_title_alt":"","page_subtitle":"","page_title_bg_color":"","page_title_bg_image":""}', 21, 22, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_menu_types`
--

CREATE TABLE IF NOT EXISTS `mhyjf_menu_types` (
  `id` int(10) unsigned NOT NULL,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_menu_types`
--

INSERT INTO `mhyjf_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_messages`
--

CREATE TABLE IF NOT EXISTS `mhyjf_messages` (
  `message_id` int(10) unsigned NOT NULL,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_messages`
--

INSERT INTO `mhyjf_messages` (`message_id`, `user_id_from`, `user_id_to`, `folder_id`, `date_time`, `state`, `priority`, `subject`, `message`) VALUES
(1, 0, 0, 0, '2016-02-06 19:09:23', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: Could not instantiate mail function. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: suchada'),
(2, 0, 0, 0, '2016-02-06 19:09:23', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: Could not instantiate mail function. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: suchada'),
(3, 0, 0, 0, '2016-02-06 19:16:39', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: Could not execute: /usr/sbin/sendmail ผู้ใช้พยายามที่จะลงทะเบียนเป็น: mad'),
(4, 0, 0, 0, '2016-02-06 19:16:39', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: Could not execute: /usr/sbin/sendmail ผู้ใช้พยายามที่จะลงทะเบียนเป็น: mad'),
(5, 0, 0, 0, '2016-02-06 19:26:54', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(6, 0, 0, 0, '2016-02-06 19:26:54', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(7, 0, 0, 0, '2016-02-06 19:33:58', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(8, 0, 0, 0, '2016-02-06 19:33:58', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(9, 0, 0, 0, '2016-02-06 19:37:48', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(10, 0, 0, 0, '2016-02-06 19:37:48', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(11, 0, 0, 0, '2016-02-06 19:39:00', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(12, 0, 0, 0, '2016-02-06 19:39:00', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(13, 0, 0, 0, '2016-02-07 04:51:05', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(14, 0, 0, 0, '2016-02-07 04:51:05', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(15, 0, 0, 0, '2016-02-07 04:53:38', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(16, 0, 0, 0, '2016-02-07 04:53:38', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: dayu'),
(17, 0, 0, 0, '2016-02-10 06:01:31', 0, 0, 'เกิดข้อผิดพลาดในการส่งอีเมล', 'พบข้อผิดพลาดเมื่อส่งอีเมลการลงทะเบียนผู้ใช้ ข้อผิดพลาดคือ: SMTP connect() failed. ผู้ใช้พยายามที่จะลงทะเบียนเป็น: kiff');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `mhyjf_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_modules`
--

CREATE TABLE IF NOT EXISTS `mhyjf_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_modules`
--

INSERT INTO `mhyjf_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'sidebar-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'เข้าสู่ระบบ', '', '', 1, 'off-canvas', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","usetext":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 56, 'VM - Administrator Module', '', '', 5, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_vmmenu', 3, 1, '', 1, '*'),
(88, 57, 'VM - Currencies Selector', '', '', 5, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_currencies', 1, 1, '', 0, '*'),
(89, 58, 'VM - Featured products', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_product', 1, 1, '{"layout":"0","product_group":"featured","max_items":"2","products_per_row":"1","display_style":"list","show_price":"1","show_addtocart":"1","headerText":"","footerText":"","filter_category":"0","virtuemart_category_id":"0","vmcache":"1","vmcachetime":"300","cache":"1","moduleclass_sfx":"","class_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 59, 'VM - Search in Shop', '', '', 1, 'head-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_search', 1, 1, '{"width":"30","text":"ค้นหาสินค้า","filter_category":"1","button":"0","button_pos":"right","imagebutton":"1","button_text":"","set_itemid":"","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 60, 'VM - Manufacturer', '', '', 1, 'position-13', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_manufacturer', 1, 1, '{"show":"all","display_style":"list","manufacturers_per_row":"","headerText":"","footerText":"","cache":"1","moduleclass_sfx":"","class_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 61, 'ตะกร้าสินค้า', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_cart', 1, 1, '{"moduleid_sfx":"","moduleclass_sfx":"","show_price":"1","show_product_list":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 62, 'หมวดหมู่สินค้า', '', '', 1, 'sidebar-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_virtuemart_category', 1, 1, '{"Parent_Category_id":"0","level":"2","layout":"default","cache":"1","moduleclass_sfx":"","class_sfx":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 66, 'JSN ImageShow', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow', 1, 1, '{"moduleclass_sfx":"","showlist_id":"1","showcase_id":"1","width":"","height":"","pretext":"","posttext":"","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 67, 'JSN imageshow Quick Icons', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_imageshow_quickicon', 1, 1, '', 1, '*'),
(96, 68, 'เลือกภาษา', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_modules_menu`
--

CREATE TABLE IF NOT EXISTS `mhyjf_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_modules_menu`
--

INSERT INTO `mhyjf_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0),
(93, 0),
(94, -127),
(94, -126),
(94, -125),
(94, -124),
(94, -123),
(95, 0),
(96, 0),
(97, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `mhyjf_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_overrider`
--

CREATE TABLE IF NOT EXISTS `mhyjf_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_postinstall_messages`
--

CREATE TABLE IF NOT EXISTS `mhyjf_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_postinstall_messages`
--

INSERT INTO `mhyjf_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_redirect_links`
--

CREATE TABLE IF NOT EXISTS `mhyjf_redirect_links` (
  `id` int(10) unsigned NOT NULL,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) DEFAULT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_schemas`
--

CREATE TABLE IF NOT EXISTS `mhyjf_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_schemas`
--

INSERT INTO `mhyjf_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.4.0-2015-02-26'),
(10041, '4.8.7'),
(10049, '1.3.7'),
(10051, '1.0.1'),
(10052, '1.2.3');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_session`
--

CREATE TABLE IF NOT EXISTS `mhyjf_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_session`
--

INSERT INTO `mhyjf_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('38k1hk9cinjruccib7v05s5me1', 0, 1, '1455085760', 'joomla|s:5328:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo1MDtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE0NTUwODUwNjQ7czo0OiJsYXN0IjtpOjE0NTUwODU3NTc7czozOiJub3ciO2k6MTQ1NTA4NTc1Nzt9czo1OiJ0b2tlbiI7czozMjoiNDI1MTk3MGE0Y2MwNTJjZjA0OTA0OTE2YjUyMTkzMWYiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJ1c2VycyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsb2dpbiI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJmb3JtIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO2E6MTp7czo2OiJyZXR1cm4iO3M6Mzk6ImluZGV4LnBocD9vcHRpb249Y29tX3VzZXJzJnZpZXc9cHJvZmlsZSI7fX19fXM6OToiY29tX3VzZXJzIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoicHJvZmlsZSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJyZWRpcmVjdCI7Tjt9fX1zOjE0OiJjb21fdmlydHVlbWFydCI7Tzo4OiJzdGRDbGFzcyI6NDp7czo0OiJjYXJ0IjtPOjg6InN0ZENsYXNzIjoyOntzOjU6ImxpbWl0IjtzOjM6ImludCI7czoxMDoibGltaXRzdGFydCI7aTowO31zOjg6ImNhdGVnb3J5IjtPOjg6InN0ZENsYXNzIjoyOntzOjU6ImxpbWl0IjtzOjM6ImludCI7czoxMDoibGltaXRzdGFydCI7aTowO31zOjExOiJjYXRlZ29yeWMxMSI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJsaW1pdCI7czozOiJpbnQiO31zOjEzOiJjYXRlZ29yeWMxMW0wIjtPOjg6InN0ZENsYXNzIjoxOntzOjEwOiJsaW1pdHN0YXJ0IjtpOjA7fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6Mjc6e3M6OToiACoAaXNSb290IjtiOjA7czoyOiJpZCI7czozOiI0ODEiO3M6NDoibmFtZSI7czo2OiJBUElXQVQiO3M6ODoidXNlcm5hbWUiO3M6OToiaG9sb3VzZTAxIjtzOjU6ImVtYWlsIjtzOjIyOiJwaWN0dXJlLndoYW5AZ21haWwuY29tIjtzOjg6InBhc3N3b3JkIjtzOjYwOiIkMnkkMTAkaC9RSUxjMFJKZHZkNWdyODlvM000dXZUVVVPb0JjYWtiR1ZvWjRpQnBEQlhkT2REbnYvd1ciO3M6MTQ6InBhc3N3b3JkX2NsZWFyIjtzOjA6IiI7czo1OiJibG9jayI7czoxOiIxIjtzOjk6InNlbmRFbWFpbCI7czoxOiIwIjtzOjEyOiJyZWdpc3RlckRhdGUiO3M6MTk6IjIwMTYtMDItMTAgMDY6MjE6MzQiO3M6MTM6Imxhc3R2aXNpdERhdGUiO3M6MTk6IjAwMDAtMDAtMDAgMDA6MDA6MDAiO3M6MTA6ImFjdGl2YXRpb24iO3M6MzI6IjU0ODg4ZDQ5ZDIwMTM4NmQzZGFhMmJhMDE3ZWZhMDVmIjtzOjY6InBhcmFtcyI7czoyOiJ7fSI7czo2OiJncm91cHMiO2E6MTp7aToyO3M6MToiMiI7fXM6NToiZ3Vlc3QiO2k6MDtzOjEzOiJsYXN0UmVzZXRUaW1lIjtzOjE5OiIwMDAwLTAwLTAwIDAwOjAwOjAwIjtzOjEwOiJyZXNldENvdW50IjtzOjE6IjAiO3M6MTI6InJlcXVpcmVSZXNldCI7czoxOiIwIjtzOjEwOiIAKgBfcGFyYW1zIjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjE0OiIAKgBfYXV0aEdyb3VwcyI7YToyOntpOjA7aToxO2k6MTtpOjI7fXM6MTQ6IgAqAF9hdXRoTGV2ZWxzIjthOjM6e2k6MDtpOjE7aToxO2k6MTtpOjI7aToyO31zOjE1OiIAKgBfYXV0aEFjdGlvbnMiO047czoxMjoiACoAX2Vycm9yTXNnIjtOO3M6MTM6IgAqAHVzZXJIZWxwZXIiO086MTg6IkpVc2VyV3JhcHBlckhlbHBlciI6MDp7fXM6MTA6IgAqAF9lcnJvcnMiO2E6MDp7fXM6Njoib3RwS2V5IjtzOjA6IiI7czo0OiJvdGVwIjtzOjA6IiI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319czo0OiJfX3ZtIjtPOjg6InN0ZENsYXNzIjo1OntzOjY6Im1hbmFnZSI7aTowO3M6MTk6InZtbGFzdHZpc2l0ZWRJdGVtaWQiO2k6MTAxO3M6Njoidm1jYXJ0IjtzOjE3MTg6InsiY2FydFByb2R1Y3RzRGF0YSI6W10sInZlbmRvcklkIjoxLCJsYXN0VmlzaXRlZENhdGVnb3J5SWQiOjAsInZpcnR1ZW1hcnRfc2hpcG1lbnRtZXRob2RfaWQiOjAsInZpcnR1ZW1hcnRfcGF5bWVudG1ldGhvZF9pZCI6MCwiYXV0b21hdGljU2VsZWN0ZWRTaGlwbWVudCI6ZmFsc2UsImF1dG9tYXRpY1NlbGVjdGVkUGF5bWVudCI6ZmFsc2UsIm9yZGVyX251bWJlciI6bnVsbCwiQlQiOnsiZW1haWwiOiJwaWN0dXJlLndoYW5AZ21haWwuY29tIiwiY29tcGFueSI6IklUIiwidGl0bGUiOiJNciIsImZpcnN0X25hbWUiOiJcdTBlMmRcdTBlMjBcdTBlMzRcdTBlMjdcdTBlMzFcdTBlMTJcdTBlMTlcdTBlNGMiLCJtaWRkbGVfbmFtZSI6IiIsImxhc3RfbmFtZSI6Ilx1MGUxNFx1MGUzNFx1MGUxOVx1MGU0MVx1MGUxNFx1MGUwNyIsImFkZHJlc3NfMSI6IjE3MSBcdTBlMmJcdTBlMjFcdTBlMzlcdTBlNDggNiAgXHUwZTE1Llx1MGUyM1x1MGUzOVx1MGUyYVx1MGUzMFx1MGUyMVx1MGUzNFx1MGU0MVx1MGUyNSBcdTBlMmQuXHUwZTQwXHUwZTIxXHUwZTM3XHUwZTJkXHUwZTA3IFx1MGUwOC5cdTBlMWJcdTBlMzFcdTBlMTVcdTBlMTVcdTBlMzJcdTBlMTlcdTBlMzUiLCJhZGRyZXNzXzIiOiIiLCJ6aXAiOiI4MTAwMCIsImNpdHkiOiJcdTBlMDFcdTBlMjNcdTBlMzBcdTBlMWFcdTBlMzVcdTBlNDgiLCJ2aXJ0dWVtYXJ0X2NvdW50cnlfaWQiOiIyMDkiLCJ2aXJ0dWVtYXJ0X3N0YXRlX2lkIjoiNjUzIiwicGhvbmVfMSI6IiIsInBob25lXzIiOiIiLCJmYXgiOiIiLCJjdXN0b21lcl9ub3RlIjoiIiwidG9zIjoiMSJ9LCJTVCI6eyJlbWFpbCI6InBpY3R1cmUud2hhbkBnbWFpbC5jb20iLCJjb21wYW55IjoiSVQiLCJ0aXRsZSI6Ik1yIiwiZmlyc3RfbmFtZSI6Ilx1MGUyZFx1MGUyMFx1MGUzNFx1MGUyN1x1MGUzMVx1MGUxMlx1MGUxOVx1MGU0YyIsIm1pZGRsZV9uYW1lIjoiIiwibGFzdF9uYW1lIjoiXHUwZTE0XHUwZTM0XHUwZTE5XHUwZTQxXHUwZTE0XHUwZTA3IiwiYWRkcmVzc18xIjoiMTcxIFx1MGUyYlx1MGUyMVx1MGUzOVx1MGU0OCA2ICBcdTBlMTUuXHUwZTIzXHUwZTM5XHUwZTJhXHUwZTMwXHUwZTIxXHUwZTM0XHUwZTQxXHUwZTI1IFx1MGUyZC5cdTBlNDBcdTBlMjFcdTBlMzdcdTBlMmRcdTBlMDcgXHUwZTA4Llx1MGUxYlx1MGUzMVx1MGUxNVx1MGUxNVx1MGUzMlx1MGUxOVx1MGUzNSIsImFkZHJlc3NfMiI6IiIsInppcCI6IjgxMDAwIiwiY2l0eSI6Ilx1MGUwMVx1MGUyM1x1MGUzMFx1MGUxYVx1MGUzNVx1MGU0OCIsInZpcnR1ZW1hcnRfY291bnRyeV9pZCI6IjIwOSIsInZpcnR1ZW1hcnRfc3RhdGVfaWQiOiI2NTMiLCJwaG9uZV8xIjoiIiwicGhvbmVfMiI6IiIsImZheCI6IiIsImN1c3RvbWVyX25vdGUiOiIiLCJ0b3MiOiIxIn0sImNhcnRmaWVsZHMiOltdLCJjb3Vwb25Db2RlIjoiIiwiX3RyaWVzVmFsaWRhdGVDb3Vwb24iOltdLCJvcmRlcl9sYW5ndWFnZSI6IiIsInByaWNlc0N1cnJlbmN5IjoxMzUsInBheW1lbnRDdXJyZW5jeSI6IjEzNSIsIl9ndWVzdCI6MCwiX2luQ2hlY2tPdXQiOmZhbHNlLCJfaW5Db25maXJtIjpmYWxzZSwiX2RhdGFWYWxpZGF0ZWQiOmZhbHNlLCJfY29uZmlybURvbmUiOmZhbHNlLCJTVHNhbWVBc0JUIjoxLCJzZWxlY3RlZF9zaGlwdG8iOjAsIl9mcm9tQ2FydCI6ZmFsc2UsImxheW91dCI6ImRlZmF1bHQiLCJsYXlvdXRQYXRoIjoiIiwidmlydHVlbWFydF9jYXJ0X2lkIjoiNCJ9IjtzOjIzOiJ2bWxhc3R2aXNpdGVkY2F0ZWdvcnlpZCI7aToxMTtzOjE5OiJ2bWxhc3R2aXNpdGVkbWFudWlkIjtpOi0xO319czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('ufp35dviv93je1j0e5bu40rkh6', 1, 1, '1455085792', 'joomla|s:1520:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ1NTA4NTc5MjtzOjQ6Imxhc3QiO2k6MTQ1NTA4NTc5MjtzOjM6Im5vdyI7aToxNDU1MDg1NzkyO31zOjU6InRva2VuIjtzOjMyOiI5MTVhYWIwNDY2ZTRjYjA3OWQ3Y2I5OTA3NDA0MzQ3MCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mjp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MjY6e3M6OToiACoAaXNSb290IjtOO3M6MjoiaWQiO2k6MDtzOjQ6Im5hbWUiO047czo4OiJ1c2VybmFtZSI7TjtzOjU6ImVtYWlsIjtOO3M6ODoicGFzc3dvcmQiO047czoxNDoicGFzc3dvcmRfY2xlYXIiO3M6MDoiIjtzOjU6ImJsb2NrIjtOO3M6OToic2VuZEVtYWlsIjtpOjA7czoxMjoicmVnaXN0ZXJEYXRlIjtOO3M6MTM6Imxhc3R2aXNpdERhdGUiO047czoxMDoiYWN0aXZhdGlvbiI7TjtzOjY6InBhcmFtcyI7TjtzOjY6Imdyb3VwcyI7YToxOntpOjA7czoxOiI5Ijt9czo1OiJndWVzdCI7aToxO3M6MTM6Imxhc3RSZXNldFRpbWUiO047czoxMDoicmVzZXRDb3VudCI7TjtzOjEyOiJyZXF1aXJlUmVzZXQiO047czoxMDoiACoAX3BhcmFtcyI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czoxNDoiACoAX2F1dGhHcm91cHMiO047czoxNDoiACoAX2F1dGhMZXZlbHMiO2E6Mzp7aTowO2k6MTtpOjE7aToxO2k6MjtpOjU7fXM6MTU6IgAqAF9hdXRoQWN0aW9ucyI7TjtzOjEyOiIAKgBfZXJyb3JNc2ciO047czoxMzoiACoAdXNlckhlbHBlciI7TzoxODoiSlVzZXJXcmFwcGVySGVscGVyIjowOnt9czoxMDoiACoAX2Vycm9ycyI7YTowOnt9czozOiJhaWQiO2k6MDt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_tags`
--

CREATE TABLE IF NOT EXISTS `mhyjf_tags` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_tags`
--

INSERT INTO `mhyjf_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_template_styles`
--

CREATE TABLE IF NOT EXISTS `mhyjf_template_styles` (
  `id` int(10) unsigned NOT NULL,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_template_styles`
--

INSERT INTO `mhyjf_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'purity_iii', 0, '1', 'purity_III - Default', '{"tpl_article_info_datetime_format":"d M Y","t3_template":"1","devmode":"0","themermode":"1","legacy_css":"0","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"1","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"","logoimage":"images\\/logoEcom-01.jpg","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"default","sublayout":"default","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"","navigation_animation_duration":"400","mm_config":"{\\"mainmenu\\":{\\"item-125\\":{\\"sub\\":{\\"rows\\":[[{\\"position\\":16,\\"width\\":12}]]},\\"alignsub\\":\\"left\\"},\\"item-126\\":{\\"sub\\":{\\"rows\\":[[{\\"position\\":93,\\"width\\":12}]]}},\\"item-123\\":{\\"sub\\":{\\"rows\\":[[{\\"position\\":\\"92\\",\\"width\\":12}]]},\\"alignsub\\":\\"left\\"}}}","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-7","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0","mm_config_needupdate":""}'),
(10, 'lt_techshop', 0, '0', 'lt_techshop - Default', '{"sticky_header":"1","favicon":"","boxed_layout":"0","logo_type":"text","logo_position":"logo","logo_image":"","logo_image_2x":"","mobile_logo":"","logo_text":"IT COMPUTER","logo_slogan":"WORLD IT","body_bg_image":"","body_bg_repeat":"inherit","body_bg_size":"inherit","body_bg_attachment":"inherit","body_bg_position":"0 0","enabled_copyright":"1","copyright_position":"footer1","copyright":"© 2015 Your Company. All Rights Reserved. Designed By L.THEME","show_social_icons":"1","social_position":"top1","facebook":"http:\\/\\/facebook.com\\/lthemestore","twitter":"https:\\/\\/twitter.com\\/lthemestore","googleplus":"","pinterest":"","linkedin":"","dribbble":"","behance":"","youtube":"","flickr":"","skype":"","vk":"","enable_contactinfo":"1","contact_position":"top2","contact_phone":"082-806-3850","contact_email":"contact@email.com","comingsoon_mode":"0","comingsoon_title":"Coming Soon Title","comingsoon_date":"05-10-2018","comingsoon_content":"Coming soon content","preset":"preset1","preset1_bg":"#ffffff","preset1_text":"#000000","preset1_major":"#26aae1","preset2_bg":"#ffffff","preset2_text":"#000000","preset2_major":"#3d449a","preset3_bg":"#ffffff","preset3_text":"#000000","preset3_major":"#2bb673","preset4_bg":"#ffffff","preset4_text":"#000000","preset4_major":"#eb4947","layoutlist":"default.json","layout":"[{\\"type\\":\\"row\\",\\"layout\\":\\"66\\",\\"settings\\":{\\"name\\":\\"Top Bar\\",\\"background_color\\":\\"#f5f5f5\\",\\"color\\":\\"#999999\\",\\"background_image\\":\\"\\",\\"background_repeat\\":\\"no-repeat\\",\\"background_size\\":\\"cover\\",\\"background_attachment\\":\\"fixed\\",\\"background_position\\":\\"0 0\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"padding\\":\\"\\",\\"margin\\":\\"\\",\\"fluidrow\\":0,\\"custom_class\\":\\"\\",\\"bg_position\\":\\"contain\\",\\"bg_img_size\\":\\"cover\\",\\"bg_repeat\\":\\"no-repeat\\",\\"md_hidden\\":0,\\"ms_hidden\\":0,\\"xs_hidden\\":0,\\"text_color\\":\\"#ffffff\\",\\"bg_image\\":\\"images\\/powered_by.png\\",\\"bg_color\\":\\"#f02222\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-6\\",\\"settings\\":{\\"sortableitem\\":\\"[object Object]\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"custom_class\\":\\"\\",\\"name\\":\\"top1\\",\\"column_type\\":0}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-6\\",\\"settings\\":{\\"column_type\\":0,\\"sortableitem\\":\\"[object Object]\\",\\"name\\":\\"top2\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"custom_class\\":\\"\\"}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"39\\",\\"settings\\":{\\"name\\":\\"Header\\",\\"background_color\\":\\"\\",\\"color\\":\\"\\",\\"background_image\\":\\"\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"padding\\":\\"\\",\\"margin\\":\\"\\",\\"fluidrow\\":0,\\"custom_class\\":\\"\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-9 column-active\\",\\"settings\\":{\\"column_type\\":0,\\"name\\":\\"menu\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"col-xs-4\\",\\"custom_class\\":\\"\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"sortableitem\\":\\"[object Object]\\"}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"column_type\\":0,\\"name\\":\\"logo\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"\\",\\"xs_col\\":\\"col-xs-8\\",\\"custom_class\\":\\"\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"sortableitem\\":\\"[object Object]\\"}}]},{\\"type\\":\\"row\\",\\"layout\\":12,\\"settings\\":{\\"custom_class\\":\\"\\",\\"fluidrow\\":1,\\"margin\\":\\"\\",\\"padding\\":\\"\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"link_hover_color\\":\\"\\",\\"link_color\\":\\"\\",\\"background_image\\":\\"\\",\\"color\\":\\"\\",\\"background_color\\":\\"\\",\\"name\\":\\"Page Title\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-12\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"xs_col\\":\\"\\",\\"sm_col\\":\\"\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"name\\":\\"title\\",\\"column_type\\":0}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"363\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"md_hidden\\":0,\\"ms_hidden\\":0,\\"xs_hidden\\":0,\\"link_hover_color\\":\\"\\",\\"link_color\\":\\"\\",\\"text_color\\":\\"\\",\\"bg_image\\":\\"\\",\\"bg_color\\":\\"\\",\\"name\\":\\"Main Body\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"column_type\\":0,\\"name\\":\\"left\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"custom_class\\":\\"custom-class\\",\\"sortableitem\\":\\"[object Object]\\"}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-6\\",\\"settings\\":{\\"column_type\\":1,\\"name\\":\\"\\",\\"custom_class\\":\\"\\",\\"md_hidden\\":0,\\"ms_hidden\\":0,\\"xs_hidden\\":0,\\"sortableitem\\":\\"[object Object]\\"}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"custom_class\\":\\"class2\\",\\"md_hidden\\":0,\\"ms_hidden\\":0,\\"xs_hidden\\":0,\\"name\\":\\"right\\",\\"column_type\\":0,\\"sortableitem\\":\\"[object Object]\\"}}]},{\\"type\\":\\"row\\",\\"layout\\":\\"3333\\",\\"settings\\":{\\"name\\":\\"Bottom\\",\\"background_color\\":\\"#f5f5f5\\",\\"color\\":\\"\\",\\"background_image\\":\\"\\",\\"link_color\\":\\"\\",\\"link_hover_color\\":\\"\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"padding\\":\\"100px 0px\\",\\"margin\\":\\"\\",\\"fluidrow\\":0,\\"custom_class\\":\\"\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"column_type\\":0,\\"name\\":\\"bottom1\\",\\"hidden_xs\\":0,\\"hidden_sm\\":0,\\"hidden_md\\":0,\\"sm_col\\":\\"col-sm-6\\",\\"xs_col\\":\\"\\",\\"custom_class\\":\\"\\",\\"sortableitem\\":\\"[object Object]\\"}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"xs_col\\":\\"\\",\\"sm_col\\":\\"col-sm-6\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"name\\":\\"bottom2\\",\\"column_type\\":0}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"xs_col\\":\\"\\",\\"sm_col\\":\\"col-sm-6\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"name\\":\\"bottom3\\",\\"column_type\\":0}},{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-3\\",\\"settings\\":{\\"custom_class\\":\\"\\",\\"xs_col\\":\\"\\",\\"sm_col\\":\\"col-sm-6\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"name\\":\\"bottom4\\",\\"column_type\\":0}}]},{\\"type\\":\\"row\\",\\"layout\\":12,\\"settings\\":{\\"custom_class\\":\\"\\",\\"md_hidden\\":0,\\"ms_hidden\\":0,\\"xs_hidden\\":0,\\"link_hover_color\\":\\"\\",\\"link_color\\":\\"\\",\\"text_color\\":\\"\\",\\"bg_image\\":\\"\\",\\"bg_color\\":\\"\\",\\"name\\":\\"Footer\\"},\\"attr\\":[{\\"type\\":\\"sp_col\\",\\"className\\":\\"layout-column col-sm-12\\",\\"settings\\":{\\"xs_col\\":\\"\\",\\"sm_col\\":\\"\\",\\"hidden_md\\":0,\\"hidden_sm\\":0,\\"hidden_xs\\":0,\\"column_type\\":0,\\"name\\":\\"footer1\\",\\"xs_hidden\\":0,\\"ms_hidden\\":0,\\"md_hidden\\":0,\\"custom_class\\":\\"\\",\\"sortableitem\\":\\"[object Object]\\"}}]}]","menu":"mainmenu","menu_type":"mega_offcanvas","dropdown_width":"","menu_animation":"menu-fade","enable_body_font":"1","body_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"300\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h1_font":"1","h1_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"800\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h2_font":"1","h2_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h3_font":"1","h3_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h4_font":"1","h4_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h5_font":"1","h5_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_h6_font":"1","h6_font":"{\\"fontFamily\\":\\"Open Sans\\",\\"fontWeight\\":\\"600\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_navigation_font":"0","navigation_font":"{\\"fontFamily\\":\\"ABeeZee\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","enable_custom_font":"0","custom_font":"{\\"fontFamily\\":\\"ABeeZee\\",\\"fontWeight\\":\\"regular\\",\\"fontSubset\\":\\"latin\\",\\"fontSize\\":\\"\\"}","custom_font_selectors":"","before_head":"","before_body":"","custom_css":"","custom_js":"","compress_css":"0","compress_js":"0","exclude_js":"","lessoption":"0","show_post_format":"1","commenting_engine":"disabled","disqus_subdomain":"","disqus_devmode":"0","intensedebate_acc":"","fb_appID":"","fb_width":"500","fb_cpp":"10","comments_count":"0","social_share":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_ucm_base`
--

CREATE TABLE IF NOT EXISTS `mhyjf_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_ucm_content`
--

CREATE TABLE IF NOT EXISTS `mhyjf_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_ucm_history`
--

CREATE TABLE IF NOT EXISTS `mhyjf_ucm_history` (
  `version_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_ucm_history`
--

INSERT INTO `mhyjf_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 1, 2, '', '2016-02-06 07:50:59', 467, 1917, '4f628eb905f669da3a26cdffc45f8f02108f7b0f', '{"id":1,"name":"\\u0e15\\u0e34\\u0e14\\u0e15\\u0e48\\u0e2d\\u0e40\\u0e23\\u0e32","alias":"2016-02-06-07-50-59","con_position":"","address":"171 \\u0e2b\\u0e21\\u0e39\\u0e486 \\u0e15.\\u0e23\\u0e39\\u0e2a\\u0e30\\u0e21\\u0e34\\u0e41\\u0e25","suburb":"\\u0e40\\u0e21\\u0e37\\u0e2d\\u0e07","state":"\\u0e1b\\u0e31\\u0e15\\u0e15\\u0e32\\u0e19\\u0e35","country":"\\u0e44\\u0e17\\u0e22","postcode":"94000","telephone":"","fax":"","misc":"","image":"","email_to":"sao.apiwat@gmail.com","default_con":0,"published":"1","checked_out":null,"checked_out_time":null,"ordering":1,"params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"467","catid":"4","access":"1","mobile":"082-8063-850","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-02-06 07:50:59","created_by":467,"created_by_alias":"","modified":"2016-02-06 07:50:59","modified_by":null,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":1,"hits":null}', 0),
(2, 1, 2, '', '2016-02-06 07:53:35', 467, 2026, '025fe998098f814731af9567f49e05724e560d46', '{"id":1,"name":"\\u0e15\\u0e34\\u0e14\\u0e15\\u0e48\\u0e2d\\u0e40\\u0e23\\u0e32","alias":"2016-02-06-07-50-59","con_position":"\\u0e1c\\u0e39\\u0e49\\u0e08\\u0e31\\u0e14\\u0e01\\u0e32\\u0e23\\u0e23\\u0e49\\u0e32\\u0e19","address":"171 \\u0e2b\\u0e21\\u0e39\\u0e486 \\u0e15.\\u0e23\\u0e39\\u0e2a\\u0e30\\u0e21\\u0e34\\u0e41\\u0e25","suburb":"\\u0e40\\u0e21\\u0e37\\u0e2d\\u0e07","state":"\\u0e1b\\u0e31\\u0e15\\u0e15\\u0e32\\u0e19\\u0e35","country":"\\u0e44\\u0e17\\u0e22","postcode":"94000","telephone":"082-8063850","fax":"","misc":"","image":"","email_to":"sao.apiwat@gmail.com","default_con":0,"published":"1","checked_out":"467","checked_out_time":"2016-02-06 07:53:06","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":"467","catid":"4","access":"1","mobile":"082-8063-850","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2016-02-06 07:50:00","created_by":"467","created_by_alias":"","modified":"2016-02-06 07:53:35","modified_by":467,"metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"0"}', 0),
(3, 8, 5, '', '2016-02-06 17:26:56', 467, 646, '8a9da48f876739b3e169b0fc07624bf030f26f1a', '{"id":8,"asset_id":69,"parent_id":"1","lft":"11","rgt":12,"level":1,"path":null,"extension":"com_content","title":"\\u0e2a\\u0e21\\u0e31\\u0e04\\u0e23\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01","alias":"2016-02-06-17-26-56","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"467","created_time":"2016-02-06 17:26:56","modified_user_id":null,"modified_time":"2016-02-06 17:26:56","hits":"0","language":"*","version":null}', 0),
(4, 8, 5, '', '2016-02-06 17:30:59', 467, 800, '472681df6ec103599a2a15ab6b990329ce2505a1', '{"id":8,"asset_id":"69","parent_id":"1","lft":"11","rgt":"12","level":"1","path":"2016-02-06-17-26-56","extension":"com_content","title":"\\u0e2a\\u0e21\\u0e31\\u0e04\\u0e23\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01","alias":"registered","note":"","description":"","published":"1","checked_out":"467","checked_out_time":"2016-02-06 17:26:56","access":"2","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"images\\\\\\/banners\\\\\\/Register_icon.png\\",\\"image_alt\\":\\"\\u0e23\\u0e39\\u0e1b\\u0e2a\\u0e21\\u0e31\\u0e04\\u0e23\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01\\",\\"t3_extrafields\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"467","created_time":"2016-02-06 17:26:56","modified_user_id":"467","modified_time":"2016-02-06 17:30:59","hits":"0","language":"*","version":"1"}', 0),
(5, 9, 6, '', '2016-02-06 17:38:44', 467, 702, '7075f5291957aa52bd48f94b50d95ccf2b0ab4ff', '{"id":9,"asset_id":70,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_contact","title":"\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01","alias":"2016-02-06-17-38-44","note":"","description":"<p>\\u0e25\\u0e39\\u0e01\\u0e04\\u0e49\\u0e32\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c<\\/p>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"467","created_time":"2016-02-06 17:38:44","modified_user_id":null,"modified_time":"2016-02-06 17:38:44","hits":"0","language":"*","version":null}', 0),
(6, 9, 6, '', '2016-02-06 17:39:40', 467, 772, '079258e46e8d752813de82d370a0724c9ea760cc', '{"id":9,"asset_id":"70","parent_id":"1","lft":"13","rgt":"14","level":"1","path":"2016-02-06-17-38-44","extension":"com_contact","title":"\\u0e2a\\u0e21\\u0e32\\u0e0a\\u0e34\\u0e01","alias":"registered","note":"","description":"<p>\\u0e25\\u0e39\\u0e01\\u0e04\\u0e49\\u0e32\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e27\\u0e47\\u0e1a\\u0e44\\u0e0b\\u0e15\\u0e4c<\\/p>","published":"1","checked_out":"467","checked_out_time":"2016-02-06 17:38:53","access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"images\\\\\\/banners\\\\\\/Register_icon.png\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"467","created_time":"2016-02-06 17:38:44","modified_user_id":"467","modified_time":"2016-02-06 17:39:40","hits":"0","language":"*","version":"1"}', 0),
(7, 2, 2, '', '2016-02-06 19:09:20', 0, 867, '40478c46a0cd8cf05b76829dfbe943026a62d10e', '{"id":2,"name":"\\u0e2a\\u0e38\\u0e0a\\u0e32\\u0e14\\u0e32 \\u0e2b\\u0e35\\u0e21\\u0e21\\u0e30\\u0e2b\\u0e21\\u0e31\\u0e14","alias":"2016-02-06-19-09-20","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"rohaninee_55@hotmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":469,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:09:20","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:09:20","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(8, 3, 2, '', '2016-02-06 19:16:38', 0, 853, 'de0f803922bcde8d6d186d8000bf52648491c17c', '{"id":3,"name":"\\u0e21\\u0e39\\u0e2e\\u0e31\\u0e21\\u0e2b\\u0e21\\u0e31\\u0e14 \\u0e41\\u0e27\\u0e0b\\u0e39","alias":"2016-02-06-19-16-38","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":470,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:16:38","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:16:38","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(9, 4, 2, '', '2016-02-06 19:26:51', 0, 763, 'f4a7ae9d77509820cf39e76a77275b311a92c957', '{"id":4,"name":"dayu","alias":"dayu","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"picture.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":471,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:26:51","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:26:51","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(10, 5, 2, '', '2016-02-06 19:33:55', 0, 769, '00e770f0cb0e3544aa42e0f17f90a80a067e8469', '{"id":5,"name":"dayu (2)","alias":"dayu-2","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"picture.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":472,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:33:55","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:33:55","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(11, 6, 2, '', '2016-02-06 19:37:46', 0, 769, '9e07f3368ecf9725086b8d0db9ab5bdc746c13e7', '{"id":6,"name":"dayu (3)","alias":"dayu-3","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":473,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:37:46","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:37:46","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(12, 7, 2, '', '2016-02-06 19:38:57', 0, 769, 'acf118eaa43f373fc5190a74757faa7e8fa1aaf5', '{"id":7,"name":"dayu (4)","alias":"dayu-4","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":474,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-06 19:38:57","created_by":0,"created_by_alias":"","modified":"2016-02-06 19:38:57","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(13, 8, 2, '', '2016-02-07 04:50:54', 0, 769, 'b7ba03f48276f993437cb428f4a6b005208a078a', '{"id":8,"name":"dayu (5)","alias":"dayu-5","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":475,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-07 04:50:54","created_by":0,"created_by_alias":"","modified":"2016-02-07 04:50:54","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(14, 9, 2, '', '2016-02-07 04:53:35', 0, 769, '108cc9858b385fa1a32043b013b9378e29a6aeb2', '{"id":9,"name":"dayu (6)","alias":"dayu-6","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":476,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-07 04:53:35","created_by":0,"created_by_alias":"","modified":"2016-02-07 04:53:35","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(15, 10, 2, '', '2016-02-07 08:25:16', 0, 770, 'bb88cae9e9248bb9d0c396a4769ca97ec141caf8', '{"id":10,"name":"dayu (7)","alias":"dayu-7","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":477,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-07 08:25:16","created_by":0,"created_by_alias":"","modified":"2016-02-07 08:25:16","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(16, 11, 2, '', '2016-02-08 06:51:10', 0, 770, '533ab11dfed4a24e3a0b8c61dd9f1ba13397ff28', '{"id":11,"name":"apiwat","alias":"apiwat","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"darkeye_whan@hotmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":478,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-08 06:51:10","created_by":0,"created_by_alias":"","modified":"2016-02-08 06:51:10","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(17, 12, 2, '', '2016-02-10 06:01:30', 0, 764, 'd3fc2e4a78aad505ba1c12a84c2cc4fcca8f672c', '{"id":12,"name":"kiff","alias":"kiff","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"picture.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":479,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-10 06:01:30","created_by":0,"created_by_alias":"","modified":"2016-02-10 06:01:30","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(18, 13, 2, '', '2016-02-10 06:08:45', 0, 768, 'eb392316e1bd99aa4defc82e1c7a3f86b288422e', '{"id":13,"name":"kiff (2)","alias":"kiff-2","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"sao.apiwat@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":480,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-10 06:08:45","created_by":0,"created_by_alias":"","modified":"2016-02-10 06:08:45","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0),
(19, 14, 2, '', '2016-02-10 06:21:34', 0, 770, '5ace4b978ec46e6cc7be709915308e51ac25025b', '{"id":14,"name":"APIWAT","alias":"apiwat-2","con_position":null,"address":null,"suburb":null,"state":null,"country":null,"postcode":null,"telephone":null,"fax":null,"misc":null,"image":null,"email_to":"picture.whan@gmail.com","default_con":0,"published":"0","checked_out":"0","checked_out_time":"0000-00-00 00:00:00","ordering":"0","params":null,"user_id":481,"catid":"34","access":1,"mobile":"","webpage":"","sortname1":null,"sortname2":null,"sortname3":null,"language":"*","created":"2016-02-10 06:21:34","created_by":0,"created_by_alias":"","modified":"2016-02-10 06:21:34","modified_by":"0","metakey":null,"metadesc":null,"metadata":null,"featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":"1","hits":"0"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_updates`
--

CREATE TABLE IF NOT EXISTS `mhyjf_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

--
-- Dumping data for table `mhyjf_updates`
--

INSERT INTO `mhyjf_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(2, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(3, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(4, 3, 0, 'English', '', 'pkg_en-AU', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(5, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(6, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(7, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.4.4.2', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(8, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(9, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(10, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(11, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(12, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(13, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(14, 3, 0, 'English', '', 'pkg_en-US', 'package', '', 0, '3.4.6.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(15, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(16, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.4.1.3', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(17, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.4.8.2', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(18, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(19, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(20, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(21, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(22, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(23, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(24, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(25, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'http://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(26, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(27, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(28, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(29, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(30, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(31, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(32, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(33, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.4.2.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(34, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(35, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(36, 3, 0, 'FrenchCA', '', 'pkg_fr-CA', 'package', '', 0, '3.4.4.3', '', 'http://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(37, 3, 0, 'English', '', 'pkg_en-CA', 'package', '', 0, '3.4.6.1', '', 'http://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(38, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'http://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(39, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'http://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(40, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'http://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(41, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(42, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.4.8.1', '', 'http://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(43, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'http://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(44, 35, 0, 'Helix3 - Ajax', '', 'helix3', 'plugin', 'ajax', 1, '1.1', '', 'http://www.joomshaper.com/updates/plg_ajax_helix3.xml', '', ''),
(45, 36, 0, 'System - Helix3 Framework', '', 'helix3', 'plugin', 'system', 1, '1.1', '', 'http://www.joomshaper.com/updates/plg_system_helix3.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_update_sites`
--

CREATE TABLE IF NOT EXISTS `mhyjf_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

--
-- Dumping data for table `mhyjf_update_sites`
--

INSERT INTO `mhyjf_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1455085780, ''),
(2, 'Joomla! Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1455085780, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1455085778, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'http://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1455085778, ''),
(5, 'VirtueMart3 Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_update.xml', 1, 1455085778, ''),
(6, 'VirtueMart plg_vmpayment_standard Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_standard_update.xml', 1, 1455085778, ''),
(7, 'VirtueMart plg_vmpayment_klarna Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarna_update.xml', 1, 1455085778, ''),
(8, 'VirtueMart plg_vmpayment_klarnacheckout Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klarnacheckout_update.xml', 1, 1455085778, ''),
(9, 'VirtueMart plg_vmpayment_sofort Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_update.xml', 1, 1455085778, ''),
(10, 'VirtueMart plg_vmpayment_paypal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paypal_update.xml', 1, 1455085778, ''),
(11, 'VirtueMart plg_vmpayment_heidelpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_heidelpay_update.xml', 1, 1455085778, ''),
(12, 'VirtueMart plg_vmpayment_paybox Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_paybox_update.xml', 1, 1455085778, ''),
(13, 'VirtueMart plg_vmpayment_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_amazon_update.xml', 1, 1455085778, ''),
(14, 'VirtueMart plg_system_amazon Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_system_amazon_update.xml', 1, 1455085778, ''),
(15, 'VirtueMart plg_vmpayment_realex_hpp_api Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_realex_hpp_api_update.xml', 1, 1455085778, ''),
(16, 'VirtueMart plg_vmuserfield_realex_hpp_api Update Site', 'extension', '\n            http://virtuemart.net/releases/vm3/plg_vmuserfield_realex_hpp_api_update.xml', 1, 1455085778, ''),
(17, 'VirtueMart3 plg_vmpayment_skrill Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_skrill_update.xml', 1, 1455085778, ''),
(18, 'VirtueMart plg_vmpayment_authorizenet Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_authorisenet_update.xml', 1, 1455085778, ''),
(19, 'VirtueMart plg_vmpayment_sofort_ideal Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_sofort_ideal_update.xml', 1, 1455085778, ''),
(20, 'VirtueMart plg_vmpayment_klikandpay Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmpayment_klikandpay_update.xml', 1, 1455085778, ''),
(21, 'VirtueMart3 plg_vmshipment_weight_countries Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmshipment_weight_countries_update.xml', 1, 1455085778, ''),
(22, 'VirtueMart3 plg_vmcustom_textinput Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_textinput_update.xml', 1, 1455085778, ''),
(23, 'VirtueMart3 plg_vmcustom_specification Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcustom_specification_update.xml', 1, 1455085778, ''),
(24, 'VirtueMart3 plg_vmcalculation_avalara Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_vmcalculation_avalara_update.xml', 1, 1455085778, ''),
(25, 'VirtueMart3 plg_search_virtuemart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/plg_search_virtuemart_update.xml', 1, 1455085778, ''),
(26, 'VirtueMart3 MOD_VMENU Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_vmmenu_update.xml', 1, 1455085778, ''),
(27, 'VirtueMart3 mod_virtuemart_currencies Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_currencies_update.xml', 1, 1455085778, ''),
(28, 'VirtueMart3 mod_virtuemart_product Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_product_update.xml', 1, 1455085778, ''),
(29, 'VirtueMart3 mod_virtuemart_search Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_search_update.xml', 1, 1455085778, ''),
(30, 'VirtueMart3 mod_virtuemart_manufacturer Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_manufacturer_update.xml', 1, 1455085778, ''),
(31, 'VirtueMart3 mod_virtuemart_cart Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_cart_update.xml', 0, 0, ''),
(32, 'VirtueMart3 mod_virtuemart_category Update Site', 'extension', 'http://virtuemart.net/releases/vm3/mod_virtuemart_category_update.xml', 1, 1455085778, ''),
(33, 'VirtueMart3 AIO Update Site', 'extension', 'http://virtuemart.net/releases/vm3/virtuemart_aio_update.xml', 1, 1455085778, ''),
(34, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 0, 0, ''),
(35, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg_ajax_helix3.xml', 1, 1455085778, ''),
(36, 'System - Helix3 Framework', 'extension', 'http://www.joomshaper.com/updates/plg_system_helix3.xml', 1, 1455085778, ''),
(37, 'shaper_helix3', 'template', 'http://www.joomshaper.com/updates/tpl_helix3.xml', 1, 0, ''),
(38, 'TCPDF Update Site', 'extension', 'http://virtuemart.net/releases/TCPDF/tcpdf.xml', 1, 1455085778, ''),
(39, 'imageshow', 'collection', 'http://www.joomlashine.com/versioning/extensions/com_imageshow.xml', 1, 1455085778, ''),
(40, 'WebInstaller Update Site', 'extension', 'http://appscdn.joomla.org/webapps/jedapps/webinstaller.xml', 1, 1455085778, '');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `mhyjf_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `mhyjf_update_sites_extensions`
--

INSERT INTO `mhyjf_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10040),
(4, 28),
(5, 10000),
(6, 10002),
(7, 10003),
(8, 10004),
(9, 10005),
(10, 10006),
(11, 10007),
(12, 10008),
(13, 10009),
(14, 10010),
(15, 10011),
(16, 10012),
(17, 10013),
(18, 10014),
(19, 10015),
(20, 10016),
(21, 10017),
(22, 10018),
(23, 10019),
(24, 10020),
(25, 10021),
(26, 10022),
(27, 10023),
(28, 10024),
(29, 10025),
(30, 10026),
(31, 10027),
(32, 10028),
(33, 10001),
(34, 10030),
(34, 10031),
(34, 10032),
(35, 10034),
(36, 10035),
(37, 10036),
(38, 10037),
(39, 10041),
(40, 10050);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_usergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_usergroups` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_usergroups`
--

INSERT INTO `mhyjf_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_users`
--

CREATE TABLE IF NOT EXISTS `mhyjf_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_users`
--

INSERT INTO `mhyjf_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(467, 'Super User', 'admin', 'shopit.computer@gmail.com', '$2y$10$5pOruNK9p/4YPcirGodA7OxvsVsMMkJpIhiTS.fbC6yRWlIKZGJb6', 0, 1, '2016-02-03 02:25:38', '2016-02-10 06:29:51', '0', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(480, 'kiff', 'kiff', 'sao.apiwat@gmail.com', '$2y$10$YLXW6oJ9HD4BOLuu/ok7jez2.V53z5VXBSpwfzz2xfVtuniUaD.2G', 0, 0, '2016-02-10 06:08:45', '2016-02-10 06:17:44', '', '{}', '0000-00-00 00:00:00', 0, '', '', 0),
(481, 'APIWAT', 'holouse01', 'picture.whan@gmail.com', '$2y$10$h/QILc0RJdvd5gr89o3M4uvTUUOoBcakbGVoZ4iBpDBXdOdDnv/wW', 1, 0, '2016-02-10 06:21:34', '0000-00-00 00:00:00', '54888d49d201386d3daa2ba017efa05f', '{}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_user_keys`
--

CREATE TABLE IF NOT EXISTS `mhyjf_user_keys` (
  `id` int(10) unsigned NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_user_notes`
--

CREATE TABLE IF NOT EXISTS `mhyjf_user_notes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_user_profiles`
--

CREATE TABLE IF NOT EXISTS `mhyjf_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `mhyjf_user_profiles`
--

INSERT INTO `mhyjf_user_profiles` (`user_id`, `profile_key`, `profile_value`, `ordering`) VALUES
(480, 'profile.aboutme', '""', 10),
(480, 'profile.address1', '"1900\\/100"', 1),
(480, 'profile.address2', '""', 2),
(480, 'profile.city', '"\\u0e1b\\u0e31\\u0e15\\u0e15\\u0e32\\u0e19\\u0e35"', 3),
(480, 'profile.country', '"\\u0e44\\u0e17\\u0e22"', 5),
(480, 'profile.dob', '"1994-09-02 17:00:00"', 11),
(480, 'profile.favoritebook', '""', 9),
(480, 'profile.phone', '"082-806-3850"', 7),
(480, 'profile.postal_code', '"94000"', 6),
(480, 'profile.region', '""', 4),
(480, 'profile.website', 'false', 8);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `mhyjf_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_user_usergroup_map`
--

INSERT INTO `mhyjf_user_usergroup_map` (`user_id`, `group_id`) VALUES
(467, 8),
(480, 2),
(481, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_viewlevels`
--

CREATE TABLE IF NOT EXISTS `mhyjf_viewlevels` (
  `id` int(10) unsigned NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_viewlevels`
--

INSERT INTO `mhyjf_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_adminmenuentries`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_adminmenuentries` (
  `id` tinyint(1) unsigned NOT NULL,
  `module_id` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'The ID of the VM Module, this Item is assigned to',
  `parent_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` char(64) NOT NULL DEFAULT '0',
  `link` char(64) NOT NULL DEFAULT '0',
  `depends` char(64) NOT NULL DEFAULT '' COMMENT 'Names of the Parameters, this Item depends on',
  `icon_class` char(96) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `tooltip` char(128) DEFAULT NULL,
  `view` char(32) DEFAULT NULL,
  `task` char(32) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='Administration Menu Items';

--
-- Dumping data for table `mhyjf_virtuemart_adminmenuentries`
--

INSERT INTO `mhyjf_virtuemart_adminmenuentries` (`id`, `module_id`, `parent_id`, `name`, `link`, `depends`, `icon_class`, `ordering`, `published`, `tooltip`, `view`, `task`) VALUES
(1, 1, 0, 'COM_VIRTUEMART_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_camera', 1, 1, '', 'category', ''),
(2, 1, 0, 'COM_VIRTUEMART_PRODUCT_S', '', '', 'vmicon vmicon-16-camera', 2, 1, '', 'product', ''),
(3, 1, 0, 'COM_VIRTUEMART_PRODUCT_CUSTOM_FIELD_S', '', '', 'vmicon vmicon-16-document_move', 5, 1, '', 'custom', ''),
(4, 1, 0, 'COM_VIRTUEMART_PRODUCT_INVENTORY', '', '', 'vmicon vmicon-16-price_watch', 7, 1, '', 'inventory', ''),
(5, 1, 0, 'COM_VIRTUEMART_CALC_S', '', '', 'vmicon vmicon-16-calculator', 8, 1, '', 'calc', ''),
(6, 1, 0, 'COM_VIRTUEMART_REVIEW_RATE_S', '', '', 'vmicon vmicon-16-comments', 9, 1, '', 'ratings', ''),
(7, 2, 0, 'COM_VIRTUEMART_ORDER_S', '', '', 'vmicon vmicon-16-page_white_stack', 1, 1, '', 'orders', ''),
(8, 2, 0, 'COM_VIRTUEMART_COUPON_S', '', '', 'vmicon vmicon-16-shopping', 10, 1, '', 'coupon', ''),
(9, 2, 0, 'COM_VIRTUEMART_REPORT', '', '', 'vmicon vmicon-16-chart_bar', 3, 1, '', 'report', ''),
(10, 2, 0, 'COM_VIRTUEMART_USER_S', '', '', 'vmicon vmicon-16-user', 4, 1, '', 'user', ''),
(11, 2, 0, 'COM_VIRTUEMART_SHOPPERGROUP_S', '', '', 'vmicon vmicon-16-user-group', 5, 1, '', 'shoppergroup', ''),
(12, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_S', '', '', 'vmicon vmicon-16-wrench_orange', 1, 1, '', 'manufacturer', ''),
(13, 3, 0, 'COM_VIRTUEMART_MANUFACTURER_CATEGORY_S', '', '', 'vmicon vmicon-16-folder_wrench', 2, 1, '', 'manufacturercategories', ''),
(14, 4, 0, 'COM_VIRTUEMART_STORE', '', '', 'vmicon vmicon-16-reseller_account_template', 1, 1, '', 'user', 'editshop'),
(15, 4, 0, 'COM_VIRTUEMART_MEDIA_S', '', '', 'vmicon vmicon-16-pictures', 2, 1, '', 'media', ''),
(16, 4, 0, 'COM_VIRTUEMART_SHIPMENTMETHOD_S', '', '', 'vmicon vmicon-16-lorry', 3, 1, '', 'shipmentmethod', ''),
(17, 4, 0, 'COM_VIRTUEMART_PAYMENTMETHOD_S', '', '', 'vmicon vmicon-16-creditcards', 4, 1, '', 'paymentmethod', ''),
(18, 5, 0, 'COM_VIRTUEMART_CONFIGURATION', '', '', 'vmicon vmicon-16-config', 1, 1, '', 'config', ''),
(19, 5, 0, 'COM_VIRTUEMART_USERFIELD_S', '', '', 'vmicon vmicon-16-participation_rate', 2, 1, '', 'userfields', ''),
(20, 5, 0, 'COM_VIRTUEMART_ORDERSTATUS_S', '', '', 'vmicon vmicon-16-document_editing', 3, 1, '', 'orderstatus', ''),
(21, 5, 0, 'COM_VIRTUEMART_CURRENCY_S', '', '', 'vmicon vmicon-16-coins', 5, 1, '', 'currency', ''),
(22, 5, 0, 'COM_VIRTUEMART_COUNTRY_S', '', '', 'vmicon vmicon-16-globe', 6, 1, '', 'country', ''),
(23, 11, 0, 'COM_VIRTUEMART_MIGRATION_UPDATE', '', '', 'vmicon vmicon-16-installer_box', 0, 1, '', 'updatesmigration', ''),
(24, 11, 0, 'COM_VIRTUEMART_ABOUT', '', '', 'vmicon vmicon-16-info', 10, 1, '', 'about', ''),
(25, 11, 0, 'COM_VIRTUEMART_HELP_TOPICS', 'http://docs.virtuemart.net/', '', 'vmicon vmicon-16-help', 5, 1, '', '', ''),
(26, 11, 0, 'COM_VIRTUEMART_COMMUNITY_FORUM', 'http://forum.virtuemart.net/', '', 'vmicon vmicon-16-reseller_programm', 7, 1, '', '', ''),
(27, 11, 0, 'COM_VIRTUEMART_STATISTIC_SUMMARY', '', '', 'vmicon vmicon-16-info', 1, 1, '', 'virtuemart', ''),
(28, 11, 0, 'COM_VIRTUEMART_LOG', '', '', 'vmicon vmicon-16-info', 2, 1, '', 'log', ''),
(29, 11, 0, 'COM_VIRTUEMART_SUPPORT', '', '', 'vmicon vmicon-16-help', 3, 1, '', 'support', '');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calcs`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calcs` (
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `calc_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `calc_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_descr` varchar(128) NOT NULL DEFAULT '' COMMENT 'Description',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_value_mathop` varchar(8) NOT NULL DEFAULT '' COMMENT 'the mathematical operation like (+,-,+%,-%)',
  `calc_value` decimal(10,4) NOT NULL DEFAULT '0.0000' COMMENT 'The Amount',
  `calc_currency` smallint(1) unsigned NOT NULL DEFAULT '0' COMMENT 'Currency of the Rule',
  `calc_shopper_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Shoppers',
  `calc_vendor_published` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Visible for Vendors',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Startdate if nothing is set = permanent',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Enddate if nothing is set = permanent',
  `for_override` tinyint(1) NOT NULL DEFAULT '0',
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calc_categories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calc_categories` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calc_countries`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calc_countries` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calc_manufacturers`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calc_manufacturers` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calc_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calc_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_calc_states`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_calc_states` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_carts`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_carts` (
  `virtuemart_cart_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `cartData` varbinary(50000) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Used to store the cart';

--
-- Dumping data for table `mhyjf_virtuemart_carts`
--

INSERT INTO `mhyjf_virtuemart_carts` (`virtuemart_cart_id`, `virtuemart_user_id`, `virtuemart_vendor_id`, `cartData`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(2, 468, 1, 0x7b226361727450726f647563747344617461223a5b5d2c2276656e646f724964223a302c226c6173745669736974656443617465676f72794964223a302c227669727475656d6172745f736869706d656e746d6574686f645f6964223a302c227669727475656d6172745f7061796d656e746d6574686f645f6964223a302c226175746f6d6174696353656c6563746564536869706d656e74223a66616c73652c226175746f6d6174696353656c65637465645061796d656e74223a66616c73652c226f726465725f6e756d626572223a6e756c6c2c224254223a302c225354223a302c22636172746669656c6473223a6e756c6c2c22636f75706f6e436f6465223a22222c225f747269657356616c6964617465436f75706f6e223a5b5d2c226f726465725f6c616e6775616765223a2274682d5448222c2270726963657343757272656e6379223a3133352c227061796d656e7443757272656e6379223a6e756c6c2c225f6775657374223a302c225f696e436865636b4f7574223a66616c73652c225f696e436f6e6669726d223a66616c73652c225f6461746156616c696461746564223a66616c73652c225f636f6e6669726d446f6e65223a66616c73652c22535473616d6541734254223a312c2273656c65637465645f73686970746f223a302c225f66726f6d43617274223a747275652c226c61796f7574223a2264656661756c74222c226c61796f757450617468223a22222c227669727475656d6172745f636172745f6964223a307d, '0000-00-00 00:00:00', 0, '2016-02-06 17:41:57', 468);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_categories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_categories` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT 'Belongs to vendor',
  `category_template` char(128) DEFAULT NULL,
  `category_layout` char(64) DEFAULT NULL,
  `category_product_layout` char(64) DEFAULT NULL,
  `products_per_row` tinyint(1) DEFAULT NULL,
  `limit_list_step` char(32) DEFAULT NULL,
  `limit_list_initial` smallint(1) unsigned DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `metarobot` char(40) NOT NULL DEFAULT '',
  `metaauthor` char(64) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Product Categories are stored here';

--
-- Dumping data for table `mhyjf_virtuemart_categories`
--

INSERT INTO `mhyjf_virtuemart_categories` (`virtuemart_category_id`, `virtuemart_vendor_id`, `category_template`, `category_layout`, `category_product_layout`, `products_per_row`, `limit_list_step`, `limit_list_initial`, `hits`, `metarobot`, `metaauthor`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, '0', 'categories', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-07 08:53:15', 467, '2016-02-08 20:25:56', 467, '0000-00-00 00:00:00', 0),
(2, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-07 08:56:58', 467, '2016-02-08 20:24:58', 467, '0000-00-00 00:00:00', 0),
(3, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-07 09:09:00', 467, '2016-02-08 20:24:03', 467, '0000-00-00 00:00:00', 0),
(7, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-07 15:21:51', 467, '2016-02-08 20:23:04', 467, '0000-00-00 00:00:00', 0),
(6, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-07 15:17:30', 467, '2016-02-08 20:18:20', 467, '0000-00-00 00:00:00', 0),
(8, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 04:44:57', 467, '2016-02-08 20:21:56', 467, '0000-00-00 00:00:00', 0),
(9, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 04:48:03', 467, '2016-02-08 20:21:35', 467, '0000-00-00 00:00:00', 0),
(10, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 04:50:24', 467, '2016-02-08 20:21:14', 467, '0000-00-00 00:00:00', 0),
(11, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 05:11:20', 467, '2016-02-08 05:11:41', 467, '0000-00-00 00:00:00', 0),
(12, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 05:33:23', 467, '2016-02-08 20:22:40', 467, '0000-00-00 00:00:00', 0),
(13, 1, '0', 'default', 'default', 4, '4', 4, 0, '', '', 0, 0, 1, '2016-02-08 07:16:03', 467, '2016-02-08 20:16:36', 467, '0000-00-00 00:00:00', 0),
(14, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 0, '2016-02-08 07:24:16', 467, '2016-02-08 20:27:07', 467, '0000-00-00 00:00:00', 0),
(15, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 0, '2016-02-08 07:32:28', 467, '2016-02-08 20:27:47', 467, '0000-00-00 00:00:00', 0),
(16, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 0, '2016-02-08 07:37:01', 467, '2016-02-08 20:27:30', 467, '0000-00-00 00:00:00', 0),
(17, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 07:46:33', 467, '2016-02-08 20:17:30', 467, '0000-00-00 00:00:00', 0),
(18, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 07:48:30', 467, '2016-02-08 20:17:13', 467, '0000-00-00 00:00:00', 0),
(19, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 07:50:20', 467, '2016-02-08 20:16:57', 467, '0000-00-00 00:00:00', 0),
(20, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 07:52:03', 467, '2016-02-08 20:17:49', 467, '0000-00-00 00:00:00', 0),
(21, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 07:56:00', 467, '2016-02-08 20:24:25', 467, '0000-00-00 00:00:00', 0),
(22, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:31:23', 467, '2016-02-08 20:23:40', 467, '0000-00-00 00:00:00', 0),
(23, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:35:12', 467, '2016-02-08 20:26:53', 467, '0000-00-00 00:00:00', 0),
(24, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:40:12', 467, '2016-02-08 20:26:30', 467, '0000-00-00 00:00:00', 0),
(25, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:43:39', 467, '2016-02-08 20:23:23', 467, '0000-00-00 00:00:00', 0),
(26, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:47:45', 467, '2016-02-08 20:26:13', 467, '0000-00-00 00:00:00', 0),
(27, 1, '0', 'default', 'default', 4, '0', 0, 0, '', '', 0, 0, 1, '2016-02-08 08:50:06', 467, '2016-02-08 20:25:14', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_categories_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_categories_en_gb` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_categories_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_categories_th_th` (
  `virtuemart_category_id` int(1) unsigned NOT NULL,
  `category_name` char(180) NOT NULL DEFAULT '',
  `category_description` varchar(19000) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_categories_th_th`
--

INSERT INTO `mhyjf_virtuemart_categories_th_th` (`virtuemart_category_id`, `category_name`, `category_description`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(1, 'Mainboard', '<p>เมนบอร์ดคอมพิวเตอร์</p>', '', '', '', 'mainboard'),
(2, 'Power Supply', '<p>เครื่องจ่ายไฟกหลักให้คอมพิวเตอร์</p>', '', '', '', 'power_supply'),
(3, 'Hard Disk External', '', '', '', '', 'storage'),
(7, 'อุปกรณ์จัดเก็บข้อมูล', '', '', '', '', 'storage-1'),
(6, 'อุปกรณ์ต่อพ่วง', '', '', '', '', 'accressory'),
(8, 'Projector', '<p>โปรเจ็กเตอร์</p>', '', '', '', 'projector'),
(9, 'Scanner', '<p>เครื่องสแกน</p>', '', '', '', 'scanner'),
(10, 'Visualzer', '<p>เครื่องฉายภาพ</p>', '', '', '', 'visualzer'),
(11, 'อุปกรณ์คอมพิวเตอร์', '', '', '', '', 'computer-hardware'),
(12, 'Barcode Product', '<p>เครื่องอ่านบาร์โค้ด</p>', '', '', '', 'barcode'),
(13, 'อุปกรณ์เสริม', '<p>อุปกรณ์เสริมคอมพิวเตอร์ เช่น เมาส์ คีบอร์ด</p>', '', '', '', 'accessories'),
(14, 'อุปกรณ์การพิมพ์', '', '', '', '', 'printer'),
(15, 'Inkjet Printer', '<p>เครื่องปริ้นประเภทเติมหมึก</p>', '', '', '', 'inkjet-printer'),
(16, 'Laser Printer', '<p>เครื่องปริ้นประเภทเลเซอร์</p>', '', '', '', 'laser-printer'),
(17, 'Keyboard', '', '', '', '', 'keyboard'),
(18, 'Mouse', '', '', '', '', 'mouse'),
(19, 'Speaker', '', '', '', '', 'speaker'),
(20, 'Headset', '', '', '', '', 'headset'),
(21, 'Flash Drive', '', '', '', '', 'flash-drive'),
(22, 'Memory Card', '', '', '', '', 'memory-card'),
(23, 'CPU', '', '', '', '', 'cpu'),
(24, 'Graphic Card', '', '', '', '', 'graphic-card'),
(25, 'RAM', '', '', '', '', 'ram-pc'),
(26, 'Hard Disk PC', '', '', '', '', 'hard-disk-pc'),
(27, 'Monitor', '<p>จอแสดงผล</p>', '', '', '', 'monitor');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_category_categories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_category_categories` (
  `id` int(1) unsigned NOT NULL,
  `category_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `category_child_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Category child-parent relation list';

--
-- Dumping data for table `mhyjf_virtuemart_category_categories`
--

INSERT INTO `mhyjf_virtuemart_category_categories` (`id`, `category_parent_id`, `category_child_id`, `ordering`) VALUES
(1, 11, 1, 0),
(2, 11, 2, 0),
(3, 7, 3, 0),
(7, 0, 7, 0),
(6, 0, 6, 0),
(8, 6, 8, 0),
(9, 6, 9, 0),
(10, 6, 10, 0),
(11, 0, 11, 0),
(12, 6, 12, 0),
(13, 0, 13, 0),
(14, 0, 14, 0),
(15, 14, 15, 0),
(16, 14, 16, 0),
(17, 13, 17, 0),
(18, 13, 18, 0),
(19, 13, 19, 0),
(20, 13, 20, 0),
(21, 7, 21, 0),
(22, 7, 22, 0),
(23, 11, 23, 0),
(24, 11, 24, 0),
(25, 11, 25, 0),
(26, 11, 26, 0),
(27, 11, 27, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_category_medias`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_category_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_category_medias`
--

INSERT INTO `mhyjf_virtuemart_category_medias` (`id`, `virtuemart_category_id`, `virtuemart_media_id`, `ordering`) VALUES
(30, 1, 32, 1),
(2, 2, 3, 1),
(7, 3, 9, 1),
(5, 6, 7, 1),
(6, 7, 8, 1),
(8, 8, 10, 1),
(14, 9, 16, 1),
(10, 10, 12, 1),
(11, 11, 13, 1),
(12, 12, 14, 1),
(15, 13, 17, 1),
(16, 14, 18, 1),
(17, 15, 19, 1),
(18, 16, 20, 1),
(19, 17, 21, 1),
(20, 18, 22, 1),
(21, 19, 23, 1),
(22, 20, 24, 1),
(23, 21, 25, 1),
(24, 22, 26, 1),
(25, 23, 27, 1),
(26, 24, 28, 1),
(27, 25, 29, 1),
(28, 26, 30, 1),
(29, 27, 31, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_configs`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_configs` (
  `virtuemart_config_id` tinyint(1) unsigned NOT NULL,
  `config` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Holds configuration settings';

--
-- Dumping data for table `mhyjf_virtuemart_configs`
--

INSERT INTO `mhyjf_virtuemart_configs` (`virtuemart_config_id`, `config`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'shop_is_offline="0"|offline_message="\\u0e23\\u0e49\\u0e32\\u0e19\\u0e04\\u0e49\\u0e32\\u0e02\\u0e2d\\u0e07\\u0e40\\u0e23\\u0e32\\u0e2d\\u0e22\\u0e39\\u0e48\\u0e43\\u0e19\\u0e0a\\u0e48\\u0e27\\u0e07\\u0e1b\\u0e34\\u0e14\\u0e1b\\u0e23\\u0e31\\u0e1a\\u0e1b\\u0e23\\u0e38\\u0e07 \\u0e08\\u0e30\\u0e01\\u0e25\\u0e31\\u0e1a\\u0e21\\u0e32\\u0e43\\u0e2b\\u0e49\\u0e1a\\u0e23\\u0e34\\u0e01\\u0e32\\u0e23\\u0e2d\\u0e35\\u0e01\\u0e04\\u0e23\\u0e31\\u0e49\\u0e07\\u0e43\\u0e19\\u0e40\\u0e23\\u0e47\\u0e27\\u0e46\\u0e19\\u0e35\\u0e49\\u0e04\\u0e23\\u0e31\\u0e1a"|use_as_catalog="0"|currency_converter_module="convertECB.php"|order_mail_html="1"|useSSL="0"|useVendorEmail="0"|dangeroustools="1"|debug_enable="none"|dev="none"|vmdev="none"|google_jquery="1"|multix="none"|usefancy="1"|jchosen="1"|enableEnglish="1"|pdf_button_enable="1"|show_emailfriend="0"|show_printicon="1"|show_out_of_stock_products="1"|ask_captcha="1"|coupons_enable="1"|show_uncat_products="0"|show_uncat_child_products="0"|show_unpub_cat_products="1"|coupons_default_expire="1,M"|weight_unit_default="KG"|lwh_unit_default="M"|list_limit="30"|showReviewFor="all"|reviewMode="bought"|showRatingFor="all"|ratingMode="bought"|reviews_autopublish="1"|reviews_minimum_comment_length="0"|reviews_maximum_comment_length="2000"|product_navigation="1"|display_stock="1"|vmtemplate="default"|categorytemplate="default"|showCategory="1"|categorylayout="categories"|categories_per_row="4"|productlayout="0"|products_per_row="3"|llimit_init_FE="24"|vmlayout="default"|show_store_desc="1"|show_categories="1"|homepage_categories_per_row="1"|homepage_products_per_row="3"|show_featured="1"|featured_products_rows="3"|show_topTen="1"|topTen_products_rows="3"|show_recent="1"|recent_products_rows="3"|show_latest="1"|latest_products_rows="3"|assets_general_path="components\\/com_virtuemart\\/assets\\/"|media_category_path="images\\/stories\\/virtuemart\\/category\\/"|media_product_path="images\\/stories\\/virtuemart\\/product\\/"|media_manufacturer_path="images\\/stories\\/virtuemart\\/manufacturer\\/"|media_vendor_path="images\\/stories\\/virtuemart\\/vendor\\/"|forSale_path_thumb="images\\/stories\\/virtuemart\\/forSale\\/resized\\/"|img_resize_enable="1"|img_width="0"|img_height="85"|no_image_set="noimage.gif"|no_image_found="warning.png"|browse_orderby_field="pc.ordering"|browse_cat_orderby_field="c.ordering,category_name"|browse_orderby_fields=["product_name","`p`.product_sku","category_name","mf_name"]|browse_search_fields=["product_name","product_s_desc","category_name","category_description","mf_name"]|askprice="0"|roundindig="0"|show_prices="1"|price_show_packaging_pricelabel="0"|show_tax="1"|basePrice="0"|basePriceText="1"|basePriceRounding="-1"|variantModification="1"|variantModificationText="1"|variantModificationRounding="-1"|basePriceVariant="1"|basePriceVariantText="1"|basePriceVariantRounding="-1"|basePriceWithTax="0"|basePriceWithTaxText="1"|basePriceWithTaxRounding="-1"|discountedPriceWithoutTax="1"|discountedPriceWithoutTaxText="1"|discountedPriceWithoutTaxRounding="-1"|salesPriceWithDiscount="0"|salesPriceWithDiscountText="1"|salesPriceWithDiscountRounding="-1"|salesPrice="1"|salesPriceText="1"|salesPriceRounding="-1"|priceWithoutTax="1"|priceWithoutTaxText="1"|priceWithoutTaxRounding="-1"|discountAmount="1"|discountAmountText="1"|discountAmountRounding="-1"|taxAmount="1"|taxAmountText="1"|taxAmountRounding="-1"|unitPrice="1"|unitPriceText="1"|unitPriceRounding="-1"|addtocart_popup="1"|check_stock="0"|automatic_payment="0"|automatic_shipment="0"|oncheckout_opc="1"|oncheckout_ajax="1"|oncheckout_show_steps="1"|oncheckout_show_legal_info="1"|oncheckout_show_register="1"|oncheckout_show_register_text="COM_VIRTUEMART_ONCHECKOUT_DEFAULT_TEXT_REGISTER"|oncheckout_show_images="1"|inv_os=["C"]|email_os_s=["U","C","X","R","S"]|email_os_v=["U","C","X","R"]|seo_disabled="0"|seo_translate="0"|seo_use_id="0"|enable_content_plugin="0"|reg_captcha="1"|handle_404="1"|active_languages=["th-TH"]|revproxvar=""|multixcart="0"|attach=""|attach_os=["U","C","X","R"]|pdf_icon="1"|recommend_unauth="0"|ask_question="0"|asks_minimum_comment_length="50"|asks_maximum_comment_length="2000"|cp_rm=["C"]|show_pcustoms="1"|show_uncat_parent_products="0"|latest_products_days="7"|latest_products_orderBy="created_on"|lstockmail="1"|stockhandle="disableadd"|rised_availability=""|image=""|rr_os=["C"]|show_manufacturers="0"|cartlayout="default"|productsublayout="0"|manufacturer_per_row="3"|mediaLimit="20"|llimit_init_BE="30"|pagseq=""|pagseq_1=""|pagseq_2=""|pagseq_3=""|pagseq_4=""|pagseq_5=""|feed_cat_published="0"|feed_cat_show_images="0"|feed_cat_show_prices="0"|feed_cat_show_description="0"|feed_cat_description_type="product_s_desc"|feed_cat_max_text_length="500"|forSale_path="E:\\\\Ampps\\\\www\\\\vmfiles\\\\"|add_img_main="0"|feed_latest_published="0"|feed_latest_nb="3"|feed_topten_published="0"|feed_topten_nb="3"|feed_featured_published="0"|feed_featured_nb="3"|feed_home_show_images="1"|feed_home_show_prices="1"|feed_home_show_description="0"|feed_home_description_type="product_s_desc"|feed_home_max_text_length="500"|css="1"|jquery="1"|jprice="1"|jsite="1"|jdynupdate="1"|rappenrundung="0"|cVarswT="0"|popup_rel="1"|set_automatic_shipment="1"|set_automatic_payment="1"|agree_to_tos_onorder="1"|oncheckout_only_registered="0"|oncheckout_change_shopper="1"|del_date_type="m"|prd_brws_orderby_dir="ASC"|cat_brws_orderby_dir="ASC"|seo_sufix="-detail"|task="apply"|option="com_virtuemart"|view="config"|396d56611fbd548d28403e8a001c3bcd="1"', '0000-00-00 00:00:00', 0, '2016-02-10 06:25:36', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_countries`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_countries` (
  `virtuemart_country_id` smallint(1) unsigned NOT NULL,
  `virtuemart_worldzone_id` tinyint(1) NOT NULL DEFAULT '1',
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COMMENT='Country records';

--
-- Dumping data for table `mhyjf_virtuemart_countries`
--

INSERT INTO `mhyjf_virtuemart_countries` (`virtuemart_country_id`, `virtuemart_worldzone_id`, `country_name`, `country_3_code`, `country_2_code`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'Afghanistan', 'AFG', 'AF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'Albania', 'ALB', 'AL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'Algeria', 'DZA', 'DZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'American Samoa', 'ASM', 'AS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Andorra', 'AND', 'AD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'Angola', 'AGO', 'AO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Anguilla', 'AIA', 'AI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'Antarctica', 'ATA', 'AQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Antigua and Barbuda', 'ATG', 'AG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Argentina', 'ARG', 'AR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Armenia', 'ARM', 'AM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Aruba', 'ABW', 'AW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 'Australia', 'AUS', 'AU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 'Austria', 'AUT', 'AT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Azerbaijan', 'AZE', 'AZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Bahamas', 'BHS', 'BS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bahrain', 'BHR', 'BH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Bangladesh', 'BGD', 'BD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Barbados', 'BRB', 'BB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Belarus', 'BLR', 'BY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Belgium', 'BEL', 'BE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Belize', 'BLZ', 'BZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 'Benin', 'BEN', 'BJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Bermuda', 'BMU', 'BM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Bhutan', 'BTN', 'BT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Bolivia', 'BOL', 'BO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Bosnia and Herzegowina', 'BIH', 'BA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Botswana', 'BWA', 'BW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Bouvet Island', 'BVT', 'BV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Brazil', 'BRA', 'BR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'British Indian Ocean Territory', 'IOT', 'IO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Brunei Darussalam', 'BRN', 'BN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Bulgaria', 'BGR', 'BG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Burkina Faso', 'BFA', 'BF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Burundi', 'BDI', 'BI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 'Cambodia', 'KHM', 'KH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 'Cameroon', 'CMR', 'CM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 'Canada', 'CAN', 'CA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 'Cape Verde', 'CPV', 'CV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Cayman Islands', 'CYM', 'KY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Central African Republic', 'CAF', 'CF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Chad', 'TCD', 'TD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 'Chile', 'CHL', 'CL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'China', 'CHN', 'CN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 'Christmas Island', 'CXR', 'CX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Cocos (Keeling) Islands', 'CCK', 'CC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Colombia', 'COL', 'CO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 'Comoros', 'COM', 'KM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Congo', 'COG', 'CG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Cook Islands', 'COK', 'CK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 'Costa Rica', 'CRI', 'CR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'Cote D''Ivoire', 'CIV', 'CI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 'Croatia', 'HRV', 'HR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Cuba', 'CUB', 'CU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Cyprus', 'CYP', 'CY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Czech Republic', 'CZE', 'CZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 'Denmark', 'DNK', 'DK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Djibouti', 'DJI', 'DJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 'Dominica', 'DMA', 'DM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Dominican Republic', 'DOM', 'DO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'East Timor', 'TLS', 'TL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Ecuador', 'ECU', 'EC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Egypt', 'EGY', 'EG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'El Salvador', 'SLV', 'SV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Equatorial Guinea', 'GNQ', 'GQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 'Eritrea', 'ERI', 'ER', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Estonia', 'EST', 'EE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Ethiopia', 'ETH', 'ET', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Falkland Islands (Malvinas)', 'FLK', 'FK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Faroe Islands', 'FRO', 'FO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 'Fiji', 'FJI', 'FJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 'Finland', 'FIN', 'FI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'France', 'FRA', 'FR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'French Guiana', 'GUF', 'GF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'French Polynesia', 'PYF', 'PF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'French Southern Territories', 'ATF', 'TF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Gabon', 'GAB', 'GA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'Gambia', 'GMB', 'GM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'Georgia', 'GEO', 'GE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Germany', 'DEU', 'DE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Ghana', 'GHA', 'GH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Gibraltar', 'GIB', 'GI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Greece', 'GRC', 'GR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Greenland', 'GRL', 'GL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Grenada', 'GRD', 'GD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Guadeloupe', 'GLP', 'GP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 'Guam', 'GUM', 'GU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Guatemala', 'GTM', 'GT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Guinea', 'GIN', 'GN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 'Guinea-bissau', 'GNB', 'GW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Guyana', 'GUY', 'GY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Haiti', 'HTI', 'HT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Heard and Mc Donald Islands', 'HMD', 'HM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 'Honduras', 'HND', 'HN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Hong Kong', 'HKG', 'HK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Hungary', 'HUN', 'HU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Iceland', 'ISL', 'IS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 'India', 'IND', 'IN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Indonesia', 'IDN', 'ID', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 'Iran (Islamic Republic of)', 'IRN', 'IR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Iraq', 'IRQ', 'IQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 'Ireland', 'IRL', 'IE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 'Israel', 'ISR', 'IL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Italy', 'ITA', 'IT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Jamaica', 'JAM', 'JM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'Japan', 'JPN', 'JP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Jordan', 'JOR', 'JO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Kazakhstan', 'KAZ', 'KZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Kenya', 'KEN', 'KE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Kiribati', 'KIR', 'KI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Korea, Democratic People''s Republic of', 'PRK', 'KP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Korea, Republic of', 'KOR', 'KR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Kuwait', 'KWT', 'KW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 'Kyrgyzstan', 'KGZ', 'KG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Lao People''s Democratic Republic', 'LAO', 'LA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Latvia', 'LVA', 'LV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Lebanon', 'LBN', 'LB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Lesotho', 'LSO', 'LS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Liberia', 'LBR', 'LR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Libya', 'LBY', 'LY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Liechtenstein', 'LIE', 'LI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 'Lithuania', 'LTU', 'LT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Luxembourg', 'LUX', 'LU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Macau', 'MAC', 'MO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Macedonia, The Former Yugoslav Republic of', 'MKD', 'MK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Madagascar', 'MDG', 'MG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Malawi', 'MWI', 'MW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 'Malaysia', 'MYS', 'MY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'Maldives', 'MDV', 'MV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Mali', 'MLI', 'ML', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Malta', 'MLT', 'MT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Marshall Islands', 'MHL', 'MH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Martinique', 'MTQ', 'MQ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Mauritania', 'MRT', 'MR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 'Mauritius', 'MUS', 'MU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Mayotte', 'MYT', 'YT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 'Mexico', 'MEX', 'MX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Micronesia, Federated States of', 'FSM', 'FM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Moldova, Republic of', 'MDA', 'MD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'Monaco', 'MCO', 'MC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Mongolia', 'MNG', 'MN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 'Montserrat', 'MSR', 'MS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'Morocco', 'MAR', 'MA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 'Mozambique', 'MOZ', 'MZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 'Myanmar', 'MMR', 'MM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Namibia', 'NAM', 'NA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Nauru', 'NRU', 'NR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Nepal', 'NPL', 'NP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 'Netherlands', 'NLD', 'NL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Netherlands Antilles', 'ANT', 'AN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'New Caledonia', 'NCL', 'NC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'New Zealand', 'NZL', 'NZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Nicaragua', 'NIC', 'NI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 'Niger', 'NER', 'NE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Nigeria', 'NGA', 'NG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 'Niue', 'NIU', 'NU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Norfolk Island', 'NFK', 'NF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Northern Mariana Islands', 'MNP', 'MP', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Norway', 'NOR', 'NO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Oman', 'OMN', 'OM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Pakistan', 'PAK', 'PK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Palau', 'PLW', 'PW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Panama', 'PAN', 'PA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Papua New Guinea', 'PNG', 'PG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Paraguay', 'PRY', 'PY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Peru', 'PER', 'PE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Philippines', 'PHL', 'PH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Pitcairn', 'PCN', 'PN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Poland', 'POL', 'PL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Portugal', 'PRT', 'PT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Puerto Rico', 'PRI', 'PR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Qatar', 'QAT', 'QA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Reunion', 'REU', 'RE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Romania', 'ROM', 'RO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Russian Federation', 'RUS', 'RU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Rwanda', 'RWA', 'RW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Saint Kitts and Nevis', 'KNA', 'KN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Saint Lucia', 'LCA', 'LC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Saint Vincent and the Grenadines', 'VCT', 'VC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Samoa', 'WSM', 'WS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'San Marino', 'SMR', 'SM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'Sao Tome and Principe', 'STP', 'ST', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Saudi Arabia', 'SAU', 'SA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'Senegal', 'SEN', 'SN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'Seychelles', 'SYC', 'SC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'Sierra Leone', 'SLE', 'SL', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Singapore', 'SGP', 'SG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Slovakia', 'SVK', 'SK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Slovenia', 'SVN', 'SI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Solomon Islands', 'SLB', 'SB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Somalia', 'SOM', 'SO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'South Africa', 'ZAF', 'ZA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'South Georgia and the South Sandwich Islands', 'SGS', 'GS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Spain', 'ESP', 'ES', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Sri Lanka', 'LKA', 'LK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'St. Helena', 'SHN', 'SH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'St. Pierre and Miquelon', 'SPM', 'PM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Sudan', 'SDN', 'SD', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Suriname', 'SUR', 'SR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Svalbard and Jan Mayen Islands', 'SJM', 'SJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 'Swaziland', 'SWZ', 'SZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 'Sweden', 'SWE', 'SE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 'Switzerland', 'CHE', 'CH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 'Syrian Arab Republic', 'SYR', 'SY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 'Taiwan', 'TWN', 'TW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 'Tajikistan', 'TJK', 'TJ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 'Tanzania, United Republic of', 'TZA', 'TZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 'Thailand', 'THA', 'TH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 'Togo', 'TGO', 'TG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 'Tokelau', 'TKL', 'TK', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 'Tonga', 'TON', 'TO', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 'Trinidad and Tobago', 'TTO', 'TT', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 'Tunisia', 'TUN', 'TN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 'Turkey', 'TUR', 'TR', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 'Turkmenistan', 'TKM', 'TM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 'Turks and Caicos Islands', 'TCA', 'TC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 'Tuvalu', 'TUV', 'TV', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 'Uganda', 'UGA', 'UG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 'Ukraine', 'UKR', 'UA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 'United Arab Emirates', 'ARE', 'AE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 'United Kingdom', 'GBR', 'GB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 'United States', 'USA', 'US', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 'United States Minor Outlying Islands', 'UMI', 'UM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 'Uruguay', 'URY', 'UY', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 'Uzbekistan', 'UZB', 'UZ', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 'Vanuatu', 'VUT', 'VU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 'Vatican City State (Holy See)', 'VAT', 'VA', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 'Venezuela', 'VEN', 'VE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 'Viet Nam', 'VNM', 'VN', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 'Virgin Islands (British)', 'VGB', 'VG', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 'Virgin Islands (U.S.)', 'VIR', 'VI', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 'Wallis and Futuna Islands', 'WLF', 'WF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 'Western Sahara', 'ESH', 'EH', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 'Yemen', 'YEM', 'YE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 'The Democratic Republic of Congo', 'DRC', 'DC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 'Zambia', 'ZMB', 'ZM', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 'Zimbabwe', 'ZWE', 'ZW', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 'Jersey', 'JEY', 'JE', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 'St. Barthelemy', 'XSB', 'XB', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 'St. Eustatius', 'XSE', 'XU', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 'Canary Islands', 'XCA', 'XC', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 'Serbia', 'SRB', 'RS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 'Sint Maarten (French Antilles)', 'MAF', 'MF', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 'Sint Maarten (Netherlands Antilles)', 'SXM', 'SX', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 'Palestinian Territory, occupied', 'PSE', 'PS', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_coupons`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_coupons` (
  `virtuemart_coupon_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `coupon_code` char(32) NOT NULL DEFAULT '',
  `percent_or_total` enum('percent','total') NOT NULL DEFAULT 'percent',
  `coupon_type` enum('gift','permanent') NOT NULL DEFAULT 'gift',
  `coupon_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_start_date` datetime DEFAULT NULL,
  `coupon_expiry_date` datetime DEFAULT NULL,
  `coupon_value_valid` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `coupon_used` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Used to store coupon codes';

--
-- Dumping data for table `mhyjf_virtuemart_coupons`
--

INSERT INTO `mhyjf_virtuemart_coupons` (`virtuemart_coupon_id`, `virtuemart_vendor_id`, `coupon_code`, `percent_or_total`, `coupon_type`, `coupon_value`, `coupon_start_date`, `coupon_expiry_date`, `coupon_value_valid`, `coupon_used`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'FEBUARY2016', 'percent', 'gift', '5.00000', '0000-00-00 00:00:00', '2016-03-06 16:57:44', '3.00000', 'e4th9dacgr7h70chgk447bqc76', 1, '2016-02-06 16:59:57', 467, '2016-02-06 16:59:57', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_currencies`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_currencies` (
  `virtuemart_currency_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `currency_name` char(64) DEFAULT NULL,
  `currency_code_2` char(2) DEFAULT NULL,
  `currency_code_3` char(3) DEFAULT NULL,
  `currency_numeric_code` int(4) DEFAULT NULL,
  `currency_exchange_rate` decimal(10,5) DEFAULT NULL,
  `currency_symbol` char(4) DEFAULT NULL,
  `currency_decimal_place` char(4) DEFAULT NULL,
  `currency_decimal_symbol` char(4) DEFAULT NULL,
  `currency_thousands` char(4) DEFAULT NULL,
  `currency_positive_style` char(64) DEFAULT NULL,
  `currency_negative_style` char(64) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='Used to store currencies';

--
-- Dumping data for table `mhyjf_virtuemart_currencies`
--

INSERT INTO `mhyjf_virtuemart_currencies` (`virtuemart_currency_id`, `virtuemart_vendor_id`, `currency_name`, `currency_code_2`, `currency_code_3`, `currency_numeric_code`, `currency_exchange_rate`, `currency_symbol`, `currency_decimal_place`, `currency_decimal_symbol`, `currency_thousands`, `currency_positive_style`, `currency_negative_style`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'United Arab Emirates dirham', '', 'AED', 784, '0.00000', 'د.إ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'Albanian lek', '', 'ALL', 8, '0.00000', 'Lek', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'Netherlands Antillean gulden', '', 'ANG', 532, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'Argentine peso', '', 'ARS', 32, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 'Australian dollar', '', 'AUD', 36, '0.00000', '$', '2', '.', '', '{symbol} {number}', '{sign}{symbol} {number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 'Aruban florin', '', 'AWG', 533, '0.00000', 'ƒ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 'Barbadian dollar', '', 'BBD', 52, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 'Bangladeshi taka', '', 'BDT', 50, '0.00000', '৳', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 'Bahraini dinar', '', 'BHD', 48, '0.00000', 'ب.د', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 'Burundian franc', '', 'BIF', 108, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 'Bermudian dollar', '', 'BMD', 60, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 'Brunei dollar', '', 'BND', 96, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 'Bolivian boliviano', '', 'BOB', 68, '0.00000', '$b', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 'Brazilian real', '', 'BRL', 986, '0.00000', 'R$', '2', ',', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 'Bahamian dollar', '', 'BSD', 44, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 'Bhutanese ngultrum', '', 'BTN', 64, '0.00000', 'BTN', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 'Botswana pula', '', 'BWP', 72, '0.00000', 'P', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 'Belize dollar', '', 'BZD', 84, '0.00000', 'BZ$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 'Canadian dollar', '', 'CAD', 124, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 'Swiss franc', '', 'CHF', 756, '0.00000', 'CHF', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 'Unidad de Fomento', '', 'CLF', 990, '0.00000', 'CLF', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 'Chilean peso', '', 'CLP', 152, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 'Chinese renminbi yuan', '', 'CNY', 156, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 'Colombian peso', '', 'COP', 170, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 'Costa Rican colón', '', 'CRC', 188, '0.00000', '₡', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 'Czech koruna', '', 'CZK', 203, '0.00000', 'Kč', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 'Cuban peso', '', 'CUP', 192, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 'Cape Verdean escudo', '', 'CVE', 132, '0.00000', '$', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 'Danish krone', '', 'DKK', 208, '0.00000', 'kr', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 'Dominican peso', '', 'DOP', 214, '0.00000', 'RD$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 'Algerian dinar', '', 'DZD', 12, '0.00000', 'د.ج', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 'Egyptian pound', '', 'EGP', 818, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'Ethiopian birr', '', 'ETB', 230, '0.00000', 'ETB', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 'Euro', '', 'EUR', 978, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 'Fijian dollar', '', 'FJD', 242, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 'Falkland pound', '', 'FKP', 238, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 'British pound', '', 'GBP', 826, '0.00000', '£', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 'Gibraltar pound', '', 'GIP', 292, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 'Gambian dalasi', '', 'GMD', 270, '0.00000', 'D', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 'Guinean franc', '', 'GNF', 324, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 'Guatemalan quetzal', '', 'GTQ', 320, '0.00000', 'Q', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 'Guyanese dollar', '', 'GYD', 328, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 'Hong Kong dollar', '', 'HKD', 344, '0.00000', '元', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 'Honduran lempira', '', 'HNL', 340, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 'Haitian gourde', '', 'HTG', 332, '0.00000', 'G', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 'Hungarian forint', '', 'HUF', 348, '0.00000', 'Ft', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 'Indonesian rupiah', '', 'IDR', 360, '0.00000', 'Rp', '0', '', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 'Israeli new sheqel', '', 'ILS', 376, '0.00000', '₪', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 'Indian rupee', '', 'INR', 356, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 'Iraqi dinar', '', 'IQD', 368, '0.00000', 'ع.د', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 'Iranian rial', '', 'IRR', 364, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number}{symb0l}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 'Jamaican dollar', '', 'JMD', 388, '0.00000', 'J$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 'Jordanian dinar', '', 'JOD', 400, '0.00000', 'د.ا', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 'Japanese yen', '', 'JPY', 392, '0.00000', '¥', '0', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 'Kenyan shilling', '', 'KES', 404, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 'Cambodian riel', '', 'KHR', 116, '0.00000', '៛', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 'Comorian franc', '', 'KMF', 174, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 'North Korean won', '', 'KPW', 408, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 'South Korean won', '', 'KRW', 410, '0.00000', '₩', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 'Kuwaiti dinar', '', 'KWD', 414, '0.00000', 'د.ك', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 'Cayman Islands dollar', '', 'KYD', 136, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 'Lao kip', '', 'LAK', 418, '0.00000', '₭', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 'Lebanese pound', '', 'LBP', 422, '0.00000', '£', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 'Sri Lankan rupee', '', 'LKR', 144, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 'Liberian dollar', '', 'LRD', 430, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 'Lesotho loti', '', 'LSL', 426, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 'Libyan dinar', '', 'LYD', 434, '0.00000', 'ل.د', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 'Moroccan dirham', '', 'MAD', 504, '0.00000', 'د.م.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 'Mongolian tögrög', '', 'MNT', 496, '0.00000', '₮', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 'Macanese pataca', '', 'MOP', 446, '0.00000', 'P', '1', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 'Mauritanian ouguiya', '', 'MRO', 478, '0.00000', 'UM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 'Mauritian rupee', '', 'MUR', 480, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 'Maldivian rufiyaa', '', 'MVR', 462, '0.00000', 'ރ.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 'Malawian kwacha', '', 'MWK', 454, '0.00000', 'MK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 'Malaysian ringgit', '', 'MYR', 458, '0.00000', 'RM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 'Nigerian naira', '', 'NGN', 566, '0.00000', '₦', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 'Norwegian krone', '', 'NOK', 578, '0.00000', 'kr', '2', ',', '', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 'Nepalese rupee', '', 'NPR', 524, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 'New Zealand dollar', '', 'NZD', 554, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 'Omani rial', '', 'OMR', 512, '0.00000', '﷼', '3', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 'Panamanian balboa', '', 'PAB', 590, '0.00000', 'B/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 'Peruvian nuevo sol', '', 'PEN', 604, '0.00000', 'S/.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 'Papua New Guinean kina', '', 'PGK', 598, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 'Philippine peso', '', 'PHP', 608, '0.00000', '₱', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 'Pakistani rupee', '', 'PKR', 586, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 'Polish Złoty', '', 'PLN', 985, '0.00000', 'zł', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 'Paraguayan guaraní', '', 'PYG', 600, '0.00000', '₲', '0', '', '.', '{symbol} {number}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 'Qatari riyal', '', 'QAR', 634, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 'Romanian leu', '', 'RON', 946, '0.00000', 'lei', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 'Rwandan franc', '', 'RWF', 646, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 'Saudi riyal', '', 'SAR', 682, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 'Solomon Islands dollar', '', 'SBD', 90, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 'Seychellois rupee', '', 'SCR', 690, '0.00000', '₨', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 'Swedish krona', '', 'SEK', 752, '0.00000', 'kr', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 'Singapore dollar', '', 'SGD', 702, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 'Saint Helenian pound', '', 'SHP', 654, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 'Sierra Leonean leone', '', 'SLL', 694, '0.00000', 'Le', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 'Somali shilling', '', 'SOS', 706, '0.00000', 'S', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 'São Tomé and Príncipe dobra', '', 'STD', 678, '0.00000', 'Db', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 'Russian ruble', '', 'RUB', 643, '0.00000', 'руб', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 'Salvadoran colón', '', 'SVC', 222, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 'Syrian pound', '', 'SYP', 760, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 'Swazi lilangeni', '', 'SZL', 748, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 'Thai baht', '', 'THB', 764, '0.00000', '฿', '2', '.', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 0, 1, '0000-00-00 00:00:00', 0, '2016-02-09 04:02:59', 467, '0000-00-00 00:00:00', 0),
(136, 1, 'Tunisian dinar', '', 'TND', 788, '0.00000', 'د.ت', '3', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 'Tongan paʻanga', '', 'TOP', 776, '0.00000', 'T$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 'Türk Lirası', '', 'TRY', 949, '0.00000', 'TL', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 'Trinidad and Tobago dollar', '', 'TTD', 780, '0.00000', 'TT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 'New Taiwan dollar', '', 'TWD', 901, '0.00000', 'NT$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 'Tanzanian shilling', '', 'TZS', 834, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 'United States dollar', '', 'USD', 840, '0.00000', '$', '2', '.', ',', '{symbol}{number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 'Vietnamese Dong', '', 'VND', 704, '0.00000', '₫', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 'Vanuatu vatu', '', 'VUV', 548, '0.00000', 'Vt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 'Samoan tala', '', 'WST', 882, '0.00000', 'T', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 'Yemeni rial', '', 'YER', 886, '0.00000', '﷼', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 'Serbian dinar', '', 'RSD', 941, '0.00000', 'Дин.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 'South African rand', '', 'ZAR', 710, '0.00000', 'R', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 'Zambian kwacha', '', 'ZMK', 894, '0.00000', 'ZK', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 'Zimbabwean dollar', '', 'ZWD', 932, '0.00000', 'Z$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 'Armenian dram', '', 'AMD', 51, '0.00000', 'դր.', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 'Myanmar kyat', '', 'MMK', 104, '0.00000', 'K', '2', ',', '', '{number} {symbol}', '{symbol} {sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 'Croatian kuna', '', 'HRK', 191, '0.00000', 'kn', '2', ',', '.', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 'Eritrean nakfa', '', 'ERN', 232, '0.00000', 'Nfk', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 'Djiboutian franc', '', 'DJF', 262, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 'Icelandic króna', '', 'ISK', 352, '0.00000', 'kr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 'Kazakhstani tenge', '', 'KZT', 398, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 'Kyrgyzstani som', '', 'KGS', 417, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 'Latvian lats', '', 'LVL', 428, '0.00000', 'Ls', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 'Lithuanian litas', '', 'LTL', 440, '0.00000', 'Lt', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 'Mexican peso', '', 'MXN', 484, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 'Moldovan leu', '', 'MDL', 498, '0.00000', 'L', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 'Namibian dollar', '', 'NAD', 516, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 'Nicaraguan córdoba', '', 'NIO', 558, '0.00000', 'C$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 'Ugandan shilling', '', 'UGX', 800, '0.00000', 'Sh', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 'Macedonian denar', '', 'MKD', 807, '0.00000', 'ден', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 'Uruguayan peso', '', 'UYU', 858, '0.00000', '$', '0', '', '', '{symbol}number}', '{symbol}{sign}{number}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 'Uzbekistani som', '', 'UZS', 860, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 'Azerbaijani manat', '', 'AZN', 934, '0.00000', 'ман', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 'Ghanaian cedi', '', 'GHS', 936, '0.00000', '₵', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 'Venezuelan bolívar', '', 'VEF', 937, '0.00000', 'Bs', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 'Sudanese pound', '', 'SDG', 938, '0.00000', '£', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 'Uruguay Peso', '', 'UYI', 940, '0.00000', 'UYI', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 'Mozambican metical', '', 'MZN', 943, '0.00000', 'MT', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 'WIR Euro', '', 'CHE', 947, '0.00000', '€', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 'WIR Franc', '', 'CHW', 948, '0.00000', 'CHW', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 'Central African CFA franc', '', 'XAF', 950, '0.00000', 'Fr', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 'East Caribbean dollar', '', 'XCD', 951, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 'West African CFA franc', '', 'XOF', 952, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 'CFP franc', '', 'XPF', 953, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 'Surinamese dollar', '', 'SRD', 968, '0.00000', '$', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 'Malagasy ariary', '', 'MGA', 969, '0.00000', 'MGA', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 'Unidad de Valor Real', '', 'COU', 970, '0.00000', 'COU', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 'Afghan afghani', '', 'AFN', 971, '0.00000', '؋', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 'Tajikistani somoni', '', 'TJS', 972, '0.00000', 'ЅМ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 'Angolan kwanza', '', 'AOA', 973, '0.00000', 'Kz', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 'Belarusian ruble', '', 'BYR', 974, '0.00000', 'p.', '0', '', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 'Bulgarian lev', '', 'BGN', 975, '0.00000', 'лв', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 'Congolese franc', '', 'CDF', 976, '0.00000', 'Fr', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 'Bosnia and Herzegovina convert', '', 'BAM', 977, '0.00000', 'KM', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 'Mexican Unid', '', 'MXV', 979, '0.00000', 'MXV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 'Ukrainian hryvnia', '', 'UAH', 980, '0.00000', '₴', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 'Georgian lari', '', 'GEL', 981, '0.00000', 'ლ', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 'Mvdol', '', 'BOV', 984, '0.00000', 'BOV', '2', ',', '', '{number} {symbol}', '{sign}{number} {symbol}', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_customs`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_customs` (
  `virtuemart_custom_id` int(1) unsigned NOT NULL,
  `custom_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `custom_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `custom_element` varchar(50) NOT NULL DEFAULT '',
  `admin_only` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:Display in admin only',
  `custom_title` varchar(255) NOT NULL DEFAULT '' COMMENT 'field title',
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `custom_tip` varchar(255) NOT NULL DEFAULT '' COMMENT 'tip',
  `custom_value` varchar(2000) DEFAULT NULL COMMENT 'default value',
  `custom_desc` varchar(255) DEFAULT NULL COMMENT 'description or unit',
  `field_type` varchar(2) NOT NULL DEFAULT '0' COMMENT 'S:string,I:int,P:parent, B:bool,D:date,T:time,H:hidden',
  `is_list` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'list of values',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:hidden',
  `is_cart_attribute` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add attributes to cart',
  `is_input` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Add input to cart',
  `layout_pos` varchar(24) DEFAULT NULL COMMENT 'Layout Position',
  `custom_params` varchar(17000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valid for all vendors?',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

--
-- Dumping data for table `mhyjf_virtuemart_customs`
--

INSERT INTO `mhyjf_virtuemart_customs` (`virtuemart_custom_id`, `custom_parent_id`, `virtuemart_vendor_id`, `custom_jplugin_id`, `custom_element`, `admin_only`, `custom_title`, `show_title`, `custom_tip`, `custom_value`, `custom_desc`, `field_type`, `is_list`, `is_hidden`, `is_cart_attribute`, `is_input`, `layout_pos`, `custom_params`, `shared`, `published`, `created_on`, `created_by`, `ordering`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_PRODUCTS', 1, 'COM_VIRTUEMART_RELATED_PRODUCTS_TIP', 'related_products', 'COM_VIRTUEMART_RELATED_PRODUCTS_DESC', 'R', 0, 0, 0, 0, 'related_products', 'wPrice="1"|wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 0, 0, 0, '0', 0, 'COM_VIRTUEMART_RELATED_CATEGORIES', 1, 'COM_VIRTUEMART_RELATED_CATEGORIES_TIP', 'related_categories', 'COM_VIRTUEMART_RELATED_CATEGORIES_DESC', 'Z', 0, 0, 0, 0, 'related_categories', 'wImage="1"|wDescr="1"|', 0, 1, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_invoices`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_invoices` (
  `virtuemart_invoice_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `invoice_number` varchar(64) DEFAULT NULL,
  `order_status` char(2) DEFAULT NULL,
  `xhtml` text,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='custom fields definition';

--
-- Dumping data for table `mhyjf_virtuemart_invoices`
--

INSERT INTO `mhyjf_virtuemart_invoices` (`virtuemart_invoice_id`, `virtuemart_vendor_id`, `virtuemart_order_id`, `invoice_number`, `order_status`, `xhtml`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 2, '160207EX6Y01', 'P', '', '2016-02-07 10:41:23', 0, '2016-02-07 10:41:23', 0, '0000-00-00 00:00:00', 0),
(2, 1, 1, '160207997N02', 'P', '', '2016-02-07 10:42:13', 0, '2016-02-07 10:42:13', 0, '0000-00-00 00:00:00', 0),
(3, 1, 3, '160207R3Q603', 'C', '', '2016-02-07 10:59:35', 467, '2016-02-07 10:59:35', 467, '0000-00-00 00:00:00', 0),
(4, 1, 0, '160207EX6Y01_20160207_P', '', '', '2016-02-07 10:59:35', 467, '2016-02-07 10:59:35', 467, '0000-00-00 00:00:00', 0),
(5, 1, 10, '160208XZE805', 'C', '', '2016-02-08 12:36:23', 467, '2016-02-08 12:36:23', 467, '0000-00-00 00:00:00', 0),
(6, 1, 0, '160208XZE805_20160208_C', '', '', '2016-02-08 12:38:50', 467, '2016-02-08 12:38:50', 467, '0000-00-00 00:00:00', 0),
(7, 1, 0, '160207R3Q603_20160208_C', '', '', '2016-02-08 12:38:50', 467, '2016-02-08 12:38:50', 467, '0000-00-00 00:00:00', 0),
(8, 1, 0, '160207EX6Y01_20160208_P', '', '', '2016-02-08 12:38:50', 467, '2016-02-08 12:38:50', 467, '0000-00-00 00:00:00', 0),
(9, 1, 0, '160207997N02-1', '', '', '2016-02-08 12:38:50', 467, '2016-02-08 12:38:50', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturercategories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturercategories` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are assigned to these categories';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturercategories_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturercategories_en_gb` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturercategories_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturercategories_th_th` (
  `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL,
  `mf_category_name` char(180) NOT NULL DEFAULT '',
  `mf_category_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturers`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturers` (
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL,
  `virtuemart_manufacturercategories_id` int(1) DEFAULT NULL,
  `hits` int(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Manufacturers are those who deliver products';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturers_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturers_en_gb` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturers_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturers_th_th` (
  `virtuemart_manufacturer_id` int(1) unsigned NOT NULL,
  `mf_name` char(180) NOT NULL DEFAULT '',
  `mf_email` char(255) NOT NULL DEFAULT '',
  `mf_desc` varchar(19000) NOT NULL DEFAULT '',
  `mf_url` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_manufacturer_medias`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_manufacturer_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_medias`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_medias` (
  `virtuemart_media_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `file_title` char(126) NOT NULL DEFAULT '',
  `file_description` char(254) NOT NULL DEFAULT '',
  `file_meta` char(254) NOT NULL DEFAULT '',
  `file_class` char(64) NOT NULL DEFAULT '',
  `file_mimetype` char(64) NOT NULL DEFAULT '',
  `file_type` char(32) NOT NULL DEFAULT '',
  `file_url` varchar(900) NOT NULL DEFAULT '',
  `file_url_thumb` varchar(900) NOT NULL DEFAULT '',
  `file_is_product_image` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_downloadable` tinyint(1) NOT NULL DEFAULT '0',
  `file_is_forSale` tinyint(1) NOT NULL DEFAULT '0',
  `file_params` varchar(17000) NOT NULL DEFAULT '',
  `file_lang` varchar(500) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Additional Images and Files which are assigned to products';

--
-- Dumping data for table `mhyjf_virtuemart_medias`
--

INSERT INTO `mhyjf_virtuemart_medias` (`virtuemart_media_id`, `virtuemart_vendor_id`, `file_title`, `file_description`, `file_meta`, `file_class`, `file_mimetype`, `file_type`, `file_url`, `file_url_thumb`, `file_is_product_image`, `file_is_downloadable`, `file_is_forSale`, `file_params`, `file_lang`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'logoEcom-01.jpg', '', '', '', 'image/jpeg', 'vendor', 'images/stories/virtuemart/vendor/logoEcom-01.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-06 07:28:55', 467, '2016-02-10 02:42:24', 467, '0000-00-00 00:00:00', 0),
(2, 1, '3.jpg', 'Mainboard', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/3.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 08:53:15', 467, '2016-02-08 07:40:07', 467, '0000-00-00 00:00:00', 0),
(3, 1, '15.jpg', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Power_Supply-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 08:56:58', 467, '2016-02-08 20:24:58', 467, '0000-00-00 00:00:00', 0),
(4, 1, '1.jpg', 'Hard Disk', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/1.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 09:09:00', 467, '2016-02-07 14:53:55', 467, '0000-00-00 00:00:00', 0),
(5, 1, '1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 09:46:14', 467, '2016-02-08 18:19:13', 467, '0000-00-00 00:00:00', 0),
(6, 1, '9.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/9.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 15:16:14', 467, '2016-02-07 15:16:14', 467, '0000-00-00 00:00:00', 0),
(7, 1, '110308154635_accessory8.jpg', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Computer_hardware_icons-03-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 15:17:30', 467, '2016-02-08 20:18:20', 467, '0000-00-00 00:00:00', 0),
(8, 1, 'storage.png', 'อุปกรณ์จัดเก็บข้อมูล', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/stack-xxl.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 15:21:51', 467, '2016-02-08 20:23:04', 467, '0000-00-00 00:00:00', 0),
(9, 1, '130701110515_tn1.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/130701110515_tn1.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-07 15:23:45', 467, '2016-02-08 20:24:03', 467, '0000-00-00 00:00:00', 0),
(10, 1, '11.jpg', 'Projector', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/11.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 04:44:57', 467, '2016-02-08 20:21:56', 467, '0000-00-00 00:00:00', 0),
(11, 1, '4.jpg', 'Scanner', '', '', 'image/x-icon', 'category', 'images/stories/virtuemart/category/Computer Hardware Scanner.ico', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 04:48:03', 467, '2016-02-08 05:23:26', 467, '0000-00-00 00:00:00', 0),
(12, 1, '36.jpg', 'เครื่องฉายภาพ', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/36.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 04:50:24', 467, '2016-02-08 20:21:14', 467, '0000-00-00 00:00:00', 0),
(13, 1, 'Layer_11-01-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Layer_11-01-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 05:11:20', 467, '2016-02-08 05:11:41', 467, '0000-00-00 00:00:00', 0),
(14, 1, 'barcode_scanner.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/barcode_scanner.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 05:33:23', 467, '2016-02-08 20:22:40', 467, '0000-00-00 00:00:00', 0),
(15, 1, 'Computer Hardware Scanner4.ico', '', '', '', 'image/x-icon', 'category', 'images/stories/virtuemart/category/Computer Hardware Scanner4.ico', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 05:39:02', 467, '2016-02-08 05:39:02', 467, '0000-00-00 00:00:00', 0),
(16, 1, 'Computer Hardware Scanner.png', 'Scanner', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Computer Hardware Scanner.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 05:40:40', 467, '2016-02-08 20:21:35', 467, '0000-00-00 00:00:00', 0),
(17, 1, 'computer-hardware-keyboard-icon.png', 'อุปกรณ์เสริมคอมพิวเตอร์', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/computer-hardware-keyboard-icon.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:16:03', 467, '2016-02-08 20:16:36', 467, '0000-00-00 00:00:00', 0),
(18, 1, 'print_icon.png', 'printer', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/print_icon.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:24:16', 467, '2016-02-08 20:27:07', 467, '0000-00-00 00:00:00', 0),
(19, 1, '4.jpg_category', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/4.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:32:28', 467, '2016-02-08 20:27:47', 467, '0000-00-00 00:00:00', 0),
(20, 1, '5.jpg', 'laserprinter', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/5.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:37:01', 467, '2016-02-08 20:27:30', 467, '0000-00-00 00:00:00', 0),
(21, 1, '8.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/8.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:46:33', 467, '2016-02-08 20:17:30', 467, '0000-00-00 00:00:00', 0),
(22, 1, '2.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/2.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:48:30', 467, '2016-02-08 20:17:13', 467, '0000-00-00 00:00:00', 0),
(23, 1, '34.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/34.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:50:20', 467, '2016-02-08 20:16:57', 467, '0000-00-00 00:00:00', 0),
(24, 1, '45.jpg', '', '', '', 'image/jpeg', 'category', 'images/stories/virtuemart/category/45.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:52:03', 467, '2016-02-08 20:17:49', 467, '0000-00-00 00:00:00', 0),
(25, 1, 'Layer_8-01-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Layer_8-01-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 07:56:00', 467, '2016-02-08 20:24:25', 467, '0000-00-00 00:00:00', 0),
(26, 1, 'mem', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/micro_sd.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:31:23', 467, '2016-02-08 20:23:40', 467, '0000-00-00 00:00:00', 0),
(27, 1, 'cpu-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/cpu-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:35:12', 467, '2016-02-08 20:26:53', 467, '0000-00-00 00:00:00', 0),
(28, 1, '34-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/34-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:40:12', 467, '2016-02-08 20:26:30', 467, '0000-00-00 00:00:00', 0),
(29, 1, 'pgb-ram.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/pgb-ram.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:43:39', 467, '2016-02-08 20:23:23', 467, '0000-00-00 00:00:00', 0),
(30, 1, 'Layer_9-01-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Layer_9-01-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:47:45', 467, '2016-02-08 20:26:13', 467, '0000-00-00 00:00:00', 0),
(31, 1, 'Layer_15-01-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/Layer_15-01-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:50:06', 467, '2016-02-08 20:25:14', 467, '0000-00-00 00:00:00', 0),
(32, 1, 'mainboard-512.png', '', '', '', 'image/png', 'category', 'images/stories/virtuemart/category/mainboard-512.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 08:53:59', 467, '2016-02-08 20:25:56', 467, '0000-00-00 00:00:00', 0),
(56, 1, '142.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 05:02:36', 467, '2016-02-09 05:09:48', 467, '0000-00-00 00:00:00', 0),
(57, 1, '27.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/27.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 05:14:34', 467, '2016-02-09 05:44:07', 467, '0000-00-00 00:00:00', 0),
(58, 1, '37.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/37.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 05:29:04', 467, '2016-02-09 05:44:35', 467, '0000-00-00 00:00:00', 0),
(36, 1, 'p19.jpg', '', '', '', 'image/png', 'product', 'images/stories/virtuemart/product/L220.png', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 17:29:45', 467, '2016-02-08 17:35:11', 467, '0000-00-00 00:00:00', 0),
(37, 1, '11.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/11.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:23:15', 467, '2016-02-08 18:24:56', 467, '0000-00-00 00:00:00', 0),
(38, 1, '17.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/17.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:32:47', 467, '2016-02-08 18:33:10', 467, '0000-00-00 00:00:00', 0),
(39, 1, 'GeForce-GTX-Titan_31.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/GeForce-GTX-Titan_31.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:38:50', 467, '2016-02-08 18:48:50', 467, '0000-00-00 00:00:00', 0),
(40, 1, 'wd-storage-desktop-hard-drives-2tb-sata-iii-7200rpm-64mb-3-5-caviar-black-wd2003fzex-4292-577727-1-catalog_233.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/wd-storage-desktop-hard-drives-2tb-sata-iii-7200rpm-64mb-3-5-caviar-black-wd2003fzex-4292-577727-1-catalog_233.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:43:27', 467, '2016-02-08 18:48:23', 467, '0000-00-00 00:00:00', 0),
(41, 1, '5975_big.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/5975_big.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:47:51', 467, '2016-02-08 18:47:51', 467, '0000-00-00 00:00:00', 0),
(42, 1, '0133.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/0133.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 18:56:31', 467, '2016-02-08 18:56:41', 467, '0000-00-00 00:00:00', 0),
(43, 1, '16.jpg_product', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/16.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:00:07', 467, '2016-02-08 19:00:07', 467, '0000-00-00 00:00:00', 0),
(44, 1, '15.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/15.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:04:12', 467, '2016-02-08 19:04:12', 467, '0000-00-00 00:00:00', 0),
(45, 1, '163.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/163.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:10:24', 467, '2016-02-08 19:10:24', 467, '0000-00-00 00:00:00', 0),
(46, 1, '2.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/2.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:13:51', 467, '2016-02-08 19:13:51', 467, '0000-00-00 00:00:00', 0),
(47, 1, '164.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/164.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:17:35', 467, '2016-02-08 19:17:35', 467, '0000-00-00 00:00:00', 0),
(48, 1, '1413881134.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1413881134.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:22:49', 467, '2016-02-08 19:22:49', 467, '0000-00-00 00:00:00', 0),
(49, 1, '117.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/117.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:26:24', 467, '2016-02-09 04:08:09', 467, '0000-00-00 00:00:00', 0),
(50, 1, '14.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/14.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:28:58', 467, '2016-02-09 04:05:50', 467, '0000-00-00 00:00:00', 0),
(51, 1, '___ELP-DC20_240.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/___ELP-DC20_240.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:35:36', 467, '2016-02-09 04:09:18', 467, '0000-00-00 00:00:00', 0),
(52, 1, 'getek-wireless-bluetooth-headset-earphones-for-mobile-phone-iphone-samsung-lg-pink-4248-2839511-1-catalog_233.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/getek-wireless-bluetooth-headset-earphones-for-mobile-phone-iphone-samsung-lg-pink-4248-2839511-1-catalog_233.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:39:23', 467, '2016-02-08 19:39:23', 467, '0000-00-00 00:00:00', 0),
(53, 1, '18.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/18.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:43:23', 467, '2016-02-08 19:43:23', 467, '0000-00-00 00:00:00', 0),
(54, 1, '176.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/176.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:47:25', 467, '2016-02-08 19:47:25', 467, '0000-00-00 00:00:00', 0),
(55, 1, '154.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/154.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-08 19:50:01', 467, '2016-02-08 19:50:01', 467, '0000-00-00 00:00:00', 0),
(59, 1, '4.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/4.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 05:36:32', 467, '2016-02-09 05:45:03', 467, '0000-00-00 00:00:00', 0),
(60, 1, '5.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/5.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 05:41:14', 467, '2016-02-09 05:45:30', 467, '0000-00-00 00:00:00', 0),
(61, 1, '169.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/169.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 06:08:22', 467, '2016-02-09 06:08:22', 467, '0000-00-00 00:00:00', 0),
(62, 1, '29.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/29.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 06:13:19', 467, '2016-02-09 06:14:02', 467, '0000-00-00 00:00:00', 0),
(63, 1, '33.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/33.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 06:21:58', 467, '2016-02-09 06:21:58', 467, '0000-00-00 00:00:00', 0),
(64, 1, '51.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/51.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 06:25:36', 467, '2016-02-09 06:25:36', 467, '0000-00-00 00:00:00', 0),
(65, 1, '114.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/114.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:01:29', 467, '2016-02-09 07:01:29', 467, '0000-00-00 00:00:00', 0),
(66, 1, '23.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/23.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:05:19', 467, '2016-02-09 07:05:19', 467, '0000-00-00 00:00:00', 0),
(67, 1, '32.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/32.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:07:52', 467, '2016-02-09 07:07:52', 467, '0000-00-00 00:00:00', 0),
(68, 1, '44.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/44.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:10:54', 467, '2016-02-09 07:10:54', 467, '0000-00-00 00:00:00', 0),
(69, 1, '53.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/53.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:15:47', 467, '2016-02-09 07:15:47', 467, '0000-00-00 00:00:00', 0),
(70, 1, '167.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/167.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:43:21', 467, '2016-02-09 07:46:23', 467, '0000-00-00 00:00:00', 0),
(71, 1, '292.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/292.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:49:18', 467, '2016-02-09 07:51:02', 467, '0000-00-00 00:00:00', 0),
(72, 1, '325.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/325.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 07:56:32', 467, '2016-02-09 07:56:32', 467, '0000-00-00 00:00:00', 0),
(73, 1, 'A0069962OK_BIG_3.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/A0069962OK_BIG_3.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 08:01:17', 467, '2016-02-09 08:01:17', 467, '0000-00-00 00:00:00', 0),
(74, 1, 'image-534335-1-zoom.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/image-534335-1-zoom.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:31:16', 467, '2016-02-09 14:31:16', 467, '0000-00-00 00:00:00', 0),
(75, 1, 'color-fly-50-pack-photo-inkjet-sticker-a4-135g-kradaasprinruupaebbstikek-r-a4-50-pack-8731-5902403-1-product.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/color-fly-50-pack-photo-inkjet-sticker-a4-135g-kradaasprinruupaebbstikek-r-a4-50-pack-8731-5902403-1-product.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:34:11', 467, '2016-02-09 14:34:11', 467, '0000-00-00 00:00:00', 0),
(76, 1, '5740-319-630x552.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/5740-319-630x552.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:36:56', 467, '2016-02-09 14:36:56', 467, '0000-00-00 00:00:00', 0),
(77, 1, 'fi.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/fi.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:40:12', 467, '2016-02-09 14:40:12', 467, '0000-00-00 00:00:00', 0),
(78, 1, 'res_24de5f87588f350a72c409a4ee51d35f_full.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/res_24de5f87588f350a72c409a4ee51d35f_full.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:43:14', 467, '2016-02-09 14:43:14', 467, '0000-00-00 00:00:00', 0),
(79, 1, 'image-7094252-1-product.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/image-7094252-1-product.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:46:11', 467, '2016-02-09 14:46:11', 467, '0000-00-00 00:00:00', 0),
(80, 1, '314-20151026162038-829246.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/314-20151026162038-829246.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:49:47', 467, '2016-02-09 14:49:47', 467, '0000-00-00 00:00:00', 0),
(81, 1, 'ProPict1562557142151.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/ProPict1562557142151.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 14:56:24', 467, '2016-02-09 14:56:24', 467, '0000-00-00 00:00:00', 0),
(82, 1, '1452569196-ตลับหมึกเลเซอร์ Lasuprint1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1452569196-ตลับหมึกเลเซอร์ Lasuprint1.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:01:28', 467, '2016-02-09 15:01:28', 467, '0000-00-00 00:00:00', 0),
(83, 1, '1144.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/1144.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:10:22', 467, '2016-02-09 15:10:22', 467, '0000-00-00 00:00:00', 0),
(84, 1, '12622485_925494517526577_4284288804020669800_o_1.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/12622485_925494517526577_4284288804020669800_o_1.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:14:04', 467, '2016-02-09 15:14:04', 467, '0000-00-00 00:00:00', 0),
(85, 1, '294.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/294.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:17:43', 467, '2016-02-09 15:17:43', 467, '0000-00-00 00:00:00', 0),
(86, 1, 'marvo-gaming-keyboard-khiiyb-rdekmmingaif7sii-run-k950-siidam-6404-9928512-1-product.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/marvo-gaming-keyboard-khiiyb-rdekmmingaif7sii-run-k950-siidam-6404-9928512-1-product.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:23:04', 467, '2016-02-09 15:23:04', 467, '0000-00-00 00:00:00', 0),
(87, 1, '91-K0aAysrL._SX522_.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/91-K0aAysrL._SX522_.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:26:15', 467, '2016-02-09 15:26:15', 467, '0000-00-00 00:00:00', 0),
(88, 1, 'AA87833a.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/AA87833a.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:29:09', 467, '2016-02-09 15:29:09', 467, '0000-00-00 00:00:00', 0),
(89, 1, 'full28271026_a.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/full28271026_a.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:34:46', 467, '2016-02-09 15:34:46', 467, '0000-00-00 00:00:00', 0),
(90, 1, '5051794008456.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/5051794008456.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:38:36', 467, '2016-02-09 15:38:36', 467, '0000-00-00 00:00:00', 0),
(91, 1, '28271_19311_chuot-game-logitech-g502.jpg', '', '', '', 'image/jpeg', 'product', 'images/stories/virtuemart/product/28271_19311_chuot-game-logitech-g502.jpg', '', 0, 0, 0, '', '', 0, 1, '2016-02-09 15:40:58', 467, '2016-02-09 15:40:58', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_migration_oldtonew_ids`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_migration_oldtonew_ids` (
  `id` smallint(1) unsigned NOT NULL,
  `cats` longblob,
  `catsxref` blob,
  `manus` longblob,
  `mfcats` blob,
  `shoppergroups` longblob,
  `products` longblob,
  `products_start` int(1) DEFAULT NULL,
  `orderstates` blob,
  `orders` longblob,
  `attributes` longblob,
  `relatedproducts` longblob,
  `orders_start` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='xref table for vm1 ids to vm2 ids';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_modules`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_modules` (
  `module_id` int(1) unsigned NOT NULL,
  `module_name` char(255) DEFAULT NULL,
  `module_description` varchar(21000) DEFAULT NULL,
  `module_perms` char(255) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` enum('0','1') NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='VirtueMart Core Modules, not: Joomla modules';

--
-- Dumping data for table `mhyjf_virtuemart_modules`
--

INSERT INTO `mhyjf_virtuemart_modules` (`module_id`, `module_name`, `module_description`, `module_perms`, `published`, `is_admin`, `ordering`) VALUES
(1, 'product', 'Here you can administer your online catalog of products.  Categories , Products (view=product), Attributes, Product Types, Product Files (view=media), Inventory, Calculation Rules, Customer Reviews  ', 'storeadmin,admin', 1, '', 1),
(2, 'order', 'View Order and Update Order Status:    Orders , Coupons , Revenue Report ,Shopper , Shopper Groups ', 'admin,storeadmin', 1, '', 2),
(3, 'manufacturer', 'Manage the manufacturers of products in your store.', 'storeadmin,admin', 1, '', 3),
(4, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(5, 'configuration', 'Configuration: shop configuration , currencies (view=currency), Credit Card List, Countries, userfields, order status  ', 'admin,storeadmin', 1, '0', 5),
(6, 'msgs', 'This module is unprotected an used for displaying system messages to users.  We need to have an area that does not require authorization when things go wrong.', 'none', 0, '', 99),
(7, 'shop', 'This is the Washupito store module.  This is the demo store included with the VirtueMart distribution.', 'none', 1, '', 99),
(8, 'store', 'Store Configuration: Store Information, Payment Methods , Shipment, Shipment Rates', 'storeadmin,admin', 1, '', 4),
(9, 'account', 'This module allows shoppers to update their account information and view previously placed orders.', 'shopper,storeadmin,admin,demo', 1, '', 99),
(10, 'checkout', '', 'none', 0, '', 99),
(11, 'tools', 'Tools', 'admin', 1, '0', 8),
(13, 'zone', 'This is the zone-shipment module. Here you can manage your shipment costs according to Zones.', 'admin,storeadmin', 0, '', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_orders`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_orders` (
  `virtuemart_order_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `order_number` varchar(64) DEFAULT NULL,
  `customer_number` varchar(32) DEFAULT NULL,
  `order_pass` varchar(34) DEFAULT NULL,
  `order_create_invoice_pass` varchar(32) DEFAULT NULL,
  `order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_salesPrice` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTaxAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_billTax` varchar(400) DEFAULT NULL,
  `order_billDiscountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_discountAmount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_subtotal` decimal(15,5) DEFAULT NULL,
  `order_tax` decimal(10,5) DEFAULT NULL,
  `order_shipment` decimal(10,5) DEFAULT NULL,
  `order_shipment_tax` decimal(10,5) DEFAULT NULL,
  `order_payment` decimal(10,2) DEFAULT NULL,
  `order_payment_tax` decimal(10,5) DEFAULT NULL,
  `coupon_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `coupon_code` char(32) DEFAULT NULL,
  `order_discount` decimal(12,2) NOT NULL DEFAULT '0.00',
  `order_currency` smallint(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `user_currency_id` smallint(1) DEFAULT NULL,
  `user_currency_rate` decimal(10,5) NOT NULL DEFAULT '1.00000',
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `delivery_date` varchar(200) DEFAULT NULL,
  `order_language` varchar(7) DEFAULT NULL,
  `ip_address` char(15) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Used to store all orders';

--
-- Dumping data for table `mhyjf_virtuemart_orders`
--

INSERT INTO `mhyjf_virtuemart_orders` (`virtuemart_order_id`, `virtuemart_user_id`, `virtuemart_vendor_id`, `order_number`, `customer_number`, `order_pass`, `order_create_invoice_pass`, `order_total`, `order_salesPrice`, `order_billTaxAmount`, `order_billTax`, `order_billDiscountAmount`, `order_discountAmount`, `order_subtotal`, `order_tax`, `order_shipment`, `order_shipment_tax`, `order_payment`, `order_payment_tax`, `coupon_discount`, `coupon_code`, `order_discount`, `order_currency`, `order_status`, `user_currency_id`, `user_currency_rate`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `delivery_date`, `order_language`, `ip_address`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 467, 1, 'Z7RP03', 'AD21232f297', 'p_iRj926Wu', 'RmWFDErP', '2178.00000', '2178.00000', '0.00000', '0', '0.00000', '0.00000', '2178.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', NULL, '0.00', 135, 'P', 135, '1.00000', 1, 1, 'วันเดียวกับที่ออกใบกำกับสินค้า', 'th-TH', ':xx', '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(2, 0, 1, '338X04', 'nonreg_apiwatDindangsao.apiwat@g', 'p_yqqRNYfA', '4TpKJhfo', '19.46392', '8.88000', '0.00000', '0', '0.00000', '0.00000', '8.88000', '0.00000', '0.00000', '0.00000', '10.58', '0.00000', '0.00', '', '0.00', 135, 'R', 135, '1.00000', 1, 1, 'วันเดียวกับที่ออกใบกำกับสินค้า', 'th-TH', ':xx', '2016-02-10 03:57:03', 0, '2016-02-10 03:58:50', 467, '0000-00-00 00:00:00', 0),
(3, 480, 1, 'H9ED05', 'KI60d48796d', 'p_ZhCfXRjZ', 'AHCbLHD2', '14.88660', '4.44000', '0.00000', '0', '0.00000', '0.00000', '4.44000', '0.00000', '0.00000', '0.00000', '10.45', '0.00000', '0.00', '', '0.00', 135, 'U', 135, '1.00000', 1, 1, 'วันเดียวกับที่ออกใบกำกับสินค้า', 'th-TH', ':xx', '2016-02-10 06:11:10', 480, '2016-02-10 06:13:04', 467, '0000-00-00 00:00:00', 0),
(4, 481, 1, '1MI906', 'HO3d83f4fe9', 'p_wFVhX3bf', 'DyVXy1Ry', '7990.00000', '7990.00000', '0.00000', '0', '0.00000', '0.00000', '7990.00000', '0.00000', '0.00000', '0.00000', '0.00', '0.00000', '0.00', '', '0.00', 135, 'S', 135, '1.00000', 1, 1, 'วันเดียวกับที่ออกใบกำกับสินค้า', 'th-TH', ':xx', '2016-02-10 06:26:21', 481, '2016-02-10 06:27:00', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_orderstates`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_orderstates` (
  `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `order_status_code` char(1) NOT NULL DEFAULT '',
  `order_status_name` varchar(64) DEFAULT NULL,
  `order_status_description` varchar(20000) DEFAULT NULL,
  `order_stock_handle` char(1) NOT NULL DEFAULT 'A',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='All available order statuses';

--
-- Dumping data for table `mhyjf_virtuemart_orderstates`
--

INSERT INTO `mhyjf_virtuemart_orderstates` (`virtuemart_orderstate_id`, `virtuemart_vendor_id`, `order_status_code`, `order_status_name`, `order_status_description`, `order_stock_handle`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 'P', 'COM_VIRTUEMART_ORDER_STATUS_PENDING', '', 'R', 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 'U', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED_BY_SHOPPER', '', 'R', 2, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'C', 'COM_VIRTUEMART_ORDER_STATUS_CONFIRMED', '', 'R', 3, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 'X', 'COM_VIRTUEMART_ORDER_STATUS_CANCELLED', '', 'A', 4, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 'R', 'COM_VIRTUEMART_ORDER_STATUS_REFUNDED', '', 'A', 5, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 'S', 'COM_VIRTUEMART_ORDER_STATUS_SHIPPED', '', 'O', 6, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 'F', 'COM_VIRTUEMART_ORDER_STATUS_COMPLETED', '', 'R', 7, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 'D', 'COM_VIRTUEMART_ORDER_STATUS_DENIED', '', 'A', 8, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_order_calc_rules`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_order_calc_rules` (
  `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL,
  `virtuemart_calc_id` int(1) DEFAULT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_order_item_id` int(1) DEFAULT NULL,
  `calc_rule_name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Name of the rule',
  `calc_kind` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_mathop` varchar(16) NOT NULL DEFAULT '' COMMENT 'Discount/Tax/Margin/Commission',
  `calc_amount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_result` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_value` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `calc_currency` smallint(1) DEFAULT NULL,
  `calc_params` varchar(18000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Stores all calculation rules which are part of an order';

--
-- Dumping data for table `mhyjf_virtuemart_order_calc_rules`
--

INSERT INTO `mhyjf_virtuemart_order_calc_rules` (`virtuemart_order_calc_rule_id`, `virtuemart_calc_id`, `virtuemart_order_id`, `virtuemart_vendor_id`, `virtuemart_order_item_id`, `calc_rule_name`, `calc_kind`, `calc_mathop`, `calc_amount`, `calc_result`, `calc_value`, `calc_currency`, `calc_params`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(25, 0, 1, 1, NULL, '', 'payment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(26, 0, 1, 1, NULL, '', 'shipment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(27, 0, 2, 1, NULL, '', 'payment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(28, 0, 2, 1, NULL, '', 'shipment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(29, 0, 3, 1, NULL, '', 'payment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(30, 0, 3, 1, NULL, '', 'shipment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(31, 0, 4, 1, NULL, '', 'payment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0),
(32, 0, 4, 1, NULL, '', 'shipment', '', '0.00000', '0.00000', '0.00000', 0, '', '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_order_histories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_order_histories` (
  `virtuemart_order_history_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `order_status_code` char(1) NOT NULL DEFAULT '0',
  `customer_notified` tinyint(1) NOT NULL DEFAULT '0',
  `comments` varchar(21000) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Stores all actions and changes that occur to an order';

--
-- Dumping data for table `mhyjf_virtuemart_order_histories`
--

INSERT INTO `mhyjf_virtuemart_order_histories` (`virtuemart_order_history_id`, `virtuemart_order_id`, `order_status_code`, `customer_notified`, `comments`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(27, 10, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:50', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 9, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 8, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 7, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:51', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 6, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 5, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 4, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 3, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 2, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:52', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, '-', 0, 'Order deleted', 1, '2016-02-08 19:38:53', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 12, '-', 0, 'Order deleted', 1, '2016-02-10 08:05:08', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 11, '-', 0, 'Order deleted', 1, '2016-02-10 08:05:09', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 'P', 0, '', 1, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(47, 1, 'P', 1, '', 1, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(48, 2, 'P', 0, '', 1, '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(49, 2, 'P', 1, '', 1, '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(50, 2, 'R', 1, '', 1, '2016-02-10 03:58:50', 467, '2016-02-10 03:58:50', 467, '0000-00-00 00:00:00', 0),
(51, 3, 'P', 0, '', 1, '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(52, 3, 'P', 1, '', 1, '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(53, 3, 'R', 1, '', 1, '2016-02-10 06:12:26', 467, '2016-02-10 06:12:26', 467, '0000-00-00 00:00:00', 0),
(54, 3, 'U', 1, '', 1, '2016-02-10 06:13:04', 467, '2016-02-10 06:13:04', 467, '0000-00-00 00:00:00', 0),
(55, 4, 'P', 0, '', 1, '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0),
(56, 4, 'P', 1, '', 1, '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0),
(57, 4, 'S', 1, '', 1, '2016-02-10 06:27:00', 467, '2016-02-10 06:27:00', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_order_items`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_order_items` (
  `virtuemart_order_item_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) DEFAULT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `order_item_sku` varchar(255) NOT NULL DEFAULT '',
  `order_item_name` varchar(4096) NOT NULL DEFAULT '',
  `product_quantity` int(1) DEFAULT NULL,
  `product_item_price` decimal(15,5) DEFAULT NULL,
  `product_priceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_tax` decimal(15,5) DEFAULT NULL,
  `product_basePriceWithTax` decimal(15,5) DEFAULT NULL,
  `product_discountedPriceWithoutTax` decimal(15,5) DEFAULT NULL,
  `product_final_price` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_discount` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `product_subtotal_with_tax` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `order_item_currency` int(1) DEFAULT NULL,
  `order_status` char(1) DEFAULT NULL,
  `product_attribute` mediumtext,
  `delivery_date` varchar(200) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Stores all items (products) which are part of an order';

--
-- Dumping data for table `mhyjf_virtuemart_order_items`
--

INSERT INTO `mhyjf_virtuemart_order_items` (`virtuemart_order_item_id`, `virtuemart_order_id`, `virtuemart_vendor_id`, `virtuemart_product_id`, `order_item_sku`, `order_item_name`, `product_quantity`, `product_item_price`, `product_priceWithoutTax`, `product_tax`, `product_basePriceWithTax`, `product_discountedPriceWithoutTax`, `product_final_price`, `product_subtotal_discount`, `product_subtotal_with_tax`, `order_item_currency`, `order_status`, `product_attribute`, `delivery_date`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 1, 26, 'ฺB002', 'AMD A4-7300', 1, '1500.00000', '1500.00000', '0.00000', '0.00000', '1500.00000', '1500.00000', '0.00000', '1500.00000', NULL, 'P', '[]', NULL, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(2, 1, 1, 14, 'B007', 'RAM', 3, '226.00000', '226.00000', '0.00000', '0.00000', '226.00000', '226.00000', '0.00000', '678.00000', NULL, 'P', '[]', NULL, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(3, 2, 1, 12, 'B005', 'BENQ MONITOR LED 24', 2, '4.44000', '4.44000', '0.00000', '0.00000', '4.44000', '4.44000', '0.00000', '8.88000', NULL, 'R', '[]', NULL, '2016-02-10 03:57:03', 0, '2016-02-10 03:58:50', 467, '0000-00-00 00:00:00', 0),
(4, 3, 1, 12, 'B005', 'BENQ MONITOR LED 24', 1, '4.44000', '4.44000', '0.00000', '0.00000', '4.44000', '4.44000', '0.00000', '4.44000', NULL, 'U', '[]', NULL, '2016-02-10 06:11:10', 480, '2016-02-10 06:13:04', 467, '0000-00-00 00:00:00', 0),
(5, 4, 1, 53, 'EH001', 'HP-Laser Jet', 1, '3800.00000', '3800.00000', '0.00000', '0.00000', '3800.00000', '3800.00000', '0.00000', '3800.00000', NULL, 'S', '[]', NULL, '2016-02-10 06:26:21', 481, '2016-02-10 06:27:00', 467, '0000-00-00 00:00:00', 0),
(6, 4, 1, 29, 'B006', 'AMD CPU รุ่น FX-6300', 1, '4190.00000', '4190.00000', '0.00000', '0.00000', '4190.00000', '4190.00000', '0.00000', '4190.00000', NULL, 'S', '[]', NULL, '2016-02-10 06:26:21', 481, '2016-02-10 06:27:00', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_order_userinfos`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_order_userinfos` (
  `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) DEFAULT NULL,
  `address_type_name` varchar(32) DEFAULT NULL,
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(128) DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Stores the BillTo and ShipTo Information at order time';

--
-- Dumping data for table `mhyjf_virtuemart_order_userinfos`
--

INSERT INTO `mhyjf_virtuemart_order_userinfos` (`virtuemart_order_userinfo_id`, `virtuemart_order_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `email`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 467, 'BT', NULL, 'IT Computer', 'Mr', 'VirtueMart', 'ICT56', NULL, '082-806-3850', NULL, NULL, '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', NULL, 'ปัตตานี', 684, 209, '94000', 'shopit.computer@gmail.com', 0, 1, '', '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(2, 2, 0, 'BT', NULL, NULL, NULL, 'Dindang', 'apiwat', NULL, '86886868686', NULL, NULL, '14/6 หมู่ 11 ต.กระบี่น้อย', NULL, 'ปัตตานี', 653, 209, '81000', 'sao.apiwat@gmail.com', 0, 1, '', '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(3, 3, 480, 'BT', NULL, NULL, 'Mr', 'Dingdang', 'Apiwat', NULL, '0828063850', NULL, NULL, '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', NULL, 'กระบี่', 653, 209, '81000', 'sao.apiwat@gmail.com', 0, 1, '', '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(4, 4, 481, 'BT', NULL, 'IT', 'Mr', 'ดินแดง', 'อภิวัฒน์', NULL, NULL, NULL, NULL, '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', NULL, 'กระบี่', 653, 209, '81000', 'picture.whan@gmail.com', 0, 1, '', '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_paymentmethods`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_paymentmethods` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `payment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `payment_element` char(50) NOT NULL DEFAULT '',
  `payment_params` varchar(19000) NOT NULL DEFAULT '',
  `shared` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'valide for all vendors?',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='The payment methods of your store';

--
-- Dumping data for table `mhyjf_virtuemart_paymentmethods`
--

INSERT INTO `mhyjf_virtuemart_paymentmethods` (`virtuemart_paymentmethod_id`, `virtuemart_vendor_id`, `payment_jplugin_id`, `payment_element`, `payment_params`, `shared`, `ordering`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10002, 'standard', 'payment_currency="135"|status_pending="P"|send_invoice_on_order_null="1"|payment_logos=[\n    ""\n]|payment_info="\\u0e42\\u0e2d\\u0e19\\u0e40\\u0e07\\u0e34\\u0e19\\u0e44\\u0e14\\u0e49\\u0e17\\u0e35\\u0e48\\u0e2b\\u0e21\\u0e32\\u0e22\\u0e40\\u0e25\\u0e02\\u0e1a\\u0e31\\u0e0d\\u0e0a\\u0e35 704-2-58409-6 \\u0e18\\u0e19\\u0e04\\u0e32\\u0e23\\u0e44\\u0e17\\u0e22\\u0e1e\\u0e32\\u0e19\\u0e34\\u0e0a\\u0e22\\u0e4c"|countries=[\n    "209"\n]|min_amount="1"|max_amount="100"|cost_per_transaction="10"|cost_min_transaction=""|cost_percent_total="3"|tax_id="-1"|', 0, 1, 1, '2016-02-06 07:59:43', 467, '2016-02-07 10:01:18', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_paymentmethods_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_paymentmethods_en_gb` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_paymentmethods_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_paymentmethods_th_th` (
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL,
  `payment_name` char(180) NOT NULL DEFAULT '',
  `payment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_paymentmethods_th_th`
--

INSERT INTO `mhyjf_virtuemart_paymentmethods_th_th` (`virtuemart_paymentmethod_id`, `payment_name`, `payment_desc`, `slug`) VALUES
(1, 'ชำระเงินแบบทั่วไป', 'จะต้องชำระเงินนับจากวันที่ซื้อภายใน 24 ชั่วโมง', 'ชำระเงินแบบทั่วไป');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_paymentmethod_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_paymentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='xref table for paymentmethods to shoppergroup';

--
-- Dumping data for table `mhyjf_virtuemart_paymentmethod_shoppergroups`
--

INSERT INTO `mhyjf_virtuemart_paymentmethod_shoppergroups` (`id`, `virtuemart_paymentmethod_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_payment_plg_standard`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_payment_plg_standard` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(1) unsigned DEFAULT NULL,
  `order_number` char(64) DEFAULT NULL,
  `virtuemart_paymentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `payment_name` varchar(5000) DEFAULT NULL,
  `payment_order_total` decimal(15,5) NOT NULL DEFAULT '0.00000',
  `payment_currency` char(3) DEFAULT NULL,
  `email_currency` char(3) DEFAULT NULL,
  `cost_per_transaction` decimal(10,2) DEFAULT NULL,
  `cost_min_transaction` decimal(10,2) DEFAULT NULL,
  `cost_percent_total` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_payment_plg_standard`
--

INSERT INTO `mhyjf_virtuemart_payment_plg_standard` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_paymentmethod_id`, `payment_name`, `payment_order_total`, `payment_currency`, `email_currency`, `cost_per_transaction`, `cost_min_transaction`, `cost_percent_total`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(13, 1, 'Z7RP03', 1, ' <span class="vmpayment_name">ชำระเงินแบบทั่วไป</span><span class="vmpayment_description">จะต้องชำระเงินนับจากวันที่ซื้อภายใน 24 ชั่วโมง</span><br />โอนเงินได้ที่หมายเลขบัญชี 704-2-58409-6 ธนคารไทยพานิชย์', '2178.00000', 'THB', '135', '10.00', '0.00', '3.00', -1, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(14, 2, '338X04', 1, ' <span class="vmpayment_name">ชำระเงินแบบทั่วไป</span><span class="vmpayment_description">จะต้องชำระเงินนับจากวันที่ซื้อภายใน 24 ชั่วโมง</span><br />โอนเงินได้ที่หมายเลขบัญชี 704-2-58409-6 ธนคารไทยพานิชย์', '19.46000', 'THB', '135', '10.00', '0.00', '3.00', -1, '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(15, 3, 'H9ED05', 1, ' <span class="vmpayment_name">ชำระเงินแบบทั่วไป</span><span class="vmpayment_description">จะต้องชำระเงินนับจากวันที่ซื้อภายใน 24 ชั่วโมง</span><br />โอนเงินได้ที่หมายเลขบัญชี 704-2-58409-6 ธนคารไทยพานิชย์', '14.89000', 'THB', '135', '10.00', '0.00', '3.00', -1, '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(16, 4, '1MI906', 1, ' <span class="vmpayment_name">ชำระเงินแบบทั่วไป</span><span class="vmpayment_description">จะต้องชำระเงินนับจากวันที่ซื้อภายใน 24 ชั่วโมง</span><br />โอนเงินได้ที่หมายเลขบัญชี 704-2-58409-6 ธนคารไทยพานิชย์', '7990.00000', 'THB', '135', '10.00', '0.00', '3.00', -1, '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_products`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_products` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `product_parent_id` int(1) unsigned NOT NULL DEFAULT '0',
  `product_sku` varchar(255) DEFAULT NULL,
  `product_gtin` varchar(64) DEFAULT NULL,
  `product_mpn` varchar(64) DEFAULT NULL,
  `product_weight` decimal(10,4) DEFAULT NULL,
  `product_weight_uom` varchar(7) DEFAULT NULL,
  `product_length` decimal(10,4) DEFAULT NULL,
  `product_width` decimal(10,4) DEFAULT NULL,
  `product_height` decimal(10,4) DEFAULT NULL,
  `product_lwh_uom` varchar(7) DEFAULT NULL,
  `product_url` varchar(255) DEFAULT NULL,
  `product_in_stock` int(1) NOT NULL DEFAULT '0',
  `product_ordered` int(1) NOT NULL DEFAULT '0',
  `low_stock_notification` int(1) unsigned NOT NULL DEFAULT '0',
  `product_available_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_availability` char(32) DEFAULT NULL,
  `product_special` tinyint(1) DEFAULT NULL,
  `product_sales` int(1) unsigned NOT NULL DEFAULT '0',
  `product_unit` varchar(8) DEFAULT NULL,
  `product_packaging` decimal(8,4) unsigned DEFAULT NULL,
  `product_params` varchar(2000) NOT NULL DEFAULT '',
  `hits` int(1) unsigned DEFAULT NULL,
  `intnotes` varchar(18000) DEFAULT NULL,
  `metarobot` varchar(400) DEFAULT NULL,
  `metaauthor` varchar(400) DEFAULT NULL,
  `layout` char(16) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `pordering` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='All products are stored here.';

--
-- Dumping data for table `mhyjf_virtuemart_products`
--

INSERT INTO `mhyjf_virtuemart_products` (`virtuemart_product_id`, `virtuemart_vendor_id`, `product_parent_id`, `product_sku`, `product_gtin`, `product_mpn`, `product_weight`, `product_weight_uom`, `product_length`, `product_width`, `product_height`, `product_lwh_uom`, `product_url`, `product_in_stock`, `product_ordered`, `low_stock_notification`, `product_available_date`, `product_availability`, `product_special`, `product_sales`, `product_unit`, `product_packaging`, `product_params`, `hits`, `intnotes`, `metarobot`, `metaauthor`, `layout`, `published`, `pordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(6, 1, 0, 'E002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 1, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="3"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-02-08 18:19:02', 467, '2016-02-08 18:19:13', 467, '0000-00-00 00:00:00', 0),
(5, 1, 0, 'EI001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', '0', 1, 0, '2016-02-08 17:29:45', 467, '2016-02-08 17:35:11', 467, '0000-00-00 00:00:00', 0),
(7, 1, 0, 'EL002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 1, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="3"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:23:15', 467, '2016-02-08 18:24:56', 467, '0000-00-00 00:00:00', 0),
(8, 1, 0, 'B001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:32:47', 467, '2016-02-08 18:33:10', 467, '0000-00-00 00:00:00', 0),
(9, 1, 0, 'B003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:38:50', 467, '2016-02-08 18:48:50', 467, '0000-00-00 00:00:00', 0),
(10, 1, 0, 'B002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:43:27', 467, '2016-02-08 18:48:23', 467, '0000-00-00 00:00:00', 0),
(11, 1, 0, 'B004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:47:51', 467, '2016-02-08 18:47:51', 467, '0000-00-00 00:00:00', 0),
(12, 1, 0, 'B005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 1, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 18:56:31', 467, '2016-02-08 18:56:41', 467, '0000-00-00 00:00:00', 0),
(13, 1, 0, 'B006', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:00:07', 467, '2016-02-08 19:00:07', 467, '0000-00-00 00:00:00', 0),
(14, 1, 0, 'B007', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 3, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:04:12', 467, '2016-02-08 19:04:12', 467, '0000-00-00 00:00:00', 0),
(15, 1, 0, 'C002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:10:24', 467, '2016-02-08 19:10:24', 467, '0000-00-00 00:00:00', 0),
(16, 1, 0, 'C001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:13:51', 467, '2016-02-08 19:13:51', 467, '0000-00-00 00:00:00', 0),
(17, 1, 0, 'C003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:17:35', 467, '2016-02-08 19:17:35', 467, '0000-00-00 00:00:00', 0),
(18, 1, 0, 'A001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:22:49', 467, '2016-02-08 19:22:49', 467, '0000-00-00 00:00:00', 0),
(19, 1, 0, 'A002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:26:24', 467, '2016-02-09 04:08:09', 467, '0000-00-00 00:00:00', 0),
(20, 1, 0, 'A003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:28:58', 467, '2016-02-09 04:05:50', 467, '0000-00-00 00:00:00', 0),
(21, 1, 0, 'A004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:35:36', 467, '2016-02-09 04:09:18', 467, '0000-00-00 00:00:00', 0),
(22, 1, 0, 'D001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:39:23', 467, '2016-02-08 19:39:23', 467, '0000-00-00 00:00:00', 0),
(23, 1, 0, 'D002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:43:23', 467, '2016-02-08 19:43:23', 467, '0000-00-00 00:00:00', 0),
(24, 1, 0, 'D003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:47:25', 467, '2016-02-08 19:47:25', 467, '0000-00-00 00:00:00', 0),
(25, 1, 0, 'D004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-08 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-08 19:50:01', 467, '2016-02-08 19:50:01', 467, '0000-00-00 00:00:00', 0),
(26, 1, 0, 'ฺB002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 1, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 05:02:36', 467, '2016-02-09 05:09:48', 467, '0000-00-00 00:00:00', 0),
(27, 1, 0, 'B003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 05:14:34', 467, '2016-02-09 05:44:07', 467, '0000-00-00 00:00:00', 0),
(28, 1, 0, 'B004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 05:29:04', 467, '2016-02-09 05:44:35', 467, '0000-00-00 00:00:00', 0),
(29, 1, 0, 'B006', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 49, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 1, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 05:36:32', 467, '2016-02-09 05:45:03', 467, '0000-00-00 00:00:00', 0),
(30, 1, 0, 'B005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 05:41:14', 467, '2016-02-09 05:45:30', 467, '0000-00-00 00:00:00', 0),
(31, 1, 0, 'CH002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 06:08:22', 467, '2016-02-09 06:08:22', 467, '0000-00-00 00:00:00', 0),
(32, 1, 0, 'CH003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 06:13:19', 467, '2016-02-09 06:14:02', 467, '0000-00-00 00:00:00', 0),
(33, 1, 0, 'CH004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 06:21:58', 467, '2016-02-09 06:21:58', 467, '0000-00-00 00:00:00', 0),
(34, 1, 0, 'CH005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 06:25:36', 467, '2016-02-09 06:25:36', 467, '0000-00-00 00:00:00', 0),
(35, 1, 0, 'CM001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:01:29', 467, '2016-02-09 07:01:29', 467, '0000-00-00 00:00:00', 0),
(36, 1, 0, 'CM002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:05:19', 467, '2016-02-09 07:05:19', 467, '0000-00-00 00:00:00', 0),
(37, 1, 0, 'CM003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 40, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:07:52', 467, '2016-02-09 07:07:52', 467, '0000-00-00 00:00:00', 0),
(38, 1, 0, 'CM004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 30, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:10:54', 467, '2016-02-09 07:10:54', 467, '0000-00-00 00:00:00', 0),
(39, 1, 0, 'CM005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 25, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:15:47', 467, '2016-02-09 07:15:47', 467, '0000-00-00 00:00:00', 0),
(40, 1, 0, 'AB002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 20, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:43:21', 467, '2016-02-09 07:46:23', 467, '0000-00-00 00:00:00', 0),
(41, 1, 0, 'AB003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 20, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:49:18', 467, '2016-02-09 07:51:02', 467, '0000-00-00 00:00:00', 0),
(42, 1, 0, 'AB004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 20, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 07:56:32', 467, '2016-02-09 07:56:32', 467, '0000-00-00 00:00:00', 0),
(43, 1, 0, 'AB005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 25, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 08:01:17', 467, '2016-02-09 08:01:17', 467, '0000-00-00 00:00:00', 0),
(44, 1, 0, 'EL003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:31:16', 467, '2016-02-09 14:31:16', 467, '0000-00-00 00:00:00', 0),
(45, 1, 0, 'EC001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:34:11', 467, '2016-02-09 14:34:11', 467, '0000-00-00 00:00:00', 0),
(46, 1, 0, 'EL004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:36:56', 467, '2016-02-09 14:36:56', 467, '0000-00-00 00:00:00', 0),
(47, 1, 0, 'EI002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:40:12', 467, '2016-02-09 14:40:12', 467, '0000-00-00 00:00:00', 0),
(48, 1, 0, 'EB005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:43:14', 467, '2016-02-09 14:43:14', 467, '0000-00-00 00:00:00', 0),
(49, 1, 0, 'EC002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:46:11', 467, '2016-02-09 14:46:11', 467, '0000-00-00 00:00:00', 0),
(50, 1, 0, 'EC003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:49:47', 467, '2016-02-09 14:49:47', 467, '0000-00-00 00:00:00', 0),
(51, 1, 0, 'EC004', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 14:56:24', 467, '2016-02-09 14:56:24', 467, '0000-00-00 00:00:00', 0),
(53, 1, 0, 'EH001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 49, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 1, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:10:22', 467, '2016-02-09 15:10:22', 467, '0000-00-00 00:00:00', 0),
(54, 1, 0, 'DK005', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:14:04', 467, '2016-02-09 15:14:04', 467, '0000-00-00 00:00:00', 0),
(55, 1, 0, 'DK006', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:17:43', 467, '2016-02-09 15:17:43', 467, '0000-00-00 00:00:00', 0),
(56, 1, 0, 'DK008', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:23:04', 467, '2016-02-09 15:23:04', 467, '0000-00-00 00:00:00', 0),
(57, 1, 0, 'DK001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:26:15', 467, '2016-02-09 15:26:15', 467, '0000-00-00 00:00:00', 0),
(58, 1, 0, 'DK002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:29:09', 467, '2016-02-09 15:29:09', 467, '0000-00-00 00:00:00', 0),
(59, 1, 0, 'DM001', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:34:46', 467, '2016-02-09 15:34:46', 467, '0000-00-00 00:00:00', 0),
(60, 1, 0, 'DM002', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:38:36', 467, '2016-02-09 15:38:36', 467, '0000-00-00 00:00:00', 0),
(61, 1, 0, 'DM003', '', '', NULL, 'KG', NULL, NULL, NULL, 'M', '', 50, 0, 3, '2016-02-09 00:00:00', '7d.gif', 0, 0, 'KG', NULL, 'min_order_level="1"|max_order_level=""|step_order_level=""|product_box=""|', NULL, '', '', '', 'default', 1, 0, '2016-02-09 15:40:58', 467, '2016-02-09 15:40:58', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_products_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_products_en_gb` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_products_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_products_th_th` (
  `virtuemart_product_id` int(1) unsigned NOT NULL,
  `product_s_desc` varchar(2000) NOT NULL DEFAULT '',
  `product_desc` varchar(18400) NOT NULL DEFAULT '',
  `product_name` char(180) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_products_th_th`
--

INSERT INTO `mhyjf_virtuemart_products_th_th` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(5, 'ประเภทของการรับประกัน: รับประกันสินค้า 2 ปี\r\n•	ช่วยให้งานพิมพ์และงานสแกนเอกสารต่างๆ\r\n•	เครื่อง All-in-One ที่มีฟังก์ชั่นการใช้งาน\r\n•	สามารถตอบโจทย์งานเกี่ยวกับเอกสารทุกชนิด\r\n•	งานพิมพ์คุณภาพ มาพร้อมความประหยัด\r\n', 'เครื่องที่จะช่วยให้งานพิมพ์และงานสแกนเอกสารต่างๆ ของคุณเป็นเรื่องที่ง่ายขึ้น รวดเร็วขึ้น ประหยัดมากขึ้น เป็นเครื่อง \r\nAll-in-One ที่มีฟังก์ชั่นการใช้งานที่หลากหลายครบครันและมีคุณภาพอายุการใช้งานที่ยาวนานอีกด้วย การันตีว่าจะสามารถตอบโจทย์งานเกี่ยวกับเอกสารทุกชนิดให้กับคุณได้อย่างแน่นอน \r\nคุณสมบัติ \r\nงานพิมพ์คุณภาพ คมชัดกว่าที่เคย \r\nEpson All In One Inkjet Printers L220 \r\nเป็นเครื่องพิมพ์ที่ครบเครื่องด้วยฟังก์ชั่นการใช้งานที่หลากหลาย \r\nมีความละเอียดในการพิมพ์สีถึง 5,760 x 1,440 dpi \r\nและความละเอียดในการสแกนสูงสุดที่ 600 DPI x 1,200 DPI \r\nความเร็วในการพิมพ์ขาว-ดำและการพิมพ์แบบสีอยู่ที่จำนวน 15 และ 27 \r\nแผ่นต่อนาทีตามลำดับ สามารถรองรับขนาดกระดาษได้หลายขนาด ทั้ง A4, A5, A6, \r\nB5, C6 และอีกมากมาย จึงถือเป็นเครื่องพิมพ์ที่มากด้วยความสามารถ \r\nเเละให้คุณใช้งานได้อย่างคุ้มค่าคุ้มราคา \r\nคุณภาพการใช้งานที่ทนทาน \r\nEpson All In One Inkjet Printers L220 \r\nเป็นเครื่องพิมพ์คุณภาพระดับมาตรฐานสากล \r\nส่วนประกอบทุกชิ้นได้รับการคัดสรรมาอย่างพิเศษ \r\nเพื่อความทนทานและอายุการใช้งานที่ยาวนานมากขึ้น \r\nเเละพร้อมให้คุณมั่นใจได้เลยว่าเครื่องพิมพ์รุ่นนี้จะอยู่คู่การใช้งานกับ\r\nคุณไปอย่างยาวนานแน่นอน \r\n', 'Epson L220 INK TANK', '', '', '', 'epson-l220-ink-tank'),
(6, 'ประเภทของการรับประกัน: No warranty provided\r\n•	หมึกเลเซอร์เทียบเท่าคุณภาพสูง\r\n•	ราคาประหยัด\r\n•	พิมพ์ได้ 2000 แผ่น\r\n', 'Product details of Click หมึกพิมพ์สำหรับปริ้นเตอร์ Canon 325 สำหรับเครื่องพิมพ์รุ่น Canon Laser Shot LBP6000\r\nหมดปัญหา หมึกซีดจาง ผงหมึกรั่วออกมา หมึกหมดเร็วด้วย Click ตลับหมึก Toner-Re Canon 325 คุณภาพดี ราคาประหยัด ตรงสเปค คุณภาพหมึกเทียบเท่า ของแท้ (OEM) Toner-Re Canon 325 สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์ \r\n\r\nรายละเอียดสินค้า\r\n- สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์\r\n- ใช้ได้กับพริ้นเตอร์  HP LaserJet Pro P1102/P1102w/M1132/M1212nf Canon Laser Shot LBP6000 \r\n- ปริมาณการพิม % บนกระดาษขนาด A4 พริ้นเอกสารได้ 2,000 แผ่น\r\n- คุณภาพ หมึกเทียบเท่า ของแท้ (OEM)\r\n- ปลอดภัย ไม่ส่งผลเสียต่อเครื่อง\r\n- พิมพ์ชัด \r\nข้อมูลจำเพาะของ Click หมึกพิมพ์สำหรับปริ้นเตอร์ Canon 325 สำหรับเครื่องพิมพ์รุ่น Canon Laser Shot LBP6000\r\nรายการสินค้าในกล่อง\r\n•	Toner-Re Canon 325\r\n•	คู่มือการใช้งาน\r\nคุณสมบัติทั่วไป\r\nSKU	CL551ELAEEN7ANTH-677705\r\nสี	black\r\nเพศ	Unisex\r\nโมเดล	Canon 325\r\nSize (cm)	11 x 33 x 13\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.785\r\n', 'Canon Laser Shot LBP6000', '', '', '', 'canon-laser-shot-lbp6000'),
(7, 'ประเภทของการรับประกัน: No warranty provided\r\n•	หมึกเลเซอร์เทียบเท่าคุณภาพสูง\r\n•	ราคาประหยัด\r\n•	พิมพ์ได้ 2000 แผ่น\r\n', 'หมดปัญหา หมึกซีดจาง ผงหมึกรั่วออกมา หมึกหมดเร็วด้วย Click ตลับหมึก Toner-Re Canon 325 คุณภาพดี ราคาประหยัด ตรงสเปค คุณภาพหมึกเทียบเท่า ของแท้ (OEM) Toner-Re Canon 325 สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์ \r\n\r\nรายละเอียดสินค้า\r\n- สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์\r\n- ใช้ได้กับพริ้นเตอร์  HP LaserJet Pro P1102/P1102w/M1132/M1212nf Canon Laser Shot LBP6000 \r\n- ปริมาณการพิม % บนกระดาษขนาด A4 พริ้นเอกสารได้ 2,000 แผ่น\r\n- คุณภาพ หมึกเทียบเท่า ของแท้ (OEM)\r\n- ปลอดภัย ไม่ส่งผลเสียต่อเครื่อง\r\n- พิมพ์ชัด \r\n', 'Canon Laser Shot LBP6000', '', '', '', 'canon-laser-shot-lbp6000-1'),
(8, 'Processor Number	AMD FX 8-Core Black Edition\r\nNumber of Cores	8\r\nNumber of Threads	8\r\nClock Speed	3500 MHz.\r\n3.5 GHz. (4.0 GHz. Turbo)\r\nBus Speed	One 2600 MHz 16-bit HyperTransport link\r\nBit Technology	64 bit\r\nL2 Cache	4 x 2 MB.\r\nL3 Cache	8 MB.\r\nType Socket	AM3+\r\nOther	-\r\nWarranty	3 Years\r\n', 'CPU ระดับไฮ-เอนด์จาก AMD รุ่น FX-8320 สำหรับคอมพิวเตอร์แบบตั้งโต๊ะ 8 แกน มาพร้อมกับความเร็วในการประมวลผล 3.5 GHz จนถึง 4.0 GHz รองรับการทำงานในระบบปฏิบัติการทั้ง 32 bit และ 64 bit มี L2 Cache 8 MB (4 X 2) และ L3 Cache 8 MB รองรับการทำงานบนเมนบอร์ด socket AM3+ ใช้พลังงาน 125W\r\nด้วยประสิทธิภาพของซีพียูระดับไฮ-เอนด์จาก AMD ช่วยให้คอมพิวเตอร์ของคุณทำงานได้ไวขึ้น เร็วและแรงเต็มประสิทธิภาพ คุณจึงใช้งานคอมพิวเตอร์ได้อย่างสบายๆ แม้ว่าจะเป็นการใช้งานอย่างหนักทั้งในเรื่องของการเล่นเกมส์ที่ต้องใช้กราฟฟิกเยอะๆ\r\n', 'CPU', '', '', '', 'cpu'),
(9, '•	Core clock 1076 MHz (base) 1216 MHz (boost)\r\n•	Memory Size 4GB\r\n•	SLI Supported 3-way\r\n•	Max Resolution 4K\r\n', 'ข้อมูลจำเพาะของ Zotac การ์ดจอ รุ่น GTX970 (4Gb) รับประกัน 5 ปี\r\nรายการสินค้าในกล่อง\r\n•	การ์ดจอ Zotac รุ่น GTX970 (4GB) รับประกัน 5 ปี\r\nคุณสมบัติทั่วไป\r\nSKU	ZO086ELATVHEANTH-1354355\r\nเพศ	Unisex\r\nRAM (GB)	4\r\nโมเดล	GTX 970 ZT\r\nSize (cm)	26.7 x 11.1 x 4.2\r\nการรับประกันสินค้า	5 Year Warranty (3+2 Register)\r\nWeight (kg)	1\r\n\r\n', 'Graphic Card', '', '', '', 'graphic-card'),
(10, 'ประเภทของการรับประกัน: 3 Years\r\n•	Capacity 2.0 TB\r\n•	Spin Speed 7200 RPM\r\n•	Drive Size 3.5"\r\n•	Buffer Size 64 MB\r\n•	Interface SATA 3\r\n', 'Product details of WD Storage Desktop Hard Drives 2TB SATA III 7200RPM 64MB 3.5” - Caviar Black (WD2003FZEX)\r\nให้คุณจัดเก็บข้อมูลที่มากมาย และรองรับการถ่ายโอนข้อมูลได้ทุกประเภทง่ายๆด้วย WD Storage Desktop Hard Drives 2TB SATA III 7200RPM 64MB 3.5” - Caviar Black (WD2003FZEX) ฮาร์ดดิสก์ที่มีประสิทธิภาพสูงเพื่อการทำงานที่ลื่นไหล \r\n\r\nคุณสมบัติเด่น\r\n\r\nประสิทธิภาพสูงสุด \r\nWD Storage Desktop Hard Drives 2TB SATA III 7200RPM 64MB 3.5” - Caviar Black (WD2003FZEX) ฮาร์ดดิสก์ประสิทธิภาพสูงสำหรับผู้ใช้ระดับไฮเอนด์ (เพื่อการเล่น) งานกราฟฟิกและงานตัดต่อวิดีโอระดับมืออาชีพ ที่มาพร้อมแคชขนาด 32 MB มีชิพประมวลผลคู่ทำให้เข้าถึงข้อมูลได้รวดเร็วขึ้น กว่าเดิมประสิทธิภาพเต็มเปี่ยมด้วย ไดร์ฟ SATA ความเร็วในการหมุน 7200 RPM แคชสูงสุด 64 MB อินเตอร์เฟช SATA 3Gb/s และหน่วยประมวลผลคู่แบบอินทิเกรตเข้าไว้ด้วยกัน เพื่อเพิ่มประสิทธิภาพที่รวดเร็วสำหรับเดสก์ท็อปสเตชั่นและเครื่องระบบมัลติไดรฟ์ที่มีความต้องการประสิทธิภาพระดับสูง \r\n\r\nข้อมูลจำเพาะ \r\n- Capacity : 2.0 TB. \r\n- Spin Speed : 7200 RPM. \r\n- Drive Size : 3.5"\r\n- Buffer Size : 64 MB. \r\n- Interface : SATA 3\r\nข้อมูลจำเพาะของ WD Storage Desktop Hard Drives 2TB SATA III 7200RPM 64MB 3.5” - Caviar Black (WD2003FZEX)\r\nรายการสินค้าในกล่อง\r\n•	WD Storage Desktop Hard Drives 2TB SATA III 7200RPM 64MB 3.5” - Caviar Black (WD2003FZEX)\r\nคุณสมบัติทั่วไป\r\nSKU	WD005ELAPLJZANTH-1100614\r\nสี	silver\r\nเพศ	Unisex\r\nโมเดล	WD2003FZEX\r\nSize (cm)	14.7 x 10.2 x 2.5\r\nการรับประกันสินค้า	3 Years\r\nWeight (kg)	0.439\r\n', 'HDD FOR PC', '', '', '', 'hdd-for-pc'),
(11, 'ประเภทของการรับประกัน: รับประกันสินค้า 3 ปี\r\n•	Type Socket : 775\r\n•	Memory Type : 2 x 1.5V DDR3 DIMM up to 8 GB 1333\r\n•	Chipset : North Bridge: Intel(R) G41 Express Chipset\r\n', 'ข้อมูลจำเพาะของ GIGABYTE Main Board SOCKET 775 GA-G41M-COMBO R2.0\r\nรายการสินค้าในกล่อง\r\n•	GIGABYTE M/B 775 GA-G41M-COMBO R2.0\r\nคุณสมบัติทั่วไป\r\nSKU	GI407ELAHA2LANTH-797666\r\nเรตข้อมูล	DDR2\r\nเพศ	Unisex\r\nSize (cm)	24.4 x 21 x 4\r\nการรับประกันสินค้า	รับประกันสินค้า 3 ปี\r\nWeight (kg)	0.5\r\n\r\n', 'MAINBOARD', '', '', '', 'mainboard'),
(12, 'ประเภทของการรับประกัน: รับประกันสินค้า 3 ปี\r\nDisplay Size: 24"\r\nResolution: 1920 x 1080\r\nBrightness: 250 cd/m2\r\nContrast Ratio: 1000:1\r\nResponse time	2 ms\r\nInput signal: D-Sub, DVI-D\r\nWarranty: 3', 'ข้อมูลจำเพาะของ BENQ MONITOR LED 24 " GL2460\r\n\r\nรายการสินค้าในกล่อง	\r\n24" LED BENQ GL2460Manual GuideDriverPower ACVGA Cable\r\nคุณสมบัติทั่วไป\r\nSKU	BE125ELARGE5ANTH-1222399\r\nCPU Speed (GHz)	0.00\r\nคุณสมบัติด้านการแสดงผล	Full HD\r\nขนาดหน้าจอ	0.0\r\nEnergy rating (stars)	0.0\r\nเพศ	Unisex\r\nเมกะพิกเซล	0.0\r\nโมเดล	24" LED BENQ GL2460\r\nออฟติคอลซูม	0.0\r\nSize (cm)	64.9 x 12.3 x 41.7\r\nการรับประกันสินค้า	รับประกันสินค้า 3 ปี\r\nWeight (kg)	4.3', 'BENQ MONITOR LED 24', '', '', '', 'benq-monitor-led-24-gl2460'),
(13, 'ประเภทของการรับประกัน: No Warranty Provided\r\n•	Support SATA HD.\r\n•	100% high-temperature aging, ATE and high-voltage test.\r\n•	Six protection funtion : anti-overvoltage, anti-under-voltage, anti-over-current, \r\n•	anti-overload, anti-short-circuit and anti-lightning\r\n', 'ข้อมูลจำเพาะของ Dtech Power EB-450W. (24 PIN) SATA+IO (NO BOX) PW029\r\nรายการสินค้าในกล่อง\r\n•	Dtech Power EB-450W.  (24 PIN) SATA+IO (NO BOX) PW029\r\nคุณสมบัติทั่วไป\r\nSKU	DT327ELAUM05ANTH-1392457\r\nเพศ	Unisex\r\nโมเดล	EB450W\r\nSize (cm)	15 x 14 x 8.5\r\nการรับประกันสินค้า	No Warranty Provided\r\nWeight (kg)	0.71\r\n', 'Dtech Power EB-450W', '', '', '', 'dtech-power-eb-450w'),
(14, 'ประเภทของการรับประกัน: No Warranty\r\n•	ความจุ: 2GB\r\n•	Pins: 240-Pin\r\n•	แรงดันไฟฟ้า: 1.8V\r\n•	ฟอร์มแฟคเตอร์: DIMM\r\n•	ชนิด:DDR2 SDRAM\r\n•	Bus Speed:PC2-6400 (DDR2-800)\r\n', 'ข้อมูลจำเพาะของ OEM 2GB PC6400 DDR2-800MHz PC2-6400 DIMM Memory\r\nคุณสมบัติทั่วไป\r\nSKU	OE857ELBE28DANTH-1953273\r\nCare label	สินค้านำเข้า/ IMPORTED\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nSize (cm)	7 x 3 x 2\r\nการรับประกันสินค้า	No Warranty\r\nWeight (kg)	0.02\r\nหน่วยความจำแรม (GB)	2\r\n', 'RAM', '', '', '', 'ram'),
(15, 'ประเภทของการรับประกัน: No warranty Provided\r\n•	USB connection,support Hot plug & Play.\r\n•	No external power supply requird.\r\n•	Support different types of os.\r\n•	Solid State Storage, Shock proof and electromagnetic proof.\r\n•	Write/delect protection switch\r\n•	Durable data storage\r\n•	Fast speed in write/read transfer\r\n•	Hardware Requirement: PC with USB connection,Notebook,MAC\r\n', 'ข้อมูลจำเพาะของ New 64GB 64G USB 2.0 Flash Drive Memory Stick Pen Drive Storage Thumb U Disk Gift Pendrive (Intl)\r\nรายการสินค้าในกล่อง\r\n•	1 x 64GB USB Flash Drive\r\nคุณสมบัติทั่วไป\r\nSKU	OE857ELAA224VUANTH-4445929\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nโมเดล	USB Flash Drive\r\nSize (cm)	10x10x10\r\nการรับประกันสินค้า	No warranty Provided\r\nWeight (kg)	0.02\r\n', 'Flash Drive', '', '', '', 'flash-drive'),
(16, 'ประเภทของการรับประกัน: No Warranty provided\r\n•	High quality\r\n•	Fine design\r\n•	Easy to meet\r\n', 'ข้อมูลจำเพาะของ joyliveCY Ultra Slim SATA Hard Drive Disk HDD External Enclosure Case Box Pink (Intl)\r\nรายการสินค้าในกล่อง\r\n•	1 x joyliveCY Ultra Slim SATA Hard Drive Disk HDD External Enclosure Case Box Pink\r\nคุณสมบัติทั่วไป\r\nSKU	JO069ELAA1UBDUANTH-3967970\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nSize (cm)	30 x 20 x 30\r\nการรับประกันสินค้า	No Warranty provided\r\nWeight (kg)	0.36\r\n\r\n', 'Hard Disk External', '', '', '', 'hard-disk-external'),
(17, 'ประเภทของการรับประกัน: Lifetime Warranty\r\n•	ขนาดความจุ 16GB\r\n•	ความเร็วในการอ่าน 10 MB/วินาที\r\n•	ใช้บันทึกไฟล์วิดีโอแบบ HD\r\n', 'คุณสมบัติ\r\n\r\nถ่ายโอนข้อมูลรวดเร็ว\r\nKingston Micro SDHC/SDXC Card - Class 10 16GB ความจุขนาด 16GB ขนาดเล็กกะทัดรัดพกพาสะดวก มาพร้อมอัตราความเร็วในการอ่านและถ่ายโอนข้อมูล 10 MB/วินาที ทำให้การถ่ายโอนข้อมูลและอ่านข้อมูลเป็นไปอย่างง่ายดายและรวดเร็ว โดยไม่ต้องรอนาน ใช้สำหรับจัดเก็บและถ่ายโอนข้อมูลทุกประเภท อาทิ เช่น รูปภาพ วิดีโอ เพลง เกมส์ ฯลฯ ไปยังอุปกรณ์อิเล็กทรอนิกส์ประเภทต่างๆ เหมาะสำหรับใช้งานกับมือถือ แท็บเล็ต และกล้องถ่ายรูป\r\n\r\nปกป้องข้อมูลอย่างปลอดภัยสูงสุด\r\nนอกจากนี้ยังมาพร้อมระบบปกป้องและป้องกันข้อมูลสูญหาย เหมาะสำหรับบันทึกไฟล์วิดีโอแบบ HD และไฟล์งานในรูปแบบอื่นๆ ไมโคร SD การ์ด ของ Kingston รุ่นนี้ได้รับการรับประกันคุณภาพแบบ Lifetime หรือตลอดอายุการใช้งาน \r\n\r\nข้อมูลจำเพาะ\r\n- ความจุ1: 16GB\r\n- ความเร็ว2: Class 10: อัตราการถ่ายโอนข้อมูลขั้นต่ำ 10MB/s\r\n- รองรับ: มาตรฐานทางเทคนิคของ SD Card Association\r\n- รองรับกับอุปกรณ์ กับอุปกรณ์ microSDHC/SDXC เท่านั้น\r\n- เชื่อถือได้: รับประกันตลอดอายุการใช้งาน\r\n- ขนาด: ขนาด 0.43'''' x 0.59'''' x 0.039'''' (11 x 15 x 1 มม.)\r\n- อุณหภูมิการทำงาน: 13ºF ถึง 185ºF (-25ºC ถึง 85ºC)\r\n- อุณหภูมิการจัดเก็บ: -40ºF ถึง 185ºF (-40ºC ถึง 85ºC)\r\n', 'Kingston Memory Card', '', '', '', 'kingston-memory-card'),
(18, 'เครื่องพิมพ์บาร์โค้ดรุ่นใหม่ที่มีขนาดกระทัดรัด ความคงทน และแม่นยำสูงเหมาะสำหรับงานพิมพ์ทุกรูปแบบ ขนาดกระทัดรัดทำให้ประหยัดพื้นที่การใช้งาน รูปแบบโครงสร้างของ เครื่องพิมพ์บาร์โค้ด เป็น แบบ Modular Design ทำให้ง่ายต่อการบำรุงรักษา และการถอดเปลี่ยนอุปกรณ์เสริมต่างๆ M-Class Barcode Printer เหมาะสำหรับหลากหลายอุตสาหกรรม เช่น สถานพยาบาล อุตสาหกรรม ร้านค้าปลีก ขนส่ง เป็นต้น', 'คุณสมบัติ Datamax-O''Neil M-Class Mark II\r\n•	เครื่องพิมพ์บาร์โค้ดง่ายต่อการบำรุงรักษา \r\n•	อุปกรณ์เสริมของเครื่องพิมพ์บาร์โค้ดครบครัน ด้านการต่อพ่วง Network \r\n•	เครื่องพิมพ์บาร์โค้ดง่ายต่อการใช้งาน สำหรับผู้ใช้ทุกระดับด้วยจอ LCD แสดงสถานะของเครื่องพิมพ์บาร์โค้ด และการตั้งค่าต่าง ๆ\r\n•	สามารถเพิ่มความสามารถเพื่อพิมพ์ UHF และ HF RFID ได้\r\nDatamax-O''Neil M-Class Mark II Application\r\n•	สถานพยาบาล\r\n•	ธุรกิจอุตสาหกรรม\r\n•	ธุรกิจร้านค้าปลีก\r\n•	ธุรกิจร้านค้าส่ง\r\n•	ร้านค้าการขนส่ง\r\nDatamax-O''Neil M-Class Mark II Specifications\r\n•	Datamax M-4206  \r\no	เครื่องพิมพ์บาร์โค้ด พิมพ์ได้กว้าง  4 นิ้ว\r\no	เครื่องพิมพ์บาร์โค้ด ความละเอียด  203 จุด/นิ้ว(dpi)\r\no	เครื่องพิมพ์บาร์โค้ด ความเร็วในการพิมพ์  6 นิ้ว/วินาที(ips)\r\n•	Datamax M-4210\r\no	เครื่องพิมพ์บาร์โค้ด พิมพ์ได้กว้าง  4 นิ้ว\r\no	เครื่องพิมพ์บาร์โค้ด ความละเอียด  203 จุด/นิ้ว(dpi)\r\no	เครื่องพิมพ์บาร์โค้ด ความเร็วในการพิมพ์  10 นิ้ว/วินาที(ips)\r\n•	Datamax M-4308\r\no	เครื่องพิมพ์บาร์โค้ด พิมพ์ได้กว้าง  4 นิ้ว\r\no	เครื่องพิมพ์บาร์โค้ด ความละเอียด  300 จุด/นิ้ว(dpi)\r\no	เครื่องพิมพ์บาร์โค้ด ความเร็วในการพิมพ์  8 นิ้ว/วินาที(ips)\r\n', 'Barcode Printer', '', '', '', 'barcode-printer'),
(19, 'ประเภทของการรับประกัน: รับประกัน 6 เดือนโดย TeleCorsa\r\n•	มีช่องต่อครบครัน เช่น ช่องAV,VGA,SD,USB,HDMI;โดยที่เพิ่มเข้ามาคือ HDMI\r\n•	พกพาไปไหนสะดวก\r\n•	ขยายได้ถึง 100 นิ้ว\r\n•	หลอด LED มีอายุการใช้งานยาวนาน\r\n•	ง่ายต่อการพกพา ประหยัดพลังงาน\r\n', 'Product details of TeleCorsa หลอด LED Projector VGA All in one มีลำโพงในตัว รุ่น PJT1350 UC28 (สีขาว)\r\nTeleCorsa หลอด LED Projector VGA All in one มีลำโพงในตัว รุ่น PJT1350 UC28 (สีขาว) มาพร้อมกับ สายแปลงสัญญาณ AV-In\r\nคุณสมบัติ \r\n- รุ่นนี้ออกแบบมาได้อย่างสมบูรณ์แบบโดยทำการแก้ไขข้อบกพร่องและอายุการใช้งานของรุ่นก่อนหน้านี้ให้มีประสิทธิภาพและทนทาน \r\n- หลอดภาพ LED ทนกว่า 20,000 ชั่วโมงและให้ภาพที่สวยงามกว่าหลอดใส้ \r\n- สามารถตั้งค่าโฟกัสได้และได้ภาพขนาดใหญ่ขึ้น \r\n- สามารถแก้ไขระบบด้วยตัวเองเมื่อเกิดข้อผิดพลาด \r\n- มีขนาดพกพา และน้ำหนักเบามาก \r\n- สามารถตั้งค่าขนาดภาพได้แบบ 16:9 หรือ 4:3 \r\n- ประหยัดไฟมาก และเครื่องไม่มีความร้อนออกมาเลย \r\n- มีช่องต่อครบครัน เช่นช่องAV,VGA,SD,USB,HDMI;โดยที่เพิ่มเข้ามาคือ HDMI \r\n- ใช้ต่อไฟฟ้าจากรถได้สบายๆและใช้งานง่ายสบายกระเป๋า \r\n- สามารถต่อเข้ากับคอมหรือ notebook ด้วยสาย VGA หรือ HDMI \r\n- สามารถต่อเข้ากับ DVD หรือ เครื่องเกมที่มีสาย AV \r\n- มี USB และ SD Card input\r\nSpecifications \r\n- Audio Input: 3.5mm หูฟ้ง \r\n- Input: 110-240V, 50/60Hz \r\n- ขนาดเครื่อง: 5" x 4.75" x 2.3" \r\n- ระยะแสง: 1-4 เมตร \r\n- ขนาดของภาพ: 20-100 inches \r\n- Audio: Stereo Input \r\n- Lighting: LED \r\n- Resolution: 320 x 240 \r\n- Brightness: 48 lumens\r\n\r\nบริการหลังการขายและประกัน 6 เดือน โดย TeleCorsa Group\r\n', 'Projector', '', '', '', 'projector'),
(20, 'ประเภทของการรับประกัน: รับประกันสินค้า 1 ปี\r\n•	High Quality\r\n•	Good Product\r\n•	Good Material\r\n', 'ข้อมูลจำเพาะของ Canon Scanner รุ่น Lide 120 (Black)\r\nรายการสินค้าในกล่อง\r\n•	Canon Scanner รุ่น Lide 120 (Black)\r\nคุณสมบัติทั่วไป\r\nSKU	CA175ELBQYXUANTH-2648922\r\nเพศ	Unisex\r\nโมเดล	LIDE 120\r\nSize (cm)	25.15x37.03x4.06\r\nการรับประกันสินค้า	รับประกันสินค้า 1 ปี\r\nWeight (kg)	1.70\r\nความชัดเจนของการแสกน (DPI)	4800\r\nประเภทของเครื่องแสกน	เครื่องสแกนแบบระนาบ\r\n\r\n', 'Canon Scanner', '', '', '', 'canon-scanner'),
(21, 'อุปกรณ์สร้างสัญญาณภาพ1/2.7" CMOS\r\nจำนวนรวมของพิกเซล2000000\r\nขนาดเลนส์F=3.4-5\r\nระบบการซูมภาพแบบ120X(12X Optical,10X Digital)\r\nพื้นที่รับภาพ(สูงสุด)11.7" x 20.7"\r\n', 'Epson ELP-DC20 Product Specification\r\n	 \r\n\r\n\r\n \r\nLens	F=3.4-5\r\nCamera (Image Pickup Device)	1/2.7" CMOS\r\nTotal number of Pixels	2000000\r\nFrame Rate	30fps\r\nZoom Control	120X(12X Optical,10X Digital)\r\nFocusing	auto\r\nWhite Balance	auto\r\nImage mode	Exposure Auto\r\nBrightness Auto\r\nImage rotation	90°\r\nShooting Area(Minimum)	11.7" x 16.5"\r\nShooting Area(Maximum)	11.7" x 20.7"\r\nInput Terminals	VGA\r\nmic input 3\r\nUSB-A (for PC-free annotation, USB flash drive)\r\nOutput Terminals	VGA\r\nUSB-B\r\nHDMI\r\nComposite video\r\nPower source	100 to 240 V AC/DC\r\nPower Consumption	17W\r\nDimensions In Operation	210 x 312 x 477 (W x D x H)\r\nDimension Folded	367 x 122 x 120 (W x D x H)\r\nWeight	3kg\r\n\r\n\r\n', 'Epson ELP-DC20', '', '', '', 'epson-elp-dc20'),
(22, 'ประเภทของการรับประกัน: No Warranty provided\r\n•	Headband\r\n•	Bluetooth4.0\r\n•	Double\r\n•	In-Ear\r\n', 'ข้อมูลจำเพาะของ GETEK Wireless Bluetooth Headset Earphones For Mobile Phone Iphone Samsung LG (Pink)\r\nรายการสินค้าในกล่อง\r\n•	1 x GETEK Bluetooth Earphone for Samsung LG HTC Pink\r\n•	1 x Micro USB\r\nคุณสมบัติทั่วไป\r\nSKU	GE413ELAYUL2ANTH-1667801\r\nCare label	สินค้านำเข้า/ IMPORTED\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nSize (cm)	6 x 3 x 3\r\nการรับประกันสินค้า	No Warranty provided\r\nWeight (kg)	0.3\r\n\r\n\r\n', 'Headset Earphones For Mobile Phone', '', '', '', 'headset-earphones-for-mobile-phone'),
(23, 'ประเภทของการรับประกัน: 3 month warranty\r\n•	ระบบคีย์บอร์ดแบบ Membrane (แผงวงจรไฟฟ้า)\r\n•	สามารถกดปุ่มคีย์บอร์ดพร้อมกันได้ 18 ปุ่ม\r\n•	Spill protection กันน้ำหกใส่คีย์บอร์ด\r\n', 'Product details of NUBWO Keyboard รุ่น Amoux NK-002 USB (Black)\r\nNUBWO Keyboard รุ่น Amoux NK-002 USB (Black)\r\n\r\nSmart Keyboard Nubwo USB Gaming Amoux รุ่น NK-002 เกมมิ่งคีย์บอร์ดสำหรับเกมส์โดยเฉพาะ มีการออกแบบรูปลักษณ์ภายในนอกให้ดูสวยงาม ตัดแต่งขอบสไตล์เกมเมอร์ รูปทรงทันสมัย ปุ่มกดนิ่ม กดง่าย ตอบสนองการกดทันที สามารถถอดเปลี่ยนปุ่มสำหรับเล่นเกมได้ สามารถบันทึกชุดคำสั่งได้ทุกปุ่ม หรือจะยกเลิกการใช้งานปุ่มที่ไม่ต้องการก็ได้ \r\n\r\nคุณสมบัติ \r\n- ระบบคีย์บอร์ดแบบ Membrane (แผงวงจรไฟฟ้า) \r\n- สามารถกดปุ่มคีย์บอร์ดพร้อมกันได้ 18 ปุ่ม \r\n- Spill protection กันน้ำหกใส่คีย์บอร์ด (ใต้ตัวมันจะมีระบบกันน้ำเข้าครับ) \r\n- สามารถถอดเปลี่ยนปุ่มได้ -สายยาว 180 เซ็นติเมตร: \r\n- ปุ่ม wasd และลูกศรเป็นสีเหลืองโดดเด่น \r\n- มีความทนทานสูง กดได้มากกว่า 15 ล้านครั้ง\r\nข้อมูลจำเพาะของ NUBWO Keyboard รุ่น Amoux NK-002 USB (Black)\r\nรายการสินค้าในกล่อง\r\n•	NUBWO Keyboard รุ่น Amoux NK-002 USB (Black)\r\nคุณสมบัติทั่วไป\r\nSKU	NU679ELAA2DZCOANTH-5160626\r\nเพศ	Unisex\r\nโมเดล	nk002\r\nSize (cm)	15x45x3\r\nการรับประกันสินค้า	3 month warranty\r\nWeight (kg)	0.2\r\n\r\n', 'NUBWO Keyboard', '', '', '', 'nubwo-keyboard'),
(24, 'ประเภทของการรับประกัน: No Warranty\r\n•	เมาส์ไร้สาย 2.4 GHz  \r\n•	ระบบติดตามการทำงาน\r\n•	เชื่อมต่อและใช้งานได้ทันที\r\n•	ช่องทางการใช้งานไร้สาย 16 ช่องทาง ตัวเปิดสัญญาณรับคลื่นความถี่แบบอัตโนมัติ\r\n•	รองรับการใช้งานร่วมกับ Windows 2000/XP/Vista/Linux/Win 7/MAC\r\n', 'Product details of Moonar เม้าส์ Optical ไร้สาย 2.4GHz USB (สีดำ)\r\nMoonar เม้าส์ Optical ไร้สาย 2.4GHz USB (สีดำ)\r\n\r\nคุณสมบัติ\r\n1. เมาส์ไร้สายที่ได้รับการออกแบบสไตล์ Ergonomics สำหรับการใช้ในบ้านและที่ทำงาน\r\n2. ระบบติดตามการทำงานที่สามารถทำงานได้บนสภาพพื้นผิวที่หลากหลาย\r\n3. ช่องทางการใช้งานไร้สาย 16 ช่องทาง ตัวเปิดสัญญาณรับคลื่นความถี่แบบอัตโนมัติ\r\n4. คลื่นความถี่: 2402MHz-2480MHz\r\n5. ระยะสัญญาณของ Wi-Fi: 5-9m.\r\n6. ค่ากระแสทำงาน: 8-15mA@1.5V/3V\r\n7. สี: ดำ\r\n8. ขนาดของเมาส์: 100x 65 x 35mm\r\n9. ขนาดของตัวรับสัญญาณ USB: 18 x 14 x 5mm.\r\n10. น้ำหนักของเมาส์: 64g \r\n11. ทำงานโดย แบตเตอรี่ AAA 2 ตัว (ไม่รวมอยู่ในรายการ)\r\n12. รองรับการใช้งานกับโน้ตบุ๊คและคอมพิวเตอร์เกือบทุกรุ่นผ่านตัวรับสัญญาณ USB (บรรจุภายในเม้าส์) ตัวอย่างเช่น Windows 2000/XP/Vista/Linux/Win 7/MAC\r\nสินค้าภายในกล่อง:\r\n1 x เมาส์ไร้สาย\r\n1 x ตัวรับสัญญาณ USB\r\n\r\nข้อควรระวัง:\r\n1. คุณภาพของสัญญาณขึ้นอยู่กับสภาพแวดล้อมโดยรอบ\r\n2. เมาส์จะปิดการทำงานโดยอัตโนมัติและจะเปลี่ยนไปเป็นโหมด Sleeping เพื่อเป็นการประหยัดพลังงานเมื่อไม่ได้ถูกใช้งานมาเป็นเวลานาน หากต้องการใช้งานอีกครั้ง ให้คลิกซ้ายหรือคลิกขวาที่เม้าส์\r\nข้อมูลจำเพาะของ Moonar เม้าส์ Optical ไร้สาย 2.4GHz USB (สีดำ)\r\nรายการสินค้าในกล่อง\r\n•	1 x เมาส์ไร้สาย\r\n•	1 x ตัวรับสัญญาณ USB\r\nคุณสมบัติทั่วไป\r\nSKU	MO213ELAV4X0ANTH-1421975\r\nCare label	สินค้านำเข้า/ IMPORTED\r\nเพศ	Unisex\r\nSize (cm)	6 x 3 x 3\r\nการรับประกันสินค้า	No Warranty\r\nWeight (kg)	0.3\r\n\r\n', 'Mouse', '', '', '', 'mouse'),
(25, 'ประเภทของการรับประกัน: No warranty provided\r\n•	ให้เสียงคมชัด\r\n•	สามารถเชื่อมต่อ Bluetooth\r\n•	สามารถพกพาสะดวก\r\n•	เทคโนโลยี BXS ระบบเสียงสุดยอด\r\n•	รองรับเล่นเพลงจาก SD Card ได้ในตัว\r\n', 'Product details of MD ลำโพงบลูทูธ Mini Bluetooth Speaker รุ่น S10 - สีทอง\r\nMD ลำโพงบลูทูธ Mini Bluetooth Speaker รุ่น S10 - สีทอง \r\n\r\nคุณสมบัติ \r\nจิ๋วแต่แจ๋วด้วย MD ลำโพงบลูทูธ Mini Bluetooth Speaker รุ่น S10 มาพร้อมกับคุณภาพเสียงที่น่าประทับใจ ด้วยลำโพงบลูทูธเสียง BASS แน่น ด้วยเทคโนโลยี BXS เป็นลำโพงที่สะดวกต่อการพกพา \r\nสามารถเชื่อมต่อผ่านระบบ Bluetooth ไร้สาย และยังสามารถใช้ในระบบ Radio และ SD player อีกด้วย \r\n\r\nข้อมูลจำเพาะ\r\n- รองรับการทำงาน Bluetooth V2.1\r\n- ความจุแบตเตอรี่ 520 mAh\r\n- ระบบการชาร์จไฟ 5.0 V (ระยะเวลาชาร์จ 2 ชั่วโมง)\r\n- ระยะทาง 10 เมตร\r\n- ขนาด : 60 x 60 x 50 mm\r\n- น้ำหนัก: 230 กรัม\r\n- เวลาการใช้งานอย่างต่อเนื่อง: 3 ชั่วโมง\r\nข้อมูลจำเพาะของ MD ลำโพงบลูทูธ Mini Bluetooth Speaker รุ่น S10 - สีทอง\r\nรายการสินค้าในกล่อง\r\n•	MD ลำโพงบลูทูธ Mini Bluetooth Speaker รุ่น S10 - สีทอง\r\n•	USB cable\r\nคุณสมบัติทั่วไป\r\nSKU	MD952ELAQ7GSANTH-1136097\r\nสี	Gold\r\nเพศ	Unisex\r\nโมเดล	S10\r\nProduct Line	Mini Bluetooth speaker with mini SD player and radio\r\nSize (cm)	6 x 6 x 5\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.23\r\n\r\n', 'Mini Bluetooth Speaker', '', '', '', 'mini-bluetooth-speaker'),
(26, 'เป็นส่วนประกอบของคอมพิวเตอร์', 'ชื่อ  AMD A4-7300, FM2, 4.0GHz, 1MB, 65W \r\nยี่ห้อ   AMD\r\nราคา 1,819 บาท\r\n คุณสมบัติทั่วไป\r\nSKU	AM051ELAM86LANTH-1075693\r\nโมเดล	AMD-AD7300OKHLBOX\r\nSize (cm)	18.5 x 3.5 x 11.1\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.32\r\nPromotion Texts	\r\n', 'AMD A4-7300', '', '', '', 'amd-a4-7300'),
(27, 'เหมาะกับคอมพิวเตอร์ทีี่ต้องการความเร็ว และแรง', 'ชื่อ INTEL CPU 1151 CORE I7 6700K 4GHZ .\r\nยี่ห้อ Intel  \r\nราคา  13,650 บาท\r\nคุณสมบัติทั่วไป\r\nSKU	IN509ELAA1PG4RANTH-3709027\r\nเพศ	Unisex\r\nโมเดล	CORE I7 6700K 4GHZ\r\nProcessor	Intel Core i7\r\nความเร็วในการประมวลผล (GHz)	4.0\r\nSize (cm)	3.75 x 3.75 x 0.7\r\nการรับประกันสินค้า	3 Year Warranty\r\nWeight (kg)\r\n', 'INTEL CPU 1151', '', '', '', 'intel-cpu-1151'),
(28, '', 'ชื่อ INTEL CPU 1150 CORE I3 4160 3.60 GHZ\r\nยี่ห้อ Intel\r\nราคา 4,250 บาท \r\nคุณสมบัติทั่วไป\r\nSKU	IN509ELAM0HIANTH-1063553\r\nเพศ	Unisex\r\nโมเดล	CPU INTEL 1150 CORE I3 4160 3.60 GHz\r\nProcessor	Intel Core i3\r\nSize (cm)	4.5 x 4.5 x 2\r\nการรับประกันสินค้า	รับประกันสินค้า 3 ปี\r\nWeight (kg)	0.1\r\n', 'INTEL CPU 1150', '', '', '', 'intel-cpu-1150'),
(29, 'ใช้ในการประมวลผลการทำงานของคอมพิวเตอร์', 'ชื่อ  AMD CPU รุ่น FX-6300 3500mhz 95w AM3+ 14mb cache (H)  \r\nยี่ห้อ AMD  \r\nราคา 4,190 บาท\r\nคุณสมบัติทั่วไป\r\nSKU	AM051ELBE9Q1ANTH-1966203\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nProcessor	AMD FX\r\nความเร็วในการประมวลผล (GHz)	3.5\r\nSize (cm)	9.90x9.90x6.09\r\nการรับประกันสินค้า	3 Years Warranty\r\nWeight (kg)	0.31\r\n\r\n', 'AMD CPU รุ่น FX-6300', '', '', '', 'amd-cpu-รุ่น-fx-6300'),
(30, 'สส่วนประกอบของคอมพิวเตอร์', 'ชื่อ  Intel CPU Core i3 - 2100 3.10 GHz (White)   \r\nยี่ห้อ Intel\r\nราคา 3,590 บาท\r\nคุณสมบัติทั่วไป\r\nSKU	IN509ELAA1K648ANTH-3410973\r\nเพศ	Unisex\r\nโมเดล	Core i3 ­ 2100\r\nProcessor	Intel Core i3\r\nความเร็วในการประมวลผล (GHz)	3.1\r\nSize (cm)	3.4 x 4.7 x 5.57\r\nการรับประกันสินค้า	3 Years Warranty\r\nWeight (kg)	0.2\r\n', 'Intel CPU Core i3 - 2100 3.10 GHz (White)', '', '', '', 'intel-cpu-core-i3-2100-3-10-ghz-white'),
(31, 'จัดเก็บข้อมูลได้เป็นจำนวนมากๆ', 'ชื่อ  2.5inch USB 3.0 SATA External HDD Hard Drive Disk Case Enclosure for PC Laptop\r\nยี่ห้อ OEM  \r\nราคา 364 บาท\r\nคุณสมบัติทั่วไป\r\nSKU	OE857ELBMN72ANTH-2409173\r\nCare label	สินค้านำเข้า/ IMPORTED\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nประเภทอินพุท	USB\r\nSize (cm)	15.50x13.00x3.00\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.09\r\n\r\n\r\n', '2.5inch USB 3.0 SATA External HDD', '', '', '', '2-5inch-usb-3-0-sata-external-hdd'),
(32, 'สำหรับเก็บข้อมูลมากๆ', 'ชื่อ  Blue 2.5 inch USB 2.0 Ultra Slim SATA Hard Drive Disk HDD External Enclosure Case Box Blue (Intl)  \r\n ยี่ห้อ  joyliveCY   \r\n ราคา  199 บาท\r\n คุณสมบัติทั่วไป\r\nSKU	JO069ELAA1UBE0ANTH-3967977\r\nสภาพ	ใหม่\r\nเพศ	Unisex\r\nSize (cm)	   30 x 20 x 30\r\nการรับประกันสินค้า	No Warranty provided\r\nWeight (kg)	0.36\r\n \r\n\r\n', 'Blue 2.5 inch USB 2.0 Ultra Slim SATA', '', '', '', 'blue-2-5-inch-usb-2-0-ultra-slim-sata'),
(33, 'จุข้อมูลได้เป็นจำนวนมาก', 'ชื่อ Apacer SSD 2.5" (AP128GAS510SB-1) SATA3 525/380MB/s AS510S - 128GB  \r\nยี่ห้อ Apacer\r\nราคา 1,755 บาท\r\nคุณสมบัติเด่น\r\n\r\nถ่ายโอนข้อมูลได้อย่างรวดเร็ว\r\nApacer SSD 2.5" (AP128GAS510SB-1) SATA3 525/380MB/s AS510S - 128GB สามารถถ่ายโอนข้อมูลได้อย่างรวดเร็วด้วยความเร็ว 380MB/s และมีประสิทธิภาพสูง ด้วยพอร์ท SATA III 6Gb/s มาพร้อมกับความจุ 128GB ที่ให้คุณเก็บข้อมูลได้อย่างมากมาย ด้วยดีไซน์ที่บาง เล็กกะทัดรัดเพียง 100 x 69.8 x 7 มม. คุณจึงพกพาไปไหนต่อไหนได้อย่างสะดวกสบาย \r\nคุณสมบัติทั่วไป\r\nSKU	AP229ELBBMRQANTH-1815774\r\nเพศ	Unisex\r\nโมเดล	AP128GAS510SB-1\r\nSize (cm)	10x6.9x0.7\r\nการรับประกันสินค้า	3 Years Warranty\r\nWeight (kg)	0.4\r\n', 'Apacer SSD 2.5', '', '', '', 'apacer-ssd-2-5'),
(34, 'จัดเก็บข้อมูล', 'ชื่อ  LaCie Rugged Thunderbolt & USB3 2TB รุ่น LAC9000489\r\nยี่ห้อ LaCie  \r\nราคา 9,990 บาท\r\nคุณสมบัติทั่วไป\r\nSKU	LA597ELAA1LS9EANTH-3494998\r\nเพศ	Unisex\r\nประเภทอินพุท	USB\r\nโมเดล	LaCie Rugged Thunderbolt\r\nCompatible Operating System	iOS\r\nSize (cm)	14.00x8.90x2.40\r\nการรับประกันสินค้า	3 ปี\r\nWeight (kg)	0.35\r\nความจุ	2TB\r\n', 'LaCie Rugged Thunderbolt', '', '', '', 'lacie-rugged-thunderbolt'),
(35, '\r\n    16GB capacity\r\n    Upto 48MB/s read speed\r\n    Dependable high speed for shooting Full HD (1080p) video and high quality photos\r\n    Compatible with all microSDHC, microSDXC supporting host devices\r\n    7 years warranty\r\n', 'คุณสมบัติ \r\nBrand	 SanDisk\r\nModel	 SDSQUNB-016G-GN3MN\r\nModel Name	Ultra\r\nModel Year	2015\r\nItem Weight	5 g\r\nProduct Dimensions	0.1 x 1.5 x 1.1 cm\r\nItem model number	SDSQUNB-016G-GN3MN\r\nRAM Size	16 GB\r\nMemory Storage Capacity	16 GB\r\nDigital Storage Capacity	16 GB\r\nColour Screen	 No\r\nBatteries Included	No\r\nBatteries Required	No\r\nHas Auto Focus	   No\r\nIncludes Rechargable Battery	No\r\nProgrammable Buttons 	No\r\n', 'SanDisk Ultra MicroSDHC 16GB', '', '', '', 'sandisk-ultra-microsdhc-16gb'),
(36, '\r\n    Reading speed upto 48MB/s\r\n    Writing speed upto upto 10MB/s\r\n    Heat proof, X-Ray proof, magnet proof and water Proof\r\n    10 years warranty on product from the date of purchase\r\n', 'คุณสมบัติ \r\nBrand	Samsung\r\nModel	MB-MP16D/IN\r\nModel Name	MB-MP16D/IN\r\nItem Weight	9 g\r\nProduct Dimensions	1.5 x 1.1 x 0.1 cm\r\nItem model number	MB-MP16D/IN\r\nMemory Storage Capacity	16 GB\r\nAdditional Features	Reading speed upto 48MB/s, Writing speed upto upto 10MB/s, Heat proof, X-Ray proof, magnet proof and water Proof\r\nBatteries Included	No\r\nData Transfer Rate	48 megabits_per_second\r\n', 'Samsung Evo 16GB', '', '', '', 'samsung-evo-16gb'),
(37, '\r\n    8GB capacity stores approximately 2000 songs or 3,200 photos or 32 hours video\r\n    Seamless speed and performance with microSDHC compatible devices\r\n    Class 4 speed performance rating (based on SD 2.0 specification)\r\n    Organize and transfer your photos, videos and music with included SanDisk Media Manager software\r\n    5-year limited warranty\r\n', 'คุณสมบัติ \r\nBrand	  SanDisk\r\nColour	   Black\r\nItem Height	1 Millimeters\r\nItem Width	11 Millimeters\r\nItem Weight	5 g\r\nProduct Dimensions	1.5 x 1.1 x 0.1 cm\r\nItem model number	SDSDQM-008G-B35\r\nRAM Size	8 GB\r\nOperating System	All\r\n', 'Sandisk 8GB Class 4', '', '', '', 'sandisk-8gb-class-4'),
(38, '\r\n    - Maximizes the UHS-I technology for outstanding NITRO performance, including 433X (65B/s) minimum guaranteed read transfer speed\r\n    -Superior mobile data solution for smartphones, tablets, GPS, and digital camcorders\r\n    -Rapidly acquires, plays back, and transfers media data, include extended durations of 1080p full-HD and 3D videos\r\n   - Contains storage of up to 6552 5MP photos; 88 hours MPEG-4 Standard video; 240 minutes of 1080p HD video; or 4,000 MP3 songs\r\n', 'คุณสมบัติ \r\nBrand	Strontium\r\nModel	SRN16GTFU1R\r\nModel Name	SRN16GTFU1R\r\nItem Weight	41 g\r\nProduct Dimensions	13.2 x 9.4 x 0.6 cm\r\nItem model number	SRN16GTFU1R\r\nRAM Size	16 GB\r\nMemory Storage Capacity	16 GB\r\nDigital Storage Capacity	16 GB\r\nBatteries Included	No\r\nBatteries Required	No\r\n', 'Strontium Nitro 16GB', '', '', '', 'strontium-nitro-16gb'),
(39, '\r\n    -Improve performance and increase storage on smartphones, tablets, cameras and other portable devices\r\n    -UHS-I technology enables higher bus interface speeds to optimize playback and transfer of files\r\n    -10MB/s minimum data transfer rate\r\n    -Capacities from 4GB-64GB\r\n    -Lifetime warranty, free technical support\r\n    -Improve performance and increase storage on smartphones, tablets, cameras and other portable devices\r\n    -UHS-I technology enables higher bus interface speeds to optimize playback and transfer of files\r\n', 'คุณสมบัติ \r\nBrand	Kingston\r\nSeries	SDC10/16GBFR\r\nItem Height	25 Millimeters\r\nItem Width	25 Millimeters\r\nItem Weight	9 g\r\nProduct Dimensions	2.5 x 2.5 x 2.5 cm\r\nItem model number	SDC10/16GBFR\r\nRAM Size	16 GB\r\n', 'Kingston 16GB Micro SDHC Class 10 Memory Card', '', '', '', 'kingston-16gb-micro-sdhc-class-10-memory-card'),
(40, '•  -Simple installation keyboard wedge Serial,Emulation tc\r\n•  -Over180 configgurable option.\r\n•  -Automatically clones decoder in under 10 second. over300 decoder per hour\r\n•  -can be use with or without the keyboard\r\n•  -support over twenty diffrent keybord country layous.\r\nExtended ASCLL support for Code128 bar code\r\n• - Low power consumption\r\n', 'ข้อมูลจำเพาะของ Barcode Scanner ''Threeboy'' (SL3100, Black)\r\n\r\nBrand 	treeboy\r\nModel 	ตัวอ่านบาร์โค๊ต THREEBOY SL3100 สาย USB (Black)\r\nInterface 	USB\r\nScan(Max.) 	0.2 Sec rate\r\nColor 	Black\r\n', 'Barcode Scanner ''Threeboy''', '', '', '', 'barcode-scanner-threeboy'),
(41, '•  Simple installation keyboard wedge Serial,Emulation tc \r\n• - Over180 configgurable option. \r\n•  -Automatically clones decoder in under 10 second. over300 decoder per hour \r\n•  -can be use with or without the keyboard \r\n•  -support over twenty diffrent keybord country layous.\r\nExtended ASCLL support for Code128 bar code \r\n• - Low power consumption\r\n', 'ข้อมูลจำเพาะของ Barcode Scanner ''ACAN''\r\n\r\nBrand 	 acan\r\nModel 	ACAN USB\r\nInterface 	USB\r\nOS Support 	สามารถรองรับ Win 8.1 (64bit)\r\n', 'Barcode Scanner ''ACAN''', '', '', '', 'barcode-scanner-acan'),
(42, '', 'ข้อมูลจำเพาะของ Cash Drawer ''Maken'' MK-420 (Black)\r\n\r\nModel 	MK-420\r\nDimension 	420(W) x 440 (D) x 100(H) mm\r\nจำนวนช่อง 	- 4 ช่องเก็บแบ็งค  - - 5 ช่องเก็บเหรียญ USB 2.0\r\n', 'Cash Drawer ''Maken'' MK-420 (Black)', '', '', '', 'cash-drawer-maken-mk-420-black'),
(43, '•   -เครื่องอ่านบาร์โค้ดชนิดตั้งโต๊ะ\r\n•-  ความเร็วในการอ่านสูงถึง 1,200 เส้น/วินาที\r\n•  -สามารถอ่านบาร์โค้ดได้ 20 เส้นทาง\r\n•  -ระยะการอ่านบาร์โค้ดไกล 10 นิ้ว\r\n•  ใช้งานง่ายแค่ Plug And Play\r\n•  เชื่อมต่อกับคอมพิวเตอร์ด้วยพอร์ต USB\r\n• - มีระบบการอ่านบาร์โค้ดแบบอัตโนมัติ\r\n•  -มีขาตั้งเพื่อตั้งโต๊ะ\r\n•  -ตัวเครื่องผลิตจากวัสดุคุณภาพสูง สีขาวนวล พร้อมการออกแบบที่สวยงาม\r\n• - สามารถใช้งานกับไฟฟ้าในบ้านได้ \r\n\r\n', '', 'Barcode Scanner ''Honeywell''', '', '', '', 'barcode-scanner-honeywell'),
(44, 'ประเภทของการรับประกัน: No warranty\r\n•	สินค้าผลิตจากโรงงาน ระดับมาตราฐานสากล\r\n•	พิมพ์ชัดทั้งตัวอักษรและภาพ\r\n•	ปลอดภัย ไม่ส่งผลเสียต่อเครื่อง\r\n•	ราคาประหยัด ลดต้นทุนค่าใช้จ่าย\r\n80 บาท\r\n', 'Product details of LASUPRINT หมึกเติม Epson L-Series Inkjet 100ml - Magenta สำหรับเครื่องปริ้น Epson L-Series L110,L120,L210,L300,L350,L355,L455,L550,L555,L800,L850,L1300,L1800\r\nLASUPRINT หมึกเติม Epson L-Series Inkjet 100ml - Magenta\r\n\r\nคุณสมบัติ \r\n\r\nหมึกเติม Epson L-Series Inkjet 100ml หมึกเติมมาตรฐานญี่ปุ่นมีความละเอียดสูง ลดปัญหาการอุดตัน สามารถรองรับการใช้งานกับเครื่องพิมพ์อิงค์เจ็ท Epson L-Series L110,L120,L210,L300,L350,L355,L455,L550,L555,L800,L850,L1300,L1800\r\nหมึกเติม INKJET LASUPRINT พิมพ์ภาพ คม ชัด และเสมือนจริง ไม่ทำให้หัวหมึกพิมพ์ อุดตัน แน่นอน\r\nข้อมูลจำเพาะของ LASUPRINT หมึกเติม Epson L-Series Inkjet 100ml - Magenta สำหรับเครื่องปริ้น Epson L-Series L110,L120,L210,L300,L350,L355,L455,L550,L555,L800,L850,L1300,L1800\r\nรายการสินค้าในกล่อง\r\n•	LASUPRINT หมึกเติม Epson L-Series Inkjet 100ml - Magenta\r\nคุณสมบัติทั่วไป\r\nSKU	LA955ELALFLNANTH-1032331\r\nโมเดล	Epson L-Series L110,L120,L210,L300,L350,L355,L455,L550,L555,L800,L850,L1300,L1800\r\nProduct Line	หมึกเติม, Epson L-Series, Inkjet, Printer,\r\nSize (cm)	5 x 5 x 13.94\r\nการรับประกันสินค้า	No warranty\r\nWeight (kg)	0.100\r\n\r\n', 'LASUPRINT', '', '', '', 'lasuprint'),
(45, 'Color Fly (50/Pack) Photo Inkjet Sticker A4 135G. กระดาษปริ้นรูปแบบสติ๊กเกอร์ A4\r\nประเภทของการรับประกัน: No warranty provided\r\n•	Water Resistant\r\n•	Brilliant Ohotographic Finise\r\n•	Quick Dry Surface\r\n•	High Resoultion\r\n•	Compatible for all Inkjet Printers\r\n348 บาท\r\n', 'Product details of Color Fly (50/Pack) Photo Inkjet Sticker A4 135G. กระดาษปริ้นรูปแบบสติ๊กเกอร์ A4 (50/Pack)\r\nColor Fly (50/Pack) Photo Inkjet Sticker A4 135G. กระดาษปริ้นรูปแบบสติ๊กเกอร์ A4 (50/Pack)\r\n\r\nModel :Color Fly Photo Inkjet Sticker A4 135G. (50/Pack)\r\nSize :A4\r\nความหนาของกระดาษ :135 G.\r\nจำนวนต่อ Pack :50 แผ่น\r\nข้อมูลจำเพาะของ Color Fly (50/Pack) Photo Inkjet Sticker A4 135G. กระดาษปริ้นรูปแบบสติ๊กเกอร์ A4 (50/Pack)\r\nรายการสินค้าในกล่อง\r\n•	Paper x 1 Set\r\nคุณสมบัติทั่วไป\r\nSKU	CO248ELAA1T7ANANTH-3898714\r\nรูรับแสง (f/ จำนวน)	0.0\r\nขนาดกระเป๋า	0.0\r\nสภาพ	ใหม่\r\nCPU Speed (GHz)	0.00\r\nขนาดหน้าจอ	0.0\r\nEnergy rating (stars)	0.0\r\nเพศ	Unisex\r\nขนาดฮาร์ดดิสก์ (GB)	0.0\r\nความยาว	0.0\r\nความยาวสูงสุด (มม.)	0.0\r\nความจุสูงสุด (กรัม)	0.0\r\nเมกะพิกเซล	0.0\r\nโมเดล	(50/Pack) Photo Inkjet Sticker A4 135G.\r\nOptical Sensor Resolution (เมกะพิกเซล)	0.0\r\nออฟติคอลซูม	0.0\r\nความเร็วในการประมวลผล (GHz)	0.0\r\nSize (cm)	10x24x2\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.2\r\nScreen Size (inches)	0.0\r\n\r\n', 'Color Fly', '', '', '', 'color-fly'),
(46, 'KODAK (50/Pack) Photo Inkjet A4 230G. กระดาษปริ้นรูป A4\r\nประเภทของการรับประกัน: No warranty provided\r\n•	Water Resistant\r\n•	Brilliant Ohotographic Finise\r\n•	Quick Dry Surface\r\n•	High Resoultion\r\n•	Compatible for all Inkjet Printers\r\n349 บาท\r\n', 'Product details of KODAK (50/Pack) Photo Inkjet A4 230G. กระดาษปริ้นรูป A4 (50/Pack)\r\nKODAK (50/Pack) Photo Inkjet A4 230G. กระดาษปริ้นรูป A4 (50/Pack)\r\n\r\nModel :Photo Inkjet A4 230G.(50/Pcs) KODAK\r\nSize :A4\r\nความหนาของกระดาษ :230G.\r\nจำนวนต่อ Pack :50/Pack\r\nFor :Photo Inkjet\r\nข้อมูลจำเพาะของ KODAK (50/Pack) Photo Inkjet A4 230G. กระดาษปริ้นรูป A4 (50/Pack)\r\nรายการสินค้าในกล่อง\r\n•	Paper x 1 Set\r\nคุณสมบัติทั่วไป\r\nSKU	KO583ELAA1T6URANTH-3898142\r\nรูรับแสง (f/ จำนวน)	0.0\r\nขนาดกระเป๋า	0.0\r\nสภาพ	ใหม่\r\nCPU Speed (GHz)	0.00\r\nขนาดหน้าจอ	0.0\r\nEnergy rating (stars)	0.0\r\nเพศ	Unisex\r\nขนาดฮาร์ดดิสก์ (GB)	0.0\r\nความยาว	0.0\r\nความยาวสูงสุด (มม.)	0.0\r\nความจุสูงสุด (กรัม)	0.0\r\nเมกะพิกเซล	0.0\r\nโมเดล	(50/Pack) Photo Inkjet A4 230G.\r\nOptical Sensor Resolution (เมกะพิกเซล)	0.0\r\nออฟติคอลซูม	0.0\r\nความเร็วในการประมวลผล (GHz)	0.0\r\nSize (cm)	10x24x2\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.2\r\nScreen Size (inches)	0.0\r\n\r\n', 'KODAK (50/Pack) Photo Inkjet A4 230G', '', '', '', 'kodak-50-pack-photo-inkjet-a4-230g'),
(47, 'OEM Photo Paper E-JET Photo Inkjet A4 130G. กระดาษปริ้นรูป A4 100/Pack \r\nประเภทของการรับประกัน: No warranty\r\n•	Water Resistant\r\n•	Brilliant Ohotographic Finise\r\n•	Quick Dry Surface\r\n•	High Resoultion\r\n•	Compatible for all Inkjet Printers\r\n190 บาท\r\n', 'Product details of OEM Photo Paper E-JET Photo Inkjet A4 130G. กระดาษปริ้นรูป A4 100/Pack\r\n•	Model :PHOTO INKJET A4 130 G.(100/Pack)E-JET\r\n•	Size :A4 (W210 x H297 mm)\r\n•	ความหนาของกระดาษ :130 gsm\r\n•	จำนวนต่อ Pack :100 แผ่น\r\nข้อมูลจำเพาะของ OEM Photo Paper E-JET Photo Inkjet A4 130G. กระดาษปริ้นรูป A4 100/Pack\r\nรายการสินค้าในกล่อง\r\n•	OEM Photo Paper E-JET Photo Inkjet A4 130G. กระดาษปริ้นรูป A4 100/Pack\r\nคุณสมบัติทั่วไป\r\nSKU	OE857ELAA2PLOIANTH-5873622\r\nเพศ	Unisex\r\nโมเดล	Photo Inkjet A4 130G\r\nSize (cm)	21.5X29.5X3.0\r\nการรับประกันสินค้า	No warranty\r\nWeight (kg)	1.45\r\n\r\n', 'OEM Photo Paper E-JET Photo Inkjet A4 130G', '', '', '', 'oem-photo-paper-e-jet-photo-inkjet-a4-130g'),
(48, 'Brother รุ่น DCP-T500W เครื่องพิมพ์อเนกประสงค์ 4 in 1 - ปริ้นเตอร์/ถ่ายเอกสาร/สแกนเนอร์/Direct Print / Wireless / LCD Display 1 Line LCD / หน่วยความจำ 64MB\r\nประเภทของการรับประกัน: 1Year or 30,000 แผ่น เมื่ออย่างใดอย่างหนึ่งถึงก่อน (Carry - in)\r\n•	3-in-1: Print / Copy / Scan with Wi-fi\r\n•	Print : พิมพ์สี/ขาวดำสูงสุด 6/11ppm\r\n•	Copy : ถ่ายเอกสารสี/ขาวดำ\r\n•	Print Speed : Up to 27 (Monochrome) LCD Display 1 Line LCD\r\n5,260 บาท\r\n', 'ข้อมูลจำเพาะของ Brother รุ่น DCP-T500W เครื่องพิมพ์อเนกประสงค์ 4 in 1 - ปริ้นเตอร์/ถ่ายเอกสาร/สแกนเนอร์/Direct Print / Wireless / LCD Display 1 Line LCD / หน่วยความจำ 64MB\r\nรายการสินค้าในกล่อง\r\n•	Brother รุ่น DCP-T500W เครื่องพิมพ์อเนกประสงค์ 4 in 1 - ปริ้นเตอร์/ถ่ายเอกสาร/สแกนเนอร์/Direct Print / Wireless / LCD Display 1 Line LCD / หน่วยความจำ 64MB\r\nคุณสมบัติทั่วไป\r\nSKU	BR162ELAT8J2ANTH-1318861\r\nเพศ	Unisex\r\nโมเดล	DCP-T500W\r\nSize (cm)	43 x 37 x 16\r\nการรับประกันสินค้า	1Year or 30,000 แผ่น เมื่ออย่างใดอย่างหนึ่งถึงก่อน (Carry - in)\r\nWeight (kg)	8\r\n\r\n', 'Brother รุ่น DCP-T500W', '', '', '', 'brother-รุ่น-dcp-t500w'),
(49, 'Click หมึกพิมพ์สำหรับปริ้นเตอร์ Canon 325 สำหรับเครื่องพิมพ์รุ่น Canon Laser Shot LBP6000 \r\nประเภทของการรับประกัน: No warranty provided\r\n•	หมึกเลเซอร์เทียบเท่าคุณภาพสูง\r\n•	ราคาประหยัด\r\n•	พิมพ์ได้ 2000 แผ่น\r\n', 'Product details of Click หมึกพิมพ์สำหรับปริ้นเตอร์ Canon 325 สำหรับเครื่องพิมพ์รุ่น Canon Laser Shot LBP6000\r\nหมดปัญหา หมึกซีดจาง ผงหมึกรั่วออกมา หมึกหมดเร็วด้วย Click ตลับหมึก Toner-Re Canon 325 คุณภาพดี ราคาประหยัด ตรงสเปค คุณภาพหมึกเทียบเท่า ของแท้ (OEM) Toner-Re Canon 325 สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์ \r\n\r\nรายละเอียดสินค้า\r\n- สำหรับเครื่องมัลติฟังก์ชั่นและเครื่องพิมพ์ระบบเลเซอร์\r\n- ใช้ได้กับพริ้นเตอร์  HP LaserJet Pro P1102/P1102w/M1132/M1212nf Canon Laser Shot LBP6000 \r\n- ปริมาณการพิม % บนกระดาษขนาด A4 พริ้นเอกสารได้ 2,000 แผ่น\r\n- คุณภาพ หมึกเทียบเท่า ของแท้ (OEM)\r\n- ปลอดภัย ไม่ส่งผลเสียต่อเครื่อง\r\n- พิมพ์ชัด \r\nข้อมูลจำเพาะของ Click หมึกพิมพ์สำหรับปริ้นเตอร์ Canon 325 สำหรับเครื่องพิมพ์รุ่น Canon Laser Shot LBP6000\r\nรายการสินค้าในกล่อง\r\n•	Toner-Re Canon 325\r\n•	คู่มือการใช้งาน\r\nคุณสมบัติทั่วไป\r\nSKU	CL551ELAEEN7ANTH-677705\r\nสี	black\r\nเพศ	Unisex\r\nโมเดล	Canon 325\r\nSize (cm)	11 x 33 x 13\r\nการรับประกันสินค้า	No warranty provided\r\nWeight (kg)	0.785\r\n\r\n', 'Canon 325', '', '', '', 'canon-325'),
(50, 'Canon ตลับหมึกเลเซอร์ 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030 เทียบเท่า \r\nประเภทของการรับประกัน: 1 Year Warranty\r\n•	สินค้าผลิตจากโรงงาน ด้วยวัสดุใหม่ 100%\r\n•	ตรงสเปค คุณภาพเทียบเท่าของแท้\r\n•	พิมพ์ชัด ทั้งตัวอักษรและภาพ\r\n', 'Product details of Canon ตลับหมึกเลเซอร์ 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030 เทียบเท่า\r\nCanon ตลับหมึกเลเซอร์ 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030 เทียบเท่า\r\n\r\nคุณสมบัติ\r\nColor Box ตลับหมึกเลเซอร์ Canon 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030\r\n\r\nพิมพ์ได้ 2,100 แผ่น\r\n\r\nสำหรับปริ้นเตอร์รุ่น \r\nHP LaserJet P1005/1006/ P1007/P1008/P1102/P1102W/P1505/P1505n/P1560/P1566/P1606/P1600/M1120/M1120n/M1132/M1212nf/M1217/M1320/M1522/M1522n\r\nCanon Laser Shot LBP3018/3108/3050/3150/3010/3100\r\nCanon Laser Shot LBP6000/6018/6200/6030\r\nCanon i-SENSYS LBP6020\r\nCanon Laser Shot LBP3250\r\nCanon i-Sensys MF4410/4420/4430\r\n\r\nสินค้าผลิตจากโรงงาน ด้วยวัสดุใหม่ 100%\r\nตรงสเปค คุณภาพเทียบเท่าของแท้ \r\n(OEM) พิมพ์ชัด ทั้งตัวอักษรและภาพ\r\nข้อมูลจำเพาะของ Canon ตลับหมึกเลเซอร์ 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030 เทียบเท่า\r\nรายการสินค้าในกล่อง\r\n•	Canon ตลับหมึกเลเซอร์ 325 สำหรับเครื่องปริ้น Canon Laser Shot LBP6030 เทียบเท่าคู่มือการใช้งาน\r\nคุณสมบัติทั่วไป\r\nSKU	CA175ELAA1JD8NANTH-3365886\r\nเพศ	Unisex\r\nโมเดล	Canon Toner 325 เทียบเท่า\r\nSize (cm)	11 x 33 x 13\r\nการรับประกันสินค้า	1 Year Warranty\r\nWeight (kg)	1\r\n\r\n', 'Canon Laser Shot LBP6030', '', '', '', 'canon-laser-shot-lbp6030'),
(51, 'Color Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\nประเภทของการรับประกัน: สินค้ารับประกัน 1 ปี\r\n•	ตลับหมึกเลเซอร์\r\n•	ปริ้นท์ดี ลื่นไหล\r\n•	สีติดคงทน\r\n350 บาท\r\n', 'Product details of Color Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\nColor Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\n\r\nพิมพ์ได้ 2,100 แผ่น\r\n\r\nสำหรับปริ้นเตอร์รุ่น \r\nHP LaserJet P1005/1006/ P1007/P1008/P1102/P1102W/P1505/P1505n/P1560/P1566/P1606/P1600/M1120/M1120n/M1132/M1212nf/M1217/M1320/M1522/M1522n\r\nCanon Laser Shot LBP3018/3108/3050/3150/3010/3100\r\nCanon Laser Shot LBP6000/6018/6200/6030\r\nCanon i-SENSYS LBP6020\r\nCanon Laser Shot LBP3250\r\nCanon i-Sensys MF4410/4420/4430\r\n\r\nสินค้าผลิตจากโรงงาน ด้วยวัสดุใหม่ 100%\r\nตรงสเปค คุณภาพเทียบเท่าของแท้ \r\n(OEM) พิมพ์ชัด ทั้งตัวอักษรและภาพ\r\nข้อมูลจำเพาะของ Color Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\nรายการสินค้าในกล่อง\r\n•	Color Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\n•	คู่มือการใช้งาน\r\nคุณสมบัติทั่วไป\r\nSKU	CO146ELCCW4XANTH-3322640\r\nขนาดฮาร์ดดิสก์ (GB)	0.0\r\nโมเดล	Color Box ตลับหมึกเลเซอร์ Canon 312 สำหรับเครื่องปริ้น Canon Laser Shot LBP3100\r\nSize (cm)	11 x 33 x 13\r\nการรับประกันสินค้า	สินค้ารับประกัน 1 ปี\r\nWeight (kg)	1\r\n\r\n', 'Canon 312', '', '', '', 'canon-312'),
(53, 'Click Toner HP CB4-35A (35A) สำหรับปริ้นเตอร์รุ่น HP-Laser Jet (10 กล่อง)\r\n•	หมึกพิมพ์เลเซอร์\r\n•	สามารถพิมพ์ได้ 1500 แผ่น\r\n•	พิมพ์ได้คมชัด\r\n3,800 บาท\r\n', 'Product details of Click Toner HP CB4-35A (35A) สำหรับปริ้นเตอร์รุ่น HP-Laser Jet (10 กล่อง)\r\nClick Toner HP CB4-35A (35A) สำหรับปริ้นเตอร์รุ่น HP-Laser Jet P1002/ P1003/ P1004/ P1005/ P1006/ P1009 (10 กล่อง)\r\n\r\nคุณสมบัติ\r\nหมึกพิมพ์เลเซอร์เทียบเท่าคุณภาพสูง โทนสีดำ ราคาประหยัด สามารถพิมพ์ได้ 1500 แผ่น น้ำหนัก 824.6 กรัม เหมาะสำหรับเครื่องพิมพ์ สำหรับเครื่องพิมพ์ HP LaserJet P1005/P1006 และ Canon Laser Shot LBP3018/3108/3050/3150/3010/3100\r\nข้อมูลจำเพาะของ Click Toner HP CB4-35A (35A) สำหรับปริ้นเตอร์รุ่น HP-Laser Jet (10 กล่อง)\r\nรายการสินค้าในกล่อง\r\n•	Click Toner-Re HP CB4-35A (10 กล่อง)\r\nคุณสมบัติทั่วไป\r\nSKU	CL551ELAGOYUANTH-763018\r\nสี	black\r\nโมเดล	Click Toner HP CB4-35A (35A) สำหรับปริ้นเตอร์รุ่น HP-Laser Jet P1002/ P1003/ P1004/ P1005/ P1006/ P1009 (10 กล่อง)\r\nSize (cm)	11 x 33 x 13\r\n\r\n', 'HP-Laser Jet', '', '', '', 'hp-laser-jet'),
(54, 'SIGNO E-Sport PEGASUS Semi Mechanical Gaming Keyboard Rubber Dome รุ่น KB-739 (สีดำ)\r\nประเภทของการรับประกัน: สินค้ารับประกัน 1 ปี\r\n•	Blue Semi Mechanical Rubber Dome\r\n•	Spectrum Backlighting Design (6 Color LEDs)\r\n•	6 Modes Color Backlighting\r\n•	Water-Proof Design\r\n•	WIndows Lock Function\r\n1,090 บาท\r\n', 'Product details of SIGNO E-Sport PEGASUS Semi Mechanical Gaming Keyboard Rubber Dome รุ่น KB-739 (สีดำ)\r\nFeatures\r\n\r\n- Semi Mechanical Gaming Keyboard Rubber Dome\r\n- Blue Mechanical Switches with Rubber Dome- Spectrum Backlighting Design (6 Color LEDs)\r\n- 6 Modes Color Backlighting\r\n- Water-Proof Design\r\n- WIndows Lock Function\r\n- 12 Enhanced Multimedia Keys\r\n- 19 Keys Anit-Ghosting\r\n- Nylon Cord Lenght 1.8 M.\r\n- Plug & Play\r\n\r\n \r\nข้อมูลจำเพาะของ SIGNO E-Sport PEGASUS Semi Mechanical Gaming Keyboard Rubber Dome รุ่น KB-739 (สีดำ)\r\nรายการสินค้าในกล่อง\r\n•	SIGNO E-Sport PEGASUS Semi Mechanical Gaming Keyboard Rubber Dome รุ่น KB-739 (สีดำ)\r\nคุณสมบัติทั่วไป\r\nSKU	SI318ELAA2NTQLANTH-5778027\r\nเพศ	Unisex\r\nโมเดล	KB-739\r\nSize (cm)	44.3 x 17 x 3.5\r\nการรับประกันสินค้า	สินค้ารับประกัน 1 ปี\r\nWeight (kg)	0.95\r\n\r\n', 'SIGNO E-Sport PEGASUS Semi Mechanical Gaming Keyboard Rubber Dome รุ่น KB-739', '', '', '', 'signo-e-sport-pegasus-semi-mechanical-gaming-keyboard-rubber-dome-รุ่น-kb-739'),
(55, 'Marvo KM400 Keyboard Backlight+Mouse TH/EN Layout (Black)\r\nประเภทของการรับประกัน: สินค้ารับประกัน 1 ปี\r\n•	Hight Quality\r\n•	Good Product\r\n•	Good Material\r\n599 บาท\r\n', 'Product details of Marvo KM400 Keyboard Backlight+Mouse TH/EN Layout (Black)\r\nให้ความลงตัวสำหรับการเล่นเกมในปัจจุบันได้ดีเยี่ยมกับ MARVO KM-400 ที่มาพร้อมดีไซน์สวยงาม ดูลํ้าสมัยน่าใช้งานด้วยรูปแบบ Full-size ใช้งานได้สะดวกคล่องตัวทั้ง 114 ปุ่ม รวมถึงปุ่ม Multimedia hotkey จำนวน 10 ปุ่มพร้อมความทนทานกดใช้งานได้กว่า 5 ล้านครั้ง พร้อมทั้งการเลือกปรับเปลี่ยนไฟ LED-backlight ได้ 3 สีด้วยกัน เพื่อความสวยงามและให้มองเห็นปุ่มกดได้ชัดเจนมากขึ้น\r\n\r\nMARVO KM-400 มาในรูปแบบ Full-size ออกแบบปุ่มกดให้มีขนาดใหญ่ เพื่อใช้งานได้แม่นยำมีพื้นที่วางข้อมือยื่นออกมาจากตัวแป้นคีย์บอร์ดเล็กน้อย เพื่อให้มีท่าทางการวางมือที่เป็นธรรมชาติเล่นเกมได้นานไม่รู้สึกเมื่อยล้าข้อมือโครงสร้างมีความแข็งแรงที่ไว้ใจได้แม้จะเป็นพลาสติกแบบ ABS ก็ตาม ที่สำคัญยังออกแบบให้ใช้งานกับพีซีได้ในปัจจุบันได้ทั้งหมดผ่านการเชื่อมต่อพอร์ต USB โดยไม่ต้องลงไดรเวอร์เพิ่มเติม\r\n•	Interface : USB 2.0\r\n•	Brightness adjustment : 4-levels\r\n•	LED 3 Colors\r\n•	Hard Drive Tray : 4-Bays\r\n•	Multimedia : keys 10 keys\r\n•	Life time : 5 millions\r\n•	Material : Original ABS\r\n•	Support : All Windows\r\nข้อมูลจำเพาะของ Marvo KM400 Keyboard Backlight+Mouse TH/EN Layout (Black)\r\nรายการสินค้าในกล่อง\r\n•	Keyboard Backlight K-400\r\n•	Mouse LED Light\r\nคุณสมบัติทั่วไป\r\nSKU	MA428ELCCYEWANTH-3327430\r\nแบล๊คไลท์	มี\r\nการเชื่อมต่อ	USB 2.0\r\nเพศ	Unisex\r\nโมเดล	KM400\r\nจำนวนของปุ่ม	104\r\nSize (cm)	49x21x3\r\nการรับประกันสินค้า	สินค้ารับประกัน 1 ปี\r\nWeight (kg)	0.98\r\nประเภทของแป้นพิมพ์	แบบมีสาย\r\n', 'Marvo KM400 Keyboard Backlight+Mouse TH/EN Layout', '', '', '', 'marvo-km400-keyboard-backlight-mouse-th-en-layout'),
(56, 'MARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950 (สีดำ)  \r\nประเภทของการรับประกัน: รับประกันสินค้า 6 เดือน \r\n•	ดีไซน์ดูล้ำสมัยน่าใช้งาน \r\n•	ไฟ LED สามารถปรับระดับความสว่างได้ง่ายๆ \r\n•	ปุ่มกดที่ให้ความนุ่มนวลพอเหมาะ\r\n790 บาท\r\n', 'ประหยัดทันที 20%\r\nProduct details of MARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950 (สีดำ)\r\nMARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950 (สีดำ)\r\n  \r\n- เป็นคีย์บอร์ดในกลุ่ม GAMING SPORTS มีดีไซน์ดูล้ำสมัยน่าใช้งาน ตามแบบฉบับอุปกรณ์ GAMING \r\n- ไฟ LED สามารถปรับระดับความสว่างได้ง่ายๆ สามารถเล่นในที่มืดได้ฟังค์ชั่นคีย์สำหรับเปลี่ยนสีไฟซึ่งสลับเปลี่ยนได้ 7 สี ฟังค์ชั่นคีย์สำหรับปรับความสว่างของไฟ ฟังค์ชั่นคีย์สำหรับเปลี่ยนโหมดของไฟ คีย์สำหรับปรับความเร็วในการส่งข้อมูลจากคีย์บอร์ดไปยังเครื่องพีซี \r\n- แผ่น PCB เพิ่มความทนทานใช้งานได้ยาวนานคุ้มค่า \r\n- ปุ่มกดที่ให้ความนุ่มนวลพอเหมาะ ไม่ต้องออกแรงมาก ตอบสนองได้ฉับไว ถูกใจคอเกมส์หลายๆท่านแน่นอน พร้อมฟังก์ชั่นพิเศษอีกมากมาย และ ทุกๆ คน สามารถจับจองเป็นเจ้าของกันได้\r\nข้อมูลจำเพาะของ MARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950 (สีดำ)\r\nรายการสินค้าในกล่อง\r\n•	MARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950 (สีดำ)\r\nคุณสมบัติทั่วไป\r\nSKU	MA428ELBU9CRANTH-2821683\r\nแบล๊คไลท์	มี\r\nCare label	6 month\r\nการเชื่อมต่อ	USB 2.0\r\nเพศ	Unisex\r\nโมเดล	K950\r\nSize (cm)	70x20x8\r\nการรับประกันสินค้า	รับประกันสินค้า 6 เดือน \r\nWeight (kg)	0.3\r\nประเภทของแป้นพิมพ์	แบบมีสาย\r\n\r\n', 'MARVO Gaming Keyboard คีย์บอร์ดเกมมิ่งไฟ7สี รุ่น K950', '', '', '', 'marvo-gaming-keyboard-คีย์บอร์ดเกมมิ่งไฟ7สี-รุ่น-k950'),
(57, 'MinorTEK Ultra-Slim bluetooth keyboard ภาษาไทยสำหรับ iPad, Tablet, SmartTV - สีดำ \r\nประเภทของการรับประกัน: 1 year	\r\n•	Layout ภาษาไทย\r\n•	Ultra-Slim Keyboard\r\n•	Bluetooth 3.0\r\n•	แบตเตอร์รี่ชาร์ตได้\r\n690 บาท\r\n', 'Product details of MinorTEK Ultra-Slim bluetooth keyboard ภาษาไทยสำหรับ iPad, Tablet, SmartTV - สีดำ\r\nMinorTEK Ultra-Slim bluetooth keyboard สำหรับ iPad, Tablet, SmartTV - สีดำ\r\n\r\nUltra-Slim Bluetooth keyboard สำหรับอุปกรณ์พกพาที่ต้องการต่อกับคีย์บอร์ดภายนอก แต่ยังคงต้องการความบางใน และสะดวกในการพกพา เหมาะสำหรับ Tablet, iPad, Smart TV หรือมือถือทุกรุ่นที่รองรับเทคโนโลยี Bluetooth\r\n\r\nคุณสมบัติ\r\n\r\n- ใช้ได้กับอุปกรณ์ที่รองรับระบบปฏิบัติการ Android, iOS หรือแม้แต่ Windows PC\r\n- แผงคีย์บอร์ดแบบ 80 ปุ่ม พร้อมด้วย 14 คีย์พิเศษสำหรับ iOS และ Android\r\n- แผงด้านหลังทำจากอลูมิเนียมเกรด A แข็งแรง ทนทาน\r\n- ความรู้สึกขณะสัมผัสแบบพิเศษ เงียบ ปุ่มกดนุ่มนวล ไม่กระด้าง\r\n- เคสบางพิเศษ ช่องระหว่างปุ่มตื้น ดีไซน์แบบ chocolate scissor keycaps \r\n- เทคโนโลยี Bluetooth 3.0 ให้ระยะควบคุมไกลถึง 10 เมตรในที่โล่ง\r\n- ช่องชาร์ตไฟแบบมาตรฐาน micro USB พร้อมสายชาร์ตคุณภาพสูง\r\n- แบตเตอร์รี่แบบชาร์ตไฟซ้ำคุณภาพสูง (ลิเทียม-ไอออน)\r\n- โหมดประหยัดพลังงาน เมื่อไม่ใช้คีย์บอร์ดเป็นเวลานาน\r\n\r\n \r\n\r\n \r\nข้อมูลจำเพาะของ MinorTEK Ultra-Slim bluetooth keyboard ภาษาไทยสำหรับ iPad, Tablet, SmartTV - สีดำ\r\nรายการสินค้าในกล่อง\r\n•	MinorTEK Ultra-Slim bluetooth keyboard สำหรับ iPad, Tablet, SmartTV - สีดำ\r\n•	คู่มือภาษาไทย\r\n•	สาย USB สำหรับชาร์ตไฟ\r\nคุณสมบัติทั่วไป\r\nSKU	MI536ELAJ11JANTH-897992\r\nสี	ดำ\r\nเพศ	Unisex\r\nโมเดล	BK101B\r\nSize (cm)	20.60 x 8.20 x 0.58\r\nการรับประกันสินค้า	1 year\r\nWeight (kg)	0.172\r\n\r\n', 'MinorTEK Ultra-Slim bluetooth keyboard', '', '', '', 'minortek-ultra-slim-bluetooth-keyboard');
INSERT INTO `mhyjf_virtuemart_products_th_th` (`virtuemart_product_id`, `product_s_desc`, `product_desc`, `product_name`, `metadesc`, `metakey`, `customtitle`, `slug`) VALUES
(58, 'Ultra Thin Silicone US Keyboard Skin Cover With A Numeric Keypad For Apple iMac Blue \r\nประเภทของการรับประกัน: No Warranty provided\r\n•	Weight:45g\r\n•	Material:Silicon\r\n•	Color:Blue\r\n•	Waterproof\r\n•	Dustproof\r\n•	Removable\r\n•	Washable\r\n129 บาท\r\n', 'Product details of Ultra Thin Silicone US Keyboard Skin Cover With A Numeric Keypad For Apple iMac Blue\r\n\r\n\r\n\r\nDescription:\r\nWeight:45g\r\nMaterial:Silicon\r\nCompatible Model:iMac\r\nColor:Blue\r\n\r\nFeature:\r\nPerfect fit for iMac wire keyboard.\r\nExtra slim silicone skin, made it easier for typing.\r\n\r\nClosely paste the keyboard surface and fitted each key perfectly.\r\nEquipped with a numeric keypad, and special function keys special for iMac keyboard.\r\n\r\nRemovable and washable, the free cleaning without affecting the effectiveness of their use.\r\nWaterproof and dustproof, protect your laptop keyboard against spills. dust, and other contaminants.\r\nEvery key is individually molded and specially printed on silicone for a long lasting professional look.\r\n\r\nข้อมูลจำเพาะของ Ultra Thin Silicone US Keyboard Skin Cover With A Numeric Keypad For Apple iMac Blue\r\nรายการสินค้าในกล่อง\r\n•	1 x Ultra Thin Silicone Keyboard Skin Cover (Blue)\r\nคุณสมบัติทั่วไป\r\nSKU	OE857MEBQWQ9ANTH-2643908\r\nเพศ	Unisex\r\nSize (cm)	33.00 x 11.00 x 11.00\r\nการรับประกันสินค้า	No Warranty provided\r\nWeight (kg)	0.04\r\n', 'Ultra Thin Silicone US Keyboard Skin Cover With A Numeric Keypad For Apple iMac Blue', '', '', '', 'ultra-thin-silicone-us-keyboard-skin-cover-with-a-numeric-keypad-for-apple-imac-blue'),
(59, 'Moonar ออฟติคัลเม้าส์ไร้สาย และตัวรับสัญญาณ 2.4GHZ (สีขาว) \r\nประเภทของการรับประกัน: No Warranty\r\n•	เม้าส์ไร้สาย 2.4 GHz\r\n•	ใช้งานได้หลากหลายทั้งกับแลปท๊อบและคอมพิวเตอร์ตั้งโต๊ะผ่านตัวรับ USB\r\n•	เทคโนโลยีแสงเลเซอร์\r\n•	เพรียวบาง\r\n•	16 ช่องทางการทำงานแบบไร้สาย\r\n•	คุณภาพเยี่ยม\r\n151 บาท\r\n', 'Product details of Moonar ออฟติคัลเม้าส์ไร้สาย และตัวรับสัญญาณ 2.4GHZ (สีขาว)\r\nMoonar ออฟติคัลเม้าส์ไร้สาย และตัวรับสัญญาณ 2.4GHZ (สีขาว)\r\n\r\n1. เม้าส์ไร้สาย 2.4 GHz ที่ออกแบบมาตรงตามสรีระศาสตร์ รูปลักษณ์เพรียวบาง เหมาะสำหรับใช้ในบ้านหรือออฟฟิศ\r\n2. ใช้งานได้หลากหลายทั้งกับแลปท๊อบและคอมพิวเตอร์ตั้งโต๊ะผ่านตัวรับ USB (มาพร้อมกับเม้าส์)\r\n3. เทคโนโลยีแสงเลเซอร์ทำงานบนพื้นผิวที่แตกต่างกัน\r\n4. 16 ช่องทางการทำงานแบบไร้สายด้วยความถี่อัตโนมัติที่หลากหลาย\r\n5. ความถี่ : 2402MHz-2480MHz\r\n6. ระยะของ Wi-Fi ประมาณ 10 เมตร\r\n7. สีขาว\r\n8. ใช้ถ่าน AAA 2 ก้อน (ไม่รวมมาในนี้)\r\n\r\nสินค้าประกอบด้วย\r\n- 1 x เม้าส์ไร้สาย\r\n- 1 x USB Receiver\r\n\r\nข้อควรรระวัง\r\n1. ระยะทางการทำงานของเม้าส์สัมพันธ์กับสภาพแวดล้อมรอบข้าง\r\n2. เมื่อไม่ได้ใช้เป็นระยะเวลานานเม้าส์จะปิดการทำงานอัตโนมัติและเข้าสู่โหมด Sleeping เพื่อรักษาพลังงาน และสามารถใช้งานได้อีกครั้งเพียงคลิกบนปุ่มเม้าส์\r\nข้อมูลจำเพาะของ Moonar ออฟติคัลเม้าส์ไร้สาย และตัวรับสัญญาณ 2.4GHZ (สีขาว)\r\nรายการสินค้าในกล่อง\r\n•	1 x Wireless Mouse\r\n•	1 x USB Receiver\r\nคุณสมบัติทั่วไป\r\nSKU	MO213ELAV4WRANTH-1421966\r\nCare label	สินค้านำเข้า/ IMPORTED\r\nเพศ	Unisex\r\nSize (cm)	6 x 3 x 3\r\nการรับประกันสินค้า	No Warranty\r\nWeight (kg)	0.3\r\n\r\n', 'Moonar', '', '', '', 'moonar'),
(60, 'Metoo Wireless Mouse รุ่น E3 - Black \r\n•	2.4G Wireless\r\n•	1600 dpi\r\n•	Warranty: 1 year\r\n\r\n199 บาท\r\n', 'Product details of Metoo Wireless Mouse รุ่น E3 - Black\r\nMetoo Wireless Mouse รุ่น E3 - Black\r\n\r\nSpecifications\r\n- Type : Ergonomic \r\n- Interface : USB 2.0 \r\n- Wireless or Wired : 2.4G Wireless \r\n- Optical Type : LED \r\n- Resolution : 1600dpi \r\n- Bluetooth Version : No \r\n- Operating Range : 10m \r\n- Powered By : AA Battery \r\n- Battery included or not : Yes \r\n- Battery Number : 1 \r\n- Supports System : Win xp , Win 2000 , Win 2008 , Win vista , Win7 32 , Win7 64 , Win8 32 , Win8 64 , MAC OS X \r\nข้อมูลจำเพาะของ Metoo Wireless Mouse รุ่น E3 - Black\r\nรายการสินค้าในกล่อง\r\n•	Metoo Wireless Mouse รุ่น E3 - Black\r\n•	AA battery\r\n•	Receiver\r\nคุณสมบัติทั่วไป\r\nSKU	ME958ELAJBPJANTH-914150\r\nสี	Black\r\nเพศ	Unisex\r\nโมเดล	E3\r\nSize (cm)	9.6 x 5.5 x 2.9\r\nWeight (kg)	0.042\r\nPromotion Texts	thailand\r\n\r\n\r\n', 'Metoo Wireless Mouse รุ่น E3', '', '', '', 'metoo-wireless-mouse-รุ่น-e3'),
(61, 'Logitech Tunable Gaming Mouse รุ่น G502\r\nประเภทของการรับประกัน: 1 year Warranty\r\n•	ดีไซน์จับกระชับมือ\r\n•	มีความทนทานมาก\r\n•	ออกแบบสวยงาม ทันสมัย\r\n•	ล้อเลื่อนมีความแม่นยำสูงมาก\r\n•	รูปทรงเหมาะสมตามหลักสรีรศาสตร์\r\n2,190 บาท\r\n', 'Product details of Logitech Tunable Gaming Mouse รุ่น G502\r\nคุณเคยประสบปัญหาแบบนี้หรือเปล่า? ซื้อเม้าส์มาใช้ไม่นานก็เสีย เวลาใช้ก็เลื่อนยากไม่แม่นยำ จับเม้าส์ไม่ถนัดมือ เม้าส์ตอบสนองช้า ทำให้คุณรู้สึกหงุดหงิดทุกครั้งที่ต้องหยิบเม้าส์ขึ้นมาใช้ และปัญหาอื่นๆ อีกสารพัด ปัญหาเหล่านี้จะหมดไป ถ้าคุณใช้ Logitech Wireless Gaming Mouse รุ่น G502 เม้าส์คุณภาพดีที่มีราคาย่อมเยา และทนทานใช้ได้นาน หมดทุกปัญหาที่เคยเจอมา ให้การใช้งานของคุณราบรื่นไม่ติดขัด ตอบสนองทุกไลฟ์สไตล์การใช้งานได้อย่างลงตัว\r\n\r\nคุณสมบัติเด่น\r\n\r\nประสิทธิภาพการทำงานสุดล้ำ \r\nLogitech Wireless Gaming Mouse รุ่น G502 มาพร้อมกับระบบปรับแต่งเซ็นเซอร์แสงใน Proteus Core ตามพื้นผิวการเล่นของคุณ เพื่อความถูกต้องและแม่นยำ และมีปุ่มที่ตั้งค่าได้ 11 ปุ่ม สั่งการได้ง่ายดายเพียงปลายนิ้วสัมผัส คุณสามารถใช้คำสั่งเกมและมาโครได้หลากหลายตามที่คุณต้องการ และบันทึกการตั้งค่าของคุณไว้ในโปรไฟล์ภายในเมาส์ หรือเลือกใช้โปรไฟล์นับพันบนพีซีของคุณ อีกทั้งคุณสามารถปรับเปลี่ยนการตั้งค่า DPI ได้ 5 แบบ ตั้งแต่ 200 DPI สำหรับการยิงเป้าหมายระยะเผาขน ไปจนถึง 12,000 DPI ที่รวดเร็วเหนือแสง\r\n\r\nตอบสนองรวดเร็วและแม่นยำ\r\nLogitech Wireless Gaming Mouse รุ่น G502 มาพร้อมกับล้อเลื่อนแบบดูอัลโหมดระดับเกม ควบคุมได้อย่างฉับไว รวดเร็ว และแม่นยำ โดยคุณสามารถเลือกโหมดได้อย่างเหมาะสมด้วย Proteus Core เลือกว่าคุณต้องการความแม่นยำคลิกต่อคลิกหรือการปรับเลื่อนความเร็วสูง นอกจากนั้น คุณยังสามารถปรับแต่งเมาส์เล่นเกมตามน้ำหนักและสมดุลที่เหมาะกับคุณ Proteus Core มาพร้อมกับน้ำหนัก 3.6 กรัม จำนวน 5 ชุด เพิ่มเติมน้ำหนักบางส่วนหรือทั้งหมด และจัดเรียงตำแหน่งเพื่อปรับแต่งเมาส์ให้เหมาะกับคุณ\r\n\r\nข้อมูลจำเพาะ\r\n\r\nการติดตาม \r\n- ความละเอียด: 200 – 12,000 dpi \r\n- การเร่งความเร็วสูงสุด: >40G* \r\n- ความเร็วสูงสุด: >300 ips* \r\n* ทดสอบบน Logitech G240 Gaming Mouse Pad\r\n\r\nความรวดเร็วในการตอบสนอง \r\n- รูปแบบข้อมูล USB: 16 บิต/แกน \r\n- อัตราการรายงาน USB: 1000 Hz (1ms) \r\n- ไมโครโปรเซสเซอร์: 32 บิต\r\n\r\nความลื่นไหล \r\n- สัมประสิทธิ์ไดนามิกของแรงเสียดทาน - Mu (k): .10* \r\n- สัมประสิทธิ์คงที่ของแรงเสียดทาน - Mu (s): .15* \r\n*ผ่านการทดสอบบนโต๊ะทำงานที่ทำจากไม้เคลือบผิว\r\n\r\nความทนทาน \r\n- ปุ่ม (ซ้าย/ขวา): 20 ล้านคลิก \r\n- ฐานรอง: 250 กิโลเมตร\r\n\r\nคุณสมบัติทางกายภาพ \r\n- ความสูง: 132 มม. \r\n- ความกว้าง: 75 มม. \r\n- ความลึก: 40 มม. \r\n- น้ำหนัก: 168 กรัม (เมาส์และสายเชื่อมต่อ) \r\n- น้ำหนัก: 121 กรัม (เมาส์ ไม่รวมสายเชื่อมต่อ)\r\nข้อมูลจำเพาะของ Logitech Tunable Gaming Mouse รุ่น G502\r\nรายการสินค้าในกล่อง\r\n•	Logitech Tunable Gaming Mouse รุ่น G502\r\nคุณสมบัติทั่วไป\r\nSKU	LO633ELAA1JAZ0ANTH-3358724\r\nเพศ	Unisex\r\nโมเดล	G502\r\nSize (cm)	13 x 7.5 x 4\r\nการรับประกันสินค้า	1 year Warranty\r\nWeight (kg)	0.16\r\n\r\n', 'Logitech Tunable Gaming Mouse รุ่น G502', '', '', '', 'logitech-tunable-gaming-mouse-รุ่น-g502');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_categories`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_categories` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_category_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `mhyjf_virtuemart_product_categories`
--

INSERT INTO `mhyjf_virtuemart_product_categories` (`id`, `virtuemart_product_id`, `virtuemart_category_id`, `ordering`) VALUES
(6, 5, 14, 0),
(7, 5, 15, 0),
(8, 6, 16, 0),
(9, 7, 16, 0),
(10, 7, 14, 0),
(11, 8, 11, 0),
(12, 8, 23, 0),
(13, 9, 11, 0),
(14, 9, 24, 0),
(15, 10, 11, 0),
(16, 10, 26, 0),
(17, 11, 11, 0),
(18, 11, 1, 0),
(19, 12, 11, 0),
(20, 12, 27, 0),
(21, 13, 11, 0),
(22, 13, 2, 0),
(23, 14, 11, 0),
(24, 14, 25, 0),
(25, 15, 7, 0),
(26, 15, 21, 0),
(27, 16, 7, 0),
(28, 16, 3, 0),
(29, 17, 7, 0),
(30, 17, 22, 0),
(31, 18, 6, 0),
(32, 18, 12, 0),
(33, 19, 6, 0),
(34, 19, 8, 0),
(35, 20, 6, 0),
(36, 20, 9, 0),
(37, 21, 6, 0),
(38, 21, 10, 0),
(39, 22, 13, 0),
(40, 22, 20, 0),
(41, 23, 13, 0),
(42, 23, 17, 0),
(43, 24, 13, 0),
(44, 24, 18, 0),
(45, 25, 13, 0),
(46, 25, 19, 0),
(47, 26, 11, 0),
(48, 26, 23, 0),
(49, 27, 11, 0),
(50, 27, 23, 0),
(51, 28, 11, 0),
(52, 28, 23, 0),
(53, 29, 11, 0),
(54, 29, 23, 0),
(55, 30, 11, 0),
(56, 30, 23, 0),
(57, 31, 7, 0),
(58, 31, 3, 0),
(59, 32, 7, 0),
(60, 32, 3, 0),
(61, 33, 7, 0),
(62, 33, 3, 0),
(63, 34, 7, 0),
(64, 34, 3, 0),
(65, 35, 7, 0),
(66, 35, 22, 0),
(67, 36, 7, 0),
(68, 36, 22, 0),
(69, 37, 7, 0),
(70, 37, 22, 0),
(71, 38, 7, 0),
(72, 38, 22, 0),
(73, 39, 7, 0),
(74, 39, 22, 0),
(75, 40, 12, 0),
(76, 41, 6, 0),
(77, 41, 12, 0),
(78, 42, 6, 0),
(79, 42, 12, 0),
(80, 43, 6, 0),
(81, 43, 12, 0),
(82, 44, 14, 0),
(83, 44, 15, 0),
(84, 45, 14, 0),
(85, 45, 15, 0),
(86, 46, 14, 0),
(87, 46, 15, 0),
(88, 47, 14, 0),
(89, 47, 15, 0),
(90, 48, 14, 0),
(91, 48, 15, 0),
(92, 49, 14, 0),
(93, 49, 16, 0),
(94, 50, 14, 0),
(95, 50, 16, 0),
(96, 51, 14, 0),
(97, 51, 16, 0),
(100, 53, 14, 0),
(101, 53, 16, 0),
(102, 54, 13, 0),
(103, 54, 17, 0),
(104, 55, 13, 0),
(105, 55, 17, 0),
(106, 56, 13, 0),
(107, 56, 17, 0),
(108, 57, 13, 0),
(109, 57, 17, 0),
(110, 58, 13, 0),
(111, 58, 17, 0),
(112, 59, 13, 0),
(113, 59, 18, 0),
(114, 60, 13, 0),
(115, 60, 18, 0),
(116, 61, 13, 0),
(117, 61, 18, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_customfields`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_customfields` (
  `virtuemart_customfield_id` int(1) unsigned NOT NULL COMMENT 'field id',
  `virtuemart_product_id` int(1) NOT NULL DEFAULT '0',
  `virtuemart_custom_id` int(1) NOT NULL DEFAULT '1' COMMENT 'custom group id',
  `customfield_value` varchar(2500) DEFAULT NULL COMMENT 'field value',
  `customfield_price` decimal(15,6) DEFAULT NULL COMMENT 'price',
  `disabler` int(1) unsigned NOT NULL DEFAULT '0',
  `override` int(1) unsigned NOT NULL DEFAULT '0',
  `customfield_params` varchar(17000) NOT NULL DEFAULT '' COMMENT 'Param for Plugins',
  `product_sku` char(64) DEFAULT NULL,
  `product_gtin` char(64) DEFAULT NULL,
  `product_mpn` char(64) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) unsigned NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) unsigned NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='custom fields';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_manufacturers`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_manufacturers` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) DEFAULT NULL,
  `virtuemart_manufacturer_id` smallint(1) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Maps a product to a manufacturer';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_medias`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_medias` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_product_medias`
--

INSERT INTO `mhyjf_virtuemart_product_medias` (`id`, `virtuemart_product_id`, `virtuemart_media_id`, `ordering`) VALUES
(7, 6, 5, 1),
(6, 5, 36, 1),
(8, 7, 37, 1),
(9, 8, 38, 1),
(10, 9, 39, 1),
(11, 10, 40, 1),
(12, 11, 41, 1),
(13, 12, 42, 1),
(14, 13, 43, 1),
(15, 14, 44, 1),
(16, 15, 45, 1),
(17, 16, 46, 1),
(18, 17, 47, 1),
(19, 18, 48, 1),
(20, 19, 49, 1),
(21, 20, 50, 1),
(22, 21, 51, 1),
(23, 22, 52, 1),
(24, 23, 53, 1),
(25, 24, 54, 1),
(26, 25, 55, 1),
(27, 26, 56, 1),
(28, 27, 57, 1),
(29, 28, 58, 1),
(30, 29, 59, 1),
(31, 30, 60, 1),
(32, 31, 61, 1),
(33, 32, 62, 1),
(34, 33, 63, 1),
(35, 34, 64, 1),
(36, 35, 65, 1),
(37, 36, 66, 1),
(38, 37, 67, 1),
(39, 38, 68, 1),
(40, 39, 69, 1),
(41, 40, 70, 1),
(42, 41, 71, 1),
(43, 42, 72, 1),
(44, 43, 73, 1),
(45, 44, 74, 1),
(46, 45, 75, 1),
(47, 46, 76, 1),
(48, 47, 77, 1),
(49, 48, 78, 1),
(50, 49, 79, 1),
(51, 50, 80, 1),
(52, 51, 81, 1),
(54, 53, 83, 1),
(55, 54, 84, 1),
(56, 55, 85, 1),
(57, 56, 86, 1),
(58, 57, 87, 1),
(59, 58, 88, 1),
(60, 59, 89, 1),
(61, 60, 90, 1),
(62, 61, 91, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_prices`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_prices` (
  `virtuemart_product_price_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(15,6) DEFAULT NULL,
  `override` tinyint(1) DEFAULT NULL,
  `product_override_price` decimal(15,5) DEFAULT NULL,
  `product_tax_id` int(1) DEFAULT NULL,
  `product_discount_id` int(1) DEFAULT NULL,
  `product_currency` smallint(1) DEFAULT NULL,
  `product_price_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_price_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_quantity_start` int(1) unsigned NOT NULL DEFAULT '0',
  `price_quantity_end` int(1) unsigned NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='Holds price records for a product';

--
-- Dumping data for table `mhyjf_virtuemart_product_prices`
--

INSERT INTO `mhyjf_virtuemart_product_prices` (`virtuemart_product_price_id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`, `product_price`, `override`, `product_override_price`, `product_tax_id`, `product_discount_id`, `product_currency`, `product_price_publish_up`, `product_price_publish_down`, `price_quantity_start`, `price_quantity_end`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(6, 6, 0, '900.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:19:02', 467, '2016-02-08 18:19:13', 467, '0000-00-00 00:00:00', 0),
(5, 5, 0, '4.990000', 0, '4.99000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 17:29:45', 467, '2016-02-08 17:35:11', 467, '0000-00-00 00:00:00', 0),
(7, 7, 0, '900.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:23:15', 467, '2016-02-08 18:24:56', 467, '0000-00-00 00:00:00', 0),
(8, 8, 0, '469.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:32:47', 467, '2016-02-08 18:33:10', 467, '0000-00-00 00:00:00', 0),
(9, 9, 0, '11.580000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:38:50', 467, '2016-02-08 18:48:50', 467, '0000-00-00 00:00:00', 0),
(10, 10, 0, '4.710000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:43:27', 467, '2016-02-08 18:48:23', 467, '0000-00-00 00:00:00', 0),
(11, 11, 0, '2.610000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:47:51', 467, '2016-02-08 18:47:51', 467, '0000-00-00 00:00:00', 0),
(12, 12, 0, '4.440000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 18:56:31', 467, '2016-02-08 18:56:41', 467, '0000-00-00 00:00:00', 0),
(13, 13, 0, '350.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:00:07', 467, '2016-02-08 19:00:07', 467, '0000-00-00 00:00:00', 0),
(14, 14, 0, '226.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:04:12', 467, '2016-02-08 19:04:12', 467, '0000-00-00 00:00:00', 0),
(15, 15, 0, '968.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:10:24', 467, '2016-02-08 19:10:24', 467, '0000-00-00 00:00:00', 0),
(16, 16, 0, '207.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:13:51', 467, '2016-02-08 19:13:51', 467, '0000-00-00 00:00:00', 0),
(17, 17, 0, '270.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:17:35', 467, '2016-02-08 19:17:35', 467, '0000-00-00 00:00:00', 0),
(18, 18, 0, '450.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:22:49', 467, '2016-02-08 19:22:49', 467, '0000-00-00 00:00:00', 0),
(19, 19, 0, '1298.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:26:24', 467, '2016-02-09 04:08:09', 467, '0000-00-00 00:00:00', 0),
(20, 20, 0, '1800.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:28:58', 467, '2016-02-09 04:05:50', 467, '0000-00-00 00:00:00', 0),
(21, 21, 0, '2990.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:35:36', 467, '2016-02-09 04:09:18', 467, '0000-00-00 00:00:00', 0),
(22, 22, 0, '402.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:39:23', 467, '2016-02-08 19:39:23', 467, '0000-00-00 00:00:00', 0),
(23, 23, 0, '340.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:43:23', 467, '2016-02-08 19:43:23', 467, '0000-00-00 00:00:00', 0),
(24, 24, 0, '165.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:47:25', 467, '2016-02-08 19:47:25', 467, '0000-00-00 00:00:00', 0),
(25, 25, 0, '269.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-08 19:50:01', 467, '2016-02-08 19:50:01', 467, '0000-00-00 00:00:00', 0),
(26, 26, 0, '1500.000000', 0, '1819.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 05:02:36', 467, '2016-02-09 05:09:48', 467, '0000-00-00 00:00:00', 0),
(27, 27, 0, '13650.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 05:14:34', 467, '2016-02-09 05:44:07', 467, '0000-00-00 00:00:00', 0),
(28, 28, 0, '4250.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 05:29:04', 467, '2016-02-09 05:44:35', 467, '0000-00-00 00:00:00', 0),
(29, 29, 0, '4190.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 05:36:32', 467, '2016-02-09 05:45:03', 467, '0000-00-00 00:00:00', 0),
(30, 30, 0, '3590.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 05:41:14', 467, '2016-02-09 05:45:30', 467, '0000-00-00 00:00:00', 0),
(31, 31, 0, '365.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 06:08:22', 467, '2016-02-09 06:08:22', 467, '0000-00-00 00:00:00', 0),
(32, 32, 0, '199.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 06:14:02', 467, '2016-02-09 06:14:02', 467, '0000-00-00 00:00:00', 0),
(33, 33, 0, '1755.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 06:21:58', 467, '2016-02-09 06:21:58', 467, '0000-00-00 00:00:00', 0),
(34, 34, 0, '9990.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 06:25:36', 467, '2016-02-09 06:25:36', 467, '0000-00-00 00:00:00', 0),
(35, 35, 0, '290.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:01:29', 467, '2016-02-09 07:01:29', 467, '0000-00-00 00:00:00', 0),
(36, 36, 0, '310.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:05:19', 467, '2016-02-09 07:05:19', 467, '0000-00-00 00:00:00', 0),
(37, 37, 0, '165.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:07:52', 467, '2016-02-09 07:07:52', 467, '0000-00-00 00:00:00', 0),
(38, 38, 0, '299.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:10:54', 467, '2016-02-09 07:10:54', 467, '0000-00-00 00:00:00', 0),
(39, 39, 0, '329.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:15:47', 467, '2016-02-09 07:15:47', 467, '0000-00-00 00:00:00', 0),
(40, 40, 0, '2390.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:43:21', 467, '2016-02-09 07:46:23', 467, '0000-00-00 00:00:00', 0),
(41, 41, 0, '1690.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:49:18', 467, '2016-02-09 07:51:02', 467, '0000-00-00 00:00:00', 0),
(42, 42, 0, '3000.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 07:56:32', 467, '2016-02-09 07:56:32', 467, '0000-00-00 00:00:00', 0),
(43, 43, 0, '8500.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 08:01:17', 467, '2016-02-09 08:01:17', 467, '0000-00-00 00:00:00', 0),
(44, 44, 0, '80.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:31:16', 467, '2016-02-09 14:31:16', 467, '0000-00-00 00:00:00', 0),
(45, 45, 0, '348.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:34:11', 467, '2016-02-09 14:34:11', 467, '0000-00-00 00:00:00', 0),
(46, 46, 0, '349.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:36:56', 467, '2016-02-09 14:36:56', 467, '0000-00-00 00:00:00', 0),
(47, 47, 0, '190.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:40:12', 467, '2016-02-09 14:40:12', 467, '0000-00-00 00:00:00', 0),
(48, 48, 0, '5.260000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:43:14', 467, '2016-02-09 14:43:14', 467, '0000-00-00 00:00:00', 0),
(49, 49, 0, '2900.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:46:11', 467, '2016-02-09 14:46:11', 467, '0000-00-00 00:00:00', 0),
(50, 50, 0, '2510.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:49:47', 467, '2016-02-09 14:49:47', 467, '0000-00-00 00:00:00', 0),
(51, 51, 0, '350.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 14:56:24', 467, '2016-02-09 14:56:24', 467, '0000-00-00 00:00:00', 0),
(53, 53, 0, '3800.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:10:22', 467, '2016-02-09 15:10:22', 467, '0000-00-00 00:00:00', 0),
(54, 54, 0, '1090.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:14:04', 467, '2016-02-09 15:14:04', 467, '0000-00-00 00:00:00', 0),
(55, 55, 0, '599.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:17:43', 467, '2016-02-09 15:17:43', 467, '0000-00-00 00:00:00', 0),
(56, 56, 0, '790.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:23:04', 467, '2016-02-09 15:23:04', 467, '0000-00-00 00:00:00', 0),
(57, 57, 0, '690.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:26:15', 467, '2016-02-09 15:26:15', 467, '0000-00-00 00:00:00', 0),
(58, 58, 0, '129.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:29:09', 467, '2016-02-09 15:29:09', 467, '0000-00-00 00:00:00', 0),
(59, 59, 0, '151.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:34:46', 467, '2016-02-09 15:34:46', 467, '0000-00-00 00:00:00', 0),
(60, 60, 0, '199.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:38:36', 467, '2016-02-09 15:38:36', 467, '0000-00-00 00:00:00', 0),
(61, 61, 0, '2190.000000', 0, '0.00000', 0, 0, 135, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, '2016-02-09 15:40:58', 467, '2016-02-09 15:40:58', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_product_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_product_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=utf8 COMMENT='Maps Products to Categories';

--
-- Dumping data for table `mhyjf_virtuemart_product_shoppergroups`
--

INSERT INTO `mhyjf_virtuemart_product_shoppergroups` (`id`, `virtuemart_product_id`, `virtuemart_shoppergroup_id`) VALUES
(9, 5, 3),
(7, 5, 2),
(8, 5, 1),
(10, 7, 2),
(11, 7, 1),
(12, 7, 3),
(13, 8, 2),
(14, 8, 1),
(15, 8, 3),
(16, 9, 2),
(17, 9, 1),
(18, 9, 3),
(19, 10, 2),
(20, 10, 1),
(21, 10, 3),
(22, 11, 2),
(23, 11, 1),
(24, 11, 3),
(25, 12, 2),
(26, 12, 1),
(27, 12, 3),
(28, 13, 2),
(29, 13, 1),
(30, 13, 3),
(31, 14, 2),
(32, 14, 1),
(33, 14, 3),
(34, 15, 2),
(35, 15, 1),
(36, 15, 3),
(37, 16, 2),
(38, 16, 1),
(39, 16, 3),
(40, 17, 2),
(41, 17, 1),
(42, 17, 3),
(43, 18, 2),
(44, 18, 1),
(45, 18, 3),
(46, 19, 2),
(47, 19, 1),
(48, 19, 3),
(49, 20, 2),
(50, 20, 1),
(51, 20, 3),
(52, 21, 2),
(53, 21, 1),
(54, 21, 3),
(55, 22, 2),
(56, 22, 1),
(57, 22, 3),
(58, 23, 2),
(59, 23, 1),
(60, 23, 3),
(61, 24, 2),
(62, 24, 1),
(63, 24, 3),
(64, 25, 2),
(65, 25, 1),
(66, 25, 3),
(67, 26, 2),
(68, 26, 1),
(69, 26, 3),
(70, 27, 2),
(71, 27, 1),
(72, 27, 3),
(73, 28, 2),
(74, 28, 1),
(75, 28, 3),
(76, 29, 2),
(77, 29, 1),
(78, 29, 3),
(79, 30, 2),
(80, 30, 1),
(81, 30, 3),
(82, 31, 2),
(83, 31, 1),
(84, 31, 3),
(85, 32, 2),
(86, 32, 1),
(87, 32, 3),
(88, 33, 2),
(89, 33, 1),
(90, 33, 3),
(91, 34, 2),
(92, 34, 1),
(93, 34, 3),
(94, 35, 2),
(95, 35, 1),
(96, 35, 3),
(97, 36, 2),
(98, 36, 1),
(99, 36, 3),
(100, 37, 2),
(101, 37, 1),
(102, 37, 3),
(103, 38, 2),
(104, 38, 1),
(105, 38, 3),
(106, 39, 2),
(107, 39, 1),
(108, 39, 3),
(109, 40, 2),
(110, 40, 1),
(111, 40, 3),
(112, 41, 2),
(113, 41, 1),
(114, 41, 3),
(115, 42, 2),
(116, 42, 1),
(117, 42, 3),
(118, 43, 2),
(119, 43, 1),
(120, 43, 3),
(121, 44, 2),
(122, 44, 1),
(123, 44, 3),
(124, 45, 2),
(125, 45, 1),
(126, 45, 3),
(127, 46, 2),
(128, 46, 1),
(129, 46, 3),
(130, 47, 2),
(131, 47, 1),
(132, 47, 3),
(133, 48, 2),
(134, 48, 1),
(135, 48, 3),
(136, 49, 2),
(137, 49, 1),
(138, 49, 3),
(139, 50, 2),
(140, 50, 1),
(141, 50, 3),
(142, 51, 2),
(143, 51, 1),
(144, 51, 3),
(148, 53, 2),
(149, 53, 1),
(150, 53, 3),
(151, 54, 2),
(152, 54, 1),
(153, 54, 3),
(154, 55, 2),
(155, 55, 1),
(156, 55, 3),
(157, 56, 2),
(158, 56, 1),
(159, 56, 3),
(160, 57, 2),
(161, 57, 1),
(162, 57, 3),
(163, 58, 2),
(164, 58, 1),
(165, 58, 3),
(166, 59, 2),
(167, 59, 1),
(168, 59, 3),
(169, 60, 2),
(170, 60, 1),
(171, 60, 3),
(172, 61, 2),
(173, 61, 1),
(174, 61, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_ratings`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_ratings` (
  `virtuemart_rating_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `rates` int(1) NOT NULL DEFAULT '0',
  `ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `rating` decimal(10,1) NOT NULL DEFAULT '0.0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_rating_reviews`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_rating_reviews` (
  `virtuemart_rating_review_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(18000) DEFAULT NULL,
  `review_ok` tinyint(1) NOT NULL DEFAULT '0',
  `review_rates` int(1) unsigned NOT NULL DEFAULT '0',
  `review_ratingcount` int(1) unsigned NOT NULL DEFAULT '0',
  `review_rating` decimal(10,2) NOT NULL DEFAULT '0.00',
  `review_editable` tinyint(1) NOT NULL DEFAULT '1',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_rating_votes`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_rating_votes` (
  `virtuemart_rating_vote_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `vote` int(1) NOT NULL DEFAULT '0',
  `lastip` char(50) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all ratings for a product';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shipmentmethods`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shipmentmethods` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shipment_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `shipment_element` char(50) NOT NULL DEFAULT '',
  `shipment_params` varchar(19000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Shipment created from the shipment plugins';

--
-- Dumping data for table `mhyjf_virtuemart_shipmentmethods`
--

INSERT INTO `mhyjf_virtuemart_shipmentmethods` (`virtuemart_shipmentmethod_id`, `virtuemart_vendor_id`, `shipment_jplugin_id`, `shipment_element`, `shipment_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 10017, 'weight_countries', 'shipment_logos=[\n    "post.png"\n]|show_on_pdetails="1"|categories=[\n    "1",\n    "2",\n    "3"\n]|blocking_categories=[\n    "1",\n    "2",\n    "3"\n]|countries=[\n    "209"\n]|zip_start="94000"|zip_stop=""|weight_start="0.1"|weight_stop="20"|weight_unit="KG"|nbproducts_start=1|nbproducts_stop=100|orderamount_start="50"|orderamount_stop=""|shipment_cost="100"|package_fee="50"|tax_id="-1"|free_shipment="3"|', 1, 0, 1, '2016-02-06 08:26:57', 467, '2016-02-07 09:59:31', 467, '0000-00-00 00:00:00', 0),
(2, 1, 10017, 'weight_countries', 'shipment_logos=[\n    "post.png"\n]|show_on_pdetails="1"|categories=[\n    "1",\n    "2",\n    "3"\n]|blocking_categories=[\n    "1",\n    "2",\n    "3"\n]|countries=[\n    "209"\n]|zip_start="94000"|zip_stop=""|weight_start="1"|weight_stop="20"|weight_unit="KG"|nbproducts_start=1|nbproducts_stop=20|orderamount_start="50"|orderamount_stop=""|shipment_cost="100"|package_fee="50"|tax_id="-1"|free_shipment="3"|', 1, 0, 1, '2016-02-06 08:42:54', 467, '2016-02-07 09:55:56', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shipmentmethods_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shipmentmethods_en_gb` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shipmentmethods_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shipmentmethods_th_th` (
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL,
  `shipment_name` char(180) NOT NULL DEFAULT '',
  `shipment_desc` varchar(19000) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_shipmentmethods_th_th`
--

INSERT INTO `mhyjf_virtuemart_shipmentmethods_th_th` (`virtuemart_shipmentmethod_id`, `shipment_name`, `shipment_desc`, `slug`) VALUES
(1, 'ems ทั่วประเทศ', 'ขนส่ง EMS ภายในประเทสไทย ระยะเวลา 1-3 วัน', 'tranfer'),
(2, 'พัศดุไปรษนีย์ธรรมดา(strandard parcel)', 'พัศดุไปรษนีย์ธรรมดาบริการจากไปรษนีไทย ระยะเวลา 3-7 วันไม่นับวันหยุด', 'strandard-parcel');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shipmentmethod_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shipmentmethod_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='xref table for shipment to shoppergroup';

--
-- Dumping data for table `mhyjf_virtuemart_shipmentmethod_shoppergroups`
--

INSERT INTO `mhyjf_virtuemart_shipmentmethod_shoppergroups` (`id`, `virtuemart_shipmentmethod_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 1, 2),
(2, 1, 1),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shipment_plg_weight_countries`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shipment_plg_weight_countries` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_order_id` int(11) unsigned DEFAULT NULL,
  `order_number` char(32) DEFAULT NULL,
  `virtuemart_shipmentmethod_id` mediumint(1) unsigned DEFAULT NULL,
  `shipment_name` varchar(5000) DEFAULT NULL,
  `order_weight` decimal(10,4) DEFAULT NULL,
  `shipment_weight_unit` char(3) DEFAULT 'KG',
  `shipment_cost` decimal(10,2) DEFAULT NULL,
  `shipment_package_fee` decimal(10,2) DEFAULT NULL,
  `tax_id` smallint(1) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_shipment_plg_weight_countries`
--

INSERT INTO `mhyjf_virtuemart_shipment_plg_weight_countries` (`id`, `virtuemart_order_id`, `order_number`, `virtuemart_shipmentmethod_id`, `shipment_name`, `order_weight`, `shipment_weight_unit`, `shipment_cost`, `shipment_package_fee`, `tax_id`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(13, 1, 'Z7RP03', 1, '<span class="vmCartShipmentLogo" ><img align="middle" src="http://localhost/joomla/images/stories/virtuemart/shipment/post.png"  alt="post" /></span>  <span class="vmshipment_name">ems ทั่วประเทศ</span><span class="vmshipment_description">ขนส่ง EMS ภายในประเทสไทย ระยะเวลา 1-3 วัน</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2016-02-10 03:54:56', 467, '2016-02-10 03:54:56', 467, '0000-00-00 00:00:00', 0),
(14, 2, '338X04', 1, '<span class="vmCartShipmentLogo" ><img align="middle" src="http://localhost/joomla/images/stories/virtuemart/shipment/post.png"  alt="post" /></span>  <span class="vmshipment_name">ems ทั่วประเทศ</span><span class="vmshipment_description">ขนส่ง EMS ภายในประเทสไทย ระยะเวลา 1-3 วัน</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2016-02-10 03:57:03', 0, '2016-02-10 03:57:03', 0, '0000-00-00 00:00:00', 0),
(15, 3, 'H9ED05', 1, '<span class="vmCartShipmentLogo" ><img align="middle" src="http://localhost/joomla/images/stories/virtuemart/shipment/post.png"  alt="post" /></span>  <span class="vmshipment_name">ems ทั่วประเทศ</span><span class="vmshipment_description">ขนส่ง EMS ภายในประเทสไทย ระยะเวลา 1-3 วัน</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2016-02-10 06:11:10', 480, '2016-02-10 06:11:10', 480, '0000-00-00 00:00:00', 0),
(16, 4, '1MI906', 1, '<span class="vmCartShipmentLogo" ><img align="middle" src="http://localhost/joomla/images/stories/virtuemart/shipment/post.png"  alt="post" /></span>  <span class="vmshipment_name">ems ทั่วประเทศ</span><span class="vmshipment_description">ขนส่ง EMS ภายในประเทสไทย ระยะเวลา 1-3 วัน</span>', '0.0000', 'KG', '0.00', '0.00', -1, '2016-02-10 06:26:21', 481, '2016-02-10 06:26:21', 481, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_shoppergroups` (
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) NOT NULL DEFAULT '1',
  `shopper_group_name` char(128) DEFAULT NULL,
  `shopper_group_desc` char(255) DEFAULT NULL,
  `custom_price_display` tinyint(1) NOT NULL DEFAULT '0',
  `price_display` blob NOT NULL,
  `default` tinyint(1) NOT NULL DEFAULT '0',
  `sgrp_additional` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Shopper Groups that users can be assigned to';

--
-- Dumping data for table `mhyjf_virtuemart_shoppergroups`
--

INSERT INTO `mhyjf_virtuemart_shoppergroups` (`virtuemart_shoppergroup_id`, `virtuemart_vendor_id`, `shopper_group_name`, `shopper_group_desc`, `custom_price_display`, `price_display`, `default`, `sgrp_additional`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(2, 1, 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT', 'COM_VIRTUEMART_SHOPPERGROUP_DEFAULT_TIP', 0, '', 1, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(1, 1, 'COM_VIRTUEMART_SHOPPERGROUP_GUEST', 'COM_VIRTUEMART_SHOPPERGROUP_GUEST_TIP', 0, '', 2, 0, 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 'VIP', 'ลูกค้ากลุ่ม VIP จะได้รับส่วนลดพิเศษต่างๆมากมายเช่น ราคาสินค้าที่ถูกว่า', 1, 0x73686f775f7072696365733d2231227c6261736550726963653d2231227c626173655072696365546578743d2231227c626173655072696365526f756e64696e673d222d31227c76617269616e744d6f64696669636174696f6e3d2231227c76617269616e744d6f64696669636174696f6e546578743d2231227c76617269616e744d6f64696669636174696f6e526f756e64696e673d222d31227c62617365507269636556617269616e743d2231227c62617365507269636556617269616e74546578743d2231227c62617365507269636556617269616e74526f756e64696e673d222d31227c626173655072696365576974685461783d2231227c62617365507269636557697468546178546578743d2231227c62617365507269636557697468546178526f756e64696e673d222d31227c646973636f756e7465645072696365576974686f75745461783d2231227c646973636f756e7465645072696365576974686f7574546178546578743d2231227c646973636f756e7465645072696365576974686f7574546178526f756e64696e673d222d31227c73616c657350726963653d2231227c73616c65735072696365546578743d2231227c73616c65735072696365526f756e64696e673d222d31227c7072696365576974686f75745461783d2231227c7072696365576974686f7574546178546578743d2231227c7072696365576974686f7574546178526f756e64696e673d222d31227c73616c6573507269636557697468446973636f756e743d2231227c73616c6573507269636557697468446973636f756e74546578743d2231227c73616c6573507269636557697468446973636f756e74526f756e64696e673d222d31227c646973636f756e74416d6f756e743d2231227c646973636f756e74416d6f756e74546578743d2231227c646973636f756e74416d6f756e74526f756e64696e673d222d31227c746178416d6f756e743d2231227c746178416d6f756e74546578743d2231227c746178416d6f756e74526f756e64696e673d222d31227c756e697450726963653d2231227c756e69745072696365546578743d2231227c756e69745072696365526f756e64696e673d222d31227c, 0, 0, 0, 0, 1, '2016-02-06 17:05:59', 467, '2016-02-06 17:06:09', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_states`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_states` (
  `virtuemart_state_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `state_name` char(64) DEFAULT NULL,
  `state_3_code` char(3) DEFAULT NULL,
  `state_2_code` char(2) DEFAULT NULL,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '1',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=832 DEFAULT CHARSET=utf8 COMMENT='States that are assigned to a country';

--
-- Dumping data for table `mhyjf_virtuemart_states`
--

INSERT INTO `mhyjf_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 1, 223, 0, 'Alabama', 'ALA', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 1, 223, 0, 'Alaska', 'ALK', 'AK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 1, 223, 0, 'Arizona', 'ARZ', 'AZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 1, 223, 0, 'Arkansas', 'ARK', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 1, 223, 0, 'California', 'CAL', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 1, 223, 0, 'Colorado', 'COL', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 1, 223, 0, 'Connecticut', 'CCT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 1, 223, 0, 'Delaware', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 1, 223, 0, 'District Of Columbia', 'DOC', 'DC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 1, 223, 0, 'Florida', 'FLO', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 1, 223, 0, 'Georgia', 'GEA', 'GA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 1, 223, 0, 'Hawaii', 'HWI', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 1, 223, 0, 'Idaho', 'IDA', 'ID', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 1, 223, 0, 'Illinois', 'ILL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 1, 223, 0, 'Indiana', 'IND', 'IN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 1, 223, 0, 'Iowa', 'IOA', 'IA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 1, 223, 0, 'Kansas', 'KAS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 1, 223, 0, 'Kentucky', 'KTY', 'KY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 1, 223, 0, 'Louisiana', 'LOA', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 1, 223, 0, 'Maine', 'MAI', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 1, 223, 0, 'Maryland', 'MLD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 1, 223, 0, 'Massachusetts', 'MSA', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 1, 223, 0, 'Michigan', 'MIC', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 1, 223, 0, 'Minnesota', 'MIN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 1, 223, 0, 'Mississippi', 'MIS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 1, 223, 0, 'Missouri', 'MIO', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 1, 223, 0, 'Montana', 'MOT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 1, 223, 0, 'Nebraska', 'NEB', 'NE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 1, 223, 0, 'Nevada', 'NEV', 'NV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(30, 1, 223, 0, 'New Hampshire', 'NEH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(31, 1, 223, 0, 'New Jersey', 'NEJ', 'NJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(32, 1, 223, 0, 'New Mexico', 'NEM', 'NM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(33, 1, 223, 0, 'New York', 'NEY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(34, 1, 223, 0, 'North Carolina', 'NOC', 'NC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 1, 223, 0, 'North Dakota', 'NOD', 'ND', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 1, 223, 0, 'Ohio', 'OHI', 'OH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 1, 223, 0, 'Oklahoma', 'OKL', 'OK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 1, 223, 0, 'Oregon', 'ORN', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 1, 223, 0, 'Pennsylvania', 'PEA', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 1, 223, 0, 'Rhode Island', 'RHI', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 1, 223, 0, 'South Carolina', 'SOC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 1, 223, 0, 'South Dakota', 'SOD', 'SD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(43, 1, 223, 0, 'Tennessee', 'TEN', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(44, 1, 223, 0, 'Texas', 'TXS', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(45, 1, 223, 0, 'Utah', 'UTA', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(46, 1, 223, 0, 'Vermont', 'VMT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(47, 1, 223, 0, 'Virginia', 'VIA', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(48, 1, 223, 0, 'Washington', 'WAS', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(49, 1, 223, 0, 'West Virginia', 'WEV', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 1, 223, 0, 'Wisconsin', 'WIS', 'WI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 1, 223, 0, 'Wyoming', 'WYO', 'WY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(52, 1, 38, 0, 'Alberta', 'ALB', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(53, 1, 38, 0, 'British Columbia', 'BRC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(54, 1, 38, 0, 'Manitoba', 'MAB', 'MB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(55, 1, 38, 0, 'New Brunswick', 'NEB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(56, 1, 38, 0, 'Newfoundland and Labrador', 'NFL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(57, 1, 38, 0, 'Northwest Territories', 'NWT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(58, 1, 38, 0, 'Nova Scotia', 'NOS', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(59, 1, 38, 0, 'Nunavut', 'NUT', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(60, 1, 38, 0, 'Ontario', 'ONT', 'ON', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(61, 1, 38, 0, 'Prince Edward Island', 'PEI', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(62, 1, 38, 0, 'Quebec', 'QEC', 'QC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(63, 1, 38, 0, 'Saskatchewan', 'SAK', 'SK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(64, 1, 38, 0, 'Yukon', 'YUT', 'YT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(65, 1, 222, 0, 'England', 'ENG', 'EN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(66, 1, 222, 0, 'Northern Ireland', 'NOI', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(67, 1, 222, 0, 'Scotland', 'SCO', 'SD', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(68, 1, 222, 0, 'Wales', 'WLS', 'WS', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(69, 1, 13, 0, 'Australian Capital Territory', 'ACT', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(70, 1, 13, 0, 'New South Wales', 'NSW', 'NS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(71, 1, 13, 0, 'Northern Territory', 'NOT', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(72, 1, 13, 0, 'Queensland', 'QLD', 'QL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(73, 1, 13, 0, 'South Australia', 'SOA', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(74, 1, 13, 0, 'Tasmania', 'TAS', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(75, 1, 13, 0, 'Victoria', 'VIC', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(76, 1, 13, 0, 'Western Australia', 'WEA', 'WA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(77, 1, 138, 0, 'Aguascalientes', 'AGS', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(78, 1, 138, 0, 'Baja California Norte', 'BCN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(79, 1, 138, 0, 'Baja California Sur', 'BCS', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(80, 1, 138, 0, 'Campeche', 'CAM', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(81, 1, 138, 0, 'Chiapas', 'CHI', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(82, 1, 138, 0, 'Chihuahua', 'CHA', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(83, 1, 138, 0, 'Coahuila', 'COA', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(84, 1, 138, 0, 'Colima', 'COL', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(85, 1, 138, 0, 'Distrito Federal', 'DFM', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(86, 1, 138, 0, 'Durango', 'DGO', 'DO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(87, 1, 138, 0, 'Guanajuato', 'GTO', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(88, 1, 138, 0, 'Guerrero', 'GRO', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(89, 1, 138, 0, 'Hidalgo', 'HGO', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(90, 1, 138, 0, 'Jalisco', 'JAL', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(91, 1, 138, 0, 'M', 'EDM', 'EM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(92, 1, 138, 0, 'Michoac', 'MCN', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(93, 1, 138, 0, 'Morelos', 'MOR', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(94, 1, 138, 0, 'Nayarit', 'NAY', 'NY', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(95, 1, 138, 0, 'Nuevo Le', 'NUL', 'NL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(96, 1, 138, 0, 'Oaxaca', 'OAX', 'OA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(97, 1, 138, 0, 'Puebla', 'PUE', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(98, 1, 138, 0, 'Quer', 'QRO', 'QU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(99, 1, 138, 0, 'Quintana Roo', 'QUR', 'QR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(100, 1, 138, 0, 'San Luis Potos', 'SLP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(101, 1, 138, 0, 'Sinaloa', 'SIN', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(102, 1, 138, 0, 'Sonora', 'SON', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(103, 1, 138, 0, 'Tabasco', 'TAB', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(104, 1, 138, 0, 'Tamaulipas', 'TAM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(105, 1, 138, 0, 'Tlaxcala', 'TLX', 'TX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(106, 1, 138, 0, 'Veracruz', 'VER', 'VZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(107, 1, 138, 0, 'Yucat', 'YUC', 'YU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(108, 1, 138, 0, 'Zacatecas', 'ZAC', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(109, 1, 30, 0, 'Acre', 'ACR', 'AC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(110, 1, 30, 0, 'Alagoas', 'ALG', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(111, 1, 30, 0, 'Amapá', 'AMP', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(112, 1, 30, 0, 'Amazonas', 'AMZ', 'AM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(113, 1, 30, 0, 'Bahía', 'BAH', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(114, 1, 30, 0, 'Ceará', 'CEA', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(115, 1, 30, 0, 'Distrito Federal', 'DFB', 'DF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(116, 1, 30, 0, 'Espírito Santo', 'ESS', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(117, 1, 30, 0, 'Goiás', 'GOI', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(118, 1, 30, 0, 'Maranhão', 'MAR', 'MA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(119, 1, 30, 0, 'Mato Grosso', 'MAT', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(120, 1, 30, 0, 'Mato Grosso do Sul', 'MGS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(121, 1, 30, 0, 'Minas Gerais', 'MIG', 'MG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(122, 1, 30, 0, 'Paraná', 'PAR', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(123, 1, 30, 0, 'Paraíba', 'PRB', 'PB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(124, 1, 30, 0, 'Pará', 'PAB', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(125, 1, 30, 0, 'Pernambuco', 'PER', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(126, 1, 30, 0, 'Piauí', 'PIA', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(127, 1, 30, 0, 'Rio Grande do Norte', 'RGN', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(128, 1, 30, 0, 'Rio Grande do Sul', 'RGS', 'RS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(129, 1, 30, 0, 'Rio de Janeiro', 'RDJ', 'RJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(130, 1, 30, 0, 'Rondônia', 'RON', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(131, 1, 30, 0, 'Roraima', 'ROR', 'RR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(132, 1, 30, 0, 'Santa Catarina', 'SAC', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(133, 1, 30, 0, 'Sergipe', 'SER', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(134, 1, 30, 0, 'São Paulo', 'SAP', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(135, 1, 30, 0, 'Tocantins', 'TOC', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(136, 1, 44, 0, 'Anhui', 'ANH', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(137, 1, 44, 0, 'Beijing', 'BEI', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(138, 1, 44, 0, 'Chongqing', 'CHO', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(139, 1, 44, 0, 'Fujian', 'FUJ', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(140, 1, 44, 0, 'Gansu', 'GAN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(141, 1, 44, 0, 'Guangdong', 'GUA', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(142, 1, 44, 0, 'Guangxi Zhuang', 'GUZ', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(143, 1, 44, 0, 'Guizhou', 'GUI', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(144, 1, 44, 0, 'Hainan', 'HAI', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(145, 1, 44, 0, 'Hebei', 'HEB', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(146, 1, 44, 0, 'Heilongjiang', 'HEI', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(147, 1, 44, 0, 'Henan', 'HEN', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(148, 1, 44, 0, 'Hubei', 'HUB', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(149, 1, 44, 0, 'Hunan', 'HUN', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(150, 1, 44, 0, 'Jiangsu', 'JIA', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(151, 1, 44, 0, 'Jiangxi', 'JIX', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(152, 1, 44, 0, 'Jilin', 'JIL', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(153, 1, 44, 0, 'Liaoning', 'LIA', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(154, 1, 44, 0, 'Nei Mongol', 'NML', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(155, 1, 44, 0, 'Ningxia Hui', 'NIH', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(156, 1, 44, 0, 'Qinghai', 'QIN', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(157, 1, 44, 0, 'Shandong', 'SNG', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(158, 1, 44, 0, 'Shanghai', 'SHH', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(159, 1, 44, 0, 'Shaanxi', 'SHX', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(160, 1, 44, 0, 'Sichuan', 'SIC', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(161, 1, 44, 0, 'Tianjin', 'TIA', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(162, 1, 44, 0, 'Xinjiang Uygur', 'XIU', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(163, 1, 44, 0, 'Xizang', 'XIZ', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(164, 1, 44, 0, 'Yunnan', 'YUN', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(165, 1, 44, 0, 'Zhejiang', 'ZHE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(166, 1, 104, 0, 'Israel', 'ISL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(167, 1, 104, 0, 'Gaza Strip', 'GZS', 'GZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(168, 1, 104, 0, 'West Bank', 'WBK', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(169, 1, 151, 0, 'St. Maarten', 'STM', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(170, 1, 151, 0, 'Bonaire', 'BNR', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(171, 1, 151, 0, 'Curacao', 'CUR', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(172, 1, 175, 0, 'Alba', 'ABA', 'AB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(173, 1, 175, 0, 'Arad', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(174, 1, 175, 0, 'Arges', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(175, 1, 175, 0, 'Bacau', 'BAC', 'BC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(176, 1, 175, 0, 'Bihor', 'BIH', 'BH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(177, 1, 175, 0, 'Bistrita-Nasaud', 'BIS', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(178, 1, 175, 0, 'Botosani', 'BOT', 'BT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(179, 1, 175, 0, 'Braila', 'BRL', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(180, 1, 175, 0, 'Brasov', 'BRA', 'BV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(181, 1, 175, 0, 'Bucuresti', 'BUC', 'B', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(182, 1, 175, 0, 'Buzau', 'BUZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(183, 1, 175, 0, 'Calarasi', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(184, 1, 175, 0, 'Caras Severin', 'CRS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(185, 1, 175, 0, 'Cluj', 'CLJ', 'CJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(186, 1, 175, 0, 'Constanta', 'CST', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(187, 1, 175, 0, 'Covasna', 'COV', 'CV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(188, 1, 175, 0, 'Dambovita', 'DAM', 'DB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(189, 1, 175, 0, 'Dolj', 'DLJ', 'DJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(190, 1, 175, 0, 'Galati', 'GAL', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(191, 1, 175, 0, 'Giurgiu', 'GIU', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(192, 1, 175, 0, 'Gorj', 'GOR', 'GJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(193, 1, 175, 0, 'Hargita', 'HRG', 'HR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(194, 1, 175, 0, 'Hunedoara', 'HUN', 'HD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(195, 1, 175, 0, 'Ialomita', 'IAL', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(196, 1, 175, 0, 'Iasi', 'IAS', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(197, 1, 175, 0, 'Ilfov', 'ILF', 'IF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(198, 1, 175, 0, 'Maramures', 'MAR', 'MM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(199, 1, 175, 0, 'Mehedinti', 'MEH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(200, 1, 175, 0, 'Mures', 'MUR', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(201, 1, 175, 0, 'Neamt', 'NEM', 'NT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(202, 1, 175, 0, 'Olt', 'OLT', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(203, 1, 175, 0, 'Prahova', 'PRA', 'PH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(204, 1, 175, 0, 'Salaj', 'SAL', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(205, 1, 175, 0, 'Satu Mare', 'SAT', 'SM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(206, 1, 175, 0, 'Sibiu', 'SIB', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(207, 1, 175, 0, 'Suceava', 'SUC', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(208, 1, 175, 0, 'Teleorman', 'TEL', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(209, 1, 175, 0, 'Timis', 'TIM', 'TM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(210, 1, 175, 0, 'Tulcea', 'TUL', 'TL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(211, 1, 175, 0, 'Valcea', 'VAL', 'VL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(212, 1, 175, 0, 'Vaslui', 'VAS', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(213, 1, 175, 0, 'Vrancea', 'VRA', 'VN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(214, 1, 105, 0, 'Agrigento', 'AGR', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(215, 1, 105, 0, 'Alessandria', 'ALE', 'AL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(216, 1, 105, 0, 'Ancona', 'ANC', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(217, 1, 105, 0, 'Aosta', 'AOS', 'AO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(218, 1, 105, 0, 'Arezzo', 'ARE', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(219, 1, 105, 0, 'Ascoli Piceno', 'API', 'AP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(220, 1, 105, 0, 'Asti', 'AST', 'AT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(221, 1, 105, 0, 'Avellino', 'AVE', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(222, 1, 105, 0, 'Bari', 'BAR', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(223, 1, 105, 0, 'Belluno', 'BEL', 'BL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(224, 1, 105, 0, 'Benevento', 'BEN', 'BN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(225, 1, 105, 0, 'Bergamo', 'BEG', 'BG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(226, 1, 105, 0, 'Biella', 'BIE', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(227, 1, 105, 0, 'Bologna', 'BOL', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(228, 1, 105, 0, 'Bolzano', 'BOZ', 'BZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(229, 1, 105, 0, 'Brescia', 'BRE', 'BS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(230, 1, 105, 0, 'Brindisi', 'BRI', 'BR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(231, 1, 105, 0, 'Cagliari', 'CAG', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(232, 1, 105, 0, 'Caltanissetta', 'CAL', 'CL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(233, 1, 105, 0, 'Campobasso', 'CBO', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(234, 1, 105, 0, 'Carbonia-Iglesias', 'CAR', 'CI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(235, 1, 105, 0, 'Caserta', 'CAS', 'CE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(236, 1, 105, 0, 'Catania', 'CAT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(237, 1, 105, 0, 'Catanzaro', 'CTZ', 'CZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(238, 1, 105, 0, 'Chieti', 'CHI', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(239, 1, 105, 0, 'Como', 'COM', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(240, 1, 105, 0, 'Cosenza', 'COS', 'CS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(241, 1, 105, 0, 'Cremona', 'CRE', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(242, 1, 105, 0, 'Crotone', 'CRO', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(243, 1, 105, 0, 'Cuneo', 'CUN', 'CN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(244, 1, 105, 0, 'Enna', 'ENN', 'EN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(245, 1, 105, 0, 'Ferrara', 'FER', 'FE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(246, 1, 105, 0, 'Firenze', 'FIR', 'FI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(247, 1, 105, 0, 'Foggia', 'FOG', 'FG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(248, 1, 105, 0, 'Forli-Cesena', 'FOC', 'FC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(249, 1, 105, 0, 'Frosinone', 'FRO', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(250, 1, 105, 0, 'Genova', 'GEN', 'GE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(251, 1, 105, 0, 'Gorizia', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(252, 1, 105, 0, 'Grosseto', 'GRO', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(253, 1, 105, 0, 'Imperia', 'IMP', 'IM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(254, 1, 105, 0, 'Isernia', 'ISE', 'IS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(255, 1, 105, 0, 'L''Aquila', 'AQU', 'AQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(256, 1, 105, 0, 'La Spezia', 'LAS', 'SP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(257, 1, 105, 0, 'Latina', 'LAT', 'LT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(258, 1, 105, 0, 'Lecce', 'LEC', 'LE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(259, 1, 105, 0, 'Lecco', 'LCC', 'LC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(260, 1, 105, 0, 'Livorno', 'LIV', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(261, 1, 105, 0, 'Lodi', 'LOD', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(262, 1, 105, 0, 'Lucca', 'LUC', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(263, 1, 105, 0, 'Macerata', 'MAC', 'MC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(264, 1, 105, 0, 'Mantova', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(265, 1, 105, 0, 'Massa-Carrara', 'MAS', 'MS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(266, 1, 105, 0, 'Matera', 'MAA', 'MT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(267, 1, 105, 0, 'Medio Campidano', 'MED', 'VS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(268, 1, 105, 0, 'Messina', 'MES', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(269, 1, 105, 0, 'Milano', 'MIL', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(270, 1, 105, 0, 'Modena', 'MOD', 'MO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(271, 1, 105, 0, 'Napoli', 'NAP', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(272, 1, 105, 0, 'Novara', 'NOV', 'NO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(273, 1, 105, 0, 'Nuoro', 'NUR', 'NU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(274, 1, 105, 0, 'Ogliastra', 'OGL', 'OG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(275, 1, 105, 0, 'Olbia-Tempio', 'OLB', 'OT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(276, 1, 105, 0, 'Oristano', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(277, 1, 105, 0, 'Padova', 'PDA', 'PD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(278, 1, 105, 0, 'Palermo', 'PAL', 'PA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(279, 1, 105, 0, 'Parma', 'PAA', 'PR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(280, 1, 105, 0, 'Pavia', 'PAV', 'PV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(281, 1, 105, 0, 'Perugia', 'PER', 'PG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(282, 1, 105, 0, 'Pesaro e Urbino', 'PES', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(283, 1, 105, 0, 'Pescara', 'PSC', 'PE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(284, 1, 105, 0, 'Piacenza', 'PIA', 'PC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(285, 1, 105, 0, 'Pisa', 'PIS', 'PI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(286, 1, 105, 0, 'Pistoia', 'PIT', 'PT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(287, 1, 105, 0, 'Pordenone', 'POR', 'PN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(288, 1, 105, 0, 'Potenza', 'PTZ', 'PZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(289, 1, 105, 0, 'Prato', 'PRA', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(290, 1, 105, 0, 'Ragusa', 'RAG', 'RG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(291, 1, 105, 0, 'Ravenna', 'RAV', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(292, 1, 105, 0, 'Reggio Calabria', 'REG', 'RC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(293, 1, 105, 0, 'Reggio Emilia', 'REE', 'RE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(294, 1, 105, 0, 'Rieti', 'RIE', 'RI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(295, 1, 105, 0, 'Rimini', 'RIM', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(296, 1, 105, 0, 'Roma', 'ROM', 'RM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(297, 1, 105, 0, 'Rovigo', 'ROV', 'RO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(298, 1, 105, 0, 'Salerno', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(299, 1, 105, 0, 'Sassari', 'SAS', 'SS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(300, 1, 105, 0, 'Savona', 'SAV', 'SV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(301, 1, 105, 0, 'Siena', 'SIE', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(302, 1, 105, 0, 'Siracusa', 'SIR', 'SR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(303, 1, 105, 0, 'Sondrio', 'SOO', 'SO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(304, 1, 105, 0, 'Taranto', 'TAR', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(305, 1, 105, 0, 'Teramo', 'TER', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(306, 1, 105, 0, 'Terni', 'TRN', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(307, 1, 105, 0, 'Torino', 'TOR', 'TO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(308, 1, 105, 0, 'Trapani', 'TRA', 'TP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(309, 1, 105, 0, 'Trento', 'TRE', 'TN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(310, 1, 105, 0, 'Treviso', 'TRV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(311, 1, 105, 0, 'Trieste', 'TRI', 'TS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(312, 1, 105, 0, 'Udine', 'UDI', 'UD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(313, 1, 105, 0, 'Varese', 'VAR', 'VA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(314, 1, 105, 0, 'Venezia', 'VEN', 'VE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(315, 1, 105, 0, 'Verbano Cusio Ossola', 'VCO', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(316, 1, 105, 0, 'Vercelli', 'VER', 'VC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(317, 1, 105, 0, 'Verona', 'VRN', 'VR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(318, 1, 105, 0, 'Vibo Valenzia', 'VIV', 'VV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(319, 1, 105, 0, 'Vicenza', 'VII', 'VI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(320, 1, 105, 0, 'Viterbo', 'VIT', 'VT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(321, 1, 195, 0, 'A Coru', 'ACO', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(322, 1, 195, 0, 'Alava', 'ALA', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(323, 1, 195, 0, 'Albacete', 'ALB', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(324, 1, 195, 0, 'Alicante', 'ALI', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(325, 1, 195, 0, 'Almeria', 'ALM', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(326, 1, 195, 0, 'Asturias', 'AST', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(327, 1, 195, 0, 'Avila', 'AVI', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(328, 1, 195, 0, 'Badajoz', 'BAD', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(329, 1, 195, 0, 'Baleares', 'BAL', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(330, 1, 195, 0, 'Barcelona', 'BAR', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(331, 1, 195, 0, 'Burgos', 'BUR', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(332, 1, 195, 0, 'Caceres', 'CAC', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(333, 1, 195, 0, 'Cadiz', 'CAD', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(334, 1, 195, 0, 'Cantabria', 'CAN', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(335, 1, 195, 0, 'Castellon', 'CAS', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(336, 1, 195, 0, 'Ceuta', 'CEU', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(337, 1, 195, 0, 'Ciudad Real', 'CIU', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(338, 1, 195, 0, 'Cordoba', 'COR', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(339, 1, 195, 0, 'Cuenca', 'CUE', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(340, 1, 195, 0, 'Girona', 'GIR', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(341, 1, 195, 0, 'Granada', 'GRA', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(342, 1, 195, 0, 'Guadalajara', 'GUA', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(343, 1, 195, 0, 'Guipuzcoa', 'GUI', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(344, 1, 195, 0, 'Huelva', 'HUL', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(345, 1, 195, 0, 'Huesca', 'HUS', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(346, 1, 195, 0, 'Jaen', 'JAE', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(347, 1, 195, 0, 'La Rioja', 'LRI', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(348, 1, 195, 0, 'Las Palmas', 'LPA', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(349, 1, 195, 0, 'Leon', 'LEO', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(350, 1, 195, 0, 'Lleida', 'LLE', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(351, 1, 195, 0, 'Lugo', 'LUG', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(352, 1, 195, 0, 'Madrid', 'MAD', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(353, 1, 195, 0, 'Malaga', 'MAL', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(354, 1, 195, 0, 'Melilla', 'MEL', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(355, 1, 195, 0, 'Murcia', 'MUR', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(356, 1, 195, 0, 'Navarra', 'NAV', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(357, 1, 195, 0, 'Ourense', 'OUR', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(358, 1, 195, 0, 'Palencia', 'PAL', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(359, 1, 195, 0, 'Pontevedra', 'PON', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(360, 1, 195, 0, 'Salamanca', 'SAL', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(361, 1, 195, 0, 'Santa Cruz de Tenerife', 'SCT', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(362, 1, 195, 0, 'Segovia', 'SEG', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(363, 1, 195, 0, 'Sevilla', 'SEV', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(364, 1, 195, 0, 'Soria', 'SOR', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(365, 1, 195, 0, 'Tarragona', 'TAR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(366, 1, 195, 0, 'Teruel', 'TER', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(367, 1, 195, 0, 'Toledo', 'TOL', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(368, 1, 195, 0, 'Valencia', 'VAL', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(369, 1, 195, 0, 'Valladolid', 'VLL', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(370, 1, 195, 0, 'Vizcaya', 'VIZ', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(371, 1, 195, 0, 'Zamora', 'ZAM', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(372, 1, 195, 0, 'Zaragoza', 'ZAR', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(373, 1, 10, 0, 'Buenos Aires', 'BAS', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(374, 1, 10, 0, 'Ciudad Autonoma De Buenos Aires', 'CBA', 'CB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(375, 1, 10, 0, 'Catamarca', 'CAT', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(376, 1, 10, 0, 'Chaco', 'CHO', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(377, 1, 10, 0, 'Chubut', 'CTT', 'CT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(378, 1, 10, 0, 'Cordoba', 'COD', 'CO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(379, 1, 10, 0, 'Corrientes', 'CRI', 'CR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(380, 1, 10, 0, 'Entre Rios', 'ERS', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(381, 1, 10, 0, 'Formosa', 'FRM', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(382, 1, 10, 0, 'Jujuy', 'JUJ', 'JU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(383, 1, 10, 0, 'La Pampa', 'LPM', 'LP', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(384, 1, 10, 0, 'La Rioja', 'LRI', 'LR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(385, 1, 10, 0, 'Mendoza', 'MED', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(386, 1, 10, 0, 'Misiones', 'MIS', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(387, 1, 10, 0, 'Neuquen', 'NQU', 'NQ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(388, 1, 10, 0, 'Rio Negro', 'RNG', 'RN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(389, 1, 10, 0, 'Salta', 'SAL', 'SA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `mhyjf_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(390, 1, 10, 0, 'San Juan', 'SJN', 'SJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(391, 1, 10, 0, 'San Luis', 'SLU', 'SL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(392, 1, 10, 0, 'Santa Cruz', 'SCZ', 'SC', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(393, 1, 10, 0, 'Santa Fe', 'SFE', 'SF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(394, 1, 10, 0, 'Santiago Del Estero', 'SEN', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(395, 1, 10, 0, 'Tierra Del Fuego', 'TFE', 'TF', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(396, 1, 10, 0, 'Tucuman', 'TUC', 'TU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(397, 1, 11, 0, 'Aragatsotn', 'ARG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(398, 1, 11, 0, 'Ararat', 'ARR', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(399, 1, 11, 0, 'Armavir', 'ARM', 'AV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(400, 1, 11, 0, 'Gegharkunik', 'GEG', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(401, 1, 11, 0, 'Kotayk', 'KOT', 'KT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(402, 1, 11, 0, 'Lori', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(403, 1, 11, 0, 'Shirak', 'SHI', 'SH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(404, 1, 11, 0, 'Syunik', 'SYU', 'SU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(405, 1, 11, 0, 'Tavush', 'TAV', 'TV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(406, 1, 11, 0, 'Vayots-Dzor', 'VAD', 'VD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(407, 1, 11, 0, 'Yerevan', 'YER', 'ER', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(408, 1, 99, 0, 'Andaman & Nicobar Islands', 'ANI', 'AI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(409, 1, 99, 0, 'Andhra Pradesh', 'AND', 'AN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(410, 1, 99, 0, 'Arunachal Pradesh', 'ARU', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(411, 1, 99, 0, 'Assam', 'ASS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(412, 1, 99, 0, 'Bihar', 'BIH', 'BI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(413, 1, 99, 0, 'Chandigarh', 'CHA', 'CA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(414, 1, 99, 0, 'Chhatisgarh', 'CHH', 'CH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(415, 1, 99, 0, 'Dadra & Nagar Haveli', 'DAD', 'DD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(416, 1, 99, 0, 'Daman & Diu', 'DAM', 'DA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(417, 1, 99, 0, 'Delhi', 'DEL', 'DE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(418, 1, 99, 0, 'Goa', 'GOA', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(419, 1, 99, 0, 'Gujarat', 'GUJ', 'GU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(420, 1, 99, 0, 'Haryana', 'HAR', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(421, 1, 99, 0, 'Himachal Pradesh', 'HIM', 'HI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(422, 1, 99, 0, 'Jammu & Kashmir', 'JAM', 'JA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(423, 1, 99, 0, 'Jharkhand', 'JHA', 'JH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(424, 1, 99, 0, 'Karnataka', 'KAR', 'KA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(425, 1, 99, 0, 'Kerala', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(426, 1, 99, 0, 'Lakshadweep', 'LAK', 'LA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(427, 1, 99, 0, 'Madhya Pradesh', 'MAD', 'MD', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(428, 1, 99, 0, 'Maharashtra', 'MAH', 'MH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(429, 1, 99, 0, 'Manipur', 'MAN', 'MN', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(430, 1, 99, 0, 'Meghalaya', 'MEG', 'ME', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(431, 1, 99, 0, 'Mizoram', 'MIZ', 'MI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(432, 1, 99, 0, 'Nagaland', 'NAG', 'NA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(433, 1, 99, 0, 'Orissa', 'ORI', 'OR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(434, 1, 99, 0, 'Pondicherry', 'PON', 'PO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(435, 1, 99, 0, 'Punjab', 'PUN', 'PU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(436, 1, 99, 0, 'Rajasthan', 'RAJ', 'RA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(437, 1, 99, 0, 'Sikkim', 'SIK', 'SI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(438, 1, 99, 0, 'Tamil Nadu', 'TAM', 'TA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(439, 1, 99, 0, 'Tripura', 'TRI', 'TR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(440, 1, 99, 0, 'Uttaranchal', 'UAR', 'UA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(441, 1, 99, 0, 'Uttar Pradesh', 'UTT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(442, 1, 99, 0, 'West Bengal', 'WES', 'WE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(443, 1, 101, 0, 'Ahmadi va Kohkiluyeh', 'BOK', 'BO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(444, 1, 101, 0, 'Ardabil', 'ARD', 'AR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(445, 1, 101, 0, 'Azarbayjan-e Gharbi', 'AZG', 'AG', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(446, 1, 101, 0, 'Azarbayjan-e Sharqi', 'AZS', 'AS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(447, 1, 101, 0, 'Bushehr', 'BUS', 'BU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(448, 1, 101, 0, 'Chaharmahal va Bakhtiari', 'CMB', 'CM', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(449, 1, 101, 0, 'Esfahan', 'ESF', 'ES', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(450, 1, 101, 0, 'Fars', 'FAR', 'FA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(451, 1, 101, 0, 'Gilan', 'GIL', 'GI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(452, 1, 101, 0, 'Gorgan', 'GOR', 'GO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(453, 1, 101, 0, 'Hamadan', 'HAM', 'HA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(454, 1, 101, 0, 'Hormozgan', 'HOR', 'HO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(455, 1, 101, 0, 'Ilam', 'ILA', 'IL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(456, 1, 101, 0, 'Kerman', 'KER', 'KE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(457, 1, 101, 0, 'Kermanshah', 'BAK', 'BA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(458, 1, 101, 0, 'Khorasan-e Junoubi', 'KHJ', 'KJ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(459, 1, 101, 0, 'Khorasan-e Razavi', 'KHR', 'KR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(460, 1, 101, 0, 'Khorasan-e Shomali', 'KHS', 'KS', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(461, 1, 101, 0, 'Khuzestan', 'KHU', 'KH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(462, 1, 101, 0, 'Kordestan', 'KOR', 'KO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(463, 1, 101, 0, 'Lorestan', 'LOR', 'LO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(464, 1, 101, 0, 'Markazi', 'MAR', 'MR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(465, 1, 101, 0, 'Mazandaran', 'MAZ', 'MZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(466, 1, 101, 0, 'Qazvin', 'QAS', 'QA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(467, 1, 101, 0, 'Qom', 'QOM', 'QO', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(468, 1, 101, 0, 'Semnan', 'SEM', 'SE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(469, 1, 101, 0, 'Sistan va Baluchestan', 'SBA', 'SB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(470, 1, 101, 0, 'Tehran', 'TEH', 'TE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(471, 1, 101, 0, 'Yazd', 'YAZ', 'YA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(472, 1, 101, 0, 'Zanjan', 'ZAN', 'ZA', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(535, 1, 84, 0, 'ΛΕΥΚΑΔΑΣ', 'ΛΕΥ', 'ΛΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(532, 1, 84, 0, 'ΛΑΡΙΣΑΣ', 'ΛΑΡ', 'ΛΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(504, 1, 84, 0, 'ΑΡΚΑΔΙΑΣ', 'ΑΡΚ', 'ΑΚ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(503, 1, 84, 0, 'ΑΡΓΟΛΙΔΑΣ', 'ΑΡΓ', 'ΑΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(533, 1, 84, 0, 'ΛΑΣΙΘΙΟΥ', 'ΛΑΣ', 'ΛΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(534, 1, 84, 0, 'ΛΕΣΒΟΥ', 'ΛΕΣ', 'ΛΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(530, 1, 84, 0, 'ΚΥΚΛΑΔΩΝ', 'ΚΥΚ', 'ΚΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(553, 1, 84, 0, 'ΑΙΤΩΛΟΑΚΑΡΝΑΝΙΑΣ', 'ΑΙΤ', 'ΑΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(529, 1, 84, 0, 'ΚΟΡΙΝΘΙΑΣ', 'ΚΟΡ', 'ΚΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(531, 1, 84, 0, 'ΛΑΚΩΝΙΑΣ', 'ΛΑΚ', 'ΛK', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(517, 1, 84, 0, 'ΗΜΑΘΙΑΣ', 'ΗΜΑ', 'ΗΜ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(518, 1, 84, 0, 'ΗΡΑΚΛΕΙΟΥ', 'ΗΡΑ', 'ΗΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(519, 1, 84, 0, 'ΘΕΣΠΡΩΤΙΑΣ', 'ΘΕΠ', 'ΘΠ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(520, 1, 84, 0, 'ΘΕΣΣΑΛΟΝΙΚΗΣ', 'ΘΕΣ', 'ΘΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(521, 1, 84, 0, 'ΙΩΑΝΝΙΝΩΝ', 'ΙΩΑ', 'ΙΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(522, 1, 84, 0, 'ΚΑΒΑΛΑΣ', 'ΚΑΒ', 'ΚΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(523, 1, 84, 0, 'ΚΑΡΔΙΤΣΑΣ', 'ΚΑΡ', 'ΚΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(524, 1, 84, 0, 'ΚΑΣΤΟΡΙΑΣ', 'ΚΑΣ', 'ΚΣ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(525, 1, 84, 0, 'ΚΕΡΚΥΡΑΣ', 'ΚΕΡ', 'ΚΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(526, 1, 84, 0, 'ΚΕΦΑΛΛΗΝΙΑΣ', 'ΚΕΦ', 'ΚΦ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(527, 1, 84, 0, 'ΚΙΛΚΙΣ', 'ΚΙΛ', 'ΚΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(528, 1, 84, 0, 'ΚΟΖΑΝΗΣ', 'ΚΟΖ', 'ΚZ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(507, 1, 84, 0, 'ΑΧΑΪΑΣ', 'ΑΧΑ', 'ΑΧ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(508, 1, 84, 0, 'ΒΟΙΩΤΙΑΣ', 'ΒΟΙ', 'ΒΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(509, 1, 84, 0, 'ΓΡΕΒΕΝΩΝ', 'ΓΡΕ', 'ΓΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(510, 1, 84, 0, 'ΔΡΑΜΑΣ', 'ΔΡΑ', 'ΔΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(511, 1, 84, 0, 'ΔΩΔΕΚΑΝΗΣΟΥ', 'ΔΩΔ', 'ΔΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(512, 1, 84, 0, 'ΕΒΡΟΥ', 'ΕΒΡ', 'ΕΒ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(513, 1, 84, 0, 'ΕΥΒΟΙΑΣ', 'ΕΥΒ', 'ΕΥ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(514, 1, 84, 0, 'ΕΥΡΥΤΑΝΙΑΣ', 'ΕΥΡ', 'ΕΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(515, 1, 84, 0, 'ΖΑΚΥΝΘΟΥ', 'ΖΑΚ', 'ΖΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(516, 1, 84, 0, 'ΗΛΕΙΑΣ', 'ΗΛΕ', 'ΗΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(505, 1, 84, 0, 'ΑΡΤΑΣ', 'ΑΡΤ', 'ΑΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(506, 1, 84, 0, 'ΑΤΤΙΚΗΣ', 'ΑΤΤ', 'ΑΤ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(536, 1, 84, 0, 'ΜΑΓΝΗΣΙΑΣ', 'ΜΑΓ', 'ΜΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(537, 1, 84, 0, 'ΜΕΣΣΗΝΙΑΣ', 'ΜΕΣ', 'ΜΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(538, 1, 84, 0, 'ΞΑΝΘΗΣ', 'ΞΑΝ', 'ΞΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(539, 1, 84, 0, 'ΠΕΛΛΗΣ', 'ΠΕΛ', 'ΠΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(540, 1, 84, 0, 'ΠΙΕΡΙΑΣ', 'ΠΙΕ', 'ΠΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(541, 1, 84, 0, 'ΠΡΕΒΕΖΑΣ', 'ΠΡΕ', 'ΠΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(542, 1, 84, 0, 'ΡΕΘΥΜΝΗΣ', 'ΡΕΘ', 'ΡΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(543, 1, 84, 0, 'ΡΟΔΟΠΗΣ', 'ΡΟΔ', 'ΡΟ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(544, 1, 84, 0, 'ΣΑΜΟΥ', 'ΣΑΜ', 'ΣΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(545, 1, 84, 0, 'ΣΕΡΡΩΝ', 'ΣΕΡ', 'ΣΕ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(546, 1, 84, 0, 'ΤΡΙΚΑΛΩΝ', 'ΤΡΙ', 'ΤΡ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(547, 1, 84, 0, 'ΦΘΙΩΤΙΔΑΣ', 'ΦΘΙ', 'ΦΘ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(548, 1, 84, 0, 'ΦΛΩΡΙΝΑΣ', 'ΦΛΩ', 'ΦΛ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(549, 1, 84, 0, 'ΦΩΚΙΔΑΣ', 'ΦΩΚ', 'ΦΩ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(550, 1, 84, 0, 'ΧΑΛΚΙΔΙΚΗΣ', 'ΧΑΛ', 'ΧΑ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(551, 1, 84, 0, 'ΧΑΝΙΩΝ', 'ΧΑΝ', 'ΧΝ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(552, 1, 84, 0, 'ΧΙΟΥ', 'ΧΙΟ', 'ΧΙ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(569, 1, 81, 0, 'Schleswig-Holstein', 'SHO', 'SH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(554, 1, 81, 0, 'Freie und Hansestadt Hamburg', 'HAM', 'HH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(555, 1, 81, 0, 'Niedersachsen', 'NIS', 'NI', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(556, 1, 81, 0, 'Freie Hansestadt Bremen', 'HBR', 'HB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(557, 1, 81, 0, 'Nordrhein-Westfalen', 'NRW', 'NW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(558, 1, 81, 0, 'Hessen', 'HES', 'HE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(559, 1, 81, 0, 'Rheinland-Pfalz', 'RLP', 'RP', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(560, 1, 81, 0, 'Baden-Württemberg', 'BWÜ', 'BW', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(561, 1, 81, 0, 'Freistaat Bayern', 'BAV', 'BY', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(562, 1, 81, 0, 'Saarland', 'SLA', 'SL', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(563, 1, 81, 0, 'Berlin', 'BER', 'BE', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(564, 1, 81, 0, 'Brandenburg', 'BRB', 'BB', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(565, 1, 81, 0, 'Mecklenburg-Vorpommern', 'MVO', 'MV', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(566, 1, 81, 0, 'Freistaat Sachsen', 'SAC', 'SN', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(567, 1, 81, 0, 'Sachsen-Anhalt', 'SAA', 'ST', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(568, 1, 81, 0, 'Freistaat Thüringen', 'THÜ', 'TH', 0, 1, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(570, 1, 176, 0, 'Адыгея Республика', 'AD', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(571, 1, 176, 0, 'Алтай Республика', 'AL', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(572, 1, 176, 0, 'Алтайский край', 'ALT', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(573, 1, 176, 0, 'Амурская область', 'AMU', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(574, 1, 176, 0, 'Архангельская область', 'ARK', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(575, 1, 176, 0, 'Астраханская область', 'AST', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(576, 1, 176, 0, 'Башкортостан Республика', 'BA', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(577, 1, 176, 0, 'Белгородская область', 'BEL', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(578, 1, 176, 0, 'Брянская область', 'BRY', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(579, 1, 176, 0, 'Бурятия Республика', 'BU', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(580, 1, 176, 0, 'Владимирская область', 'VLA', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(581, 1, 176, 0, 'Волгоградская область', 'VGG', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(582, 1, 176, 0, 'Вологодская область', 'VLG', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(583, 1, 176, 0, 'Воронежская область', 'VOR', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(584, 1, 176, 0, 'Дагестан Республика', 'DA', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(585, 1, 176, 0, 'Еврейская автономная область', 'YEV', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(586, 1, 176, 0, 'Забайкальский край', 'ZAB', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(587, 1, 176, 0, 'Ивановская область', 'IVA', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(588, 1, 176, 0, 'Ингушетия Республика', 'IN', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(589, 1, 176, 0, 'Иркутская область', 'IRK', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(590, 1, 176, 0, 'Кабардино-Балкарская Республика', 'KB', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(591, 1, 176, 0, 'Калининградская область', 'KGD', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(592, 1, 176, 0, 'Калмыкия Республика', 'KL', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(593, 1, 176, 0, 'Калужская область', 'KLU', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(594, 1, 176, 0, 'Камчатский край', 'KAM', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(595, 1, 176, 0, 'Карачаево-Черкесская Республика', 'KC', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(596, 1, 176, 0, 'Карелия Республика', 'KR', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(597, 1, 176, 0, 'Кемеровская область', 'KEM', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(598, 1, 176, 0, 'Кировская область', 'KIR', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(599, 1, 176, 0, 'Коми Республика', 'KO', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(600, 1, 176, 0, 'Костромская область', 'KOS', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(601, 1, 176, 0, 'Краснодарский край', 'KDA', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(602, 1, 176, 0, 'Красноярский край', 'KIA', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(603, 1, 176, 0, 'Курганская область', 'KGN', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(604, 1, 176, 0, 'Курская область', 'KRS', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(605, 1, 176, 0, 'Ленинградская область', 'LEN', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(606, 1, 176, 0, 'Липецкая область', 'LIP', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(607, 1, 176, 0, 'Магаданская область', 'MAG', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(608, 1, 176, 0, 'Марий Эл Республика', 'ME', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(609, 1, 176, 0, 'Мордовия Республика', 'MO', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(610, 1, 176, 0, 'Москва', 'MOW', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(611, 1, 176, 0, 'Московская область', 'MOS', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(612, 1, 176, 0, 'Мурманская область', 'MUR', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(613, 1, 176, 0, 'Ненецкий автономный округ', 'NEN', '83', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(614, 1, 176, 0, 'Нижегородская область', 'NIZ', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(615, 1, 176, 0, 'Новгородская область', 'NGR', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(616, 1, 176, 0, 'Новосибирская область', 'NVS', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(617, 1, 176, 0, 'Омская область', 'OMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(618, 1, 176, 0, 'Оренбургская область', 'ORE', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(619, 1, 176, 0, 'Орловская область', 'ORL', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(620, 1, 176, 0, 'Пензенская область', 'PNZ', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(621, 1, 176, 0, 'Пермский край', 'PER', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(622, 1, 176, 0, 'Приморский край', 'PRI', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(623, 1, 176, 0, 'Псковская область', 'PSK', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(624, 1, 176, 0, 'Ростовская область', 'ROS', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(625, 1, 176, 0, 'Рязанская область', 'RYA', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(626, 1, 176, 0, 'Самарская область', 'SAM', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(627, 1, 176, 0, 'Санкт-Петербург', 'SPE', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(628, 1, 176, 0, 'Саратовская область', 'SAR', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(629, 1, 176, 0, 'Саха (Якутия) Республика', 'SA', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(630, 1, 176, 0, 'Сахалинская область', 'SAK', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(631, 1, 176, 0, 'Свердловская область', 'SVE', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(632, 1, 176, 0, 'Северная Осетия-Алания Республика', 'SE', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(633, 1, 176, 0, 'Смоленская область', 'SMO', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(634, 1, 176, 0, 'Ставропольский край', 'STA', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(635, 1, 176, 0, 'Тамбовская область', 'TAM', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(636, 1, 176, 0, 'Татарстан Республика', 'TA', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(637, 1, 176, 0, 'Тверская область', 'TVE', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(638, 1, 176, 0, 'Томская область', 'TOM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(639, 1, 176, 0, 'Тульская область', 'TUL', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(640, 1, 176, 0, 'Тыва Республика', 'TY', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(641, 1, 176, 0, 'Тюменская область', 'TYU', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(642, 1, 176, 0, 'Удмуртская Республика', 'UD', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(643, 1, 176, 0, 'Ульяновская область', 'ULY', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(644, 1, 176, 0, 'Хакасия Республика', 'KK', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(645, 1, 176, 0, 'Челябинская область', 'CHE', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(646, 1, 176, 0, 'Чеченская Республика', 'CE', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(647, 1, 176, 0, 'Чувашская Республика', 'CU', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(648, 1, 176, 0, 'Чукотский автономный округ', 'CHU', '87', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(649, 1, 176, 0, 'Хабаровский край', 'KHA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(650, 1, 176, 0, 'Ханты-Мансийский автономный округ', 'KHM', '86', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(651, 1, 176, 0, 'Ямало-Ненецкий автономный округ', 'YAN', '89', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(652, 1, 176, 0, 'Ярославская область', 'YAR', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(653, 1, 209, 0, 'กระบี่', 'กบ', 'กบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(654, 1, 209, 0, 'กรุงเทพมหานคร', 'กทม', 'กท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(655, 1, 209, 0, 'กาญจนบุรี', 'กจ', 'กจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(656, 1, 209, 0, 'กาฬสินธุ์', 'กส', 'กส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(657, 1, 209, 0, 'กำแพงเพชร', 'กพ', 'กพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(658, 1, 209, 0, 'ขอนแก่น', 'ขก', 'ขก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(659, 1, 209, 0, 'จันทบุรี', 'จบ', 'จบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(660, 1, 209, 0, 'ฉะเชิงเทรา', 'ฉช', 'ฉช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(661, 1, 209, 0, 'ชลบุรี', 'ชบ', 'ชบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(662, 1, 209, 0, 'ชัยนาท', 'ชน', 'ชน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(663, 1, 209, 0, 'ชัยภูมิ', 'ชย', 'ชย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(664, 1, 209, 0, 'ชุมพร', 'ชพ', 'ชพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(665, 1, 209, 0, 'เชียงราย', 'ชร', 'ชร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(666, 1, 209, 0, 'เชียงใหม่', 'ชม', 'ชม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(667, 1, 209, 0, 'ตรัง', 'ตง', 'ตง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(668, 1, 209, 0, 'ตราด', 'ตร', 'ตร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(669, 1, 209, 0, 'ตาก', 'ตก', 'ตก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(670, 1, 209, 0, 'นครนายก', 'นย', 'นย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(671, 1, 209, 0, 'นครปฐม', 'นฐ', 'นฐ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(672, 1, 209, 0, 'นครพนม', 'นพ', 'นพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(673, 1, 209, 0, 'นครราชสีมา', 'นม', 'นม', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(674, 1, 209, 0, 'นครศรีธรรมราช', 'นศ', 'นศ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(675, 1, 209, 0, 'นครสวรรค์', 'นว', 'นว', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(676, 1, 209, 0, 'นนทบุรี', 'นบ', 'นบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(677, 1, 209, 0, 'นราธิวาส', 'นธ', 'นธ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(678, 1, 209, 0, 'น่าน', 'นน', 'นน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(679, 1, 209, 0, 'บุรีรัมย์', 'บร', 'บร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(680, 1, 209, 0, 'บึงกาฬ', 'บก', 'บก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(681, 1, 209, 0, 'ปทุมธานี', 'ปท', 'ปท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(682, 1, 209, 0, 'ประจวบคีรีขันธ์', 'ปข', 'ปข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(683, 1, 209, 0, 'ปราจีนบุรี', 'ปจ', 'ปจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(684, 1, 209, 0, 'ปัตตานี', 'ปน', 'ปน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(685, 1, 209, 0, 'พระนครศรีอยุธยา', 'อย', 'อย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(686, 1, 209, 0, 'พังงา', 'พง', 'พง', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(687, 1, 209, 0, 'พัทลุง', 'พท', 'พท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(688, 1, 209, 0, 'พิจิตร', 'พจ', 'พจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(689, 1, 209, 0, 'พิษณุโลก', 'พล', 'พล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(690, 1, 209, 0, 'เพชรบุรี', 'พบ', 'พบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(691, 1, 209, 0, 'เพชรบูรณ์', 'พช', 'พช', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(692, 1, 209, 0, 'แพร่', 'พร', 'พร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(693, 1, 209, 0, 'พะเยา', 'พย', 'พย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(694, 1, 209, 0, 'ภูเก็ต', 'ภก', 'ภก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(695, 1, 209, 0, 'มหาสารคาม', 'มค', 'มค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(696, 1, 209, 0, 'แม่ฮ่องสอน', 'มส', 'มส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(697, 1, 209, 0, 'มุกดาหาร', 'มห', 'มห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(698, 1, 209, 0, 'ยะลา', 'ยล', 'ยล', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(699, 1, 209, 0, 'ยโสธร', 'ยส', 'ยส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(700, 1, 209, 0, 'ร้อยเอ็ด', 'รอ', 'รอ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(701, 1, 209, 0, 'ระนอง', 'รน', 'รน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(702, 1, 209, 0, 'ระยอง', 'รย', 'รย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(703, 1, 209, 0, 'ราชบุรี', 'รบ', 'รบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(704, 1, 209, 0, 'ลพบุรี', 'ลบ', 'ลบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(705, 1, 209, 0, 'ลำปาง', 'ลป', 'ลป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(706, 1, 209, 0, 'ลำพูน', 'ลพ', 'ลพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(707, 1, 209, 0, 'เลย', 'ลย', 'ลย', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(708, 1, 209, 0, 'ศรีสะเกษ', 'ศก', 'ศก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(709, 1, 209, 0, 'สกลนคร', 'สน', 'สน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(710, 1, 209, 0, 'สงขลา', 'สข', 'สข', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(711, 1, 209, 0, 'สตูล', 'สต', 'สต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(712, 1, 209, 0, 'สมุทรปราการ', 'สป', 'สป', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(713, 1, 209, 0, 'สมุทรสงคราม', 'สส', 'สส', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(714, 1, 209, 0, 'สมุทรสาคร', 'สค', 'สค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(715, 1, 209, 0, 'สระบุรี', 'สบ', 'สบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(716, 1, 209, 0, 'สระแก้ว', 'สก', 'สก', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(717, 1, 209, 0, 'สิงห์บุรี', 'สห', 'สห', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(718, 1, 209, 0, 'สุโขทัย', 'สท', 'สท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(719, 1, 209, 0, 'สุพรรณบุรี', 'สพ', 'สพ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(720, 1, 209, 0, 'สุราษฎร์ธานี', 'สฎ', 'สฎ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(721, 1, 209, 0, 'สุรินทร์', 'สร', 'สร', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(722, 1, 209, 0, 'หนองคาย', 'นค', 'นค', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(723, 1, 209, 0, 'หนองบัวลำภู', 'นภ', 'นภ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(724, 1, 209, 0, 'อ่างทอง', 'อท', 'อท', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(725, 1, 209, 0, 'อุดรธานี', 'อด', 'อด', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(726, 1, 209, 0, 'อุตรดิตถ์', 'อต', 'อต', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(727, 1, 209, 0, 'อุทัยธานี', 'อน', 'อน', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(728, 1, 209, 0, 'อุบลราชธานี', 'อบ', 'อบ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(729, 1, 209, 0, 'อำนาจเจริญ', 'อจ', 'อจ', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(730, 1, 150, 0, 'Drenthe', 'DR', 'DR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(731, 1, 150, 0, 'Flevoland', 'FLV', 'FL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(732, 1, 150, 0, 'Friesland', 'FR', 'FR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(733, 1, 150, 0, 'Gelderland', 'GLD', 'GL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(734, 1, 150, 0, 'Groningen', 'GR', 'GR', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(735, 1, 150, 0, 'Limburg', 'LB', 'LB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(736, 1, 150, 0, 'Noord-Brabant', 'NB', 'NB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(737, 1, 150, 0, 'Noord-Holland', 'NH', 'NH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(738, 1, 150, 0, 'Overijssel', 'OVR', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(739, 1, 150, 0, 'Utrecht', 'UT', 'UT', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(740, 1, 150, 0, 'Zuid-Holland', 'ZH', 'ZH', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(741, 1, 150, 0, 'Zeeland', 'ZL', 'ZL', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(742, 1, 21, 0, 'Antwerpen', 'ant', 'AW', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(743, 1, 21, 0, 'Limburg', 'lim', 'LI', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(744, 1, 21, 0, 'Oost-Vlaanderen', 'ov', 'OV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(745, 1, 21, 0, 'Vlaams-Brabant', 'vb', 'VB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(746, 1, 21, 0, 'West-Vlaanderen', 'wv', 'WV', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(747, 1, 21, 0, 'Waals-Brabant (Brabant wallon)', 'wb', 'WB', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(748, 1, 21, 0, 'Henegouwen (Hainaut),', 'he', 'HE', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(749, 1, 21, 0, 'Luik (Liège/Lüttich)', 'lui', 'LU', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(750, 1, 21, 0, 'Luxemburg (Luxembourg)', 'lux', 'LX', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(751, 1, 215, 0, 'Adana', 'ADN', '01', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(752, 1, 215, 0, 'Adıyaman', 'ADY', '02', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(753, 1, 215, 0, 'Afyon', 'AFN', '03', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(754, 1, 215, 0, 'Ağrı', 'AGR', '04', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(755, 1, 215, 0, 'Amasya', 'AMS', '05', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(756, 1, 215, 0, 'Ankara', 'ANK', '06', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(757, 1, 215, 0, 'Antalya', 'ANT', '07', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(758, 1, 215, 0, 'Artvin', 'ART', '08', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(759, 1, 215, 0, 'Aydın', 'AYD', '09', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(760, 1, 215, 0, 'Balıkesir', 'BLK', '10', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(761, 1, 215, 0, 'Bilecik', 'BLC', '11', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(762, 1, 215, 0, 'Bingöl', 'BIN', '12', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(763, 1, 215, 0, 'Bitlis', 'BIT', '13', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(764, 1, 215, 0, 'Bolu', 'BOL', '14', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(765, 1, 215, 0, 'Burdur', 'DRD', '15', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(766, 1, 215, 0, 'Bursa', 'BUR', '16', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(767, 1, 215, 0, 'Çanakkale', 'CNK', '17', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(768, 1, 215, 0, 'Çankırı', 'CAK', '18', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(769, 1, 215, 0, 'Çorum', 'COR', '19', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(770, 1, 215, 0, 'Denizli', 'DEN', '20', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(771, 1, 215, 0, 'Diyarbakır', 'DYB', '21', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(772, 1, 215, 0, 'Edirne', 'EDR', '22', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(773, 1, 215, 0, 'Elazığ', 'ELZ', '23', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(774, 1, 215, 0, 'Erzincan', 'ERN', '24', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(775, 1, 215, 0, 'Erzurum', 'ERZ', '25', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(776, 1, 215, 0, 'Eskişehir', 'ESK', '26', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(777, 1, 215, 0, 'Gaziantep', 'GZA', '27', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(778, 1, 215, 0, 'Giresun', 'GRS', '28', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(779, 1, 215, 0, 'Gümüşhane', 'GMH', '29', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(780, 1, 215, 0, 'Hakkari', 'HKK', '30', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(781, 1, 215, 0, 'Hatay', 'HTY', '31', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(782, 1, 215, 0, 'Isparta', 'ISP', '32', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(783, 1, 215, 0, 'İçel (Mersin)', 'ICE', '33', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(784, 1, 215, 0, 'İstanbul', 'IST', '34', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(785, 1, 215, 0, 'İzmir', 'IZM', '35', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(786, 1, 215, 0, 'Kars', 'KRS', '36', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(787, 1, 215, 0, 'Kastamonu', 'KST', '37', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(788, 1, 215, 0, 'Kayseri', 'KYS', '38', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(789, 1, 215, 0, 'Kırklareli', 'KIR', '39', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(790, 1, 215, 0, 'Kırşehir', 'KIS', '40', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(791, 1, 215, 0, 'Kocaeli', 'KCL', '41', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(792, 1, 215, 0, 'Konya', 'KNY', '42', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(793, 1, 215, 0, 'Kütahya', 'KTH', '43', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(794, 1, 215, 0, 'Malatya', 'MLT', '44', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(795, 1, 215, 0, 'Manisa', 'MNS', '45', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(796, 1, 215, 0, 'K.maraş', 'KAH', '46', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(797, 1, 215, 0, 'Mardin', 'MRD', '47', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(798, 1, 215, 0, 'Muğla', 'MGL', '48', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(799, 1, 215, 0, 'Muş', 'MUS', '49', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);
INSERT INTO `mhyjf_virtuemart_states` (`virtuemart_state_id`, `virtuemart_vendor_id`, `virtuemart_country_id`, `virtuemart_worldzone_id`, `state_name`, `state_3_code`, `state_2_code`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(800, 1, 215, 0, 'Nevşehir', 'NEV', '50', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(801, 1, 215, 0, 'Niğde', 'NIG', '51', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(802, 1, 215, 0, 'Ordu', 'ORD', '52', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(803, 1, 215, 0, 'Rize', 'RIZ', '53', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(804, 1, 215, 0, 'Sakarya', 'SKR', '54', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(805, 1, 215, 0, 'Samsun', 'SMS', '55', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(806, 1, 215, 0, 'Siirt', 'SRT', '56', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(807, 1, 215, 0, 'Sinop', 'SNP', '57', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(808, 1, 215, 0, 'Sivas', 'SVS', '58', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(809, 1, 215, 0, 'Tekirdağ', 'TKR', '59', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(810, 1, 215, 0, 'Tokat', 'TKT', '60', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(811, 1, 215, 0, 'Trabzon', 'TRZ', '61', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(812, 1, 215, 0, 'Tunceli', 'TUN', '62', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(813, 1, 215, 0, 'Şanlıurfa', 'SNF', '63', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(814, 1, 215, 0, 'Uşak', 'USK', '64', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(815, 1, 215, 0, 'Van', 'VAN', '65', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(816, 1, 215, 0, 'Yozgat', 'YZT', '66', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(817, 1, 215, 0, 'Zonguldak', 'ZNG', '67', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(818, 1, 215, 0, 'Aksaray', 'AKS', '68', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(819, 1, 215, 0, 'Bayburt', 'BYB', '69', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(820, 1, 215, 0, 'Karaman', 'KRM', '70', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(821, 1, 215, 0, 'Kırıkkale', 'KRK', '71', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(822, 1, 215, 0, 'Batman', 'BTM', '72', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(823, 1, 215, 0, 'Şırnak', 'SRK', '73', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(824, 1, 215, 0, 'Bartın', 'BRT', '74', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(825, 1, 215, 0, 'Ardahan', 'ARH', '75', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(826, 1, 215, 0, 'Iğdır', 'IGD', '76', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(827, 1, 215, 0, 'Yalova', 'TLV', '77', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(828, 1, 215, 0, 'Karabük', 'KRB', '78', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(829, 1, 215, 0, 'Kilis', 'KLS', '79', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(830, 1, 215, 0, 'Osmaniye', 'OSM', '80', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(831, 1, 215, 0, 'Düzce', 'DZC', '81', 0, 1, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_userfields`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_userfields` (
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '1',
  `userfield_jplugin_id` int(1) NOT NULL DEFAULT '0',
  `name` char(255) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `description` varchar(2048) DEFAULT NULL,
  `type` char(70) NOT NULL DEFAULT '',
  `maxlength` int(1) DEFAULT NULL,
  `size` int(1) DEFAULT NULL,
  `required` tinyint(4) NOT NULL DEFAULT '0',
  `cols` int(1) DEFAULT NULL,
  `rows` int(1) DEFAULT NULL,
  `value` char(255) DEFAULT NULL,
  `default` char(255) DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '0',
  `shipment` tinyint(1) NOT NULL DEFAULT '0',
  `account` tinyint(1) NOT NULL DEFAULT '1',
  `cart` tinyint(1) NOT NULL DEFAULT '0',
  `readonly` tinyint(1) NOT NULL DEFAULT '0',
  `calculated` tinyint(1) NOT NULL DEFAULT '0',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `userfield_params` varchar(17000) NOT NULL DEFAULT '',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='Holds the fields for the user information';

--
-- Dumping data for table `mhyjf_virtuemart_userfields`
--

INSERT INTO `mhyjf_virtuemart_userfields` (`virtuemart_userfield_id`, `virtuemart_vendor_id`, `userfield_jplugin_id`, `name`, `title`, `description`, `type`, `maxlength`, `size`, `required`, `cols`, `rows`, `value`, `default`, `registration`, `shipment`, `account`, `cart`, `readonly`, `calculated`, `sys`, `userfield_params`, `ordering`, `shared`, `published`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(5, 0, 0, 'email', 'COM_VIRTUEMART_REGISTER_EMAIL', '', 'emailaddress', 100, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 4, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 0, 0, 'name', 'COM_VIRTUEMART_USER_DISPLAYED_NAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 8, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 0, 0, 'username', 'COM_VIRTUEMART_USERNAME', '', 'text', 25, 30, 1, 0, 0, '', NULL, 1, 0, 1, 0, 0, 0, 1, '', 6, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 0, 0, 'password', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_1', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 10, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 0, 0, 'password2', 'COM_VIRTUEMART_SHOPPER_FORM_PASSWORD_2', '', 'password', 25, 30, 1, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 12, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 0, 0, 'agreed', 'COM_VIRTUEMART_I_AGREE_TO_TOS', '', 'checkbox', NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 0, 0, 'tos', 'COM_VIRTUEMART_STORE_FORM_TOS', '', 'custom', NULL, NULL, 1, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 0, 0, 'customer_note', 'COM_VIRTUEMART_CNOTES_CART', '', 'textarea', 2500, NULL, 0, 60, 1, NULL, NULL, 0, 0, 0, 1, 0, 0, 1, '', 13, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(20, 0, 0, 'address_type_name', 'COM_VIRTUEMART_USER_FORM_ADDRESS_LABEL', '', 'text', 32, 30, 1, NULL, NULL, NULL, 'COM_VIRTUEMART_USER_FORM_ST_LABEL', 0, 1, 0, 0, 0, 0, 1, '', 16, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(21, 0, 0, 'delimiter_billto', 'COM_VIRTUEMART_USER_FORM_BILLTO_LBL', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 18, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(22, 0, 0, 'company', 'COM_VIRTUEMART_SHOPPER_FORM_COMPANY_NAME', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 20, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(23, 0, 0, 'title', 'COM_VIRTUEMART_SHOPPER_FORM_TITLE', '', 'select', 0, 210, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 1, '', 22, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(24, 0, 0, 'first_name', 'COM_VIRTUEMART_SHOPPER_FORM_FIRST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 24, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(25, 0, 0, 'middle_name', 'COM_VIRTUEMART_SHOPPER_FORM_MIDDLE_NAME', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 26, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(26, 0, 0, 'last_name', 'COM_VIRTUEMART_SHOPPER_FORM_LAST_NAME', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 28, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(27, 0, 0, 'address_1', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_1', '', 'text', 64, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 30, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(28, 0, 0, 'address_2', 'COM_VIRTUEMART_SHOPPER_FORM_ADDRESS_2', '', 'text', 64, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 32, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(29, 0, 0, 'zip', 'COM_VIRTUEMART_SHOPPER_FORM_ZIP', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 34, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(35, 0, 0, 'city', 'COM_VIRTUEMART_SHOPPER_FORM_CITY', '', 'text', 32, 30, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 36, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(36, 0, 0, 'virtuemart_country_id', 'COM_VIRTUEMART_SHOPPER_FORM_COUNTRY', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 38, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(37, 0, 0, 'virtuemart_state_id', 'COM_VIRTUEMART_SHOPPER_FORM_STATE', '', 'select', 0, 210, 1, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 40, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(38, 0, 0, 'phone_1', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 42, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(39, 0, 0, 'phone_2', 'COM_VIRTUEMART_SHOPPER_FORM_PHONE2', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 44, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(40, 0, 0, 'fax', 'COM_VIRTUEMART_SHOPPER_FORM_FAX', '', 'text', 32, 30, 0, NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, 0, 1, '', 46, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(41, 0, 0, 'delimiter_sendregistration', 'COM_VIRTUEMART_BUTTON_SEND_REG', '', 'delimiter', 25, 30, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', 2, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(42, 0, 0, 'delimiter_userinfo', 'COM_VIRTUEMART_ORDER_PRINT_CUST_INFO_LBL', '', 'delimiter', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 0, 1, 0, 0, 0, 0, '', 14, 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(50, 0, 0, 'tax_exemption_number', 'COM_VIRTUEMART_SHOPPER_FORM_TAXEXEMPTION_NBR', 'Vendors can set here a tax exemption number for a shopper. This field is only changeable by administrators.', 'text', 10, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 48, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(51, 0, 0, 'tax_usage_type', 'COM_VIRTUEMART_SHOPPER_FORM_TAX_USAGE', 'Federal, national, educational, public, or similar often get a special tax. This field is only writable by administrators.', 'select', 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 1, 1, 0, 0, 0, '', 50, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_userfield_values`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_userfield_values` (
  `virtuemart_userfield_value_id` int(1) unsigned NOT NULL,
  `virtuemart_userfield_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `fieldtitle` char(255) NOT NULL DEFAULT '',
  `fieldvalue` char(255) NOT NULL DEFAULT '',
  `sys` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Holds the different values for dropdown and radio lists';

--
-- Dumping data for table `mhyjf_virtuemart_userfield_values`
--

INSERT INTO `mhyjf_virtuemart_userfield_values` (`virtuemart_userfield_value_id`, `virtuemart_userfield_id`, `fieldtitle`, `fieldvalue`, `sys`, `ordering`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MR', 'Mr', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(2, 23, 'COM_VIRTUEMART_SHOPPER_TITLE_MRS', 'Mrs', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(3, 51, 'None', '', 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(4, 51, 'Non-resident (Canada)', 'R', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(5, 51, 'Federal government (United States)', 'A', 0, 1, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(6, 51, 'State government (United States)', 'B', 0, 2, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(7, 51, 'Tribe / Status Indian / Indian Band (both)', 'C', 0, 3, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(8, 51, 'Foreign diplomat (both)', 'D', 0, 4, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(9, 51, 'Charitable or benevolent org (both)', 'E', 0, 5, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(10, 51, 'Religious or educational org (both)', 'F', 0, 6, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(11, 51, 'Resale (both)', 'G', 0, 7, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(12, 51, 'Commercial agricultural production (both)', 'H', 0, 8, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(13, 51, 'Industrial production / manufacturer (both)', 'I', 0, 9, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(14, 51, 'Direct pay permit (United States)', 'J', 0, 10, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(15, 51, 'Direct mail (United States)', 'K', 0, 11, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(16, 51, 'Other (both)', 'L', 0, 12, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(17, 51, 'Local government (United States)', 'N', 0, 13, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(18, 51, 'Commercial aquaculture (Canada)', 'P', 0, 14, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0),
(19, 51, 'Commercial Fishery (Canada)', 'Q', 0, 15, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_userinfos`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_userinfos` (
  `virtuemart_userinfo_id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `address_type` char(2) NOT NULL DEFAULT '',
  `address_type_name` varchar(32) NOT NULL DEFAULT '',
  `company` varchar(64) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL,
  `last_name` varchar(96) DEFAULT NULL,
  `first_name` varchar(96) DEFAULT NULL,
  `middle_name` varchar(96) DEFAULT NULL,
  `phone_1` varchar(32) DEFAULT NULL,
  `phone_2` varchar(32) DEFAULT NULL,
  `fax` varchar(32) DEFAULT NULL,
  `address_1` varchar(96) NOT NULL DEFAULT '',
  `address_2` varchar(64) DEFAULT NULL,
  `city` varchar(96) NOT NULL DEFAULT '',
  `virtuemart_state_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_country_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `zip` varchar(32) NOT NULL DEFAULT '',
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `tos` tinyint(1) NOT NULL DEFAULT '0',
  `customer_note` varchar(5000) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Customer Information, BT = BillTo and ST = ShipTo';

--
-- Dumping data for table `mhyjf_virtuemart_userinfos`
--

INSERT INTO `mhyjf_virtuemart_userinfos` (`virtuemart_userinfo_id`, `virtuemart_user_id`, `address_type`, `address_type_name`, `company`, `title`, `last_name`, `first_name`, `middle_name`, `phone_1`, `phone_2`, `fax`, `address_1`, `address_2`, `city`, `virtuemart_state_id`, `virtuemart_country_id`, `zip`, `agreed`, `tos`, `customer_note`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 467, 'BT', '', 'IT Computer', 'Mr', 'VirtueMart', 'ICT56', '', '082-806-3850', '', '', '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', '', 'ปัตตานี', 684, 209, '94000', 0, 0, '', '2016-02-06 07:28:55', 467, '2016-02-10 02:42:24', 467, '0000-00-00 00:00:00', 0),
(2, 477, 'ST', 'ดายู', '', NULL, 'บือราเฮม', 'มัสอีดายู', '', '0828063850', '', '', '78/21', '', 'ปัตตานี', 684, 209, '94000', 0, 0, '', '2016-02-07 09:50:37', 477, '2016-02-07 09:50:37', 477, '0000-00-00 00:00:00', 0),
(3, 477, 'BT', '', 'adc', 'Mrs', 'บือราเฮม', 'มัสอีดายู', '', 'จค/คจุ-คถจ', '', '', '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', '', 'ปัตตานี', 684, 209, '81000', 0, 0, '', '2016-02-07 09:52:22', 477, '2016-02-07 09:52:22', 477, '0000-00-00 00:00:00', 0),
(4, 467, 'ST', 'apiwat', '', NULL, 'dindang', 'apiwat ', '', '0828063850', '', '', '78/21', '', 'ปัตตานี', 684, 209, '94000', 0, 0, '', '2016-02-07 10:05:33', 467, '2016-02-07 10:05:33', 467, '0000-00-00 00:00:00', 0),
(5, 480, 'BT', '', '', 'Mr', 'Dingdang', 'Apiwat', '', '0828063850', '', '', '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', '', 'กระบี่', 653, 209, '81000', 0, 0, '', '2016-02-10 06:11:05', 480, '2016-02-10 06:11:05', 480, '0000-00-00 00:00:00', 0),
(6, 481, 'BT', '', 'IT', 'Mr', 'ดินแดง', 'อภิวัฒน์', '', '', '', '', '171 หมู่ 6  ต.รูสะมิแล อ.เมือง จ.ปัตตานี', '', 'กระบี่', 653, 209, '81000', 0, 0, '', '2016-02-10 06:21:34', 0, '2016-02-10 06:21:34', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vendors`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vendors` (
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL,
  `vendor_name` char(64) DEFAULT NULL,
  `vendor_currency` int(1) DEFAULT NULL,
  `vendor_accepted_currencies` varchar(1536) NOT NULL DEFAULT '',
  `vendor_params` varchar(17000) NOT NULL DEFAULT '',
  `metarobot` char(20) DEFAULT NULL,
  `metaauthor` char(64) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Vendors manage their products in your store';

--
-- Dumping data for table `mhyjf_virtuemart_vendors`
--

INSERT INTO `mhyjf_virtuemart_vendors` (`virtuemart_vendor_id`, `vendor_name`, `vendor_currency`, `vendor_accepted_currencies`, `vendor_params`, `metarobot`, `metaauthor`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(1, 'ICT 56', 135, '135', 'vendor_min_pov="1"|vendor_min_poq=1|vendor_freeshipment=0|vendor_address_format=""|vendor_date_format=""|vendor_letter_format="A4"|vendor_letter_orientation="P"|vendor_letter_margin_top="55"|vendor_letter_margin_left="25"|vendor_letter_margin_right="25"|vendor_letter_margin_bottom="25"|vendor_letter_margin_header="20"|vendor_letter_margin_footer="20"|vendor_letter_font="freemono"|vendor_letter_font_size="8"|vendor_letter_header_font_size="7"|vendor_letter_footer_font_size="6"|vendor_letter_header="1"|vendor_letter_header_line="1"|vendor_letter_header_line_color="#000000"|vendor_letter_header_image="1"|vendor_letter_header_imagesize="60"|vendor_letter_header_cell_height_ratio="1"|vendor_letter_footer="1"|vendor_letter_footer_line="1"|vendor_letter_footer_line_color="#000000"|vendor_letter_footer_cell_height_ratio="1"|vendor_letter_add_tos="0"|vendor_letter_add_tos_newpage="1"|vendor_mail_width=640|vendor_mail_header=1|vendor_mail_tos=1|vendor_mail_logo=1|vendor_mail_logo_width=200|vendor_mail_font="helvetica"|vendor_mail_header_font_size=11|vendor_mail_font_size=12|vendor_mail_footer_font_size=10|', '', '', '0000-00-00 00:00:00', 0, '2016-02-10 02:42:24', 467, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vendors_en_gb`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vendors_en_gb` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_css` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vendors_th_th`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vendors_th_th` (
  `virtuemart_vendor_id` int(1) unsigned NOT NULL,
  `vendor_store_desc` text NOT NULL,
  `vendor_terms_of_service` text NOT NULL,
  `vendor_legal_info` text NOT NULL,
  `vendor_letter_css` text NOT NULL,
  `vendor_letter_header_html` varchar(8000) NOT NULL DEFAULT '<h1>{vm:vendorname}</h1><p>{vm:vendoraddress}</p>',
  `vendor_letter_footer_html` varchar(8000) NOT NULL DEFAULT '<p>{vm:vendorlegalinfo}<br />Page {vm:pagenum}/{vm:pagecount}</p>',
  `vendor_store_name` char(180) NOT NULL DEFAULT '',
  `vendor_phone` char(26) NOT NULL DEFAULT '',
  `vendor_url` char(255) NOT NULL DEFAULT '',
  `metadesc` varchar(400) NOT NULL DEFAULT '',
  `metakey` varchar(400) NOT NULL DEFAULT '',
  `customtitle` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free1` char(255) NOT NULL DEFAULT '',
  `vendor_invoice_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free1` char(255) NOT NULL DEFAULT '',
  `vendor_mail_free2` char(255) NOT NULL DEFAULT '',
  `vendor_mail_css` char(255) NOT NULL DEFAULT '',
  `slug` char(192) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_vendors_th_th`
--

INSERT INTO `mhyjf_virtuemart_vendors_th_th` (`virtuemart_vendor_id`, `vendor_store_desc`, `vendor_terms_of_service`, `vendor_legal_info`, `vendor_letter_css`, `vendor_letter_header_html`, `vendor_letter_footer_html`, `vendor_store_name`, `vendor_phone`, `vendor_url`, `metadesc`, `metakey`, `customtitle`, `vendor_invoice_free1`, `vendor_invoice_free2`, `vendor_mail_free1`, `vendor_mail_free2`, `vendor_mail_css`, `slug`) VALUES
(1, '<p style="text-align: left;">ขายสินค้า อุปกรณ์ IT ทุกชนิด</p>', '<p>สินค้าทุกชิ้นทีมีประกันเมื่อเกิดการชำรุดหรือเสียหายอันเนื่องมาจากข้อผิดพลาดจากการผลิตของโรงงานจะต้องส่งคืนกับทางร้านภายใน 7 วันนับจากวันที่ซื้อสินค้านั้น</p>&#13;&#10;<p>สินค้าทุกชิ้นที่ไม่มีประกันเมื่อเกิดการชำรุดหรือเสียหายอันเนื่องมาจากข้อผิดพลาดจากการผลิตของโรงงานจะต้องส่งคืนกับทางร้านภายใน 3 วันนับจากวันที่ซื้อสินค้านั้น</p>&#13;&#10;<p>ขอบคุณที่เลือกซื้อสินค้ากับเรา</p>', '', '', '<p>กรุณาชำระหนี้ด้วยครับ</p>', '<p>ขอบคุณที่ไว้ใจและเลือกซื้อสินค้ากับทางเรา</p>', 'IT Computer Shop', '', 'http://localhost/joomla/', '', '', '', '', '', '', '', '', 'it-computer-shop');

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vendor_medias`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vendor_medias` (
  `id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_media_id` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mhyjf_virtuemart_vendor_medias`
--

INSERT INTO `mhyjf_virtuemart_vendor_medias` (`id`, `virtuemart_vendor_id`, `virtuemart_media_id`, `ordering`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vendor_users`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vendor_users` (
  `id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vmusers`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vmusers` (
  `virtuemart_user_id` int(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) unsigned NOT NULL DEFAULT '0',
  `user_is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `customer_number` char(32) DEFAULT NULL,
  `virtuemart_paymentmethod_id` int(1) unsigned DEFAULT NULL,
  `virtuemart_shipmentmethod_id` int(1) unsigned DEFAULT NULL,
  `agreed` tinyint(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=482 DEFAULT CHARSET=utf8 COMMENT='Holds the unique user data';

--
-- Dumping data for table `mhyjf_virtuemart_vmusers`
--

INSERT INTO `mhyjf_virtuemart_vmusers` (`virtuemart_user_id`, `virtuemart_vendor_id`, `user_is_vendor`, `customer_number`, `virtuemart_paymentmethod_id`, `virtuemart_shipmentmethod_id`, `agreed`, `created_on`, `created_by`, `modified_on`, `modified_by`, `locked_on`, `locked_by`) VALUES
(467, 1, 1, 'AD21232f297', 0, 0, 0, '2016-02-06 07:28:55', 467, '2016-02-10 02:42:24', 467, '0000-00-00 00:00:00', 0),
(477, 0, 0, 'DA3987f4d10', 0, 0, 0, '0000-00-00 00:00:00', 0, '2016-02-07 09:52:22', 477, '0000-00-00 00:00:00', 0),
(480, 0, 0, 'KI60d48796d', 0, 0, 0, '0000-00-00 00:00:00', 0, '2016-02-10 06:11:05', 480, '0000-00-00 00:00:00', 0),
(481, 0, 0, 'HO3d83f4fe9', 0, 0, 0, '0000-00-00 00:00:00', 0, '2016-02-10 06:21:34', 0, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_vmuser_shoppergroups`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_vmuser_shoppergroups` (
  `id` int(1) unsigned NOT NULL,
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='xref table for users to shopper group';

--
-- Dumping data for table `mhyjf_virtuemart_vmuser_shoppergroups`
--

INSERT INTO `mhyjf_virtuemart_vmuser_shoppergroups` (`id`, `virtuemart_user_id`, `virtuemart_shoppergroup_id`) VALUES
(1, 467, 2),
(2, 467, 1),
(3, 467, 3);

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_waitingusers`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_waitingusers` (
  `virtuemart_waitinguser_id` int(1) unsigned NOT NULL,
  `virtuemart_product_id` int(1) unsigned NOT NULL DEFAULT '0',
  `virtuemart_user_id` int(1) unsigned NOT NULL DEFAULT '0',
  `notify_email` char(150) NOT NULL DEFAULT '',
  `notified` tinyint(1) NOT NULL DEFAULT '0',
  `notify_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ordering` int(1) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores notifications, users waiting f. products out of stock';

-- --------------------------------------------------------

--
-- Table structure for table `mhyjf_virtuemart_worldzones`
--

CREATE TABLE IF NOT EXISTS `mhyjf_virtuemart_worldzones` (
  `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL,
  `virtuemart_vendor_id` smallint(1) DEFAULT NULL,
  `zone_name` char(255) DEFAULT NULL,
  `zone_cost` decimal(10,2) DEFAULT NULL,
  `zone_limit` decimal(10,2) DEFAULT NULL,
  `zone_description` varchar(18000) DEFAULT NULL,
  `zone_tax_rate` int(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(1) NOT NULL DEFAULT '0',
  `shared` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `created_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(1) NOT NULL DEFAULT '0',
  `modified_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(1) NOT NULL DEFAULT '0',
  `locked_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `locked_by` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='The Zones managed by the Zone Shipment Module';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bak_mhyjf_assets`
--
ALTER TABLE `bak_mhyjf_assets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `bak_mhyjf_associations`
--
ALTER TABLE `bak_mhyjf_associations`
  ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `bak_mhyjf_banners`
--
ALTER TABLE `bak_mhyjf_banners`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_mhyjf_banner_clients`
--
ALTER TABLE `bak_mhyjf_banner_clients`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `bak_mhyjf_banner_tracks`
--
ALTER TABLE `bak_mhyjf_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `bak_mhyjf_categories`
--
ALTER TABLE `bak_mhyjf_categories`
  ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_mhyjf_contact_details`
--
ALTER TABLE `bak_mhyjf_contact_details`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_mhyjf_content`
--
ALTER TABLE `bak_mhyjf_content`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_mhyjf_contentitem_tag_map`
--
ALTER TABLE `bak_mhyjf_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `bak_mhyjf_content_frontpage`
--
ALTER TABLE `bak_mhyjf_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `bak_mhyjf_content_rating`
--
ALTER TABLE `bak_mhyjf_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `bak_mhyjf_content_types`
--
ALTER TABLE `bak_mhyjf_content_types`
  ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `bak_mhyjf_extensions`
--
ALTER TABLE `bak_mhyjf_extensions`
  ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `bak_mhyjf_finder_filters`
--
ALTER TABLE `bak_mhyjf_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `bak_mhyjf_finder_links`
--
ALTER TABLE `bak_mhyjf_finder_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms0`
--
ALTER TABLE `bak_mhyjf_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms1`
--
ALTER TABLE `bak_mhyjf_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms2`
--
ALTER TABLE `bak_mhyjf_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms3`
--
ALTER TABLE `bak_mhyjf_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms4`
--
ALTER TABLE `bak_mhyjf_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms5`
--
ALTER TABLE `bak_mhyjf_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms6`
--
ALTER TABLE `bak_mhyjf_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms7`
--
ALTER TABLE `bak_mhyjf_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms8`
--
ALTER TABLE `bak_mhyjf_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_terms9`
--
ALTER TABLE `bak_mhyjf_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termsa`
--
ALTER TABLE `bak_mhyjf_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termsb`
--
ALTER TABLE `bak_mhyjf_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termsc`
--
ALTER TABLE `bak_mhyjf_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termsd`
--
ALTER TABLE `bak_mhyjf_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termse`
--
ALTER TABLE `bak_mhyjf_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_links_termsf`
--
ALTER TABLE `bak_mhyjf_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `bak_mhyjf_finder_taxonomy`
--
ALTER TABLE `bak_mhyjf_finder_taxonomy`
  ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `bak_mhyjf_finder_taxonomy_map`
--
ALTER TABLE `bak_mhyjf_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `bak_mhyjf_finder_terms`
--
ALTER TABLE `bak_mhyjf_finder_terms`
  ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `bak_mhyjf_finder_terms_common`
--
ALTER TABLE `bak_mhyjf_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `bak_mhyjf_finder_tokens`
--
ALTER TABLE `bak_mhyjf_finder_tokens`
  ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `bak_mhyjf_finder_tokens_aggregate`
--
ALTER TABLE `bak_mhyjf_finder_tokens_aggregate`
  ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `bak_mhyjf_finder_types`
--
ALTER TABLE `bak_mhyjf_finder_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `bak_mhyjf_languages`
--
ALTER TABLE `bak_mhyjf_languages`
  ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `bak_mhyjf_menu`
--
ALTER TABLE `bak_mhyjf_menu`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_mhyjf_menu_types`
--
ALTER TABLE `bak_mhyjf_menu_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `bak_mhyjf_messages`
--
ALTER TABLE `bak_mhyjf_messages`
  ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `bak_mhyjf_messages_cfg`
--
ALTER TABLE `bak_mhyjf_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `bak_mhyjf_modules`
--
ALTER TABLE `bak_mhyjf_modules`
  ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_mhyjf_modules_menu`
--
ALTER TABLE `bak_mhyjf_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `bak_mhyjf_newsfeeds`
--
ALTER TABLE `bak_mhyjf_newsfeeds`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `bak_mhyjf_overrider`
--
ALTER TABLE `bak_mhyjf_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bak_mhyjf_postinstall_messages`
--
ALTER TABLE `bak_mhyjf_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `bak_mhyjf_redirect_links`
--
ALTER TABLE `bak_mhyjf_redirect_links`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `bak_mhyjf_schemas`
--
ALTER TABLE `bak_mhyjf_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `bak_mhyjf_session`
--
ALTER TABLE `bak_mhyjf_session`
  ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `bak_mhyjf_tags`
--
ALTER TABLE `bak_mhyjf_tags`
  ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `bak_mhyjf_template_styles`
--
ALTER TABLE `bak_mhyjf_template_styles`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `bak_mhyjf_ucm_base`
--
ALTER TABLE `bak_mhyjf_ucm_base`
  ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `bak_mhyjf_ucm_content`
--
ALTER TABLE `bak_mhyjf_ucm_content`
  ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `bak_mhyjf_ucm_history`
--
ALTER TABLE `bak_mhyjf_ucm_history`
  ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `bak_mhyjf_updates`
--
ALTER TABLE `bak_mhyjf_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `bak_mhyjf_update_sites`
--
ALTER TABLE `bak_mhyjf_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `bak_mhyjf_update_sites_extensions`
--
ALTER TABLE `bak_mhyjf_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `bak_mhyjf_usergroups`
--
ALTER TABLE `bak_mhyjf_usergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `bak_mhyjf_users`
--
ALTER TABLE `bak_mhyjf_users`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `bak_mhyjf_user_keys`
--
ALTER TABLE `bak_mhyjf_user_keys`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `bak_mhyjf_user_notes`
--
ALTER TABLE `bak_mhyjf_user_notes`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `bak_mhyjf_user_profiles`
--
ALTER TABLE `bak_mhyjf_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `bak_mhyjf_user_usergroup_map`
--
ALTER TABLE `bak_mhyjf_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `bak_mhyjf_viewlevels`
--
ALTER TABLE `bak_mhyjf_viewlevels`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `mhyjf_assets`
--
ALTER TABLE `mhyjf_assets`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_asset_name` (`name`), ADD KEY `idx_lft_rgt` (`lft`,`rgt`), ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `mhyjf_associations`
--
ALTER TABLE `mhyjf_associations`
  ADD PRIMARY KEY (`context`,`id`), ADD KEY `idx_key` (`key`);

--
-- Indexes for table `mhyjf_banners`
--
ALTER TABLE `mhyjf_banners`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_state` (`state`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`), ADD KEY `idx_banner_catid` (`catid`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `mhyjf_banner_clients`
--
ALTER TABLE `mhyjf_banner_clients`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_own_prefix` (`own_prefix`), ADD KEY `idx_metakey_prefix` (`metakey_prefix`);

--
-- Indexes for table `mhyjf_banner_tracks`
--
ALTER TABLE `mhyjf_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`), ADD KEY `idx_track_date` (`track_date`), ADD KEY `idx_track_type` (`track_type`), ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `mhyjf_categories`
--
ALTER TABLE `mhyjf_categories`
  ADD PRIMARY KEY (`id`), ADD KEY `cat_idx` (`extension`,`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `mhyjf_contact_details`
--
ALTER TABLE `mhyjf_contact_details`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `mhyjf_content`
--
ALTER TABLE `mhyjf_content`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`state`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_featured_catid` (`featured`,`catid`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `mhyjf_contentitem_tag_map`
--
ALTER TABLE `mhyjf_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`), ADD KEY `idx_tag_type` (`tag_id`,`type_id`), ADD KEY `idx_date_id` (`tag_date`,`tag_id`), ADD KEY `idx_tag` (`tag_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `mhyjf_content_frontpage`
--
ALTER TABLE `mhyjf_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `mhyjf_content_rating`
--
ALTER TABLE `mhyjf_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `mhyjf_content_types`
--
ALTER TABLE `mhyjf_content_types`
  ADD PRIMARY KEY (`type_id`), ADD KEY `idx_alias` (`type_alias`);

--
-- Indexes for table `mhyjf_extensions`
--
ALTER TABLE `mhyjf_extensions`
  ADD PRIMARY KEY (`extension_id`), ADD KEY `element_clientid` (`element`,`client_id`), ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`), ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `mhyjf_finder_filters`
--
ALTER TABLE `mhyjf_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `mhyjf_finder_links`
--
ALTER TABLE `mhyjf_finder_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `idx_type` (`type_id`), ADD KEY `idx_title` (`title`), ADD KEY `idx_md5` (`md5sum`), ADD KEY `idx_url` (`url`(75)), ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`), ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `mhyjf_finder_links_terms0`
--
ALTER TABLE `mhyjf_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms1`
--
ALTER TABLE `mhyjf_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms2`
--
ALTER TABLE `mhyjf_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms3`
--
ALTER TABLE `mhyjf_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms4`
--
ALTER TABLE `mhyjf_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms5`
--
ALTER TABLE `mhyjf_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms6`
--
ALTER TABLE `mhyjf_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms7`
--
ALTER TABLE `mhyjf_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms8`
--
ALTER TABLE `mhyjf_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_terms9`
--
ALTER TABLE `mhyjf_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termsa`
--
ALTER TABLE `mhyjf_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termsb`
--
ALTER TABLE `mhyjf_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termsc`
--
ALTER TABLE `mhyjf_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termsd`
--
ALTER TABLE `mhyjf_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termse`
--
ALTER TABLE `mhyjf_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_links_termsf`
--
ALTER TABLE `mhyjf_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`), ADD KEY `idx_term_weight` (`term_id`,`weight`), ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `mhyjf_finder_taxonomy`
--
ALTER TABLE `mhyjf_finder_taxonomy`
  ADD PRIMARY KEY (`id`), ADD KEY `parent_id` (`parent_id`), ADD KEY `state` (`state`), ADD KEY `ordering` (`ordering`), ADD KEY `access` (`access`), ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `mhyjf_finder_taxonomy_map`
--
ALTER TABLE `mhyjf_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`), ADD KEY `link_id` (`link_id`), ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `mhyjf_finder_terms`
--
ALTER TABLE `mhyjf_finder_terms`
  ADD PRIMARY KEY (`term_id`), ADD UNIQUE KEY `idx_term` (`term`), ADD KEY `idx_term_phrase` (`term`,`phrase`), ADD KEY `idx_stem_phrase` (`stem`,`phrase`), ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `mhyjf_finder_terms_common`
--
ALTER TABLE `mhyjf_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`), ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `mhyjf_finder_tokens`
--
ALTER TABLE `mhyjf_finder_tokens`
  ADD KEY `idx_word` (`term`), ADD KEY `idx_context` (`context`);

--
-- Indexes for table `mhyjf_finder_tokens_aggregate`
--
ALTER TABLE `mhyjf_finder_tokens_aggregate`
  ADD KEY `token` (`term`), ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `mhyjf_finder_types`
--
ALTER TABLE `mhyjf_finder_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `mhyjf_imageshow_external_source_picasa`
--
ALTER TABLE `mhyjf_imageshow_external_source_picasa`
  ADD PRIMARY KEY (`external_source_id`);

--
-- Indexes for table `mhyjf_imageshow_images`
--
ALTER TABLE `mhyjf_imageshow_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `mhyjf_imageshow_log`
--
ALTER TABLE `mhyjf_imageshow_log`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `mhyjf_imageshow_showcase`
--
ALTER TABLE `mhyjf_imageshow_showcase`
  ADD PRIMARY KEY (`showcase_id`);

--
-- Indexes for table `mhyjf_imageshow_showlist`
--
ALTER TABLE `mhyjf_imageshow_showlist`
  ADD PRIMARY KEY (`showlist_id`);

--
-- Indexes for table `mhyjf_imageshow_source_profile`
--
ALTER TABLE `mhyjf_imageshow_source_profile`
  ADD PRIMARY KEY (`external_source_profile_id`);

--
-- Indexes for table `mhyjf_imageshow_theme_carousel`
--
ALTER TABLE `mhyjf_imageshow_theme_carousel`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `mhyjf_imageshow_theme_classic_flash`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_flash`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `mhyjf_imageshow_theme_classic_javascript`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_javascript`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `mhyjf_imageshow_theme_classic_parameters`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_imageshow_theme_slider`
--
ALTER TABLE `mhyjf_imageshow_theme_slider`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `mhyjf_jaem_log`
--
ALTER TABLE `mhyjf_jaem_log`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ext_id` (`ext_id`);

--
-- Indexes for table `mhyjf_jaem_services`
--
ALTER TABLE `mhyjf_jaem_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_jsn_imageshow_config`
--
ALTER TABLE `mhyjf_jsn_imageshow_config`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `mhyjf_jsn_imageshow_messages`
--
ALTER TABLE `mhyjf_jsn_imageshow_messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `mhyjf_languages`
--
ALTER TABLE `mhyjf_languages`
  ADD PRIMARY KEY (`lang_id`), ADD UNIQUE KEY `idx_sef` (`sef`), ADD UNIQUE KEY `idx_image` (`image`), ADD UNIQUE KEY `idx_langcode` (`lang_code`), ADD KEY `idx_access` (`access`), ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `mhyjf_menu`
--
ALTER TABLE `mhyjf_menu`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`), ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`), ADD KEY `idx_menutype` (`menutype`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_path` (`path`(255)), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `mhyjf_menu_types`
--
ALTER TABLE `mhyjf_menu_types`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `mhyjf_messages`
--
ALTER TABLE `mhyjf_messages`
  ADD PRIMARY KEY (`message_id`), ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `mhyjf_messages_cfg`
--
ALTER TABLE `mhyjf_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `mhyjf_modules`
--
ALTER TABLE `mhyjf_modules`
  ADD PRIMARY KEY (`id`), ADD KEY `published` (`published`,`access`), ADD KEY `newsfeeds` (`module`,`published`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `mhyjf_modules_menu`
--
ALTER TABLE `mhyjf_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `mhyjf_newsfeeds`
--
ALTER TABLE `mhyjf_newsfeeds`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_state` (`published`), ADD KEY `idx_catid` (`catid`), ADD KEY `idx_createdby` (`created_by`), ADD KEY `idx_language` (`language`), ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `mhyjf_overrider`
--
ALTER TABLE `mhyjf_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_postinstall_messages`
--
ALTER TABLE `mhyjf_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `mhyjf_redirect_links`
--
ALTER TABLE `mhyjf_redirect_links`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_link_old` (`old_url`), ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `mhyjf_schemas`
--
ALTER TABLE `mhyjf_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `mhyjf_session`
--
ALTER TABLE `mhyjf_session`
  ADD PRIMARY KEY (`session_id`), ADD KEY `userid` (`userid`), ADD KEY `time` (`time`);

--
-- Indexes for table `mhyjf_tags`
--
ALTER TABLE `mhyjf_tags`
  ADD PRIMARY KEY (`id`), ADD KEY `tag_idx` (`published`,`access`), ADD KEY `idx_access` (`access`), ADD KEY `idx_checkout` (`checked_out`), ADD KEY `idx_path` (`path`), ADD KEY `idx_left_right` (`lft`,`rgt`), ADD KEY `idx_alias` (`alias`), ADD KEY `idx_language` (`language`);

--
-- Indexes for table `mhyjf_template_styles`
--
ALTER TABLE `mhyjf_template_styles`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_template` (`template`), ADD KEY `idx_home` (`home`);

--
-- Indexes for table `mhyjf_ucm_base`
--
ALTER TABLE `mhyjf_ucm_base`
  ADD PRIMARY KEY (`ucm_id`), ADD KEY `idx_ucm_item_id` (`ucm_item_id`), ADD KEY `idx_ucm_type_id` (`ucm_type_id`), ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `mhyjf_ucm_content`
--
ALTER TABLE `mhyjf_ucm_content`
  ADD PRIMARY KEY (`core_content_id`), ADD KEY `tag_idx` (`core_state`,`core_access`), ADD KEY `idx_access` (`core_access`), ADD KEY `idx_alias` (`core_alias`), ADD KEY `idx_language` (`core_language`), ADD KEY `idx_title` (`core_title`), ADD KEY `idx_modified_time` (`core_modified_time`), ADD KEY `idx_created_time` (`core_created_time`), ADD KEY `idx_content_type` (`core_type_alias`), ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`), ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`), ADD KEY `idx_core_created_user_id` (`core_created_user_id`), ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `mhyjf_ucm_history`
--
ALTER TABLE `mhyjf_ucm_history`
  ADD PRIMARY KEY (`version_id`), ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`), ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `mhyjf_updates`
--
ALTER TABLE `mhyjf_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `mhyjf_update_sites`
--
ALTER TABLE `mhyjf_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `mhyjf_update_sites_extensions`
--
ALTER TABLE `mhyjf_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `mhyjf_usergroups`
--
ALTER TABLE `mhyjf_usergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`), ADD KEY `idx_usergroup_title_lookup` (`title`), ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`), ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `mhyjf_users`
--
ALTER TABLE `mhyjf_users`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_name` (`name`), ADD KEY `idx_block` (`block`), ADD KEY `username` (`username`), ADD KEY `email` (`email`);

--
-- Indexes for table `mhyjf_user_keys`
--
ALTER TABLE `mhyjf_user_keys`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `series` (`series`), ADD UNIQUE KEY `series_2` (`series`), ADD UNIQUE KEY `series_3` (`series`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mhyjf_user_notes`
--
ALTER TABLE `mhyjf_user_notes`
  ADD PRIMARY KEY (`id`), ADD KEY `idx_user_id` (`user_id`), ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `mhyjf_user_profiles`
--
ALTER TABLE `mhyjf_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `mhyjf_user_usergroup_map`
--
ALTER TABLE `mhyjf_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `mhyjf_viewlevels`
--
ALTER TABLE `mhyjf_viewlevels`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Indexes for table `mhyjf_virtuemart_adminmenuentries`
--
ALTER TABLE `mhyjf_virtuemart_adminmenuentries`
  ADD PRIMARY KEY (`id`), ADD KEY `module_id` (`module_id`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_calcs`
--
ALTER TABLE `mhyjf_virtuemart_calcs`
  ADD PRIMARY KEY (`virtuemart_calc_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `calc_kind` (`calc_kind`), ADD KEY `shared` (`shared`), ADD KEY `publish_up` (`publish_up`), ADD KEY `publish_down` (`publish_down`);

--
-- Indexes for table `mhyjf_virtuemart_calc_categories`
--
ALTER TABLE `mhyjf_virtuemart_calc_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_category_id`);

--
-- Indexes for table `mhyjf_virtuemart_calc_countries`
--
ALTER TABLE `mhyjf_virtuemart_calc_countries`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_country_id`);

--
-- Indexes for table `mhyjf_virtuemart_calc_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_calc_manufacturers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `mhyjf_virtuemart_calc_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_calc_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `mhyjf_virtuemart_calc_states`
--
ALTER TABLE `mhyjf_virtuemart_calc_states`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_calc_id` (`virtuemart_calc_id`,`virtuemart_state_id`);

--
-- Indexes for table `mhyjf_virtuemart_carts`
--
ALTER TABLE `mhyjf_virtuemart_carts`
  ADD PRIMARY KEY (`virtuemart_cart_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`);

--
-- Indexes for table `mhyjf_virtuemart_categories`
--
ALTER TABLE `mhyjf_virtuemart_categories`
  ADD PRIMARY KEY (`virtuemart_category_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `shared` (`shared`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_categories_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_categories_en_gb`
  ADD PRIMARY KEY (`virtuemart_category_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_categories_th_th`
--
ALTER TABLE `mhyjf_virtuemart_categories_th_th`
  ADD PRIMARY KEY (`virtuemart_category_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_category_categories`
--
ALTER TABLE `mhyjf_virtuemart_category_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `category_parent_id` (`category_parent_id`,`category_child_id`), ADD KEY `category_child_id` (`category_child_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_category_medias`
--
ALTER TABLE `mhyjf_virtuemart_category_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_category_id` (`virtuemart_category_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_configs`
--
ALTER TABLE `mhyjf_virtuemart_configs`
  ADD PRIMARY KEY (`virtuemart_config_id`);

--
-- Indexes for table `mhyjf_virtuemart_countries`
--
ALTER TABLE `mhyjf_virtuemart_countries`
  ADD PRIMARY KEY (`virtuemart_country_id`), ADD KEY `country_3_code` (`country_3_code`), ADD KEY `country_2_code` (`country_2_code`), ADD KEY `country_name` (`country_name`), ADD KEY `ordering` (`ordering`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_coupons`
--
ALTER TABLE `mhyjf_virtuemart_coupons`
  ADD PRIMARY KEY (`virtuemart_coupon_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `coupon_code` (`coupon_code`), ADD KEY `coupon_type` (`coupon_type`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_currencies`
--
ALTER TABLE `mhyjf_virtuemart_currencies`
  ADD PRIMARY KEY (`virtuemart_currency_id`), ADD UNIQUE KEY `currency_code_3` (`currency_code_3`), ADD KEY `ordering` (`ordering`), ADD KEY `currency_name` (`currency_name`), ADD KEY `published` (`published`), ADD KEY `shared` (`shared`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `currency_numeric_code` (`currency_numeric_code`);

--
-- Indexes for table `mhyjf_virtuemart_customs`
--
ALTER TABLE `mhyjf_virtuemart_customs`
  ADD PRIMARY KEY (`virtuemart_custom_id`), ADD KEY `custom_parent_id` (`custom_parent_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `custom_element` (`custom_element`), ADD KEY `field_type` (`field_type`), ADD KEY `is_cart_attribute` (`is_cart_attribute`), ADD KEY `is_input` (`is_input`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_invoices`
--
ALTER TABLE `mhyjf_virtuemart_invoices`
  ADD PRIMARY KEY (`virtuemart_invoice_id`), ADD UNIQUE KEY `invoice_number` (`invoice_number`,`virtuemart_vendor_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturercategories`
--
ALTER TABLE `mhyjf_virtuemart_manufacturercategories`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturercategories_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_manufacturercategories_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturercategories_th_th`
--
ALTER TABLE `mhyjf_virtuemart_manufacturercategories_th_th`
  ADD PRIMARY KEY (`virtuemart_manufacturercategories_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_manufacturers`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`), ADD UNIQUE KEY `virtuemart_manufacturercategories_id` (`virtuemart_manufacturer_id`,`virtuemart_manufacturercategories_id`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturers_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_manufacturers_en_gb`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturers_th_th`
--
ALTER TABLE `mhyjf_virtuemart_manufacturers_th_th`
  ADD PRIMARY KEY (`virtuemart_manufacturer_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_manufacturer_medias`
--
ALTER TABLE `mhyjf_virtuemart_manufacturer_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_manufacturer_id` (`virtuemart_manufacturer_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_medias`
--
ALTER TABLE `mhyjf_virtuemart_medias`
  ADD PRIMARY KEY (`virtuemart_media_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`), ADD KEY `file_type` (`file_type`), ADD KEY `shared` (`shared`);

--
-- Indexes for table `mhyjf_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `mhyjf_virtuemart_migration_oldtonew_ids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_virtuemart_modules`
--
ALTER TABLE `mhyjf_virtuemart_modules`
  ADD PRIMARY KEY (`module_id`), ADD KEY `module_name` (`module_name`), ADD KEY `ordering` (`ordering`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_orders`
--
ALTER TABLE `mhyjf_virtuemart_orders`
  ADD PRIMARY KEY (`virtuemart_order_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `order_number` (`order_number`), ADD KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`), ADD KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`);

--
-- Indexes for table `mhyjf_virtuemart_orderstates`
--
ALTER TABLE `mhyjf_virtuemart_orderstates`
  ADD PRIMARY KEY (`virtuemart_orderstate_id`), ADD KEY `ordering` (`ordering`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_order_calc_rules`
--
ALTER TABLE `mhyjf_virtuemart_order_calc_rules`
  ADD PRIMARY KEY (`virtuemart_order_calc_rule_id`), ADD KEY `virtuemart_calc_id` (`virtuemart_calc_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- Indexes for table `mhyjf_virtuemart_order_histories`
--
ALTER TABLE `mhyjf_virtuemart_order_histories`
  ADD PRIMARY KEY (`virtuemart_order_history_id`);

--
-- Indexes for table `mhyjf_virtuemart_order_items`
--
ALTER TABLE `mhyjf_virtuemart_order_items`
  ADD PRIMARY KEY (`virtuemart_order_item_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `order_status` (`order_status`);

--
-- Indexes for table `mhyjf_virtuemart_order_userinfos`
--
ALTER TABLE `mhyjf_virtuemart_order_userinfos`
  ADD PRIMARY KEY (`virtuemart_order_userinfo_id`), ADD KEY `virtuemart_order_id` (`virtuemart_order_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`), ADD KEY `address_type` (`address_type`);

--
-- Indexes for table `mhyjf_virtuemart_paymentmethods`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethods`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`), ADD KEY `payment_jplugin_id` (`payment_jplugin_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `payment_element` (`payment_element`,`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_paymentmethods_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_paymentmethods_th_th`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethods_th_th`
  ADD PRIMARY KEY (`virtuemart_paymentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_paymentmethod_id` (`virtuemart_paymentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `mhyjf_virtuemart_payment_plg_standard`
--
ALTER TABLE `mhyjf_virtuemart_payment_plg_standard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_virtuemart_products`
--
ALTER TABLE `mhyjf_virtuemart_products`
  ADD PRIMARY KEY (`virtuemart_product_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `product_parent_id` (`product_parent_id`), ADD KEY `product_special` (`product_special`), ADD KEY `published` (`published`), ADD KEY `pordering` (`pordering`), ADD KEY `created_on` (`created_on`), ADD KEY `modified_on` (`modified_on`);

--
-- Indexes for table `mhyjf_virtuemart_products_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_products_en_gb`
  ADD PRIMARY KEY (`virtuemart_product_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_products_th_th`
--
ALTER TABLE `mhyjf_virtuemart_products_th_th`
  ADD PRIMARY KEY (`virtuemart_product_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_product_categories`
--
ALTER TABLE `mhyjf_virtuemart_product_categories`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_category_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_product_customfields`
--
ALTER TABLE `mhyjf_virtuemart_product_customfields`
  ADD PRIMARY KEY (`virtuemart_customfield_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `virtuemart_custom_id` (`virtuemart_custom_id`), ADD KEY `published` (`published`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_product_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_product_manufacturers`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_manufacturer_id`);

--
-- Indexes for table `mhyjf_virtuemart_product_medias`
--
ALTER TABLE `mhyjf_virtuemart_product_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_media_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_product_prices`
--
ALTER TABLE `mhyjf_virtuemart_product_prices`
  ADD PRIMARY KEY (`virtuemart_product_price_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `product_price` (`virtuemart_product_id`), ADD KEY `virtuemart_shoppergroup_id` (`virtuemart_shoppergroup_id`), ADD KEY `product_price_publish_up` (`product_price_publish_up`), ADD KEY `product_price_publish_down` (`product_price_publish_down`), ADD KEY `price_quantity_start` (`price_quantity_start`), ADD KEY `price_quantity_end` (`price_quantity_end`);

--
-- Indexes for table `mhyjf_virtuemart_product_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_product_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `mhyjf_virtuemart_ratings`
--
ALTER TABLE `mhyjf_virtuemart_ratings`
  ADD PRIMARY KEY (`virtuemart_rating_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`virtuemart_rating_id`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_rating_reviews`
--
ALTER TABLE `mhyjf_virtuemart_rating_reviews`
  ADD PRIMARY KEY (`virtuemart_rating_review_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`), ADD KEY `created_on` (`created_on`), ADD KEY `created_by` (`created_by`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_rating_votes`
--
ALTER TABLE `mhyjf_virtuemart_rating_votes`
  ADD PRIMARY KEY (`virtuemart_rating_vote_id`), ADD UNIQUE KEY `virtuemart_product_id` (`virtuemart_product_id`,`created_by`), ADD KEY `created_by` (`created_by`), ADD KEY `created_on` (`created_on`);

--
-- Indexes for table `mhyjf_virtuemart_shipmentmethods`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethods`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`), ADD KEY `shipment_jplugin_id` (`shipment_jplugin_id`), ADD KEY `shipment_element` (`shipment_element`,`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`);

--
-- Indexes for table `mhyjf_virtuemart_shipmentmethods_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethods_en_gb`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_shipmentmethods_th_th`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethods_th_th`
  ADD PRIMARY KEY (`virtuemart_shipmentmethod_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethod_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_shipmentmethod_id` (`virtuemart_shipmentmethod_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `mhyjf_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `mhyjf_virtuemart_shipment_plg_weight_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mhyjf_virtuemart_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_shoppergroups`
  ADD PRIMARY KEY (`virtuemart_shoppergroup_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `shopper_group_name` (`shopper_group_name`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_states`
--
ALTER TABLE `mhyjf_virtuemart_states`
  ADD PRIMARY KEY (`virtuemart_state_id`), ADD UNIQUE KEY `state_3_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_3_code`), ADD UNIQUE KEY `state_2_code` (`virtuemart_vendor_id`,`virtuemart_country_id`,`state_2_code`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `virtuemart_country_id` (`virtuemart_country_id`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`);

--
-- Indexes for table `mhyjf_virtuemart_userfields`
--
ALTER TABLE `mhyjf_virtuemart_userfields`
  ADD PRIMARY KEY (`virtuemart_userfield_id`), ADD UNIQUE KEY `name` (`name`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `ordering` (`ordering`), ADD KEY `shared` (`shared`), ADD KEY `published` (`published`), ADD KEY `account` (`account`), ADD KEY `shipment` (`shipment`), ADD KEY `cart` (`cart`);

--
-- Indexes for table `mhyjf_virtuemart_userfield_values`
--
ALTER TABLE `mhyjf_virtuemart_userfield_values`
  ADD PRIMARY KEY (`virtuemart_userfield_value_id`), ADD KEY `virtuemart_userfield_id` (`virtuemart_userfield_id`);

--
-- Indexes for table `mhyjf_virtuemart_userinfos`
--
ALTER TABLE `mhyjf_virtuemart_userinfos`
  ADD PRIMARY KEY (`virtuemart_userinfo_id`), ADD KEY `i_virtuemart_user_id` (`virtuemart_userinfo_id`,`virtuemart_user_id`), ADD KEY `virtuemart_user_id` (`virtuemart_user_id`,`address_type`), ADD KEY `address_type` (`address_type`), ADD KEY `address_type_name` (`address_type_name`);

--
-- Indexes for table `mhyjf_virtuemart_vendors`
--
ALTER TABLE `mhyjf_virtuemart_vendors`
  ADD PRIMARY KEY (`virtuemart_vendor_id`), ADD KEY `vendor_name` (`vendor_name`), ADD KEY `vendor_currency` (`vendor_currency`);

--
-- Indexes for table `mhyjf_virtuemart_vendors_en_gb`
--
ALTER TABLE `mhyjf_virtuemart_vendors_en_gb`
  ADD PRIMARY KEY (`virtuemart_vendor_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_vendors_th_th`
--
ALTER TABLE `mhyjf_virtuemart_vendors_th_th`
  ADD PRIMARY KEY (`virtuemart_vendor_id`), ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `mhyjf_virtuemart_vendor_medias`
--
ALTER TABLE `mhyjf_virtuemart_vendor_medias`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_media_id`);

--
-- Indexes for table `mhyjf_virtuemart_vendor_users`
--
ALTER TABLE `mhyjf_virtuemart_vendor_users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`,`virtuemart_user_id`);

--
-- Indexes for table `mhyjf_virtuemart_vmusers`
--
ALTER TABLE `mhyjf_virtuemart_vmusers`
  ADD PRIMARY KEY (`virtuemart_user_id`), ADD UNIQUE KEY `u_virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_vendor_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`), ADD KEY `user_is_vendor` (`user_is_vendor`);

--
-- Indexes for table `mhyjf_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_vmuser_shoppergroups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `virtuemart_user_id` (`virtuemart_user_id`,`virtuemart_shoppergroup_id`);

--
-- Indexes for table `mhyjf_virtuemart_waitingusers`
--
ALTER TABLE `mhyjf_virtuemart_waitingusers`
  ADD PRIMARY KEY (`virtuemart_waitinguser_id`), ADD KEY `virtuemart_product_id` (`virtuemart_product_id`), ADD KEY `notify_email` (`notify_email`);

--
-- Indexes for table `mhyjf_virtuemart_worldzones`
--
ALTER TABLE `mhyjf_virtuemart_worldzones`
  ADD PRIMARY KEY (`virtuemart_worldzone_id`), ADD KEY `virtuemart_vendor_id` (`virtuemart_vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bak_mhyjf_assets`
--
ALTER TABLE `bak_mhyjf_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `bak_mhyjf_banners`
--
ALTER TABLE `bak_mhyjf_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_banner_clients`
--
ALTER TABLE `bak_mhyjf_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_categories`
--
ALTER TABLE `bak_mhyjf_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bak_mhyjf_contact_details`
--
ALTER TABLE `bak_mhyjf_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_content`
--
ALTER TABLE `bak_mhyjf_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_content_types`
--
ALTER TABLE `bak_mhyjf_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `bak_mhyjf_extensions`
--
ALTER TABLE `bak_mhyjf_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=701;
--
-- AUTO_INCREMENT for table `bak_mhyjf_finder_filters`
--
ALTER TABLE `bak_mhyjf_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_finder_links`
--
ALTER TABLE `bak_mhyjf_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_finder_taxonomy`
--
ALTER TABLE `bak_mhyjf_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_mhyjf_finder_terms`
--
ALTER TABLE `bak_mhyjf_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_finder_types`
--
ALTER TABLE `bak_mhyjf_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_languages`
--
ALTER TABLE `bak_mhyjf_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_mhyjf_menu`
--
ALTER TABLE `bak_mhyjf_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `bak_mhyjf_menu_types`
--
ALTER TABLE `bak_mhyjf_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_mhyjf_messages`
--
ALTER TABLE `bak_mhyjf_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_modules`
--
ALTER TABLE `bak_mhyjf_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `bak_mhyjf_newsfeeds`
--
ALTER TABLE `bak_mhyjf_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_overrider`
--
ALTER TABLE `bak_mhyjf_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `bak_mhyjf_postinstall_messages`
--
ALTER TABLE `bak_mhyjf_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bak_mhyjf_redirect_links`
--
ALTER TABLE `bak_mhyjf_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_tags`
--
ALTER TABLE `bak_mhyjf_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bak_mhyjf_template_styles`
--
ALTER TABLE `bak_mhyjf_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `bak_mhyjf_ucm_content`
--
ALTER TABLE `bak_mhyjf_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_ucm_history`
--
ALTER TABLE `bak_mhyjf_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_updates`
--
ALTER TABLE `bak_mhyjf_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_update_sites`
--
ALTER TABLE `bak_mhyjf_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bak_mhyjf_usergroups`
--
ALTER TABLE `bak_mhyjf_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `bak_mhyjf_users`
--
ALTER TABLE `bak_mhyjf_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_user_keys`
--
ALTER TABLE `bak_mhyjf_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_user_notes`
--
ALTER TABLE `bak_mhyjf_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bak_mhyjf_viewlevels`
--
ALTER TABLE `bak_mhyjf_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mhyjf_assets`
--
ALTER TABLE `mhyjf_assets`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `mhyjf_banners`
--
ALTER TABLE `mhyjf_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_banner_clients`
--
ALTER TABLE `mhyjf_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_categories`
--
ALTER TABLE `mhyjf_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mhyjf_contact_details`
--
ALTER TABLE `mhyjf_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `mhyjf_content`
--
ALTER TABLE `mhyjf_content`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_content_types`
--
ALTER TABLE `mhyjf_content_types`
  MODIFY `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mhyjf_extensions`
--
ALTER TABLE `mhyjf_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10053;
--
-- AUTO_INCREMENT for table `mhyjf_finder_filters`
--
ALTER TABLE `mhyjf_finder_filters`
  MODIFY `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_finder_links`
--
ALTER TABLE `mhyjf_finder_links`
  MODIFY `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_finder_taxonomy`
--
ALTER TABLE `mhyjf_finder_taxonomy`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_finder_terms`
--
ALTER TABLE `mhyjf_finder_terms`
  MODIFY `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_finder_types`
--
ALTER TABLE `mhyjf_finder_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_external_source_picasa`
--
ALTER TABLE `mhyjf_imageshow_external_source_picasa`
  MODIFY `external_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_images`
--
ALTER TABLE `mhyjf_imageshow_images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_log`
--
ALTER TABLE `mhyjf_imageshow_log`
  MODIFY `log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_showcase`
--
ALTER TABLE `mhyjf_imageshow_showcase`
  MODIFY `showcase_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_showlist`
--
ALTER TABLE `mhyjf_imageshow_showlist`
  MODIFY `showlist_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_source_profile`
--
ALTER TABLE `mhyjf_imageshow_source_profile`
  MODIFY `external_source_profile_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_theme_carousel`
--
ALTER TABLE `mhyjf_imageshow_theme_carousel`
  MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_theme_classic_flash`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_flash`
  MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_theme_classic_javascript`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_javascript`
  MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_theme_classic_parameters`
--
ALTER TABLE `mhyjf_imageshow_theme_classic_parameters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_imageshow_theme_slider`
--
ALTER TABLE `mhyjf_imageshow_theme_slider`
  MODIFY `theme_id` int(11) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_jaem_log`
--
ALTER TABLE `mhyjf_jaem_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_jaem_services`
--
ALTER TABLE `mhyjf_jaem_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mhyjf_jsn_imageshow_messages`
--
ALTER TABLE `mhyjf_jsn_imageshow_messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mhyjf_languages`
--
ALTER TABLE `mhyjf_languages`
  MODIFY `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mhyjf_menu`
--
ALTER TABLE `mhyjf_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=128;
--
-- AUTO_INCREMENT for table `mhyjf_menu_types`
--
ALTER TABLE `mhyjf_menu_types`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_messages`
--
ALTER TABLE `mhyjf_messages`
  MODIFY `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `mhyjf_modules`
--
ALTER TABLE `mhyjf_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `mhyjf_newsfeeds`
--
ALTER TABLE `mhyjf_newsfeeds`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_overrider`
--
ALTER TABLE `mhyjf_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `mhyjf_postinstall_messages`
--
ALTER TABLE `mhyjf_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mhyjf_redirect_links`
--
ALTER TABLE `mhyjf_redirect_links`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_tags`
--
ALTER TABLE `mhyjf_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_template_styles`
--
ALTER TABLE `mhyjf_template_styles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mhyjf_ucm_content`
--
ALTER TABLE `mhyjf_ucm_content`
  MODIFY `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_ucm_history`
--
ALTER TABLE `mhyjf_ucm_history`
  MODIFY `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mhyjf_updates`
--
ALTER TABLE `mhyjf_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `mhyjf_update_sites`
--
ALTER TABLE `mhyjf_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `mhyjf_usergroups`
--
ALTER TABLE `mhyjf_usergroups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mhyjf_users`
--
ALTER TABLE `mhyjf_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `mhyjf_user_keys`
--
ALTER TABLE `mhyjf_user_keys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_user_notes`
--
ALTER TABLE `mhyjf_user_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_viewlevels`
--
ALTER TABLE `mhyjf_viewlevels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_adminmenuentries`
--
ALTER TABLE `mhyjf_virtuemart_adminmenuentries`
  MODIFY `id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calcs`
--
ALTER TABLE `mhyjf_virtuemart_calcs`
  MODIFY `virtuemart_calc_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calc_categories`
--
ALTER TABLE `mhyjf_virtuemart_calc_categories`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calc_countries`
--
ALTER TABLE `mhyjf_virtuemart_calc_countries`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calc_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_calc_manufacturers`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calc_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_calc_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_calc_states`
--
ALTER TABLE `mhyjf_virtuemart_calc_states`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_carts`
--
ALTER TABLE `mhyjf_virtuemart_carts`
  MODIFY `virtuemart_cart_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_categories`
--
ALTER TABLE `mhyjf_virtuemart_categories`
  MODIFY `virtuemart_category_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_category_categories`
--
ALTER TABLE `mhyjf_virtuemart_category_categories`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_category_medias`
--
ALTER TABLE `mhyjf_virtuemart_category_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_configs`
--
ALTER TABLE `mhyjf_virtuemart_configs`
  MODIFY `virtuemart_config_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_countries`
--
ALTER TABLE `mhyjf_virtuemart_countries`
  MODIFY `virtuemart_country_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_coupons`
--
ALTER TABLE `mhyjf_virtuemart_coupons`
  MODIFY `virtuemart_coupon_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_currencies`
--
ALTER TABLE `mhyjf_virtuemart_currencies`
  MODIFY `virtuemart_currency_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_customs`
--
ALTER TABLE `mhyjf_virtuemart_customs`
  MODIFY `virtuemart_custom_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_invoices`
--
ALTER TABLE `mhyjf_virtuemart_invoices`
  MODIFY `virtuemart_invoice_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_manufacturercategories`
--
ALTER TABLE `mhyjf_virtuemart_manufacturercategories`
  MODIFY `virtuemart_manufacturercategories_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_manufacturers`
  MODIFY `virtuemart_manufacturer_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_manufacturer_medias`
--
ALTER TABLE `mhyjf_virtuemart_manufacturer_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_medias`
--
ALTER TABLE `mhyjf_virtuemart_medias`
  MODIFY `virtuemart_media_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_migration_oldtonew_ids`
--
ALTER TABLE `mhyjf_virtuemart_migration_oldtonew_ids`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_modules`
--
ALTER TABLE `mhyjf_virtuemart_modules`
  MODIFY `module_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_orders`
--
ALTER TABLE `mhyjf_virtuemart_orders`
  MODIFY `virtuemart_order_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_orderstates`
--
ALTER TABLE `mhyjf_virtuemart_orderstates`
  MODIFY `virtuemart_orderstate_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_order_calc_rules`
--
ALTER TABLE `mhyjf_virtuemart_order_calc_rules`
  MODIFY `virtuemart_order_calc_rule_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_order_histories`
--
ALTER TABLE `mhyjf_virtuemart_order_histories`
  MODIFY `virtuemart_order_history_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_order_items`
--
ALTER TABLE `mhyjf_virtuemart_order_items`
  MODIFY `virtuemart_order_item_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_order_userinfos`
--
ALTER TABLE `mhyjf_virtuemart_order_userinfos`
  MODIFY `virtuemart_order_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_paymentmethods`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethods`
  MODIFY `virtuemart_paymentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_paymentmethod_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_paymentmethod_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_payment_plg_standard`
--
ALTER TABLE `mhyjf_virtuemart_payment_plg_standard`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_products`
--
ALTER TABLE `mhyjf_virtuemart_products`
  MODIFY `virtuemart_product_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_categories`
--
ALTER TABLE `mhyjf_virtuemart_product_categories`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_customfields`
--
ALTER TABLE `mhyjf_virtuemart_product_customfields`
  MODIFY `virtuemart_customfield_id` int(1) unsigned NOT NULL AUTO_INCREMENT COMMENT 'field id';
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_manufacturers`
--
ALTER TABLE `mhyjf_virtuemart_product_manufacturers`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_medias`
--
ALTER TABLE `mhyjf_virtuemart_product_medias`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_prices`
--
ALTER TABLE `mhyjf_virtuemart_product_prices`
  MODIFY `virtuemart_product_price_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_product_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_product_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_ratings`
--
ALTER TABLE `mhyjf_virtuemart_ratings`
  MODIFY `virtuemart_rating_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_rating_reviews`
--
ALTER TABLE `mhyjf_virtuemart_rating_reviews`
  MODIFY `virtuemart_rating_review_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_rating_votes`
--
ALTER TABLE `mhyjf_virtuemart_rating_votes`
  MODIFY `virtuemart_rating_vote_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_shipmentmethods`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethods`
  MODIFY `virtuemart_shipmentmethod_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_shipmentmethod_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_shipmentmethod_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_shipment_plg_weight_countries`
--
ALTER TABLE `mhyjf_virtuemart_shipment_plg_weight_countries`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_shoppergroups`
  MODIFY `virtuemart_shoppergroup_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_states`
--
ALTER TABLE `mhyjf_virtuemart_states`
  MODIFY `virtuemart_state_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=832;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_userfields`
--
ALTER TABLE `mhyjf_virtuemart_userfields`
  MODIFY `virtuemart_userfield_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_userfield_values`
--
ALTER TABLE `mhyjf_virtuemart_userfield_values`
  MODIFY `virtuemart_userfield_value_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_userinfos`
--
ALTER TABLE `mhyjf_virtuemart_userinfos`
  MODIFY `virtuemart_userinfo_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_vendors`
--
ALTER TABLE `mhyjf_virtuemart_vendors`
  MODIFY `virtuemart_vendor_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_vendor_medias`
--
ALTER TABLE `mhyjf_virtuemart_vendor_medias`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_vendor_users`
--
ALTER TABLE `mhyjf_virtuemart_vendor_users`
  MODIFY `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_vmusers`
--
ALTER TABLE `mhyjf_virtuemart_vmusers`
  MODIFY `virtuemart_user_id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=482;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_vmuser_shoppergroups`
--
ALTER TABLE `mhyjf_virtuemart_vmuser_shoppergroups`
  MODIFY `id` int(1) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_waitingusers`
--
ALTER TABLE `mhyjf_virtuemart_waitingusers`
  MODIFY `virtuemart_waitinguser_id` int(1) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mhyjf_virtuemart_worldzones`
--
ALTER TABLE `mhyjf_virtuemart_worldzones`
  MODIFY `virtuemart_worldzone_id` smallint(1) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
