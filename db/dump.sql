PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE `yana_configuration` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`key`  longtext  NOT NULL,`value`  longtext  NOT NULL);
INSERT INTO "yana_configuration" VALUES(1,'conf:UPDATE_URL','http://update.idleman.fr/yana?callback=?');
INSERT INTO "yana_configuration" VALUES(2,'conf:DEFAULT_THEME','default');
INSERT INTO "yana_configuration" VALUES(3,'conf:COOKIE_NAME','yana');
INSERT INTO "yana_configuration" VALUES(4,'conf:COOKIE_LIFETIME','7');
INSERT INTO "yana_configuration" VALUES(5,'conf:VOCAL_ENTITY_NAME','YANA');
INSERT INTO "yana_configuration" VALUES(6,'conf:PROGRAM_VERSION','3.0.6');
INSERT INTO "yana_configuration" VALUES(7,'conf:HOME_PAGE','index.php');
INSERT INTO "yana_configuration" VALUES(8,'conf:VOCAL_SENSITIVITY','0.0');
INSERT INTO "yana_configuration" VALUES(9,'conf:YANA_LATITUDE','24.8235817');
INSERT INTO "yana_configuration" VALUES(10,'conf:YANA_LONGITUDE','-75.5070352');
INSERT INTO "yana_configuration" VALUES(11,'conf:secret','9070a91b60');
CREATE TABLE `yana_user` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`login`  VARCHAR(255)  NOT NULL,`password`  VARCHAR(255)  NOT NULL,`name`  VARCHAR(255)  NOT NULL,`firstname`  VARCHAR(255)  NOT NULL,`mail`  VARCHAR(255)  NOT NULL,`rank`  TEXT  NOT NULL,`token`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`cookie`  VARCHAR(255)  NOT NULL);
INSERT INTO "yana_user" VALUES(1,'admin','fc1fd3e5cb7478953b238202b0bbd10f552750fa','Buckley','Jeff','contact@domo-com.fr','1','1bd891b3142e48ead7ae890717a0689070a91b60','1','');
CREATE TABLE `yana_right` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`rank`  TEXT  NOT NULL,`section`  VARCHAR(255)  NOT NULL,`read`  INT(1)  NOT NULL,`delete`  INT(1)  NOT NULL,`create`  INT(1)  NOT NULL,`update`  INT(1)  NOT NULL);
INSERT INTO "yana_right" VALUES(1,'1','1',1,1,1,1);
INSERT INTO "yana_right" VALUES(2,'1','2',1,1,1,1);
INSERT INTO "yana_right" VALUES(3,'1','3',1,1,1,1);
INSERT INTO "yana_right" VALUES(4,'1','4',1,1,1,1);
INSERT INTO "yana_right" VALUES(5,'1','5',1,1,1,1);
INSERT INTO "yana_right" VALUES(6,'1','6',1,1,1,1);
INSERT INTO "yana_right" VALUES(7,'1','7',1,1,1,1);
INSERT INTO "yana_right" VALUES(8,'1','8',1,1,1,1);
INSERT INTO "yana_right" VALUES(9,'1','9',1,1,1,1);
INSERT INTO "yana_right" VALUES(10,'1','10',1,1,1,1);
INSERT INTO "yana_right" VALUES(11,'1','11',1,1,1,1);
INSERT INTO "yana_right" VALUES(12,'1','12',1,1,1,1);
CREATE TABLE `yana_rank` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`label`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL);
INSERT INTO "yana_rank" VALUES(1,'admin','');
CREATE TABLE `yana_section` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`label`  VARCHAR(255)  NOT NULL,`description`  longtext  NOT NULL);
INSERT INTO "yana_section" VALUES(1,'event','');
INSERT INTO "yana_section" VALUES(2,'vocal','');
INSERT INTO "yana_section" VALUES(3,'user','');
INSERT INTO "yana_section" VALUES(4,'plugin','');
INSERT INTO "yana_section" VALUES(5,'configuration','');
INSERT INTO "yana_section" VALUES(6,'admin','');
INSERT INTO "yana_section" VALUES(7,'plugin_radiorelay','Section de gestion des relais filaires');
INSERT INTO "yana_section" VALUES(8,'plugin_wirerelay','Section de gestion des relais filaires');
INSERT INTO "yana_section" VALUES(9,'speech_command','');
INSERT INTO "yana_section" VALUES(10,'room','');
INSERT INTO "yana_section" VALUES(11,'dashboard','');
INSERT INTO "yana_section" VALUES(12,'Home_Check','');
CREATE TABLE `yana_event` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`name`  VARCHAR(255)  NOT NULL,`content`  longtext  NOT NULL,`year`  VARCHAR(255)  NOT NULL,`month`  VARCHAR(255)  NOT NULL,`day`  VARCHAR(255)  NOT NULL,`hour`  VARCHAR(255)  NOT NULL,`minut`  VARCHAR(255)  NOT NULL,`repeat`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`recipients`  longtext  NOT NULL);
CREATE TABLE `yana_device` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`label`  VARCHAR(255)  NOT NULL,`icon`  VARCHAR(255)  NOT NULL,`display`  longtext  NOT NULL,`state`  TEXT  NOT NULL,`values`  longtext  NOT NULL,`location`  TEXT  NOT NULL,`plugin`  VARCHAR(255)  NOT NULL,`actions`  longtext  NOT NULL,`type`  TEXT  NOT NULL,`uid`  TEXT  NOT NULL);
CREATE TABLE `yana_personnality` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`key`  VARCHAR(255)  NOT NULL,`value`  longtext  NOT NULL);
INSERT INTO "yana_personnality" VALUES(1,'birthday','453634725');
INSERT INTO "yana_personnality" VALUES(2,'favorite_color','indigo');
INSERT INTO "yana_personnality" VALUES(3,'favorite_book','Tout sauf un home d''Isaac Asimov');
INSERT INTO "yana_personnality" VALUES(4,'favorite_food','les escalopes milanaises');
INSERT INTO "yana_personnality" VALUES(5,'favorite_movie','Vice et versa');
INSERT INTO "yana_personnality" VALUES(6,'favorite_band','Noir d&eacute;sir');
INSERT INTO "yana_personnality" VALUES(7,'size','Grande');
INSERT INTO "yana_personnality" VALUES(8,'skin','M&eacute;tisse');
INSERT INTO "yana_personnality" VALUES(9,'fear','9');
INSERT INTO "yana_personnality" VALUES(10,'anger','4');
INSERT INTO "yana_personnality" VALUES(11,'sadness','10');
INSERT INTO "yana_personnality" VALUES(12,'gluttony','2');
INSERT INTO "yana_personnality" VALUES(13,'lust','1');
INSERT INTO "yana_personnality" VALUES(14,'jealousy','8');
CREATE TABLE `yana_plugin_speechcommand` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`command`  longtext  NOT NULL,`action`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`confidence`  VARCHAR(255)  NOT NULL,`parameter`  longtext  NOT NULL);
CREATE TABLE `yana_plugin_room` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`name`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL);
INSERT INTO "yana_plugin_room" VALUES(1,'Salon','Parfait pour prendre l''ap&eacute;ro...','0');
INSERT INTO "yana_plugin_room" VALUES(2,'Cuisine','L''endroit o&ugrave; on d&eacute;gomme les cookies','0');
INSERT INTO "yana_plugin_room" VALUES(3,'WC','On vas pas vous faire un dessin...','0');
INSERT INTO "yana_plugin_room" VALUES(4,'Chambre','Pour dormir (entre autre...)','0');
INSERT INTO "yana_plugin_room" VALUES(5,'Garage','Le fourre tout bordelique et indispensable','0');
CREATE TABLE `yana_plugin_dashboard_view` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`user`  TEXT  NOT NULL,`label`  longtext  NOT NULL,`default`  TEXT  NOT NULL);
INSERT INTO "yana_plugin_dashboard_view" VALUES(1,'1','Salon','0');
INSERT INTO "yana_plugin_dashboard_view" VALUES(2,'1','Cuisine','0');
INSERT INTO "yana_plugin_dashboard_view" VALUES(3,'1','Chambre','0');
INSERT INTO "yana_plugin_dashboard_view" VALUES(4,'1','Garage','0');
INSERT INTO "yana_plugin_dashboard_view" VALUES(5,'1','Syst&egrave;me','0');
INSERT INTO "yana_plugin_dashboard_view" VALUES(6,'1','G&eacute;n&eacute;ral','1');
CREATE TABLE `yana_plugin_dashboard` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`model`  longtext  NOT NULL,`data`  longtext  NOT NULL,`cell`  TEXT  NOT NULL,`column`  TEXT  NOT NULL,`minified`  TEXT  NOT NULL,`dashboard`  TEXT  NOT NULL);
INSERT INTO "yana_plugin_dashboard" VALUES(1,'dash_profil','null','0','0','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(2,'dash_monitoring_ram','null','0','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(3,'dash_monitoring_clock','null','1','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(4,'dash_monitoring_system','null','1','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(5,'dash_monitoring_network','null','2','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(6,'dash_monitoring_services','null','3','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(7,'dash_monitoring_hdd','null','4','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(8,'dash_monitoring_disk','null','5','1','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(9,'dash_monitoring_gpio','null','1','0','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(10,'dash_monitoring_users','null','0','0','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(11,'dash_monitoring_vocal','null','5','2','','6');
INSERT INTO "yana_plugin_dashboard" VALUES(12,'dash_monitoring_logs','null','6','2','','6');
CREATE TABLE `yana_homecheckIP` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`ip`  VARCHAR(255)  NOT NULL,`mac`  VARCHAR(255)  NOT NULL,`owner`  VARCHAR(255)  NOT NULL);
INSERT INTO "yana_homecheckIP" VALUES(1,'192.168.0.1','00:37:b7:52:80:9e','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(2,'192.168.0.5','00:37:b7:52:80:9f','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(3,'192.168.0.10','90:0e:b3:02:05:7d','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(4,'192.168.0.13','30:fd:38:75:3e:8a','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(5,'192.168.0.24','00:a0:de:b7:c8:6c','YAMAHA CORPORATION');
INSERT INTO "yana_homecheckIP" VALUES(6,'192.168.0.125','b8:27:eb:2c:82:cc','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(7,'192.168.0.101','b8:27:eb:89:ed:79','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(8,'192.168.0.34','30:e1:71:1f:f8:eb','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(9,'192.168.0.45','d4:81:d7:6b:f1:87','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(10,'192.168.0.11','7c:49:eb:19:d9:fa','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(11,'192.168.0.17','cc:50:e3:02:7f:4d','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(12,'192.168.0.16','7c:49:eb:b7:64:53','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(13,'192.168.0.19','02:0f:b5:db:78:0b','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(14,'192.168.0.20','cc:50:e3:37:60:45','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(15,'192.168.0.21','ec:fa:bc:87:60:c3','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(16,'192.168.0.23','5c:cf:7f:68:26:30','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(17,'192.168.0.27','ec:fa:bc:34:2c:74','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(18,'192.168.0.35','5c:cf:7f:67:f0:c8','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(19,'192.168.0.41','d0:57:7b:a5:fb:90','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(20,'192.168.0.40','5c:cf:7f:fa:b9:1f','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(21,'192.168.0.51','ec:fa:bc:87:6a:ea','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(22,'192.168.0.91','b0:c5:54:38:ca:70','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(23,'192.168.0.90','b0:c5:54:0e:7c:75','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(24,'192.168.0.100','b8:27:eb:fe:9a:7f','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(25,'192.168.0.104','b8:27:eb:92:3d:24','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(26,'192.168.0.124','b8:27:eb:fd:c7:f9','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(27,'192.168.0.36','84:f3:eb:06:d1:92','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(28,'192.168.0.31','d8:ce:3a:8e:f5:3f','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(29,'192.168.0.29','2c:3a:e8:32:79:6a','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(30,'192.168.0.5','00:37:B7:52:80:9F','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(31,'192.168.0.1','00:37:B7:52:80:9E','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(32,'192.168.0.10','90:0E:B3:02:05:7D','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(33,'192.168.0.13','30:FD:38:75:3E:8A','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(34,'192.168.0.24','00:A0:DE:B7:C8:6C','YAMAHA CORPORATION');
INSERT INTO "yana_homecheckIP" VALUES(35,'192.168.0.125','B8:27:EB:2C:82:CC','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(36,'192.168.0.101','B8:27:EB:89:ED:79','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(37,'192.168.0.34','30:E1:71:1F:F8:EB','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(38,'192.168.0.45','D4:81:D7:6B:F1:87','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(39,'192.168.0.11','7C:49:EB:19:D9:FA','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(40,'192.168.0.16','7C:49:EB:B7:64:53','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(41,'192.168.0.17','CC:50:E3:02:7F:4D','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(42,'192.168.0.19','02:0F:B5:DB:78:0B','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(43,'192.168.0.20','CC:50:E3:37:60:45','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(44,'192.168.0.21','EC:FA:BC:87:60:C3','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(45,'192.168.0.23','5C:CF:7F:68:26:30','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(46,'192.168.0.27','EC:FA:BC:34:2C:74','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(47,'192.168.0.29','2C:3A:E8:32:79:6A','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(48,'192.168.0.35','5C:CF:7F:67:F0:C8','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(49,'192.168.0.36','84:F3:EB:06:D1:92','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(50,'192.168.0.40','5C:CF:7F:FA:B9:1F','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(51,'192.168.0.41','D0:57:7B:A5:FB:90','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(52,'192.168.0.51','EC:FA:BC:87:6A:EA','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(53,'192.168.0.91','B0:C5:54:38:CA:70','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(54,'192.168.0.90','B0:C5:54:0E:7C:75','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(55,'192.168.0.100','B8:27:EB:FE:9A:7F','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(56,'192.168.0.104','B8:27:EB:92:3D:24','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(57,'192.168.0.124','B8:27:EB:FD:C7:F9','Raspberry Pi Foundation');
INSERT INTO "yana_homecheckIP" VALUES(58,'192.168.0.11','D8:CE:3A:8E:F5:3F','(Unknown)');
INSERT INTO "yana_homecheckIP" VALUES(59,'192.168.0.15','C8:D3:FF:D3:06:7E','(Unknown)');
CREATE TABLE `yana_plugin_Home_Check` (`name`  VARCHAR(255)  NOT NULL,`imei`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`icon`  VARCHAR(255)  NOT NULL,`isadmin`  TEXT  NOT NULL,`password`  TEXT  NOT NULL,`state`  TEXT  NOT NULL,`alarm`  TEXT  NOT NULL,`isclientserv`  TEXT  NOT NULL,`nummobile`  VARCHAR(255)  NOT NULL,`email`  VARCHAR(255)  NOT NULL,`ip`  VARCHAR(255)  NOT NULL,`location`  VARCHAR(255)  NOT NULL,`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL);
INSERT INTO "yana_plugin_Home_Check" VALUES('domo-com','','','','1','','','0','0','','contact@domo-com.fr','','',1);
CREATE TABLE `yana_plugin_AlarmeSensor` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`numGPIO`  TEXT  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeSensorRadio` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`onCommand`  VARCHAR(255)  NOT NULL,`offCommand`  VARCHAR(255)  NOT NULL,`radiocodeOn`  VARCHAR(255)  NOT NULL,`radiocodeOff`  VARCHAR(255)  NOT NULL,`sensorTxTyp`  TEXT  NOT NULL,`isalarm`  TEXT  NOT NULL,`linkradio`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`delay`  TEXT  NOT NULL,`lumi`  TEXT  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeRelay` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`room`  TEXT  NOT NULL,`icon`  VARCHAR(255)  NOT NULL,`IPadress`  VARCHAR(255)  NOT NULL,`onCommand`  VARCHAR(255)  NOT NULL,`offCommand`  VARCHAR(255)  NOT NULL,`stopCommand`  VARCHAR(255)  NOT NULL,`isSwitch`  TEXT  NOT NULL,`iddevice`  TEXT  NOT NULL,`macaddr`  VARCHAR(255)  NOT NULL,`st1`  VARCHAR(255)  NOT NULL,`st2`  VARCHAR(255)  NOT NULL,`st3`  VARCHAR(255)  NOT NULL,`st4`  VARCHAR(255)  NOT NULL,`st5`  VARCHAR(255)  NOT NULL,`st6`  VARCHAR(255)  NOT NULL);
INSERT INTO "yana_plugin_AlarmeRelay" VALUES(1,'test','','','','192.168.0.23','','','','0','','5C:CF:7F:68:26:30','','','','','','');
CREATE TABLE `yana_plugin_Alarme_ipcam_camera` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`label`  VARCHAR(255)  NOT NULL,`ip`  VARCHAR(255)  NOT NULL,`login`  VARCHAR(255)  NOT NULL,`password`  VARCHAR(255)  NOT NULL,`location`  VARCHAR(255)  NOT NULL,`pattern`  VARCHAR(255)  NOT NULL,`brand`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeShell` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`shell`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_ExecCmd` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`cmdline`  VARCHAR(255)  NOT NULL,`pid`  TEXT  NOT NULL,`delay`  TEXT  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeSMS` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`identifiant_user`  VARCHAR(255)  NOT NULL,`identifiant_mdp`  VARCHAR(255)  NOT NULL,`message`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeEmail` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`smtpServerAddr`  VARCHAR(255)  NOT NULL,`smtpServerPort`  TEXT  NOT NULL,`smtpServerSSL`  VARCHAR(255)  NOT NULL,`smtpServerUser`  VARCHAR(255)  NOT NULL,`smtpServerPasswd`  VARCHAR(255)  NOT NULL,`EmailAddr`  TEXT  NOT NULL,`EmailExp`  VARCHAR(255)  NOT NULL,`EmailOjt`  VARCHAR(255)  NOT NULL,`EmailMsg`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeGPIO` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`descriptionGPIO`  VARCHAR(255)  NOT NULL,`numGPIO`  TEXT  NOT NULL,`stateGPIO`  TEXT  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeActionVocal` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`MessageVocal`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeCommandeVocale` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`commande`  VARCHAR(255)  NOT NULL,`confidence`  TEXT  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeURL` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`url`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_AlarmeConf` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`conf`  VARCHAR(255)  NOT NULL,`value`  VARCHAR(255)  NOT NULL);
INSERT INTO "yana_plugin_AlarmeConf" VALUES(1,'Plugin_Alarme_TimeStamp','1561889229');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(2,'Plugin_Alarme_DriveDirectory','Videos');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(3,'Plugin_Alarme_SendEmail','Yes');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(4,'Plugin_Alarme_SendSms','No');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(5,'Plugin_Alarme_RepoDirectory','/mnt/motion/');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(6,'Plugin_Alarme_Cli','0');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(7,'Plugin_Alarme_StoreDirectory','/mnt/store/');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(8,'Plugin_Alarme_Pic','100');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(9,'plugin_alarme_timetoStart','10');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(10,'plugin_alarme_widget_color','#50597b');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(11,'plugin_alarme_Start','0');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(12,'plugin_alarme_RefreshWidget','8000');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(13,'plugin_alarme_RefreshWidgetPhoto','30000');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(14,'plugin_alarme_CameraDirectory','/var/www/yana-server/plugins/HomeCheck/camera/');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(15,'Plugin_Alarme_CameraType','Photo');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(16,'Plugin_Alarme_CameraResH','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(17,'Plugin_Alarme_CameraResV','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(18,'Plugin_Alarme_CameraTime','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(19,'Plugin_Alarme_CameraOption','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(20,'Plugin_Alarme_CameraCopyDirectory','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(21,'plugin_alarme_WidgetCameraOption','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(22,'plugin_homecheck_temp','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(23,'plugin_homecheck_feeltemp','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(24,'plugin_homecheck_humidity','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(25,'plugin_homecheck_modeday','');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(26,'homecheck_outtemp','0');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(27,'homecheck_outhumidity','0');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(28,'homecheck_sunrise','0');
INSERT INTO "yana_plugin_AlarmeConf" VALUES(29,'homecheck_sunset','0');
CREATE TABLE `yana_plugin_actiongroup` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`room`  TEXT  NOT NULL,`icon`  VARCHAR(255)  NOT NULL,`IPadress`  VARCHAR(255)  NOT NULL,`onCommand`  VARCHAR(255)  NOT NULL,`offCommand`  VARCHAR(255)  NOT NULL,`stopCommand`  VARCHAR(255)  NOT NULL,`isSwitch`  TEXT  NOT NULL,`iddevice`  TEXT  NOT NULL,`macaddr`  VARCHAR(255)  NOT NULL,`st1`  VARCHAR(255)  NOT NULL,`st2`  VARCHAR(255)  NOT NULL,`st3`  VARCHAR(255)  NOT NULL,`st4`  VARCHAR(255)  NOT NULL,`st5`  VARCHAR(255)  NOT NULL,`st6`  VARCHAR(255)  NOT NULL);
CREATE TABLE `yana_plugin_ActionCollection` (`id`  INTEGER NOT NULL PRIMARY KEY  NOT NULL,`type`  VARCHAR(255)  NOT NULL,`description`  VARCHAR(255)  NOT NULL,`linkradio`  VARCHAR(255)  NOT NULL,`state`  TEXT  NOT NULL,`delay`  TEXT  NOT NULL,`lumi`  TEXT  NOT NULL,`iddevice`  TEXT  NOT NULL,`macaddr`  VARCHAR(255)  NOT NULL,`st1`  VARCHAR(255)  NOT NULL,`st2`  VARCHAR(255)  NOT NULL,`st3`  VARCHAR(255)  NOT NULL,`st4`  VARCHAR(255)  NOT NULL,`st5`  VARCHAR(255)  NOT NULL,`st6`  VARCHAR(255)  NOT NULL);
COMMIT;