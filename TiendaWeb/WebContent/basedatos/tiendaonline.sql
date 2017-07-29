/*
Navicat MySQL Data Transfer

Source Server         : conecta_exitus
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : tiendaonline

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2015-07-29 23:42:09
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `ID_COMMENT` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT '',
  `ID_RECORD` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `NICKNAME` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `COMMENT` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`ID_COMMENT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `ID` varchar(100) NOT NULL,
  `RECORDID` varchar(100) DEFAULT NULL,
  `NICK` varchar(50) DEFAULT NULL,
  `COMMENT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `discosassets`
-- ----------------------------
DROP TABLE IF EXISTS `discosassets`;
CREATE TABLE `discosassets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas al conjunto padre.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'Nivel de la caché en el árbol anidado.',
  `name` varchar(50) NOT NULL COMMENT 'Nombre único para el activo.\n',
  `title` varchar(100) NOT NULL COMMENT 'Título descriptivo para el activo.',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosassets
-- ----------------------------
INSERT INTO `discosassets` VALUES ('1', '0', '1', '420', '0', 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `discosassets` VALUES ('2', '1', '1', '2', '1', 'com_admin', 'com_admin', '{}');
INSERT INTO `discosassets` VALUES ('3', '1', '3', '6', '1', 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('4', '1', '7', '8', '1', 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `discosassets` VALUES ('5', '1', '9', '10', '1', 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `discosassets` VALUES ('6', '1', '11', '12', '1', 'com_config', 'com_config', '{}');
INSERT INTO `discosassets` VALUES ('7', '1', '13', '16', '1', 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('8', '1', '17', '26', '1', 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('9', '1', '27', '28', '1', 'com_cpanel', 'com_cpanel', '{}');
INSERT INTO `discosassets` VALUES ('10', '1', '29', '30', '1', 'com_installer', 'com_installer', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1},\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('11', '1', '31', '32', '1', 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('12', '1', '33', '34', '1', 'com_login', 'com_login', '{}');
INSERT INTO `discosassets` VALUES ('13', '1', '35', '36', '1', 'com_mailto', 'com_mailto', '{}');
INSERT INTO `discosassets` VALUES ('14', '1', '37', '38', '1', 'com_massmail', 'com_massmail', '{}');
INSERT INTO `discosassets` VALUES ('15', '1', '39', '40', '1', 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `discosassets` VALUES ('16', '1', '41', '42', '1', 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('17', '1', '43', '44', '1', 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `discosassets` VALUES ('18', '1', '45', '46', '1', 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('19', '1', '47', '50', '1', 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('20', '1', '51', '52', '1', 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('21', '1', '53', '54', '1', 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `discosassets` VALUES ('22', '1', '55', '56', '1', 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `discosassets` VALUES ('23', '1', '57', '58', '1', 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('24', '1', '59', '60', '1', 'com_users', 'com_users', '{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.own\":{\"6\":1},\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('25', '1', '61', '64', '1', 'com_weblinks', 'com_weblinks', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('26', '1', '65', '66', '1', 'com_wrapper', 'com_wrapper', '{}');
INSERT INTO `discosassets` VALUES ('27', '8', '18', '19', '2', 'com_content.category.2', 'Sin categoría', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('28', '3', '4', '5', '2', 'com_banners.category.3', 'Sin categoría', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `discosassets` VALUES ('29', '7', '14', '15', '2', 'com_contact.category.4', 'Sin categoría', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('30', '19', '48', '49', '2', 'com_newsfeeds.category.5', 'Sin categoría', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('31', '25', '62', '63', '2', 'com_weblinks.category.6', 'Sin categoría', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('32', '8', '20', '21', '2', 'com_content.category.7', 'Corporation', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('33', '8', '22', '25', '2', 'com_content.category.8', 'Productos', '{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `discosassets` VALUES ('34', '33', '23', '24', '3', 'com_content.article.1', 'Discos', '{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');

-- ----------------------------
-- Table structure for `discosbanner_clients`
-- ----------------------------
DROP TABLE IF EXISTS `discosbanner_clients`;
CREATE TABLE `discosbanner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosbanner_clients
-- ----------------------------

-- ----------------------------
-- Table structure for `discosbanner_tracks`
-- ----------------------------
DROP TABLE IF EXISTS `discosbanner_tracks`;
CREATE TABLE `discosbanner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosbanner_tracks
-- ----------------------------

-- ----------------------------
-- Table structure for `discosbanners`
-- ----------------------------
DROP TABLE IF EXISTS `discosbanners`;
CREATE TABLE `discosbanners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
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
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosbanners
-- ----------------------------

-- ----------------------------
-- Table structure for `discoscategories`
-- ----------------------------
DROP TABLE IF EXISTS `discoscategories`;
CREATE TABLE `discoscategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK para la tabla de #__assets.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'La meta descripción de la página.',
  `metakey` varchar(1024) NOT NULL COMMENT 'Las palabras clave para la página.',
  `metadata` varchar(2048) NOT NULL COMMENT 'Propiedades de metadatos codificados JSON.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscategories
-- ----------------------------
INSERT INTO `discoscategories` VALUES ('1', '0', '0', '0', '15', '0', '', 'system', 'ROOT', 'root', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{}', '', '', '', '0', '2009-10-18 16:07:09', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('2', '27', '1', '1', '2', '1', 'uncategorised', 'com_content', 'Sin categoría', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:26:37', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('3', '28', '1', '3', '4', '1', 'uncategorised', 'com_banners', 'Sin categoría', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\",\"foobar\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:27:35', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('4', '29', '1', '5', '6', '1', 'uncategorised', 'com_contact', 'Sin categoría', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:27:57', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('5', '30', '1', '7', '8', '1', 'uncategorised', 'com_newsfeeds', 'Sin categoría', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:28:15', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('6', '31', '1', '9', '10', '1', 'uncategorised', 'com_weblinks', 'Sin categoría', 'uncategorised', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"target\":\"\",\"image\":\"\"}', '', '', '{\"page_title\":\"\",\"author\":\"\",\"robots\":\"\"}', '42', '2010-06-28 13:28:33', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('7', '32', '1', '11', '12', '1', 'corp', 'com_content', 'Corporation', 'corp', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2012-02-08 15:09:35', '0', '0000-00-00 00:00:00', '0', '*');
INSERT INTO `discoscategories` VALUES ('8', '33', '1', '13', '14', '1', 'prod', 'com_content', 'Productos', 'prod', '', '', '1', '0', '0000-00-00 00:00:00', '1', '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', '42', '2012-02-08 15:10:14', '0', '0000-00-00 00:00:00', '0', '*');

-- ----------------------------
-- Table structure for `discoscontact_details`
-- ----------------------------
DROP TABLE IF EXISTS `discoscontact_details`;
CREATE TABLE `discoscontact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
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
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscontact_details
-- ----------------------------

-- ----------------------------
-- Table structure for `discoscontent`
-- ----------------------------
DROP TABLE IF EXISTS `discoscontent`;
CREATE TABLE `discoscontent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK a la tabla de #__assets.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
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
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el artículo aparece.',
  `language` char(7) NOT NULL COMMENT 'El código de idioma para el artículo.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscontent
-- ----------------------------
INSERT INTO `discoscontent` VALUES ('1', '34', 'Discos', 'cd', '', '<p>Discos musicales de diferentes generos musicales y artistas diversos</p>\r\n', '\r\n<p>naa mas<img src=\"images/recordbig.jpg\" border=\"0\" title=\"disco\" /></p>\r\n<p> </p>', '1', '0', '0', '8', '2012-02-08 10:07:23', '42', '', '2012-02-08 10:30:01', '42', '0', '0000-00-00 00:00:00', '2012-02-08 10:07:23', '0000-00-00 00:00:00', '', '', '{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\"}', '2', '0', '0', '', '', '1', '0', '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '0', 'es-ES', '');

-- ----------------------------
-- Table structure for `discoscontent_frontpage`
-- ----------------------------
DROP TABLE IF EXISTS `discoscontent_frontpage`;
CREATE TABLE `discoscontent_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscontent_frontpage
-- ----------------------------

-- ----------------------------
-- Table structure for `discoscontent_rating`
-- ----------------------------
DROP TABLE IF EXISTS `discoscontent_rating`;
CREATE TABLE `discoscontent_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscontent_rating
-- ----------------------------

-- ----------------------------
-- Table structure for `discoscore_log_searches`
-- ----------------------------
DROP TABLE IF EXISTS `discoscore_log_searches`;
CREATE TABLE `discoscore_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoscore_log_searches
-- ----------------------------

-- ----------------------------
-- Table structure for `discosextensions`
-- ----------------------------
DROP TABLE IF EXISTS `discosextensions`;
CREATE TABLE `discosextensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosextensions
-- ----------------------------
INSERT INTO `discosextensions` VALUES ('1', 'com_mailto', 'component', 'com_mailto', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('2', 'com_wrapper', 'component', 'com_wrapper', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('3', 'com_admin', 'component', 'com_admin', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('4', 'com_banners', 'component', 'com_banners', '', '1', '1', '1', '0', '', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('5', 'com_cache', 'component', 'com_cache', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('6', 'com_categories', 'component', 'com_categories', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('7', 'com_checkin', 'component', 'com_checkin', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('8', 'com_contact', 'component', 'com_contact', '', '1', '1', '1', '0', '', '{\"show_contact_category\":\"hide\",\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('9', 'com_cpanel', 'component', 'com_cpanel', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('10', 'com_installer', 'component', 'com_installer', '', '1', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('11', 'com_languages', 'component', 'com_languages', '', '1', '1', '1', '1', '', '{\"administrator\":\"es-ES\",\"site\":\"es-ES\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('12', 'com_login', 'component', 'com_login', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('13', 'com_media', 'component', 'com_media', '', '1', '1', '0', '1', '', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\",\"enable_flash\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('14', 'com_menus', 'component', 'com_menus', '', '1', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('15', 'com_messages', 'component', 'com_messages', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('16', 'com_modules', 'component', 'com_modules', '', '1', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('17', 'com_newsfeeds', 'component', 'com_newsfeeds', '', '1', '1', '1', '0', '', '{\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_word_count\":\"0\",\"show_headings\":\"1\",\"show_name\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"display_num\":\"\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\",\"show_cat_items\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('18', 'com_plugins', 'component', 'com_plugins', '', '1', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('19', 'com_search', 'component', 'com_search', '', '1', '1', '1', '1', '', '{\"enabled\":\"0\",\"show_date\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('20', 'com_templates', 'component', 'com_templates', '', '1', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('21', 'com_weblinks', 'component', 'com_weblinks', '', '1', '1', '1', '0', '', '{\"show_comp_description\":\"1\",\"comp_description\":\"\",\"show_link_hits\":\"1\",\"show_link_description\":\"1\",\"show_other_cats\":\"0\",\"show_headings\":\"0\",\"show_numbers\":\"0\",\"show_report\":\"1\",\"count_clicks\":\"1\",\"target\":\"0\",\"link_icons\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('22', 'com_content', 'component', 'com_content', '', '1', '1', '0', '1', '', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"1\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"1\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_icons\":\"1\",\"show_print_icon\":\"1\",\"show_email_icon\":\"1\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"category_layout\":\"_:blog\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"filters\":{\"1\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('23', 'com_config', 'component', 'com_config', '', '1', '1', '0', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('24', 'com_redirect', 'component', 'com_redirect', '', '1', '1', '0', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('25', 'com_users', 'component', 'com_users', '', '1', '1', '0', '1', '', '{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"useractivation\":\"1\",\"frontend_userparams\":\"1\",\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('100', 'PHPMailer', 'library', 'phpmailer', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('101', 'SimplePie', 'library', 'simplepie', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('102', 'phputf8', 'library', 'phputf8', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('103', 'Joomla! Web Application Framework', 'library', 'joomla', '', '0', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:33:\"Joomla! Web Application Framework\";s:4:\"type\";s:7:\"library\";s:12:\"creationDate\";s:4:\"2008\";s:6:\"author\";s:6:\"Joomla\";s:9:\"copyright\";s:67:\"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.\";s:11:\"authorEmail\";s:16:\"admin@joomla.org\";s:9:\"authorUrl\";s:21:\"http://www.joomla.org\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:90:\"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System\";s:5:\"group\";s:0:\"\";}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('200', 'mod_articles_archive', 'module', 'mod_articles_archive', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('201', 'mod_articles_latest', 'module', 'mod_articles_latest', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('202', 'mod_articles_popular', 'module', 'mod_articles_popular', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('203', 'mod_banners', 'module', 'mod_banners', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('204', 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('205', 'mod_custom', 'module', 'mod_custom', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('206', 'mod_feed', 'module', 'mod_feed', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('207', 'mod_footer', 'module', 'mod_footer', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('208', 'mod_login', 'module', 'mod_login', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('209', 'mod_menu', 'module', 'mod_menu', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('210', 'mod_articles_news', 'module', 'mod_articles_news', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('211', 'mod_random_image', 'module', 'mod_random_image', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('212', 'mod_related_items', 'module', 'mod_related_items', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('213', 'mod_search', 'module', 'mod_search', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('214', 'mod_stats', 'module', 'mod_stats', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('215', 'mod_syndicate', 'module', 'mod_syndicate', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('216', 'mod_users_latest', 'module', 'mod_users_latest', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('217', 'mod_weblinks', 'module', 'mod_weblinks', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('218', 'mod_whosonline', 'module', 'mod_whosonline', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('219', 'mod_wrapper', 'module', 'mod_wrapper', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('220', 'mod_articles_category', 'module', 'mod_articles_category', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('221', 'mod_articles_categories', 'module', 'mod_articles_categories', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('222', 'mod_languages', 'module', 'mod_languages', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('300', 'mod_custom', 'module', 'mod_custom', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('301', 'mod_feed', 'module', 'mod_feed', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('302', 'mod_latest', 'module', 'mod_latest', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('303', 'mod_logged', 'module', 'mod_logged', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('304', 'mod_login', 'module', 'mod_login', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('305', 'mod_menu', 'module', 'mod_menu', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('306', 'mod_online', 'module', 'mod_online', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('307', 'mod_popular', 'module', 'mod_popular', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('308', 'mod_quickicon', 'module', 'mod_quickicon', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('309', 'mod_status', 'module', 'mod_status', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('310', 'mod_submenu', 'module', 'mod_submenu', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('311', 'mod_title', 'module', 'mod_title', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('312', 'mod_toolbar', 'module', 'mod_toolbar', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('313', 'mod_unread', 'module', 'mod_unread', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('400', 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', '0', '0', '1', '0', '', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('401', 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('402', 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', '0', '0', '1', '0', '', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `discosextensions` VALUES ('404', 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', '0', '1', '1', '0', '', '{\"mode\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('405', 'plg_content_geshi', 'plugin', 'geshi', 'content', '0', '0', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `discosextensions` VALUES ('406', 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', '0', '1', '1', '0', '', '{\"style\":\"none\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('407', 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', '0', '1', '1', '1', '', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `discosextensions` VALUES ('408', 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', '0', '1', '1', '1', '', '{\"position\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `discosextensions` VALUES ('409', 'plg_content_vote', 'plugin', 'vote', 'content', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `discosextensions` VALUES ('410', 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', '0', '1', '1', '1', '', '{\"linenumbers\":\"0\",\"tabmode\":\"indent\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('411', 'plg_editors_none', 'plugin', 'none', 'editors', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `discosextensions` VALUES ('412', 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', '0', '1', '1', '1', '', '{\"mode\":\"1\",\"skin\":\"0\",\"compressed\":\"0\",\"cleanup_startup\":\"0\",\"cleanup_save\":\"2\",\"entity_encoding\":\"raw\",\"lang_mode\":\"0\",\"lang_code\":\"es\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"toolbar\":\"top\",\"toolbar_align\":\"left\",\"html_height\":\"550\",\"html_width\":\"750\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"format_date\":\"%Y-%m-%d\",\"inserttime\":\"1\",\"format_time\":\"%H:%M:%S\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"media\":\"1\",\"hr\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"style\":\"1\",\"layer\":\"1\",\"xhtmlxtras\":\"1\",\"visualchars\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advimage\":\"1\",\"advlink\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"safari\":\"0\",\"custom_plugin\":\"\",\"custom_button\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `discosextensions` VALUES ('413', 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('414', 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', '0', '1', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `discosextensions` VALUES ('415', 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', '0', '1', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `discosextensions` VALUES ('416', 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', '0', '1', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `discosextensions` VALUES ('417', 'plg_search_categories', 'plugin', 'categories', 'search', '0', '1', '1', '0', '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('418', 'plg_search_contacts', 'plugin', 'contacts', 'search', '0', '1', '1', '0', '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('419', 'plg_search_content', 'plugin', 'content', 'search', '0', '1', '1', '0', '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('420', 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', '0', '1', '1', '0', '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('421', 'plg_search_weblinks', 'plugin', 'weblinks', 'search', '0', '1', '1', '0', '', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('422', 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', '0', '0', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('423', 'plg_system_p3p', 'plugin', 'p3p', 'system', '0', '1', '1', '1', '', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `discosextensions` VALUES ('424', 'plg_system_cache', 'plugin', 'cache', 'system', '0', '0', '1', '1', '', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', '0', '0000-00-00 00:00:00', '3', '0');
INSERT INTO `discosextensions` VALUES ('425', 'plg_system_debug', 'plugin', 'debug', 'system', '0', '1', '1', '0', '', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', '0', '0000-00-00 00:00:00', '4', '0');
INSERT INTO `discosextensions` VALUES ('426', 'plg_system_log', 'plugin', 'log', 'system', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '5', '0');
INSERT INTO `discosextensions` VALUES ('427', 'plg_system_redirect', 'plugin', 'redirect', 'system', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '6', '0');
INSERT INTO `discosextensions` VALUES ('428', 'plg_system_remember', 'plugin', 'remember', 'system', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '7', '0');
INSERT INTO `discosextensions` VALUES ('429', 'plg_system_sef', 'plugin', 'sef', 'system', '0', '1', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '8', '0');
INSERT INTO `discosextensions` VALUES ('430', 'plg_system_logout', 'plugin', 'logout', 'system', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '9', '0');
INSERT INTO `discosextensions` VALUES ('431', 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', '0', '0', '1', '1', '', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('432', 'plg_user_joomla', 'plugin', 'joomla', 'user', '0', '1', '1', '0', '', '{\"autoregister\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '2', '0');
INSERT INTO `discosextensions` VALUES ('433', 'plg_user_profile', 'plugin', 'profile', 'user', '0', '0', '1', '1', '', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('434', 'plg_extension_joomla', 'plugin', 'joomla', 'extension', '0', '1', '1', '1', '', '{}', '', '', '0', '0000-00-00 00:00:00', '1', '0');
INSERT INTO `discosextensions` VALUES ('435', 'plg_content_joomla', 'plugin', 'joomla', 'content', '0', '1', '1', '0', '', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('500', 'atomic', 'template', 'atomic', '', '0', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:6:\"atomic\";s:4:\"type\";s:8:\"template\";s:12:\"creationDate\";s:8:\"10/10/09\";s:6:\"author\";s:12:\"Ron Severdia\";s:9:\"copyright\";s:72:\"Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.\";s:11:\"authorEmail\";s:25:\"contact@kontentdesign.com\";s:9:\"authorUrl\";s:28:\"http://www.kontentdesign.com\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:26:\"TPL_ATOMIC_XML_DESCRIPTION\";s:5:\"group\";s:0:\"\";}', '{}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('502', 'bluestork', 'template', 'bluestork', '', '1', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:9:\"bluestork\";s:4:\"type\";s:8:\"template\";s:12:\"creationDate\";s:8:\"07/02/09\";s:6:\"author\";s:12:\"Ron Severdia\";s:9:\"copyright\";s:72:\"Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.\";s:11:\"authorEmail\";s:25:\"contact@kontentdesign.com\";s:9:\"authorUrl\";s:28:\"http://www.kontentdesign.com\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:29:\"TPL_BLUESTORK_XML_DESCRIPTION\";s:5:\"group\";s:0:\"\";}', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\",\"textBig\":\"0\",\"highContrast\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('503', 'beez_20', 'template', 'beez_20', '', '0', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:7:\"beez_20\";s:4:\"type\";s:8:\"template\";s:12:\"creationDate\";s:16:\"25 November 2009\";s:6:\"author\";s:12:\"Angie Radtke\";s:9:\"copyright\";s:72:\"Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.\";s:11:\"authorEmail\";s:23:\"a.radtke@derauftritt.de\";s:9:\"authorUrl\";s:26:\"http://www.der-auftritt.de\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:25:\"TPL_BEEZ2_XML_DESCRIPTION\";s:5:\"group\";s:0:\"\";}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('504', 'hathor', 'template', 'hathor', '', '1', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:6:\"hathor\";s:4:\"type\";s:8:\"template\";s:12:\"creationDate\";s:8:\"May 2010\";s:6:\"author\";s:11:\"Andrea Tarr\";s:9:\"copyright\";s:72:\"Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.\";s:11:\"authorEmail\";s:25:\"hathor@tarrconsulting.com\";s:9:\"authorUrl\";s:29:\"http://www.tarrconsulting.com\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:26:\"TPL_HATHOR_XML_DESCRIPTION\";s:5:\"group\";s:0:\"\";}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('505', 'beez5', 'template', 'beez5', '', '0', '1', '1', '0', 'a:11:{s:6:\"legacy\";b:0;s:4:\"name\";s:5:\"beez5\";s:4:\"type\";s:8:\"template\";s:12:\"creationDate\";s:11:\"21 May 2010\";s:6:\"author\";s:12:\"Angie Radtke\";s:9:\"copyright\";s:72:\"Copyright (C) 2005 - 2010 Open Source Matters, Inc. All rights reserved.\";s:11:\"authorEmail\";s:23:\"a.radtke@derauftritt.de\";s:9:\"authorUrl\";s:26:\"http://www.der-auftritt.de\";s:7:\"version\";s:5:\"1.6.0\";s:11:\"description\";s:25:\"TPL_BEEZ5_XML_DESCRIPTION\";s:5:\"group\";s:0:\"\";}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"html5\":\"0\"}', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('600', 'English (United Kingdom)', 'language', 'en-GB', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('601', 'English (United Kingdom)', 'language', 'en-GB', '', '1', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('604', 'Español (Formal Internacional)', 'language', 'es-ES', '', '1', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('605', 'Español (Formal Internacional)', 'language', 'es-ES', '', '0', '1', '1', '0', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');
INSERT INTO `discosextensions` VALUES ('700', 'Joomla! CMS', 'file', 'joomla', '', '0', '1', '1', '1', '', '', '', '', '0', '0000-00-00 00:00:00', '0', '0');

-- ----------------------------
-- Table structure for `discoslanguages`
-- ----------------------------
DROP TABLE IF EXISTS `discoslanguages`;
CREATE TABLE `discoslanguages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discoslanguages
-- ----------------------------
INSERT INTO `discoslanguages` VALUES ('1', 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '1');
INSERT INTO `discoslanguages` VALUES ('3', 'es-ES', 'Español (Formal Internacional)', 'Español (Formal Internacional)', 'es', 'es', '', '', '', '1');

-- ----------------------------
-- Table structure for `discosmenu`
-- ----------------------------
DROP TABLE IF EXISTS `discosmenu`;
CREATE TABLE `discosmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmenu
-- ----------------------------
INSERT INTO `discosmenu` VALUES ('1', '', 'Menu_Item_Root', 'root', '', '', '', '', '1', '0', '0', '0', '0', '0', '0000-00-00 00:00:00', '0', '0', '', '0', '', '0', '41', '0', '*', '0');
INSERT INTO `discosmenu` VALUES ('2', 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', '0', '1', '1', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '1', '10', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('3', 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners', '0', '', '2', '3', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('4', 'menu', 'com_banners_categories', 'Categorías', '', 'Banners/Categorías', 'index.php?option=com_categories&extension=com_banners', 'component', '0', '2', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-cat', '0', '', '4', '5', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('5', 'menu', 'com_banners_clients', 'Clientes', '', 'Banners/Clientes', 'index.php?option=com_banners&view=clients', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-clients', '0', '', '6', '7', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('6', 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', '0', '2', '2', '4', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:banners-tracks', '0', '', '8', '9', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('7', 'menu', 'com_contact', 'Contactos', '', 'Contactos', 'index.php?option=com_contact', 'component', '0', '1', '1', '8', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '11', '16', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('8', 'menu', 'com_contact', 'Contactos', '', 'Contactos/Contactos', 'index.php?option=com_contact', 'component', '0', '7', '2', '8', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact', '0', '', '12', '13', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('9', 'menu', 'com_contact_categories', 'Categorías', '', 'Contactos/Categorías', 'index.php?option=com_categories&extension=com_contact', 'component', '0', '7', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:contact-cat', '0', '', '14', '15', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('10', 'menu', 'com_messages', 'Mensajes', '', 'Mensajes', 'index.php?option=com_messages', 'component', '0', '1', '1', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages', '0', '', '17', '22', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('11', 'menu', 'com_messages_add', 'Nuevo mensaje privado', '', 'Mensajes/Nuevo mensaje privado', 'index.php?option=com_messages&task=message.add', 'component', '0', '10', '2', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-add', '0', '', '18', '19', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('12', 'menu', 'com_messages_read', 'Leer mensaje privado', '', 'Mensajes/Leer mensaje privado', 'index.php?option=com_messages', 'component', '0', '10', '2', '15', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:messages-read', '0', '', '20', '21', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('13', 'menu', 'com_newsfeeds', 'Noticias Feeds', '', 'Noticias Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '1', '1', '17', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '23', '28', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('14', 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'Noticias Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', '0', '13', '2', '17', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds', '0', '', '24', '25', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('15', 'menu', 'com_newsfeeds_categories', 'Categorías', '', 'Noticias Feeds/Categorías', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', '0', '13', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:newsfeeds-cat', '0', '', '26', '27', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('16', 'menu', 'com_redirect', 'Redireccionar', '', 'Redireccionar', 'index.php?option=com_redirect', 'component', '0', '1', '1', '24', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:redirect', '0', '', '37', '38', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('17', 'menu', 'com_search', 'Buscar', '', 'Buscar', 'index.php?option=com_search', 'component', '0', '1', '1', '19', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:search', '0', '', '29', '30', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('18', 'menu', 'com_weblinks', 'Enlaces', '', 'Enlaces', 'index.php?option=com_weblinks', 'component', '0', '1', '1', '21', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '31', '36', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('19', 'menu', 'com_weblinks_links', 'Enlaces web', '', 'Enlaces/Enlaces web', 'index.php?option=com_weblinks', 'component', '0', '18', '2', '21', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks', '0', '', '32', '33', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('20', 'menu', 'com_weblinks_categories', 'Categorías', '', 'Enlaces/Categorías', 'index.php?option=com_categories&extension=com_weblinks', 'component', '0', '18', '2', '6', '0', '0', '0000-00-00 00:00:00', '0', '0', 'class:weblinks-cat', '0', '', '34', '35', '0', '*', '1');
INSERT INTO `discosmenu` VALUES ('101', 'mainmenu', 'Inicio', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', '1', '1', '1', '22', '0', '42', '2012-02-08 11:08:03', '0', '1', '', '0', '{\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"multi_column_order\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_noauth\":\"\",\"article-allow_ratings\":\"\",\"article-allow_comments\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_readmore\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"show_page_heading\":1,\"page_title\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', '39', '40', '1', '*', '0');

-- ----------------------------
-- Table structure for `discosmenu_types`
-- ----------------------------
DROP TABLE IF EXISTS `discosmenu_types`;
CREATE TABLE `discosmenu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmenu_types
-- ----------------------------
INSERT INTO `discosmenu_types` VALUES ('1', 'mainmenu', 'Menú Principal', 'El menú principal del sitio');
INSERT INTO `discosmenu_types` VALUES ('2', 'articulos', 'Articulos', 'nnn');

-- ----------------------------
-- Table structure for `discosmessages`
-- ----------------------------
DROP TABLE IF EXISTS `discosmessages`;
CREATE TABLE `discosmessages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmessages
-- ----------------------------

-- ----------------------------
-- Table structure for `discosmessages_cfg`
-- ----------------------------
DROP TABLE IF EXISTS `discosmessages_cfg`;
CREATE TABLE `discosmessages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmessages_cfg
-- ----------------------------

-- ----------------------------
-- Table structure for `discosmodules`
-- ----------------------------
DROP TABLE IF EXISTS `discosmodules`;
CREATE TABLE `discosmodules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmodules
-- ----------------------------
INSERT INTO `discosmodules` VALUES ('1', 'Menú Principal', '', '', '1', 'position-7', '42', '2012-02-08 14:34:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '1', '1', '{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `discosmodules` VALUES ('2', 'Acceso', '', '', '1', 'login', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('3', 'Artículos populares', '', '', '3', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_popular', '3', '1', '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `discosmodules` VALUES ('4', 'Últimos artículos añadidos', '', '', '4', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_latest', '3', '1', '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `discosmodules` VALUES ('6', 'Mensajes no Leídos', '', '', '1', 'header', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_unread', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('7', 'Usuarios Conectados', '', '', '2', 'header', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_online', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('8', 'Barra de herramientas', '', '', '1', 'toolbar', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_toolbar', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('9', 'Iconos rápidos', '', '', '1', 'icon', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_quickicon', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('10', 'Usuarios conectados', '', '', '2', 'cpanel', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_logged', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('12', 'Menú Administrador', '', '', '1', 'menu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_menu', '3', '1', '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', '1', '*');
INSERT INTO `discosmodules` VALUES ('13', 'Submenú Administrador', '', '', '1', 'submenu', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_submenu', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('14', 'Estado usuarios', '', '', '1', 'status', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_status', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('15', 'Título', '', '', '1', 'title', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_title', '3', '1', '', '1', '*');
INSERT INTO `discosmodules` VALUES ('16', 'Formulario de acceso', '', '', '7', 'position-7', '42', '2012-02-08 14:45:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_login', '1', '1', '{\"greeting\":\"1\",\"name\":\"0\"}', '0', '*');
INSERT INTO `discosmodules` VALUES ('17', 'Ruta', '', '', '1', 'position-2', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', 'mod_breadcrumbs', '1', '1', '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"Inicio\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '0', '*');
INSERT INTO `discosmodules` VALUES ('18', 'Anuncios', '', '', '1', 'position-5', '0', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0', 'mod_banners', '1', '1', '{\"target\":\"1\",\"count\":\"1\",\"cid\":\"1\",\"catid\":[\"27\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\"}', '0', '*');

-- ----------------------------
-- Table structure for `discosmodules_menu`
-- ----------------------------
DROP TABLE IF EXISTS `discosmodules_menu`;
CREATE TABLE `discosmodules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosmodules_menu
-- ----------------------------
INSERT INTO `discosmodules_menu` VALUES ('1', '0');
INSERT INTO `discosmodules_menu` VALUES ('2', '0');
INSERT INTO `discosmodules_menu` VALUES ('3', '0');
INSERT INTO `discosmodules_menu` VALUES ('4', '0');
INSERT INTO `discosmodules_menu` VALUES ('6', '0');
INSERT INTO `discosmodules_menu` VALUES ('7', '0');
INSERT INTO `discosmodules_menu` VALUES ('8', '0');
INSERT INTO `discosmodules_menu` VALUES ('9', '0');
INSERT INTO `discosmodules_menu` VALUES ('10', '0');
INSERT INTO `discosmodules_menu` VALUES ('12', '0');
INSERT INTO `discosmodules_menu` VALUES ('13', '0');
INSERT INTO `discosmodules_menu` VALUES ('14', '0');
INSERT INTO `discosmodules_menu` VALUES ('15', '0');
INSERT INTO `discosmodules_menu` VALUES ('16', '0');
INSERT INTO `discosmodules_menu` VALUES ('17', '0');
INSERT INTO `discosmodules_menu` VALUES ('18', '0');

-- ----------------------------
-- Table structure for `discosnewsfeeds`
-- ----------------------------
DROP TABLE IF EXISTS `discosnewsfeeds`;
CREATE TABLE `discosnewsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
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
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para los vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosnewsfeeds
-- ----------------------------

-- ----------------------------
-- Table structure for `discosredirect_links`
-- ----------------------------
DROP TABLE IF EXISTS `discosredirect_links`;
CREATE TABLE `discosredirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosredirect_links
-- ----------------------------
INSERT INTO `discosredirect_links` VALUES ('1', 'http://localhost/joomla 1.6/index.php/component/users/index.php', '', 'http://localhost/joomla%201.6/index.php/component/users/?view=login', '', '0', '2012-02-20 23:53:21', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `discosschemas`
-- ----------------------------
DROP TABLE IF EXISTS `discosschemas`;
CREATE TABLE `discosschemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosschemas
-- ----------------------------

-- ----------------------------
-- Table structure for `discossession`
-- ----------------------------
DROP TABLE IF EXISTS `discossession`;
CREATE TABLE `discossession` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` varchar(20480) DEFAULT NULL,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discossession
-- ----------------------------
INSERT INTO `discossession` VALUES ('d1da37ace4096058fc8729e21f1a9308', '0', '1', '1329948606', '__default|a:5:{s:22:\"session.client.browser\";s:63:\"Mozilla/5.0 (Windows NT 5.1; rv:5.0) Gecko/20100101 Firefox/5.0\";s:15:\"session.counter\";i:1;s:8:\"registry\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":23:{s:9:\"\0*\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:8:\"usertype\";N;s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:0:{}s:5:\"guest\";i:1;s:10:\"\0*\0_params\";O:9:\"JRegistry\":1:{s:7:\"\0*\0data\";O:8:\"stdClass\":0:{}}s:14:\"\0*\0_authGroups\";a:1:{i:0;i:1;}s:14:\"\0*\0_authLevels\";a:2:{i:0;i:1;i:1;i:1;}s:15:\"\0*\0_authActions\";N;s:12:\"\0*\0_errorMsg\";N;s:10:\"\0*\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"92cd20087111e73093fc9ec7f6a30239\";}', '0', '', '');

-- ----------------------------
-- Table structure for `discostemplate_styles`
-- ----------------------------
DROP TABLE IF EXISTS `discostemplate_styles`;
CREATE TABLE `discostemplate_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discostemplate_styles
-- ----------------------------
INSERT INTO `discostemplate_styles` VALUES ('2', 'bluestork', '1', '1', 'Bluestork - Defecto', '{\"useRoundedCorners\":\"1\",\"showSiteName\":\"0\"}');
INSERT INTO `discostemplate_styles` VALUES ('3', 'atomic', '0', '0', 'Atomic - Defecto', '{}');
INSERT INTO `discostemplate_styles` VALUES ('4', 'beez_20', '0', '1', 'Beez2 - Defecto', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/logo-js.png\",\"sitetitle\":\"Joomla! Spanish\",\"sitedescription\":\"Gestor de Contenido Open Source Beta\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `discostemplate_styles` VALUES ('5', 'hathor', '1', '0', 'Hathor - Defecto', '{\"showSiteName\":\"0\",\"highContrast\":\"0\",\"boldText\":\"0\",\"altMenu\":\"0\"}');
INSERT INTO `discostemplate_styles` VALUES ('6', 'beez5', '0', '0', 'Beez5 - Tienda de Frutas - Defecto', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/sampledata\\/fruitshop\\/fruits.gif\",\"sitetitle\":\"Mercado Matuna \",\"sitedescription\":\"Sitio de muestra de Tienda de Frutas\",\"navposition\":\"left\",\"html5\":\"0\"}');

-- ----------------------------
-- Table structure for `discosupdate_categories`
-- ----------------------------
DROP TABLE IF EXISTS `discosupdate_categories`;
CREATE TABLE `discosupdate_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Actualizar Categorías';

-- ----------------------------
-- Records of discosupdate_categories
-- ----------------------------

-- ----------------------------
-- Table structure for `discosupdate_sites`
-- ----------------------------
DROP TABLE IF EXISTS `discosupdate_sites`;
CREATE TABLE `discosupdate_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Actualizar Sitios';

-- ----------------------------
-- Records of discosupdate_sites
-- ----------------------------
INSERT INTO `discosupdate_sites` VALUES ('1', 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', '1');
INSERT INTO `discosupdate_sites` VALUES ('2', 'Joomla Directorio de Extensiones', 'collection', 'http://update.joomla.org/jed/list.xml', '1');

-- ----------------------------
-- Table structure for `discosupdate_sites_extensions`
-- ----------------------------
DROP TABLE IF EXISTS `discosupdate_sites_extensions`;
CREATE TABLE `discosupdate_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Sitios de enlaces de extensiones para actualizar';

-- ----------------------------
-- Records of discosupdate_sites_extensions
-- ----------------------------
INSERT INTO `discosupdate_sites_extensions` VALUES ('1', '700');
INSERT INTO `discosupdate_sites_extensions` VALUES ('2', '700');

-- ----------------------------
-- Table structure for `discosupdates`
-- ----------------------------
DROP TABLE IF EXISTS `discosupdates`;
CREATE TABLE `discosupdates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Actualizaciones Disponibles';

-- ----------------------------
-- Records of discosupdates
-- ----------------------------

-- ----------------------------
-- Table structure for `discosuser_profiles`
-- ----------------------------
DROP TABLE IF EXISTS `discosuser_profiles`;
CREATE TABLE `discosuser_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabla para almacenar el perfil de usuario';

-- ----------------------------
-- Records of discosuser_profiles
-- ----------------------------

-- ----------------------------
-- Table structure for `discosuser_usergroup_map`
-- ----------------------------
DROP TABLE IF EXISTS `discosuser_usergroup_map`;
CREATE TABLE `discosuser_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Clave externa a #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosuser_usergroup_map
-- ----------------------------
INSERT INTO `discosuser_usergroup_map` VALUES ('42', '8');

-- ----------------------------
-- Table structure for `discosusergroups`
-- ----------------------------
DROP TABLE IF EXISTS `discosusergroups`;
CREATE TABLE `discosusergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID Lista de referencia adyacente',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Anidadas conjunto rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosusergroups
-- ----------------------------
INSERT INTO `discosusergroups` VALUES ('1', '0', '1', '20', 'Publico');
INSERT INTO `discosusergroups` VALUES ('2', '1', '6', '17', 'Registrado');
INSERT INTO `discosusergroups` VALUES ('3', '2', '7', '14', 'Autor');
INSERT INTO `discosusergroups` VALUES ('4', '3', '8', '11', 'Editor');
INSERT INTO `discosusergroups` VALUES ('5', '4', '9', '10', 'Publicador');
INSERT INTO `discosusergroups` VALUES ('6', '1', '2', '5', 'Gestor');
INSERT INTO `discosusergroups` VALUES ('7', '6', '3', '4', 'Administrador');
INSERT INTO `discosusergroups` VALUES ('8', '1', '18', '19', 'Super Usuario');

-- ----------------------------
-- Table structure for `discosusers`
-- ----------------------------
DROP TABLE IF EXISTS `discosusers`;
CREATE TABLE `discosusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosusers
-- ----------------------------
INSERT INTO `discosusers` VALUES ('42', 'Super User', 'fiben', 'fiben83@hotmail.com', '7d8e10c6e25044bd238706482f234a26:P5IqgvMjGmVP0UNWwnfQNzpeUWcVGd35', 'deprecated', '0', '1', '2012-02-07 23:32:26', '2012-02-09 17:00:42', '', '');

-- ----------------------------
-- Table structure for `discosviewlevels`
-- ----------------------------
DROP TABLE IF EXISTS `discosviewlevels`;
CREATE TABLE `discosviewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Clave primaria',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'Control de acceso codificado de JSON.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosviewlevels
-- ----------------------------
INSERT INTO `discosviewlevels` VALUES ('1', 'Publico', '0', '[1]');
INSERT INTO `discosviewlevels` VALUES ('2', 'Registrado', '1', '[6,2,8]');
INSERT INTO `discosviewlevels` VALUES ('3', 'Especial', '2', '[6,3,8]');

-- ----------------------------
-- Table structure for `discosweblinks`
-- ----------------------------
DROP TABLE IF EXISTS `discosweblinks`;
CREATE TABLE `discosweblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Establecer si el link aparece.',
  `xreference` varchar(50) NOT NULL COMMENT 'Una referencia para activar vínculos a datos externos conjuntos.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of discosweblinks
-- ----------------------------

-- ----------------------------
-- Table structure for `records`
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `ID` varchar(100) NOT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `ARTIST` varchar(100) DEFAULT NULL,
  `RECORDLABEL` varchar(100) DEFAULT NULL,
  `SHORTCOMMENT` varchar(150) DEFAULT NULL,
  `FULLCOMMENT` varchar(200) DEFAULT NULL,
  `TYPE` varchar(50) DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES ('7e43442b-ae67-47df-93be-2a5af7b3a99f', 'californication', 'red hot chili pepeers', 'records', 'rock', 'muy buena cool', 'Rock', '50');
INSERT INTO `records` VALUES ('2038b317-eda0-4be2-926d-ded7fbe7cea7', 'te vi venir', 'sin bandera', 'star', 'cool', 'buena baladas en español', 'Rock', '60');
INSERT INTO `records` VALUES ('88807d41-78d1-4fb8-b665-04473766b37d', 'Smell teen spirit', 'Nirvana', 'kurt', 'cool', 'na cool', 'Rock', '100');
INSERT INTO `records` VALUES ('37473603-faef-473d-bb0f-4d5604f4ae3e', 'sweet child of mine', 'guns n roses', 'new record', 'lo maximo', 'Album salio en la decada del 85', 'Rock', '50.99');
INSERT INTO `records` VALUES ('b82d3880-9e7d-4ccb-902c-60427cb3ec14', 'kncking on heavens door', 'guns n roses', 'cristal record', 'buenaza', 'album de la decada del 80', 'Rock', '80.99');

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `ID` varchar(100) NOT NULL,
  `CUSTOMERID` varchar(100) DEFAULT NULL,
  `CUSTOMERNAME` varchar(100) DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `PAYMENTFORM` varchar(50) DEFAULT NULL,
  `TRANSACTIONDATE` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `TOTAL` varchar(100) DEFAULT NULL,
  `ITEMS` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO `sales` VALUES ('ca3217e0-ad94-42a9-9488-171db3f97fb9', '00000000-0000-0000-0000-000000000000', 'fernando panta palacios', 'jr huancabamba  133- tambogrande', 'Tarjeta', '2015-07-29 23:40:53', '80.99', 'b82d3880-9e7d-4ccb-902c-60427cb3ec14(1)');

-- ----------------------------
-- Table structure for `stocks`
-- ----------------------------
DROP TABLE IF EXISTS `stocks`;
CREATE TABLE `stocks` (
  `RECORDID` varchar(100) NOT NULL,
  `STOCK` int(11) DEFAULT NULL,
  PRIMARY KEY (`RECORDID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stocks
-- ----------------------------
INSERT INTO `stocks` VALUES ('7e43442b-ae67-47df-93be-2a5af7b3a99f', '98');
INSERT INTO `stocks` VALUES ('2038b317-eda0-4be2-926d-ded7fbe7cea7', '30');
INSERT INTO `stocks` VALUES ('88807d41-78d1-4fb8-b665-04473766b37d', '5');
INSERT INTO `stocks` VALUES ('37473603-faef-473d-bb0f-4d5604f4ae3e', '10');
INSERT INTO `stocks` VALUES ('b82d3880-9e7d-4ccb-902c-60427cb3ec14', '11');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `ID` varchar(100) NOT NULL,
  `NICK` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  `FIRSTNAME` varchar(100) DEFAULT NULL,
  `LASTNAME` varchar(100) DEFAULT NULL,
  `BIRTHDATE` date DEFAULT NULL,
  `ADDRESS` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
