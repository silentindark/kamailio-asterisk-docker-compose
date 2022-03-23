-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: kamailio
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0ubuntu0.18.04.1
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO,POSTGRESQL' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table "acc"
--

DROP TABLE IF EXISTS "acc";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "acc" (
  "id" int NOT NULL,
  "method" varchar(16) NOT NULL DEFAULT '',
  "from_tag" varchar(128) NOT NULL DEFAULT '',
  "to_tag" varchar(128) NOT NULL DEFAULT '',
  "callid" varchar(255) NOT NULL DEFAULT '',
  "sip_code" varchar(3) NOT NULL DEFAULT '',
  "sip_reason" varchar(128) NOT NULL DEFAULT '',
  "time" timestamp NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "acc"
--

LOCK TABLES "acc" WRITE;
/*!40000 ALTER TABLE "acc" DISABLE KEYS */;
/*!40000 ALTER TABLE "acc" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "acc_cdrs"
--

DROP TABLE IF EXISTS "acc_cdrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "acc_cdrs" (
  "id" int unsigned NOT NULL,
  "start_time" datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  "end_time" datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  "duration" float(10,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "acc_cdrs"
--

LOCK TABLES "acc_cdrs" WRITE;
/*!40000 ALTER TABLE "acc_cdrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "acc_cdrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "active_watchers"
--

DROP TABLE IF EXISTS "active_watchers";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "active_watchers" (
  "id" int unsigned NOT NULL,
  "presentity_uri" varchar(255) NOT NULL,
  "watcher_username" varchar(64) NOT NULL,
  "watcher_domain" varchar(64) NOT NULL,
  "to_user" varchar(64) NOT NULL,
  "to_domain" varchar(64) NOT NULL,
  "event" varchar(64) NOT NULL DEFAULT 'presence',
  "event_id" varchar(64) DEFAULT NULL,
  "to_tag" varchar(128) NOT NULL,
  "from_tag" varchar(128) NOT NULL,
  "callid" varchar(255) NOT NULL,
  "local_cseq" int(11) NOT NULL,
  "remote_cseq" int(11) NOT NULL,
  "contact" varchar(255) NOT NULL,
  "record_route" text,
  "expires" int NOT NULL,
  "status" int NOT NULL DEFAULT '2',
  "reason" varchar(64) DEFAULT NULL,
  "version" int NOT NULL DEFAULT '0',
  "socket_info" varchar(64) NOT NULL,
  "local_contact" varchar(255) NOT NULL,
  "from_user" varchar(64) NOT NULL,
  "from_domain" varchar(64) NOT NULL,
  "updated" int NOT NULL,
  "updated_winfo" int(11) NOT NULL,
  "flags" int NOT NULL DEFAULT '0',
  "user_agent" varchar(255) DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "active_watchers_idx" ("callid","to_tag","from_tag"),
  KEY "active_watchers_expires" ("expires"),
  KEY "active_watchers_pres" ("presentity_uri","event"),
  KEY "updated_idx" ("updated"),
  KEY "updated_winfo_idx" ("updated_winfo","presentity_uri")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "active_watchers"
--

LOCK TABLES "active_watchers" WRITE;
/*!40000 ALTER TABLE "active_watchers" DISABLE KEYS */;
/*!40000 ALTER TABLE "active_watchers" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "address"
--

DROP TABLE IF EXISTS "address";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "address" (
  "id" int(10) unsigned NOT NULL,
  "grp" int(11) unsigned NOT NULL DEFAULT '1',
  "ip_addr" varchar(50) NOT NULL,
  "mask" int(11) NOT NULL DEFAULT '32',
  "port" smallint(5) unsigned NOT NULL DEFAULT '0',
  "tag" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "address"
--

LOCK TABLES "address" WRITE;
/*!40000 ALTER TABLE "address" DISABLE KEYS */;
INSERT INTO "address" VALUES (1,200,'54.186.161.254',32,5060,'Dontest Asterisk');
/*!40000 ALTER TABLE "address" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "aliases"
--

DROP TABLE IF EXISTS "aliases";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "aliases" (
  "id" int(10) unsigned NOT NULL,
  "ruid" varchar(64) NOT NULL DEFAULT '',
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) DEFAULT NULL,
  "contact" varchar(255) NOT NULL DEFAULT '',
  "received" varchar(255) DEFAULT NULL,
  "path" varchar(512) DEFAULT NULL,
  "expires" datetime NOT NULL DEFAULT '2030-05-28 21:32:15',
  "q" float(10,2) NOT NULL DEFAULT '1.00',
  "callid" varchar(255) NOT NULL DEFAULT 'Default-Call-ID',
  "cseq" int(11) NOT NULL DEFAULT '1',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  "flags" int(11) NOT NULL DEFAULT '0',
  "cflags" int(11) NOT NULL DEFAULT '0',
  "user_agent" varchar(255) NOT NULL DEFAULT '',
  "socket" varchar(64) DEFAULT NULL,
  "methods" int(11) DEFAULT NULL,
  "instance" varchar(255) DEFAULT NULL,
  "reg_id" int(11) NOT NULL DEFAULT '0',
  "server_id" int(11) NOT NULL DEFAULT '0',
  "connection_id" int(11) NOT NULL DEFAULT '0',
  "keepalive" int(11) NOT NULL DEFAULT '0',
  "partition" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "ruid_idx" ("ruid"),
  KEY "account_contact_idx" ("username","domain","contact"),
  KEY "expires_idx" ("expires")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "aliases"
--

LOCK TABLES "aliases" WRITE;
/*!40000 ALTER TABLE "aliases" DISABLE KEYS */;
/*!40000 ALTER TABLE "aliases" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "carrier_name"
--

DROP TABLE IF EXISTS "carrier_name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "carrier_name" (
  "id" int(10) unsigned NOT NULL,
  "carrier" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "carrier_name"
--

LOCK TABLES "carrier_name" WRITE;
/*!40000 ALTER TABLE "carrier_name" DISABLE KEYS */;
/*!40000 ALTER TABLE "carrier_name" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "carrierfailureroute"
--

DROP TABLE IF EXISTS "carrierfailureroute";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "carrierfailureroute" (
  "id" int(10) unsigned NOT NULL,
  "carrier" int(10) unsigned NOT NULL DEFAULT '0',
  "domain" int(10) unsigned NOT NULL DEFAULT '0',
  "scan_prefix" varchar(64) NOT NULL DEFAULT '',
  "host_name" varchar(255) NOT NULL DEFAULT '',
  "reply_code" varchar(3) NOT NULL DEFAULT '',
  "flags" int(11) unsigned NOT NULL DEFAULT '0',
  "mask" int(11) unsigned NOT NULL DEFAULT '0',
  "next_domain" int(10) unsigned NOT NULL DEFAULT '0',
  "description" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "carrierfailureroute"
--

LOCK TABLES "carrierfailureroute" WRITE;
/*!40000 ALTER TABLE "carrierfailureroute" DISABLE KEYS */;
/*!40000 ALTER TABLE "carrierfailureroute" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "carrierroute"
--

DROP TABLE IF EXISTS "carrierroute";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "carrierroute" (
  "id" int(10) unsigned NOT NULL,
  "carrier" int(10) unsigned NOT NULL DEFAULT '0',
  "domain" int(10) unsigned NOT NULL DEFAULT '0',
  "scan_prefix" varchar(64) NOT NULL DEFAULT '',
  "flags" int(11) unsigned NOT NULL DEFAULT '0',
  "mask" int(11) unsigned NOT NULL DEFAULT '0',
  "prob" float NOT NULL DEFAULT '0',
  "strip" int(11) unsigned NOT NULL DEFAULT '0',
  "rewrite_host" varchar(255) NOT NULL DEFAULT '',
  "rewrite_prefix" varchar(64) NOT NULL DEFAULT '',
  "rewrite_suffix" varchar(64) NOT NULL DEFAULT '',
  "description" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "carrierroute"
--

LOCK TABLES "carrierroute" WRITE;
/*!40000 ALTER TABLE "carrierroute" DISABLE KEYS */;
/*!40000 ALTER TABLE "carrierroute" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "cpl"
--

DROP TABLE IF EXISTS "cpl";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "cpl" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL DEFAULT '',
  "cpl_xml" text,
  "cpl_bin" text,
  PRIMARY KEY ("id"),
  UNIQUE KEY "account_idx" ("username","domain")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "cpl"
--

LOCK TABLES "cpl" WRITE;
/*!40000 ALTER TABLE "cpl" DISABLE KEYS */;
/*!40000 ALTER TABLE "cpl" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dbaliases"
--

DROP TABLE IF EXISTS "dbaliases";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dbaliases" (
  "id" int(10) unsigned NOT NULL,
  "alias_username" varchar(64) NOT NULL DEFAULT '',
  "alias_domain" varchar(64) NOT NULL DEFAULT '',
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  KEY "alias_user_idx" ("alias_username"),
  KEY "alias_idx" ("alias_username","alias_domain"),
  KEY "target_idx" ("username","domain")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dbaliases"
--

LOCK TABLES "dbaliases" WRITE;
/*!40000 ALTER TABLE "dbaliases" DISABLE KEYS */;
INSERT INTO "dbaliases" VALUES (1,'133','kamailio.twobarrel.com','133','dontest.twobarrels.com');
/*!40000 ALTER TABLE "dbaliases" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dialog"
--

DROP TABLE IF EXISTS "dialog";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dialog" (
  "id" int(10) unsigned NOT NULL,
  "hash_entry" int(10) unsigned NOT NULL,
  "hash_id" int(10) unsigned NOT NULL,
  "callid" varchar(255) NOT NULL,
  "from_uri" varchar(255) NOT NULL,
  "from_tag" varchar(128) NOT NULL,
  "to_uri" varchar(255) NOT NULL,
  "to_tag" varchar(128) NOT NULL,
  "caller_cseq" varchar(20) NOT NULL,
  "callee_cseq" varchar(20) NOT NULL,
  "caller_route_set" varchar(512) DEFAULT NULL,
  "callee_route_set" varchar(512) DEFAULT NULL,
  "caller_contact" varchar(255) NOT NULL,
  "callee_contact" varchar(255) NOT NULL,
  "caller_sock" varchar(64) NOT NULL,
  "callee_sock" varchar(64) NOT NULL,
  "state" int(10) unsigned NOT NULL,
  "start_time" int(10) unsigned NOT NULL,
  "timeout" int(10) unsigned NOT NULL DEFAULT '0',
  "sflags" int(10) unsigned NOT NULL DEFAULT '0',
  "iflags" int(10) unsigned NOT NULL DEFAULT '0',
  "toroute_name" varchar(32) DEFAULT NULL,
  "req_uri" varchar(255) NOT NULL,
  "xdata" varchar(512) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "hash_idx" ("hash_entry","hash_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dialog"
--

LOCK TABLES "dialog" WRITE;
/*!40000 ALTER TABLE "dialog" DISABLE KEYS */;
/*!40000 ALTER TABLE "dialog" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dialog_vars"
--

DROP TABLE IF EXISTS "dialog_vars";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dialog_vars" (
  "id" int(10) unsigned NOT NULL,
  "hash_entry" int(10) unsigned NOT NULL,
  "hash_id" int(10) unsigned NOT NULL,
  "dialog_key" varchar(128) NOT NULL,
  "dialog_value" varchar(512) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "hash_idx" ("hash_entry","hash_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dialog_vars"
--

LOCK TABLES "dialog_vars" WRITE;
/*!40000 ALTER TABLE "dialog_vars" DISABLE KEYS */;
/*!40000 ALTER TABLE "dialog_vars" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dialplan"
--

DROP TABLE IF EXISTS "dialplan";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dialplan" (
  "id" int(10) unsigned NOT NULL,
  "dpid" int(11) NOT NULL,
  "pr" int(11) NOT NULL,
  "match_op" int(11) NOT NULL,
  "match_exp" varchar(64) NOT NULL,
  "match_len" int(11) NOT NULL,
  "subst_exp" varchar(64) NOT NULL,
  "repl_exp" varchar(256) NOT NULL,
  "attrs" varchar(64) NOT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dialplan"
--

LOCK TABLES "dialplan" WRITE;
/*!40000 ALTER TABLE "dialplan" DISABLE KEYS */;
/*!40000 ALTER TABLE "dialplan" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dispatcher"
--

DROP TABLE IF EXISTS "dispatcher";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dispatcher" (
  "id" int(10) unsigned NOT NULL,
  "setid" int(11) NOT NULL DEFAULT '0',
  "destination" varchar(192) NOT NULL DEFAULT '',
  "flags" int(11) NOT NULL DEFAULT '0',
  "priority" int(11) NOT NULL DEFAULT '0',
  "attrs" varchar(128) NOT NULL DEFAULT '',
  "description" varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dispatcher"
--

LOCK TABLES "dispatcher" WRITE;
/*!40000 ALTER TABLE "dispatcher" DISABLE KEYS */;
INSERT INTO "dispatcher" VALUES (1,1,'54.186.161.254:5060',0,0,'','Asterisk Test');
/*!40000 ALTER TABLE "dispatcher" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "domain"
--

DROP TABLE IF EXISTS "domain";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "domain" (
  "id" int(10) unsigned NOT NULL,
  "domain" varchar(64) NOT NULL,
  "did" varchar(64) DEFAULT NULL,
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  UNIQUE KEY "domain_idx" ("domain")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "domain"
--

LOCK TABLES "domain" WRITE;
/*!40000 ALTER TABLE "domain" DISABLE KEYS */;
INSERT INTO "domain" VALUES (1,'kamailio.twobarrel.com','2','1900-01-01 00:00:01');
/*!40000 ALTER TABLE "domain" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "domain_attrs"
--

DROP TABLE IF EXISTS "domain_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "domain_attrs" (
  "id" int(10) unsigned NOT NULL,
  "did" varchar(64) NOT NULL,
  "name" varchar(32) NOT NULL,
  "type" int(10) unsigned NOT NULL,
  "value" varchar(255) NOT NULL,
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  KEY "domain_attrs_idx" ("did","name")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "domain_attrs"
--

LOCK TABLES "domain_attrs" WRITE;
/*!40000 ALTER TABLE "domain_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "domain_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "domain_name"
--

DROP TABLE IF EXISTS "domain_name";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "domain_name" (
  "id" int(10) unsigned NOT NULL,
  "domain" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "domain_name"
--

LOCK TABLES "domain_name" WRITE;
/*!40000 ALTER TABLE "domain_name" DISABLE KEYS */;
/*!40000 ALTER TABLE "domain_name" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "domainpolicy"
--

DROP TABLE IF EXISTS "domainpolicy";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "domainpolicy" (
  "id" int(10) unsigned NOT NULL,
  "rule" varchar(255) NOT NULL,
  "type" varchar(255) NOT NULL,
  "att" varchar(255) DEFAULT NULL,
  "val" varchar(128) DEFAULT NULL,
  "description" varchar(255) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "rav_idx" ("rule","att","val"),
  KEY "rule_idx" ("rule")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "domainpolicy"
--

LOCK TABLES "domainpolicy" WRITE;
/*!40000 ALTER TABLE "domainpolicy" DISABLE KEYS */;
/*!40000 ALTER TABLE "domainpolicy" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dr_gateways"
--

DROP TABLE IF EXISTS "dr_gateways";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dr_gateways" (
  "gwid" int(10) unsigned NOT NULL,
  "type" int(11) unsigned NOT NULL DEFAULT '0',
  "address" varchar(128) NOT NULL,
  "strip" int(11) unsigned NOT NULL DEFAULT '0',
  "pri_prefix" varchar(64) DEFAULT NULL,
  "attrs" varchar(255) DEFAULT NULL,
  "description" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("gwid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dr_gateways"
--

LOCK TABLES "dr_gateways" WRITE;
/*!40000 ALTER TABLE "dr_gateways" DISABLE KEYS */;
/*!40000 ALTER TABLE "dr_gateways" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dr_groups"
--

DROP TABLE IF EXISTS "dr_groups";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dr_groups" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "domain" varchar(128) NOT NULL DEFAULT '',
  "groupid" int(11) unsigned NOT NULL DEFAULT '0',
  "description" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dr_groups"
--

LOCK TABLES "dr_groups" WRITE;
/*!40000 ALTER TABLE "dr_groups" DISABLE KEYS */;
/*!40000 ALTER TABLE "dr_groups" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dr_gw_lists"
--

DROP TABLE IF EXISTS "dr_gw_lists";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dr_gw_lists" (
  "id" int(10) unsigned NOT NULL,
  "gwlist" varchar(255) NOT NULL,
  "description" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dr_gw_lists"
--

LOCK TABLES "dr_gw_lists" WRITE;
/*!40000 ALTER TABLE "dr_gw_lists" DISABLE KEYS */;
/*!40000 ALTER TABLE "dr_gw_lists" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "dr_rules"
--

DROP TABLE IF EXISTS "dr_rules";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "dr_rules" (
  "ruleid" int(10) unsigned NOT NULL,
  "groupid" varchar(255) NOT NULL,
  "prefix" varchar(64) NOT NULL,
  "timerec" varchar(255) NOT NULL,
  "priority" int(11) NOT NULL DEFAULT '0',
  "routeid" varchar(64) NOT NULL,
  "gwlist" varchar(255) NOT NULL,
  "description" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("ruleid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "dr_rules"
--

LOCK TABLES "dr_rules" WRITE;
/*!40000 ALTER TABLE "dr_rules" DISABLE KEYS */;
/*!40000 ALTER TABLE "dr_rules" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "globalblacklist"
--

DROP TABLE IF EXISTS "globalblacklist";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "globalblacklist" (
  "id" int(10) unsigned NOT NULL,
  "prefix" varchar(64) NOT NULL DEFAULT '',
  "whitelist" tinyint(1) NOT NULL DEFAULT '0',
  "description" varchar(255) DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "globalblacklist_idx" ("prefix")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "globalblacklist"
--

LOCK TABLES "globalblacklist" WRITE;
/*!40000 ALTER TABLE "globalblacklist" DISABLE KEYS */;
/*!40000 ALTER TABLE "globalblacklist" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "grp"
--

DROP TABLE IF EXISTS "grp";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "grp" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "grp" varchar(64) NOT NULL DEFAULT '',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  UNIQUE KEY "account_group_idx" ("username","domain","grp")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "grp"
--

LOCK TABLES "grp" WRITE;
/*!40000 ALTER TABLE "grp" DISABLE KEYS */;
/*!40000 ALTER TABLE "grp" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "htable"
--

DROP TABLE IF EXISTS "htable";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "htable" (
  "id" int(10) unsigned NOT NULL,
  "key_name" varchar(64) NOT NULL DEFAULT '',
  "key_type" int(11) NOT NULL DEFAULT '0',
  "value_type" int(11) NOT NULL DEFAULT '0',
  "key_value" varchar(128) NOT NULL DEFAULT '',
  "expires" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "htable"
--

LOCK TABLES "htable" WRITE;
/*!40000 ALTER TABLE "htable" DISABLE KEYS */;
/*!40000 ALTER TABLE "htable" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "imc_members"
--

DROP TABLE IF EXISTS "imc_members";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "imc_members" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL,
  "room" varchar(64) NOT NULL,
  "flag" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "account_room_idx" ("username","domain","room")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "imc_members"
--

LOCK TABLES "imc_members" WRITE;
/*!40000 ALTER TABLE "imc_members" DISABLE KEYS */;
/*!40000 ALTER TABLE "imc_members" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "imc_rooms"
--

DROP TABLE IF EXISTS "imc_rooms";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "imc_rooms" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL,
  "flag" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "name_domain_idx" ("name","domain")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "imc_rooms"
--

LOCK TABLES "imc_rooms" WRITE;
/*!40000 ALTER TABLE "imc_rooms" DISABLE KEYS */;
/*!40000 ALTER TABLE "imc_rooms" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "lcr_gw"
--

DROP TABLE IF EXISTS "lcr_gw";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "lcr_gw" (
  "id" int(10) unsigned NOT NULL,
  "lcr_id" smallint(5) unsigned NOT NULL,
  "gw_name" varchar(128) DEFAULT NULL,
  "ip_addr" varchar(50) DEFAULT NULL,
  "hostname" varchar(64) DEFAULT NULL,
  "port" smallint(5) unsigned DEFAULT NULL,
  "params" varchar(64) DEFAULT NULL,
  "uri_scheme" tinyint(3) unsigned DEFAULT NULL,
  "transport" tinyint(3) unsigned DEFAULT NULL,
  "strip" tinyint(3) unsigned DEFAULT NULL,
  "prefix" varchar(16) DEFAULT NULL,
  "tag" varchar(64) DEFAULT NULL,
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  "defunct" int(10) unsigned DEFAULT NULL,
  PRIMARY KEY ("id"),
  KEY "lcr_id_idx" ("lcr_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "lcr_gw"
--

LOCK TABLES "lcr_gw" WRITE;
/*!40000 ALTER TABLE "lcr_gw" DISABLE KEYS */;
/*!40000 ALTER TABLE "lcr_gw" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "lcr_rule"
--

DROP TABLE IF EXISTS "lcr_rule";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "lcr_rule" (
  "id" int(10) unsigned NOT NULL,
  "lcr_id" smallint(5) unsigned NOT NULL,
  "prefix" varchar(16) DEFAULT NULL,
  "from_uri" varchar(64) DEFAULT NULL,
  "request_uri" varchar(64) DEFAULT NULL,
  "mt_tvalue" varchar(128) DEFAULT NULL,
  "stopper" int(10) unsigned NOT NULL DEFAULT '0',
  "enabled" int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY ("id"),
  UNIQUE KEY "lcr_id_prefix_from_uri_idx" ("lcr_id","prefix","from_uri")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "lcr_rule"
--

LOCK TABLES "lcr_rule" WRITE;
/*!40000 ALTER TABLE "lcr_rule" DISABLE KEYS */;
/*!40000 ALTER TABLE "lcr_rule" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "lcr_rule_target"
--

DROP TABLE IF EXISTS "lcr_rule_target";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "lcr_rule_target" (
  "id" int(10) unsigned NOT NULL,
  "lcr_id" smallint(5) unsigned NOT NULL,
  "rule_id" int(10) unsigned NOT NULL,
  "gw_id" int(10) unsigned NOT NULL,
  "priority" tinyint(3) unsigned NOT NULL,
  "weight" int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY ("id"),
  UNIQUE KEY "rule_id_gw_id_idx" ("rule_id","gw_id"),
  KEY "lcr_id_idx" ("lcr_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "lcr_rule_target"
--

LOCK TABLES "lcr_rule_target" WRITE;
/*!40000 ALTER TABLE "lcr_rule_target" DISABLE KEYS */;
/*!40000 ALTER TABLE "lcr_rule_target" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "location"
--

DROP TABLE IF EXISTS "location";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "location" (
  "id" int(10) unsigned NOT NULL,
  "ruid" varchar(64) NOT NULL DEFAULT '',
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) DEFAULT NULL,
  "contact" varchar(512) NOT NULL DEFAULT '',
  "received" varchar(128) DEFAULT NULL,
  "path" varchar(512) DEFAULT NULL,
  "expires" datetime NOT NULL DEFAULT '2030-05-28 21:32:15',
  "q" float(10,2) NOT NULL DEFAULT '1.00',
  "callid" varchar(255) NOT NULL DEFAULT 'Default-Call-ID',
  "cseq" int(11) NOT NULL DEFAULT '1',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  "flags" int(11) NOT NULL DEFAULT '0',
  "cflags" int(11) NOT NULL DEFAULT '0',
  "user_agent" varchar(255) NOT NULL DEFAULT '',
  "socket" varchar(64) DEFAULT NULL,
  "methods" int(11) DEFAULT NULL,
  "instance" varchar(255) DEFAULT NULL,
  "reg_id" int(11) NOT NULL DEFAULT '0',
  "server_id" int(11) NOT NULL DEFAULT '0',
  "connection_id" int(11) NOT NULL DEFAULT '0',
  "keepalive" int(11) NOT NULL DEFAULT '0',
  "partition" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "ruid_idx" ("ruid"),
  KEY "account_contact_idx" ("username","domain","contact"),
  KEY "expires_idx" ("expires"),
  KEY "connection_idx" ("server_id","connection_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "location"
--

LOCK TABLES "location" WRITE;
/*!40000 ALTER TABLE "location" DISABLE KEYS */;
/*!40000 ALTER TABLE "location" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "location_attrs"
--

DROP TABLE IF EXISTS "location_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "location_attrs" (
  "id" int(10) unsigned NOT NULL,
  "ruid" varchar(64) NOT NULL DEFAULT '',
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) DEFAULT NULL,
  "aname" varchar(64) NOT NULL DEFAULT '',
  "atype" int(11) NOT NULL DEFAULT '0',
  "avalue" varchar(512) NOT NULL DEFAULT '',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  KEY "account_record_idx" ("username","domain","ruid"),
  KEY "last_modified_idx" ("last_modified")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "location_attrs"
--

LOCK TABLES "location_attrs" WRITE;
/*!40000 ALTER TABLE "location_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "location_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "missed_calls"
--

DROP TABLE IF EXISTS "missed_calls";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "missed_calls" (
  "id" int(10) unsigned NOT NULL,
  "method" varchar(16) NOT NULL DEFAULT '',
  "from_tag" varchar(128) NOT NULL DEFAULT '',
  "to_tag" varchar(128) NOT NULL DEFAULT '',
  "callid" varchar(255) NOT NULL DEFAULT '',
  "sip_code" varchar(3) NOT NULL DEFAULT '',
  "sip_reason" varchar(128) NOT NULL DEFAULT '',
  "time" datetime NOT NULL,
  PRIMARY KEY ("id"),
  KEY "callid_idx" ("callid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "missed_calls"
--

LOCK TABLES "missed_calls" WRITE;
/*!40000 ALTER TABLE "missed_calls" DISABLE KEYS */;
/*!40000 ALTER TABLE "missed_calls" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "mohqcalls"
--

DROP TABLE IF EXISTS "mohqcalls";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "mohqcalls" (
  "id" int(10) unsigned NOT NULL,
  "mohq_id" int(10) unsigned NOT NULL,
  "call_id" varchar(100) NOT NULL,
  "call_status" int(10) unsigned NOT NULL,
  "call_from" varchar(100) NOT NULL,
  "call_contact" varchar(100) DEFAULT NULL,
  "call_time" datetime NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "mohqcalls_idx" ("call_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "mohqcalls"
--

LOCK TABLES "mohqcalls" WRITE;
/*!40000 ALTER TABLE "mohqcalls" DISABLE KEYS */;
/*!40000 ALTER TABLE "mohqcalls" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "mohqueues"
--

DROP TABLE IF EXISTS "mohqueues";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "mohqueues" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(25) NOT NULL,
  "uri" varchar(100) NOT NULL,
  "mohdir" varchar(100) DEFAULT NULL,
  "mohfile" varchar(100) NOT NULL,
  "debug" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "mohqueue_uri_idx" ("uri"),
  UNIQUE KEY "mohqueue_name_idx" ("name")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "mohqueues"
--

LOCK TABLES "mohqueues" WRITE;
/*!40000 ALTER TABLE "mohqueues" DISABLE KEYS */;
/*!40000 ALTER TABLE "mohqueues" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "mtree"
--

DROP TABLE IF EXISTS "mtree";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "mtree" (
  "id" int(10) unsigned NOT NULL,
  "tprefix" varchar(32) NOT NULL DEFAULT '',
  "tvalue" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "tprefix_idx" ("tprefix")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "mtree"
--

LOCK TABLES "mtree" WRITE;
/*!40000 ALTER TABLE "mtree" DISABLE KEYS */;
/*!40000 ALTER TABLE "mtree" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "mtrees"
--

DROP TABLE IF EXISTS "mtrees";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "mtrees" (
  "id" int(10) unsigned NOT NULL,
  "tname" varchar(128) NOT NULL DEFAULT '',
  "tprefix" varchar(32) NOT NULL DEFAULT '',
  "tvalue" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "tname_tprefix_tvalue_idx" ("tname","tprefix","tvalue")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "mtrees"
--

LOCK TABLES "mtrees" WRITE;
/*!40000 ALTER TABLE "mtrees" DISABLE KEYS */;
/*!40000 ALTER TABLE "mtrees" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "pdt"
--

DROP TABLE IF EXISTS "pdt";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "pdt" (
  "id" int(10) unsigned NOT NULL,
  "sdomain" varchar(255) NOT NULL,
  "prefix" varchar(32) NOT NULL,
  "domain" varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "sdomain_prefix_idx" ("sdomain","prefix")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "pdt"
--

LOCK TABLES "pdt" WRITE;
/*!40000 ALTER TABLE "pdt" DISABLE KEYS */;
/*!40000 ALTER TABLE "pdt" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "pl_pipes"
--

DROP TABLE IF EXISTS "pl_pipes";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "pl_pipes" (
  "id" int(10) unsigned NOT NULL,
  "pipeid" varchar(64) NOT NULL DEFAULT '',
  "algorithm" varchar(32) NOT NULL DEFAULT '',
  "plimit" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "pl_pipes"
--

LOCK TABLES "pl_pipes" WRITE;
/*!40000 ALTER TABLE "pl_pipes" DISABLE KEYS */;
/*!40000 ALTER TABLE "pl_pipes" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "presentity"
--

DROP TABLE IF EXISTS "presentity";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "presentity" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL,
  "event" varchar(64) NOT NULL,
  "etag" varchar(128) NOT NULL,
  "expires" int(11) NOT NULL,
  "received_time" int(11) NOT NULL,
  "body" blob NOT NULL,
  "sender" varchar(255) NOT NULL,
  "priority" int(11) NOT NULL DEFAULT '0',
  "ruid" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "presentity_idx" ("username","domain","event","etag"),
  UNIQUE KEY "ruid_idx" ("ruid"),
  KEY "presentity_expires" ("expires"),
  KEY "account_idx" ("username","domain","event")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "presentity"
--

LOCK TABLES "presentity" WRITE;
/*!40000 ALTER TABLE "presentity" DISABLE KEYS */;
/*!40000 ALTER TABLE "presentity" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "pua"
--

DROP TABLE IF EXISTS "pua";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "pua" (
  "id" int(10) unsigned NOT NULL,
  "pres_uri" varchar(255) NOT NULL,
  "pres_id" varchar(255) NOT NULL,
  "event" int(11) NOT NULL,
  "expires" int(11) NOT NULL,
  "desired_expires" int(11) NOT NULL,
  "flag" int(11) NOT NULL,
  "etag" varchar(128) NOT NULL,
  "tuple_id" varchar(64) DEFAULT NULL,
  "watcher_uri" varchar(255) NOT NULL,
  "call_id" varchar(255) NOT NULL,
  "to_tag" varchar(128) NOT NULL,
  "from_tag" varchar(128) NOT NULL,
  "cseq" int(11) NOT NULL,
  "record_route" text,
  "contact" varchar(255) NOT NULL,
  "remote_contact" varchar(255) NOT NULL,
  "version" int(11) NOT NULL,
  "extra_headers" text NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "pua_idx" ("etag","tuple_id","call_id","from_tag"),
  KEY "expires_idx" ("expires"),
  KEY "dialog1_idx" ("pres_id","pres_uri"),
  KEY "dialog2_idx" ("call_id","from_tag"),
  KEY "record_idx" ("pres_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "pua"
--

LOCK TABLES "pua" WRITE;
/*!40000 ALTER TABLE "pua" DISABLE KEYS */;
/*!40000 ALTER TABLE "pua" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "purplemap"
--

DROP TABLE IF EXISTS "purplemap";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "purplemap" (
  "id" int(10) unsigned NOT NULL,
  "sip_user" varchar(255) NOT NULL,
  "ext_user" varchar(255) NOT NULL,
  "ext_prot" varchar(16) NOT NULL,
  "ext_pass" varchar(64) DEFAULT NULL,
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "purplemap"
--

LOCK TABLES "purplemap" WRITE;
/*!40000 ALTER TABLE "purplemap" DISABLE KEYS */;
/*!40000 ALTER TABLE "purplemap" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "re_grp"
--

DROP TABLE IF EXISTS "re_grp";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "re_grp" (
  "id" int(10) unsigned NOT NULL,
  "reg_exp" varchar(128) NOT NULL DEFAULT '',
  "group_id" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  KEY "group_idx" ("group_id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "re_grp"
--

LOCK TABLES "re_grp" WRITE;
/*!40000 ALTER TABLE "re_grp" DISABLE KEYS */;
/*!40000 ALTER TABLE "re_grp" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "rls_presentity"
--

DROP TABLE IF EXISTS "rls_presentity";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "rls_presentity" (
  "id" int(10) unsigned NOT NULL,
  "rlsubs_did" varchar(255) NOT NULL,
  "resource_uri" varchar(255) NOT NULL,
  "content_type" varchar(255) NOT NULL,
  "presence_state" blob NOT NULL,
  "expires" int(11) NOT NULL,
  "updated" int(11) NOT NULL,
  "auth_state" int(11) NOT NULL,
  "reason" varchar(64) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "rls_presentity_idx" ("rlsubs_did","resource_uri"),
  KEY "rlsubs_idx" ("rlsubs_did"),
  KEY "updated_idx" ("updated"),
  KEY "expires_idx" ("expires")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "rls_presentity"
--

LOCK TABLES "rls_presentity" WRITE;
/*!40000 ALTER TABLE "rls_presentity" DISABLE KEYS */;
/*!40000 ALTER TABLE "rls_presentity" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "rls_watchers"
--

DROP TABLE IF EXISTS "rls_watchers";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "rls_watchers" (
  "id" int(10) unsigned NOT NULL,
  "presentity_uri" varchar(255) NOT NULL,
  "to_user" varchar(64) NOT NULL,
  "to_domain" varchar(64) NOT NULL,
  "watcher_username" varchar(64) NOT NULL,
  "watcher_domain" varchar(64) NOT NULL,
  "event" varchar(64) NOT NULL DEFAULT 'presence',
  "event_id" varchar(64) DEFAULT NULL,
  "to_tag" varchar(128) NOT NULL,
  "from_tag" varchar(128) NOT NULL,
  "callid" varchar(255) NOT NULL,
  "local_cseq" int(11) NOT NULL,
  "remote_cseq" int(11) NOT NULL,
  "contact" varchar(255) NOT NULL,
  "record_route" text,
  "expires" int(11) NOT NULL,
  "status" int(11) NOT NULL DEFAULT '2',
  "reason" varchar(64) NOT NULL,
  "version" int(11) NOT NULL DEFAULT '0',
  "socket_info" varchar(64) NOT NULL,
  "local_contact" varchar(255) NOT NULL,
  "from_user" varchar(64) NOT NULL,
  "from_domain" varchar(64) NOT NULL,
  "updated" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "rls_watcher_idx" ("callid","to_tag","from_tag"),
  KEY "rls_watchers_update" ("watcher_username","watcher_domain","event"),
  KEY "rls_watchers_expires" ("expires"),
  KEY "updated_idx" ("updated")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "rls_watchers"
--

LOCK TABLES "rls_watchers" WRITE;
/*!40000 ALTER TABLE "rls_watchers" DISABLE KEYS */;
/*!40000 ALTER TABLE "rls_watchers" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "rtpengine"
--

DROP TABLE IF EXISTS "rtpengine";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "rtpengine" (
  "id" int(10) unsigned NOT NULL,
  "setid" int(10) unsigned NOT NULL DEFAULT '0',
  "url" varchar(64) NOT NULL,
  "weight" int(10) unsigned NOT NULL DEFAULT '1',
  "disabled" int(1) NOT NULL DEFAULT '0',
  "stamp" datetime NOT NULL DEFAULT '1900-01-01 00:00:01',
  PRIMARY KEY ("id"),
  UNIQUE KEY "rtpengine_nodes" ("setid","url")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "rtpengine"
--

LOCK TABLES "rtpengine" WRITE;
/*!40000 ALTER TABLE "rtpengine" DISABLE KEYS */;
/*!40000 ALTER TABLE "rtpengine" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "rtpproxy"
--

DROP TABLE IF EXISTS "rtpproxy";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "rtpproxy" (
  "id" int(10) unsigned NOT NULL,
  "setid" varchar(32) NOT NULL DEFAULT '0',
  "url" varchar(64) NOT NULL DEFAULT '',
  "flags" int(11) NOT NULL DEFAULT '0',
  "weight" int(11) NOT NULL DEFAULT '1',
  "description" varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY ("id")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "rtpproxy"
--

LOCK TABLES "rtpproxy" WRITE;
/*!40000 ALTER TABLE "rtpproxy" DISABLE KEYS */;
/*!40000 ALTER TABLE "rtpproxy" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "sca_subscriptions"
--

DROP TABLE IF EXISTS "sca_subscriptions";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "sca_subscriptions" (
  "id" int(10) unsigned NOT NULL,
  "subscriber" varchar(255) NOT NULL,
  "aor" varchar(255) NOT NULL,
  "event" int(11) NOT NULL DEFAULT '0',
  "expires" int(11) NOT NULL DEFAULT '0',
  "state" int(11) NOT NULL DEFAULT '0',
  "app_idx" int(11) NOT NULL DEFAULT '0',
  "call_id" varchar(255) NOT NULL,
  "from_tag" varchar(128) NOT NULL,
  "to_tag" varchar(128) NOT NULL,
  "record_route" text,
  "notify_cseq" int(11) NOT NULL,
  "subscribe_cseq" int(11) NOT NULL,
  "server_id" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "sca_subscriptions_idx" ("subscriber","call_id","from_tag","to_tag"),
  KEY "sca_expires_idx" ("server_id","expires"),
  KEY "sca_subscribers_idx" ("subscriber","event")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "sca_subscriptions"
--

LOCK TABLES "sca_subscriptions" WRITE;
/*!40000 ALTER TABLE "sca_subscriptions" DISABLE KEYS */;
/*!40000 ALTER TABLE "sca_subscriptions" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "secfilter"
--

DROP TABLE IF EXISTS "secfilter";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "secfilter" (
  "id" int(10) unsigned NOT NULL,
  "action" smallint(6) NOT NULL DEFAULT '0',
  "type" smallint(6) NOT NULL DEFAULT '0',
  "data" varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  KEY "secfilter_idx" ("action","type","data")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "secfilter"
--

LOCK TABLES "secfilter" WRITE;
/*!40000 ALTER TABLE "secfilter" DISABLE KEYS */;
/*!40000 ALTER TABLE "secfilter" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "silo"
--

DROP TABLE IF EXISTS "silo";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "silo" (
  "id" int(10) unsigned NOT NULL,
  "src_addr" varchar(255) NOT NULL DEFAULT '',
  "dst_addr" varchar(255) NOT NULL DEFAULT '',
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "inc_time" int(11) NOT NULL DEFAULT '0',
  "exp_time" int(11) NOT NULL DEFAULT '0',
  "snd_time" int(11) NOT NULL DEFAULT '0',
  "ctype" varchar(32) NOT NULL DEFAULT 'text/plain',
  "body" blob,
  "extra_hdrs" text,
  "callid" varchar(128) NOT NULL DEFAULT '',
  "status" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  KEY "account_idx" ("username","domain")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "silo"
--

LOCK TABLES "silo" WRITE;
/*!40000 ALTER TABLE "silo" DISABLE KEYS */;
/*!40000 ALTER TABLE "silo" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "sip_trace"
--

DROP TABLE IF EXISTS "sip_trace";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "sip_trace" (
  "id" int(10) unsigned NOT NULL,
  "time_stamp" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  "time_us" int(10) unsigned NOT NULL DEFAULT '0',
  "callid" varchar(255) NOT NULL DEFAULT '',
  "traced_user" varchar(255) NOT NULL DEFAULT '',
  "msg" mediumtext NOT NULL,
  "method" varchar(50) NOT NULL DEFAULT '',
  "status" varchar(255) NOT NULL DEFAULT '',
  "fromip" varchar(50) NOT NULL DEFAULT '',
  "toip" varchar(50) NOT NULL DEFAULT '',
  "fromtag" varchar(128) NOT NULL DEFAULT '',
  "totag" varchar(128) NOT NULL DEFAULT '',
  "direction" varchar(4) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  KEY "traced_user_idx" ("traced_user"),
  KEY "date_idx" ("time_stamp"),
  KEY "fromip_idx" ("fromip"),
  KEY "callid_idx" ("callid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "sip_trace"
--

LOCK TABLES "sip_trace" WRITE;
/*!40000 ALTER TABLE "sip_trace" DISABLE KEYS */;
/*!40000 ALTER TABLE "sip_trace" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "speed_dial"
--

DROP TABLE IF EXISTS "speed_dial";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "speed_dial" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "sd_username" varchar(64) NOT NULL DEFAULT '',
  "sd_domain" varchar(64) NOT NULL DEFAULT '',
  "new_uri" varchar(255) NOT NULL DEFAULT '',
  "fname" varchar(64) NOT NULL DEFAULT '',
  "lname" varchar(64) NOT NULL DEFAULT '',
  "description" varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "speed_dial_idx" ("username","domain","sd_domain","sd_username")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "speed_dial"
--

LOCK TABLES "speed_dial" WRITE;
/*!40000 ALTER TABLE "speed_dial" DISABLE KEYS */;
/*!40000 ALTER TABLE "speed_dial" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "subscriber"
--

DROP TABLE IF EXISTS "subscriber";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "subscriber" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "password" varchar(64) NOT NULL DEFAULT '',
  "ha1" varchar(128) NOT NULL DEFAULT '',
  "ha1b" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "account_idx" ("username","domain"),
  KEY "username_idx" ("username")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "subscriber"
--

LOCK TABLES "subscriber" WRITE;
/*!40000 ALTER TABLE "subscriber" DISABLE KEYS */;
INSERT INTO "subscriber" VALUES (1,'79293205','kamailio.twobarrels.com','KPK6eypWHKFd','b06bc5da734c7aca3095d32a16aed58d','2e874d39aa136153f5ee62877f57500a'),(2,'133','kamailio.twobarrels.com','3k6NEvyRB','1b0a64db9ab91618cdeec56518fc3399','7f5e2317598be9c85f732bcc8c607eca'),(3,'700','kamailio.twobarrel.com','3k6NEvyRB','d35a34e12cdc176cc014e6b51f4d9c51','e2a8f9becc1b4d2942a2faac19c4b2f2'),(4,'421','kamailio.twobarrel.com','3k6NEvyRB','b2b6b4e900e5690895db80e35eacfdf3','fda8a23328f5151649a72bbbda3abb55'),(5,'420','kamailio.twobarrel.com','3k6NEvyRB','71c5e6f1bb4bb6d71a01ab09f40b9c62','d0c2e4010329a0d08377ec5c8c320f3f'),(6,'1004','kamailio.twobarrels.com','3k6NEvyRB','b41f5c0c0a4eecfa3022c517f38c2fbf','efb8ab8451ad730a02dbce21b36b1d50');
/*!40000 ALTER TABLE "subscriber" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "topos_d"
--

DROP TABLE IF EXISTS "topos_d";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "topos_d" (
  "id" int(10) unsigned NOT NULL,
  "rectime" datetime NOT NULL,
  "s_method" varchar(64) NOT NULL DEFAULT '',
  "s_cseq" varchar(64) NOT NULL DEFAULT '',
  "a_callid" varchar(255) NOT NULL DEFAULT '',
  "a_uuid" varchar(255) NOT NULL DEFAULT '',
  "b_uuid" varchar(255) NOT NULL DEFAULT '',
  "a_contact" varchar(512) NOT NULL DEFAULT '',
  "b_contact" varchar(512) NOT NULL DEFAULT '',
  "as_contact" varchar(512) NOT NULL DEFAULT '',
  "bs_contact" varchar(512) NOT NULL DEFAULT '',
  "a_tag" varchar(255) NOT NULL DEFAULT '',
  "b_tag" varchar(255) NOT NULL DEFAULT '',
  "a_rr" mediumtext,
  "b_rr" mediumtext,
  "s_rr" mediumtext,
  "iflags" int(10) unsigned NOT NULL DEFAULT '0',
  "a_uri" varchar(255) NOT NULL DEFAULT '',
  "b_uri" varchar(255) NOT NULL DEFAULT '',
  "r_uri" varchar(255) NOT NULL DEFAULT '',
  "a_srcaddr" varchar(128) NOT NULL DEFAULT '',
  "b_srcaddr" varchar(128) NOT NULL DEFAULT '',
  "a_socket" varchar(128) NOT NULL DEFAULT '',
  "b_socket" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  KEY "rectime_idx" ("rectime"),
  KEY "a_callid_idx" ("a_callid"),
  KEY "a_uuid_idx" ("a_uuid"),
  KEY "b_uuid_idx" ("b_uuid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "topos_d"
--

LOCK TABLES "topos_d" WRITE;
/*!40000 ALTER TABLE "topos_d" DISABLE KEYS */;
/*!40000 ALTER TABLE "topos_d" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "topos_t"
--

DROP TABLE IF EXISTS "topos_t";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "topos_t" (
  "id" int(10) unsigned NOT NULL,
  "rectime" datetime NOT NULL,
  "s_method" varchar(64) NOT NULL DEFAULT '',
  "s_cseq" varchar(64) NOT NULL DEFAULT '',
  "a_callid" varchar(255) NOT NULL DEFAULT '',
  "a_uuid" varchar(255) NOT NULL DEFAULT '',
  "b_uuid" varchar(255) NOT NULL DEFAULT '',
  "direction" int(11) NOT NULL DEFAULT '0',
  "x_via" mediumtext,
  "x_vbranch" varchar(255) NOT NULL DEFAULT '',
  "x_rr" mediumtext,
  "y_rr" mediumtext,
  "s_rr" mediumtext,
  "x_uri" varchar(255) NOT NULL DEFAULT '',
  "a_contact" varchar(512) NOT NULL DEFAULT '',
  "b_contact" varchar(512) NOT NULL DEFAULT '',
  "as_contact" varchar(512) NOT NULL DEFAULT '',
  "bs_contact" varchar(512) NOT NULL DEFAULT '',
  "x_tag" varchar(255) NOT NULL DEFAULT '',
  "a_tag" varchar(255) NOT NULL DEFAULT '',
  "b_tag" varchar(255) NOT NULL DEFAULT '',
  "a_srcaddr" varchar(255) NOT NULL DEFAULT '',
  "b_srcaddr" varchar(255) NOT NULL DEFAULT '',
  "a_socket" varchar(128) NOT NULL DEFAULT '',
  "b_socket" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  KEY "rectime_idx" ("rectime"),
  KEY "a_callid_idx" ("a_callid"),
  KEY "x_vbranch_idx" ("x_vbranch"),
  KEY "a_uuid_idx" ("a_uuid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "topos_t"
--

LOCK TABLES "topos_t" WRITE;
/*!40000 ALTER TABLE "topos_t" DISABLE KEYS */;
/*!40000 ALTER TABLE "topos_t" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "trusted"
--

DROP TABLE IF EXISTS "trusted";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "trusted" (
  "id" int(10) unsigned NOT NULL,
  "src_ip" varchar(50) NOT NULL,
  "proto" varchar(4) NOT NULL,
  "from_pattern" varchar(64) DEFAULT NULL,
  "ruri_pattern" varchar(64) DEFAULT NULL,
  "tag" varchar(64) DEFAULT NULL,
  "priority" int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  KEY "peer_idx" ("src_ip")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "trusted"
--

LOCK TABLES "trusted" WRITE;
/*!40000 ALTER TABLE "trusted" DISABLE KEYS */;
/*!40000 ALTER TABLE "trusted" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uacreg"
--

DROP TABLE IF EXISTS "uacreg";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uacreg" (
  "id" int(10) unsigned NOT NULL,
  "l_uuid" varchar(64) NOT NULL DEFAULT '',
  "l_username" varchar(64) NOT NULL DEFAULT '',
  "l_domain" varchar(64) NOT NULL DEFAULT '',
  "r_username" varchar(64) NOT NULL DEFAULT '',
  "r_domain" varchar(64) NOT NULL DEFAULT '',
  "realm" varchar(64) NOT NULL DEFAULT '',
  "auth_username" varchar(64) NOT NULL DEFAULT '',
  "auth_password" varchar(64) NOT NULL DEFAULT '',
  "auth_ha1" varchar(128) NOT NULL DEFAULT '',
  "auth_proxy" varchar(255) NOT NULL DEFAULT '',
  "expires" int(11) NOT NULL DEFAULT '0',
  "flags" int(11) NOT NULL DEFAULT '0',
  "reg_delay" int(11) NOT NULL DEFAULT '0',
  "socket" varchar(128) NOT NULL DEFAULT '',
  PRIMARY KEY ("id"),
  UNIQUE KEY "l_uuid_idx" ("l_uuid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uacreg"
--

LOCK TABLES "uacreg" WRITE;
/*!40000 ALTER TABLE "uacreg" DISABLE KEYS */;
INSERT INTO "uacreg" VALUES (7036,'133','133','172.31.34.157','133','172.31.34.157','asterisk','133','3k6NEvyRB','','sip:172.31.34.157:5060',90,0,0,''),(7125,'700','700','172.31.34.157','700','172.31.34.157','asterisk','700','3k6NEvyRB','','sip:172.31.34.157:5060',90,0,0,'');
/*!40000 ALTER TABLE "uacreg" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_credentials"
--

DROP TABLE IF EXISTS "uid_credentials";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_credentials" (
  "id" int(10) unsigned NOT NULL,
  "auth_username" varchar(64) NOT NULL,
  "did" varchar(64) NOT NULL DEFAULT '_default',
  "realm" varchar(64) NOT NULL,
  "password" varchar(28) NOT NULL DEFAULT '',
  "flags" int(11) NOT NULL DEFAULT '0',
  "ha1" varchar(32) NOT NULL,
  "ha1b" varchar(32) NOT NULL DEFAULT '',
  "uid" varchar(64) NOT NULL,
  PRIMARY KEY ("id"),
  KEY "cred_idx" ("auth_username","did"),
  KEY "uid" ("uid"),
  KEY "did_idx" ("did"),
  KEY "realm_idx" ("realm")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_credentials"
--

LOCK TABLES "uid_credentials" WRITE;
/*!40000 ALTER TABLE "uid_credentials" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_credentials" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_domain"
--

DROP TABLE IF EXISTS "uid_domain";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_domain" (
  "id" int(10) unsigned NOT NULL,
  "did" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL,
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "domain_idx" ("domain"),
  KEY "did_idx" ("did")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_domain"
--

LOCK TABLES "uid_domain" WRITE;
/*!40000 ALTER TABLE "uid_domain" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_domain" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_domain_attrs"
--

DROP TABLE IF EXISTS "uid_domain_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_domain_attrs" (
  "id" int(10) unsigned NOT NULL,
  "did" varchar(64) DEFAULT NULL,
  "name" varchar(32) NOT NULL,
  "type" int(11) NOT NULL DEFAULT '0',
  "value" varchar(128) DEFAULT NULL,
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "domain_attr_idx" ("did","name","value"),
  KEY "domain_did" ("did","flags")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_domain_attrs"
--

LOCK TABLES "uid_domain_attrs" WRITE;
/*!40000 ALTER TABLE "uid_domain_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_domain_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_global_attrs"
--

DROP TABLE IF EXISTS "uid_global_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_global_attrs" (
  "id" int(10) unsigned NOT NULL,
  "name" varchar(32) NOT NULL,
  "type" int(11) NOT NULL DEFAULT '0',
  "value" varchar(128) DEFAULT NULL,
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "global_attrs_idx" ("name","value")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_global_attrs"
--

LOCK TABLES "uid_global_attrs" WRITE;
/*!40000 ALTER TABLE "uid_global_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_global_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_uri"
--

DROP TABLE IF EXISTS "uid_uri";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_uri" (
  "id" int(10) unsigned NOT NULL,
  "uid" varchar(64) NOT NULL,
  "did" varchar(64) NOT NULL,
  "username" varchar(64) NOT NULL,
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  "scheme" varchar(8) NOT NULL DEFAULT 'sip',
  PRIMARY KEY ("id"),
  KEY "uri_idx1" ("username","did","scheme"),
  KEY "uri_uid" ("uid")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_uri"
--

LOCK TABLES "uid_uri" WRITE;
/*!40000 ALTER TABLE "uid_uri" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_uri" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_uri_attrs"
--

DROP TABLE IF EXISTS "uid_uri_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_uri_attrs" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "did" varchar(64) NOT NULL,
  "name" varchar(32) NOT NULL,
  "value" varchar(128) DEFAULT NULL,
  "type" int(11) NOT NULL DEFAULT '0',
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  "scheme" varchar(8) NOT NULL DEFAULT 'sip',
  PRIMARY KEY ("id"),
  UNIQUE KEY "uriattrs_idx" ("username","did","name","value","scheme")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_uri_attrs"
--

LOCK TABLES "uid_uri_attrs" WRITE;
/*!40000 ALTER TABLE "uid_uri_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_uri_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uid_user_attrs"
--

DROP TABLE IF EXISTS "uid_user_attrs";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uid_user_attrs" (
  "id" int(10) unsigned NOT NULL,
  "uid" varchar(64) NOT NULL,
  "name" varchar(32) NOT NULL,
  "value" varchar(128) DEFAULT NULL,
  "type" int(11) NOT NULL DEFAULT '0',
  "flags" int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "userattrs_idx" ("uid","name","value")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uid_user_attrs"
--

LOCK TABLES "uid_user_attrs" WRITE;
/*!40000 ALTER TABLE "uid_user_attrs" DISABLE KEYS */;
/*!40000 ALTER TABLE "uid_user_attrs" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "uri"
--

DROP TABLE IF EXISTS "uri";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "uri" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "uri_user" varchar(64) NOT NULL DEFAULT '',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  UNIQUE KEY "account_idx" ("username","domain","uri_user")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "uri"
--

LOCK TABLES "uri" WRITE;
/*!40000 ALTER TABLE "uri" DISABLE KEYS */;
/*!40000 ALTER TABLE "uri" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "userblacklist"
--

DROP TABLE IF EXISTS "userblacklist";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "userblacklist" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL DEFAULT '',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "prefix" varchar(64) NOT NULL DEFAULT '',
  "whitelist" tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  KEY "userblacklist_idx" ("username","domain","prefix")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "userblacklist"
--

LOCK TABLES "userblacklist" WRITE;
/*!40000 ALTER TABLE "userblacklist" DISABLE KEYS */;
/*!40000 ALTER TABLE "userblacklist" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "usr_preferences"
--

DROP TABLE IF EXISTS "usr_preferences";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "usr_preferences" (
  "id" int(10) unsigned NOT NULL,
  "uuid" varchar(64) NOT NULL DEFAULT '',
  "username" varchar(255) NOT NULL DEFAULT '0',
  "domain" varchar(64) NOT NULL DEFAULT '',
  "attribute" varchar(32) NOT NULL DEFAULT '',
  "type" int(11) NOT NULL DEFAULT '0',
  "value" varchar(128) NOT NULL DEFAULT '',
  "last_modified" datetime NOT NULL DEFAULT '2000-01-01 00:00:01',
  PRIMARY KEY ("id"),
  KEY "ua_idx" ("uuid","attribute"),
  KEY "uda_idx" ("username","domain","attribute")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "usr_preferences"
--

LOCK TABLES "usr_preferences" WRITE;
/*!40000 ALTER TABLE "usr_preferences" DISABLE KEYS */;
/*!40000 ALTER TABLE "usr_preferences" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "version"
--

DROP TABLE IF EXISTS "version";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "version" (
  "id" int(10) unsigned NOT NULL,
  "table_name" varchar(32) NOT NULL,
  "table_version" int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY ("id"),
  UNIQUE KEY "table_name_idx" ("table_name")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "version"
--

LOCK TABLES "version" WRITE;
/*!40000 ALTER TABLE "version" DISABLE KEYS */;
INSERT INTO "version" VALUES (1,'version',1),(2,'acc',5),(3,'acc_cdrs',2),(4,'missed_calls',4),(5,'lcr_gw',3),(6,'lcr_rule_target',1),(7,'lcr_rule',3),(8,'domain',2),(9,'domain_attrs',1),(10,'grp',2),(11,'re_grp',1),(12,'trusted',6),(13,'address',6),(14,'aliases',8),(15,'location',9),(16,'location_attrs',1),(17,'silo',8),(18,'dbaliases',1),(19,'uri',1),(20,'speed_dial',2),(21,'usr_preferences',2),(22,'subscriber',7),(23,'pdt',1),(24,'dialog',7),(25,'dialog_vars',1),(26,'dispatcher',4),(27,'dialplan',2),(28,'topos_d',1),(29,'topos_t',1),(30,'presentity',5),(31,'active_watchers',12),(32,'watchers',3),(33,'xcap',4),(34,'pua',7),(35,'rls_presentity',1),(36,'rls_watchers',3),(37,'imc_rooms',1),(38,'imc_members',1),(39,'cpl',1),(40,'sip_trace',4),(41,'domainpolicy',2),(42,'carrierroute',3),(43,'carrierfailureroute',2),(44,'carrier_name',1),(45,'domain_name',1),(46,'dr_gateways',3),(47,'dr_rules',3),(48,'dr_gw_lists',1),(49,'dr_groups',2),(50,'userblacklist',1),(51,'globalblacklist',1),(52,'htable',2),(53,'purplemap',1),(54,'uacreg',4),(55,'pl_pipes',1),(56,'mtree',1),(57,'mtrees',2),(58,'sca_subscriptions',2),(59,'mohqcalls',1),(60,'mohqueues',1),(61,'rtpproxy',1),(62,'rtpengine',1),(63,'secfilter',1),(64,'uid_credentials',7),(65,'uid_user_attrs',3),(66,'uid_domain',2),(67,'uid_domain_attrs',1),(68,'uid_global_attrs',1),(69,'uid_uri',3),(70,'uid_uri_attrs',2);
/*!40000 ALTER TABLE "version" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "watchers"
--

DROP TABLE IF EXISTS "watchers";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "watchers" (
  "id" int(10) unsigned NOT NULL,
  "presentity_uri" varchar(255) NOT NULL,
  "watcher_username" varchar(64) NOT NULL,
  "watcher_domain" varchar(64) NOT NULL,
  "event" varchar(64) NOT NULL DEFAULT 'presence',
  "status" int(11) NOT NULL,
  "reason" varchar(64) DEFAULT NULL,
  "inserted_time" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "watcher_idx" ("presentity_uri","watcher_username","watcher_domain","event")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "watchers"
--

LOCK TABLES "watchers" WRITE;
/*!40000 ALTER TABLE "watchers" DISABLE KEYS */;
INSERT INTO "watchers" VALUES (1,'sip:rls@sip.linphone.org','700','kamailio.twobarrels.com','presence',1,'',1619110977),(2,'sip:133@kamailio.twobarrels.com','133','kamailio.twobarrels.com','presence',1,'',1620164640),(3,'sip:421@kamailio.twobarrels.com','133','kamailio.twobarrels.com','presence',1,'',1620404010),(4,'sip:700@kamailio.twobarrels.com','133','kamailio.twobarrels.com','presence',1,'',1620861362),(5,'sip:kamailio.twobarrels.com','133','kamailio.twobarrels.com','presence',1,'',1623349492);
/*!40000 ALTER TABLE "watchers" ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table "xcap"
--

DROP TABLE IF EXISTS "xcap";
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE "xcap" (
  "id" int(10) unsigned NOT NULL,
  "username" varchar(64) NOT NULL,
  "domain" varchar(64) NOT NULL,
  "doc" mediumblob NOT NULL,
  "doc_type" int(11) NOT NULL,
  "etag" varchar(128) NOT NULL,
  "source" int(11) NOT NULL,
  "doc_uri" varchar(255) NOT NULL,
  "port" int(11) NOT NULL,
  PRIMARY KEY ("id"),
  UNIQUE KEY "doc_uri_idx" ("doc_uri"),
  KEY "account_doc_type_idx" ("username","domain","doc_type"),
  KEY "account_doc_type_uri_idx" ("username","domain","doc_type","doc_uri"),
  KEY "account_doc_uri_idx" ("username","domain","doc_uri")
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table "xcap"
--

LOCK TABLES "xcap" WRITE;
/*!40000 ALTER TABLE "xcap" DISABLE KEYS */;
/*!40000 ALTER TABLE "xcap" ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-22 19:41:05
