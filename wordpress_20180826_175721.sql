-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE DATABASE "wordpress" -----------------------------
CREATE DATABASE IF NOT EXISTS `wordpress` CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `wordpress`;
-- ---------------------------------------------------------


-- CREATE TABLE "wp_commentmeta" -------------------------------
CREATE TABLE `wp_commentmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_comments" ----------------------------------
CREATE TABLE `wp_comments` ( 
	`comment_ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`comment_post_ID` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`comment_author` TinyText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`comment_author_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_author_url` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_author_IP` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`comment_content` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`comment_karma` Int( 11 ) NOT NULL DEFAULT 0,
	`comment_approved` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
	`comment_agent` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	PRIMARY KEY ( `comment_ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_links" -------------------------------------
CREATE TABLE `wp_links` ( 
	`link_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`link_url` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_image` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_target` VarChar( 25 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_description` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_visible` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
	`link_owner` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 1,
	`link_rating` Int( 11 ) NOT NULL DEFAULT 0,
	`link_updated` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`link_rel` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`link_notes` MediumText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`link_rss` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	PRIMARY KEY ( `link_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_options" -----------------------------------
CREATE TABLE `wp_options` ( 
	`option_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`option_name` VarChar( 191 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`option_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`autoload` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
	PRIMARY KEY ( `option_id` ),
	CONSTRAINT `option_name` UNIQUE( `option_name` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 139;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_postmeta" ----------------------------------
CREATE TABLE `wp_postmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 3;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_posts" -------------------------------------
CREATE TABLE `wp_posts` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`post_author` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`post_date` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_date_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`post_title` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`post_excerpt` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`post_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
	`comment_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
	`ping_status` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
	`post_password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`post_name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`to_ping` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`pinged` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`post_modified` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_modified_gmt` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`post_content_filtered` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`post_parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`guid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`menu_order` Int( 11 ) NOT NULL DEFAULT 0,
	`post_type` VarChar( 20 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
	`post_mime_type` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`comment_count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 5;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_term_relationships" ------------------------
CREATE TABLE `wp_term_relationships` ( 
	`object_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`term_order` Int( 11 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `object_id`, `term_taxonomy_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_term_taxonomy" -----------------------------
CREATE TABLE `wp_term_taxonomy` ( 
	`term_taxonomy_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`taxonomy` VarChar( 32 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`description` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`parent` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`count` BigInt( 20 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_taxonomy_id` ),
	CONSTRAINT `term_id_taxonomy` UNIQUE( `term_id`, `taxonomy` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_termmeta" ----------------------------------
CREATE TABLE `wp_termmeta` ( 
	`meta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`term_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `meta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_terms" -------------------------------------
CREATE TABLE `wp_terms` ( 
	`term_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`slug` VarChar( 200 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`term_group` BigInt( 10 ) NOT NULL DEFAULT 0,
	PRIMARY KEY ( `term_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_usermeta" ----------------------------------
CREATE TABLE `wp_usermeta` ( 
	`umeta_id` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_id` BigInt( 20 ) UNSIGNED NOT NULL DEFAULT 0,
	`meta_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	`meta_value` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
	PRIMARY KEY ( `umeta_id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 19;
-- -------------------------------------------------------------


-- CREATE TABLE "wp_users" -------------------------------------
CREATE TABLE `wp_users` ( 
	`ID` BigInt( 20 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`user_login` VarChar( 60 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_pass` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_nicename` VarChar( 50 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_email` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_url` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_registered` DateTime NOT NULL DEFAULT '0000-00-00 00:00:00',
	`user_activation_key` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	`user_status` Int( 11 ) NOT NULL DEFAULT 0,
	`display_name` VarChar( 250 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
	PRIMARY KEY ( `ID` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 2;
-- -------------------------------------------------------------


-- Dump data of "wp_commentmeta" ---------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_comments" ------------------------------
INSERT INTO `wp_comments`(`comment_ID`,`comment_post_ID`,`comment_author`,`comment_author_email`,`comment_author_url`,`comment_author_IP`,`comment_date`,`comment_date_gmt`,`comment_content`,`comment_karma`,`comment_approved`,`comment_agent`,`comment_type`,`comment_parent`,`user_id`) VALUES 
( '1', '1', 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-26 10:28:21', '2018-08-26 10:28:21', 'Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', '0', '1', '', '', '0', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_links" ---------------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_options" -------------------------------
INSERT INTO `wp_options`(`option_id`,`option_name`,`option_value`,`autoload`) VALUES 
( '1', 'siteurl', 'http://127.0.0.1/wordpress', 'yes' ),
( '2', 'home', 'http://127.0.0.1/wordpress', 'yes' ),
( '3', 'blogname', 'Codeline', 'yes' ),
( '4', 'blogdescription', 'Just another WordPress site', 'yes' ),
( '5', 'users_can_register', '0', 'yes' ),
( '6', 'admin_email', 'arafath077@gmail.com', 'yes' ),
( '7', 'start_of_week', '1', 'yes' ),
( '8', 'use_balanceTags', '0', 'yes' ),
( '9', 'use_smilies', '1', 'yes' ),
( '10', 'require_name_email', '1', 'yes' ),
( '11', 'comments_notify', '1', 'yes' ),
( '12', 'posts_per_rss', '10', 'yes' ),
( '13', 'rss_use_excerpt', '0', 'yes' ),
( '14', 'mailserver_url', 'mail.example.com', 'yes' ),
( '15', 'mailserver_login', 'login@example.com', 'yes' ),
( '16', 'mailserver_pass', 'password', 'yes' ),
( '17', 'mailserver_port', '110', 'yes' ),
( '18', 'default_category', '1', 'yes' ),
( '19', 'default_comment_status', 'open', 'yes' ),
( '20', 'default_ping_status', 'open', 'yes' ),
( '21', 'default_pingback_flag', '1', 'yes' ),
( '22', 'posts_per_page', '10', 'yes' ),
( '23', 'date_format', 'F j, Y', 'yes' ),
( '24', 'time_format', 'g:i a', 'yes' ),
( '25', 'links_updated_date_format', 'F j, Y g:i a', 'yes' ),
( '26', 'comment_moderation', '0', 'yes' ),
( '27', 'moderation_notify', '1', 'yes' ),
( '28', 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes' ),
( '29', 'rewrite_rules', 'a:160:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:8:"cptbc/?$";s:25:"index.php?post_type=cptbc";s:38:"cptbc/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=cptbc&feed=$matches[1]";s:33:"cptbc/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=cptbc&feed=$matches[1]";s:25:"cptbc/page/([0-9]{1,})/?$";s:43:"index.php?post_type=cptbc&paged=$matches[1]";s:8:"films/?$";s:25:"index.php?post_type=films";s:38:"films/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=films&feed=$matches[1]";s:33:"films/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=films&feed=$matches[1]";s:25:"films/page/([0-9]{1,})/?$";s:43:"index.php?post_type=films&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:58:"carousel_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?carousel_category=$matches[1]&feed=$matches[2]";s:53:"carousel_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:56:"index.php?carousel_category=$matches[1]&feed=$matches[2]";s:34:"carousel_category/([^/]+)/embed/?$";s:50:"index.php?carousel_category=$matches[1]&embed=true";s:46:"carousel_category/([^/]+)/page/?([0-9]{1,})/?$";s:57:"index.php?carousel_category=$matches[1]&paged=$matches[2]";s:28:"carousel_category/([^/]+)/?$";s:39:"index.php?carousel_category=$matches[1]";s:33:"cptbc/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"cptbc/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"cptbc/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"cptbc/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"cptbc/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"cptbc/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"cptbc/([^/]+)/embed/?$";s:38:"index.php?cptbc=$matches[1]&embed=true";s:26:"cptbc/([^/]+)/trackback/?$";s:32:"index.php?cptbc=$matches[1]&tb=1";s:46:"cptbc/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?cptbc=$matches[1]&feed=$matches[2]";s:41:"cptbc/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?cptbc=$matches[1]&feed=$matches[2]";s:34:"cptbc/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?cptbc=$matches[1]&paged=$matches[2]";s:41:"cptbc/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?cptbc=$matches[1]&cpage=$matches[2]";s:30:"cptbc/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?cptbc=$matches[1]&page=$matches[2]";s:22:"cptbc/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"cptbc/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"cptbc/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"cptbc/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"cptbc/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"cptbc/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"films/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"films/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"films/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"films/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"films/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"films/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"films/([^/]+)/embed/?$";s:38:"index.php?films=$matches[1]&embed=true";s:26:"films/([^/]+)/trackback/?$";s:32:"index.php?films=$matches[1]&tb=1";s:46:"films/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?films=$matches[1]&feed=$matches[2]";s:41:"films/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?films=$matches[1]&feed=$matches[2]";s:34:"films/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?films=$matches[1]&paged=$matches[2]";s:41:"films/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?films=$matches[1]&cpage=$matches[2]";s:30:"films/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?films=$matches[1]&page=$matches[2]";s:22:"films/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"films/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"films/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"films/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"films/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"films/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:"country/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?country=$matches[1]&feed=$matches[2]";s:43:"country/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?country=$matches[1]&feed=$matches[2]";s:24:"country/([^/]+)/embed/?$";s:40:"index.php?country=$matches[1]&embed=true";s:36:"country/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?country=$matches[1]&paged=$matches[2]";s:18:"country/([^/]+)/?$";s:29:"index.php?country=$matches[1]";s:46:"genre/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?genre=$matches[1]&feed=$matches[2]";s:41:"genre/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?genre=$matches[1]&feed=$matches[2]";s:22:"genre/([^/]+)/embed/?$";s:38:"index.php?genre=$matches[1]&embed=true";s:34:"genre/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?genre=$matches[1]&paged=$matches[2]";s:16:"genre/([^/]+)/?$";s:27:"index.php?genre=$matches[1]";s:45:"year/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:40:"year/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:21:"year/([^/]+)/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:33:"year/([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:15:"year/([^/]+)/?$";s:26:"index.php?year=$matches[1]";s:47:"actors/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?actors=$matches[1]&feed=$matches[2]";s:42:"actors/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?actors=$matches[1]&feed=$matches[2]";s:23:"actors/([^/]+)/embed/?$";s:39:"index.php?actors=$matches[1]&embed=true";s:35:"actors/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?actors=$matches[1]&paged=$matches[2]";s:17:"actors/([^/]+)/?$";s:28:"index.php?actors=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:66:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:61:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:42:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:54:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:36:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:53:"([^/]+)/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:48:"([^/]+)/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:29:"([^/]+)/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:41:"([^/]+)/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:23:"([^/]+)/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:16:"([^/]+)/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:10:"([^/]+)/?$";s:26:"index.php?year=$matches[1]";s:55:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:65:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:85:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:80:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:80:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:61:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:50:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:54:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:74:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:69:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:62:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:69:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:58:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:44:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:54:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:74:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:69:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:50:"[^/]+/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:61:"([^/]+)/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:48:"([^/]+)/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes' ),
( '30', 'hack_file', '0', 'yes' ),
( '31', 'blog_charset', 'UTF-8', 'yes' ),
( '32', 'moderation_keys', '', 'no' ),
( '33', 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";}', 'yes' ),
( '34', 'category_base', '', 'yes' ),
( '35', 'ping_sites', 'http://rpc.pingomatic.com/', 'yes' ),
( '36', 'comment_max_links', '2', 'yes' ),
( '37', 'gmt_offset', '0', 'yes' ),
( '38', 'default_email_category', '1', 'yes' ),
( '39', 'recently_edited', '', 'no' ),
( '40', 'template', 'unite', 'yes' ),
( '41', 'stylesheet', 'unite-child', 'yes' ),
( '42', 'comment_whitelist', '1', 'yes' ),
( '43', 'blacklist_keys', '', 'no' ),
( '44', 'comment_registration', '0', 'yes' ),
( '45', 'html_type', 'text/html', 'yes' ),
( '46', 'use_trackback', '0', 'yes' ),
( '47', 'default_role', 'subscriber', 'yes' ),
( '48', 'db_version', '38590', 'yes' ),
( '49', 'uploads_use_yearmonth_folders', '1', 'yes' ),
( '50', 'upload_path', '', 'yes' ),
( '51', 'blog_public', '1', 'yes' ),
( '52', 'default_link_category', '2', 'yes' ),
( '53', 'show_on_front', 'posts', 'yes' ),
( '54', 'tag_base', '', 'yes' ),
( '55', 'show_avatars', '1', 'yes' ),
( '56', 'avatar_rating', 'G', 'yes' ),
( '57', 'upload_url_path', '', 'yes' ),
( '58', 'thumbnail_size_w', '150', 'yes' ),
( '59', 'thumbnail_size_h', '150', 'yes' ),
( '60', 'thumbnail_crop', '1', 'yes' ),
( '61', 'medium_size_w', '300', 'yes' ),
( '62', 'medium_size_h', '300', 'yes' ),
( '63', 'avatar_default', 'mystery', 'yes' ),
( '64', 'large_size_w', '1024', 'yes' ),
( '65', 'large_size_h', '1024', 'yes' ),
( '66', 'image_default_link_type', 'none', 'yes' ),
( '67', 'image_default_size', '', 'yes' ),
( '68', 'image_default_align', '', 'yes' ),
( '69', 'close_comments_for_old_posts', '0', 'yes' ),
( '70', 'close_comments_days_old', '14', 'yes' ),
( '71', 'thread_comments', '1', 'yes' ),
( '72', 'thread_comments_depth', '5', 'yes' ),
( '73', 'page_comments', '0', 'yes' ),
( '74', 'comments_per_page', '50', 'yes' ),
( '75', 'default_comments_page', 'newest', 'yes' ),
( '76', 'comment_order', 'asc', 'yes' ),
( '77', 'sticky_posts', 'a:0:{}', 'yes' ),
( '78', 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '79', 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>
123 Main Street
New York, NY 10001

<strong>Hours</strong>
Monday&mdash;Friday: 9:00AM&ndash;5:00PM
Saturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:7:"Find Us";s:4:"text";s:168:"<strong>Address</strong>
123 Main Street
New York, NY 10001

<strong>Hours</strong>
Monday&mdash;Friday: 9:00AM&ndash;5:00PM
Saturday &amp; Sunday: 11:00AM&ndash;3:00PM";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:15:"About This Site";s:4:"text";s:85:"This may be a good place to introduce yourself and your site or include some credits.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '80', 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes' ),
( '81', 'uninstall_plugins', 'a:0:{}', 'no' ),
( '82', 'timezone_string', '', 'yes' ),
( '83', 'page_for_posts', '0', 'yes' ),
( '84', 'page_on_front', '0', 'yes' ),
( '85', 'default_post_format', '0', 'yes' ),
( '86', 'link_manager_enabled', '0', 'yes' ),
( '87', 'finished_splitting_shared_terms', '1', 'yes' ),
( '88', 'site_icon', '0', 'yes' ),
( '89', 'medium_large_size_w', '768', 'yes' ),
( '90', 'medium_large_size_h', '0', 'yes' ),
( '91', 'wp_page_for_privacy_policy', '3', 'yes' ),
( '92', 'show_comments_cookies_opt_in', '0', 'yes' ),
( '93', 'initial_db_version', '38590', 'yes' ),
( '94', 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes' ),
( '95', 'fresh_site', '1', 'yes' ),
( '96', 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '97', 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '98', 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '99', 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes' ),
( '100', 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes' ),
( '101', 'sidebars_widgets', 'a:6:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:5:"home1";a:0:{}s:5:"home2";a:0:{}s:5:"home3";a:0:{}s:13:"array_version";i:3;}', 'yes' ),
( '102', 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '103', 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '104', 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '105', 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '106', 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '107', 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '108', 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '109', 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '110', 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '111', 'cron', 'a:6:{i:1535286503;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1535287650;a:1:{s:26:"upgrader_scheduled_cleanup";a:1:{s:32:"c9059feef497c200e69cb9956a81f005";a:2:{s:8:"schedule";b:0;s:4:"args";a:1:{i:0;i:5;}}}}i:1535322503;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1535365717;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1535368152;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes' ),
( '112', 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1535280517;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes' ),
( '116', '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1535284076;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no' ),
( '121', '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1535284080;s:7:"checked";a:5:{s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";s:11:"unite-child";s:5:"1.0.0";s:5:"unite";s:5:"2.0.2";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no' ),
( '122', '_site_transient_timeout_browser_6a356487460bec0330715c878bc279a2', '1535884119', 'no' ),
( '123', '_site_transient_browser_6a356487460bec0330715c878bc279a2', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"68.0.3440.106";s:8:"platform";s:5:"Linux";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no' ),
( '125', 'can_compress_scripts', '1', 'no' ),
( '126', '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1535322521', 'no' ),
( '127', '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no' ),
( '128', '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1535322527', 'no' ),
( '129', '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:34:"
	Thu, 02 Aug 2018 22:13:06 +0000	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=5.0-alpha-43581";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"WordPress 4.9.8 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 21:25:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6165";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:398:"We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme. Following are the highlights of what is now available. “Try Gutenberg” callout Most users will now be presented with a notice in their WordPress dashboard. This “Try Gutenberg” [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Paul Biron";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:10398:"<p>We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme.</p>
<p><span style="font-weight: 400">Following are the highlights of what is now available.</span></p>
<h2>“Try Gutenberg” callout</h2>
<p><span style="font-weight: 400">Most users will now be presented with a notice in their WordPress dashboard. This </span>“Try Gutenberg” is an opportunity for users to use the Gutenberg block editor before it is released in WordPress 5.0.</p>
<p><img class="alignnone wp-image-6168 size-full" src="https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=632%2C392&#038;ssl=1" alt="" width="632" height="392" srcset="https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=2528&amp;ssl=1 2528w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=300%2C186&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=768%2C476&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=1024%2C634&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>
<p>In WordPress 4.9.8, the callout will be shown to the following users:</p>
<ul>
<li>If Gutenberg <em>is not</em> installed or activated, the callout will be shown to Admin users on single sites, and Super Admin users on multisites.</li>
<li>If Gutenberg <em>is</em> installed and activated, the callout will be shown to Contributor users and above.</li>
<li>If the Classic Editor plugin is installed and activated, the callout will be hidden for all users.</li>
</ul>
<p class="entry-title"><span style="font-weight: 400">You can learn more by reading  </span><a href="https://make.wordpress.org/core/2018/08/02/try-gutenberg-callout-in-wordpress-4-9-8/">“Try Gutenberg” Callout in WordPress 4.9.8</a>.</p>
<h2>Privacy fixes/enhancements</h2>
<p>This release includes 18 Privacy fixes focused on ensuring consistency and flexibility in the new personal data tools <span style="font-weight: 400">that were </span>added in 4.9.6, including:</p>
<ul>
<li>The type of request being confirmed is now included in the subject line for all privacy confirmation emails.</li>
<li>Improved consistency with site name being used for privacy emails in multisite.</li>
<li>Pagination for Privacy request admin screens can now be adjusted.</li>
<li>Increased the test coverage for several core privacy functions.</li>
</ul>
<p><a href="https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/">This post has more information about all of the issues fixed in 4.9.8 if you&#8217;d like to learn more</a>.</p>
<p><a href="https://wordpress.org/download/">Download WordPress 4.9.8</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>
<p>Thank you to everyone who contributed to WordPress 4.9.8:</p>
<p><a href="https://profiles.wordpress.org/1naveengiri/">1naveengiri</a>, <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">Abdullah Ramzan</a>, <a href="https://profiles.wordpress.org/alejandroxlopez/">alejandroxlopez</a>, <a href="https://profiles.wordpress.org/allendav/">Allen Snook</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/andrewtaylor-1/">Andrew Taylor</a>, <a href="https://profiles.wordpress.org/aryamaaru/">Arun</a>, <a href="https://profiles.wordpress.org/ayeshrajans/">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bph/">Birgit Pauli-Haack</a>, <a href="https://profiles.wordpress.org/bjornw/">BjornW</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj/">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/burhandodhy/">Burhan Nasir</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/chrislema/">Chris Lema</a>, <a href="https://profiles.wordpress.org/coreymckrill/">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danieltj/">Daniel James</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/dontstealmyfish/">dontstealmyfish</a>, <a href="https://profiles.wordpress.org/dyrer/">dyrer</a>, <a href="https://profiles.wordpress.org/felipeelia/">Felipe Elia</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fclaussen/">Fernando Claussen</a>, <a href="https://profiles.wordpress.org/garetharnold/">Gareth</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah/">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/gm_alex/">GM_Alex</a>, <a href="https://profiles.wordpress.org/idea15/">Heather Burns</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/imath/">imath</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">JJJ</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/joen/">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey/">Jonny Harris</a>, <a href="https://profiles.wordpress.org/chanthaboune/">Josepha</a>, <a href="https://profiles.wordpress.org/joshuawold/">JoshuaWold</a>, <a href="https://profiles.wordpress.org/joyously/">Joy</a>, <a href="https://profiles.wordpress.org/jrf/">jrf</a>, <a href="https://profiles.wordpress.org/kadamwhite/">K. Adam White</a>, <a href="https://profiles.wordpress.org/khaihong/">khaihong</a>, <a href="https://profiles.wordpress.org/kjellr/">kjellr</a>, <a href="https://profiles.wordpress.org/xkon/">Konstantinos Xenos</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/leanderiversen/">Leander Iversen</a>, <a href="https://profiles.wordpress.org/leemon/">leemon</a>, <a href="https://profiles.wordpress.org/macbookandrew/">macbookandrew</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/matveb/">Matias Ventura</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mensmaximus/">mensmaximus</a>, <a href="https://profiles.wordpress.org/mermel/">mermel</a>, <a href="https://profiles.wordpress.org/metalandcoffee/">metalandcoffee</a>, <a href="https://profiles.wordpress.org/michelleweber/">michelleweber</a>, <a href="https://profiles.wordpress.org/dimadin/">Milan Dinić</a>, <a href="https://profiles.wordpress.org/xpertone/">Muhammad Kashif</a>, <a href="https://profiles.wordpress.org/nao/">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nathanatmoz/">Nathan Johnson</a>, <a href="https://profiles.wordpress.org/ov3rfly/">Ov3rfly</a>, <a href="https://profiles.wordpress.org/palmiak/">palmiak</a>, <a href="https://profiles.wordpress.org/pbiron/">Paul Biron</a>, <a href="https://profiles.wordpress.org/pmbaldha/">Prashant Baldha</a>, <a href="https://profiles.wordpress.org/presstigers/">PressTigers</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rafsuntaskin/">Rafsun Chowdhury</a>, <a href="https://profiles.wordpress.org/redcastor/">redcastor</a>, <a href="https://profiles.wordpress.org/littlerchicken/">Robin Cornett</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/pross/">Simon Prosser</a>, <a href="https://profiles.wordpress.org/skoldin/">skoldin</a>, <a href="https://profiles.wordpress.org/spyderbytes/">spyderbytes</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/sebastienserre/">Sébastien SERRE</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tharsheblows/">tharsheblows</a>, <a href="https://profiles.wordpress.org/thomasplevy/">Thomas Patrick Levy</a>, <a href="https://profiles.wordpress.org/timbowesohft/">timbowesohft</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs/">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tz-media/">Tobias Zimpel</a>, <a href="https://profiles.wordpress.org/tobifjellner/">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/usmankhalid/">Usman Khalid</a>, <a href="https://profiles.wordpress.org/warmlaundry/">warmlaundry</a>, <a href="https://profiles.wordpress.org/earnjam/">William Earnhardt</a>, <a href="https://profiles.wordpress.org/fierevere/">Yui</a>, and <a href="https://profiles.wordpress.org/yuriv/">YuriV</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6165";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"The Month in WordPress: July 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2018/08/the-month-in-wordpress-july-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Aug 2018 09:11:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6158";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:333:"With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July. Release of WordPress 4.9.7 On July 5, WordPress 4.9.7 was released,  fixing one security issue and 17 other bugs across the platform. While this is a minor release, incremental fixes [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6411:"<p>With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July.</p>

<hr class="wp-block-separator" />

<h2>Release of WordPress 4.9.7</h2>

<p>On July 5, <a href="https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/">WordPress 4.9.7 was released</a>,  fixing one security issue and 17 other bugs across the platform.<br /></p>

<p>While this is a minor release, incremental fixes are essential to keep WordPress running smoothly. Everyone is encouraged to update as soon as possible and to make sure that automatic updates are switched on.<br /></p>

<p>Would you like to get involved in building WordPress Core? Follow <a href="https://make.wordpress.org/core/">the Core team blog</a> and join the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>The New WordPress Editor</h2>

<p>In the upcoming minor release of WordPress, 4.9.8, a new section in the dashboard will feature Gutenberg, the upcoming content editor for WordPress.<br /></p>

<p>While the official release of Gutenberg <a href="https://wordpress.org/news/2018/07/update-on-gutenberg/">is scheduled</a> for the coming months, you can already install it as <a href="https://wordpress.org/plugins/gutenberg/">a plugin</a> to test it out right now. Additionally, <a href="https://wordpress.org/gutenberg/">a brand new demo page</a> is now available — play around with the many features the editor has to offer, without installing it on your own site.<br /></p>

<p>Would you like to help build or test Gutenberg? Follow <a href="https://make.wordpress.org/core/">the Core team blog</a> and join the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>Page Design Updates on WordPress.org</h2>

<p>Bit by bit we’re refreshing the design of WordPress.org. The latest pages to get a new treatment have been <a href="https://wordpress.org/download/">the Download page</a> and <a href="https://profiles.wordpress.org/matt/">user profiles</a>.<br /></p>

<p>The Meta and Design teams worked hard to make these new designs a reality, with notable contributions from <a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>, <a href=\'https://profiles.wordpress.org/obenland/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>obenland</a>, <a href=\'https://profiles.wordpress.org/mapk/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mapk</a>, and <a href=\'https://profiles.wordpress.org/kjellr/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kjellr</a>. The new designs enhance the overall look of the site and provide more relevant information to those searching.<br /></p>

<p>Would you like to get involved in the design refresh? Follow the <a href="https://make.wordpress.org/meta/">Meta</a> and <a href="https://make.wordpress.org/design/">Design</a> team blogs and join the #meta and #design channels in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>The First WP-CLI Hack Day</h2>

<p>On Friday July 20, the WP-CLI team <a href="https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/">held their first hack day</a> — a global event encouraging people to contribute to the official command line tool for WordPress.<br /></p>

<p>Run by <a href=\'https://profiles.wordpress.org/schlessera/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>schlessera</a>, the event <a href="https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/"> was a great success</a>. Twelve pull requests were  merged and another 13 submitted. It also included a video chat to give all contributors a space to meet each other and connect directly.<br /></p>

<p>Would  you like to get involved in contributing to WP-CLI? Follow <a href="https://make.wordpress.org/cli/">the team blog</a> and join the #cli channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<hr class="wp-block-separator" />

<h2>Further Reading:</h2>

<ul><li>The WordPress Foundation is <a href="https://wordpressfoundation.org/2018/call-for-organizers-introduction-to-open-source-workshops-for-2018/">looking for local community organizers to run introductory open-source workshops</a> in 2018.</li><li><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a> compiled <a href="https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/">updates for the last quarter</a> from the contribution teams all across the WordPress project.</li><li>In a great move for internationalization, <a href="https://en.blog.wordpress.com/2018/03/29/the-wordpress-mobile-apps-now-support-right-to-left-languages/">the WordPress Mobile Apps now support right-to-left languages</a>.</li><li><a href="https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/">WordCamp events can now accept payment via Stripe</a> — PayPal remains an alternative option.</li><li>The WP-CLI team will soon <a href="https://make.wordpress.org/cli/2018/07/19/details-on-the-upcoming-major-release/">release v2.0</a> of the official WordPress command line tool.</li><li>The Fields API project in WordPress Core <a href="https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership">is looking for a new lead</a> to drive it forward.</li><li>In WordPress 4.9.8, <a href="https://make.wordpress.org/core/2018/07/27/registering-metadata-in-4-9-8/">it will  be possible</a> for developers to fully register the meta fields used by their plugins and themes.</li><li>After many years of hard work, <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards">v1.0.0 of the WordPress Coding Standards for PHP_CodeSniffer</a> has been released.</li><li>The Mobile team <a href="https://make.wordpress.org/mobile/2018/07/31/call-for-testing-wordpress-for-ios-10-6/">is looking for people to help test</a> v10.6 of WordPress for iOS.</li></ul>

<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href="https://make.wordpress.org/community/month-in-wordpress-submissions/"><em>submit it here</em></a><em>.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6158";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:51:"
		
		
				
		
				
		

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Quarterly Updates | Q2 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:61:"https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 Jul 2018 14:50:01 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"Updates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6140";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:347:"To keep everyone aware of big projects and efforts across WordPress contributor teams, I&#8217;ve reached out to each team&#8217;s listed representatives. I asked each of them to share their Top Priority (and when they hope for it to be completed), as well as their biggest Wins and Worries. Have questions? I&#8217;ve included a link to [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Josepha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:15622:"<p><em>To keep everyone aware of big projects and efforts across WordPress contributor teams, I&#8217;ve reached out to each team&#8217;s <a href="https://make.wordpress.org/updates/team-reps/">listed representatives</a>. I asked each of them to share their Top Priority (and when they hope for it to be completed), as well as their biggest Wins and Worries. Have questions? I&#8217;ve included a link to each team&#8217;s site in the headings.﻿</em></p>

<h2><a href="https://make.wordpress.org/accessibility/">Accessibility</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/rianrietveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>rianrietveld</a>, <a href=\'https://profiles.wordpress.org/joedolson/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joedolson</a>, <a href=\'https://profiles.wordpress.org/afercia/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>afercia</a></li>
	<li><strong>Priority</strong>: Working to make sure that Gutenberg is reasonably accessible prior to merge. ETA is before 5.0</li>
	<li><strong>Struggle</strong>: Lack of developers and accessibility experts to help test and code the milestone issues. <em>The team is doing outreach to help solve this problem.</em></li>
	<li><strong>Big Win</strong>: Interest from companies like The Paciello Group and Tenon.io to help out with Gutenberg code review and testing tools.</li>
</ul>

<h2><a href="https://make.wordpress.org/cli/">CLI</a></h2>

<ul>
	<li><strong>Contacted</strong>: @danielbachhuber, <a href=\'https://profiles.wordpress.org/schlessera/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>schlessera</a></li>
	<li><strong>Priority</strong>: Very first global <a href="https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/">Hack Day</a> is coming up July 20. Version 2.0.0 is still in progress (new <a href="https://github.com/wp-cli/wp-cli/issues/4752">ETA</a> is end of July).</li>
	<li><strong>Struggle</strong>: The team continues to need new contributors. The current team is tiny but tough.</li>
	<li><strong>Big Win</strong>: WP-CLI is currently one of the project&#8217;s four main focuses, as mentioned in the Summer Update at WordCamp Europe.</li>
</ul>

<h2><a href="https://make.wordpress.org/community/">Community</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/francina/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>francina</a>, <a href=\'https://profiles.wordpress.org/hlashbrooke/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>hlashbrooke</a></li>
	<li><strong>Priority</strong>: Focusing on smoothing out the processes in our community management by building up our team of volunteers and establishing what tools we need to keep things running well. ETA is ongoing.</li>
	<li><strong>Struggle</strong>: Our two biggest struggles at the moment are tracking what we need to get done, and making final decisions on things. <em>There is current work on the tools available to assist with tracking progress.﻿</em></li>
	<li><strong>Big Win</strong>: After making a concerted effort to get more contributors on the Community Team, we now have a much larger group of volunteers working as deputies and WordCamp mentors</li>
</ul>

<h2><a href="https://make.wordpress.org/core/">Core</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a></li>
	<li><strong>Priority</strong>: Following the <a href="https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/">WordCamp Europe summer update</a> ﻿(and the companion post <a href="https://wordpress.org/news/2018/07/update-on-gutenberg/">here</a>), the team is getting Gutenberg (the new WordPress editing experience) into a strong state for the 5.0 release. Potential ETA as soon as August.</li>
	<li><strong>Struggle</strong>: Coordinating momentum and direction as we start seeing more contributors offering their time. Still working our way through open issues. <em>﻿The team is starting multiple bug scrubs each week to work through these more quickly and transparently.</em></li>
	<li><strong>Big Win</strong>: Had a <a href="https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/">sizable release in 4.9.6</a> which featured major updates around privacy tools and functionality in Core.</li>
</ul>

<h2><a href="https://make.wordpress.org/design/">Design</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/melchoyce/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>melchoyce</a>, <a href=\'https://profiles.wordpress.org/karmatosed/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>karmatosed</a>, <a href=\'https://profiles.wordpress.org/boemedia/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>boemedia</a>, <a href=\'https://profiles.wordpress.org/joshuawold/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joshuawold</a>, <a href=\'https://profiles.wordpress.org/mizejewski/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mizejewski</a></li>
	<li><strong>Priority</strong>: Better on-boarding of new contributors, especially creating better documentation. ETA is end of July.</li>
	<li><strong>Struggle</strong>: It&#8217;s hard to identify reasonably small tasks for first-time contributors.</li>
	<li><strong>Big Win</strong>: The team is much more organized now which has helped clear out the design backlog, bring in new contributors, and also keep current contributors coming back. <em>Bonus: Joshua Wold will co-lead the upcoming release.</em></li>
</ul>

<h2><a href="https://make.wordpress.org/docs/">Documentation</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/kenshino/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>kenshino</a><br /></li>
	<li><strong>Priority</strong>: Opening up the work on <a href="https://make.wordpress.org/docs/2018/02/26/state-of-helphub-february-2018/">HelpHub</a> to new contributors and easing the onboarding process. No ETA.<br /></li>
	<li><strong>Struggle</strong>: Some blockers with making sure the code and database can be ready to launch on https://wordpress.org/support/<br /></li>
	<li><strong>Big Win</strong>: The <a href="https://wp-helphub.com/">first phase of HelpHub</a> creation is complete, which means content updates (current info, more readable, easier discovery), internal search, design improvements, and REST API endpoints.</li>
</ul>

<h2><a href="https://make.wordpress.org/hosting/">Hosting</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/mikeschroder/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>mikeschroder</a>, <a href=\'https://profiles.wordpress.org/jadonn/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jadonn</a></li>
	<li><strong>Priority</strong>: Preparing hosts for supporting Gutenberg, especially support questions they&#8217;re likely to see when the &#8220;Try Gutenberg&#8221; callout is released. ETA July 31st, then before WordPress 5.0<br /><strong></strong></li>
	<li><strong>Struggle</strong>: Most contributions are still made a by a small team of volunteers. Seeing a few more people join, but progress is slow.<br /><strong></strong></li>
	<li><strong>﻿Big Win</strong>: New team members and hosting companies have joined the #hosting-community team and have started contributing.</li>
</ul>

<h2><a href="https://make.wordpress.org/marketing/">Marketing</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/bridgetwillard/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>bridgetwillard</a></li>
	<li><strong>Priority</strong>: Continuing to write and publish case studies from the community. ETA is ongoing.</li>
	<li><strong>Struggle</strong>: No current team struggles.</li>
	<li><strong>Big Win</strong>: Wrote and designed a short <a href="https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/">Contributor Day onboarding card</a>. It was used at Contributor Day at WCEU and onboarding time went down to 1 hour instead of 3 hours.</li>
</ul>

<h2><a href="https://make.wordpress.org/meta/">Meta</a> (WordPress.org Site)</h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/tellyworth/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>tellyworth</a>, <a href=\'https://profiles.wordpress.org/coffee2code/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>coffee2code</a></li>
	<li><strong>Priority</strong>: Reducing manual work around the contributor space (theme review, GDPR/privacy, plugin review). ETA for small wins is end of quarter, larger efforts after that.</li>
	<li><strong>Struggle</strong>: Maintaining momentum on tickets. <em>There are also some discussions about updating the ticket management process across teams that use the Meta trac system.</em></li>
	<li><strong>Big Win</strong>: The new About page launched and has been translated across most locale sites.</li>
</ul>

<h2><a href="https://make.wordpress.org/mobile/">Mobile</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/elibud/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>elibud</a></li>
	<li><strong>Priority</strong>: Getting Gutenberg in the mobile applications. ETA is late December.</li>
	<li><strong>Struggle</strong>: Consuming the Gutenberg source in the ReactNative app directly. <em>More info can be found here: https://make.wordpress.org/mobile/2018/07/09/next-steps-for-gutenberg-mobile/</em></li>
	<li><strong>Big Win</strong>: The WordPress mobile applications now fully support right-to-left languages and are compliant with the latest standards for accessibility.</li>
</ul>

<h2><a href="https://make.wordpress.org/plugins/">Plugins</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/ipstenu/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ipstenu</a></li>
	<li><strong>Priority</strong>: Clearing ~8,000 unused plugins from the queues. Likely ETA is September.<br /></li>
	<li><strong>Struggles</strong>: Had to triage a lot of false claims around plugins offering GDPR compliance.</li>
	<li><strong>Big Win</strong>: Released 4.9.6 and <a href="https://make.wordpress.org/plugins/2018/05/17/wp-4-9-6-privacy-hooks-and-you/">updated expectations</a> with plugin authors. Huge thanks to the Core Privacy team for their hard work on this.</li>
</ul>

<h2><a href="https://make.wordpress.org/polyglots/">Polyglots</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/petya/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>petya</a>, <a href=\'https://profiles.wordpress.org/ocean90/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ocean90</a>, <a href=\'https://profiles.wordpress.org/nao/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>nao</a>, <a href=\'https://profiles.wordpress.org/chantalc/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chantalc</a>, <a href=\'https://profiles.wordpress.org/deconf/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>deconf</a>, <a href=\'https://profiles.wordpress.org/casiepa/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>casiepa</a></li>
	<li><strong>Priority</strong>: Keep WordPress releases translated to 100% and then concentrate on the top 100 plugins and themes. ETA is ongoing.<br /><strong></strong></li>
	<li><strong>﻿Struggle</strong>: Getting new PTEs fast enough, and complex tools/systems. Overall, the volume of strings awaiting approval.</li>
</ul>

<h2><a href="https://make.wordpress.org/support/">Support</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/clorith/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>clorith</a></li>
	<li><strong>Priority:</strong> Getting ready for the Gutenberg callout (it got pushed last quarter). Needing a better presence on the official support forums, and outreach for that is underway, ETA end of July. <br /></li>
	<li><strong>Struggle</strong>: Keeping contributors participating post-contributor days/drives. <em>﻿Considering the creation of a dedicated post-contributor day survey to get some insight here.</em></li>
	<li><strong>Big Win</strong>: The increase in international liaisons joining for weekly meetings, helping bring the wider support community together.</li>
</ul>

<h2><a href="https://make.wordpress.org/themes/">Theme Review</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/acosmin/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>acosmin</a>, <a href=\'https://profiles.wordpress.org/rabmalin/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>rabmalin</a>, <a href=\'https://profiles.wordpress.org/thinkupthemes/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>thinkupthemes</a>, <a href=\'https://profiles.wordpress.org/williampatton/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>williampatton</a></li>
	<li><strong>Priority</strong>: Building a better Theme Check/Sniffer in order to automate most of the checks done right now by reviewers. ETA late 2018, early 2019.</li>
	<li><strong>Struggle</strong>: Bringing in new contributors to the team.</li>
	<li><strong>Big Win</strong>: <a href="https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/">Trusted Authors program﻿</a></li>
</ul>

<h2><a href="https://make.wordpress.org/tide/">Tide</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/valendesigns/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>valendesigns</a> (but usually <a href=\'https://profiles.wordpress.org/jeffpaul/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>jeffpaul</a>)</li>
	<li><strong>Priority</strong>: Storing PHPCompatibilty results inside the WordPress.org API and building a UI to display those results, an endpoint to request an audit is required for this work to continue.</li>
	<li><strong>Struggle</strong>: Development has dramatically slowed down while team members are on leave or pulled into internal client work.</li>
	<li><strong>Big Win</strong>: Migration to Google Cloud Platform (GCP) from Amazon Web Services (AWS) is complete and the audit servers have all been rewritten in Go. (This allows us to be faster with greater capacity and less cost.)</li>
</ul>

<h2><a href="https://make.wordpress.org/training/">Training</a></h2>

<ul>
	<li><strong>Contacted</strong>: <a href=\'https://profiles.wordpress.org/bethsoderberg/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>bethsoderberg</a>, <a href=\'https://profiles.wordpress.org/juliek/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>juliek</a></li>
	<li><strong>Priority:</strong> Lesson plan production. ETA is ongoing.</li>
	<li><strong>Struggle:</strong> The workflow is a little complex, so recruiting and training enough contributors to keep the process moving is a struggle.</li>
	<li><strong>Big Win</strong>: WordCamp Europe&#8217;s Contributor Day was very productive. New tools/workflow are in place and two team representatives were there to lead and help.</li>
</ul>

<p><em>Interested in updates from the first quarter of this year? You can find those here: <a href="https://make.wordpress.org/updates/2018/04/24/quarterly-updates-q1-2018/"><em>https://make.wordpress.org/updates/2018/04/24/quarterly-updates-q1-2018/</em></a>
	</em>
</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6140";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:51:"
		
		
				
		
				
		

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Update on Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/news/2018/07/update-on-gutenberg/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 06 Jul 2018 19:23:23 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:5:"Focus";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:9:"Gutenberg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6118";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:328:"Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Tammie Lister";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2261:"<p>Progress on the Gutenberg project, the new content creating experience coming to WordPress, has come a long way. Since the start of the project, there have been 30 releases and 12 of those happened after WordCamp US 2017. In total since then, there have been 1,764 issues opened and 1,115 closed as of WordCamp Europe. As the work on phase one moves into its final stretch, here is what you can expect.<br /></p>

<h4>In Progress</h4>

<ul>
	<li>Freeze new features in Gutenberg (the feature list can be found <a href="https://github.com/WordPress/gutenberg/issues/4894">here</a>).</li>
	<li>Hosts, agencies, teachers invited to opt-in sites they have influence over.</li>
	<li>WordPress.com has opt-in for wp-admin users. The number of sites and posts will be tracked.</li>
	<li>Mobile app support for Gutenberg will be across iOS and Android.</li>
</ul>

<h4>July</h4>

<ul>
	<li>4.9.x release with an invitation to install either Gutenberg or Classic Editor plugin.</li>
	<li>WordPress.com will move to opt-out. There will be tracking to see who opts out and why.</li>
	<li>Triage increases and bug gardening escalates to get blockers in Gutenberg down to zero.</li>
	<li>Gutenberg phase two, Customization exploration begins by moving beyond the post.</li>
</ul>

<h4>August and beyond</h4>

<ul>
	<li>All critical issues within Gutenberg are resolved.</li>
	<li>There is full integration with Calypso and there is opt-in for users there.</li>
	<li>A goal will be 100k+ sites having made 250k+ posts using Gutenberg.</li>
	<li>Core merge of Gutenberg begins the 5.0 release cycle.</li>
	<li>5.0 moves into beta releases and translations are completed.</li>
	<li>There will be a mobile version of Gutenberg by the end of the year.</li>
</ul>

<p>WordPress 5.0 could be as soon as August with hundreds of thousands of sites using Gutenberg before release. Learn more about Gutenberg <a href="https://wordpress.org/gutenberg/">here</a>, take it for a <a href="https://testgutenberg.com/">test drive</a>, <a href="https://wordpress.org/plugins/gutenberg/">install</a> on your site, follow along on <a href="https://github.com/WordPress/gutenberg">GitHub</a> and give your <a href="https://wordpressdotorg.polldaddy.com/s/gutenberg-support">feedback</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6118";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:51:"
		
		
				
		
				
		

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.9.7 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 05 Jul 2018 17:00:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6091";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:360:"WordPress 4.9.7 is now available. This is a security and maintenance release for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately. WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:17:"Aaron D. Campbell";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3984:"<p>WordPress 4.9.7 is now available. This is a <strong>security and maintenance release</strong> for all versions since WordPress 3.7. We strongly encourage you to update your sites immediately.</p>

<p>WordPress versions 4.9.6 and earlier are affected by a media issue that could potentially allow a user with certain capabilities to attempt to delete files outside the uploads directory.</p>

<p>Thank you to <a href="https://hackerone.com/slavco">Slavco</a> for reporting the original issue and <a href="https://www.wordfence.com/">Matt Barry</a> for reporting related issues.</p>

<p>Seventeen other bugs were fixed in WordPress 4.9.7. Particularly of note were:</p>

<ul>
	<li>Taxonomy: Improve cache handling for term queries.</li>
	<li>Posts, Post Types: Clear post password cookie when logging out.</li>
	<li>Widgets: Allow basic HTML tags in sidebar descriptions on Widgets admin screen.</li>
	<li>Community Events Dashboard: Always show the nearest WordCamp if one is coming up, even if there are multiple Meetups happening first.</li>
	<li>Privacy: Make sure default privacy policy content does not cause a fatal error when flushing rewrite rules outside of the admin context.</li>
</ul>

<p><a href="https://wordpress.org/download/">Download WordPress 4.9.7</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>

<p>The previously scheduled 4.9.7 is now referred to as 4.9.8, and will follow the <a href="https://make.wordpress.org/core/2018/07/04/dev-chat-summary-july-4th-4-9-7-week-7/">release schedule posted yesterday</a>.</p>

<p>Thank you to everyone who contributed to WordPress 4.9.7:</p>

<p><a href="https://profiles.wordpress.org/1naveengiri/">1naveengiri</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">abdullahramzan</a>, <a href="https://profiles.wordpress.org/alejandroxlopez/">alejandroxlopez</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/aryamaaru/">Arun</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bjornw/">BjornW</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj/">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/garetharnold/">Gareth</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/joyously/">Joy</a>, <a href="https://profiles.wordpress.org/khaihong/">khaihong</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/leanderiversen/">Leander Iversen</a>, <a href="https://profiles.wordpress.org/mermel/">mermel</a>, <a href="https://profiles.wordpress.org/metalandcoffee/">metalandcoffee</a>, <a href="https://profiles.wordpress.org/jbpaul17/">Migrated to @jeffpaul</a>, <a href="https://profiles.wordpress.org/palmiak/">palmiak</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/skoldin/">skoldin</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/warmlaundry/">warmlaundry</a>, and <a href="https://profiles.wordpress.org/yuriv/">YuriV</a>.</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6091";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"The Month in WordPress: June 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2018/07/the-month-in-wordpress-june-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 02 Jul 2018 09:28:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6087";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:366:"With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June. Another Successful WordCamp Europe On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4627:"<p>With one of the two flagship WordCamp events taking place this month, as well as some important WordPress project announcements, there’s no shortage of news. Learn more about what happened in the WordPress community in June.</p>

<hr class="wp-block-separator" />

<h2>Another Successful WordCamp Europe</h2>

<p>On June 14th, WordCamp Europe kicked off three days of learning and contributions in Belgrade. Over 2,000 people attended in person, with hundreds more watching live streams of the sessions.</p>

<p>The WordCamp was a great success with plenty of first-time attendees and new WordPress contributors getting involved in the project and community. Recorded sessions from the 65 speakers at the event will be available on WordPress.tv in the coming weeks. In the meantime, check out the <a href="https://www.flickr.com/photos/wceu/albums">photos from the event</a>.</p>

<p><a href="https://2018.europe.wordcamp.org/2018/06/16/wordcamp-europe-2019/">The next WordCamp Europe</a> takes place on June 20-22 2019 in Berlin, Germany. If you’re based in Europe and would like to serve on the organizing team, <a href="https://2019.europe.wordcamp.org/2018/06/16/call-wordcamp-europe-2019-organizers/">fill in the application form</a>.</p>

<h2>Updated Roadmap for the New WordPress Content Editor</h2>

<p>During his keynote session at WordCamp Europe, Matt Mullenweg presented <a href="https://gutenbergtimes.com/mullenweg-on-gutenberg-roll-out-plan/">an updated roadmap</a> for <a href="https://wordpress.org/gutenberg/">Gutenberg</a>, the new content editor coming in WordPress 5.0.</p>

<p>While the editor is in rapid development, <a href="https://make.wordpress.org/core/2018/06/21/whats-new-in-gutenberg-21st-june/">with v3.1 being released this past month</a>, the team is aiming to ship Gutenberg with WordPress Core in August, 2018. This is not set in stone — the release date may shift as development progresses — but this gives the first realistic idea of when we can expect the editor to be released.</p>

<p>If you would like to contribute to Gutenberg, read <a href="https://wordpress.org/gutenberg/handbook/">the handbook</a>, follow the <a href="https://make.wordpress.org/core/">Core team blog</a>, and join the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>WordCamp Incubator Cities Announced</h2>

<p>The WordCamp Incubator program helps spread WordPress to underserved communities by providing organizing support for their first WordCamp. The first iteration of this program ran successfully in 2016 and empowered three cities to start their own WordPress communities.</p>

<p>This year, the Community Team is running the Incubator program again. After receiving applications from 104 communities, <a href="https://make.wordpress.org/community/2018/06/26/wordcamp-incubator-program-2018-locations-announcement/">they have selected</a> Montevideo, Uruguay and Kota Kinabalu, Malaysia to participate in the program. Both cities will receive direct help from experienced WordCamp organizers to run their first-ever WordCamp as a way to help their WordPress community get started.</p>

<p>To find out more about the Incubator program follow the <a href="https://make.wordpress.org/community/">Community team blog</a>, and join the #community-events channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<hr class="wp-block-separator" />

<h2>Further Reading:</h2>

<ul>
	<li>The WordPress community of Spain recently <a href="https://twitter.com/wp_es/status/1004681694660603904">received an award</a> for being the best open-source community in the country.</li>
	<li>This month, WordPress reached <a href="https://w3techs.com/technologies/details/cm-wordpress/all/all">the milestone of powering 31% of websites</a>.</li>
	<li><a href="https://wprig.io/introducing-wprig-wordpress/">WP Rig</a> is a brand new tool to help WordPress developers build better themes.</li>
	<li><a href="https://richtabor.com/gutenberg-block-unit-test/">Block Unit Test</a> is a new plugin to help theme developers prepare for Gutenberg.</li>
	<li>Near the end of the month, Zac Gordon hosted <a href="https://javascriptforwp.com/conference/">an online conference</a> focused on JavaScript development in WordPress &#8211; the session videos will be available on YouTube soon.</li>
</ul>

<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6087";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:32:"The Month in WordPress: May 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2018/06/the-month-in-wordpress-may-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 01 Jun 2018 09:09:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6065";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:360:"This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May. Local Communities Celebrate the 15th Anniversary of WordPress Last Sunday, May [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4537:"<p>This month saw two significant milestones in the WordPress community — the 15th anniversary of the project, and GDPR-related privacy tools coming to WordPress Core. Read on to find out more about this and everything else that happened in the WordPress community in May.</p>

<hr class="wp-block-separator" />

<h2>Local Communities Celebrate the 15th Anniversary of WordPress</h2>

<p>Last Sunday, May 27, WordPress turned 15 years old. This is a noteworthy occasion for an open-source project like WordPress and one well worth celebrating. To mark the occasion, <a href="https://wp15.wordpress.net/">WordPress communities across the world gathered</a> for parties and meetups in honor of the milestone.</p>

<p>Altogether, there were 224 events globally, with <a href="https://wp15.wordpress.net/about/">a few more of those still scheduled</a> to take place in some communities — attend one in your area if you can.</p>

<p>If your city doesn’t have a WordPress meetup group, this is a great opportunity to start one! Learn how with <a href="https://make.wordpress.org/community/handbook/meetup-organizer/welcome/">the Meetup Organizer Handbook</a>, and join the #community-events channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>Privacy Tools added to WordPress core</h2>

<p>In light of recent changes to data privacy regulations in the EU, WordPress Core shipped important updates <a href="https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/">in the v4.9.6 release</a>, giving site owners tools to help them comply with the new General Data Protection Regulation (GDPR). It is worth noting, however, that WordPress cannot ensure you are compliant — this is still a site owner’s responsibility.</p>

<p>The new privacy tools include a number of features focused on providing privacy and personal data management to all site users — asking commenters for explicit consent to store their details in a cookie, providing site owners with an easy way to publish a Privacy Policy, and providing data export and erasure tools to all site users that can be extended by plugins to allow the handling of data that they introduce.</p>

<p>To find out more about these features and the other updates, read the <a href="https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/">4.9.6 update guide</a>. You can also get involved in contributing to this part of WordPress Core by jumping into the #core-privacy channel in the<a href="https://make.wordpress.org/chat/"> Making WordPress Slack group</a>, and following<a href="https://make.wordpress.org/core/"> the Core team blog</a>.</p>

<h2>Updates to the WordPress.org Privacy Policy</h2>

<p>In a similar vein, WordPress.org itself has received <a href="https://wordpress.org/about/privacy/">an updated Privacy Policy</a> to make clear what is being tracked and how your data is handled. Along with that, a <a href="https://wordpress.org/about/privacy/cookies/">Cookie Policy</a> has also been added to explain just what is collected and stored in your browser when using the site.</p>

<p>These policies cover all sites on the WordPress.org network — including WordPress.org, WordPress.net, WordCamp.org, BuddyPress.org, bbPress.org, and other related domains and subdomains. It’s important to note that this does not mean that anything has changed in terms of data storage; rather that these documents clarify what data is stored and how it is handled.</p>

<hr class="wp-block-separator" />

<h2>Further Reading:</h2>

<ul>
	<li>WordCamp US 2018 has <a href="https://2018.us.wordcamp.org/2018/05/29/speak-at-wordcamp-us/">opened up speaker submissions</a> for the December event.</li>
	<li><a href="https://2018.europe.wordcamp.org/2018/05/15/wceu-live-stream-tickets/">Live stream tickets are now available for WordCamp Europe</a>, happening on June 14-16.</li>
	<li>Gutenberg, the new editor for WordPress Core, is getting ever closer to the final stages with <a href="https://make.wordpress.org/core/2018/05/18/whats-new-in-gutenberg-18th-may/">a major update</a> this month.</li>
	<li>In preparation for Gutenberg, <a href="https://core.trac.wordpress.org/changeset/43309">significant work has been done</a> to improve WordPress Core’s build process.</li>
</ul>

<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6065";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:51:"
		
		
				
		
				
		

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:36:"WordPress.org Privacy Policy Updates";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wordpress.org/news/2018/05/wordpress-org-privacy-policy-updates/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 25 May 2018 08:06:29 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:7:"General";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:7:"privacy";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6047";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:325:"The WordPress.org privacy policy has been updated, hurray! While we weren&#8217;t able to remove all the long sentences, we hope you find the revisions make it easier to understand: how we collect and use data, how long the data we collect is retained, and how you can request a copy of the data you&#8217;ve shared [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Andrea Middleton";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:657:"<p>The <a href="https://wordpress.org/about/privacy/">WordPress.org privacy policy</a> has been updated, hurray! While we weren&#8217;t able to remove <strong>all</strong> the long sentences, we hope you find the revisions make it easier to understand:</p>
<ul>
<li>how we collect and use data,</li>
<li>how long the data we collect is retained, and</li>
<li>how you can request a copy of the data you&#8217;ve shared with us.</li>
</ul>
<p>There hasn&#8217;t been any change to the data that WordPress.org collects or how that data is used; the privacy policy just provides more detail now. Happy reading, and thanks for using WordPress!</p>
<p>&nbsp;</p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"6047";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress 4.9.6 Privacy and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:83:"https://wordpress.org/news/2018/05/wordpress-4-9-6-privacy-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 May 2018 19:21:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5920";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:358:"WordPress 4.9.6 is now available. This is a privacy and maintenance release. We encourage you to update your sites to take advantage of the new privacy features. Privacy The European Union&#8217;s General Data Protection Regulation (GDPR) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Allen Snook";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:13399:"<p>WordPress 4.9.6 is now available. This is a <strong>privacy and maintenance release</strong>. We encourage you to update your sites to take advantage of the new privacy features.</p>

<figure class="wp-block-image"><img src="https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=632&#038;ssl=1" alt="A decorative header featuring the text &quot;GDPR&quot; and a lock inside of a blue shield, on multicolor green background." class="wp-image-5988" srcset="https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=300%2C150&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=768%2C384&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2018/05/GDPR-Banner.png?resize=1024%2C512&amp;ssl=1 1024w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></figure>

<h2 style="text-align:left">Privacy</h2>

<p>The European Union&#8217;s General Data Protection Regulation (<strong>GDPR</strong>) takes effect on May 25. The GDPR requires companies and site owners to be transparent about how they collect, use, and share personal data. It also gives individuals more access and choice when it comes to how their own personal data is collected, used, and shared.<br /></p>

<p>It’s important to understand that while the GDPR is a European regulation, its requirements apply to all sites and online businesses that collect, store, and process personal data about EU residents no matter where the business is located.<br /></p>

<p>You can learn more about the GDPR from the European Commission&#8217;s <a href="http://ec.europa.eu/justice/smedataprotect/index_en.htm">Data Protection page</a>.<br /></p>

<p>We&#8217;re committed to supporting site owners around the world in their work to comply with this important law. As part of that effort, we’ve added a number of new privacy features in this release.</p>

<h2 style="text-align:left">Comments</h2>

<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=632&#038;ssl=1" alt="A screenshot of a comment form, where the new &quot;Save my name, email, and website in this browser for the next time I comment&quot; checkbox is featured." class="wp-image-5986" srcset="https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=300%2C291&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=768%2C744&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/comments-border.png?resize=1024%2C992&amp;ssl=1 1024w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></figure>

<p>Logged-out commenters will be given a choice on whether their name, email address, and website are saved in a cookie on their browser.</p>

<h2 style="text-align:left">Privacy Policy Page</h2>

<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=632&#038;ssl=1" alt="A screenshot of the new Privacy Settings page." class="wp-image-5995" srcset="https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1898&amp;ssl=1 1898w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=300%2C177&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=768%2C453&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?resize=1024%2C604&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/privacy-policy-collapsed.png?w=1264&amp;ssl=1 1264w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></figure>

<p>Site owners can now designate a privacy policy page. This page will be shown on your login and registration pages. You should manually add a link to your policy to every page on your website. If you have a footer menu, that’s a great place to include your privacy policy.<br /></p>

<p>In addition, we’ve created a guide that includes insights from WordPress and participating plugins on how they handle personal data. These insights can be copied and pasted into your site&#8217;s privacy policy to help you get started.<br /></p>

<p>If you maintain a plugin that collects data, we recommend including that information in WordPress’ privacy policy guide. <a href="https://developer.wordpress.org/plugins/privacy/">Learn more in our Privacy section of the Plugin Handbook</a>.</p>

<h2 style="text-align:left">Data Handling</h2>

<figure class="wp-block-image"><img src="https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=632&#038;ssl=1" alt="A screenshot of the new Export Personal Data tools page. Several export requests are listed on the page, to demonstrate how the new feature will work." class="wp-image-5999" srcset="https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=2372&amp;ssl=1 2372w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=300%2C221&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=768%2C565&amp;ssl=1 768w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?resize=1024%2C753&amp;ssl=1 1024w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1264&amp;ssl=1 1264w, https://i1.wp.com/wordpress.org/news/files/2018/05/export-data.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></figure>

<div class="wp-block-columns has-2-columns">
		<h3 class="layout-column-1">Data Export</h3>
	
		<p class="layout-column-1">Site owners can export a ZIP file containing a user&#8217;s personal data, using data gathered by WordPress and participating plugins.</p>
	
		<h3 class="layout-column-2">Data Erasure</h3>
	
		<p class="layout-column-2">Site owners can erase a user&#8217;s personal data, including data collected by participating plugins.</p>
	</div>

<blockquote class="wp-block-quote">
	<p>Howdy,</p>
	<p>A request has been made to perform the following action on your account:<br /> </p>
	<p><strong>Export Personal Data</strong><br /> </p>
	<p>To confirm this, please click on the following link:<br /><a href="#">http://.wordpress.org/wp-login.php?action=confirmaction&#8230;</a><br /> </p>
	<p>You can safely ignore and delete this email if you do not want to<br /> take this action.<br /> </p>
	<p>This email has been sent to <a href="#">you@example.com</a>.<br /> </p>
	<p>Regards,<br /><em>Your friends at WordPress</em><br /><a href="http://wordpress.org"><em> http://wordpress.org</em></a></p>
</blockquote>

<p>Site owners have a new email-based method that they can use to confirm personal data requests. This request confirmation tool works for both export and erasure requests, and for both registered users and commenters.</p>

<hr class="wp-block-separator" />

<h2 style="text-align:left">Maintenance</h2>

<p>95 updates were made in WordPress 4.9.6. In addition to the above, particularly of note were:<br /></p>

<ul>
	<li>&#8220;Mine&#8221; has been added as a filter in the media library.</li>
	<li>When viewing a plugin in the admin, it will now tell you the minimum PHP version required.</li>
	<li>We&#8217;ve added new PHP polyfills for forwards-compatibility and proper variable validation.</li>
	<li>TinyMCE was updated to the latest version (4.7.11).<br /></li>
</ul>

<p><a href="https://make.wordpress.org/core/2018/05/17/4-9-6-update-guide/">This post has more information about all of the issues fixed in 4.9.6 if you&#8217;d like to learn more</a>.</p>

<p><a href="https://wordpress.org/download/">Download WordPress 4.9.6</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates will start updating soon.<br /></p>

<p class="has-background has-very-light-gray-background-color">Please note that if you’re currently on WordPress 4.9.3, you should manually update your site immediately.</p>

<hr class="wp-block-separator" />

<p>Thank you to everyone who contributed to WordPress 4.9.6:<br /><a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">abdullahramzan</a>, <a href="https://profiles.wordpress.org/adamsilverstein/">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/schlessera/">Alain Schlesser</a>, <a href="https://profiles.wordpress.org/allendav/">allendav</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andreamiddleton/">Andrea Middleton</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/ayeshrajans/">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bridgetwillard/">bridgetwillard</a>, <a href="https://profiles.wordpress.org/burlingtonbytes/">Burlington Bytes</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/claudiu/">claudiu</a>, <a href="https://profiles.wordpress.org/coreymckrill/">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/iseulde/">Ella Van Dorpe</a>, <a href="https://profiles.wordpress.org/ericdaams/">Eric Daams</a>, <a href="https://profiles.wordpress.org/fclaussen/">Fernando Claussen</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/idea15/">Heather Burns</a>, <a href="https://profiles.wordpress.org/helen/">Helen Hou-Sandi</a>, <a href="https://profiles.wordpress.org/herregroen/">herregroen</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/imath/">imath</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jeffpaul/">Jeffrey Paul</a>, <a href="https://profiles.wordpress.org/jeremyfelt/">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/jesperher/">Jesper V Nielsen</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">JJJ</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/chanthaboune/">Josepha</a>, <a href="https://profiles.wordpress.org/jrf/">jrf</a>, <a href="https://profiles.wordpress.org/dejliglama/">Kåre Mulvad Steffensen</a>, <a href="https://profiles.wordpress.org/lakenh/">Laken Hafner</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/macbookandrew/">macbookandrew</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mnelson4/">Michael Nelson</a>, <a href="https://profiles.wordpress.org/mikejolley/">Mike Jolley</a>, <a href="https://profiles.wordpress.org/casiepa/">Pascal Casier</a>, <a href="https://profiles.wordpress.org/pbarthmaier/">pbrocks</a>, <a href="https://profiles.wordpress.org/postphotos/">postphotos</a>, <a href="https://profiles.wordpress.org/pmbaldha/">Prashant Baldha</a>, <a href="https://profiles.wordpress.org/presstigers/">PressTigers</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/littlerchicken/">Robin Cornett</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/satollo/">Stefano Lissa</a>, <a href="https://profiles.wordpress.org/stephdau/">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/teddytime/">teddytime</a>, <a href="https://profiles.wordpress.org/thomasplevy/">thomasplevy</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs/">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tz-media/">Tobias Zimpel</a>, <a href="https://profiles.wordpress.org/tjnowell/">Tom J Nowell</a>, <a href="https://profiles.wordpress.org/tobifjellner/">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/voneff/">voneff</a>, <a href="https://profiles.wordpress.org/earnjam/">William Earnhardt</a>, and <a href="https://profiles.wordpress.org/xkon/">Xenos (xkon) Konstantinos</a>.<br /></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5920";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:48:"
		
		
				
		
				

		
				
								
										";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"The Month in WordPress: April 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/news/2018/05/the-month-in-wordpress-april-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 02 May 2018 08:30:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:18:"Month in WordPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=5891";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:324:"This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April. The WordPress 15th Anniversary is Coming On May 27 2018, WordPress will turn 15 years old — this is [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4981:"<p>This past month saw a lot of preparation for upcoming events and releases across the WordPress project. Read on to find out more about these plans, and everything else that happened around the community in April.</p>

<hr class="wp-block-separator" />

<h2>The WordPress 15th Anniversary is Coming</h2>

<p>On May 27 2018, <a href="https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/">WordPress will turn 15 years old</a> — this is a huge milestone for the project, or, indeed, for any open-source platform. The Community Team has been hard at work helping communities around the world plan local anniversary parties.</p>

<p>Check <a href="https://wp15.wordpress.net/">the central anniversary website</a> to see if there’s already a party being planned near you. These parties are all organized by local communities — if there’s no local community in your area, you can <a href="https://make.wordpress.org/community/handbook/meetup-organizer/welcome/#starting-a-new-meetup-com-group">start one today</a> and host a party yourself.</p>

<h2>Work has Started on a Gutenberg Migration Guide</h2>

<p>With Gutenberg, the upcoming WordPress content editor, in rapid development, a lot of people have been wondering how they will convert their existing plugins to work with the new features. To mitigate the issues here and help people overcome any migration hurdles, <a href="https://make.wordpress.org/core/2018/04/26/your-help-wanted-gutenberg-migration-guide/">a Gutenberg Migration Guide is underway</a> to assist developers with making their code Gutenberg-compatible.</p>

<p>If you’d like to contribute to this guide, you can review <a href="https://github.com/danielbachhuber/gutenberg-migration-guide">the existing documentation on GitHub</a> and <a href="https://github.com/danielbachhuber/gutenberg-migration-guide/issues">open a new issue</a> if you find something to add.</p>

<h2>Theme Review Team Launches Trusted Authors Program</h2>

<p>Reviews of themes submitted to the Theme Directory can take quite a while to complete. In order to combat this issue and to make the theme submission process smoother for everyone, <a href="https://make.wordpress.org/themes/2018/04/30/trusted-authors-program/">the Theme Review Team is introducing a Trusted Authors Program</a>.</p>

<p>This program will allow frequent and reliable theme authors to apply for trusted status, allowing them to upload themes more frequently and to have their themes automatically approved. This will allow more high-quality themes to be added to the directory, as well as recognize the hard work that authors put in to build their themes.</p>

<p>If you would like to get involved with reviewing themes, you can read <a href="https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/">their getting started guide</a>, follow the <a href="https://make.wordpress.org/themes/">team blog</a> and join the #themereview channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<hr class="wp-block-separator" />

<h2>Further Reading:</h2>

<ul>
    <li><a href="https://wordpress.org/news/2018/04/wordpress-4-9-5-security-and-maintenance-release/">WordPress 4.9.5 was released</a> early this month, fixing numerous bugs and potential security issues. The two leads for this release <a href="https://make.wordpress.org/core/2018/04/20/4-9-5-feedback-leading-a-wordpress-minor-release/">published some interesting feedback</a> about the process.</li>
    <li>In addition to the Trusted Authors Program mentioned above, the Theme Review Team is <a href="https://make.wordpress.org/themes/2018/04/09/changes-in-theme-review-process/">making some changes to their review process</a> to minimize theme review delays.<br /></li>
    <li>The Marketing Team produced <a href="https://make.wordpress.org/marketing/2018/04/24/contributor-day-onboarding-pdf/">a handy Contributor Day onboarding PDF</a> for organizers to hand out to contributors attending WordCamps.</li>
    <li>The Accessibility Team is actively looking for contributors for <a href="https://make.wordpress.org/accessibility/handbook/">their handbook</a>.</li>
    <li>A new type of WordCamp, <a href="https://make.wordpress.org/community/2018/04/03/want-to-help-organize-a-wordcamp-for-organizers/">targeted at organizers</a>, is in the planning stages now.</li>
    <li><a href="https://wordpress.org/about/">The WordPress.org About pages</a> received a significant redesign to make them more clear and useful.</li>
    <li>The Community Team <a href="https://make.wordpress.org/community/2018/04/27/wordcamp-incubator-program-2018-2019-roadmap/">posted the roadmap</a> for this year’s WordCamp Incubator program.</li>
</ul>

<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please <a href="https://make.wordpress.org/community/month-in-wordpress-submissions/">submit it here</a>.</em></p>
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"5891";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:9:"
	hourly	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:4:"
	1	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"', 'no' ),
( '130', '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1535322527', 'no' ),
( '131', '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1535279327', 'no' ),
( '132', '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1535322530', 'no' ),
( '133', '_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"


";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:61:"
	
	
	
	




















































";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"WordPress Planet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:28:"http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:2:"en";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:47:"WordPress Planet - http://planet.wordpress.org/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:50:{i:0;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:57:"WPTavern: WPCampus 2018 Videos Are Now Available to Watch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83466";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wptavern.com/wpcampus-2018-videos-are-now-available-to-watch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1710:"<p>WPCampus 2018 was held July 12-14, 2018, at <a href="https://wustl.edu/">Washington University</a> in St. Louis, Missouri. Educators, staff, and those in higher-education gathered to learn how WordPress can be and is used in higher-education environments. </p>

<p>If you couldn&#8217;t attend in person or watch the live stream, you can now watch all of the sessions for free. Visit the event&#8217;s <a href="https://2018.wpcampus.org/schedule/">schedule page</a> and click the Watch Session button. Alternatively, you can click on a session&#8217;s title to read a brief description and then watch the embedded video.</p>

<p>Videos are hosted on YouTube which makes it easy to share and embed them. There are also links to view the presenter&#8217;s slides.</p>

<p>If you have time, I recommend watching <a href="https://2018.wpcampus.org/schedule/gutenready-for-the-gutenpocalypse/">GutenReady for the Gutenpocalypse</a> by Brian DeConinck and Jennifer McFarland who work at North Carolina State University in the Information and Technology Department. </p>

<p>In this presentation, the duo explain what they&#8217;re doing to get staff, students, and campus sites prepared for Gutenberg. <br /></p>





<p>In addition to the presentation above, I also recommend listening to <a href="https://wptavern.com/wpweekly-episode-324-getting-nc-state-gutenready">episode 324</a> of WordPress Weekly where McFarland describes their experience so far in transitioning sites to Gutenberg, building custom blocks, and discussing what the future of themes might be like once the project is merged into WordPress. </p>

<p>WPCampus organizers are in the beginning stages of planning next year&#8217;s event. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 24 Aug 2018 19:10:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:115:"WPTavern: Gutenberg and Classic Editor Plugins Pass 200,000 Active Installations, WordPress 4.9.9 Planning Underway";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83475";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:124:"https://wptavern.com/gutenberg-and-classic-editor-plugins-pass-200000-active-installations-wordpress-4-9-9-planning-underway";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6129:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/printing-letters.jpg?ssl=1"><img /></a>photo credit: reingestalter <a href="http://www.flickr.com/photos/44668468@N00/115805043">numeral types</a> &#8211; <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>
<p>It has been three weeks since the &#8220;Try Gutenberg&#8221; prompt was sent out in WordPress 4.9.8 and the <a href="https://wordpress.org/support/plugin/gutenberg/" rel="noopener noreferrer" target="_blank">plugin</a> has now passed 200,000 active installations. The callout has increased the visibility of the Gutenberg project and brought necessary feedback to the development and design of the new editor.</p>
<p>Prior to WordPress 4.9.8, Gutenberg reviews held a 2.7-star average on WordPress.org. Negative reviews continue to pour in and the average rating has slipped to 2.3 stars. Users are reporting that the new editor is too complicated, cumbersome, and that it offers an inferior writing experience. A few positive reviews are sprinkled in between, calling the editor a &#8220;necessary step forward,&#8221; and those reviewers seem hopeful that others will feel the same once they get past the learning curve. The vast majority of reviews, both positive and negative, report that Gutenberg&#8217;s interface is not yet intuitive to use.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-24-at-10.32.49-AM.png?ssl=1"><img /></a></p>
<p>The Gutenberg team&#8217;s responses to reviews have improved to be less &#8220;canned&#8221; since the <a href="https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers" rel="noopener noreferrer" target="_blank">initial reactions</a> a few days after the Gutenprompt went out. However, the team still appears to be combing the feedback for bugs with the existing interface. Overall, the team&#8217;s responses are unified in a general unwillingness to admit that there are critical flaws preventing the interface from being more well-received.</p>
<p>Active installations of the <a href="https://wordpress.org/plugins/classic-editor/" rel="noopener noreferrer" target="_blank">Classic Editor</a> plugin, the official antidote for those do not wish to adopt Gutenberg when it ships in WordPress 5.0, have climbed to more than 200,000. This number is about equal to the number of sites that have Gutenberg active. The Gutenberg team does not view Classic Editor installs as an important metric for understanding Gutenberg adoption or rejection but rather see these installs as a healthy intermediary step for sites keeping the same workflow while preparing for Gutenberg.</p>
<p>In response to recent discussion surrounding the <a href="https://wptavern.com/classicpress-gutenberg-not-included" rel="noopener noreferrer" target="_blank">ClassicPress fork of WordPress</a>, Matt Mullenweg <a href="https://wptavern.com/classicpress-gutenberg-not-included#comment-256813" rel="noopener noreferrer" target="_blank">said</a>, &#8220;No plans to ever have direct vote determine strategic direction in WP, but we are having a bit of a referendum in the adoption of the Gutenberg and Classic Editor plugins, people are voting with their usage. The people are deciding.&#8221;</p>
<p>This is essentially true in that users can decide if they want to adopt Gutenberg or not, for as long as the Classic Editor is supported. The Classic Editor plugin is an option people demanded but now the reality of two different admin experiences is nearer than before. The notion of a fork, though perhaps not a serious threat to the project, makes it painfully clear what some users are willing to do in order to avoid Gutenberg.</p>
<p>With the number of Classic Editor plugin installations on the rise, WordPress is headed towards a fractured admin experience. For some it may be a healthy transition option, but in the end, the number of Classic Editor installations indicates how many sites will be running an alternative editing experience because site owners are either not ready or not willing to adopt Gutenberg.</p>
<p>At some point in the future, WordPress will need to unite the editing experience, either by winning these users over to Gutenberg or by discontinuing support for the Classic Editor. In the meantime, WordPress product developers will need to provide support for both editing experiences or go all in on one or the other. It has the potential to erode WordPress&#8217; momentum for a few years, especially if Gutenberg doesn&#8217;t become more intuitive.</p>
<h3>WordPress 4.9.9 Is Expected to be a 6-8 Week Maintenance Cycle</h3>
<p>WordPress contributors met this week to <a href="https://make.wordpress.org/core/2018/08/24/dev-chat-summary-august-22-2018-4-9-9-weeks-1-2/" rel="noopener noreferrer" target="_blank">discuss WordPress 4.9.9</a>.</p>
<p>&#8220;As of now there’s no specific timeline for 4.9.9,&#8221; Jeff Paul said. &#8220;That will get set once release leads are in place. However, I’d like to try and finalize leads in next week’s meeting or shortly thereafter so that we can begin 4.9.9 planning and coordination as we get into September.&#8221; Paul requested contributor submit nominations for release leads, for themselves or others, ahead of next week&#8217;s meeting.</p>
<p>&#8220;Until we have a confirmed timeline and plan for 5.0, my assumption is that we’ll continue with our minor release cadence of ~6-8 weeks with specific focus on items needed in support of 5.0,&#8221; Paul said.</p>
<p>During his announcement at WordCamp Europe in Belgrade, Matt Mullenweg said WordPress 5.0 could happen as early as August. It&#8217;s now looking more likely that 5.0 will drop closer to the end of the year. This gives WordPress users and developers more time to prepare their sites to be compatible with Gutenberg and ready to take advantage of the new features it offers. The <a href="https://make.wordpress.org/core/5-0/" rel="noopener noreferrer" target="_blank">schedule for releasing WordPress 5.0</a> is not yet set but the release is expected to happen in 2018.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 24 Aug 2018 18:55:12 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:79:"WPTavern: WordCamp Kochi is Postponed to November 3rd Due to Extensive Flooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83465";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wptavern.com/wordcamp-kochi-is-postponed-to-november-3rd-due-to-extensive-flooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2569:"<p><a href="https://2018.kochi.wordcamp.org/">WordCamp Kochi, India</a>, was originally scheduled for September 2nd, but due to heavy rains and extensive flooding in the area, the event has been <a href="https://2018.kochi.wordcamp.org/wordcamp-kochi-2018-is-postponed-to-november-3rd-2018-saturday/">postponed</a> to November 3rd. The venue is unchanged.<br /></p>

<p>Kochi is located in Southwest India in the coastal state of Kerala. The flooding has been so severe, the Kochi <a href="https://timesofindia.indiatimes.com/city/kochi/kerala-floods-kochi-airport-closure-extended-flights-likely-from-next-wednesday/articleshow/65504855.cms">airport has been shutdown</a> since August 15th due to electrical damage. </p>

<p>In addition to WordCamp being postponed, WooCommerce has also postponed its <a href="https://workshops.automattic.com/?utm_campaign=coschedule&utm_source=twitter&utm_medium=WooCommerce">Women&#8217;s Workshop</a>.</p>


<blockquote class="twitter-tweet"><p lang="en" dir="ltr">In light of current events, we\'ve decided to postpone the Women\'s Workshop. More info to come later today. <a href="https://t.co/TBfGGNWZW0">https://t.co/TBfGGNWZW0</a></p>&mdash; WooCommerce (@WooCommerce) <a href="https://twitter.com/WooCommerce/status/1032533215347712000?ref_src=twsrc%5Etfw">August 23, 2018</a></blockquote>


<p>Organizers worked with WordCamp Community Support who agreed that the best course of action was to delay the event.</p>

<blockquote class="wp-block-quote"><p>Besides, one of the ethos of conducting a WordCamp is to ensure a safe space for attendees and participants. Since the state is still recovering from the floods, conducting a big event poses a lot of threats/challenges, like rain-borne diseases, unpredictable weather, etc.</p><cite>Hari Shanker R</cite></blockquote>

<p>Tickets for WordCamp Kochi are <a href="https://2018.kochi.wordcamp.org/tickets/">still available</a> and can be purchased from the event&#8217;s site. Women who use the <strong>WCK18WOMAN</strong> coupon code will receive a 40% discount off the ticket price. There&#8217;s also a <a href="https://2018.kochi.wordcamp.org/discounts/">discounts page</a> with information on other ways you can reduce ticket prices.</p>

<p>Those who purchased tickets for September 2nd can use the same ticket to attend November 3rd. If you purchased tickets for September 2nd and can not attend November 3rd, you&#8217;re encouraged to <a href="https://2018.kochi.wordcamp.org/contact/">contact</a> the event&#8217;s organizers as refunds are not available. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 24 Aug 2018 18:31:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Matt: Gulf Coast Soul";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48319";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:38:"https://ma.tt/2018/08/gulf-coast-soul/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:558:"<p>Brett Martin has an excellent longread in GQ, <a href="https://www.gq.com/story/houston-restaurants-capital-of-southern-cool">Houston Is the New Capital Of Southern Cool</a>. I moved to San Francisco when I was 20, I hadn&#8217;t ever even been old enough to drink in Houston, but when I returned in my late twenties and really made it my home I was blown away at how much the city had changed in the time I had been away. Or maybe I just grew up enough to appreciate it. Regardless, Brett captures the verve and paradoxes of the city well.</p>

<p> </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Aug 2018 22:23:39 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:90:"WPTavern: New Network Media Library Plugin Creates a Shared Library on a Multisite Network";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83415";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:101:"https://wptavern.com/new-network-media-library-plugin-creates-a-shared-library-on-a-multisite-network";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3950:"<p>WordPress core committer John Blackbourn has released a new plugin called <a href="https://github.com/johnbillion/network-media-library" rel="noopener noreferrer" target="_blank">Network Media Library</a> that provides a shared media library across all sites on a WordPress multisite network. Blackbourn is an engineer at Human Made and the plugin is one he created for a client by forking Frank Bültge and Dominik Schilling&#8217;s <a href="https://github.com/bueltge/multisite-global-media" rel="noopener noreferrer" target="_blank">Multisite Global Media</a> plugin.</p>
<p>By default, the plugin uses site ID 2 for the central media library, but the site ID can be customized via a filter hook.  Access to the network-wide library is currently restricted to users who have Author level permissions with the upload_files capability on the central media site. In the plugin&#8217;s description Blackbourn said the plan for future versions is to remove the need for users to be added to the central media library.</p>
<p>After testing it locally, I discovered what the plugin&#8217;s description meant by &#8220;transparently&#8221; uploading media to the central media site. Unlike other plugins that perform a similar function (i.e. <a href="https://wordpress.org/plugins/network-shared-media/" rel="noopener noreferrer" target="_blank">Network Shared Media</a> and <a href="https://github.com/bueltge/multisite-global-media" rel="noopener noreferrer" target="_blank">Multisite Global Media</a>), there is no indication that files are part of a network-wide library. For example, Multisite Global Media adds a &#8220;Global Media&#8221; tab to the media library to indicate which files are aggregated from sites on the network. The Network Media Library plugin works in an invisible way without adding a separate tab to the media library.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-23-at-1.34.56-PM.png?ssl=1"><img /></a></p>
<p>Frank Bültge, co-author of the Multisite Global Media plugin, asked Blackbourn why he opted to fork the plugin instead of enhancing it. Blackbourn said the main difference is that the original plugin supports local media files and his fork does not.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">This was my original plan, but the main reason for the fork is the local media support in MGM means some bugs can\'t easily be fixed, eg. the featured image problem that we chatted about. The two plugins serve different purposes, MGM supports local media files, NML doesn\'t <img src="https://s.w.org/images/core/emoji/11/72x72/1f60a.png" alt="😊" class="wp-smiley" />.</p>
<p>&mdash; John Blackbourn <img src="https://s.w.org/images/core/emoji/11/72x72/1f1ea-1f1fa.png" alt="🇪🇺" class="wp-smiley" /> (@johnbillion) <a href="https://twitter.com/johnbillion/status/1032361281741893632?ref_src=twsrc%5Etfw">August 22, 2018</a></p></blockquote>
<p></p>
<p>Developers who implement Network Media Library on their sites should be aware that it is still under active development. It currently has built-in compatibility with the <a href="https://wordpress.org/plugins/regenerate-thumbnails/" rel="noopener noreferrer" target="_blank">Regenerate Thumbnails</a> and <a href="https://wordpress.org/plugins/wp-user-avatars/" rel="noopener noreferrer" target="_blank">WP User Avatars</a> plugins. The plugin also has been confirmed to be compatible with BuddyPress, Extended CPTs, Gutenberg, Stream and User Profile Picture. Blackbourn plans to test and support many more plugins in the future, including CMB2, ACF, and assorted gallery and media management plugins.</p>
<p>Network Media Library is MIT-licensed and <a href="https://github.com/johnbillion/network-media-library" rel="noopener noreferrer" target="_blank">available on GitHub</a>. It requires WordPress 4.9+ and PHP 7.0+. The plugin can be installed as a mu-plugin or network activated.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Aug 2018 21:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: WordCamp for Publishers 2018 Videos Now Available on WordPress.tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83394";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wptavern.com/wordcamp-for-publishers-2018-videos-now-available-on-wordpress-tv";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2849:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-22-at-12.39.59-PM.png?ssl=1"><img /></a></p>
<p><a href="https://2018-chicago.publishers.wordcamp.org/" rel="noopener noreferrer" target="_blank">WordCamp for Publishers 2018</a> was held in Chicago earlier this month, bringing together a diverse group of people who use WordPress to manage publications. The event even <a href="http://www.niemanlab.org/2018/08/submissive-audiences-less-special-news-outlets-and-other-inspiring-thoughts-from-wordpresss-publisher-summit/" rel="noopener noreferrer" target="_blank">got a nod from Nieman Lab</a>, who dubbed it &#8220;WordPress’ publisher summit,&#8221; and highlighted a few tweets from the <a href="https://twitter.com/search?f=tweets&vertical=default&q=wcpub&src=typd" rel="noopener noreferrer" target="_blank">#wcpub</a> hashtag.</p>
<p>&#8220;As conference organizers, we challenged speakers to touch on whether an open web ever truly existed, what state it’s in now, the consequences of a closed web, and how publishers can protect and encourage an open web,&#8221; Alexis Kulash, one of the event&#8217;s organizers, said in her <a href="https://vip.wordpress.com/2018/08/16/wordcamp-for-publishers-recap/" rel="noopener noreferrer" target="_blank">recap post</a>.</p>
<p>&#8220;Overall, we saw common themes emerge around empowering publishers to innovate and evolve. There was a shared belief that ethical journalism depends on an open web, with inclusivity as a fundamental building block to creating responsibly for the future.&#8221;</p>
<p>Sessions included topics of interest to publishers both large and small, including AMP, Gutenberg, the effect of paywalls on the open web, communication between tech and editorial teams, newsletters, performance, and many other publishing-related topics.</p>
<p>&#8220;Given that this is the only single-vertical official WordCamp it offers a rare perspective into a limited but very serious set of issues in a space,&#8221; Pantheon Community Manager Dwayne McDaniel said in his <a href="https://www.mcdwayne.com/2018/08/13/wc-for-publishers-2018-chicago/" rel="noopener noreferrer" target="_blank">recap post</a>. &#8220;Having the official support and legitimacy of the WordCamp name brand I think adds a weight the organizers could not achieve otherwise, a claim I am going to support with the caliber of the participants as substantial evidence.&#8221;</p>
<p>By all accounts the event was one of the best media conferences participants had ever attended. Recordings of the sessions started rolling out on WordPress.tv today. The videos can all be found on the same page listed under the <a href="https://wordpress.tv/event/wordcamp-for-publishers-chicago-2018/" rel="noopener noreferrer" target="_blank">WordCamp for Publishers 2018 event</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 23 Aug 2018 03:08:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:65:"WPTavern: WPWeekly Episode 328 – Gutenberg, Forking, and cPanel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=83421&preview=true&preview_id=83421";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:70:"https://wptavern.com/wpweekly-episode-328-gutenberg-forking-and-cpanel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1841:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I start off by providing updates on some items from last week&#8217;s show. We discuss WordPress.com&#8217;s privacy policy change, the new detailed activity log in the WordPress for iOS app, and cPanel&#8217;s acquisition. We end the show with a thoughtful conversation about forking software.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/wordpress-com-boots-sandy-hook-conspiracy-theory-sites-bans-malicious-publication-of-unauthorized-images-of-minors">WordPress.com Boots Sandy Hook Conspiracy Theory Sites, Bans Malicious Publication of Unauthorized Images of Minors</a><br />
<a href="https://wptavern.com/wordpress-for-ios-10-6-adds-a-detailed-site-activity-log">WordPress for iOS 10.6 Adds A Detailed Site Activity Log</a><br />
<a href="https://wptavern.com/oakley-capital-to-acquire-cpanel">Oakley Capital to Acquire cPanel</a><br />
<a href="https://wptavern.com/drupal-org-migrates-developer-tools-to-gitlab">Drupal.org Migrates Developer Tools to GitLab</a><br />
<a href="https://wptavern.com/classicpress-gutenberg-not-included">ClassicPress: Gutenberg Not Included</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, August 29th 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #328:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Aug 2018 23:56:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WPTavern: Mario Peshev Explains the Advantages of Gutenberg for Users who Rely on Page Builders";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83348";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/mario-peshev-explains-the-advantages-of-gutenberg-for-users-who-rely-on-page-builders";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3970:"<p><a href="https://devwp.eu/" rel="noopener noreferrer" target="_blank">Mario Peshev</a>, CEO of <a href="https://devrix.com/" rel="noopener noreferrer" target="_blank">DevriX</a>, has published a video that explains how Gutenberg will change the way users create content. If your background as a WordPress user is maintaining your website with the help of a page builder like Beaver Builder, Divi Builder, Elementor, or a similar plugin, this video will acquaint you with a few advantages that Gutenberg will bring to content creation in the future.</p>
<p></p>
<p>Peshev demonstrates how Gutenberg will make it easier for users to add and arrange page content that actual websites need, such as call-to-action buttons, testimonials, headers, and columns. In the past, users have relied on page builders, page templates, widgetized areas, shortcodes, custom meta boxes, and a host of disparate ways of trying to place content in a certain arrangement on a page. All of these seem rather clunky now when compared to Gutenberg&#8217;s united interface, despite the new editor&#8217;s less than perfect implementation.</p>
<p>This video helps users understand the problems Gutenberg aims to solve. Peshev explains that page builder tools usually have heavy, complicated code bases in order to work around the problem of adding blocks of content to a page. Gutenberg is not replacing page builders. In fact, most of them are updating to provide a better experience for users in the Gutenberg era, so agencies should be able to utilize some of the same tools they have used in the past while setting clients loose in the new editorial framework.</p>
<p>&#8220;The video was first published on my LinkedIn feed, which is comprised of business leaders, marketing experts, freelancers &#8212; many of whom use WordPress at work or for their own businesses,&#8221; Peshev said.</p>
<p>&#8220;They are not WordPress experts by any stretch, and rarely spend the time to test the &#8216;latest cool thing.&#8217; Odds are, some may have heard of it, but 95% haven&#8217;t even seen screenshots or demos of the new editorial experience.&#8221;</p>
<p>As a digital consultant and the CEO of DevriX, a 30+ person agency, Peshev understands the need to assure users that their traditional content editing experience will still be available if they don&#8217;t want to use Gutenberg. He has been preparing his clients who fall on both sides of the 5.0 release &#8211; either to move forward with the new editor or employ the Classic Editor to maintain the old one.</p>
<p>&#8220;At DevriX, we&#8217;ve been testing every site we manage and maintain monthly,&#8221; Peshev said. &#8220;We want to ensure that there are no unexpected regressions or fatal errors we have to deal with last minute. That said, half of our customers can benefit by using Gutenberg &#8212; we&#8217;ve had continuous conversations with them and align the roadmap accordingly. Others, on the other hand, are purely content-driven, a traditional WYSIWYG experience, and we have the Classic Editor ready to go once Gutenberg is live.&#8221;</p>
<p>Peshev said his agency has had to find the balance between improving the editorial experience as needed (for things like landing pages and more robust sections), versus ensuring the stability and consistency of content development for traditional editorial teams. He urges other agency owners to push forward and embrace the custom work that Gutenberg will require.</p>
<p>&#8220;Gutenberg is still in its infancy; there&#8217;s a lot of work left for us, agency owners and developers,&#8221; Peshev said. &#8220;Just as we used to build custom widgets, shortcodes, and page templates, we should build a series of Gutenblocks for every customer, prepare the corresponding templates, design the resulting front-end experience, and a lot more. Realistically, the editorial experience alone is a tiny chunk of the scope of WordPress development as a whole.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Aug 2018 17:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:11:"
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"HeroPress: Have Faith In Yourself";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://heropress.com/?p=2607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:111:"https://heropress.com/have-faith-in-yourself/#utm_source=rss&utm_medium=rss&utm_campaign=have-faith-in-yourself";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3622:"<img width="960" height="480" src="https://s20094.pcdn.co/wp-content/uploads/2016/08/081016-StaceyBartron-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: It may not all pan out, but I\'m along for the ride with WordPress in my backpack & I cannot wait to see where I end up." /><p>A couple years ago I was at Prestige Conf in Minneapolis. I noticed a young woman sitting by herself, patiently waiting for the talks to start, and thought I&#8217;d say hi. Her name was Stacey, and she was a freelance web developer and design expert. She was had recently quit her job to go freelance and this conference was part of her self-education.</p>
<p>Our conversation brought back lots of memories of the excitement of when I first quit a good job to go freelance, but I was impressed by how much more attention to detail she&#8217;d paid than I had. I was a Bad Freelancer.</p>
<p>A few weeks later it occurred to me that she might be willing to make the header banners for HeroPress essays. I asked, and she agreed at a price I could afford.  For a couple years now all of the banners you&#8217;ve seen on HeroPress were made by Stacey Bartron. No-one else has ever told me this, but I think the banners are pretty important to the essays and she&#8217;s done a wonderful, meaningful job.</p>
<p>Stacey quit her job and went freelance because she had faith in her own abilities. Her skills were greater than the use to which they were being put at The Day Job. As it turns out, she was right.</p>
<p>Check out Stacey&#8217;s very own HeroPress essay here:</p>
<blockquote class="wp-embedded-content"><p><a href="https://heropress.com/essays/finding-wordpress-fargo/">Finding WordPress in Fargo</a></p></blockquote>
<p></p>
<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Have Faith In Yourself" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Have%20Faith%20In%20Yourself&via=heropress&url=https%3A%2F%2Fheropress.com%2Fhave-faith-in-yourself%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Have Faith In Yourself" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fhave-faith-in-yourself%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fhave-faith-in-yourself%2F&title=Have+Faith+In+Yourself" rel="nofollow" target="_blank" title="Share: Have Faith In Yourself"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/have-faith-in-yourself/&media=https://heropress.com/wp-content/uploads/2016/08/081016-StaceyBartron-150x150.jpg&description=Have Faith In Yourself" rel="nofollow" target="_blank" title="Pin: Have Faith In Yourself"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/have-faith-in-yourself/" title="Have Faith In Yourself"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/have-faith-in-yourself/">Have Faith In Yourself</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Aug 2018 08:00:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"WPTavern: ClassicPress: Gutenberg Not Included";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83360";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wptavern.com/classicpress-gutenberg-not-included";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5995:"<p>Depending on how far and deep you look, there is not a lot of positive sentiment surrounding Gutenberg. For Scott Bowler, the notion of merging Gutenberg into WordPress 5.0 represents a shift so <a href="https://medium.com/@scott.bowler83/classicpress-a-hard-fork-of-wordpress-without-gutenberg-1eeb62dd879c">detrimental to the project</a>, he has forked WordPress into a new project called <a href="https://www.classicpress.net/">ClassicPress</a>.</p>

<p>&#8220;The team at WordPress have decided to force Gutenberg into v5 of WordPress despite <a href="https://wordpress.org/support/plugin/gutenberg/reviews/" rel="noreferrer noopener" target="_blank">massive push back by the WordPress community,</a>&#8221; Bowler said.</p>

<p>&#8220;I’m in the &#8216;push back&#8217; camp. After my feedback on Gutenberg fell on deaf ears I realized that WordPress is no longer a community led project — major decisions are being made by an elite few.</p>

<p>&#8220;Sadly, I decided it was time to move to a fork that doesn’t have Gutenberg as part of the core code. A quick search revealed nobody had taken the initiative so I decided to stop complaining and take action.&#8221;</p>

<p>In addition to ClassicPress, Bowler has <a href="https://www.change.org/p/petition-to-wordpress-no-gutenberg-in-wordpress-core">filed a petition</a> on Change.org requesting that Gutenberg not be merged into WordPress 5.0. As of publishing, the petition has 10 out of 100 signatures.</p>

<p>&#8220;This petition is to ask the WordPress team to keep Gutenberg out of the core of WordPress and instead keep it as a plugin for users to install,&#8221; Bowler said. &#8220;In addition, this petition asks that Gutenberg does not get integrated into the core until the community agrees that the time is right.&#8221;</p>

<p>Bowler is not the only one who feels this way. Matt Cromwell, Head of Support and Community Outreach at <a href="https://wordimpress.com">WordImpress</a>, suggests that Gutenberg be bundled with WordPress as a plugin similar to Aksimet. </p>


<blockquote class="twitter-tweet"><p lang="en" dir="ltr">The more I think about <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> as inevitable in WP Core, the more I am concerned that Core releases don\'t come often enough to support the kind of iterative improvements Gutes will need over the longterm.</p>&mdash; Matt Cromwell <img src="https://s.w.org/images/core/emoji/11/72x72/1f393.png" alt="🎓" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/271d.png" alt="✝" class="wp-smiley" /> (@learnwithmattc) <a href="https://twitter.com/learnwithmattc/status/1030588894796865536?ref_src=twsrc%5Etfw">August 17, 2018</a></blockquote>



<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Shipping <a href="https://twitter.com/hashtag/Gutenberg?src=hash&ref_src=twsrc%5Etfw">#Gutenberg</a> as a default plugin like Akismet makes a lot of sense for several reasons.<br /><img src="https://s.w.org/images/core/emoji/11/72x72/2714.png" alt="✔" class="wp-smiley" /> Allows for more iterative improvements<br /><img src="https://s.w.org/images/core/emoji/11/72x72/2714.png" alt="✔" class="wp-smiley" /> Allows for quicker development<br /><img src="https://s.w.org/images/core/emoji/11/72x72/2714.png" alt="✔" class="wp-smiley" /> Gives users more freedom of choice</p>&mdash; Matt Cromwell <img src="https://s.w.org/images/core/emoji/11/72x72/1f393.png" alt="🎓" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/271d.png" alt="✝" class="wp-smiley" /> (@learnwithmattc) <a href="https://twitter.com/learnwithmattc/status/1030588896281653249?ref_src=twsrc%5Etfw">August 17, 2018</a></blockquote>


<p>If Gutenberg ships with WordPress 5.0, Bowler says he is committed to maintaining compatibility with the WordPress ecosystem, keeping the project up to date with security fixes, and letting the community dictate its development.</p>

<p>ClassicPress is based on WordPress 4.9.8 and is not available to the public yet. It&#8217;s in a consultation phase that interested users can participate in through the <a href="https://www.reddit.com/r/ClassicPress">ClassicPress subreddit</a>. <br /></p>

<h2>Forks Are a Good Thing, But This One Doesn&#8217;t Make Sense</h2>

<p>I used to think that forking WordPress is the equivalent of the <a href="https://en.wikipedia.org/wiki/Nuclear_option">nuclear option</a>, but <a href="https://www.youtube.com/watch?v=2Y6HcQcQWXU">a presentation</a> by John James Jacoby in 2016 during WordSesh changed my perspective.</p>

<p>Forking is a good thing as it allows people to take a project in their own direction. It opens the door for experimentation. If there are any lessons learned or improvements made, those can usually be pushed upstream to the main project.</p>

<p>There are <a href="https://wordpress.org/plugins/classic-editor/">solutions available</a> that allow users and site managers to keep the classic editor in place until a transition can be made. There&#8217;s also a Classic Editor block within Gutenberg that provides a similar user experience to the Classic Editor. </p>

<p>With options available to not use or at least delay Gutenberg from becoming the new editor, and that&#8217;s <strong>if</strong> it&#8217;s merged into WordPress 5.0, ClassicPress isn&#8217;t so much of a necessary fork but rather, a last ditch effort to raise awareness to not merge Gutenberg into core. And that&#8217;s an unfortunate reason to fork WordPress. </p>

<p>*<strong>Updated 8/21/2018</strong>* First paragraph was edited to &#8220;For Scott Bowler, the notion of merging Gutenberg into WordPress 5.0 represents a shift so <a href="https://medium.com/@scott.bowler83/classicpress-a-hard-fork-of-wordpress-without-gutenberg-1eeb62dd879c">detrimental to the project</a>, he has forked WordPress into a new project called <a href="https://www.classicpress.net/">ClassicPress</a>.&#8221; </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 22 Aug 2018 01:40:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:55:"WPTavern: Drupal.org Migrates Developer Tools to GitLab";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83338";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:66:"https://wptavern.com/drupal-org-migrates-developer-tools-to-gitlab";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4323:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-21-at-12.36.38-PM.png?ssl=1"><img /></a>image credit: Drupal Association
<p>The Drupal Association announced this week that Drupal.org will be <a href="https://www.drupal.org/drupalorg/blog/developer-tools-initiative-part-5-gitlab-partnership" rel="noopener noreferrer" target="_blank">migrating its developer tools to GitLab</a>. In selecting a partner for modernizing the project&#8217;s tooling, the association aimed to preserve the most valuable parts of Drupal&#8217;s workflow. They also wanted a partner that would keep evolving its code collaboration featureset.</p>
<p>In December 2017, after evaluating the advantages and disadvantages of GitHub, GitLab, and Bitbucket, it appeared the association would be moving forward with Bitbucket. If the comments on that <a href="https://www.drupal.org/drupalorg/blog/developer-tools-initiative-part-2-comparing-our-options" rel="noopener noreferrer" target="_blank">discussion</a> are any indication, the Drupal community was not excited about the selection. GitLab reached out to comment on the status of some of the blockers the association had identified and worked privately with Drupal representatives to resolve those issues.</p>
<p>&#8220;They have escalated the internal priority of issues that blocked our adoption of GitLab, offered technical and financial support for the migration, and made a commitment to ongoing support for the Drupal project,&#8221; Drupal Association&#8217;s director of engineering Tim Hestenes Lehnen said. The team plans to migrate Drupal.org&#8217;s 45,000 projects to GitLab over the coming months.</p>
<p>&#8220;By adding merge requests, contributing to Drupal will become much more familiar to the broad audience of open source contributors who learned their skills in the post-patch era,&#8221; Lehnen said. &#8220;By adding inline editing and web-based code review, it will be much easier to make quick contributions. This not only lowers the barrier to contribution for people new to our community, it also saves significant effort for our existing community members, as they&#8217;ll no longer need to clone work locally and generate patches.&#8221;</p>
<p>It&#8217;s easy to see how the WordPress project might also benefit from collaborating on a platform like GitLab. In October 2017, after the company <a href="https://wptavern.com/gitlab-raises-20-million-series-c-round-adds-matt-mullenweg-to-board-of-directors" rel="noopener noreferrer" target="_blank">announced a $20 million Series C round of funding</a> and appointed Matt Mullenweg to its board of directors, WordPress contributors speculated about whether the project would move to GitLab.</p>
<p>“It’s definitely something on our minds,&#8221; Mullenweg said when asked if GitLab and WordPress might collaborate in the future. &#8220;Core WordPress is still Trac and Subversion, so I think that it’s not our top priority this year, but in the future it’s definitely on the radar.”</p>
<p>In 2016, GitLab worked to establish itself as the most welcoming platform for open source organizations after GitHub  <a href="https://wptavern.com/gitlab-courts-open-source-project-maintainers-with-response-to-dear-github-letter" rel="noopener noreferrer" target="_blank">failed to address open source maintainers&#8217; concerns</a> in a timely way. The company began actively courting disgruntled GitHub users following <a href="https://wptavern.com/gitlab-courts-disgruntled-github-customers-with-response-to-recent-pricing-hike" rel="noopener noreferrer" target="_blank">GitHub&#8217;s May 2016 pricing hike</a>.</p>
<p>GitLab&#8217;s efforts to resolve critical issues for Drupal.org demonstrates the company&#8217;s commitment to ensure open source projects have what they need. Drupal.org&#8217;s transparency throughout the decision to migrate its developer tools enabled the project to respond to the community&#8217;s request to make GitLab work. It also prompted GitLab representatives to reach out with more information on the project&#8217;s blockers. As WordPress will be looking to move its developer tools to a new platform in the future, following along with Drupal.org&#8217;s migration experience as it progresses should be a good learning opportunity.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Aug 2018 22:25:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Matt: Distributed Office Politics";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48317";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:50:"https://ma.tt/2018/08/distributed-office-politics/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:578:"<p><a href="https://techcrunch.com/2018/08/18/distributed-teams-are-rewriting-the-rules-of-officeless-politics/">This week I spoke with TechCrunch</a> about one facet of distributed work that differs from physical offices &#8212; the idea of &#8220;office politics.&#8221; I can&#8217;t claim that distributed work will solve everyone&#8217;s personal differences, but I do think it relieves some of the pressures that might come from forced cohabitation and environments that are prone to interruption. They also have some great points from Jason Fried and and Wade Foster.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Aug 2018 16:38:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"WPTavern: Oakley Capital to Acquire cPanel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83329";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wptavern.com/oakley-capital-to-acquire-cpanel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1850:"<p><a href="https://cpanel.com/">cPanel</a>, the makes of control panel software used by many hosting providers across the globe, has <a href="http://news.cpanel.com/oakley-capital-to-invest-in-cpanel-acquisition-will-accelerate-the-next-phase-of-product-development-for-cpanel/">announced</a> it has signed an agreement to be acquired by <a href="http://oakleycapital.com/">Oakley Capital</a>. Oakley Capital is a private equity investor that invests in companies primarily located in Western Europe. </p>

<p>Financial details of the impending acquisition have not been disclosed. Oakley Capital is the same investment firm that <a href="http://oakleycapital.com/acquisition-of-plesk/">acquired Plesk</a> in May of 2017. <a href="https://www.plesk.com/">Plesk</a> is also control panel software used to manage sites.</p>

<p>cPanel is based in Houston, TX with more than 220 employees. Employees will stay with the company and the headcount is expected to increase thanks to the investment. </p>

<p>Nick Koston, cPanel&#8217;s CEO, issued the following statement in a press release. <br /></p>

<blockquote class="wp-block-quote"><p>This investment reflects a great step forward for cPanel. Our team has developed software that contributes to the success of millions of websites operating globally and looks forward to continuing to do so with the same passion that you, our loyal customers have come to love. </p><p>This investment will give Internet infrastructure providers access to a wider range of software, features and support. I am excited about what the future holds for the company and the great team at cPanel.</p><cite>Nick Koston</cite></blockquote>

<p>Koston will remain as the company&#8217;s CEO and cPanel will continue to run as a separate entity. The acquisition needs to pass a governmental review before it is finalized.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 21 Aug 2018 05:10:47 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:94:"WPTavern: How a Munich-based Game Studio is Using WordPress and Gutenberg to Power Its Website";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83280";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://wptavern.com/how-a-munich-based-game-studio-is-using-wordpress-and-gutenberg-to-power-its-website";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:8017:"<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-19-at-8.51.49-PM.png?ssl=1"><img /></a></p>
<p><a href="https://www.mimimi.games/">Mimimi</a>, an award-winning game studio based in Munich, has launched a new WordPress website that provides an interesting case study of Gutenberg in the wild. Although you may not be able to tell from the frontend, behind the scenes the new block-based editor is powering the layout with custom blocks, allowing the Mimimi team to easily update various sections of their website.</p>
<p><a href="https://www.luehrsen-heinrich.de/">Luehrsen Heinrich</a>, a local ad agency, built the site with a custom theme and seven blocks tailored to support the Mimimi team&#8217;s editing requirements.</p>
<p>&#8220;The general task was to create an elegant website that is very easy and fast to maintain and that will maybe later get a blog/news section,&#8221; Hendrik Luehrsen, CEO of Luehrsen Heinrich, said. &#8220;We knew our client has some amazingly creative and tech savvy people who trusted us. That made us confident to go into Gutenberg.&#8221;</p>
<p>The site uses a background block that enables editors to create different background patterns and wavy separators. Luehrsen said it works with ‘InnerBlocks’, similar to columns, so it can host any other block.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Bildschirmfoto-2018-08-19-um-00.37.07.png?ssl=1"><img /></a></p>
<p>The site also has a custom Discord block that dynamically fetches some settings to display a set of users from Discord, which Mimimi uses for internal communication. The block displays an updated team roster. Social media and game blocks enable editors to easily update text and images with the layout already set.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/Bildschirmfoto-2018-08-19-um-00.38.55-e1534729837643.png?ssl=1"><img /></a></p>
<p>&#8220;I am pretty sure we could do the same layout to about 80% by combining columns, paragraphs, and images, but we didn’t want our client to fiddle around like in MS Word when you try to place an image,&#8221; Luehrsen said. &#8220;So creating a simple layout block was a logical thing.&#8221;</p>
<p>Mimimi&#8217;s website also uses a custom Mailchimp signup block and a custom spacer block that offers more flexibility and responsive breakpoints.</p>
<p>&#8220;All in all we (and our clients) are very happy with the result,&#8221; Luehrsen said. &#8220;We can see the future of WordPress ahead with this block based editor. But there is still a very long way to go until we really have nothing to smooth out anymore. There are certain things, that still require a lot of work.&#8221;</p>
<p>From a development perspective, Luehrsen said his team still struggles with the backend styles for the editor and that frontend and backend styles differ wildly because of that. They also haven&#8217;t yet found a maintainable, stable way of applying global styles to the Gutenberg editor. Other than those outstanding issues, the agency has enjoyed building for the new editor and has another Gutenberg-page product launching soon for a different set of clients.</p>
<h3>Mimimi Games&#8217; Gutenberg Experience: Editors Appreciate the Block Concept but Still Encounter Usability Issues</h3>
<p>Johannes Roth, CEO of Mimimi Games, said his team has used WordPress in the past and sees Gutenberg as a major improvement for editing content.</p>
<p>&#8220;I absolutely love it, honestly!&#8221; Roth said. &#8220;It&#8217;s so much easier to understand the setup of the page and to customize it. If the Gutenberg editor gets a few user experience improvements, I definitely see it being the new state of the art for maintaining pages. But knowing that it&#8217;s still not officially released, it has been super robust and easy to understand from my point of view.&#8221;</p>
<p>Roth said his team appreciates the block setup, the ability to reorganize content, having small chunks of content to work on, and having custom tailored options per block.</p>
<p>&#8220;There are fewer distractions with weird toolbars and the focus is on content,&#8221; Roth said. &#8220;It also more closely resembles how we should think about splitting the formatting and decoration part from the content, as well as setting up proper pages for SEO friendliness.&#8221;</p>
<p>Roth identified two things that the Mimimi team misses from the previous editor:</p>
<ul>
<li>Pressing tab to indent bullet lists and shift tab to reverse</li>
<li>Using ctrl+a to quickly select all text inside a block (it sometimes selects the whole page, which doesn&#8217;t help).</li>
</ul>
<p>&#8220;The biggest issue with usability so far has been the combination of blocks and columns, which sometimes makes it really hard to hit the &#8216;&#8230;&#8217; icon because the mouseover zones get stacked,&#8221; Roth said.</p>
<h3>Enabling Storytellers on the Modern Web: Why Luehrsen Heinrich Took the Leap into Gutenberg Development as an Agency</h3>
<p>Luehrsen said his agency decided to board the Gutenberg train last year at WordCamp Europe, after ditching their own ideas for creating a new page builder.</p>
<p>&#8220;One or two months before WCEU in Paris, we were sitting on a concept and an alpha version of our own page builder system that was frighteningly similar to the block based approach,&#8221; Luehrsen said. &#8220;That Q&amp;A by Matt made us quickly realize that our project was already obsolete. We were lucky that we went pretty quickly through the five stages of grief (<a href="https://www.wp-munich.com/wordpress/gutenberg-structured-data/" target="_blank" rel="noopener noreferrer">this post</a> on structured data must have been “bargaining”). We reordered our priorities and started working with and on Gutenberg in the end of October or November of 2017.&#8221;</p>
<p>Luehrsen Heinrich is a small agency of just four people who are all involved with Gutenberg in different ways. Luehrsen is an active contributor on the project, submitting <a href="https://github.com/WordPress/gutenberg/pull/4118">his first PR</a> over the Christmas holidays. The team also has a developer who knows block creation inside and out, a designer who designs the UX and style of their blocks, and a project manager who works with the clients on their Gutenberg editing requirements.</p>
<p>Luehrsen said being a Gutenberg contributor helped immensely with learning block creation, despite having no prior experience with React and ES6.</p>
<p>&#8220;Working with Gutenberg, contributing to the project and getting immediate feedback from the amazing Gutenberg team, helped us a lot in bootstrapping our process,&#8221; Luehrsen said. &#8220;Our current block creation process builds heavily on the work Gary, Adam, Matias, and all the others have done, maybe with the exception that we are using LESS internally, and not SCSS. But from folder structure, to the build process, to the structuring of the file, we try to follow the Gutenberg repo style as closely as possible, as that makes debugging and finding issues very easy.&#8221;</p>
<p>After successfully making the jump to build Mimimi Games&#8217; new Gutenberg-powered website, Luehrsen&#8217;s team is on board for building more client sites with the new editor. He sees it as a way to deliver a better user experience at a better value for the client.</p>
<p>&#8220;Our clients share our belief that storytelling in the modern web is much more than just writing text,&#8221; Luehrsen said. &#8220;TinyMCE as a &#8216;Rich Text&#8217; editor did an amazing job, but still, combining different types of media to a coherent story was a mess with metaboxes, shortcodes, and sometimes for teasers you even had to leave the edit screen. Gutenberg combines all of this in a nice, unobtrusive way. And, as always: If you can get to a good result in a faster way, that time saved is what the client is essentially buying.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Aug 2018 18:54:54 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Matt: Light Heretofore Unknown";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48313";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://ma.tt/2018/08/light-heretofore-unkown/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:567:"<blockquote class="wp-block-quote"><p>Yes, it is a press, certainly, but a press from which shall soon flow in inexhaustible streams the most abundant and most marvelous liquor that has ever flowed to relieve the thirst of man! [&#8230;.] A spring of pure truth shall flow from it! Like a new star, it shall scatter the darkness of ignorance, and cause a light heretofore unknown to shine among men.</p><cite>— Johannes Gutenberg</cite></blockquote>

<p>From <a href="https://dan.knauss.ca/">Dan Knauss</a> via <a href="https://poststatus.com/">Post Status</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 20 Aug 2018 15:31:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"WPTavern: My Gutenberg Experience: Part Three";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83102";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wptavern.com/my-gutenberg-experience-part-three";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4815:"<p>It&#8217;s been about four months since the last time I <a href="https://wptavern.com/an-update-to-my-gutenberg-experience">shared my experience</a> with Gutenberg. In that time, there have been sixteen releases. The more I use Gutenberg, the more nuances I encounter.</p>

<h3>Disruptive Writing Flow</h3>

<p>When writing a post, I press the enter key at the end of a paragraph. This creates a new paragraph block automatically. Sometimes however, I want the next block to be an Image block. The paragraph block does not have an option to be converted into another block.</p>

<img />No Option to Convert to Another Block

<p>I end up having to remove the paragraph block, look for the add block icon, and add the image block. This process of rearranging blocks disrupts the flow of writing. </p>

<p>There are a few ways to get around this issue. The first is to not press enter at the end of a paragraph so I can add the block that I want. </p>

<p>The second is to type /image inside the paragraph block which will automatically convert it to an image block. This is convenient but it&#8217;s a power user shortcut that&#8217;s difficult to discover without someone telling you about it. It&#8217;s weird that using a shortcut can convert a paragraph block to an image block but the user interface option to convert it doesn&#8217;t exist.</p>

<h3>Icons Not Associated With a Block Floating in Empty Space<br /></h3>

<p>In the image below is a CloudUp embed block that has a video and below it are three icons. I sometimes think these icons are related to the block above it but instead, these icons are part of the add block placeholder UI. </p>

<img />Block Icons Look Like They&#8217;re For Another Block

<p>Granted, a list, image, and quote icon has nothing to do with embedding videos. At-a-glance, seeing these icons can lead to a bit of confusion. I don&#8217;t want to see those icons floating in empty space when I&#8217;m working on a block they&#8217;re not attached too. <br /></p>

<h3>Losing Content Due to Autosave Disconnecting<br /></h3>

<p>While writing a post working remotely, I noticed the Autosave button in Gutenberg was continuously flashing. I&#8217;ve experienced something similar in the classic editor and suspected that a connection issue must have happened although I was browsing the internet without a problem.</p>

<p>I finished writing the post, added meta data, and a featured image. I copied all of the content on the post, refreshed the page, and confirmed I wanted to leave the page. It turns out, my suspicion was right. </p>

<p>At some point, the autosave process stopped working and I lost half the post, including the meta data. I was able to paste the lost content into the editor and go about my day. </p>

<p>The current editor has fail-safes in place to prevent the loss of content, such as using a browser&#8217;s local storage. I&#8217;m unsure if Gutenberg has the same fail-safes in place. So far, this has been the only time where I&#8217;ve lost content in Gutenberg due to autosave not working correctly. </p>

<h3>Digging Through the Junk Drawer</h3>

<p>In the classic editor, the tool bar stays in constant view. In Gutenberg, there are multiple areas on the screen where UI elements appear and disappear depending on where the cursor is. </p>

<p>If you want to see the code version of the editor, you need to click the ellipsis on the top right corner and select it from a drop-down menu. To add a new block, you have to click the + symbol and either search or select from a menu. </p>

<p>The combination of visiting different parts of the editor, browsing through menus, and selecting from multiple things sometimes feels like I&#8217;m going through the junk drawer in the kitchen looking for a utensil. This feeling occurs multiple times depending on the length of a post. </p>

<h3>There&#8217;s Still a Ways to Go</h3>

<p>I&#8217;ve been able to get used to the block concept and actually prefer it over the classic editor. However, there are certain tasks that are easier and faster to accomplish in the classic editor versus Gutenberg. </p>

<p>For example, if you want to create a heading using existing text in Gutenberg, you have to select the text, click the Paragraph icon, select the heading block, and choose which heading you want. In the Classic editor, you select the text, click the preferred heading from an always visible drop-down menu and continue writing. </p>

<p>These nuances to the writing flow, the user interface, and the experience of looking around for things is where I believe Gutenberg needs the most improvement. The bar has been set by the Classic editor but it has more than 10 years of iteration behind it. Hopefully, Gutenberg can reach or exceed that bar before it&#8217;s merged into core. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Aug 2018 22:32:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:58:"WPTavern: Gutenberg 3.6 Adds New Icons for All Core Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83242";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wptavern.com/gutenberg-3-6-adds-new-icons-for-all-core-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5014:"<p><a href="https://make.wordpress.org/core/2018/08/17/whats-new-in-gutenberg-17th-august/" rel="noopener noreferrer" target="_blank">Gutenberg 3.6</a> was released today, featuring a <a href="https://github.com/WordPress/gutenberg/pull/8916" rel="noopener noreferrer" target="_blank">design overhaul for the core icons</a> in the block inserter. The blocks now use <a href="https://material.io/tools/icons/" rel="noopener noreferrer" target="_blank">Material icons</a>, which offer more options than the Dashicons. This update also improves the icons for the core embeds, which now display the corresponding icon for each embed service.</p>
<p>Gutenberg testers <a href="https://github.com/WordPress/gutenberg/issues/3736" rel="noopener noreferrer" target="_blank">logged an issue</a> regarding the limitations of Dashicons last year, citing the small number available, the inadequacy of their size, and the generic substitutions for embed service icons. The Gutenberg team <a href="https://github.com/WordPress/gutenberg/issues/3736#issuecomment-355267596" rel="noopener noreferrer" target="_blank">closed the ticket</a>, saying there was no sign in testing that showed the icons to be a problem and that potential contributors would need to &#8220;revisit with evidence&#8221; if they wanted to re-open the issue.</p>
<p>It&#8217;s not clear whether the team received the evidence or testing required to make this change but the icons become problematic in other ways. As the community started extending Gutenberg, block icon duplication became a problem, due to the limited number of Dashicons available.</p>
<p>&#8220;We really need block icons to move away from using dashicons as soon as possible,&#8221; Gutenberg technical lead Matías Ventura said in another discussion on a proposed solution. &#8220;We are already seeing plugins adding blocks where the icon overlap is very high just because of the limited icons set, which reduces clarity for users very drastically.&#8221;</p>
<p><a href="https://github.com/WordPress/gutenberg/issues/8719" rel="noopener noreferrer" target="_blank">Switching to Material icons</a> solves this problem, ensuring there are unique icons for each block. The inserter design has also been updated as part of this overhaul. Previously, icons appeared with a grey background, as seen below:</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-12.51.51-PM.png?ssl=1"><img /></a></p>
<p>The old design suddenly looks rather dated in comparison to Gutenberg&#8217;s 3.6 update, which allows for more whitespace around the icons:</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-12.53.39-PM.png?ssl=1"><img /></a></p>
<p>The new embed icons are also greatly improved from previous versions of the plugin:</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-4.09.01-PM.png?ssl=1"><img /></a></p>
<p>&#8220;The new icons aim to encourage people creating their own blocks to supply their own SVG,&#8221; Ventura said. &#8220;The hope is to make sure we can avoid multiple cases of duplicated icons diminishing the overall ability to quickly scan blocks.&#8221;</p>
<p>Ventura said Gutenberg will retain the ability to specify a Dashicon slug in the Block API but he encourages developers to &#8220;supply custom SVGs (or draw from the material icon pool) as much as possible.&#8221;</p>
<p>Gutenberg 3.6 also <a href="https://github.com/WordPress/gutenberg/pull/8279" rel="noopener noreferrer" target="_blank">adds several new keyboard shortcuts</a>, including inserting a new block before/after the current block, toggling the inspector settings, removing a block, and displaying a <a href="https://github.com/WordPress/gutenberg/pull/8316" rel="noopener noreferrer" target="_blank">new modal help menu</a>. The modal can be launched from the Settings button at the top of the editor and users can scroll through all available shortcuts.</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-17-at-4.16.53-PM.png?ssl=1"><img /></a></p>
<p>This release also fixes many bugs that users have reported. Gutenberg will now <a href="https://github.com/WordPress/gutenberg/pull/8446" rel="noopener noreferrer" target="_blank">open a new preview window</a> if the prior window has been closed. It will also <a href="https://github.com/WordPress/gutenberg/pull/9015" rel="noopener noreferrer" target="_blank">bring the preview tab to the front</a> when clicking the preview button. Version 3.6 <a href="https://github.com/WordPress/gutenberg/pull/9010" rel="noopener noreferrer" target="_blank">fixes several usability issues</a> that testers found with the permalink UI. Check out the <a href="https://make.wordpress.org/core/2018/08/17/whats-new-in-gutenberg-17th-august/" rel="noopener noreferrer" target="_blank">release post</a> for the full list of all the fixes and changes included in 3.6.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Aug 2018 21:31:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:29:"Donncha: WP Super Cache 1.6.3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:28:"https://odd.blog/?p=89502017";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://odd.blog/2018/08/17/wp-super-cache-1-6-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4891:"<p>WP Super Cache is a full page caching plugin for WordPress. When a page is cached almost all of WordPress is skipped and the page is sent to the browser with the minimum amount of code executed. This makes the page load much faster.</p>

<p>1.6.3 is the latest release and is mostly a bugfix release but it also adds some new features.</p>

<ul><li>Added cookie helper functions (<a href="https://github.com/Automattic/wp-super-cache/pull/580">#580</a>)</li><li>Added plugin helper functions (<a href="https://github.com/Automattic/wp-super-cache/pull/574">#574</a>)</li><li>Added actions to modify cookie and plugin lists. (<a href="https://github.com/Automattic/wp-super-cache/pull/582">#582</a>)</li><li>Really disable garbage collection when timeout = 0 (<a href="https://github.com/Automattic/wp-super-cache/pull/571">#571</a>)</li><li>Added warnings about DISABLE_WP_CRON (<a href="https://github.com/Automattic/wp-super-cache/pull/575">#575</a>)</li><li>Don&#8217;t clean expired cache files after preload if garbage collection is disabled (<a href="https://github.com/Automattic/wp-super-cache/pull/572">#572</a>)</li><li>On preload, if deleting a post don&#8217;t delete the sub directories if it&#8217;s the homepage. (<a href="https://github.com/Automattic/wp-super-cache/pull/573">#573</a>)</li><li>Fix generation of semaphores when using WP CLI (<a href="https://github.com/Automattic/wp-super-cache/pull/576">#576</a>)</li><li>Fix deleting from the admin bar (<a href="https://github.com/Automattic/wp-super-cache/pull/578">#578</a>)</li><li>Avoid a strpos() warning. (<a href="https://github.com/Automattic/wp-super-cache/pull/579">#579</a>)</li><li>Improve deleting of cache in edit/delete/publish actions (<a href="https://github.com/Automattic/wp-super-cache/pull/577">#577</a>)</li><li>Fixes to headers code (<a href="https://github.com/Automattic/wp-super-cache/pull/496">#496</a>)</li></ul>

<p>This release makes it much easier for plugin developers to interact with WP Super Cache. In the past a file had to be placed in the &#8220;WP Super Cache plugins directory&#8221; so that it would be loaded correctly but in this release I&#8217;ve added new actions that will allow you to load code from other directories too.</p>

<p>Use the <strong>wpsc_add_plugin</strong> action to add your plugin to a list loaded by WP Super Cache. Use it like this:<br /></p>

<pre class="wp-block-preformatted">do_action( \'wpsc_add_plugin\', WP_PLUGIN_DIR . \'/wpsc.php\' )</pre>

<p>You can give it the full path, with or without ABSPATH. Use it after &#8220;init&#8221;. It only needs to be called once, but duplicates will not be stored.</p>

<p>In a similar fashion, use <strong>wpsc_delete_plugin</strong> to remove a plugin.</p>

<p>The release also makes it much simpler to modify the cookies used by WP Super Cache to identify &#8220;known users&#8221;. This is useful to identify particular types of pages such as translated pages that should only be shown to certain users. For example, visitors who have the English cookie will be shown cached pages in English. The German cookie will fetch German cached pages. The action <strong>wpsc_add_cookie</strong> makes this possible.</p>

<pre class="wp-block-preformatted">do_action( \'wpsc_add_cookie\', \'language\' );</pre>

<p>Execute that in your plugin and WP Super Cache will watch out for the language cookie. The plugin will use the cookie name <em>and</em> value in determining what cached page to display. So &#8220;language = irish&#8221; will show a different page to &#8220;language = french&#8221;.</p>

<p>Use <strong>wpsc_delete_cookie</strong> to remove a cookie. Cache files won&#8217;t be deleted. It&#8217;s doubtful they&#8217;d be served however because of the hashed key used to name the filenames.<br /></p>

<pre class="wp-block-preformatted">do_action( \'wpsc_delete_cookie\', \'language\' );</pre>

<p>If you&#8217;re going to use either of the plugin or cookie actions here I recommend using <strong>Simple Caching</strong>. While the plugin will attempt to update mod_rewrite rules, it is much simpler to have PHP serve the files. Apart from that, any plugins loaded by WP Super Cache will be completely skipped if Expert mode is enabled.</p>

<p><strong>Related Posts</strong><ul><li> <a href="https://odd.blog/2008/10/24/wp-super-cache-084-the-garbage-collector/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.4, the garbage collector">WP Super Cache 0.8.4, the garbage collector</a></li><li> <a href="https://odd.blog/2009/01/09/wp-super-cache-087/" rel="bookmark" title="Permanent Link: WP Super Cache 0.8.7">WP Super Cache 0.8.7</a></li><li> <a href="https://odd.blog/2010/02/08/wp-super-cache-099/" rel="bookmark" title="Permanent Link: WP Super Cache 0.9.9">WP Super Cache 0.9.9</a></li></ul></p>
<p><a href="https://odd.blog/2018/08/17/wp-super-cache-1-6-3/" rel="nofollow">Source</a></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 17 Aug 2018 16:36:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"Donncha";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:66:"WPTavern: WordPress for iOS 10.6 Adds A Detailed Site Activity Log";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83231";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wptavern.com/wordpress-for-ios-10-6-adds-a-detailed-site-activity-log";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3569:"<p>In the past few months, the <a href="https://apps.wordpress.com/mobile/">WordPress mobile application</a> for iOS has quietly received a steady round of improvements. Version 10.5 increased its compatibility with Gutenberg. <a href="https://wptavern.com/wordpress-for-ios-and-gutenberg-dont-get-along">Earlier this year</a>, Gutenberg and the iOS app didn&#8217;t get along particularly well. </p>

<p>About a month ago in 10.4, an activity log was added that allows users to see a detailed list of activities on their sites. In 10.6, the most recent version, the activity log is now available for free WordPress.com sites and those connected with Jetpack.</p>

<img />WordPress for iOS Activity Log

<p>As you can see in the screenshot above, comment activity, post and page activity, and generally all site activity shows up in the log. </p>

<p>Selecting an activity displays detailed information such as who performed the action, their role, IP address, and other information depending on the activity. The log displays the last 20 activities performed on the site.</p>

<p>It&#8217;s unclear exactly what data the activity log monitors, where or if it&#8217;s saved, how it&#8217;s generated, and how users can turn it off. Browsing around the mobile app, I was unable to find a way to disable the activity log.</p>

<h2>The WordPress Mobile Team is Quiet But Busy</h2>

<p>If it weren&#8217;t for the change logs on the iTunes Store, it would be difficult for users to know what&#8217;s going on with the app. The project&#8217;s <a href="https://github.com/wordpress-mobile/WordPress-iOS">GitHub page</a> is buzzing with activity, but more public facing means of communication are not. <br /></p>

<p>The WordPress for iOS app <a href="https://twitter.com/wordpressios?lang=en">Twitter account</a> has been dormant since May. The <a href="https://apps.wordpress.com/blog/">WordPress Mobile apps blog</a> hasn&#8217;t published a new post since 2016 and some of the posts that highlight new features are on the official <a href="https://en.blog.wordpress.com/">WordPress.com blog</a>.</p>

<p>Sure, not every release requires a full-featured post, but the activity log is a feature that I think warrants one. An explanation of why it was created, how it works, and how users not interested in it can disable it. </p>

<p>The WordPress for iOS app is <a href="https://apps.wordpress.com/contribute/">open source</a> and available for free from the <a href="https://search.itunes.apple.com/WebObjects/MZContentLink.woa/wa/link?mt=8&path=apps%2fWordPress">Apple iTunes App Store</a>. You can also find links to the Android and Desktop apps on the <a href="https://apps.wordpress.com/">WordPress.com Apps site</a>. </p>

<h2>*Update*</h2>

<p>After this article was published, I was given a <a href="https://jetpack.com/support/activity-log/">link to a support document</a> on the Jetpack website that explains the activity log feature in more detail. The document <a href="https://jetpack.com/support/activity-log/#data-retention">links to a list of activities</a> along with their retention periods which vary based on the plan attached to the user&#8217;s WordPress.com account. </p>

<p>Only the most recent 1,000 events are displayed in the log. As noted at the end of the article, once the retention period ends for activity data, it&#8217;s moved to long-term storage where it is retained indefinitely. Data held in long-term storage is removed from the activity log.</p>

<p>According to the document, there is no way to deactivate this feature. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Aug 2018 22:12:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:125:"WPTavern: WordPress.com Boots Sandy Hook Conspiracy Theory Sites, Bans Malicious Publication of Unauthorized Images of Minors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83171";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:135:"https://wptavern.com/wordpress-com-boots-sandy-hook-conspiracy-theory-sites-bans-malicious-publication-of-unauthorized-images-of-minors";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:13585:"<p>WordPress.com came under fire this week for hosting a site with conspiracy theories claiming the Sandy Hook Elementary School shooting was a hoax. The New York Times published an article titled &#8220;<a href="https://www.nytimes.com/2018/08/13/business/media/sandy-hook-conspiracies-leonard-pozner.html" rel="noopener noreferrer" target="_blank">This Company Keeps Lies About Sandy Hook on the Web</a>,&#8221; setting off a hailstorm of angry posts on social media that demanded Automattic take action.</p>
<p>“Posting conspiracy theories or untrue content is not banned from WordPress.com, and unfortunately this is one of those situations,” Automattic told the New York Times in a statement. “It is a truly awful situation, and we are sympathetic to the Pozner family.”</p>
<p>Leonard Pozner, father of Sandy Hook Elementary shooting victim Noah Pozner, claims that images of his son were being misused on a WordPress.com-hosted site where the author denied the tragedy and called his son a crisis actor. He filed copyright infringement claims on the images used on the conspiracy site in an attempt to get the content removed.</p>
<p>Automattic examined the images and determined that there was nothing illegal about their use on the site. The company sent Pozner a reply that said, &#8220;because we believe this to be fair use of the material, we will not be removing it at this time.&#8221;</p>
<p>In the New York Times article, Automattic admits its insensitivity in handling the situation, apologizing to the family, but said the posts in question &#8220;are not violating any current user guidelines, or copyright law.&#8221;</p>
<p>&#8220;The pain that the family has suffered is very real and if tied to the contents of sites we host, we want to have policies to address that,&#8221; Automattic told the New York Times.</p>
<h3>WordPress.com Updates it Privacy Policy, Banning Malicious Publication of Unauthorized, Identifying Images of Minors</h3>
<p>After consulting with the Internet Archive&#8217;s Wayback Machine, it appears WordPress.com has quietly updated its privacy policy, which now includes unauthorized images of minors on the list of things the platform considers private information. The <a href="https://web.archive.org/web/20180201091159/https://en.support.wordpress.com/private-information/" rel="noopener noreferrer" target="_blank">previous policy</a> appears below:</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-16-at-8.29.14-AM.png?ssl=1"><img /></a></p>
<p>The <a href="https://en.support.wordpress.com/private-information/" rel="noopener noreferrer" target="_blank">updated policy</a> adds &#8220;the malicious publication of unauthorized, identifying images of minors&#8221; to that list.</p>
<p>Searching Twitter for discussion surrounding Sandy Hook conspiracy sites turns up a slew of tweets calling on people to boycott WordPress.com and other Automattic products. However, there are also responses on the other end of the spectrum, with Sandy Hook conspiracy theorist supporters retweeting a user who claims that WordPress.com has shut down his site.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Minutes ago this morning, I discovered that WordPress has unilaterally and without warning shut down Fellowship of the Minds for alleged violations of "Terms of Service". I will explore finding another server for FOTM. Please pray for America.</p>
<p>&mdash; Eowyn (@DrEowyn) <a href="https://twitter.com/DrEowyn/status/1029338304376795136?ref_src=twsrc%5Etfw">August 14, 2018</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">WordPress just suspended my interim blog The Fundamental Option as well. That blog has been active for only the past 2 days, so what possible "terms of service" could have have violated? It\'s war, folks. America is entering into very dark days. Be prepared.</p>
<p>&mdash; Eowyn (@DrEowyn) <a href="https://twitter.com/DrEowyn/status/1029788566459625472?ref_src=twsrc%5Etfw">August 15, 2018</a></p></blockquote>
<p></p>
<p>The site in question (fellowshipofminds.com) appears to have been removed, along with an interim site the author created following the first suspension. <a href="https://twitter.com/memoryholeblog/status/1029415973500137479" rel="noopener noreferrer" target="_blank">A number of other related sites</a> have also recently been removed. These events are outlined in <a href="http://memoryholeblog.org/2018/08/14/wordpress-automattic-shuts-down-fellowshipoftheminds/" rel="noopener noreferrer" target="_blank">a post on memoryholeblog.org</a>, a site maintained by James F. Tracy, a former professor of journalism and media who became known for his research questioning the Sandy Hook Elementary School massacre and Boston Marathon bombing. Tracy&#8217;s blog was also removed from WordPress.com in 2016 for violation of Automattic’s Terms of Service.</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-16-at-8.48.40-AM.png?ssl=1"><img /></a></p>
<p>Automattic did not detail specific infractions in either case of removal. It&#8217;s not clear whether the site referenced in the New York Times article was removed for a new offense or a previous one. The removals seem to have coincided with WordPress.com&#8217;s updated privacy policy, but Automattic&#8217;s PR department has not responded to a request for comment on the matter.</p>
<p>&#8220;As with Automattic’s treatment of MHB, FOTM’s disappearance strongly suggests how WordPress.com’s policies are being tailored to placate outside parties whose foremost interest is in stifling political speech on potential high crimes, and how in this instance such poorly-founded grounds for censorship have triumphed over free speech,&#8221; Tracy said.</p>
<p>Historically, Automattic has been a stalwart defender of free speech on the web. It&#8217;s outlined as part of the <a href="https://en.support.wordpress.com/user-guidelines/" rel="noopener noreferrer" target="_blank">WordPress.com&#8217;s User Guidelines</a>:</p>
<blockquote><p>WordPress.com strongly believes in freedom of speech. We have a vast audience spread across many cultures, countries and backgrounds with varying values and our service is designed to let users freely express any ideas and opinions without us censoring or endorsing them.</p></blockquote>
<p>It&#8217;s not clear whether Automattic changed its policy in response to this situation or whether this situation revealed holes in it that the company wanted to improve. In either case, the policy change seems to have enabled Automattic to do what outraged onlookers wanted them to do, except outside of the emotional mandate issued by the New York Times.</p>
<p>Without the new privacy policy in place, removal of a site based on offensive material constitutes censorship. Automattic had already determined that the post using the child&#8217;s image, while distasteful and offensive, was fair use for the material. The image had likely already been used thousands of times by news organizations with a different narrative attached to it that is more in alignment with the majority&#8217;s view of the tragedy.</p>
<p>As it is a private company, Automattic&#8217;s terms of service do not have to reflect the full freedom of speech allowed by the law. However, the company has always upheld its reputation in the past as an uncompromising defender of its users when presented with requests for censorship.</p>
<p>In a recent <a href="https://www.techdirt.com/articles/20180206/10271639166/why-allegedly-defamatory-content-wordpresscom-doesnt-come-down-without-court-order.shtml" rel="noopener noreferrer" target="_blank">post on Techdirt</a>, Automattic general counsel Paul Sieminski and Holly Hogan detail how WordPress.com handles its role in managing intermediary liability when the company receives complaints regarding defamatory content:</p>
<blockquote><p>Making online hosts and other intermediaries like WordPress.com liable for the allegedly defamatory content posted by users is often criticized for burdening hosts and stifling innovation. But intermediary liability isn&#8217;t just bad for online hosts. It&#8217;s also terrible for online speech. The looming possibility of writing a large check incentivizes hosts like Automattic to do one thing when we first receive a complaint about content: Remove it. That decision may legally protect the host, but it doesn&#8217;t protect users or their online speech.</p></blockquote>
<p>That article explains the level of nuance involved in handling complaints and the costs associated with protecting its users&#8217; freedom of speech. Automattic&#8217;s counsel concludes with an observation that &#8220;leaving such important decisions to the discretion of Internet hosts is misplaced and tilts the balance in favor of silencing often legitimate voices.&#8221;</p>
<h3>WordPress.com is a Host for Websites, Not a Social Media Silo</h3>
<p>WordPress.com&#8217;s platform is distinct from social networks in that it is not a social media silo. It acts more as a host and cannot have one-off shutdowns of sites anytime there is a public outcry.</p>
<p>&#8220;WordPress.com is much closer to being a common carrier than Facebook and other social media,&#8221; Dan Kennedy, associate professor at Northeastern University&#8217;s school of Journalism, <a href="https://twitter.com/dankennedy_nu/status/1029343514243616769" rel="noopener noreferrer" target="_blank">said</a> in response to the NYT article. &#8220;That difference really doesn’t get highlighted here.&#8221;</p>
<p>Self-hosted WordPress (.org) user and data journalist Matt Stiles also <a href="https://twitter.com/stiles/status/1029220655013609472" rel="noopener noreferrer" target="_blank">commented on the distinction</a>, and followed up with me privately, identifying WordPress.com as &#8220;a free-speech sidewalk for the Internet.&#8221;</p>
<p>&#8220;WordPress.com needs to make clear to the public that it&#8217;s a host, not a place that controls &#8212; through algorithms or other curation, and revenue — content,&#8221; Stiles said. &#8220;I am NOT a supporter of sites like this. I just want WordPress to thrive as an open-source tool and as an important paid host for web sites. I&#8217;m also worried about WordPress.com having to make arbitrary decisions about content. It&#8217;s tough to define hate speech. We know it when we see it, but I worry about censorship on private platforms.&#8221;</p>
<p>Dave Winer also <a href="http://scripting.com/2018/08/16/132055.html" rel="noopener noreferrer" target="_blank">commented</a> that the article failed to capture the distinction of WordPress.com as a host for websites:</p>
<blockquote><p>WordPress.com isn&#8217;t like the others, it isn&#8217;t a silo, so banning him from that service will not necessarily have any affect on the presence of his site. He will be able to export his site, set up his own server, point the DNS entry at that server, and proceed on the open web and it will appear to outside viewers as if nothing happened. This will be the end of the discussion, unless the anti-speech advocates try to exert pressure on the open web. There they will find there is no CEO, no corporate headquarters, no shareholders afraid of losing value, none of the usual pressure points.</p></blockquote>
<p>This particular situation regarding the Sandy Hook conspiracy site seems to have hit a nerve due to the fact that there are children involved. Despite WordPress.com&#8217;s quick privacy policy change in this instance, Automattic is still a rare outlier among publishing companies when it comes to support of free speech on the web. Media outlets and tech companies are increasingly clamoring for offensive content to be removed, instead of taking a principled stand against censorship.</p>
<p>Today <a href="https://www.poynter.org/news/200-newspapers-will-write-pro-journalism-editorials-will-they-also-listen" rel="noopener noreferrer" target="_blank">more than 200 newspapers</a>, including the New York Times, are coordinating to publish editorials calling out President Trump&#8217;s characterization of the press as the &#8220;enemy of the people.&#8221; Corporate-owned news media is ready to decry attacks on free speech, but do they really believe in it when it counts? That freedom isn&#8217;t predicated on whether the speech is true or unoffensive to readers.</p>
<p>Calling out a free speech platform like WordPress.com, without any distinction for its vital role in enabling journalists across the globe, is a coercive attempt to exact a desired result. What WordPress.com has done is groundbreaking in democratizing publishing and enabling bloggers to break news on their own sites.</p>
<p>The New York Times raking WordPress.com over the coals for its refusal to censor its users is an egregious double standard. A publication cannot call for free speech for itself while eating up the rights of everyone else they don&#8217;t agree with. Principles aren&#8217;t principles if they only serve you when they are convenient.</p>
<p>Forcing the censorship of offensive speech may feel like swift justice in the short term, but it weakens the fabric of a free society. Let discerning readers make up their own minds when they come across sites disseminating conspiracy theories.  Although it may be an unpopular stance, the tragic nature of this particular offense cannot bypass the principles that underpin our basic freedoms.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 16 Aug 2018 16:58:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:72:"WPTavern: WPWeekly Episode 327 – Truth, Misinformation, and Good Ideas";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=83205&preview=true&preview_id=83205";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:77:"https://wptavern.com/wpweekly-episode-327-truth-misinformation-and-good-ideas";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2980:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I discuss what&#8217;s new in the world of WordPress. First, we talk about Syed Balkhi&#8217;s growth accelerator fund and learn that Jacoby pitched a similar idea to Balkhi at WordCamp Miami 2017.</p>
<p>We discuss the new feedback surrounding Gutenberg thanks to the call out in WordPress 4.9.8. Near the end of the show, we have a thoughtful conversation around misinformation, truth, and the fine line of allowing freedom of speech on private platforms.</p>
<p>I apologize for the audio quality in this episode. During the Live hangout, there were no issues detected. However, once the video was encoded by YouTube, audio issues were present, the video was choppy, and the length of the show was shortened.</p>
<p>Unfortunately, I&#8217;ve been complacent with Google Hangouts&#8217; reliability and have not been recording my audio locally. Beginning next week, Jacoby and I will record our audio locally so if this issue happens again, we&#8217;ll be able to combine the audio tracks. Although there are parts of this episode that are difficult to listen too, I believe there is enough good audio in the show to warrant its publication.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/syed-balkhi-launches-a-wordpress-focused-growth-accelerator-fund">Syed Balkhi Launches A WordPress-focused Growth Accelerator Fund</a><br />
<a href="https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers">Gutenberg Plugin Garners Mixed Reactions from New Wave of Testers</a><br />
<a href="https://wptavern.com/mythic-a-wordpress-starter-theme-by-justin-tadlock-now-in-open-beta">Mythic: A WordPress Starter Theme by Justin Tadlock Now in Open Beta</a><br />
<a href="https://wptavern.com/advanced-custom-fields-to-add-gutenberg-compatibility-in-version-5-0-slated-for-september">Advanced Custom Fields to Add Gutenberg Compatibility in Version 5.0, Slated for September</a><br />
<a href="https://wptavern.com/ephox-creators-of-tinymce-rebrand-to-tiny-technologies-inc">Ephox, Creators of TinyMCE, Rebrand to Tiny Technologies Inc.</a><br />
<a href="https://www.nytimes.com/2018/08/13/business/media/sandy-hook-conspiracies-leonard-pozner.html">This Company Keeps Lies About Sandy Hook on the Web</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, August 22nd 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #327:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Aug 2018 23:07:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:11:"
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"HeroPress: India and HeroPress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://heropress.com/?p=2604";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:105:"https://heropress.com/india-and-heropress/#utm_source=rss&utm_medium=rss&utm_campaign=india-and-heropress";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3554:"<img width="960" height="480" src="https://s20094.pcdn.co/wp-content/uploads/2017/08/082317-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: Nothing is better than a girl who writes code." /><p>It&#8217;s no secret that HeroPress was greatly helped in its early days by people from India. Jeet, <a href="https://heropress.com/essays/ill-keep-looking-for-a-cms-unless-i-find-wordpress/">Saurabh</a>, <a href="https://heropress.com/essays/wordpress-my-passport-to-open-source/">Aditya</a>, <a href="https://heropress.com/essays/growing-wordpress-india/">Alexander</a>, and <a href="https://heropress.com/?s=india">many others</a> gave deep and meaningful advice on how I, as a white American male, should approach the task I had set before me. This is one of the reasons it makes me so happy when I hear stories of how WordPress changes lives there, especially for women.</p>
<p>This week&#8217;s HeroPress replay is from Juhi Patel, from Gujarat, in northwestern India. As I recall, hers was also the very first HeroPress essay to be multi-lingual, something I&#8217;ve always wanted.</p>
<p>Juhi&#8217;s culture isn&#8217;t too keen on women doing Professional work, a problem not all that uncommon throughout the world. Not only did she have the courage to move against that belief system, WordPress gave her the tools to practically make it happen, and thereby be an example to other women around her. There are still good things happening in the world, and Juhi is helping to make them happen.</p>
<p>Check out her essay here:</p>
<blockquote class="wp-embedded-content"><p><a href="https://heropress.com/essays/wordpress-good-indian-women/">Is WordPress Good for Indian Women?</a></p></blockquote>
<p></p>
<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: India and HeroPress" class="rtsocial-twitter-button" href="https://twitter.com/share?text=India%20and%20HeroPress&via=heropress&url=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: India and HeroPress" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Findia-and-heropress%2F&title=India+and+HeroPress" rel="nofollow" target="_blank" title="Share: India and HeroPress"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/india-and-heropress/&media=https://heropress.com/wp-content/uploads/2017/08/082317-150x150.jpg&description=India and HeroPress" rel="nofollow" target="_blank" title="Pin: India and HeroPress"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/india-and-heropress/" title="India and HeroPress"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/india-and-heropress/">India and HeroPress</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Aug 2018 11:00:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:97:"WPTavern: Yoast SEO 8.0 Introduces Gutenberg Sidebar Integration, Revamps Classic Editor Meta Box";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83162";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:107:"https://wptavern.com/yoast-seo-8-0-introduces-gutenberg-sidebar-integration-revamps-classic-editor-meta-box";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3396:"<p><a href="https://yoast.com/yoast-seo-8-0-introducing-the-yoast-seo-gutenberg-sidebar-a-revamped-meta-box/" rel="noopener noreferrer" target="_blank">Yoast SEO 8.0</a>, featuring the plugin&#8217;s first pass at integrating with the Gutenberg interface. This major update also revamps the classic editor&#8217;s meta box for those who do not have the Gutenberg plugin installed.</p>
<p>In the past, the Yoast SEO meta box was displayed below the post editor. In the Gutenberg UI, the meta box has been redesigned to fit in the sidebar. Those testing Gutenberg will also temporarily find an additional meta box below the post, as the Yoast team has not yet added all optimizations to both yet. In the future, users will have the option to choose between the two.</p>
<p>The updated design displays individual optimizations in collapsible panels with colored smiley face indicators for feedback at a glance. The snippet preview and social previews feature can still be found in the meta box below the post editor. They will be integrated more tightly into the Gutenberg UI in a future round of updates.</p>
<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-sidebar-yoast.jpg?ssl=1"><img /></a>image credit: <a href="https://yoast.com/yoast-seo-8-0-introducing-the-yoast-seo-gutenberg-sidebar-a-revamped-meta-box/">Yoast SEO</a>
<p>Yoast SEO 8.0 also brings some of the meta box UI improvements to the one displayed in the classic editor. It organizes all of the Yoast SEO tools into collapsible panels for a look that is cleaner than the tabs found in the previous UI.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-14-at-1.04.17-PM.png?ssl=1"><img /></a></p>
<p>Version 8.0 is the first step towards Gutenberg integration. The Yoast SEO team is working on using modals to display previews for snippets and social posts from the sidebar so the interface isn&#8217;t split across two meta boxes. Users will eventually have the option to toggle either meta box display option into view, including those who are using the classic editor. The team is also working on allowing users to create blocks with the correct structured data automatically attached for things like books, recipes, products, and other specific content types.</p>
<p>WordPress.org has a handful of popular SEO plugins and Yoast SEO is currently leading the pack when it comes to integration with the Gutenberg UI. In a recent support <a href="https://wordpress.org/support/topic/gutenberg-12/#post-10379255" rel="noopener noreferrer" target="_blank">thread</a>, All in One SEO Pack creator Michael Torbert said his plugin is &#8220;compatible with Gutenberg and will be getting new features to work with it in time.&#8221; Torbert doesn&#8217;t have full <a href="https://github.com/semperfiwebdesign/all-in-one-seo-pack/issues/1122" rel="noopener noreferrer" target="_blank">Gutenberg integration</a> assigned to a milestone on GitHub yet.</p>
<p>The SEO Framework, another SEO plugin growing in popularity, appears to be in the same boat if <a href="https://github.com/sybrew/the-seo-framework/issues/235" rel="noopener noreferrer" target="_blank">GitHub activity</a> is any indication. The plugin&#8217;s author, Sybre Waaijer, has discussed the possibility of inserting the meta box into the Gutenberg sidebar, similar to the Yoast implementation.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Aug 2018 04:19:33 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:74:"WPTavern: Syed Balkhi Launches A WordPress-focused Growth Accelerator Fund";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83179";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"https://wptavern.com/syed-balkhi-launches-a-wordpress-focused-growth-accelerator-fund";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1716:"<p>Syed Balkhi, founder of WPBeginner, has announced a <a href="https://www.wpbeginner.com/news/announcing-the-wpbeginner-growth-accelerator-fund/">growth accelerator fund</a> aimed at helping companies focused on WordPress prosper. </p>

<p>The fund will provide between $100K-500K to a small group of selected companies. In addition to the funding, selected companies will be able to take advantage of Awesome Motive&#8217;s media presence, network of business associates, and receive guidance.</p>

<p>&#8220;The problem is that the WordPress market is not very well understood by investors,&#8221; Balkhi said. &#8220;And frankly, the majority of WordPress businesses are not large enough to meet their criteria.</p>

<p>&#8220;But this doesn’t mean that WordPress businesses don’t have the potential. It’s quite the opposite – they have a lot of potential. There are tons of opportunities to grow in the WordPress ecosystem with the right playbook, and I want to help prove that.&#8221;</p>

<p>Founders will be given a lot of advice although they won&#8217;t be required to act upon it. Backers of the growth fund will also maintain a hands-off approach, interfering as little as possible with day-to-day operations. </p>

<p>Five companies will be hand-selected to receive funding. To be eligible for investments, WordPress-focused companies must be at least six months old. To apply, founders need to fill out the <a href="https://www.wpbeginner.com/news/announcing-the-wpbeginner-growth-accelerator-fund/#wpbfund">following form</a>.</p>

<p>The WPBeginner growth accelerator fund could be the jump start that gives a handful of companies the opportunity to take things to the next level. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 15 Aug 2018 00:15:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:81:"WPTavern: Sami Keijonen’s Foxland Themes and Plugins are Now Available for Free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82882";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/sami-keijonens-foxland-themes-and-plugins-are-now-available-for-free";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3674:"<p>WordPress theme designer and developer <a href="https://profiles.wordpress.org/samikeijonen" rel="noopener noreferrer" target="_blank">Sami Keijonen</a> has made all of his theme and plugin products at Foxland <a href="https://foxland.fi/foxland-products-for-free/" rel="noopener noreferrer" target="_blank">available for free</a>. Keijonen&#8217;s WordPress.org-hosted themes are active on more than 10,000 websites.</p>
<p>During the past three years he began taking on more client work, which gave him less time for theme building and maintenance. Last month he accepted a front-end engineer position at 10up that is keeping him busy.</p>
<p>Fans might remember Keijonen&#8217;s <a href="https://wptavern.com/the-mina-olen-free-wordpress-theme-experiment" rel="noopener noreferrer" target="_blank">Mina Olen Free WordPress Theme Experiment</a> when he made the theme available for free on GitHub to see if potential customers would be inspired to purchase after being able to test drive the theme on their own sites. At that time he said he struggled to support his theme shop, because the business aspect of it wasn&#8217;t one of his strengths.</p>
<p>It&#8217;s easy to get lost in all the competition in the WordPress theme industry, especially when major players have more money to drop on advertising and support staff. The days of building a beautiful theme and selling it without any kind of marketing are long gone. Prospective theme developers have to be ready to embrace the challenges of competing in a much wider market in 2018.</p>
<p>&#8220;Foxland isn’t a gold mine,&#8221; Keijonen said in his announcement. &#8220;Foxland brings about 3,000 to 4,000 Euros per year, which is OK but my goal was 10,000 euros.&#8221;</p>
<p>Customers appreciated Keijonen&#8217;s attention to detail, accessibility, and performance. Respected WordPress theme author <a href="https://tungdo.github.io/" rel="noopener noreferrer" target="_blank">Tung Do</a> said Keijonen&#8217;s themes are &#8220;great examples of best practices.&#8221; Many of them also include support for popular plugins.</p>
<p>For example, <a href="https://foxland.fi/downloads/checathlon/" rel="noopener noreferrer" target="_blank">Checathlon</a>, one of his best works, is active on <a href="https://foxland.fi/" target="_blank" rel="noopener noreferrer">foxland.fi</a>. It offers built-in styles for Easy Digital Downloads (including product and account pages), Custom Content Portfolio, and Jetpack (testimonials, portfolio, and email subscription widget).</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2017/04/checathlon.png?ssl=1"><img /></a></p>
<p>The <a href="https://foxland.fi/downloads/category/themes/" rel="noopener noreferrer" target="_blank">Foxland collection</a> includes several beautiful minimalist free themes with previously-pro versions that enable additional Customizer settings, page templates, and widgets. All of Keijonen&#8217;s custom <a href="https://foxland.fi/downloads/category/plugins/" rel="noopener noreferrer" target="_blank">plugins</a> (created to accompany the themes) are also available for free.</p>
<p>The Foxland shop has cancelled all the recurring subscriptions but will continue to support existing purchases up to a year from the purchase date. Keijonen said he will maintain most of the old themes and plugins with small updates coming in the future but plans to deprecate some as well.</p>
<p>The landscape of WordPress theming is about to change quite a bit when Gutenberg is merged into core. Keijonen said he plans to embrace these changes by creating new free themes with Gutenberg support, built on more modern code.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Aug 2018 23:46:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: New BackYourStack Tool Drives Financial Support for Open Source Projects";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83100";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wptavern.com/new-backyourstack-tool-drives-financial-support-for-open-source-projects";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2606:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-11-at-5.17.24-PM-e1534026554562.png?ssl=1"><img /></a></p>
<p><a href="https://opencollective.com/" rel="noopener noreferrer" target="_blank">Open Collective</a> launched in 2017 as a new organization that helps groups raise funds and manage them transparently. The service is now widely used by many open source projects. Webpack, one of the first major Open Collective success stories, was able to fund its first full-time developer through the service and is now <a href="https://opencollective.com/webpack" rel="noopener noreferrer" target="_blank">operating on an estimated annual budget of $331,471</a>. The <a href="https://wptavern.com/how-the-san-francisco-wordpress-meetup-is-using-open-collective-to-fund-activities" rel="noopener noreferrer" target="_blank">San Francisco WordPress meetup</a> (WPSFO) is one example of a WordPress group that successfully uses the service to <a href="https://opencollective.com/wordpress-sf" rel="noopener noreferrer" target="_blank">receive sponsorships</a> that help cover expenses for events.</p>
<p>Open Collective has launched a new tool called <a href="https://backyourstack.com/" rel="noopener noreferrer" target="_blank">BackYourStack</a> that helps people and organizations become aware of projects they use that need funding. The tool scans GitHub accounts (for individuals and organizations) and identifies projects that have already set up accounts on Open Collective. The tool shows all detected dependencies and the repositories where they are used.</p>
<p>Here are a few sample results you get from scanning the WordPress GitHub account:</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-13-at-11.36.42-AM.png?ssl=1"><img /></a></p>
<p>The results display where project is used, the number of full-time maintainers, progress to reach the next goal, and a few organizations that are already backing the project. Open Collective also allows backers to support multiple dependences in bulk via a lump sum as an alternative to backing each project individually.</p>
<p>Not every open source project listed on Open Collective will have the need to fund salaries and events, but even a small yearly budget can reduce out-of-pocket costs for open source maintainers for things like hosting and promotional costs. Many widely used open source projects go without funding because users are not aware of their needs. BackYourStack helps people and organizations make a direct connection to the projects they depend on.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 13 Aug 2018 17:38:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WPTavern: Gutenberg 3.5.0 Released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83084";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wptavern.com/gutenberg-3-5-0-released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1260:"<p><a href="https://wordpress.org/plugins/gutenberg/">Gutenberg</a> 3.5.0 <a href="https://make.wordpress.org/core/2018/08/09/whats-new-in-gutenberg-9th-august/">is available</a> for download and polishes existing features. This release adds an edit button to embed blocks that allows users to edit the source URL. </p>

<img />Edit URL Button on Embed Blocks

<p>The contrast has been increased for input fields and check boxes have visually more distinct states as the following video shows. </p>



More Distinct States for Check boxes

<p>One notable change is the <a href="https://github.com/WordPress/gutenberg/pull/8640">addition of a warning</a> that displays if Cloudflare blocks REST API requests. This issue <a href="https://github.com/WordPress/gutenberg/issues/2704">was reported</a> last September and it turns out that the PUT request is sometimes blocked by Cloudflare.</p>

<p>Gary Pendergast <a href="https://github.com/WordPress/gutenberg/issues/2704#issuecomment-410563259">reached out</a> to Cloudflare and the company deployed a fix earlier this week. </p>

<p>To see a full list of changes in this release, check out <a href="https://make.wordpress.org/core/2018/08/09/whats-new-in-gutenberg-9th-august/">the changelog</a>. </p>

<p></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 10 Aug 2018 21:16:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:71:"WPTavern: Ephox, Creators of TinyMCE, Rebrand to Tiny Technologies Inc.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83078";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:79:"https://wptavern.com/ephox-creators-of-tinymce-rebrand-to-tiny-technologies-inc";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1948:"<p>Ephox, the creators of the <a href="https://www.tiny.cloud/features/">TinyMCE editor</a> library that&#8217;s been used by WordPress for more than 10 years, has <a href="https://go.tiny.cloud/blog/a-tiny-name-change/">changed its company name</a> to Tiny Technologies Incorporated. </p>

<p>The new name provides an at-a-glance view of what the company does and establishes a tighter relationship with its flagship product. </p>

<blockquote class="wp-block-quote"><p>To make it easier for you to understand who we are and what we are working on, we have decided to put all of our efforts behind the Tiny brand. Renaming our company to Tiny Technologies Inc. demonstrates the efforts we are making to have TinyMCE the best choice for online rich text editing.</p><cite>Andrew Roberts, CEO and Co-founder of Tiny<br /></cite></blockquote>

<p>In addition to the name change, the company has migrated its web presence to a new domain, <a href="https://www.tiny.cloud/">tiny.cloud</a>. The Cloud top-level domain is managed by Aruba PEC SpA, a wholly owned subsidiary of <a href="https://www.aruba.it/en/home.aspx">Aruba S.p.A.</a>, one of the largest webhosting providers in Europe. </p>

<p>According to Andrew Roberts, CEO and Co-founder of Tiny, existing customers and vendors of Ephox Corporation don&#8217;t need to do anything different since the company is registered to do business under both names. </p>

<p>Roberts also shared insight into the work being done on <a href="https://textbox.io/">Textbox.io</a>, the company&#8217;s mobile-first text editor. &#8220;We continue to support and release updates to our mobile-first online rich text editor, Textbox.io,&#8221; he said. &#8220;By the end of 2019, we do see both TinyMCE and Textbox.io coming together but for now, they are independent projects.&#8221;</p>

<p>TinyMCE is an <a href="https://www.tiny.cloud/download/">open source project</a> that is licensed under LGPL 2.1. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Aug 2018 23:07:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:89:"WPTavern: Yoast SEO Team is Testing Gutenberg Integration Coming in Version 8.0 Next Week";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83059";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:100:"https://wptavern.com/yoast-seo-team-is-testing-gutenberg-integration-coming-in-version-8-0-next-week";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:5899:"<p>Joost de Valk tweeted a sneak peek of the Gutenberg integration the Yoast SEO team is currently testing. The <a href="https://wordpress.org/plugins/wordpress-seo/" rel="noopener noreferrer" target="_blank">plugin</a> has more than 5 million active installations and is one that packs a lot into its wide meta box. Users have been curious about what compatibility with the new editor will look like for Yoast SEO. de Valk tweeted a preview of the plugin working inside the Gutenberg UI:</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Officially still on holiday&#8230; But, testing our <a href="https://twitter.com/yoast?ref_src=twsrc%5Etfw">@yoast</a> SEO Gutenberg integration as the first real integration piece is due next week, this is making me happy (and extremely proud of our team):<a href="https://twitter.com/hashtag/gutenberg?src=hash&ref_src=twsrc%5Etfw">#gutenberg</a> <a href="https://twitter.com/hashtag/wordpress?src=hash&ref_src=twsrc%5Etfw">#wordpress</a> <a href="https://twitter.com/hashtag/yoast?src=hash&ref_src=twsrc%5Etfw">#yoast</a> <a href="https://t.co/UHFAdH0wAt">pic.twitter.com/UHFAdH0wAt</a></p>
<p>&mdash; Joost de Valk (@jdevalk) <a href="https://twitter.com/jdevalk/status/1027284212511109131?ref_src=twsrc%5Etfw">August 8, 2018</a></p></blockquote>
<p></p>
<p>For the past several months the team has been making progress on the plugin&#8217;s <a href="https://github.com/Yoast/wordpress-seo/issues/9189" rel="noopener noreferrer" target="_blank">Gutenberg integration roadmap</a>. Yoast SEO 8.0 is coming next week with the first round of compatibility in place.</p>
<p>&#8220;8.0 is coming on Tuesday with most of it, some bits are relying on the integration of an annotations API in Gutenberg, which is not entirely under our control,&#8221; de Valk said. &#8220;We need that to do markings like we do in the classic editor to highlight where your errors are. Feature complete is quite a while off &#8211; we want to do a LOT. Gutenberg is opening a whole new playing field for us in terms of more in context, actionable feedback.&#8221;</p>
<p>Future versions of Yoast SEO will offer more features inline, instead of housing them in a single meta box.</p>
<p>&#8220;We started by breaking down all our features, and seeing where we could integrate them into Gutenberg,&#8221; de Valk said in a <a href="https://yoast.com/gutenberg-integration/" rel="noopener noreferrer" target="_blank">post</a> outlining Yoast SEO&#8217;s planned approach back in October 2017. &#8220;We don’t think holding on to a single, massive box below the editor will best serve our customers. We’d much rather integrate right where the action happens, and Gutenberg offers us that chance.&#8221;</p>
<p>For example, readability analysis can be shown on a per-block basis to provide more fine-grained feedback:</p>
<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/readability-analysis.jpg?ssl=1"><img /></a>image credit: <a href="https://yoast.com/gutenberg-integration/">Yoast SEO</a>
<p>&#8220;You’ll get actionable feedback in context,&#8221; de Valk said. &#8220;You don’t have to scroll down to a meta box to see the advice and scroll up again to the place where you should implement it. If we give feedback per block, you will get a better understanding of all the factors that influence SEO.&#8221;</p>
<p>The Yoast SEO team has been enthusiastic about what the Gutenberg era will bring to WordPress. In a recent <a href="https://twitter.com/jdevalk/status/1026084237508788225" rel="noopener noreferrer" target="_blank">Twitter thread</a>, de Valk summarized his thoughts on the project and described the direction the Yoast SEO plugin is headed:</p>
<blockquote><p>[I&#8217;ve] been thinking about Gutenberg more lately, as discussion about it is growing now that it&#8217;s near to WordPress core inclusion. What is most important in what we&#8217;re doing is something I think most people don&#8217;t see yet: The new &#8216;blocks&#8217; that Gutenberg introduces allow us to, much more easily, make content items instead of web pages the smallest particle of the web.</p>
<p>Questions and answers, how to&#8217;s, recipes, suddenly all of them can much more easily have metadata, and be reused. This is particularly important to SEOs: the search engines, driven by voice search requirements, are searching for answers, more than for &#8216;just&#8217; URLs to send traffic to, and blocks allow us to give them those answers, in a format both they and users can understand. While doing this, it allows us to keep the separation of content and design, something we definitely need to think more about.</p></blockquote>
<p>With Gutenberg compatibility on its way from widely-used plugins like ACF and Yoast SEO, users can have confidence more plugins they depend on will follow suit. These major players are the first cracks in the ice across the ecosystem that will soon make Gutenberg-support the standard for any product that wants to compete.</p>
<p>de Valk encouraged users to look at the advent of Gutenberg as a door to new opportunities during this transition time.</p>
<p>&#8220;Gutenberg is not &#8216;done,\'&#8221; de Valk said. &#8220;I think it&#8217;s ready to ship, but I also think it opens up a world of new opportunities and discussions. It&#8217;s not all &#8216;right&#8217; yet either, so there will have to be changes as more people use it and get used to it. I do realize this is a drastic change in some ways. But it&#8217;s also not half as bad as people think it is. I have seen people use it for the first time, most people get used to it very quickly. Last but not least: you don&#8217;t have to switch now. The classic editor plugin exists for a reason. You can put off your switch for a year, or even two. But eventually I think everyone will see the power of the new editor and will switch.&#8221;</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Aug 2018 21:54:16 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:100:"WPTavern: Advanced Custom Fields to Add Gutenberg Compatibility in Version 5.0, Slated for September";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83016";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:110:"https://wptavern.com/advanced-custom-fields-to-add-gutenberg-compatibility-in-version-5-0-slated-for-september";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4880:"<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-08-at-10.50.38-PM.png?ssl=1"><img /></a></p>
<p>The <a href="https://wordpress.org/plugins/advanced-custom-fields/" rel="noopener noreferrer" target="_blank">Advanced Custom Fields</a> (ACF) team published an <a href="https://www.advancedcustomfields.com/blog/the-state-of-acf-in-a-gutenberg-world/" rel="noopener noreferrer" target="_blank">announcement</a> today, assuring users that Gutenberg compatibility is in the works and will be available in version 5.0 of the free version in September 2018. The plugin, created by Elliot Condon, makes it easy for developers to add custom fields to WordPress edit screens, including posts, users, taxonomy terms, and media.</p>
<p>ACF is widely used with more than a million active installations. Developers have been concerned about whether or not their custom fields would continue to work on their clients&#8217; websites after the new editor makes its debut in WordPress 5.0.</p>
<p>Gutenberg treats legacy metaboxes as second class citizens in the interface, stuffed at the bottom of the new edit screen. Metaboxes should, however, continue to work as expected. The ACF announcement lets developers know what to expect for how their metaboxes will appear inside Gutenberg:</p>
<blockquote><p>By default, our beloved metaboxes are pushed all the way to the bottom of the screen in an awkward attempt to retain compatibility. This placement feels very much like an afterthought from the Gutenberg developers and creates a disjointed editing experience for those of us (1+ million awesome ACF users) who extend the edit screens with extra fields.</p>
<p>While this setup isn’t ideal, we will continue to work within the system to ensure that ACF is integrated into the Gutenberg UI to the fullest extent possible.</p></blockquote>
<p>The free version of ACF will introduce Gutenberg compatibility in its version 5 release, which is slated for early September 2018. The compatibility update will only apply to version 5 and later, so the ACF team urges developers to running 4.x to upgrade to 5 as soon as it becomes available. Developers can also elect to upgrade early by turning on ACF&#8217;s <a href="https://www.advancedcustomfields.com/resources/upgrade-guide-version-5/" rel="noopener noreferrer" target="_blank">Early Access</a> feature.</p>
<p>The most surprising news is that ACF is introducing its own &#8220;ACF Blocks,&#8221; an <code>acf_register_block()</code> function that allows developers to register their own custom blocks without having to learn JavaScript.</p>
<blockquote><p>One of the big selling points of Gutenberg is the ability for developers to create custom blocks. The challenge is that the process is very JavaScript-intensive and not so friendly to PHP developers. But never fear, because ACF Blocks is here to turn that narrative upside down!</p>
<p>We have been hard at work building a PHP friendly game-changer for you to quickly create new block types using ACF fields to power PHP templates!</p></blockquote>
<p>ACF Blocks may be an unexpected development for those using the plugin, as the ACF team&#8217;s recent tweets have frequently communicated their disappointment with Gutenberg.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Just spent the day working with <a href="https://twitter.com/hashtag/gutenberg?src=hash&ref_src=twsrc%5Etfw">#gutenberg</a>&#8230; <img src="https://s.w.org/images/core/emoji/11/72x72/1f915.png" alt="🤕" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/1f624.png" alt="😤" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/1f626.png" alt="😦" class="wp-smiley" /> Frustrated, annoyed and surprised at how buggy the editing experience is.</p>
<p>&mdash; Advanced Custom Fields (@wp_acf) <a href="https://twitter.com/wp_acf/status/1026724444327178240?ref_src=twsrc%5Etfw">August 7, 2018</a></p></blockquote>
<p></p>
<p>The availability of the ACF Blocks function is a strategic move that continues to make ACF indispensable for users who may not have made the time to improve their technical skills with regards to extending Gutenberg.</p>
<p>&#8220;Using ACF to make custom blocks was something I thought could happen, but not necessarily would happen,&#8221; WordPress developer Roy Sivan <a href="https://twitter.com/royboy789/status/1027199624669327360" rel="noopener noreferrer" target="_blank">said</a>. &#8220;They proved me wrong, and its a big deal.&#8221;</p>
<p>The news should come as a relief for developers who have used ACF liberally on client sites and feel under the gun with Gutenberg&#8217;s proposed time frame for inclusion in core. The ACF team is working to make sure developers&#8217; customizations continue to work as seamlessly as possible when WordPress 5.0 is released.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Aug 2018 04:57:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:30;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:67:"WPTavern: WPWeekly Episode 326 – Long Live the Fields API Project";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=83037&preview=true&preview_id=83037";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:74:"https://wptavern.com/wpweekly-episode-326-long-live-the-fields-api-project";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1687:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I are joined by <a href="https://www.scottkclark.com/">Scott Kingsley Clark</a>, lead developer of the <a href="http://pods.io/">Pods framework</a>. Clark describes what it was like to lead the Fields API project, the difficulties of working hard on a project and not getting core buy-in, and why building the Fields API into core first would have made the transition to Gutenberg easier for users and developers.</p>
<p>He looks back and describes what he possibly could have done differently and provides an update on Pods Framework&#8217;s compatibility with Gutenberg. To wrap up the show, Clark played us a song on his electric ukulele. To hear more tunes from Clark, check out <a href="https://soundcloud.com/soft-charisma">his channel on SoundCloud</a>.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership">WordPress Core Fields API Project is Seeking New Leadership</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, August 15th 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #326:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Aug 2018 02:34:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:31;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: Mythic: A WordPress Starter Theme by Justin Tadlock Now in Open Beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=83029";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:88:"https://wptavern.com/mythic-a-wordpress-starter-theme-by-justin-tadlock-now-in-open-beta";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4765:"<p><a href="http://justintadlock.com/">Justin Tadlock</a>, founder of <a href="https://themehybrid.com/">Theme Hybrid</a>, has <a href="https://themehybrid.com/weblog/mythic-your-new-starting-point-for-theme-design">released Mythic</a>, a starter theme that provides modern tools to get theme developers started on the right foot. </p>

<blockquote class="wp-block-quote  is-style-large"><p>Theming in 2018 is much different than theming in 2008. Without the right tools, it can be overwhelming to simply get started building even the most basic theme.</p><cite>Justin Tadlock</cite></blockquote>

<p>While starter themes are nothing new in the WordPress space, Mythic and <a href="https://wptavern.com/wp-rig-a-wordpress-starter-theme-and-build-process-in-one">WP Rig</a> take things to the next level and relatively share the same goal of providing a modern foundation to develop on top of. </p>

<p>Part of the inspiration to build Mythic began two years ago. In trying to revamp the <a href="https://wordpress.org/themes/news/">News theme</a>, Tadlock became frustrated with how difficult it was to use old coding methods and dropped the project.<br />><br /><br /><br /><br /><br />&#8220;In a lot of ways, it was the catalyst that started me down this road toward Mythic,&#8221; Tadlock said. &#8220;I didn&#8217;t realize it at the time. But, that&#8217;s where some of my frustration began with modern theme building.&#8221;</p>

<p>Mythic supports PHP 5.6+ although Tadlock is strongly pushing developers towards PHP 7+. &#8220;Anything earlier than 5.6 means for clunky code that’s just a headache to maintain,&#8221; he said. &#8220;WordPress, as a community, needs to be pushing people to update.&#8221;</p>

<p>Support for SASS, LESS, CSS, and Stylus are built-in and developers can choose which language they prefer for builds. ES6+ was chosen for JavaScript and is commonly used for building Gutenberg blocks. </p>

<p>Mythic comes with <a href="http://getbem.com/">BEM</a> or Block-Element-Modifier. BEM is a methodology that enables developers to create reusable elements and sharing code in front-end environments. </p>

<p>&#8220;BEM is a popular solution because it goes hand-in-hand with modern CSS pre-processors,&#8221; Tadlock said. &#8220;It also allows you to keep your styles flat and not get lost in <em>specificity hell</em>. This means smaller, faster stylesheets that are easier to override when you, a child theme author, or user need to do something custom.&#8221; The starter theme uses <a href="https://webpack.js.org/">Webpack</a> in combination with <a href="https://github.com/JeffreyWay/laravel-mix">Laravel Mix</a> to manage assets and modules.<br /></p>

<p>Mythic has an <a href="https://themehybrid.com/weblog/working-with-the-view-class">extended View class</a> that allows theme authors to use their preferred folder structure. Theme authors can also add custom data to theme templates. According to Tadlock, both features are not part of WordPress&#8217; native templating system. </p>

<p>In addition to Mythic, Tadlock has continued to work on the <a href="https://themehybrid.com/hybrid-core">Hybrid Core </a>framework. Hybrid Core is a required dependency that is added via Composer. </p>

<p>Using Mythic with Hybrid Core exposes developers to features of the framework that they otherwise may not discover. &#8220;I rewrote nearly all of HC5 from scratch,&#8221; he said. &#8220;As a result, it’s leaner, more organized, and more cohesive.&#8221; The starter theme is also Gutenberg-ready.<br /></p>

<h2>Tadlock Experiments with Sponsorship Pricing Model<br /></h2>

<p>Mythic is in open beta and available for free via <a href="https://github.com/justintadlock/mythic">GitHub</a>. The <a href="https://themehybrid.com/themes/mythic">pricing model</a> is an honor system experiment. Tadlock is asking those who build projects for clients and generating a profit, to make a $99 sponsorship purchase. For commercially-sold themes, he is asking for $199. Both packages come with one year of support and access to the company&#8217;s Slack channel. <br /></p>

<p>&#8220;I&#8217;m still taking feedback on the payment system,&#8221; Tadlock said. &#8220;It could change. There have been a few suggestions more of a lifetime/flat fee. I&#8217;d prefer to just get some generous sponsors and keep it all $free. We&#8217;ll see where that goes in this next month of the beta process.&#8221;</p>

<p>Mythic&#8217;s beta ends on September 3rd in which he&#8217;ll release version 1.0. Until then, he is trying to get as much feedback as possible from developers. To file issues, submit feedback, and contribute, visit the <a href="https://github.com/justintadlock/mythic">project&#8217;s GitHub page</a>. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 09 Aug 2018 00:40:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:32;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:61:"WPTavern: Watch the Top 10 Sessions from WordCamp Europe 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82962";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:72:"https://wptavern.com/watch-the-top-10-sessions-from-wordcamp-europe-2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3937:"<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/WCEU-2018.jpg?ssl=1"><img /></a>photo credit: <a href="https://www.flickr.com/photos/wceu/41176987410/">Val Vesa</a>
<p>The results of the <a href="https://2018.europe.wordcamp.org/2018/08/07/results-of-the-wceu-2018-attendee-survey/" rel="noopener noreferrer" target="_blank">WCEU 2018 Attendee Survey</a> are in: 98% of the 566 respondents from 49 countries said they would recommend WCEU to a friend and 90% are very likely to attend the next event in Berlin. Of those who participated in the survey, 49% were attending WCEU for the first time and 37% of them were attending their first WordCamp. Overall, attendees reported overwhelmingly positive experiences, which is a big affirmation of the organizing team that continues to lift the bar higher for WordCamps around the world.</p>
<p>If you missed out on the WordCamp, the good news is that you can catch all of the sessions on WordPress.tv. The top 10 sessions have been curated by attendees who responded to the survey. These sessions cover some of the most important topics for WordPress professionals in 2018 and beyond:</p>
<ol>
<li><a href="https://wordpress.tv/2018/07/04/matt-mullenweg-a-summertime-update-keynote-and-qa/" rel="noopener noreferrer" target="_blank">Keynote and Q&#038;A</a> – Matt Mullenweg</li>
<li><a href="https://wordpress.tv/2018/07/11/joost-de-valk-technical-seo-to-grow-your-wordpress-business/" rel="noopener noreferrer" target="_blank">Technical SEO to grow your WordPress business</a> – Joost de Valk</li>
<li><a href="https://wordpress.tv/2018/07/06/morten-rand-hendriksen-the-ethics-of-web-design/" rel="noopener noreferrer" target="_blank">The Ethics of Web Design</a> – Morten Rand-Hendriksen</li>
<li><a href="https://wordpress.tv/2018/07/09/matias-ventura-beyond-gutenberg/" rel="noopener noreferrer" target="_blank">Beyond Gutenberg</a> – Matías Ventura</li>
<li><a href="https://wordpress.tv/2018/07/08/alberto-medina-thierry-muller-progressive-wordpress-themes/" rel="noopener noreferrer" target="_blank">Progressive WordPress Themes</a> – Alberto Medina, Thierry Muller</li>
<li><a href="https://wordpress.tv/2018/07/08/noel-tock-wordpress-in-2019/" rel="noopener noreferrer" target="_blank">WordPress in 2019</a> – Noel Tock</li>
<li><a href="https://wordpress.tv/2018/07/05/maja-benke-accessible-design-3/" rel="noopener noreferrer" target="_blank">Accessible Design</a> – Maja Benke</li>
<li><a href="https://wordpress.tv/2018/07/09/adam-silverstein-javascript-apis-in-wordpress/" rel="noopener noreferrer" target="_blank">JavaScript APIs in WordPress</a> – Adam Silverstein</li>
<li><a href="https://wordpress.tv/2018/07/06/john-maeda-wordpress-and-inclusive-design-2/" rel="noopener noreferrer" target="_blank">WordPress and Inclusive Design</a> – John Maeda</li>
<li><a href="https://wordpress.tv/2018/07/08/tammie-lister-anatomy-of-a-block-gutenberg-design-patterns/" rel="noopener noreferrer" target="_blank">Anatomy of a block: Gutenberg design patterns</a> – Tammie Lister</li>
</ol>
<p>Attendees were also big fans of the workshops introduced at this event. 78% of respondents said they would like to see them again next year. A couple of the workshop recordings have yet to make it to WordPress.tv but may be available at a later time. The three most popular workshops attendees identified were all related to Gutenberg:</p>
<ul>
<li>(Gutenberg) Block Development with React – Zac Gordon, Julien Melissas</li>
<li><a href="https://wordpress.tv/2018/08/07/lara-schenck-lets-build-a-gutenberg-block/" rel="noopener noreferrer" target="_blank">Let’s Build a Gutenberg Block</a> – Lara Schenck</li>
<li>Roundtable with the Gutenberg team – The Gutenberg Team</li>
</ul>
<p>WordCamp Europe 2019 organizers are working on providing a more efficient registration process for workshops, as well as a greater capacity for attendees.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 08 Aug 2018 18:33:50 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:33;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:78:"WPTavern: First Look at Live Demo of the Gutenberg Content Editor for Drupal 8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82899";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:89:"https://wptavern.com/first-look-at-live-demo-of-the-gutenberg-content-editor-for-drupal-8";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9601:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/drupal-gutenberg-project-e1533679727741.png?ssl=1"><img /></a></p>
<p><a href="https://www.drupaleurope.org/" rel="noopener noreferrer" target="_blank">Drupal Europe</a> has just announced its <a href="https://www.drupaleurope.org/program/sessions" rel="noopener noreferrer" target="_blank">program</a> for the upcoming event in Darmstadt, Germany, September 10-14. The conference will host more than 1,600 Drupal professionals and enthusiasts for 162 hours of sessions and 9 in-depth workshops.</p>
<p>Automattic is sponsoring the <a href="https://www.drupaleurope.org/program/open-web-lounge" rel="noopener noreferrer" target="_blank">Open Web Lounge</a> networking space and Matt Mullenweg will be joining Dries Buytaert and Barb Palser on a panel discussing <a href="https://www.drupaleurope.org/session/future-open-web-and-open-source" rel="noopener noreferrer" target="_blank">the future of the open web and open source</a>.</p>
<p>One interesting WordPress-related session on the program is titled <a href="https://www.drupaleurope.org/session/introducing-gutenberg-content-editor-drupal-8" rel="noopener noreferrer" target="_blank">Introducing the Gutenberg content editor for Drupal 8</a>. This new module ports WordPress&#8217; Gutenberg editor over to Drupal. It was created by Per André Rønsen and his team <a href="https://www.frontkom.no/" rel="noopener noreferrer" target="_blank">Frontkom</a>, a digital services agency based in Norway.</p>
<p>The <a href="https://drupalgutenberg.org/" rel="noopener noreferrer" target="_blank">Drupal Gutenberg</a> project aims to provide a new publishing experience based on WordPress&#8217; Gutenberg editor. The <a href="https://drupalgutenberg.org/demo" rel="noopener noreferrer" target="_blank">live demo</a> on the site currently provides a frontend interactive implementation of Gutenberg inside Drupal, similar to WordPress&#8217; &#8220;Frontenberg&#8221; demo on <a href="https://wordpress.org/gutenberg/" rel="noopener noreferrer" target="_blank">wordpress.org/gutenberg</a>. The latest implementation of the module will appear there but Rønsen said it is currently being revamped, as lots of things have happened with Gutenberg in the past few weeks.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/08/drupal-gutenberg.png?ssl=1"><img /></a></p>
<h3>How the Drupal Gutenberg Project was Born</h3>
<p>Rønsen told us he first saw Gutenberg in 2017 and was inspired to use it for one of Frontkom&#8217;s media clients.</p>
<p>&#8220;The thought of forking it came mid-2017, as we explored using Gutenberg as a lib for making a front page builder sponsored by the Google Digital News Initiative,&#8221; Rønsen said. &#8220;We ended up using it, and the Drupal module is a natural spin off.&#8221;</p>
<p>Frontkom tailored the Gutenberg-based page builder for the media industry. It adds extra functionality to Gutenberg that allows users to position and tweak articles for the front page of an online newspaper. Rønsen said the project went well and his team plans to open source it but it&#8217;s too early to share anything right now.</p>
<p>Following this successful experience using Gutenberg for a client, Frontkom began work on the Drupal Gutenberg project in early January 2018.</p>
<p>&#8220;The main part of the work was to make Gutenberg more CMS agnostic,&#8221; Rønsen said. &#8220;First we forked it and maintained a fork. Later we started using Gutenberg as a dependency, testing a more maintainable approach.&#8221;</p>
<p>Rønsen opened a ticket on GitHub, requesting that the Gutenberg team consider <a href="https://github.com/WordPress/gutenberg/issues/2780" rel="noopener noreferrer" target="_blank">structuring the project to be more CMS-agnostic</a>. The ticket was closed fairly soon with the <a href="https://github.com/WordPress/gutenberg/issues/2780#issuecomment-342569414" rel="noopener noreferrer" target="_blank">explanation</a> that it &#8220;doesn&#8217;t relate directly to the work going on with the project and its goals.&#8221;</p>
<p>&#8220;We have very little, if any, upstream commits so far, as the WP core interest has been to just cater to WP needs so far,&#8221; Rønsen said. &#8220;But that just changed.&#8221;</p>
<p>Gutenberg is moving towards making it easier to use outside of WordPress. The team is working on <a href="https://github.com/WordPress/gutenberg/issues/3955" rel="noopener noreferrer" target="_blank">publishing all the React modules as npm packages</a>. Rønsen said he anticipates that decreasing the number of globals needed to make Gutenberg work will be a huge help for other CMSs.</p>
<p>So far the Drupal Gutenberg project has not been shared widely but Rønsen said his team has seen a lot of interest from the Drupal tech community.</p>
<p>&#8220;We have a blog post coming in English with more detail; we kind of saved it for after holidays,&#8221; Rønsen said. &#8220;But then it blew up, and devs keep contacting us wanting to help out.&#8221;</p>
<p>Frontkom has been involved in the Drupal community for more than 10 years and WordPress for the past three years. Rønsen and his team believe that Gutenberg fills a gap in the Drupal space.</p>
<p>&#8220;Drupal doesn&#8217;t have all those fancy WordPress page builders,&#8221; he said. &#8220;So that is really more interesting than just a new post edit UI – we want a unified way to build complex layouts.&#8221;</p>
<p>Drupal already has an initiative for revamping its admin UI using React, and Rønsen said he thinks Gutenberg might contribute to how this can happen in Drupal core. In an ideal world, many open source projects could greatly benefit from a CMS-agnostic Gutenberg, with all of them contributing together towards its improvement.</p>
<p>&#8220;To us as a company, it is extremely interesting to build out front-ends that can easily be moved between CMSs,&#8221; Rønsen said. &#8220;For open source CMSs in general, I think there will be a lot to learn from the implementation process. For example, D8 has the concept of &#8216;everything is a block.&#8217; This has made it easy for us to make Drupal core blocks available in Gutenberg – we just need to do some magic to expose block settings.&#8221;</p>
<p>The Frontkom team are not only enthusiastic fans of Gutenberg&#8217;s interface, but also appreciate the way the project is run. Rønsen hasn&#8217;t been following the <a href="https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers" rel="noopener noreferrer" target="_blank">community reaction to the latest round of Gutenberg testing</a> but said he thinks WordPress users will love it long term, since &#8220;most of the page builders out there have issues.&#8221;</p>
<p>&#8220;Drupal can learn a lot from WordPress, the way they actually built the Gutenberg project – a transparent design process, lots of collaboration, and still highly efficient,&#8221; Rønsen said. &#8220;So, WordPress is definitely ahead of Drupal with regards to their admin UI/JS work. Since there is already a lot of interest in the Drupal community to do something similar, it is very refreshing to see someone go through it and succeed (hopefully).&#8221;</p>
<p><a href="https://twitter.com/stevector" rel="noopener noreferrer" target="_blank">Steve Persch</a>, lead developer advocate at Pantheon, spoke at DrupalCon in Nashville 2018 about <a href="https://events.drupal.org/nashville2018/sessions/whats-possible-wordpress-50" rel="noopener noreferrer" target="_blank">what&#8217;s possible with WordPress 5.0</a> and also gave a session at Twin Cities Drupal Camp titled &#8220;<a href="https://2018.tcdrupal.org/session/everything-block-how-wordpress-rewrote-wysiwyg" rel="noopener noreferrer" target="_blank">Everything is a Block: How WordPress Rewrote the WYSIWYG</a>.&#8221; In response to buzz on Twitter about the Drupal Gutenberg session, Persch <a href="https://twitter.com/stevector/status/1026461967630983169" rel="noopener noreferrer" target="_blank">said</a> Drupal needs an editorial UX improvement to stay competitive, but not necessarily by adopting Gutenberg.</p>
<p>&#8220;We have in-progress initiatives toward that end,&#8221; Persch said. &#8220;Gutenberg itself could turn into a distraction from that work. In both [presentations] I also mentioned that Paragraphs or Layout Builder could be better data model starting points for Gutenberg-like functionality. Delivering exactly the same thing as WordPress would be self-defeating. Structured content is the heart of Drupal. I see Gutenberg (or something like it) as a better UI for the corner of the data model (the Paragraphs part) that Drupal sites have had for years.&#8221;</p>
<p>It will be interesting to see how different open source communities approach Gutenberg and how more diverse feedback from outside of WordPress could impact the project.</p>
<p>The <a href="https://www.drupal.org/sandbox/marcofernandes/2981601" rel="noopener noreferrer" target="_blank">Drupal Gutenberg module</a> can be downloaded from the project page. It&#8217;s currently marked as an experimental module and is recommended for developer use only. The <a href="https://drupalgutenberg.org/demo" rel="noopener noreferrer" target="_blank">live demo</a> for the project will soon be revamped to reflect the latest updates with Gutenberg. You can also <a href="https://github.com/front/drupal-gutenberg" rel="noopener noreferrer" target="_blank">follow the project&#8217;s development on GitHub</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Aug 2018 22:28:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:34;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: Gutenberg Plugin Garners Mixed Reactions from New Wave of Testers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82891";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wptavern.com/gutenberg-plugin-garners-mixed-reactions-from-new-wave-of-testers";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:15811:"<a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2017/10/ship-bottle.jpg?ssl=1"><img /></a>photo credit: KaylaKandzorra <a href="http://www.flickr.com/photos/48077358@N02/4952091078">i miss you grampa.</a> &#8211; <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>
<p><a href="https://wptavern.com/wordpress-4-9-8-released" rel="noopener noreferrer" target="_blank">WordPress 4.9.8</a> was released as an automatic update last week, featuring the &#8220;Try Gutenberg&#8221; callout. The goal of the prompt is to get more users testing the new editor and to raise awareness. Within the first 72 hours of the prompt going into user dashboards, sites with Gutenberg installed have shot up to more than 80,000, a 300% increase. The plugin has been downloaded more than 147,000 times in the past week.</p>
<p>Gutenberg feedback is pouring in from a wave of new testers, most of whom are finding out about the new editor for the first time. Reactions have varied widely across multiple social networks. The announcement on <a href="https://www.facebook.com/WordPress/posts/10156301634992911" rel="noopener noreferrer" target="_blank">WordPress&#8217; official Facebook account</a> attracted many drive-by style comments that included negative reactions, confusion, and questions, with a few positive comments peppered in between.</p>
<blockquote><p>Blocks aren’t doing it for me. Will classic continue to be available permanently? If I want a block visual editor I promise I will install one voluntarily.</p></blockquote>
<blockquote><p>I’m hoping gutenberg will be totally optional.</p></blockquote>
<blockquote><p>I see only few users who are exited from Gutenberg. The rest is for leaving as it is. Why the guys from WP still want to implement it in the core? Make it a plugin. Why not a plugin whyyyyyy?</p></blockquote>
<p>Twitter users trying Gutenberg for the first time were more enthusiastic about the potential of the new editor.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Absolutely love the new Medium-like Gutenberg WordPress editor. <img src="https://s.w.org/images/core/emoji/11/72x72/1f60d.png" alt="😍" class="wp-smiley" /><img src="https://s.w.org/images/core/emoji/11/72x72/1f60d.png" alt="😍" class="wp-smiley" /></p>
<p>&mdash; Content Marketing Consultant (@Ebun_Oluwole) <a href="https://twitter.com/Ebun_Oluwole/status/1025827102401200128?ref_src=twsrc%5Etfw">August 4, 2018</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet">
<p lang="es" dir="ltr">me encantó Gutenberg, grande <a href="https://twitter.com/WordPress?ref_src=twsrc%5Etfw">@WordPress</a> !!</p>
<p>&mdash; Ale̶x̶ Zamorano (@alex_zamorano) <a href="https://twitter.com/alex_zamorano/status/1025752512593358848?ref_src=twsrc%5Etfw">August 4, 2018</a></p></blockquote>
<p></p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Hey <a href="https://twitter.com/WordPress?ref_src=twsrc%5Etfw">@WordPress</a> Gutenberg is dope I approve <img src="https://s.w.org/images/core/emoji/11/72x72/1f44d-1f3fe.png" alt="👍🏾" class="wp-smiley" /></p>
<p>&mdash; Bodega Hive <img src="https://s.w.org/images/core/emoji/11/72x72/1f3a8.png" alt="🎨" class="wp-smiley" /> (@breezeSZN) <a href="https://twitter.com/breezeSZN/status/1025538848439394304?ref_src=twsrc%5Etfw">August 4, 2018</a></p></blockquote>
<p></p>
<p>While some testers are quietly <a href="https://github.com/WordPress/gutenberg/issues" rel="noopener noreferrer" target="_blank">reporting issues on GitHub</a>, others have written long missives in the plugin&#8217;s reviews, begging WordPress not to force the new editor on users. Gutenberg reviews are currently at a 2.4-star average, slipping from the 2.7-star average it held prior to the 4.9.8 release. Those who have written reviews tend to have reactions at both ends of the spectrum.</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-06-at-3.26.57-PM.png?ssl=1"><img /></a></p>
<p>At this point in the testing phase, the reviews in the official directory paint a grim picture of WordPress dragging its users kicking and screaming into the Gutenberg era. However, there are many reasons why a tester might be motivated to write a negative review. Some may have ignored the advice not to use it in production, some may be testing it with incompatible plugins, some may not want any changes to their established workflow, and some may simply not like the interface.</p>
<p><a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/Screen-Shot-2018-08-05-at-10.24.03-PM.png?ssl=1"><img /></a></p>
<p>While it may seem that the plugin has been widely panned by new testers, those who are the most critical tend to be more motivated to write a review. Those who are pleasantly surprised at something that works for them don&#8217;t tend to comment publicly. Reviews cannot possibly tell the whole tale, but they are important to monitor for feedback that could help Gutenberg succeed.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Month 14 of Gutenberg on <a href="https://t.co/zWh3po88LS">https://t.co/zWh3po88LS</a> and I will keep the tradition of posting a summary of the reviews. Sadly neither time or quantity of reviews is not helping the score. Are the review biased? Is this something users like but admins hate? <a href="https://t.co/OMvIdUgfP4">pic.twitter.com/OMvIdUgfP4</a></p>
<p>&mdash; Andrew Roberts (@andrew_roberts) <a href="https://twitter.com/andrew_roberts/status/1025452116024807424?ref_src=twsrc%5Etfw">August 3, 2018</a></p></blockquote>
<p></p>
<h2>&#8220;Try Gutenberg&#8221; Callout Succeeds at Bringing More Testers and Feedback</h2>
<p>WordPress 4.9.8&#8217;s &#8220;Gutenprompt&#8221; is doing exactly what it was intended to do &#8211; bring out more testers. The invitation has already succeeded at pulling out some quality feedback if you can sort through all the casual, angry one-liners.</p>
<p>Steven Peters opened a lengthy <a href="https://wordpress.org/support/topic/in-one-word-no-please-read-full-review/" rel="noopener noreferrer" target="_blank">review</a> with the following observations about the more cumbersome and unintuitive aspects of Gutenberg&#8217;s interface:</p>
<blockquote><p>The interface is not cohesive in its design. For example, To place a block of a paragraph, a heading, a subheading, a bullet list and every other block, the user must click the + sign every single time, making it that much harder to ‘go with the flow’ of writing, and is cumbersome and time-consuming. Time-consuming: a click for each block instead of just writing. More clicks equal wasted time.</p></blockquote>
<p>In a review titled &#8220;<a href="https://wordpress.org/support/topic/lots-of-potential-but-too-soon-for-core/" rel="noopener noreferrer" target="_blank">Lots of potential but too soon for core</a>,&#8221; Mark Wilkinson details several specific usability issues:</p>
<blockquote><p>The interface I find confusing – I think it is because it is too minimal. I found that it was all too easy to add a block by mistake and then not knowing what the block was or why it was there.</p>
<p>There is too much reliance on hover effects, with things appearing and disappearing all the time. I also find it hard to know where the focus is on the screen as it just uses a faint grey border.</p></blockquote>
<p>Several reviewers were candid about their distaste for the concept of putting content into blocks. The Gutenberg team has readily communicated its vision for the block-based editor, but this tends to speak more to developers.</p>
<p>&#8220;Why does every little thing have to be in a separate block?&#8221; one reviewer <a href="https://wordpress.org/support/topic/im-not-change-resistant-but-this-has-a-way-to-go/" rel="noopener noreferrer" target="_blank">asked</a> before describing multiple usability issues with current block behavior. &#8220;That is a feature I think I actually detest. I do not want 50 zillion little fussy blocks on a page. I had entire blocks just disappear on me and a lot of the time, I was initially unsure of exactly what I did to make them disappear. This is bad. Some of the time it was placing a block, like an image block, and then deleting the image … the entire block went, which meant I had to go through the motions to add the block, then add an image block again, and then add my image again. Lame.&#8221;</p>
<p>Multiple reviewers commented that previously simple tasks are much more complicated in Gutenberg. Others said after reading official replies to reviews, they felt that leaving specific feedback was a waste of time. Canned responses from the Gutenberg team gave some the impression that their feedback wasn&#8217;t heard or valued.</p>
<blockquote><p>My feeling while reading the WordPress developer responses is that that they have no intention of either stopping or postponing Gutenberg no matter what bug or problem is given to their attention. &#8211; <a href="https://wordpress.org/support/topic/can-i-just-interject-here/" rel="noopener noreferrer" target="_blank">@lauritasita</a></p></blockquote>
<blockquote><p>I have read all the reviews (and also the Gutenberg-lovers’ replies) and it seems that it is not really a discussion. The question on what is missing in this editor is useless if people simply do not want such a feature in their install. All you do is trying to convince people that it would only take time to get used to a modern technology. In my eyes this is bullshit. I myself love new features – if they are useful. &#8211; <a href="https://wordpress.org/support/topic/time-to-respect-your-users-matt/" rel="noopener noreferrer" target="_blank">@peg20</a></p></blockquote>
<p>Based on the responses to reviews, it isn&#8217;t clear to testers whether the Gutenberg team is willing to make major changes to re-design features that are not easy to use or whether they are simply combing the reviews for feedback on bugs with the existing interface.</p>
<h3>Classic Editor Plugin Installations are on the Rise as Users Prepare for WordPress 5.0</h3>
<p>In the days following WordPress 4.9.8&#8217;s release, active installations of the <a href="https://wordpress.org/plugins/classic-editor/" rel="noopener noreferrer" target="_blank">Classic Editor</a> plugin have jumped from 7,000 to 60,000, a 757% increase. However, none of these figures in isolation can tell the whole story of users&#8217; experience with the new editor.</p>
<p>In <a href="https://www.facebook.com/groups/advancedwp/permalink/1986704551391749/?comment_id=1986914094704128&reply_comment_id=1986943451367859&comment_tracking=%7B%22tn%22%3A%22R9%22%7D" rel="noopener noreferrer" target="_blank">response to criticism</a> on the Advanced WordPress Facebook group, Gutenberg contributor Gary Pendergast said he doesn&#8217;t see users installing the Classic Editor plugin as a negative reaction. &#8220;People ensuring that their site is ready for WordPress 5.0 is absolutely a good thing,&#8221; Pendergast said. &#8220;For a lot of sites, that means sticking with their current workflows for now.&#8221;</p>
<p>Pendergast also said the growing number of Classic Editor installs is a good indication that WordPress users are &#8220;proactively maintaining their sites, and a reasonable indication that they intend to upgrade to WordPress 5.0.&#8221;</p>
<p>&#8220;People certainly have strong feelings about it, and &#8216;fear of change&#8217; is absolutely a legitimate feeling: we need to provide the right tools to empower everyone who uses WordPress,&#8221; Pendergast said. &#8220;Some people will jump right into the brave new block-based world, some people will prefer to use the Classic Editor plugin as a way to keep their existing workflows. When WordPress 5.0 lands, neither way should be seen as the &#8216;correct&#8217; way &#8211; they&#8217;re both entirely legitimate.&#8221;</p>
<p>One major theme in both positive and negative reviews of the plugin is the desire for Gutenberg to be opt-in for WordPress 5.0, instead of having it auto-enabled for all users.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">The "Try Gutenberg" callout in WordPress 4.9.8 looks great! Would love to see this be the official approach when WordPress 5.0 is released vs auto-enabling. Give the users time to check it out before forcing it on them. <a href="https://t.co/QBiPh7IROe">pic.twitter.com/QBiPh7IROe</a></p>
<p>&mdash; Brad Williams (@williamsba) <a href="https://twitter.com/williamsba/status/1025025636149157889?ref_src=twsrc%5Etfw">August 2, 2018</a></p></blockquote>
<p></p>
<p>Developers and agencies are expected to control that experience for their clients by installing the <a href="https://wordpress.org/plugins/classic-editor/" rel="noopener noreferrer" target="_blank">Classic Editor</a> or <a href="https://wordpress.org/plugins/gutenberg-ramp/" rel="noopener noreferrer" target="_blank">Gutenberg Ramp</a> for installations that may have compatibility issues. For millions of other WordPress users without their own developers or engineering teams, discovering Gutenberg auto-enabled after updating to WordPress 5.0 will be a moment of reckoning. On the other hand, phasing the new editor in over time may severely limit adoption and extinguish the ecosystem&#8217;s impetus to offer Gutenberg-compatible products.</p>
<blockquote class="twitter-tweet">
<p lang="en" dir="ltr">Not auto-enabling it should be strongly considered for 5.0 and also why setting a specific release number for it was a mistake. These reviews have been absolutely brutal and the uptick in 1 stars has been from average users and not disgruntled or vocal developers.</p>
<p>&mdash; Carl Hancock <img src="https://s.w.org/images/core/emoji/11/72x72/1f680.png" alt="🚀" class="wp-smiley" /> (@carlhancock) <a href="https://twitter.com/carlhancock/status/1026542036936056832?ref_src=twsrc%5Etfw">August 6, 2018</a></p></blockquote>
<p></p>
<p>The development community, along with thousands of WordPress users who now have Gutenberg on their radar, will be watching to see how the team evaluates feedback from this new wave of testing. Up until this point, only the most curious and motivated WordPress users have taken Gutenberg for a spin. Widespread testing has just begun and we&#8217;re not yet seeing a complete picture of how well the new editor will be received.</p>
<p>My <a href="https://wptavern.com/wordpress-new-gutenberg-editor-now-available-as-a-plugin-for-testing" rel="noopener noreferrer" target="_blank">initial impression</a>, after first trying it a year ago, was that Gutenberg is the most exciting thing to happen to WordPress in a long time. After reading hundreds of negative reviews, I still believe in the block concept but am convinced that Gutenberg needs to deliver a beautiful writing experience in order to win people over.</p>
<p>If WordPress is my home for writing on the web, I want to feel at home in the interface. I don&#8217;t want to have to hunt for actions buried two-clicks deep. When I use the editor I want to have the feeling of &#8220;I love writing here.&#8221; Gutenberg doesn&#8217;t deliver that yet.</p>
<p>WordPress has an opportunity to provide the best writing experience on the web, instead of relegating it to the <a href="https://wptavern.com/bear-app-users-want-wordpress-publishing-integration" rel="noopener noreferrer" target="_blank">myriad of dedicated writing apps</a> that don&#8217;t have publishing capabilities. A supremely well-designed editor for writing posts, in recognition of the platform&#8217;s blogging roots, would be the promise that hooks users to willingly sign on for years of dealing with Gutenberg&#8217;s shortcomings as it matures into a full-fledged site builder.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 07 Aug 2018 03:23:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:35;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:75:"WPTavern: WordCamp Ann Arbor Cancelled, Organizers Set Sights on 2019 Event";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82921";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:85:"https://wptavern.com/wordcamp-ann-arbor-cancelled-organizers-set-sights-on-2019-event";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1284:"<p><a href="https://2018.annarbor.wordcamp.org/">WordCamp Ann Arbor MI</a>, is an annual Fall tradition that takes place each October. This year however, the event won&#8217;t be taking place. In an email sent out August 3rd, organizers explained why they cancelled this year&#8217;s event. </p>

<blockquote class="wp-block-quote"><p>Why did we decide to cancel WordCamp Ann Arbor this year? It&#8217;s a long story. The most significant factors involve issues with our venues. Then eventually finding ourselves with too little time to put together an event meeting the standards we strive for. None of us were interested in throwing together a last minute, half-baked event. So we made the call early and turned our attention to 2019.</p><cite>Kyle Maurer &#8211; Co-organizer of WordCamp Ann Arbor</cite></blockquote>

<p>Organizers are already in the planning stages for WordCamp Ann Arbor 2019. Jackson, MI, about 45 minutes west of Ann Arbor is hosting a <a href="https://2018.jackson.wordcamp.org/">WordCamp</a> this weekend. Tickets are $20 each with 35 remaining. </p>

<p>For a detailed look into what it&#8217;s like to organize WordCamp Ann Arbor, check out <a href="http://kyleblog.net/2016/11/wordcamp-ann-arbor-2016-recap/">Maurer&#8217;s post</a> from 2016. <br /></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 06 Aug 2018 21:01:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:36;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:92:"Post Status: Considerations for eCommerce merchants, with Andrew Youderian of eCommerce Fuel";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:31:"https://poststatus.com/?p=46845";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:102:"https://poststatus.com/considerations-for-ecommerce-merchants-with-andrew-youderian-of-ecommerce-fuel/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1768:"<p>Welcome to the Post Status <a href="https://poststatus.com/category/draft">Draft podcast</a>, which you can find <a href="https://itunes.apple.com/us/podcast/post-status-draft-wordpress/id976403008">on iTunes</a>, <a href="https://play.google.com/music/m/Ih5egfxskgcec4qadr3f4zfpzzm?t=Post_Status__Draft_WordPress_Podcast">Google Play</a>, <a href="http://www.stitcher.com/podcast/krogsgard/post-status-draft-wordpress-podcast">Stitcher</a>, and <a href="http://simplecast.fm/podcasts/1061/rss">via RSS</a> for your favorite podcatcher. Post Status Draft is hosted by Brian Krogsgard and co-host Brian Richards.</p>
<p>In this episode, I bring on <a href="https://twitter.com/youderian">Andrew Youderian</a>. Andrew runs eCommerce Fuel &#8212; a great website geared toward eCommerce store owners, specifically those making high six figures or seven figures in revenue per year.</p>
<p>Andrew keeps his ear low to the ground in the eCommerce landscape and carries no specific WordPress bias. If anything his experience is in other platforms &#8212; making a discussion with him both on platforms and also just eCommerce in general particularly valuable to me.</p>
<p></p>
<h3>Episode Links</h3>
<ul>
<li><a href="https://ecommercefuel.com">eCommerce Fuel</a></li>
<li><a href="https://www.ecommercefuel.com/ecommerce-report-2018/#info-anchor">State of the merchant</a></li>
</ul>
<h3>Sponsor: SiteGround</h3>
<p>Engineered for speed, built for security, crafted for WordPress. <a href="https://www.siteground.com/poststatus">SiteGround</a> offers feature-rich managed WordPress hosting with premium support, and is officially recommended by WordPress.org. Thanks to <a href="https://www.siteground.com/poststatus">SiteGround</a> for being a Post Status partner.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 03 Aug 2018 21:17:20 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Brian Krogsgard";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:37;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WPTavern: WordPress 4.9.8 Released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82870";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wptavern.com/wordpress-4-9-8-released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1203:"<p>WordPress 4.9.8 is <a href="https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/">available for download</a> and is a maintenance release. Headlining this version is the &#8220;Try Gutenberg&#8221; callout. Note that not everyone will see the callout. Its visibility is determined <a href="https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility">based on certain criteria.</a></p>

<img />Gutenberg Callout in WordPress 4.9.8

<p>WordPress 4.9.8 continues to improve the foundation set forth by the privacy improvements that went into core earlier this year. For example, the type of request that is being confirmed is now included in the subject line for privacy confirmation emails. </p>

<p>In total, this release has 46 bug fixes from more than 50 contributors. It was lead by <a href="https://profiles.wordpress.org/pbiron">Paul Biron</a> and <a href="https://profiles.wordpress.org/joshuawold">Joshua Wold</a>. Since 4.9.8 is a maintenance release, sites that are able will update automatically. To see a full list of changes, check out the <a href="https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/">detailed changelog</a>. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 03 Aug 2018 00:12:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:38;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:87:"WPTavern: WordPress.com Partners with Pexels to Offer Diverse, Free Stock Photo Library";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82856";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:97:"https://wptavern.com/wordpress-com-partners-with-pexels-to-offer-diverse-free-stock-photo-library";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2952:"<a href="https://i2.wp.com/wptavern.com/wp-content/uploads/2018/08/pexels-photo-1181618.jpeg?ssl=1"><img /></a>image credit: <a href="https://www.pexels.com/photo/three-women-in-front-of-desk-1181618/">Christina Morillo from Pexels</a>
<p>WordPress.com has partnered with <a href="https://www.pexels.com/" rel="noopener noreferrer" target="_blank">Pexels</a>, a popular stock photo library, to offer convenient access to stock photos inside the post editor. Hundreds of high quality free stock photo sites have cropped up on the web over the past few years, but Pexels is differentiating itself with a commitment to hosting diversity-focused images and videos that represent a wide range of experiences. WordPress.com is working with them and other partners to <a href="https://wordpress.com/read/feeds/25823/posts/1945569908" rel="noopener noreferrer" target="_blank">make more diverse images available to users</a>:</p>
<blockquote><p>Stock-image libraries have historically struggled to represent all experiences, and often excluded photos of people of color, people with disabilities, or non-binary individuals. Pexels is working to change that, and since partnering with them we’ve helped incorporate diversity-focused libraries to their collection. Ultimately, we believe it’s on us to help find a solution to this problem, and avoid generic stock images that often perpetuate stereotypes.</p></blockquote>
<p>WordPress.com users can access the images via the Add Media button. Self-hosted site owners with Jetpack-enabled sites can also access the library when composing new posts on WordPress.com. Automattic happiness engineer Anne McCarthy posted a demo of where to find the new images:</p>
<p><a href="https://cloudup.com/c-ZzCzFS1Rn"><img src="https://i2.wp.com/cldup.com/mJOr5iicyD.gif?resize=627%2C348&ssl=1" alt="Media" width="627" height="348" /></a></p>
<p>More than 1,000 developers and companies are using the <a href="https://www.pexels.com/api/" rel="noopener noreferrer" target="_blank">Pexels API</a>. The site regularly hosts diversity-focused photo <a href="https://www.pexels.com/challenges/" rel="noopener noreferrer" target="_blank">challenges</a> with prizes for the best submissions. Photographers who are inspired to contribute can submit their work to the library but should be aware of its <a href="https://www.pexels.com/photo-license" rel="noopener noreferrer" target="_blank">open license</a>.</p>
<p>&#8220;I like the idea, and, as a photoblogger, I’m open to sharing my images,&#8221; one reader commented on the announcement. &#8220;But I [think] the license rules are too open (for me). I’m happy to share, attribution would be nice (not necessary), but editing of my photos seems a step too far.&#8221;</p>
<p>Feedback on the library has been overwhelmingly positive so far and WordPress.com users have already downloaded more than 1 million images since the free stock image library was introduced.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 23:45:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:39;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:45:"Dev Blog: WordPress 4.9.8 Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6165";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:9492:"<p>We are pleased to announce the immediate availability of WordPress 4.9.8.  This maintenance release fixes 46 bugs, enhancements and blessed tasks, including updating the Twenty Seventeen bundled theme.</p>
<p><span>Following are the highlights of what is now available.</span></p>
<h2>“Try Gutenberg” callout</h2>
<p><span>Most users will now be presented with a notice in their WordPress dashboard. This </span>“Try Gutenberg” is an opportunity for users to use the Gutenberg block editor before it is released in WordPress 5.0.</p>
<p><img class="alignnone wp-image-6168 size-full" src="https://i0.wp.com/wordpress.org/news/files/2018/08/Screen-Shot-2018-08-02-at-11.42.39-am.png?resize=632%2C392&ssl=1" alt="" width="632" height="392" /></p>
<p>In WordPress 4.9.8, the callout will be shown to the following users:</p>
<ul>
<li>If Gutenberg <em>is not</em> installed or activated, the callout will be shown to Admin users on single sites, and Super Admin users on multisites.</li>
<li>If Gutenberg <em>is</em> installed and activated, the callout will be shown to Contributor users and above.</li>
<li>If the Classic Editor plugin is installed and activated, the callout will be hidden for all users.</li>
</ul>
<p class="entry-title"><span>You can learn more by reading  </span><a href="https://make.wordpress.org/core/2018/08/02/try-gutenberg-callout-in-wordpress-4-9-8/">“Try Gutenberg” Callout in WordPress 4.9.8</a>.</p>
<h2>Privacy fixes/enhancements</h2>
<p>This release includes 18 Privacy fixes focused on ensuring consistency and flexibility in the new personal data tools <span>that were </span>added in 4.9.6, including:</p>
<ul>
<li>The type of request being confirmed is now included in the subject line for all privacy confirmation emails.</li>
<li>Improved consistency with site name being used for privacy emails in multisite.</li>
<li>Pagination for Privacy request admin screens can now be adjusted.</li>
<li>Increased the test coverage for several core privacy functions.</li>
</ul>
<p><a href="https://make.wordpress.org/core/2018/08/02/wordpress-4-9-8/">This post has more information about all of the issues fixed in 4.9.8 if you&#8217;d like to learn more</a>.</p>
<p><a href="https://wordpress.org/download/">Download WordPress 4.9.8</a> or venture over to Dashboard → Updates and click &#8220;Update Now.&#8221; Sites that support automatic background updates are already beginning to update automatically.</p>
<p>Thank you to everyone who contributed to WordPress 4.9.8:</p>
<p><a href="https://profiles.wordpress.org/1naveengiri/">1naveengiri</a>, <a href="https://profiles.wordpress.org/aaroncampbell/">Aaron D. Campbell</a>, <a href="https://profiles.wordpress.org/jorbin/">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/abdullahramzan/">Abdullah Ramzan</a>, <a href="https://profiles.wordpress.org/alejandroxlopez/">alejandroxlopez</a>, <a href="https://profiles.wordpress.org/allendav/">Allen Snook</a>, <a href="https://profiles.wordpress.org/afercia/">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/azaozz/">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/andrewtaylor-1/">Andrew Taylor</a>, <a href="https://profiles.wordpress.org/aryamaaru/">Arun</a>, <a href="https://profiles.wordpress.org/ayeshrajans/">Ayesh Karunaratne</a>, <a href="https://profiles.wordpress.org/birgire/">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bph/">Birgit Pauli-Haack</a>, <a href="https://profiles.wordpress.org/bjornw/">BjornW</a>, <a href="https://profiles.wordpress.org/boonebgorges/">Boone Gorges</a>, <a href="https://profiles.wordpress.org/kraftbj/">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/burhandodhy/">Burhan Nasir</a>, <a href="https://profiles.wordpress.org/chetan200891/">Chetan Prajapati</a>, <a href="https://profiles.wordpress.org/chrislema/">Chris Lema</a>, <a href="https://profiles.wordpress.org/coreymckrill/">Corey McKrill</a>, <a href="https://profiles.wordpress.org/danielbachhuber/">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danieltj/">Daniel James</a>, <a href="https://profiles.wordpress.org/dlh/">David Herrera</a>, <a href="https://profiles.wordpress.org/dd32/">Dion Hulse</a>, <a href="https://profiles.wordpress.org/ocean90/">Dominik Schilling (ocean90)</a>, <a href="https://profiles.wordpress.org/dontstealmyfish/">dontstealmyfish</a>, <a href="https://profiles.wordpress.org/dyrer/">dyrer</a>, <a href="https://profiles.wordpress.org/felipeelia/">Felipe Elia</a>, <a href="https://profiles.wordpress.org/flixos90/">Felix Arntz</a>, <a href="https://profiles.wordpress.org/fclaussen/">Fernando Claussen</a>, <a href="https://profiles.wordpress.org/garetharnold/">Gareth</a>, <a href="https://profiles.wordpress.org/garrett-eclipse/">Garrett Hyder</a>, <a href="https://profiles.wordpress.org/pento/">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/soulseekah/">Gennady Kovshenin</a>, <a href="https://profiles.wordpress.org/gm_alex/">GM_Alex</a>, <a href="https://profiles.wordpress.org/idea15/">Heather Burns</a>, <a href="https://profiles.wordpress.org/iandunn/">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ianbelanger/">ibelanger</a>, <a href="https://profiles.wordpress.org/imath/">imath</a>, <a href="https://profiles.wordpress.org/audrasjb/">Jb Audras</a>, <a href="https://profiles.wordpress.org/jpry/">Jeremy Pry</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby/">JJJ</a>, <a href="https://profiles.wordpress.org/joemcgill/">Joe McGill</a>, <a href="https://profiles.wordpress.org/joen/">Joen Asmussen</a>, <a href="https://profiles.wordpress.org/johnbillion/">John Blackbourn</a>, <a href="https://profiles.wordpress.org/desrosj/">Jonathan Desrosiers</a>, <a href="https://profiles.wordpress.org/spacedmonkey/">Jonny Harris</a>, <a href="https://profiles.wordpress.org/chanthaboune/">Josepha</a>, <a href="https://profiles.wordpress.org/joshuawold/">JoshuaWold</a>, <a href="https://profiles.wordpress.org/joyously/">Joy</a>, <a href="https://profiles.wordpress.org/jrf/">jrf</a>, <a href="https://profiles.wordpress.org/kadamwhite/">K. Adam White</a>, <a href="https://profiles.wordpress.org/khaihong/">khaihong</a>, <a href="https://profiles.wordpress.org/kjellr/">kjellr</a>, <a href="https://profiles.wordpress.org/xkon/">Konstantinos Xenos</a>, <a href="https://profiles.wordpress.org/laurelfulford/">laurelfulford</a>, <a href="https://profiles.wordpress.org/lbenicio/">lbenicio</a>, <a href="https://profiles.wordpress.org/leanderiversen/">Leander Iversen</a>, <a href="https://profiles.wordpress.org/leemon/">leemon</a>, <a href="https://profiles.wordpress.org/macbookandrew/">macbookandrew</a>, <a href="https://profiles.wordpress.org/clorith/">Marius L. J.</a>, <a href="https://profiles.wordpress.org/matveb/">Matias Ventura</a>, <a href="https://profiles.wordpress.org/melchoyce/">Mel Choyce</a>, <a href="https://profiles.wordpress.org/mensmaximus/">mensmaximus</a>, <a href="https://profiles.wordpress.org/mermel/">mermel</a>, <a href="https://profiles.wordpress.org/metalandcoffee/">metalandcoffee</a>, <a href="https://profiles.wordpress.org/michelleweber/">michelleweber</a>, <a href="https://profiles.wordpress.org/dimadin/">Milan Dinić</a>, <a href="https://profiles.wordpress.org/xpertone/">Muhammad Kashif</a>, <a href="https://profiles.wordpress.org/nao/">Naoko Takano</a>, <a href="https://profiles.wordpress.org/nathanatmoz/">Nathan Johnson</a>, <a href="https://profiles.wordpress.org/ov3rfly/">Ov3rfly</a>, <a href="https://profiles.wordpress.org/palmiak/">palmiak</a>, <a href="https://profiles.wordpress.org/pbiron/">Paul Biron</a>, <a href="https://profiles.wordpress.org/pmbaldha/">Prashant Baldha</a>, <a href="https://profiles.wordpress.org/presstigers/">PressTigers</a>, <a href="https://profiles.wordpress.org/programmin/">programmin</a>, <a href="https://profiles.wordpress.org/rafsuntaskin/">Rafsun Chowdhury</a>, <a href="https://profiles.wordpress.org/redcastor/">redcastor</a>, <a href="https://profiles.wordpress.org/littlerchicken/">Robin Cornett</a>, <a href="https://profiles.wordpress.org/sergeybiryukov/">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/pross/">Simon Prosser</a>, <a href="https://profiles.wordpress.org/skoldin/">skoldin</a>, <a href="https://profiles.wordpress.org/spyderbytes/">spyderbytes</a>, <a href="https://profiles.wordpress.org/subrataemfluence/">Subrata Sarkar</a>, <a href="https://profiles.wordpress.org/sebastienserre/">Sébastien SERRE</a>, <a href="https://profiles.wordpress.org/karmatosed/">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tharsheblows/">tharsheblows</a>, <a href="https://profiles.wordpress.org/thomasplevy/">Thomas Patrick Levy</a>, <a href="https://profiles.wordpress.org/timbowesohft/">timbowesohft</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs/">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tz-media/">Tobias Zimpel</a>, <a href="https://profiles.wordpress.org/tobifjellner/">Tor-Bjorn Fjellner</a>, <a href="https://profiles.wordpress.org/itowhid06/">Towhidul Islam</a>, <a href="https://profiles.wordpress.org/usmankhalid/">Usman Khalid</a>, <a href="https://profiles.wordpress.org/warmlaundry/">warmlaundry</a>, <a href="https://profiles.wordpress.org/earnjam/">William Earnhardt</a>, <a href="https://profiles.wordpress.org/fierevere/">Yui</a>, and <a href="https://profiles.wordpress.org/yuriv/">YuriV</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 21:25:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Paul Biron";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:40;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:84:"WPTavern: Official Gutenberg Information Site Updated with Interactive Frontend Demo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82821";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:95:"https://wptavern.com/official-gutenberg-information-site-updated-with-interactive-frontend-demo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2132:"<p>The official <a href="https://wordpress.org/gutenberg/" rel="noopener noreferrer" target="_blank">Gutenberg information site</a> has been updated to feature an interactive demo that can be manipulated on the frontend. It is based on <a href="https://wptavern.com/frontenberg-lets-users-test-gutenberg-on-the-frontend" rel="noopener noreferrer" target="_blank">Frontenberg</a>, a <a href="https://testgutenberg.com/" rel="noopener noreferrer" target="_blank">site</a> created by Tom Nowell, VIP Wrangler at Automattic. It loads an instance of WordPress with Gutenberg on the frontend so visitors don&#8217;t have to login or create a test site to try it.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-demo.png?ssl=1"><img /></a></p>
<p>Gutenberg&#8217;s new demo <a href="https://web.archive.org/web/20180730083424/https://wordpress.org/gutenberg/" rel="noopener noreferrer" target="_blank">replaces the walls of text that were there previously</a>, which described the vision and approach for the new editor and explained blocks in depth with screenshots. Instead, the updated page features shorter, more succinct explanations of the new editor as an interactive part of demo.</p>
<p>The demo is also live on all Rosetta sites, like <a href="http://fr.wordpress.org/gutenberg" rel="noopener noreferrer" target="_blank">fr.wordpress.org/gutenberg</a>, so WordPress users from around the world can view it in their own languages.</p>
<p><a href="https://i1.wp.com/wptavern.com/wp-content/uploads/2018/08/gutenberg-demo-rosetta-sites.png?ssl=1"><img /></a></p>
<p>WordPress contributors are feverishly working to prepare for the &#8220;Try Gutenberg&#8221; callout that will ship with WordPress 4.9.8, which is scheduled for Thursday, August 2nd. It will be many users&#8217; first exposure to the new editor and the demo gives them a chance to experience it in a hands-on way before making a decision about installing it. Instead of dismissing Gutenberg out of hand based on a quick glance at the screenshots and text, users have the opportunity to test drive it without breaking anything.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 05:01:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:41;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:68:"WPTavern: WPWeekly Episode 325 – A Different Facebook for Everyone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wptavern.com?p=82830&preview=true&preview_id=82830";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wptavern.com/wpweekly-episode-325-a-different-facebook-for-everyone";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2387:"<p>In this episode, <a href="http://jjj.me">John James Jacoby</a> and I discuss what&#8217;s new in Gutenberg 3.4 and share our recent experiences with the editor. We talk about Facebook&#8217;s decision to shut down its API for apps to publish to user&#8217;s profiles on their behalf. This leads to a side rant of our user experience with Facebook and the history between it and Twitter.</p>
<p>We talk about what&#8217;s new in WordPress 4.9.8 RC 3 and when you can expect a final release. Last but not least, we discuss Slack&#8217;s acquisition of HipChat and share our reasons for joining Twitter.</p>
<h2>Stories Discussed:</h2>
<p><a href="https://wptavern.com/gutenberg-3-4-adds-new-warning-to-classic-editor-when-editing-posts-containing-blocks">Gutenberg 3.4 Adds New Warning to Classic Editor When Editing Posts Containing Blocks</a></p>
<p><a href="https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility">WordPress 4.9.8 RC 3 Released, Limits ‘Try Gutenberg’ Callout Visibility</a></p>
<p><a href="https://wptavern.com/facebook-shuts-down-api-for-publishing-to-user-timelines-impacts-jetpacks-publicize-feature">Facebook Shuts Down API for Publishing to User Timelines, Impacts Jetpack’s Publicize Feature</a></p>
<p><a href="https://wptavern.com/wordpress-coding-standards-1-0-0-released">WordPress Coding Standards 1.0.0 Released</a></p>
<p><a href="https://wptavern.com/woosesh-virtual-woocommerce-conference-to-be-held-october-18-19">WooSesh Virtual WooCommerce Conference to be Held October 18-19</a></p>
<p><a href="https://wptavern.com/slack-acquires-hipchat-moves-blog-from-medium-to-wordpress">Slack Acquires HipChat, Moves Blog from Medium to WordPress</a></p>
<h2>WPWeekly Meta:</h2>
<p><strong>Next Episode:</strong> Wednesday, August 8th 3:00 P.M. Eastern</p>
<p>Subscribe to <a href="https://itunes.apple.com/us/podcast/wordpress-weekly/id694849738">WordPress Weekly via Itunes</a></p>
<p>Subscribe to <a href="https://www.wptavern.com/feed/podcast">WordPress Weekly via RSS</a></p>
<p>Subscribe to <a href="http://www.stitcher.com/podcast/wordpress-weekly-podcast?refid=stpr">WordPress Weekly via Stitcher Radio</a></p>
<p>Subscribe to <a href="https://play.google.com/music/listen?u=0#/ps/Ir3keivkvwwh24xy7qiymurwpbe">WordPress Weekly via Google Play</a></p>
<p><strong>Listen To Episode #325:</strong><br />
</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 02:02:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:42;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:82:"WPTavern: Easy Digital Downloads Substantially Reduces Prices for Extension Passes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82825";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:93:"https://wptavern.com/easy-digital-downloads-substantially-reduces-prices-for-extension-passes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:3693:"<p>Pippin Williamson, founder of <a href="https://wordpress.org/plugins/easy-digital-downloads/">Easy Digital Downloads</a>, published <a href="https://easydigitaldownloads.com/blog/we-have-lowered-prices-for-extension-access-passes/?utm_source=Twitter&utm_medium=social&utm_term=we-have-lowered-prices-for-extension-access-passes&utm_content=0&utm_campaign=PostPromoterPro">an apology</a> on the company&#8217;s blog today admitting that it made a mistake in its pricing model for extension passes. </p>

<p>In mid-June, the <a href="https://easydigitaldownloads.com/blog/easy-digital-downloads-pricing-options/">company introduced</a> a new set of pricing options or passes. The passes come with a single license that provide access to a group of extensions. The prices for each pass were as follows:</p>

<ul><li>Personal Pass: $199</li><li>Extended Pass: $399</li><li>Professional Pass: $699</li><li>All Access Pass: $899</li></ul>

<p>After six weeks, Williamson noticed that customers were continuing to purchase individual extensions instead of the passes. </p>

<p>&#8220;Our expectation and intent in creating the passes was for store owners to be able to purchase access to multiple individual extensions in a more economical way, but that’s not what happened,&#8221; he said. </p>

<p>&#8220;Instead, store owners continued to purchase only the individual extensions they needed because the price tags of the passes were still too high. It is clear that we made a mistake in our pass pricing, and so today we’d like to apologize for that and announce new, lower prices.&#8221;</p>

<p>After two weeks of testing, the prices of each pass have been significantly reduced to the following amounts:</p>

<ul><li>Personal Pass: <strong>$99</strong></li><li>Extended Pass: <strong>$199</strong></li><li>Professional Pass: <strong>$299</strong></li><li>All Access Pass: <strong>$499</strong><strong></strong><strong></strong></li></ul>

<p>In addition to the pricing changes, customers who purchased a pass between June 1st and August 1st are eligible for a refund. The refund is equal to the difference of the purchased price and the new price. Customers have until August 15th, to <a href="https://easydigitaldownloads.com/support">request a refund</a>. <br /></p>

<p>Customers who purchased passes before the reduction will have their renewal amounts automatically changed to the lower price. </p>

<p>Pricing WordPress products and services is tough and requires experimentation. There are numerous <a href="https://wordpress.tv/?s=pricing">WordCamp sessions</a>, <a href="https://kinsta.com/blog/how-to-price-a-product-wordpress/">articles</a>, and <a href="https://premium.wpmudev.org/blog/pricing-your-wordpress-services/">in-depth guides</a> on the subject but there&#8217;s not one answer that&#8217;s best for every business. </p>

<p>Publicly admitting to a pricing mistake is one thing, but offering refunds to try to get customers on equal footing is going the extra mile.</p>

<p>The company could have handled things in a way that&#8217;s not as beneficial to customers, but they chose what I think is a commendable way. Williamson&#8217;s closing statement speaks about the way he leads his company and how he makes these types of decisions.</p>

<blockquote class="wp-block-quote"><p>While we are far from perfect, as this pricing mistake clearly indicates, we are dedicated to doing right by our customers. To each of you, we would like to extend our most sincere thanks for sticking with us as we work through these changes</p><cite>Pippin Williamson</cite></blockquote>

<p>It&#8217;s a luxury to have business owners like Williamson in the WordPress economy. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2018 01:00:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:43;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:95:"WPTavern: Gutenberg 3.4 Adds New Warning to Classic Editor When Editing Posts Containing Blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82772";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:106:"https://wptavern.com/gutenberg-3-4-adds-new-warning-to-classic-editor-when-editing-posts-containing-blocks";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2614:"<p><a href="https://make.wordpress.org/core/2018/07/31/whats-new-in-gutenberg-30th-july/" rel="noopener noreferrer" target="_blank">Gutenberg 3.4</a> was released yesterday with fixes intended to prepare the plugin for converting existing content to blocks. A wave of new users will soon be testing the new plugin as the result of the &#8220;Try Gutenberg&#8221; prompt in WordPress 4.9.8. The release date has been <a href="https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility" rel="noopener noreferrer" target="_blank">pushed back to Thursday, August 2nd</a>.</p>
<p>In early July, the Gutenberg team froze new features on the plugin and shifted to focus on bugs, enhancements, compatibility, and API stability. An overview of the <a href="https://github.com/WordPress/gutenberg/issues/4894" rel="noopener noreferrer" target="_blank">major functionality shipping in Gutenberg</a> is available as a list on GitHub. Gutenberg 3.4 continues refinements on these features.</p>
<p>In preparation for users switching back and forth between the new and old editors, this release <a href="https://github.com/WordPress/gutenberg/pull/8247" rel="noopener noreferrer" target="_blank">adds a warning in the classic editor</a> when users attempt to edit posts that contain blocks.</p>
<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/Screen-Shot-2018-08-01-at-11.16.41-AM.png?ssl=1"><img /></a></p>
<p>Shared blocks have been renamed to &#8220;<a href="https://github.com/WordPress/gutenberg/pull/8123" rel="noopener noreferrer" target="_blank">Reusable blocks</a>&#8221; to better convey their function.</p>
<p>Theme developers can now <a href="https://github.com/WordPress/gutenberg/pull/6628" rel="noopener noreferrer" target="_blank">configure font sizes</a> that show in the editor.</p>
<p>This release also adds other little enhancements, including an <a href="https://github.com/WordPress/gutenberg/pull/8084" rel="noopener noreferrer" target="_blank">edit button</a> for embed blocks, the ability to create a video block by <a href="https://github.com/WordPress/gutenberg/pull/8122" rel="noopener noreferrer" target="_blank">dropping a video on an insertion point</a>, <a href="https://github.com/WordPress/gutenberg/pull/8187" rel="noopener noreferrer" target="_blank">RTL CSS</a>, and accessibility improvements.</p>
<p>Check out the release post for a full list of all the enhancements and bugs fixes in <a href="https://make.wordpress.org/core/2018/07/31/whats-new-in-gutenberg-30th-july/" rel="noopener noreferrer" target="_blank">Gutenberg 3.4</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Aug 2018 16:46:25 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:44;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:43:"Dev Blog: The Month in WordPress: July 2018";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=6158";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:68:"https://wordpress.org/news/2018/08/the-month-in-wordpress-july-2018/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:6410:"<p>With WordPress 5.0 coming closer, there’s lots of work going on all across the project. Read on to learn about how we progressed in July.</p>

<hr class="wp-block-separator" />

<h2>Release of WordPress 4.9.7</h2>

<p>On July 5, <a href="https://wordpress.org/news/2018/07/wordpress-4-9-7-security-and-maintenance-release/">WordPress 4.9.7 was released</a>,  fixing one security issue and 17 other bugs across the platform.<br /></p>

<p>While this is a minor release, incremental fixes are essential to keep WordPress running smoothly. Everyone is encouraged to update as soon as possible and to make sure that automatic updates are switched on.<br /></p>

<p>Would you like to get involved in building WordPress Core? Follow <a href="https://make.wordpress.org/core/">the Core team blog</a> and join the #core channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>The New WordPress Editor</h2>

<p>In the upcoming minor release of WordPress, 4.9.8, a new section in the dashboard will feature Gutenberg, the upcoming content editor for WordPress.<br /></p>

<p>While the official release of Gutenberg <a href="https://wordpress.org/news/2018/07/update-on-gutenberg/">is scheduled</a> for the coming months, you can already install it as <a href="https://wordpress.org/plugins/gutenberg/">a plugin</a> to test it out right now. Additionally, <a href="https://wordpress.org/gutenberg/">a brand new demo page</a> is now available — play around with the many features the editor has to offer, without installing it on your own site.<br /></p>

<p>Would you like to help build or test Gutenberg? Follow <a href="https://make.wordpress.org/core/">the Core team blog</a> and join the #core-editor channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>Page Design Updates on WordPress.org</h2>

<p>Bit by bit we’re refreshing the design of WordPress.org. The latest pages to get a new treatment have been <a href="https://wordpress.org/download/">the Download page</a> and <a href="https://profiles.wordpress.org/matt/">user profiles</a>.<br /></p>

<p>The Meta and Design teams worked hard to make these new designs a reality, with notable contributions from <a href="https://profiles.wordpress.org/melchoyce/" class="mention"><span class="mentions-prefix">@</span>melchoyce</a>, <a href="https://profiles.wordpress.org/obenland/" class="mention"><span class="mentions-prefix">@</span>obenland</a>, <a href="https://profiles.wordpress.org/mapk/" class="mention"><span class="mentions-prefix">@</span>mapk</a>, and <a href="https://profiles.wordpress.org/kjellr/" class="mention"><span class="mentions-prefix">@</span>kjellr</a>. The new designs enhance the overall look of the site and provide more relevant information to those searching.<br /></p>

<p>Would you like to get involved in the design refresh? Follow the <a href="https://make.wordpress.org/meta/">Meta</a> and <a href="https://make.wordpress.org/design/">Design</a> team blogs and join the #meta and #design channels in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<h2>The First WP-CLI Hack Day</h2>

<p>On Friday July 20, the WP-CLI team <a href="https://make.wordpress.org/cli/2018/07/04/wp-cli-hack-day/">held their first hack day</a> — a global event encouraging people to contribute to the official command line tool for WordPress.<br /></p>

<p>Run by <a href="https://profiles.wordpress.org/schlessera/" class="mention"><span class="mentions-prefix">@</span>schlessera</a>, the event <a href="https://make.wordpress.org/cli/2018/07/21/wp-cli-hack-day-results/"> was a great success</a>. Twelve pull requests were  merged and another 13 submitted. It also included a video chat to give all contributors a space to meet each other and connect directly.<br /></p>

<p>Would  you like to get involved in contributing to WP-CLI? Follow <a href="https://make.wordpress.org/cli/">the team blog</a> and join the #cli channel in the <a href="https://make.wordpress.org/chat/">Making WordPress Slack group</a>.</p>

<hr class="wp-block-separator" />

<h2>Further Reading:</h2>

<ul><li>The WordPress Foundation is <a href="https://wordpressfoundation.org/2018/call-for-organizers-introduction-to-open-source-workshops-for-2018/">looking for local community organizers to run introductory open-source workshops</a> in 2018.</li><li><a href="https://profiles.wordpress.org/chanthaboune/" class="mention"><span class="mentions-prefix">@</span>chanthaboune</a> compiled <a href="https://wordpress.org/news/2018/07/quarterly-updates-q2-2018/">updates for the last quarter</a> from the contribution teams all across the WordPress project.</li><li>In a great move for internationalization, <a href="https://en.blog.wordpress.com/2018/03/29/the-wordpress-mobile-apps-now-support-right-to-left-languages/">the WordPress Mobile Apps now support right-to-left languages</a>.</li><li><a href="https://make.wordpress.org/community/2018/07/10/stripe-is-now-available-to-all-wordcamps/">WordCamp events can now accept payment via Stripe</a> — PayPal remains an alternative option.</li><li>The WP-CLI team will soon <a href="https://make.wordpress.org/cli/2018/07/19/details-on-the-upcoming-major-release/">release v2.0</a> of the official WordPress command line tool.</li><li>The Fields API project in WordPress Core <a href="https://wptavern.com/wordpress-core-fields-api-project-is-seeking-new-leadership">is looking for a new lead</a> to drive it forward.</li><li>In WordPress 4.9.8, <a href="https://make.wordpress.org/core/2018/07/27/registering-metadata-in-4-9-8/">it will  be possible</a> for developers to fully register the meta fields used by their plugins and themes.</li><li>After many years of hard work, <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards">v1.0.0 of the WordPress Coding Standards for PHP_CodeSniffer</a> has been released.</li><li>The Mobile team <a href="https://make.wordpress.org/mobile/2018/07/31/call-for-testing-wordpress-for-ios-10-6/">is looking for people to help test</a> v10.6 of WordPress for iOS.</li></ul>

<p><em>If you have a story we should consider including in the next “Month in WordPress” post, please </em><a href="https://make.wordpress.org/community/month-in-wordpress-submissions/"><em>submit it here</em></a><em>.</em></p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Aug 2018 09:11:02 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Hugh Lashbrooke";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:45;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"HeroPress: Begin at the Beginning";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:56:"https://heropress.com/?post_type=heropress-essays&p=2601";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:118:"https://heropress.com/essays/begin-at-the-beginning/#utm_source=rss&utm_medium=rss&utm_campaign=begin-at-the-beginning";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:10624:"<img width="960" height="480" src="https://s20094.pcdn.co/wp-content/uploads/2018/08/080118-1024x512.jpg" class="attachment-large size-large wp-post-image" alt="Pull Quote: I owe it all to a little bit of gumption and to the amazing community of WordPressers who opened their world to me." /><p>With this story, as with most things in my life, I never really know where to start. Because of that strange sense of time and action I’ve always been quite fond of the quote from Lewis Carroll’s Alice in Wonderland</p>
<p>“Begin at the beginning and go on till you come to the end: then stop.”<br />
But where, for this story, is the beginning?</p>
<p>It was a lifetime of choices and serendipitous encounters that led me down the path to WordPress and eventually Automattic. And those same types of choices and encounters that keep me here.</p>
<h2>Begin at the Beginning&#8230;</h2>
<p>I was a youngish mother of a youngish child and a full time stay at home parent. I didn’t work outside the home; I was raising my kid. That was both a privilege and a problem. I realized that, as a mother consumed with caring for this new human, I was beginning to lose the very strong sense of identity that I’d always had.</p>
<p>This was my first experience with not knowing who I was. I always knew who I was, even if I didn’t know who I wanted to be. As a mother though, most of who I am was sucked into caring for my family. Not sleeping. Not taking proper care of myself. Not taking time for my interests. Putting the others in my house before me and saying that it was what I wanted.</p>
<p><em>Narrator: It wasn’t.</em></p>
<p>There was a pivot point. A moment before my daughter turned three. When I realized that if she were to choose to become a mother I would not want her to go down the same path of self denial that I had. I would want her to be who she is first and a mother second so that she could be the best self and mother she could be.</p>
<p>And I realized that was something I could only show by example. But how to start? I’d always been a writer. I often say that I only learned to read so that I could write. Journaling, short stories, poetry. Sometimes just long strings of thoughts and observations that wouldn’t leave my head until I wrote them down. I would write out long “stories” on MySpace about my experiences and realizations. I would scrawl poetry on scrap paper laying around the house. None of it was enough.</p>
<p>Also, as I understand is fairly typical for a stay at home parent, I had no one to talk to most of the time except for my small child. And while she was super awesome and receptive to any conversation I may want to start, they all tended to transition to discussion of My Little Ponies or a request for ice cream or screen time. So I looked for something more. For a place to discuss the mommified version of myself with no one and everyone. I started a blog.</p>
<p>But it wasn’t on WordPress.</p>
<h2>Go On…</h2>
<p>I wrote and I wrote and I wrote. My experiences, my kid’s experiences. Dreams and hopes and bad poetry. And I found a group of people who shared with me their struggles and dreams as they dove into mine. A web of women and men who got me. Who got what I was going through. Who got what I was doing. A community of individuals, not all like minded, but all understanding.</p>
<p>And then one day I was asked to write for a city blog, and then another. And as my writing began to expand I found other communities. My sense of self was first preserved but then invigorated and it grew and I stretched my arms and I stretched my wings and I realized I was beginning to feel whole for the first time in a long while.</p>
<p>But using multiple platforms for my blogging gave me the understanding that the platform I was using was restrictive and unsatisfying. Clunky.</p>
<p>And that’s when a friend mentioned WordCamp Portland. It was this new thing. We were doing it for the first time. A bunch of bloggers getting together to talk about WordPress and blogging and stuff.</p>
<p>I had no idea what WordPress was. But my friend said they needed some volunteers to help out, and I’m always one to support my friends, my community. So I asked what I needed to do to help.</p>
<p>“Move your blog to WordPress”</p>
<p>And so I did. And something clicked. Once I had moved to a WordPress site I found my passion for blogging was something more. I played with themes, I made headers that felt like art pieces, I helped others transfer their content, set up their sites. I introduced them to a community that I was just beginning to get to know.</p>
<p>And then there was a cascade of activity. More blogs, podcasting, events, community, and every year there was WordCamp Portland. And I continued to learn and grow my skills as a writer, as a blogger, as a podcaster, and as a WordPresser. I continued to volunteer, and then to speak, and to help organize.</p>
<h2>And on…</h2>
<p>But life changes. Sometimes for the better sometimes for the worse. But change is hard. People change or stay the same. Relationships change. Life changes. Sometimes all of the above. So I ended a marriage and found myself stumped. I knew who I was, but who I happened to be was a stay at home mom who hadn’t worked outside the home in eight years and had no marketable skills that I could find that would also allow me to continue to be home for my kid.</p>
<p>And I panicked and I procrastinated and then I found an opening. A small startup I knew through my interactions with the community needed a customer support person who also knew WordPress.</p>
<p>A light went on. And I had a job for the first time in eight years. And I knew what I was doing. And I was good at it. And I continued to blog. A little. And I stuck to the little tiny fringes of the WordPress community I knew. Still not realizing how big the rest of it was.</p>
<p>The Portland WordPress folks were like a river feeding into the ocean of the worldwide community. But I’d only ever stood on the shores of the river and dipped my toes in. All that was about to change.</p>
<h2>Till You Come to the End…</h2>
<p>But as I said at the beginning, it’s not that simple. There is no end. There is just more. More stories, more people, more learning, more community. And that’s where we begin the part of the story that tells us where I am today.</p>
<p>This part begins with an email from a community friend with a link to a job posting. And a new beginning.</p>
<p>I was working happily at that small startup, spreading my wings. But starting to feel a little bit like my passion wasn’t being put to use when that email arrived. A link to a job posting working as a sponsored volunteer within the WordPress community and question. It was a simple question. “Do you know anyone who would kick ass at this job?”</p>
<p>DID I? I was reeling from the possibility and doubled over with imposter syndrome and fear. Fear that I wasn’t good enough. Fear that they wouldn’t like me. Fear that I’d be leaving my boss in the lurch.</p>
<p>So I did what I always did at that time. And what I still do to this day. I procrastinated. I talked. I thought. I woke up in the middle of the night in a panic thinking I had forgotten something. Thinking I had done something wrong.</p>
<p>But as I sat there one day tinkering on the startup’s site, scheduling posts, checking in on our customers all while getting my daughter ready for school that morning I realized that it was time to set aside those fears. To look that imposter syndrome right in the eye and say “not today” and I started putting together my resume and working on the cover email.</p>
<p>No one was more surprised than I when I found myself two months later starting my first day at Automattic.</p>
<p>It’s been about 5 and a half years since that email landed in my inbox. It’s been more than a decade since WordPress landed in my heart and I’m proud to make my living in the wide wonderful world of WordPress. As I write this story for all of you to read—not a cautionary tale I hope, but an inspirational one—I’m just a few days away from the end of my three-month sabbatical (a benefit that all Automatticians are eligible for after 5 years.)</p>
<p>It’s been a time of rest, readjustment, relaxation. Of edification. But it’s also been a renewal. A time to look back at how I got where I am and remember how lucky I am to be here today. And I owe it all to a little bit of gumption and to the amazing community of WordPressers who opened their world to me. And also to everyone else who is willing to be a part of this great big community founded on open source. On WordPress.</p>
<div class="rtsocial-container rtsocial-container-align-right rtsocial-horizontal"><div class="rtsocial-twitter-horizontal"><div class="rtsocial-twitter-horizontal-button"><a title="Tweet: Begin at the Beginning" class="rtsocial-twitter-button" href="https://twitter.com/share?text=Begin%20at%20the%20Beginning&via=heropress&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-fb-horizontal fb-light"><div class="rtsocial-fb-horizontal-button"><a title="Like: Begin at the Beginning" class="rtsocial-fb-button rtsocial-fb-like-light" href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F" rel="nofollow" target="_blank"></a></div></div><div class="rtsocial-linkedin-horizontal"><div class="rtsocial-linkedin-horizontal-button"><a class="rtsocial-linkedin-button" href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A%2F%2Fheropress.com%2Fessays%2Fbegin-at-the-beginning%2F&title=Begin+at+the+Beginning" rel="nofollow" target="_blank" title="Share: Begin at the Beginning"></a></div></div><div class="rtsocial-pinterest-horizontal"><div class="rtsocial-pinterest-horizontal-button"><a class="rtsocial-pinterest-button" href="https://pinterest.com/pin/create/button/?url=https://heropress.com/essays/begin-at-the-beginning/&media=https://heropress.com/wp-content/uploads/2018/08/080118-150x150.jpg&description=Begin at the Beginning" rel="nofollow" target="_blank" title="Pin: Begin at the Beginning"></a></div></div><a rel="nofollow" class="perma-link" href="https://heropress.com/essays/begin-at-the-beginning/" title="Begin at the Beginning"></a></div><p>The post <a rel="nofollow" href="https://heropress.com/essays/begin-at-the-beginning/">Begin at the Beginning</a> appeared first on <a rel="nofollow" href="https://heropress.com">HeroPress</a>.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Aug 2018 08:00:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Cami Kaos";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:46;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:86:"WPTavern: WordPress 4.9.8 RC 3 Released, Limits ‘Try Gutenberg’ Callout Visibility";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82803";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:90:"https://wptavern.com/wordpress-4-9-8-rc-3-released-limits-try-gutenberg-callout-visibility";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1701:"<p>WordPress 4.9.8 Release Candidate 3 <a href="https://make.wordpress.org/core/2018/07/31/wordpress-4-9-8-release-candidate-3/">is available</a> for testing. This version includes one important enhancement that limits the visibility of the <a href="https://wptavern.com/first-look-at-try-gutenberg-prompt-in-wordpress-4-9-8-beta-2">&#8216;Try Gutenberg&#8217; callout</a>. </p>

<p>If Gutenberg is not installed or activated on a site, the callout will be displayed to users with the <a href="https://codex.wordpress.org/Roles_and_Capabilities#install_plugins">install_plugins</a> capability. If Gutenberg is activated, the callout will be shown to users with the <a href="https://codex.wordpress.org/Roles_and_Capabilities#edit_posts">edit_posts</a> capability. </p>

<p>Limiting the visibility of the callout to a specific subset of users will avoid inundating the WordPress.org support forums with Gutenberg support requests. A concern that was <a href="https://core.trac.wordpress.org/ticket/41316#comment:98">expressed by</a> Daniel Bachhuber four months ago. </p>

<p>&#8220;There&#8217;s a good amount of fit and finish to be desired before rolling out to a large number of unacquainted users,&#8221; Bachhuber said. &#8220;We&#8217;re not quite over the hump on the issues we do already know about. There&#8217;s not a ton of sense in having 10,000 users re-report them.&#8221;</p>

<p>Other than this change, the <a href="https://make.wordpress.org/core/2018/07/24/wordpress-4-9-8-release-candidate-1/#change-log">change log</a> from WordPress 4.9.8 RC 1 remains the same. WordPress 4.9.8 was originally scheduled to be released today, but has been rescheduled for Thursday, August 2nd. </p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 01 Aug 2018 00:14:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:47;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:105:"WPTavern: Facebook Shuts Down API for Publishing to User Timelines, Impacts Jetpack’s Publicize Feature";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82768";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:112:"https://wptavern.com/facebook-shuts-down-api-for-publishing-to-user-timelines-impacts-jetpacks-publicize-feature";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:4690:"<p><a href="https://i0.wp.com/wptavern.com/wp-content/uploads/2018/07/logo-facebook-1600.png?ssl=1"><img /></a></p>
<p>In the aftermath of the <a href="https://en.wikipedia.org/wiki/Facebook%E2%80%93Cambridge_Analytica_data_scandal" rel="noopener noreferrer" target="_blank">Cambridge Analytica data scandal</a>, Facebook is tightening its control on third-party applications and will no longer allow apps to post to user profiles. In April, the platform <a href="https://developers.facebook.com/blog/post/2018/04/24/new-facebook-platform-product-changes-policy-updates/" rel="noopener noreferrer" target="_blank">announced</a> sweeping changes to the publish_actions permission, which allowed apps to publish to users&#8217; timeline on their behalf.</p>
<blockquote><p>On August 1st, 2018, the Live API publish_actions permission, which allows an app to publish on behalf of its Users, will be reserved for approved partners. A new permission model that allows apps to publish Videos to their User&#8217;s Groups and Timeline will be created instead.</p>
<p>Access to the Pages APIs requires re-submission of the application for review before August 1, 2018. This will be required to continue publishing live and VOD video to Pages, as well as reading insights.</p></blockquote>
<p>Facebook is notorious for swiftly changing its APIs in ways that break apps (sometimes without warning), often sending developers scrambling. For a long time, apps auto-posting to user timelines was part of the wild west of app permissions granted without much oversight from Facebook. Users often unknowingly gave permission to apps that would collect data and spam their Facebook connections with posts made on their behalf.</p>
<p>Those days are over, but an unfortunate byproduct of this restriction is that apps like WordPress.com and Jetpack&#8217;s Publicize feature can no longer automatically publish posts to user timelines. This change also adversely affects apps like Buffer and Hootsuite that allow users to schedule and publish posts to their social accounts.</p>
<p><a href="https://jetpack.com/2018/07/30/jetpack-6-3-3-facebook-publicize/" rel="noopener noreferrer" target="_blank">Jetpack 6.3.3</a> removes the ability for users to select Facebook Profile connections and displays a notice regarding existing connections, so users will be aware of which auto-posting connections they are losing. Besides Jetpack, this Facebook API change affects tens of thousands of users who have this functionality implemented through one of many other plugins on WordPress.org.</p>
<p>Users are now required to manually share their posts to their timelines. They can no longer schedule content to be shared to Facebook at specific times for different audiences.</p>
<p>Auto-posting to <a href="https://www.facebook.com/help/175644189234902/" target="_blank" rel="noopener noreferrer">Facebook Pages</a> still works, and one option users have is to convert their Profile to a Page or set up a new page. This may not be a suitable alternative for bloggers and those whose writing is not attached to a business or an organization.</p>
<p>In a recent <a href="https://ma.tt/2018/07/my-recode-decode-interview-with-kara-swisher/" rel="noopener noreferrer" target="_blank">post</a> on his blog, Automattic CEO Matt Mullenweg commented on Facebook&#8217;s decision to turn off auto-posting to profiles.</p>
<p>&#8220;As it turns out, Facebook also is turning off the ability for WordPress sites — and all websites — to post directly to users’ profile pages,&#8221; Mullenweg said. &#8220;The decision to shut down the API is ostensibly to fight propaganda and misinformation on the platform, but I think it’s a big step back for their embrace of the open web. I hope they change their minds.&#8221;</p>
<p>If only a select few &#8220;approved partners&#8221; are allowed to automatically broadcast to user timelines, it puts smaller players at a disadvantage, requiring manual sharing each time they publish. Facebook is setting itself up as a gatekeeper that enables news from a small selection of partners to keep pumping through the platform on schedule. Individual voices on smaller websites are no longer able to syndicate to the Facebook platform unless they decide to create a Page.</p>
<p>Put a different way, the only syndicated content allowed on Facebook will be through channels the company can monetize &#8211; business/organization Pages or partners who are approved to post to user timelines. Users who care about retaining their Facebook audiences will need to remember to manually post their content to the social network after August 1, 2018, when the API changes go into effect.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 Jul 2018 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Sarah Gooding";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:48;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Matt: My Recode Decode Interview with Kara Swisher";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:22:"https://ma.tt/?p=48262";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://ma.tt/2018/07/my-recode-decode-interview-with-kara-swisher/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:1780:"<blockquote class="wp-block-quote"><p>&#8220;We want to make the best tools in the world, and we want to do it for decades to come. I&#8217;ve been doing WordPress for 15 years, I want to do it the rest of my life.&#8221; <br /></p></blockquote>

<p>The last time I chatted with <a href="https://twitter.com/karaswisher?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">Kara</a> was in 2013 <a href="https://www.wsj.com/video/wordpress-mullenweg-on-the-future-of-blogging/51B2A49C-EE8D-42EC-911D-370064A4829F.html">in the back of a pedicab in Austin</a>. This time I got to <a href="https://art19.com/shows/recode-decode/episodes/3d56208e-a4b9-4c74-861e-8fec105a4ee8">sit in the red chair</a> at Vox headquarters in San Francisco, and per usual Kara was thoughtful, thorough and to the point: we talked about WordPress and the future of the open web, the moral imperative of user privacy, and how it all relates to what&#8217;s going on at Facebook. </p>

<p>(As it turns out, Facebook also is <a href="https://en.blog.wordpress.com/2018/07/23/sharing-options-from-wordpress-com-to-facebook-are-changing/">turning off the ability for WordPress sites &#8212; and all websites</a> &#8212; to post directly to users&#8217; profile pages. The decision to shut down the API is ostensibly to fight propaganda and misinformation on the platform, but I think it&#8217;s a big step back for their embrace of the open web. I hope they change their minds.)<br /></p>

<p>Kara and I also talked about distributed work, Automattic&#8217;s <a href="https://ma.tt/2018/06/atavist-automattic/">acquisition of Atavist</a> and <a href="https://longreads.com/">Longreads</a>, and why every tech company should have an editorial team. Thanks again to Kara and the Recode team for having me.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 31 Jul 2018 08:31:15 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Matt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:49;a:6:{s:4:"data";s:13:"
	
	
	
	
	
	
";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:51:"WPTavern: WordPress Coding Standards 1.0.0 Released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:29:"https://wptavern.com/?p=82761";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wptavern.com/wordpress-coding-standards-1-0-0-released";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:2215:"<p>After nine years <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards#project-history">since the project began</a>, version 1.0.0 of the <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards">WordPress Coding Standards</a> is available for download. The WordPress Coding Standards is a collection of <a href="https://github.com/squizlabs/PHP_CodeSniffer">PHP_CodeSniffer</a> rules or sniffs to validate code developed for WordPress. It ensures code quality and adherence to coding conventions, including the official <a href="https://make.wordpress.org/core/handbook/best-practices/coding-standards/">WordPress Coding Standards</a>.</p>

<p>In addition to being a big milestone, 1.0.0 contains breaking changes. &#8220;A number of sniffs have been moved between categories and the old sniff names have been deprecated,&#8221; <a href="https://github.com/jrfnl">Juliette Reinders Folmer</a>, a significant contributor to the project, said. </p>

<p>&#8220;If you selectively include any of these sniffs in your custom ruleset or set custom property values for these sniffs, your custom ruleset will need to be updated.&#8221;</p>

<p>The WordPress-VIP ruleset has been deprecated as well. &#8220;This ruleset has not been valid for some time, as we have <a href="https://github.com/Automattic/VIP-Coding-Standards">our own VIP coding standards</a>, available for public use,&#8221; David Artiss, a member of the WordPress.com VIP support team, said.</p>

<p>&#8220;If you are a VIP client and you are not using the alternative rulesets, then we would strongly recommend switching to these. If you used the WordPress-VIP ruleset for any other reason, you should use WordPress-Extra or WordPress instead.&#8221;</p>

<p>Those who use the WordPress Coding Standards Sniffs are strongly encouraged to read the <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/releases/tag/1.0.0">changelog</a> before updating. WordPress Coding Standards is a free, open source project, that&#8217;s <a href="https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards">available on GitHub</a> where contributions are welcomed.</p>";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 30 Jul 2018 23:43:43 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Jeff Chandler";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"', 'no' ),
( '134', '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1535322530', 'no' ),
( '135', '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1535279330', 'no' ),
( '136', '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1535322530', 'no' ),
( '137', '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2018/08/wordpress-4-9-8-maintenance-release/\'>WordPress 4.9.8 Maintenance Release</a></li></ul></div><div class="rss-widget"><ul><li><a class=\'rsswidget\' href=\'https://wptavern.com/wpcampus-2018-videos-are-now-available-to-watch\'>WPTavern: WPCampus 2018 Videos Are Now Available to Watch</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/gutenberg-and-classic-editor-plugins-pass-200000-active-installations-wordpress-4-9-9-planning-underway\'>WPTavern: Gutenberg and Classic Editor Plugins Pass 200,000 Active Installations, WordPress 4.9.9 Planning Underway</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/wordcamp-kochi-is-postponed-to-november-3rd-due-to-extensive-flooding\'>WPTavern: WordCamp Kochi is Postponed to November 3rd Due to Extensive Flooding</a></li></ul></div>', 'no' ),
( '142', 'current_theme', 'Unite Child', 'yes' ),
( '143', 'theme_mods_unite', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1535283320;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:5:"home1";a:0:{}s:5:"home2";a:0:{}s:5:"home3";a:0:{}}}}', 'yes' ),
( '144', 'theme_switched', '', 'yes' ),
( '145', 'widget_unite_tabbed_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '146', 'widget_unite-social', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes' ),
( '149', 'theme_mods_unite-child', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:0:{}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1535283313;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:5:"home1";a:0:{}s:5:"home2";a:0:{}s:5:"home3";a:0:{}}}}', 'yes' ),
( '154', 'category_children', 'a:0:{}', 'yes' ),
( '158', '_site_transient_timeout_theme_roots', '1535284127', 'no' ),
( '159', '_site_transient_theme_roots', 'a:5:{s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:11:"unite-child";s:7:"/themes";s:5:"unite";s:7:"/themes";}', 'no' ),
( '169', '_transient_timeout_plugin_slugs', '1535370487', 'no' ),
( '170', '_transient_plugin_slugs', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:3;s:9:"hello.php";}', 'no' ),
( '171', 'recently_activated', 'a:0:{}', 'yes' ),
( '172', '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1535294857', 'no' ),
( '173', '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4495;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2945;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2583;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2447;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1884;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1673;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1671;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1457;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1404;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1398;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1393;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1329;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1284;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1237;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1111;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1072;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:1034;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:1031;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:919;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:888;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:833;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:812;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:807;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:733;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:704;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:695;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:688;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:685;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:676;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:667;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:658;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:657;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:646;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:642;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:616;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:613;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:612;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:607;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:600;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:595;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:573;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:550;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:545;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:542;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:530;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:523;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:516;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:514;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:514;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:507;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:494;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:491;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:491;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:484;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:481;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:480;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:460;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:457;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:453;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:442;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:439;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:436;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:422;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:419;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:417;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:417;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:414;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:414;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:408;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:389;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:388;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:374;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:371;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:371;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:366;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:362;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:359;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:358;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:350;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:348;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:346;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:346;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:344;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:339;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:337;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:334;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:329;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:325;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:312;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:309;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:308;}s:11:"performance";a:3:{s:4:"name";s:11:"performance";s:4:"slug";s:11:"performance";s:5:"count";i:304;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:303;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:303;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:302;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:301;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:299;}s:16:"google-analytics";a:3:{s:4:"name";s:16:"google analytics";s:4:"slug";s:16:"google-analytics";s:5:"count";i:298;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:296;}s:14:"contact-form-7";a:3:{s:4:"name";s:14:"contact form 7";s:4:"slug";s:14:"contact-form-7";s:5:"count";i:292;}}', 'no' ),
( '175', '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1535284085;s:7:"checked";a:4:{s:30:"advanced-custom-fields/acf.php";s:6:"4.4.12";s:19:"akismet/akismet.php";s:5:"4.0.8";s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";s:5:"1.9.1";s:9:"hello.php";s:3:"1.7";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/cpt-bootstrap-carousel";s:4:"slug";s:22:"cpt-bootstrap-carousel";s:6:"plugin";s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:53:"https://wordpress.org/plugins/cpt-bootstrap-carousel/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/cpt-bootstrap-carousel.1.9.1.zip";s:5:"icons";a:3:{s:2:"2x";s:75:"https://ps.w.org/cpt-bootstrap-carousel/assets/icon-256x256.png?rev=1085411";s:2:"1x";s:66:"https://ps.w.org/cpt-bootstrap-carousel/assets/icon.svg?rev=979800";s:3:"svg";s:66:"https://ps.w.org/cpt-bootstrap-carousel/assets/icon.svg?rev=979800";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/cpt-bootstrap-carousel/assets/banner-1544x500.png?rev=979800";s:2:"1x";s:76:"https://ps.w.org/cpt-bootstrap-carousel/assets/banner-772x250.png?rev=979800";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}}}', 'no' ),
( '176', 'acf_version', '4.4.12', 'yes' );
-- ---------------------------------------------------------


-- Dump data of "wp_postmeta" ------------------------------
INSERT INTO `wp_postmeta`(`meta_id`,`post_id`,`meta_key`,`meta_value`) VALUES 
( '1', '2', '_wp_page_template', 'default' ),
( '2', '3', '_wp_page_template', 'default' ),
( '3', '5', '_wp_attached_file', '2018/08/unite.2.0.2.zip' ),
( '4', '5', '_wp_attachment_context', 'upgrader' ),
( '5', '6', '_wp_attached_file', '2018/08/espresso.jpg' ),
( '6', '6', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/08/espresso.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"espresso-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"espresso-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"espresso-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"espresso-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"espresso-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '7', '6', '_starter_content_theme', 'twentyseventeen' ),
( '8', '6', '_customize_draft_post_name', 'espresso' ),
( '9', '7', '_wp_attached_file', '2018/08/sandwich.jpg' ),
( '10', '7', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:20:"2018/08/sandwich.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"sandwich-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"sandwich-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"sandwich-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"sandwich-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:20:"sandwich-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '11', '7', '_starter_content_theme', 'twentyseventeen' ),
( '12', '7', '_customize_draft_post_name', 'sandwich' ),
( '13', '8', '_wp_attached_file', '2018/08/coffee.jpg' ),
( '14', '8', '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2000;s:6:"height";i:1200;s:4:"file";s:18:"2018/08/coffee.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"coffee-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"coffee-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"coffee-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"coffee-1024x614.jpg";s:5:"width";i:1024;s:6:"height";i:614;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:18:"coffee-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}' ),
( '15', '8', '_starter_content_theme', 'twentyseventeen' ),
( '16', '8', '_customize_draft_post_name', 'coffee' ),
( '17', '9', '_customize_draft_post_name', 'home' ),
( '18', '9', '_customize_changeset_uuid', '22447b48-6729-4db3-848a-4cdeed9570ce' ),
( '19', '10', '_thumbnail_id', '7' ),
( '20', '10', '_customize_draft_post_name', 'about' ),
( '21', '10', '_customize_changeset_uuid', '22447b48-6729-4db3-848a-4cdeed9570ce' ),
( '22', '11', '_thumbnail_id', '6' ),
( '23', '11', '_customize_draft_post_name', 'contact' ),
( '24', '11', '_customize_changeset_uuid', '22447b48-6729-4db3-848a-4cdeed9570ce' ),
( '25', '12', '_thumbnail_id', '8' ),
( '26', '12', '_customize_draft_post_name', 'blog' ),
( '27', '12', '_customize_changeset_uuid', '22447b48-6729-4db3-848a-4cdeed9570ce' ),
( '28', '13', '_thumbnail_id', '6' ),
( '29', '13', '_customize_draft_post_name', 'a-homepage-section' ),
( '30', '13', '_customize_changeset_uuid', '22447b48-6729-4db3-848a-4cdeed9570ce' ),
( '31', '14', '_customize_restore_dismissed', '1' ),
( '32', '24', '_edit_last', '1' ),
( '33', '24', 'field_5b8293a031449', 'a:15:{s:3:"key";s:19:"field_5b8293a031449";s:5:"label";s:12:"Ticket Price";s:4:"name";s:12:"ticket_price";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:4:"step";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}' ),
( '34', '24', 'field_5b8294303144a', 'a:11:{s:3:"key";s:19:"field_5b8294303144a";s:5:"label";s:12:"Release Date";s:4:"name";s:12:"release_date";s:4:"type";s:11:"date_picker";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"date_format";s:6:"yymmdd";s:14:"display_format";s:8:"dd/mm/yy";s:9:"first_day";s:1:"1";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}' ),
( '36', '24', 'position', 'normal' ),
( '37', '24', 'layout', 'no_box' ),
( '38', '24', 'hide_on_screen', '' ),
( '39', '24', '_edit_lock', '1535284516:1' ),
( '40', '25', '_edit_last', '1' ),
( '41', '25', '_edit_lock', '1535284707:1' ),
( '42', '24', 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"films";s:8:"order_no";i:0;s:8:"group_no";i:0;}' ),
( '43', '25', 'ticket_price', '500' ),
( '44', '25', '_ticket_price', 'field_5b8293a031449' ),
( '45', '25', 'release_date', '20180825' ),
( '46', '25', '_release_date', 'field_5b8294303144a' ),
( '47', '25', 'post_views_count', '0' ),
( '48', '28', '_edit_last', '1' ),
( '49', '28', '_edit_lock', '1535284893:1' ),
( '50', '28', 'ticket_price', '1000' ),
( '51', '28', '_ticket_price', 'field_5b8293a031449' ),
( '52', '28', 'release_date', '20170812' ),
( '53', '28', '_release_date', 'field_5b8294303144a' ),
( '54', '28', 'post_views_count', '0' ),
( '55', '29', '_edit_last', '1' ),
( '56', '29', '_edit_lock', '1535285193:1' ),
( '57', '29', 'ticket_price', '600' ),
( '58', '29', '_ticket_price', 'field_5b8293a031449' ),
( '59', '29', 'release_date', '20180831' ),
( '60', '29', '_release_date', 'field_5b8294303144a' );
-- ---------------------------------------------------------


-- Dump data of "wp_posts" ---------------------------------
INSERT INTO `wp_posts`(`ID`,`post_author`,`post_date`,`post_date_gmt`,`post_content`,`post_title`,`post_excerpt`,`post_status`,`comment_status`,`ping_status`,`post_password`,`post_name`,`to_ping`,`pinged`,`post_modified`,`post_modified_gmt`,`post_content_filtered`,`post_parent`,`guid`,`menu_order`,`post_type`,`post_mime_type`,`comment_count`) VALUES 
( '1', '1', '2018-08-26 10:28:21', '2018-08-26 10:28:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-26 10:28:21', '2018-08-26 10:28:21', '', '0', 'http://127.0.0.1/wordpress/?p=1', '0', 'post', '', '1' ),
( '2', '1', '2018-08-26 10:28:21', '2018-08-26 10:28:21', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:

<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>

...or something like this:

<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>

As a new WordPress user, you should go to <a href="http://127.0.0.1/wordpress/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-08-26 10:28:21', '2018-08-26 10:28:21', '', '0', 'http://127.0.0.1/wordpress/?page_id=2', '0', 'page', '', '0' ),
( '3', '1', '2018-08-26 10:28:21', '2018-08-26 10:28:21', '<h2>Who we are</h2><p>Our website address is: http://127.0.0.1/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-26 10:28:21', '2018-08-26 10:28:21', '', '0', 'http://127.0.0.1/wordpress/?page_id=3', '0', 'page', '', '0' ),
( '4', '1', '2018-08-26 10:28:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-26 10:28:39', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?p=4', '0', 'post', '', '0' ),
( '5', '1', '2018-08-26 10:47:29', '2018-08-26 10:47:29', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/08/unite.2.0.2.zip', 'unite.2.0.2.zip', '', 'private', 'open', 'closed', '', 'unite-2-0-2-zip', '', '', '2018-08-26 10:47:29', '2018-08-26 10:47:29', '', '0', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/08/unite.2.0.2.zip', '0', 'attachment', '', '0' ),
( '6', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '', 'Espresso', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-26 10:47:58', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/08/espresso.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '7', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '', 'Sandwich', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-26 10:48:02', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/08/sandwich.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '8', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '', 'Coffee', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-08-26 10:48:05', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/wp-content/uploads/2018/08/coffee.jpg', '0', 'attachment', 'image/jpeg', '0' ),
( '9', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', 'Welcome to your site! This is your homepage, which is what most visitors will see when they come to your site for the first time.', 'Home', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 10:48:06', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?page_id=9', '0', 'page', '', '0' ),
( '10', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', 'You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 10:48:07', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?page_id=10', '0', 'page', '', '0' ),
( '11', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', 'This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 10:48:08', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?page_id=11', '0', 'page', '', '0' ),
( '12', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 10:48:09', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?page_id=12', '0', 'page', '', '0' ),
( '13', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', 'This is an example of a homepage section. Homepage sections can be any page other than the homepage itself, including the page that shows your latest blog posts.', 'A homepage section', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 10:48:11', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?page_id=13', '0', 'page', '', '0' ),
( '14', '1', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '{
    "widget_text[2]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",
            "title": "Find Us",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "6ed6580f2295a4d84c6ebee825c9f2ad"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "widget_search[3]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",
            "title": "Search",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "a02bf44d7346e84d6c6badba145e15ab"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "widget_text[3]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",
            "title": "About This Site",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "935cade05a3294ce9c4f958d156846c7"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "sidebars_widgets[sidebar-1]": {
        "starter_content": true,
        "value": [
            "text-2",
            "search-3",
            "text-3"
        ],
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "widget_text[4]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjc6IkZpbmQgVXMiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+QWRkcmVzczwvc3Ryb25nPgoxMjMgTWFpbiBTdHJlZXQKTmV3IFlvcmssIE5ZIDEwMDAxCgo8c3Ryb25nPkhvdXJzPC9zdHJvbmc+Ck1vbmRheSZtZGFzaDtGcmlkYXk6IDk6MDBBTSZuZGFzaDs1OjAwUE0KU2F0dXJkYXkgJmFtcDsgU3VuZGF5OiAxMTowMEFNJm5kYXNoOzM6MDBQTSI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",
            "title": "Find Us",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "6ed6580f2295a4d84c6ebee825c9f2ad"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "sidebars_widgets[sidebar-2]": {
        "starter_content": true,
        "value": [
            "text-4"
        ],
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "widget_text[5]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjE1OiJBYm91dCBUaGlzIFNpdGUiO3M6NDoidGV4dCI7czo4NToiVGhpcyBtYXkgYmUgYSBnb29kIHBsYWNlIHRvIGludHJvZHVjZSB5b3Vyc2VsZiBhbmQgeW91ciBzaXRlIG9yIGluY2x1ZGUgc29tZSBjcmVkaXRzLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=",
            "title": "About This Site",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "935cade05a3294ce9c4f958d156846c7"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "widget_search[4]": {
        "starter_content": true,
        "value": {
            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjY6IlNlYXJjaCI7fQ==",
            "title": "Search",
            "is_widget_customizer_js_value": true,
            "instance_hash_key": "a02bf44d7346e84d6c6badba145e15ab"
        },
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "sidebars_widgets[sidebar-3]": {
        "starter_content": true,
        "value": [
            "text-5",
            "search-4"
        ],
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menus_created_posts": {
        "starter_content": true,
        "value": [
            6,
            7,
            8,
            9,
            10,
            11,
            12,
            13
        ],
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu[-1]": {
        "starter_content": true,
        "value": {
            "name": "Top Menu"
        },
        "type": "nav_menu",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-1]": {
        "starter_content": true,
        "value": {
            "type": "custom",
            "title": "Home",
            "url": "http://127.0.0.1/wordpress/",
            "position": 0,
            "nav_menu_term_id": -1,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-2]": {
        "starter_content": true,
        "value": {
            "type": "post_type",
            "object": "page",
            "object_id": 10,
            "position": 1,
            "nav_menu_term_id": -1,
            "title": "About"
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-3]": {
        "starter_content": true,
        "value": {
            "type": "post_type",
            "object": "page",
            "object_id": 12,
            "position": 2,
            "nav_menu_term_id": -1,
            "title": "Blog"
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-4]": {
        "starter_content": true,
        "value": {
            "type": "post_type",
            "object": "page",
            "object_id": 11,
            "position": 3,
            "nav_menu_term_id": -1,
            "title": "Contact"
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::nav_menu_locations[top]": {
        "starter_content": true,
        "value": -1,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu[-5]": {
        "starter_content": true,
        "value": {
            "name": "Social Links Menu"
        },
        "type": "nav_menu",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-5]": {
        "starter_content": true,
        "value": {
            "title": "Yelp",
            "url": "https://www.yelp.com",
            "position": 0,
            "nav_menu_term_id": -5,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-6]": {
        "starter_content": true,
        "value": {
            "title": "Facebook",
            "url": "https://www.facebook.com/wordpress",
            "position": 1,
            "nav_menu_term_id": -5,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-7]": {
        "starter_content": true,
        "value": {
            "title": "Twitter",
            "url": "https://twitter.com/wordpress",
            "position": 2,
            "nav_menu_term_id": -5,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-8]": {
        "starter_content": true,
        "value": {
            "title": "Instagram",
            "url": "https://www.instagram.com/explore/tags/wordcamp/",
            "position": 3,
            "nav_menu_term_id": -5,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "nav_menu_item[-9]": {
        "starter_content": true,
        "value": {
            "title": "Email",
            "url": "mailto:wordpress@example.com",
            "position": 4,
            "nav_menu_term_id": -5,
            "object_id": 0
        },
        "type": "nav_menu_item",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::nav_menu_locations[social]": {
        "starter_content": true,
        "value": -5,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "show_on_front": {
        "starter_content": true,
        "value": "page",
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "page_on_front": {
        "starter_content": true,
        "value": 9,
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "page_for_posts": {
        "starter_content": true,
        "value": 12,
        "type": "option",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::panel_1": {
        "starter_content": true,
        "value": 13,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::panel_2": {
        "starter_content": true,
        "value": 10,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::panel_3": {
        "starter_content": true,
        "value": 12,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    },
    "twentyseventeen::panel_4": {
        "starter_content": true,
        "value": 11,
        "type": "theme_mod",
        "user_id": 1,
        "date_modified_gmt": "2018-08-26 10:48:12"
    }
}', '', '', 'auto-draft', 'closed', 'closed', '', '22447b48-6729-4db3-848a-4cdeed9570ce', '', '', '2018-08-26 10:48:12', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?p=14', '0', 'customize_changeset', '', '0' ),
( '15', '1', '2018-08-26 11:09:12', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-26 11:09:12', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?p=15', '0', 'post', '', '0' ),
( '16', '1', '2018-08-26 11:20:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-26 11:20:00', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=16', '0', 'films', '', '0' ),
( '17', '1', '2018-08-26 11:20:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-26 11:20:40', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=17', '0', 'films', '', '0' ),
( '18', '1', '2018-08-26 11:34:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:34:53', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=18', '0', 'films', '', '0' ),
( '19', '1', '2018-08-26 11:35:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:35:27', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=19', '0', 'films', '', '0' ),
( '20', '1', '2018-08-26 11:35:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:35:39', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=20', '0', 'films', '', '0' ),
( '21', '1', '2018-08-26 11:35:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:35:49', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=21', '0', 'films', '', '0' ),
( '22', '1', '2018-08-26 11:35:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:35:54', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=22', '0', 'films', '', '0' ),
( '23', '1', '2018-08-26 11:35:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:35:54', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=23', '0', 'films', '', '0' ),
( '24', '1', '2018-08-26 11:52:37', '2018-08-26 11:52:37', '', 'Film fields', '', 'publish', 'closed', 'closed', '', 'acf_film-fields', '', '', '2018-08-26 11:57:37', '2018-08-26 11:57:37', '', '0', 'http://127.0.0.1/wordpress/?post_type=acf&#038;p=24', '0', 'acf', '', '0' ),
( '25', '1', '2018-08-26 12:00:46', '2018-08-26 12:00:46', 'Ethan Hunt and his IMF team, along with some familiar allies, race against time after a mission gone wrong.', 'Mission: Impossible - Fallout', '', 'publish', 'closed', 'closed', '', 'mission-impossible-fallout', '', '', '2018-08-26 12:00:46', '2018-08-26 12:00:46', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&#038;p=25', '0', 'films', '', '0' ),
( '26', '1', '2018-08-26 11:57:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:57:43', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=26', '0', 'films', '', '0' ),
( '27', '1', '2018-08-26 11:59:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-08-26 11:59:34', '0000-00-00 00:00:00', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&p=27', '0', 'films', '', '0' ),
( '28', '1', '2018-08-26 12:03:50', '2018-08-26 12:03:50', 'Allied soldiers from Belgium, the British Empire and France are surrounded by the German Army, and evacuated during a fierce battle in World War II.', 'Dunkirk', '', 'publish', 'closed', 'closed', '', 'dunkirk', '', '', '2018-08-26 12:03:50', '2018-08-26 12:03:50', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&#038;p=28', '0', 'films', '', '0' ),
( '29', '1', '2018-08-26 12:06:32', '2018-08-26 12:06:32', 'An elite American intelligence officer, aided by a top-secret tactical command unit, tries to smuggle a mysterious police officer with sensitive information out of the country.', 'Mile 22', '', 'publish', 'closed', 'closed', '', 'mile-22', '', '', '2018-08-26 12:06:32', '2018-08-26 12:06:32', '', '0', 'http://127.0.0.1/wordpress/?post_type=films&#038;p=29', '0', 'films', '', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_term_relationships" --------------------
INSERT INTO `wp_term_relationships`(`object_id`,`term_taxonomy_id`,`term_order`) VALUES 
( '1', '1', '0' ),
( '25', '2', '0' ),
( '25', '3', '0' ),
( '25', '4', '0' ),
( '25', '5', '0' ),
( '25', '6', '0' ),
( '28', '3', '0' ),
( '28', '9', '0' ),
( '28', '10', '0' ),
( '28', '11', '0' ),
( '28', '12', '0' ),
( '29', '2', '0' ),
( '29', '3', '0' ),
( '29', '4', '0' ),
( '29', '7', '0' ),
( '29', '12', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_term_taxonomy" -------------------------
INSERT INTO `wp_term_taxonomy`(`term_taxonomy_id`,`term_id`,`taxonomy`,`description`,`parent`,`count`) VALUES 
( '1', '1', 'category', '', '0', '1' ),
( '2', '2', 'country', '', '0', '2' ),
( '3', '3', 'genre', '', '0', '3' ),
( '4', '4', 'year', '', '0', '2' ),
( '5', '5', 'actors', '', '0', '1' ),
( '6', '6', 'actors', '', '0', '1' ),
( '7', '7', 'genre', '', '0', '1' ),
( '8', '8', 'genre', '', '0', '0' ),
( '9', '9', 'genre', '', '0', '1' ),
( '10', '10', 'year', '', '0', '1' ),
( '11', '11', 'actors', '', '0', '1' ),
( '12', '12', 'actors', '', '0', '2' ),
( '13', '13', 'actors', '', '0', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_termmeta" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "wp_terms" ---------------------------------
INSERT INTO `wp_terms`(`term_id`,`name`,`slug`,`term_group`) VALUES 
( '1', 'Uncategorized', 'uncategorized', '0' ),
( '2', 'United Status', 'united-states', '0' ),
( '3', 'Action', 'action', '0' ),
( '4', '2018', '2018', '0' ),
( '5', 'Tom Cruise', 'tom-cruise', '0' ),
( '6', 'Henry Cavill', 'henry-cavill', '0' ),
( '7', 'Drama', 'drama', '0' ),
( '8', 'Love', 'love', '0' ),
( '9', 'History', 'history', '0' ),
( '10', '2017', '2017', '0' ),
( '11', 'Fionn Whitehead', 'fionn-whitehead', '0' ),
( '12', 'Damien Bonnard', 'damien-bonnard', '0' ),
( '13', 'Aneurin Barnard', 'aneurin-barnard', '0' );
-- ---------------------------------------------------------


-- Dump data of "wp_usermeta" ------------------------------
INSERT INTO `wp_usermeta`(`umeta_id`,`user_id`,`meta_key`,`meta_value`) VALUES 
( '1', '1', 'nickname', 'arafath' ),
( '2', '1', 'first_name', '' ),
( '3', '1', 'last_name', '' ),
( '4', '1', 'description', '' ),
( '5', '1', 'rich_editing', 'true' ),
( '6', '1', 'syntax_highlighting', 'true' ),
( '7', '1', 'comment_shortcuts', 'false' ),
( '8', '1', 'admin_color', 'fresh' ),
( '9', '1', 'use_ssl', '0' ),
( '10', '1', 'show_admin_bar_front', 'true' ),
( '11', '1', 'locale', '' ),
( '12', '1', 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}' ),
( '13', '1', 'wp_user_level', '10' ),
( '14', '1', 'dismissed_wp_pointers', 'wp496_privacy' ),
( '15', '1', 'show_welcome_panel', '1' ),
( '16', '1', 'session_tokens', 'a:2:{s:64:"1f1e5cf08369b82e33477fe45ac27a55913d35b9399b16c0408d21975c32f73e";a:4:{s:10:"expiration";i:1535452117;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1535279317;}s:64:"7d1e5db7d0ffe89cd601ae2a69f3841c9956db290f9b4594467cb414ad858327";a:4:{s:10:"expiration";i:1535453078;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36";s:5:"login";i:1535280278;}}' ),
( '17', '1', 'wp_dashboard_quick_press_last_post_id', '4' ),
( '18', '1', 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}' ),
( '19', '1', 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}' ),
( '20', '1', 'metaboxhidden_nav-menus', 'a:4:{i:0;s:19:"add-post-type-cptbc";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:21:"add-carousel_category";}' );
-- ---------------------------------------------------------


-- Dump data of "wp_users" ---------------------------------
INSERT INTO `wp_users`(`ID`,`user_login`,`user_pass`,`user_nicename`,`user_email`,`user_url`,`user_registered`,`user_activation_key`,`user_status`,`display_name`) VALUES 
( '1', 'arafath', '$P$BkUgyBpCElB18LQxc6fB8hNhcm3MWf/', 'arafath', 'arafath077@gmail.com', '', '2018-08-26 10:28:21', '', '0', 'arafath' );
-- ---------------------------------------------------------


-- CREATE INDEX "comment_id" -----------------------------------
CREATE INDEX `comment_id` USING BTREE ON `wp_commentmeta`( `comment_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_commentmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_approved_date_gmt" --------------------
CREATE INDEX `comment_approved_date_gmt` USING BTREE ON `wp_comments`( `comment_approved`, `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_author_email" -------------------------
CREATE INDEX `comment_author_email` USING BTREE ON `wp_comments`( `comment_author_email`( 10 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_date_gmt" -----------------------------
CREATE INDEX `comment_date_gmt` USING BTREE ON `wp_comments`( `comment_date_gmt` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_parent" -------------------------------
CREATE INDEX `comment_parent` USING BTREE ON `wp_comments`( `comment_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "comment_post_ID" ------------------------------
CREATE INDEX `comment_post_ID` USING BTREE ON `wp_comments`( `comment_post_ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "link_visible" ---------------------------------
CREATE INDEX `link_visible` USING BTREE ON `wp_links`( `link_visible` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_postmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_id" --------------------------------------
CREATE INDEX `post_id` USING BTREE ON `wp_postmeta`( `post_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_author" ----------------------------------
CREATE INDEX `post_author` USING BTREE ON `wp_posts`( `post_author` );
-- -------------------------------------------------------------


-- CREATE INDEX "post_name" ------------------------------------
CREATE INDEX `post_name` USING BTREE ON `wp_posts`( `post_name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "post_parent" ----------------------------------
CREATE INDEX `post_parent` USING BTREE ON `wp_posts`( `post_parent` );
-- -------------------------------------------------------------


-- CREATE INDEX "type_status_date" -----------------------------
CREATE INDEX `type_status_date` USING BTREE ON `wp_posts`( `post_type`, `post_status`, `post_date`, `ID` );
-- -------------------------------------------------------------


-- CREATE INDEX "term_taxonomy_id" -----------------------------
CREATE INDEX `term_taxonomy_id` USING BTREE ON `wp_term_relationships`( `term_taxonomy_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "taxonomy" -------------------------------------
CREATE INDEX `taxonomy` USING BTREE ON `wp_term_taxonomy`( `taxonomy` );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_termmeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "term_id" --------------------------------------
CREATE INDEX `term_id` USING BTREE ON `wp_termmeta`( `term_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "name" -----------------------------------------
CREATE INDEX `name` USING BTREE ON `wp_terms`( `name`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "slug" -----------------------------------------
CREATE INDEX `slug` USING BTREE ON `wp_terms`( `slug`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "meta_key" -------------------------------------
CREATE INDEX `meta_key` USING BTREE ON `wp_usermeta`( `meta_key`( 191 ) );
-- -------------------------------------------------------------


-- CREATE INDEX "user_id" --------------------------------------
CREATE INDEX `user_id` USING BTREE ON `wp_usermeta`( `user_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_email" -----------------------------------
CREATE INDEX `user_email` USING BTREE ON `wp_users`( `user_email` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_login_key" -------------------------------
CREATE INDEX `user_login_key` USING BTREE ON `wp_users`( `user_login` );
-- -------------------------------------------------------------


-- CREATE INDEX "user_nicename" --------------------------------
CREATE INDEX `user_nicename` USING BTREE ON `wp_users`( `user_nicename` );
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


