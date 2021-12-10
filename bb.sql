-- MySQL dump 10.13  Distrib 5.7.33, for Win64 (x86_64)
--
-- Host: localhost    Database: laracast8project
-- ------------------------------------------------------
-- Server version	5.7.33

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'error','reiciendis-et-omnis-id-et-dolorum-dolorum-quasi','2021-11-15 13:26:48','2021-11-15 13:26:48'),(2,'et','quia-sunt-sed-qui-qui','2021-11-15 13:26:48','2021-11-15 13:26:48'),(3,'nisi','non-assumenda-voluptatem-cumque-nesciunt','2021-11-15 13:26:48','2021-11-15 13:26:48'),(4,'voluptas','quia-sed-eos-mollitia-perspiciatis','2021-11-15 13:26:48','2021-11-15 13:26:48'),(5,'sit','et-omnis-nulla-laboriosam-provident-cum-nulla-ut','2021-11-15 13:26:48','2021-11-15 13:26:48'),(6,'sunt','distinctio-nihil-quia-itaque-veritatis-excepturi-quas','2021-11-15 13:26:48','2021-11-15 13:26:48'),(7,'provident','inventore-esse-consequuntur-eaque-iure-ducimus-et','2021-11-15 13:26:48','2021-11-15 13:26:48'),(8,'est','quo-facere-non-consequuntur-magni-numquam-fugit-voluptates','2021-11-15 13:26:48','2021-11-15 13:26:48'),(9,'qui','labore-qui-voluptatem-dolorem-similique','2021-11-15 13:26:48','2021-11-15 13:26:48'),(10,'voluptates','aut-quod-et-tenetur-ullam','2021-11-15 13:26:48','2021-11-15 13:26:48'),(11,'molestiae','molestias-illum-in-id-pariatur-corrupti-id-odit','2021-11-15 13:26:48','2021-11-15 13:26:48'),(12,'architecto','recusandae-consequatur-dignissimos-eum-dolor-et-occaecati-suscipit','2021-11-15 13:26:48','2021-11-15 13:26:48'),(13,'maxime','quidem-molestiae-qui-in-assumenda-dolores-voluptas-aspernatur-placeat','2021-11-15 13:26:48','2021-11-15 13:26:48'),(14,'iusto','facilis-sint-eveniet-inventore-dolores','2021-11-15 13:26:48','2021-11-15 13:26:48'),(15,'quia','ex-officiis-explicabo-nihil-ea-voluptas','2021-11-15 13:26:49','2021-11-15 13:26:49'),(16,'corrupti','perferendis-cumque-laboriosam-odit-dignissimos','2021-11-15 13:26:49','2021-11-15 13:26:49'),(17,'tempore','voluptatem-rerum-earum-voluptatem-est-nihil-quia-quia-dolores','2021-11-15 13:26:49','2021-11-15 13:26:49'),(18,'non','corporis-quia-aut-magni-consequatur-neque-dolor','2021-11-15 13:26:49','2021-11-15 13:26:49'),(19,'sed','incidunt-consectetur-aperiam-corrupti-nisi-culpa-ut-nulla','2021-11-15 13:26:49','2021-11-15 13:26:49'),(20,'enim','unde-in-ut-porro','2021-11-15 13:26:49','2021-11-15 13:26:49');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2021_10_30_063525_create_posts_table',1),(6,'2021_10_30_132703_create_categories_table',1),(7,'2021_11_10_144113_create_customers_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,1,1,'Deserunt ratione et vel cupiditate dolores magnam est.','aut-omnis-voluptas-cum-et-rerum-a-architecto','<p>Quae vel consequatur explicabo impedit voluptatibus. Fugit quasi voluptatem sint amet illum aperiam sed. Ut soluta adipisci harum maiores fugit mollitia nisi.</p><p>Quasi exercitationem minus dolorem sed temporibus maxime. Aspernatur laborum molestiae tenetur a. Fuga pariatur amet in. Dolore dolor veniam enim odio qui velit.</p>','<p>Fuga modi at rem omnis pariatur culpa. Quis ipsum rerum est quaerat iusto.</p><p>Vel recusandae ut cumque eum. Id soluta nihil tempore nobis. Temporibus distinctio doloribus consectetur aliquid voluptates. Non voluptas voluptatum qui vitae sit ea quia dolores.</p><p>Nesciunt voluptatem id quia inventore fuga aut voluptas. Laudantium eos ex alias a iure enim. Earum et eligendi earum mollitia doloremque labore consequatur sed.</p><p>Asperiores qui itaque nihil in. Quaerat et aut sint rerum velit aut recusandae repudiandae. Ratione vel voluptatum totam quos eum ipsa laborum possimus.</p><p>Est non assumenda sed quia. Est magni qui consequuntur. Saepe facere doloremque sequi et nemo. Voluptas unde sit iure.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(2,2,2,'Et enim laborum aut quod.','eos-quo-ab-accusamus-dicta-quia-aut-officia-et','<p>Expedita quidem aut eaque quia. Autem ipsam commodi eum qui unde omnis neque. Inventore quia eum mollitia aut delectus.</p><p>Quibusdam sunt a officiis ut dolor illum et. Debitis amet ea accusamus est tempore voluptatum. Voluptate officia deleniti tempore sint nihil expedita error.</p>','<p>Ut natus aliquam aut et facere eos. Consequatur eveniet omnis id consequatur recusandae corporis impedit nesciunt.</p><p>Impedit et quo ipsa rerum. Et quia assumenda debitis iusto culpa numquam. Quis laboriosam labore velit. Eveniet labore recusandae ut omnis eligendi id sit.</p><p>Accusamus modi voluptatum recusandae rerum. Nisi non et quisquam aut. Quam et a non unde quod. Sint quo voluptatem a.</p><p>Eum necessitatibus eum repellat inventore qui id. Fugiat in dolorem consequatur dolorum. Qui ea fugit est nostrum.</p><p>Consequuntur perspiciatis necessitatibus porro odio veniam voluptas. Placeat autem amet ea cupiditate et quia nobis. Suscipit numquam harum porro ex.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(3,3,3,'Illo incidunt qui maxime et laborum et a.','deserunt-earum-officia-qui-et-nihil-atque-accusamus','<p>Veniam sunt eaque voluptatibus vero. Ut a aperiam ad exercitationem quibusdam. Ut quia consequuntur ipsam saepe aperiam maiores facere. Et ut ut nobis quisquam qui.</p><p>Quo corporis molestiae iusto autem. Minus distinctio dolorem dolores soluta debitis. In dolore ut quae perspiciatis est nulla minus. Omnis sit est est nihil modi modi.</p>','<p>Sit consequuntur reprehenderit voluptatum ea sed reiciendis non. Facilis dolores odio ut ut qui aperiam deleniti cum. Iusto placeat nihil consequatur.</p><p>Atque veritatis fugit quia magnam numquam dolorem voluptatibus. Consectetur eveniet nam odit aut. Magni ab ut sit cumque suscipit. Sit nisi ea rerum.</p><p>Inventore nulla nihil est et. Distinctio nulla iste id repudiandae asperiores. Id asperiores unde voluptas voluptatem iusto commodi eum perferendis.</p><p>Debitis quia optio itaque omnis. A repellendus error dicta repudiandae et. Occaecati tempora dolor aut in. Odio quam voluptates magnam suscipit rerum.</p><p>Autem eos dolorum totam est magni sunt voluptatibus. Maiores praesentium aliquid vel at recusandae occaecati cumque. Iste ipsum totam autem mollitia ut.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(4,4,4,'Earum dolores sed nulla natus.','incidunt-soluta-enim-deleniti-nisi-hic-voluptatibus-quam-repudiandae','<p>Eum consequatur nemo voluptas sapiente iusto. Mollitia ut alias modi velit. Et et quisquam qui porro amet molestias. Molestiae magnam occaecati consequatur aliquid facere.</p><p>Sit aut voluptatem aut eos non nihil sit. Ut ullam reiciendis quos quas quas. Tempora molestias repellendus et natus totam corrupti commodi corrupti. Aut in id sed repellat quasi tempore.</p>','<p>Perspiciatis et mollitia et non et asperiores. Sit quibusdam explicabo voluptatem ut illum vel. Voluptatem quia molestiae id velit et. Et alias enim nostrum animi modi magni necessitatibus.</p><p>Vitae ut voluptatem aliquam placeat saepe ratione et. Maxime et autem reiciendis. Neque eum maxime aut provident numquam.</p><p>Animi modi id minus beatae eaque cum et. Maxime voluptatem beatae voluptas quia cumque. Voluptatem aut dolorum ut eos sed. Unde in ut et distinctio qui quia eos sint.</p><p>Ut voluptatibus repellat et quod cum voluptatem. Rerum vero similique non autem ab. Dolor alias officia ipsam maxime dolores ut soluta.</p><p>Aut deleniti quia dicta ut quos earum reprehenderit beatae. Enim amet sed voluptates sit rerum placeat veritatis. Exercitationem aperiam explicabo labore maxime omnis velit voluptatem. Quis beatae provident debitis.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(5,5,5,'Et molestiae minus blanditiis ducimus voluptates.','perspiciatis-illo-laborum-deleniti-inventore','<p>Accusantium recusandae quis doloribus cupiditate non suscipit. Facilis distinctio quasi molestiae neque laborum et. Qui aut qui reprehenderit.</p><p>Debitis eos unde aperiam suscipit et quod modi. Nulla quas quaerat commodi laborum velit impedit occaecati. Necessitatibus explicabo odio vel optio hic. Ullam quisquam necessitatibus nihil minus est.</p>','<p>Sapiente repellendus illum quisquam totam maiores exercitationem. Ipsum eum sint quos. Non excepturi consequatur a dolorem dolores nobis quis.</p><p>Ut veniam magni aspernatur autem. Voluptate esse cumque delectus est nemo autem.</p><p>Et error exercitationem hic illo. Doloribus odio sunt qui maxime repellat illum minus. Ut sequi itaque et optio facilis et.</p><p>Quia qui fuga veniam nihil ut. Fugiat eligendi magnam sapiente ea sit.</p><p>Minima reprehenderit quaerat ut aspernatur fugit quo deserunt. Illum enim nesciunt veritatis et ut a. Magnam fuga molestias ratione libero. Quae corporis ut ratione aut deserunt voluptatum blanditiis.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(6,6,6,'Perferendis dolores quisquam eaque quo sint repudiandae.','aut-quia-et-maxime-id-neque-sit','<p>Vero qui amet a facere. Officia rerum praesentium ut quia modi earum eum quo. Adipisci delectus architecto est veniam natus. Maxime perspiciatis omnis repellendus amet veniam maxime.</p><p>Nemo consectetur hic aliquam sunt at dolorum non. Sit minima quam blanditiis quia sed vitae molestiae. Magnam voluptatem at natus iusto sint aut molestiae. Et ut maiores sunt laborum nostrum libero sint. Praesentium modi porro veritatis quisquam quaerat sit.</p>','<p>Sit ducimus nostrum temporibus corrupti dicta minus. Similique est velit error iure eum. Eligendi nisi eligendi distinctio nam quod facere quia. Praesentium delectus nemo molestiae praesentium.</p><p>Magnam voluptas mollitia incidunt delectus illum exercitationem. Incidunt qui quod exercitationem quia quos non. Facere eius suscipit quia autem earum. Alias sapiente ullam accusantium aliquid repellat ut.</p><p>Eos accusamus quidem consectetur quia dolorem. Reiciendis neque quia tempora nisi et aspernatur ea quidem. Doloremque blanditiis quia fugiat.</p><p>Voluptatem maxime eveniet porro. Sit ut sint consequatur laboriosam quia. In debitis ex amet maxime maxime error. Officiis facilis in nihil.</p><p>Nihil quos enim dicta facilis. Iure dolorem delectus et est laborum blanditiis. Ex aut temporibus similique amet. Ea totam et debitis dignissimos.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(7,7,7,'Dignissimos ipsa sit quia rem sint voluptatem corporis.','aut-blanditiis-consectetur-in-porro','<p>Alias voluptatem ut porro. Exercitationem aliquid qui amet suscipit sequi fugiat. Ut iste quia nam vero rerum sunt voluptate. Enim est iusto voluptate aut et sunt blanditiis. Nemo voluptatum et in beatae illum et voluptatem.</p><p>Qui quia ullam et sed iusto perspiciatis deleniti similique. Ea sit rerum facilis ut enim impedit. Recusandae repellendus repellendus fugit dolorum incidunt aut aut. Est omnis non voluptatem ea mollitia voluptas odio.</p>','<p>Sunt et est adipisci ut tempora amet. Sunt atque iusto et dolores. Illo eos natus perferendis explicabo.</p><p>Sint reprehenderit ut deserunt sit omnis ea aperiam quia. Sed cum rerum accusamus cum. Qui enim illo quo perspiciatis deserunt ipsa inventore.</p><p>Velit ab rem voluptatem praesentium ad. Quasi ut qui omnis aliquid. Fugit autem et quia perferendis. Libero optio possimus qui odit sit. Laudantium sed molestiae qui cum similique.</p><p>Odio ut adipisci harum veritatis. Est quasi reprehenderit sit cum doloremque. Labore ipsam omnis commodi qui ipsa aut. Illum ipsa earum ab. Enim accusantium temporibus ad deleniti quasi sit.</p><p>Eius recusandae magnam perferendis voluptatem facilis recusandae. Perferendis eveniet dolor unde veniam. Omnis aspernatur doloremque eligendi incidunt enim.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(8,8,8,'Dolorem consequuntur voluptatibus non asperiores dicta sequi.','reprehenderit-aut-ut-beatae-autem-ut','<p>Ut sed libero temporibus et earum omnis. Mollitia ea fuga eligendi laboriosam amet. Illo omnis sequi deserunt corporis assumenda.</p><p>Voluptate atque sunt soluta nam eos dignissimos. Corporis quibusdam eius numquam numquam tempora exercitationem voluptatem eligendi.</p>','<p>Libero temporibus est repudiandae. Deleniti aspernatur velit ut molestiae optio nobis. Molestias mollitia omnis vero impedit dolore quibusdam velit possimus. Sunt enim placeat voluptatem voluptate repudiandae hic.</p><p>Minima id aut et dolore autem. Maxime harum molestias laborum repellat facere. Cum et molestias quaerat et asperiores. Quia earum consectetur quaerat placeat doloremque magni non.</p><p>Sed consequatur sed ratione qui magnam velit similique. Aperiam sunt voluptatem dolorum eum aut reprehenderit est. Eos ipsa voluptatum possimus est et harum. Qui minus porro nihil quod ut.</p><p>Eligendi cupiditate est ea ab non numquam est. Unde iste commodi dolore qui tempora aut. Sit ut explicabo facilis ut est enim. Quas et autem illo id pariatur similique porro.</p><p>Fugiat ea ea tempora blanditiis sequi cumque in repellat. Optio deserunt quisquam distinctio aut libero. Odio quos velit dolores qui quo nihil iure. Et fugit quia tenetur praesentium.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(9,9,9,'Animi sint alias adipisci qui ad aliquam.','qui-ex-quia-ut-et-eos','<p>Reprehenderit debitis repellendus dicta quis commodi expedita. Praesentium id in veniam quidem dolor sint harum sit. Qui et aliquam architecto. Fugiat quisquam esse ullam et expedita exercitationem et.</p><p>Vel et provident dolorem iusto voluptatem. Et unde fuga aut ut. Culpa aut soluta iste.</p>','<p>Aliquam est ex beatae esse voluptas officiis laboriosam corrupti. Velit non illum cum beatae omnis nulla. Porro esse id voluptatem et. Ab odit praesentium quidem quisquam porro. Vitae ullam eaque id vitae voluptatem et velit.</p><p>Hic dignissimos accusantium et officia quas dolores sit. Excepturi vero nihil cupiditate at est sit voluptatem. Qui sit et sed eos incidunt vel magnam. Nihil vitae ipsa debitis est natus ut.</p><p>Velit eos magni eaque pariatur placeat numquam tempore. Unde enim voluptatem laborum labore. Vel nam placeat saepe eligendi assumenda doloremque quia.</p><p>Nihil sed mollitia autem et mollitia ea molestiae. Eos voluptatem id molestiae consequuntur enim fuga. Quae omnis nobis ut animi laudantium harum. Sit officia veniam et harum. Modi laboriosam accusamus vitae minima.</p><p>Quis aut facilis ullam voluptatem nesciunt quia quae. Corporis dolores porro quidem maiores. Et non accusamus est velit ratione voluptas.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(10,10,10,'Amet beatae voluptate est adipisci numquam ut.','quo-odio-ad-autem-aliquid-itaque-neque','<p>Inventore quia corrupti quasi beatae non dolor voluptas. Ducimus nemo sapiente dolores est sed aut accusamus. Aut aut porro a voluptatum. Totam similique quam quia modi optio consequatur ut.</p><p>Ducimus sit nostrum enim dolorum voluptatem nemo cupiditate. Tenetur at quia itaque molestiae incidunt et. Velit cumque facilis ut repudiandae voluptatibus.</p>','<p>Repudiandae iste earum unde cumque in ut. Quo hic ab velit quos facere. Laboriosam maxime illo ab.</p><p>Aut minima id qui qui sint deleniti. Ratione et corporis nobis amet. Similique rerum blanditiis vero amet nostrum. Officia fuga necessitatibus sint pariatur et.</p><p>Eum accusamus ut velit et. Amet qui labore numquam hic blanditiis. Quibusdam dignissimos beatae officia tempora culpa. Et magni provident ea ad.</p><p>Qui accusantium et dolores natus eum dolorem sit. A neque inventore consequatur inventore quia aut saepe. Doloremque odit ullam repellat at. Quaerat voluptatem tempora reprehenderit laudantium nihil.</p><p>Temporibus sint enim sint et aut sequi. Accusamus consequatur id reprehenderit similique voluptas dolores rem. Quo illo omnis qui asperiores non veniam.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(11,11,11,'Sequi aut omnis at.','et-quis-labore-animi-quis','<p>Quia eligendi repellat excepturi expedita consectetur ea autem. Doloremque provident sunt atque quam dolor omnis. Molestiae corrupti qui necessitatibus. Molestiae sit qui hic ratione dignissimos error natus assumenda. Commodi eaque corporis et et incidunt saepe qui.</p><p>Eligendi eum dolorem recusandae quis ut sed aliquid numquam. Accusantium pariatur iusto dolores eius sed. Sint quia commodi dolore eligendi. Voluptatem quasi sed incidunt nulla.</p>','<p>Repellendus aut exercitationem illum voluptates nisi rem. Aut aperiam consectetur dolore labore nemo distinctio accusamus. Asperiores ut aliquam dolorem quisquam voluptatem commodi.</p><p>Voluptas reprehenderit ea et nihil nemo. Et facere rerum sed eum. Corporis impedit id in et est.</p><p>Hic ducimus enim nulla odio culpa ea. Reiciendis voluptatem dicta qui commodi quia dolore iusto. Est consequatur illo et non et et tenetur. Non nihil accusamus sunt eum.</p><p>Veniam quod et exercitationem exercitationem. Voluptatibus eum totam ut quas. Nihil consequuntur accusantium illo qui et. Maiores incidunt delectus beatae expedita aspernatur amet.</p><p>In harum quia quis voluptatibus eveniet qui eum. Et facilis sapiente laborum sapiente quidem quia. Repellat et repellat nulla et ducimus.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(12,12,12,'Voluptatem ipsum officiis tempora.','placeat-earum-consectetur-quibusdam-hic-iusto','<p>Sint qui qui perferendis reiciendis sit sapiente ratione. Perspiciatis quis alias quia maxime nobis voluptatem et. Sapiente nostrum soluta placeat et libero voluptate exercitationem.</p><p>Nostrum tempore similique nesciunt est libero ad. Non omnis eius aut. Omnis debitis repellat mollitia.</p>','<p>Dolores sapiente ullam iste iste sunt explicabo non. Assumenda eum veritatis eaque possimus harum tenetur cupiditate.</p><p>Et at iure similique atque voluptatem magni. Ratione repellendus optio qui in sit et qui. Doloremque velit et consequatur ut. Sit est velit exercitationem deleniti.</p><p>Quo voluptatem laudantium omnis tempora et. Vel numquam saepe atque ut.</p><p>Repellendus numquam mollitia quia asperiores ut in. Corporis quia esse et rerum. Dolorum sed saepe ratione sapiente. Aut enim illum qui id. Repellendus necessitatibus autem sit qui ut.</p><p>Exercitationem qui dolores adipisci aspernatur nemo et. Aut qui rerum vero cupiditate delectus dolor excepturi.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(13,13,13,'Eius distinctio exercitationem veniam sunt repellendus voluptatem vel.','enim-nihil-dolor-corrupti-sunt-non','<p>Harum molestias aut ipsum velit ut. Quia qui qui molestias sed temporibus eos expedita aut. Aut quibusdam suscipit impedit quis.</p><p>Veritatis voluptates a non. Id consequatur incidunt aut quia qui eos veniam. Hic odit vel veritatis est dolor. Cupiditate qui et iste sunt totam rerum molestias.</p>','<p>Et nostrum in accusantium fugiat dolorem enim. Ipsum sequi dolores voluptatibus illum aut voluptatem velit quos. Provident officia maiores quisquam sed provident labore voluptas laboriosam. Esse aspernatur et perspiciatis alias possimus aspernatur et.</p><p>Nam magnam qui error quia rem. Voluptates totam quibusdam nihil atque id. Aliquam dolores nesciunt ut voluptatem laudantium ab quasi. Voluptas repudiandae laudantium non id. Placeat delectus nesciunt quisquam.</p><p>In totam quasi quo corporis dolores reiciendis. Mollitia magni aut voluptatibus quae sint enim. Iure est tempore harum praesentium ullam tempora voluptatem. Dolorem dolor enim dolor nesciunt non aut ipsum.</p><p>Expedita molestiae doloremque quia soluta. Consequatur maiores dolores qui id quo officia eos. Laudantium qui quo quam aut debitis sit et. Esse quia illo consequatur itaque animi.</p><p>Porro consequatur sed iusto nostrum voluptatibus aut. Et praesentium tempora in molestiae atque. Id suscipit dolorum molestias voluptates qui molestias.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(14,14,14,'Non rerum quis necessitatibus autem.','et-doloribus-sunt-et-et-exercitationem-et','<p>Natus architecto iure quod et. Sunt eum laboriosam ut iure. Ut omnis praesentium sed qui non tempora deserunt. Maxime ut quo dolor est accusamus voluptatem.</p><p>Magnam exercitationem et quisquam veniam non nisi. Odio omnis consequatur soluta iste alias soluta quia. Enim necessitatibus repellendus rerum quaerat sit. Excepturi culpa et voluptatem facere eum aliquam.</p>','<p>Blanditiis fugiat velit suscipit repudiandae tenetur. Officia repellat sequi perferendis soluta. Quia sunt corrupti est quas quo et natus. Adipisci quas pariatur doloremque. Reiciendis nostrum numquam nihil sapiente similique.</p><p>Earum omnis non reiciendis occaecati recusandae distinctio maxime maxime. Qui qui eaque vel et.</p><p>Incidunt neque quia consequatur quia. Soluta sequi delectus quo earum repudiandae. Maxime et asperiores ut suscipit sit reprehenderit. Et sequi qui dicta quis consequuntur velit. Ea vitae ex deleniti voluptatibus mollitia.</p><p>Numquam inventore unde iure omnis autem perspiciatis aliquam earum. Cupiditate aut quia aut eos nisi officiis earum.</p><p>Nobis deserunt dolorem aut vitae autem placeat tenetur. Eligendi ea eligendi vero quo repellat. Quasi dolor praesentium fugiat.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(15,15,15,'Sunt cupiditate tempora quaerat nesciunt magnam quia dignissimos.','commodi-tempore-voluptatum-velit-modi-libero-aut','<p>Maxime iste tenetur molestiae quasi. Sequi provident corrupti odit laborum commodi minus. Velit ullam neque qui atque. Dolorem nostrum velit praesentium totam quia sint rerum.</p><p>Esse error rerum commodi blanditiis. Sed assumenda quibusdam aut reprehenderit et et.</p>','<p>Vel blanditiis dolores libero. Voluptas aperiam vitae ea voluptas earum. Aperiam est et alias necessitatibus a sit. Ea sunt nobis aut ducimus harum aut aut.</p><p>Sed voluptas tenetur culpa eum quae quo. Velit magni quaerat sunt placeat. Aut cumque nostrum numquam soluta vitae aut. Unde sint perspiciatis ducimus dolorem vero beatae.</p><p>Rerum soluta asperiores sequi recusandae voluptatum. Odit animi neque non rerum officia non illum. Omnis quae nostrum voluptate magni labore. Eius recusandae unde voluptas natus.</p><p>Necessitatibus tempora laboriosam et. Eos ipsa ipsa incidunt. Sunt assumenda neque et dignissimos nam. Similique architecto repudiandae enim eum necessitatibus ratione inventore.</p><p>Voluptas molestias et aspernatur. Distinctio qui vero animi et ad. Accusamus labore distinctio dignissimos.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(16,16,16,'Quia quidem et dignissimos ea possimus quaerat accusantium.','sed-eos-quaerat-et-dolor','<p>Fugiat dolores laborum amet et. Nihil sed quibusdam culpa adipisci labore. Officia excepturi officiis eveniet illum. Sit consequuntur vero omnis voluptatem dolorum occaecati. Dolorem magnam eaque sequi provident fuga aspernatur pariatur eius.</p><p>Voluptatem placeat quibusdam omnis voluptas earum at dignissimos. Harum sunt repellendus non quia et. Asperiores soluta aliquid quo quisquam ut. Non libero vero vel tempora sed non.</p>','<p>Sed enim officiis ratione. Cum esse nulla quos voluptatum maxime neque veniam. Non reprehenderit id deserunt nobis omnis dolores nam. In ea nesciunt voluptatem reprehenderit culpa odio.</p><p>Consectetur ut praesentium architecto sed quibusdam ullam quae. Harum adipisci quisquam alias neque tempore. Sunt rerum omnis et et in.</p><p>In adipisci nihil nobis cupiditate omnis quia. Non sed et officiis perferendis.</p><p>Qui nihil praesentium mollitia provident blanditiis. Et ut nisi qui eligendi. Voluptas sapiente est cum mollitia iusto ad. In est atque et nulla incidunt enim necessitatibus ut.</p><p>Deleniti quia nostrum hic. Tempore perspiciatis omnis modi. Rerum ducimus aut sed enim doloribus ullam corporis.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(17,17,17,'Debitis fugiat et sed vitae est laudantium.','laboriosam-autem-hic-ab-voluptatem-et-et-fugit-alias','<p>Et in eligendi qui eos. Voluptas dolores vero necessitatibus quod voluptate. Blanditiis unde in consequuntur rem voluptatibus quisquam earum.</p><p>Quis ut distinctio amet vitae debitis doloremque et. Ea saepe ut sint qui et omnis. Est voluptas est nulla sint error incidunt. Et qui ex magni autem repudiandae.</p>','<p>Est ut officiis non delectus cum. Sint distinctio laborum voluptatem et totam accusantium ut aut. Cum voluptatem ea est et esse aspernatur veritatis.</p><p>Est incidunt exercitationem optio qui fugiat repellat eum autem. Commodi voluptates tenetur quae et expedita quis ut. A ratione et magni exercitationem dolores et. Sequi hic rerum a tenetur.</p><p>Id officiis nobis temporibus non veniam cupiditate hic. Voluptas dolor tempore perspiciatis officiis dolores.</p><p>Amet quia consequatur fugit aut rerum velit et molestiae. Omnis necessitatibus ut vero molestiae corporis.</p><p>Quia impedit quo dolores consequatur dignissimos maxime sed animi. Aut ex sunt rem quia architecto ratione. Architecto optio non consequatur numquam. Deleniti sequi accusamus voluptas earum beatae quibusdam rerum.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(18,18,18,'Aperiam corporis consequatur officia.','minus-labore-error-voluptas-ab','<p>Et et veritatis nulla veniam. Blanditiis saepe ullam quaerat dolores.</p><p>Maiores eveniet quaerat veniam quae fugiat quia minus. Nesciunt libero et molestiae consectetur. Beatae laboriosam sit illum eum perspiciatis nulla beatae sit.</p>','<p>Illo et cumque consequatur numquam amet rem. Nulla facilis incidunt eum eaque dolor perferendis id explicabo. Similique repellendus quia eos nihil in quis optio.</p><p>Officia dignissimos adipisci laudantium unde impedit reprehenderit. Nesciunt ut repellat repellendus ex. Quia autem sapiente provident nam vitae. Quis consequatur voluptatem quia non modi.</p><p>Est ipsum dolorum voluptas voluptatem minima eum error. Quis vitae sed architecto quia sint eius.</p><p>Aliquam mollitia dolores ducimus. Earum consequuntur minus libero sint veritatis qui qui. Repudiandae eos placeat minus incidunt qui laboriosam.</p><p>Nemo recusandae iusto dolorem ipsa. Eveniet at atque officia nostrum ducimus deleniti accusamus. Dolorem dolorem sunt maiores recusandae eius iusto labore. Tempore dolorem eum blanditiis perferendis.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(19,19,19,'Saepe corporis nostrum non explicabo omnis quisquam totam.','atque-laborum-sunt-ut-sunt','<p>Placeat nihil nisi eveniet. Deserunt pariatur delectus tempore voluptatem tempore qui. Cupiditate modi libero ut quas. Officiis pariatur ipsam modi aut velit accusantium blanditiis.</p><p>Sequi quia molestiae blanditiis fugit qui. Ut voluptates praesentium repellat consequatur. Voluptas iure aut repellendus eum delectus adipisci. Quia dicta reprehenderit aut.</p>','<p>Et perspiciatis est praesentium sed et adipisci et. Sequi commodi quia asperiores aperiam earum velit. Sint dolorum sint velit consequatur. Necessitatibus quibusdam accusantium ut error veniam est.</p><p>Dolorem rerum dolore a deserunt. Consequatur eligendi iure illo ipsa.</p><p>Non illo autem inventore voluptatum dicta est. Amet libero ullam et dolorem ullam illo consectetur. Perferendis vel eos tempora voluptatem officiis.</p><p>Aut fuga incidunt quia quia voluptate eveniet omnis. Est quo cum id cum numquam ad. Omnis qui et ratione natus. Non atque provident vitae minus nihil. Ut suscipit consequuntur similique ut.</p><p>Qui ducimus non laudantium corporis sed quibusdam. Laudantium impedit maxime quidem vero aut eligendi sapiente. Et et veniam culpa eos blanditiis saepe adipisci. Rerum ut blanditiis voluptatem cupiditate alias enim.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL),(20,20,20,'Nesciunt voluptate molestias laboriosam blanditiis ipsam ad.','repellendus-qui-voluptatibus-ipsa-voluptatem-eveniet-quas-qui','<p>Rem debitis aliquid iure temporibus maiores veniam culpa similique. Quia similique molestiae odio minus consequatur. Modi quos ipsa dolores et. Aliquam omnis vero quis aut expedita ut sint.</p><p>Necessitatibus quasi enim eum et quis saepe. Ipsum esse itaque nam id. Ratione tempore ducimus enim doloremque.</p>','<p>Facere repudiandae ex repudiandae unde atque. Repellendus laudantium dolorem illum libero. Laborum magnam tempore dolore voluptates ab quisquam voluptatem corrupti.</p><p>Quod quae placeat debitis quia debitis deserunt officiis. Asperiores ut est vero ipsum et. Non vero quas vitae ut sit iusto.</p><p>Similique quia nulla rerum officia voluptatum. Atque voluptas officiis velit soluta. Nihil doloribus eos commodi labore ad.</p><p>A a soluta optio eos. Exercitationem veniam et explicabo. Eius facere consequuntur dolor nesciunt.</p><p>Aut molestiae in vitae ad. Et cum eum neque dolorem hic deleniti. Perferendis dolores quia sapiente. Vel similique quia laudantium quidem sit libero.</p>','2021-11-15 13:26:49','2021-11-15 13:26:49',NULL);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jermaine Spinka','sasha24','keaton04@example.org','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','iYRIfWfMGC','2021-11-15 13:26:48','2021-11-15 13:26:48'),(2,'Saige Homenick DDS','roxane21','walker.mafalda@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Mx7eAXgPMZ','2021-11-15 13:26:48','2021-11-15 13:26:48'),(3,'Dr. Cristobal Barrows II','niko00','wyman.newton@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7a90xIRrH0','2021-11-15 13:26:48','2021-11-15 13:26:48'),(4,'Shania Wunsch','maybelle45','kellen50@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','AEYkRVCHV1','2021-11-15 13:26:48','2021-11-15 13:26:48'),(5,'Austen Botsford','iokeefe','madelyn02@example.org','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','cORWuzvtA7','2021-11-15 13:26:48','2021-11-15 13:26:48'),(6,'Dewitt Murazik','melissa.watsica','hkeeling@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','h2fGfWivk1','2021-11-15 13:26:48','2021-11-15 13:26:48'),(7,'Vaughn Cassin','dweimann','aracely62@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','48sfwx3WNv','2021-11-15 13:26:48','2021-11-15 13:26:48'),(8,'Ms. Elda Schuster II','vrohan','kautzer.duane@example.org','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','tHbwOtAZrY','2021-11-15 13:26:48','2021-11-15 13:26:48'),(9,'Aliza Olson','felix.mills','mohamed61@example.com','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FQL5hJvI2B','2021-11-15 13:26:48','2021-11-15 13:26:48'),(10,'Maribel Jacobi Jr.','fpouros','teagan61@example.com','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','J6tG9JiyfP','2021-11-15 13:26:48','2021-11-15 13:26:48'),(11,'Marcia Romaguera','emma.fritsch','olaf89@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fLx2IFTzPy','2021-11-15 13:26:48','2021-11-15 13:26:48'),(12,'Arne Strosin I','antonia25','lindsay18@example.net','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','GiarxGzTiM','2021-11-15 13:26:48','2021-11-15 13:26:48'),(13,'Stan Jones','canderson','antonetta54@example.com','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','WdLVxLGpYc','2021-11-15 13:26:48','2021-11-15 13:26:48'),(14,'Dell Dickens','barrett.satterfield','hbailey@example.org','2021-11-15 13:26:48','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','c6zgu9vw0t','2021-11-15 13:26:48','2021-11-15 13:26:48'),(15,'Ms. Susana Murphy','diana.mitchell','kaci.pollich@example.net','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','yzGykSUdQV','2021-11-15 13:26:49','2021-11-15 13:26:49'),(16,'Susana Fay','emard.anastacio','brekke.jammie@example.org','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','2746k2H1Ct','2021-11-15 13:26:49','2021-11-15 13:26:49'),(17,'Elnora Koss I','selina15','sid.berge@example.com','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','fdRBI4oo9F','2021-11-15 13:26:49','2021-11-15 13:26:49'),(18,'Modesta Moore DVM','bkunde','gillian.baumbach@example.net','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','waFCnsuhBK','2021-11-15 13:26:49','2021-11-15 13:26:49'),(19,'Prof. Alvis Larkin DVM','tquitzon','lemke.hilton@example.net','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','XxHr79nqHg','2021-11-15 13:26:49','2021-11-15 13:26:49'),(20,'Prof. Rafael Gleason DVM','jayne43','columbus.spencer@example.com','2021-11-15 13:26:49','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','FisQg0vcqR','2021-11-15 13:26:49','2021-11-15 13:26:49');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-17  1:31:14
