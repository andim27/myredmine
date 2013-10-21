-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 26 2013 г., 13:31
-- Версия сервера: 5.5.30
-- Версия PHP: 5.3.21

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `redmine`
--

-- --------------------------------------------------------

--
-- Структура таблицы `attachments`
--

DROP TABLE IF EXISTS `attachments`;
CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `container_id` int(11) DEFAULT NULL,
  `container_type` varchar(30) DEFAULT NULL,
  `filename` varchar(255) NOT NULL DEFAULT '',
  `disk_filename` varchar(255) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `content_type` varchar(255) DEFAULT '',
  `digest` varchar(40) NOT NULL DEFAULT '',
  `downloads` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_attachments_on_author_id` (`author_id`),
  KEY `index_attachments_on_created_on` (`created_on`),
  KEY `index_attachments_on_container_id_and_container_type` (`container_id`,`container_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `attachments`
--

INSERT INTO `attachments` (`id`, `container_id`, `container_type`, `filename`, `disk_filename`, `filesize`, `content_type`, `digest`, `downloads`, `author_id`, `created_on`, `description`) VALUES
(1, 13, 'Project', 'Концепция СРМ.doc', '130219174321_71fa724af7a5f734b83122adfff01c1e.doc', 21504, 'application/msword', 'a4c8b6f8e1bebf8125233cb44087c7ff', 2, 1, '2013-02-19 17:43:21', 'концепция crm'),
(2, 13, 'Project', 'СРМ для туристической компании 3.doc', '130219174343_f136b62645ba092c892b68606d93ef76.doc', 86016, 'application/msword', '90284da6feb34af7ee028682b66f02bf', 4, 1, '2013-02-19 17:43:43', 'ТЗ'),
(3, 13, 'Project', 'CRM бизнес процессы- еще один документ.doc', '130219174409_cc512888b7625f87e706137b11b94466.doc', 73728, 'application/msword', '3e4ca8adaaa22bcd74c8d95f1f1084f9', 5, 1, '2013-02-19 17:44:09', 'Бизнес процессы'),
(4, 43, 'Issue', 'koral.doc', '130219175731_koral.doc', 86016, 'application/msword', '54763a13cb796245c7f12e77dc8271f1', 0, 1, '2013-02-19 17:57:31', ''),
(5, 43, 'Issue', 'nqyus_trevel.doc', '130219175731_nqyus_trevel.doc', 221696, 'application/msword', '4e57c29e5476e50e41a04e34eda27578', 0, 1, '2013-02-19 17:57:31', ''),
(6, 72, 'Issue', 'Пилигрим-Главная6.jpg', '130219183129_ffae6c6475d58f16aeea47a55487fa85.jpg', 2583834, 'image/jpeg', '5300241027a50de9bc3a64674b8e8f94', 0, 1, '2013-02-19 18:31:29', ''),
(7, 6, 'Project', 'ittour_modules.27.11.2012 (1).zip', '130219184232_b05d3e7af9acb4d3ea0edca9fa853968.zip', 2104805, 'application/octet-stream', '2105bf24b140b360519444fe9ad4917c', 0, 1, '2013-02-19 18:42:32', ''),
(8, 75, 'Issue', 'ittour_modules.27.11.2012 (1).zip', '130219184510_b05d3e7af9acb4d3ea0edca9fa853968.zip', 2104805, 'application/octet-stream', '2105bf24b140b360519444fe9ad4917c', 0, 1, '2013-02-19 18:45:10', ''),
(9, 88, 'Issue', 'Logo.jpg', '130219203352_Logo.jpg', 302799, 'image/jpeg', '7d01ec3aebbe3e681e88ada1d9f65b34', 0, 1, '2013-02-19 20:33:52', ''),
(10, 88, 'Issue', 'piligrim.png', '130219203738_piligrim.png', 144860, 'image/png', 'e85050ce8d48bcb3138b73728995be76', 0, 1, '2013-02-19 20:37:38', ''),
(11, 88, 'Issue', 'piligrim-logo-2.jpg', '130219203738_piligrim-logo-2.jpg', 1175170, 'image/jpeg', 'd90920ac00bcb74e802a1a5eb92150c9', 0, 1, '2013-02-19 20:37:38', ''),
(12, 92, 'Issue', 'changes.zip', '130314131422_changes.zip', 18516, 'application/zip', '8629fe342981894d5c3808999254ffc4', 0, 17, '2013-03-14 13:14:22', ''),
(13, 72, 'Issue', '11.png', '130314210925_11.png', 158879, 'image/png', 'fc7cb6f8a3b15e699296bb48746b7f5d', 0, 1, '2013-03-14 21:09:25', ''),
(14, 92, 'Issue', 'changes.zip', '130319131943_changes.zip', 32879, 'application/zip', '86e93d08a228569ba968630cbbadd828', 0, 17, '2013-03-19 13:19:43', ''),
(15, 92, 'Issue', 'custom_import_diff.JPG', '130319224753_custom_import_diff.JPG', 349747, 'image/jpeg', '6c55c3b088b002e1b95a0b21901bc5c3', 0, 20, '2013-03-19 22:47:53', ''),
(16, 102, 'Issue', 'M30_logining_35.png', '130325163703_M30_logining_35.png', 121480, 'image/png', 'd44f286c79534e8c979dde3e3d146a17', 0, 1, '2013-03-25 16:37:03', '');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_sources`
--

DROP TABLE IF EXISTS `auth_sources`;
CREATE TABLE IF NOT EXISTS `auth_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `host` varchar(60) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `account_password` varchar(255) DEFAULT '',
  `base_dn` varchar(255) DEFAULT NULL,
  `attr_login` varchar(30) DEFAULT NULL,
  `attr_firstname` varchar(30) DEFAULT NULL,
  `attr_lastname` varchar(30) DEFAULT NULL,
  `attr_mail` varchar(30) DEFAULT NULL,
  `onthefly_register` tinyint(1) NOT NULL DEFAULT '0',
  `tls` tinyint(1) NOT NULL DEFAULT '0',
  `filter` varchar(255) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_auth_sources_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `auth_sources`
--


-- --------------------------------------------------------

--
-- Структура таблицы `boards`
--

DROP TABLE IF EXISTS `boards`;
CREATE TABLE IF NOT EXISTS `boards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '1',
  `topics_count` int(11) NOT NULL DEFAULT '0',
  `messages_count` int(11) NOT NULL DEFAULT '0',
  `last_message_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `altered_boards_project_id` (`project_id`),
  KEY `index_boards_on_last_message_id` (`last_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `boards`
--


-- --------------------------------------------------------

--
-- Структура таблицы `changes`
--

DROP TABLE IF EXISTS `changes`;
CREATE TABLE IF NOT EXISTS `changes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `changeset_id` int(11) NOT NULL,
  `action` varchar(1) NOT NULL DEFAULT '',
  `path` text NOT NULL,
  `from_path` text,
  `from_revision` varchar(255) DEFAULT NULL,
  `revision` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `changesets_changeset_id` (`changeset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `changes`
--


-- --------------------------------------------------------

--
-- Структура таблицы `changesets`
--

DROP TABLE IF EXISTS `changesets`;
CREATE TABLE IF NOT EXISTS `changesets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `repository_id` int(11) NOT NULL,
  `revision` varchar(255) NOT NULL,
  `committer` varchar(255) DEFAULT NULL,
  `committed_on` datetime NOT NULL,
  `comments` text,
  `commit_date` date DEFAULT NULL,
  `scmid` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `altered_changesets_repos_rev` (`repository_id`,`revision`),
  KEY `index_changesets_on_user_id` (`user_id`),
  KEY `index_changesets_on_repository_id` (`repository_id`),
  KEY `index_changesets_on_committed_on` (`committed_on`),
  KEY `changesets_repos_scmid` (`repository_id`,`scmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `changesets`
--


-- --------------------------------------------------------

--
-- Структура таблицы `changesets_issues`
--

DROP TABLE IF EXISTS `changesets_issues`;
CREATE TABLE IF NOT EXISTS `changesets_issues` (
  `changeset_id` int(11) NOT NULL,
  `issue_id` int(11) NOT NULL,
  UNIQUE KEY `changesets_issues_ids` (`changeset_id`,`issue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `changesets_issues`
--


-- --------------------------------------------------------

--
-- Структура таблицы `changeset_parents`
--

DROP TABLE IF EXISTS `changeset_parents`;
CREATE TABLE IF NOT EXISTS `changeset_parents` (
  `changeset_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  KEY `changeset_parents_changeset_ids` (`changeset_id`),
  KEY `changeset_parents_parent_ids` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `changeset_parents`
--


-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commented_type` varchar(30) NOT NULL DEFAULT '',
  `commented_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commented_id_and_commented_type` (`commented_id`,`commented_type`),
  KEY `index_comments_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `comments`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `skype_name` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `background` text,
  `job_title` varchar(255) DEFAULT NULL,
  `is_company` tinyint(1) DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `cached_tag_list` varchar(255) DEFAULT NULL,
  `visibility` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_contacts_on_author_id` (`author_id`),
  KEY `index_contacts_on_is_company` (`is_company`),
  KEY `index_contacts_on_company` (`company`),
  KEY `index_contacts_on_first_name` (`first_name`),
  KEY `index_contacts_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `contacts`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts_deals`
--

DROP TABLE IF EXISTS `contacts_deals`;
CREATE TABLE IF NOT EXISTS `contacts_deals` (
  `deal_id` int(11) DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  KEY `index_contacts_deals_on_deal_id_and_contact_id` (`deal_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts_deals`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts_issues`
--

DROP TABLE IF EXISTS `contacts_issues`;
CREATE TABLE IF NOT EXISTS `contacts_issues` (
  `issue_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_contacts_issues_on_issue_id_and_contact_id` (`issue_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts_issues`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts_projects`
--

DROP TABLE IF EXISTS `contacts_projects`;
CREATE TABLE IF NOT EXISTS `contacts_projects` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_contacts_projects_on_project_id_and_contact_id` (`project_id`,`contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts_projects`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts_queries`
--

DROP TABLE IF EXISTS `contacts_queries`;
CREATE TABLE IF NOT EXISTS `contacts_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `contacts_queries`
--


-- --------------------------------------------------------

--
-- Структура таблицы `contacts_settings`
--

DROP TABLE IF EXISTS `contacts_settings`;
CREATE TABLE IF NOT EXISTS `contacts_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` text,
  `project_id` int(11) DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_contacts_settings_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `contacts_settings`
--


-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `field_format` varchar(30) NOT NULL DEFAULT '',
  `possible_values` text,
  `regexp` varchar(255) DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` int(11) NOT NULL DEFAULT '0',
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_for_all` tinyint(1) NOT NULL DEFAULT '0',
  `is_filter` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `searchable` tinyint(1) DEFAULT '0',
  `default_value` text,
  `editable` tinyint(1) DEFAULT '1',
  `visible` tinyint(1) NOT NULL DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `custom_fields`
--


-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields_projects`
--

DROP TABLE IF EXISTS `custom_fields_projects`;
CREATE TABLE IF NOT EXISTS `custom_fields_projects` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_projects_on_custom_field_id_and_project_id` (`custom_field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `custom_fields_projects`
--


-- --------------------------------------------------------

--
-- Структура таблицы `custom_fields_trackers`
--

DROP TABLE IF EXISTS `custom_fields_trackers`;
CREATE TABLE IF NOT EXISTS `custom_fields_trackers` (
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_custom_fields_trackers_on_custom_field_id_and_tracker_id` (`custom_field_id`,`tracker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `custom_fields_trackers`
--


-- --------------------------------------------------------

--
-- Структура таблицы `custom_values`
--

DROP TABLE IF EXISTS `custom_values`;
CREATE TABLE IF NOT EXISTS `custom_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customized_type` varchar(30) NOT NULL DEFAULT '',
  `customized_id` int(11) NOT NULL DEFAULT '0',
  `custom_field_id` int(11) NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`id`),
  KEY `custom_values_customized` (`customized_type`,`customized_id`),
  KEY `index_custom_values_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `custom_values`
--


-- --------------------------------------------------------

--
-- Структура таблицы `deals`
--

DROP TABLE IF EXISTS `deals`;
CREATE TABLE IF NOT EXISTS `deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `background` text,
  `currency` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT '1',
  `price` decimal(10,0) DEFAULT NULL,
  `price_type` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `contact_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `probability` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_deals_on_contact_id` (`contact_id`),
  KEY `index_deals_on_project_id` (`project_id`),
  KEY `index_deals_on_status_id` (`status_id`),
  KEY `index_deals_on_author_id` (`author_id`),
  KEY `index_deals_on_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `deals`
--


-- --------------------------------------------------------

--
-- Структура таблицы `deal_categories`
--

DROP TABLE IF EXISTS `deal_categories`;
CREATE TABLE IF NOT EXISTS `deal_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_deal_categories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `deal_categories`
--


-- --------------------------------------------------------

--
-- Структура таблицы `deal_processes`
--

DROP TABLE IF EXISTS `deal_processes`;
CREATE TABLE IF NOT EXISTS `deal_processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deal_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `old_value` int(11) DEFAULT NULL,
  `value` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_deal_processes_on_author_id` (`author_id`),
  KEY `index_deal_processes_on_deal_id` (`deal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `deal_processes`
--


-- --------------------------------------------------------

--
-- Структура таблицы `deal_statuses`
--

DROP TABLE IF EXISTS `deal_statuses`;
CREATE TABLE IF NOT EXISTS `deal_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `color` int(11) NOT NULL DEFAULT '11184810',
  PRIMARY KEY (`id`),
  KEY `index_deal_statuses_on_is_closed` (`is_closed`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `deal_statuses`
--

INSERT INTO `deal_statuses` (`id`, `name`, `position`, `is_default`, `is_closed`, `color`) VALUES
(1, 'Pending', NULL, 1, 0, 11184810),
(2, 'Won', NULL, 0, 1, 32768),
(3, 'Lost', NULL, 0, 1, 16711680);

-- --------------------------------------------------------

--
-- Структура таблицы `deal_statuses_projects`
--

DROP TABLE IF EXISTS `deal_statuses_projects`;
CREATE TABLE IF NOT EXISTS `deal_statuses_projects` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `deal_status_id` int(11) NOT NULL DEFAULT '0',
  KEY `index_deal_statuses_projects_on_project_id_and_deal_status_id` (`project_id`,`deal_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `deal_statuses_projects`
--


-- --------------------------------------------------------

--
-- Структура таблицы `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `description` text,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_project_id` (`project_id`),
  KEY `index_documents_on_category_id` (`category_id`),
  KEY `index_documents_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `documents`
--


-- --------------------------------------------------------

--
-- Структура таблицы `enabled_modules`
--

DROP TABLE IF EXISTS `enabled_modules`;
CREATE TABLE IF NOT EXISTS `enabled_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `enabled_modules_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=254 ;

--
-- Дамп данных таблицы `enabled_modules`
--

INSERT INTO `enabled_modules` (`id`, `project_id`, `name`) VALUES
(1, 1, 'issue_tracking'),
(2, 1, 'time_tracking'),
(3, 1, 'news'),
(4, 1, 'documents'),
(5, 1, 'files'),
(6, 1, 'wiki'),
(7, 1, 'repository'),
(8, 1, 'boards'),
(9, 1, 'calendar'),
(10, 1, 'gantt'),
(11, 2, 'issue_tracking'),
(12, 2, 'time_tracking'),
(13, 2, 'news'),
(14, 2, 'documents'),
(15, 2, 'files'),
(16, 2, 'wiki'),
(17, 2, 'repository'),
(18, 2, 'boards'),
(19, 2, 'calendar'),
(20, 2, 'gantt'),
(21, 3, 'issue_tracking'),
(22, 3, 'time_tracking'),
(23, 3, 'news'),
(24, 3, 'documents'),
(25, 3, 'files'),
(26, 3, 'wiki'),
(27, 3, 'repository'),
(28, 3, 'boards'),
(29, 3, 'calendar'),
(30, 3, 'gantt'),
(31, 4, 'issue_tracking'),
(32, 4, 'time_tracking'),
(33, 4, 'news'),
(34, 4, 'documents'),
(35, 4, 'files'),
(36, 4, 'wiki'),
(37, 4, 'repository'),
(38, 4, 'boards'),
(39, 4, 'calendar'),
(40, 4, 'gantt'),
(41, 5, 'issue_tracking'),
(42, 5, 'time_tracking'),
(43, 5, 'news'),
(44, 5, 'documents'),
(45, 5, 'files'),
(46, 5, 'wiki'),
(47, 5, 'repository'),
(48, 5, 'boards'),
(49, 5, 'calendar'),
(50, 5, 'gantt'),
(51, 6, 'issue_tracking'),
(54, 6, 'documents'),
(55, 6, 'files'),
(56, 6, 'wiki'),
(58, 6, 'boards'),
(61, 7, 'issue_tracking'),
(62, 7, 'time_tracking'),
(63, 7, 'news'),
(64, 7, 'documents'),
(65, 7, 'files'),
(66, 7, 'wiki'),
(67, 7, 'repository'),
(68, 7, 'boards'),
(69, 7, 'calendar'),
(70, 7, 'gantt'),
(71, 8, 'issue_tracking'),
(72, 8, 'time_tracking'),
(73, 8, 'news'),
(74, 8, 'documents'),
(75, 8, 'files'),
(76, 8, 'wiki'),
(77, 8, 'repository'),
(78, 8, 'boards'),
(79, 8, 'calendar'),
(80, 8, 'gantt'),
(81, 9, 'issue_tracking'),
(83, 9, 'news'),
(84, 9, 'documents'),
(85, 9, 'files'),
(86, 9, 'wiki'),
(87, 9, 'repository'),
(88, 9, 'boards'),
(89, 9, 'calendar'),
(91, 10, 'issue_tracking'),
(92, 10, 'time_tracking'),
(93, 10, 'news'),
(94, 10, 'documents'),
(95, 10, 'files'),
(96, 10, 'wiki'),
(97, 10, 'repository'),
(98, 10, 'boards'),
(99, 10, 'calendar'),
(100, 10, 'gantt'),
(101, 11, 'issue_tracking'),
(102, 11, 'time_tracking'),
(103, 11, 'news'),
(104, 11, 'documents'),
(105, 11, 'files'),
(106, 11, 'wiki'),
(107, 11, 'repository'),
(108, 11, 'boards'),
(109, 11, 'calendar'),
(110, 11, 'gantt'),
(111, 12, 'issue_tracking'),
(112, 12, 'time_tracking'),
(113, 12, 'news'),
(114, 12, 'documents'),
(115, 12, 'files'),
(116, 12, 'wiki'),
(117, 12, 'repository'),
(118, 12, 'boards'),
(119, 12, 'calendar'),
(121, 13, 'issue_tracking'),
(124, 13, 'documents'),
(125, 13, 'files'),
(126, 13, 'wiki'),
(129, 13, 'calendar'),
(131, 14, 'issue_tracking'),
(132, 14, 'time_tracking'),
(133, 14, 'news'),
(134, 14, 'documents'),
(135, 14, 'files'),
(136, 14, 'wiki'),
(137, 14, 'repository'),
(138, 14, 'boards'),
(139, 14, 'calendar'),
(140, 14, 'gantt'),
(141, 15, 'issue_tracking'),
(142, 15, 'time_tracking'),
(143, 15, 'news'),
(144, 15, 'documents'),
(145, 15, 'files'),
(146, 15, 'wiki'),
(147, 15, 'repository'),
(148, 15, 'boards'),
(149, 15, 'calendar'),
(150, 15, 'gantt'),
(151, 16, 'issue_tracking'),
(152, 16, 'time_tracking'),
(153, 16, 'news'),
(154, 16, 'documents'),
(155, 16, 'files'),
(156, 16, 'wiki'),
(157, 16, 'repository'),
(158, 16, 'boards'),
(159, 16, 'calendar'),
(160, 16, 'gantt'),
(161, 17, 'issue_tracking'),
(162, 17, 'time_tracking'),
(163, 17, 'news'),
(164, 17, 'documents'),
(165, 17, 'files'),
(166, 17, 'wiki'),
(167, 17, 'repository'),
(168, 17, 'boards'),
(169, 17, 'calendar'),
(170, 17, 'gantt'),
(171, 18, 'issue_tracking'),
(172, 18, 'time_tracking'),
(173, 18, 'news'),
(174, 18, 'documents'),
(175, 18, 'files'),
(176, 18, 'wiki'),
(177, 18, 'repository'),
(178, 18, 'boards'),
(179, 18, 'calendar'),
(180, 18, 'gantt'),
(181, 19, 'issue_tracking'),
(182, 19, 'time_tracking'),
(183, 19, 'news'),
(184, 19, 'documents'),
(185, 19, 'files'),
(186, 19, 'wiki'),
(187, 19, 'repository'),
(188, 19, 'boards'),
(189, 19, 'calendar'),
(190, 19, 'gantt'),
(191, 20, 'issue_tracking'),
(192, 20, 'time_tracking'),
(193, 20, 'news'),
(194, 20, 'documents'),
(195, 20, 'files'),
(196, 20, 'wiki'),
(197, 20, 'repository'),
(198, 20, 'boards'),
(199, 20, 'calendar'),
(200, 20, 'gantt'),
(201, 20, 'contacts_module'),
(202, 21, 'issue_tracking'),
(203, 21, 'time_tracking'),
(204, 21, 'news'),
(205, 21, 'documents'),
(206, 21, 'files'),
(207, 21, 'wiki'),
(208, 21, 'repository'),
(209, 21, 'boards'),
(210, 21, 'calendar'),
(211, 21, 'gantt'),
(212, 22, 'issue_tracking'),
(213, 22, 'documents'),
(214, 22, 'files'),
(215, 23, 'issue_tracking'),
(216, 23, 'time_tracking'),
(217, 24, 'issue_tracking'),
(218, 24, 'news'),
(219, 24, 'documents'),
(220, 24, 'files'),
(221, 24, 'wiki'),
(222, 24, 'repository'),
(223, 24, 'calendar'),
(224, 25, 'issue_tracking'),
(225, 25, 'news'),
(226, 25, 'documents'),
(227, 25, 'files'),
(228, 25, 'wiki'),
(229, 25, 'repository'),
(230, 25, 'boards'),
(231, 26, 'issue_tracking'),
(232, 26, 'news'),
(233, 26, 'documents'),
(234, 26, 'files'),
(235, 26, 'wiki'),
(236, 26, 'repository'),
(237, 27, 'issue_tracking'),
(238, 27, 'news'),
(239, 27, 'documents'),
(240, 27, 'files'),
(241, 27, 'wiki'),
(242, 28, 'issue_tracking'),
(243, 28, 'news'),
(244, 28, 'documents'),
(245, 28, 'files'),
(246, 28, 'wiki'),
(247, 28, 'repository'),
(248, 29, 'issue_tracking'),
(249, 29, 'news'),
(250, 29, 'documents'),
(251, 29, 'files'),
(252, 29, 'wiki'),
(253, 29, 'repository');

-- --------------------------------------------------------

--
-- Структура таблицы `enumerations`
--

DROP TABLE IF EXISTS `enumerations`;
CREATE TABLE IF NOT EXISTS `enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `project_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `position_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_enumerations_on_project_id` (`project_id`),
  KEY `index_enumerations_on_id_and_type` (`id`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Дамп данных таблицы `enumerations`
--

INSERT INTO `enumerations` (`id`, `name`, `position`, `is_default`, `type`, `active`, `project_id`, `parent_id`, `position_name`) VALUES
(1, 'Низкий', 1, 0, 'IssuePriority', 1, NULL, NULL, 'lowest'),
(2, 'Нормальный', 2, 1, 'IssuePriority', 1, NULL, NULL, 'default'),
(3, 'Высокий', 3, 0, 'IssuePriority', 1, NULL, NULL, 'high3'),
(4, 'Срочный', 4, 0, 'IssuePriority', 1, NULL, NULL, 'high2'),
(5, 'Немедленный', 5, 0, 'IssuePriority', 1, NULL, NULL, 'highest'),
(6, 'Пользовательская документация', 1, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(7, 'Техническая документация', 2, 0, 'DocumentCategory', 1, NULL, NULL, NULL),
(8, 'Проектирование', 1, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(9, 'Разработка', 2, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(10, 'Тестирование', 3, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(11, 'Иное', 5, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL),
(12, 'Бизнес процессы', 4, 0, 'TimeEntryActivity', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `groups_users`
--

DROP TABLE IF EXISTS `groups_users`;
CREATE TABLE IF NOT EXISTS `groups_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  UNIQUE KEY `groups_users_ids` (`group_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `groups_users`
--

INSERT INTO `groups_users` (`group_id`, `user_id`) VALUES
(4, 1),
(4, 14),
(4, 17),
(4, 18),
(4, 22),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(12, 1),
(12, 13),
(15, 1),
(19, 20),
(19, 21),
(19, 23);

-- --------------------------------------------------------

--
-- Структура таблицы `issues`
--

DROP TABLE IF EXISTS `issues`;
CREATE TABLE IF NOT EXISTS `issues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `due_date` date DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT '0',
  `assigned_to_id` int(11) DEFAULT NULL,
  `priority_id` int(11) NOT NULL DEFAULT '0',
  `fixed_version_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `lock_version` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `done_ratio` int(11) NOT NULL DEFAULT '0',
  `estimated_hours` float DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `issues_project_id` (`project_id`),
  KEY `index_issues_on_status_id` (`status_id`),
  KEY `index_issues_on_category_id` (`category_id`),
  KEY `index_issues_on_assigned_to_id` (`assigned_to_id`),
  KEY `index_issues_on_fixed_version_id` (`fixed_version_id`),
  KEY `index_issues_on_tracker_id` (`tracker_id`),
  KEY `index_issues_on_priority_id` (`priority_id`),
  KEY `index_issues_on_author_id` (`author_id`),
  KEY `index_issues_on_created_on` (`created_on`),
  KEY `index_issues_on_root_id_and_lft_and_rgt` (`root_id`,`lft`,`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Дамп данных таблицы `issues`
--

INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`) VALUES
(1, 3, 20, 'Найти партнера среди страховых', 'для обеспечения гарантий выплаты по мошенническим операциям, найти партнера, можно обратиться к диме конопе, возможно им будет интересно.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-15 19:12:38', '2013-02-15 19:12:38', '2013-02-15', 0, NULL, NULL, 1, 1, 2, 0),
(2, 3, 20, 'Изучить рынок допп комиссий среди сайтов', 'Узнать добавляют ли комиссию другие сайты, к платежу, изучить не менее трех сайтов', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-15 19:13:44', '2013-02-15 19:13:44', '2013-02-15', 0, NULL, NULL, 2, 1, 2, 0),
(3, 3, 20, 'Предложить новую схему комиссий для беларсбанка', 'Подумай как можно решить вопрос по комиссиям с беларусбанком, как именно решить вопрос комиссий по заграничным картам, и т.д.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-15 19:15:18', '2013-02-15 19:15:18', '2013-02-15', 0, NULL, NULL, 3, 1, 2, 0),
(4, 1, 2, 'Предварительное тестирование', 'Яков как там у нас тестированием, когда мы сможем его продолжить? Хочется быстрее увидеть результаты работ.', NULL, NULL, 1, NULL, 2, NULL, 1, 1, '2013-02-15 19:17:47', '2013-02-15 19:58:07', '2013-02-15', 0, NULL, NULL, 4, 3, 4, 0),
(5, 3, 20, 'Изучиние и выявление дополнительных комиссий  у конкурентов.', 'Полное изучение существующих проектов на теретории РБ.Выявление у них дополнительных комиссий.', NULL, NULL, 1, NULL, 3, NULL, 13, 1, '2013-02-16 13:22:01', '2013-02-20 13:03:50', '2013-02-16', 0, NULL, NULL, 5, 1, 2, 0),
(7, 1, 9, 'Задача - Оптимизация запросов парсеров', 'Итера готова предоставить парсеры для оптимизации.\r\n\r\nНо, тут не совсем дело в парсерах, а в том, что их алгоритм проводит проверки на наличие в базе дубликатов на лету.\r\n\r\nЧто такое дубликат?  Это тур с одними и теми же параметрами, но по разной цене. Допустим, сегодня вышло спецпредложение на вылет послезавтра в отель Rixos по цене 100 долларов. В базе же прописано это предложение по цене 1000 долларов. \r\nЕсли залить всё без проверки, то появится в результате поиска 2 тура по цене 100 и по цене 1000 долларов и пользователю непонятно, что верно. А верно то, что было записано позже.\r\n\r\nТо есть, львиная время работы парсера заключается в проверке наличия дубликата в базе. По-моему проверяется каждая операция записи.\r\n\r\nКакое может быть решение?\r\n1. Записывать всё без проверки и тут же проверять эту свежую область базу на наличие дубликатов. Потом проводить репликацию с поисковой базой.\r\n\r\n2. Записывать во временные таблицы и там проводить сравнение и отсеивание дубликатов.\r\n\r\n3. Фильтровать базу для проверки по оператору, городу вылета  и дате вылета, в первую очередь (не по оператору, стране, региону и тд), потому что дубликат - это в первую очередь дата вылета с разными ценами\r\n\r\n4. Наверняка, есть ещё решения, но я не специалист в программировании\r\n\r\n\r\nЖду подключение специалиста в этом вопросе (базы и просто умного программиста).\r\n', NULL, NULL, 3, 17, 3, NULL, 1, 15, '2013-02-19 12:32:18', '2013-03-06 20:00:30', '2013-02-19', 0, NULL, NULL, 7, 1, 2, 0),
(8, 1, 14, 'Поиск тура туристом', 'У туриста есть несколько вариантов найти нужный ему тур:\r\n- воспользоваться предложениями "В последнюю минуту" (их количество ограниченно, не более 6-10)\r\n- воспользоваться одной из витрин\r\n- воспользоваться модулем поиска туров.\r\n\r\n1. Использовании модуля поиска туров.\r\n\r\nМодуль поиска можно использовать, как быстрый (на главной странице), так и расширенный, который находится на страницах Поиск туров и Туры\r\n\r\n1.1. Задаются параметры поиска\r\n\r\n1.2. Результаты поиска открываются в этой же странице (М4).\r\n             - Результаты поиска прописываются в кеше.\r\n             - Результаты поиска сгруппированы по отелям. Внутри группы может быть множество конкретных туров на разные даты, продолжительности, от разных туроператоров.\r\n\r\n1.3.  Результаты поиска можно отфильтровать, с использованием фильтра в правой колонке. \r\n- Фильтр действует по нажатии кнопки "Показать туры".\r\n- Число туров динамически уменьшается в процессе выбора параметров тура.\r\n- Название последней колонки не "Дата выезда", а "Цена тура за номер" (для пакетных туров)\r\n\r\n1.4. Группы туров можно добавить в буфер для сравнения.\r\n\r\n1.5. Для возврата к поиску с установленными параметрами нужно нажать на ссылку "Изменить условия поиска". Для возврата на страницу "Поиск туров" - на "Новый поиск"\r\n\r\n1.6. Для просмотра конкретных туров из выбранной группы нужно нажать на ссылку "Подробнее" или минимальную цену в группе. Осуществляется переход на страницу с вариантами туров (М2).\r\n\r\n1.7. Понравившееся туры добавляются в корзину.\r\n\r\n1.8. К просмотру описания тура можно перейти, как из корзины, так и со страницы вариантов тура, нажав ссылку "Подробнее"\r\n\r\n1.9. На странице описания тура (М5), турист выбирает вариант: \r\n- отправить запрос менеджеру\r\n- приступить к бронированию тура\r\n\r\n2. Использование витрин и сервиса "В последнюю минуту".\r\n\r\n2.1. При нажатии на цену или ссылку "Подробнее" турист сразу попадает на страницу подробного описания тура.\r\n\r\nНедостаток страницы:\r\n- нет возможности видеть ссылку на корзину и количество туров в корзине\r\n- нет возможности добавить этот тур в корзину и заняться дальнейшим изучением сайта', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:01:39', '2013-02-19 13:01:39', '2013-02-19', 0, NULL, NULL, 8, 1, 2, 0),
(9, 1, 14, 'Дополнения к описанному функционалу и важные замечания', '*1. Необходимо делать автоматическую проверку  актуальности тура со страницы его подробного описания.* \r\n\r\nПри положительном результате должна появляться зелёная надпись "Тур актуален"\r\nПри отрицательном результате старая цена должно быть уменьшена и перечёркнута, а на месте цены показана новая цена. \r\nПри этом должна быть выведена следующая надпись:\r\n"К сожалению, цена на тур уже изменилась"\r\n\r\n*2. В Моём кабинете должна быть размещена лента запросов туриста*\r\n\r\n*3. В момент отправки запроса на тур должна быть произведена автоматическая регистрация туриста.*\r\n\r\nНадпись после отправки запроса:\r\n"Ваш Запрос нами получен.\r\nСостояние его можно отслеживать в Моем кабинете.\r\nВаш логин: pupkin@mail.ru\r\nВаш пароль был отправлен на контактный E-mail, его Вы можете изменить из Моего кабинета."\r\n\r\n*4. Авторизированные туристы должны видеть название туроператора в деталях тура*\r\n\r\n*5. В Моём кабинете необходимо добавить "Историю поисков" (историю корзины)*\r\n\r\n*6. На результаты поиска туров нужно генерировать ссылку.*\r\n\r\nВ Айти-туре при технологии Аякс ссылка генерируется отдельно (становится активной строка "Вы искали") и выглядит следующим образом:\r\nhttp://www.ittour.com.ua/tour-search-all-ajax.html?kid%5B%5D=0&tid%5B%5D=1&cid%5B%5D=338&rid%5B%5D=-1&hcid%5B%5D=4&hcid%5B%5D=78&hotel%5B%5D=-1&food%5B%5D=-1&nid%5B%5D=6+-+8&nightsFrom=7&nightsTo=7&dateFrom=09.02.13&dateTo=17.02.13&pid%5B%5D=10+000&priceFrom=&priceTo=&adults=2&children=0&dcid%5B%5D=-1&oid%5B%5D=-1&showAvailableOnly=on&toursPerPage=50&tour_id=%D0%9F%D0%BE%D0%B8%D1%81%D0%BA+%D0%BF%D0%BE+ID+%D1%82%D1%83%D1%80%D0%B0&page_name=%2Ftour-search-all-ajax.html&alt_dcid[]=2014&alt_dcid[]=1225&alt_dcid[]=1764&alt_dcid[]=1224&alt_dcid[]=449&alt_dcid[]=1212&alt_dcid[]=1745&alt_dcid[]=1864\r\n\r\n*7. В витрине "В последнюю минуту" нужно размещать как пакетные, так и экскурсионные туры*\r\n\r\n*8. Для поисковиков нужно организовать раздел с постоянно дополняющимся уникальным контентом.*\r\n\r\nНапример, "Это интересно!" с разбивкой статей по странам и категориям.\r\n\r\n*9. При выборе способа оплаты, 1-м пунктом нужно добавить "Использовать бонусы в сумме...".* \r\n\r\nВ окне по умолчанию введены все бонусы, которые есть у туриста с возможностью редактирования суммы (показывается сумма не больше, чем стоимость тура). \r\nУстановка галки в этом параметре приведёт к уменьшению суммы счёта на величину суммы бонуса\r\n \r\n* 10. Необходимы ссылки на страницы сайта в фейсбуке и В контакте*', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:03:33', '2013-02-19 13:03:33', '2013-02-19', 0, NULL, NULL, 9, 1, 2, 0),
(10, 1, 14, 'Регистрация', '*1. Для регистрации достаточно Имени и E-mail туриста.*\r\nВсе остальные поля можно заполнить в Моем кабинете.\r\n\r\n- После регистрации на E-mail приходит письмо с учётными данными:\r\nлогин: E-mail\r\nпароль: генерируется\r\n\r\n- Пароль можно изменить из Моего кабинета.\r\n\r\n- Список зарегистрированных туристов редактируется из АЧ\r\n\r\n- Пароль напоминается (изменяется) при вводе E-mail.\r\n\r\nВопросы:\r\n\r\n- Нужно ли активировать регистрацию?\r\n\r\n- Какую защиту поставить от роботов? Может невидимое людям поле "Фамилия", например, видимое роботами? Не хотелось бы каптчу\r\n\r\n- Нужно ли держать в базе пароли? Или лучше шифровать и при запросе на смену генерировать временный пароль?', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:04:47', '2013-02-19 13:04:47', '2013-02-19', 0, NULL, NULL, 10, 1, 2, 0),
(11, 1, 14, 'Бронирование тура туристом', 'Для бронирования тура турист должен произвести следующие действия:\r\n\r\n1. Открыть подробности тура и убедиться, что после автоматической проверки актуальности, цена тура актуальна (в страницу М5 добавить соответствующий функционал, аналогичный проверки актуальности в Айти-тур).\r\n\r\n2. Не заполняя полей отправки Запроса, перейти к бронированию тура\r\n\r\n3. Ввести контактные данные участников тура (страница М9)(необходимо дать возможность заполнить паспортные данные позже из Моего кабинета). Если данные участников тура есть в заявках, которые находятся в Моём кабинете, в выпадающем окне делается поиск, выделяются туристы, данные которых должны быть импортированы в новую заявку. При этом возможность редактирования этих данных сохраняется. \r\nМожно просто вести учёт данных туристов без привязки к заявкам.\r\n\r\n4. Выбрать способ оплаты (М10)\r\n\r\n5. Оплатить или распечатать счёт на оплату\r\n\r\n6. Забронировать\r\n\r\n\r\n\r\n*Примечания.*\r\n\r\n1. На странице нужно добавить поле "Дата выдачи паспорта" (перед "Срок действия"\r\n\r\n2. Фамилия и имя заказчика тура заполнять на любом языке.\r\n\r\n3. При выборе варианта "Я внесу паспортные данные позже" предлагать в выпадающем окне согласиться с тем, что "Ознакомлен с тем, что дата окончания действия паспорта не может быть раньше 6-ти месяцев с даты завершения тура и принимаю условия публичного договора на бронирования туристических услуг".\r\nЗаявка, в которой не хватает данных выделяется как в Моём кабинете, так и в АЧ Завтра в тур.\r\nПосле внесения данных выделение снимается\r\n\r\n4. На странице выбора способа оплаты добавить информацию о минимальной сумме предоплаты, которая будет вычисляться по формуле: возможные штрафные санкции (в процентах от цены тура) при аннуляции.\r\nЭтот процент зависит от сроков начала тура. У каждого туроператора он свой. К примеру, штраф за отмену тура ранее , чем за 30 дней до начала тура, как правило, не взимается.\r\nТурист должен выбрать: оплачивать минимальную сумму предоплаты или полную цену тура.\r\nВ случае оплаты минимальной суммы предоплаты, окончательная оплата должна быть произведена в течение 3-х дней со дня подтверждения тура.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:05:34', '2013-02-19 13:05:34', '2013-02-19', 0, NULL, NULL, 11, 1, 2, 0),
(12, 1, 14, 'Оплата тура туристом', 'В процессе бронирования тура необходимо провести его оплату выбранным способом.\r\n\r\n*1. При выборе "Оплата счёта в любом отделении банка"*\r\n\r\n- на следующем шаге генерируется счёт на оплату в формате pdf.\r\n- после проведения оплаты турист вводит данные об оплате (Дата, сумма, отделение банка)\r\n- бухгалтер подтверждает сумму оплаты или вводит её в заявку\r\n- статус оплаты заявки изменяется\r\n\r\n*2. Карты, Webmoney, (терминалы).*\r\n\r\n- сразу после оплаты сумма оплаты прописывается в Заявке и изменяется её статус\r\n\r\n*3. При выборе варианта оплаты в турфирме-партнёре подгружается список партнёров.* \r\n\r\n- На следующем шаге производится так же генерация счёта в формате pdf. \r\n- Этот счёт отправляется на E-mail турфирмы-партнёра и становится доступным туристу для печати или сохранения в локальный компьютер. Так же на E-mail партнера детали забронированного тура (без данных туристов), включая контактные данные заказчика.\r\n\r\n*4. Просьба возврата предоплаты отсылается менеджеру сообщением*\r\n\r\n\r\n*Примечания.*\r\n\r\n1. Необходимо в начале странице показать сумму, способ оплаты которой выбирается.\r\n\r\n2. Вместо кнопки "Отправить запрос" нужна кнопка "Далее" или "Перейти к следующему шагу". Также нужна кнопка "Вернуться".\r\n\r\n3. Поле комментарии при выборе оплаты в турфирме-партнере не нужно\r\n\r\n4. Сумма оплаты показывается с учётом скидки туриста (ниже прописывается размер скидки)\r\n\r\n5. На странице выбора способа оплаты, нужно добавить "Использовать бонусы в сумме...". \r\nВ окне по умолчанию введены все бонусы, которые есть у туриста с возможностью редактирования суммы (показывается сумма не больше, чем стоимость тура). \r\nУстановка галки в этом параметре приведёт к уменьшению суммы счёта на величину суммы бонуса.\r\n\r\n6. Счёт на оплату подвязывется к Заявке в Моём кабинете туриста', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:06:36', '2013-02-19 13:06:36', '2013-02-19', 0, NULL, NULL, 12, 1, 2, 0),
(13, 1, 14, 'Размещение предложений "В последнюю минуту"', 'Туры "В последнюю минуту" - это обычные туры, но с изменённой ценой.\r\nДля внесения к отображению тура "В последнюю минуту" необходимо произвести следующие действия:\r\n\r\n1. Выделить основной вариант тура в АЧ\r\n    - добавить в Айти-тур этот тур в "Мои туры", произвести его экспорт в Запросы АЧ, Запрос скопировать на страницу "В последнюю минуту"\r\n    - сделать поиск тура в АЧ "Завтра в тур" и скопировать его на страницу "В последнюю минуту"\r\n    - руками создать тур\r\n\r\n2. Изменить его цену (цену копии тура)\r\n\r\n3. Разместить (включить отображение)\r\n\r\n4. Актуальность тура (наличие мест на вылете и в отеле, соответствие родительской цены) проверяется автоматически (проверяется родительский тур).\r\nПри отрицательном результате проверки, признак видимости тура снимается автоматически, и показ тура отключается.\r\nПри этом добавляется признак "Тур неактуален", что переводит данный тур в Архив туров "В последнюю минуту"\r\n\r\n5. Бронирование тура проводится по обычной схеме\r\n\r\n6. На странице "Туры в последнюю минуту" применяются фильтры:\r\n    - Архив (нет, да)\r\n    - Страна\r\n    - Оператор', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:10:45', '2013-02-19 13:10:45', '2013-02-19', 0, NULL, NULL, 13, 1, 2, 0),
(14, 1, 14, 'Подписка туриста на E-mail и СМС рассылку. Выбор параметров', 'Подписка является одним из ключевых функционалов сайта.\r\n\r\nПодписка осуществляется в Моем кабинете туриста.\r\n\r\nМожно подписаться на \r\n - Предложения "В последнюю минуту"\r\n - Лучшие предложения "В последнюю минуту" \r\n - Туры по моим параметрам\r\n - Новости сайта\r\n\r\n1. Туры по моим параметрам.\r\n\r\nПри подписке на "Туры по моим параметрам" турист задаёт комбинацию параметров поисковых фильтров, присваивает название этой подписки, задаёт период подписки (с даты по дату) и сохраняет запись.\r\n\r\nЕжедневно (с другим таймаутом) происходят поиски туров по заданным туристом записям.\r\nВ случае положительного результата первые 20 туров, отсортированные по цене, размещаются на вкладке кабинета туриста "Туры по подписке".\r\n\r\nСтраница "Туры по подписке" состоит из блоков записей (запись - тур). \r\n\r\nВверху блока:  дата и название подписки, внизу блока - "Показать больше туров" с активной ссылкой на результаты поиска по заданным фильтрам с открытием страницы результата поиска туров.\r\n\r\nЕсли подписок несколько, то формируется несколько блоков за каждую дату. \r\n\r\nЕсли результат поиска отрицательный, то в блоке прописывается надпись "Туров не найдено. Попробуйте изменить параметры подписки" \r\n\r\nБлоки в подписке показываются за 30 дней, более старые блоки удаляются.\r\n\r\nИнформация о том, что туров не найдено не рассылается.\r\n\r\nСМС информация  по этой подписке не рассылается.\r\n\r\nПодписку (запись) можно отредактировать, удалить или деактивировать.\r\n\r\nУстаревшие записи (по дате начала тура) автоматически деактивируются\r\n\r\nВсе записи показываются в АЧ и могут из её редактироваться менеджером\r\n\r\n\r\n2. Подписка "В последнюю минуту"\r\n\r\nФильтры:\r\n- Страна\r\n- Город вылета\r\n- Период информирования\r\n\r\nФормируется одна запись (через возможность мультивыбора Стран и Городов вылета). Страны и города вылета задаются из АЧ из справочника для сервиса "В последнюю минуту", их число ограничено.\r\n\r\nВозможна рассылка через СМС. В этом случае устанавливается дополнительный параметр: период подписки (1 неделя, 2 недели, 3 недели, 1 месяц). Отсчёт начала периода будет совпадать с началом периода подписки, заданным ранее. \r\nЗадать новый период СМС рассылки (после окончания периода действия) можно путём редактирования записи подписки.\r\n\r\n3. Подписка на Лучшие предложения "В последнюю минуту"\r\n\r\nСМС рассылка не ограничена периодом действия\r\n\r\nФильтров нет, просто активируются подписки E-mail и СМС (отдельно)\r\n\r\nРешение о рассылки принимает менеджер.\r\n\r\nE-mail рассылка активируется автоматически при регистрации\r\n\r\n\r\n4. Подписка на новости сайта \r\n\r\nСМС рассылка не ограничена периодом действия\r\n\r\nАктивируются подписки E-mail и СМС (отдельно)\r\n\r\nРешение о рассылки принимает менеджер.\r\n\r\nE-mail рассылка активируется автоматически при регистрации', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:11:19', '2013-02-19 13:11:19', '2013-02-19', 0, NULL, NULL, 14, 1, 2, 0),
(15, 1, 14, 'Мой кабинет туриста. Функциональные возможности', 'Для удобства работы каждому туристу открывается Мой кабинет\r\n\r\nВозможности Моего кабинета:\r\n\r\n1. Редактировать свои контактные данные, изменять пароль\r\n\r\n2. Загружать документы\r\n\r\n3. Проводить переписку с менеджером, используя вложения\r\n\r\n4. Видеть свои запросы и изменять их статус (отклонён, одобрен)\r\n\r\n5. Видеть в качестве запросов предложения менеджера и изменять их статус\r\n\r\n6. Управлять своими заявками (видеть их статус)\r\n\r\n7. Управлять своими оплатами:\r\n      - пополнять баланс (совершая предоплату)\r\n      - оплачивать заявки (частично и полностью)\r\n     - заказывать возврат предоплаченных средств\r\n\r\n8. Управлять своими подписками на рассылки (E-mail и СМС):\r\n    - новости сайта\r\n   - лучшие предложения в последнюю минуту\r\n   - предложения "В последнюю минуту" с заданными параметрами\r\n   - туры с заданными параметрами\r\n\r\n9. Получить реферальную ссылку\r\n\r\n10. Участвовать в партнёрской программе по привлечению туристов:\r\n     - видеть своих рефералов и субрефералов (id)\r\n     - видеть заявки (id) своих рефералов и субрефералов и суммы, начисленные по ним на бонусный счёт.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:11:53', '2013-02-19 13:11:53', '2013-02-19', 0, NULL, NULL, 15, 1, 2, 0),
(16, 1, 14, 'Синхронизация Запросов и Заявок с Айти-тур', '1. Запросы туриста автоматически прописываются в АЧ Завтра в тур и в аккаунте "Завтра в тур" в Айти-тур на странице Запросы. Статусы Запросов несинхронизированы.\r\n\r\n2. Информация из "Мои туры" в аккаунте Айти-тур экспортируется в АЧ "Завтра в тур" и прописывается в качестве запросов в ручном режиме (необходимо выделить туры для экспорта)\r\n\r\n3. Заявка туриста размещается в АЧ "Завтра в тур" и далее:\r\n     -  если заявка оплачена и в её внесены все данные туристов (имеет признак "возможно бронирование"), она автоматически экспортируется в Айти-тур и размещается там для бронирования\r\n    - если заявка ещё не оплачена и (или) в ее не внесены окончательные данные туристов, она автоматически экспортируется в Айти-тур и размещается в разделе "Подготовленные заявки"\r\n\r\n4. Статус состояния заявки синхронизирован с Айти-тур (импортируется из Айти-тур)\r\n\r\n5. Заявки с недостаточным количеством информации о данных туристов синхронизируются с Айти-тур по  данным туристов (эти заявки расположены в Айти-тур в разделе "Подготовленные заявки). После изменения данных туристов, эти изменения прописываются и в Заявке из раздела "Подготовленные заявки".\r\nСинхронизацию можно снять, как из АЧ "Завтра в тур", так и из аккаунта "Завтра в тур" в Айти-тур.\r\n\r\n6. Бронирование "Подготовленных заявок" производится в ручном  режиме.\r\n- После бронирования Заявки из раздела "Подготовленные Заявки" она перемещается в раздел "Заявки" в аккаунте Айти-тур.\r\nВ этом случае в АЧ "Завтра в тур" делается автоматический поиск этой заявки в новом разделе и включение синхронизации статусов состояния.\r\n- Если Заявка в новом разделе не найдена, об этом информируется в АЧ  менеджер "Завтра в тур", который может отменить синхронизацию и перейти на ручной режим работы с Заявкой.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:12:32', '2013-02-19 13:12:32', '2013-02-19', 0, NULL, NULL, 16, 1, 2, 0),
(17, 1, 14, 'Работа менеджера с запросами туриста', '1. Запрос создан туристом.\r\n1.1. После отправки запроса со страницы "Подробности тура" он прописывается в Моём кабинете на вкладке Запросы со статусом "Новый"\r\n\r\nСтатусы запроса, которые изменяются менеджером:\r\n- Новый\r\n- В работе\r\n- Обработан \r\n\r\nСтатусы запроса, которые изменяются туристом:\r\n- Отклонен\r\n- Принят\r\n\r\nЕсли запрос "Отклонён" или "Обработан" он становится "серым" и через 2 дня переходит в Архив запросов (в Моём кабинете и в АЧ сайта).\r\n\r\nНа вкладке Запросы показываются только активные Запросы (и в течение 2-х дней отклонённые и обработанные)\r\n\r\nПри клике на id запроса открываются подробности тура\r\n\r\nТурист может создать Заявку из любого запроса (ссылка или кнопка "Создать заявку"), при этом он попадает на страницу внесения паспортных данных участников тура.\r\n\r\n\r\n1.2. Запрос также прописывается в АЧ сайта и в аккаунте "Завтра в тур" в системе Айти-тур. На основании этого запроса в системе Айти-тур можно одним кликом создать Заявку, которая будет экспортирована в АЧ "Завтра в тур" и из АЧ в Мой кабинет туриста.\r\n\r\n1.3. Запрос может быть создан туристом также из корзины туров ("Сохранить тур, как запрос")\r\n\r\n\r\n2. Запрос создан менеджером для туриста.\r\n\r\n2.1. Запрос создаётся в Айти-тур путём внесения интересных туров в "Мои туры" (аналог корзины) с последующим экспортом лучших из них в АЧ "Завтра в тур".\r\nДалее этот запрос может быть сделан видимым для отображения в аккаунте туриста (вводится id аккаунта).\r\n\r\n2.2. Экспортированные запросы также прописываются в аккаунте "Завтра в тур" в системе "Айти-тур" на странице Запросы.\r\n\r\n2.3 Запрос, которому установлена связь с аккаунтом туриста, удалять нельзя, можно только изменить его статус на "Обработан".\r\nЕсли эта связь ещё не установлена, то удаление запроса возможно.\r\n\r\n2.4 Если Запрос одобряется туристом (статус "Принят") менеджер может создать из него Заявку.\r\nЗаявке также устанавливается связь с кабинетом туриста.\r\n (Заявку может создать, как менеджер, так и турист).\r\n\r\n2.5. Данные туристов в Заявку, созданную менеджером, могут быть добавлены позже (как туристом, так и менеджером), в этом случае Заявка имеет статус "черновик" ( или размещается на странице Черновики, Подготовленные, что лучше, чтобы не путаться в статусах).', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:13:30', '2013-02-19 13:13:30', '2013-02-19', 0, NULL, NULL, 17, 1, 2, 0),
(18, 1, 14, 'Функционал административной части сайта', 'Административная часть сайта должна обеспечивать управление следующими сервисами (разделами):\r\n\r\n1. Запросы\r\n\r\n2. Заявки\r\n\r\n3. Сообщения (переписка с туристом)\r\n\r\n4. Подписка и рассылка (все подписки туристов плюс ручная рассылка)\r\n\r\n5. Турагентства-партнёры\r\n\r\n6. Туристы\r\n\r\n7. В последнюю минуту\r\n   - текущие предложения\r\n   - архив\r\n\r\n8. Биллинг\r\n    - счета пользователей\r\n    - бонусные счета пользователей\r\n   - лента операция\r\n   - отчёты\r\n\r\n9. Контент\r\n    - Вопрос-ответ\r\n    - Контент и метатеги страниц\r\n    - Новости\r\n    - Статьи\r\n\r\n10. Пользователи\r\n    - группы пользователей и система допусков их\r\n\r\n11. Средства анализа (маркетинговая информация)\r\n\r\n12. Справочники', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:14:19', '2013-02-19 13:14:19', '2013-02-19', 0, NULL, NULL, 18, 1, 2, 0),
(19, 1, 14, 'Бонусная система для туриста. Система скидок. Реферальная схема', '1. Туристу при регистрации открывается бонусный счёт в  системе.\r\n\r\n1.1.На бонусный счёт начисляется:\r\n\r\n- 1.0 % от суммы "своих" заявок (Заявок, в которых турист выступил заказчиком тура)\r\n- 0.75 % от суммы поездок "рефералов" (туристов, которые в Моём кабинете указали id данного туриста в качестве лица, которое рекомендовало использование данного сервиса)\r\n- 0.5 % от суммы поездок "субрефералов" (туристов, рефералы которых в Моём кабинете указали id реферала данного туриста в качестве лица, которое рекомендовало использование данного сервиса)\r\n- дополнительный бонус по конкретному туру (задается в АЧ)\r\n\r\n1.2. Бонусы можно использовать только на оплату тура\r\n\r\n1.3. Процедура "привязки" реферала.\r\n\r\n- Реферал в Моём кабинете может добавить информацию о лице, рекомендовавшем ему данный сервис, указав id туриста и его Ф.И.О (на любом языке, главное, чтобы оно совпало с ФИО в контактных данных Моего кабинета).\r\nПосле нажатия кнопки "Добавить информацию" происходит привязка к основному туристу его  реферала. Основной турист у реферала может быть только один.\r\n\r\n1.4. Отображение информации о рефералах в Моем кабинете.\r\n\r\n- Информация о рефералах отображается на вкладке "Мои туристы"\r\nЭто дерево, в каждой из строк которого показаны рефералы и количество начисленных бонусов.\r\n- id реферала становится активным (открывается деревом вниз с показом подробной информации), только после 1-го начисления бонусов или появления под ним субреферала.\r\n- после раскрытия id реферала показываются id всех его заявок и суммы начисленных бонусов по ним. \r\n- под id рефералов также открываются id субрефералов с начисленными общими бонусами, а в них открываются заявки субрефералов с начисленными бонусами по этим заявкам\r\n- первым моим туристом (верхним в дереве) является "Я сам" с общей суммой начисленных бонусов.\r\n- по умолчанию дерево показывает всех рефералов (1-го уровня)\r\n- верхние фильтры страницы открываются по клике на ссылке "Показать фильтры". Это фильтрация за период и фильтрация по номеру id (для быстрого поиска реферала. На 1-м этапе этого делать не надо) \r\n\r\n2. В зависимости от количества совершённых с помощью сервиса поездок турист получает накопительную скидку.\r\n  - При первой же поездке сразу 1.0%\r\n  - После 2-й - 2.0%\r\n  - После 3-й - 3.0%\r\n  - После 4-й - 3.5%\r\n  - После 5-й - 4.0%\r\n \r\nТекущая скидка показывается в подробностях тура и на странице оплаты (при выборе варианта оплаты тура) \r\nРазмер скидки вычитается из суммы оплаты тура.\r\n\r\n3. Вебрефералы\r\n\r\n- В моём кабинете можно скопировать реферальную ссылку на главную страницу сайта.\r\n\r\n- Зарегистрированный пользователь, который пришел на сайт по реферальной ссылке автоматически становится рефералом владельца данной ссылки со всеми начислениями бонусов от поездок.\r\nПроцесс привлечения знакомых в качестве рефералов существенно упрощается.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:14:52', '2013-02-19 13:14:52', '2013-02-19', 0, NULL, NULL, 19, 1, 2, 0),
(20, 1, 14, 'Регистрация пользователя, пришедшего по реферальной ссылки', 'пока без описания', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:15:28', '2013-02-19 13:15:28', '2013-02-19', 0, NULL, NULL, 20, 1, 2, 0),
(21, 1, 14, 'Использование геотаргетинга для настройки параметров показываемых витрин', 'Любой пользователь идентифицируется по IP адресу.\r\nЕму присваивается регион.\r\n\r\nВ фильтрах витрин "Предложения дня" устанавливается регион, согласно IP\r\n\r\nИспользуется комбинация фильтров: "все-все-все" в случаях:\r\n   - нет городов вылета по определённому IP\r\n   - ip другой страны (это частный случай первого правила)', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:15:54', '2013-02-19 13:15:54', '2013-02-19', 0, NULL, NULL, 21, 1, 2, 0),
(22, 1, 14, 'Удобства для СЕО оптимизации контента страниц сайта', 'Удобства для СЕО оптимизации контента страниц сайта', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:16:24', '2013-02-19 13:16:24', '2013-02-19', 0, NULL, NULL, 22, 1, 2, 0),
(23, 1, 14, 'Аннуляция забронированного тура', '1. Для аннуляции тура туристу необходимо отправить сообщение из Моего кабинета о своих намерениях.\r\n(В крайнем случае, это можно сделать письмом по E-mail. В этом случае, менеджер копирует текст письма в сообщение и отсылает его в кабинет туриста.) \r\n\r\n2. В ответном сообщении менеджер прописывает информацию о возможных штрафных санкциях со стороны туроператора\r\n\r\n3. При согласии туриста, направляется письмо туроператору об аннуляции заявки. Статус состояния заявки устанавливается "Штраф"\r\n\r\n4. После аннуляции и выставления счёта туроператором на штрафные санкции, \r\n    - Стоимость тура в заявке изменяется на размер штрафа.\r\n    - Остаток оплаты тура возвращается на баланс туриста в Моём кабинете. \r\n    - Статус состояния заявки устанавливается *"Аннулирована"*,\r\n    - Статус оплаты: *Оплачена полностью*\r\n\r\n5.  После заявки туриста на возврат денежных средств происходит возврат их способом, согласованным с туристом. ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:17:47', '2013-02-19 13:17:47', '2013-02-19', 0, NULL, NULL, 23, 1, 2, 0),
(24, 1, 14, 'Заявка. Статусы заявки', 'Заявка - это окончательное, обдуманное решение туриста произвести бронирование выбранного тура.\r\nЗаявка, в отличие от Запроса, включает в себя полные данные участников тура.\r\n\r\n*1. Размещение Заявки туристом.*\r\n\r\nЗаявка размещается туристом со страницы "Подробности тура".\r\nЗаявка может быть создана на основания Запроса (переход на ту же страницу подробности тура без возможности выбора отправки запроса)\r\n\r\n*2. Статус состояния заявки.*\r\n\r\nСтатус состояния изменяется менеджером в соответствии с изменением этого статуса у туроператора (если в системе не настроена синхронизация заявок)\r\n\r\n· Отправлена\r\n\r\n· В работе\r\n\r\n· Подтверждена\r\n\r\n· Отказ\r\n\r\n- Штраф\r\n\r\n· Аннулирована\r\n\r\n· Выполнена\r\n\r\n\r\n\r\n*3. Статус оплаты заявки туристом устанавливается автоматически после внесения платежных данных* \r\n\r\n- сумма к оплате определяется автоматически с учетом скидок и выбора туристом внесения в счёт оплаты средств на бонусном счёте\r\n\r\n- фактическая оплата прописывается автоматически, кроме случаев оплаты по б/н расчёту и оплаты в офисе турфирмы, в этом случае оплата вносится менеджером.\r\n\r\n- Статус оплаты Туристом:\r\n\r\n      · не оплачена\r\n\r\n      · частично оплачена\r\n\r\n      · оплачена полностью\r\n\r\n*4. Статус оплаты заявки туроператору* устанавливается в АЧ и изменяется автоматически путём просчёта разницы между суммой оплаты туроператору (из выставленного счёта на оплату) и сумм фактической оплаты внесённых менеджером (бухгалтером)\r\n\r\n- Статус оплаты Туроператору:\r\n\r\n      · не оплачена\r\n\r\n      · частично оплачена\r\n\r\n      · оплачена полностью\r\n\r\n*5. Признак состояния документов:*\r\n\r\n- получены от туриста\r\n\r\n- переданы туроператору\r\n\r\n- получены от туроператора\r\n\r\n- получены туристом\r\n\r\n\r\n\r\n*6. Признак возможности бронирования*\r\n\r\n- бронирование возможно\r\n\r\nПризнак используется для бронирования в автоматическом режиме. Он проставляется, если произведена достаточная предоплата заявки для компенсации возможных санкций (сумма вычисляется на странице выбора оплаты) и внесены полные данные участников тура.\r\n\r\n\r\n\r\n*7. Размещение заявки в Айти-тур.*\r\n\r\n- Заявка отправленная туристом (кроме туров "В последнюю минуту") автоматически экспортируется в аккаунт "Завтра в тур" в Айти-туре и в случае внесения полных данных участников тура и произведённой оплате  сразу размещается для бронирования.\r\n\r\n- Если в заявке выбрана опция "внесение паспортных данных туристов позже" или выбран отложенный вид оплаты, заявка размещается в разделе "Подготовленные заявки". При этом в АЧ "Завтра в тур" недозаполненные заявки выделяются цветом\r\n\r\n- Заявки на экскурсионные туры, по которым необходимы дополнительные документы также размещаются в разделе "Подготовленные заявки"\r\n\r\n\r\n\r\n*8. Размещение заявок "В последнюю минуту"*\r\n\r\nПроцедура ничем не отличается от обычного размещения. Размещается родительская заявка.\r\n\r\n\r\n\r\nПримечания.\r\n\r\nЗаявка имеет служебное поле "заметки" для текстовых комментарий менеджеров. Это поле невидно в Моём кабинете туриста', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:19:03', '2013-02-19 13:19:03', '2013-02-19', 0, NULL, NULL, 24, 1, 2, 0),
(25, 1, 14, 'Информация о сервисах сайта. Хинты. Помощь', 'Информация о сервисах сайта. Хинты. Помощь', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:19:46', '2013-02-19 13:19:46', '2013-02-19', 0, NULL, NULL, 25, 1, 2, 0),
(26, 1, 14, 'Онлайн консультирование туриста: Скайп, онлайн-консультант', '- На сайте устанавливается онлайн-консультант (marva.com.ua)\r\n- Так же возможна консультация туриста:\r\n   -  по Скайпу\r\n   - по ICQ\r\n   - по телефону\r\n\r\n- Турист может заказать автоматический обратный звонок (при вводе своего номера телефона в форму и нажатие на кнопку "Перезвонить мне" IP АТС генерирует обратный звонок и соединяет туриста со свободным менеджером)\r\n\r\n- Блок с контактами должен периодически показываться туристу, а также статически размещатся в хедере и футере.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:20:19', '2013-02-19 13:20:19', '2013-02-19', 0, NULL, NULL, 26, 1, 2, 0),
(27, 1, 14, 'Мой кабинет. Переписка', 'Переписку может инициировать любая сторона, отправив сообщение.\r\n\r\nКаждое сообщение состоит из любого количества последовательных комментариев\r\n\r\nК каждому комментарию может быть добавлено вложение.\r\n\r\nКаждому сообщению присваивается категория.\r\n\r\nКаждому сообщению назначается Исполнитель (по умолчанию, менеджер, ответивший на сообщение)\r\n\r\nКаждое сообщение имеет статус, который изменяет исполнитель:\r\n- Новое\r\n- В работе\r\n- Выполнено\r\n- Закрыто', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:21:44', '2013-02-19 13:21:44', '2013-02-19', 0, NULL, NULL, 27, 1, 2, 0),
(28, 1, 14, 'Маркетинговая информация', 'Маркетинговая информация', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:22:03', '2013-02-19 13:22:03', '2013-02-19', 0, NULL, NULL, 28, 1, 2, 0),
(29, 1, 14, 'Работа менеджера турфирмы-партнёра', 'Менеджер турфирмы-партнёра принимает от туриста оплату согласно счёта.\r\n\r\nЗаявка бронируется через Айти-тур от турфирмы-партнёра.\r\n\r\nОплата производится турфирмой-партнёром Айти-туру с включением комиссии управляющей компании (УК) "Завтра в тур".\r\n\r\nДалее Айти-тур производит взаиморасчёты с УК "Завтра в тур".\r\n\r\n\r\n1. Бизнес-процесс оплаты.\r\n\r\nИнформация об Оплате вносится менеджером в АЧ сайта в специально открытую для его доступа Заявку.\r\n\r\nВносится сумма фактической предоплаты и результаты сохраняются.\r\n\r\nОкно для внесения новой предоплаты можно открыть, нажав на ссылку "Добавить информацию об оплате"\r\n\r\n\r\n2. Бизнес процесс получения документов.\r\n\r\nЕсли турист выбирает способ получения документов "В офисе турфирмы" или курьером, то процессы разделяются в зависимости от способа оплаты, которым была оплачена заявка:\r\n\r\n2.1. Оплата в офисе турфирмы-партнёра\r\n\r\n- В письме E-mail, который приходит турфирме-партнёру с деталями тура для оплаты, указывается также способ получения документов.\r\n- Если был выбран способ получения документов в офисе турфирмы, менеджер в обычном порядке производит заказ и выдачу документов.\r\n- После авторизации менеджер должен внести информацию о том, что документы туристом получены в специально открытой для его доступа Заявке.\r\n- Менеджеру также доступно изменить способ получения документов, выбранный туристом.\r\n- Курьер также заказывается менеджером турфирмы-партнёра\r\n\r\n\r\n2.2. Оплата была совершена другими способами (напрямую в УК "Завтра в тур"). Выбран способ "Получение документов в офисе турфирмы-партнёра".\r\n\r\n  - менеджер "Завтра в тур" отправляет документы курьером в офис-турфирмы-партнёра. В этом случае доступ партнёру к заявке не открывается.\r\n- менеджер турфирмы-партнёра после авторизации в спецразделе вводит id заявки и телефон туриста, в открывшейся странице ставит галку "Документы туристом получены" и сохраняет информацию.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:22:23', '2013-02-19 13:22:23', '2013-02-19', 0, NULL, NULL, 29, 1, 2, 0),
(30, 1, 14, 'Получение дополнительных документов от туриста для открытия визы', '1. Турист выбрал вариант работы с турфирмой-партнером как по оплате, так и по документам.\r\n\r\n1.1. При возможности бронирования выбранного тура через Айти-тур Заявка туриста направляется в аккаунт турфирмы-партнёра на страницу "Подготовленные заявки".\r\n\r\n1.2. При способе бронировании напрямую у туроператора  менеджеру турфирмы партнёра предоставляется доступ к этой Заявке в АЧ "Айти-тур". \r\nСаму заявку менеджер размещает у туроператора вручную и вручную изменяет её статусы состояния.\r\n\r\n1.3. Документы туриста принимаются менеджером турфирмы-партнёра и им же передаются туроператору.\r\n\r\n1.4. Получение документов происходит стандартно:\r\n-  в турфирме-партнёре\r\n-  в аэропорту (по выбору туриста)\r\n\r\n\r\n2. Турист выбрал удалённый способ работы.\r\n\r\n1.1. При возможности бронирования выбранного тура через Айти-тур Заявка туриста направляется в аккаунт "Завтра в тур" на страницу "Подготовленные заявки".\r\n\r\n1.2. При способе бронировании напрямую у туроператора  менеджер "Завтра в тур" размещает заявку у туроператора вручную и вручную изменяет её статусы состояния.\r\n\r\n1.3. Документы туриста:\r\n- принимаются менеджером турфирмы-партнёра и им же передаются туроператору.\r\n- отсылаются туристом курьерской почтой в офис "Завтра в тур"\r\n\r\n1.4. Получение документов происходит стандартно:\r\n- в офисе турфирмы-партнёра\r\n- курьерской почтой по адресу туриста \r\n- в аэропорту', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:24:04', '2013-02-19 13:24:04', '2013-02-19', 0, NULL, NULL, 30, 1, 2, 0),
(31, 1, 14, 'Счёт туриста в системе', '1. Каждому зарегистрированному туристу открывается основной счёт и бонусный счёт.\r\n\r\n*1.1. Основной счёт может быть пополнен:*\r\n - любым способом, по которым происходит оплата стоимости тура, кроме оплаты в турфирме-партнёре\r\n- путём начисления определённого процента от забронированной стоимости тура (по умолчанию 1.0%, но могут быть варианты)\r\n\r\n*1.2. Бонусный счёт может быть пополнен*\r\n- путём начисления определённого процента от забронированной стоимости тура рефералами и субрефералами (по умолчанию 1.0% и 0.5%, но могут быть варианты)\r\n\r\n*1.3. Основной счёт может быть израсходован:*\r\n - на оплату туров\r\n - на возврат\r\n\r\n*1.4. Бонусный счёт может быть израсходован*\r\n - исключительно на оплату туров\r\n\r\n1.5. Для удобства надо отображать остаток на счёте одной цифрой и в скобках количество бонусов, например:\r\nБаланс  12 342.23 грн (в т.ч. бонусов 342.23)\r\n\r\nРазделение счетов используется только при заказе туристом возврата. *Бонусы вернуть нельзя.*', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:25:09', '2013-02-19 13:25:09', '2013-02-19', 0, NULL, NULL, 31, 1, 2, 0),
(32, 1, 14, 'Дополнительные бонусы тура', 'Любому туру или группе туров может быть назначен дополнительный бонус.\r\n\r\nБонус может быть назначен, как в процентах от стоимости тура, так и фиксированной величиной в национальной валюте.\r\n\r\nБонус задаётся из АЧ созданием записи с комбинациями фильтров.\r\n\r\nФильтры, используемые при задании бонуса по пакетным турам:\r\n- Страна\r\n- Отель\r\n- Город выезда\r\n- Оператор\r\n\r\nФильтры, используемые при задании бонуса по экскурсионным турам:\r\n- Оператор\r\n- Страна\r\n- Название тура\r\n\r\nЗаписей с комбинацией фильтров может быть много.\r\n\r\nПри открытии страницы "Подробности тура" происходит сверка параметров тура с заданными фильтрами бонусов. При совпадении ниже цены тура прописывается сумма дополнительного бонуса, а сама цена корректируется на эту величину (в результатах поиска фигурируют номинальные цены).\r\n\r\nДополнительный бонус одинаков для всех пользователей сайта', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:25:32', '2013-02-19 13:25:32', '2013-02-19', 0, NULL, NULL, 32, 1, 2, 0),
(33, 1, 14, 'Особенности бронирования туров напрямую у туроператоров (не через Айти-тур)', 'Любую размещённую в АЧ "Завтра в тур" заявку можно переключить в режим прямого бронирования, просто отключив синхронизацию с Айти-тур.\r\n\r\nВся дальнейшая процедура выполняется менеджером в ручном режиме', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:25:56', '2013-02-19 13:25:56', '2013-02-19', 0, NULL, NULL, 33, 1, 2, 0),
(34, 1, 14, 'Администрирование архива туров "В последнюю минуту"', '*1. Туры категории "В последнюю минуту" переносятся в архив по следующим критериям:*\r\n\r\n1.1. Неактуальность родительского тура:\r\n   - закончились места на рейсах (туда или обратно)\r\n   - закончились места в отеле\r\n   - сегодня дата вылета (выезда)\r\n\r\n2.1. Тур отключён и перемещён в архив менеджером\r\n\r\n*2. Туры в архиве фильтруются с помощью следующих фильтров:*\r\n\r\n    2.1. Пакетные туры\r\n    - Страна\r\n    - Регион\r\n    - Категория отеля (звезд)\r\n    - Город выезда\r\n    - Период выезда\r\n\r\n 2.2. Экскурсионные туры\r\n    - Оператор\r\n    - Страна\r\n    - Название тура\r\n \r\n*3. Туры в архиве можно выделять для показа на странице "Архив туров"*\r\n\r\n4. *Дополнительное выделение* добавляет тур к показу в витрине "Архив туров" на главной странице сайта.\r\n\r\n*Примечания.*\r\nНужна страница архива с фильтром по стране.\r\nПример организации архива:\r\nhttp://www.ittour.com.ua/tour-search-last-minute.html?archive=true&showcase=month', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:27:14', '2013-02-19 13:27:14', '2013-02-19', 0, NULL, NULL, 34, 1, 2, 0),
(35, 1, 14, 'Размещение индивидуального тура для показа в сервисе "В последнюю минуту"', 'Основным параметром подобного тура является его описание.\r\n\r\n*Тур вводится вручную с использованием следующих полей:*\r\n\r\n*1. Описание тура*\r\n- Название тура (если тур вводится повторно берётся из справочника)\r\n- Оператор\r\n- Страна\r\n- Категория отеля\r\n- Отель (необязательное поле)\r\n- Дата начала тура (Дата вылета - берётся из деталей авиаперелёта)\r\n- Дата окончания тура (Дата обратного вылета - берётся из деталей авиаперелёта)\r\n- Подробное описание тура\r\n- Стоимость тура без авиаперелёта\r\n\r\n*2. Детали авиаперелёта*\r\nТуда:\r\n- Город вылета\r\n- А/порт вылета\r\n- Авиакомпания\r\n- Тип ВС\r\n- Время в пути, всего\r\n- Количество стыковок\r\n\r\n*Обратно:*\r\n- Город обратного вылета\r\n- А/порт обратного вылета\r\n- Авиакомпания\r\n- Тип ВС\r\n- Время в пути, всего\r\n- Количество стыковок\r\n\r\n*Общая стоимость авиаперелёта* (служебная информация)\r\n\r\n*3. Дополнительная информация*\r\n- текстовые записи о дополнительных расходах (стоимость визы и т.д.)\r\n\r\n\r\n*Примечания.*\r\n\r\n- Цена тура определяется как производная цены проживания и авиаперелёта по формуле (например, Ц=(Прож*1,2 + Пер*1,05)/0,82). Цены на составляющие тура могут задаваться, как в долларах, так и в евро. Конечная цена тура показывается в грн с округлением до 10 грн.\r\n\r\n- Конечная цена тура может редактироваться вручную администратором.\r\n\r\n- Параметр "Ночей в туре" определяется автоматически по датам начала и окончания тура.\r\n\r\n- Описание тура - описание тура с фотографиями, с отзывами (комментариями) побывавших в этом туре, с возможностью добавить ссылку на видео из ютуб.\r\n\r\n- Описание тура - долгоиграющий параметр, он хранится в справочнике и извлекается по названию тура.\r\n\r\n- Если тур вводится впервые, то все параметры берутся из справочников за исключением Названия тура и Описания тура.\r\n\r\n- Для работы с этим сервисом используются импортированные справочники Айти-тура, которые могут локально расширяться, путём добавления дополнительных записей. (например, отеля, которого нет в справочнике Айти-тура)', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:28:31', '2013-02-19 13:28:31', '2013-02-19', 0, NULL, NULL, 35, 1, 2, 0),
(36, 1, 14, 'Контакты', 'В контактах нужно указать управляющую компанию: ООО "Экзотика плюс"\r\n\r\nА так же:\r\nАдрес киевского офиса, телефоны\r\nАдрес харьковского офиса, телефоны\r\n\r\nПредставительства в городах (можно ссылку на турфирмы-партнёры)', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:29:04', '2013-02-19 13:29:04', '2013-02-19', 0, NULL, NULL, 36, 1, 2, 0),
(37, 1, 14, 'Запрос. Статусы запроса', 'Запрос - это вариант тура переданный туристом менеджеру для подтверждения.\r\n\r\nЗапрос - это также вариант тура переданный менеджером туристу для ознакомления, подтверждения или отклонения.\r\n\r\nСтатусы запроса:\r\n- Новый \r\n- В работе\r\n- Одобрен\r\n- Отклонён\r\n- Заявка\r\n\r\nСтатусы запроса устанавливает менеджер.\r\nСтатусы запроса Одобрен, Отклонён может устанавливать турист.\r\n\r\n\r\n*1. Запрос передан туристом.*\r\n\r\n- После отправки Запроса туристом со страницы "Подробности тура" он прописывается в Моём кабинете и в АЧ менеджера.\r\n\r\n- Из АЧ менеджера он автоматически экспортируется в аккаунт "Завтра в тур" в системе Айти-тур.\r\n\r\n- Менеджер проверяет устанавливает статус запроса "В работе", проверяет актуальность тура. При положительном результате отправляет сообщение в Мой кабинет туриста (связывается с ним по телефону) о возможности бронирования данного тура.\r\n\r\n- При согласии туриста формирует в АЧ на основании запроса Заявку (вводя данные туристов-участников тура), которая прописывается в АЧ и в Моём кабинете. \r\n\r\n- В случае наличия возможности бронирования данной заявки в Айти-тур, она экспортируется в аккаунт "Завтра в тур" в Айти-туре в раздел "Подготовленные заявки".\r\n\r\n\r\n*2. Запрос передан туристу менеджером.*\r\n\r\n- В процессе подбора тура в аккаунте "Завтра в тур" в системе Айти-тур менеджер выделяет подходящие варианты в "Избранные туры".\r\n\r\n- Любой вариант на странице "Избранные туры" может быть преобразован в запрос и экспортирован в АЧ "Завтра в тур".\r\n\r\n- Из АЧ "Завтра в тур" запрос может быть размещён в Моём кабинете туриста (путём ввода id туриста или выбора его из списка)\r\n\r\n- Турист может изменить статус запроса на "Отклонён" или "Одобрен".\r\n\r\n- Отклонённые запросы изменяют свой цвет отображения (сереют) и через через 7 дней перемещаются в Архив Запросов\r\n\r\n- Архив запросов содержит запросы, отклонённые в течение последних 30 дней, у которых ещё "не устарела" дата выезда в тур. После этого срока Запросы удаляются.\r\n\r\n- Переход в архив запросов осуществляется по ссылке со страницы "Запросы" Моего кабинента\r\n\r\n- Одобренный запрос может быть преобразован в заявку туристом (путём прописывания  данных участников тура и контактных данных заказчика тура)\r\n\r\n- Контактные данные заказчика тура по умолчанию вносятся из профайла туриста с возможностью редактирования\r\n\r\n- Данные туристов могут быть взяты владельцем аккаунта из прошлых заявок с возможностью редактирования\r\n\r\n- Одобренный запрос может быть преобразован в заявку менеджером в АЧ (путём ввода данные туристов-участников тура). Заявка прописывается в АЧ и в Моём кабинете. \r\n\r\n- В случае наличия возможности бронирования данной заявки в Айти-тур, она экспортируется в аккаунт "Завтра в тур" в Айти-туре в раздел "Подготовленные заявки".\r\n\r\n*Примечания.*\r\nВ строке Запроса нужно предусмотреть кнопку "Создать заявку", которая будет открывать страницу с подробностями туры и с формой ввода контактных данных участников тура и заказчика тура. Подробности тура в части описания отеля должны быть урезаны (с возможность раскрытия полной информации об отеле).\r\n\r\nЗапрос, импортированный в АЧ из аккаунта в Айти-тур может быть удалён до связывания его с Моим кабинетом туриста. После размещения его в Моём кабинете он может быть только перемещён менеджером в архив (принудительно)\r\n\r\nИстория поисков (история перемещения туров в корзину) также хранится в моём кабинете. На основе любого актуального тура из этого сервера может быть сформирован запрос', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:29:46', '2013-02-19 13:29:46', '2013-02-19', 0, NULL, NULL, 37, 1, 2, 0);
INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`) VALUES
(38, 1, 14, 'Получение документов на проведение тура', 'Перечень документов, необходимых туристу для проведения тура:\r\n- ваучер\r\n- электронный билет\r\n- страховой полис\r\n- памятка\r\n- паспорт с визой (для визовой страны)\r\n\r\nДокументы предоставляются туроператорами в формате pdf\r\n\r\nДокументы могут быть получены:\r\n\r\n*1. В моём кабинете в электронном виде (для безвизовых направлений).*\r\n\r\n     - менеджер подвязывает их к заявке (если нет синхронизации по документам)\r\n     - менеджер отправляет сообщение о том, что документы доставлены в Мой кабинет туриста (внутреннее сообщение, E-mail, СМС)\r\n     - менеджер вводит признак документов в заявке: получены туристом  \r\n\r\n*2. В офисе турфирмы-партнёра*\r\n\r\n   - менеджер Завтра в тур отправляет сообщение о том, что документы доставлены в офис турфирмы партнёра (внутреннее сообщение, E-mail, СМС), изменяя признак документов в Заявке на: получены от туроператора\r\n     - после получения документов менеджер турфирмы-партнёра вводит признак документов в заявке: получены туристом  \r\n\r\n*3. В аэропорту вылета*\r\n\r\n- турист выбирает этот способ получения документа (у менеджера Завтра в тур есть возможность изменить способ получения документов, выбранный туристом)\r\n- менеджер прикрепляет к заявке памятку с информацией о получении документов в аэропорту\r\n- менеджер отправляет сообщение о том, что памятка с информацией о получении документов доставлена в Мой кабинет туриста (внутреннее сообщение, E-mail, СМС)\r\n- после выезда туриста в тур менеджер вводит признак документов в заявке: получены туристом  \r\n\r\n*4. Курьером домой или в офис туриста*\r\n\r\nДанный способ доставки документов применяется только в случае, если до выезда туриста в тур более 3-х суток.\r\n\r\n- турист выбирает этот способ получения документа (у менеджера Завтра в тур есть возможность изменить способ получения документов, выбранный туристом)\r\n- менеджер отправляет сообщение о том, что документы туристу отправлены курьером (внутреннее сообщение, E-mail, СМС)\r\n- после получения от курьерской службы информации о получении туристом документов менеджер вводит признак документов в заявке: получены туристом  \r\n', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:30:32', '2013-02-19 13:30:32', '2013-02-19', 0, NULL, NULL, 38, 1, 2, 0),
(39, 1, 14, 'Нестандартные ситуации, особые случаи', 'Нестандартные и особые случаи это:\r\n- невыезд туриста в тур\r\n- непоселение туриста в отель в месте проведения тура\r\n- страховой случай в месте проведения тура\r\n\r\nДля каждого особого случая менеджер действует согласно инструкции, всячески стараясь оказать помощь туристу.\r\n\r\nНаиболее действенным инструментом являются звонки непосредственно в отель и в офис принимающей стороны в месте проведения тура.\r\n\r\nДежурный менеджер дежурит с 8 до 23 часов 7 дней в неделю.\r\n\r\nТелефон дежурного менеджера сообщается туристу в памятке.\r\n\r\nИнформация об особом случае и хронография развития событий вносится менеджером в специальную (служебную) часть заявки комментариями.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 13:30:56', '2013-02-19 13:30:56', '2013-02-19', 0, NULL, NULL, 39, 1, 2, 0),
(40, 1, 13, 'Работа со справочным блоком "Мои ссылки"', '*Справочный блок "Мои ссылки"* показывается в правой части системы небольшим блоком, который при нажатии раскрывается вниз, предоставляя доступ к 10-15 ссылкам, которые указал в настройках пользователь.\r\n\r\nДля показа ссылок в блоке, их нужно отметить из вариантов, предложенных централизованно и (или) добавить собственные варианты.\r\n\r\n*Вид ссылки:*\r\nМиниатюра (иконка), Название (активное)\r\n\r\n*Ввод в настройках:*\r\nМиниатюра, Название, URL\r\nили поставить галки на предложенных вариантах ', NULL, NULL, 1, 1, 2, NULL, 1, 0, '2013-02-19 17:46:53', '2013-02-19 17:46:53', '2013-02-19', 0, NULL, NULL, 40, 1, 2, 0),
(41, 1, 13, 'Консультация по телефону, в офисе, через онлайн консультанта.', ' Основным документом СРМ является "Карточка контакта с туристом", которая заполняется (генерируется) при любых контактах менеджера с туристом или туриста с менеджером (автоматически, если контакт происходит через клиентскую часть СРМ).\r\n\r\n1. Во время проведения консультации менеджер заполняет карточку "Контакт с туристом" https://ittour.worksection.com/project/45487/794445/ \r\n\r\n2. В карточке Контакт с туристом описывается содержание проведенной консультации. В будущем возможно автоматическое прикрепление файла аудиозаписи консультации (из IP АТС турагентства)\r\n\r\n3. В карточке менеджера https://ittour.worksection.com/project/45487/827428/ автоматически прописывается запись об этой консультации с полями:\r\n\r\n                - Дата\r\n\r\n                - Время\r\n\r\n                - Наименование операции\r\n\r\n                - Турист\r\n\r\n                - Направление\r\n\r\n                - Содержание\r\n\r\n                - Результат\r\n\r\n4. При сохранении "Карточки контакта с туристом" генерируется новая "карточка туриста" https://ittour.worksection.com/project/45487/792270/, в которую прописываются заполненные при консультации контактные поля.\r\n\r\n- В карточке туриста также прописывается содержание "Контакта с туристом"\r\n\r\n- Карточку туриста можно также открыть по кнопке "Новый турист"\r\n\r\n- Из карточки туриста по кнопке "Новый контакт" можно открыть карточку "Контакта с туристом"\r\n\r\n- Новый контакт можно открыть, кликнув по соответствующей кнопке, на любой страницы СРМ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 17:47:29', '2013-02-19 17:47:29', '2013-02-19', 0, NULL, NULL, 41, 1, 2, 0),
(42, 1, 13, '2. Оформление запроса на подбор тура', 'Запрос - это перечень требований к параметрам поиска тура. \r\n\r\nДля итого, чтобы запрос превратился в заявку, перечень этих параметров нужно сузить до единственного набора, то есть до описания конкретного тура.\r\n \r\n\r\n1. Оформление запроса туриста в офисе, после консультации по телефону, через онлайн консультанта\r\n\r\n- Запрос формируется путём заполнения полей запроса, большинство которых является необязательными, и сохранения запроса https://ittour.worksection.com/project/45487/794457/.\r\n\r\n- После сохранения запросу присваивается статус "Новый"\r\n\r\n- При формировании запроса задаётся время напоминания (таймаут ответа туристам о возможности выполнения их запроса и вариантов его выполнения).\r\n\r\n- Статусы запросу присваивает менеджер, которые обрабатывает этот запрос:\r\n\r\n       · Новый\r\n\r\n       · В работе\r\n\r\n       · Заявка\r\n\r\n       · Закрыт\r\n\r\nСтатус "Новый" запрос получает автоматически после его сохранения.\r\n\r\nСтатус "В работе" устанавливается менеджером в начале работа над запросом\r\n\r\nСтатус "Заявка" устанавливается менеджером, если на основе этого запроса была создана заявка на бронирование тура. В запросе прописывается ссылка на созданную заявку. В заявке формируется ссылка на запрос, на основании которого эта заявка была размещена.\r\n\r\nСтатус "Закрыт" присваивается, если работа с запросом не завершилась Заявкой. При этом менеджер прописывает текстовый комментарий и выбирает из меню причину неудачи:\r\n\r\n- Турист обратился в другое агентство\r\n\r\n- Не найден тур соответствующий запросу\r\n\r\n- Отказ туриста без объяснения причин\r\n\r\n\r\n\r\nКарточка контакта с туристом "привязывается" к запросу (копия контактов (ссылка на контакт) при работе по Запросу сохраняется в карточке Запроса)\r\n\r\n\r\n\r\n2. Запрос с сайта турагентства.\r\n\r\n- Запрос с сайта турагентства прописывается автоматически со всеми заполненными полями. Администратор назначает менеджера, ответственного за работу по Запросу.\r\n\r\n- Из Запроса с сайта турагентства можно одним кликом сформировать Заявку (потому что это конкретный тур).\r\n\r\n\r\n\r\n3. Запрос прописывается:\r\n\r\n· в карточке туриста\r\n\r\n· в карточке менеджера\r\n\r\n· в Кабинете туриста\r\n\r\n- в Заявке (в случае её создания)\r\n\r\n- в карточке контакта с туристом, по которой производилось общение по данному запросу\r\n\r\n· на странице "Запросы" (в архиве запросов)\r\n\r\n ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 17:48:43', '2013-02-19 17:48:43', '2013-02-19', 0, NULL, NULL, 42, 1, 2, 0),
(43, 1, 13, '3. Заключение договора с туристом', 'С момента размещения заявки у турагентства возникает ответственность, доходящая до 100% от стоимости тура (в случае аннуляции). В связи с этим перед размещением заключается договор с туристом и с туриста берется предоплата, которая была бы достаточной для покрытия возможных санкций (в зависимости от даты начала тура). \r\n\r\n1. После завершение подбора тура по запросу туриста, менеджер оформляет Заявку на бронирование. Перед размещением этой заявки в системе онлайн бронирования туроператора (системе Айти-тур") менеджер заключает с туристом от имени туроператора агентский договор на туристическое обслуживание.\r\n\r\n2. Текст договора (шаблон) зависит от оператора, тур которого бронирует менеджер. Шаблон берётся из раздела СРМ "Документы - Договора с туристами". Договор генерируется в формате pdf\r\n\r\n3. Данные туриста берутся из карточки туриста.\r\n\r\n4. Параметры тура берутся из Заявки, сохранённой в СРМ (статус Новая) \r\n\r\n5. Менеджер должен иметь возможность редактирования текста договора (той его части, которая касается деталей тура и данных туриста)\r\n\r\n Договор сохраняется:\r\n\r\n- в заявке (показывается так же в клиентской части СРМ "Мой кабинет туриста")\r\n\r\n- в карточке туриста (привязанный к заявке)', NULL, NULL, 1, NULL, 2, NULL, 1, 1, '2013-02-19 17:49:14', '2013-02-19 17:57:31', '2013-02-19', 0, NULL, NULL, 43, 1, 2, 0),
(44, 1, 13, '4. Формирование заявки, бронирование', '1. Перед заключением с туристом договора на туристическое обслуживание, в СРМ создаётся Заявка https://ittour.worksection.com/project/45487/827686/.\r\n\r\nПути создания заявки:\r\n- генерация из Запроса, размещённого туристом на сайте турагентства (запрос на конкретный тур)\r\n- ручное заполнение всех полей\r\n- автоматически из общего Запроса с возможностью ручного редактирования полей.\r\n- импорт из системы Айти-тур (есть возможность сделать импорт до размещения заявки)\r\n- импорт из системы туроператора (нет возможности сделать импорт до размещения заявки).\r\n\r\n2. Заявка размещается менеджером в системе онлайн бронирования туроператора (Айти-тур, в том числе).\r\n\r\n3. Статус состояния заявки изменяется менеджером в соответствии с изменением этого статуса у туроператора (если в системе не настроена синхронизация заявок)\r\n\r\n· Отправлена\r\n\r\n· В работе\r\n\r\n· Подтверждена\r\n\r\n· Отказ\r\n\r\n- Штраф\r\n\r\n· Аннуляция\r\n\r\n· Выполнена\r\n\r\n4. Статус оплаты заявки устанавливается автоматически после внесения платежных данных (сумм к оплате и сумм фактической оплаты):\r\n\r\n- Статус оплаты Туристом:\r\n\r\n      · не оплачена\r\n\r\n      · частично оплачена\r\n\r\n      · оплачена полностью\r\n\r\n- Статус оплаты Туроператору (турагентством):\r\n\r\n      · не оплачена\r\n\r\n      · частично оплачена\r\n\r\n      · оплачена полностью', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 17:58:46', '2013-02-19 17:58:46', '2013-02-19', 0, NULL, NULL, 44, 1, 2, 0),
(45, 1, 13, '5. Оплата тура (оплата Заявки)', '1. Перед размещением заявки для бронирования, менеджер берёт предоплату у туриста. Размер предоплаты вносится в соответствующее поле Заявки бухгалтером или менеджером. \r\n\r\nВ момент сохранения записи о предоплате Заявка получает статус оплаты туристом: Оплачена частично\r\n\r\n2. Сумма полной необходимой оплаты (стоимости тура с учётом скидки туристу в гривнах) вносится менеджером в соответствующее поле Заявки.\r\n\r\n3. После Подтверждения Заявки туроператором, последний выставляет счёт на оплату. Сумма счёта вносится бухгалтером в соответствующее поле Заявки, изменяя её статус оплаты туроператору на "Не оплачена".\r\n\r\n4. Все произведенные оплаты туроператору (частичные и полные) вносятся бухгалтером в соответствующие поля заявки, изменяя её статусы оплаты туроператору на "Оплачена частично", "Оплачена полностью".\r\n\r\n5.  Все фактически произведенные оплаты туристом (частичные и полные) вносятся бухгалтером в соответствующие поля заявки, изменяя её статусы оплаты туриста на "Оплачена частично", "Оплачена полностью".', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 17:59:08', '2013-02-19 17:59:08', '2013-02-19', 0, NULL, NULL, 45, 1, 2, 0),
(46, 1, 13, '6. Получение документов на проведение тура туристом', '1. Как правило, за 3-4 дня до вылета туроператор генерирует следующие документы на проведение тура в формате pdf:\r\n\r\n· ваучер на проживание\r\n\r\n- ваучер на трансфер (аэропорт - отель - аэропорт)\r\n\r\n· электронный авиабилет\r\n\r\n· страховой полис\r\n\r\n· памятка туриста\r\n\r\n2. Эти документы прикрепляются к Заявке в СРМ и становятся доступными туристу через клиентскую часть.\r\n\r\n3. Документы могут быть отправлены туристу любым способом, а также распечатаны и переданы на бумжных носителях.\r\n\r\n4. Если турист изъявляет желание получить документы в аэропорту, то менеджер ставит соответствующую отметку в Заявке в системе туроператора. В Заявке, размещённой в СРМ устанавливается подобный статус для документов.\r\n\r\n5. Если в состав пакета  входят документы, которые нельзя передать в электронном виде (паспорт с визой), и сроки не позволяют передать эти документы в офис турагентства, менеджер турагентства (проставив способ получения документов в системе туроператора: в аэропорту) устанавливает способ получения документов: в аэропорту. При этом к заявке прикрепляется памятка туристу, в которой, кроме обычной информации, даются координаты (телефон) представителя туроператора в аэропорту вылета. ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:03:29', '2013-02-19 18:03:29', '2013-02-19', 0, NULL, NULL, 46, 1, 2, 0),
(47, 1, 13, '7. Получение от туриста дополнительных документов на проведение тура', '1. При организации тура в визовые направления менеджеру необходимо получить от туриста дополнительные документы на открытие визы. Перечень этих документов определяет туроператор в зависимости от страны, в посольстве которой будет открыта виза.\r\n\r\n2. Перечень документов в разрезе : "Туроператор - Страна" хранится в СРМ в справочнике и синхронизируется с соответствующим разделом системы Айти-тур. Одним из полей этого перечня является ссылка на соответствующую страницу туроператора.\r\n\r\n3. При активации менеджером поля Заявки "Дополнительные документы от туриста" происходит автоматическая активация дополнительных полей заявки, которым при получении документов нужно присвоить статус "Получено" (поставить галку). Сочетание "Страна - Туроператор" можно изменить вручную и получить новый пакет документов, необходимых для открытия визы.  \r\nПри получении документы менеджер выставляет галку в соответствующем поле.\r\nЕсли документы собраны не в полном объёме, в заявке должно быть активным соответствующее уведомление.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:03:52', '2013-02-19 18:03:52', '2013-02-19', 0, NULL, NULL, 47, 1, 2, 0),
(48, 1, 13, '8. Аннуляция тура', 'Аннуляция тура - это отказ туриста от проведения тура или отказ агентства в связи с неоплатой тура туристом.\r\nАннуляция тура не делается в онлайн, а, как правило, оформляется письмом туроператору, так как это операция связана со штрафными санкциями.\r\nАннуляция тура до его подтверждения туроператором, как правило, не приводит к штрафным санкциям.\r\n\r\n1. После отправки письма менеджером туроператору состояние заявки у туроператора приобретает статусы:\r\n- Штраф\r\n- Аннулирована\r\n\r\n2. В случае аннуляции тура со штрафом, после получения нового счёта на оплату штрафа бухгалтер проводит проводку "Штраф", изменяющую сумму обязательств перед туроператором (на сумму штрафа минус оплаченную сумму). \r\n\r\n3. Изменение статуса оплаты Заявки туроператору.\r\n\r\n- Если оплата туроператору уже была произведена, то сумма обязательств перед туроператором становится отрицательной и Заявка принимает статус "Возврат предоплаты". После возврата предоплаты (зачёта в следующую заявку), бухгалтер проводит эту сумму соответствующими проводками , и статус Заявки становится "Оплачена полностью"\r\n- Если оплата туроператору ещё не была произведена, то Заявка не меняет статуса "Не оплачена". Просто изменяется сумма обязательств (со стоимости тура на величину штрафа). После оплаты штрафа, бухгалтер проводит эту сумму проводкой "Оплата туроператору", и статус Заявки становится "Оплачена полностью" \r\n\r\n4. Изменение статусов оплаты туристом.\r\n\r\n- Если турист осуществил предоплату и статус Заявки был "Оплачена полностью", введенная бухгалтером величина штрафа вычитается из суммы предоплаты, а заявка переходит в статус оплаты туристом "Возврат предоплаты" (статус состояния "Штраф").  После возврата предоплаты (зачёта в следующую заявку), бухгалтер проводит эту сумму соответствующими проводками , и статус Заявки становится "Оплачена полностью"\r\n\r\n- Если турист не осуществил предоплату и статус Заявки был "Не оплачена", введенная бухгалтером величина штрафа становится обязательством туриста, а заявка не изменяет статуса "Не оплачена". \r\n После дополнительной оплаты туристом своих обязательств,  бухгалтер проводит эту сумму соответствующей проводкой , и статус Заявки становится "Оплачена полностью"', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:04:19', '2013-02-19 18:04:19', '2013-02-19', 0, NULL, NULL, 48, 1, 2, 0),
(49, 1, 13, '9. Оплата тура туристом. Работа бухгалтерии.', 'Все операции, связанные с оплатой туров осуществляются путём добавления проводок https://ittour.worksection.com/project/47007/830398/ (не редактированием существующих, а добавлением при необходимости корректирующих). Добавление новой проводки "Стоимость тура к оплате", "Штраф" отменяет предыдущую стоимость.\r\n\r\nПроводка выбирается из меню, добавляется сумма проводки и при необходимости вводится текстовый комментарий и добавляется файл.\r\n\r\nПроводки по операциям с туристом:\r\n- Стоимость тура к оплате \r\n- Оплата туристом\r\n- Возврат оплаты туристу\r\n- Возврат взаимозачетом\r\n- Штраф за аннуляцию\r\n\r\n\r\n1. Первичная оплата за тур (предоплата)\r\n\r\n- Проводкой "Стоимость тура к оплате" менеджер вводит в заявке сумму, которую необходимо оплатить туристу за тур.\r\n- Проводкой "Оплата туристом" бухгалтер (менеджер) вводит в заявке сумму, оплаты туристом.\r\n- Статус оплаты заявки изменяется с "Не оплачена" на "Оплачена частично"\r\n\r\n2. Окончательная оплата за тур \r\n\r\n- Проводками "Оплата туристом" бухгалтер (менеджер) вводит в заявке суммы, оплачиваемые туристом за тур.\r\n- После того, как стоимость тура сравняется с суммой оплаты, статус оплаты заявки изменяется с "Оплачена частично" на "Оплачена полностью"\r\n\r\n3. Отказ туроператора (неподтверждение заявки)\r\n\r\nПроводкой "Стоимость тура к оплате" с суммой оплаты "0" менеджер обнуляет обязательства туриста.\r\n- Если при этом от туриста была внесена предоплата, статус оплаты заявки изменяется с "Оплачена частично" ("Оплачена полностью") на "Возврат предоплаты" (в связи с отрицательными обязательствами туриста).\r\nПроводкой "Возврат предоплаты" или "Возврат взаиморасчётом" бухгалтер (менеджер) вводит в заявке сумму, возвращённую туристу.\r\nСтатус оплаты заявки изменяется с "Возврат предоплаты" на "Оплачена частично"\r\n- Если  от туриста не была внесена предоплата, статус оплаты заявки не изменяется ("Не оплачена"). \r\nСтатус состояния заявки не влияет на финансовые операции ("Отказ").\r\n\r\n\r\n4. Аннуляция\r\n\r\nБухгалтер получает от туроператора счёт с суммой штрафа за аннуляцию тура. На основании счёта он делает проводку  "Штраф за аннуляцию". Эта проводка обнуляет обязательства туриста по стоимости тура и заменяет их на сумму штрафа. \r\n- Если при этом от туриста была внесена предоплата и сумма штрафа меньше этой предоплаты. \r\nСтатус оплаты заявки изменяется с "Оплачена частично" ("Оплачена полностью") на "Возврат предоплаты" (в связи с отрицательными обязательствами туриста).\r\n- Если сумма штрафа больше суммы предоплаты, статус оплаты заявки не изменяется ( "Оплачена частично").\r\n - Если предоплата отсутствовала, статус оплаты заявки не изменяется ( "Не оплачена").\r\n При этом состояние заявки сохраняется "Штраф". После оплаты туристом штрафа состояние заявки изменяется на "Аннулирована".', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:04:43', '2013-02-19 18:04:43', '2013-02-19', 0, NULL, NULL, 49, 1, 2, 0),
(50, 1, 13, '10. Оплата тура турагентством туроператору. Работа бухгалтерии. ', 'Все операции, связанные с оплатой туров осуществляются путём добавления проводок  https://ittour.worksection.com/project/47007/830398/ (не редактированием существующих, а добавлением при необходимости корректирующих). Добавление новой проводки "Стоимость тура к оплате", "Штраф" отменяет предыдущую стоимость.\r\n\r\nПроводка выбирается из меню, добавляется сумма проводки и при необходимости вводится текстовый комментарий и добавляется файл.\r\n\r\nПроводки по операциям с туроператором:\r\n- Стоимость тура к оплате \r\n- Оплата туроператору\r\n- Возврат оплаты\r\n- Возврат взаимозачетом\r\n- Штраф за аннуляцию\r\n\r\n1. Первичная оплата за тур (предоплата)\r\n\r\n- После получения счёта на оплату проводкой "Стоимость тура к оплате" бухгалтер вводит в заявке сумму, которую необходимо оплатить туроператору за тур. (Счёт на оплату приходит только после подтверждения заявки.)\r\n- Проводкой "Оплата туроператору" бухгалтер вводит в заявке сумму, оплаченную турагентством туроператору.\r\nСтатус оплаты заявки изменяется с "Не оплачена" на "Оплачена частично" или "Оплачена полностью" (в зависимости от суммы общей оплаты)\r\n\r\n2. Аннуляция\r\n\r\n- Бухгалтер получает от туроператора счёт с суммой штрафа за аннуляцию тура. На основании счёта он делает проводку  "Штраф за аннуляцию". Эта проводка обнуляет обязательства турагентства по стоимости тура и заменяет их на сумму штрафа. \r\n- Если при этом от турагентства была внесена предоплата и сумма штрафа меньше этой предоплаты, статус оплаты заявки изменяется с "Оплачена частично" ("Оплачена полностью") на "Возврат предоплаты" (в связи с отрицательными обязательствами турагентства). \r\nПосле получения суммы возврата или её взаимозачетом с обязательствами турагентства по другой заявке, бухгалтером делаются соответствующие проводки: "Возврат предоплаты" или "Возврат взаимозачетом".\r\n Статус оплаты заявки становится  "Оплачена полностью", а статус состояния переходит со "Штраф" на "Аннулирована".\r\n- Если сумма штрафа больше суммы предоплаты, статус оплаты заявки не изменяется ( "Оплачена частично"). \r\nПосле проведения доплаты, бухгалтер вносит эту сумму проводкой "Оплата туроператору". Статус оплаты заявки становится "Оплачена полностью".\r\n - Если предоплата отсутствовала, статус оплаты заявки не изменяется ( "Не оплачена"). При этом состояние заявки сохраняется "Штраф".\r\n После оплаты турагентством штрафа состояние заявки изменяется на "Аннулирована".', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:05:54', '2013-02-19 18:05:54', '2013-02-19', 0, NULL, NULL, 50, 1, 2, 0),
(51, 1, 13, '12. Работа с туристом между поездками', 'Между поездками туриста менеджер проводит комплекс мероприятий, необходимых для удержания клиента и повышения уровня его лояльности к турагентству.\r\n\r\n1. Поздравление с днём рождения\r\n\r\n- За 7 дней до дня рождения туриста, менеджер, к которому этот турист закреплён (а также администратор) получают напоминание https://ittour.worksection.com/project/45487/830387/ о предстоящем событии. - Следующее напоминание генерируется за 2 дня до дня рождения туриста.\r\nЧтобы закрыть напоминание, необходимо добавить текстовый комментарий.\r\n- Как правило, туристу отправляется почтовая открытка. \r\n- Если в карточке туриста активировано условие "Не поздравлять", напоминание не генерируется.\r\n\r\n2. Массовое поздравление с новым годом (8 марта)\r\n\r\n- Менеджеры распечатывают адреса туристов для наклейки их на конверты.\r\n- Напоминание генерируется за 30 дней до события\r\n- Если в карточке туриста активировано условие "Не поздравлять", адрес не поступает в общую распечатку.\r\n\r\n3. E-mail рассылка\r\n\r\n- Может быть сгенерирована по всему списку с возможностью ручного редактирования этого списка.\r\n- Если в карточке туриста активировано условие "Исключить из E-mail рассылки", адрес не поступает в список рассылки.\r\n\r\n4. СМС рассылка\r\n\r\n- Может быть сгенерирована по всему списку с возможностью ручного редактирования этого списка.\r\n- Если в карточке туриста активировано условие "Исключить из СМС рассылки", номер телефона не поступает в список рассылки.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:12:24', '2013-02-19 18:12:24', '2013-02-19', 0, NULL, NULL, 51, 1, 2, 0),
(52, 1, 13, '13. Мой кабинет туриста.', 'Мой кабинет туриста создаётся для облегчения взаимодействия менеджера с туристом.\r\n\r\n1. Основные функции, доступные туристу из Моего кабинета:\r\n\r\n- Обмен сообщениями с возможностью вложения файлов\r\n- Контроль статусов своих Запросов и Заявок\r\n- Возможность прикрепления к своим Заявкам документов (файлов)\r\n- Возможность оставить отзыв о поездке\r\n- Возможность изменения данных авторизации\r\n- Возможность добавления контактных данных (телефон, новый паспорт)\r\n- Возможность отключение поздравлений и рассылок (E-mail и СМС)\r\n\r\n2. Развитие функций Моего кабинета\r\n\r\n- Возможность осуществить поиск туров и сформировать запрос\r\n- Возможность хранения туров в корзине в процессе поиска (Мои туры)\r\n- Возможность просмотра вариантов отдыха, предложенных менеджером в процессе подбора тура\r\n- Возможность подписки на рассылку по заданному фильтру\r\n\r\n3. Адрес Моего кабинета\r\n\r\n- без привязки к домену турагентства:\r\nfirma.tourcrm.com/pupkin11 (по количеству Пупкиных) или firma.tourcrm.com/23423 (по id)\r\n- с привязкой к домену турагентства:\r\nfirma.com/pupkin11 (по количеству Пупкиных) или firma.com/23423 (по id)', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:12:52', '2013-02-19 18:12:52', '2013-02-19', 0, NULL, NULL, 52, 1, 2, 0),
(53, 1, 13, '11. Контакт с туристом после возвращения из поездки', 'Через 3 дня после возвращения туриста из тура менеджеру генерируется оповещение о необходимости контакта. (срок устанавливается в настройках системы).\r\n\r\n1. Оформление отзыва о поездке.\r\n\r\n- Менеджер должен произвести контакт с туристом и оформить документ "Отзыв о поездке" (документ "Контакт с туристом" также оформляется).\r\n- Отзыв туриста о поездки, как правило, принимается в устной форме по телефону, но может быть размещён туристом из Моего кабинета.\r\n- Если турист отказался оставить отзыв в Заявке в месте отзыва прописывается ссылка "Добавить отзыв"\r\n- Отзыв может быть отредактирован туристом из Моего кабинета (но не удалён)\r\n- Отзыв туриста становится неотъемлимой частью заявки\r\n- Ссылка на отзыв также размещается в карточке туриста и в карточке контакта.\r\n- Данные отзыва используются в Общей базе данных и в маркетинговой информации\r\n\r\n2. Поля отзыва о поездке.\r\n\r\nВсе поля отзыва включают в себя оценку туриста по 5-бальной шкале с дискретностью выбора оценки 0,5 единиц (от 0 до 5,0) с небольшими текстовыми комментариями.\r\n2.1. Оценка организации тура туроператором\r\n2.2. Оценка оправданий ожиданий от поездки\r\n2.3. Оценка отеля:\r\n     - территория, инфраструктура\r\n     - номер\r\n     - сервис, обслуживание\r\n     - питание\r\n     - пляж\r\n2.4. Рекомендации по предназначению отеля (мультивыбор)\r\n    - молодежный отдых\r\n    - спокойный отдых\r\n    - отдых с детьми\r\n    - вип отдых\r\n2.5 Общий комментарий\r\n\r\n3. Контакт директора с туристом.\r\n\r\n- Директор может произвести контакт с туристом и получить оценку туриста работы менеджера по той же шкале с текстовым комментарием.\r\n- Эта информация добавляется в карточку менеджера (раздел, который менеджер не видит).\r\n- Карточка контакта с туристом оформляется в обычном режиме. Информация об оценке менеджера в её не вносится.\r\n\r\n4. Использование информации.\r\n\r\n- Аудиофайл с записью Отзыва туриста прикрепляется к документу "Отзыв о поездке"\r\n- Документ "Отзыв о поездке" прикрепляется к карточке туриста и к заявке.\r\n- Данные оценки оправдания ожиданий от поездки прописываются в карточке менеджера в невидимом для него разделе.\r\n- Оценка оператора добавляется в Общей базе знаний к данному туроператору\r\n- Оценка отеля добавляется в Общей базе знаний к данному отелю.\r\n- Оценка туриста работы менеджера  добавляется в карточку менеджера в невидимом для него разделе.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:13:48', '2013-02-19 18:13:48', '2013-02-19', 0, NULL, NULL, 53, 1, 2, 0),
(54, 1, 13, '14. Делегирование Запросов и Заявок и туристов', '- Одним из полей Запроса и Заявки является Исполнитель - менеджер, который работает с данным туристом.\r\nВ карточке туриста также указан менеджер, к которому закреплён данный турист.\r\n\r\n- Администратор системы может назначить другого менеджера по работе с Запросом или Заявкой или переназначить туриста, выбрав в соответствующем меню другого Исполнителя и сохранив документ.\r\n\r\nЕсли при этом настройки системы не позволяют менеджерам видеть чужие Запросы,  Заявки и карточки туристов, то данная Заявка (Запрос, карточка туриста) становится доступной только вновь назначенному менеджеру (и Администратору)\r\n\r\n- В Запросе, размещенном через Интернет, Исполнителем по умолчанию выбирается Администратор системы. \r\n', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:15:06', '2013-02-19 18:15:06', '2013-02-19', 0, NULL, NULL, 54, 1, 2, 0),
(55, 1, 13, '15. Работа с оповещениями', '1. Оповещение – извещение, параметры которого заданы в настройках системы, переданное Пользователю при наступлении опеределённого события.\r\n\r\nВиды оповещений:\r\n\r\n- о приходе запроса с сайта турагентства\r\n\r\n- об изменении статуса Заявки (как статуса состояния, так и статуса оплаты)\r\n\r\n- о приходе сообщения от туриста из кабинета туриста\r\n\r\n- о возвращении туриста из поездки\r\n\r\n- о выезде туриста в тур\r\n\r\n- о дне рождения туриста\r\n\r\n- служебное оповещение системы (о недостатке средств для продления подписки)\r\n\r\n\r\n\r\nВиды оповещения задаются централизовано Администратором СРМ. Администратор акккаунта может отключить некоторые виды оповещений в настройках.\r\n\r\nОповещения отображаются в ленте оповещений.\r\n\r\nНекоторые виды оповещений отображаются во всплывающем окне (настройки может изменить Администратор аккаунта). Для закрытия окна необходимо нажать кнопку "Ознакомился".', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:15:28', '2013-02-19 18:15:28', '2013-02-19', 0, NULL, NULL, 55, 1, 2, 0),
(56, 1, 13, '16. Работа с напоминаниями', 'Напоминание – форма, заполняемая пользователем для своевременного информирования его о наступлении события, указанного в напоминании https://ittour.worksection.com/project/45487/830387/\r\n\r\nПоля, заполняемые при формировании напоминания:\r\n\r\n- текст\r\n\r\n-  периодичность оповещения\r\n\r\n   · Один раз (дата и время)\r\n\r\n   · Один раз в месяц (число месяца и время)\r\n\r\n   · Один раз в год на дату\r\n\r\n- способ оповещения (мультивыбор)\r\n\r\n   · В системе\r\n\r\n   · E-mail\r\n\r\n   · СМС\r\n\r\n\r\n\r\nПримеры напоминаний \r\n\r\n- семинар\r\n\r\n- напомнить туристу, что не хватает документов на визу\r\n\r\n- поздравить коллегу с днём рождения\r\n\r\n\r\n\r\nАдминистратор может создать напоминание с выбором менеджера, которому будет показано это напоминание', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:15:56', '2013-02-19 18:15:56', '2013-02-19', 0, NULL, NULL, 56, 1, 2, 0),
(57, 1, 13, '17. Работа с маркетинговой информацией', '1. Для объективной оценки работы турфирмы формируются следующие отчёты:\r\n\r\n    1.1. Общая статистическая информация о работе турфирмы за период:\r\n\r\n        1.1.1 Количество обработанных Запросов\r\n        1.1.2. Количество размещённых Заявок, всего\r\n                      и в разрезе статусов состояния:\r\n                             - Отправлена\r\n                             - В работе\r\n                             - Подтверждена\r\n                             - Штраф\r\n                             - Аннулирована\r\n                             - Выполнена\r\n        1.1.3. Соотношение между Запросами и Заявками \r\n        1.1.4. Количество отправленных туристов (по получению статуса Заявки                  Выполнена за исследуемый период), всего \r\n              и по выбранным в настройках направлениям:\r\n                              - Египет\r\n                              - ОАЭ\r\n                              - ....\r\n       1.1.5 Эффективность источников информации (доли в процентах источников информации, по которым были первичные обращения туристов):\r\n \r\n \r\n \r\n 1.2. Общий детализированный отчёт с использованием фильтров:\r\n\r\n  - Направление (страна)\r\n  - Туроператор \r\n  - Менеджер\r\n  - Период (с по)\r\n  - Отчёт\r\n          Обработанных Запросов\r\n          Размещённых Заявок\r\n          Соотношения (Запрос/Заявка)\r\n          Отправленных туристов\r\n \r\n \r\n1.3. Эффективность работы турагентств и менеджеров\r\n\r\nФильтры:\r\n \r\n  - Менеджер\r\n  - Направление\r\n  - Туроператор\r\n  - Период (с по)\r\n  - Отчёт\r\n          Объем продаж\r\n          Отправленных туристов\r\n          Комиссия всего\r\n          Процент комиссии    \r\n          Оценка за оправдание ожиданий\r\n          Оценка за работу\r\n \r\nПри использовании параметра фильтра "все менеджеры" в отчётах формируются столбиковые цветные диаграммы', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:18:35', '2013-02-19 18:18:35', '2013-02-19', 0, NULL, NULL, 57, 1, 2, 0),
(58, 1, 13, 'Подписка', 'Тарифный план зависит от набора услуг и количества пользователей, которые будут использовать систему.\r\n\r\nТарифный план (Эконом, Базовый, Элит) выбирается из матрицы:\r\n\r\n                       Ваш тарифный план: Эконом        Текущий баланс: 190.00\r\n\r\n                                           до 2-х                  3-5            6-10  (пользователей)\r\nОсновный услуги:\r\n\r\nБазовая версия                 Точка 0.00 грн\r\n\r\nДоп. услуги:\r\n\r\nОтключение баннера        Галка 90.00 грн\r\nМаркетинговая инф.         Галка 50.00 грн\r\nМой кабинет туриста        Галка 40.00 грн\r\n\r\nСрок подписки:  (1 месяц, 2 месяца (скидка 5%), 3 месяца (скидка 10%), 6 месяцев (скидка 20%), 12 месяцев (скидка 40%))\r\n-------------------------------------------------------------------------------------\r\nИтого, стоимость подписки: 456.00 грн\r\n \r\nГалка После окончания оплаченного периода продлевать подписку ежемесячно автоматически  \r\n                                                             Кнопка   ИЗМЕНИТЬ ПОДПИСКУ\r\n\r\n\r\n- После перемещения точки на нужную позицию базовой версии (выбора числа пользователей), открывается возможность подписки на соответствующие дополнительные услуги или отключение показа баннера на всех страницах (справа вверху 300*250).\r\n\r\n- Значение стоимости дополнительных услуг для планов с разным количеством пользователей разное.        \r\n\r\n- По умолчанию стоит срок подписки 1 месяц\r\n\r\n- Количество пользователей системы включает администратора системы.\r\n\r\n- Галка После окончания оплаченного периода продлевать подписку ежемесячно автоматически по умолчанию включена \r\n\r\n- Итого, стоимость подписки изменяется динамически от выбранного тарифного плана, дополнительных услуг и срока подписки\r\n\r\n- При изменении подписки, изменения вступают в силу с мгновенно с пересчётом разницы стоимости тарифных планов в текущем месяце и вычитанием этой разницы (плюс стоимость подписки с 01 числа следующего месяца) из баланса.\r\n\r\n- Переход на более простой тарифный план осуществляется с 01 числа следующего месяца за месяцем окончания срока подписки. В текущем месяце разница в тарифах не возвращается.\r\n\r\n- При переходя на тарифный план с меньшим количеством пользователей предлагается выбрать пользователей, которые будут активны в новом тарифном плане. Остальные пользователи становятся неактивными, но вся информация по ним сохраняется и активируется при переходе на более сложный тарифный план.\r\n\r\n- При нажатии кнопки "Изменить подписку" появляется предупреждение о сумме, на которую будет уменьшен баланс (сумма разницы тарифных планов на оставшиеся до конца месяца дни + стоимость подписки на новый тарифный план согласно выбранного срока).\r\n\r\n- Если сумма на счете недостаточна для изменения подписки, об этом появляется извещение при попытке "Изменить подписку"\r\n\r\nПроцедура автоматического изменения тарифного плана при недостаточности средств на балансе описана https://ittour.worksection.com/project/46982/835115/', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:19:21', '2013-02-19 18:19:21', '2013-02-19', 0, NULL, NULL, 58, 1, 2, 0),
(59, 1, 13, 'Биллинг', 'На каждый аккаунт открывается счёт.\r\nОстаток средств на счёте называется Балансом.\r\n\r\nПополнения счёта.\r\n\r\nСпособы пополнения автоматические:\r\n             - Эквайринг кредитной карты (Приватбанк)\r\n             - Приват24 (Приватбанк)\r\n             - Liqpay (Приватбанк)\r\n             - webmoney\r\n             - платежные терминалы\r\n\r\nСпособы пополнения ручные:\r\n             - Пополнение карточного счёта в Приватбанке\r\n             - Безналичный платёж\r\n\r\nАвтоматические способы пополнения могут быть возможны только после запуска СРМ и образования юрлица для договора с банком.\r\n\r\nДля ручного способа пополнения счёта нужно сделать введение информации пользователем о произведенном пополнении, которое через 1 час автоматически пополнит баланс.\r\nЭта операция нуждается в подтверждении (или отмене) администратором СРМ в АЧ.\r\nВсё это реализовано в Айти-тур http://www.ittour.com.ua/finances.html (вкладка Пополнение баланса)\r\n\r\nСписание\r\n\r\n- Списание происходит 1-го числа каждого месяца. \r\n- Если на счету недостаточно средств на продление услуги, то баланс - минусуется, отображается красным цветом, и пользователю отправляется E-mail и СМС уведомление о необходимости пополнить баланс.\r\n- 05-го числа баланс восстанавливается, а аккаунт переводится на тарифный план Эконом.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:19:42', '2013-02-19 18:19:42', '2013-02-19', 0, NULL, NULL, 59, 1, 2, 0),
(60, 1, 13, 'Администрирование пользовательского аккаунта', 'В пользовательском аккаунте существует 3 типа пользователей:\r\n - Администратор\r\n - Менеджер\r\n - Бухгалтер\r\n\r\nАдминистратор аккаунта - пользователь, который обладает полным набором полномочий.\r\n- Пользователю, который регистрирует аккаунт, присваивается тип Администратора. \r\nАдминистратор может регистрировать любых типов пользователей, включая Администраторов.\r\n\r\n- Базовые доступы Менеджера и Бухгалтера устанавливаются системой по умолчанию. Набор этих доступов может изменить Администратор аккаунта.\r\n\r\n- Менеджеру не доступны оценки туристов, как свои, так и оценки других менеджеров.\r\n\r\n\r\nДоступы Менеджера:                   Чтение               Редактирование\r\n\r\nКарточки своих туристов               да                     да \r\nКарточки всех туристов                нет                    нет\r\n\r\nСвои Запросы                               да                     да \r\nВсе Запросы                                 нет                    нет\r\n\r\nСвои Заявки                                   да                     да  \r\nВсе заявки                                    нет                    нет \r\n\r\nМаркетинговая информация        нет                    нет \r\n\r\nБухгалтерские проводки                да                     да \r\n\r\n\r\nДоступы бухгалтера:\r\n\r\nВсе заявки                                     да                     нет\r\nБухгалтерские проводки               да                     да\r\n\r\nОстальные поля                           нет                    нет', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:20:10', '2013-02-19 18:20:10', '2013-02-19', 0, NULL, NULL, 60, 1, 2, 0),
(61, 1, 13, 'Регистрация и начало работы', 'Регистрация происходит на главной странице системы.\r\n\r\nПоля регистрации:\r\n\r\nНазвание предприятия (ФЛП)\r\nГород\r\nАдрес\r\nТелефон\r\nФ.И.О. директора\r\nE-mail\r\nЛогин\r\nПароль\r\nПодтверждение пароля\r\nКаптча\r\n\r\nПосле регистрации на E-mail поступает письмо с активацией регистрации, при перехода с которого аккаунт становится активным.\r\n\r\nПервая авторизация.\r\n\r\nПри первой авторизации появляется окно с информацией о том, что в период тестовой работы (3 месяца) система будет функционировать в тарифном плане "Элит" с включенными всеми дополнительными услугами.\r\nВ этом же окне должно быть предложение перейти к\r\n-  Перейти к Инструкции по началу работы\r\n-  Зарегистрировать дополнительного пользователя\r\n-  Зарегистрировать нового туриста\r\n-  Открыть форму контакта с туристом\r\n-  Оформит запрос\r\n-  Оформить заявку\r\n-  Создать напоминание\r\n\r\nПоследующая работа нового аккаунта.\r\n\r\n- При каждой авторизации пользователю даётся совет по работе в СРМ со ссылкой на соответствующий раздел помощи. Советы идут в цикле (после новой авторизации показывается новый совет). Из окна совета можно перейти к следующему совету. Эти советы можно отключить.\r\n\r\n- По окончанию тестового периода при отсутствие средств на балансе должен автоматически включиться тарифный план "Эконом" (бесплатный).\r\nПри этом генерируется несколько служебных оповещений:\r\n\r\n- за 7 дней до окончания тестового периода "О необходимости выбрать тарифный план для продолжения работы"\r\n\r\n- за 3 дня до окончания тестового периода "О необходимости пополнить баланс для сохранения текущего тарифного плана"\r\n\r\n- на следующий день после окончания тестового периода "О переходе на тарифный план "Эконом" и необходимости ограничить число пользователей"\r\n\r\n- через 5 дней после окончания тестового периода "О переходе на тарифный план "Эконом" и деактивации пользователей Иванова и Сидорова"\r\nОстаются активными Администраторы аккаунта, а если Администратор один, то и пользователь с фамилией на верхнюю букву алфавита.. ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:20:41', '2013-02-19 18:20:41', '2013-02-19', 0, NULL, NULL, 61, 1, 2, 0),
(62, 1, 13, 'Использование раздела Помощь', 'Раздел Помощь состоит из 2-х частей:\r\n      - Инструкции по работе с системой со скриншотами\r\n      - Видеоинструкции по работе с системой\r\n\r\n- Отдельные пункты Инструкции транслируются через всплывающие окна "Советов", появляющиеся после первой авторизации каждого пользователя за текущую дату.\r\n\r\n- На страницах системы расположены хинты с кратким описанием элементов системы и со ссылками на раздел Помощь.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:21:29', '2013-02-19 18:21:29', '2013-02-19', 0, NULL, NULL, 62, 1, 2, 0),
(63, 1, 13, 'Настройки аккаунта системы', 'Настройки администратора аккаунта\r\n\r\n1. Выбор цветовой схемы интерфейса\r\n\r\n2. Задание количества записей, отображаемых на главной странице в блоках:\r\n         - Запросы\r\n         - Заявки\r\n         - Напоминания\r\n         - Оповещения\r\n\r\n3. Настройка оповещений (указаны настройки по умолчанию)    В доп. окне\r\n\r\n- о дне рождения туриста                     за   5  дней   и за  0 дней         да\r\n\r\n- о возвращении туриста из поездки   через  3 дней                            да      \r\n\r\n- о выезде туриста в тур                      за  1 дней                                 да\r\n\r\n- о приходе запроса с сайта турагентства                                           да\r\n\r\n- об изменении статуса Заявки (как статуса состояния, так и статуса оплаты)                                                                                                 нет          \r\n\r\n- о приходе сообщения от туриста из кабинета туриста                      да\r\n\r\n- служебное оповещение системы                                                        да\r\n\r\n\r\n\r\n4. Администрирование доступа быстрое:\r\n\r\n      Менеджеры видят только свои заявки                                            да\r\n\r\n      Менеджеры видят только своих туристов                                       да\r\n\r\n\r\n5. Администрирование доступа расширенное:\r\n\r\n      https://ittour.worksection.com/project/46982/834769/\r\n\r\n6. Редактирование контактных данных предприятия\r\n\r\n  - телефонов\r\n\r\n       - E-mail\r\n\r\n       - адреса\r\n\r\n      - адреса сайта\r\n\r\n\r\n7. Редактирование данных всех пользователей, в том числе изменение пароля.\r\n\r\n8. Добавление логотипа на главную страницу\r\n\r\n9. Настройка пользовательского блока "Мои ссылки"\r\n\r\n10. Настройка синхронизации с Айти-тур\r\n\r\n11. Настройка синхронизации с туроператорами\r\n\r\n12. Разрешить сетевой доступ для участника сети\r\n\r\n  с расшифровкой:\r\n\r\n- к заявкам\r\n- к запросам\r\n- к туристам\r\n\r\n\r\n\r\n\r\nНастройки пользователя (менеджера).\r\n\r\n\r\n1. Настройка пользовательского блока "Мои ссылки"\r\n\r\n2. Настройка синхронизации с Айти-тур\r\n\r\n3. Настройка синхронизации с туроператорами', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:22:15', '2013-02-19 18:22:15', '2013-02-19', 0, NULL, NULL, 63, 1, 2, 0),
(64, 1, 13, 'Приостановка предоставления услуг по тарифному плану', '1. В случае недостаточности средств на балансе для продления услуг по действующему тарифному плану происходят следующие процессы:\r\n\r\n1.1. За 3 дня до окончания подписки генерируется внутреннее оповещение, письмо на контактный E-mail и СМС на контактный телефон "О необходимости пополнить баланс для сохранения текущего тарифного плана"\r\n\r\n1.2. На следующий день после окончания подписки происходит биллинг по текущему тарифному плану. Баланс уходит в минус и генерируется внутреннее оповещение, письмо на контактный E-mail и СМС на контактный телефон "О необходимости до 05 числа погасить задолженность за предоставленные услуги"\r\n\r\n1.3. Через 5 дней после окончания тестового периода генерируется внутреннее оповещение, письмо на контактный E-mail и СМС на контактный телефон "О переходе на тарифный план "Эконом" и деактивации пользователей Иванова и Сидорова".\r\n- Включается тарифный план "Эконом". Отключается доступ к дополнительным услугам (если они были в составе подписки).\r\n- Сумма биллинга, которая была автоматически удержана за продление подписки на текущий месяц, возвращается на аккаунт агентства\r\n- Остаются активными Администраторы аккаунта, а если Администратор один, то ещё и пользователь с фамилией на верхнюю букву алфавита.\r\n\r\n1.4. Для возобновление предоставления услуг по тарифному плану необходимо пополнить баланс и включить соответствующую подписку.\r\nПользователи сразу будут активированы. ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:22:45', '2013-02-19 18:22:45', '2013-02-19', 0, NULL, NULL, 64, 1, 2, 0);
INSERT INTO `issues` (`id`, `tracker_id`, `project_id`, `subject`, `description`, `due_date`, `category_id`, `status_id`, `assigned_to_id`, `priority_id`, `fixed_version_id`, `author_id`, `lock_version`, `created_on`, `updated_on`, `start_date`, `done_ratio`, `estimated_hours`, `parent_id`, `root_id`, `lft`, `rgt`, `is_private`) VALUES
(65, 1, 13, 'Синхронизация Заявок и перенос запросов из Айти-тур', 'Пользователь СРМ может в настройках включить режим синхронизации с системой "Айти-тур".\r\nСинхронизировать можно "Заявки" и "Запросы"\r\n\r\n1. Синхронизация Заявок с Айти-тур\r\n\r\n1.1. Для включения синхронизации необходимо в пользовательских настройках пользователя ввести данные авторизации в Айти-тур, указать дату, с которой нужно произвести синхронизацию, и нажать кнопку "Синхронизировать".\r\nПри этом, будут импортированы все заявки за указанный период, а копии новых заявок будут создаваться в СРМ сразу после их размещения в Айти-тур.\r\n\r\n1.2. После записи копии заявки в СРМ синхронизация происходит только по статусу состояния заявки и вложениям (документам на проведение тура, которые вкладываются в заявку).\r\n\r\n1.3. Синхронизацию отдельной заявки можно отменить, сняв соответствующую галку в настройках заявки.\r\n\r\n1.4. Для случая делегирования заявки другому менеджеру администратором аккаунта в заявке можно изменить параметры синхронизации (привязать её к учётной записи в Айти-тур администратора аккаунта или другого менеджера).\r\nЭто необходимо по разным причинам:\r\n  -  если в аккаунте Айти-тур включен режим (все видят заявки всех), то в этом случае каждый менеджер при синхронизации получает полный список заявок. Для разделения этого списка администратор аккаунта СРМ может провести делегирования заявок. Чтобы не потерялась синхронизация в случае изменения условий видимости заявок в Айти-тур, он должен иметь возможность привязать заявку к другой учётной записи.\r\n  - если администратор аккаунта изменяет Исполнителя заявки, он также должен изменить (или оставить) параметры синхронизации.\r\n\r\n1.5. Синхронизируются, как заявки, размещённые в системе Айти-тур, так и Заявки, размещённые в системах онлайн бронирования туроператоров, которые синхронизированы в аккаунте Айти-тур. \r\nВ Айти-тур есть сервис настройки синхронизации статуса заявок с туроператорами. Данные будут браться также из этого сервиса (другая страница аккаунта в Айти-тур)\r\n\r\n2. Перенос Запросов из Айти-тур.\r\n\r\nПо запросу туриста менеджер выбирает в Айти-тур лучшие предложения, отмечая их и располагая в буфере "Мои туры".\r\nЛюбое предложение менеджер может перенести в СРМ в раздел Запросы.\r\nНабор Запросов менеджер может разместить в Моем кабинете туриста или отправить туристу в сгруппированном виде на E-mail  \r\n\r\n3. Синхронизация статуса заявок и документов с туроператорами.\r\n\r\n3.1. Синхронизацию статуса заявок можно произвести в пользовательских настройках. Для этого необходимо выбрать туроператора из списка (с которыми установлена синхронизация), указать период начала синхронизации ввести авторизационные данные для входа в систему онлайн бронирования туроператора и нажать кнопку "Синхронизировать".\r\n\r\n3.2. При синхронизации в СРМ прописываются копии всех заявок за указанный период. \r\n\r\n3.3.По текущим заявкам синхронизируется статус состояния заявки и вложения. Если статус состояния заявки у туроператора не соответствует статусам, используемым в СРМ, показывается статус туроператора.\r\n\r\n3.4. Синхронизация может быть отменена в любой момент, как по оператору, так и по отдельной заявке.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:23:04', '2013-02-19 18:23:04', '2013-02-19', 0, NULL, NULL, 65, 1, 2, 0),
(66, 1, 13, 'Единая база знаний', 'Единая база знаний - это сервис для обучения менеджеров. Это постоянно развивающаяся библиотека знаний и справочных данных, необходимых для работы менеджеров.\r\n\r\nСюда будут включены:\r\n\r\n- Описания отелей с рейтингами и отзывами, полученными от пользователей СРМ\r\n- Видеообучение (будет синхронизирован с Айти-тур)\r\n- Визовая информация (будет синхронизирован с Айти-тур)\r\n- Информация об аэропортах, авиакомпаниях и воздушных судах (будет синхронизирован с Айти-тур)\r\n- Полезные ресурсы по темам с возможностью добавить свой ресурс для общих знаний', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:23:22', '2013-02-19 18:23:22', '2013-02-19', 0, NULL, NULL, 66, 1, 2, 0),
(67, 1, 13, 'Сетевая версия. Работа управляющей компании сети турагентств (УКС) в АЧ', 'Сетевая версия будет наиболее востребованной версией СРМ.\r\n\r\nУКС имеет как рабочий аккаунт, так и административную часть (АЧ)\r\n\r\nВ каждой заявке в АЧ добавляется поле "Турагентство" и "Город"\r\n\r\n\r\n1. Работа с Заявками в АЧ\r\n\r\nВ этом интерфейсе должны быть реализованы следующие возможности:\r\n\r\n1.1. Необходимо большое поле ленты Заявок (до 150 заявок на одной странице).\r\n\r\n1.2. Фильтрация этих результатов по различным параметрам\r\n\r\n1.3. Для заявок, забронированных турагентством в УКС, а не у туроператора напрямую, добавляются поля для проведения бухгалтерских проводок:\r\n - сумма оплаты турагентством (поле аналогичное оплате туристом для турагентства) устанавливает бухгалтер УКС (в заявках с таким статусом возможность внесения этой суммы турагентством деактивируется) \r\n  - сумма оплаты туроператору от УКС вносит бухгалтер УКС\r\n  - все частичные оплаты туроператору также вносится бухгалтером УКС \r\nТо есть для турагентства ничего не изменяется, только в качестве туроператора по оплате у них выступает УКС (не путать с туроператором тура).\r\nДля УКС в качестве туриста выступает турагентство.\r\n\r\n1.4. Статусы состояния заявки в случае бронирования через УКС ставит менеджер УКС. Статусы оплаты устанавливаются автоматически после проведения оплаты.\r\nУКС видит статусы оплаты турагентством и статусы оплаты туроператору. \r\n\r\n1.5. Заявки, которые бронирует турагентство - участник сети, просматриваются администратором УКС в пассивном режиме.  \r\n\r\n1.6. Все заявки, со статусом "Выполнена" размещаются в архиве заявок через 1 месяц после получения статуса "Выполнена"\r\n\r\n\r\n2. Работа с Запросами\r\n\r\n2.1. Администратор УКС может переделегировать между агентствами сети (от одного агентства другому) только запросы, введённые менеджерами УКС (запрос с сайта, ручное введение).\r\nЗапрос приходит в аккаунт администратора турагентства. Далее он может быть перераспределён менеджеру.\r\n\r\n2.2. Работа с другими запросами турагентств происходит в пассивном режиме.\r\n\r\n\r\n3. Работа с туристами.\r\n\r\n3.1. При первичном удалённом контакте менеджера УКС с туристом, формируется карточка контакта и карточка туриста.\r\nПосле этого, администратор УКС может делегировать этого туриста (и карточку контакта) в аккаунт турагентства (администратору).\r\nКарточка может быть делегирована администратором менеджеру.\r\n\r\n4. Работа с оповещениями\r\n\r\n4.1. При делегировании Запроса или Туриста администратором УКС в аккаунт турагентства, у последнего прописывается оповещение (в том числе с выпадающим окном). Оповещение приходит всем менеджерам (по умолчанию) или только администратору аккаунта (задается в настройках аккаунта администратором)\r\n\r\n4.2. Оповещение может быть сгенерировано в текстовом виде и разослано выбранным участникам сети.\r\nЭто оповещение прописывается в ленте оповещений аккаунта турагентства и во всплывающем окне. ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:23:43', '2013-02-19 18:23:43', '2013-02-19', 0, NULL, NULL, 67, 1, 2, 0),
(68, 1, 13, 'Сетевая версия. Работа управляющей компании сети турагентств (УКС) в рабочем аккаунте 1', '1. Аккаунт УКС отличается от обычного аккаунта большим количеством адресов делегирования созданных\r\n- запросов\r\n- карточек контактов\r\n- карточек туристов\r\n\r\n2. Из аккаунта УКС доступны для просмотра:\r\n  - Карточки туристов всех агентств сети\r\n  - Карточки контактов всех агентств сети\r\n\r\n3. Из аккаунта УКС можно создавать оповещение для показа всем агентствам сети (или выбранным агентствам)', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:24:17', '2013-02-19 18:24:17', '2013-02-19', 0, NULL, NULL, 68, 1, 2, 0),
(69, 1, 13, 'Сетевая версия. Маркетинговая информация и статистика в АЧ', '1.1. Общая статистическая информация о работе агентств сети за период (период устанавливается фильтром) :\r\n\r\n        1.1.1 Количество обработанных Запросов\r\n        1.1.2. Количество размещённых Заявок, всего\r\n                      и в разрезе статусов состояния:\r\n                             - Отправлена\r\n                             - В работе\r\n                             - Подтверждена\r\n                             - Штраф\r\n                             - Аннулирована\r\n                             - Выполнена\r\n        1.1.3. Соотношение между Запросами и Заявками \r\n        1.1.4. Количество отправленных туристов (по получению статуса Заявки Выполнена за исследуемый период), всего \r\n              и по выбранным в настройках направлениям:\r\n                              - Египет\r\n                              - ОАЭ\r\n                              - ....\r\n       1.1.5 Эффективность источников информации (доли в процентах источников информации, по которым были первичные обращения туристов):\r\n \r\n 1.2. Детализированный отчёт с использованием фильтров:\r\n\r\n  - Город\r\n  - Турагентство\r\n  - Период (с по)\r\n  - Направление (страна)\r\n  - Отчёт\r\n          Обработанных Запросов\r\n          Размещённых Заявок\r\n          Соотношения (Запрос/Заявка)\r\n          Отправленных туристов\r\n \r\n \r\n\r\n1.3. Эффективность работы турагентств и менеджеров\r\nФильтры:\r\n  - Город\r\n  - Турагентство\r\n  - Менеджер\r\n  - Период (с по)\r\n  - Отчёт\r\n          Обработанных Запросов\r\n          Размещённых Заявок\r\n          Соотношения (Запрос/Заявка)\r\n          Отправленных туристов\r\n          Оценка за оправдание ожиданий\r\n          Оценка за работу\r\n \r\n2. Отчёты формируются в табличном виде     ', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:24:36', '2013-02-19 18:24:36', '2013-02-19', 0, NULL, NULL, 69, 1, 2, 0),
(70, 1, 13, 'Изменения аккаунта турагентства при вступлении в сеть', 'При вступлении в сеть адмиистратор аккаунта ставит в настройках галку "Разрешить сетевой доступ" с расшифровкой:\r\n- к заявкам\r\n- к запросам\r\n- к туристам\r\n\r\nВопрос: Надо ли вводить, для кого разрешается сетевой доступ (управляющая компания сети)?', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:25:04', '2013-02-19 18:25:04', '2013-02-19', 0, NULL, NULL, 70, 1, 2, 0),
(71, 1, 13, 'Документирование операций', 'По всем операциям (событиям), проводимым в аккаунте ведётся документирование.\r\n\r\n- Дата операции\r\n- Время\r\n- Пользователь\r\n- Наименование операции\r\n\r\nИстория операций доступна администратору аккаунта.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:25:27', '2013-02-19 18:25:27', '2013-02-19', 0, NULL, NULL, 71, 1, 2, 0),
(72, 1, 17, 'Пилигрим. Редизайн главной страницы', '1 Новая главная страница \r\n\r\n2. Новые страницы (модернизированные старые)\r\n\r\n    - Туры в страны (из города)\r\n    - Поиск туров\r\n    - Туры\r\n    - Горящие туры\r\n    - Экскурсионные туры в страну\r\n    - Экскурсионные туры\r\n    - Горящие туры в страну (из города)\r\n\r\n3. Изменения в страницах:\r\n\r\n   3.1. Туры в страну (из города)\r\n          Установить витрины "Предложения дня" с предустановленными параметрами\r\n\r\n   3.2. Поиск туров\r\n          Новую форму поиска туров (новый дизайн)\r\n\r\n   3.3. Туры\r\n          Новую форму поиска туров\r\n\r\n   3.4. Экскурсионные туры в страну\r\n          Витрина "Экскурсионные туры" с предустановленными параметрами\r\n\r\n   3.5. Экскурсионные туры\r\n         Форма поиска туров + витрина "Экскурсионные туры" + ссылки на экскурсионные туры в страну\r\n\r\n   3.6. Горящие туры в страну (из города)\r\n         Витрины "Предложения дня" в другом дизайне с предустановленными параметрами\r\n\r\n   3.7. Горящие туры\r\n          Витрина Предложения дня" в другом дизайне + ссылки на страницы "Горящие туры в страну (из города)"\r\n\r\n4. Дополнительно\r\n\r\n   Блок анонсов последних материалов "Это интересно!"\r\n\r\nВ главную страницу адаптированы витрины:\r\n- Предложения дня\r\n- В последнюю минуту\r\nи быстрый поиск туров\r\n\r\nЭлементы витрины:\r\n - баннеры 300*250, 200*300, 600*120 (код Адривер)\r\n- Онлайн консультант (Марва)\r\n- Блок информации "Частые вопросы" \r\n- Блок СЕО "Как купить тур"\r\n- 4 анонса "Это интересно!"\r\n- Быстрый поиск туров\r\n- Блок новостей\r\n- Блок Партнёры', NULL, NULL, 3, 26, 2, NULL, 1, 3, '2013-02-19 18:31:30', '2013-03-19 11:32:59', '2013-02-19', 0, NULL, NULL, 72, 1, 2, 0),
(73, 1, 13, 'Изменение Исполнителя Запроса или Заявки', 'Из меню выбирается новый Исполнитель. \r\nРезультат изменений сохраняется', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:35:24', '2013-02-19 18:35:24', '2013-02-19', 0, NULL, NULL, 73, 1, 2, 0),
(74, 1, 13, 'Бухгалтерская проводка', '1. Общие положения\r\n\r\n- Операция связана с назначением стоимости тура и его оплатами\r\n- Оформляется из Заявки.\r\n- Наименование проводки выбирается из меню, вводится сумма и нажимается кнопка "Сохранить" \r\n\r\n2. Наименования проводок по операциям с туроператором \r\n\r\n- Стоимость тура к оплате \r\n- Оплата туроператору\r\n- Возврат оплаты\r\n- Возврат взаимозачетом\r\n- Штраф за аннуляцию\r\n\r\n3. Наименования проводок по операциям с туристом \r\n\r\n- Стоимость тура к оплате \r\n- Оплата туристом\r\n- Возврат оплаты туристу\r\n- Возврат взаимозачетом\r\n- Штраф за аннуляцию\r\n', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 18:36:44', '2013-02-19 18:36:44', '2013-02-19', 0, NULL, NULL, 74, 1, 2, 0),
(75, 2, 6, 'Организация доступа API к базе туров системы Айти-тур', 'Просим объяснить как формируются запросы к поиску туров, как происходит фильтрация.\r\nдля отображения туров на сайте нам требуется доступ к каким то турам "предложения дня", "в последнюю минуту", "экскурсионные туры", и т.д.\r\nкак вытягивать данные по отелям и связанную информацию, как вытягивать фото туров, описания стран, данные о тур операторах, архив туров, транспорт при заявке на тур, статусы заявок, оплат и т.д.', NULL, NULL, 3, NULL, 3, NULL, 1, 9, '2013-02-19 18:44:38', '2013-03-06 01:21:12', '2013-02-19', 0, NULL, NULL, 75, 1, 2, 0),
(76, 2, 6, 'Необходима документация на эквайринг Приватбанка', '> Взаимодействие с Приватом осуществляется с помощью запроса с формы следующего вида:\r\n> \r\n> <form id=''checkout_order_{$order_id}'' name=''checkout_order_{$order_id}'' method=''POST'' action=''https://api.privatbank.ua/p24api/ishop''>\r\n> <input type=''hidden'' name=''amt'' value=''{$price}'' />\r\n> <input type=''hidden'' name=''ccy'' value=''UAH'' />\r\n> <input type=''hidden'' name=''merchant'' value=''{$merchant}'' />\r\n> <input type=''hidden'' name=''order'' value=''{$orderID}'' />\r\n> <input type=''hidden'' name=''details'' value=''Оплата за турпакет №{$order_id}'' />\r\n> <input type=''hidden'' name=''ext_details'' value=''Описание турпакета №{$order_id}'' />\r\n> <input type=''hidden'' name=''pay_way'' value=''privat24'' />\r\n> <input type=''hidden'' name=''return_url'' value=''{$merrespurl}'' />\r\n> <input type=''hidden'' name=''server_url'' value=''{$merrespurl}'' />\r\n> </form>\r\n> Где:\r\n> {$order_id} - номер заявки\r\n> {$price} - сумма оплаты в гривнах до 2-го знака после точки (999.00)\r\n> {$merchant} - ID мерчанта\r\n> {$orderID} - уникальный номер операции (у нас привязка к номеру заявки)\r\n> {$order_id} - ID заявки\r\n> {$merrespurl} - ссылка для ответа и перехода после оплаты\r\n> \r\n> По ссылке указаной в {$merrespurl} находится скрипт который проверяет успешность оплаты и делает соответственную запись в нашу базу данных.\r\n> \r\n> \r\n> Также у нас реализованы системы оплаты кредитными картами и через систему Webmoney', NULL, NULL, 3, NULL, 2, NULL, 1, 2, '2013-02-19 18:52:59', '2013-02-28 17:50:56', '2013-02-19', 0, NULL, NULL, 76, 1, 2, 0),
(77, 2, 6, 'Экспорт и импорт Заявок и синхронизация статусов', 'Необходимо реализовать возможность экспорта-импорта заявок межде АгЧ "Завтра в тур" в системе Айти-тур и АЧ сайта "Завтра в тур".\r\n\r\n1. Экспорт из АЧ "Завтра в тур" в АгЧ осуществляется в зависимости от настроек автоматически (сразу после размещения Заявки в Моём кабинете") или вручную (после формирования Заявки из Запроса в АЧ "Завтра в тур").\r\n\r\nПосле экспорта заявка попадает в раздел "Подготовленные заявки" (получает статус "Подготовленная") и после проверки всех деталей менеджером размещается вручную.\r\n\r\nПо отдельным категориям заявок (оператор, статус оплаты) заявка автоматически размещается, как в Айти-тур так и у оператора.\r\n\r\nТо есть вместе с заявкой передаются признаки, на основе которых система Айти-тур принимает решение о варианте размещения:\r\n -  в разделе "Подготовленные"\r\n -  в системе "Айти-тур"\r\n -  в системе Айти-тур и у оператора\r\n\r\nПосле размещения синхронизируются только статусы Заявки \r\n\r\n2. Экспорт из АгЧ "Завтра в тур" в АЧ "Завтра в тур"\r\n\r\nПроисходит автоматически, сразу после размещения заявки.\r\n\r\nПосле размещения синхронизируются только статусы Заявки', NULL, NULL, 3, NULL, 3, NULL, 1, 4, '2013-02-19 18:58:40', '2013-03-06 13:55:48', '2013-02-19', 0, NULL, NULL, 77, 1, 2, 0),
(78, 2, 6, '1.Модуль "Предложение дня"', '> для выпадающих списков:\r\n> 1.список доступных стран\r\n> 2.список городов выбранной страны (курортов)\r\n> 3.выборка по кол-ву звезд(мы сами сделаем сортировки, предоставьте нам как получать данные списки)\r\n> Согласно выбору страны и курорта:\r\n> Страна, курорт, отель, тип питания (например AI, все включено), кол-во звезд отеля, кол-во ночей, город вылета, дата вылета, время вылета, цена, id тура.\r\n> Общее кол-во предоставленных результатов.\r\n\r\n\r\nВ ближайшее время будет завершена система получения фильтров для витрины "Предложение дня" с отсеиванием фильтров. Данная система будет содержать цепочку страна - рейтинг - город вылета. Возможность поиска по регионам (список городов выбранной страны (курортов) )  не реализована. Как только система будет закончена я предоставлю описание интерфейса в этой задаче.\r\n\r\nКол-во результатов ограничено фильтром items_per_page, для получения следующего блока данных нужно добавить параметр page содержащий номер необходимой страницы.\r\nВ результате поискового запроса система возвращает стандартный массив туров содержащий всю необходимую информацию.\r\nВозможность получить "Общее кол-во предоставленных результатов" на данный момент отсутствует.\r\nЕсли запрос не содержит id страны, города и рейтинга, то поиск вернет "лучшие" предложения дня.\r\n\r\nПоисковый запрос осуществляется через стандартную поисковую функцию и должен содержать тип витрины:\r\n\r\n$this->exec(''package_tour_search'', $param,$cache);\r\nгде:\r\n$param - массыв параметров поиска.\r\n$cache - флаг использовать кеширование или нет, по умолчанию false.\r\n$param["type"] = 48 - тип витрины Предложения дня.\r\nТакже массив $param может содержать id стран, рейтингов и города вылета.\r\n\r\nСписок стран и городов можно получить с помощью запроса $this->exec(''get_showcase_filter'', $param, true);\r\nгде массив $param содержит тип витрины и тип запрашиваемых фильтров $param = array(''result'' => "country", ''showcase'' => 48);\r\nили $param = array(''result'' => "city", ''showcase'' => 48);, но в этом случае необходимо также добавить параметр "country" содержащей id страны для который нужно выдать список городов.\r\nТакже можно добавить параметр "language" со значением "ukrainian", благодаря чему названия стран и городов будут на украинском языке.\r\n\r\nСписок рейтингов на данный момент можно получить из общего списка фильтров модулей, который можно получить через запрос\r\n$this->exec(''get_search_form_fields'', $param, true);\r\nГде массив $param может быть пустым или содержать параметр "language" со значением "ukrainian".', NULL, NULL, 5, NULL, 2, NULL, 1, 10, '2013-02-19 19:05:01', '2013-03-15 17:05:20', '2013-02-19', 0, NULL, NULL, 78, 1, 2, 0),
(79, 2, 6, '4. модуль "Заявки" ', '> мы отправляем вам новую заявку на тур, который выбрал наш пользователь, что именно вам\r\n> \r\n> \r\n> \r\n> отправлять (какие данные, например просто id тура), предоставьте запрос какие данные и их вид\r\n> \r\n> \r\n> \r\n> надо вам предоставить, если есть нюансы сообщите мне об этом.\r\n> \r\n> \r\n> \r\n> В ответ нам надо чтобы вы присвоили id заявки, дату создания (это для того чтобы не получился\r\n> \r\n> \r\n> \r\n> конфликт, например наш сервер настроен на одно время ваш на другое, и разные даты создания\r\n> \r\n> \r\n> \r\n> заявки, или например пользователь создаст заявку в 23:59 13.02.2013, и у нас дата создания\r\n> \r\n> \r\n> \r\n> заявки 13.02, а у вас пока запрос обработался наступило 14 число, и у вас в базе будет 14 число\r\n> \r\n> \r\n> \r\n> создания заявки, бывает по разному), статус оплаты, статус заявки.\r\n> \r\n> \r\n> \r\n> при создании заявки, нам требуется счет подтверждение, счет фактура, платежное поручение,\r\n> \r\n> \r\n> \r\n> памятка туристу.\r\n> \r\n> Предоставьте пож. образцы этих документов.\r\n> \r\n> \r\n> \r\n> Как нам синхронизировать статус оплаты? на тот случай если платить будут с нашего сервера, или\r\n> \r\n> \r\n> \r\n> наоборот будет оплата в банке по счету фактуре, тогда нам надо потребуются запросы от вас.\r\n> \r\n> Предоставьте запрос по которому мы получаем ответ, а также запрос посылки вам нашей информации.\r\n> \r\n> \r\n> \r\n> По каждому пункту требуются конкретные запросы.\r\n\r\n\r\nНа данный момент реализована система создания заявок в нашей системе через модули.\r\n\r\n$param = array( ''tour_id'' => $tour_id\r\n, ''first_name'' => $first_name\r\n, ''second_name'' => $second_name\r\n, ''middle_name'' => $middle_name\r\n, ''city'' => $city\r\n, ''email'' => $email\r\n, ''phone'' => $phone\r\n, ''comment'' => $comment\r\n);\r\n$this->exec(''package_order_save'', $param);\r\n\r\nОднако выдача или изменение данных существующей заявки не реализована.', NULL, NULL, 3, NULL, 2, NULL, 1, 5, '2013-02-19 19:10:48', '2013-03-06 13:55:32', '2013-02-19', 0, NULL, NULL, 79, 1, 2, 0),
(80, 2, 6, '6. Модуль "Падение цен"', '> Согласно выбору страны и курорта:\r\n> Страна, курорт, отель, тип питания (например AI, все включено), кол-во звезд отеля, кол-во ночей, город вылета, дата вылета, время вылета, цена, размер скидки, id тура, доступные фото.\r\n> \r\n> Общее кол-во предоставленных результатов.\r\n\r\nМодуль не реализован, для реализации необходима информация о способе наполнения витрины.', NULL, NULL, 5, NULL, 2, NULL, 1, 15, '2013-02-19 19:13:55', '2013-03-16 17:15:05', '2013-02-19', 0, NULL, NULL, 80, 1, 2, 0),
(81, 2, 6, '7.Модуль "экскурсионные туры"', '> Запрос на полный список всех экскурсионных туров, сортировку мы сами сделаем.\r\n> название тура, список стран тура, список городов тура, транспорт, ночей, кол-во дней ночевки,\r\n> город выезда, даты тура с-по, id тура, доступные фото.\r\n\r\nВ нашей системе поиск экскурсионных туров разбит на 2 этапа: поиск тура и поиск предложения.\r\n- На первом этапе указываются параметры поиска (страны, города на маршруте, города выезда, транспорт, диапазон дат и цены) и в результате поискового запроса получаем общую информацию о турах.\r\n- На втором этапе мы получаем детальную информацию о туре с описанием и возможностью выбора цен с учетом предоплаты.\r\n\r\nДля получения списка фильтров необходимо выполнить запрос $this->exec(''get_hike_search_form_fields'', array(), true)\r\n\r\nДля поиска на первом этапе необходимо сделать запрос\r\n\r\n$result = $this->exec(''hike_tour_search'', $param);\r\n\r\nМассив параметров формируется функциями\r\n$search_array = $this->parse_hike_search_url($_SERVER[''QUERY_STRING'']);\r\n$search_array = $this->prepare_hike_search_array($search_array);\r\nиз $_SERVER[''REQUEST_URI'']; :\r\ncity    2014\r\ncountry    26 39\r\nhike_date_from    23.01.13\r\nhike_date_till    24.03.13\r\nhike_price_till    5000\r\nhike_tour_type    -1\r\nitems_per_page    50\r\ntour_city    5136 4052\r\ntransport    2\r\n\r\nДля получения данных на втором этапе необходимо сделать запрос\r\n$this->exec(''hike_tour_price_search'', $param);\r\nгде $param[''tours''] = array($tour_id)\r\n\r\n> Экскурсионные туры, в форме поиска есть селект со\r\n> значением «С ночными переездами», такого фильтра кажется нет, пожалуйста, уточните\r\nВсе фильтры которые присутствуют на форме поиска сайта доступны для модулей.\r\nВ данном случае используется параметр night_moves, которому установлено значение "0".\r\n\r\n> 1) Модуль Экскурсионные туры\r\n> \r\n> Параметры поиска:\r\n> \r\n> Array\r\n> \r\n> (\r\n> \r\n> [items_per_page] => 10\r\n> \r\n> [price_till] => 10000\r\n> \r\n> [countries] => Array\r\n> \r\n> (\r\n> \r\n> [0] => 0\r\n> \r\n> )\r\n> \r\n> \r\n> \r\n> [transport_types] => Array\r\n> \r\n> (\r\n> \r\n> [0] => 0\r\n> \r\n> )\r\n> \r\n> \r\n> \r\n> [departure_cities] => Array\r\n> \r\n> (\r\n> \r\n> [0] => 0\r\n> \r\n> )\r\n> \r\n> \r\n> \r\n> [date_from] => 2013-01-28\r\n> \r\n> [date_till] => 2013-02-28\r\n> \r\n> [is_ticket_price_included] => -1\r\n> \r\n> [city_search_type] => and\r\n> \r\n> [current_url] => /app_dev.php/hike_tours\r\n> \r\n> [use_uah_price] => 1\r\n> \r\n> )\r\n> \r\n> \r\n> \r\n> В результате пустой масив offers\r\nПередавайте пустой массив или вообще не используйте фильтр если нужно произвести поиск без его участия.', NULL, NULL, 2, NULL, 2, NULL, 1, 5, '2013-02-19 19:17:27', '2013-03-06 18:49:50', '2013-02-19', 0, NULL, NULL, 81, 1, 2, 0),
(82, 2, 6, '8.Модуль "архив туров - последнюю минуту"', 'данных нет', NULL, NULL, 1, NULL, 2, NULL, 1, 2, '2013-02-19 19:22:01', '2013-02-19 20:25:27', '2013-02-19', 0, NULL, NULL, 82, 1, 2, 0),
(83, 2, 6, '9. Модуль "Поиск туров"', '> Запрос на полный список всех туров, сортировку мы сами сделаем.\r\n> вид тура (экскурсионный например, полный список), список стран (согласно виду тура) тура, список\r\n> регионов тура (согласно выбранной стране), категория отеля (кол-во звезд от-до), список видов\r\n> питания, взрослые (кол-во), дети (кол-во), город отправления (список), дата выезда от-до, кол-во\r\n> дней тура +- 5 дней (5 например), стоимость тура от-до в разных валютах (uah, usd, eur), id тура, доступные фото по туру в большом размере.\r\n> \r\n> Краткий список "пакетных туров"\r\n> список доступных стран по пакетным турам, Страна, список городов вылета, минимальная цена по\r\n> стране тура.\r\n> \r\n> Краткий список "Экскурсионным турам"\r\n> список доступных стран по Экскурсионным турам, Страна, список городов вылета, минимальная цена\r\n> по стране тура.\r\n> \r\n> запрос на получение результатов поиска по городу вылета.\r\n> запрос на получение результатов поиска по минимальной цене, в страну тура.\r\n> \r\n> Запрос на полный список всех туров, сортировку мы сами сделаем.\r\n\r\nВыдачу всех туров реализовать невозможно по причине большого кол-ва данных в системе.\r\n\r\n> вид тура (экскурсионный например, полный список), список стран (согласно виду тура) тура, список\r\n> регионов тура (согласно выбранной стране), категория отеля (кол-во звезд от-до), список видов\r\n> питания, взрослые (кол-во), дети (кол-во), город отправления (список), дата выезда от-до, кол-во\r\n> дней тура +- 5 дней (5 например), стоимость тура от-до в разных валютах (uah, usd, eur), id тура, доступные фото по туру в большом размере.\r\nСистема фильтров в подобном виде реализована в модулях поиска. Сначала выполняется запрос на получение общих списков фильтров:\r\n\r\n$this->exec(''get_search_form_fields'', $param, true);\r\n$this->exec(''get_hike_search_form_fields'', $param, true);\r\nМассив $param может быть пустым или содержать "language"\r\n\r\nВ дальнейшем  для получения отсеянных списков можно использовать запросы аналогичные:\r\n\r\nif(get(''action'') == ''get_package_search_filtered_field'') {\r\n$field = $this->get_package_search_filtered_field(''ajax'', get(''event_owner_level''), explode('' '', get(''country_id'')), explode('' '', get(''region_id'')), explode('' '', get(''hotel_rating_id'')), get(''tour_type'', 0), get(''tour_kind'', 0));\r\necho get(''callback'') . ''('' . $field . '');''; // field уже json\r\nexit;\r\n}  \r\n\r\nи\r\n\r\nif(get(''action'') == ''get_hike_search_filtered_field'') {\r\n$field = $this->get_hike_search_filtered_field(''ajax'', get(''event_owner_level''), explode('' '', get(''country_id'')), explode('' '', get(''transport_id'')), explode('' '', get(''city_id'')), explode('' '', get(''tour_city_id'')) );\r\necho get(''callback'') . ''('' . $field . '');''; // field уже json\r\nexit;\r\n}\r\n\r\nиз webclient\r\n\r\n> запрос на получение результатов поиска по городу вылета.\r\n> запрос на получение результатов поиска по минимальной цене, в страну тура.\r\nЗапросы на поиск описаны в предыдущих задачах и позволяют получать результаты как с указанием всех фильтров, так и только части. Фильтр страна является обязательным в целях оптимизации поиска.\r\n\r\n> Краткий список "пакетных туров"\r\n> список доступных стран по пакетным турам, Страна, список городов вылета, минимальная цена по\r\n> стране тура.\r\n> \r\n> Краткий список "Экскурсионным турам"\r\n> список доступных стран по Экскурсионным турам, Страна, список городов вылета, минимальная цена\r\n> по стране тура.\r\n\r\nСписки фильтров получаемые через вебсервис уже отсеяны и содержат только направления на которые в базе есть туры.\r\n\r\nИнформацию по минимальным ценам пакетных туров мы можем взять из отчета распределения туров(обновляется раз в неделю).\r\nДанные по минимальным ценам для экскурсионных туров и интерфейсы получения этих данных отсутствуют.\r\n\r\n> Информацию по минимальным ценам пакетных туров мы можем взять из отчета распределения туров(обновляется раз в неделю).\r\nЭто витрина "Минимальные цены"\r\n\r\n\r\n', NULL, NULL, 5, NULL, 3, NULL, 1, 7, '2013-02-19 19:36:12', '2013-03-13 19:23:07', '2013-02-19', 0, NULL, NULL, 83, 1, 2, 0),
(84, 2, 6, '10. модуль "В последнюю минуту"', '> Запрос на полный список всех туров "В последнюю минуту", сортировку мы сами сделаем.\r\n> Согласно выбору страны и курорта:\r\n> Страна, курорт, отель, тип питания (например AI, все включено), кол-во звезд отеля, кол-во ночей, город вылета, дата вылета, время вылета, цена, размер скидки, id тура, доступные фото в большом размере.\r\n\r\nИнтерфейс отсутствует.\r\n\r\n> > В интерфейсе Завтра в тур нужно предусмотреть ввод старой цены тура и процента её понижения.\r\n> > \r\n> > В интерфейсе Завтра в тур нужно предусмотреть следующий функционал:\r\n> > 1. Выбрать любой тур\r\n> > 2. Прописать его в АЧ\r\n> > 3. Изменить цену, прописать старую цену и процент изменения цены\r\n> > 4. Включить показ этого тура на главной странице и витрине "В последнюю минуту" в дополнение к импортированным данным\r\n> > \r\n> > а также возможность отключить показ импортированного тура витрины "В последнюю минуту".\r\n> > \r\n> > То есть, получается, что витрина "В последнюю минуту" не должна синхронизироваться в режиме реального времени. Данные её должны прописываться в интерфейсе "В последнюю минуту", редактироваться и дополняться.\r\n> > \r\n> > Также на тур должен назначаться признак синхронизации:\r\n> > - синхронизируется с Айти-тур\r\n> > - не синхронизируется с Айти-тур\r\n> > Под синхронизацией подразумевается только актуальность тура. Если синхронизируемый тур перестал быть актуальным (в Айти-тур) он отключается и на сайте Завтра в тур', NULL, NULL, 5, NULL, 2, NULL, 1, 13, '2013-02-19 19:45:05', '2013-03-13 19:39:25', '2013-02-19', 0, NULL, NULL, 84, 1, 2, 0),
(85, 2, 6, '11. Получение информации об конкретном туре согласно id тура.', '> Для получения полной информации о пакетном туре (включая перелет и информацию о отеле) необходимо выполнить следующий запрос:\r\n> \r\n> $this->exec(''package_tour_search'', $param,$cache);\r\n> где:\r\n> $param - массыв параметров поиска.\r\n> $cache - флаг использовать кеширование или нет, по умолчанию false.\r\n> $param["requested_tours"] - должен содержать id тура, информация о котором необходима.\r\n> \r\n> или для экскурсионных:\r\n> \r\n> $this->exec(''hike_tour_price_search'', $param, $cache);\r\n> где:\r\n> $param - массыв параметров поиска.\r\n> $cache - флаг использовать кеширование или нет, по умолчанию false.\r\n> $param["tours"] - должен содержать id тура, информация о котором необходима.\r\n> \r\n> В полученном массиве будет вся необходимая информация о туре.', NULL, NULL, 3, NULL, 2, NULL, 1, 2, '2013-02-19 19:47:11', '2013-02-28 17:22:03', '2013-02-19', 0, NULL, NULL, 85, 1, 2, 0),
(86, 1, 6, 'Доп. вопросы: 8.Форма для связи с менеджером', 'нет данных', NULL, NULL, 10, NULL, 2, NULL, 1, 2, '2013-02-19 19:47:45', '2013-03-06 00:54:07', '2013-02-19', 0, NULL, NULL, 86, 1, 2, 0),
(87, 2, 6, '2.Модуль "туры в страну из города"', '> общее кол-во результатов данных туров.\r\n> Согласно выбору страны и курорта:\r\n> Страна, курорт, отель, тип питания (например AI, все включено), кол-во звезд отеля, кол-во ночей, город вылета, дата вылета, время вылета, цена, id тура.\r\n\r\nТакой модуль отсутствует. Судя по описанию достаточно обычного поискового запроса с указанием страны и региона, и, вероятно, фиксированных параметров кол-ва взрослых/детей, диапазона дат и т.д.\r\n\r\nПредоставьте более подробное описание задачи.\r\n\r\n> > Здесь будет работать витрина "Предложения дня" с предустановленными фильтрами\r\n\r\n', NULL, NULL, 3, NULL, 2, NULL, 1, 2, '2013-02-19 19:51:35', '2013-03-06 00:22:19', '2013-02-19', 0, NULL, NULL, 87, 1, 2, 0),
(88, 1, 10, 'Новый логотип компании', 'Требования:\r\n\r\n> Примеры желаемых цветов:\r\n> \r\n> http://dribbble.com/shots/452022-Easter-Egg-Broken?hex=9BD458&list=color&percent=30&variance=50\r\n> http://dribbble.com/shots/915451-Enjoy\r\n> http://dribbble.com/shots/698541-Floating-Froggy\r\n\r\n> Это, с моей точки зрения, сделано хорошо:\r\n> - не перенасыщенны деталями\r\n> - чётко видно название и основная идея\r\n> - мало или вообще ничего нет лишнего', NULL, NULL, 1, 1, 2, NULL, 1, 1, '2013-02-19 20:33:52', '2013-02-19 20:37:38', '2013-02-19', 0, NULL, NULL, 88, 1, 2, 0),
(89, 3, 21, 'Продолжение по дизайну CRM', 'В связи с началом разработки CRM предлагаю продолжить работы по дизайну CRM, т.к. в ближайшее время понадобится верстка.', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-19 21:10:14', '2013-02-19 21:10:14', '2013-02-19', 0, NULL, NULL, 89, 1, 2, 0),
(90, 1, 26, 'тз', 'относительно сайтов на вордпрессе, надо взять существущие витрины, какието, и сделать их в виде модулей для вордпресса (минимальные цены, горящие туры, экскурсионные туры).\r\nШаблоны неуникальные, модули могут отключаться и это не должно влиять на работу сайтов.\r\nПримеры реализации представлены на http://www.touradmin.ru', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-02-23 18:35:06', '2013-02-23 18:35:06', '2013-02-23', 0, NULL, NULL, 90, 1, 2, 0),
(91, 3, 23, 'Затратная часть в часах', 'Пока отчет мо мне лично.\r\nРаботы по дизайну совокупно промежуточно - 54 часа по ставке 25$\r\nОрганизационные работы по проектам, несложные вопросы по проектированию, обсуждение, прочие работы -  98 часов по ставке 10$\r\nРаботы по CRM 48 часа по ставке - 25$\r\nОтдельно пришлю дизайн работы по завтра в тур, верстка доп страниц - там не много будет.\r\nПо остальным работникам в процессе работ.\r\nКонсультация стороннего системного администратора (Илья) - 100$\r\nZ363626958529\r\nИтого: 2550+980$+100=3630\r\n\r\nНу естественно вы понимаете, что и по crm и по другим вопросам, часов было гораздо больше, но я собрал самое основное.\r\nКонечно же с момента работы в офисе, вы оплачивать мою работу не будете в данном контексте, я буду работать по зарплате, единственное, т.к. я буду работать над множеством проектов, не всегда смогу брать на себя дизайн, если будет возможность уделять время я буду делать дизайн, его конечно же оплачивать не надо будет, но при большой загрузке, как я и предполагал ранее, буду привлекать в рамках проекта требуемых специалистов, которые в рамках проектов будут делать или требуемое или часть работ, т.к. приоритет именно на разработку проектов и управление процессом.', NULL, NULL, 5, 16, 2, NULL, 1, 1, '2013-02-26 19:36:39', '2013-03-06 13:49:33', '2013-02-26', 0, NULL, NULL, 91, 1, 2, 0),
(92, 1, 9, 'Оптимизация парсера Coral', '', NULL, NULL, 2, 17, 4, NULL, 17, 35, '2013-02-28 09:20:51', '2013-03-21 00:14:06', '2013-02-28', 0, NULL, NULL, 92, 1, 2, 0),
(93, 2, 6, 'Страница оплаты', 'При выборе 4-го варианта генерируется счёт на оплату, который распечатывается Покупателем\r\n\r\n*Вопрос*: Что в счете должно быть, как он должен выглядеть?\r\n\r\nПри выборе 5-го варианта происходит переход на страницу выбора турфирмы-партнёры, и уже после её выбора генерируется заявка с ID тура и с контактами выбранного партнёра, которая распечатывается Покупателем, а копия её отправляется партнёру с контактными данными Покупателя.\r\n\r\n*Вопрос*: Как заявка должна выглядеть?', NULL, NULL, 10, NULL, 2, NULL, 22, 1, '2013-03-04 17:16:51', '2013-03-06 00:53:22', '2013-03-04', 0, NULL, NULL, 93, 1, 2, 0),
(94, 1, 24, 'Страница Подробнее об отеле', 'на странице результатов поиска название отеля сделано ссылкой и на странице Ценовые предложения есть ссылка Подробнее об отеле – эскиза страницы нету', NULL, NULL, 8, NULL, 2, NULL, 22, 2, '2013-03-04 17:19:46', '2013-03-06 01:01:53', '2013-03-04', 0, NULL, NULL, 94, 1, 2, 0),
(95, 1, 24, 'Консультант-online ', 'нету описания, как должен работать данный модуль', NULL, NULL, 3, 22, 2, NULL, 22, 4, '2013-03-04 17:23:06', '2013-03-06 01:01:00', '2013-03-04', 0, NULL, NULL, 95, 1, 2, 1),
(96, 1, 6, 'Мой кабинет->Подписка ', 'Мой кабинет->Подписка - есть ссылка Выбрать из шаблонов – нету описания\r\n\r\nМой кабинет->Подписка->Ваши подписки - есть кнопка редактировать – описания нету\r\n', NULL, NULL, 3, NULL, 2, NULL, 22, 1, '2013-03-04 17:23:47', '2013-03-06 00:52:45', '2013-03-04', 0, NULL, NULL, 96, 1, 2, 0),
(97, 1, 24, 'Сервис погоды', 'Был просмотрен сервис погоды http://www.gismeteo.ua/\r\n\r\nОткрытого api - не нашел. В их FAQ указанно следующее:\r\n\r\nКак мне получить погоду для своего сайта?\r\nВы можете установить себе на страницу наш погодный информер. Если такой информации недостаточно, Вы можете стать нашим абонентом и получать сводки погоды на свой сайт в текстовом виде (CSV, XML) или в виде HTML-страницы по заданному шаблону.', NULL, NULL, 9, 22, 1, NULL, 22, 4, '2013-03-04 17:27:08', '2013-03-06 18:40:25', '2013-03-04', 0, NULL, NULL, 97, 1, 2, 0),
(98, 1, 24, 'тестовый аккаунт в ittour.com.ua', 'Тестовый аккаунт действующей турфирмы для просмотра работы с запросами и заявками\r\n\r\nittour.com.ua\r\n\r\nmango.company\r\nmango777', NULL, NULL, 3, 22, 1, NULL, 1, 0, '2013-03-06 01:13:29', '2013-03-06 01:13:29', '2013-03-06', 0, NULL, NULL, 98, 1, 2, 0),
(101, 1, 9, 'парсер Натали турс', 'Оптимизируем.\r\n', NULL, NULL, 3, 25, 2, NULL, 1, 1, '2013-03-14 16:01:03', '2013-03-14 16:53:44', '2013-03-14', 0, NULL, NULL, 101, 1, 2, 0),
(102, 1, 22, 'Дополнительные страницы', '', NULL, NULL, 10, NULL, 2, NULL, 1, 0, '2013-03-25 16:37:03', '2013-03-25 16:37:03', '2013-03-25', 0, NULL, NULL, 102, 1, 2, 0),
(103, 2, 28, 'Адреса серверов и методов API', 'Нужны адреса тестовых и прод. серверов и названия методов', NULL, NULL, 1, NULL, 2, NULL, 18, 0, '2013-03-25 18:57:58', '2013-03-25 18:57:58', '2013-03-25', 0, NULL, NULL, 103, 1, 2, 0),
(104, 2, 28, 'Документация API', 'Описание структуры и формата данных API', NULL, NULL, 1, NULL, 2, NULL, 18, 0, '2013-03-25 18:59:23', '2013-03-25 18:59:23', '2013-03-25', 0, NULL, NULL, 104, 1, 2, 0),
(105, 2, 28, 'Методы взаимодействий', 'Описание методов взаимодействия с Айтитур, а именно:\r\n- Формирование заявок\r\n- Обновление статуса заявки\r\n- Обновление статуса оплаты', NULL, NULL, 1, NULL, 2, NULL, 18, 0, '2013-03-25 19:01:16', '2013-03-25 19:01:16', '2013-03-25', 0, NULL, NULL, 105, 1, 2, 0),
(106, 1, 29, 'не прочтенные сообщения', 'Вынести на главную все непрочитанные сообщения по всем проектам для каждого юзера, т.е. если юзер не ответил на проект то горит светло красная иконка, если не ходил и не смотре ответ по задаче, то ярко зеленная (так же можно заходить в задачу и поставить или снять пометку о прочтении.) ', NULL, NULL, 9, 27, 2, NULL, 1, 2, '2013-03-26 11:29:13', '2013-03-26 12:49:42', '2013-03-26', 0, NULL, NULL, 106, 1, 2, 0),
(107, 1, 29, 'цвета в сообщениях', 'Мне надо чтобы в ответе на задачу, была большая кнопка ответить, выделить с цитатой, а также построить диалог в разных цветах: в зависимости от настроек цвета каждого юзера или его группы.. \r\nСделать чтобы при цитировании реально было видна цитата отдельно от текста который пишет другой человек. \r\nСделать в админке настройку цвета для целой группы, например вся итера отвечает сообщениями с зеленым фоном, при этом каждому итеровцу, я должен выдать свой цвет (например условно #000), и каждый итеровец будет писать со своим фоновым оттенком.', NULL, NULL, 9, 27, 2, NULL, 1, 4, '2013-03-26 11:32:46', '2013-03-26 12:26:40', '2013-03-26', 0, NULL, NULL, 107, 1, 2, 0),
(108, 1, 29, 'уведомления на емайл', 'В уведомлениях по емайлу мне надо чтобы писалось в заголовке кто прокомментировал, и какую задачу по какому проекту, при том чтобы в письме не сухо показывалось что написали а часть диалога, вверху тот кто написал последнее согласно его цвету как в проекте, и 2 последних коммента по этому проекту. ', NULL, NULL, 3, NULL, 2, NULL, 1, 0, '2013-03-26 11:33:40', '2013-03-26 11:33:40', '2013-03-26', 0, NULL, NULL, 108, 1, 2, 0),
(109, 1, 29, 'выбор кому идет ответ', 'Мне надо сделать чтобы при ответе на задачи, я мог указывать к кому я обращаюсь (выбирать из списка юзеров мне доступных по этому проекту) ', NULL, NULL, 3, NULL, 2, NULL, 1, 0, '2013-03-26 11:34:11', '2013-03-26 11:34:11', '2013-03-26', 0, NULL, NULL, 109, 1, 2, 0),
(110, 1, 29, 'прикрепление файлов', 'Хочу добавить возможность перетаскивать файлы прямо мышкой в браузер, а не каждый раз по одному файлу загружать, через кнопку Обзор.', NULL, NULL, 9, 27, 2, NULL, 1, 3, '2013-03-26 11:34:40', '2013-03-26 12:50:35', '2013-03-26', 0, NULL, NULL, 110, 1, 2, 0),
(111, 1, 29, 'Вывести систему с ip на новый домен', 'Привязать адрес системы на новый домен', NULL, NULL, 1, NULL, 2, NULL, 1, 0, '2013-03-26 11:57:07', '2013-03-26 11:57:07', '2013-03-26', 0, NULL, NULL, 111, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `issue_categories`
--

DROP TABLE IF EXISTS `issue_categories`;
CREATE TABLE IF NOT EXISTS `issue_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `assigned_to_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_categories_project_id` (`project_id`),
  KEY `index_issue_categories_on_assigned_to_id` (`assigned_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `issue_categories`
--


-- --------------------------------------------------------

--
-- Структура таблицы `issue_relations`
--

DROP TABLE IF EXISTS `issue_relations`;
CREATE TABLE IF NOT EXISTS `issue_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issue_from_id` int(11) NOT NULL,
  `issue_to_id` int(11) NOT NULL,
  `relation_type` varchar(255) NOT NULL DEFAULT '',
  `delay` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_issue_relations_on_issue_from_id_and_issue_to_id` (`issue_from_id`,`issue_to_id`),
  KEY `index_issue_relations_on_issue_from_id` (`issue_from_id`),
  KEY `index_issue_relations_on_issue_to_id` (`issue_to_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `issue_relations`
--


-- --------------------------------------------------------

--
-- Структура таблицы `issue_statuses`
--

DROP TABLE IF EXISTS `issue_statuses`;
CREATE TABLE IF NOT EXISTS `issue_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `default_done_ratio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_issue_statuses_on_position` (`position`),
  KEY `index_issue_statuses_on_is_closed` (`is_closed`),
  KEY `index_issue_statuses_on_is_default` (`is_default`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `issue_statuses`
--

INSERT INTO `issue_statuses` (`id`, `name`, `is_closed`, `is_default`, `position`, `default_done_ratio`) VALUES
(1, 'Ожидает ответа', 0, 1, 1, NULL),
(2, 'Ожидает ответа от Итеры', 0, 0, 2, NULL),
(3, 'Ожидает ответа разработчика', 0, 0, 3, NULL),
(5, 'Задача решена', 1, 0, 8, NULL),
(6, 'Отклонена', 1, 0, 9, NULL),
(7, 'Немедленная реакция!', 0, 0, 7, NULL),
(8, 'Ожидает ответа от Менеджера', 0, 0, 4, NULL),
(9, 'Поставлена на паузу', 0, 0, 5, NULL),
(10, 'Требует участия ЮВ', 0, 0, 6, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `journals`
--

DROP TABLE IF EXISTS `journals`;
CREATE TABLE IF NOT EXISTS `journals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journalized_id` int(11) NOT NULL DEFAULT '0',
  `journalized_type` varchar(30) NOT NULL DEFAULT '',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `notes` text,
  `created_on` datetime NOT NULL,
  `private_notes` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `journals_journalized_id` (`journalized_id`,`journalized_type`),
  KEY `index_journals_on_user_id` (`user_id`),
  KEY `index_journals_on_journalized_id` (`journalized_id`),
  KEY `index_journals_on_created_on` (`created_on`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=164 ;

--
-- Дамп данных таблицы `journals`
--

INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`, `private_notes`) VALUES
(1, 4, 'Issue', 1, 'Игорь Иванов PROJECT Manager писал(а):\r\n> Яков как там у нас тестированием, когда мы сможем его продолжить? Хочется быстрее увидеть результаты работ.\r\n\r\nтестовое сообщение', '2013-02-15 19:58:07', 0),
(5, 7, 'Issue', 1, 'надо сообщить итере о предоставлении тестового полигона\r\n', '2013-02-19 12:44:45', 0),
(6, 43, 'Issue', 1, 'Примеры:\r\nhttp://www.ittour.com.ua/documents.html      раздел "Прочее"\r\n', '2013-02-19 17:57:31', 0),
(7, 75, 'Issue', 1, '> В архиве PHP версия интеграции наших модулей. Там есть краткая инструкция по установке и настройке.\r\n> Подробной документации нет, однако на примере модулей достаточно легко разобраться как функционирует система.', '2013-02-19 18:45:12', 0),
(8, 75, 'Issue', 1, 'вот вопрос по аип\r\nwebservice_url - URL сервиса (по умолчанию http://service.ittour.com.ua/)\r\nwebservice_login - логин для подключения к сервису\r\nwebservice_password - пароль для подключения к сервису\r\nнужен логин и пароль\r\n', '2013-02-19 18:45:43', 0),
(9, 75, 'Issue', 1, '> Ответ:\r\n> webservice_url - не изменяйте\r\n> webservice_login - zavtra_v_tur\r\n> webservice_password - zavtra_v_tur_tFc8a33', '2013-02-19 18:46:53', 0),
(10, 75, 'Issue', 1, '1. Есть ли документация с описанием возможных запросов?\r\nНапример мне судя и ТЗ нужно получить список туров сгрупированный по отелям, а потом расписание въездов в отдельный отель.\r\n2. Опишите процедуру заказа тура.\r\nТипа пользователь делает заявку добавляя тур в корзину, нажимает отправить и дальше с ним связывается менеджер, предлагает другие туры если этот не подходит. А потом пользователь переходит в корзину с этим туром и нажимает забронировать?\r\nИли он добавляет туры в корзину, а по нажатию на отправить создается заявка (типа заказа) тур пропадает с корзины и появляется в истории заявок и заодно отсылается сообщение менеджеру. И тд.\r\nВ общем опишите эти процедуры. \r\n3. Нужно ли наши заявки на тур сохранять на том сервере откуда берем список туров? как вообще это будет проходить.', '2013-02-19 18:47:27', 0),
(11, 75, 'Issue', 1, '> 1.Модуль "Предложение дня"\r\nСуществует интерфейс только для отсеивания городов вылета по стране.\r\n\r\n> 2.Модуль "туры в страну из города"\r\nИнформация и интерфейс отсутствуют.\r\n\r\n> 3. модуль  "Агентства партнеры"\r\nОсновные данные есть, однако логотип рассчитан на расширение (215 х 80) и отсутствует у большинства агентств, как и расположение на карте или фото.\r\nНужно ли выбирать только проверенные агентства?\r\nИнтерфейс отсутствует.\r\n\r\n> 4. модуль "Заявки"\r\nИнтерфейс отсутствует.\r\n\r\n> 6. Модуль "Падение цен"\r\nИнформация и интерфейс отсутствуют.\r\n\r\n> 7.Модуль "экскурсионные туры"\r\nЗапрос на получение полного списка туров отсутствует, система работает только в режиме поиска с указанием фильтров. Также существует возможность получения данных фильтров.\r\n\r\n\r\n> 8.Модуль "архив туров - последнюю минуту"\r\nИнформация и интерфейс отсутствуют.\r\n\r\n> 9. Модуль "Туры"\r\nЗапрос на получение полного списка туров отсутствует, система работает только в режиме поиска с указанием фильтров. Также существует возможность получения данных фильтров.\r\n\r\n\r\n> 10. модуль "В последнюю минуту"\r\nЗапрос на получение полного списка туров отсутствует, система работает только в режиме поиска с указанием фильтров. Также существует возможность получить фильтр страна-город вылета.\r\n\r\n> 11. Получение информации об конкретном туре согласно id тура.\r\nИнтерфейс существует, однако информация по отелю, как и о транспорте не всегда присутствует.\r\nБолее подробно опишу ниже.\r\n\r\n\r\nОпишите для каких целей вам необходима полные списки туров по пунктам 7, 9, 10. Возможно мы сможем предоставить вам необходимую статистическую информацию или расширить функционал поиска.\r\n\r\nСбор необходимых данных и разработку недостающих интерфейсов необходимо согласовать с руководством IT-tour.\r\n\r\nИнтерфейс для получения полной информации о туре по:\r\n> 11. Получение информации об конкретном туре согласно id тура.\r\nЕсли использовать функционал описанный в webclient.php, то необходимо сделать SOAP запрос через функцию exec:\r\n\r\n$this->exec(''package_tour_search'', $param,$cache); для пакетных туров\r\nгде:\r\n$param - массыв параметров поиска.\r\n$cache - флаг использовать кеширование или нет, по умолчанию false.\r\n$param["requested_tours"] - должен содержать id тура, информация о котором необходима.\r\n\r\nили\r\n\r\n$this->exec(''hike_tour_price_search'', $param, $cache); для экскурсионных туров\r\nгде:\r\n$param - массыв параметров поиска.\r\n$cache - флаг использовать кеширование или нет, по умолчанию false.\r\n$param["tours"] - должен содержать id тура, информация о котором необходима.\r\n\r\nВ полученном массиве будет вся необходимая информация о туре.', '2013-02-19 18:48:51', 0),
(12, 75, 'Issue', 1, '\r\n> - в результатах поиска нету  фото отелей\r\nОписание отеля и дополнительные фотографии на данный момент фильтруются при обычном поиске.\r\nЕсли есть необходимость получать эту информацию непосредственно при общем поиске - отпишите.\r\n\r\n> - в результатах поиска нету общего количества найденных предложений\r\nВозможность получить информацию о полном кол-ве найденных туров отсутствует, однако в массиве результатов поиска присутствует массив pager, который содержит либо полное кол-во найденных туров, либо число которое можно вычислить по формуле:\r\nкол-во результатов на странице * 3 + результатов на странице * номер страницы.\r\n\r\n> - в результатах поиска нету количества доступных туров в конкретный отель\r\nИнформация отсутствует в системе.\r\n\r\n> - питание - так как выбирается с дроп меню, нужен список возможных вариантов\r\n> - цена - так как выбирается с дроп меню, нужен список возможных вариантов\r\n> - продолжительность тура - так как выбирается с дроп меню, нужен список возможных вариантов\r\nВозможность получения промежуточной информации отсутствует.\r\n\r\n3) различные модули - "в последнюю минуту", "падение цен", "предложение дня"\r\nДанные витрин доступы через обычный поиск и поддерживают стандартные фильтры. С помощью функций\r\n$search_array = $this->parse_showcase_search_url($_SERVER[''QUERY_STRING'']);\r\n$search_array = $this->prepare_showcase_search_array($search_array);\r\nможно получить представление о фильтрах для витрин.\r\nТип витрины определяется фильтром "type":\r\n42 - Горящие туры\r\n44 - Минимальные цены\r\n\r\n48 - Предложения дня\r\n66 - Экскурсионные туры\r\nВитрины 48 и 66 находятся в разработке.\r\n\r\n> 4) страница Агентства-партнеры – нет эскиза, как и откуда, брать для нее данные\r\nИнтерфейс не реализован.\r\n\r\n> 5) на странице результатов поиска есть ссылка «добавить для сравнения» - никаких данных о этой странице нету\r\n> 6) на странице результатов поиска название отеля сделано ссылкой и на странице ценовые предложения есть ссылка Подробнее об отеле – страницы с описанием отеля – нету\r\nУточните что имеется ввиду\r\n\r\n> 7) возможно ли сортировать результаты поиска (по цене, дате выезда)? Если да, то как.\r\nВсе туры по умолчанию отсортированы по цене. Сортировка по дате пока не реализована.\r\n\r\n> 8) на странице Заявка на тур есть форма для связи с менеджером, куда отправлять данные?\r\nВ внутреннюю систему переписки.\r\n', '2013-02-19 18:49:49', 0),
(13, 75, 'Issue', 1, 'Возможность получить информацию о полном кол-ве найденных туров отсутствует, однако в массиве результатов поиска присутствует массив pager, который содержит либо полное кол-во найденных туров, либо число которое можно вычислить по формуле:\r\nкол-во результатов на странице * 3 + результатов на странице * номер страницы.\r\nне совсем все таки понятно есть ли данная возможность, а формула вообще странная, если я на первой странице и у меня по 10 туров на страницу, то нашло 40 туров, а если я на 2 странице то получается 50, как так?\r\n\r\n48 - Предложения дня\r\n66 - Экскурсионные туры\r\nВитрины 48 и 66 находятся в разработке.\r\n', '2013-02-19 18:50:56', 0),
(14, 75, 'Issue', 1, '> не совсем все таки понятно есть ли данная возможность, а формула вообще странная, если я на первой странице и у меня по 10 туров на страницу, то нашло 40 туров, а если я на 2 странице то получается 50, как так?\r\nТочное кол-во туров как правило неизвестно т.к. вычисление займет много времени. Поисковый скрипт дополнительно проверяет есть ли еще туры на ближайшие 3 страницы. Такой подход позволяет показать пользователю адекватный пейджер (1, 2, 3 следующая / 1, 2, 3 ... 7, 8, 9 ) и при этом не грузить базу лишними проверками.\r\nВ системе информация отображается как "найдено более чем 40(50, 60 и тд) туров" либо, если найдено меньше, то "найдено 45 туров".\r\n\r\n\r\n\r\n> а примерно когда они будут готовы?\r\nВыдача данных уже реализовано в той или иной мере. На данный момент дорабатывается внешний вид модулей и система автоматического заполнения витрин. Существующего функционала должно быть достаточно для разработки с вашей стороны.', '2013-02-19 18:51:24', 0),
(15, 78, 'Issue', 1, '> Если запрос не содержит id страны, города и рейтинга, то поиск вернет "лучшие" предложения дня.\r\nДелаю запрос:\r\n\r\n    $params[''items_per_page''] = 10;\r\n\r\n    $params = $this->parse_showcase_params($params);\r\n\r\n    $params = $this->prepare_showcase_search_array($params);\r\n\r\n    $params[''type''] = 48;\r\n\r\n    $params[''use_uah_price''] = true;\r\n\r\n    return $this->exec(''package_tour_search'', $params, false);\r\n\r\n \r\n\r\nрезультат:\r\n\r\n‘offers’ => array(empty)\r\n\r\n \r\n\r\n\r\nвместо "лучшие" предложения дня получаю ничего, может еще что-то нужно передавать?', '2013-02-19 19:05:41', 0),
(16, 78, 'Issue', 1, '> $params = $this->parse_showcase_params($params);\r\n> $params = $this->prepare_showcase_search_array($params);\r\n\r\nМожно опустить, эти две функции нужны для преобразования параметров формы(пришедших с модуля) к параметрам используемым в вебсервисе.\r\n\r\n> $params[''type''] = 48;\r\n\r\nзаменить на $params[''showcase_type''] = 48;', '2013-02-19 19:06:55', 0),
(17, 78, 'Issue', 1, ' Модуль Предложения дня, параметр page не работает', '2013-02-19 19:07:16', 0),
(18, 78, 'Issue', 1, 'Игорь Иванов писал(а):\r\n> Модуль Предложения дня, параметр page не работает\r\n\r\nУбедитесь что в массив параметров передается параметр page в старой версии функции обработки входных параметров его не учитывали.\r\nЭта проблема решена в локальной версии, если с параметром page у вас все в порядке - сообщите, я проверю наличие других изменений, которые необходимы для корректной работы.', '2013-02-19 19:07:34', 0),
(19, 79, 'Issue', 1, '> > Речь идёт о Моём кабинете туриста, в котором он может:\r\n> > - сохранять избранные туры\r\n> > - размещать запросы\r\n> > - размещать заявки\r\n> > - отслеживать статус заявок\r\n> > - хранить архив своих заявок\r\n> > \r\n> > Лучший вариант синхронизации с агентской частью, конечно, через СРМ (там предусмотрены все эти функционалы).\r\n> > В отсутствии СРМ нужно подумать, городить ли это всё в АЧ сайта "Завтра в тур" или сделать синхронизацию с агентской частью Айти-тура.\r\n> > \r\n> > Если делать синхронизацию, можно клонировать сервис работы с запросами модулей поиска с изменениями:\r\n> > - управлением статуса\r\n> > - переписка из тела заявки\r\n> > - хранение архивов из всех "Моих кабинетов" Завтра в тур\r\n> > - бронирования нестандартных туров (размещаемых эксклюзивно на сайте)\r\n> > \r\n> > Короче, информация к размышлению.\r\n> > С СРМ все-равно придётся пересинхронизироваться', '2013-02-19 19:11:13', 0),
(20, 79, 'Issue', 1, '> > Первый этап запуска проекта.\r\n> > - Заявка прописывается в Моём кабинете туриста и в АЧ "Завтра в тур".\r\n> > - Менеджер "Завтра в тур" размещает её вручную в Айти-тур или непосредственно у туроператора\r\n> > - Менеджер Завтра в тур изменяет статусы заявки вручную\r\n> > - Менеджер завтра в тур ведёт переписку непосредственно в интерфейсе сайта "Завтра в тур" (необязательно через тело заявки, можно через сервис обмена сообщениями)\r\n> > - Менеджер Завтра в тур прикрепляет к Заявке необходимые документы в АЧ Завтра в тур\r\n> > \r\n> > Второй этап развития проекта.\r\n> > - Заявка прописывается в интерфейсе Завтра в тур\r\n> > - В Агентской части Айти-тур создаётся копия заявки, которая сразу размещается для бронирования Айти-тур (с соответствующим признаком)\r\n> > - Статусы Заявки синхронизированы с агентской частью Айти-тур\r\n> > - Документы также синхронизированы\r\n> > \r\n> > Третий этап развития проекта.\r\n> > - Копия заявки создаётся в интерфейсе СРМ (который может быть синхронизирован, как с Айти-тур, так и непосредственно с туроператорами)\r\n> > - Все синхронизации и переписки происходят через интерфейс СРМ', '2013-02-19 19:12:10', 0),
(21, 80, 'Issue', 1, '> Модуль Падение цен, не нашел в результатах значение старой цены тура, пожалуйста уточните какой это параметр.\r\n> \r\n> ну если не существует, тогда скажите близкий модуль по параметрам вставим для запуска проекта его, я не могу сдавать проект без модуля, вставим временно другой.\r\n> \r\n> подтвердите\r\n\r\n> > 1)      Модуль Падение цен(тип витрины = 44) то же самое с получением стран\r\n\r\nВозвращает false, ожидается список стран', '2013-02-19 19:14:54', 0),
(22, 82, 'Issue', 1, 'интерфейс не реализован', '2013-02-19 19:32:00', 0),
(23, 83, 'Issue', 1, 'Форма поиска\r\n\r\n- питание - так как выбирается с дроп меню, нужен список возможных вариантов\r\n\r\n- цена - то же самое\r\n\r\n- продолжительность тура - то же самое\r\n\r\nт.е. мне нужен запрос конкретный к вам, чтобы поля у нас в форме заполнялись из доступных вариантов в вашей системе.', '2013-02-19 19:36:22', 0),
(24, 84, 'Issue', 1, 'Модуль В последнюю минуту - для этого модуля выдача списка стран/городов еще не реализована\r\nid 42 - модуль "горящие туры", для нее выбор списка городов и стран осуществляется как для обычного поискового модуля из массива "package_search_form_data".\r\n\r\nДля поиска в модуле Горящие туры обязательно нужно указывать страну.', '2013-02-19 19:46:26', 0),
(25, 87, 'Issue', 1, 'что то по этому модулю никаких новостей, опишите пож. что делаем?\r\nТуры в страну из города – это обычные пакетные туры?', '2013-02-19 19:51:51', 0),
(26, 86, 'Issue', 1, '', '2013-02-19 20:24:12', 0),
(27, 85, 'Issue', 1, '', '2013-02-19 20:24:52', 0),
(28, 84, 'Issue', 1, '', '2013-02-19 20:25:09', 0),
(29, 82, 'Issue', 1, '', '2013-02-19 20:25:27', 0),
(30, 76, 'Issue', 1, '', '2013-02-19 20:25:50', 0),
(31, 88, 'Issue', 1, NULL, '2013-02-19 20:37:38', 0),
(32, 88, 'Issue', 1, 'вот 2 варианта лого от партнеров, и 1 чуть позже от меня ', '2013-02-19 20:37:38', 1),
(33, 5, 'Issue', 13, 'Было изучено три конкурента https://e-pay.by/  http://plati.tut.by/  http://www.ipay.by/ . В следствии изучения конкурентов было выявлено то что https://e-pay.by/ и  http://plati.tut.by/ по сути являются одним проектом а  вот  проект http://www.ipay.by/  вообще не является платежной системой конкурентом так как относиться к числу мобильных платежных систем, где оплата происходит при помощи денежных средств лежащих на счету мобильного оператора мтс либо лайф. \r\n  Главным конкурентом является проект https://e-pay.by/ он же и предоставляет все данные для проекта http://plati.tut.by/.Посути проект http://plati.tut.by/ , является только обверткой где начинкой выступает  https://e-pay.by/ .\r\n\r\n      Детально изучив проект   https://e-pay.by/  не было выявленно  никаких дополнительных комиссий. Ниже идет описаниие и проведения плотежей в пректе https://e-pay.by/ .\r\n\r\n                                                     Страница 1 \r\n                                         Выбираем услугу для оплаты     \r\n                                                           Страница 2\r\n                                         Вводим 16-значный номер карты\r\n                                                           Страница 3\r\n                                         Тут мы вводим данные запрашивающие при оплате. Если вы оплачиваете мобильную связь то вводите свой номер мобильного оператора, если оплачиваете коммунальные услуги то вводите номер лицевого счета.\r\n                                                           Страница 4\r\n                                          Вводим сумму оплаты. При этом сверху вводимой суммы указан номер вашей карты. В этом номере скрыто 6 цифр.\r\n                                                           Страница 5\r\n                                          Это страница показывает вам и как бы подводит итог всех тех данных введенных вами до этого.\r\n                                               Услуга:  \r\n                                               Номер:  \r\n                                               Номер карточки:  \r\n                                               Номер платежа:  \r\n                                               Сумма (бел. рублей): \r\n                                                             Страница 6\r\n                                            Вверху страница содержится информация о платеже. Ниже данные владельца карты и поля для заполнения.\r\nТип Карты:  \r\nНомер Карты:    \r\nИмя как на Карте: \r\nСрок до которого действует карта:   \r\nCVC/CVC2:    \r\nЭлектронная почта, Email:   \r\nКонтактный телефон:  \r\n Числовой Код(капча):        \r\n  \r\nБез ввода всех полей вы не сможете продолжить оплату!\r\n \r\n\r\n                                                             Страница 7\r\n                                Это завершающая страница со всеми данными.Тут вы можете получить чек при помощи нажатия на ссылку.\r\nНомер чека:  193233489  \r\nНомер транзакции:  735984769  \r\nКод авторизации:  652061  \r\nДата платежа:  20.02.2013 13:22  \r\nНомер Карты:  4xxxxxxxxxxx9982  \r\nВнутренний номер:  305101280568  \r\n  \r\n \r\n  \r\nСчет №:  880-1513668798  \r\nПолучатель платежа:  e-pay.mobile  \r\nСумма:  5000 BYR  \r\n  \r\n \r\n  \r\n     Кнопка завершить платеж \r\n                                         \r\n\r\n\r\n', '2013-02-20 13:03:50', 0),
(34, 7, 'Issue', 1, 'https://subversion.assembla.com/svn/parser-optimization-ittour/ svn репозиторий\r\nЕжедневный залив в репозиторий файлов обязателен, по коммитам будем видеть объемы сделанной работы.', '2013-02-21 16:46:10', 0),
(35, 7, 'Issue', 17, 'Выгрузил и рапаковал проект.\r\nВ скрипте /modules/ittour/jobs/import_soap_coral__allserver.php подключается конфигурационный файл /modules/ittour/def.php, в котором устанавливаются константы GENERIC_PATH и APPROOT_PATH в значения каталогов ''/cms/generic.2/'' и ''/cms/'' http://clip2net.com/s/2SvOx , но эти каталоги отсутствуют в проекте.\r\nСоответственно нет и подключаемых файлов (поиск по проекту по названию файлов также не дает результатов):\r\n<pre>\r\n    require_once(GENERIC_PATH.''config.php'');\r\n    require_once(GENERIC_PATH.''init.php'');\r\n</pre>\r\nЧто это за cms и где ее можно скачать?', '2013-02-26 11:49:54', 0),
(36, 7, 'Issue', 23, 'В проекте используется CMS собственной разработки компании "Itera Research".\r\nОбъем "движка" велик, поэтому не стали выкладывать сразу вместе с парсерами.\r\nМы надеялись "выкроить" только необходимое для запуска парсера, чтобы остальное не отвлекало от основной задачи, но сейчас решили выложить CMS целиком.\r\n\r\nВот ссылка на архив, который надо распаковать рядом с предыдущими:\r\nhttp://www.ittour.com.ua/files/itt/ittour2-2012-02-26-sources-cms.zip\r\n', '2013-02-26 17:14:20', 1),
(37, 7, 'Issue', 23, 'Есть предложение решать вопросы о недостающих файлах через скайп - мой аккаунт "andrey.turko".', '2013-02-26 17:30:23', 0),
(38, 7, 'Issue', 1, 'По многим причинам будем обсуждать основные моменты здесь, т.к. потом мне трудно понять идет ли работа по процессам.\r\nКраткие нюансы можно и по скайпу, но основные обсуждения надо обсуждать здесь.\r\nИван, для разделения задач, если они разные, создавайте новую задачу, будем обсуждать, также думаю стоит создать отдельную задачу, в данный момент насколько я понимаю вы работаете над "Коралом" - значит надо создать соответственную задачу с названием парсера (или источника парсера), в дальнейшем мне будет понятнее как распределять ресурсы и что у нас сделано и что еще нет.', '2013-02-26 18:18:35', 0),
(39, 7, 'Issue', 17, 'Есть ли более легковесный дамп, который включал бы в себя необходимую информацию для запуска приложения и его корректной работы? Имеющийся дамп накатывается очень медленно, на текущий момент накатилось около половины за сутки.', '2013-02-28 09:21:58', 0),
(40, 7, 'Issue', 23, 'Хорошо, болеее легковесный дамп выложим сегодня.\r\nЭто будет тот же объем тестовых данных, но в виде bulk-инсертов.\r\nЗагружается значительно быстрее, но требует увеличить максимальный размер стейтментов в конфиге MySQL.', '2013-02-28 11:36:40', 0),
(41, 7, 'Issue', 23, 'Вот ссылка на дамп в виде bulk-инсертов:\r\nhttp://www.ittour.com.ua/files/itt/ittour2-2012-02-22-testdb-bulk.zip\r\n\r\nЧтобы накатить этот дамп, скорее всего понадобится увеличить значение параметра "max_allowed_packet " в "my.ini".\r\n\r\nЯ у себя выставил вот так:\r\nmax_allowed_packet = 500M', '2013-02-28 16:48:10', 0),
(42, 85, 'Issue', 22, '', '2013-02-28 17:22:03', 0),
(43, 84, 'Issue', 22, 'Прошу уточнить id модуля "В последнюю минуту", который нужно использовать в запросах.\r\nА также уточнить статус выдачи списка стран/городов.', '2013-02-28 17:35:19', 0),
(44, 83, 'Issue', 22, 'вопрос к Игорю:\r\nЗдесь вопрос скорее не к программистам, нам не нужен запрос для получения типов питания, они есть в локальной базе данных. Но если их все объединить каждый с каждым получится длинный список неудобный для пользователя. Поэтому этот вопрос больше относится к стороне удобства пользования формой поиска, нежели к техническому. Это же относится к цене и продолжительности тура.', '2013-02-28 17:49:55', 0),
(45, 76, 'Issue', 22, '', '2013-02-28 17:50:56', 0),
(46, 81, 'Issue', 22, 'постраничная навигация для данного модуля работает не корректно\r\n\r\nПри поиске без фильтров, почему то показывается сразу 50 страниц.\r\nНа какую страницу я бы не перешел (к примеру 11, 20,49) туры остаются прежними, как будто я все еще на 1 странице, но сам пейджер показывает что я на нужной странице', '2013-02-28 17:59:10', 0),
(47, 80, 'Issue', 22, 'каков текущий статус?', '2013-02-28 18:01:12', 0),
(48, 78, 'Issue', 22, 'Прошу уточнить id данного модуля.\r\nПостраничная навигация отсутствует в ответе.\r\n\r\nПри запросе\r\nexec(''package_tour_search'', $params, false)\r\nсо следующими параметрами\r\n[price_from] => 0\r\n[hotel_ratings] => Array\r\n(\r\n            [0] => 7\r\n            [1] => 3\r\n            [2] => 4\r\n            [3] => 78\r\n)\r\n[items_per_page] => 15\r\n[date_from] => 2013-02-28\r\n[date_till] => 2013-03-30\r\n[adult_amount] => 2\r\n[types] => Array\r\n(\r\n            [0] => 1\r\n            [1] => 2\r\n)\r\n[showcase_type] => 48\r\n[use_uah_price] => 1\r\n\r\nВ ответе имеем следующее\r\n [pager] => Array\r\n        (\r\n            [page_param] => page\r\n            [page_size_param] => _ps\r\n            [first_page_index] => 1\r\n            [page_size] => 15\r\n            [pager_length] => 2\r\n            [title] => Записи\r\n            [items_limit] => \r\n            [labels_mode] => pages\r\n            [current_page] => 1\r\n            [current_page_size] => 15\r\n            [pages_amount] => \r\n            [pages] => \r\n            [pager_info] => \r\n            [page_no_rule] => \r\n            [items_total_amount] => \r\n            [first_item_index] => \r\n            [last_item_index] => \r\n            [pager_error] => \r\n            [additional_url_params] => Array\r\n                (\r\n                )', '2013-02-28 18:10:24', 0),
(49, 81, 'Issue', 21, 'Поправили работу постраничной навигации. Если существуют другие проблемы с данной витриной, то опишите их более подробно.', '2013-03-04 15:54:53', 0),
(50, 78, 'Issue', 21, 'Витрина "Предложения дня" имеет id 48 в нашей системе.\r\n\r\nПроверил результаты поиска с указанными вами входными параметрами (за исключением дат)\r\n\r\n@\r\n\r\n    [price_from] => 0\r\n    [items_per_page] => 15\r\n    [date_from] => 2013-03-04\r\n    [date_till] => 2013-04-03\r\n    [adult_amount] => 2\r\n    [types] => Array\r\n        (\r\n            [0] => 1\r\n            [1] => 2\r\n        )\r\n    [showcase_type] => 48\r\n    [page] => 1\r\n    [hotel_ratings] => Array\r\n        (\r\n            [0] => 7\r\n            [1] => 3\r\n            [2] => 4\r\n            [3] => 78\r\n        )\r\n\r\n@\r\n\r\nВ массиве пейджера получил следующую информацию:\r\n\r\n@\r\n\r\n            [page_param] => page\r\n            [page_size_param] => _ps\r\n            [first_page_index] => 1\r\n            [page_size] => 15\r\n            [pager_length] => 2\r\n            [title] => Записи\r\n            [items_limit] => 59\r\n            [labels_mode] => pages\r\n            [current_page] => 1\r\n            [current_page_size] => 15\r\n            [pages_amount] => \r\n            [pages] => Array\r\n                (\r\n                    [0] => Array\r\n                        (\r\n                            [text] => 1\r\n                            [type] => page\r\n                        )\r\n                    [1] => Array\r\n                        (\r\n                            [href] => /modules/ittour/webservice/service.php?page=2\r\n                            [text] => 2\r\n                            [type] => page\r\n                        )\r\n                    [2] => Array\r\n                        (\r\n                            [href] => /modules/ittour/webservice/service.php?page=3\r\n                            [text] => 3\r\n                            [type] => page\r\n                        )\r\n                    [3] => Array\r\n                        (\r\n                            [href] => /modules/ittour/webservice/service.php?page=4\r\n                            [text] => 4\r\n                            [type] => page\r\n                        )\r\n                    [4] => Array\r\n                        (\r\n                            [href] => /modules/ittour/webservice/service.php?page=2\r\n                            [text] => Следующей &gt;&gt;\r\n                            [is_nav] => 1\r\n                            [is_next] => 1\r\n                            [type] => navigation\r\n                        )\r\n                )\r\n            [pager_info] => \r\n            [page_no_rule] => \r\n            [items_total_amount] => 60\r\n            [first_item_index] => \r\n            [last_item_index] => \r\n            [pager_error] => \r\n            [additional_url_params] => Array\r\n                (\r\n                )\r\n            [current_url] => __PHP_Incomplete_Class Object\r\n                (\r\n                    [__PHP_Incomplete_Class_Name] => url_dynamic\r\n                    [elements] => Array\r\n                        (\r\n                            [scheme] => http\r\n                            [host] => service.ittour.com.ua\r\n                            [path] => /modules/ittour/webservice/service.php\r\n                        )\r\n                    [path_elements] => Array\r\n                        (\r\n                        )\r\n                    [url] => http://service.ittour.com.ua/modules/ittour/webservice/service.php\r\n                    [values] => Array\r\n                        (\r\n                        )\r\n                    [website_url] => http://service.ittour.com.ua\r\n                    [complete_url] => http://service.ittour.com.ua/modules/ittour/webservice/\r\n                    [current_url] => http://service.ittour.com.ua/modules/ittour/webservice/service.php\r\n                    [relative_url] => /modules/ittour/webservice/\r\n                    [script_name] => service.php\r\n                    [params] => \r\n                    [domain_name] => service.ittour.com.ua\r\n                    [base_url] => /modules/ittour/webservice/\r\n                    [current_url_wo_params] => http://service.ittour.com.ua/modules/ittour/webservice/service.php\r\n                    [url_wo_params] => http://service.ittour.com.ua/modules/ittour/webservice/service.php\r\n                    [current_relative_url] => /modules/ittour/webservice/service.php\r\n                    [relative_url_wo_params] => /modules/ittour/webservice/service.php\r\n                    [original_url] => http://service.ittour.com.ua/modules/ittour/webservice/service.php\r\n                )\r\n\r\n@\r\n\r\nУточните наблюдается ли сейчас у вас данная проблема.', '2013-03-04 16:11:31', 0),
(51, 97, 'Issue', 22, '', '2013-03-04 17:27:23', 0),
(52, 83, 'Issue', 22, 'похоже, за последнее время, что-то изменилось в апи данного модуля.\r\n\r\n<pre>\r\n$tour_module = array();\r\n$tour_module[''name''] = ''tour_search_'';\r\n$tour_module[''params''] = array(''custom_config'' => $tour_module[''name'']);\r\n$tour_module[''client''] = new \\webclient($tour_module[''params'']);\r\n$tour_module[''client'']->get_package_search_form_fields();\r\n$tour_module[''package_tour_default_form_value''] = $tour_module[''client'']->fill_default_package_form_value();\r\n$tour_module[''package_tour_form_field''] = $tour_module[''client'']->prepare_optimize_package_search_filtered_field(''php'', 1, array_keys($tour_module[''package_tour_default_form_value''][''country'']), array(), array_keys($tour_module[''package_tour_default_form_value''][''hotel_rating'']));\r\n</pre>\r\n\r\nвозвращает пустые массивы\r\n\r\n<pre>\r\narray (size=5)\r\n  ''country'' => \r\n    array (size=0)\r\n      empty\r\n  ''region'' => \r\n    array (size=1)\r\n      0 => \r\n        array (size=2)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все регионы'' (length=21)\r\n  ''hotel'' => \r\n    array (size=1)\r\n      0 => \r\n        array (size=2)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все отели'' (length=17)\r\n  ''departure_city'' => \r\n    array (size=1)\r\n      0 => \r\n        array (size=2)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Любой город'' (length=21)\r\n  ''period'' => int 21\r\n</pre>', '2013-03-04 20:02:38', 0),
(53, 78, 'Issue', 22, 'Спасибо, проблема с пейджером решена.\r\n\r\nНо появилась другая, ранее было указано следующее:\r\n> Список стран и городов можно получить с помощью запроса $this->exec(''get_showcase_filter'', $param, true);\r\n> где массив $param содержит тип витрины и тип запрашиваемых фильтров $param = array(''result'' => "country", ''showcase'' => 48);\r\n\r\nНекоторое время назад данный запрос работал корректно, но сейчас возвращает следующее:\r\n<pre>\r\narray (size=1)\r\n  ''country'' => \r\n    array (size=2)\r\n      0 => \r\n        array (size=3)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все страны'' (length=19)\r\n          ''flag_small'' => string '''' (length=0)\r\n      1 => \r\n        array (size=3)\r\n          ''id'' => string ''318'' (length=3)\r\n          ''name'' => string ''Турция'' (length=12)\r\n          ''flag_small'' => string ''tur.gif'' (length=7)\r\n</pre>', '2013-03-04 20:40:01', 0),
(54, 81, 'Issue', 22, 'Не помогло.\r\nЗапрос\r\n<pre>\r\n$param = Array\r\n(\r\n    [items_per_page] => 10\r\n    [is_ticket_price_included] => -1\r\n    [city_search_type] => and\r\n    [current_url] => /app_dev.php/hike_tours\r\n    [use_uah_price] => 1\r\n)\r\n$result = $this->exec(''hike_tour_search'', $param);\r\n</pre>\r\n\r\nвозвращает следующий пейджер:\r\n<pre>\r\n ''pager'' => \r\n    array (size=20)\r\n      ''page_param'' => string ''page'' (length=4)\r\n      ''page_size_param'' => string ''_ps'' (length=3)\r\n      ''first_page_index'' => int 1\r\n      ''page_size'' => int 10\r\n      ''pager_length'' => int 2\r\n      ''title'' => string ''Записи'' (length=12)\r\n      ''items_limit'' => int 501\r\n      ''labels_mode'' => string ''pages'' (length=5)\r\n      ''current_page'' => int 1\r\n      ''current_page_size'' => int 10\r\n      ''pages_amount'' => null\r\n      ''pages'' => \r\n        array (size=51)\r\n          0 => \r\n            array (size=2)\r\n              ''text'' => int 1\r\n              ''type'' => string ''page'' (length=4)\r\n          1 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=2'' (length=30)\r\n              ''text'' => int 2\r\n              ''type'' => string ''page'' (length=4)\r\n          2 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=3'' (length=30)\r\n              ''text'' => int 3\r\n              ''type'' => string ''page'' (length=4)\r\n          3 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=4'' (length=30)\r\n              ''text'' => int 4\r\n              ''type'' => string ''page'' (length=4)\r\n          4 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=5'' (length=30)\r\n              ''text'' => int 5\r\n              ''type'' => string ''page'' (length=4)\r\n          5 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=6'' (length=30)\r\n              ''text'' => int 6\r\n              ''type'' => string ''page'' (length=4)\r\n          6 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=7'' (length=30)\r\n              ''text'' => int 7\r\n              ''type'' => string ''page'' (length=4)\r\n          7 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=8'' (length=30)\r\n              ''text'' => int 8\r\n              ''type'' => string ''page'' (length=4)\r\n          8 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=9'' (length=30)\r\n              ''text'' => int 9\r\n              ''type'' => string ''page'' (length=4)\r\n          9 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=10'' (length=31)\r\n              ''text'' => int 10\r\n              ''type'' => string ''page'' (length=4)\r\n          10 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=11'' (length=31)\r\n              ''text'' => int 11\r\n              ''type'' => string ''page'' (length=4)\r\n          11 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=12'' (length=31)\r\n              ''text'' => int 12\r\n              ''type'' => string ''page'' (length=4)\r\n          12 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=13'' (length=31)\r\n              ''text'' => int 13\r\n              ''type'' => string ''page'' (length=4)\r\n          13 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=14'' (length=31)\r\n              ''text'' => int 14\r\n              ''type'' => string ''page'' (length=4)\r\n          14 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=15'' (length=31)\r\n              ''text'' => int 15\r\n              ''type'' => string ''page'' (length=4)\r\n          15 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=16'' (length=31)\r\n              ''text'' => int 16\r\n              ''type'' => string ''page'' (length=4)\r\n          16 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=17'' (length=31)\r\n              ''text'' => int 17\r\n              ''type'' => string ''page'' (length=4)\r\n          17 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=18'' (length=31)\r\n              ''text'' => int 18\r\n              ''type'' => string ''page'' (length=4)\r\n          18 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=19'' (length=31)\r\n              ''text'' => int 19\r\n              ''type'' => string ''page'' (length=4)\r\n          19 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=20'' (length=31)\r\n              ''text'' => int 20\r\n              ''type'' => string ''page'' (length=4)\r\n          20 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=21'' (length=31)\r\n              ''text'' => int 21\r\n              ''type'' => string ''page'' (length=4)\r\n          21 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=22'' (length=31)\r\n              ''text'' => int 22\r\n              ''type'' => string ''page'' (length=4)\r\n          22 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=23'' (length=31)\r\n              ''text'' => int 23\r\n              ''type'' => string ''page'' (length=4)\r\n          23 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=24'' (length=31)\r\n              ''text'' => int 24\r\n              ''type'' => string ''page'' (length=4)\r\n          24 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=25'' (length=31)\r\n              ''text'' => int 25\r\n              ''type'' => string ''page'' (length=4)\r\n          25 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=26'' (length=31)\r\n              ''text'' => int 26\r\n              ''type'' => string ''page'' (length=4)\r\n          26 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=27'' (length=31)\r\n              ''text'' => int 27\r\n              ''type'' => string ''page'' (length=4)\r\n          27 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=28'' (length=31)\r\n              ''text'' => int 28\r\n              ''type'' => string ''page'' (length=4)\r\n          28 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=29'' (length=31)\r\n              ''text'' => int 29\r\n              ''type'' => string ''page'' (length=4)\r\n          29 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=30'' (length=31)\r\n              ''text'' => int 30\r\n              ''type'' => string ''page'' (length=4)\r\n          30 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=31'' (length=31)\r\n              ''text'' => int 31\r\n              ''type'' => string ''page'' (length=4)\r\n          31 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=32'' (length=31)\r\n              ''text'' => int 32\r\n              ''type'' => string ''page'' (length=4)\r\n          32 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=33'' (length=31)\r\n              ''text'' => int 33\r\n              ''type'' => string ''page'' (length=4)\r\n          33 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=34'' (length=31)\r\n              ''text'' => int 34\r\n              ''type'' => string ''page'' (length=4)\r\n          34 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=35'' (length=31)\r\n              ''text'' => int 35\r\n              ''type'' => string ''page'' (length=4)\r\n          35 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=36'' (length=31)\r\n              ''text'' => int 36\r\n              ''type'' => string ''page'' (length=4)\r\n          36 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=37'' (length=31)\r\n              ''text'' => int 37\r\n              ''type'' => string ''page'' (length=4)\r\n          37 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=38'' (length=31)\r\n              ''text'' => int 38\r\n              ''type'' => string ''page'' (length=4)\r\n          38 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=39'' (length=31)\r\n              ''text'' => int 39\r\n              ''type'' => string ''page'' (length=4)\r\n          39 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=40'' (length=31)\r\n              ''text'' => int 40\r\n              ''type'' => string ''page'' (length=4)\r\n          40 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=41'' (length=31)\r\n              ''text'' => int 41\r\n              ''type'' => string ''page'' (length=4)\r\n          41 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=42'' (length=31)\r\n              ''text'' => int 42\r\n              ''type'' => string ''page'' (length=4)\r\n          42 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=43'' (length=31)\r\n              ''text'' => int 43\r\n              ''type'' => string ''page'' (length=4)\r\n          43 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=44'' (length=31)\r\n              ''text'' => int 44\r\n              ''type'' => string ''page'' (length=4)\r\n          44 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=45'' (length=31)\r\n              ''text'' => int 45\r\n              ''type'' => string ''page'' (length=4)\r\n          45 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=46'' (length=31)\r\n              ''text'' => int 46\r\n              ''type'' => string ''page'' (length=4)\r\n          46 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=47'' (length=31)\r\n              ''text'' => int 47\r\n              ''type'' => string ''page'' (length=4)\r\n          47 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=48'' (length=31)\r\n              ''text'' => int 48\r\n              ''type'' => string ''page'' (length=4)\r\n          48 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=49'' (length=31)\r\n              ''text'' => int 49\r\n              ''type'' => string ''page'' (length=4)\r\n          49 => \r\n            array (size=3)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=50'' (length=31)\r\n              ''text'' => int 50\r\n              ''type'' => string ''page'' (length=4)\r\n          50 => \r\n            array (size=5)\r\n              ''href'' => string ''/app_dev.php/hike_tours?page=2'' (length=30)\r\n              ''text'' => string ''Следующей &gt;&gt;'' (length=27)\r\n              ''is_nav'' => boolean true\r\n              ''is_next'' => boolean true\r\n              ''type'' => string ''navigation'' (length=10)\r\n      ''pager_info'' => null\r\n      ''page_no_rule'' => null\r\n      ''items_total_amount'' => int 501\r\n      ''first_item_index'' => null\r\n      ''last_item_index'' => null\r\n      ''pager_error'' => boolean false\r\n      ''additional_url_params'' => \r\n        array (size=0)\r\n          empty\r\n      ''current_url'' => \r\n        object(__PHP_Incomplete_Class)[326]\r\n          public ''__PHP_Incomplete_Class_Name'' => string ''url_dynamic'' (length=11)\r\n          public ''elements'' => \r\n            array (size=1)\r\n              ''path'' => string ''/app_dev.php/hike_tours'' (length=23)\r\n          public ''path_elements'' => \r\n            array (size=0)\r\n              empty\r\n          public ''url'' => string ''http:///app_dev.php/hike_tours'' (length=30)\r\n          public ''values'' => \r\n            array (size=0)\r\n              empty\r\n          public ''website_url'' => string ''http://'' (length=7)\r\n          public ''complete_url'' => string ''http:///app_dev.php/'' (length=20)\r\n          public ''current_url'' => string ''http:///app_dev.php/hike_tours'' (length=30)\r\n          public ''relative_url'' => string ''/app_dev.php/'' (length=13)\r\n          public ''script_name'' => string ''hike_tours'' (length=10)\r\n          public ''params'' => null\r\n          public ''domain_name'' => null\r\n          public ''base_url'' => string ''/app_dev.php/'' (length=13)\r\n          public ''current_url_wo_params'' => string ''http:///app_dev.php/hike_tours'' (length=30)\r\n          public ''url_wo_params'' => string ''http:///app_dev.php/hike_tours'' (length=30)\r\n          public ''current_relative_url'' => string ''/app_dev.php/hike_tours'' (length=23)\r\n          public ''relative_url_wo_params'' => string ''/app_dev.php/hike_tours'' (length=23)\r\n          public ''original_url'' => string ''http://service.ittour.com.ua/app_dev.php/hike_tours'' (length=51)\r\n</pre>', '2013-03-04 20:49:20', 0),
(55, 7, 'Issue', 23, 'Мы в Итере сейчас тоже ищем "узкие места" в работе парсеров. И у нас на данный момент есть промежуточные результаты и соображения, которыми мы бы хотели поделиться здесь.\r\n\r\nВот списочек мест со стороны MySQL, где есть потенциальная возможность "выжать" место/производительность через уменьшение размеров таблиц и индексов:\r\n\r\n(1)\r\nВ таблице "itt_tour" есть два хэша - "service_hash" и "hash" - возможно "hash" лишнее.\r\n\r\n(2)\r\nСменить "utf8" на "ascii", оставив только там, где реально нужно, а может если только "русский" и "английский", то можно обойтись однобайтовым вариантом.\r\n\r\n(3)\r\nСменить "варчары" на "fixed length chars" для таких как "хэш" (похоже, где надо, уже сделано).\r\n\r\n(4)\r\nВ таблице "itt_tour" есть "additional_hash_value" - "char(50)" - значения типа "Early".\r\n\r\n(5)\r\nУбрать "id" из самых больших таблиц.\r\n\r\n(6)\r\nПоле "currency_kn_id" в "itt_tour_price" можно сжать, если те несколько значений, которые там встречаются, заменить меньшими числами (типа 1,2,3).\r\n\r\n(7)\r\nВ таблице "itt_tour" есть несколько полей с суффиксом "kn", значения в которых не очень разнообразны, но сами числа крупные.\r\n\r\n(8)\r\nЕсть также пачка "child_ageXX" полей, которые вероятно можно сжать.\r\n\r\n(9)\r\n"operator_id" и "kind_id" в "itt_tour" - "int(11)" - возможно их стоило бы уменьшить.\r\n', '2013-03-04 21:07:02', 0);
INSERT INTO `journals` (`id`, `journalized_id`, `journalized_type`, `user_id`, `notes`, `created_on`, `private_notes`) VALUES
(56, 7, 'Issue', 23, 'И вот списочек мест со стороны PHP-кода парсеров:\r\n\r\n(1)\r\nСвойства объектов для поиска подстроки возможно надо забирать в локальную переменную (например, при поиске "автобус").\r\n\r\n(2)\r\nЧасто считается MD5 - можно ли его ускорить через видеоадаптер, убрать расчет старых хэшей, считать только один раз на запись?\r\n\r\n(3)\r\nРегулярные выражения кэшируются на поток.\r\n\r\n(4)\r\nРегулярные выражения в PHP есть двух типов - Perl и POSIX - и есть человек, у которого 17000 рег. выражений в проекте, который заявляет, что на разных выражениях выигрывает в несколько раз то один движок, то другой.\r\n\r\n(5)\r\nБольшие XML-файлы надо обрабатывать потоковым парсером (XMLReader на сайте IBM называется лучшим выбором).\r\n\r\nXML для PHP-разработчиков: Часть 2. Расширенные методы парсинга XML\r\nhttp://www.ibm.com/developerworks/ru/library/x-xmlphp2/index.html\r\n<<\r\nГлавная причина использования парсера SAX вместо XMLReader заключается в том,\r\nчто парсер SAX иногда более эффективен и обычно лучше знаком.\r\nВажный недостаток - код для парсера SAX получается сложнее,\r\nи его труднее писать, чем для XMLReader.\r\n\r\n...потоковый парсер XMLReader, который легче и быстрее, чем SAX, предпочтителен для очень больших документов.\r\n>>\r\n\r\nУже вроде бы используется нечто (Simple API for XML (SAX) - xml_parser_create), но содержание ему передается одним куском, а не порциями.\r\n(\\ittour2\\modules\\ittour\\generic\\custom_import_tours_xml.php)\r\n<<\r\n  function parse($content) {\r\n  ... \r\n    $this->parser = xml_parser_create();\r\n  ...\r\n    xml_set_object($this->parser, $this);\r\n    xml_set_element_handler($this->parser, ''start_element'', ''end_element'');\r\n  ...\r\n    try {\r\n      if (!xml_parse($this->parser, $content)) {\r\n  ...\r\n>>\r\n\r\n(6)\r\nСодержание для обработки скачивается в локальную переменную и потом записывается во временный файл.\r\n(\\ittour2\\modules\\ittour\\generic\\custom_import.php)\r\n<<\r\n  function load_queue_item($row) {\r\n  ...\r\n                  if (eregi(''([^?]+)[?]([^;]+)[;]POST'', $row[''external_url''], $matches)) {\r\n                    $content = $this->requestPOST($matches[1], $matches[2], $row[''is_live''], $this->curl_options);\r\n                  } else {\r\n                    $content = $this->requestGET($row[''external_url''], $row[''is_live''], $this->curl_options);\r\n                  }   \r\n              if ($content) {\r\n                save_to_file($temporary_file, $content);\r\n>>\r\n\r\n(7)\r\nОбработанные файлы класть в архив упакованными (Юра обмолвился, что делал не раз это вручную).\r\n\r\n(8)\r\nВ "itt_queue" есть поле "try_parse_count" - встречаются значения порядка 71, 104, 145.\r\n\r\nМожет следует как-то сократить количество не успешных попыток?\r\nТакое количество попыток допустимо возможно, если серверу заняться больше нечем, а так пусть паузу что ли наращивает или после 10 попыток признает недоступными...\r\n\r\n(9)\r\nВ нескольких файлах подключается "xmlparser.php", который похоже не используется нигде.\r\n<<\r\n\\ittour2\\modules\\ittour\\generic\\custom_import.php\r\n\\ittour2\\modules\\ittour\\generic\\custom_validator.php\r\n\\ittour2\\modules\\ittour\\generic\\custom_validator_extended.php\r\n\r\nrequire_once(GENERIC_PATH.''formats/xmlparser.php'');\r\n>>\r\n\r\n(10)\r\nЗлоупотребление "file_size" (ну и "file_exists" в принципе тоже)\r\n(при выключенном кэшировании этих операций) -\r\nразмер одного и того же файла необоснованно обсчитывается пару раз -\r\nна 40 элементах очереди отнимает лишнюю секунду,\r\nчто на сервере с высокой нагрузкой может иметь больше последствий.\r\n\r\n(11)\r\nТяжелый запрос на выборку нового элемента очереди.\r\n"\\modules\\ittour\\generic\\custom_import.php&line=947"\r\n<<\r\n...\r\n922     while ($row = SPFactory::dbs(''itt_queue'')\r\n923                     ->row("SELECT que.*\r\n924                              FROM itt_queue que USE INDEX (idx_queue_complex1)\r\n...\r\n>>\r\n\r\n(12)\r\nБудет ли ограничен запрос выборкой только одной строки, надо ли писать "LIMIT 1"?\r\nSPFactory::dbs(''itt_queue'')->row("SELECT que.* ..."\r\n\r\nИзмерение скорости работы запроса из "itt_queue" - выбор элемента для обработки с "limit 1" и без - показало, что из полутора миллионов записей на "itt6" селектит 60тыс. записей примерно за 13 сек, а с лимитом за секунду.\r\n\r\nИ выходит, что "LIMIT 1" таки надо писать, чтобы облегчить выборку серверу, чтобы не нагружать сеть трафиком и не заполнять память клиентской библиотеки не востребованными данными.\r\n\r\n<<\r\nБуферизация MySQL запросов в PHP\r\nhttp://www.ljpoisk.ru/archive/1011018.html\r\n\r\nPHP: mysql_unbuffered_query - Manual\r\nhttp://www.php.net/manual/en/function.mysql-unbuffered-query.php\r\n\r\nmysql_unbuffered_query() sends the SQL query query to MySQL\r\nwithout automatically fetching and buffering the result rows as mysql_query() does.\r\n\r\nThis saves a considerable amount of memory with SQL queries\r\nthat produce large result sets,\r\nand you can start working on the result set immediately\r\nafter the first row has been retrieved\r\nas you don''t have to wait until the complete SQL query has been performed.\r\nTo use mysql_unbuffered_query() while multiple database connections are open,\r\nyou must specify the optional parameter link_identifier\r\nto identify which connection you want to use.\r\n\r\nThe benefits of mysql_unbuffered_query() come at a cost:\r\nyou cannot use mysql_num_rows() and mysql_data_seek()\r\non a result set returned from mysql_unbuffered_query(),\r\nuntil all rows are fetched.\r\nYou also have to fetch all result rows from an unbuffered SQL query\r\nbefore you can send a new SQL query to MySQL,\r\nusing the same link_identifier.\r\n>>\r\n\r\n(13)\r\nДокументация PHP настоятельно рекомендует перейти на "mysqli extension" вместо устаревшего "mysql".\r\nhttp://www.php.net/manual/en/mysqli.overview.php\r\n- Object-oriented interface\r\n- Support for Prepared Statements\r\n- Support for Transactions\r\n- Enhanced debugging capabilities\r\n\r\nВероятно, что "Prepared Statements" могли бы нам помочь.\r\n\r\n(14)\r\nВ интернете пишут, что некий кэш в MySQL сбрасывается при каждом изменении данных в таблице. Нужно уточнить, не рассчитываем ли мы в коде на то, что он не сбрасывается...\r\n\r\n(15)\r\nНе следует писать звездочку в запросах - вот в "itt_queue" много полей, но фетчить их все вроде не надо.\r\n\r\n(16)\r\nЧасто используется "utils.php -> function safe(...)", но, например, в "data_manager.php -> function table(...)" без него можно было бы обойтись.\r\n\r\nА так, при запуске "jobs\\import_piligrim.php" этот "safe" оказывается самой ёмкой по времени операцией - " data_manager->table" вызывается часто и набегает 1 секунда времени только на "safe".\r\n"\\cms\\generic.2\\utils\\utils.php&line=47"\r\n<<\r\nfunction safe($array, $name, $default = null) { \r\nreturn\r\n(\r\n   is_array($array)\r\n&& strlen($name)\r\n&& array_key_exists($name, $array)\r\n&& (\r\n      $array[$name]\r\n   || (\r\n          is_scalar($array[$name])\r\n      and strlen   ($array[$name])\r\n      )\r\n   )\r\n)\r\n? $array[$name]\r\n: $default;\r\n}\r\n>>\r\n\r\n(17)\r\nУзкое место ещё похоже в "sql_placeholder_ex" и "sql_compile_placeholder".\r\n"\\cms\\generic.2\\utils\\utils.php&line=1203"\r\n"\\cms\\generic.2\\utils\\utils.php&line=1159"\r\n\r\n(18)\r\nЕще одно узкое место - "db->support" - 7 тысяч вызовов тратят 4 секунды - в т.ч. из-за "safe".\r\n"cms\\generic.2\\db\\db.php&line=524"\r\n\r\nНужно разложить "db->support" значения в локальные проперти при ините и брать значения оттуда, а не из коллекции. Или писать собственные безусловные имплементации в каждом провайдере с учетом их собственных фич (запрос плана выполнения и прочее).', '2013-03-04 21:23:11', 0),
(57, 95, 'Issue', 1, 'Сергей Wing писал(а):\r\n> нету описания, как должен работать данный модуль\r\n\r\nЭто по сути не модуль, это взаимодействие с сервисом (marva.com.ua)\r\nтестовый доступ в аккаунт, тупо размещение кнопки по которой идет вызов скрипта, ну думаю вы все и так понимаете.\r\n\r\nhtml код интеграции с сервисом (Установите этот код там, где желаете видеть изображение кнопки вызова оператора.)\r\n\r\n@<script type=''text/javascript''>//<![CDATA[\r\nif(typeof(marva)==''undefined''||marva==null){marva={};}if(!marva.load_async){marva.load_async=function(src,callback){if(callback==''undefined''||callback==null){callback=function(){};}var sc=document.createElement("script");sc.charset="windows-1251";sc.type="text/javascript";sc.setAttribute("async","true");sc.src=(document.location.protocol==''https:''?"https:":"http:")+"//"+src;if(sc.readyState){sc.onreadystatechange=function(){if(sc.readyState=="loaded"||sc.readyState=="complete"){sc.onreadystatechange=null;callback();}}}else{sc.onload=function(){callback();};}window.onload=new function(){document.documentElement.firstChild.appendChild(sc);};}}\r\nmarva.load_async("account.marva.ru/js/marva_img.asp?l=zavtrtur",function(){if(typeof reloadImg==''function''){reloadImg(document.getElementById("marvaButton"));}});\r\n//]]>\r\n</script>\r\n<a href="javascript:void(0);" onclick="var newWin = window.open(''http://account.marva.ru/request.php?l=zavtrtur&x=1004000&deptid=65942&page=''+ escape(location.toString()) +''&unique=''+ new Date().getTime() +''&refer=''+ escape(document.referrer), ''marva_marva'', ''menubar=no,resizable=0,directories=no,location=no,toolbar=no,status=no,scrollbars=0,screenX=50,screenY=100,width=450,height=360''); if (newWin) newWin.focus();"><img style="border:0" id="marvaButton" src="http://account.marva.ru/image.asp?l=zavtrtur&x=1004000&deptid=65942" alt="Вызов консультанта"/></a>\r\n@\r\n\r\nТех поддержка, если будет необходимость, skype: alex88641 Александр\r\n\r\nвход на Марву\r\nzavtrtur\r\npasszavtrtur', '2013-03-05 13:14:42', 0),
(58, 95, 'Issue', 1, 'Кстати, изменить на свое оформление кнопку можно в их панели управления.', '2013-03-05 20:19:02', 0),
(59, 95, 'Issue', 1, '', '2013-03-05 20:49:33', 0),
(60, 97, 'Issue', 1, '', '2013-03-05 20:50:59', 0),
(61, 94, 'Issue', 1, '', '2013-03-05 20:51:28', 0),
(62, 92, 'Issue', 1, '', '2013-03-05 23:51:53', 0),
(63, 7, 'Issue', 1, '', '2013-03-05 23:52:35', 0),
(64, 84, 'Issue', 1, '', '2013-03-06 00:20:25', 0),
(65, 78, 'Issue', 1, '', '2013-03-06 00:21:12', 0),
(66, 87, 'Issue', 1, '', '2013-03-06 00:22:19', 0),
(67, 80, 'Issue', 1, '', '2013-03-06 00:22:56', 0),
(68, 96, 'Issue', 1, 'Шаблон - это подписка на туры с заданными параметрами\r\nМожно взять любую комбинацию', '2013-03-06 00:52:45', 0),
(69, 93, 'Issue', 1, '', '2013-03-06 00:53:22', 0),
(70, 86, 'Issue', 1, 'нет описания задачи', '2013-03-06 00:54:07', 0),
(71, 79, 'Issue', 1, 'Дмитрий, расскажите пож. поменялось ли что либо по этому вопросу?\r\nЭтой информации не достаточно нам, как получить ответы?', '2013-03-06 00:57:57', 0),
(72, 83, 'Issue', 1, '', '2013-03-06 00:58:32', 0),
(73, 81, 'Issue', 1, '', '2013-03-06 00:59:17', 0),
(74, 77, 'Issue', 1, '', '2013-03-06 00:59:53', 0),
(75, 97, 'Issue', 1, '', '2013-03-06 01:00:40', 0),
(76, 95, 'Issue', 1, '', '2013-03-06 01:01:00', 0),
(77, 94, 'Issue', 1, '', '2013-03-06 01:01:53', 0),
(78, 80, 'Issue', 1, 'Сергей Томилкин попросил "Предоставьте массив параметров запрос."\r\n', '2013-03-06 01:19:53', 0),
(79, 75, 'Issue', 1, '', '2013-03-06 01:21:12', 0),
(80, 77, 'Issue', 1, 'Дмитрий обозначьте пожалуйста для разработчика, и в том числе для меня, основные понятия "АгЧ" и "АЧ", чтобы мы не путались в будущем в определениях.', '2013-03-06 01:25:32', 0),
(81, 92, 'Issue', 17, 'Пока работаю с импортом Coral. В задаче описано, что необходимо снизить нагрузку на sql, поэтому пока не занимался поиском вариантов оптимизации методов и используемых функций.\r\n\r\nМожно уменьшить нагрузку на mysql, если при добавлении данных использовать bulk insert запросы, т.е вставлять сразу по несколько туров (хотя при этом придется вычислять id вставленных туров вручную, что может иногда давать сбои).\r\nЧтобы не вычислять id добавленных туров можно одним запросом вставлять только связанные данные с туром (transport, hotel, insurance, visa и transfer) вместо инсертов на каждую запись:\r\n<pre>\r\nforeach($transports_ready as $transport) {              \r\n    $transport[''data''][''tour_id'']   = $tour_id;                \r\n    SPFactory::dbs(''itt_tour'')->insert( ''itt_tour_transport'', $transport[''data'']);                \r\n}\r\n</pre>\r\n\r\nВ custom_import_tours поиск туров осуществляется два раза по одинаковых хешам $service_hash и $old_service_hash, одну выборку и генерацию хеша можно удалить.\r\n$service_hash     = md5(ltrim($hotel_code.$transport_code.$service_code.$this->additional_tour_hash, ''|''));\r\n$old_service_hash = md5(ltrim($hotel_code.$transport_code.$service_code.$this->additional_tour_hash, ''|''));\r\nТакже $old_service_hash_transport_revert, $service_hash_transport_revert и $old2_service_hash_transport_revert используются только для поиска дублей ТурТесса, соответственно и хеши можно генерировать только в случае работы с ТурТесс.\r\n\r\nСобственно поиск дублей туров происходит по следующим параметрам adult_amount, child_amount и service_hash http://clip2net.com/s/4Hfgfk . Можно при импорте не проверять на уникальность туры и сохранять в массив перечисленные параметры по каждому добавленному туру. А уже после импорта всех туров выполнить один большой запрос на поиск их дублей и удалить их.\r\n\r\n> 5. "Большие XML-файлы надо обрабатывать потоковым парсером (XMLReader на сайте IBM называется лучшим выбором)."\r\n> 6. "Содержание для обработки скачивается в локальную переменную и потом записывается во временный файл."\r\nДля разбора xml в import_coral классе уже используется библиотека SAX (изменять на XMLReader не вижу смысла, т.к. выиграша в производительности от этого не ожидается, а код для SAX уже написан и работает).\r\nМожно при скачивании установить параметры CUrl на сохранение контента сразу в файл, если это архив при помощи shell комманд распаковать его и из готового файла порционно вытягивать данные для парсинга.\r\n\r\nИ еще, зачем каждый раз загружаются классификаторы (в методе import_coral::get_classifiers())? (AccList, CountryList, HotelCategoryList, MealList, RoomList, SeatClassList и другие). Насколько я понимаю информация по ним не должна часто изменяться, возможно их стоит сохранять локально и обновлять по необходимости?\r\n\r\nКак и писал Andrey, также ускорит время выолнения парсера ограничение попыток скачать данные для импорта (тот же sleep($this->sleep*$tries);)\r\n> "В "itt_queue" есть поле "try_parse_count" - встречаются значения порядка 71, 104, 145."\r\nи оптимизация уже существующих запросов (limit, выборка не всех полей).\r\nПараллельно можно оптимизировать сами таблицы базы данных:\r\n> "списк мест со стороны MySQL, где есть потенциальная возможность "выжать" место/производительность через уменьшение размеров таблиц и индексов"\r\nЕсли с Вашей стороны будет оптимизированна база данных прошу выкладывать изменения в общий доступ (в svn в кажестве миграций или просто перечислить sql запросы в редмайне)', '2013-03-06 12:34:07', 0),
(82, 7, 'Issue', 17, 'Andrey, согласен с Вами, хотя некоторые правки могут быть не совсем оправданы с точки зрения время_внедрения/увеличение_производительности.\r\nПока рассматривал только ипорт Coral, поэтому свои предложения по оптимизации добавил в соответствующую задачу #92', '2013-03-06 12:34:58', 0),
(83, 80, 'Issue', 22, 'как было указано ранее\r\n\r\n> Список стран и городов можно получить с помощью запроса $this->exec(''get_showcase_filter'', $param, true);\r\n> где массив $param содержит тип витрины и тип запрашиваемых фильтров $param = array(''result'' => "country", ''showcase'' => 48);\r\n\r\nиспользуя этот запрос\r\n<pre>\r\n    $tour_module[''client'']->exec(''get_showcase_filter'', array(\r\n      ''result'' => ''country'',\r\n      ''showcase'' => 44,\r\n    ), false);\r\n</pre>\r\n\r\nранее возвращался просто false, а сейчас\r\n<pre>\r\narray (size=1)\r\n  ''country'' => \r\n    array (size=2)\r\n      0 => \r\n        array (size=3)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все страны'' (length=19)\r\n          ''flag_small'' => string '''' (length=0)\r\n      1 => \r\n        array (size=3)\r\n          ''id'' => string ''318'' (length=3)\r\n          ''name'' => string ''Турция'' (length=12)\r\n          ''flag_small'' => string ''tur.gif'' (length=7)\r\n</pre>\r\n\r\nКак видите проблема та же, что и для модуля Предложения дня', '2013-03-06 12:39:34', 0),
(84, 79, 'Issue', 20, 'Уточните вопрос. Я вижу три этапа. Вы готовы перейти ко второму?', '2013-03-06 13:44:16', 0),
(85, 77, 'Issue', 20, 'АгЧ - Агентская часть. Фронт энд в котором работают агенства.\r\n\r\nАЧ - Админ часть. Бекэнд в котором работает Айтитур и другие управляющие компании', '2013-03-06 13:46:28', 0),
(86, 91, 'Issue', 1, 'вопрос закрыт', '2013-03-06 13:49:33', 0),
(87, 79, 'Issue', 20, '', '2013-03-06 13:55:32', 0),
(88, 77, 'Issue', 20, '', '2013-03-06 13:55:48', 0),
(89, 84, 'Issue', 21, 'Модуль находится в разработке. Ориентировочно будет гово в начале след. недели. Как только будет готова серверная часть мы предоставим вам id для поисковых запросов.', '2013-03-06 14:06:08', 0),
(90, 92, 'Issue', 17, 'В метод custom_import_tours::save_offer() по многу раз (50-100) попадают туры с одинаковым составным параметром $old_service_hash, соответственно по нему находятся в БД одинаковые туры ($tour_id). Добавлю в класс переменную, которая будет хранить последнее соответствие $old_service_hash => $tour_id, это сократит временные затраты на поиск похожего тура в БД.', '2013-03-06 18:21:44', 0),
(91, 97, 'Issue', 1, 'в данный момент не актуально, пропускаем и ставим на паузу.', '2013-03-06 18:40:25', 0),
(92, 80, 'Issue', 21, 'Проблема в том что должно возвращать "false" ?\r\nПосле недавних изменений get_showcase_filter возвращает массив ''country'' который содержит доступные страны, появилась возможность одним запросом получать страны, регионы и города вылета, для этого вместо ''result'' => ''country'', нужно указать список ''result'' => array(''country'',''rating'',''city'')\r\nЕсли необходимо чтобы возвращало результат "false" в случае когда нет доступных стран/рейтирнгов/городов, то мы добавим соответствующий параметр.', '2013-03-06 18:46:44', 0),
(93, 78, 'Issue', 21, 'проблема решается в рамках http://195.16.88.5:3000/issues/80', '2013-03-06 18:47:19', 0),
(94, 81, 'Issue', 21, 'Проблема решается.', '2013-03-06 18:49:50', 0),
(95, 80, 'Issue', 22, '> Проблема в том что должно возвращать "false" ?\r\n\r\nнет, проблема в том что массив доступных стран не возвращается\r\nдо изменения возвращался false, сейчас только этот массив\r\n\r\n<pre>\r\narray (size=1)\r\n  ''country'' => \r\n    array (size=2)\r\n      0 => \r\n        array (size=3)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все страны'' (length=19)\r\n          ''flag_small'' => string '''' (length=0)\r\n      1 => \r\n        array (size=3)\r\n          ''id'' => string ''318'' (length=3)\r\n          ''name'' => string ''Турция'' (length=12)\r\n          ''flag_small'' => string ''tur.gif'' (length=7)\r\n</pre>\r\n\r\nожидается массив всех доступных стран, а возвращается только 1 страна - Турция', '2013-03-06 19:10:53', 0),
(96, 7, 'Issue', 1, 'Относится к разработчикам: Для каждого парсера создаем новую задачу, в котрой и обсуждаем его особенности, и финальную производительность на выходе. 1 задача=1парсер. Здесь общие обсуждения.', '2013-03-06 19:59:57', 0),
(97, 7, 'Issue', 1, '', '2013-03-06 20:00:30', 0),
(98, 92, 'Issue', 17, 'Добавил сохранение хешей и id последнего тура в классе modules/ittour/generic/custom_import_tours.php для последующего вычисления id импортируемого тура.\r\nТестировал только работу xml парсера и сохранение тура на 1000 импортируемых записей (замеры времени до и после вызова функции xml_parse($this->parser, $content)). До изменений среднее время выполнения локально 77 секунд, после изменений 69, т.е. ускорение работы xml парсера ~ 10%. Среднее время выполнения метода custom_import_tours::save_offer() при импорте уже существуещего в БД тура изменилось с 0.059с на 0.035с. \r\nОптимизирован родительский класс импорта туров, поэтому производительность увеличится и у парсеров других туроператоров.', '2013-03-07 15:11:56', 0),
(99, 92, 'Issue', 17, 'Ivan Koshelev писал(а):\r\n> И еще, зачем каждый раз загружаются классификаторы (в методе import_coral::get_classifiers())? (AccList, CountryList, HotelCategoryList, MealList, RoomList, SeatClassList и другие). Насколько я понимаю информация по ним не должна часто изменяться, возможно их стоит сохранять локально и обновлять по необходимости?\r\n\r\n', '2013-03-07 16:21:13', 0),
(100, 92, 'Issue', 20, '>В метод custom_import_tours::save_offer() по многу раз (50-100) попадают туры с одинаковым составным параметром $old_service_hash, соответственно по нему находятся в БД одинаковые туры ($tour_id). Добавлю в класс переменную, которая будет хранить последнее соответствие $old_service_hash => $tour_id, это сократит временные затраты на поиск похожего тура в БД.\r\n\r\n- Запрос к базе кешируется (memcache), не нужно добавлять никаких переменных\r\n- Просто хранить $old_service_hash => $tour_id нельзя, поскольку туры проверяются еще по кол-ву взрослых, детей и т.п. наряду с хешом\r\n- $old_service_hash сейчас выводится из обращения, поскольку туров со старым алгоритмом расчета не должно остаться, соотв. эта часть кода будет удалена после завершения проверки\r\n\r\n>И еще, зачем каждый раз загружаются классификаторы (в методе import_coral::get_classifiers())? (AccList, CountryList, HotelCategoryList, MealList, RoomList, SeatClassList и другие). Насколько я понимаю информация по ним не должна часто изменяться, возможно их стоит сохранять локально и обновлять по необходимости?\r\n\r\n- Загружается не "каждый раз", а раз на пачку СПО подготовленных к обработке (стоящих в очереди)\r\n- Нет достоверной возможности определить когда наступает "необходимость" обновления справочников (классификаторов)\r\n', '2013-03-07 16:56:10', 0),
(101, 84, 'Issue', 21, 'Серверная часть витрины реализована. Получить туры в последнюю минуту можно использовав id 90 в качестви типа витрины.\r\nФиьотны для данной витрины не предусмотрены т.к. кол-во туров в ней будет минимально (5-20)', '2013-03-07 17:59:02', 0),
(102, 92, 'Issue', 17, 'Для замеров производительности необходимо эталонное время выполнения скрипта импорта coral туров. В связи с тем, что каждый раз может загружаться неизвестное число xml документов и при этом обновляться/добавляться разное число туров (локально количество доходило до 7 000 000) - довольно трудно понять, что является более приоритетным для оптимизации. Хотелось бы узнать общее время выполнения скрипта, сколько xml докуметов было загружено (в идеале также число попыток загрузки, для того, чтобы из времени выполнения скрипта исключить время выполнения функций sleep), сколько было обновлено/добавлено новых туров, сколько времени ушло на загрузку классификаторов.', '2013-03-12 09:40:15', 0),
(103, 92, 'Issue', 20, '1. "Приоритет оптимизации". Мы не являемся постановщиками задачи. Я так понимаю задачу вам ставил Айтитур\\ЮВ. Поэтому не могу ответить на вопрос. \r\n\r\nМы готовы консультировать, но полномочия по управлению процессом нам не передавали.\r\n\r\n2. Насчет данных о времени выполнения. Не пойму вопроса, разве у вас нет тестовых СПО \\ Данных и возможности самостоятельно это время замерять?', '2013-03-12 10:50:24', 0),
(104, 92, 'Issue', 17, 'Дмитрий Корнилич писал(а):\r\n> 2. Насчет данных о времени выполнения. Не пойму вопроса, разве у вас нет тестовых СПО \\ Данных и возможности самостоятельно это время замерять?\r\n\r\nЧто такое СПО - Special Offer? Нам предоставили код проекта и дамп базы данных. Вопрос возник в связи с тем, что при выполнении скрипта каждый раз обрабатывается разное число xml документов и обновленных/добавленных туров. Может импортироваться от нескольких тысяч до нескольких миллионов туров (возможно из-за не актуальности БД), в последнем случае будет существенный выигрыш во времени выполнения скрипта, если метод save_offer() оптимизировать даже на несколько милисекунд. В слечае, если импортируется не много туров, тогда в первую очередь следует заняться оптимизацией обработки очередей и подготовкой xml документов.', '2013-03-12 11:15:11', 0),
(105, 92, 'Issue', 20, 'СПО (Спец Предложение Оператора) - Файл с турами. В общем случае, оператор в каждом новом СПО выкладывает ВСЕ доступные у него туры.\r\n\r\nЗадача парсера добавить новые и обновить существующие туры, при этом не допустив дублей в системе. Для проверки дублей вычисляются HASH. \r\n\r\nК примеру, если есть два СПО содержащими одинаковые туры, то первый будет грузится долго (т.к. insert), а второй быстрее, т.к. туры уже существуют (только поисковые select по hash).\r\n\r\nТ.о.\r\n\r\n- "Каждый раз разное число xml документов". Сложно сказать определенно, т.к. не знаю как именно проводится тестирование, но может зависить от разных вещей: устаревшие СПО, правила импорта туров, наличие СПО на ФТП оператора и т.п.\r\n\r\n- "Может импортироваться от нескольких тысяч до миллионов". Опять таки, это может зависеть от размера СПО (сколько в нем туров) и от того что вы понимаете под "импортироваться" - вставки в БД \\ обновленные туры?\r\n\r\nДля информации - Мы под "импортом" СПО, понимаем все возможные процессы происходящие в процессе обработки СПО: пропуск устаревших туров, обработку правил импорта, добавление новых, обновление существующих и т.п.\r\n\r\nТ.е. возможна ситуация, что СПО "проимпортированно", но ни один тур не добавлен или обновлен - это случай когда поступившие СПО идентичны, пусты, либо туры пропущены по какому-то правилу.\r\n\r\nХарактер данных таков, что на ближайшие месяц идет ОЧЕНЬ много обновлений туров (т.е. апдейты), а на более отдаленные  периоды идут в основном вставки\r\n\r\n- В основном импортируется очень много туров. "Маленькие" СПО бывают только у единичных операторов (Натали), Корал к ним не относится', '2013-03-12 11:39:00', 0),
(106, 92, 'Issue', 17, 'Постараюсь найти оптимальный спо для тестирования и на нем проверять прирост производительности. Пока замусь следующими шагами по оптимизации:\r\n\r\n1. Сохранять не каждый тур по отдельности (метод custom_import_tours::save_offer()), а несколько сразу в одной транзакции. Т.е. добавить массив, в который коллекционировать данные по турам (offer,hotels,transports,services и prices), при накоплении определенного количества записей вызывать метод parse, в котором в рамках одной транзакции в цикле будут сохранены/обновлены все накопившиеся записи.\r\n @+@ на движке InnoDb множественные инсерты в одной транзакции сократит время работы mysql\r\n @-@ хранение данных по 10-100 турам в памяти до вставки, но это не большие объемы данных\r\n\r\n2. При загрузке классификаторов можно добавлять все новые записи одним запросом.\r\nДля этого по классификатору найти все существующие записи одним запросом (operator_id и entity_name - для классификатора одмнаковые, искать по id IN (), наколько я понял name в select запросе не обязательно). После сравнения результата выборки и массива загруженных классификаторов - все не существующие данные вставить одним sql запросом.\r\n @+@ одна выборка и две вставки для каждого классификатора (в таблицу самого классификатора и таблицу itt_known_name)\r\n @-@ необходимо хранить в памяти дополнительный массив значений классификатора на время выполнения функции import_coral::handle_classifier()\r\n', '2013-03-12 12:15:40', 0),
(107, 92, 'Issue', 1, 'Что касаемо постановки задачи, все задачи ставлю я, как менеджер проектов, курирующий задачу.\r\nПо поводу эффективности, делаем пока выводы, требуется немного времени.\r\n', '2013-03-12 22:38:36', 0),
(108, 83, 'Issue', 21, 'Очистите кеши и проверьте сейчас (если данная проблема пропала, то проверьте также подобные проблемы из других задачь)', '2013-03-13 14:38:06', 0),
(109, 83, 'Issue', 20, '', '2013-03-13 14:40:30', 0),
(110, 84, 'Issue', 22, 'Уточните пожалуйста, правильно ли я вас понял.\r\nК данному модуля можно использовать только 1 запрос, без передачи каких либо параметров, кроме id модуля.\r\n\r\n<pre>\r\n$params[''showcase_type''] = 90;\r\n$this->exec(''package_tour_search'', $params, false);\r\n</pre>\r\n\r\nУ данного модуля нету пейджера и невозможно получить список стран, потому что он всегда содержит маленькое количество туров.', '2013-03-13 15:41:52', 0),
(111, 84, 'Issue', 21, 'Да, хотя включить пейджер, при необходимости, можно.', '2013-03-13 15:48:09', 0),
(112, 84, 'Issue', 22, 'Включите пожалуйста, у нас на странице планируется показывать 6 туров, а если их может быть до 20, то пейджер был бы очень кстати', '2013-03-13 16:53:25', 0),
(113, 84, 'Issue', 22, '', '2013-03-13 16:53:42', 0),
(114, 84, 'Issue', 20, 'Зачем вам в ситуации с 20-ю турами дергать сервер за очередной порцией из 5-ти туров?\r\n\r\nСкачивайте все, сохраняйте и организовывайте пейджер локально.', '2013-03-13 17:15:28', 0),
(115, 92, 'Issue', 17, 'Добавил сохранение пачек туров в одной транзакции (пачка по умолчанию содержит 1000 записей туров, переменная @import_coral::transaction_offers_count@). Также добавил проверку на существование элементов массива (если нет указанного индекса в массвие php подтормаживает на этой строке).\r\n\r\nТестировал импорт 1000 туров на одном и том же spo (убрал проверку актуальности даты тура чтобы не скачивать каждый раз новые spo).\r\nДля тестирования в методе @custom_import::go()@ вместо цикла вызываю только один раз метод @parse_queue()@, в котором беру контент из локального spo @$content=file_get_contents(''140_33_02_2013_6.xml'');@. Также в классе import_coral добавил счетчик обработанных туров и завершаю скрипт после обработке 1000 записей (в методе @start_element()@ после вызова @$this->save_offer();@ добавил проверку).\r\n\r\nПри тестировании на 4 ревизии (не оптимизированная) время работы SAX парсера на 1000 записей: ~500 секунд (замер времени перед @xml_parse($this->parser, $content)@ и при прерывании скрипта после импорта 1000 записей), при тестировании на 7 ревизии время выполнения: ~15 секунд.\r\n\r\nВозможно такой прирост производительности вызван не соответствием данных в spo и классификаторах (в основном выиграно время за счет проверок на существование элеметов массивов классификаторов). Если есть возможность - можно протестировать на боевом сервере, изменению подверглись два файла:\r\n<pre>\r\nwww/modules/ittour/generic/import_coral.php\r\nwww/modules/ittour/generic/custom_import_tours.php\r\n</pre>', '2013-03-13 19:15:58', 0),
(116, 83, 'Issue', 22, 'Проблема пропала', '2013-03-13 19:23:07', 0),
(117, 80, 'Issue', 22, 'Запрос\r\n<pre>\r\n$tour_module[''client'']->exec(''get_showcase_filter'', array(\r\n      ''result'' => ''country'',\r\n      ''showcase'' => 44,\r\n    ), false);\r\n</pre>\r\n\r\nснова возвращает false', '2013-03-13 19:26:00', 0),
(118, 84, 'Issue', 22, '', '2013-03-13 19:39:25', 0),
(119, 80, 'Issue', 21, 'Внесли изменения. Проверьте сейчас.', '2013-03-14 11:08:10', 0),
(120, 80, 'Issue', 22, '<pre>\r\n$tour_module[''client'']->exec(''get_showcase_filter'', array(\r\n      ''result'' => array(''country'', ''rating'', ''city''),\r\n      ''showcase'' => 44,\r\n), false);\r\n</pre>\r\n\r\nрезультат\r\n\r\n<pre>\r\narray (size=3)\r\n  ''country'' => \r\n    array (size=2)\r\n      0 => \r\n        array (size=3)\r\n          ''id'' => int 0\r\n          ''name'' => string ''Все страны'' (length=19)\r\n          ''flag_small'' => string '''' (length=0)\r\n      1 => \r\n        array (size=3)\r\n          ''id'' => string ''318'' (length=3)\r\n          ''name'' => string ''Турция'' (length=12)\r\n          ''flag_small'' => string ''tur.gif'' (length=7)\r\n  ''rating'' => \r\n    array (size=0)\r\n      empty\r\n  ''city'' => \r\n    array (size=0)\r\n      empty\r\n</pre>', '2013-03-14 12:39:59', 0),
(121, 92, 'Issue', 1, 'Иван передайте файлы для боевого тестирования.', '2013-03-14 12:58:00', 0),
(122, 92, 'Issue', 1, '', '2013-03-14 12:59:02', 0),
(123, 92, 'Issue', 17, 'Изменению подверглись два файла:\r\n <pre>www/modules/ittour/generic/import_coral.php\r\n www/modules/ittour/generic/custom_import_tours.php\r\n </pre>\r\n\r\nПрикрепил архив с изменениями к задаче', '2013-03-14 13:14:22', 0),
(124, 92, 'Issue', 1, 'После консультацией с Итерой, прояснилось следующее:\r\nПроблема в том что custom_improt_tours.php используется для ВСЕХ парсеров и если там что-то не так у нас будут невероятно большие проблемы\r\nВедь сейчас к примеру просто переписывание базы из-за каких то проблем занимает до 4-х часов с полной остановкой системы\r\nнадо проверить тесты у себя локально, проверить пару дней загрузку СПО в рабочем режиме, а не на нескольких файлах.\r\n\r\nВ общем требуется углубленное тестирование прежде чем на боевой сервер поставить.', '2013-03-14 13:33:06', 0),
(125, 92, 'Issue', 17, 'Игорь Иванов писал(а):\r\n> После консультацией с Итерой, прояснилось следующее:\r\n> Проблема в том что custom_improt_tours.php используется для ВСЕХ парсеров и если там что-то не так у нас будут невероятно большие проблемы\r\n\r\nэто предусмотрено, используется дефолтное значение для параметра метода parse(), если этот параметр не передавать, метод работает по старой схеме  http://clip2net.com/s/4KxDoz\r\n\r\n', '2013-03-14 13:59:07', 0),
(126, 92, 'Issue', 1, 'а протестировать, максимально можно с вашей стороны?\r\nPS ставьте статус ожидает ответа менеджера проектов, если требуется мой ответ.', '2013-03-14 14:48:24', 0),
(127, 80, 'Issue', 21, 'Подкоректировали возврат значения стран. Теперь отображается полный список.Проверьте.\r\nРейтинги для этого типа витрины (44) не предусмотрены, поэтому возвращается пустой массив\r\nДля вывода списка стран, нуобходимо указать параметр ''use_all''=> true, чтобы отобразись полнй списко городов, либо указать страну, для которой будут отображен список городов', '2013-03-14 14:58:58', 0),
(128, 92, 'Issue', 17, 'Игорь Иванов писал(а):\r\n> а протестировать, максимально можно с вашей стороны?\r\n\r\nДля этого нужен актуальный дамп БД, при этом перезаливать его при каждом запуске проекта (или проверить все измененные таблицы и удалить новые данные после импорта). Это будет занимать довольно много времени. К тому же локально у меня используется только 1 файл spo, а если запускать в реальном режиме с выгрузкой всех актуальных spo - тогда процедура импорта будет занимать много часов. \r\nДля локального тестирования я использую только 1 spo, убрал проверки на актуальность туров по времени и после импорта 1000 записей прерываю скрипт, в таком случае на его выполнение уходит несколько минут.\r\nПредыдущие изменения в парсере увеличили производительность за счет дополнительных проверок массивов классификаторов на существование индексов (если индкс массива не существовал возникала ошибка php notice, которую обрабатывал класс error_handler, определенный как обработчик ошибок в коде, при этом на каждую обработку уходило около 20мсек). Локально я загружал каждый раз классификаторы по новой, но может оказаться, что на продакшене после загрузки классификаторов отсутствующих элементов массива может оказаться меньше, соответственно и прирост производительности будет не так велик.\r\n\r\nКак вариант - можно накатить свежий дамп и запустить проект в дебаггере, тогда вручную можно будет проверить на нескольких десятках записей насколько часто идет обращение к не существующим элементам массива и из этого делать выводы о производительности.\r\n\r\n', '2013-03-14 15:19:23', 0),
(129, 80, 'Issue', 22, 'Теперь страны получаются корректно.\r\n\r\nПоявились следующие вопросы:\r\n<pre>\r\n$params = Array\r\n(\r\n    [price_from] => 0\r\n    [hotel_ratings] => Array\r\n        (\r\n            [0] => 7\r\n            [1] => 3\r\n            [2] => 4\r\n            [3] => 78\r\n        )\r\n\r\n    [items_per_page] => 10\r\n    [date_from] => 2013-03-14\r\n    [date_till] => 2013-04-13\r\n    [adult_amount] => 2\r\n    [types] => Array\r\n        (\r\n            [0] => 1\r\n            [1] => 2\r\n        )\r\n\r\n    [page] => 1\r\n    [showcase_type] => 44\r\n    [use_uah_price] => 1\r\n)\r\n$this->exec(''package_tour_search'', $params, false);\r\n</pre>\r\n\r\nВозвращает как и ожидается 10 туров, но пейджер отсутствует вообще.\r\n\r\nЭтот же запрос, со следующими параметрами:\r\n<pre>\r\nArray\r\n(\r\n    [price_from] => 0\r\n    [countries] => Array\r\n        (\r\n            [0] => 16\r\n        )\r\n\r\n    [hotel_ratings] => Array\r\n        (\r\n            [0] => 2\r\n            [1] => 7\r\n            [2] => 3\r\n            [3] => 4\r\n            [4] => 78\r\n        )\r\n\r\n    [items_per_page] => 10\r\n    [date_from] => 2013-03-14\r\n    [date_till] => 2013-04-13\r\n    [adult_amount] => 2\r\n    [types] => Array\r\n        (\r\n            [0] => 1\r\n            [1] => 2\r\n        )\r\n\r\n    [page] => 1\r\n    [showcase_type] => 44\r\n    [use_uah_price] => 1\r\n)\r\n</pre>\r\n\r\nОжидается что вернется список туров отфильтрованный по выбранной стране, но результат точно такой же как и был в первом запросе.', '2013-03-14 16:37:35', 0),
(130, 101, 'Issue', 25, 'Приступаю', '2013-03-14 16:53:44', 0),
(131, 80, 'Issue', 21, 'У нас данная витрина не имеет фильтров, страны можно задать в настройках витрин на сайте ittour.com.ua если необходима возможность фильтровать данную витрину - согласуйте данную задачу через АйТи-тур.', '2013-03-14 16:57:47', 0),
(132, 80, 'Issue', 22, 'Игорь, уточните пожалуйста функционал данного модуля. Полного описания его работы у меня нету, но с макета, который Вы мне предоставили, видно, что туры можно фильтровать по Стране, Городу выезда и Рейтингу отеля.', '2013-03-14 17:15:40', 0),
(133, 72, 'Issue', 1, 'блок схема на согласование новой структуры сайта', '2013-03-14 21:09:25', 0),
(134, 72, 'Issue', 1, '', '2013-03-14 21:11:38', 0),
(135, 78, 'Issue', 22, '', '2013-03-15 17:05:20', 0),
(136, 80, 'Issue', 1, 'Уточнил, закрываем задачу.', '2013-03-16 17:15:05', 0),
(137, 92, 'Issue', 17, 'Оптимизировал процесс загрузки классификаторов. После изучения запроса выборки из метода custom_import::find_entity_value()\r\n<pre>\r\nSELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156 AND code = IFNULL(3, code) AND name = IFNULL(''ARENA INN HOTEL'', name);\r\n</pre>\r\nоказалось, что существующий индекс @idx_itt_known_name_unique@ не оптимален. В данном случае более производителен индекс по полю @`name`@ используемой таблицы. Также пришлось отказаться от конструкции @name = IFNULL($name, name)@, т.к. она не дает возможности использовать индекс, а значение параметров проверять в php.\r\nДобавил индекс \r\n<pre>\r\nALTER TABLE `itt_db`.`itt_known_name` ADD INDEX `idx_itt_known_name_name` (`name` ASC) ;\r\n</pre>\r\nи изменил запрос в упомянутом выше методе (логика работы метода не изменилась, изменен только сам запрос для работы с новым индексом). Время выполнения одной выборки сократилось с 95 мсек до 2-3 мсек.\r\nДо оптимизации время загрузки классификаторов для coral в среднем составляло ~900 секунд (большая часть на классификаторы hotel: 721с и RoomList: 110), после оптимизации среднее время загрузки классификаторов составляет ~50 секунд.\r\n\r\nДля применения изменений нужно обновить файл @www/modules/ittour/generic/custom_import.php@ (логика работы класса не изменилась) и добавить новый индекс для таблицы itt_known_name.', '2013-03-18 16:23:49', 0),
(138, 92, 'Issue', 25, 'SELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156 AND code = IFNULL(3, code) AND name = IFNULL(''ARENA INN HOTEL'', name);\r\nХм... запрос как минимум странный\r\n1. IFNULL(3, code) результатом всегда будет code \r\n2. IFNULL(''ARENA INN HOTEL'', name) результатом всегда будет name\r\nто есть запрос идентичен \r\nSELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156 AND code = code AND name = name;\r\nчто в свою очередь идентично\r\nSELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156', '2013-03-18 17:17:09', 0),
(139, 92, 'Issue', 17, 'Alexander Samborsky писал(а):\r\n> SELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156 AND code = IFNULL(3, code) AND name = IFNULL(''ARENA INN HOTEL'', name);\r\n> Хм... запрос как минимум странный\r\n> 1. IFNULL(3, code) результатом всегда будет code \r\n\r\nНет, в случае IFNULL(3, code) результат будет 3, а в случае IFNULL(null, code) результат будет code. В коде указано "name = IFNULL($name, name)", т.е. если переменная $name - содержит значение, оно будет использоваться, а если переменная равняется null, тогда будет использоваться дефолтное значение ''name''. \r\nПоэтому конструкция @"AND name = IFNULL($name, name)"@ эквивалентна @$name ? "AND name=$name" : ''''@\r\n', '2013-03-18 17:28:00', 0),
(140, 92, 'Issue', 17, 'Ivan Koshelev писал(а):\r\n> Alexander Samborsky писал(а):\r\n> > @SELECT * FROM itt_known_name WHERE entity_name = ''hotel'' AND operator_id = 156 AND code = IFNULL(3, code) AND name = IFNULL(''ARENA INN HOTEL'', name);@\r\n> > Хм... запрос как минимум странный\r\n> > 1. @IFNULL(3, code)@ результатом всегда будет code \r\n> \r\n> Нет, в случае @IFNULL(3, code)@ результат будет 3, а в случае @IFNULL(null, code)@ результат будет code. В коде указано @"name = IFNULL($name, name)"@, т.е. если переменная $name - содержит значение, оно будет использоваться, а если переменная равняется null, тогда будет использоваться дефолтное значение ''name''. \r\n> Поэтому конструкция @"AND name = IFNULL($name, name)"@ эквивалентна @$name ? "AND name=$name" : ''''@\r\n\r\nПримеры выполнения: http://clip2net.com/s/4LJrFU и http://clip2net.com/s/4LJstu', '2013-03-18 17:28:48', 0),
(141, 92, 'Issue', 25, 'IFNULL($name, name) в случае если $name==NULL передаст в запрос IFNULL(, name) и вы получите ERROR 1064 (42000): You have an error in your SQL syntax', '2013-03-18 17:46:51', 0),
(142, 92, 'Issue', 17, 'Alexander Samborsky писал(а):\r\n> IFNULL($name, name) в случае если $name==NULL передаст в запрос IFNULL(, name) и вы получите ERROR 1064 (42000): You have an error in your SQL syntax\r\n\r\nДа, с подстановкой в строку переменной я не досмотрел, но в коде используется "Prepared statement", поэтому подставляется именно null, и работает по следующей схеме http://clip2net.com/s/4LJNMZ\r\n<pre>\r\n$dbs->row("SELECT * FROM itt_known_name WHERE entity_name = ? AND operator_id = ? AND code = IFNULL(?, code) AND name = IFNULL(?, name)", $entity, $this->operator_id, $code, $name);\r\n</pre>', '2013-03-18 17:55:47', 0),
(143, 72, 'Issue', 1, '', '2013-03-19 11:32:59', 0),
(144, 92, 'Issue', 1, 'Подтвердите, что результат работы готов к тестированию на боевом сервере, прикрепите финальную версию, а то можно запутаться в диалоге.', '2013-03-19 12:15:53', 0),
(145, 92, 'Issue', 17, 'Да, можно тестировать на боевом сервере. Локально при импорте 5000 туров из одного и того же spo (файл spo не скачивался с сервера, а подключался вручную) получены следующие цифры:\r\nДо оптимизации: 3229 секунд (из них загрузка классификаторов: 874 секунд, работа парсера на 5000 туров: 2351 секунд)\r\nПосле оптимизации: 103 секунд (из них загрузка классификаторов: 59 секунд, работа парсера на 5000 туров: 42 секунд)\r\nПоследняя версия кода в svn, также необходимо добавить индекс\r\n<pre>\r\nALTER TABLE `itt_known_name` ADD INDEX `idx_itt_known_name_name` (`name` ASC) ;\r\n</pre>\r\n', '2013-03-19 12:22:29', 0),
(146, 92, 'Issue', 1, 'Итера не имеет доступа к svn репозиторию, выложите сюда архив и инструкцию, если есть необходимость в ней.\r\nПосле чего поднимем приоритет и сменим статус.', '2013-03-19 12:48:19', 0),
(147, 92, 'Issue', 17, 'Изменены файлы из каталога www/modules/ittour/generic, прикрепил их к сообщению. Необходимо заменить файлы из архива и накатить индекс `idx_itt_known_name_name`.', '2013-03-19 13:19:43', 0),
(148, 92, 'Issue', 1, 'Ждем результаты тестирования', '2013-03-19 13:43:53', 0),
(151, 92, 'Issue', 20, 'Прошу прокомментировать все изменения в файлах.\r\n\r\nИз заявленных изменений должна быть "пачка" ападетов, оптимизация known_name. Судя по файлам изменений больше, также вызывает сомнение состояние исходников. Это тестовая версия или можно применять?\r\n\r\nЕсли тестовая, объясните порядок запуска.\r\n\r\nСм. скриншот с примером', '2013-03-19 22:47:53', 0),
(152, 92, 'Issue', 17, 'Работал над версией проекта, которую добавили в svn. Скриншот файла custom_import.php 3 ревизии (код распакован из предоствленного архива): http://clip2net.com/s/4MawBF . \r\nНасколько видно из скриншота, я приступил к разработке, когда файл был в том же состоянии что и "Working copy" из прикрепленного скриншота в предыдущем сообщении.\r\n\r\nДобавленные мной изменения можно просмотреть в svn в diff разделе коммитов 7 и 8 ревизии ( https://www.assembla.com/code/parser-optimization-ittour/subversion/commit/7 и https://www.assembla.com/code/parser-optimization-ittour/subversion/commit/8 ).\r\n\r\nЕсли в svn не актуальный код, после предоставления актуальных исходников могу смержить их с моими изменениями и прикрепить измененные файлы еще раз.', '2013-03-20 10:25:28', 0),
(153, 92, 'Issue', 20, 'Предоставьте доступ к вашим репозиториям.', '2013-03-20 13:03:13', 0),
(154, 92, 'Issue', 1, 'Дмитрий, выслал вам инвайт с ассемблы, там вся история кода с изменениями, описанных в коммитах.\r\n', '2013-03-21 00:14:06', 0),
(155, 107, 'Issue', 1, 'Мне надо чтобы крупно было имя того кто написал коммент к задаче. ', '2013-03-26 11:35:13', 0),
(156, 107, 'Issue', 1, '', '2013-03-26 11:58:36', 0),
(157, 107, 'Issue', 27, 'За разработку задачи можно братся если на локальной машине разработчика win 7(64) будет поднята копия redmine проектов с базой mysql', '2013-03-26 12:24:05', 0),
(158, 110, 'Issue', 27, 'Игорь Иванов писал(а):\r\n> Хочу добавить возможность перетаскивать файлы прямо мышкой в браузер, а не каждый раз по одному файлу загружать, через кнопку Обзор.\r\n\r\nЗа разработку задачи можно братся если на локальной машине разработчика win 7(64) будет поднята копия redmine проектов с базой mysql\r\nВ задаче возможно потребуется доработка(переустановка) гемов на продакшен-машине', '2013-03-26 12:26:03', 0),
(159, 107, 'Issue', 27, '', '2013-03-26 12:26:40', 0),
(160, 106, 'Issue', 27, 'Игорь Иванов писал(а):\r\n> Вынести на главную все непрочитанные сообщения по всем проектам для каждого юзера, т.е. если юзер не ответил на проект то горит светло красная иконка, если не ходил и не смотре ответ по задаче, то ярко зеленная (так же можно заходить в задачу и поставить или снять пометку о прочтении.)\r\n\r\nЗа разработку задачи можно братся если на локальной машине разработчика win 7(64) будет поднята копия redmine проектов с базой mysql\r\n\r\n', '2013-03-26 12:27:35', 0),
(161, 110, 'Issue', 27, 'За разработку задачи можно братся если на локальной машине разработчика win 7(64) будет поднята копия redmine проектов с базой mysql', '2013-03-26 12:28:03', 0),
(162, 106, 'Issue', 27, 'Выдержка из официальной документации:\r\n\r\nAt time of writing (3/19/2013), SQL Server support is reported broken with ruby 2.0.0 under Windows because of a database adapter gem incompatibility', '2013-03-26 12:49:42', 0),
(163, 110, 'Issue', 27, 'Выдержка из документации:\r\n\r\nAt time of writing (3/19/2013), SQL Server support is reported broken with ruby 2.0.0 under Windows because of a database adapter gem incompatibility', '2013-03-26 12:50:35', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `journal_details`
--

DROP TABLE IF EXISTS `journal_details`;
CREATE TABLE IF NOT EXISTS `journal_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `journal_id` int(11) NOT NULL DEFAULT '0',
  `property` varchar(30) NOT NULL DEFAULT '',
  `prop_key` varchar(30) NOT NULL DEFAULT '',
  `old_value` text,
  `value` text,
  PRIMARY KEY (`id`),
  KEY `altered_journal_details_journal_id` (`journal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=108 ;

--
-- Дамп данных таблицы `journal_details`
--

INSERT INTO `journal_details` (`id`, `journal_id`, `property`, `prop_key`, `old_value`, `value`) VALUES
(2, 5, 'attr', 'priority_id', '2', '3'),
(3, 6, 'attachment', '4', NULL, 'koral.doc'),
(4, 6, 'attachment', '5', NULL, 'nqyus_trevel.doc'),
(5, 7, 'attachment', '8', NULL, 'ittour_modules.27.11.2012 (1).zip'),
(6, 26, 'attr', 'tracker_id', '1', '2'),
(7, 27, 'attr', 'tracker_id', '1', '2'),
(8, 28, 'attr', 'tracker_id', '1', '2'),
(9, 29, 'attr', 'tracker_id', '1', '2'),
(10, 30, 'attr', 'tracker_id', '1', '2'),
(11, 31, 'attachment', '10', NULL, 'piligrim.png'),
(12, 31, 'attachment', '11', NULL, 'piligrim-logo-2.jpg'),
(13, 35, 'attr', 'status_id', '1', '2'),
(14, 35, 'attr', 'assigned_to_id', NULL, '17'),
(15, 42, 'attr', 'status_id', '1', '3'),
(16, 45, 'attr', 'status_id', '1', '3'),
(17, 51, 'attr', 'tracker_id', '1', '2'),
(18, 57, 'attr', 'assigned_to_id', NULL, '22'),
(19, 57, 'attr', 'is_private', '0', '1'),
(20, 59, 'attr', 'tracker_id', '2', '1'),
(21, 59, 'attr', 'project_id', '6', '24'),
(22, 60, 'attr', 'tracker_id', '2', '1'),
(23, 60, 'attr', 'project_id', '6', '24'),
(24, 60, 'attr', 'assigned_to_id', NULL, '22'),
(25, 61, 'attr', 'tracker_id', '2', '1'),
(26, 61, 'attr', 'project_id', '6', '24'),
(27, 62, 'attr', 'status_id', '1', '3'),
(28, 63, 'attr', 'status_id', '2', '3'),
(29, 64, 'attr', 'status_id', '1', '2'),
(30, 65, 'attr', 'status_id', '1', '2'),
(31, 66, 'attr', 'status_id', '1', '3'),
(32, 67, 'attr', 'status_id', '1', '2'),
(33, 68, 'attr', 'tracker_id', '2', '1'),
(34, 68, 'attr', 'status_id', '1', '3'),
(35, 69, 'attr', 'status_id', '1', '10'),
(36, 70, 'attr', 'tracker_id', '2', '1'),
(37, 70, 'attr', 'status_id', '1', '10'),
(38, 71, 'attr', 'status_id', '1', '2'),
(39, 72, 'attr', 'status_id', '1', '2'),
(40, 72, 'attr', 'priority_id', '2', '3'),
(41, 73, 'attr', 'status_id', '1', '2'),
(42, 74, 'attr', 'status_id', '1', '9'),
(43, 75, 'attr', 'status_id', '1', '8'),
(44, 76, 'attr', 'status_id', '1', '3'),
(45, 77, 'attr', 'status_id', '1', '8'),
(46, 78, 'attr', 'status_id', '2', '3'),
(47, 79, 'attr', 'status_id', '1', '3'),
(48, 80, 'attr', 'status_id', '9', '2'),
(49, 83, 'attr', 'status_id', '3', '2'),
(50, 86, 'attr', 'status_id', '1', '5'),
(51, 87, 'attr', 'status_id', '2', '3'),
(52, 88, 'attr', 'status_id', '2', '3'),
(53, 91, 'attr', 'status_id', '8', '9'),
(54, 91, 'attr', 'priority_id', '2', '1'),
(55, 96, 'attr', 'status_id', '3', '1'),
(56, 97, 'attr', 'status_id', '1', '3'),
(57, 99, 'attr', 'status_id', '3', '2'),
(58, 100, 'attr', 'status_id', '2', '3'),
(59, 102, 'attr', 'status_id', '3', '1'),
(60, 107, 'attr', 'status_id', '1', '8'),
(61, 107, 'attr', 'priority_id', '2', '4'),
(62, 109, 'attr', 'status_id', '2', '3'),
(63, 111, 'attr', 'status_id', '2', '3'),
(64, 113, 'attr', 'status_id', '3', '2'),
(65, 114, 'attr', 'status_id', '2', '3'),
(66, 115, 'attr', 'status_id', '8', '1'),
(67, 115, 'attr', 'priority_id', '4', '2'),
(68, 116, 'attr', 'status_id', '3', '5'),
(69, 118, 'attr', 'status_id', '3', '5'),
(70, 119, 'attr', 'status_id', '2', '3'),
(71, 120, 'attr', 'status_id', '3', '2'),
(72, 122, 'attr', 'status_id', '1', '3'),
(73, 123, 'attachment', '12', NULL, 'changes.zip'),
(74, 123, 'attr', 'status_id', '3', '1'),
(75, 124, 'attr', 'status_id', '1', '3'),
(76, 125, 'attr', 'status_id', '3', '1'),
(77, 126, 'attr', 'status_id', '1', '3'),
(78, 127, 'attr', 'status_id', '2', '3'),
(79, 128, 'attr', 'status_id', '3', '8'),
(80, 129, 'attr', 'status_id', '3', '2'),
(81, 131, 'attr', 'status_id', '2', '3'),
(82, 132, 'attr', 'status_id', '3', '8'),
(83, 133, 'attachment', '13', NULL, '11.png'),
(84, 134, 'attr', 'status_id', '1', '10'),
(85, 134, 'attr', 'assigned_to_id', NULL, '26'),
(86, 135, 'attr', 'status_id', '2', '5'),
(87, 136, 'attr', 'status_id', '8', '5'),
(88, 143, 'attr', 'status_id', '10', '3'),
(89, 144, 'attr', 'status_id', '8', '3'),
(90, 145, 'attr', 'status_id', '3', '8'),
(91, 146, 'attr', 'status_id', '8', '3'),
(92, 147, 'attachment', '14', NULL, 'changes.zip'),
(93, 147, 'attr', 'status_id', '3', '8'),
(94, 148, 'attr', 'status_id', '8', '2'),
(95, 148, 'attr', 'priority_id', '2', '4'),
(99, 151, 'attachment', '15', NULL, 'custom_import_diff.JPG'),
(100, 151, 'attr', 'status_id', '2', '3'),
(101, 152, 'attr', 'status_id', '3', '2'),
(102, 153, 'attr', 'status_id', '2', '8'),
(103, 154, 'attr', 'status_id', '8', '2'),
(104, 156, 'attr', 'status_id', '1', '3'),
(105, 159, 'attr', 'status_id', '3', '9'),
(106, 160, 'attr', 'status_id', '3', '9'),
(107, 161, 'attr', 'status_id', '3', '9');

-- --------------------------------------------------------

--
-- Структура таблицы `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `mail_notification` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_members_on_user_id_and_project_id` (`user_id`,`project_id`),
  KEY `index_members_on_user_id` (`user_id`),
  KEY `index_members_on_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=78 ;

--
-- Дамп данных таблицы `members`
--

INSERT INTO `members` (`id`, `user_id`, `project_id`, `created_on`, `mail_notification`) VALUES
(1, 1, 7, '2013-02-14 16:32:08', 0),
(2, 1, 4, '2013-02-14 16:32:28', 0),
(3, 1, 11, '2013-02-14 16:32:41', 0),
(4, 1, 5, '2013-02-14 16:32:49', 0),
(5, 13, 20, '2013-02-15 18:02:47', 0),
(6, 14, 2, '2013-02-15 18:07:36', 0),
(8, 1, 3, '2013-02-19 14:16:37', 0),
(9, 1, 1, '2013-02-19 14:16:57', 0),
(10, 1, 23, '2013-02-19 14:17:22', 0),
(11, 1, 20, '2013-02-19 14:18:12', 0),
(12, 1, 2, '2013-02-19 14:18:51', 0),
(13, 16, 7, '2013-02-19 14:51:04', 0),
(14, 16, 4, '2013-02-19 14:51:11', 0),
(15, 16, 5, '2013-02-19 14:51:18', 0),
(16, 16, 1, '2013-02-19 14:51:24', 0),
(17, 16, 23, '2013-02-19 14:51:33', 0),
(18, 16, 9, '2013-02-19 17:04:33', 0),
(19, 16, 22, '2013-02-19 17:07:19', 0),
(20, 16, 13, '2013-02-19 17:09:30', 0),
(21, 1, 13, '2013-02-19 17:09:55', 0),
(22, 16, 12, '2013-02-19 17:10:47', 0),
(23, 1, 12, '2013-02-19 17:10:52', 0),
(24, 1, 21, '2013-02-19 17:11:51', 0),
(25, 16, 21, '2013-02-19 17:12:00', 0),
(26, 1, 9, '2013-02-19 17:13:14', 0),
(27, 16, 8, '2013-02-19 17:13:40', 0),
(28, 1, 8, '2013-02-19 17:13:47', 0),
(29, 1, 16, '2013-02-19 17:14:30', 0),
(30, 16, 16, '2013-02-19 17:14:35', 0),
(31, 1, 10, '2013-02-19 17:15:26', 0),
(32, 16, 10, '2013-02-19 17:15:32', 0),
(33, 1, 17, '2013-02-19 17:15:59', 0),
(34, 16, 17, '2013-02-19 17:16:05', 0),
(35, 1, 22, '2013-02-19 17:16:47', 0),
(36, 1, 15, '2013-02-19 17:17:21', 0),
(37, 16, 15, '2013-02-19 17:17:25', 0),
(38, 1, 14, '2013-02-19 17:17:51', 0),
(39, 16, 14, '2013-02-19 17:17:55', 0),
(40, 1, 6, '2013-02-19 17:18:30', 0),
(42, 1, 24, '2013-02-19 17:19:03', 0),
(43, 16, 24, '2013-02-19 17:19:07', 0),
(44, 17, 9, '2013-02-19 17:26:41', 0),
(45, 18, 13, '2013-02-19 17:32:24', 0),
(46, 18, 12, '2013-02-19 17:33:10', 0),
(47, 22, 15, '2013-02-19 20:18:37', 0),
(48, 22, 14, '2013-02-19 20:18:50', 0),
(49, 22, 6, '2013-02-19 20:19:17', 0),
(50, 22, 24, '2013-02-19 20:19:26', 0),
(51, 20, 6, '2013-02-19 20:20:43', 0),
(52, 16, 6, '2013-02-19 20:21:57', 0),
(53, 21, 8, '2013-02-19 20:26:35', 0),
(54, 20, 8, '2013-02-19 20:27:13', 0),
(56, 21, 6, '2013-02-19 20:28:04', 0),
(57, 16, 25, '2013-02-20 13:56:54', 0),
(58, 1, 25, '2013-02-20 13:57:04', 0),
(59, 16, 26, '2013-02-20 14:09:43', 0),
(60, 1, 26, '2013-02-20 14:10:01', 0),
(61, 20, 9, '2013-02-20 15:54:53', 0),
(62, 23, 9, '2013-02-21 15:58:08', 0),
(63, 6, 7, '2013-03-06 00:32:23', 0),
(64, 6, 1, '2013-03-06 00:32:32', 0),
(65, 1, 27, '2013-03-06 02:25:04', 0),
(66, 16, 27, '2013-03-06 02:25:20', 0),
(67, 24, 9, '2013-03-06 19:55:31', 0),
(68, 25, 9, '2013-03-07 14:02:01', 0),
(69, 26, 17, '2013-03-13 15:54:11', 0),
(70, 27, 9, '2013-03-21 13:22:08', 0),
(71, 27, 6, '2013-03-21 15:11:32', 0),
(72, 28, 9, '2013-03-25 16:29:55', 0),
(73, 18, 28, '2013-03-25 18:40:43', 0),
(74, 16, 28, '2013-03-25 18:40:48', 0),
(75, 1, 28, '2013-03-25 18:40:52', 0),
(76, 20, 28, '2013-03-25 18:41:37', 0),
(77, 27, 29, '2013-03-26 11:27:39', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `member_roles`
--

DROP TABLE IF EXISTS `member_roles`;
CREATE TABLE IF NOT EXISTS `member_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `inherited_from` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_member_roles_on_member_id` (`member_id`),
  KEY `index_member_roles_on_role_id` (`role_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Дамп данных таблицы `member_roles`
--

INSERT INTO `member_roles` (`id`, `member_id`, `role_id`, `inherited_from`) VALUES
(1, 1, 3, NULL),
(2, 2, 3, NULL),
(3, 3, 3, NULL),
(4, 4, 3, NULL),
(5, 5, 6, NULL),
(6, 6, 4, NULL),
(10, 8, 3, NULL),
(11, 9, 3, NULL),
(12, 10, 3, NULL),
(13, 11, 3, NULL),
(14, 12, 3, NULL),
(15, 13, 7, NULL),
(16, 14, 7, NULL),
(17, 15, 7, NULL),
(18, 16, 7, NULL),
(19, 17, 3, NULL),
(20, 18, 7, NULL),
(21, 19, 7, NULL),
(22, 20, 7, NULL),
(23, 21, 3, NULL),
(24, 22, 7, NULL),
(25, 23, 3, NULL),
(26, 24, 3, NULL),
(27, 25, 7, NULL),
(28, 26, 3, NULL),
(29, 27, 7, NULL),
(30, 28, 3, NULL),
(31, 29, 3, NULL),
(32, 30, 7, NULL),
(33, 31, 3, NULL),
(34, 32, 7, NULL),
(35, 33, 3, NULL),
(36, 34, 7, NULL),
(37, 35, 3, NULL),
(38, 36, 3, NULL),
(39, 37, 7, NULL),
(40, 38, 3, NULL),
(41, 39, 7, NULL),
(42, 40, 3, NULL),
(44, 42, 3, NULL),
(45, 43, 7, NULL),
(46, 44, 4, NULL),
(47, 45, 5, NULL),
(48, 46, 4, NULL),
(49, 47, 4, NULL),
(51, 49, 4, NULL),
(52, 50, 4, NULL),
(53, 48, 4, NULL),
(54, 51, 4, NULL),
(55, 52, 7, NULL),
(56, 53, 4, NULL),
(57, 54, 4, NULL),
(59, 56, 4, NULL),
(60, 57, 7, NULL),
(61, 58, 3, NULL),
(62, 59, 7, NULL),
(63, 60, 3, NULL),
(64, 61, 4, NULL),
(65, 62, 4, NULL),
(66, 63, 3, NULL),
(67, 1, 3, 66),
(68, 64, 3, NULL),
(69, 9, 3, 68),
(70, 65, 3, NULL),
(71, 66, 7, NULL),
(72, 67, 4, NULL),
(73, 68, 4, NULL),
(74, 69, 4, NULL),
(75, 70, 4, NULL),
(76, 71, 4, NULL),
(77, 72, 4, NULL),
(78, 73, 4, NULL),
(79, 74, 7, NULL),
(80, 75, 3, NULL),
(81, 76, 4, NULL),
(82, 77, 4, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `board_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `author_id` int(11) DEFAULT NULL,
  `replies_count` int(11) NOT NULL DEFAULT '0',
  `last_reply_id` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `locked` tinyint(1) DEFAULT '0',
  `sticky` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `messages_board_id` (`board_id`),
  KEY `messages_parent_id` (`parent_id`),
  KEY `index_messages_on_last_reply_id` (`last_reply_id`),
  KEY `index_messages_on_author_id` (`author_id`),
  KEY `index_messages_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `messages`
--


-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `title` varchar(60) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `description` text,
  `author_id` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `comments_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_project_id` (`project_id`),
  KEY `index_news_on_author_id` (`author_id`),
  KEY `index_news_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `news`
--


-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT NULL,
  `content` text,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notes_on_source_id_and_source_type` (`source_id`,`source_type`),
  KEY `index_notes_on_author_id` (`author_id`),
  KEY `index_notes_on_type_id` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `notes`
--


-- --------------------------------------------------------

--
-- Структура таблицы `open_id_authentication_associations`
--

DROP TABLE IF EXISTS `open_id_authentication_associations`;
CREATE TABLE IF NOT EXISTS `open_id_authentication_associations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `issued` int(11) DEFAULT NULL,
  `lifetime` int(11) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `assoc_type` varchar(255) DEFAULT NULL,
  `server_url` blob,
  `secret` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `open_id_authentication_associations`
--


-- --------------------------------------------------------

--
-- Структура таблицы `open_id_authentication_nonces`
--

DROP TABLE IF EXISTS `open_id_authentication_nonces`;
CREATE TABLE IF NOT EXISTS `open_id_authentication_nonces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` int(11) NOT NULL,
  `server_url` varchar(255) DEFAULT NULL,
  `salt` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `open_id_authentication_nonces`
--


-- --------------------------------------------------------

--
-- Структура таблицы `projects`
--

DROP TABLE IF EXISTS `projects`;
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `homepage` varchar(255) DEFAULT '',
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `parent_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `identifier` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_lft` (`lft`),
  KEY `index_projects_on_rgt` (`rgt`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Дамп данных таблицы `projects`
--

INSERT INTO `projects` (`id`, `name`, `description`, `homepage`, `is_public`, `parent_id`, `created_on`, `updated_on`, `identifier`, `status`, `lft`, `rgt`) VALUES
(1, 'Завтра в тур', 'создание проекта', 'zavtra_v_tur', 0, NULL, '2013-02-14 00:44:52', '2013-02-14 00:44:52', 'zavtra_v_tur', 1, 45, 56),
(2, 'Pulsini Demond', '', '', 0, 3, '2013-02-14 00:56:31', '2013-02-14 00:56:31', 'pulsini_demond', 1, 38, 39),
(3, 'Pulsini', '', 'pulsini', 0, NULL, '2013-02-14 01:18:39', '2013-02-14 01:18:39', 'pulsini', 1, 37, 42),
(4, 'ittour', '', '', 0, NULL, '2013-02-14 01:20:09', '2013-02-14 01:20:09', 'ittour', 1, 11, 24),
(5, 'Piligrim', '', '', 0, NULL, '2013-02-14 01:22:21', '2013-02-14 01:22:21', 'piligrim', 1, 31, 36),
(6, 'взаимодействие Завтра в тур', '', '', 0, 1, '2013-02-14 01:37:00', '2013-02-19 02:31:22', 'vzaimodeystvie', 1, 52, 53),
(7, 'CRM Ittour', '', '', 0, NULL, '2013-02-14 01:38:33', '2013-02-14 01:38:33', 'crm_ittour', 1, 1, 10),
(8, 'взаимодействие между компаниями разработчиками', 'взаимодействие между компаниями разработчиками', '', 0, 4, '2013-02-14 01:42:16', '2013-02-14 01:42:16', 'cooperation', 1, 20, 21),
(9, 'Оптимизация работы парсеров, репликации, базы MySQL', 'работа по парсерам', '', 0, 4, '2013-02-14 01:43:15', '2013-02-19 12:58:24', 'parser_optimization', 1, 14, 15),
(10, 'разработка логотипа и фирменного стиля Piligrim', '', '', 0, 5, '2013-02-14 01:44:26', '2013-02-19 02:30:14', 'logo_and_style', 1, 32, 33),
(11, 'oplati.by', '', '', 0, NULL, '2013-02-14 01:44:45', '2013-02-14 01:44:45', 'oplati_by', 1, 25, 30),
(12, 'Техническое задание CRM Ittour', 'разработка ТЗ, обсуждение', '', 0, 7, '2013-02-14 01:45:46', '2013-02-18 23:01:00', 'tz', 1, 4, 5),
(13, 'бизнес процессы CRM Ittour', 'описание бизнес процесов', '', 0, 7, '2013-02-14 01:46:32', '2013-02-19 02:29:07', 'business_process', 1, 6, 7),
(14, 'бизнес процессы Завтра в тур', 'описание бизнес процессов', '', 0, 1, '2013-02-14 01:48:54', '2013-02-19 02:31:35', 'business_process_zavtra_v_tur', 1, 50, 51),
(15, 'Техническое задание Завтра в тур', 'ТЗ завтра в тур', '', 0, 1, '2013-02-14 01:49:40', '2013-02-19 02:31:04', 'tz_zavtra_v_tur', 1, 48, 49),
(16, 'дизайн витрин ittour', 'работы по дизайну витрин', '', 0, 4, '2013-02-14 01:53:37', '2013-02-19 02:29:36', 'design_vitriny_itttour', 1, 22, 23),
(17, 'создание нового дизайна сайта Piligrim', 'новый дизайн сайта', '', 0, 5, '2013-02-14 01:54:30', '2013-02-19 02:30:32', 'new_design_site_piligrim', 1, 34, 35),
(18, 'Техническое задание Pulsini', 'Работы по тз Pulsini', '', 0, 3, '2013-02-14 01:56:45', '2013-02-19 02:30:49', 'tz_pulsini', 1, 40, 41),
(19, 'Техническое задание oplati.by', 'работы по тз', '', 0, 11, '2013-02-14 01:57:34', '2013-02-19 02:29:55', 'oplati_tz', 1, 28, 29),
(20, 'Организационные вопросы oplati.by', 'все вопросы связанный с организацией проекта', '', 0, 11, '2013-02-15 17:28:11', '2013-02-15 18:05:29', 'opati_organization', 1, 26, 27),
(21, 'дизайн интерфейса CRM Ittour', 'дизайн макеты и верстка интерфейса', '', 0, 7, '2013-02-18 20:31:18', '2013-02-18 23:00:30', 'crm_ittour_design', 1, 8, 9),
(22, 'Работы по дизайну завтра в тур', '', '', 0, 1, '2013-02-19 13:38:52', '2013-02-19 13:38:52', 'zavtra_desigo', 1, 46, 47),
(23, 'Обзор затраченного времени, вопросы оплаты - IT tour', 'Публикация в виде задач, итоговое затраченное время, с описанием.', '', 0, NULL, '2013-02-19 14:14:35', '2013-02-19 14:15:32', 'ittour_price', 1, 57, 58),
(24, 'разработка сайта завтра в тур', '', '', 0, 1, '2013-02-19 15:41:09', '2013-02-19 15:41:09', 'zvt_creat', 1, 54, 55),
(25, 'Выносные модули ittour', 'Создание выносных модулей', '', 0, 4, '2013-02-20 13:56:27', '2013-02-20 13:56:27', 'vinos_mod', 1, 12, 13),
(26, 'Создание сайтов визиток с встроенными модулями ittour', 'На базе wp', '', 0, 4, '2013-02-20 14:08:09', '2013-02-20 14:08:09', 'vizitka_ittour', 1, 18, 19),
(27, 'Создание сайта аналог touradmin.ru', 'Высококачественный сайт, продающий сайты визитки, со встроенными модулями It tour', '', 0, 4, '2013-02-23 18:37:52', '2013-03-06 02:24:50', 'vizitka_ittous', 1, 16, 17),
(28, 'Взаимодействие по CRM', '', '', 0, 7, '2013-03-25 18:40:20', '2013-03-25 18:40:20', 'crm_vzaimodeystvie', 1, 2, 3),
(29, 'Доработки проектной системы Redmine', 'настраиваем под себя', '', 0, NULL, '2013-03-26 11:27:10', '2013-03-26 11:27:10', 'mango_red', 1, 43, 44);

-- --------------------------------------------------------

--
-- Структура таблицы `projects_trackers`
--

DROP TABLE IF EXISTS `projects_trackers`;
CREATE TABLE IF NOT EXISTS `projects_trackers` (
  `project_id` int(11) NOT NULL DEFAULT '0',
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `projects_trackers_unique` (`project_id`,`tracker_id`),
  KEY `projects_trackers_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `projects_trackers`
--

INSERT INTO `projects_trackers` (`project_id`, `tracker_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 6),
(1, 8),
(2, 1),
(2, 2),
(2, 3),
(2, 6),
(2, 8),
(3, 1),
(3, 2),
(3, 3),
(3, 6),
(3, 8),
(4, 1),
(4, 2),
(4, 3),
(4, 6),
(4, 8),
(5, 1),
(5, 2),
(5, 3),
(5, 6),
(5, 8),
(6, 1),
(6, 2),
(6, 3),
(6, 6),
(6, 8),
(7, 1),
(7, 2),
(7, 3),
(7, 6),
(7, 8),
(8, 1),
(8, 2),
(8, 3),
(8, 6),
(8, 8),
(9, 1),
(9, 2),
(9, 3),
(9, 6),
(9, 8),
(10, 1),
(10, 2),
(10, 3),
(10, 6),
(10, 8),
(11, 1),
(11, 2),
(11, 3),
(11, 6),
(11, 8),
(12, 1),
(12, 2),
(12, 3),
(12, 6),
(12, 8),
(13, 1),
(13, 2),
(13, 3),
(13, 6),
(13, 8),
(14, 1),
(14, 2),
(14, 3),
(14, 6),
(14, 8),
(15, 1),
(15, 2),
(15, 3),
(15, 6),
(15, 8),
(16, 1),
(16, 2),
(16, 3),
(16, 6),
(16, 8),
(17, 1),
(17, 2),
(17, 3),
(17, 6),
(17, 8),
(18, 1),
(18, 2),
(18, 3),
(18, 6),
(18, 8),
(19, 1),
(19, 2),
(19, 3),
(19, 6),
(19, 8),
(20, 3),
(21, 1),
(21, 2),
(21, 3),
(21, 6),
(21, 8),
(22, 1),
(23, 3),
(24, 1),
(24, 2),
(24, 3),
(24, 6),
(24, 8),
(25, 1),
(25, 2),
(25, 3),
(25, 6),
(25, 8),
(26, 1),
(26, 2),
(26, 3),
(26, 6),
(26, 8),
(27, 1),
(27, 2),
(27, 3),
(27, 6),
(27, 8),
(28, 2),
(29, 1),
(29, 3),
(29, 6),
(29, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `queries`
--

DROP TABLE IF EXISTS `queries`;
CREATE TABLE IF NOT EXISTS `queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filters` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(1) NOT NULL DEFAULT '0',
  `column_names` text,
  `sort_criteria` text,
  `group_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_queries_on_project_id` (`project_id`),
  KEY `index_queries_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `queries`
--


-- --------------------------------------------------------

--
-- Структура таблицы `recently_vieweds`
--

DROP TABLE IF EXISTS `recently_vieweds`;
CREATE TABLE IF NOT EXISTS `recently_vieweds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viewer_id` int(11) DEFAULT NULL,
  `viewed_id` int(11) DEFAULT NULL,
  `viewed_type` varchar(255) DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_recently_vieweds_on_viewed_id_and_viewed_type` (`viewed_id`,`viewed_type`),
  KEY `index_recently_vieweds_on_viewer_id` (`viewer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `recently_vieweds`
--


-- --------------------------------------------------------

--
-- Структура таблицы `repositories`
--

DROP TABLE IF EXISTS `repositories`;
CREATE TABLE IF NOT EXISTS `repositories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL DEFAULT '',
  `login` varchar(60) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `root_url` varchar(255) DEFAULT '',
  `type` varchar(255) DEFAULT NULL,
  `path_encoding` varchar(64) DEFAULT NULL,
  `log_encoding` varchar(64) DEFAULT NULL,
  `extra_info` text,
  `identifier` varchar(255) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_repositories_on_project_id` (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `repositories`
--


-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` int(11) DEFAULT '1',
  `assignable` tinyint(1) DEFAULT '1',
  `builtin` int(11) NOT NULL DEFAULT '0',
  `permissions` text,
  `issues_visibility` varchar(30) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `position`, `assignable`, `builtin`, `permissions`, `issues_visibility`) VALUES
(1, 'Non member', 1, 1, 1, '--- \n', 'default'),
(2, 'Anonymous', 2, 1, 2, '--- \n', 'default'),
(3, 'Менеджер проекта', 3, 1, 0, '--- \n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :manage_versions\n- :add_subprojects\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :add_contacts\n- :add_notes\n- :delete_own_notes\n- :manage_contacts\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :view_gantt\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :view_private_notes\n- :set_notes_private\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :manage_news\n- :comment_news\n- :manage_repository\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :view_time_entries\n- :edit_time_entries\n- :edit_own_time_entries\n- :manage_project_activities\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :export_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n', 'all'),
(4, 'Разработчик', 4, 1, 0, '--- \n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :add_issue_notes\n- :edit_issue_notes\n- :set_notes_private\n- :save_queries\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :commit_access\n- :manage_related_issues\n- :log_time\n- :edit_own_time_entries\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n', 'all'),
(5, 'Наблюдатель', 5, 1, 0, '--- \n- :add_messages\n- :edit_own_messages\n- :view_calendar\n- :view_documents\n- :view_files\n- :view_issues\n- :add_issues\n- :edit_issues\n- :add_issue_notes\n- :save_queries\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :view_wiki_pages\n- :view_wiki_edits\n', 'all'),
(6, 'Организатор', 6, 1, 0, '--- \n- :add_messages\n- :edit_own_messages\n- :delete_own_messages\n- :view_calendar\n- :add_notes\n- :delete_own_notes\n- :view_gantt\n- :view_issues\n- :add_issues\n- :edit_issues\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :save_queries\n- :comment_news\n- :view_wiki_pages\n- :view_wiki_edits\n', 'all'),
(7, 'Партнер', 7, 1, 0, '--- \n- :add_project\n- :edit_project\n- :close_project\n- :select_project_modules\n- :manage_members\n- :add_subprojects\n- :see_project_timesheets\n- :manage_boards\n- :add_messages\n- :edit_messages\n- :edit_own_messages\n- :delete_messages\n- :delete_own_messages\n- :view_calendar\n- :add_contacts\n- :add_notes\n- :delete_own_notes\n- :manage_contacts\n- :manage_documents\n- :view_documents\n- :manage_files\n- :view_files\n- :manage_categories\n- :view_issues\n- :add_issues\n- :edit_issues\n- :manage_issue_relations\n- :manage_subtasks\n- :set_issues_private\n- :set_own_issues_private\n- :add_issue_notes\n- :edit_issue_notes\n- :edit_own_issue_notes\n- :set_notes_private\n- :move_issues\n- :delete_issues\n- :manage_public_queries\n- :save_queries\n- :view_issue_watchers\n- :add_issue_watchers\n- :delete_issue_watchers\n- :manage_news\n- :comment_news\n- :browse_repository\n- :view_changesets\n- :manage_related_issues\n- :manage_wiki\n- :rename_wiki_pages\n- :delete_wiki_pages\n- :view_wiki_pages\n- :view_wiki_edits\n- :edit_wiki_pages\n- :delete_wiki_pages_attachments\n- :protect_wiki_pages\n', 'all');

-- --------------------------------------------------------

--
-- Структура таблицы `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('1'),
('10'),
('100'),
('101'),
('102'),
('103'),
('104'),
('105'),
('106'),
('107'),
('108'),
('11'),
('12'),
('13'),
('14'),
('15'),
('16'),
('16-redmine_contacts'),
('17'),
('17-redmine_contacts'),
('18'),
('18-redmine_contacts'),
('19'),
('19-redmine_contacts'),
('2'),
('20'),
('20-redmine_contacts'),
('20090214190337'),
('20090312172426'),
('20090312194159'),
('20090318181151'),
('20090323224724'),
('20090401221305'),
('20090401231134'),
('20090403001910'),
('20090406161854'),
('20090425161243'),
('20090503121501'),
('20090503121505'),
('20090503121510'),
('20090614091200'),
('20090704172350'),
('20090704172355'),
('20090704172358'),
('20091010093521'),
('20091017212227'),
('20091017212457'),
('20091017212644'),
('20091017212938'),
('20091017213027'),
('20091017213113'),
('20091017213151'),
('20091017213228'),
('20091017213257'),
('20091017213332'),
('20091017213444'),
('20091017213536'),
('20091017213642'),
('20091017213716'),
('20091017213757'),
('20091017213835'),
('20091017213910'),
('20091017214015'),
('20091017214107'),
('20091017214136'),
('20091017214236'),
('20091017214308'),
('20091017214336'),
('20091017214406'),
('20091017214440'),
('20091017214519'),
('20091017214611'),
('20091017214644'),
('20091017214720'),
('20091017214750'),
('20091025163651'),
('20091108092559'),
('20091114105931'),
('20091123212029'),
('20091205124427'),
('20091220183509'),
('20091220183727'),
('20091220184736'),
('20091225164732'),
('20091227112908'),
('20100129193402'),
('20100129193813'),
('20100221100219'),
('20100313132032'),
('20100313171051'),
('20100705164950'),
('20100819172912'),
('20101104182107'),
('20101107130441'),
('20101114115114'),
('20101114115359'),
('20110220160626'),
('20110223180944'),
('20110223180953'),
('20110224000000'),
('20110226120112'),
('20110226120132'),
('20110227125750'),
('20110228000000'),
('20110228000100'),
('20110401192910'),
('20110408103312'),
('20110412065600'),
('20110511000000'),
('20110902000000'),
('20111201201315'),
('20120115143024'),
('20120115143100'),
('20120115143126'),
('20120127174243'),
('20120205111326'),
('20120223110929'),
('20120301153455'),
('20120422150750'),
('20120705074331'),
('20120707064544'),
('20120714122000'),
('20120714122100'),
('20120714122200'),
('20120731164049'),
('20120930112914'),
('20121026002032'),
('20121026003537'),
('21'),
('21-redmine_contacts'),
('22'),
('22-redmine_contacts'),
('23'),
('23-redmine_contacts'),
('24'),
('24-redmine_contacts'),
('25'),
('25-redmine_contacts'),
('26'),
('26-redmine_contacts'),
('27'),
('27-redmine_contacts'),
('28'),
('28-redmine_contacts'),
('29'),
('29-redmine_contacts'),
('3'),
('30'),
('31'),
('32'),
('33'),
('34'),
('35'),
('36'),
('37'),
('38'),
('39'),
('4'),
('40'),
('41'),
('42'),
('43'),
('44'),
('45'),
('46'),
('47'),
('48'),
('49'),
('5'),
('50'),
('51'),
('52'),
('53'),
('54'),
('55'),
('56'),
('57'),
('58'),
('59'),
('6'),
('60'),
('61'),
('62'),
('63'),
('64'),
('65'),
('66'),
('67'),
('68'),
('69'),
('7'),
('70'),
('71'),
('72'),
('73'),
('74'),
('75'),
('76'),
('77'),
('78'),
('79'),
('8'),
('80'),
('81'),
('82'),
('83'),
('84'),
('85'),
('86'),
('87'),
('88'),
('89'),
('9'),
('90'),
('91'),
('92'),
('93'),
('94'),
('95'),
('96'),
('97'),
('98'),
('99');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `value` text,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_settings_on_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=74 ;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `updated_on`) VALUES
(1, 'user_format', 'firstname_lastname', '2013-02-19 17:06:32'),
(2, 'default_language', 'ru', '2013-02-13 21:57:47'),
(3, 'thumbnails_enabled', '1', '2013-02-15 01:20:57'),
(4, 'gravatar_default', 'retro', '2013-02-15 01:20:57'),
(5, 'date_format', '%d.%m.%Y', '2013-03-05 23:55:07'),
(6, 'ui_theme', 'pixel-cookers-RedmineThemePixelCookers-7247131', '2013-02-19 13:57:34'),
(7, 'time_format', '%H:%M', '2013-03-05 23:55:07'),
(8, 'gravatar_enabled', '0', '2013-02-13 21:54:49'),
(9, 'thumbnails_size', '200', '2013-03-05 23:55:07'),
(10, 'start_of_week', '1', '2013-03-05 23:55:07'),
(11, 'default_projects_public', '0', '2013-02-14 00:47:00'),
(12, 'sequential_project_identifiers', '0', '2013-03-05 23:55:27'),
(13, 'default_projects_modules', '--- \n- issue_tracking\n- news\n- documents\n- files\n- wiki\n', '2013-02-19 13:40:13'),
(14, 'new_project_user_role_id', '3', '2013-02-14 00:47:00'),
(15, 'password_min_length', '3', '2013-02-14 00:47:13'),
(16, 'autologin', '365', '2013-02-14 00:47:13'),
(17, 'session_timeout', '0', '2013-02-14 00:47:13'),
(18, 'openid', '0', '2013-02-19 02:37:30'),
(19, 'self_registration', '1', '2013-02-18 17:31:27'),
(20, 'lost_password', '1', '2013-02-14 00:47:13'),
(21, 'rest_api_enabled', '1', '2013-02-15 01:18:13'),
(22, 'login_required', '0', '2013-02-14 00:47:13'),
(23, 'session_lifetime', '0', '2013-02-14 00:47:13'),
(24, 'unsubscribe', '0', '2013-02-14 00:47:13'),
(25, 'commit_fix_keywords', 'fixes,closes', '2013-02-14 00:49:07'),
(26, 'enabled_scm', '--- \n- Subversion\n- Darcs\n- Mercurial\n- Cvs\n- Bazaar\n- Git\n- Filesystem\n', '2013-02-21 21:58:57'),
(27, 'commit_fix_status_id', '0', '2013-02-14 00:49:07'),
(28, 'repository_log_display_limit', '500', '2013-02-15 01:23:13'),
(29, 'commit_logtime_activity_id', '8', '2013-02-19 15:16:14'),
(30, 'commit_cross_project_ref', '1', '2013-02-15 01:23:13'),
(31, 'commit_ref_keywords', 'refs,references,IssueID', '2013-02-14 00:49:07'),
(32, 'commit_fix_done_ratio', '100', '2013-02-14 00:49:07'),
(33, 'autofetch_changesets', '1', '2013-02-14 00:49:07'),
(34, 'commit_logtime_enabled', '1', '2013-02-14 00:49:07'),
(35, 'sys_api_enabled', '1', '2013-02-15 01:23:13'),
(36, 'protocol', 'http', '2013-02-14 01:28:42'),
(37, 'welcome_text', 'Приветствуем вас в нашей системе управления проектами.\r\nКроме самого сайта, вы можете использовать многочисленные клиенты для работы с системой.\r\nПолный список клиентов для работы с системой доступен здесь http://www.redmine.org/projects/redmine/wiki/ThirdPartyTools', '2013-03-06 00:05:39'),
(38, 'host_name', '195.16.88.5:3000', '2013-02-18 18:21:07'),
(39, 'activity_days_default', '30', '2013-02-14 01:28:42'),
(40, 'file_max_size_displayed', '512', '2013-02-14 01:28:42'),
(41, 'diff_max_lines_displayed', '1500', '2013-02-14 01:28:42'),
(42, 'feeds_limit', '15', '2013-02-14 01:28:42'),
(43, 'attachment_max_size', '350000', '2013-03-05 19:54:08'),
(44, 'wiki_compression', '', '2013-02-14 01:28:42'),
(45, 'repositories_encodings', 'utf8', '2013-03-05 19:54:08'),
(46, 'cache_formatted_text', '0', '2013-02-14 01:28:42'),
(47, 'app_title', 'Mango Project', '2013-02-14 01:28:42'),
(48, 'per_page_options', '25,50,100', '2013-02-14 01:28:42'),
(49, 'text_formatting', 'textile', '2013-02-14 01:28:42'),
(50, 'non_working_week_days', '--- []\n\n', '2013-02-18 18:22:01'),
(51, 'issues_export_limit', '500', '2013-02-15 01:22:10'),
(52, 'cross_project_subtasks', 'hierarchy', '2013-03-05 23:56:53'),
(53, 'display_subprojects_issues', '1', '2013-02-15 01:22:10'),
(54, 'issue_done_ratio', 'issue_status', '2013-03-05 23:56:53'),
(55, 'issue_list_default_columns', '--- \n- subject\n- priority\n- status\n- assigned_to\n- updated_on\n- author\n', '2013-03-06 00:08:35'),
(56, 'gantt_items_limit', '500', '2013-02-15 01:22:10'),
(57, 'cross_project_issue_relations', '0', '2013-03-05 23:58:30'),
(58, 'default_issue_start_date_to_creation_date', '1', '2013-02-15 01:22:10'),
(59, 'issue_group_assignment', '1', '2013-03-05 23:56:53'),
(60, 'mail_handler_api_key', 'o7pSoHjLrSq0zVj20s5T', '2013-02-15 01:22:35'),
(61, 'mail_handler_api_enabled', '1', '2013-02-15 01:22:35'),
(62, 'mail_handler_body_delimiters', '', '2013-02-15 01:22:35'),
(63, 'sys_api_key', 'LdxMEGqnrVOfe1lTs6MY', '2013-02-15 01:23:13'),
(64, 'plugin_redmine_contacts', '--- !map:ActiveSupport::HashWithIndifferentAccess \nshow_in_app_menu: "1"\nnote_authoring_time: "1"\nname_format: firstname_lastname\nshow_closed_issues: "1"\nuse_gravatar: "1"\n', '2013-02-19 15:17:26'),
(65, 'emails_footer', 'Вы получаете данные уведомления, т.к. подписаны и являетесь участником разработки проектов Манго Сити.\r\nЕсли вы хотите изменить ваши настройки, Пройдите в свой аккаунт: http://195.16.88.5:3000/my/account', '2013-02-18 17:39:35'),
(66, 'notified_events', '--- \n- issue_added\n- issue_updated\n- issue_note_added\n- issue_status_updated\n- issue_priority_updated\n- news_added\n- document_added\n- file_added\n- message_posted\n- wiki_content_added\n- wiki_content_updated\n- crm_deal_added\n- crm_deal_updated\n- crm_note_added\n', '2013-03-05 23:59:03'),
(67, 'mail_from', 'mango.notifer@gmail.com', '2013-02-18 17:40:27'),
(68, 'default_notification_option', 'all', '2013-02-19 13:40:57'),
(69, 'plain_text_mail', '0', '2013-02-18 17:39:35'),
(70, 'bcc_recipients', '1', '2013-02-18 17:39:35'),
(71, 'emails_header', 'Уведомление о новом действии в системе управления проектами Манго', '2013-02-18 17:40:27'),
(72, 'plugin_redmine_timesheet_plugin', '--- !map:ActiveSupport::HashWithIndifferentAccess \nuser_status: active\nproject_status: active\nprecision: "2"\nlist_size: "5"\n', '2013-02-19 15:17:04'),
(73, 'plugin_progressive_projects_list', '--- !map:ActiveSupport::HashWithIndifferentAccess \nshow_project_progress: "true"\n', '2013-02-19 15:17:16');

-- --------------------------------------------------------

--
-- Структура таблицы `taggings`
--

DROP TABLE IF EXISTS `taggings`;
CREATE TABLE IF NOT EXISTS `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) DEFAULT NULL,
  `taggable_type` varchar(255) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `taggings`
--


-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `tags`
--


-- --------------------------------------------------------

--
-- Структура таблицы `time_entries`
--

DROP TABLE IF EXISTS `time_entries`;
CREATE TABLE IF NOT EXISTS `time_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `issue_id` int(11) DEFAULT NULL,
  `hours` float NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `activity_id` int(11) NOT NULL,
  `spent_on` date NOT NULL,
  `tyear` int(11) NOT NULL,
  `tmonth` int(11) NOT NULL,
  `tweek` int(11) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time_entries_project_id` (`project_id`),
  KEY `time_entries_issue_id` (`issue_id`),
  KEY `index_time_entries_on_activity_id` (`activity_id`),
  KEY `index_time_entries_on_user_id` (`user_id`),
  KEY `index_time_entries_on_created_on` (`created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `time_entries`
--


-- --------------------------------------------------------

--
-- Структура таблицы `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE IF NOT EXISTS `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `action` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(40) NOT NULL DEFAULT '',
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Дамп данных таблицы `tokens`
--

INSERT INTO `tokens` (`id`, `user_id`, `action`, `value`, `created_on`) VALUES
(2, 1, 'feeds', '52fdaf6022b51685aa9419f45fd2bbb8903d5c98', '2013-02-14 01:32:02'),
(4, 1, 'api', '5aacbebd9ebadc4dec3ee0446a8a50430ee56214', '2013-02-15 16:40:28'),
(5, 10, 'feeds', '54c1be7e473ba5c611858f9d8ed025c3abecfce7', '2013-02-15 17:03:41'),
(6, 13, 'feeds', '7757f9ebb7b34adf131c611ea595f0ed987215ee', '2013-02-15 17:43:55'),
(7, 13, 'api', '1c0ad865ada0f98ca22e4481ac4ffb27a5030f84', '2013-02-15 17:44:13'),
(9, 14, 'autologin', 'aef570546b9fb7db70918212e183c3bdee9886ab', '2013-02-17 22:28:45'),
(10, 14, 'feeds', '9132caf7d16e911e44cc18a666f2d508a86a8ec1', '2013-02-17 22:28:45'),
(11, 14, 'api', '79498ab728345228a3f7ce3752677675d8e5493a', '2013-02-17 22:29:05'),
(13, 16, 'feeds', '73e857284328fc216cfad9aec13343db82384417', '2013-02-19 14:28:35'),
(16, 18, 'feeds', '4cd3459413a1ce1902857735d8853a677a5c1782', '2013-02-19 17:09:51'),
(18, 17, 'feeds', 'aa171f72d04aa4fab8eb63ab37cd367fee317e4e', '2013-02-19 17:24:59'),
(19, 17, 'api', '30574a1832a4e5b18f2d1736a7ba48223b99d60d', '2013-02-19 17:25:24'),
(22, 22, 'feeds', 'fa8f0595b856a7f369f50f5d7d8aa31bc2ce30e3', '2013-02-20 11:38:07'),
(25, 23, 'feeds', '53fdea4f431234622548f993ca822d2e5eb97d58', '2013-02-21 15:49:42'),
(26, 23, 'api', '01c79d801e650b763f5c4cce48fb1ca5ff0eb0f3', '2013-02-21 15:51:58'),
(27, 18, 'autologin', 'af78165debf7222570aca1e5112c4ee34b1c6f9b', '2013-02-21 16:41:31'),
(28, 18, 'api', 'a2c1dd164f1ba3bc3e6eeabba84e0b5fd780ea5e', '2013-02-21 16:41:32'),
(30, 17, 'autologin', 'da31db63ed1057f5f63e4024a2d217261513b5e3', '2013-02-28 09:15:44'),
(31, 23, 'autologin', 'd4290264acecf6c23e2ff44a320d5debad455624', '2013-02-28 11:26:34'),
(36, 20, 'feeds', '2527104ec3a8fe4ae6d26e14112403ddcfe3bab7', '2013-02-28 17:55:16'),
(39, 21, 'feeds', '34271ca705f5ab6ef1530bfd4bacf112cc075861', '2013-03-04 13:15:46'),
(41, 20, 'autologin', 'cf008cf5fd439ad368cbec43b492151962b44fa0', '2013-03-05 18:11:40'),
(44, 24, 'register', '691bb7f103670a98aface3666a9677c497bb3634', '2013-03-06 19:50:16'),
(46, 24, 'feeds', '01cf57196204dc0832af8da6d99e6a77f959c816', '2013-03-06 19:56:20'),
(47, 25, 'register', 'dcf27eb618e32252c93f0cd5b1770072fe76ed00', '2013-03-07 13:38:45'),
(48, 25, 'autologin', 'cea6c89e9096948ea04d5ac07da7b72533375dd3', '2013-03-07 14:02:25'),
(49, 25, 'api', '8ad833d2530c4d1b2a58c2255d9b2ee08c2a0941', '2013-03-07 14:02:38'),
(50, 25, 'feeds', '9fe9d080729899c1804a5d891ea430cf0fa693bb', '2013-03-07 14:02:42'),
(55, 26, 'feeds', 'bb419e03e6286a59b3b5d0c627872567f7e50169', '2013-03-13 14:19:08'),
(56, 26, 'api', 'f479a2c695c99f974b18ba489421ae56c66444db', '2013-03-13 16:05:23'),
(57, 24, 'autologin', 'd230a6b688ee22a896652a3e86ef33c129894227', '2013-03-14 15:47:39'),
(60, 26, 'autologin', '7c05aa55a6c5b171e34f02cf8bb6ac0ad515d8f4', '2013-03-18 14:26:33'),
(62, 27, 'feeds', '66fe9f01a816a3703fd171bc4c1f163a2776bb64', '2013-03-21 13:11:08'),
(63, 27, 'api', '12da9ecfcad7a9097b3c2e7e715dd44d6461f3b1', '2013-03-21 13:11:34'),
(65, 22, 'autologin', '167e3c804e81a15435acde68f2ef0eab64228b72', '2013-03-25 16:01:24'),
(66, 28, 'register', '6b163c9333e35ae5e764e6fdfb99491999ceffdb', '2013-03-25 16:26:33'),
(68, 28, 'feeds', 'bba693d9a17b99d1456d2a48ccf128f70bc8372a', '2013-03-25 16:42:32'),
(69, 28, 'api', '681aabcba92f897ef5b87ace78417c49ec87b567', '2013-03-25 16:48:00'),
(70, 28, 'autologin', '872c6a2fab117c9fc5797f538afcde03e67b825e', '2013-03-26 12:53:29');

-- --------------------------------------------------------

--
-- Структура таблицы `trackers`
--

DROP TABLE IF EXISTS `trackers`;
CREATE TABLE IF NOT EXISTS `trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `is_in_chlog` tinyint(1) NOT NULL DEFAULT '0',
  `position` int(11) DEFAULT '1',
  `is_in_roadmap` tinyint(1) NOT NULL DEFAULT '1',
  `fields_bits` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `trackers`
--

INSERT INTO `trackers` (`id`, `name`, `is_in_chlog`, `position`, `is_in_roadmap`, `fields_bits`) VALUES
(1, 'Разработка', 1, 1, 0, 204),
(2, 'Взаимодействие', 1, 2, 0, 204),
(3, 'Организационные вопросы', 0, 3, 0, 204),
(6, 'Тестирование', 0, 4, 1, 204),
(8, 'Ошибка', 0, 5, 1, 204);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL DEFAULT '',
  `hashed_password` varchar(40) NOT NULL DEFAULT '',
  `firstname` varchar(30) NOT NULL DEFAULT '',
  `lastname` varchar(30) NOT NULL DEFAULT '',
  `mail` varchar(60) NOT NULL DEFAULT '',
  `admin` tinyint(1) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `last_login_on` datetime DEFAULT NULL,
  `language` varchar(5) DEFAULT '',
  `auth_source_id` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `identity_url` varchar(255) DEFAULT NULL,
  `mail_notification` varchar(255) NOT NULL DEFAULT '',
  `salt` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id_and_type` (`id`,`type`),
  KEY `index_users_on_auth_source_id` (`auth_source_id`),
  KEY `index_users_on_type` (`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `hashed_password`, `firstname`, `lastname`, `mail`, `admin`, `status`, `last_login_on`, `language`, `auth_source_id`, `created_on`, `updated_on`, `type`, `identity_url`, `mail_notification`, `salt`) VALUES
(1, 'admin', 'c74d826158e6a2cc55265793416c85b9b57b0ca3', 'Игорь', 'Иванов', 'mango.company@gmail.com', 1, 1, '2013-03-26 11:25:55', 'ru', NULL, '2013-02-13 21:50:03', '2013-03-26 11:25:55', 'User', 'http://projectmanager/', 'all', '2ce50f8bc64742c326714d1b9f7aa5e6'),
(2, '', '', '', 'Anonymous', '', 0, 0, NULL, '', NULL, '2013-02-13 21:50:35', '2013-02-13 21:50:35', 'AnonymousUser', NULL, 'only_my_events', NULL),
(4, '', '', '', 'Разработчики', '', 0, 1, NULL, '', NULL, '2013-02-14 00:57:36', '2013-02-14 00:57:36', 'Group', NULL, '', NULL),
(5, '', '', '', 'Заказчик', '', 0, 1, NULL, '', NULL, '2013-02-14 00:58:01', '2013-02-14 00:58:01', 'Group', NULL, '', NULL),
(6, '', '', '', 'Менеджер проекта', '', 0, 1, NULL, '', NULL, '2013-02-14 00:58:16', '2013-02-14 00:58:16', 'Group', NULL, '', NULL),
(7, '', '', '', 'Дизайнеры', '', 0, 1, NULL, '', NULL, '2013-02-14 16:14:57', '2013-02-14 16:14:57', 'Group', NULL, '', NULL),
(8, '', '', '', 'Тестировщики', '', 0, 1, NULL, '', NULL, '2013-02-14 16:15:04', '2013-02-14 16:15:04', 'Group', NULL, '', NULL),
(9, '', '', '', 'Проектировщики', '', 0, 1, NULL, '', NULL, '2013-02-14 16:15:16', '2013-02-14 16:15:16', 'Group', NULL, '', NULL),
(10, '123', '43cdd716567b58b437e1ec6b1647e067b88b161d', '123', '123', 'moon-martin@mail.ru', 1, 1, '2013-02-18 18:13:09', 'ru', NULL, '2013-02-15 00:56:26', '2013-02-19 02:39:58', 'User', 'http://projectmanager/', 'all', '1ff798de1526f0d85baec61543d13d5d'),
(12, '', '', '', 'Офис сотрудники', '', 0, 1, NULL, '', NULL, '2013-02-15 17:21:48', '2013-02-15 17:21:48', 'Group', NULL, '', NULL),
(13, 'dato', '92b83e11267cc0ac25c74d6711b7bec4bb2373a5', 'Дато', 'Хуст', 'press.pulsini@gmail.com', 0, 1, '2013-02-20 10:39:00', 'ru', NULL, '2013-02-15 17:25:09', '2013-02-20 10:39:00', 'User', 'http://hust/', 'only_my_events', 'b2daa435a7134c2f052e2c19fe626840'),
(14, 'yakov', 'a9edc60e2faaacb61c557acd2b18d07af72cbf80', 'Яков', 'Щелкунов', 'jack_@inbox.ru', 0, 1, '2013-02-21 00:55:36', 'ru', NULL, '2013-02-15 18:07:19', '2013-02-21 00:55:36', 'User', 'http://projectmanager/', 'only_my_events', '61a84b97fa83cb0158b168f21a8d5cac'),
(15, '', '', '', 'Партнеры', '', 0, 1, NULL, '', NULL, '2013-02-19 13:35:13', '2013-02-19 13:35:13', 'Group', NULL, '', NULL),
(16, 'y_avdeev', '8c5f0ee7bc31c303bef1f80560a21df7f877d2c9', 'Юрий', 'Авдеев', 'y_avdeev@mail.ru', 0, 1, '2013-03-19 15:16:28', 'ru', NULL, '2013-02-19 14:27:44', '2013-03-19 15:16:28', 'User', NULL, 'all', '10d7637c85ae083b2badd51ee64ea5be'),
(17, 'ivan', 'fd897ea256ffa60d6cbdc0320200d62c3ad80a8b', 'Ivan', 'Koshelev', 'ivan@5-soft.com', 0, 1, '2013-03-26 11:28:53', 'ru', NULL, '2013-02-19 17:09:03', '2013-03-26 11:28:53', 'User', NULL, 'all', '0cbfa36aef404c8dcb28dcf765a9f5e7'),
(18, 'Tenkfm', '0d8e28e859fe45fe7f59ad5fdeba6dd3ceb7b221', 'Антон', 'Рогачевский', 'tenkfm@gmail.com', 0, 1, '2013-02-21 16:41:31', 'ru', NULL, '2013-02-19 17:09:26', '2013-02-21 16:41:31', 'User', NULL, 'all', 'afe0e9298e73462b39d1d03cf0643274'),
(19, '', '', '', 'ИТЕРА', '', 0, 1, NULL, '', NULL, '2013-02-19 17:29:13', '2013-02-19 17:29:13', 'Group', NULL, '', NULL),
(20, 'dkornilich', '75100c2068d1905bc8fcf02e3b7e9b23089f96d9', 'Дмитрий', 'Корнилич', 'dkornilich@itera-research.com', 0, 1, '2013-03-25 20:44:15', 'ru', NULL, '2013-02-19 20:11:39', '2013-03-25 20:44:15', 'User', NULL, 'all', '6722c22edc4f5327d70682408bfa777d'),
(21, 'stomilkin', '02583531977bd37b274feb767792454d71fd4e87', 'Сергей', 'Томилкин', 'stomilkin@itera-research.com', 0, 1, '2013-03-26 11:40:25', 'ru', NULL, '2013-02-19 20:13:10', '2013-03-26 11:40:25', 'User', NULL, 'all', 'af8dc401c58e2155c1d3bb849e4bd6e0'),
(22, 'wing.sergey', 'b0f6aca9b6f6d3ba24bfaa9309f8b8016f7a57a1', 'Сергей', 'Wing', 'wing.sergey@gmail.com', 0, 1, '2013-03-25 16:01:24', 'ru', NULL, '2013-02-19 20:17:51', '2013-03-25 16:01:24', 'User', NULL, 'all', '4f9453b1341fe14966a69f33855feaf3'),
(23, 'turko', '2a19399bcb070f2f9c80187297b19903e76e63f6', 'Andrey', 'Turko', 'turko@itera-research.com', 0, 1, '2013-03-19 22:50:52', 'ru', NULL, '2013-02-21 15:42:49', '2013-03-19 22:50:52', 'User', NULL, 'all', '4ae0c9dbeb92e001d96bd002c72f8fe9'),
(24, 'tarkhil', '6a9f7a8ea245c6fbc08e50fb2dcdec39cf05dfc1', 'Alex', 'Povolotsky', 'tarkhil@over.ru', 0, 1, '2013-03-14 15:47:39', 'ru', NULL, '2013-03-06 19:50:16', '2013-03-14 15:47:39', 'User', NULL, 'all', 'c4ac9601664cd7d760aad50698433116'),
(25, 'borsky', '0efac07492cd31c49530ccf037351ca445863a1a', 'Alexander', 'Samborsky', 'sam@borsky.kiev.ua', 0, 1, '2013-03-18 17:08:18', 'ru', NULL, '2013-03-07 13:38:45', '2013-03-18 17:08:18', 'User', NULL, 'all', 'b748c699f252c099af1e1af75f1db48c'),
(26, 'serj', '8262156eb9df4686b2b8e81eec6b8a7d8e523d38', 'serj', 'es', 'melkeades@ya.ru', 0, 1, '2013-03-23 20:26:30', 'ru', NULL, '2013-03-13 14:18:21', '2013-03-23 20:26:30', 'User', NULL, 'all', '6991ab0f6b1adc741c13551adf8d3195'),
(27, 'AndreyM', '15ef0fe0e11164dfd0cafa0ce8105c5436be4681', 'Andrey', 'Mk', 'a2772@mail.ru', 0, 1, '2013-03-26 11:52:34', 'ru', NULL, '2013-03-21 13:09:56', '2013-03-26 11:52:34', 'User', NULL, 'all', '7c767490070d2b109709bff9ea7b1ef0'),
(28, 'uy5lm', '3e6523639b50e45f0d76611e378f19692811ae3c', 'Mikhail', 'Koshelev', 'uy5lm@ukr.net', 0, 1, '2013-03-26 12:53:29', 'ru', NULL, '2013-03-25 16:26:33', '2013-03-26 12:53:29', 'User', NULL, 'all', '80b12b87180eef9ad6440274eb4c6946');

-- --------------------------------------------------------

--
-- Структура таблицы `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
CREATE TABLE IF NOT EXISTS `user_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `others` text,
  `hide_mail` tinyint(1) DEFAULT '0',
  `time_zone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_preferences_on_user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `user_id`, `others`, `hide_mail`, `time_zone`) VALUES
(1, 1, '--- \n:gantt_zoom: 2\n:comments_sorting: asc\n:warn_on_leaving_unsaved: "1"\n:no_self_notified: false\n:my_page_layout: \n  left: []\n\n  top: \n  - issuesassignedtome\n  - issuesreportedbyme\n  - issueswatched\n  right: []\n\n:gantt_months: 6\n', 0, ''),
(2, 10, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "0"\n:gantt_zoom: 2\n:gantt_months: 6\n', 0, ''),
(3, 13, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Minsk'),
(4, 14, '--- \n:comments_sorting: asc\n:warn_on_leaving_unsaved: "1"\n:no_self_notified: false\n', 0, ''),
(5, 16, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, ''),
(6, 18, '--- \n:no_self_notified: false\n', 0, NULL),
(7, 17, '--- \n:gantt_months: 6\n:no_self_notified: false\n:gantt_zoom: 2\n', 0, NULL),
(8, 20, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Kyiv'),
(9, 21, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Kyiv'),
(10, 22, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 0, 'Riga'),
(11, 23, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n:my_page_layout: \n  right: []\n\n  left: []\n\n  top: \n  - issueswatched\n  - news\n', 1, 'Kyiv'),
(12, 24, '--- \n:no_self_notified: false\n', 0, NULL),
(13, 25, '--- \n:no_self_notified: false\n', 0, NULL),
(14, 26, '--- {}\n\n', 0, NULL),
(15, 27, '--- \n:comments_sorting: asc\n:no_self_notified: false\n:warn_on_leaving_unsaved: "1"\n', 1, 'Mid-Atlantic'),
(16, 28, '--- \n:no_self_notified: false\n', 0, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE IF NOT EXISTS `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `effective_date` date DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  `wiki_page_title` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'open',
  `sharing` varchar(255) NOT NULL DEFAULT 'none',
  PRIMARY KEY (`id`),
  KEY `altered_versions_project_id` (`project_id`),
  KEY `index_versions_on_sharing` (`sharing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `versions`
--


-- --------------------------------------------------------

--
-- Структура таблицы `watchers`
--

DROP TABLE IF EXISTS `watchers`;
CREATE TABLE IF NOT EXISTS `watchers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `watchable_type` varchar(255) NOT NULL DEFAULT '',
  `watchable_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchers_user_id_type` (`user_id`,`watchable_type`),
  KEY `index_watchers_on_user_id` (`user_id`),
  KEY `index_watchers_on_watchable_id_and_watchable_type` (`watchable_id`,`watchable_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `watchers`
--

INSERT INTO `watchers` (`id`, `watchable_type`, `watchable_id`, `user_id`) VALUES
(1, 'Issue', 7, 1),
(2, 'Issue', 89, 16),
(3, 'Issue', 7, 23),
(9, 'Issue', 101, 25);

-- --------------------------------------------------------

--
-- Структура таблицы `wikis`
--

DROP TABLE IF EXISTS `wikis`;
CREATE TABLE IF NOT EXISTS `wikis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL,
  `start_page` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `wikis_project_id` (`project_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Дамп данных таблицы `wikis`
--

INSERT INTO `wikis` (`id`, `project_id`, `start_page`, `status`) VALUES
(1, 1, 'Wiki', 1),
(2, 2, 'Wiki', 1),
(3, 3, 'Wiki', 1),
(4, 4, 'Wiki', 1),
(5, 5, 'Wiki', 1),
(6, 6, 'Wiki', 1),
(7, 7, 'Wiki', 1),
(8, 8, 'Wiki', 1),
(9, 9, 'Wiki', 1),
(10, 10, 'Wiki', 1),
(11, 11, 'Wiki', 1),
(12, 12, 'Wiki', 1),
(13, 13, 'Wiki', 1),
(14, 14, 'Wiki', 1),
(15, 15, 'Wiki', 1),
(16, 16, 'Wiki', 1),
(17, 17, 'Wiki', 1),
(18, 18, 'Wiki', 1),
(19, 19, 'Wiki', 1),
(20, 20, 'Wiki', 1),
(21, 21, 'Wiki', 1),
(22, 24, 'Wiki', 1),
(23, 25, 'Wiki', 1),
(24, 26, 'Wiki', 1),
(25, 27, 'Wiki', 1),
(26, 28, 'Wiki', 1),
(27, 29, 'Wiki', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wiki_contents`
--

DROP TABLE IF EXISTS `wiki_contents`;
CREATE TABLE IF NOT EXISTS `wiki_contents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `text` text,
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_contents_page_id` (`page_id`),
  KEY `index_wiki_contents_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_contents`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_content_versions`
--

DROP TABLE IF EXISTS `wiki_content_versions`;
CREATE TABLE IF NOT EXISTS `wiki_content_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_content_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `data` blob,
  `compression` varchar(6) DEFAULT '',
  `comments` varchar(255) DEFAULT '',
  `updated_on` datetime NOT NULL,
  `version` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_content_versions_wcid` (`wiki_content_id`),
  KEY `index_wiki_content_versions_on_updated_on` (`updated_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_content_versions`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_pages`
--

DROP TABLE IF EXISTS `wiki_pages`;
CREATE TABLE IF NOT EXISTS `wiki_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_on` datetime NOT NULL,
  `protected` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_pages_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_pages_on_wiki_id` (`wiki_id`),
  KEY `index_wiki_pages_on_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_pages`
--


-- --------------------------------------------------------

--
-- Структура таблицы `wiki_redirects`
--

DROP TABLE IF EXISTS `wiki_redirects`;
CREATE TABLE IF NOT EXISTS `wiki_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wiki_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `redirects_to` varchar(255) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wiki_redirects_wiki_id_title` (`wiki_id`,`title`),
  KEY `index_wiki_redirects_on_wiki_id` (`wiki_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `wiki_redirects`
--


-- --------------------------------------------------------

--
-- Структура таблицы `workflows`
--

DROP TABLE IF EXISTS `workflows`;
CREATE TABLE IF NOT EXISTS `workflows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) NOT NULL DEFAULT '0',
  `old_status_id` int(11) NOT NULL DEFAULT '0',
  `new_status_id` int(11) NOT NULL DEFAULT '0',
  `role_id` int(11) NOT NULL DEFAULT '0',
  `assignee` tinyint(1) NOT NULL DEFAULT '0',
  `author` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(30) DEFAULT NULL,
  `field_name` varchar(30) DEFAULT NULL,
  `rule` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wkfs_role_tracker_old_status` (`role_id`,`tracker_id`,`old_status_id`),
  KEY `index_workflows_on_old_status_id` (`old_status_id`),
  KEY `index_workflows_on_role_id` (`role_id`),
  KEY `index_workflows_on_new_status_id` (`new_status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1825 ;

--
-- Дамп данных таблицы `workflows`
--

INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`, `type`, `field_name`, `rule`) VALUES
(322, 2, 10, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(323, 2, 10, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(324, 2, 10, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(325, 2, 10, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(326, 2, 10, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(327, 2, 10, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(328, 2, 10, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(329, 2, 10, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(330, 2, 10, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(331, 2, 6, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(332, 2, 6, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(333, 2, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(334, 2, 6, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(335, 2, 6, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(336, 2, 6, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(337, 2, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(338, 2, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(339, 2, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(340, 2, 5, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(341, 2, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(342, 2, 5, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(343, 2, 5, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(344, 2, 5, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(345, 2, 5, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(346, 2, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(347, 2, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(348, 2, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(349, 2, 7, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(350, 2, 7, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(351, 2, 7, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(352, 2, 7, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(353, 2, 7, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(354, 2, 7, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(355, 2, 7, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(356, 2, 7, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(357, 2, 7, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(358, 2, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(359, 2, 9, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(360, 2, 9, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(361, 2, 9, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(362, 2, 9, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(363, 2, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(364, 2, 9, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(365, 2, 9, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(366, 2, 9, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(367, 2, 8, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(368, 2, 8, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(369, 2, 8, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(370, 2, 8, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(371, 2, 8, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(372, 2, 8, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(373, 2, 8, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(374, 2, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(375, 2, 8, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(376, 2, 3, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(377, 2, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(378, 2, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(379, 2, 3, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(380, 2, 3, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(381, 2, 3, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(382, 2, 3, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(383, 2, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(384, 2, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(385, 2, 2, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(386, 2, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(387, 2, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(388, 2, 2, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(389, 2, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(390, 2, 2, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(391, 2, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(392, 2, 2, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(393, 2, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(394, 2, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(395, 2, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(396, 2, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(397, 2, 1, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(398, 2, 1, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(399, 2, 1, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(400, 2, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(401, 2, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(402, 2, 1, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(403, 1, 6, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(404, 1, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(405, 1, 6, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(406, 1, 6, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(407, 1, 6, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(408, 1, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(409, 1, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(410, 1, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(411, 1, 6, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(412, 1, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(413, 1, 5, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(414, 1, 5, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(415, 1, 5, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(416, 1, 5, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(417, 1, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(418, 1, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(419, 1, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(420, 1, 5, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(421, 1, 7, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(422, 1, 7, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(423, 1, 7, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(424, 1, 7, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(425, 1, 7, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(426, 1, 7, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(427, 1, 7, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(428, 1, 7, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(429, 1, 7, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(430, 1, 9, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(431, 1, 9, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(432, 1, 9, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(433, 1, 9, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(434, 1, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(435, 1, 9, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(436, 1, 9, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(437, 1, 9, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(438, 1, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(439, 1, 8, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(440, 1, 8, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(441, 1, 8, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(442, 1, 8, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(443, 1, 8, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(444, 1, 8, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(445, 1, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(446, 1, 8, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(447, 1, 8, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(448, 1, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(449, 1, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(450, 1, 3, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(451, 1, 3, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(452, 1, 3, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(453, 1, 3, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(454, 1, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(455, 1, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(456, 1, 3, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(457, 1, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(458, 1, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(459, 1, 2, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(460, 1, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(461, 1, 2, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(462, 1, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(463, 1, 2, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(464, 1, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(465, 1, 2, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(466, 1, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(467, 1, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(468, 1, 1, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(469, 1, 1, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(470, 1, 1, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(471, 1, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(472, 1, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(473, 1, 1, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(474, 1, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(484, 1, 10, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(485, 1, 10, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(486, 1, 10, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(487, 1, 10, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(488, 1, 10, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(489, 1, 10, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(490, 1, 10, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(491, 1, 10, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(492, 1, 10, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(502, 3, 10, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(503, 3, 10, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(504, 3, 10, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(505, 3, 10, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(506, 3, 10, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(507, 3, 10, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(508, 3, 10, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(509, 3, 10, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(510, 3, 10, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(511, 3, 6, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(512, 3, 6, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(513, 3, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(514, 3, 6, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(515, 3, 6, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(516, 3, 6, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(517, 3, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(518, 3, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(519, 3, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(520, 3, 5, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(521, 3, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(522, 3, 5, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(523, 3, 5, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(524, 3, 5, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(525, 3, 5, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(526, 3, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(527, 3, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(528, 3, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(529, 3, 7, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(530, 3, 7, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(531, 3, 7, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(532, 3, 7, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(533, 3, 7, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(534, 3, 7, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(535, 3, 7, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(536, 3, 7, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(537, 3, 7, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(538, 3, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(539, 3, 9, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(540, 3, 9, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(541, 3, 9, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(542, 3, 9, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(543, 3, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(544, 3, 9, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(545, 3, 9, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(546, 3, 9, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(547, 3, 8, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(548, 3, 8, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(549, 3, 8, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(550, 3, 8, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(551, 3, 8, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(552, 3, 8, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(553, 3, 8, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(554, 3, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(555, 3, 8, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(556, 3, 3, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(557, 3, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(558, 3, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(559, 3, 3, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(560, 3, 3, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(561, 3, 3, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(562, 3, 3, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(563, 3, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(564, 3, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(565, 3, 2, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(566, 3, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(567, 3, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(568, 3, 2, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(569, 3, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(570, 3, 2, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(571, 3, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(572, 3, 2, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(573, 3, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(574, 3, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(575, 3, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(576, 3, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(577, 3, 1, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(578, 3, 1, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(579, 3, 1, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(580, 3, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(581, 3, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(582, 3, 1, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(592, 6, 10, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(593, 6, 10, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(594, 6, 10, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(595, 6, 10, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(596, 6, 10, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(597, 6, 10, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(598, 6, 10, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(599, 6, 10, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(600, 6, 10, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(601, 6, 6, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(602, 6, 6, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(603, 6, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(604, 6, 6, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(605, 6, 6, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(606, 6, 6, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(607, 6, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(608, 6, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(609, 6, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(610, 6, 5, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(611, 6, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(612, 6, 5, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(613, 6, 5, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(614, 6, 5, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(615, 6, 5, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(616, 6, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(617, 6, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(618, 6, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(619, 6, 7, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(620, 6, 7, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(621, 6, 7, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(622, 6, 7, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(623, 6, 7, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(624, 6, 7, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(625, 6, 7, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(626, 6, 7, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(627, 6, 7, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(628, 6, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(629, 6, 9, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(630, 6, 9, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(631, 6, 9, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(632, 6, 9, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(633, 6, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(634, 6, 9, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(635, 6, 9, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(636, 6, 9, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(637, 6, 8, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(638, 6, 8, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(639, 6, 8, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(640, 6, 8, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(641, 6, 8, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(642, 6, 8, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(643, 6, 8, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(644, 6, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(645, 6, 8, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(646, 6, 3, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(647, 6, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(648, 6, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(649, 6, 3, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(650, 6, 3, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(651, 6, 3, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(652, 6, 3, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(653, 6, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(654, 6, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(655, 6, 2, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(656, 6, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(657, 6, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(658, 6, 2, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(659, 6, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(660, 6, 2, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(661, 6, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(662, 6, 2, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(663, 6, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(664, 6, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(665, 6, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(666, 6, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(667, 6, 1, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(668, 6, 1, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(669, 6, 1, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(670, 6, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(671, 6, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(672, 6, 1, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(673, 8, 6, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(674, 8, 6, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(675, 8, 6, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(676, 8, 6, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(677, 8, 6, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(678, 8, 6, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(679, 8, 6, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(680, 8, 6, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(681, 8, 6, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(682, 8, 5, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(683, 8, 5, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(684, 8, 5, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(685, 8, 5, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(686, 8, 5, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(687, 8, 5, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(688, 8, 5, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(689, 8, 5, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(690, 8, 5, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(691, 8, 7, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(692, 8, 7, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(693, 8, 7, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(694, 8, 7, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(695, 8, 7, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(696, 8, 7, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(697, 8, 7, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(698, 8, 7, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(699, 8, 7, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(700, 8, 9, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(701, 8, 9, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(702, 8, 9, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(703, 8, 9, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(704, 8, 9, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(705, 8, 9, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(706, 8, 9, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(707, 8, 9, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(708, 8, 9, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(709, 8, 8, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(710, 8, 8, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(711, 8, 8, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(712, 8, 8, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(713, 8, 8, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(714, 8, 8, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(715, 8, 8, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(716, 8, 8, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(717, 8, 8, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(718, 8, 3, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(719, 8, 3, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(720, 8, 3, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(721, 8, 3, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(722, 8, 3, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(723, 8, 3, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(724, 8, 3, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(725, 8, 3, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(726, 8, 3, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(727, 8, 2, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(728, 8, 2, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(729, 8, 2, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(730, 8, 2, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(731, 8, 2, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(732, 8, 2, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(733, 8, 2, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(734, 8, 2, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(735, 8, 2, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(736, 8, 1, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(737, 8, 1, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(738, 8, 1, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(739, 8, 1, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(740, 8, 1, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(741, 8, 1, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(742, 8, 1, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(743, 8, 1, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(744, 8, 1, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(754, 8, 10, 6, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(755, 8, 10, 5, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(756, 8, 10, 7, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(757, 8, 10, 9, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(758, 8, 10, 8, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(759, 8, 10, 3, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(760, 8, 10, 2, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(761, 8, 10, 1, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(762, 8, 10, 10, 3, 0, 0, 'WorkflowTransition', NULL, NULL),
(763, 1, 6, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(764, 1, 6, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(765, 1, 6, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(766, 1, 6, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(767, 1, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(768, 1, 6, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(769, 1, 5, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(770, 1, 5, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(771, 1, 5, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(772, 1, 5, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(773, 1, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(774, 1, 5, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(775, 1, 7, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(776, 1, 7, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(777, 1, 7, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(778, 1, 7, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(779, 1, 7, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(780, 1, 7, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(781, 1, 9, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(782, 1, 9, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(783, 1, 9, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(784, 1, 9, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(785, 1, 9, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(786, 1, 9, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(787, 1, 8, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(788, 1, 8, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(789, 1, 8, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(790, 1, 8, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(791, 1, 8, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(792, 1, 8, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(793, 1, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(794, 1, 3, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(795, 1, 3, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(796, 1, 3, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(797, 1, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(798, 1, 3, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(799, 1, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(800, 1, 2, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(801, 1, 2, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(802, 1, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(803, 1, 2, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(804, 1, 2, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(805, 1, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(806, 1, 1, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(807, 1, 1, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(808, 1, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(809, 1, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(810, 1, 1, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(811, 1, 10, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(812, 1, 10, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(813, 1, 10, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(814, 1, 10, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(815, 1, 10, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(816, 1, 10, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(817, 2, 6, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(818, 2, 6, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(819, 2, 6, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(820, 2, 6, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(821, 2, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(822, 2, 6, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(823, 2, 5, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(824, 2, 5, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(825, 2, 5, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(826, 2, 5, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(827, 2, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(828, 2, 5, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(829, 2, 7, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(830, 2, 7, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(831, 2, 7, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(832, 2, 7, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(833, 2, 7, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(834, 2, 7, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(835, 2, 9, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(836, 2, 9, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(837, 2, 9, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(838, 2, 9, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(839, 2, 9, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(840, 2, 9, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(841, 2, 8, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(842, 2, 8, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(843, 2, 8, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(844, 2, 8, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(845, 2, 8, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(846, 2, 8, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(847, 2, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(848, 2, 3, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(849, 2, 3, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(850, 2, 3, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(851, 2, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(852, 2, 3, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(853, 2, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(854, 2, 2, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(855, 2, 2, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(856, 2, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(857, 2, 2, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(858, 2, 2, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(859, 2, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(860, 2, 1, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(861, 2, 1, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(862, 2, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(863, 2, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(864, 2, 1, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(865, 2, 10, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(866, 2, 10, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(867, 2, 10, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(868, 2, 10, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(869, 2, 10, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(870, 2, 10, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(871, 3, 6, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(872, 3, 6, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(873, 3, 6, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(874, 3, 6, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(875, 3, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(876, 3, 6, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(877, 3, 5, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(878, 3, 5, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(879, 3, 5, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(880, 3, 5, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(881, 3, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(882, 3, 5, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(883, 3, 7, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(884, 3, 7, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(885, 3, 7, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(886, 3, 7, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(887, 3, 7, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(888, 3, 7, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(889, 3, 9, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(890, 3, 9, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(891, 3, 9, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(892, 3, 9, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(893, 3, 9, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(894, 3, 9, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(895, 3, 8, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(896, 3, 8, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(897, 3, 8, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(898, 3, 8, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(899, 3, 8, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(900, 3, 8, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(901, 3, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(902, 3, 3, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(903, 3, 3, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(904, 3, 3, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(905, 3, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(906, 3, 3, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(907, 3, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(908, 3, 2, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(909, 3, 2, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(910, 3, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(911, 3, 2, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(912, 3, 2, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(913, 3, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(914, 3, 1, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(915, 3, 1, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(916, 3, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(917, 3, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(918, 3, 1, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(919, 3, 10, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(920, 3, 10, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(921, 3, 10, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(922, 3, 10, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(923, 3, 10, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(924, 3, 10, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(925, 6, 10, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(926, 6, 10, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(927, 6, 10, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(928, 6, 10, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(929, 6, 10, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(930, 6, 10, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(931, 6, 10, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(932, 6, 10, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(933, 6, 6, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(934, 6, 6, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(935, 6, 6, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(936, 6, 6, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(937, 6, 6, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(938, 6, 6, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(939, 6, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(940, 6, 6, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(941, 6, 5, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(942, 6, 5, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(943, 6, 5, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(944, 6, 5, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(945, 6, 5, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(946, 6, 5, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(947, 6, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(948, 6, 5, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(949, 6, 7, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(950, 6, 7, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(951, 6, 7, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(952, 6, 7, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(953, 6, 7, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(954, 6, 7, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(955, 6, 7, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(956, 6, 7, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(957, 6, 9, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(958, 6, 9, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(959, 6, 9, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(960, 6, 9, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(961, 6, 9, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(962, 6, 9, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(963, 6, 9, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(964, 6, 9, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(965, 6, 8, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(966, 6, 8, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(967, 6, 8, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(968, 6, 8, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(969, 6, 8, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(970, 6, 8, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(971, 6, 8, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(972, 6, 8, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(973, 6, 3, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(974, 6, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(975, 6, 3, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(976, 6, 3, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(977, 6, 3, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(978, 6, 3, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(979, 6, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(980, 6, 3, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(981, 6, 2, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(982, 6, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(983, 6, 2, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(984, 6, 2, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(985, 6, 2, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(986, 6, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(987, 6, 2, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(988, 6, 2, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(989, 6, 1, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(990, 6, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(991, 6, 1, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(992, 6, 1, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(993, 6, 1, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(994, 6, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(995, 6, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(996, 6, 1, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(997, 8, 6, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(998, 8, 6, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(999, 8, 6, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1000, 8, 6, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1001, 8, 6, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1002, 8, 6, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1003, 8, 6, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1004, 8, 6, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1005, 8, 5, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1006, 8, 5, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1007, 8, 5, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1008, 8, 5, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1009, 8, 5, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1010, 8, 5, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1011, 8, 5, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1012, 8, 5, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1013, 8, 7, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1014, 8, 7, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1015, 8, 7, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1016, 8, 7, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1017, 8, 7, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1018, 8, 7, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1019, 8, 7, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1020, 8, 7, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1021, 8, 9, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1022, 8, 9, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1023, 8, 9, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1024, 8, 9, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1025, 8, 9, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1026, 8, 9, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1027, 8, 9, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1028, 8, 9, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1029, 8, 8, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1030, 8, 8, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1031, 8, 8, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1032, 8, 8, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1033, 8, 8, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1034, 8, 8, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1035, 8, 8, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1036, 8, 8, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1037, 8, 3, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1038, 8, 3, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1039, 8, 3, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1040, 8, 3, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1041, 8, 3, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1042, 8, 3, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1043, 8, 3, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1044, 8, 3, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1045, 8, 2, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1046, 8, 2, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1047, 8, 2, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1048, 8, 2, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1049, 8, 2, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1050, 8, 2, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1051, 8, 2, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1052, 8, 2, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1053, 8, 1, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1054, 8, 1, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1055, 8, 1, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1056, 8, 1, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1057, 8, 1, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1058, 8, 1, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1059, 8, 1, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1060, 8, 1, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1061, 8, 10, 6, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1062, 8, 10, 5, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1063, 8, 10, 7, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1064, 8, 10, 9, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1065, 8, 10, 8, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1066, 8, 10, 3, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1067, 8, 10, 2, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1068, 8, 10, 1, 4, 0, 0, 'WorkflowTransition', NULL, NULL),
(1132, 1, 10, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1133, 1, 10, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1134, 1, 10, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1135, 1, 10, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1136, 1, 10, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1137, 1, 10, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1138, 1, 10, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1139, 1, 6, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1140, 1, 6, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1141, 1, 6, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1142, 1, 6, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1143, 1, 6, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1144, 1, 6, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1145, 1, 6, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1146, 1, 5, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1147, 1, 5, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1148, 1, 5, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1149, 1, 5, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1150, 1, 5, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1151, 1, 5, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1152, 1, 5, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1153, 1, 7, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1154, 1, 7, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1155, 1, 7, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1156, 1, 7, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1157, 1, 7, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1158, 1, 7, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1159, 1, 7, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1160, 1, 9, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1161, 1, 9, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1162, 1, 9, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1163, 1, 9, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1164, 1, 9, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1165, 1, 9, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1166, 1, 9, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1167, 1, 8, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1168, 1, 8, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1169, 1, 8, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1170, 1, 8, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1171, 1, 8, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1172, 1, 8, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1173, 1, 8, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1174, 1, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1175, 1, 3, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1176, 1, 3, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1177, 1, 3, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1178, 1, 3, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1179, 1, 3, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1180, 1, 3, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1181, 1, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1182, 1, 2, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1183, 1, 2, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1184, 1, 2, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1185, 1, 2, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1186, 1, 2, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1187, 1, 2, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1188, 1, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1189, 1, 1, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1190, 1, 1, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1191, 1, 1, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1192, 1, 1, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1193, 1, 1, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1194, 1, 1, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1195, 2, 10, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1196, 2, 10, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1197, 2, 10, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1198, 2, 10, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1199, 2, 10, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1200, 2, 10, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1201, 2, 10, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1202, 2, 6, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1203, 2, 6, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1204, 2, 6, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1205, 2, 6, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1206, 2, 6, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1207, 2, 6, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1208, 2, 6, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1209, 2, 5, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1210, 2, 5, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1211, 2, 5, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1212, 2, 5, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1213, 2, 5, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1214, 2, 5, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1215, 2, 5, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1216, 2, 7, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1217, 2, 7, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1218, 2, 7, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1219, 2, 7, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1220, 2, 7, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1221, 2, 7, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1222, 2, 7, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1223, 2, 9, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1224, 2, 9, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1225, 2, 9, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1226, 2, 9, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1227, 2, 9, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1228, 2, 9, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1229, 2, 9, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1230, 2, 8, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1231, 2, 8, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1232, 2, 8, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1233, 2, 8, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1234, 2, 8, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1235, 2, 8, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1236, 2, 8, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1237, 2, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1238, 2, 3, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1239, 2, 3, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1240, 2, 3, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1241, 2, 3, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1242, 2, 3, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1243, 2, 3, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1244, 2, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1245, 2, 2, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1246, 2, 2, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1247, 2, 2, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1248, 2, 2, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1249, 2, 2, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1250, 2, 2, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1251, 2, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1252, 2, 1, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1253, 2, 1, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1254, 2, 1, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1255, 2, 1, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1256, 2, 1, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1257, 2, 1, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1258, 3, 10, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1259, 3, 10, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1260, 3, 10, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1261, 3, 10, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1262, 3, 10, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1263, 3, 10, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1264, 3, 10, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1265, 3, 6, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1266, 3, 6, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1267, 3, 6, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1268, 3, 6, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1269, 3, 6, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1270, 3, 6, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1271, 3, 6, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1272, 3, 5, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1273, 3, 5, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1274, 3, 5, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1275, 3, 5, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1276, 3, 5, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1277, 3, 5, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1278, 3, 5, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1279, 3, 7, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1280, 3, 7, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1281, 3, 7, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1282, 3, 7, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1283, 3, 7, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1284, 3, 7, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1285, 3, 7, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1286, 3, 9, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1287, 3, 9, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1288, 3, 9, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL);
INSERT INTO `workflows` (`id`, `tracker_id`, `old_status_id`, `new_status_id`, `role_id`, `assignee`, `author`, `type`, `field_name`, `rule`) VALUES
(1289, 3, 9, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1290, 3, 9, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1291, 3, 9, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1292, 3, 9, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1293, 3, 8, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1294, 3, 8, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1295, 3, 8, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1296, 3, 8, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1297, 3, 8, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1298, 3, 8, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1299, 3, 8, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1300, 3, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1301, 3, 3, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1302, 3, 3, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1303, 3, 3, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1304, 3, 3, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1305, 3, 3, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1306, 3, 3, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1307, 3, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1308, 3, 2, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1309, 3, 2, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1310, 3, 2, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1311, 3, 2, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1312, 3, 2, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1313, 3, 2, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1314, 3, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1315, 3, 1, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1316, 3, 1, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1317, 3, 1, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1318, 3, 1, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1319, 3, 1, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1320, 3, 1, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1321, 6, 10, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1322, 6, 10, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1323, 6, 10, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1324, 6, 10, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1325, 6, 10, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1326, 6, 10, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1327, 6, 10, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1328, 6, 6, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1329, 6, 6, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1330, 6, 6, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1331, 6, 6, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1332, 6, 6, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1333, 6, 6, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1334, 6, 6, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1335, 6, 5, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1336, 6, 5, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1337, 6, 5, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1338, 6, 5, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1339, 6, 5, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1340, 6, 5, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1341, 6, 5, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1342, 6, 7, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1343, 6, 7, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1344, 6, 7, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1345, 6, 7, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1346, 6, 7, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1347, 6, 7, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1348, 6, 7, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1349, 6, 9, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1350, 6, 9, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1351, 6, 9, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1352, 6, 9, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1353, 6, 9, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1354, 6, 9, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1355, 6, 9, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1356, 6, 8, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1357, 6, 8, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1358, 6, 8, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1359, 6, 8, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1360, 6, 8, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1361, 6, 8, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1362, 6, 8, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1363, 6, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1364, 6, 3, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1365, 6, 3, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1366, 6, 3, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1367, 6, 3, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1368, 6, 3, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1369, 6, 3, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1370, 6, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1371, 6, 2, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1372, 6, 2, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1373, 6, 2, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1374, 6, 2, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1375, 6, 2, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1376, 6, 2, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1377, 6, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1378, 6, 1, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1379, 6, 1, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1380, 6, 1, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1381, 6, 1, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1382, 6, 1, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1383, 6, 1, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1447, 8, 10, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1448, 8, 10, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1449, 8, 10, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1450, 8, 10, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1451, 8, 10, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1452, 8, 10, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1453, 8, 10, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1454, 8, 6, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1455, 8, 6, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1456, 8, 6, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1457, 8, 6, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1458, 8, 6, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1459, 8, 6, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1460, 8, 6, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1461, 8, 5, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1462, 8, 5, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1463, 8, 5, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1464, 8, 5, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1465, 8, 5, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1466, 8, 5, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1467, 8, 5, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1468, 8, 7, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1469, 8, 7, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1470, 8, 7, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1471, 8, 7, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1472, 8, 7, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1473, 8, 7, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1474, 8, 7, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1475, 8, 9, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1476, 8, 9, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1477, 8, 9, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1478, 8, 9, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1479, 8, 9, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1480, 8, 9, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1481, 8, 9, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1482, 8, 8, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1483, 8, 8, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1484, 8, 8, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1485, 8, 8, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1486, 8, 8, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1487, 8, 8, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1488, 8, 8, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1489, 8, 3, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1490, 8, 3, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1491, 8, 3, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1492, 8, 3, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1493, 8, 3, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1494, 8, 3, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1495, 8, 3, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1496, 8, 2, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1497, 8, 2, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1498, 8, 2, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1499, 8, 2, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1500, 8, 2, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1501, 8, 2, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1502, 8, 2, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1503, 8, 1, 5, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1504, 8, 1, 7, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1505, 8, 1, 9, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1506, 8, 1, 8, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1507, 8, 1, 3, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1508, 8, 1, 2, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1509, 8, 1, 1, 5, 0, 0, 'WorkflowTransition', NULL, NULL),
(1510, 1, 10, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1511, 1, 10, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1512, 1, 10, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1513, 1, 10, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1514, 1, 10, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1515, 1, 6, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1516, 1, 6, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1517, 1, 6, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1518, 1, 6, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1519, 1, 6, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1520, 1, 5, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1521, 1, 5, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1522, 1, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1523, 1, 5, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1524, 1, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1525, 1, 7, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1526, 1, 7, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1527, 1, 7, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1528, 1, 7, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1529, 1, 7, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1530, 1, 9, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1531, 1, 9, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1532, 1, 9, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1533, 1, 9, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1534, 1, 9, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1535, 1, 8, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1536, 1, 8, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1537, 1, 8, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1538, 1, 8, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1539, 1, 8, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1540, 1, 3, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1541, 1, 3, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1542, 1, 3, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1543, 1, 3, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1544, 1, 3, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1545, 1, 2, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1546, 1, 2, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1547, 1, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1548, 1, 2, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1549, 1, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1550, 1, 1, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1551, 1, 1, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1552, 1, 1, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1553, 1, 1, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1554, 1, 1, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1555, 2, 10, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1556, 2, 10, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1557, 2, 10, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1558, 2, 10, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1559, 2, 10, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1560, 2, 10, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1561, 2, 6, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1562, 2, 6, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1563, 2, 6, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1564, 2, 6, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1565, 2, 6, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1566, 2, 6, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1567, 2, 5, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1568, 2, 5, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1569, 2, 5, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1570, 2, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1571, 2, 5, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1572, 2, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1573, 2, 7, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1574, 2, 7, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1575, 2, 7, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1576, 2, 7, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1577, 2, 7, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1578, 2, 7, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1579, 2, 9, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1580, 2, 9, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1581, 2, 9, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1582, 2, 9, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1583, 2, 9, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1584, 2, 9, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1585, 2, 8, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1586, 2, 8, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1587, 2, 8, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1588, 2, 8, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1589, 2, 8, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1590, 2, 8, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1591, 2, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1592, 2, 3, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1593, 2, 3, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1594, 2, 3, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1595, 2, 3, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1596, 2, 3, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1597, 2, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1598, 2, 2, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1599, 2, 2, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1600, 2, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1601, 2, 2, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1602, 2, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1603, 2, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1604, 2, 1, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1605, 2, 1, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1606, 2, 1, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1607, 2, 1, 2, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1608, 2, 1, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1609, 3, 6, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1610, 3, 6, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1611, 3, 6, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1612, 3, 6, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1613, 3, 5, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1614, 3, 5, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1615, 3, 5, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1616, 3, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1617, 3, 7, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1618, 3, 7, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1619, 3, 7, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1620, 3, 7, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1621, 3, 9, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1622, 3, 9, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1623, 3, 9, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1624, 3, 9, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1625, 3, 8, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1626, 3, 8, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1627, 3, 8, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1628, 3, 8, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1629, 3, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1630, 3, 3, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1631, 3, 3, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1632, 3, 3, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1633, 3, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1634, 3, 2, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1635, 3, 2, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1636, 3, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1637, 3, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1638, 3, 1, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1639, 3, 1, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1640, 3, 1, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1641, 3, 10, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1642, 3, 10, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1643, 3, 10, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1644, 3, 10, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1645, 6, 10, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1646, 6, 10, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1647, 6, 10, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1648, 6, 10, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1649, 6, 10, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1650, 6, 10, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1651, 6, 6, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1652, 6, 6, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1653, 6, 6, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1654, 6, 6, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1655, 6, 6, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1656, 6, 6, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1657, 6, 5, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1658, 6, 5, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1659, 6, 5, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1660, 6, 5, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1661, 6, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1662, 6, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1663, 6, 7, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1664, 6, 7, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1665, 6, 7, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1666, 6, 7, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1667, 6, 7, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1668, 6, 7, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1669, 6, 9, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1670, 6, 9, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1671, 6, 9, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1672, 6, 9, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1673, 6, 9, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1674, 6, 9, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1675, 6, 8, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1676, 6, 8, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1677, 6, 8, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1678, 6, 8, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1679, 6, 8, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1680, 6, 8, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1681, 6, 3, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1682, 6, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1683, 6, 3, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1684, 6, 3, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1685, 6, 3, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1686, 6, 3, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1687, 6, 2, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1688, 6, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1689, 6, 2, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1690, 6, 2, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1691, 6, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1692, 6, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1693, 6, 1, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1694, 6, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1695, 6, 1, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1696, 6, 1, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1697, 6, 1, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1698, 6, 1, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1699, 8, 6, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1700, 8, 6, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1701, 8, 6, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1702, 8, 6, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1703, 8, 6, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1704, 8, 6, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1705, 8, 6, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1706, 8, 5, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1707, 8, 5, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1708, 8, 5, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1709, 8, 5, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1710, 8, 5, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1711, 8, 5, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1712, 8, 5, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1713, 8, 7, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1714, 8, 7, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1715, 8, 7, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1716, 8, 7, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1717, 8, 7, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1718, 8, 7, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1719, 8, 7, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1720, 8, 9, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1721, 8, 9, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1722, 8, 9, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1723, 8, 9, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1724, 8, 9, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1725, 8, 9, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1726, 8, 9, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1727, 8, 8, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1728, 8, 8, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1729, 8, 8, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1730, 8, 8, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1731, 8, 8, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1732, 8, 8, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1733, 8, 8, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1734, 8, 3, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1735, 8, 3, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1736, 8, 3, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1737, 8, 3, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1738, 8, 3, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1739, 8, 3, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1740, 8, 3, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1741, 8, 2, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1742, 8, 2, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1743, 8, 2, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1744, 8, 2, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1745, 8, 2, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1746, 8, 2, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1747, 8, 2, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1748, 8, 1, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1749, 8, 1, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1750, 8, 1, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1751, 8, 1, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1752, 8, 1, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1753, 8, 1, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1754, 8, 1, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1755, 8, 10, 6, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1756, 8, 10, 5, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1757, 8, 10, 7, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1758, 8, 10, 9, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1759, 8, 10, 8, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1760, 8, 10, 3, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1761, 8, 10, 1, 6, 0, 0, 'WorkflowTransition', NULL, NULL),
(1762, 8, 6, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1763, 8, 6, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1764, 8, 6, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1765, 8, 6, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1766, 8, 6, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1767, 8, 6, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1768, 8, 6, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1769, 8, 5, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1770, 8, 5, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1771, 8, 5, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1772, 8, 5, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1773, 8, 5, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1774, 8, 5, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1775, 8, 5, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1776, 8, 7, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1777, 8, 7, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1778, 8, 7, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1779, 8, 7, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1780, 8, 7, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1781, 8, 7, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1782, 8, 7, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1783, 8, 9, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1784, 8, 9, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1785, 8, 9, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1786, 8, 9, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1787, 8, 9, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1788, 8, 9, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1789, 8, 9, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1790, 8, 8, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1791, 8, 8, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1792, 8, 8, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1793, 8, 8, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1794, 8, 8, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1795, 8, 8, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1796, 8, 8, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1797, 8, 3, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1798, 8, 3, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1799, 8, 3, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1800, 8, 3, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1801, 8, 3, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1802, 8, 3, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1803, 8, 3, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1804, 8, 2, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1805, 8, 2, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1806, 8, 2, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1807, 8, 2, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1808, 8, 2, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1809, 8, 2, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1810, 8, 2, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1811, 8, 1, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1812, 8, 1, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1813, 8, 1, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1814, 8, 1, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1815, 8, 1, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1816, 8, 1, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1817, 8, 1, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1818, 8, 10, 6, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1819, 8, 10, 5, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1820, 8, 10, 7, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1821, 8, 10, 9, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1822, 8, 10, 8, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1823, 8, 10, 3, 7, 0, 0, 'WorkflowTransition', NULL, NULL),
(1824, 8, 10, 1, 7, 0, 0, 'WorkflowTransition', NULL, NULL);
