-- MySQL dump 10.13  Distrib 5.1.63, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: roller
-- ------------------------------------------------------
-- Server version	5.1.63-0ubuntu0.11.10.1

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
-- Table structure for table `autoping`
--

DROP TABLE IF EXISTS `autoping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `autoping` (
  `id` varchar(48) NOT NULL,
  `websiteid` varchar(48) NOT NULL,
  `pingtargetid` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ap_websiteid_idx` (`websiteid`),
  KEY `ap_pingtid_idx` (`pingtargetid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autoping`
--

LOCK TABLES `autoping` WRITE;
/*!40000 ALTER TABLE `autoping` DISABLE KEYS */;
/*!40000 ALTER TABLE `autoping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmark`
--

DROP TABLE IF EXISTS `bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmark` (
  `id` varchar(48) NOT NULL,
  `folderid` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT '0',
  `priority` int(11) NOT NULL DEFAULT '100',
  `image` varchar(255) DEFAULT NULL,
  `feedurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bm_folderid_idx` (`folderid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmark`
--

LOCK TABLES `bookmark` WRITE;
/*!40000 ALTER TABLE `bookmark` DISABLE KEYS */;
INSERT INTO `bookmark` VALUES ('ff80818127d717530127e0bbcb5f001a','ff80818127d717530127e0bbcb230018','SANS','','http://sans.org',0,0,NULL,NULL),('ff80818127d717530127e0bbcb5f001b','ff80818127d717530127e0bbcb230018','SANS Blogs','','http://blogs.sans.org',0,0,NULL,NULL),('ff80818127d717530127e0bbcb60001c','ff80818127d717530127e0bbcb230018','SANS Software Security','','http://sans-ssi.org',0,0,NULL,NULL),('ff80818127d717530127e0bbcb61001d','ff80818127d717530127e0bbcb230018','SANS AppSec Street Fighter','','http://appsecstreetfighter.com',0,0,NULL,NULL);
/*!40000 ALTER TABLE `bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entryattribute`
--

DROP TABLE IF EXISTS `entryattribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entryattribute` (
  `id` varchar(48) NOT NULL,
  `entryid` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ea_name_uq` (`entryid`,`name`(40)),
  KEY `ea_entryid_idx` (`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entryattribute`
--

LOCK TABLES `entryattribute` WRITE;
/*!40000 ALTER TABLE `entryattribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `entryattribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder`
--

DROP TABLE IF EXISTS `folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `websiteid` varchar(48) NOT NULL,
  `parentid` varchar(48) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fo_websiteid_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder`
--

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
INSERT INTO `folder` VALUES ('ff80818127d717530127e0bbcb230018','root','root','ff80818127d717530127e0bbca3c000a',NULL),('1','manual test','','ff80818127d717530127e0bbca3c000a',NULL);
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folderassoc`
--

DROP TABLE IF EXISTS `folderassoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folderassoc` (
  `id` varchar(48) NOT NULL,
  `folderid` varchar(48) NOT NULL,
  `ancestorid` varchar(40) DEFAULT NULL,
  `relation` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fa_folderid_idx` (`folderid`),
  KEY `fa_ancestorid_idx` (`ancestorid`),
  KEY `fa_relation_idx` (`relation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folderassoc`
--

LOCK TABLES `folderassoc` WRITE;
/*!40000 ALTER TABLE `folderassoc` DISABLE KEYS */;
INSERT INTO `folderassoc` VALUES ('ff80818127d717530127e0bbcb230019','ff80818127d717530127e0bbcb230018',NULL,'PARENT'),('ff808181281463210128197038070009','ff808181281463210128197038050008','ff80818127d717530127e0bbcb230018','PARENT'),('ff80818128146321012819769329000d','ff80818128146321012819769329000c','ff80818127d717530127e0bbcb230018','PARENT');
/*!40000 ALTER TABLE `folderassoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsfeed`
--

DROP TABLE IF EXISTS `newsfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsfeed` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `websiteid` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nf_websiteid_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsfeed`
--

LOCK TABLES `newsfeed` WRITE;
/*!40000 ALTER TABLE `newsfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingcategory`
--

DROP TABLE IF EXISTS `pingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingcategory` (
  `id` varchar(48) NOT NULL,
  `autopingid` varchar(48) NOT NULL,
  `categoryid` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pc_autopingid_idx` (`autopingid`),
  KEY `pc_categoryid_idx` (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingcategory`
--

LOCK TABLES `pingcategory` WRITE;
/*!40000 ALTER TABLE `pingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `pingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingqueueentry`
--

DROP TABLE IF EXISTS `pingqueueentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingqueueentry` (
  `id` varchar(48) NOT NULL,
  `entrytime` datetime NOT NULL,
  `pingtargetid` varchar(48) NOT NULL,
  `websiteid` varchar(48) NOT NULL,
  `attempts` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pqe_entrytime_idx` (`entrytime`),
  KEY `pqe_pingtid_idx` (`pingtargetid`),
  KEY `pqe_websiteid_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingqueueentry`
--

LOCK TABLES `pingqueueentry` WRITE;
/*!40000 ALTER TABLE `pingqueueentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `pingqueueentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingtarget`
--

DROP TABLE IF EXISTS `pingtarget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingtarget` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pingurl` varchar(255) NOT NULL,
  `websiteid` varchar(48) DEFAULT NULL,
  `conditioncode` int(11) NOT NULL DEFAULT '0',
  `lastsuccess` datetime DEFAULT NULL,
  `autoenabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pt_websiteid_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingtarget`
--

LOCK TABLES `pingtarget` WRITE;
/*!40000 ALTER TABLE `pingtarget` DISABLE KEYS */;
INSERT INTO `pingtarget` VALUES ('ff80818127d717530127d7175bbf0001','Technorati','http://rpc.technorati.com/rpc/ping',NULL,0,NULL,0),('ff80818127d717530127d7175bc00002','Weblogs.com','http://rpc.weblogs.com/RPC2',NULL,0,NULL,0),('ff80818127d717530127d7175bc00003','blo.gs','http://ping.blo.gs/',NULL,0,NULL,0),('ff80818127d717530127d7175bc10004','java.blogs','http://javablogs.com/xmlrpc',NULL,0,NULL,0),('ff80818127d717530127d7175bc10005','blogrolling.com','http://rpc.blogrolling.com/pinger/',NULL,0,NULL,0),('ff80818127d717530127d7175bc20006','IceRocket','http://rpc.icerocket.com:10080/',NULL,0,NULL,0),('ff80818128146321012818fd75b70004','test','http://www.attacker.com',NULL,0,NULL,0);
/*!40000 ALTER TABLE `pingtarget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rag_config`
--

DROP TABLE IF EXISTS `rag_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rag_config` (
  `id` varchar(48) NOT NULL,
  `default_group_id` varchar(48) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `output_dir` varchar(255) DEFAULT NULL,
  `cache_dir` varchar(255) NOT NULL,
  `template_dir` varchar(255) DEFAULT NULL,
  `main_page` varchar(255) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_email` varchar(255) NOT NULL,
  `group_page` varchar(255) DEFAULT NULL,
  `proxy_host` varchar(255) DEFAULT NULL,
  `proxy_port` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rag_config`
--

LOCK TABLES `rag_config` WRITE;
/*!40000 ALTER TABLE `rag_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `rag_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rag_entry`
--

DROP TABLE IF EXISTS `rag_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rag_entry` (
  `id` varchar(48) NOT NULL,
  `subscription_id` varchar(48) NOT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `guid` varchar(255) DEFAULT NULL,
  `permalink` text NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `categories` text,
  `published` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rage_sid_idx` (`subscription_id`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rag_entry`
--

LOCK TABLES `rag_entry` WRITE;
/*!40000 ALTER TABLE `rag_entry` DISABLE KEYS */;
/*!40000 ALTER TABLE `rag_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rag_group`
--

DROP TABLE IF EXISTS `rag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rag_group` (
  `id` varchar(48) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `cat_restriction` text,
  `group_page` varchar(255) DEFAULT NULL,
  `max_page_entries` int(11) DEFAULT '30',
  `max_feed_entries` int(11) DEFAULT '30',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ragg_handle_uq` (`handle`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rag_group`
--

LOCK TABLES `rag_group` WRITE;
/*!40000 ALTER TABLE `rag_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `rag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rag_group_subscription`
--

DROP TABLE IF EXISTS `rag_group_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rag_group_subscription` (
  `id` varchar(48) NOT NULL,
  `group_id` varchar(48) NOT NULL,
  `subscription_id` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `raggs_gid_idx` (`group_id`(40)),
  KEY `raggs_sid_idx` (`subscription_id`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rag_group_subscription`
--

LOCK TABLES `rag_group_subscription` WRITE;
/*!40000 ALTER TABLE `rag_group_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `rag_group_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rag_subscription`
--

DROP TABLE IF EXISTS `rag_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rag_subscription` (
  `id` varchar(48) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `feed_url` varchar(255) NOT NULL,
  `site_url` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `inbound_links` int(11) DEFAULT '-1',
  `inbound_blogs` int(11) DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rags_feed_url_uq` (`feed_url`(100))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rag_subscription`
--

LOCK TABLES `rag_subscription` WRITE;
/*!40000 ALTER TABLE `rag_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `rag_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referer`
--

DROP TABLE IF EXISTS `referer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referer` (
  `id` varchar(48) NOT NULL,
  `websiteid` varchar(48) NOT NULL,
  `entryid` varchar(48) DEFAULT NULL,
  `datestr` varchar(10) DEFAULT NULL,
  `refurl` varchar(255) NOT NULL,
  `refpermalink` varchar(255) DEFAULT NULL,
  `reftime` datetime DEFAULT NULL,
  `requrl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `excerpt` text,
  `dayhits` int(11) NOT NULL DEFAULT '0',
  `totalhits` int(11) NOT NULL DEFAULT '0',
  `visible` tinyint(1) NOT NULL DEFAULT '0',
  `duplicate` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ref_websiteid_idx` (`websiteid`),
  KEY `ref_entryid_idx` (`entryid`),
  KEY `ref_refurl_idx` (`refurl`(40)),
  KEY `ref_requrl_idx` (`requrl`(40)),
  KEY `ref_datestr_idx` (`datestr`),
  KEY `ref_refpermlnk_idx` (`refpermalink`(40)),
  KEY `ref_duplicate_idx` (`duplicate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referer`
--

LOCK TABLES `referer` WRITE;
/*!40000 ALTER TABLE `referer` DISABLE KEYS */;
INSERT INTO `referer` VALUES ('ff8081813a10a04d013a10ed6de40002','ff80818127d717530127e0bbca3c000a',NULL,NULL,'direct',NULL,NULL,'http://localhost:8080/roller/roller-ui/rendering/page/appsecstreetfighter',NULL,'',12,12,0,0);
/*!40000 ALTER TABLE `referer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roller_audit_log`
--

DROP TABLE IF EXISTS `roller_audit_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roller_audit_log` (
  `id` varchar(48) NOT NULL,
  `user_id` varchar(48) NOT NULL,
  `object_id` varchar(48) DEFAULT NULL,
  `object_class` varchar(255) DEFAULT NULL,
  `comment_text` varchar(255) NOT NULL,
  `change_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roller_audit_log`
--

LOCK TABLES `roller_audit_log` WRITE;
/*!40000 ALTER TABLE `roller_audit_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `roller_audit_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roller_comment`
--

DROP TABLE IF EXISTS `roller_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roller_comment` (
  `id` varchar(48) NOT NULL,
  `entryid` varchar(48) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `content` text,
  `posttime` datetime NOT NULL,
  `spam` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `remotehost` varchar(128) DEFAULT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '1',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `co_entryid_idx` (`entryid`),
  KEY `co_pending_idx` (`pending`),
  KEY `co_approved_idx` (`approved`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roller_comment`
--

LOCK TABLES `roller_comment` WRITE;
/*!40000 ALTER TABLE `roller_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `roller_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roller_properties`
--

DROP TABLE IF EXISTS `roller_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roller_properties` (
  `name` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roller_properties`
--

LOCK TABLES `roller_properties` WRITE;
/*!40000 ALTER TABLE `roller_properties` DISABLE KEYS */;
INSERT INTO `roller_properties` VALUES ('roller.database.version','300'),('users.comments.autoformat','true'),('uploads.types.forbid',''),('site.linkbacks.enabled','false'),('users.comments.enabled','true'),('site.trackbackVerification.enabled','false'),('site.debugMode','false'),('users.comments.escapehtml','false'),('site.absoluteurl',''),('uploads.dir.maxsize','4.00'),('users.comments.emailnotify','false'),('spam.blacklist',''),('site.newsfeeds.styledFeeds','true'),('users.themes.path','/themes'),('site.shortName','Front Page'),('site.description','A default install of the Roller Weblogger open source blog server'),('pings.suspendPingProcessing','false'),('uploads.enabled','true'),('site.adminemail',''),('site.newsfeeds.defaultEntries','50'),('users.editor.pages','editor-text.jsp,editor-rte.jsp'),('users.trackbacks.enabled','true'),('users.registration.url',''),('themes.customtheme.allowed','true'),('site.frontpage.weblog.handle','appsecstreetfighter'),('site.name','Roller Site'),('uploads.file.maxsize','1.00'),('uploads.types.allowed','jpg,jpeg,gif,png'),('users.registration.enabled','true'),('users.moderation.required','false'),('site.newsfeeds.maxEntries','50'),('site.frontpage.weblog.aggregated','false');
/*!40000 ALTER TABLE `roller_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roller_user_permissions`
--

DROP TABLE IF EXISTS `roller_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roller_user_permissions` (
  `id` varchar(48) NOT NULL,
  `website_id` varchar(48) NOT NULL,
  `user_id` varchar(48) NOT NULL,
  `permission_mask` int(11) NOT NULL,
  `pending` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roller_user_permissions`
--

LOCK TABLES `roller_user_permissions` WRITE;
/*!40000 ALTER TABLE `roller_user_permissions` DISABLE KEYS */;
INSERT INTO `roller_user_permissions` VALUES ('ff80818127d717530127e0bbca3d000b','ff80818127d717530127e0bbca3c000a','ff80818127d717530127dc43b15c0007',3,0);
/*!40000 ALTER TABLE `roller_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rollerconfig`
--

DROP TABLE IF EXISTS `rollerconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rollerconfig` (
  `id` varchar(48) NOT NULL,
  `sitedescription` varchar(255) DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `emailaddress` varchar(255) DEFAULT NULL,
  `absoluteurl` varchar(255) DEFAULT NULL,
  `adminusers` varchar(255) DEFAULT NULL,
  `encryptpasswords` tinyint(1) NOT NULL DEFAULT '1',
  `algorithm` varchar(10) DEFAULT NULL,
  `newuserallowed` tinyint(1) NOT NULL DEFAULT '0',
  `editorpages` varchar(255) DEFAULT NULL,
  `userthemes` varchar(255) NOT NULL,
  `indexdir` varchar(255) DEFAULT NULL,
  `memdebug` tinyint(1) NOT NULL DEFAULT '0',
  `autoformatcomments` tinyint(1) NOT NULL DEFAULT '0',
  `escapecommenthtml` tinyint(1) NOT NULL DEFAULT '1',
  `emailcomments` tinyint(1) NOT NULL DEFAULT '0',
  `enableaggregator` tinyint(1) NOT NULL DEFAULT '0',
  `enablelinkback` tinyint(1) NOT NULL DEFAULT '0',
  `rsscachetime` int(11) NOT NULL DEFAULT '3000',
  `rssusecache` tinyint(1) NOT NULL DEFAULT '1',
  `uploadallow` varchar(255) DEFAULT NULL,
  `uploadforbid` varchar(255) DEFAULT NULL,
  `uploadenabled` tinyint(1) NOT NULL DEFAULT '1',
  `uploaddir` varchar(255) NOT NULL,
  `uploadpath` varchar(255) NOT NULL,
  `uploadmaxdirmb` decimal(5,2) NOT NULL DEFAULT '4.00',
  `uploadmaxfilemb` decimal(5,2) NOT NULL DEFAULT '1.50',
  `dbversion` varchar(10) DEFAULT NULL,
  `refspamwords` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rollerconfig`
--

LOCK TABLES `rollerconfig` WRITE;
/*!40000 ALTER TABLE `rollerconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `rollerconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolleruser`
--

DROP TABLE IF EXISTS `rolleruser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolleruser` (
  `id` varchar(48) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passphrase` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `datecreated` datetime NOT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `isenabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ru_username_uq` (`username`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolleruser`
--

LOCK TABLES `rolleruser` WRITE;
/*!40000 ALTER TABLE `rolleruser` DISABLE KEYS */;
INSERT INTO `rolleruser` VALUES ('ff80818127d717530127dc43b15c0007','admin','strongadminpassword','Administrator','admin@example.com','2010-04-08 03:12:56','en_CA','US/Pacific',1),('ff80818127d717530127e0c1c6f60024','frank','iheartjava','Frank Kim','frank@example.com','2010-04-09 00:09:08','en_US','US/Pacific',1),('ff80818127d717530127e0c2a05c0027','jason','ilovethetajmahal','Jason Lam','jason@example.com','2010-04-09 00:10:03','en_US','US/Pacific',1),('ff80818127d717530127e0c3fccb002a','johannes','yourphparebelongtous','Johannes Ullrich','johannes@example.com','2010-04-09 00:11:32','en_US','US/Pacific',1),('ff80818127d717530127e0c4d0e5002d','kevin','imahackerprincess','Kevin Johnson','kevin@example.com','2010-04-09 00:12:27','en_US','US/Pacific',1);
/*!40000 ALTER TABLE `rolleruser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercookie`
--

DROP TABLE IF EXISTS `usercookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercookie` (
  `id` varchar(48) NOT NULL,
  `username` varchar(255) NOT NULL,
  `cookieid` varchar(100) NOT NULL,
  `datecreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uc_username_idx` (`username`(40)),
  KEY `uc_cookieid_idx` (`cookieid`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercookie`
--

LOCK TABLES `usercookie` WRITE;
/*!40000 ALTER TABLE `usercookie` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `id` varchar(48) NOT NULL,
  `rolename` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userid` varchar(48) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ur_userid_idx` (`userid`),
  KEY `ur_username_idx` (`username`(40))
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES ('ff80818127d717530127dc43b1b50008','admin','admin','ff80818127d717530127dc43b15c0007'),('ff80818127d717530127dc43b1b50009','editor','admin','ff80818127d717530127dc43b15c0007'),('ff80818127d717530127e0c1c6f70025','admin','frank','ff80818127d717530127e0c1c6f60024'),('ff80818127d717530127e0c1c6f70026','editor','frank','ff80818127d717530127e0c1c6f60024'),('ff80818127d717530127e0c2a05c0028','editor','jason','ff80818127d717530127e0c2a05c0027'),('ff80818127d717530127e0c2a05c0029','admin','jason','ff80818127d717530127e0c2a05c0027'),('ff80818127d717530127e0c3fccb002b','admin','johannes','ff80818127d717530127e0c3fccb002a'),('ff80818127d717530127e0c3fccc002c','editor','johannes','ff80818127d717530127e0c3fccb002a'),('ff80818127d717530127e0c4d0e6002e','admin','kevin','ff80818127d717530127e0c4d0e5002d'),('ff80818127d717530127e0c4d0e6002f','editor','kevin','ff80818127d717530127e0c4d0e5002d'),('ff80818127e131ee0127edb039af0008','editor','test','ff80818127e131ee0127edb039af0007'),('ff808181292f9c1101292fd077430001','admin','test','ff80818127e131ee0127edb039af0007'),('ff80818128359e280128359f1eee0002','editor','f','ff80818128359e280128359f1ed10001'),('ff808181284583a101288953db710005','editor','test2','ff808181284583a101288953db700004'),('ff808181294c053601294c221bd50002','editor','test','ff808181294c053601294c221bcb0001'),('ff80818138fc8ac50138fc91d8bd0002','editor','test','ff80818138fc8ac50138fc91d8ba0001'),('ff8081813a10a04d013a10cd0d2b0001','admin','test','ff80818138fc8ac50138fc91d8ba0001'),('ff80818140b71fbc0140b722f95b0002','editor','test','ff80818140b71fbc0140b722f9450001');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblogcategory`
--

DROP TABLE IF EXISTS `weblogcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblogcategory` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `websiteid` varchar(48) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wc_websiteid_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblogcategory`
--

LOCK TABLES `weblogcategory` WRITE;
/*!40000 ALTER TABLE `weblogcategory` DISABLE KEYS */;
INSERT INTO `weblogcategory` VALUES ('ff80818127d717530127e0bbca3d000c','root','root','ff80818127d717530127e0bbca3c000a',NULL),('ff80818127d717530127e0bbca78000e','General','General','ff80818127d717530127e0bbca3c000a',NULL),('ff80818127d717530127e0bbcad50012','Java','Java','ff80818127d717530127e0bbca3c000a',NULL),('ff80818127e0dc1e0127e0dead4f0001','Top25','Top 25 Most Dangerous Programming Errors','ff80818127d717530127e0bbca3c000a','');
/*!40000 ALTER TABLE `weblogcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblogcategoryassoc`
--

DROP TABLE IF EXISTS `weblogcategoryassoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblogcategoryassoc` (
  `id` varchar(48) NOT NULL,
  `categoryid` varchar(48) NOT NULL,
  `ancestorid` varchar(40) DEFAULT NULL,
  `relation` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wca_categoryid_idx` (`categoryid`),
  KEY `wca_ancestorid_idx` (`ancestorid`),
  KEY `wca_relation_idx` (`relation`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblogcategoryassoc`
--

LOCK TABLES `weblogcategoryassoc` WRITE;
/*!40000 ALTER TABLE `weblogcategoryassoc` DISABLE KEYS */;
INSERT INTO `weblogcategoryassoc` VALUES ('ff80818127d717530127e0bbca3d000d','ff80818127d717530127e0bbca3d000c',NULL,'PARENT'),('ff80818127d717530127e0bbca78000f','ff80818127d717530127e0bbca78000e','ff80818127d717530127e0bbca3d000c','PARENT'),('ff80818127d717530127e0bbcad60013','ff80818127d717530127e0bbcad50012','ff80818127d717530127e0bbca3d000c','PARENT'),('ff80818127e0dc1e0127e0dead530002','ff80818127e0dc1e0127e0dead4f0001','ff80818127d717530127e0bbca3d000c','PARENT');
/*!40000 ALTER TABLE `weblogcategoryassoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weblogentry`
--

DROP TABLE IF EXISTS `weblogentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weblogentry` (
  `id` varchar(48) NOT NULL,
  `userid` varchar(48) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `pubtime` datetime DEFAULT NULL,
  `updatetime` datetime NOT NULL,
  `websiteid` varchar(48) NOT NULL,
  `categoryid` varchar(48) NOT NULL,
  `publishentry` tinyint(1) NOT NULL DEFAULT '1',
  `link` varchar(255) DEFAULT NULL,
  `plugins` varchar(255) DEFAULT NULL,
  `allowcomments` tinyint(1) NOT NULL DEFAULT '0',
  `commentdays` int(11) NOT NULL DEFAULT '7',
  `rightToLeft` tinyint(1) NOT NULL DEFAULT '0',
  `pinnedtomain` tinyint(1) NOT NULL DEFAULT '0',
  `locale` varchar(20) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `summary` text,
  `content_type` varchar(48) DEFAULT NULL,
  `content_src` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `we_websiteid_idx` (`websiteid`),
  KEY `we_categoryid_idx` (`categoryid`),
  KEY `we_pubtime_idx` (`pubtime`,`publishentry`,`websiteid`),
  KEY `we_pinnedtom_idx` (`pinnedtomain`),
  KEY `we_pubentry_idx` (`publishentry`),
  KEY `we_userid_idx` (`userid`),
  KEY `we_status_idx` (`status`),
  KEY `we_locale_idx` (`locale`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weblogentry`
--

LOCK TABLES `weblogentry` WRITE;
/*!40000 ALTER TABLE `weblogentry` DISABLE KEYS */;
INSERT INTO `weblogentry` VALUES ('ff80818127e0dc1e0127e0e6132a0003','ff80818127d717530127e0c2a05c0027','20100408','Top 25 - Rank 1 - Cross-Site Scripting (XSS)','<p>My honor to kick off with the first programming error on the <a href=\"http://cwe.mitre.org/top25/\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://cwe.mitre.org/top25/\');\">Top 25 list</a>. Ranked number 1 on the list is the Cross Site Scripting issue.</p>\r\n<p><a href=\"http://cwe.mitre.org/top25/#CWE-79\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://cwe.mitre.org/top25/#CWE-79\');\">Cross Site Scripting</a> like many other Web security problems is caused by simple flaws related to user input but the potential attack scenarios can be diverse and the fix is not easy. The fundamental flaw of Cross Site Scripting is malicious user input got sent from the server to the victim&#8217;s browser, all within the HTTP response that the browser is ready to &#8220;render&#8221; on screen for the user. The browser cannot distinguish between the real site content and user input that actually &#8220;means something malicious&#8221;. The malicious code gets &#8220;rendered&#8221; by the browser as HTML or scripting command while it should just be a plain looking text string on the screen.</p>\r\n\r\n<p>One often ignored fact in Web security, if I control your browser, I win. By injecting malicious content to the victim&#8217;s browser, an attacker  can effectively use the awesome power of Javascript to alter content of the current page or redirect the user else where on the Web.</p>\r\n<p>Imagine a log in page where the user can type in user name and password. When you type in user name &#8220;Jason&#8221; and a password then press enter, the website might respond with &#8220;Invalid login information &#8211; username: Jason&#8221;. Now, think maliciously for a sec, what if the input is &lt;img src=&#8221;http://sans.org/evil.jpg&#8221;&gt;? When the login error message get displayed, the message becomes &#8220;Invalid login information &#8211; username: &lt;img src=&#8221;http://sans.org/evil.jpg&#8221;&gt;&#8221; The &lt;img&gt; tag gets rendered (or executed) by the browser and this is how cross site scripting works. In specific, this is a reflected cross site scripting attack.</p>\r\n\r\n<p>There are three types of XSS &#8211; <a href=\"http://www.xssed.com/xssinfo#Type_1\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.xssed.com/xssinfo#Type_1\');\">reflected</a>, <a href=\"http://www.xssed.com/xssinfo#Type_2\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.xssed.com/xssinfo#Type_2\');\">persistent</a> and <a href=\"http://www.xssed.com/xssinfo#Type_0\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.xssed.com/xssinfo#Type_0\');\">DOM based</a>. Out of the three types, reflected is the most common.</p>\r\n<p>XSS vulnerabilities are everywhere, the site <a href=\"http://www.xssed.com/\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.xssed.com/\');\">xssed.com</a> documented many of these cases. All the recent major political election campaigns had some <a href=\"http://blog.internetnews.com/skerner/2008/04/hackers-take-from-barack-obama.html\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://blog.internetnews.com/skerner/2008/04/hackers-take-from-barack-obama.html\');\">associated</a> XSS attacks.</p>\r\n\r\n<p>With the vulnerabilities so wide spread, how do we fix it? Just filter out that &lt;&gt; characters? Nah&#8230; Wrong answer. Effective XSS prevention requires both input validation and output encoding.</p>\r\n<p>Input validation get rid of all the noise and reduce overall security exposure but input validation is hard, so hard that it is impossible to completely filter out XSS. Check into <a href=\"http://ha.ckers.org/xss.html\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://ha.ckers.org/xss.html\');\">XSS cheat sheet</a> and you will know why. Another thing thats really killing input validation is the increasing sources of information in web applications. With the mashup Web model, you have sources that you don&#8217;t even know you have and absolutely no idea whether they are fully validated or not. Output encoding comes to the rescue. Before output, all those &lt;&gt; and offending characters are mapped to another representation so the browser knows to display them on screen instead of executing them.</p>\r\n<p>Output encoding sounds easy but you need to do it right and do it consistently in order for it to work. As a start, set the page encoding using <a href=\"http://www.w3.org/International/O-charset\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.w3.org/International/O-charset\');\">meta tag</a>, this ensuring the browser is displaying the encoding you intend to deal with. The actual encoding is context specific, you have to do the right encoding for different part of the HTML document. The <a href=\"http://www.owasp.org/index.php/XSS_%28Cross_Site_Scripting%29_Prevention_Cheat_Sheet\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.owasp.org/index.php/XSS_%28Cross_Site_Scripting%29_Prevention_Cheat_Sheet\');\">XSS Prevention Cheat Sheet</a> has detailed instruction on what to do where in the HTML page. Rule #1 and Rule #2 in the cheat sheet will serve you for 95% of the situations but be aware there are 5% of situations where the other rules applies. Various development framework have different functions or API to handle the output encoding process.</p>\r\n\r\n<p>Consistency is another big factor in wining the XSS game. Make sure all developers have the same understanding and preferably use the same common API to deal with this complex output issue. There are projects like <a href=\"http://www.owasp.org/index.php/Category:OWASP_Enterprise_Security_API\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.owasp.org/index.php/Category:OWASP_Enterprise_Security_API\');\">OWASP ESAPI</a> that provide usable API to take the guess work out of the developer&#8217;s hand.</p>\r\n<p>Since one of the most common goal of XS attacks are to steal session cookie. The <a href=\"http://www.owasp.org/index.php/HTTPOnly\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.owasp.org/index.php/HTTPOnly\');\">HTTPOnly</a> cookie flag was developed specifically to cut down on this risk. However, keep in mind that it only cut down on the risk but is <a href=\"http://www.gnucitizen.org/blog/why-httponly-wont-protect-you/\" onclick=\"javascript:pageTracker._trackPageview(\'/outbound/article/http://www.gnucitizen.org/blog/why-httponly-wont-protect-you/\');\">not an all encompassing solution</a>.</p>\r\n<p>Hope you enjoyed reading this post, it&#8217;s a long post but as 1st place in the Top 25 list, I think XSS deserve this much verbiage. We will try to keep the length reasonable for the lower ranking issues. Feedback always welcomed.</p>\r\n\r\n','2010-04-08 21:48:46','2010-04-08 21:50:56','ff80818127d717530127e0bbca3c000a','ff80818127e0dc1e0127e0dead4f0001',1,'','',1,0,0,0,'en_US','PUBLISHED','','',''),('ff80818127e0dc1e0127e0ec8ca20004','ff80818127d717530127e0c3fccb002a','20100409','Top 25 - Rank 13 - PHP File Inclusion','<p>Last year, when we got going with our web honeypot, we quickly found that file PHP file inclusion vulnerabilities are by far the #1 exploit the honeypot was exposed to [1]. In part, this may have been due to us heavily emulating PHP applications. But many of the exploits didn&#8217;t match any of the installed applications and obviously got sent blindly. In another blog post, I recently summarized some of the attacks from our isc.sans.org weblogs, and again untargeted, &#8220;dumb&#8221; remote file inclusion came out ahead. The Top 25 list assigned CWE #98 the rank of 13 [2].</p>\r\n\r\n<p>What is PHP file inclusion about? This is a flaw exploiting the unintended use of a particular dangerous PHP feature. A full fatured programing language, like PHP, typically provides a feature to include additional files. This feature is frequently used to include libraries, headers or other pieces of code common to multiple pages. PHP adds a little twist to this: The file does not have to be local. If a URL is provided, like http://evilexample.com/code.php, the file is included from this bad URL. Vulnerable sample code would look like:</p>\r\n<pre>&lt;?php\r\ninclude($_GET[\'site\']);\r\n?&gt;</pre>\r\n<p>Code like this may be seen in an application that allows the inclusion of different configuration or header files, depending on the context in which the application is use. Obviously, if this data is not validated, a remote URL may be specified and code located at the remote URL will be executed.</p>\r\n<p>Simple remote file execution like this is pretty easily avoided by turning of the &#8220;allow_url_fopen&#8221; and &#8220;allow_url_include&#8221; feature. But carefull: Depending on your version of PHP, the &#8220;ftp://&#8221; url may still work, and other special prefixes like &#8220;php:&#8221; will not be affected.</p>\r\n\r\n<p>Even if remote inclusion is prevented by the server configuration, there is still a change that local inclusion will happen. For example, the malicious user could specify a configuration file to be included.</p>\r\n<p>Which brings us back to our main defense: Input validation. Include files have to be carefully validated. Best: During the application design ensure that simple file names are used that are easy to validate. Maybe only a list of specific file names is allowed, or file names have to be alphanumeric.</p>\r\n<p>Specifying the extension is of little use. For example, if the include statement reads:</p>\r\n<p>include($_GET[\'file\'].&#8221;.php&#8221;);</p>\r\n<p>A value ending in %00 will cause the extension to be discarded. url.php?file=/etc/password%00 may still work in this case.</p>\r\n<p>[1] http://isc.sans.org/weblogs<br />\r\n[2] http://cwe.mitre.org/data/definitions/98.html</p>\r\n','2010-04-09 00:00:00','2010-04-08 21:55:51','ff80818127d717530127e0bbca3c000a','ff80818127e0dc1e0127e0dead4f0001',1,'','',1,0,0,0,'en_US','PUBLISHED','','',''),('ff80818127e0dc1e0127f5890bad0005','ff80818127d717530127e0c1c6f60024','20100412','Top 25 - Rank 2 - SQL Injection','<p>Item #2 in this year\'s Top 25 is CWE-89 [1].  It is officially called Improper Sanitization of Special Elements used in an SQL Command (&#8216;SQL Injection&#8217;).</p>\r\n<p>There are many public examples that show the devastating impact that SQL Injection can have including the Mass SQL Injection attacks that began in 2008 [2,3,4] as well as the recent SQL Injection vulnerability in RockYou that led to the disclosure of 32 million plaintext passwords [5,6].</p>\r\n\r\n<p>SQL Injection occurs when your SQL statements are created dynamically without appropriate encoding or escaping.  Despite its prevalence, SQL Injection is very easy to address at a code level.  One of the best ways to prevent SQL Injection is to make sure that you use parameterized queries correctly.  This post uses Java for illustration purposes.  The <code>PreparedStatement</code> class is Java\'s implementation of a parameterized query.  You can use it in the following manner to prevent SQL Injection:</p>\r\n<p><code>// GOOD code that prevents SQL Injection<br />\r\nString query = \"SELECT id FROM users WHERE userid = ?\";<br />\r\nPreparedStatement stmt = con.prepareStatement(query);<br />\r\nstmt.setString(1, userid);<br />\r\nResultSet rs = stmt.executeQuery();</code></p>\r\n<p>However, it is important to keep in mind that a <code>PreparedStatement</code> can still be used incorrectly.  The following code creates a SQL statement using string concatenation and does not use bind variables.</p>\r\n\r\n<p><code>// BAD code that is still vulnerable to SQL Injection<br />\r\nString query = \"SELECT id FROM users WHERE userid = \'\" + userid + \"\'\";<br />\r\nPreparedStatement stmt = con.prepareStatement(query);<br />\r\nResultSet rs = stmt.executeQuery();</code></p>\r\n<p>Additionally, to ensure that the <code>PreparedStatement</code> class prevents SQL Injection, you must be using a correctly implemented JDBC driver.  A buggy driver can negate the benefits of correctly using a <code>PreparedStatement</code>.  Fortunately, I don&#8217;t know of any such bugs in the major JDBC drivers that are being used but would love to hear about it if you have.</p>\r\n<p>In some special cases you may not want to use a <code>PreparedStatement</code> at all.  In those cases you can manually encode the input for your specific database.  Fortunately, ESAPI [7] provides an <code>encodeForSQL</code> method in the <code>Encoder</code> class that can be used for just this purpose.  However, <code>PreparedStatement</code>s are the preferred approach since manually doing this encoding may open you up to potential attacks.  Chris Shiflett had a great post about multi-byte characters, character encoding, and escaping for MySQL that still allowed SQL Injection [8].</p>\r\n\r\n<p>If you happen to be using an object/relational mapping tool like Hibernate you must still take care not to create your queries dynamically.  Instead of creating your Hibernate queries using string concatenation you must create them using Hibernate&#8217;s binding syntax (i.e. using a colon like <code>:value</code>).</p>\r\n<p>Stored procedures are also vulnerable to SQL Injection if they are not coded correctly.   In Java, stored procedures are called using the <code>CallableStatement</code> class.  It may appear that you&#8217;re not creating dynamic queries in your Java code, but if the backend stored procedure code is via an &#8220;execute&#8221; call, then you&#8217;re still vulnerable to SQL Injection.</p>\r\n<p>In addition to writing secure code as we&#8217;ve described you should also limit the privileges that are assigned to the account which is being used to connect to the database.  You can even do all your database access from stored procedures and only grant your application database account access only to these stored procedures.  That way, an attacker will only ever have access to call the stored procedures themselves.  However, in many large organizations DBAs control stored procedure code and it may not be convenient for developers who are in a separate organization to depend on an external party to maintain their database queries.</p>\r\n\r\n<p>[1] http://cwe.mitre.org/top25/#CWE-89<br />\r\n[2] http://blogs.zdnet.com/security/?p=1059<br />\r\n[3] http://securitylabs.websense.com/content/Alerts/3070.aspx<br />\r\n[4] http://www.f-secure.com/weblog/archives/00001427.html<br />\r\n[5] http://www.techcrunch.com/2009/12/14/rockyou-hacked/<br />\r\n[6] http://www.techcrunch.com/2009/12/14/rockyou-hack-security-myspace-facebook-passwords/<br />\r\n[7] http://www.owasp.org/index.php/Category:OWASP_Enterprise_Security_API<br />\r\n[8] http://shiflett.org/blog/2006/jan/addslashes-versus-mysql-real-escape-string</p>\r\n','2010-04-12 00:00:00','2010-04-08 22:27:02','ff80818127d717530127e0bbca3c000a','ff80818127e0dc1e0127e0dead4f0001',1,'','',1,0,0,0,'en_US','PUBLISHED','','','');
/*!40000 ALTER TABLE `weblogentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webpage`
--

DROP TABLE IF EXISTS `webpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webpage` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `websiteid` varchar(48) NOT NULL,
  `template` text NOT NULL,
  `updatetime` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `navbar` tinyint(1) NOT NULL DEFAULT '0',
  `templatelang` varchar(20) NOT NULL,
  `decorator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wp_name_idx` (`name`(40)),
  KEY `wp_link_idx` (`link`(40)),
  KEY `wp_id_idx` (`websiteid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webpage`
--

LOCK TABLES `webpage` WRITE;
/*!40000 ALTER TABLE `webpage` DISABLE KEYS */;
INSERT INTO `webpage` VALUES ('ff80818127e0dc1e0127f58c63660008','Weblog','Weblog','Weblog','ff80818127d717530127e0bbca3c000a','<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n<html>\r\n<head>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n    <title>$model.weblog.name : $model.weblogPage.name</title>\r\n    #showAutodiscoveryLinks($model.weblog)\r\n    <style type=\"text/css\">#includeTemplate($model.weblog \"_css\")</style>\r\n</head>\r\n<body>\r\n\r\n<div class=\"content_wrapper\">\r\n  <div class=\"content\">\r\n    <h1 class=\"weblogName\">$utils.escapeHTML($model.weblog.name)</h1>\r\n\r\n        <center>\r\n        #set($rootCategory = $model.weblog.getWeblogCategory(\"nil\"))\r\n        #showWeblogCategoryLinksList($rootCategory false false)\r\n        </center>\r\n\r\n        #set($pager = $model.getWeblogEntriesPager()) \r\n        <div class=\"next-previous\">\r\n            #if ($model.results)\r\n                #showWeblogSearchAgainForm($model.weblog)\r\n                #showNextPrevSearchControl($pager)\r\n            #else\r\n                #showNextPrevEntriesControl($pager)\r\n            #end\r\n        </div>\r\n\r\n        #showWeblogEntriesPager($pager)\r\n\r\n        #if ($model.permalink)\r\n           #showWeblogEntryComments($entry)\r\n           #showWeblogEntryCommentForm($entry)\r\n        #end\r\n\r\n  </div>\r\n</div>\r\n\r\n<div class=\"rightbar_wrapper\">\r\n  <div class=\"rightbar\">\r\n    <h2>Calendar</h2>\r\n    <div class=\"sidebar\">\r\n    #showWeblogEntryCalendar($model.weblog \"nil\")\r\n    </div>\r\n\r\n    <h2>Feeds</h2>\r\n    <div class=\"sidebar\">\r\n    #showAtomFeedsList($model.weblog)\r\n    </div>\r\n\r\n    <h2>Search</h2>\r\n    <div class=\"sidebar\">\r\n    #showWeblogSearchForm($model.weblog false)\r\n    </div>\r\n\r\n    <h2>Links</h2>\r\n    <div class=\"sidebar\">\r\n    #set($rootFolder = $model.weblog.getBookmarkFolder(\"/\"))\r\n    #showBookmarkLinksList($rootFolder false false) \r\n    </div>\r\n\r\n    <h2>Navigation</h2>\r\n    <div class=\"sidebar\">\r\n    #showPageMenu($model.weblog)\r\n    #showAuthorMenu(true)\r\n    </div>\r\n\r\n    <h2>Referers</h2>\r\n    <div class=\"sidebar\">\r\n    #set($refs = $model.weblog.getTodaysReferrers())\r\n    #showReferrersList($refs 30 20)\r\n    </div>\r\n  </div>\r\n</div>\r\n\r\n</body>\r\n</html>\r\n\r\n','2010-04-12 22:02:50',0,1,'velocity','_decorator'),('ff80818127e0dc1e0127f58c638e0009','_css','_css','css','ff80818127d717530127e0bbca3c000a','/*-------------------------------------------------------------\nBase styles\n--------------------------------------------------------------*/\n\na {\n  text-decoration: none;\n}\n\na:hover {\n  text-decoration: underline overline;\n}\n\nbody {\n    background: white;\n    font-family:\"Lucida Grande\", lucida, Geneva, Arial, sans-serif;\n}\n\n.img {\n    border: 0px;\n    margin: 0px; \n}\n\n/* entries ----------------------------------------------- */\n\n.entryBox {\n    font-size: 90%;\n}\n.entryTitle {\n    font-weight: bold;\n}\n\n.entryInfo {\n    font-size: 90%;\n    color: #999;\n}\ndiv.dayTitle {\n    font-size: 120%;\n    font-weight:bold;	\n    padding: .5em 0 0 0;\n}\ndiv.next-previous {\n    font-size: 80%;\n    text-align: center;\n    padding: .5em 0 .5em 0;\n\n}\n\n/* category chooser ----------------------------------------------- */\n\n.category-chooser {\n    margin: -50%;\n    width:100%;\n}\n.rCategory li {\n    font-size: 80%;\n    display: inline;\n    list-style-type: none;\n    padding-right: 20px;\n}\nli.selected {\n    font-weight: bold;\n}\n\n/* other lists ----------------------------------------------- */\n\nul.rNavigationBar, ul.rMenu, ul.rFolder, ul.rFeeds, ul.rReferersList, ul.rEntriesList {\n    list-style-type: none;\n    padding: 0;\n    margin: 0;\n    font-size: 80%;\n}\nul.rFeeds li {\n    background-image: url($url.absoluteSite/images/feed-icon-12x12.gif);\n    background-repeat: no-repeat;\n    background-position: 0 .2em; \n    padding-left: 1.4em;\n    line-height: 1.5em;\n}\n\n/* calendar ----------------------------------------------- */\n\n.hCalendarDay{\n    text-align : center;\n    font-size: small;\n}\nth.hCalendarDayNameRow {\n    text-align : center;\n    font-size : small;\n    font-weight : bold;\n}\ntd.hCalendarDayCurrent {\n    text-align : center;\n    font-size  : small;\n    font-weight: bold;\n}\ntd.hCalendarDayLinked {\n    text-align : center;\n    font-size  : small;\n    font-weight: bold;\n}\n\n/* comments ----------------------------------------------- */\n\np.comment-details {\n    font-size: 80%;\n    color: #999;\n}\n.comments-syntax-indicator {\n    font-weight: bold;\n}\n.comments-syntax-indicator span.enabled {\n    background: transparent;\n    color: green;\n    font-style: italic;\n}\n.comments-syntax-indicator span.disabled {\n    background: transparent;\n    color: red;\n    font-style: italic;\n}\n\nform ul{ position: relative; list-style: none; width: 100%; }\nform li{ line-height: 2em; margin: 0; padding: 1px 1px 6px 9px; }\nform li.focused{ background-color: #fff7c0 !important; }\nform li p{ font-size: 9px; line-height: 13px; color: #444; }\nform li{ display: inline-block; }\nform[id] li{ display: block; }\nform li div{ display: inline-block; }\nform[id] li div{ display: inline; }\nform .left{ float: left !important; margin: 0; }\nform .right{ float: right !important; margin: 0; }\nform .clear{ clear: both; } \nform li div p{ margin: 0 0 5px 0; }\nform div.left{ margin-right: 2px !important; }\nform div.left[class]{ margin-right: 4px !important; }\nform div.left img{ margin: 0 0 -2px 0; }\nform h2{ font-size: 1.8em; clear: left; } \nform .info{ display: inline-block; margin: 0 0 10px 0; padding: 0 0 4px 0; border-bottom: 1px dotted #ccc !important;}\nform .info[class]{ display: block; }\nform .info p{ font-size: 1em; line-height: 1.3em; margin: 0 0 8px 0; }\ntextarea.textarea{margin-bottom: 1px;}\ntextarea.textarea[class]{font-family: \"Lucida Grande\", Tahoma, \"Trebuchet MS\", Verdana, sans-serif;}\nselect.select{ padding: 1px 0 0 0; margin: 1px 0 3px 0; }\nselect.select[class]{ margin: 0; padding: 1px 0 1px 0; }\nform .small{ width: 70px; }\nform .medium{ width: 170px; }\nform .large, form textarea.textarea{ width: 340px; }\nform .tags{ width: 320px; }\nform textarea.small{ height: 5.5em; }\nform textarea.medium{ height: 10em; }\nform textarea.large{ height: 20em; }\n.choices input{ width: 200px; margin-right: 3px; }\n.choices ol{ margin: 10px 0 0 0; }\n.choices[class] ol{ margin: 0 !important; }\n.choices img{ margin: 0 0 1px 0; }\nfieldset ol li{ display: list-item !important; margin: 0 5px 2px 3px !important; padding: 0 !important; list-style: inside decimal; }\ninput.button, button { width: 6em; padding: 2px 2px 0 0; /* fix for IE */ }\n/* revert to normal for Firefox */\nli>input.button, li>button, input.button>input.button, button>button { padding: 2px; }\nlabel.desc{\n    margin: 4px 0 3px 0;\n    border: 0;\n    color: #444;\n    font-size: 1em;\n    line-height: 1.3em;\n    display: block;\n    font-weight: bold;\n}\ninput.text, input.number, input.url, input.email, input.password, input.file, \ntextarea.textarea, select.select{\n    font-size: 1.2em;\n    border-top: 1px solid #7c7c7c;\n    border-left: 1px solid #c3c3c3;\n    border-right: 1px solid #c3c3c3;\n    border-bottom: 1px solid #ddd;\n    color: #333;\n}\ninput.text, input.number, input.url, input.email, input.password, input.file{ padding: 2px; }\ninput.currency{ text-align: right; }\ninput.checkbox, input.radio{\n    display: block;\n    line-height: 1.4em;\n    margin: 8px 0 0 3px;\n    width: 13px;\n    height: 13px;\n}\ninput.focus, textarea.focus { background: #ffd; color: #000; }\nlabel.choice{\n    display: block;\n    line-height: 1.4em;\n    margin: -19px 0 0 25px;\n    padding: 4px 0 5px 0;\n    color: #444;\n    width: 80%;\n}\n\n\n/*-------------------------------------------------------------\nBasic theme styles\n--------------------------------------------------------------*/\n\nh1 {\n  font-size:200%;\n  color:#CC9933;\n}\nh2, .comments-head {\n    color:#CC9933;\n    font-size:90%;\n    font-weight:bold;\n    border-bottom:1px dotted #666;\n    text-transform:uppercase;\n    letter-spacing: .2em;  	\n    margin-top: .5em;			\n}\nh1.weblogName {\n    text-align:center;\n}\np.weblogDescription {\n    text-align: center;\n}\ndiv.dayTitle {\n    color:#CC9933;\n    font-size:90%;\n    text-transform:uppercase;\n    border-bottom:1px dotted #666;		\n}\n\n/* layout ----------------------------------------------- */\n\n.content_wrapper {\n    width: 80%;\n    float: left;\n}\n.content {\n    padding: 0em 2em 2em 2em;\n}\n.rightbar_wrapper { \n    width: 20%;\n    float: right;\n}\n','2010-04-12 22:02:50',0,0,'velocity','_decorator'),('ff80818127e0dc1e0127f58c6395000a','_day','_day','day','ff80818127d717530127e0bbca3c000a','<div class=\"dayBox\">\n\n    <div class=\"dayTitle\">\n       $utils.formatDate($day, \"EEEE MMM dd, yyyy\")\n    </div>\n\n    #foreach( $entry in $entries )\n    <div class=\"entryBox\">\n        <a name=\"$utils.encode($entry.anchor)\" id=\"$utils.encode($entry.anchor)\"></a>\n        <p class=\"entryTitle\">$entry.title</p>\n        <p class=\"entryContent\">\n            #if($model.permalink)\n                $entry.displayContent\n            #else\n                $entry.displayContent($url.entry($entry.anchor))\n            #end\n        </p>\n        <p class=\"entryInfo\">\n            Posted at <a href=\"$url.entry($entry.anchor)\">$utils.formatDate($entry.pubTime, \"hh:mma MMM dd, yyyy\")</a>\n            by $entry.creator.fullName in <span class=\"category\">$entry.category.name</span> &nbsp;|&nbsp;\n            #if ($utils.isUserAuthorizedToAuthor($entry.website))\n                <a href=\"$url.editEntry($entry.anchor)\">$text.get(\"macro.weblog.entrypermalink.edit\")</a> &nbsp;|&nbsp;\n            #end\n            #set($commentCount = $entry.commentCount)\n            #if($entry.commentsStillAllowed || $commentCount > 0)  \n                #set($link = \"$url.comments($entry.anchor)\" )\n                <a href=\"$link\" class=\"commentsLink\">$text.get(\"macro.weblog.comments\")[$commentCount]</a>\n            #end\n        </p>\n        #showTrackbackAutodiscovery($entry)\n    </div>\n    #end\n\n</div>\n','2010-04-12 22:02:50',0,0,'velocity','_decorator');
/*!40000 ALTER TABLE `webpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
  `id` varchar(48) NOT NULL,
  `name` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `userid` varchar(48) NOT NULL,
  `defaultpageid` varchar(48) DEFAULT '',
  `weblogdayid` varchar(48) NOT NULL,
  `ignorewords` text,
  `enablebloggerapi` tinyint(1) NOT NULL DEFAULT '0',
  `editorpage` varchar(255) DEFAULT NULL,
  `bloggercatid` varchar(48) DEFAULT NULL,
  `defaultcatid` varchar(48) DEFAULT NULL,
  `allowcomments` tinyint(1) NOT NULL DEFAULT '1',
  `emailcomments` tinyint(1) NOT NULL DEFAULT '0',
  `emailfromaddress` varchar(255) DEFAULT NULL,
  `emailaddress` varchar(255) NOT NULL,
  `editortheme` varchar(255) DEFAULT NULL,
  `locale` varchar(20) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `defaultplugins` varchar(255) DEFAULT NULL,
  `isenabled` tinyint(1) NOT NULL DEFAULT '1',
  `isactive` tinyint(1) NOT NULL DEFAULT '1',
  `datecreated` datetime NOT NULL,
  `blacklist` text,
  `defaultallowcomments` tinyint(1) NOT NULL DEFAULT '1',
  `defaultcommentdays` int(11) NOT NULL DEFAULT '7',
  `commentmod` tinyint(1) NOT NULL DEFAULT '0',
  `displaycnt` int(11) NOT NULL DEFAULT '15',
  `lastmodified` datetime DEFAULT NULL,
  `pagemodels` varchar(255) DEFAULT NULL,
  `enablemultilang` tinyint(1) NOT NULL DEFAULT '0',
  `showalllangs` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ws_handle_uq` (`handle`(40)),
  KEY `ws_userid_idx` (`userid`),
  KEY `ws_isenabled_idx` (`isenabled`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
INSERT INTO `website` VALUES ('ff80818127d717530127e0bbca3c000a','SANS AppSec Street Fighter','appsecstreetfighter','','ff80818127d717530127dc43b15c0007','ff80818127e0dc1e0127f58c63660008','ff80818127e0dc1e0127f58c6395000a',NULL,1,'editor-text.jsp','ff80818127d717530127e0bbca78000e','ff80818127d717530127e0bbca3d000c',1,0,'admin@example.com','admin@example.com','basic','en_US','US/Pacific',NULL,1,1,'2010-04-09 00:02:35',NULL,1,0,0,15,'2010-04-25 08:17:41','',0,1);
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-02 13:30:27
