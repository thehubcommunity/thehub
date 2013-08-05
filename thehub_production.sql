-- MySQL dump 10.13  Distrib 5.6.10, for osx10.7 (x86_64)
--
-- Host: localhost    Database: thehub_development
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `alchemy_attachments`
--

DROP TABLE IF EXISTS `alchemy_attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_attachments`
--

LOCK TABLES `alchemy_attachments` WRITE;
/*!40000 ALTER TABLE `alchemy_attachments` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_cells`
--

DROP TABLE IF EXISTS `alchemy_cells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_cells` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_cells`
--

LOCK TABLES `alchemy_cells` WRITE;
/*!40000 ALTER TABLE `alchemy_cells` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_cells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_contents`
--

DROP TABLE IF EXISTS `alchemy_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essence_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `essence_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contents_on_element_id_and_position` (`element_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_contents`
--

LOCK TABLES `alchemy_contents` WRITE;
/*!40000 ALTER TABLE `alchemy_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_elements`
--

DROP TABLE IF EXISTS `alchemy_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT '1',
  `folded` tinyint(1) DEFAULT '0',
  `unique` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `cell_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_elements_on_page_id_and_position` (`page_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_elements`
--

LOCK TABLES `alchemy_elements` WRITE;
/*!40000 ALTER TABLE `alchemy_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_elements_alchemy_pages`
--

DROP TABLE IF EXISTS `alchemy_elements_alchemy_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_elements_alchemy_pages` (
  `element_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_elements_alchemy_pages`
--

LOCK TABLES `alchemy_elements_alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_elements_alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_booleans`
--

DROP TABLE IF EXISTS `alchemy_essence_booleans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_booleans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_booleans_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_booleans`
--

LOCK TABLES `alchemy_essence_booleans` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_booleans` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_booleans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_dates`
--

DROP TABLE IF EXISTS `alchemy_essence_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_dates`
--

LOCK TABLES `alchemy_essence_dates` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_files`
--

DROP TABLE IF EXISTS `alchemy_essence_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_files`
--

LOCK TABLES `alchemy_essence_files` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_htmls`
--

DROP TABLE IF EXISTS `alchemy_essence_htmls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_htmls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` text COLLATE utf8_unicode_ci,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_htmls`
--

LOCK TABLES `alchemy_essence_htmls` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_htmls` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_htmls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_links`
--

DROP TABLE IF EXISTS `alchemy_essence_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_links`
--

LOCK TABLES `alchemy_essence_links` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_pictures`
--

DROP TABLE IF EXISTS `alchemy_essence_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture_id` int(11) DEFAULT NULL,
  `caption` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `crop_from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crop_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `render_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_pictures`
--

LOCK TABLES `alchemy_essence_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_richtexts`
--

DROP TABLE IF EXISTS `alchemy_essence_richtexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_richtexts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `stripped_body` text COLLATE utf8_unicode_ci,
  `do_not_index` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_richtexts`
--

LOCK TABLES `alchemy_essence_richtexts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_richtexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_richtexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_selects`
--

DROP TABLE IF EXISTS `alchemy_essence_selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_selects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_essence_selects_on_value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_selects`
--

LOCK TABLES `alchemy_essence_selects` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_selects` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_selects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_essence_texts`
--

DROP TABLE IF EXISTS `alchemy_essence_texts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_essence_texts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_class_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT '0',
  `do_not_index` tinyint(1) DEFAULT '0',
  `link_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_essence_texts`
--

LOCK TABLES `alchemy_essence_texts` WRITE;
/*!40000 ALTER TABLE `alchemy_essence_texts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_essence_texts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_folded_pages`
--

DROP TABLE IF EXISTS `alchemy_folded_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_folded_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `folded` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_folded_pages`
--

LOCK TABLES `alchemy_folded_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_folded_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_folded_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_languages`
--

DROP TABLE IF EXISTS `alchemy_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `frontpage_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'intro',
  `public` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `default` tinyint(1) DEFAULT '0',
  `country_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_languages_on_language_code_and_country_code` (`language_code`,`country_code`),
  KEY `index_alchemy_languages_on_language_code` (`language_code`),
  KEY `index_alchemy_languages_on_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_languages`
--

LOCK TABLES `alchemy_languages` WRITE;
/*!40000 ALTER TABLE `alchemy_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_legacy_page_urls`
--

DROP TABLE IF EXISTS `alchemy_legacy_page_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_legacy_page_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `urlname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_alchemy_legacy_page_urls_on_urlname` (`urlname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_legacy_page_urls`
--

LOCK TABLES `alchemy_legacy_page_urls` WRITE;
/*!40000 ALTER TABLE `alchemy_legacy_page_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_legacy_page_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_pages`
--

DROP TABLE IF EXISTS `alchemy_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_root` tinyint(1) DEFAULT NULL,
  `page_layout` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `locked_by` int(11) DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `robot_index` tinyint(1) DEFAULT '1',
  `robot_follow` tinyint(1) DEFAULT '1',
  `sitemap` tinyint(1) DEFAULT '1',
  `layoutpage` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_language_id` (`language_id`),
  KEY `index_pages_on_parent_id_and_lft` (`parent_id`,`lft`),
  KEY `index_pages_on_urlname` (`urlname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_pages`
--

LOCK TABLES `alchemy_pages` WRITE;
/*!40000 ALTER TABLE `alchemy_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_pictures`
--

DROP TABLE IF EXISTS `alchemy_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_pictures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_width` int(11) DEFAULT NULL,
  `image_file_height` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `upload_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `image_file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_pictures`
--

LOCK TABLES `alchemy_pictures` WRITE;
/*!40000 ALTER TABLE `alchemy_pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_sites`
--

DROP TABLE IF EXISTS `alchemy_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `public` tinyint(1) DEFAULT '0',
  `aliases` text COLLATE utf8_unicode_ci,
  `redirect_to_primary_host` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `alchemy_sites_public_hosts_idx` (`host`,`public`),
  KEY `index_alchemy_sites_on_host` (`host`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_sites`
--

LOCK TABLES `alchemy_sites` WRITE;
/*!40000 ALTER TABLE `alchemy_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alchemy_users`
--

DROP TABLE IF EXISTS `alchemy_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alchemy_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'registered',
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `encrypted_password` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `password_salt` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `failed_attempts` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `creator_id` int(11) DEFAULT NULL,
  `updater_id` int(11) DEFAULT NULL,
  `cached_tag_list` text COLLATE utf8_unicode_ci,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_alchemy_users_on_email` (`email`),
  UNIQUE KEY `index_alchemy_users_on_login` (`login`),
  UNIQUE KEY `index_alchemy_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alchemy_users`
--

LOCK TABLES `alchemy_users` WRITE;
/*!40000 ALTER TABLE `alchemy_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `alchemy_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hidden_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `entrance_fee` decimal(6,2) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `organizer_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_categories`
--

DROP TABLE IF EXISTS `refinery_blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cached_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_categories_on_id` (`id`),
  KEY `index_refinery_blog_categories_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories`
--

LOCK TABLES `refinery_blog_categories` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories` DISABLE KEYS */;
INSERT INTO `refinery_blog_categories` VALUES (2,'General','2013-05-03 18:17:59','2013-05-03 18:17:59',NULL,'general');
/*!40000 ALTER TABLE `refinery_blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_categories_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_categories_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_categories_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_blog_posts_on_bc_and_bp` (`blog_category_id`,`blog_post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_categories_blog_posts`
--

LOCK TABLES `refinery_blog_categories_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` DISABLE KEYS */;
INSERT INTO `refinery_blog_categories_blog_posts` VALUES (3,2,3),(2,2,4);
/*!40000 ALTER TABLE `refinery_blog_categories_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_comments`
--

DROP TABLE IF EXISTS `refinery_blog_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `spam` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_comments_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_comments`
--

LOCK TABLES `refinery_blog_comments` WRITE;
/*!40000 ALTER TABLE `refinery_blog_comments` DISABLE KEYS */;
INSERT INTO `refinery_blog_comments` VALUES (1,4,0,'Yves Accad','yaccad@gmail.com','I like this post a lot. It makes tremendous sense!','approved','2013-05-02 21:05:09','2013-05-02 21:05:09'),(2,4,0,'John Doe','yves@instillmotion.com','ME TOO!','approved','2013-05-02 22:55:10','2013-05-02 22:55:10'),(3,3,0,'Yves Accad','yaccad@gmail.com','What a lovely couple :)','approved','2013-05-03 22:00:48','2013-05-03 22:00:48');
/*!40000 ALTER TABLE `refinery_blog_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_blog_posts`
--

DROP TABLE IF EXISTS `refinery_blog_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `draft` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cached_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_teaser` text COLLATE utf8_unicode_ci,
  `source_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_url_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_count` int(11) DEFAULT '0',
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_blog_posts_on_id` (`id`),
  KEY `index_refinery_blog_posts_on_access_count` (`access_count`),
  KEY `index_refinery_blog_posts_on_slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_blog_posts`
--

LOCK TABLES `refinery_blog_posts` WRITE;
/*!40000 ALTER TABLE `refinery_blog_posts` DISABLE KEYS */;
INSERT INTO `refinery_blog_posts` VALUES (3,'Post Example One','<p><img class=\"image-align-left\" rel=\"225x255\" alt=\"Landa\" title=\"Landa\" src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDIvMTBfMTBfNDZfMjVfbGFuZGEuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdXQ/landa.jpg\" height=\"255\" width=\"225\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. </p>\r\n<p><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. </p>\r\n<p><br />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. </p>',0,'2013-05-02 20:57:00','2013-05-02 21:00:05','2013-05-06 19:53:20',1,NULL,'','','','',180,'post-example-one'),(4,'Post Example Two','<p><img class=\"image-align-left\" rel=\"225x255\" alt=\"Aaron\" title=\"Aaron\" src=\"/system/images/W1siZiIsIjIwMTMvMDQvMjkvMTVfMjNfMjVfNjg2X2Fhcm9uLmpwZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXV0/aaron.jpg\" height=\"148\" width=\"225\" />Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. </p>',0,'2013-04-02 21:01:00','2013-05-02 21:02:33','2013-05-04 03:21:16',1,NULL,'','','','',236,'post-example-two'),(5,'My Third Post','<p><img src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDMvMjBfMjRfMjlfNTY2X0F5YV9QaWUuSlBHIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdXQ/Aya-Pie.JPG\" title=\"Aya Pie\" alt=\"Aya Pie\" rel=\"225x255\" class=\"image-align-left\" height=\"169\" width=\"225\" />This is my new post on cooking at the hub....&#160;&#160; Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. </p>\r\n<p>Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin tincidunt imperdiet urna non varius. Nunc mi nibh, aliquet ut ultrices eu, vestibulum ac odio. In luctus sapien quis ante rhoncus ullamcorper. Mauris leo ligula, malesuada sed lacinia vitae, varius id lacus. Sed mattis nunc et massa eleifend sodales. Aliquam at nisi leo. Quisque pulvinar sollicitudin mauris. Nunc bibendum, magna non condimentum tristique, nisi augue feugiat massa, vitae pulvinar felis est at magna.</p>',0,'2013-05-04 03:23:00','2013-05-04 03:25:32','2013-05-06 19:54:05',1,NULL,'','','','',4,'my-third-post');
/*!40000 ALTER TABLE `refinery_blog_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_calendar_events`
--

DROP TABLE IF EXISTS `refinery_calendar_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_calendar_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `registration_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `excerpt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_calendar_events`
--

LOCK TABLES `refinery_calendar_events` WRITE;
/*!40000 ALTER TABLE `refinery_calendar_events` DISABLE KEYS */;
INSERT INTO `refinery_calendar_events` VALUES (3,'This is a new event','2013-05-02','2013-05-03','','This is a new event excerpt','<p>This is the new event description</p>',0,1,'this-is-a-new-event',1,'2013-05-02 20:06:39','2013-05-02 20:06:39');
/*!40000 ALTER TABLE `refinery_calendar_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_calendar_venues`
--

DROP TABLE IF EXISTS `refinery_calendar_venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_calendar_venues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_calendar_venues`
--

LOCK TABLES `refinery_calendar_venues` WRITE;
/*!40000 ALTER TABLE `refinery_calendar_venues` DISABLE KEYS */;
INSERT INTO `refinery_calendar_venues` VALUES (1,'The hub','sunland','url','888 888 8888',0,'2013-04-11 00:33:05','2013-04-11 00:33:05');
/*!40000 ALTER TABLE `refinery_calendar_venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_page_translations`
--

DROP TABLE IF EXISTS `refinery_image_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_image_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_186c9a170a0ab319c675aa80880ce155d8f47244` (`refinery_image_page_id`),
  KEY `index_refinery_image_page_translations_on_locale` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_page_translations`
--

LOCK TABLES `refinery_image_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_image_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_image_page_translations` VALUES (2,8,'en',NULL,'2013-04-29 22:34:40','2013-04-29 22:34:40'),(3,9,'en',NULL,'2013-04-29 22:36:45','2013-04-29 22:36:45');
/*!40000 ALTER TABLE `refinery_image_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_image_pages`
--

DROP TABLE IF EXISTS `refinery_image_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_image_pages` (
  `image_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'page',
  PRIMARY KEY (`id`),
  KEY `index_refinery_image_pages_on_image_id` (`image_id`),
  KEY `index_refinery_image_pages_on_page_id` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_image_pages`
--

LOCK TABLES `refinery_image_pages` WRITE;
/*!40000 ALTER TABLE `refinery_image_pages` DISABLE KEYS */;
INSERT INTO `refinery_image_pages` VALUES (7,1,0,NULL,8,'Refinery::Blog::Post'),(7,2,0,NULL,9,'Refinery::Blog::Post');
/*!40000 ALTER TABLE `refinery_image_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_images`
--

DROP TABLE IF EXISTS `refinery_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_images`
--

LOCK TABLES `refinery_images` WRITE;
/*!40000 ALTER TABLE `refinery_images` DISABLE KEYS */;
INSERT INTO `refinery_images` VALUES (6,'image/jpeg','girls.jpg',113582,915,385,'2013/04/26/15_13_19_657_girls.jpg',NULL,'2013-04-26 22:13:19','2013-04-26 22:13:19'),(7,'image/jpeg','aaron.jpg',29185,440,289,'2013/04/29/15_23_25_686_aaron.jpg',NULL,'2013-04-29 22:23:25','2013-04-29 22:23:25'),(8,'image/jpeg','landa.jpg',27400,429,486,'2013/05/02/10_10_46_25_landa.jpg',NULL,'2013-05-02 17:10:46','2013-05-02 17:10:46'),(9,'image/jpeg','worship-page.jpg',292262,2048,958,'2013/05/03/15_11_30_113_worship_page.jpg',NULL,'2013-05-03 22:11:30','2013-05-03 22:11:30'),(10,'image/jpeg','Aya-Pie.JPG',102623,640,480,'2013/05/03/20_24_29_566_Aya_Pie.JPG',NULL,'2013-05-04 03:24:29','2013-05-04 03:24:29');
/*!40000 ALTER TABLE `refinery_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_mailchimp_campaigns`
--

DROP TABLE IF EXISTS `refinery_mailchimp_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_mailchimp_campaigns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailchimp_campaign_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailchimp_list_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailchimp_template_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `sent_at` datetime DEFAULT NULL,
  `scheduled_at` datetime DEFAULT NULL,
  `auto_tweet` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_mailchimp_campaigns_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_mailchimp_campaigns`
--

LOCK TABLES `refinery_mailchimp_campaigns` WRITE;
/*!40000 ALTER TABLE `refinery_mailchimp_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_mailchimp_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_part_translations`
--

DROP TABLE IF EXISTS `refinery_page_part_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_part_translations_on_locale` (`locale`),
  KEY `index_refinery_page_part_translations_on_refinery_page_part_id` (`refinery_page_part_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_part_translations`
--

LOCK TABLES `refinery_page_part_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_part_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_part_translations` VALUES (1,1,'en','        <div id=\"content\" class=\"index\">\r\n        \r\n          <div id=\"slider\">\r\n            <div class=\"wrap\">\r\n                \r\n                \r\n                <div class=\"mask\"></div>\r\n                <div id=\"big-slider\">\r\n                    \r\n                    \r\n                    <ul class=\"innerfade\" style=\"position: relative; height: 455px;\" id=\"slideshow\">\r\n                        <li style=\"z-index: 8; position: absolute; display: none;\" class=\"cms-repeat\" id=\"banner-rotator\"><a id=\"ec8a6a\" class=\"cms-editable\" href=\"/about/welcome\"><img id=\"e30738\" class=\"cms-editable\" src=\"images/girls.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 7; position: absolute; display: list-item;\" id=\"e6cc23\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"e776f8\" class=\"cms-editable text-align-center\" href=\"/activities/sunday-school\"><img id=\"e4df73\" class=\"cms-editable\" src=\"images/kids.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 6; position: absolute; display: none;\" id=\"eeb1eb\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"e856d4\" class=\"cms-editable\" href=\"/connect/hiking\"><img id=\"e99fd2\" class=\"cms-editable\" src=\"images/hiking.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 5; position: absolute; display: none;\" id=\"ed8577\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"ef009e\" class=\"cms-editable\" href=\"activities/youth-group\"><img id=\"e2055c\" class=\"cms-editable\" src=\"images/youth.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 4; position: absolute; display: none;\" id=\"e4ac48\" class=\"cms-repeat cms-previous-repeat-item-id-ed8577\"><a id=\"e30d6e\" class=\"cms-editable\" href=\"/worship\"><img id=\"eb01aa\" class=\"cms-editable\" src=\"images/worship.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>                        \r\n                    </ul>\r\n                   \r\n                </div>\r\n                \r\n                <div class=\"c-12\">\r\n\r\n              \r\n <ul class=\"portfolio-menu\">\r\n                \r\n                  \r\n<li class=\"c-3 four-column\" id=\"slide1\">\r\n<a id=\"image1\" class=\"cms-editable\" href=\"/about/welcome\"> <img id=\"e9c8e1\" class=\"cms-editable\" src=\"images/welcome.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide2\">\r\n<a id=\"image2\" class=\"cms-editable\" href=\"/connect\"> <img id=\"e9c8e2\" class=\"cms-editable\" src=\"images/connect.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide3\">\r\n<a id=\"image3\" class=\"cms-editable\" href=\"/blog\"> <img id=\"e9c8e3\" class=\"cms-editable\" src=\"images/aaron.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide4\">\r\n<a id=\"image4\" class=\"cms-editable text-align-center\" href=\"events/calendar\"> <img id=\"e9c8e4\" class=\"cms-editable\" src=\"images/calendar.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n                    \r\n                    \r\n </ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>','2013-04-11 00:31:42','2013-05-02 01:25:31'),(2,2,'en','','2013-04-11 00:31:42','2013-04-11 00:31:42'),(3,3,'en','<h2>MAP</h2>\r\n<p class=\"text-align-center\">8263 Foothill Blvd, Sunland Mall Shopping Center, Los Angeles, CA 91040</p>\r\n<p class=\"text-align-center\"><iframe marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?q=8263+Foothill+Blvd&amp;ie=UTF8&amp;hl=en&amp;view=map&amp;ftid=0x80c2935987973ae1:0xdc729860505aaa3d&amp;ftt=9&amp;geocode=FfbECgIdGa7y-A&amp;split=0&amp;sll=34.260214,-118.313447&amp;sspn=0.000000,0.000000&amp;hq=&amp;hnear=8263+Foothill+Blvd,+Sunland,+Los+Angeles,+California+91040&amp;t=m&amp;iwloc=A&amp;ll=34.260214,-118.313447&amp;spn=0.006295,0.006295&amp;output=embed\" frameborder=\"0\" height=\"450\" scrolling=\"no\" width=\"775\"></iframe>\r\n</p>\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;\r\n<small><a class=\"text-align-center\" href=\"https://maps.google.com/maps?q=8263+Foothill+Blvd&amp;ie=UTF8&amp;hl=en&amp;view=map&amp;ftid=0x80c2935987973ae1:0xdc729860505aaa3d&amp;ftt=9&amp;geocode=FfbECgIdGa7y-A&amp;split=0&amp;sll=34.260214,-118.313447&amp;sspn=0.000000,0.000000&amp;hq=&amp;hnear=8263+Foothill+Blvd,+Sunland,+Los+Angeles,+California+91040&amp;t=m&amp;iwloc=A&amp;ll=34.260214,-118.313447&amp;spn=0.006295,0.006295&amp;source=embed\" style=\"color:#0000FF;text-align:center\">View Larger Map</a>\r\n</small>\r\n</p>','2013-04-11 00:34:31','2013-04-29 20:33:09'),(5,5,'en','<h2>UPCOMING EVENTS</h2>\r\n\r\n\r\n<p>\r\n<iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=a2l0bhes0jtffj312ego93poe8%40group.calendar.google.com&amp;color=%232952A3&amp;ctz=America%2FLos_Angeles\" style=\" border-width:0 \" frameborder=\"0\" height=\"600\" scrolling=\"no\" width=\"800\"></iframe>\r\n\r\n</p>','2013-04-12 22:47:29','2013-04-26 18:24:33'),(6,6,'en','','2013-04-13 02:13:00','2013-04-15 17:14:36'),(7,7,'en','','2013-04-13 02:13:00','2013-04-13 02:13:00'),(10,10,'en','<h2>SMALL GROUPS</h2>','2013-04-14 04:09:54','2013-04-26 19:43:18'),(11,11,'en','','2013-04-14 04:09:54','2013-04-14 04:09:54'),(12,12,'en','<h2>HIKING</h2>','2013-04-15 17:28:38','2013-04-26 19:43:07'),(13,13,'en','','2013-04-15 17:28:38','2013-04-15 17:28:38'),(14,14,'en','','2013-04-17 00:13:43','2013-04-23 17:51:22'),(15,15,'en','','2013-04-17 00:13:43','2013-04-17 00:13:43'),(16,16,'en','<h2>YOUTH GROUP</h2>','2013-04-17 00:14:07','2013-04-26 19:42:12'),(17,17,'en','','2013-04-17 00:14:07','2013-04-17 00:14:07'),(18,18,'en','<h2>SUNDAY SCHOOL</h2>','2013-04-17 00:14:25','2013-04-26 19:42:23'),(19,19,'en','','2013-04-17 00:14:25','2013-04-17 00:14:25'),(24,24,'en','<h2 class=\"text-align-left\">WORSHIP</h2>\r\n<p class=\"text-align-left\"><img class=\"image-align-right\" rel=\"450x450\" alt=\"Worship Page\" title=\"Worship Page\" src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDMvMTVfMTFfMzBfMTEzX3dvcnNoaXBfcGFnZS5qcGciXSxbInAiLCJ0aHVtYiIsIjQ1MHg0NTA+Il1d/worship-page.jpg\" height=\"210\" width=\"450\" />Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. This is the main body</p>\r\n<p>Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. </p>','2013-04-18 20:22:21','2013-05-03 22:14:01'),(25,25,'en','','2013-04-18 20:22:21','2013-05-03 22:13:43'),(26,26,'en','','2013-04-26 20:57:17','2013-04-26 20:57:17'),(27,27,'en','','2013-04-26 20:57:17','2013-04-26 20:57:17'),(28,28,'en','<h2>WELCOME TO THE HUB!</h2>\r\n<p class=\"image-align-right text-align-left\"><img class=\"image-align-right\" rel=\"225x255\" alt=\"Landa\" title=\"Landa\" src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDIvMTBfMTBfNDZfMjVfbGFuZGEuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdXQ/landa.jpg\" height=\"255\" width=\"225\" />Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. <br /><br /> Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. <br /><br />Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing.</p>\r\n','2013-04-26 20:59:01','2013-05-02 17:11:04'),(29,29,'en','','2013-04-26 20:59:01','2013-04-29 20:19:10'),(30,30,'en','<p>This is AAron\'s Blog</p>','2013-04-29 22:17:45','2013-04-29 22:25:30'),(31,31,'en','<p>This is another block of content over here.</p>','2013-04-29 22:17:45','2013-04-29 22:17:45'),(32,32,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2013-04-29 22:17:45','2013-04-29 22:17:45'),(39,39,'en','','2013-04-29 22:46:16','2013-04-29 22:50:03'),(40,40,'en','','2013-04-29 22:46:16','2013-04-29 22:50:03'),(41,41,'en','<h2><img class=\"image-align-left\" rel=\"225x255\" alt=\"Aaron\" title=\"Aaron\" src=\"/system/images/W1siZiIsIjIwMTMvMDQvMjkvMTVfMjNfMjVfNjg2X2Fhcm9uLmpwZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXV0/aaron.jpg\" height=\"148\" width=\"225\" />AARON\'S BLOG</h2>','2013-04-29 22:46:16','2013-05-02 19:07:07'),(42,42,'en','','2013-04-29 22:46:16','2013-04-29 22:51:12'),(45,45,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2013-05-02 19:32:32','2013-05-02 19:32:32'),(46,46,'en','<p>This is another block of content over here.</p>','2013-05-02 19:32:32','2013-05-02 19:32:32'),(47,47,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2013-05-02 19:32:32','2013-05-02 19:32:32'),(48,48,'en',NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(49,49,'en',NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(50,50,'en',NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(51,51,'en',NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(52,52,'en','','2013-05-02 20:24:05','2013-05-02 20:24:05'),(53,53,'en','','2013-05-02 20:24:05','2013-05-02 20:24:05'),(54,54,'en','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>','2013-05-02 20:44:34','2013-05-02 20:44:34'),(55,55,'en','<p>This is another block of content over here.</p>','2013-05-02 20:44:34','2013-05-02 20:44:34'),(56,56,'en','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>','2013-05-02 20:44:34','2013-05-02 20:44:34'),(57,57,'en',NULL,'2013-05-02 20:44:35','2013-05-02 20:44:35'),(58,58,'en',NULL,'2013-05-02 20:44:35','2013-05-02 20:44:35'),(59,59,'en','<h2>AARON\'S BLOG</h2>','2013-05-02 20:44:36','2013-05-02 21:20:05'),(60,60,'en','','2013-05-02 20:44:36','2013-05-02 20:47:04'),(61,61,'en','<h2>TITHING</h2>\r\n<p>At The Hub we believe our tithes and offerings are part of our worship.</p>\r\n<p>Thank you for your generous giving.</p>\r\n<div id=\"paypal\">\r\n<form class=\"text-align-justify\" action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\">\r\n        <input name=\"cmd\" value=\"_xclick\" type=\"hidden\" />\r\n        <input name=\"business\" value=\"aaron@thehubcommunity.com\" type=\"hidden\" />\r\n        <input name=\"item_name\" value=\"SUPPORT THE HUB COMMUNITY\" type=\"hidden\" />\r\n        <input name=\"item_number\" value=\"DONATION\" type=\"hidden\" />\r\n        <input name=\"image_url\" value=\"images/hub-log.png\" type=\"hidden\" />\r\n        <input name=\"no_note\" value=\"1\" type=\"hidden\" />\r\n        <input name=\"currency_code\" value=\"USD\" type=\"hidden\" />\r\n        <input name=\"tax\" value=\"0\" type=\"hidden\" />\r\n        <input name=\"lc\" value=\"US\" type=\"hidden\" />\r\n        <input name=\"bn\" value=\"PP-DonationsBF\" type=\"hidden\" />\r\n        <br /><br /><input name=\"submit\" style=\"border: 0px none; background-color: rgb(238, 238, 238);\" src=\"/images/paypal.png\" alt=\"Make\r\npayments with PayPal - it\'s fast, free and secure!\" type=\"image\" />\r\n        <img src=\"main_files/pixel.gif\" height=\"1\" width=\"1\" /><br /><br />\r\n    </form>\r\n    \r\n</div>','2013-05-03 22:17:58','2013-05-03 23:01:31'),(62,62,'en','','2013-05-03 22:17:58','2013-05-03 22:17:58'),(63,63,'en','<h2>HUB PLAYGROUND</h2>','2013-05-04 03:27:25','2013-05-04 03:27:25'),(64,64,'en','','2013-05-04 03:27:25','2013-05-04 03:27:25');
/*!40000 ALTER TABLE `refinery_page_part_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_parts`
--

DROP TABLE IF EXISTS `refinery_page_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_parts_on_id` (`id`),
  KEY `index_refinery_page_parts_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_parts`
--

LOCK TABLES `refinery_page_parts` WRITE;
/*!40000 ALTER TABLE `refinery_page_parts` DISABLE KEYS */;
INSERT INTO `refinery_page_parts` VALUES (1,1,'Body','        <div id=\"content\" class=\"index\">\r\n        \r\n          <div id=\"slider\">\r\n            <div class=\"wrap\">\r\n                \r\n                \r\n                <div class=\"mask\"></div>\r\n                <div id=\"big-slider\">\r\n                    \r\n                    \r\n                    <ul class=\"innerfade\" style=\"position: relative; height: 455px;\" id=\"slideshow\">\r\n                        <li style=\"z-index: 8; position: absolute; display: none;\" class=\"cms-repeat\" id=\"banner-rotator\"><a id=\"ec8a6a\" class=\"cms-editable\" href=\"/about/welcome\"><img id=\"e30738\" class=\"cms-editable\" src=\"images/girls.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 7; position: absolute; display: list-item;\" id=\"e6cc23\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"e776f8\" class=\"cms-editable text-align-center\" href=\"/activities/sunday-school\"><img id=\"e4df73\" class=\"cms-editable\" src=\"images/kids.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 6; position: absolute; display: none;\" id=\"eeb1eb\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"e856d4\" class=\"cms-editable\" href=\"/connect/hiking\"><img id=\"e99fd2\" class=\"cms-editable\" src=\"images/hiking.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 5; position: absolute; display: none;\" id=\"ed8577\" class=\"cms-repeat cms-previous-repeat-item-id-banner-rotator\"><a id=\"ef009e\" class=\"cms-editable\" href=\"activities/youth-group\"><img id=\"e2055c\" class=\"cms-editable\" src=\"images/youth.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>\r\n<li style=\"z-index: 4; position: absolute; display: none;\" id=\"e4ac48\" class=\"cms-repeat cms-previous-repeat-item-id-ed8577\"><a id=\"e30d6e\" class=\"cms-editable\" href=\"/worship\"><img id=\"eb01aa\" class=\"cms-editable\" src=\"images/worship.jpg\" height=\"385\" width=\"915\" /></a>\r\n</li>                        \r\n                    </ul>\r\n                   \r\n                </div>\r\n                \r\n                <div class=\"c-12\">\r\n\r\n              \r\n <ul class=\"portfolio-menu\">\r\n                \r\n                  \r\n<li class=\"c-3 four-column\" id=\"slide1\">\r\n<a id=\"image1\" class=\"cms-editable\" href=\"/about/welcome\"> <img id=\"e9c8e1\" class=\"cms-editable\" src=\"images/welcome.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide2\">\r\n<a id=\"image2\" class=\"cms-editable\" href=\"/connect\"> <img id=\"e9c8e2\" class=\"cms-editable\" src=\"images/connect.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide3\">\r\n<a id=\"image3\" class=\"cms-editable\" href=\"/blog\"> <img id=\"e9c8e3\" class=\"cms-editable\" src=\"images/aaron.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n<li class=\"c-3\" id=\"slide4\">\r\n<a id=\"image4\" class=\"cms-editable text-align-center\" href=\"events/calendar\"> <img id=\"e9c8e4\" class=\"cms-editable\" src=\"images/calendar.jpg\" height=\"95\" width=\"220\" /></a> \r\n</li>\r\n                    \r\n                    \r\n </ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',0,'2013-04-11 00:31:42','2013-05-03 19:51:03'),(2,1,'Side Body','',1,'2013-04-11 00:31:42','2013-05-03 19:51:03'),(3,2,'Body','<h2>MAP</h2>\r\n<p class=\"text-align-center\">8263 Foothill Blvd, Sunland Mall Shopping Center, Los Angeles, CA 91040</p>\r\n<p class=\"text-align-center\"><iframe marginheight=\"0\" marginwidth=\"0\" src=\"https://maps.google.com/maps?q=8263+Foothill+Blvd&amp;ie=UTF8&amp;hl=en&amp;view=map&amp;ftid=0x80c2935987973ae1:0xdc729860505aaa3d&amp;ftt=9&amp;geocode=FfbECgIdGa7y-A&amp;split=0&amp;sll=34.260214,-118.313447&amp;sspn=0.000000,0.000000&amp;hq=&amp;hnear=8263+Foothill+Blvd,+Sunland,+Los+Angeles,+California+91040&amp;t=m&amp;iwloc=A&amp;ll=34.260214,-118.313447&amp;spn=0.006295,0.006295&amp;output=embed\" frameborder=\"0\" height=\"450\" scrolling=\"no\" width=\"775\"></iframe>\r\n</p>\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;\r\n<small><a class=\"text-align-center\" href=\"https://maps.google.com/maps?q=8263+Foothill+Blvd&amp;ie=UTF8&amp;hl=en&amp;view=map&amp;ftid=0x80c2935987973ae1:0xdc729860505aaa3d&amp;ftt=9&amp;geocode=FfbECgIdGa7y-A&amp;split=0&amp;sll=34.260214,-118.313447&amp;sspn=0.000000,0.000000&amp;hq=&amp;hnear=8263+Foothill+Blvd,+Sunland,+Los+Angeles,+California+91040&amp;t=m&amp;iwloc=A&amp;ll=34.260214,-118.313447&amp;spn=0.006295,0.006295&amp;source=embed\" style=\"color:#0000FF;text-align:center\">View Larger Map</a>\r\n</small>\r\n</p>',0,'2013-04-11 00:34:31','2013-04-29 20:33:09'),(5,3,'Body','<h2>UPCOMING EVENTS</h2>\r\n\r\n\r\n<p>\r\n<iframe src=\"https://www.google.com/calendar/embed?showTitle=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=a2l0bhes0jtffj312ego93poe8%40group.calendar.google.com&amp;color=%232952A3&amp;ctz=America%2FLos_Angeles\" style=\" border-width:0 \" frameborder=\"0\" height=\"600\" scrolling=\"no\" width=\"800\"></iframe>\r\n\r\n</p>',0,'2013-04-12 22:47:29','2013-04-29 23:24:18'),(6,4,'Body','',0,'2013-04-13 02:13:00','2013-05-03 19:49:51'),(7,4,'Side Body','',1,'2013-04-13 02:13:00','2013-05-03 19:49:51'),(10,6,'Body','<h2>SMALL GROUPS</h2>',0,'2013-04-14 04:09:54','2013-05-03 19:53:21'),(11,6,'Side Body','',1,'2013-04-14 04:09:54','2013-05-03 19:53:21'),(12,7,'Body','<h2>HIKING</h2>',0,'2013-04-15 17:28:38','2013-05-03 19:50:16'),(13,7,'Side Body','',1,'2013-04-15 17:28:38','2013-05-03 19:50:16'),(14,8,'Body','',0,'2013-04-17 00:13:43','2013-04-26 16:41:37'),(15,8,'Side Body','',1,'2013-04-17 00:13:43','2013-04-26 16:41:37'),(16,9,'Body','<h2>YOUTH GROUP</h2>',0,'2013-04-17 00:14:07','2013-04-26 19:42:12'),(17,9,'Side Body','',1,'2013-04-17 00:14:07','2013-04-26 19:42:12'),(18,10,'Body','<h2>SUNDAY SCHOOL</h2>',0,'2013-04-17 00:14:25','2013-05-03 19:52:58'),(19,10,'Side Body','',1,'2013-04-17 00:14:25','2013-05-03 19:52:58'),(24,13,'Body','<h2 class=\"text-align-left\">WORSHIP</h2>\r\n<p class=\"text-align-left\"><img class=\"image-align-right\" rel=\"450x450\" alt=\"Worship Page\" title=\"Worship Page\" src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDMvMTVfMTFfMzBfMTEzX3dvcnNoaXBfcGFnZS5qcGciXSxbInAiLCJ0aHVtYiIsIjQ1MHg0NTA+Il1d/worship-page.jpg\" height=\"210\" width=\"450\" />Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. This is the main body</p>\r\n<p>Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. </p>',0,'2013-04-18 20:22:21','2013-05-03 22:14:01'),(25,13,'Side Body','',1,'2013-04-18 20:22:21','2013-05-03 22:14:01'),(26,14,'Body','',0,'2013-04-26 20:57:17','2013-04-26 21:00:21'),(27,14,'Side Body','',1,'2013-04-26 20:57:17','2013-04-26 21:00:21'),(28,15,'Body','<h2>WELCOME TO THE HUB!</h2>\r\n<p class=\"image-align-right text-align-left\"><img class=\"image-align-right\" rel=\"225x255\" alt=\"Landa\" title=\"Landa\" src=\"/system/images/W1siZiIsIjIwMTMvMDUvMDIvMTBfMTBfNDZfMjVfbGFuZGEuanBnIl0sWyJwIiwidGh1bWIiLCIyMjV4MjU1PiJdXQ/landa.jpg\" height=\"255\" width=\"225\" />Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. <br /><br /> Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. <br /><br />Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Quisque tincidunt lacus in ante. Donec adipiscing. Curabitur at enim at nulla iaculis feugiat. Ut semper, nisi vel suscipit venenatis, felis diam auctor mi, quis iaculis leo nulla vel sapien. Phasellus blandit nibh vel turpis. Curabitur commodo. Proin ac odio in urna cursus ultricies. Quisque tincidunt lacus in ante. Donec adipiscing.</p>\r\n',0,'2013-04-26 20:59:01','2013-05-03 22:18:26'),(29,15,'Side Body','',1,'2013-04-26 20:59:01','2013-05-03 22:18:26'),(30,16,'Body','<p>This is AAron\'s Blog</p>',0,'2013-04-29 22:17:45','2013-04-29 22:25:48'),(31,16,'Side Body','<p>This is another block of content over here.</p>',1,'2013-04-29 22:17:45','2013-04-29 22:25:48'),(32,17,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2013-04-29 22:17:45','2013-04-29 22:17:45'),(39,21,'Body','',0,'2013-04-29 22:46:16','2013-05-02 20:07:31'),(40,21,'Side Body','',1,'2013-04-29 22:46:16','2013-05-02 20:07:31'),(41,22,'Body','<h2><img class=\"image-align-left\" rel=\"225x255\" alt=\"Aaron\" title=\"Aaron\" src=\"/system/images/W1siZiIsIjIwMTMvMDQvMjkvMTVfMjNfMjVfNjg2X2Fhcm9uLmpwZyJdLFsicCIsInRodW1iIiwiMjI1eDI1NT4iXV0/aaron.jpg\" height=\"148\" width=\"225\" />AARON\'S BLOG</h2>',0,'2013-04-29 22:46:16','2013-05-02 19:22:21'),(42,22,'Side Body','',1,'2013-04-29 22:46:16','2013-05-02 19:22:21'),(45,24,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2013-05-02 19:32:32','2013-05-02 19:32:32'),(46,24,'Side Body','<p>This is another block of content over here.</p>',1,'2013-05-02 19:32:32','2013-05-02 19:32:32'),(47,25,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2013-05-02 19:32:32','2013-05-02 19:32:32'),(48,26,'Body',NULL,0,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(49,26,'Side Body',NULL,1,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(50,27,'Body',NULL,NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(51,27,'Side Body',NULL,NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(52,28,'Body','',0,'2013-05-02 20:24:05','2013-05-02 20:25:00'),(53,28,'Side Body','',1,'2013-05-02 20:24:05','2013-05-02 20:25:00'),(54,29,'Body','<p>Welcome to our site. This is just a place holder page while we gather our content.</p>',0,'2013-05-02 20:44:34','2013-05-02 20:44:34'),(55,29,'Side Body','<p>This is another block of content over here.</p>',1,'2013-05-02 20:44:34','2013-05-02 20:44:34'),(56,30,'Body','<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',0,'2013-05-02 20:44:34','2013-05-02 20:44:34'),(57,31,'Body',NULL,0,'2013-05-02 20:44:35','2013-05-02 20:44:35'),(58,31,'Side Body',NULL,1,'2013-05-02 20:44:35','2013-05-02 20:44:35'),(59,32,'Body','<h2>AARON\'S BLOG</h2>',0,'2013-05-02 20:44:36','2013-05-03 22:18:14'),(60,32,'Side Body','',1,'2013-05-02 20:44:36','2013-05-03 22:18:14'),(61,33,'Body','<h2>TITHING</h2>\r\n<p>At The Hub we believe our tithes and offerings are part of our worship.</p>\r\n<p>Thank you for your generous giving.</p>\r\n<div id=\"paypal\">\r\n<form class=\"text-align-justify\" action=\"https://www.paypal.com/cgi-bin/webscr\" method=\"post\">\r\n        <input name=\"cmd\" value=\"_xclick\" type=\"hidden\" />\r\n        <input name=\"business\" value=\"aaron@thehubcommunity.com\" type=\"hidden\" />\r\n        <input name=\"item_name\" value=\"SUPPORT THE HUB COMMUNITY\" type=\"hidden\" />\r\n        <input name=\"item_number\" value=\"DONATION\" type=\"hidden\" />\r\n        <input name=\"image_url\" value=\"images/hub-log.png\" type=\"hidden\" />\r\n        <input name=\"no_note\" value=\"1\" type=\"hidden\" />\r\n        <input name=\"currency_code\" value=\"USD\" type=\"hidden\" />\r\n        <input name=\"tax\" value=\"0\" type=\"hidden\" />\r\n        <input name=\"lc\" value=\"US\" type=\"hidden\" />\r\n        <input name=\"bn\" value=\"PP-DonationsBF\" type=\"hidden\" />\r\n        <br /><br /><input name=\"submit\" style=\"border: 0px none; background-color: rgb(238, 238, 238);\" src=\"/images/paypal.png\" alt=\"Make\r\npayments with PayPal - it\'s fast, free and secure!\" type=\"image\" />\r\n        <img src=\"main_files/pixel.gif\" height=\"1\" width=\"1\" /><br /><br />\r\n    </form>\r\n    \r\n</div>',0,'2013-05-03 22:17:58','2013-05-03 23:46:49'),(62,33,'Side Body','',1,'2013-05-03 22:17:58','2013-05-03 23:46:49'),(63,34,'Body','<h2>HUB PLAYGROUND</h2>',0,'2013-05-04 03:27:25','2013-05-04 03:28:17'),(64,34,'Side Body','',1,'2013-05-04 03:27:25','2013-05-04 03:28:17');
/*!40000 ALTER TABLE `refinery_page_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_page_translations`
--

DROP TABLE IF EXISTS `refinery_page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `refinery_page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_page_translations_on_locale` (`locale`),
  KEY `index_refinery_page_translations_on_refinery_page_id` (`refinery_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_page_translations`
--

LOCK TABLES `refinery_page_translations` WRITE;
/*!40000 ALTER TABLE `refinery_page_translations` DISABLE KEYS */;
INSERT INTO `refinery_page_translations` VALUES (1,1,'en','HOME',NULL,'','home','2013-04-11 00:31:42','2013-04-29 22:41:39'),(2,2,'en','MAP',NULL,'','map','2013-04-11 00:34:31','2013-04-23 23:15:29'),(3,3,'en','Calendar',NULL,'','calendar','2013-04-12 22:47:28','2013-04-29 23:24:18'),(4,4,'en','CONNECT',NULL,'','connect','2013-04-13 02:13:00','2013-04-23 23:15:48'),(6,6,'en','Small Groups',NULL,'','small-groups','2013-04-14 04:09:54','2013-04-14 04:09:54'),(7,7,'en','Hiking',NULL,'','hiking','2013-04-15 17:28:38','2013-04-15 17:28:38'),(8,8,'en','ACTIVITIES',NULL,'','activities','2013-04-17 00:13:42','2013-04-23 23:14:45'),(9,9,'en','Youth Group',NULL,'','youth-group','2013-04-17 00:14:07','2013-04-17 00:14:07'),(10,10,'en','Sunday School',NULL,'','sunday-school','2013-04-17 00:14:25','2013-04-17 00:14:25'),(13,13,'en','WORSHIP',NULL,'','worship','2013-04-18 20:22:21','2013-04-23 23:15:55'),(14,14,'en','ABOUT',NULL,'','about','2013-04-26 20:57:17','2013-04-26 20:58:32'),(15,15,'en','Welcome',NULL,'','welcome','2013-04-26 20:59:01','2013-05-03 22:18:26'),(16,16,'en','BLOG',NULL,'','blog','2013-04-29 22:17:45','2013-04-29 22:25:30'),(17,17,'en','Page not found',NULL,NULL,'page-not-found','2013-04-29 22:17:45','2013-04-29 22:17:45'),(21,21,'en','EVENTS',NULL,'','events','2013-04-29 22:46:15','2013-04-29 23:21:11'),(22,22,'en','BLOG',NULL,'','blog--2','2013-04-29 22:46:16','2013-04-29 22:48:03'),(24,24,'en','Home',NULL,NULL,'home','2013-05-02 19:32:32','2013-05-02 19:32:33'),(25,25,'en','Page not found',NULL,NULL,'page-not-found','2013-05-02 19:32:32','2013-05-02 19:32:32'),(26,26,'en','Events',NULL,NULL,'events--2','2013-05-02 19:32:33','2013-05-02 19:32:33'),(27,27,'en','Blog',NULL,NULL,'blog','2013-05-02 19:32:34','2013-05-02 19:32:34'),(28,28,'en','BLOG',NULL,'','blog','2013-05-02 20:24:05','2013-05-02 20:24:05'),(29,29,'en','Home',NULL,NULL,'home','2013-05-02 20:44:34','2013-05-02 20:44:35'),(30,30,'en','Page not found',NULL,NULL,'page-not-found','2013-05-02 20:44:34','2013-05-02 20:44:34'),(31,31,'en','Events',NULL,NULL,'events--2','2013-05-02 20:44:35','2013-05-02 20:44:35'),(32,32,'en','Blog',NULL,'','blog--2','2013-05-02 20:44:36','2013-05-03 22:18:14'),(33,33,'en','Tithing',NULL,'','tithing','2013-05-03 22:17:58','2013-05-03 22:17:58'),(34,34,'en','Playground',NULL,'','playground','2013-05-04 03:27:25','2013-05-04 03:27:25');
/*!40000 ALTER TABLE `refinery_page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_pages`
--

DROP TABLE IF EXISTS `refinery_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `view_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_pages_on_depth` (`depth`),
  KEY `index_refinery_pages_on_id` (`id`),
  KEY `index_refinery_pages_on_lft` (`lft`),
  KEY `index_refinery_pages_on_parent_id` (`parent_id`),
  KEY `index_refinery_pages_on_rgt` (`rgt`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_pages`
--

LOCK TABLES `refinery_pages` WRITE;
/*!40000 ALTER TABLE `refinery_pages` DISABLE KEYS */;
INSERT INTO `refinery_pages` VALUES (1,NULL,NULL,'home',1,'/',NULL,1,0,0,1,4,0,'show','home','2013-04-11 00:31:42','2013-05-03 19:51:03'),(2,NULL,NULL,'map',0,'',NULL,1,0,0,17,18,0,'show','application','2013-04-11 00:34:31','2013-04-29 20:33:09'),(3,21,NULL,'calendar',1,'',NULL,1,0,0,6,7,1,'show','application','2013-04-12 22:47:28','2013-04-29 23:24:18'),(4,NULL,NULL,'connect',1,'',NULL,1,0,1,19,24,0,'show','application','2013-04-13 02:13:00','2013-05-03 19:49:51'),(6,4,NULL,'small-groups',1,'',NULL,1,0,0,22,23,1,'show','application','2013-04-14 04:09:54','2013-05-03 19:53:21'),(7,4,NULL,'hiking',1,'',NULL,1,0,0,20,21,1,'show','application','2013-04-15 17:28:38','2013-05-03 19:50:16'),(8,NULL,NULL,'activities',1,'',NULL,1,0,1,9,16,0,'show','application','2013-04-17 00:13:42','2013-04-26 16:41:37'),(9,8,NULL,'youth-group',1,'',NULL,1,0,0,10,11,1,'show','application','2013-04-17 00:14:07','2013-04-26 19:42:12'),(10,8,NULL,'sunday-school',1,'',NULL,1,0,0,12,13,1,'show','application','2013-04-17 00:14:25','2013-05-03 19:52:58'),(13,NULL,NULL,'worship',1,'',NULL,1,0,0,25,26,0,'show','application','2013-04-18 20:22:21','2013-05-03 22:14:01'),(14,NULL,NULL,'about',1,'',NULL,1,0,1,27,34,0,'home','application','2013-04-26 20:57:17','2013-05-02 20:44:36'),(15,14,NULL,'welcome',1,'',NULL,1,0,0,28,29,1,'show','application','2013-04-26 20:59:01','2013-05-03 22:18:26'),(17,1,NULL,'page-not-found',0,NULL,'^/404$',0,0,0,2,3,1,NULL,NULL,'2013-04-29 22:17:45','2013-05-02 20:44:35'),(21,NULL,NULL,'events',1,'','^/calendar/events(/|/.+?|)$',0,0,1,5,8,0,'home','application','2013-04-29 22:46:16','2013-05-02 20:07:31'),(32,14,NULL,'blog--2',1,'/blog','^/blogs?(/|/.+?|)$',0,0,0,30,31,1,'home','application','2013-05-02 20:44:36','2013-05-03 22:18:14'),(33,14,NULL,'tithing',1,'',NULL,1,0,0,32,33,1,'show','application','2013-05-03 22:17:58','2013-05-03 23:46:49'),(34,8,NULL,'playground',1,'',NULL,1,0,0,14,15,1,'show','application','2013-05-04 03:27:25','2013-05-04 03:28:17');
/*!40000 ALTER TABLE `refinery_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_resources`
--

DROP TABLE IF EXISTS `refinery_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_resources`
--

LOCK TABLES `refinery_resources` WRITE;
/*!40000 ALTER TABLE `refinery_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles`
--

DROP TABLE IF EXISTS `refinery_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles`
--

LOCK TABLES `refinery_roles` WRITE;
/*!40000 ALTER TABLE `refinery_roles` DISABLE KEYS */;
INSERT INTO `refinery_roles` VALUES (1,'Refinery'),(2,'Superuser');
/*!40000 ALTER TABLE `refinery_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_roles_users`
--

DROP TABLE IF EXISTS `refinery_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_refinery_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_refinery_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_roles_users`
--

LOCK TABLES `refinery_roles_users` WRITE;
/*!40000 ALTER TABLE `refinery_roles_users` DISABLE KEYS */;
INSERT INTO `refinery_roles_users` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `refinery_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_settings`
--

DROP TABLE IF EXISTS `refinery_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_settings`
--

LOCK TABLES `refinery_settings` WRITE;
/*!40000 ALTER TABLE `refinery_settings` DISABLE KEYS */;
INSERT INTO `refinery_settings` VALUES (1,'comments_allowed','--- \'true\'\n',1,'blog',0,'text_area','2013-04-29 22:20:07','2013-05-02 22:55:18'),(2,'comment_moderation','--- \'true\'\n',1,'blog',0,'text_area','2013-04-29 22:20:07','2013-05-02 21:04:34'),(3,'teasers_enabled','--- \'true\'\n',1,'blog',0,'text_area','2013-04-29 22:20:07','2013-05-02 21:56:21'),(4,'comment_notification_recipients','--- yaccad@gmail.com\n...\n',1,'blog',0,'text_area','2013-04-29 22:21:52','2013-05-02 20:09:53'),(5,'comment_notification_subject','--- New inquiry from your website\n...\n',1,'blog',0,'text_area','2013-04-29 22:56:15','2013-04-29 22:56:15'),(6,'mailchimp_default_from_name','--- \'\'\n',1,NULL,0,'text_area','2013-05-02 17:51:22','2013-05-02 17:51:22'),(7,'mailchimp_default_from_email','--- \'\'\n',1,NULL,0,'text_area','2013-05-02 17:51:22','2013-05-02 17:51:22');
/*!40000 ALTER TABLE `refinery_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_user_plugins`
--

DROP TABLE IF EXISTS `refinery_user_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_refinery_user_plugins_on_user_id_and_name` (`user_id`,`name`),
  KEY `index_refinery_user_plugins_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_user_plugins`
--

LOCK TABLES `refinery_user_plugins` WRITE;
/*!40000 ALTER TABLE `refinery_user_plugins` DISABLE KEYS */;
INSERT INTO `refinery_user_plugins` VALUES (73,1,'calendar',0),(74,1,'refinery_users',1),(75,1,'refinery_dashboard',2),(76,1,'refinery_images',3),(77,1,'refinery_files',4),(78,1,'refinery_pages',5),(79,1,'refinery_core',6),(80,1,'refinery_dialogs',7),(81,1,'refinery_i18n',8),(82,1,'refinery_menus',9),(83,1,'page_images',10),(84,1,'refinery_settings',11),(85,1,'refinerycms-calendar',12),(86,1,'videos',13),(87,1,'refinery-mailchimp',14),(88,1,'refinerycms_blog',15);
/*!40000 ALTER TABLE `refinery_user_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_users`
--

DROP TABLE IF EXISTS `refinery_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_users_on_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_users`
--

LOCK TABLES `refinery_users` WRITE;
/*!40000 ALTER TABLE `refinery_users` DISABLE KEYS */;
INSERT INTO `refinery_users` VALUES (1,'yaccad','yaccad@gmail.com','$2a$10$6c8NhHkmYq06Xrt8OrpHcenX2E7LB1fJF7o8PMqyYWtlVRiluU5Q2','2013-05-06 19:52:05','2013-05-04 03:26:41','127.0.0.1','127.0.0.1',85,NULL,NULL,NULL,'2013-04-11 00:31:30','2013-05-06 19:52:05');
/*!40000 ALTER TABLE `refinery_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_video_files`
--

DROP TABLE IF EXISTS `refinery_video_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_video_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `video_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `external_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `use_external` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_video_files`
--

LOCK TABLES `refinery_video_files` WRITE;
/*!40000 ALTER TABLE `refinery_video_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_video_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refinery_videos`
--

DROP TABLE IF EXISTS `refinery_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refinery_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `config` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `use_shared` tinyint(1) DEFAULT NULL,
  `embed_tag` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refinery_videos`
--

LOCK TABLES `refinery_videos` WRITE;
/*!40000 ALTER TABLE `refinery_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `refinery_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130409174927'),('20130409174929'),('20130409174930'),('20130409174931'),('20130409174932'),('20130411001656'),('20130411001657'),('20130417180924'),('20130417180925'),('20130417180926'),('20130417180927'),('20130429221059'),('20130429221060'),('20130429221061'),('20130429221062'),('20130429221063'),('20130429221064'),('20130429221065'),('20130429221066'),('20130429221067'),('20130429221068'),('20130429221101'),('20130502172219'),('20130502172220'),('20130502174640'),('20130502174641'),('20130502194344'),('20130502194345'),('20130502194346'),('20130502194347'),('20130502194348'),('20130502194349'),('20130502194350'),('20130502194351'),('20130502194352'),('20130502194353');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seo_meta`
--

DROP TABLE IF EXISTS `seo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seo_meta`
--

LOCK TABLES `seo_meta` WRITE;
/*!40000 ALTER TABLE `seo_meta` DISABLE KEYS */;
INSERT INTO `seo_meta` VALUES (1,1,'Refinery::Page::Translation','','','','2013-04-11 00:31:42','2013-04-11 00:31:42'),(2,2,'Refinery::Page::Translation','','','','2013-04-11 00:34:31','2013-04-11 00:34:31'),(3,3,'Refinery::Page::Translation','','','','2013-04-12 22:47:28','2013-04-12 22:47:28'),(4,4,'Refinery::Page::Translation','','','','2013-04-13 02:13:00','2013-04-13 02:13:00'),(6,6,'Refinery::Page::Translation','','','','2013-04-14 04:09:54','2013-04-14 04:09:54'),(7,7,'Refinery::Page::Translation','','','','2013-04-15 17:28:38','2013-04-15 17:28:38'),(8,8,'Refinery::Page::Translation','','','','2013-04-17 00:13:42','2013-04-17 00:13:42'),(9,9,'Refinery::Page::Translation','','','','2013-04-17 00:14:07','2013-04-17 00:14:07'),(10,10,'Refinery::Page::Translation','','','','2013-04-17 00:14:25','2013-04-17 00:14:25'),(13,13,'Refinery::Page::Translation','','','','2013-04-18 20:22:21','2013-04-18 20:22:21'),(14,14,'Refinery::Page::Translation','','','','2013-04-26 20:57:17','2013-04-26 20:57:17'),(15,15,'Refinery::Page::Translation','','','','2013-04-26 20:59:01','2013-04-26 20:59:01'),(16,16,'Refinery::Page::Translation','','','','2013-04-29 22:17:45','2013-04-29 22:25:30'),(17,17,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-04-29 22:17:45','2013-04-29 22:17:45'),(23,21,'Refinery::Page::Translation','','','','2013-04-29 22:46:16','2013-04-29 22:50:03'),(24,22,'Refinery::Page::Translation','','','','2013-04-29 22:46:16','2013-04-29 22:48:03'),(27,24,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 19:32:32','2013-05-02 19:32:32'),(28,25,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 19:32:32','2013-05-02 19:32:32'),(29,26,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 19:32:33','2013-05-02 19:32:33'),(30,27,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 19:32:34','2013-05-02 19:32:34'),(32,28,'Refinery::Page::Translation','','','','2013-05-02 20:24:05','2013-05-02 20:24:05'),(34,29,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 20:44:34','2013-05-02 20:44:34'),(35,30,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 20:44:34','2013-05-02 20:44:34'),(36,31,'Refinery::Page::Translation',NULL,NULL,NULL,'2013-05-02 20:44:35','2013-05-02 20:44:35'),(37,32,'Refinery::Page::Translation','','','','2013-05-02 20:44:36','2013-05-02 20:47:04'),(38,3,'Refinery::Blog::Post','','','','2013-05-02 21:00:06','2013-05-02 21:00:06'),(39,4,'Refinery::Blog::Post','','','','2013-05-02 21:02:33','2013-05-02 21:02:33'),(40,33,'Refinery::Page::Translation','','','','2013-05-03 22:17:58','2013-05-03 22:17:58'),(41,5,'Refinery::Blog::Post','','','','2013-05-04 03:25:32','2013-05-04 03:25:32'),(42,34,'Refinery::Page::Translation','','','','2013-05-04 03:27:25','2013-05-04 03:27:25');
/*!40000 ALTER TABLE `seo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (5,2,3,'Refinery::Blog::Post',NULL,NULL,'tags','2013-05-03 20:11:25'),(7,5,4,'Refinery::Blog::Post',NULL,NULL,'tags','2013-05-03 20:12:43'),(8,6,5,'Refinery::Blog::Post',NULL,NULL,'tags','2013-05-04 03:25:32');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'Hub'),(2,'Family'),(3,'Children'),(4,'Hub Family Children'),(5,'Church'),(6,'cooking');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-06 13:39:54
