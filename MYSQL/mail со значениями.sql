/*!40030 SET NAMES UTF8 */;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `accounts_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accounts` VALUES ('1','Dora','Mayert','2014-07-04','m','ec04942dc2bea76450fd7d3656b6a00fcdc8434e','89274167451','1984-08-16 04:58:29'),
('2','Ezekiel','Kris','2019-01-10','m','231f85c8c5922c4717b41f97c74a5214ed1756e0','89797355472','2007-04-22 13:26:31'),
('3','Alda','Von','1971-10-06','m','6a88d45ac96c7e080fe3ba5bd8b0f8f9dae61d16','89888899615','1999-05-16 20:24:15'),
('4','Clinton','Grady','2008-03-05','f','32ca4ffa91117f9bca0564735c7e32fb40209b9e','89084762834','1976-05-11 20:02:36'),
('5','Chelsey','Ortiz','2010-04-18','f','f20a6a1e4a0a015c78b0d26fac7f1b5fb2ad98df','89142460785','1984-01-22 11:05:52'),
('6','Consuelo','Terry','1972-11-18','m','b811fa58231f156ccb52ac9f75446e1219e36a9c','89608106704','2018-03-17 01:44:00'),
('7','Maeve','Zboncak','2014-01-01','f','d0b4b6389b580c96e2a28674151353a758063415','89348006624','2016-10-21 18:37:20'),
('8','Rafael','Hackett','2000-06-28','f','ce818cb0b175be3904ba5126239c59657643017e','89936373066','2012-12-04 06:30:38'),
('9','Rebeca','Frami','1973-01-30','f','f279dd7dbd6c11e91bed5df62a4ea261954b74cb','89143275044','1970-01-22 00:20:35'),
('10','Shemar','Jenkins','2014-10-02','f','4cea93edcafccb94862e9770b04253aca7471159','89034626608','1983-05-09 21:05:57'),
('11','Madeline','Abernathy','1990-02-22','m','a89c8facfbcda7191654eab871bd61374d8484d4','89335830325','2007-12-13 06:24:12'),
('12','Jovan','Hodkiewicz','2005-08-30','m','b77b4c78cbaf90bfe3d98faf3b03fb3d0a6550ce','89859191110','1996-05-23 14:20:34'),
('13','Spencer','Kilback','1983-09-14','f','9720a733ded1fee70b54ecae267dc5802838867b','89656383524','2009-10-07 08:04:27'),
('14','Dorian','Herzog','2000-08-28','f','2248b0c415181e3eab699705f1808e46ae367950','89926606656','2004-07-17 16:25:27'),
('15','Danny','Fisher','2011-11-08','f','669402d3ce7aa0afde7a9ef9b2726df7c407a9d8','89150652397','1987-09-18 16:15:59'),
('16','Rupert','Windler','1991-03-06','f','062922c497a67349e5d2d50d53048fd69cbf2022','89527574123','1990-06-24 06:19:19'),
('17','Erik','Hilll','2007-02-03','m','4786f02b4f092084d1dfe42cea0ecf372ac552b5','89022877439','1998-07-15 12:46:38'),
('18','Elyssa','Auer','1981-02-23','f','efc57d186e7eb515719cda9f579a287d5ec86f98','89021430550','2016-01-17 17:18:20'),
('19','Ernie','Gerlach','2001-03-14','m','69bbe931b7ca681e2889329a711fa9698c9ec5cf','89741444813','1992-06-17 04:07:17'),
('20','Eula','Stokes','2020-06-17','m','0cae00250eb28942c1938aec4ca452295c27471d','89700592239','1976-09-03 06:11:15'),
('21','Rudolph','West','1982-02-09','f','7d44d75432738f5a2092f4447f79dc70c6cbb654','89147366247','1979-10-09 07:03:33'),
('22','Nasir','Kiehn','1984-06-09','m','651cc40ca115c65bf89f9ffa683d1fa8c6c4fe6a','89708735695','2014-07-27 11:47:56'),
('23','Dedrick','Larkin','2000-04-22','m','3a8b1825c3d9e49a4d29ed22bd0796be3b777b58','89357715781','2002-08-07 15:07:00'),
('24','Paula','Bayer','1989-03-15','f','bba1a0ffd304c682ac1f97e8cdf24d72685938f1','89289875885','1989-12-11 08:31:48'),
('25','Chelsey','Fritsch','1975-01-23','m','2155ec4e7ee6a6a99ad5958a063d24212190b672','89059478105','1986-11-09 00:18:34'),
('26','Laila','Yundt','1971-04-01','f','a8edbabf674a787b8bc624b1199cb66e14077968','89325838179','2020-05-16 08:45:41'),
('27','Bradford','Shields','2012-09-23','m','4e7a243f35bed1f1819f21aba7ac9e15a0c604c3','89820310016','2002-08-29 13:31:06'),
('28','Felicia','Lueilwitz','1971-12-12','f','f0efd6012a450f81884a5666539a4d4e5179d336','89725970283','1996-08-17 20:59:38'),
('29','Madelyn','Price','2005-03-29','m','1b48a1dc225dbe9e29d688b83c1b82d0baff2836','89579834913','2003-09-13 10:14:00'),
('30','Juvenal','Johnson','1971-02-14','f','bda769062e40fee99f049637deabac3143e3eaf4','89348911035','1980-02-26 12:26:30'); 


DROP TABLE IF EXISTS `accounts_emails`;
CREATE TABLE `accounts_emails` (
  `account_id` bigint(20) unsigned NOT NULL,
  `name_mail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domen` enum('@mail.ru','@bk.ru','@inbox.ru','@list.ru') COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `account_id` (`account_id`),
  KEY `name_domen_idx` (`name_mail`,`domen`),
  CONSTRAINT `accounts_emails_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `accounts_emails` VALUES ('1','sunt','@list.ru','1989-03-01 07:00:57'),
('2','consequatur','@list.ru','2019-10-19 11:16:52'),
('3','esse','@bk.ru','2015-06-11 22:46:04'),
('4','doloribus','@mail.ru','2012-08-18 03:31:40'),
('5','labore','@bk.ru','1980-06-25 07:29:03'),
('6','nesciunt','@mail.ru','1972-03-27 03:03:13'),
('7','atque','@bk.ru','2000-09-06 20:52:03'),
('8','perferendis','@inbox.ru','1996-02-05 04:26:44'),
('9','nulla','@bk.ru','1981-10-06 17:34:26'),
('10','provident','@list.ru','2003-10-22 06:13:06'),
('11','aperiam','@list.ru','1979-06-01 14:06:34'),
('12','et','@list.ru','1997-01-02 21:18:14'),
('13','nulla','@list.ru','1994-01-23 12:23:35'),
('14','rerum','@mail.ru','2018-08-24 06:52:42'),
('15','assumenda','@inbox.ru','1974-12-30 11:00:14'),
('16','est','@list.ru','1999-04-07 15:04:38'),
('17','ut','@bk.ru','2006-03-24 06:40:33'),
('18','minima','@inbox.ru','2012-01-02 04:40:08'),
('19','repudiandae','@bk.ru','2002-02-13 11:39:25'),
('20','neque','@list.ru','1993-02-18 14:12:42'),
('21','officia','@mail.ru','1988-08-10 22:58:32'),
('22','explicabo','@bk.ru','1997-07-02 19:54:42'),
('23','et','@inbox.ru','1982-07-17 15:49:31'),
('24','molestiae','@inbox.ru','1977-03-07 06:31:21'),
('25','aut','@bk.ru','1995-06-19 07:19:49'),
('26','possimus','@mail.ru','2018-06-10 15:53:56'),
('27','magni','@list.ru','1974-05-05 22:10:42'),
('28','rerum','@inbox.ru','1988-01-12 01:40:40'),
('29','at','@list.ru','2014-01-09 06:39:06'),
('30','nihil','@inbox.ru','2007-03-02 06:11:49'); 


DROP TABLE IF EXISTS `catalogs`;
CREATE TABLE `catalogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `catalogs` VALUES ('1','Новости'),
('2','Спорт'),
('3','Леди'),
('4','Авто'),
('5','Кино'),
('6','Hi-Tech'),
('7','Игры'),
('8','Дети'),
('9','Недвижимость'),
('10','Здоровье'),
('11','Питомцы'); 


DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` VALUES ('1','1','Voluptatem pariatur quam aut recusandae. Et quod accusantium et numquam. Consequatur porro delectus atque cum magni voluptatum. Sint expedita officia odit expedita dolorem qui nostrum.','application/vnd.trid.tpt','9401860',NULL,'2015-03-07 07:32:58','2015-05-06 15:25:43'),
('2','2','Incidunt sed nihil consectetur. Deleniti adipisci rerum optio debitis et. Qui quis quis enim delectus iste. Voluptatum dolorum laborum quo qui consequatur consequatur magni.','application/vnd.stepmania.stepchart','7',NULL,'2000-06-06 15:03:32','1973-10-22 02:46:49'),
('3','3','Ullam sed et numquam debitis est. Atque explicabo id voluptas nesciunt nulla. Ab aperiam ut recusandae nostrum quia veniam est. Temporibus voluptatem voluptatem ut et.','image/vnd.wap.wbmp','628596615',NULL,'1993-08-29 08:08:42','1999-11-07 09:18:59'),
('4','4','Vitae tenetur ipsum quae dolores numquam consequuntur. Facere nisi officia molestiae dolores. Assumenda veritatis cumque deserunt.','video/x-ms-vob','364809819',NULL,'1993-10-17 10:34:36','1993-02-19 09:37:03'),
('5','1','Ratione laudantium iure praesentium id aliquam eos veritatis ipsum. Dolorem optio est optio nemo. Recusandae enim labore deserunt eaque non cumque unde totam. Perferendis earum consequatur explicabo alias sed.','text/vcard','6',NULL,'2010-06-08 14:20:14','2017-08-16 05:21:11'),
('6','2','Vel qui nihil distinctio odit. Voluptas ut dolores aliquam. Dicta qui est animi temporibus ratione ea voluptatem quasi. Velit error ipsam ipsum dolores quis.','video/x-f4v','2',NULL,'1972-02-25 17:36:49','1973-05-05 15:49:58'),
('7','3','Facere ut autem fugiat. Est incidunt mollitia autem deserunt aut. Officiis adipisci minima dignissimos ut.','application/yang','185078',NULL,'2014-03-03 23:00:57','1992-03-24 19:16:26'),
('8','4','Consequuntur sequi voluptas dolore eius explicabo eius. Quibusdam quis eligendi eaque incidunt sunt perferendis quas. Et nostrum nisi voluptatem omnis rem quos voluptatem. Vel totam dolorum adipisci maxime quis et.','application/x-t3vm-image','99630979',NULL,'2008-09-11 00:16:04','1973-12-31 00:26:45'),
('9','1','Perferendis accusantium cumque voluptas quia sunt molestiae voluptates. Animi vel tenetur tempora similique exercitationem quia. Voluptate similique in ratione quasi ratione.','application/x-mobipocket-ebook','11724850',NULL,'1993-10-18 05:43:03','1971-07-17 08:40:47'),
('10','2','Quasi et a ex non voluptatem. Quidem quo maiores qui eum atque consequatur. Consequuntur cumque sed debitis. Molestiae et atque ut delectus corporis.','application/jsonml+json','694219572',NULL,'2007-06-13 23:05:54','2007-09-15 17:47:02'),
('11','3','Doloribus cupiditate eveniet facere ut eaque distinctio. Non et nesciunt consequuntur. Id molestiae qui earum eius sit odio.','application/vnd.enliven','73429',NULL,'2005-06-02 09:29:36','2007-08-08 22:53:20'),
('12','4','Sapiente qui et commodi aspernatur repellat. Occaecati dicta enim consequatur repellendus aut sit laboriosam quas. Sed fugit repudiandae mollitia et modi.','application/vnd.oasis.opendocument.text-template','0',NULL,'2003-10-02 07:15:47','1999-11-29 06:01:18'),
('13','1','Omnis perferendis qui similique sunt laudantium. Porro magnam quibusdam voluptas est. Ipsum quo unde alias praesentium dolor.','application/x-texinfo','2',NULL,'2012-07-10 21:29:37','1995-11-23 01:05:29'),
('14','2','Quo fuga sit reprehenderit velit qui. Corporis aspernatur adipisci et dolores enim. Velit architecto doloribus aut debitis dignissimos.','text/vnd.wap.wml','4163',NULL,'2009-05-25 21:49:35','1980-11-22 00:50:52'),
('15','3','Impedit omnis autem nihil eos odit sunt. Provident vel qui pariatur enim ratione consequatur. Ab eum id molestiae enim excepturi.','video/x-ms-wmv','3163239',NULL,'2001-12-27 21:45:55','2016-02-05 21:50:25'),
('16','4','Earum qui quo perferendis molestias distinctio. Ab perspiciatis aut sint aut. Provident dolore fuga reprehenderit ea suscipit explicabo sit. Blanditiis magnam minus nemo vel suscipit voluptatem.','application/vnd.openxmlformats-officedocument.spreadsheetml.template','813809',NULL,'1976-08-03 23:09:50','1999-08-24 23:16:53'),
('17','1','Voluptatem et iste molestiae ipsum tempore numquam rem. Sit numquam ut placeat dolor et. Voluptatem eos molestiae dolore laudantium rerum dolores.','text/vnd.graphviz','496',NULL,'1981-12-06 13:27:43','1982-03-03 03:27:04'),
('18','2','Quia eum voluptatum pariatur iure autem occaecati est. Illo distinctio in enim. Labore quod architecto ut autem voluptas mollitia.','application/vnd.kde.kword','70',NULL,'1981-11-23 00:09:14','2019-09-14 16:33:51'),
('19','3','Vel quis quis blanditiis suscipit fuga. Occaecati vero aut voluptatem et est. Sed ut qui id dolor.','application/vnd.sun.xml.draw.template','959858451',NULL,'2001-07-26 12:50:55','1997-06-02 10:37:26'),
('20','4','Recusandae quia consequuntur esse ratione commodi illo perferendis molestiae. Nihil perferendis ut quia. Voluptatem odio assumenda illo doloribus. Eveniet dolorem ut illo sit.','video/x-msvideo','2681893',NULL,'1995-05-27 00:32:07','1988-02-15 21:19:41'),
('21','1','Natus at fuga dolorem perferendis. Libero qui eum eos incidunt. Velit et corporis aperiam illum est ea harum aliquam. Quo minima ratione assumenda. Id est id ut perspiciatis consequatur cupiditate.','application/vnd.uoml+xml','81468320',NULL,'1985-01-07 00:34:19','1974-05-25 11:05:22'),
('22','2','Dicta assumenda quidem cumque veritatis. Rerum laboriosam est mollitia est perspiciatis et. Quo consequuntur veritatis consequatur. Iste inventore eum aut minima aperiam voluptatem exercitationem.','text/vnd.curl.scurl','984585119',NULL,'1986-07-07 12:21:45','1986-09-02 00:35:54'),
('23','3','Ea amet ullam quas eveniet voluptas fuga. Ut consequatur sequi quis. Laboriosam blanditiis doloremque corrupti exercitationem non vel placeat.','application/vnd.shana.informed.formtemplate','58514',NULL,'1970-03-20 08:00:54','1970-08-24 08:02:21'),
('24','4','Non necessitatibus nam molestiae eos. Qui voluptas quam est. Alias deserunt magnam rem distinctio est. Ipsum voluptatem ut praesentium nostrum sint at.','application/vnd.xfdl','106538',NULL,'1976-11-24 22:33:38','1978-01-03 10:54:02'),
('25','1','Ipsum placeat sint in soluta quia. Adipisci repellat illum rerum ducimus placeat adipisci itaque. Doloremque officia ratione non recusandae quo sint. Quo qui enim voluptatem et.','application/vnd.svd','0',NULL,'1973-07-23 04:21:53','1991-10-28 23:58:14'),
('26','2','Dolores iure ullam rerum incidunt dolor et. Ut et porro laborum sapiente. Optio ratione dolores molestias aliquam reiciendis architecto consequatur. Quibusdam ullam soluta veritatis non.','model/mesh','7243615',NULL,'2001-07-16 13:21:29','1992-02-05 14:27:10'),
('27','3','Voluptatem eius tempora sapiente dignissimos. Est blanditiis eveniet saepe libero magnam velit atque. Doloremque eveniet sit sed suscipit laboriosam.','application/vnd.xfdl','0',NULL,'1976-03-04 15:23:33','1971-12-14 23:08:33'),
('28','4','Fugit sequi ut iusto enim explicabo possimus dolor. Facere reprehenderit nostrum recusandae ut ab magni rerum recusandae. Odio repudiandae tempora et occaecati sint. Dolorem aliquam quaerat omnis porro.','application/vnd.oasis.opendocument.chart-template','3653559',NULL,'1970-02-16 17:51:40','2006-09-16 01:57:06'),
('29','1','Et perspiciatis illo vel molestiae. Consectetur laudantium odit aut similique.','application/x-tex','507758',NULL,'2005-04-02 23:52:21','1982-12-22 13:16:37'),
('30','2','Corrupti repellendus soluta reiciendis. Tempora nisi commodi voluptatibus sed. Velit at repellat quo et repellendus. Eum doloribus magni voluptas aut eius sequi laudantium.','text/vnd.wap.wml','508613049',NULL,'1993-02-01 05:25:09','1982-09-26 19:15:07'); 


DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` VALUES ('1','Фото','1970-04-06 15:27:55','1998-07-07 02:15:23'),
('2','Видео','1975-04-28 21:19:34','2015-01-06 18:33:26'),
('3','Музыка','2017-07-20 10:42:16','2019-09-16 05:48:16'),
('4','Текст','2016-07-20 12:56:34','1983-06-10 02:08:31'); 


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `from_mail_id` bigint(20) unsigned NOT NULL,
  `to_mail_id` bigint(20) unsigned NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_read` bit(1) DEFAULT b'0',
  `is_spam` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `media_id` (`media_id`),
  INDEX messages_from_mail_id (from_mail_id),
  INDEX messages_to_mail_id (to_mail_id),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`from_mail_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`to_mail_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` VALUES ('1','1','1','2', b'0', b'1', b'1','2006-10-22 01:06:04','2018-10-31 09:27:26'),
('2','2','1','3', b'0', b'0', b'1','1976-12-05 22:19:48','2019-07-20 02:54:19'),
('3','3','1','4', b'0', b'0', b'1','1978-08-15 19:06:32','2007-07-22 01:07:15'),
('4','4','2','1', b'1', b'1', b'0','2018-11-23 22:44:37','1990-02-04 10:47:05'),
('5','5','2','5', b'1', b'1', b'0','1991-07-25 15:28:51','2002-09-03 05:14:47'),
('6','6','3','1', b'1', b'0', b'0','1999-02-11 06:10:26','1974-09-03 07:01:28'),
('7','7','3','7', b'0', b'0', b'1','1994-04-18 01:17:19','2010-05-18 21:08:35'),
('8','8','4','1', b'0', b'1', b'0','2010-02-10 00:30:10','1986-07-03 23:19:39'),
('9','9','5','9', b'1', b'1', b'1','1978-10-30 11:22:33','2011-10-20 01:40:12'),
('10','10','9','5', b'0', b'1', b'0','1989-04-28 09:21:22','2007-07-11 07:17:29'),
('11','11','5','11', b'0', b'1',b'1','1974-08-08 07:51:43','1972-08-26 22:52:07'),
('12','12','11','12',b'0',b'0',b'0','1977-08-09 18:37:14','2011-01-30 18:37:13'),
('13','13','12','11',b'0',b'0',b'0','1975-11-22 10:47:59','1998-04-20 14:38:24'),
('14','14','14','15',b'0',b'0',b'0','1971-12-08 12:02:22','1995-07-29 02:59:42'),
('15','15','15','14',b'0',b'1',b'0','1979-12-27 09:54:53','1974-12-21 20:59:26'),
('16','16','14','16',b'1',b'0',b'1','1983-09-14 17:25:36','1992-02-05 00:00:37'),
('17','17','16','14',b'0',b'0',b'1','1984-02-09 00:49:46','1973-06-08 19:57:13'),
('18','18','17','18',b'0',b'1',b'0','1983-02-25 22:49:17','2020-02-29 22:48:33'),
('19','19','19','22',b'1',b'1',b'1','1976-11-21 17:15:19','1994-03-03 11:13:09'),
('20','20','20','20',b'1',b'0',b'1','2005-01-14 07:05:43','2010-04-05 23:13:47'),
('21','21','21','21',b'1',b'1',b'0','2009-06-29 10:01:37','1990-11-25 15:58:16'),
('22','22','23','22',b'1',b'1',b'1','1980-10-10 02:40:58','1994-04-26 20:37:44'),
('23','23','23','23',b'1',b'0',b'1','2001-08-05 17:25:15','1998-10-02 21:42:13'),
('24','24','24','24',b'0',b'0',b'1','1977-03-07 02:08:12','2011-01-24 05:19:27'),
('25','25','26','25',b'1',b'1',b'0','2009-12-12 06:08:04','1972-06-04 06:07:01'),
('26','26','28','26',b'1',b'1',b'0','1979-11-09 20:41:37','1985-11-05 10:05:22'),
('27','27','29','27',b'0',b'1',b'1','1990-06-30 18:22:50','2001-04-17 21:58:52'),
('28','28','27','28',b'0',b'1',b'0','1988-04-13 19:56:33','1992-08-04 23:29:00'),
('29','29','28','29',b'0',b'1',b'0','2001-01-22 19:18:16','2012-09-05 17:18:43'),
('30','30','29','28',b'1',b'1',b'1','2006-08-09 06:20:33','1980-12-09 01:48:22'); 


DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `rubric_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `rubric_id` (`rubric_id`),
  CONSTRAINT `news_ibfk_1` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` VALUES ('1','Qui reprehenderit doloribus earum porro suscipit quisquam eius laborum. Provident tenetur ea quo repellat qui omnis incidunt. Ea doloribus officiis cumque quibusdam.','1'),
('2','Suscipit quidem laboriosam ducimus placeat cupiditate. Deleniti reprehenderit itaque aut ab voluptas quia iure mollitia. Consequatur labore et asperiores molestiae impedit. Sunt doloremque quis atque ','2'),
('3','Ipsam ut suscipit exercitationem nesciunt ipsa quae. Earum voluptate quia in tempore cupiditate laudantium. Nobis laboriosam non fuga. Non animi necessitatibus et odio ut maxime libero.','3'),
('4','Earum nulla hic reiciendis nam velit. Voluptatem nemo consequuntur nesciunt consequuntur deserunt dolor sed. Facilis dolores maiores dolor non perferendis.','4'),
('5','Et repellat asperiores aut asperiores eius est non. Officia molestias repudiandae similique et qui atque quidem. Iste sit commodi ipsam fuga a cupiditate. Dolores commodi inventore non animi officia.','5'),
('6','Id laborum perferendis omnis nam et corrupti et. Vitae atque vero corrupti exercitationem. Odio quia deserunt in aut expedita.','6'),
('7','Molestiae eum sint vel quos eveniet dolorem. Minus velit non repudiandae eum. Non vero nulla est dolor autem incidunt aut. Eos veniam ipsa quas optio id natus quod sunt.','7'),
('8','Qui magnam quia voluptatem dolor enim placeat saepe. Quos numquam non occaecati aut saepe velit. Ut repellat quaerat consequuntur molestiae et velit. Occaecati itaque autem sapiente sit officiis.','8'),
('9','Qui qui dolor aut quia. Maiores minus nihil beatae voluptatibus et explicabo velit. Qui et quibusdam dolores eos est quos consequatur. Nisi alias voluptatem quia libero non quia.','9'),
('10','Sequi voluptatum consequatur veritatis et sed magni. Et repellendus et aut quis ut blanditiis impedit. Maiores non consectetur quo animi aut neque est voluptatem. In laudantium aliquid dolorem porro c','10'),
('11','Ab aut excepturi sequi. Reprehenderit sapiente quas rerum voluptatibus aut consequatur. Hic sed odit optio saepe vel ipsa natus.','11'),
('12','Laboriosam ut atque voluptatem aspernatur accusamus. Ipsa rerum assumenda recusandae soluta expedita quo porro. Ut nam inventore et unde itaque soluta et facere. Qui fuga dolores mollitia ullam tempor','12'),
('13','Sit aspernatur illo incidunt aut dolores. Illum et quam quisquam eum. Est aliquam inventore et natus.','13'),
('14','Deleniti et eius rerum eos nulla et. Nobis voluptatem quibusdam aut doloribus enim commodi ducimus. Ab ab vitae ullam qui.','14'),
('15','Impedit illum et consequuntur dolore et quasi suscipit repudiandae. Expedita necessitatibus sunt voluptatibus ipsam veritatis omnis laborum. Qui esse quaerat voluptatem incidunt rerum.','15'),
('16','Consequatur incidunt velit tempore. Veritatis quae dicta accusantium eaque laboriosam beatae maxime libero. Quo numquam nostrum ut.','16'),
('17','Minima recusandae minima maiores quia ipsa aspernatur aliquid. Aspernatur et id rerum ipsam omnis. Est sint commodi aut mollitia. Voluptatibus voluptatem consequatur dignissimos ipsam qui ea.','17'),
('18','Quia quae sed omnis quaerat facilis sunt dignissimos. Illo ad omnis et consequatur et commodi facilis. Quis labore ducimus laudantium cupiditate dolor. Repudiandae non similique in ex. Sint quis qui i','18'),
('19','Sit officia nemo aperiam. Animi consectetur nostrum sed dolorem ad fugiat ut. Quaerat omnis sapiente vel molestiae fugit nulla harum a.','19'),
('20','Ut doloribus vero cupiditate. Autem ut ut non quo quos ut. Officia et vitae adipisci est repudiandae quis molestias. Aliquid sed repudiandae magnam sed recusandae dignissimos.','20'),
('21','Et ipsum inventore accusantium est atque et dolore sit. Impedit tempore qui deserunt itaque.','21'),
('22','Et aut laborum eius omnis perspiciatis qui dolores. Vitae ratione velit doloremque debitis. Excepturi occaecati ut nihil quisquam at neque atque.','22'),
('23','Aperiam ut dolorem ratione aliquid quibusdam sed harum. Illo quidem est delectus cupiditate temporibus. Itaque impedit iusto totam numquam natus aut ut.','23'),
('24','Recusandae quod id voluptates. Delectus omnis voluptatum sit animi nisi sed enim quia. Maxime necessitatibus ex quia vel.','24'),
('25','Occaecati dicta et fuga reiciendis. Consequuntur vitae ratione illum eaque quia. Ducimus dignissimos assumenda ut.','25'),
('26','Aperiam libero nemo modi consequatur dolorem. Quasi odit illum a et sit. Est fugiat rerum neque in pariatur necessitatibus.','26'),
('27','Eum iusto non eum dolores voluptatem illo. Non fugiat ut quia magnam et unde qui. Cum dolorem commodi ea.','27'),
('28','Quas aut velit nostrum voluptatem aut saepe. Ducimus sunt repellendus natus eveniet distinctio occaecati. Culpa voluptatibus corporis officia voluptas rerum expedita. Eos est nemo dolore dolore.','28'),
('29','Deserunt quasi non officiis aut illo tenetur. Maxime molestiae cumque voluptatum qui nihil et ipsum. Laborum ut veniam id ut fuga magnam.','29'),
('30','At sit beatae quo quasi nemo sint laudantium. Molestiae quia qui ab deserunt aut. Fugiat veniam voluptas repudiandae iste ad velit.','30'),
('31','Fugiat delectus neque qui est. Aut accusamus ullam atque impedit. Praesentium quisquam culpa quis et aperiam nobis libero. Porro mollitia ab deserunt qui. Repellat aut quis perspiciatis nihil.','1'),
('32','Suscipit repudiandae quidem qui asperiores ad. Mollitia autem ex et labore commodi id iure. Voluptates neque debitis autem et deserunt voluptatum.','2'),
('33','Ipsum expedita itaque ipsum doloribus ut quia. In sapiente voluptas dolores tempore.','3'),
('34','Consequuntur aut earum cupiditate est possimus rerum. Ipsa voluptatum beatae et voluptatem eum facilis quos. Doloribus perferendis ut inventore.','4'),
('35','Magnam ut alias necessitatibus quia rerum consequatur. Non aut nesciunt aliquam qui accusantium quia. Quas cupiditate et quam ab totam nihil et repellat. Saepe adipisci et et eveniet.','5'),
('36','Quaerat fugiat quas quia adipisci atque blanditiis a. Ut maxime odio perferendis et cumque dolorem excepturi labore. Ullam rerum esse cumque ut aut enim ut voluptas.','6'),
('37','Iste iste id velit labore iure eaque consequatur velit. Facere laboriosam porro maxime velit aspernatur numquam earum. Aspernatur aut quam perspiciatis quod ut est aut.','7'),
('38','Vel aut qui perferendis quas sed rerum. Pariatur pariatur veniam ab molestiae. Id beatae provident ratione odio minus et. Ut tenetur harum explicabo est itaque.','8'),
('39','At voluptatum fugiat accusamus id. Iure deleniti neque ut quis facere voluptas quos velit. A eum iure aliquid cupiditate consequatur quisquam.','9'),
('40','Sit accusantium magnam itaque nam. Harum ut numquam voluptatem ut sint illo sit. Provident temporibus quaerat ut sed impedit est vero. Dolorum distinctio et natus perspiciatis ex libero sapiente.','10'),
('41','Fugit et atque saepe voluptatem deserunt. Eos iure consectetur eum eos. Nemo voluptatem est inventore quia maiores voluptatum.','11'),
('42','Labore est placeat ut suscipit. Soluta dolores sit ut similique quae. Quasi quia aut cum earum.','12'),
('43','Sint adipisci et omnis non. Quo aut repellendus repudiandae nulla maxime et necessitatibus modi. Rerum est in molestiae eos. Omnis soluta ex neque accusantium perspiciatis.','13'),
('44','Fugit temporibus tempore consectetur fuga veniam nam. Aliquid fugit maiores eveniet. Explicabo enim beatae aperiam. Quia asperiores labore fuga aut perspiciatis. Ab ut minus hic ut architecto ipsum.','14'),
('45','Eum quod et quam quia aut officiis totam. Architecto ut occaecati animi voluptate qui ullam. Tenetur adipisci expedita occaecati dolorum qui.','15'),
('46','Autem sunt quasi officiis sunt voluptatum totam. Maiores voluptas eligendi harum numquam dicta. Odio fugiat et est assumenda. Quo ullam id tempore dolores aut. Alias delectus natus beatae veritatis ne','16'),
('47','Autem et quaerat aut laboriosam debitis. Harum eos sed in dolor ipsa voluptates consequatur. Nemo qui ab eius ea. Cumque et repudiandae distinctio totam autem nemo minima.','17'),
('48','Autem sunt rem aut assumenda est adipisci non. Aperiam placeat earum repellat dolore provident consequuntur.','18'),
('49','Sapiente aliquam sint odit sit officiis accusamus. Totam facilis perferendis et libero dignissimos. Non laudantium consectetur fugit. Velit ut labore sit quia tenetur animi a quod.','19'),
('50','Cupiditate sequi voluptate unde quos quibusdam earum porro libero. Quibusdam exercitationem animi adipisci dignissimos harum omnis. Minima sed alias nemo reprehenderit id. Illo et fuga eum dignissimos','20'),
('51','Veritatis fuga ut quae et. Voluptas voluptas ex dolores at sit. Aliquid itaque nulla exercitationem vitae voluptatem impedit rem. Et voluptatum voluptas quibusdam aut repudiandae mollitia.','21'),
('52','Non id labore voluptatum. Doloribus dolor impedit ratione qui sint et. Quaerat sapiente voluptas nihil fuga expedita est minima. Ut odit quae earum quo officia placeat.','22'),
('53','Ea architecto sed perspiciatis quasi iste. Est culpa quia officiis fugit molestiae quisquam eveniet.','23'),
('54','Repellat praesentium pariatur asperiores voluptate qui repellat id. Est at sunt adipisci voluptatem. Possimus sunt quis atque qui et ut suscipit et.','24'),
('55','Et nemo nihil rerum. Odit atque voluptatem consequatur facere. Accusantium laborum error adipisci deleniti voluptate reiciendis et ea.','25'),
('56','Dolore corrupti qui nulla omnis. Rerum in porro voluptatem pariatur sit quia et. Quia voluptatem temporibus voluptas consequatur delectus et. Omnis occaecati maiores eligendi omnis odio et incidunt.','26'),
('57','Harum ducimus impedit nemo ut eum aut molestias sequi. Et aut quas rerum dolores consequatur. Totam non facere non eos explicabo architecto vel nesciunt.','27'),
('58','Molestiae assumenda illo qui dolorem et. Officiis aut sed laudantium dolorum eaque aliquam. Voluptas id quam consequatur ut perspiciatis aut. Enim ipsum ut sunt facere rerum.','28'),
('59','Debitis est aperiam labore a deserunt deserunt neque. Eos voluptatem rem et quibusdam praesentium. Quo ea saepe reiciendis quisquam. Sit illo accusantium doloribus nisi maxime. Excepturi sed inventore','29'),
('60','Exercitationem cupiditate dolores aut. Reiciendis tempora asperiores reiciendis possimus sed.','30'),
('61','Magni modi eum accusamus autem. Quis repellendus id assumenda rerum ut. Excepturi iste cumque fuga cumque optio dolorem.','1'),
('62','Fugiat fugit voluptas quibusdam laudantium. Ut magnam asperiores atque sed tenetur. Eum at cupiditate et aspernatur ad. Quo inventore voluptatum aut voluptatem quaerat.','2'),
('63','Quidem aperiam et incidunt et qui sunt. Qui occaecati non porro tempora. Quam quidem repudiandae qui doloremque iure.','3'),
('64','Facere qui sunt quibusdam delectus possimus. Est in sequi nihil. Quibusdam iste dolores rerum blanditiis fuga vero qui in.','4'),
('65','Voluptatem a velit et omnis sit aut accusantium. Iusto quam dolores enim dicta nam adipisci.','5'),
('66','Velit consequuntur a debitis voluptatibus vel inventore dolorem. Iste blanditiis hic quasi. Voluptatibus rerum accusamus provident voluptatibus ipsum modi. Et odit a aut nihil est.','6'); 


DROP TABLE IF EXISTS `other_emails`;
CREATE TABLE `other_emails` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name_other` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `other_emails` VALUES ('1','cheaney@hotmail.com'),
('2','collins.brad@steuber.com'),
('3','ardith.lind@ruecker.org'),
('4','ydenesik@kozey.net'),
('5','genevieve50@gutkowski.com'),
('6','hagenes.modesta@sipesritchie.com'),
('7','wyman.hailey@yahoo.com'),
('8','jhoeger@gmail.com'),
('9','alex.kshlerin@crist.org'),
('10','qkoepp@waters.com'),
('11','hegmann.kody@rowe.com'),
('12','domenica28@gmail.com'),
('13','cora47@hotmail.com'),
('14','walter.ulises@hotmail.com'),
('15','yhagenes@legros.biz'),
('16','ysporer@ebertledner.org'),
('17','jfeeney@yahoo.com'),
('18','xzavier.mills@witting.com'),
('19','grimes.art@balistreri.com'),
('20','dreichert@bartell.net'),
('21','oleta28@steuber.net'),
('22','ybreitenberg@hotmail.com'),
('23','mmayer@hamillharvey.info'),
('24','kub.brenda@cummings.com'),
('25','maci.heathcote@steuber.com'),
('26','urban.homenick@gmail.com'),
('27','ereinger@daugherty.com'),
('28','mckenzie.viviane@cummings.info'),
('29','cummerata.marlee@morarmohr.biz'),
('30','micah.gerhold@hotmail.com'); 


DROP TABLE IF EXISTS `other_send_messages`;
CREATE TABLE `other_send_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `from_mail_id` bigint(20) unsigned NOT NULL,
  `to_othermail_id` bigint(20) unsigned NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_read` bit(1) DEFAULT b'0',
  `is_spam` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `media_id` (`media_id`),
  INDEX messages_from_mail_id (from_mail_id),
  INDEX messages_to_othermail_id (to_othermail_id),
  CONSTRAINT `other_send_messages_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `other_send_messages_ibfk_2` FOREIGN KEY (`from_mail_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `other_send_messages_ibfk_3` FOREIGN KEY (`to_othermail_id`) REFERENCES `other_emails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `other_send_messages` VALUES ('1','1','1','2',b'1',b'1',b'0','2001-08-22 12:31:37','1991-03-09 00:31:00'),
('2','2','2','1',b'0',b'0',b'1','2010-04-06 15:08:59','1983-04-29 07:37:08'),
('3','3','3','6',b'1',b'0',b'1','2002-05-27 21:21:02','1997-09-30 15:25:35'),
('4','4','4','7',b'0',b'1',b'1','2003-06-27 23:54:44','1980-06-07 07:32:58'),
('5','5','2','5',b'0',b'1',b'0','1993-10-30 09:14:54','2001-03-28 03:22:08'),
('6','6','6','1',b'1',b'1',b'0','2005-04-02 09:53:37','2019-11-25 23:10:25'),
('7','7','1','7',b'0',b'1',b'1','1991-08-20 14:04:41','2018-06-15 21:28:00'),
('8','8','8','3',b'0',b'0',b'0','2010-06-11 18:12:10','2002-05-08 12:55:42'),
('9','9','5','9',b'0',b'0',b'1','2016-10-21 09:31:53','2007-11-25 23:57:11'),
('10','10','9','10',b'0',b'1',b'0','1995-03-23 17:35:08','1996-10-13 02:05:33'),
('11','11','10','11',b'1',b'1',b'0','2012-12-15 02:35:51','1996-10-13 16:57:24'),
('12','12','12','11',b'1',b'0',b'1','2016-06-01 09:19:26','1992-05-12 19:05:48'),
('13','13','13','14',b'1',b'1',b'1','2007-07-23 18:07:13','2010-12-25 11:00:10'),
('14','14','14','13',b'0',b'1',b'0','2007-01-26 02:35:46','1978-10-15 03:49:54'),
('15','15','15','16',b'0',b'0',b'1','1974-01-15 16:42:23','1989-03-27 13:28:15'),
('16','16','16','15',b'1',b'1',b'1','2012-10-16 17:35:34','1971-04-26 02:58:54'),
('17','17','17','18',b'1',b'0',b'1','1998-12-18 19:59:49','2011-03-04 17:14:46'),
('18','18','18','19',b'1',b'0',b'1','1991-12-12 05:32:41','1983-12-31 22:24:34'),
('19','19','19','20',b'1',b'1',b'1','1980-03-11 11:07:25','2003-04-26 16:40:01'),
('20','20','20','19',b'1',b'0',b'0','1992-08-20 17:36:06','2009-08-09 02:58:50'); 


DROP TABLE IF EXISTS `other_receiver_messages`;
CREATE TABLE `other_receiver_messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_id` bigint(20) unsigned NOT NULL,
  `from_othermail_id` bigint(20) unsigned NOT NULL,
  `to_mail_id` bigint(20) unsigned NOT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  `is_read` bit(1) DEFAULT b'0',
  `is_spam` bit(1) DEFAULT b'0',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `media_id` (`media_id`),
  INDEX messages_from_othermail_id (from_othermail_id),
  INDEX messages_to_mail_id (to_mail_id),
  CONSTRAINT `other_receiver_messages_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `other_receiver_messages_ibfk_2` FOREIGN KEY (`from_othermail_id`) REFERENCES `other_emails` (`id`),
  CONSTRAINT `other_receiver_messages_ibfk_3` FOREIGN KEY (`to_mail_id`) REFERENCES `accounts` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `other_receiver_messages` VALUES ('1','1','1','2',b'1',b'1',b'0','2001-08-22 12:31:37','1991-03-09 00:31:00'),
('2','2','2','1',b'0',b'0',b'1','2010-04-06 15:08:59','1983-04-29 07:37:08'),
('3','3','3','6',b'1',b'0',b'1','2002-05-27 21:21:02','1997-09-30 15:25:35'),
('4','4','4','7',b'0',b'1',b'1','2003-06-27 23:54:44','1980-06-07 07:32:58'),
('5','5','2','5',b'0',b'1',b'0','1993-10-30 09:14:54','2001-03-28 03:22:08'),
('6','6','6','1',b'1',b'1',b'0','2005-04-02 09:53:37','2019-11-25 23:10:25'),
('7','7','1','7',b'0',b'1',b'1','1991-08-20 14:04:41','2018-06-15 21:28:00'),
('8','8','8','3',b'0',b'0',b'0','2010-06-11 18:12:10','2002-05-08 12:55:42'),
('9','9','5','9',b'0',b'0',b'1','2016-10-21 09:31:53','2007-11-25 23:57:11'),
('10','10','9','10',b'0',b'1',b'0','1995-03-23 17:35:08','1996-10-13 02:05:33'),
('11','11','10','11',b'1',b'1',b'0','2012-12-15 02:35:51','1996-10-13 16:57:24'),
('12','12','12','11',b'1',b'0',b'1','2016-06-01 09:19:26','1992-05-12 19:05:48'),
('13','13','13','14',b'1',b'1',b'1','2007-07-23 18:07:13','2010-12-25 11:00:10'),
('14','14','14','13',b'0',b'1',b'0','2007-01-26 02:35:46','1978-10-15 03:49:54'),
('15','15','15','16',b'0',b'0',b'1','1974-01-15 16:42:23','1989-03-27 13:28:15'),
('16','16','16','15',b'1',b'1',b'1','2012-10-16 17:35:34','1971-04-26 02:58:54'),
('17','17','17','18',b'1',b'0',b'1','1998-12-18 19:59:49','2011-03-04 17:14:46'),
('18','18','18','19',b'1',b'0',b'1','1991-12-12 05:32:41','1983-12-31 22:24:34'),
('19','19','19','20',b'1',b'1',b'1','1980-03-11 11:07:25','2003-04-26 16:40:01'),
('20','20','20','19',b'1',b'0',b'0','1992-08-20 17:36:06','2009-08-09 02:58:50'); 


DROP TABLE IF EXISTS `rubrics`;
CREATE TABLE `rubrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `catalog_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `catalog_id` (`catalog_id`),
  CONSTRAINT `rubrics_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `catalogs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rubrics` VALUES ('1','1','recusandae', '2015-03-07 07:32:58','2015-05-06 15:25:43'),
('2','2','officia', '2018-03-07 07:32:58','2015-05-06 15:25:43'),
('3','3','dicta', '2019-03-07 07:32:58','2015-05-06 15:25:43'),
('4','4','quia', '2020-03-07 07:32:58','2015-05-06 15:25:43'),
('5','5','odit', '2015-03-07 07:32:58','2015-05-06 15:25:43'),
('6','6','ea', '2016-03-07 07:32:58','2015-05-06 15:25:43'),
('7','7','fuga', '2015-03-07 07:32:58','2015-05-06 15:25:43'),
('8','8','dicta', '2020-06-10 07:32:58','2015-05-06 15:25:43'),
('9','9','error', '2017-08-07 07:32:58','2015-05-06 15:25:43'),
('10','10','inventore', '2015-10-07 07:32:58','2015-05-06 15:25:43'),
('11','11','alias', '2018-11-07 07:32:58','2015-05-06 15:25:43'),
('12','1','sapiente','2020-03-07 07:32:58','2015-05-06 15:25:43'),
('13','2','illum', '2011-04-07 07:32:58','2015-05-06 15:25:43'),
('14','3','voluptatibus', '2015-03-07 07:32:58','2015-05-06 15:25:43'),
('15','4','alias','2016-03-07 07:32:58','2015-05-06 15:25:43'),
('16','5','vero','2015-03-07 07:32:58','2015-05-06 15:25:43'),
('17','6','perspiciatis','2017-08-07 07:32:58','2015-05-06 15:25:43'),
('18','7','nulla','2014-03-07 07:32:58','2015-05-06 15:25:43'),
('19','8','eos', '2019-03-07 07:32:58','2015-05-06 15:25:43'),
('20','9','tempora', '2020-04-07 07:32:58','2015-05-06 15:25:43'),
('21','10','voluptates', '2015-10-22 07:32:58','2015-05-06 15:25:43'),
('22','11','et', '2017-03-10 07:32:58','2015-05-06 15:25:43'),
('23','1','tempore', '2018-03-07 07:32:58','2018-05-06 15:25:43'),
('24','2','corporis','2019-05-13 07:32:58','2016-10-10 15:25:43'),
('25','3','sunt','2019-05-13 07:32:58','2016-10-10 15:25:43'),
('26','4','accusantium','2019-05-13 07:32:58','2016-10-10 15:25:43'),
('27','5','cupiditate', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('28','6','eaque', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('29','7','dolore', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('30','8','architecto', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('31','9','rerum', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('32','10','architecto', '2020-10-13 07:32:58','2016-10-10 15:25:43'),
('33','11','sed', '2020-05-13 07:32:58','2016-10-10 15:25:43'),
('34','1','quis', '2019-10-13 07:32:58','2016-10-10 15:25:43'),
('35','2','est', '2020-12-13 07:32:58','2016-10-10 15:25:43'),
('36','3','corporis', '2019-05-20 07:32:58','2016-10-10 15:25:43'),
('37','4','quaerat', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('38','5','aspernatur', '2020-12-22 07:32:58','2016-10-10 15:25:43'),
('39','6','et','2019-05-13 07:32:58','2016-10-10 15:25:43'),
('40','7','atque', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('41','8','vel', '2019-05-13 07:32:58','2016-10-10 15:25:43'),
('42','9','dolor', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('43','10','voluptas', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('44','11','odio', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('45','1','est', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('46','2','itaque', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('47','3','itaque', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('48','4','reiciendis', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('49','5','nemo', '2020-04-17 07:32:58','2017-10-10 15:25:43'),
('50','6','sit', '2019-12-21 07:32:58','2017-10-10 15:25:43'),
('51','7','rem', '2019-12-21 07:32:58','2017-10-10 15:25:43'),
('52','8','ut', '2019-12-21 07:32:58','2017-10-10 15:25:43'),
('53','9','velit', '2019-12-21 07:32:58','2017-10-10 15:25:43'),
('54','10','deserunt', '2019-12-21 07:32:58','2017-10-10 15:25:43'),
('55','11','sed', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('56','1','quis', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('57','2','omnis', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('58','3','maiores', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('59','4','est', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('60','5','harum', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('61','6','minima', '2016-11-01 07:32:58','2017-10-10 15:25:43'),
('62','7','quis', '2018-10-15 07:32:58','2018-11-10 15:25:43'),
('63','8','sapiente', '2018-10-15 07:32:58','2018-11-10 15:25:43'),
('64','9','quo', '2018-10-15 07:32:58','2018-11-10 15:25:43'),
('65','10','odio', '2018-10-15 07:32:58','2018-11-10 15:25:43'),
('66','11','aut', '2018-10-15 07:32:58','2018-11-10 15:25:43'); 

DROP TABLE IF EXISTS `popular_rubrics`;
CREATE TABLE `popular_rubrics` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rubric_id` bigint(20) unsigned NOT NULL,
  `account_id` bigint(20) unsigned NOT NULL,
  `read_at` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `id` (`id`),
  KEY `account_id` (`account_id`),
  KEY `rubric_id` (`rubric_id`),
  CONSTRAINT `popular_rubrics_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `popular_rubrics_ibfk_2` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `popular_rubrics` VALUES ('1','31','1','1972-01-08 16:49:20'),
('2','33','2','1976-04-06 00:08:44'),
('3','34','3','2002-08-14 08:01:12'),
('4','35','4','1981-11-14 11:34:25'),
('5','37','5','2005-10-05 06:27:16'),
('6','38','6','1991-08-21 13:25:08'),
('7','40','7','1999-03-26 12:40:24'),
('8','42','8','1981-03-05 16:19:01'),
('9','43','9','1987-01-18 23:39:29'),
('10','45','10','1980-05-28 16:03:01'),
('11','49','12','1987-04-05 06:53:59'),
('12','50','12','2020-01-20 19:44:54'),
('13','54','12','2009-10-23 17:24:36'),
('14','55','14','1991-08-10 21:13:31'),
('15','56','15','2001-06-20 22:07:47'),
('16','10','6','1991-08-21 13:25:08'),
('17','15','6','1991-08-21 13:26:08'); 


DROP TABLE IF EXISTS `web_answers`;
CREATE TABLE `web_answers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queries_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  `site_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rubric_name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queries_id` (`queries_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `web_answers_ibfk_1` FOREIGN KEY (`queries_id`) REFERENCES `web_queries` (`id`),
  CONSTRAINT `web_answers_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `web_answers` VALUES ('1','1','1','nesciunt','tenetur'),
('2','2','2','dolores','consequatur'),
('3','3','3','dolor','modi'),
('4','4','4','consequatur','quisquam'),
('5','5','5','deserunt','consequatur'),
('6','6','6','itaque','pariatur'),
('7','7','7','numquam','et'),
('8','8','8','laudantium','quaerat'),
('9','9','9','tempore','aut'),
('10','10','10','laudantium','odio'),
('11','11','11','qui','explicabo'),
('12','12','12','fugiat','nam'),
('13','13','13','aut','reprehenderit'),
('14','14','14','quae','voluptates'),
('15','15','15','aut','itaque'),
('16','16','16','quis','dolor'),
('17','17','17','omnis','consequatur'),
('18','18','18','aperiam','inventore'),
('19','19','19','dolores','consequatur'),
('20','20','20','quia','id'),
('21','1','21','dolore','occaecati'),
('22','2','22','commodi','fugiat'),
('23','3','23','exercitationem','autem'),
('24','4','24','corporis','alias'),
('25','5','25','odio','culpa'),
('26','6','26','dolor','earum'),
('27','7','27','ea','et'),
('28','8','28','nobis','ex'),
('29','9','29','distinctio','officiis'),
('30','10','30','et','quis'); 


DROP TABLE IF EXISTS `web_queries`;
CREATE TABLE `web_queries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `queries_idx` (`query`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `web_queries` VALUES ('1','Autem illum cumque doloribus mollitia assumenda. Qui quidem numquam ut facere. Quia ea consequuntur maxime sint eligendi laboriosam libero reprehenderit. Odit odio nobis qui rem temporibus et.','2002-03-24 18:00:36','2011-07-23 17:08:55'),
('2','Qui consequatur a eaque vel magnam non iure. Odit id ut tenetur consectetur autem. Repellendus velit vero est unde aliquam doloribus.','1982-12-15 06:20:20','1992-10-09 00:12:30'),
('3','Magni autem aut qui. Molestiae eos saepe perspiciatis magnam totam.\nNisi qui sit dolorem. Sed aperiam beatae distinctio minima ut. Dolor consequatur illo at velit voluptate voluptatibus.','2004-10-01 03:09:05','1997-06-29 10:51:16'),
('4','Quas quae amet voluptatem eos eos. Et vero nobis commodi ut. Sunt cupiditate est quis sint veniam. Voluptatem reiciendis velit nam saepe quasi iusto.','1988-10-28 00:58:59','1996-05-19 21:40:59'),
('5','Quaerat quidem esse corrupti et labore asperiores incidunt. Ex rerum quidem rerum voluptatem provident laboriosam voluptatibus. Magni non quod odit a et sint ullam.','2020-08-18 04:22:03','2004-04-08 17:34:23'),
('6','Atque temporibus architecto in quo aut eveniet consequatur. Quo explicabo est officiis in. Magni dolor eveniet assumenda blanditiis doloremque. Porro alias quaerat dolor ad culpa officiis alias.','2011-06-13 19:20:09','2014-12-07 10:33:04'),
('7','Sit nihil enim ut iusto libero suscipit doloremque. Sed aspernatur enim quia et vel. Dolor praesentium sit officiis. Amet fugiat ullam modi saepe et excepturi accusantium.','2014-03-22 09:57:45','2015-09-29 08:38:06'),
('8','Quos mollitia eum quaerat quo repudiandae. Voluptas est explicabo qui. Ex distinctio est error consequatur optio quaerat nobis.','2003-11-17 21:56:41','1977-02-09 03:51:36'),
('9','Expedita ut omnis qui. Est ea distinctio quibusdam veritatis tempora necessitatibus. Ut ea a quas id quos.','2008-10-21 00:05:27','2007-09-04 12:19:52'),
('10','Nemo sunt quia expedita sequi sed consectetur error. Debitis pariatur qui aliquid porro sequi voluptas. Ea temporibus ab asperiores enim officia id dignissimos velit.','1982-01-04 05:06:21','2010-09-15 09:53:49'),
('11','Totam accusamus id molestiae et cupiditate quas architecto. Et sint tempora eaque earum exercitationem officia neque. Omnis doloribus aut nobis atque voluptas occaecati in.','1997-09-30 02:03:27','1999-08-20 21:29:32'),
('12','Earum quis dolores aspernatur totam consequatur. Facere et deleniti dolor. Voluptas aut repellendus hic vitae at iusto.','1982-03-07 00:42:53','2008-05-26 17:15:12'),
('13','Voluptates nam voluptatum quia eum officia a iste. Cupiditate sunt vel eum modi ut quis. Et dolores esse earum. Ea eius voluptatem et sequi facere est dolores adipisci.','2020-05-24 20:14:44','2001-12-06 09:48:09'),
('14','Ut quia provident est vitae pariatur laudantium. Sed ut dicta ut quia velit. Ut nulla in praesentium modi voluptatum.','1981-06-23 02:45:13','1985-02-09 15:38:47'),
('15','Odit molestiae neque officia eaque sit. Dolores totam voluptatem totam ipsum est eveniet enim. Ratione consequuntur quos consequatur autem. Perspiciatis eum quam optio est.','1997-08-19 05:30:41','1987-07-26 19:53:27'),
('16','Distinctio rerum aperiam maiores ut voluptatem. Est non ipsa eligendi sapiente quia rerum quis. Facere sed et natus cumque voluptatibus quos est.','2017-10-11 12:39:43','1975-05-06 19:43:25'),
('17','Consequatur eveniet pariatur et magnam modi doloribus ipsa. Voluptas vel consequuntur velit eos minus sit qui. Inventore sapiente iusto laborum veritatis error eum minima aut.','2000-06-27 05:56:23','1992-03-09 00:25:07'),
('18','Veniam officiis quo mollitia iure illo rem. Cum voluptatem dolor sunt illum eos.','1994-11-15 00:36:38','2016-05-07 19:02:52'),
('19','Sapiente et totam aspernatur distinctio. Eius error porro et repudiandae commodi labore magni quam. Voluptatem ut distinctio dolorem aut quibusdam nisi nulla. Possimus natus eos eos sunt.','2009-11-07 17:42:05','1973-12-21 10:02:48'),
('20','Ab quis blanditiis similique sit omnis et et dolorum. Natus iusto ipsam numquam quo aliquid omnis sint. Sed culpa velit voluptatem.','2006-12-16 11:34:19','1997-02-08 02:54:32'); 


ALTER TABLE mail.news 
ADD CONSTRAINT news_fk_1 
FOREIGN KEY (media_id) REFERENCES media(id);
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

