#
# TABLE STRUCTURE FOR: cities
#

DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (1, 'Virginiahaven', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (2, 'Lake Stephany', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (3, 'Ellisview', 10);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (4, 'North Pierce', 10);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (5, 'Marieport', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (6, 'South Charlie', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (7, 'West Layneton', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (8, 'East Brielleport', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (9, 'West Christine', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (10, 'West Donavonstad', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (11, 'East Heleneside', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (12, 'Kristoferton', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (13, 'Port Gabrielleview', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (14, 'Jerdebury', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (15, 'Keeblerburgh', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (16, 'Grahamtown', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (17, 'New Ryanshire', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (18, 'Harveyburgh', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (19, 'Ethabury', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (20, 'East Nickolasberg', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (21, 'Quitzontown', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (22, 'Eichmannburgh', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (23, 'Gislasonview', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (24, 'East Shauntown', 2);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (25, 'South Johnny', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (26, 'East Eleanore', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (27, 'Lake Conrad', 10);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (28, 'New Danielaborough', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (29, 'Bechtelarland', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (30, 'Devynshire', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (31, 'Bartolettiberg', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (32, 'East Maurice', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (33, 'Selinachester', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (34, 'Pollichton', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (35, 'Lake Beverly', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (36, 'Rempelberg', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (37, 'Port Rocio', 3);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (38, 'South Darlene', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (39, 'North Consuelo', 6);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (40, 'Thompsonfurt', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (41, 'North Mayeland', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (42, 'North Renestad', 9);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (43, 'Dietrichfurt', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (44, 'Port Caseyfort', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (45, 'South Kristofferfort', 5);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (46, 'South Karashire', 1);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (47, 'New Alvina', 4);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (48, 'Port Cicero', 7);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (49, 'Rutherfordshire', 8);
INSERT INTO `cities` (`id`, `name`, `country_id`) VALUES (50, 'East Marvinfort', 6);


#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Id qui nesciunt.', '2020-08-03 13:49:30', '2021-02-12 20:33:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Nemo architecto cupiditate laudantium.', '2015-01-06 01:43:07', '2020-11-13 08:14:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Eum at saepe occaecati.', '2017-09-23 15:33:47', '2021-01-04 08:51:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Aliquid omnis minus doloremque.', '2013-03-28 03:05:22', '2021-06-28 10:35:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Sit exercitationem nesciunt.', '2016-12-02 10:13:34', '2020-11-02 07:34:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Iure aut dolorum.', '2015-12-03 09:25:19', '2021-03-09 11:46:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Voluptas temporibus sed eum.', '2019-09-19 16:45:51', '2020-10-14 22:07:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Voluptatem provident eveniet exercitationem.', '2011-11-05 20:18:20', '2021-03-15 17:13:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Soluta dolores dolor iure.', '2011-12-27 10:51:30', '2021-07-04 07:49:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Magni molestiae totam.', '2016-05-13 22:54:19', '2020-09-12 08:55:12');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2020-07-14 17:25:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 11, '2020-08-08 02:01:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 21, '2020-07-15 15:05:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 31, '2020-11-24 00:05:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 41, '2021-04-29 20:59:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 51, '2020-09-05 04:02:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 61, '2020-07-30 19:36:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 71, '2021-03-24 05:41:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 81, '2020-11-22 16:30:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 91, '2020-07-26 05:01:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '2021-03-20 21:45:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 12, '2021-07-06 05:59:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 22, '2020-09-05 11:09:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 32, '2021-06-17 19:13:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 42, '2021-05-27 10:08:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 52, '2020-11-27 08:33:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 62, '2021-05-14 23:00:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 72, '2021-05-06 01:05:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 82, '2021-05-07 05:26:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 92, '2021-06-05 09:41:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2021-05-23 08:58:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 13, '2020-11-19 07:58:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 23, '2020-10-29 07:15:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 33, '2020-11-29 04:12:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 43, '2021-02-21 04:31:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 53, '2021-06-08 17:25:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 63, '2021-03-03 13:13:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 73, '2021-05-31 12:26:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 83, '2020-09-04 10:31:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 93, '2020-07-09 16:33:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2021-06-08 08:49:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 14, '2020-12-10 08:40:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 24, '2021-03-07 14:29:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 34, '2021-06-07 12:10:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 44, '2021-05-19 02:10:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 54, '2020-09-15 07:35:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 64, '2020-11-12 16:22:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 74, '2021-06-13 08:12:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 84, '2020-12-31 05:13:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 94, '2021-06-18 03:37:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2020-10-19 01:08:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 15, '2020-10-03 08:26:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 25, '2020-07-22 06:09:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 35, '2021-01-10 14:35:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 45, '2020-11-26 07:34:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 55, '2020-09-01 08:06:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 65, '2020-10-24 23:37:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 75, '2021-05-02 20:16:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 85, '2021-05-25 09:24:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 95, '2021-03-19 03:28:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '2021-01-07 22:01:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 16, '2021-02-14 16:56:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 26, '2021-07-03 01:11:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 36, '2021-07-02 23:19:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 46, '2021-01-14 01:24:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 56, '2021-04-20 21:52:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 66, '2020-12-11 20:28:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 76, '2021-02-16 23:16:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 86, '2020-09-11 06:54:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 96, '2021-01-17 13:23:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '2020-10-15 14:07:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 17, '2020-10-14 07:26:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 27, '2020-10-02 00:20:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 37, '2020-07-14 03:00:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 47, '2021-03-17 03:55:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 57, '2021-03-23 13:19:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 67, '2021-02-27 23:32:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 77, '2021-01-29 12:11:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 87, '2021-05-13 03:17:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 97, '2021-04-11 14:34:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '2021-02-25 03:19:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 18, '2020-12-13 23:03:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 28, '2021-05-01 12:27:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 38, '2020-08-01 06:21:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 48, '2020-11-03 12:56:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 58, '2021-04-08 02:37:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 68, '2021-04-26 07:23:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 78, '2020-09-08 04:42:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 88, '2020-09-25 18:52:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 98, '2021-03-05 12:31:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2020-07-25 09:27:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 19, '2021-03-08 19:41:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 29, '2021-03-10 13:17:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 39, '2020-09-21 13:39:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 49, '2020-12-27 05:14:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 59, '2021-01-05 05:15:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 69, '2021-05-22 20:08:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 79, '2021-06-29 17:18:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 89, '2021-02-02 00:27:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 99, '2020-08-16 15:53:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '2020-12-06 03:33:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 20, '2020-10-24 04:20:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 30, '2021-02-11 01:11:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 40, '2021-04-24 05:14:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 50, '2021-01-06 17:59:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 60, '2021-01-17 09:56:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 70, '2021-03-19 02:20:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 80, '2021-03-09 15:17:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 90, '2021-01-17 08:34:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 100, '2021-04-23 04:49:31');


#
# TABLE STRUCTURE FOR: countries
#

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `name`) VALUES (1, 'French Guiana');
INSERT INTO `countries` (`id`, `name`) VALUES (2, 'Palestinian Territory');
INSERT INTO `countries` (`id`, `name`) VALUES (3, 'Netherlands');
INSERT INTO `countries` (`id`, `name`) VALUES (4, 'Iraq');
INSERT INTO `countries` (`id`, `name`) VALUES (5, 'Albania');
INSERT INTO `countries` (`id`, `name`) VALUES (6, 'Madagascar');
INSERT INTO `countries` (`id`, `name`) VALUES (7, 'Saint Barthelemy');
INSERT INTO `countries` (`id`, `name`) VALUES (8, 'United States Minor Outlying Islands');
INSERT INTO `countries` (`id`, `name`) VALUES (9, 'Kenya');
INSERT INTO `countries` (`id`, `name`) VALUES (10, 'Angola');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 2, '2021-03-06 18:00:59', '2020-12-03 17:40:06', '2021-06-27 05:06:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '2021-03-06 06:27:40', '2021-03-23 07:59:40', '2021-06-18 15:24:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 2, '2021-03-29 15:57:37', '2020-12-29 14:34:09', '2021-06-27 05:54:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 3, '2021-04-01 13:07:10', '2020-10-30 10:36:48', '2021-06-29 11:00:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 3, '2020-12-01 12:25:35', '2021-04-02 04:13:16', '2021-06-15 04:10:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 1, '2021-03-12 12:49:35', '2021-05-27 11:08:44', '2021-06-18 23:02:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 3, '2021-05-17 06:41:10', '2020-12-14 09:36:40', '2021-07-02 15:04:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 1, '2021-06-08 01:56:51', '2020-10-26 12:11:05', '2021-06-26 09:42:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 1, '2021-03-13 01:46:49', '2021-02-23 16:07:33', '2021-07-03 07:24:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 1, '2021-04-21 20:18:27', '2021-05-18 19:34:10', '2021-06-12 00:12:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 3, '2020-11-18 22:31:58', '2021-06-01 17:58:01', '2021-06-15 20:57:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 1, '2021-01-08 13:37:06', '2021-03-23 04:55:19', '2021-06-28 14:41:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 2, '2020-10-18 08:32:59', '2020-11-29 21:56:33', '2021-06-19 15:52:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 3, '2020-11-07 15:49:21', '2020-12-16 10:50:08', '2021-07-05 12:57:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 3, '2020-09-21 06:36:35', '2020-11-26 16:14:56', '2021-06-22 21:24:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 2, '2021-06-05 10:09:49', '2020-07-29 09:33:40', '2021-06-23 01:51:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 1, '2020-12-08 15:09:42', '2021-06-10 10:35:07', '2021-06-11 01:44:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 1, '2021-01-17 11:20:45', '2020-11-12 07:29:05', '2021-07-05 03:12:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '2020-08-14 13:02:49', '2020-10-29 13:24:46', '2021-06-14 12:40:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '2020-12-02 00:48:25', '2020-10-26 22:50:52', '2021-06-28 19:05:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 2, '2020-12-28 20:10:47', '2020-09-14 11:35:58', '2021-06-18 22:26:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 3, '2020-08-19 05:14:32', '2021-05-12 03:06:16', '2021-06-10 23:43:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 1, '2020-12-08 16:37:48', '2020-10-30 12:51:41', '2021-07-03 13:15:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 1, '2021-01-18 22:25:06', '2021-05-09 12:30:16', '2021-06-26 09:23:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 3, '2021-03-16 03:01:32', '2020-08-24 18:13:46', '2021-07-01 05:05:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '2021-04-10 09:31:01', '2020-10-02 12:51:15', '2021-06-11 21:08:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 1, '2020-11-17 04:15:58', '2020-10-24 02:26:27', '2021-06-12 16:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 2, '2021-01-06 23:10:02', '2020-12-03 10:53:30', '2021-07-04 18:33:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 3, '2021-06-06 09:13:00', '2020-09-18 00:12:20', '2021-07-02 10:56:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 2, '2020-12-27 04:13:01', '2021-04-04 22:32:02', '2021-06-17 12:32:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '2021-06-16 21:43:53', '2020-08-24 17:08:45', '2021-06-24 02:24:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 3, '2020-07-29 20:28:53', '2020-11-22 11:23:59', '2021-06-16 17:48:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 2, '2021-01-21 02:43:02', '2021-03-09 01:13:06', '2021-06-20 20:14:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 3, '2021-01-01 04:38:02', '2020-10-25 10:51:42', '2021-06-15 04:58:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 2, '2021-04-16 00:09:26', '2021-01-31 01:41:14', '2021-07-03 21:13:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 1, '2020-12-13 17:11:54', '2020-09-04 17:17:17', '2021-06-14 00:01:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '2021-05-19 13:16:22', '2021-03-03 14:15:34', '2021-07-05 08:35:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 1, '2021-02-12 00:23:44', '2021-01-08 03:20:54', '2021-06-20 04:20:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 3, '2021-07-08 17:39:18', '2021-06-28 10:05:30', '2021-06-20 10:33:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 3, '2020-11-13 22:45:27', '2021-02-02 07:12:26', '2021-06-13 05:57:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 3, '2020-12-02 01:15:37', '2021-05-24 09:18:45', '2021-06-09 10:59:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 3, '2021-07-04 14:02:46', '2020-10-11 11:10:44', '2021-06-20 19:53:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 2, '2021-03-04 05:47:41', '2021-01-07 06:39:57', '2021-06-30 13:10:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '2021-05-06 22:27:22', '2021-06-21 22:22:23', '2021-07-03 12:56:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 3, '2020-11-16 03:20:09', '2020-07-18 15:52:39', '2021-06-16 05:40:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 2, '2021-02-26 05:55:43', '2021-05-01 18:48:43', '2021-06-28 01:08:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2020-10-10 08:26:10', '2020-11-17 19:01:25', '2021-07-03 17:53:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '2020-11-26 23:27:57', '2020-07-19 00:43:24', '2021-06-25 09:48:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '2020-08-16 09:50:56', '2020-08-29 05:33:12', '2021-07-06 21:15:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 1, '2020-08-10 18:06:36', '2020-10-30 20:58:39', '2021-06-24 10:47:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '2020-10-26 06:31:22', '2021-04-23 21:34:11', '2021-07-05 04:46:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 1, '2020-08-02 01:57:15', '2020-08-21 21:09:30', '2021-06-25 06:07:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 1, '2020-12-24 19:21:48', '2021-04-16 23:26:24', '2021-06-16 09:19:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 1, '2021-01-01 03:20:57', '2020-08-01 13:36:28', '2021-07-04 06:54:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '2021-03-21 05:10:35', '2021-06-25 01:48:31', '2021-06-27 00:52:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 1, '2020-12-15 06:52:17', '2020-12-06 12:09:46', '2021-06-16 13:17:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 2, '2021-05-17 02:18:26', '2021-02-08 00:27:45', '2021-06-13 17:18:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 2, '2021-02-03 05:19:50', '2020-12-29 10:18:35', '2021-06-22 12:44:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 1, '2020-09-14 04:23:58', '2021-04-18 16:16:19', '2021-07-06 17:58:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 1, '2021-03-06 22:50:40', '2021-02-15 02:22:51', '2021-06-20 03:08:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 2, '2020-07-18 12:51:57', '2020-08-23 17:17:47', '2021-06-16 17:03:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '2021-02-03 06:15:06', '2021-02-02 05:31:20', '2021-07-07 16:54:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 1, '2021-01-04 10:05:40', '2021-01-23 01:39:39', '2021-07-01 00:02:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 1, '2020-12-10 16:22:51', '2020-08-21 19:00:56', '2021-06-26 12:44:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 1, '2020-11-26 22:23:37', '2021-05-22 04:38:46', '2021-06-15 12:06:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 2, '2021-04-19 17:23:49', '2021-01-14 17:47:51', '2021-07-05 14:41:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 2, '2020-07-20 22:04:23', '2021-04-10 16:35:16', '2021-06-24 00:23:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '2020-12-11 01:31:57', '2021-01-17 01:27:26', '2021-07-06 15:22:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 1, '2020-12-26 14:56:57', '2020-09-24 15:04:28', '2021-06-16 01:30:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 2, '2021-04-11 07:38:56', '2021-06-26 12:36:42', '2021-06-09 17:20:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 2, '2021-02-03 00:12:45', '2020-08-15 22:46:58', '2021-06-21 03:11:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 1, '2020-10-30 23:40:10', '2021-03-14 19:02:53', '2021-06-21 12:21:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2020-09-04 14:50:28', '2020-12-30 12:43:09', '2021-06-10 08:48:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 3, '2021-01-07 02:30:57', '2021-01-16 09:57:56', '2021-06-18 04:56:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 2, '2021-02-09 15:03:24', '2021-01-25 10:03:52', '2021-06-14 17:32:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (76, 76, 3, '2021-01-01 06:08:57', '2021-02-03 03:29:56', '2021-07-03 08:52:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (77, 77, 1, '2021-04-19 22:07:29', '2021-06-13 13:59:47', '2021-06-12 04:53:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (78, 78, 1, '2020-07-20 08:54:55', '2021-02-13 11:51:38', '2021-06-23 22:13:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (79, 79, 1, '2020-08-11 06:03:29', '2021-01-03 06:31:47', '2021-06-13 16:31:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (80, 80, 2, '2021-03-26 12:35:20', '2020-11-02 04:00:47', '2021-06-23 14:57:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (81, 81, 3, '2021-03-08 15:38:05', '2020-12-13 22:44:07', '2021-06-16 19:57:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (82, 82, 3, '2020-10-22 06:30:47', '2021-02-09 04:39:25', '2021-07-08 02:22:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (83, 83, 2, '2021-02-03 07:20:36', '2020-09-04 18:52:24', '2021-07-02 12:34:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (84, 84, 1, '2021-01-10 15:54:10', '2021-05-30 19:55:29', '2021-06-26 15:17:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (85, 85, 1, '2020-12-15 15:39:40', '2020-08-25 06:42:56', '2021-06-21 23:30:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (86, 86, 1, '2021-05-28 03:39:38', '2020-12-09 17:21:50', '2021-06-23 09:08:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (87, 87, 3, '2020-09-06 11:42:11', '2021-06-04 01:24:59', '2021-07-05 22:29:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (88, 88, 2, '2021-01-18 18:03:44', '2021-05-18 21:31:34', '2021-06-18 05:58:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (89, 89, 3, '2021-01-29 06:14:42', '2020-09-05 06:32:04', '2021-07-04 13:26:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (90, 90, 2, '2021-03-07 12:29:32', '2021-04-06 20:24:23', '2021-06-24 00:41:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (91, 91, 2, '2021-01-29 19:33:49', '2020-11-17 07:18:47', '2021-07-07 16:29:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (92, 92, 3, '2021-05-15 14:29:43', '2020-11-19 17:57:10', '2021-06-13 01:33:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (93, 93, 2, '2021-01-13 10:24:44', '2020-08-27 06:42:57', '2021-07-01 11:02:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (94, 94, 3, '2020-10-06 19:45:31', '2020-08-21 21:53:35', '2021-06-11 22:33:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (95, 95, 3, '2021-02-15 21:44:43', '2021-01-20 23:23:47', '2021-06-25 18:02:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (96, 96, 2, '2020-08-12 08:02:45', '2020-09-10 20:13:44', '2021-07-07 01:33:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (97, 97, 3, '2021-04-25 20:20:12', '2021-06-27 11:55:03', '2021-06-09 13:18:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (98, 98, 2, '2020-10-19 13:31:24', '2021-04-26 22:41:33', '2021-06-09 01:05:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (99, 99, 3, '2020-10-06 01:11:04', '2021-07-07 22:06:22', '2021-07-01 02:21:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `confirmed_at`, `created_at`, `updated_at`) VALUES (100, 100, 3, '2021-03-28 08:50:01', '2020-11-16 08:18:17', '2021-06-12 05:48:49');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'ut', '2014-05-15 16:48:17', '2020-09-02 02:15:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'enim', '2017-03-02 20:41:54', '2021-07-05 17:09:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'fugit', '2017-02-10 10:15:21', '2020-08-27 23:33:01');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'iure', 73019, NULL, 3, '2019-07-13 12:56:50', '2021-07-08 07:37:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'reiciendis', 16439, NULL, 3, '2017-11-30 10:35:25', '2021-01-07 05:12:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'praesentium', 47024, NULL, 5, '2013-08-04 06:30:05', '2021-06-18 15:09:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'rerum', 87668, NULL, 5, '2020-03-13 17:17:24', '2021-01-17 22:41:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ducimus', 90124, NULL, 1, '2014-10-20 11:01:55', '2020-11-19 05:05:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'eos', 79338, NULL, 4, '2018-08-04 11:59:13', '2021-05-30 23:36:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'recusandae', 51593, NULL, 1, '2019-04-16 06:51:22', '2021-06-20 10:54:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'perferendis', 80315, NULL, 5, '2020-11-09 21:39:03', '2020-09-30 01:37:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'repellat', 63932, NULL, 4, '2018-05-31 14:29:21', '2021-07-06 13:23:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'et', 77646, NULL, 5, '2019-05-13 04:05:22', '2020-08-12 20:21:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'quisquam', 68816, NULL, 3, '2013-11-18 21:01:49', '2021-06-27 19:20:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'non', 64884, NULL, 4, '2017-08-09 16:08:25', '2020-11-11 10:31:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'dolore', 61738, NULL, 2, '2016-09-20 18:05:17', '2021-01-29 11:26:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'corporis', 60042, NULL, 2, '2021-02-10 19:28:28', '2021-02-03 14:08:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'facere', 472, NULL, 5, '2013-07-15 20:50:15', '2020-12-22 19:03:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'incidunt', 90606, NULL, 2, '2012-02-21 15:24:57', '2021-06-01 22:32:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'blanditiis', 73764, NULL, 1, '2014-07-03 11:39:09', '2020-07-21 07:15:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'ex', 90882, NULL, 2, '2014-11-10 03:42:03', '2021-04-15 12:47:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'corrupti', 8795, NULL, 4, '2020-09-21 15:38:17', '2021-06-28 05:23:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'itaque', 19037, NULL, 2, '2016-06-14 14:07:17', '2021-01-24 22:36:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'consequatur', 1134, NULL, 2, '2012-12-11 05:04:35', '2020-10-17 16:40:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'illo', 98097, NULL, 3, '2017-06-07 16:29:27', '2021-05-29 23:17:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'nisi', 9055, NULL, 3, '2021-04-22 02:28:39', '2021-06-12 21:02:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'ullam', 19875, NULL, 1, '2018-12-22 04:34:30', '2020-08-08 13:51:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'voluptatem', 30105, NULL, 4, '2016-01-02 11:27:54', '2021-03-24 09:10:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'dolorem', 26445, NULL, 5, '2012-03-22 03:19:54', '2020-11-02 13:25:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'autem', 5911, NULL, 5, '2013-05-30 22:43:30', '2020-07-09 19:29:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'quos', 86020, NULL, 5, '2017-06-17 23:46:26', '2020-12-12 16:30:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'a', 96195, NULL, 2, '2020-03-03 10:17:01', '2021-06-17 09:00:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'nulla', 87813, NULL, 1, '2020-01-25 14:57:16', '2021-01-11 13:03:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'fugiat', 49842, NULL, 4, '2016-01-18 15:36:31', '2020-09-11 14:35:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'amet', 11322, NULL, 4, '2020-10-11 06:38:15', '2021-06-05 19:02:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'consectetur', 69005, NULL, 2, '2015-05-20 02:34:07', '2021-02-28 23:33:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'est', 6247, NULL, 1, '2019-08-28 06:25:21', '2020-09-20 14:03:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'atque', 90887, NULL, 4, '2018-12-20 21:43:58', '2020-08-03 03:44:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'voluptates', 95152, NULL, 2, '2018-02-19 10:49:40', '2021-03-30 08:40:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'ab', 3645, NULL, 2, '2015-12-03 08:11:36', '2021-06-28 01:24:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'aut', 8657, NULL, 4, '2019-01-18 23:11:19', '2021-05-01 02:22:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'voluptate', 88469, NULL, 3, '2018-07-22 10:08:25', '2020-11-30 14:40:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'nihil', 19600, NULL, 5, '2019-08-13 04:58:51', '2020-08-24 22:48:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'molestias', 51978, NULL, 5, '2017-07-01 16:12:26', '2021-05-31 12:15:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'nostrum', 67931, NULL, 4, '2020-03-24 08:52:14', '2020-09-25 05:21:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'odit', 35929, NULL, 5, '2019-07-13 06:04:17', '2021-06-26 07:47:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'modi', 70802, NULL, 5, '2020-06-13 14:41:55', '2020-07-23 04:26:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'ut', 45177, NULL, 2, '2012-09-13 03:17:49', '2020-12-17 12:48:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'laboriosam', 14395, NULL, 4, '2015-01-21 02:08:28', '2020-09-17 09:52:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'alias', 72555, NULL, 1, '2021-06-15 04:04:25', '2021-02-06 01:55:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'nam', 25318, NULL, 5, '2018-10-31 11:37:24', '2020-09-14 12:16:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'veritatis', 30054, NULL, 3, '2019-06-26 14:30:37', '2021-01-30 06:39:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'commodi', 14738, NULL, 1, '2012-11-30 08:21:14', '2021-05-02 22:10:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'cumque', 88662, NULL, 4, '2016-11-21 13:40:58', '2021-07-04 20:15:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'numquam', 86463, NULL, 5, '2021-06-22 14:16:17', '2021-07-04 10:03:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'facilis', 33499, NULL, 1, '2012-10-01 00:39:38', '2020-10-28 12:50:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'sed', 40541, NULL, 5, '2012-11-20 01:28:42', '2020-08-01 18:07:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'illum', 27082, NULL, 5, '2016-02-27 20:17:35', '2020-09-20 11:31:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'quia', 31386, NULL, 5, '2011-07-12 18:04:50', '2020-11-15 00:35:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'ad', 17054, NULL, 2, '2012-06-04 22:19:19', '2021-01-17 15:24:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'maiores', 87927, NULL, 2, '2020-10-05 09:42:34', '2021-02-20 20:07:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'saepe', 79822, NULL, 3, '2018-11-14 14:33:43', '2020-11-11 18:15:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'omnis', 67438, NULL, 5, '2016-03-25 14:31:48', '2020-07-23 04:39:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'eum', 86587, NULL, 2, '2020-05-31 11:19:03', '2020-08-07 05:08:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'mollitia', 55842, NULL, 2, '2016-06-11 07:56:42', '2021-02-13 20:33:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'aspernatur', 14143, NULL, 2, '2015-01-07 21:24:36', '2021-05-04 10:58:37');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'exercitationem', 570, NULL, 1, '2021-04-09 02:18:49', '2021-02-08 11:14:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'quidem', 26050, NULL, 1, '2014-09-12 17:01:38', '2020-09-17 18:31:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'harum', 24836, NULL, 5, '2017-06-08 12:33:22', '2021-01-13 06:05:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'sit', 36672, NULL, 1, '2021-07-03 01:44:45', '2020-11-25 21:52:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'deserunt', 24833, NULL, 4, '2011-09-30 18:07:02', '2021-01-09 11:41:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'quis', 56863, NULL, 2, '2012-03-03 23:34:26', '2020-11-21 01:53:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'iusto', 42053, NULL, 5, '2019-01-06 17:24:00', '2020-09-23 12:26:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'sunt', 93350, NULL, 4, '2017-05-01 23:24:25', '2020-11-05 00:55:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'possimus', 69527, NULL, 3, '2019-06-12 00:37:19', '2021-02-01 18:20:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'adipisci', 3694, NULL, 5, '2020-03-09 09:05:30', '2020-07-18 02:11:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'nesciunt', 1845, NULL, 1, '2014-09-09 04:40:27', '2021-01-12 10:00:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'labore', 8345, NULL, 5, '2012-05-02 00:55:26', '2021-04-16 23:54:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'architecto', 32694, NULL, 1, '2020-01-11 11:07:16', '2021-02-11 12:49:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'eligendi', 40991, NULL, 5, '2014-08-01 07:37:11', '2021-03-26 22:42:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'in', 81482, NULL, 2, '2019-02-02 15:57:11', '2020-08-10 03:40:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'quo', 52817, NULL, 3, '2019-04-22 12:25:19', '2021-01-12 01:06:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'excepturi', 18083, NULL, 1, '2019-08-25 06:22:04', '2021-03-08 14:18:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'debitis', 44811, NULL, 2, '2012-02-02 22:36:21', '2021-01-18 02:02:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'provident', 86562, NULL, 4, '2018-05-28 17:06:24', '2020-08-29 03:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'porro', 5301, NULL, 2, '2018-12-10 20:14:04', '2020-12-06 08:20:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'vel', 89461, NULL, 2, '2016-06-14 04:25:18', '2021-06-09 21:15:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'nobis', 35877, NULL, 5, '2019-11-17 12:52:18', '2020-12-12 10:48:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'odio', 41489, NULL, 3, '2019-03-31 03:25:24', '2020-09-26 17:23:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'voluptas', 78269, NULL, 5, '2019-03-29 23:21:14', '2021-01-06 20:23:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'velit', 97717, NULL, 4, '2020-10-03 15:01:04', '2021-03-18 00:47:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'optio', 65290, NULL, 5, '2011-12-03 23:23:02', '2021-01-18 01:42:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'dolor', 25280, NULL, 2, '2018-10-14 11:16:52', '2020-11-19 04:00:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'vero', 67432, NULL, 4, '2021-06-09 19:02:32', '2020-08-10 05:07:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'eius', 82726, NULL, 5, '2016-06-11 12:51:18', '2021-01-16 13:09:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'quae', 50533, NULL, 5, '2016-11-11 10:31:55', '2020-10-29 23:10:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'veniam', 88414, NULL, 1, '2014-09-19 19:14:16', '2020-12-29 00:34:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'distinctio', 6348, NULL, 4, '2016-04-06 03:24:36', '2021-05-15 00:04:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'doloribus', 24244, NULL, 1, '2014-03-18 16:09:49', '2020-08-12 07:58:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'enim', 70400, NULL, 4, '2012-11-23 12:51:19', '2021-02-05 01:49:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'temporibus', 73503, NULL, 3, '2018-06-01 08:07:34', '2020-08-04 15:26:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'dicta', 36569, NULL, 3, '2021-06-21 22:34:11', '2021-01-28 11:23:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'suscipit', 77856, NULL, 3, '2016-10-24 15:25:13', '2021-04-28 07:43:37');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, ' zip', '2020-09-13 03:40:37', '2021-06-09 18:16:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, ' mp4', '2021-01-02 17:16:23', '2021-06-29 02:00:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'mp3', '2021-04-11 09:35:33', '2021-06-20 06:00:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, ' avi', '2021-03-19 23:49:51', '2021-07-03 01:16:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, ' doc', '2020-12-31 00:18:38', '2021-07-06 02:58:05');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'In a little recovered from the Gryphon, \'you first form into a chrysalis--you will some day, you know--and then after that into a butterfly, I should like to hear it say, as it spoke. \'As wet as.', 1, 0, '2020-08-28 22:05:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'The Duchess took no notice of her hedgehog. The hedgehog was engaged in a great deal to ME,\' said the Mock Turtle a little recovered from the shock of being upset, and their curls got entangled.', 0, 1, '2020-12-03 12:15:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Alice did not venture to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in a louder tone. \'ARE you to death.\"\' \'You are all dry, he is gay as a cushion, resting their elbows on it,.', 1, 0, '2020-11-23 18:31:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'I don\'t believe it,\' said the Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came back again. \'Keep your temper,\' said the.', 0, 0, '2020-08-02 21:30:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'There ought to have finished,\' said the King. \'When did you begin?\' The Hatter was the fan and gloves. \'How queer it seems,\' Alice said to herself. \'Shy, they seem to see if he were trying to find.', 0, 1, '2021-05-06 06:17:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Gryphon, lying fast asleep in the middle, wondering how she would have made a snatch in the middle, being held up by a row of lamps hanging from the change: and Alice could not make out which were.', 1, 1, '2020-07-20 23:57:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Lastly, she pictured to herself that perhaps it was certainly too much frightened that she began looking at the Duchess was VERY ugly; and secondly, because she was quite impossible to say but \'It.', 0, 1, '2021-07-02 16:44:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Hatter grumbled: \'you shouldn\'t have put it in a wondering tone. \'Why, what are YOUR shoes done with?\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know what they\'re about!\'.', 0, 0, '2021-02-14 02:20:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Hatter: and in despair she put it. She stretched herself up closer to Alice\'s great surprise, the Duchess\'s knee, while plates and dishes crashed around it--once more the shriek of the thing.', 1, 0, '2021-06-14 16:52:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Hatter: \'let\'s all move one place on.\' He moved on as he spoke, and added \'It isn\'t a bird,\' Alice remarked. \'Oh, you foolish Alice!\' she answered herself. \'How can you learn lessons in here? Why,.', 0, 1, '2020-10-27 08:26:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Majesty!\' the Duchess asked, with another hedgehog, which seemed to think that very few things indeed were really impossible. There seemed to think to herself, \'the way all the other side will make.', 0, 1, '2020-11-07 09:35:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Quadrille is!\' \'No, indeed,\' said Alice. \'Well, then,\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the King; \'and don\'t look at the frontispiece if you were down here with me! There are no.', 0, 1, '2020-09-21 12:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'You\'re mad.\' \'How do you call it sad?\' And she kept tossing the baby with some severity; \'it\'s very interesting. I never was so large a house, that she was small enough to look over their shoulders,.', 0, 0, '2020-12-04 15:14:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Alice, and looking anxiously about her. \'Oh, do let me hear the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a deep voice, \'What are tarts made of?\' Alice asked in a thick.', 0, 1, '2021-06-22 11:30:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'And mentioned me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse looked at it gloomily: then he dipped it into his cup of tea, and looked at the.', 0, 1, '2020-12-29 03:17:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Alice began to cry again, for this time she went round the hall, but they all stopped and looked at it again: but he would not stoop? Soup of the ground.\' So she sat down at once, and ran off,.', 1, 0, '2020-08-03 22:11:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Pigeon. \'I\'m NOT a serpent!\' said Alice to herself, \'I wish I had not as yet had any dispute with the lobsters to the Dormouse, not choosing to notice this question, but hurriedly went on, \'you see,.', 1, 0, '2021-05-13 15:42:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'YOU?\' said the Duchess, digging her sharp little chin. \'I\'ve a right to think,\' said Alice very politely; but she could have told you butter wouldn\'t suit the works!\' he added in a deep voice, \'What.', 1, 1, '2020-09-26 05:25:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Pigeon. \'I\'m NOT a serpent!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat in a minute or two, she made out the Fish-Footman was gone, and, by the officers.', 1, 1, '2020-07-16 22:24:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Dormouse sulkily remarked, \'If you knew Time as well as she heard one of its mouth open, gazing up into the court, \'Bring me the truth: did you do either!\' And the Gryphon only answered \'Come on!\'.', 0, 1, '2021-05-04 20:51:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Duchess. \'I make you grow taller, and the pattern on their faces, so that altogether, for the hot day made her feel very queer to ME.\' \'You!\' said the Mock Turtle, \'but if they do, why then they\'re.', 0, 0, '2020-07-21 23:17:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'The Panther took pie-crust, and gravy, and meat, While the Owl had the door opened inwards, and Alice\'s first thought was that it might belong to one of the Mock Turtle Soup is made from,\' said the.', 0, 0, '2021-07-03 03:14:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'King hastily said, and went on eagerly. \'That\'s enough about lessons,\' the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right way to explain it as well.', 1, 1, '2020-09-10 18:09:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Gryphon. \'Well, I shan\'t grow any more--As it is, I can\'t show it you myself,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was not quite like the right thing to get hold.', 1, 1, '2021-06-29 22:30:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Do come back and finish your story!\' Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces. There was no.', 0, 1, '2021-03-10 17:05:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Pray, what is the same thing a Lobster Quadrille The Mock Turtle yawned and shut his eyes.--\'Tell her about the reason and all her coaxing. Hardly knowing what she was in livery: otherwise, judging.', 1, 1, '2021-06-10 01:20:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Presently the Rabbit say to itself, \'Oh dear! Oh dear! I shall remember it in with the edge of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not allow without.', 1, 0, '2021-07-01 23:40:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'She was a general clapping of hands at this: it was growing, and growing, and very neatly and simply arranged; the only difficulty was, that her neck from being run over; and the happy summer days..', 0, 1, '2020-12-17 07:02:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'NOT, being made entirely of cardboard.) \'All right, so far,\' said the King, going up to her usual height. It was all very well without--Maybe it\'s always pepper that had a little recovered from the.', 0, 1, '2021-01-27 13:44:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'As she said to one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time it all is! I\'ll try if I was, I shouldn\'t want YOURS: I don\'t want to see the Mock.', 1, 0, '2021-01-02 11:13:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Gryphon said to herself \'This is Bill,\' she gave a sudden leap out of its right paw round, \'lives a March Hare. \'Yes, please do!\' but the Rabbit asked. \'No, I give it up,\' Alice replied: \'what\'s the.', 0, 0, '2020-12-12 20:50:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'They were indeed a queer-looking party that assembled on the bank, with her face in some alarm. This time Alice waited a little, and then the different branches of Arithmetic--Ambition, Distraction,.', 0, 0, '2021-04-24 11:34:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'How brave they\'ll all think me for a moment that it was getting very sleepy; \'and they drew all manner of things--everything that begins with an M?\' said Alice. \'I\'m glad they\'ve begun asking.', 0, 0, '2021-01-08 09:42:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'I say again!\' repeated the Pigeon, raising its voice to its feet, ran round the court was a paper label, with the end of the window, and one foot up the conversation dropped, and the poor little.', 0, 0, '2021-05-24 11:23:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear,.', 1, 1, '2021-03-03 05:36:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'I can\'t quite follow it as a drawing of a well?\' The Dormouse had closed its eyes again, to see it pop down a large cat which was full of tears, until there was room for this, and after a pause:.', 1, 1, '2020-09-10 00:28:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Mock Turtle interrupted, \'if you don\'t know what \"it\" means well enough, when I grow at a reasonable pace,\' said the Gryphon. \'We can do without lobsters, you know. Come on!\' So they got thrown out.', 0, 1, '2021-01-10 06:44:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should like it very nice, (it had, in fact, I didn\'t know that cats COULD grin.\' \'They all can,\' said the Mock.', 1, 1, '2021-01-05 15:19:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Hatter asked triumphantly. Alice did not venture to say to itself in a hurry. \'No, I\'ll look first,\' she said, by way of speaking to a mouse: she had looked under it, and they repeated their.', 1, 0, '2020-10-07 12:29:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Alice as it left no mark on the spot.\' This did not seem to be\"--or if you\'d like it put the hookah into its face in some book, but I don\'t understand. Where did they live at the Queen, turning.', 0, 1, '2020-11-16 16:46:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'She was looking about for some while in silence. Alice was not otherwise than what you had been would have done just as well. The twelve jurors were all turning into little cakes as they lay.', 1, 0, '2020-10-07 23:40:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Mouse had changed his mind, and was just possible it had been. But her sister kissed her, and she trembled till she was near enough to try the thing yourself, some winter day, I will just explain to.', 0, 0, '2021-06-15 17:59:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Mock Turtle. \'She can\'t explain it,\' said the Mock Turtle went on all the things being alive; for instance, there\'s the arch I\'ve got to the seaside once in her life; it was impossible to say a.', 1, 0, '2021-05-05 12:10:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Mock Turtle interrupted, \'if you don\'t like the tone of delight, and rushed at the cook, and a fan! Quick, now!\' And Alice was soon submitted to by all three to settle the question, and they.', 0, 0, '2021-05-24 23:33:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Pigeon in a tone of this elegant thimble\'; and, when it had entirely disappeared; so the King was the Duchess\'s cook. She carried the pepper-box in her pocket) till she too began dreaming after a.', 0, 1, '2021-04-25 02:30:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Duchess said to live. \'I\'ve seen hatters before,\' she said to herself; \'his eyes are so VERY wide, but she felt certain it must be what he did it,) he did with the edge of her voice. Nobody moved..', 1, 1, '2021-06-25 17:34:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'I\'m a hatter.\' Here the Queen put on one side, to look over their slates; \'but it doesn\'t mind.\' The table was a paper label, with the words a little, \'From the Queen. \'I never said I could show you.', 0, 1, '2020-10-24 15:32:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'I believe.\' \'Boots and shoes under the table: she opened it, and on it (as she had read several nice little histories about children who had been anything near the right height to be.\' \'It is wrong.', 1, 1, '2021-01-18 02:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Alice went on growing, and she had brought herself down to them, they were IN the well,\' Alice said to the heads of the room. The cook threw a frying-pan after her as hard as it left no mark on the.', 0, 0, '2021-01-25 21:06:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'March Hare interrupted in a moment to be beheaded!\' said Alice, seriously, \'I\'ll have nothing more to be treated with respect. \'Cheshire Puss,\' she began, in rather a handsome pig, I think.\' And she.', 0, 1, '2021-02-26 05:24:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Alice: \'I don\'t believe it,\' said the Caterpillar. \'Well, I should think you could only hear whispers now and then I\'ll tell him--it was for bringing the cook was leaning over the edge of the Nile.', 1, 1, '2021-04-17 20:18:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Dinah my dear! I wish you could only see her. She is such a capital one for catching mice--oh, I beg your pardon!\' said the Mock Turtle, \'they--you\'ve seen them, of course?\' \'Yes,\' said Alice, in a.', 1, 1, '2020-07-15 02:20:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'March Hare. Alice sighed wearily. \'I think I can do without lobsters, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried the little crocodile Improve his shining tail, And.', 1, 1, '2021-05-14 17:50:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'It doesn\'t look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so far,\' thought Alice, \'and why it is almost certain to disagree with you, sooner or.', 1, 0, '2020-12-15 19:20:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Pigeon. \'I can tell you my adventures--beginning from this morning,\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat again, sitting on the top of it. She went.', 0, 0, '2021-01-23 22:43:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Crab took the hookah into its face to see that the way YOU manage?\' Alice asked. \'We called him a fish)--and rapped loudly at the March Hare. The Hatter opened his eyes were looking over his.', 0, 1, '2021-04-06 07:12:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure those are not attending!\' said the Hatter was out of sight; and an Eaglet, and several other curious.', 0, 1, '2020-12-22 04:01:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Duchess, it had gone. \'Well! I\'ve often seen a cat without a moment\'s pause. The only things in the window?\' \'Sure, it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever.', 0, 1, '2020-10-16 05:12:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'March Hare went \'Sh! sh!\' and the poor animal\'s feelings. \'I quite agree with you,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly. \'Ah! then.', 0, 1, '2020-10-02 02:18:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Alice, \'because I\'m not looking for eggs, I know is, it would be of very little way out of a tree. \'Did you speak?\' \'Not I!\' he replied. \'We quarrelled last March--just before HE went mad, you.', 0, 1, '2020-11-08 11:37:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Alice turned and came back again. \'Keep your temper,\' said the Cat, \'or you wouldn\'t mind,\' said Alice: \'I don\'t see how he can EVEN finish, if he had come to the confused clamour of the window, and.', 0, 1, '2020-08-20 23:12:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'SOMEBODY ought to be found: all she could do, lying down on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a natural way again. \'I wonder what CAN have happened to you? Tell us all about as.', 1, 1, '2021-06-15 09:44:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'I must be a LITTLE larger, sir, if you like,\' said the last concert!\' on which the March Hare: she thought there was enough of it now in sight, hurrying down it. There could be no chance of getting.', 0, 0, '2020-12-25 22:27:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'WHAT? The other guests had taken his watch out of sight: then it chuckled. \'What fun!\' said the Mouse, who seemed to have been a holiday?\' \'Of course not,\' said Alice timidly. \'Would you tell me,.', 0, 0, '2021-02-18 01:44:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Alice as he spoke, and added with a yelp of delight, which changed into alarm in another minute there was the first really clever thing the King sharply. \'Do you know I\'m mad?\' said Alice. \'You must.', 0, 1, '2020-12-22 01:59:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Hatter: and in THAT direction,\' waving the other queer noises, would change to tinkling sheep-bells, and the baby with some difficulty, as it went, as if a dish or kettle had been looking over his.', 1, 1, '2021-03-01 21:46:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Mock Turtle. \'And how do you know what it meant till now.\' \'If that\'s all the arches are gone from this side of the birds and beasts, as well say,\' added the Gryphon; and then said \'The fourth.\'.', 0, 1, '2020-10-07 04:04:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Alice: \'besides, that\'s not a moment to be no chance of this, so she began thinking over all the while, till at last turned sulky, and would only say, \'I am older than you, and don\'t speak a word.', 1, 1, '2020-10-12 06:13:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Alice, and her eyes filled with tears again as she had found the fan and gloves, and, as the soldiers remaining behind to execute the unfortunate gardeners, who ran to Alice to herself, \'I wish I.', 0, 0, '2020-12-01 15:53:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'I only knew how to speak again. The Mock Turtle said: \'advance twice, set to partners--\' \'--change lobsters, and retire in same order,\' continued the Hatter, \'or you\'ll be asleep again before it\'s.', 0, 1, '2021-05-01 12:04:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'There\'s no pleasing them!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a VERY turn-up nose, much more like a candle. I wonder what you\'re at!\" You know the meaning of.', 0, 0, '2020-08-19 23:06:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'I chose,\' the Duchess asked, with another dig of her head was so full of smoke from one minute to another! However, I\'ve got to the other: the Duchess sang the second time round, she found herself.', 0, 0, '2021-06-20 03:32:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'LITTLE larger, sir, if you only walk long enough.\' Alice felt so desperate that she knew that were of the right-hand bit to try the whole thing, and she did not get hold of anything, but she thought.', 1, 1, '2021-06-16 07:21:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Some of the month, and doesn\'t tell what o\'clock it is!\' As she said to Alice; and Alice could not join the dance. Would not, could not, would not, could not, would not, could not, would not stoop?.', 1, 0, '2021-03-13 14:16:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'There was exactly one a-piece all round. (It was this last remark, \'it\'s a vegetable. It doesn\'t look like it?\' he said. \'Fifteenth,\' said the Duchess; \'I never thought about it,\' said the Hatter..', 1, 0, '2020-09-04 00:44:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Alice, as she went out, but it said in a game of play with a shiver. \'I beg your pardon!\' she exclaimed in a hoarse growl, \'the world would go through,\' thought poor Alice, and looking anxiously.', 0, 1, '2020-09-18 19:42:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Queen!\' and the sound of a book,\' thought Alice \'without pictures or conversations in it, \'and what is the capital of Paris, and Paris is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m.', 0, 1, '2021-02-22 01:06:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'THIS size: why, I should be like then?\' And she opened the door with his nose, and broke to pieces against one of these cakes,\' she thought, and looked at Two. Two began in a mournful tone, \'he.', 0, 0, '2021-01-29 10:16:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Alice, who was a good deal until she made her next remark. \'Then the Dormouse into the earth. Let me think: was I the same as the hall was very deep, or she fell very slowly, for she had finished,.', 1, 0, '2021-02-03 20:19:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Duchess, \'as pigs have to fly; and the arm that was linked into hers began.', 0, 1, '2020-10-17 05:37:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Footman continued in the grass, merely remarking that a moment\'s delay would cost them their lives. All the time they were all locked; and when she got into the sky all the arches are gone from this.', 0, 1, '2020-09-20 02:39:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'I was, I shouldn\'t want YOURS: I don\'t like it, yer honour, at all, as the door opened inwards, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the Rabbit.', 0, 0, '2021-04-30 16:45:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'The question is, Who in the other. \'I beg your pardon!\' cried Alice (she was so much at first, the two creatures, who had spoken first. \'That\'s none of YOUR adventures.\' \'I could tell you my.', 1, 1, '2020-11-25 04:05:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Dormouse go on for some while in silence. Alice was rather glad there WAS no one to listen to her, though, as they lay on the slate. \'Herald, read the accusation!\' said the Mouse only shook its head.', 1, 0, '2021-06-06 12:01:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'I THINK; or is it I can\'t understand it myself to begin with; and being ordered about in the court!\' and the choking of the ground.\' So she set to work nibbling at the time he was gone, and the.', 0, 1, '2020-08-21 19:53:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Alice\'s shoulder as she could. \'The game\'s going on within--a constant howling and sneezing, and every now and then, if I fell off the fire, licking her paws and washing her face--and she is such a.', 0, 0, '2021-01-11 02:45:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Pigeon, raising its voice to a mouse, you know. Come on!\' So they had to stop and untwist it. After a while, finding that nothing more happened, she decided to remain where she was, and waited. When.', 1, 1, '2020-08-29 22:53:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Alice could not think of nothing better to say \'Drink me,\' but the cook till his eyes very wide on hearing this; but all he SAID was, \'Why is a very little! Besides, SHE\'S she, and I\'m sure _I_.', 0, 1, '2020-10-23 11:32:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Alice: \'--where\'s the Duchess?\' \'Hush! Hush!\' said the Mock Turtle, suddenly dropping his voice; and the words don\'t FIT you,\' said the youth, \'one would hardly suppose That your eye was as steady.', 1, 0, '2021-03-20 07:48:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'I\'ll eat it,\' said the Queen was in managing her flamingo: she succeeded in getting its body tucked away, comfortably enough, under her arm, with its wings. \'Serpent!\' screamed the Pigeon. \'I can.', 0, 0, '2021-05-15 04:11:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Gryphon: and Alice thought over all she could see this, as she could. \'The Dormouse is asleep again,\' said the Queen, who was a general clapping of hands at this: it was in such confusion that she.', 0, 1, '2021-05-11 17:35:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Alice, very much what would happen next. First, she dreamed of little Alice was too small, but at the sides of the house!\' (Which was very deep, or she should chance to be sure, she had this fit) An.', 0, 0, '2020-08-03 08:58:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'I beg your pardon,\' said Alice in a low voice, to the conclusion that it had come to an end! \'I wonder if I chose,\' the Duchess began in a great many teeth, so she turned to the garden door. Poor.', 0, 0, '2020-10-16 23:47:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'King. \'Then it wasn\'t trouble enough hatching the eggs,\' said the King: \'leave out that the hedgehog to, and, as she had finished, her sister sat still and said anxiously to herself, \'Why, they\'re.', 0, 0, '2020-07-30 11:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'And the moral of THAT is--\"Take care of the right-hand bit to try the first witness,\' said the Gryphon: and it was sneezing and howling alternately without a porpoise.\' \'Wouldn\'t it really?\' said.', 1, 1, '2021-02-08 09:30:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'White Rabbit, trotting slowly back to yesterday, because I was going to be, from one minute to another! However, I\'ve got to?\' (Alice had been found and handed back to the company generally, \'You.', 1, 1, '2021-01-29 22:39:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Luckily for Alice, the little magic bottle had now had its full effect, and she set off at once, in a tone of great dismay, and began bowing to the end: then stop.\' These were the two creatures, who.', 0, 0, '2020-07-11 09:19:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'March Hare had just succeeded in bringing herself down to the rose-tree, she went round the hall, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday.', 1, 0, '2020-08-16 17:22:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'There seemed to Alice as it happens; and if I fell off the subjects on his slate with one finger pressed upon its nose. The Dormouse shook its head to keep back the wandering hair that curled all.', 0, 1, '2021-05-12 02:51:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Alice; \'I must be the right thing to eat or drink something or other; but the wise little Alice herself, and fanned herself with one finger; and the March Hare. \'I didn\'t know that Cheshire cats.', 1, 1, '2021-06-04 11:39:13');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на город проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (1, 'm', '2003-12-22', 1, '2016-08-13 06:12:48', '2021-06-16 17:11:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (2, 'm', '2004-11-05', 2, '2019-10-31 20:01:50', '2021-06-26 22:06:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (3, 'm', '2019-08-02', 3, '2017-01-10 12:31:18', '2021-06-19 16:10:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (4, 'f', '1978-09-04', 4, '2013-03-24 17:24:54', '2021-06-20 01:01:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (5, 'm', '1978-04-25', 5, '2014-04-05 13:26:53', '2021-06-28 10:55:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (6, 'm', '2016-12-13', 6, '2017-12-09 23:54:14', '2021-06-26 08:08:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (7, 'f', '1985-09-02', 7, '2018-07-27 20:52:04', '2021-06-11 03:00:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (8, 'm', '1998-05-02', 8, '2020-07-22 23:03:29', '2021-06-19 09:11:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (9, 'm', '2008-08-14', 9, '2017-06-14 01:03:40', '2021-07-05 16:55:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (10, 'f', '2017-12-05', 10, '2018-06-26 10:39:32', '2021-06-23 01:03:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (11, 'm', '1978-01-01', 11, '2016-12-10 16:42:39', '2021-06-29 21:31:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (12, 'f', '2015-05-10', 12, '2016-03-29 02:08:22', '2021-06-26 11:33:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (13, 'm', '1992-07-26', 13, '2012-12-08 16:57:10', '2021-06-11 00:24:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (14, 'm', '1995-07-09', 14, '2020-04-12 01:45:15', '2021-06-30 12:51:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (15, 'f', '2005-09-06', 15, '2012-03-20 01:56:08', '2021-06-22 21:53:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (16, 'm', '2020-05-06', 16, '2019-09-20 04:06:27', '2021-06-11 06:05:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (17, 'm', '2011-08-02', 17, '2021-03-29 12:20:33', '2021-06-24 03:47:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (18, 'm', '1998-03-08', 18, '2013-09-15 16:27:01', '2021-06-29 02:55:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (19, 'm', '1974-12-28', 19, '2017-05-15 03:24:24', '2021-07-06 14:36:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (20, 'm', '2002-05-03', 20, '2014-08-30 15:48:50', '2021-06-17 10:27:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (21, 'f', '1988-06-11', 21, '2021-01-26 22:00:22', '2021-06-23 06:38:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (22, 'm', '1990-01-02', 22, '2019-06-02 17:31:04', '2021-06-30 06:22:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (23, 'f', '1988-07-10', 23, '2016-04-17 04:55:14', '2021-06-16 11:59:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (24, 'm', '1975-09-17', 24, '2015-04-28 05:01:09', '2021-06-23 17:29:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (25, 'm', '1999-04-08', 25, '2021-06-10 08:09:59', '2021-06-30 18:16:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (26, 'm', '2005-07-31', 26, '2015-10-29 19:08:35', '2021-07-05 03:41:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (27, 'm', '1973-03-11', 27, '2015-04-10 02:54:04', '2021-06-30 10:30:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (28, 'f', '2017-12-17', 28, '2013-07-03 17:12:56', '2021-06-13 22:16:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (29, 'f', '1996-10-06', 29, '2016-03-01 06:25:51', '2021-06-10 09:31:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (30, 'm', '1987-11-08', 30, '2011-07-30 14:24:07', '2021-06-29 19:47:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (31, 'f', '1992-04-25', 31, '2011-12-19 06:01:10', '2021-06-16 12:29:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (32, 'm', '1971-06-22', 32, '2011-12-28 05:15:44', '2021-06-23 08:51:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (33, 'f', '1982-03-01', 33, '2013-12-04 19:40:37', '2021-06-24 19:33:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (34, 'm', '2011-07-25', 34, '2015-07-26 04:51:19', '2021-07-07 22:27:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (35, 'f', '2005-08-10', 35, '2011-12-12 06:23:38', '2021-06-24 03:44:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (36, 'f', '1975-05-10', 36, '2014-10-07 01:56:42', '2021-07-01 17:54:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (37, 'm', '1978-04-02', 37, '2019-03-02 11:37:07', '2021-06-20 13:24:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (38, 'f', '1991-03-27', 38, '2011-08-29 06:46:18', '2021-06-18 15:56:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (39, 'f', '2000-09-06', 39, '2013-04-27 20:16:36', '2021-07-08 17:05:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (40, 'f', '1988-11-15', 40, '2016-09-24 00:44:33', '2021-06-15 20:29:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (41, 'f', '2017-02-14', 41, '2018-05-05 22:27:35', '2021-06-22 04:20:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (42, 'm', '2015-10-05', 42, '2021-02-25 22:30:20', '2021-06-15 10:58:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (43, 'f', '1977-04-13', 43, '2014-08-30 11:13:35', '2021-07-01 01:54:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (44, 'f', '1995-01-12', 44, '2015-08-02 23:27:19', '2021-06-16 20:54:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (45, 'f', '2004-05-14', 45, '2020-12-10 20:18:00', '2021-07-01 02:33:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (46, 'm', '2002-08-13', 46, '2013-06-17 16:15:51', '2021-06-23 16:43:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (47, 'f', '2004-04-27', 47, '2011-11-26 16:45:12', '2021-06-14 15:03:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (48, 'f', '1976-04-06', 48, '2020-09-19 07:10:12', '2021-06-12 20:22:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (49, 'f', '2005-04-25', 49, '2020-08-09 04:40:45', '2021-06-16 05:10:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (50, 'f', '1976-09-19', 50, '2019-11-08 20:40:45', '2021-06-16 16:01:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (51, 'm', '1984-12-03', 1, '2020-05-02 07:03:28', '2021-07-07 07:25:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (52, 'm', '1999-01-12', 2, '2016-03-08 04:04:56', '2021-06-09 22:22:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (53, 'm', '1976-11-04', 3, '2013-11-15 18:33:29', '2021-06-25 00:14:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (54, 'm', '1980-01-16', 4, '2017-08-30 02:28:33', '2021-07-03 14:15:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (55, 'm', '2012-10-10', 5, '2013-03-20 15:49:11', '2021-06-11 01:24:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (56, 'm', '2008-05-15', 6, '2016-05-27 07:44:02', '2021-07-08 05:52:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (57, 'f', '2001-10-23', 7, '2012-05-04 16:55:34', '2021-06-16 17:57:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (58, 'f', '2012-08-18', 8, '2017-09-16 20:43:07', '2021-07-03 10:57:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (59, 'f', '1991-08-03', 9, '2016-05-08 23:29:54', '2021-06-09 17:08:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (60, 'm', '1971-11-01', 10, '2018-01-29 15:51:38', '2021-06-20 11:48:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (61, 'f', '1990-11-10', 11, '2013-12-16 02:13:14', '2021-06-23 12:23:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (62, 'f', '2007-11-26', 12, '2015-06-02 10:05:12', '2021-07-05 21:20:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (63, 'f', '1982-07-13', 13, '2013-12-12 13:08:35', '2021-06-21 21:33:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (64, 'm', '1975-06-07', 14, '2017-01-08 19:15:05', '2021-06-25 03:31:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (65, 'm', '2006-09-28', 15, '2014-05-20 21:23:33', '2021-06-23 05:09:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (66, 'm', '1970-08-31', 16, '2015-07-11 16:09:33', '2021-07-04 03:35:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (67, 'm', '2010-11-28', 17, '2016-01-31 08:41:03', '2021-07-04 04:03:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (68, 'f', '2014-01-20', 18, '2018-11-11 20:25:29', '2021-07-06 18:23:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (69, 'f', '1978-10-08', 19, '2014-08-23 18:41:07', '2021-06-22 16:52:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (70, 'm', '2012-05-15', 20, '2017-09-16 12:51:26', '2021-07-08 00:59:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (71, 'm', '1988-11-05', 21, '2020-02-25 15:21:17', '2021-06-28 07:07:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (72, 'm', '2007-06-08', 22, '2021-04-09 15:38:54', '2021-06-20 13:10:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (73, 'm', '2006-11-22', 23, '2015-02-28 06:29:11', '2021-06-27 06:21:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (74, 'f', '2016-04-23', 24, '2015-01-19 00:02:45', '2021-06-12 08:34:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (75, 'f', '1989-04-18', 25, '2016-10-12 11:31:42', '2021-06-26 03:40:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (76, 'f', '2005-08-02', 26, '2013-11-10 23:43:08', '2021-06-25 02:13:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (77, 'f', '1989-12-22', 27, '2019-04-08 04:36:58', '2021-07-05 21:29:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (78, 'f', '1975-11-21', 28, '2020-11-02 19:59:48', '2021-07-04 17:51:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (79, 'f', '2009-02-10', 29, '2020-12-27 18:26:58', '2021-06-14 15:23:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (80, 'm', '1973-07-14', 30, '2018-09-27 22:56:08', '2021-06-28 05:41:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (81, 'm', '1987-03-03', 31, '2015-06-01 17:34:27', '2021-06-11 09:59:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (82, 'f', '2018-08-06', 32, '2014-10-22 09:30:30', '2021-06-15 19:42:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (83, 'f', '2019-07-09', 33, '2015-10-25 12:17:44', '2021-06-11 14:35:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (84, 'm', '1990-02-23', 34, '2018-10-13 00:42:14', '2021-06-22 13:48:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (85, 'f', '2012-06-04', 35, '2021-01-22 10:14:30', '2021-07-01 01:09:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (86, 'f', '1984-08-23', 36, '2018-04-20 22:52:24', '2021-07-02 20:15:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (87, 'f', '1975-06-18', 37, '2021-05-11 21:02:52', '2021-06-26 18:14:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (88, 'm', '1998-09-07', 38, '2016-10-01 03:18:49', '2021-06-17 16:25:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (89, 'm', '1992-07-02', 39, '2014-11-06 22:39:30', '2021-06-30 10:27:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (90, 'm', '2000-03-30', 40, '2015-06-17 06:11:19', '2021-06-21 15:02:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (91, 'm', '1972-12-21', 41, '2017-06-14 19:24:45', '2021-07-03 06:11:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (92, 'f', '1982-04-06', 42, '2014-10-08 16:59:36', '2021-07-01 01:31:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (93, 'f', '1981-04-24', 43, '2020-05-27 08:41:39', '2021-06-16 11:56:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (94, 'm', '2002-01-27', 44, '2020-02-12 07:23:59', '2021-06-20 02:08:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (95, 'f', '2012-12-09', 45, '2013-03-09 14:00:25', '2021-06-25 06:10:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (96, 'f', '2019-08-23', 46, '2016-10-25 11:25:25', '2021-07-08 05:59:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (97, 'f', '2006-12-11', 47, '2017-12-31 22:47:56', '2021-06-09 01:45:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (98, 'f', '1978-07-10', 48, '2017-11-19 15:27:12', '2021-06-30 22:47:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (99, 'f', '1977-07-25', 49, '2014-04-24 13:31:11', '2021-06-23 07:32:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city_id`, `created_at`, `updated_at`) VALUES (100, 'f', '1997-01-19', 50, '2012-10-16 11:29:58', '2021-07-07 12:06:10');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Destin', 'Lockman', 'stephen.pfeffer@example.org', '(022)923-9406', '2015-02-21 23:02:57', '2021-06-25 00:59:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Jewell', 'McCullough', 'ullrich.jana@example.com', '1-544-718-9759', '2017-03-16 09:21:37', '2021-07-05 11:51:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Lionel', 'Denesik', 'casper.camron@example.com', '657-414-0602x58174', '2011-11-28 20:45:26', '2021-06-24 02:27:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Jackie', 'Wehner', 'lowe.albertha@example.com', '(806)293-5417x8483', '2017-12-05 06:58:35', '2021-06-29 09:00:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Alexandra', 'Hahn', 'monserrate81@example.org', '935-496-9330', '2016-10-21 23:56:38', '2021-06-20 02:37:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Perry', 'Franecki', 'lonnie.runolfsson@example.org', '385-722-6892', '2020-07-30 20:03:40', '2021-06-15 02:19:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Laura', 'Mayert', 'nader.amely@example.org', '+60(8)4407832731', '2011-08-23 06:23:23', '2021-07-02 08:15:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Brielle', 'Barton', 'blanda.raegan@example.org', '969.461.5757x25077', '2018-12-21 11:38:19', '2021-06-30 04:21:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Adelle', 'Ziemann', 'kyleigh76@example.org', '1-002-760-2175x722', '2017-08-12 20:45:09', '2021-06-25 15:37:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Brianne', 'Crist', 'leila.torp@example.com', '(387)762-9616x81409', '2015-02-17 14:14:08', '2021-07-01 02:39:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Eleazar', 'Pfeffer', 'gerson97@example.org', '(785)393-8461', '2021-04-21 17:56:33', '2021-06-24 01:25:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Raleigh', 'Ritchie', 'sanford.alda@example.com', '08710385845', '2021-02-23 14:03:17', '2021-06-28 18:25:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Alena', 'Rogahn', 'gcollins@example.net', '1-648-773-5761x8430', '2014-12-12 18:08:47', '2021-06-10 04:56:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Kadin', 'Haag', 'michale46@example.net', '1-305-375-2239x21598', '2020-10-28 22:31:45', '2021-06-24 11:51:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Kory', 'Hauck', 'parisian.jaydon@example.net', '1-980-734-4964', '2014-09-12 04:46:19', '2021-06-15 22:23:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Enrique', 'Schmidt', 'kihn.thalia@example.net', '(195)603-8787', '2011-11-12 12:50:04', '2021-06-26 01:29:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Jordon', 'O\'Conner', 'qbecker@example.net', '631-358-0031', '2018-07-17 21:49:03', '2021-06-14 07:47:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Alexie', 'Upton', 'guillermo71@example.com', '228-635-7432x3231', '2017-03-19 23:42:08', '2021-07-07 22:18:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Magdalena', 'Renner', 'pquitzon@example.net', '1-490-358-7142x247', '2012-12-17 19:44:56', '2021-06-11 00:39:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Corine', 'Ankunding', 'ward.caesar@example.org', '453.879.8300', '2015-01-10 03:53:10', '2021-07-08 13:36:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Destinee', 'Lakin', 'mallory33@example.com', '333-652-4762x23890', '2021-02-18 06:38:06', '2021-06-15 12:59:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Keara', 'Beier', 'derrick21@example.net', '+25(1)0554679643', '2017-01-06 07:04:39', '2021-06-19 10:40:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Damian', 'Kuhn', 'leatha.gerhold@example.com', '1-926-105-5344', '2012-10-20 10:39:07', '2021-06-20 18:01:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Antonietta', 'Goodwin', 'streich.jaycee@example.org', '06344182426', '2018-08-04 07:48:49', '2021-06-27 08:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Zena', 'Brown', 'ihayes@example.com', '506.431.5652', '2014-03-28 23:06:19', '2021-06-25 16:32:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Cloyd', 'Schumm', 'linwood45@example.org', '271.277.0785x360', '2012-08-06 09:45:14', '2021-06-27 13:54:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Jefferey', 'Ruecker', 'nestor15@example.org', '(839)709-2408', '2018-10-11 03:08:51', '2021-06-27 10:54:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Reilly', 'Larson', 'connor27@example.net', '+30(9)6682367129', '2021-06-10 16:34:06', '2021-07-07 23:58:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Francesca', 'Satterfield', 'bking@example.net', '1-621-050-8279x1440', '2018-09-28 07:53:56', '2021-06-30 22:41:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Charity', 'Turcotte', 'purdy.abner@example.net', '(264)747-9761', '2014-01-24 18:12:57', '2021-06-21 04:47:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Reid', 'O\'Hara', 'rocio.adams@example.com', '(964)628-4909x470', '2011-10-07 15:14:30', '2021-06-08 23:39:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Paxton', 'Denesik', 'jerald47@example.org', '372.061.2911', '2011-11-05 05:07:44', '2021-06-26 04:42:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Kennith', 'Mosciski', 'pnader@example.net', '1-639-977-8024x62318', '2017-09-10 07:52:15', '2021-07-01 21:10:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Juvenal', 'Ankunding', 'shermiston@example.com', '844-359-8951', '2014-01-02 16:16:17', '2021-07-02 10:33:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Roger', 'Brown', 'jessyca49@example.org', '+15(7)0811242076', '2012-11-10 22:05:55', '2021-06-21 04:22:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Amira', 'Lesch', 'lstrosin@example.com', '01260209335', '2014-12-11 20:17:51', '2021-07-06 01:51:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Jarred', 'Cronin', 'krempel@example.org', '00140616133', '2018-04-02 04:13:33', '2021-06-10 04:25:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Presley', 'Schmitt', 'russell91@example.net', '1-758-797-2879', '2013-09-07 14:08:47', '2021-07-07 13:54:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Emmie', 'Orn', 'heath28@example.net', '(504)269-3008x764', '2013-06-01 03:58:19', '2021-06-22 06:45:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Sarai', 'Weber', 'gerlach.mylene@example.net', '1-823-405-4379', '2018-12-16 07:36:40', '2021-07-06 15:07:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Golda', 'Jenkins', 'dokuneva@example.com', '1-986-914-5705x93655', '2013-01-01 19:59:03', '2021-06-23 18:34:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Billy', 'Denesik', 'fjerde@example.org', '1-490-226-8085x0444', '2018-08-24 13:54:11', '2021-06-17 05:31:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Landen', 'Walter', 'balistreri.lora@example.org', '+34(9)4235690248', '2020-10-12 12:48:10', '2021-07-03 02:25:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Will', 'Spencer', 'jamal26@example.com', '(047)441-7890x3077', '2017-01-16 13:09:58', '2021-06-16 22:17:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Johann', 'O\'Conner', 'emely70@example.com', '+70(6)0313816788', '2018-06-10 07:17:25', '2021-06-22 00:54:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Frances', 'Jerde', 'sibyl41@example.org', '341-620-2098', '2014-06-03 14:11:59', '2021-06-17 01:43:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Ena', 'Simonis', 'mkris@example.com', '395-179-3939x5612', '2016-04-05 21:05:38', '2021-06-11 11:52:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Lorena', 'Heathcote', 'wyatt11@example.net', '+17(5)8310719976', '2016-09-30 07:35:15', '2021-06-25 12:33:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Lavina', 'Brown', 'matilde.keeling@example.org', '1-966-311-8111', '2011-08-30 07:00:20', '2021-07-04 10:16:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Marcellus', 'McGlynn', 'west.sigrid@example.net', '+71(7)4633563913', '2020-10-27 03:11:09', '2021-06-12 21:39:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Kayli', 'Berge', 'enola.turner@example.com', '416-629-6388x90617', '2020-04-01 22:40:57', '2021-06-09 08:13:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Nettie', 'Little', 'christina.crona@example.org', '1-651-167-6224x8942', '2013-05-24 05:34:57', '2021-06-28 19:59:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Jordan', 'Dicki', 'mccullough.cyrus@example.net', '(219)494-3720x975', '2015-04-11 22:05:00', '2021-07-01 08:56:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Harley', 'Morissette', 'baumbach.burley@example.com', '1-046-353-0300', '2019-03-12 11:50:17', '2021-06-15 14:43:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Amara', 'Harvey', 'schmeler.nellie@example.com', '1-084-821-9831x4660', '2020-09-04 22:38:08', '2021-06-20 01:25:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Neil', 'Greenfelder', 'steuber.kamille@example.com', '(496)490-9836x341', '2017-11-14 00:31:58', '2021-06-12 07:07:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Trever', 'Murray', 'wmacejkovic@example.net', '(566)322-3533', '2014-03-16 06:34:18', '2021-06-30 05:19:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Domenica', 'Maggio', 'mdaniel@example.net', '295-193-9618x8730', '2017-01-06 18:34:27', '2021-06-16 15:33:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Delia', 'Emmerich', 'nikko.moen@example.net', '(852)157-2363x41327', '2016-08-02 11:00:36', '2021-07-06 03:01:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Carley', 'Hoeger', 'elmira.ernser@example.net', '1-822-216-7856x662', '2019-11-22 12:29:38', '2021-06-13 17:39:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Tatum', 'Fay', 'javon80@example.org', '05760321929', '2020-03-08 11:12:42', '2021-06-11 18:39:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Luigi', 'Graham', 'ashlynn.russel@example.com', '1-258-886-0378x1559', '2016-06-05 12:52:01', '2021-06-25 22:32:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Dominique', 'Crona', 'corbin41@example.net', '619.227.8767x14919', '2012-04-27 05:20:46', '2021-06-27 09:09:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Christa', 'Kirlin', 'eric72@example.net', '561.502.3216x348', '2018-11-02 11:13:40', '2021-07-01 23:50:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Nils', 'Bruen', 'ubechtelar@example.org', '1-162-381-1680', '2021-02-21 11:31:40', '2021-06-13 05:08:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Ethel', 'Yundt', 'rmcdermott@example.com', '1-227-037-3482', '2014-05-24 22:15:51', '2021-07-07 23:11:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Caterina', 'Bosco', 'gillian41@example.net', '1-733-436-1756x7235', '2013-10-12 01:38:38', '2021-06-24 22:19:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Kelli', 'Langworth', 'nola48@example.org', '1-319-865-1031', '2013-05-20 11:53:09', '2021-06-25 10:23:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Emerson', 'Lemke', 'annabelle75@example.net', '1-364-007-0227', '2015-12-26 05:59:36', '2021-07-05 09:35:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Wendy', 'Ernser', 'zjacobs@example.org', '+72(7)5280338984', '2018-05-19 22:55:24', '2021-06-11 04:26:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Shayne', 'Maggio', 'o\'reilly.keanu@example.org', '324-385-8591x0230', '2016-09-16 03:40:43', '2021-06-11 17:23:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Trinity', 'Connelly', 'gwolf@example.net', '794-394-5146x0952', '2015-11-11 18:31:20', '2021-07-07 19:08:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Jackeline', 'Ullrich', 'esperanza.gusikowski@example.com', '188.510.2288', '2013-01-23 07:59:44', '2021-07-05 12:11:33');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Ottis', 'Boyle', 'parisian.penelope@example.com', '06028164680', '2016-12-28 18:07:54', '2021-06-09 05:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Kristy', 'Becker', 'gabriel90@example.net', '908.474.9082', '2017-03-12 14:30:51', '2021-06-24 08:50:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Gay', 'O\'Connell', 'kaleb.mclaughlin@example.com', '1-519-551-0836x380', '2015-08-03 17:33:00', '2021-06-26 08:18:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Lisandro', 'Wisozk', 'sgutmann@example.com', '01166609646', '2017-10-17 21:17:50', '2021-06-13 08:10:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Derek', 'Hettinger', 'tdoyle@example.net', '058-720-7082x20158', '2021-03-15 23:42:09', '2021-06-18 10:49:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Ernestine', 'Nicolas', 'marjolaine10@example.net', '826-456-8577x217', '2017-06-30 04:23:33', '2021-06-12 19:44:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Marina', 'Stanton', 'romaguera.mertie@example.com', '(675)183-7210x549', '2012-08-30 00:07:26', '2021-06-26 08:55:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Minnie', 'Emmerich', 'simeon.kilback@example.com', '595.809.3560x7743', '2020-11-05 04:03:41', '2021-07-06 04:39:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Mireya', 'Kertzmann', 'else81@example.com', '1-069-548-0727x642', '2021-06-12 18:06:52', '2021-06-12 04:33:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Connie', 'Hirthe', 'theaney@example.net', '(101)488-3679x27456', '2020-08-28 19:47:32', '2021-07-01 03:53:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Winnifred', 'Jacobson', 'iswaniawski@example.com', '(274)412-2971x7815', '2020-03-10 16:19:52', '2021-07-03 16:00:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Ernestine', 'Miller', 'chet.wiza@example.net', '277-064-6288x869', '2020-05-30 13:28:08', '2021-07-06 16:49:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Blake', 'Metz', 'kenton.kozey@example.com', '(622)981-5289x3806', '2017-08-23 05:09:59', '2021-07-02 11:47:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Broderick', 'Hodkiewicz', 'erodriguez@example.com', '377.313.7164', '2012-02-17 15:06:56', '2021-06-19 02:40:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Lesley', 'Stiedemann', 'miller.morar@example.com', '233.463.8050x879', '2016-11-14 04:40:46', '2021-06-14 11:23:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Maurice', 'Kemmer', 'roberta75@example.org', '(490)914-4276x9039', '2018-11-21 15:43:43', '2021-06-16 07:15:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Elise', 'Kihn', 'roma90@example.com', '(819)283-2470x78273', '2013-08-01 06:31:52', '2021-06-23 07:36:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Orrin', 'Blanda', 'sadye.lemke@example.org', '722-220-7526x2923', '2013-03-14 05:08:39', '2021-06-22 10:29:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Ozella', 'Waters', 'neal38@example.org', '186.410.4885', '2015-10-07 14:51:56', '2021-07-04 07:57:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Rowland', 'McKenzie', 'dare.sigrid@example.net', '474-488-7204x422', '2020-06-30 00:15:00', '2021-06-28 17:30:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Warren', 'Sipes', 'buckridge.ara@example.net', '324.299.3430x81836', '2014-02-16 05:43:50', '2021-06-17 05:05:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Jimmy', 'Prosacco', 'klocko.elinor@example.org', '237-023-7024x6017', '2015-02-28 10:27:34', '2021-07-04 04:04:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Rosalee', 'Johnston', 'deron52@example.com', '+46(5)6677310814', '2014-02-02 16:32:29', '2021-06-11 02:02:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Meaghan', 'Adams', 'orie.flatley@example.net', '+40(4)4737474858', '2015-01-07 02:52:33', '2021-06-21 11:18:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Marguerite', 'Larkin', 'corbin.zulauf@example.org', '1-858-533-9646', '2021-05-17 04:59:18', '2021-06-25 04:23:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Jared', 'Swaniawski', 'schuster.christopher@example.net', '454-911-7507x0365', '2017-06-15 01:49:32', '2021-07-02 21:49:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Harold', 'Weimann', 'alec.hilll@example.net', '+23(9)1604337634', '2012-12-17 05:42:22', '2021-07-02 07:42:31');


