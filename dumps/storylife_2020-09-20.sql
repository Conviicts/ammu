
DROP TABLE IF EXISTS `Boutiques`;

CREATE TABLE `Boutiques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `isPack` int(11) DEFAULT NULL,
  `mbox` int(11) DEFAULT NULL,
  `vehicles_nb` int(11) DEFAULT NULL,
  `specials_vehicles_nb` int(11) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Reduction` int(11) DEFAULT NULL,
  `Benefits` varchar(255) DEFAULT NULL,
  `Category` varchar(255) DEFAULT NULL,
  `Tags` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `nb_ventes` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Boutiques` WRITE;
/*!40000 ALTER TABLE `Boutiques` DISABLE KEYS */;

INSERT INTO `Boutiques` (`id`, `Name`, `isPack`, `mbox`, `vehicles_nb`, `specials_vehicles_nb`, `Image`, `Price`, `Reduction`, `Benefits`, `Category`, `Tags`, `createdAt`, `updatedAt`, `vehicle_id`, `nb_ventes`)
VALUES
	(1,'Pack Silver',1,1,2,0,'img/pack/silver.png',15,10,'2 voitures au choix,2 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules','2020-09-07 00:08:30','2020-09-07 00:08:30',0,10),
	(2,'Pack Platine',1,4,2,0,'img/pack/platine.png',30,0,'4 voitures au choix,4 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules,Luxe','2020-09-07 00:08:30','2020-09-07 00:08:30',0,4),
	(3,'Pack Diamant',1,2,2,2,'img/pack/diamond.png',30,0,'2 voitures au choix,2 voitures spéciales au choix,2 caisses mystères,Role Donateur sur notre discord','Pack','Vehicules,Luxe','2020-09-07 00:08:30','2020-09-07 00:08:30',0,5),
	(4,'x1 Caisse mystère',0,1,0,0,'img/pack/crate1_x1.png',4,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,2),
	(5,'x3 Caisse mystère',0,3,0,0,'img/pack/crate1_x3.png',12,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,0),
	(8,'x10 Caisse mystère',0,10,0,0,'img/pack/crate1_x10.png',40,0,'Possibilite d\'avoir de l\'argent en jeu,Possibilite d\'avoir 1 vehicule aléatoire','Caisse','Caisse mystère','2020-09-07 00:08:30','2020-09-07 00:08:30',0,0),
	(9,'Vehicule \'Rebla\'',0,0,0,0,'img/pack/Rebla.png',29,0,'1 vehicule Rebla','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',20,0),
	(10,'Vehicule \'Komoda\'',0,0,0,0,'img/pack/Komoda.png',29,0,'1 vehicule Komoda','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',19,0),
	(11,'Vehicule \'Toros\'',0,0,0,0,'img/pack/Toros.png',12,0,'1 vehicule Toros','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',11,0),
	(12,'Vehicule \'Osiris\'',0,0,0,0,'img/pack/Osiris.png',12,0,'1 vehicule Osiris','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',12,0),
	(13,'Vehicule \'Visione\'',0,0,0,0,'img/pack/Visione.png',12,0,'1 vehicule Visione','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',14,0),
	(14,'Vehicule \'Z190\'',0,0,0,0,'img/pack/Z190.png',12,0,'1 vehicule Z190','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',15,0),
	(15,'Vehicule \'Banshee\'',0,0,0,0,'img/pack/Banshee.png',12,0,'1 vehicule Banshee','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',16,0),
	(16,'Vehicule \'SC1\'',0,0,0,0,'img/pack/SC1.png',12,0,'1 vehicule SC1','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',17,0),
	(17,'Vehicule \'Reaper\'',0,0,0,0,'img/pack/Reaper.png',12,0,'1 vehicule Reaper','Vehicule','Vehicule','2020-09-07 00:08:30','2020-09-07 00:08:30',13,0);

/*!40000 ALTER TABLE `Boutiques` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table paypal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paypal`;

CREATE TABLE `paypal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Affichage de la table SequelizeMeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `SequelizeMeta`;

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;

INSERT INTO `SequelizeMeta` (`name`)
VALUES
	('20200906205414-create-user.js'),
	('20200906210454-create-user.js'),
	('20200906220347-create-boutique.js'),
	('20200906220802-create-boutique.js'),
	('20200908121956-create-roles.js'),
	('20200908122555-create-user.js'),
	('20200908163257-create-boutique.js'),
	('20200910122041-create-vehicles-logs.js'),
	('20200910122131-create-vehicles-logs.js');

/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table Users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Users`;

CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `steamid` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `canPassTest` int(10) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;

INSERT INTO `Users` (`id`, `email`, `password`, `points`, `steamid`, `role`, `createdAt`, `updatedAt`, `canPassTest`)
VALUES
	(4,'contact@convicts.fr','$2a$10$.CBo6SNBVd7GFHFRQlvSmex/mvQSJKoxBXNfZFhNmB9wKWHH//eNC',233,'steam:110000abcd43459',5,'2020-09-10 12:30:55','2020-09-15 13:19:59',3),
	(9,'test@test.fr','$2a$10$tstOCOHsNK.cUH8lJUJWZ.To7iiyLlXe0n02M7iPp.j1LTbkO4m.G',0,'steam:1100004545',0,'2020-09-13 14:19:39','2020-09-13 14:19:39',0),
	(10,'test@testt.fr','$2a$10$M3l6k81FM64/t/O6zLEkCeEjskY0SGJn3mnrZZDNjye.oQOVA.YRG',0,'steam:110004545',0,'2020-09-13 14:25:14','2020-09-13 14:26:13',3);

/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table Vehicle_hash
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Vehicle_hash`;

CREATE TABLE `Vehicle_hash` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Vehicle_hash` WRITE;
/*!40000 ALTER TABLE `Vehicle_hash` DISABLE KEYS */;

INSERT INTO `Vehicle_hash` (`id`, `name`, `hash`)
VALUES
	(1,'Khamelion','544021352'),
	(2,'Feltzer','-1995326987'),
	(3,'Ruston','719660200'),
	(4,'Drafter','686471183'),
	(5,'Schlagen','-507495760'),
	(6,'Windsord','1581459400'),
	(7,'Jester','-1297672541'),
	(8,'Neon','-1848994066'),
	(9,'Pariah','867799010'),
	(10,'Raiden','-1529242755'),
	(11,'Toros ','-1168952148'),
	(12,'Osiris ','1987142870'),
	(13,'Reaper ','234062309'),
	(14,'Visione ','-998177792'),
	(15,'Z190 ','838982985'),
	(16,'Banshee 900R ','633712403'),
	(17,'SC1 ','1352136073'),
	(18,'Everon','-1756021720'),
	(19,'Komoda','-834353991'),
	(20,'Rebla','83136452'),
	(21,'SabreTurbo','-1685021548'),
	(22,'Slamvan','729783779'),
	(23,'Tulip','1456744817'),
	(24,'Virgo','-498054846'),
	(25,'Oracle','1348744438'),
	(26,'Primo','-1150599089'),
	(27,'Gauntlet','-1800170043'),
	(28,'Chino','349605904'),
	(29,'Dominator','80636076'),
	(30,'Faction2','-1790546981'),
	(31,'Moonbeam2','1896491931'),
	(32,'Vstr','1456336509'),
	(33,'Outlaw','408825843');

/*!40000 ALTER TABLE `Vehicle_hash` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table Vehicles_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Vehicles_logs`;

CREATE TABLE `Vehicles_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `plate` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Vehicles_logs` WRITE;
/*!40000 ALTER TABLE `Vehicles_logs` DISABLE KEYS */;

INSERT INTO `Vehicles_logs` (`id`, `name`, `plate`, `owner`, `createdAt`, `updatedAt`)
VALUES
	(20,'Khamelion','JPHQ 602','steam:110000abcd43459','2020-09-13 16:27:10','2020-09-13 16:27:10'),
	(21,'Khamelion','LHNC 689','steam:110000abcd43459','2020-09-13 16:27:10','2020-09-13 16:27:10'),
	(22,'1 misterybox','','steam:110000abcd43459','2020-09-13 16:27:10','2020-09-13 16:27:10');

/*!40000 ALTER TABLE `Vehicles_logs` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
