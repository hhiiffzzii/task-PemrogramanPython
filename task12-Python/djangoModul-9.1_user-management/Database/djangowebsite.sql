/*
 Navicat Premium Data Transfer

 Source Server         : PraktikumSDT
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : djangowebsite

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 13/05/2023 22:35:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (2, 'Front Office');
INSERT INTO `auth_group` VALUES (1, 'Pustakawan');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 19);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 20);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 21);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 25);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 26);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 27);
INSERT INTO `auth_group_permissions` VALUES (8, 2, 22);
INSERT INTO `auth_group_permissions` VALUES (9, 2, 23);
INSERT INTO `auth_group_permissions` VALUES (7, 2, 24);

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (17, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (18, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (19, 'Can add post', 7, 'add_post');
INSERT INTO `auth_permission` VALUES (20, 'Can change post', 7, 'change_post');
INSERT INTO `auth_permission` VALUES (21, 'Can delete post', 7, 'delete_post');
INSERT INTO `auth_permission` VALUES (22, 'Can add guest', 8, 'add_guest');
INSERT INTO `auth_permission` VALUES (23, 'Can change guest', 8, 'change_guest');
INSERT INTO `auth_permission` VALUES (24, 'Can delete guest', 8, 'delete_guest');
INSERT INTO `auth_permission` VALUES (25, 'Can add kategori', 9, 'add_kategori');
INSERT INTO `auth_permission` VALUES (26, 'Can change kategori', 9, 'change_kategori');
INSERT INTO `auth_permission` VALUES (27, 'Can delete kategori', 9, 'delete_kategori');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$36000$H3vRx9a5NXMe$itth1b92wdyoIRCk5F0pbGo4ZHF/l3lEnY8yhbmOOtQ=', '2023-05-13 12:56:51.886997', 1, 'hifzi', '', '', 'rahmatullahhifzi@gmail.com', 1, 1, '2023-04-19 11:57:33.226870');
INSERT INTO `auth_user` VALUES (2, 'pbkdf2_sha256$36000$dMZtnG68EUlY$5seDjILgt5cS4sfABBiaBf3bIWCGKsDEXNo4/SoaQeQ=', '2023-05-13 14:32:29.742584', 0, 'chesterbennington', '', '', '', 1, 1, '2023-05-13 14:29:51.000000');
INSERT INTO `auth_user` VALUES (3, 'pbkdf2_sha256$36000$1m0S4BFQqUK7$uns/vKEdX2Lh0WQdtNcscf6AMbvvm4yMi0qyo23GA4o=', '2023-05-13 14:33:13.951828', 0, 'garyvee', '', '', '', 1, 1, '2023-05-13 14:31:24.000000');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (1, 2, 2);
INSERT INTO `auth_user_groups` VALUES (2, 3, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for buku_kategori
-- ----------------------------
DROP TABLE IF EXISTS `buku_kategori`;
CREATE TABLE `buku_kategori`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kategori` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku_kategori
-- ----------------------------
INSERT INTO `buku_kategori` VALUES (1, 'Bahasa Pemrograman');
INSERT INTO `buku_kategori` VALUES (2, 'Jaringan');
INSERT INTO `buku_kategori` VALUES (3, 'Personal Development');

-- ----------------------------
-- Table structure for buku_post
-- ----------------------------
DROP TABLE IF EXISTS `buku_post`;
CREATE TABLE `buku_post`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sinopsis` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kategori_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `buku_post_kategori_id_0a807e43_fk_buku_kategori_id`(`kategori_id`) USING BTREE,
  CONSTRAINT `buku_post_kategori_id_0a807e43_fk_buku_kategori_id` FOREIGN KEY (`kategori_id`) REFERENCES `buku_kategori` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of buku_post
-- ----------------------------
INSERT INTO `buku_post` VALUES (1, 'Dasar-Dasar Python', 'Menjelaskan sintaks dasar Bahasa Pemrograman Python', 1);
INSERT INTO `buku_post` VALUES (3, 'Manajemen Jaringan', 'Menjelaskan cara me-manajemen jaringan dengan baik dan benar', 2);
INSERT INTO `buku_post` VALUES (4, 'Algoritma', 'Belajar algoritma dan implementasi ke Bahasa Pemrograman C++', 1);
INSERT INTO `buku_post` VALUES (5, 'Sebuah Seni untuk Bersikap Bodo Amat', 'Manson menggunakan banyak pengalaman pribadinya untuk menggambarkan bagaimana perjuangan hidup sering memberikan lebih banyak makna, yang menurutnya merupakan pendekatan yang lebih baik daripada terus-menerus berusaha untuk bahagia.', 3);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2023-04-19 12:10:22.610969', '1', 'Post object', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (2, '2023-04-19 12:13:39.141324', '2', 'Dasar-Dasar Pemrograman', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (3, '2023-04-19 12:14:25.104721', '3', 'Manajemen Jaringan', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (4, '2023-04-19 12:29:30.401013', '4', 'Algoritma', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (5, '2023-04-19 12:30:03.670204', '2', 'Dasar-Dasar Pemrograman', 3, '', 7, 1);
INSERT INTO `django_admin_log` VALUES (6, '2023-04-19 12:30:16.232249', '3', 'Manajemen Jaringan', 2, '[]', 7, 1);
INSERT INTO `django_admin_log` VALUES (7, '2023-05-13 12:59:49.556075', '1', '2001013039', 3, '', 8, 1);
INSERT INTO `django_admin_log` VALUES (8, '2023-05-13 13:52:54.046751', '1', 'Bahasa Pemrograman', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (9, '2023-05-13 13:53:27.286873', '2', 'Psikologi', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (10, '2023-05-13 13:53:41.561401', '3', 'Personal Development', 1, '[{\"added\": {}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (11, '2023-05-13 14:02:45.332817', '4', 'Algoritma', 2, '[{\"changed\": {\"fields\": [\"kategori\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (12, '2023-05-13 14:03:13.112116', '1', 'Dasar-Dasar Python', 2, '[{\"changed\": {\"fields\": [\"kategori\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (13, '2023-05-13 14:04:10.287965', '2', 'Jaringan', 2, '[{\"changed\": {\"fields\": [\"kategori\"]}}]', 9, 1);
INSERT INTO `django_admin_log` VALUES (14, '2023-05-13 14:04:24.549549', '3', 'Manajemen Jaringan', 2, '[{\"changed\": {\"fields\": [\"kategori\"]}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (15, '2023-05-13 14:07:23.045426', '5', 'Sebuah Seni untuk Bersikap Bodo Amat', 1, '[{\"added\": {}}]', 7, 1);
INSERT INTO `django_admin_log` VALUES (16, '2023-05-13 14:27:45.187760', '1', 'Pustakawan', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (17, '2023-05-13 14:28:17.816656', '2', 'Front Office', 1, '[{\"added\": {}}]', 3, 1);
INSERT INTO `django_admin_log` VALUES (18, '2023-05-13 14:29:51.159671', '2', 'chesterbennington', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (19, '2023-05-13 14:30:42.812187', '2', 'chesterbennington', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (20, '2023-05-13 14:31:24.505991', '3', 'garyvee', 1, '[{\"added\": {}}]', 4, 1);
INSERT INTO `django_admin_log` VALUES (21, '2023-05-13 14:31:48.382962', '3', 'garyvee', 2, '[{\"changed\": {\"fields\": [\"is_staff\", \"groups\"]}}]', 4, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (9, 'buku', 'kategori');
INSERT INTO `django_content_type` VALUES (7, 'buku', 'post');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (8, 'tamu', 'guest');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-04-19 11:51:36.108818');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-04-19 11:51:36.942068');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-04-19 11:51:37.152756');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-04-19 11:51:37.171746');
INSERT INTO `django_migrations` VALUES (5, 'contenttypes', '0002_remove_content_type_name', '2023-04-19 11:51:37.277240');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0002_alter_permission_name_max_length', '2023-04-19 11:51:37.341906');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0003_alter_user_email_max_length', '2023-04-19 11:51:37.382880');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0004_alter_user_username_opts', '2023-04-19 11:51:37.404095');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0005_alter_user_last_login_null', '2023-04-19 11:51:37.514355');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0006_require_contenttypes_0002', '2023-04-19 11:51:37.521351');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0007_alter_validators_add_error_messages', '2023-04-19 11:51:37.539339');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0008_alter_user_username_max_length', '2023-04-19 11:51:37.571978');
INSERT INTO `django_migrations` VALUES (13, 'sessions', '0001_initial', '2023-04-19 11:51:37.650190');
INSERT INTO `django_migrations` VALUES (14, 'buku', '0001_initial', '2023-04-19 12:07:16.454874');
INSERT INTO `django_migrations` VALUES (15, 'tamu', '0001_initial', '2023-04-19 12:50:32.274635');
INSERT INTO `django_migrations` VALUES (16, 'buku', '0002_kategori', '2023-05-13 13:04:57.075262');
INSERT INTO `django_migrations` VALUES (17, 'buku', '0003_post_kategori', '2023-05-13 14:00:53.853356');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('jb080khhbmyukwnaxekc7f7kmbmfo1kf', 'NDY2ZTY4OGYyMmQzN2Y0ZTZkNjkwYjAzMDc2ZDBlZWY2M2IzMTc2Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NWMxOTY3ZmIwOWQ0MzZhMjA3YTBiNDIyZWJkNTA4OTRkOWExMTZjIn0=', '2023-05-03 11:58:29.949007');

-- ----------------------------
-- Table structure for tamu_guest
-- ----------------------------
DROP TABLE IF EXISTS `tamu_guest`;
CREATE TABLE `tamu_guest`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nim` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kegiatan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tamu_guest
-- ----------------------------
INSERT INTO `tamu_guest` VALUES (2, '2001013039', 'Hifzi Rahmatullah', 'Ngoding');
INSERT INTO `tamu_guest` VALUES (3, '2001013039', 'Rahmatullah Hifzi', 'Membaca Buku');

SET FOREIGN_KEY_CHECKS = 1;
