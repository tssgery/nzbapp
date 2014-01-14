PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE setting (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    key TEXT,
    val TEXT
);
INSERT INTO "setting" VALUES(1,'sabnzbd_host','NZBAPP_HOSTNAME');
INSERT INTO "setting" VALUES(2,'sabnzbd_port','8080');
INSERT INTO "setting" VALUES(3,'sabnzbd_apikey','SAB_APIKEY');
INSERT INTO "setting" VALUES(4,'sabnzbd_enable','on');
INSERT INTO "setting" VALUES(5,'sabnzbd_basepath','/');
INSERT INTO "setting" VALUES(6,'sabnzbd_name','sabnzbd');
INSERT INTO "setting" VALUES(7,'sabnzbd_ssl','0');
INSERT INTO "setting" VALUES(12,'couchpotato_ssl','0');
INSERT INTO "setting" VALUES(13,'couchpotato_host','NZBAPP_HOSTNAME');
INSERT INTO "setting" VALUES(14,'couchpotato_basepath','');
INSERT INTO "setting" VALUES(15,'couchpotato_apikey','COUCH_APIKEY');
INSERT INTO "setting" VALUES(16,'couchpotato_port','8085');
INSERT INTO "setting" VALUES(17,'couchpotato_name','couchpotato');
INSERT INTO "setting" VALUES(18,'couchpotato_enable','on');
INSERT INTO "setting" VALUES(19,'sickbeard_enable','on');
INSERT INTO "setting" VALUES(20,'sickbeard_name','sickbeard');
INSERT INTO "setting" VALUES(21,'sickbeard_ssl','0');
INSERT INTO "setting" VALUES(22,'sickbeard_apikey','SICK_APIKEY');
INSERT INTO "setting" VALUES(23,'sickbeard_host','NZBAPP_HOSTNAME');
INSERT INTO "setting" VALUES(24,'sickbeard_port','8081');
INSERT INTO "setting" VALUES(25,'sickbeard_basepath','');
INSERT INTO "setting" VALUES(30,'app_webdir','/');
INSERT INTO "setting" VALUES(31,'app_password','');
INSERT INTO "setting" VALUES(32,'git_path','git');
INSERT INTO "setting" VALUES(33,'app_ssl_key','');
INSERT INTO "setting" VALUES(34,'app_host','0.0.0.0');
INSERT INTO "setting" VALUES(35,'app_ssl_cert','');
INSERT INTO "setting" VALUES(36,'app_port','APP_PORT');
INSERT INTO "setting" VALUES(37,'app_username','');
INSERT INTO "setting" VALUES(38,'dash_rec_music','on');
INSERT INTO "setting" VALUES(39,'dash_rec_movies','on');
INSERT INTO "setting" VALUES(40,'dash_rec_tv','on');
INSERT INTO "setting" VALUES(41,'dash_nzbget','0');
INSERT INTO "setting" VALUES(42,'dash_sickbeard','on');
INSERT INTO "setting" VALUES(43,'dash_sabnzbd','on');
INSERT INTO "setting" VALUES(44,'dash_couchpotato','on');
CREATE TABLE xbmc_servers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    host TEXT,
    port INT,
    username TEXT,
    password TEXT,
    mac TEXT
);
COMMIT;
