/*
SQLyog Ultimate
MySQL - 8.0.26 : Database - api_event
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `event_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `event_uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'https://picsum.photos/300/200',
  `event_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `event_start` timestamp NULL DEFAULT NULL,
  `event_end` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `event_uuid` (`event_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `event` */

insert  into `event`(`event_id`,`event_uuid`,`event_name`,`event_picture`,`event_desc`,`event_start`,`event_end`,`created_at`,`updated_at`) values 
(1,'34cd98f4-4d28-498b-9617-2cb60db5fb7f','Rathtown','https://picsum.photos/id/17/200/300','Minima laborum delectus cum eligendi repellendus. Cum hic ut pariatur alias est eius enim. Quis ut tempore repellendus necessitatibus vero. Consectetur et inventore ut quis aliquid molestias.','2021-05-08 08:00:00','2021-05-08 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(2,'b970fac8-fdbc-4e8c-8928-3dcec3913a4e','North Coraliefort','https://picsum.photos/id/164/200/300','Dicta nesciunt porro nam modi nulla earum. Nihil earum cupiditate dolores dolores eum.','2021-10-04 08:00:00','2021-10-04 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(3,'556fd653-a8cc-4164-8f58-d7a13c8ce184','East Augusta','https://picsum.photos/id/137/200/300','Omnis dolor qui consequatur iusto qui velit error tenetur. Voluptas repellendus possimus qui alias quaerat inventore earum. Sunt fuga soluta qui maxime odio facilis. Aspernatur sed quis voluptatum accusamus dolor consectetur iusto. Velit molestiae quam sed voluptates minus iste.','2022-04-03 08:00:00','2022-04-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(4,'1f0f6b76-3b75-446a-b328-7891a7403f10','Kennediland','https://picsum.photos/id/164/200/300','Non in sapiente magnam dolor maiores facilis. Cum asperiores libero veniam nesciunt quis repellendus accusantium. Quia nulla ut quibusdam possimus eius ab.','2021-10-11 08:00:00','2021-10-11 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(5,'9a2f081d-163a-4903-99a9-fd94c77d8e06','North Ernesto','https://picsum.photos/id/36/200/300','Nesciunt enim et omnis quia necessitatibus. Necessitatibus odit totam sed aperiam eius maxime fuga facere. Ut corporis qui aperiam consequatur. Quod et nisi qui molestiae facilis ut et vero.','2022-08-20 08:00:00','2022-08-20 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(6,'a20b2850-7f47-4b98-b91a-6490d5ed34f0','Stanfordchester','https://picsum.photos/id/151/200/300','Tempora et quia occaecati rem nulla itaque. Aut laboriosam inventore culpa et. Aliquid quo omnis eum similique. Laborum quos tenetur dolor ipsa at cumque hic.','2021-06-10 08:00:00','2021-06-10 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(7,'a9b63289-c14e-4a0f-92a5-1b5e6c8fac0f','West Eulahshire','https://picsum.photos/id/131/200/300','Animi enim quae facere rem quos. Sint iure error aut sed et. Voluptatum quod sit illum quis. Quibusdam et voluptas architecto voluptatem.','2021-01-30 08:00:00','2021-01-30 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(8,'bb60e2d7-e723-4f7e-a32c-75522b50fb4f','Lake Nicolas','https://picsum.photos/id/100/200/300','Et sapiente iste nulla consectetur eum est assumenda. Quam iste ipsum expedita consequatur laboriosam omnis nobis voluptatibus. Nulla atque dolores voluptas et eligendi. Modi praesentium nulla repellat numquam ut.','2021-05-29 08:00:00','2021-05-29 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(9,'cc80ceaf-dedd-476c-a3a0-683b3a19b938','Koelpinton','https://picsum.photos/id/98/200/300','Doloremque voluptates dolores commodi aut corporis amet. Consequatur nesciunt omnis repudiandae hic ducimus corporis numquam. Rerum molestiae nulla et temporibus atque. Cupiditate aut est rerum nisi et enim maiores.','2020-12-13 08:00:00','2020-12-13 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(10,'ebcde90f-f444-4dae-85e8-b10ace0c4652','West Adalberto','https://picsum.photos/id/124/200/300','Aut atque distinctio quia accusantium dicta. Nesciunt enim sequi nulla quidem dolores voluptatibus. Eum atque dolor ducimus. Minima voluptatem sit consequatur quisquam quo quod quibusdam.','2021-06-03 08:00:00','2021-06-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(11,'f7902993-bb1c-437e-9b77-0b623267efd7','Port Baileyfort','https://picsum.photos/id/108/200/300','Consequuntur praesentium qui mollitia alias. Eius ullam soluta ducimus sunt voluptas ex. Earum dolores sed rem maxime et aut. Aut ea facilis quia illum.','2022-01-10 08:00:00','2022-01-10 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(12,'1bbbe4c5-c4d2-4639-b0e1-7a53693f1ff7','Murrayhaven','https://picsum.photos/id/2/200/300','Ut sunt maiores facere voluptates ea accusantium ut ut. Temporibus quasi modi officia est fuga doloremque. Excepturi temporibus consequatur doloremque blanditiis. Facilis expedita laudantium labore rerum quas possimus quo.','2022-05-05 08:00:00','2022-05-05 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(13,'0d220f5d-ed19-4d81-9d21-2a3e94235fad','Lake Leonardbury','https://picsum.photos/id/25/200/300','Nesciunt occaecati quas dicta. Quasi aut quis ad ut ea aut eum. Ut qui at quia hic. Numquam nobis nisi voluptas provident error quibusdam voluptas.','2021-01-15 08:00:00','2021-01-15 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(14,'0412634c-3b29-4db9-a03a-e48bb7c22467','Port Steveville','https://picsum.photos/id/106/200/300','Molestiae ex iure voluptas labore aspernatur dolorem odio. Dicta tempora error rerum voluptatem beatae et. Optio ducimus facilis ut et omnis minus.','2022-04-13 08:00:00','2022-04-13 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(15,'1b37a299-418c-4266-9fd1-de3a5fcd2648','Kendraburgh','https://picsum.photos/id/85/200/300','Est dolorum dolore beatae. Et voluptatem quia asperiores explicabo. Quia consectetur aut temporibus modi omnis officia nam. Modi ut exercitationem accusamus accusantium.','2021-10-20 08:00:00','2021-10-20 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(16,'d9daa716-1d84-4ada-b607-5ccb161b21a0','East Clare','https://picsum.photos/id/62/200/300','Laborum ut facere odit deserunt occaecati neque nesciunt. Ut qui nam perspiciatis dolorem vel est. Hic aut ratione officia nulla eligendi quos optio. Accusantium sit placeat quisquam magni fuga ipsum est qui.','2022-02-22 08:00:00','2022-02-22 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(17,'9edec207-2f5b-4f3f-b62a-54e4da4ea907','Bashirianton','https://picsum.photos/id/141/200/300','Ea molestiae expedita distinctio est. Voluptate exercitationem adipisci quo. Molestiae sunt dolorem ipsam tempora et. Ducimus debitis iste unde minus repellendus quisquam iure.','2022-03-20 08:00:00','2022-03-20 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(18,'d1d33852-0a39-4d06-9bb3-b92b04233095','North Sydney','https://picsum.photos/id/112/200/300','Dolorum iste incidunt accusamus occaecati. Odit minus est commodi iusto et quisquam deserunt. Quia repellendus non molestiae non accusantium ducimus velit. Consequatur et culpa alias accusamus.','2021-09-10 08:00:00','2021-09-10 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(19,'91f243c4-bd74-4722-97b0-10bd033cbc3c','Kiehnfurt','https://picsum.photos/id/147/200/300','Ratione blanditiis itaque vitae quae ut velit possimus. At praesentium qui temporibus nesciunt excepturi cumque ut.','2022-01-04 08:00:00','2022-01-04 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(20,'385aa722-98d6-45fa-bc85-36282c796726','Bauchstad','https://picsum.photos/id/125/200/300','Sit unde tempore porro cumque. Hic quidem et et esse aut voluptate porro.','2022-07-02 08:00:00','2022-07-02 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(21,'1a96bd40-160a-4669-9407-c3066ae3e561','Franciscaborough','https://picsum.photos/id/44/200/300','Sapiente non quas facilis deleniti. Ullam id et facere velit corporis.','2021-11-14 08:00:00','2021-11-14 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(22,'f7101a68-0e23-4f0c-b025-06ca27712e1e','Lake Rasheed','https://picsum.photos/id/140/200/300','Est officiis veritatis non eaque explicabo. Aut quos veritatis ab blanditiis pariatur quas porro.','2021-06-13 08:00:00','2021-06-13 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(23,'53785263-fbbe-4019-8a38-58e69c38530d','Funkmouth','https://picsum.photos/id/18/200/300','Maxime dolor velit ut expedita quae veniam. Voluptas laborum in voluptates voluptates. Ipsa ut nisi qui suscipit consequatur ut quia. Voluptatem architecto nihil non nesciunt alias eaque sit sapiente.','2021-10-31 08:00:00','2021-10-31 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(24,'7c9b7c6c-1402-4a54-b820-48d3f74df4ce','East Jaclynport','https://picsum.photos/id/63/200/300','Quidem repudiandae pariatur ea sequi dolore occaecati quo. Amet illo quisquam modi quia quos et eos. Libero eos quae consequatur ipsum est.','2022-05-30 08:00:00','2022-05-30 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(25,'ef93bcba-3081-485a-9bdc-c9a453a2ec1e','Schimmelville','https://picsum.photos/id/164/200/300','Minus voluptates doloribus quidem tempora velit similique quae. Possimus maiores laborum provident esse laboriosam sed dolor. Sit deserunt impedit pariatur est iste. Dolor consequatur rerum et dolores.','2021-04-16 08:00:00','2021-04-16 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(26,'2e0bbbbf-b4b3-4e83-8472-f624c7b8c32d','West Aaliyah','https://picsum.photos/id/1/200/300','At in officiis temporibus molestiae incidunt. Doloremque sed sit fuga et officia. Corporis totam laborum eos omnis soluta in.','2021-10-18 08:00:00','2021-10-18 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(27,'71e0792d-0b98-4c3b-891a-0cdeef85747f','East Idell','https://picsum.photos/id/1/200/300','Incidunt voluptatum sunt est maxime. Et velit molestias aut a. Architecto quis possimus sunt. Illo unde cum laboriosam adipisci labore iste voluptatibus.','2021-09-11 08:00:00','2021-09-11 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(28,'cf68124c-0b67-426b-8547-847a31e83c64','Ortizborough','https://picsum.photos/id/68/200/300','Optio sit minus qui. Quibusdam cupiditate qui delectus velit.','2021-04-14 08:00:00','2021-04-14 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(29,'c5036162-b701-4c44-bb70-1e53551a9a7c','East Cotyburgh','https://picsum.photos/id/152/200/300','Repellendus nihil vel explicabo sed quisquam. Qui error odit aperiam ut. Eveniet id molestiae vel repudiandae.','2022-01-17 08:00:00','2022-01-17 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(30,'af00d05e-3723-44b3-b658-735d269dfdb9','Lake Bayleechester','https://picsum.photos/id/153/200/300','Quae et sunt error corrupti. Pariatur est cumque hic minima. Vero deserunt sit deserunt aspernatur id.','2021-08-27 08:00:00','2021-08-27 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(31,'ed73de0c-0a13-49c2-84db-b03c4c12e457','Macshire','https://picsum.photos/id/15/200/300','Itaque voluptatem asperiores autem voluptatem earum. Libero ut et sit odio aut at. Tempore aliquam natus suscipit omnis labore dolores.','2021-07-15 08:00:00','2021-07-15 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(32,'73c38f20-6aba-4828-a91c-7c79acedb3fc','South Elyssa','https://picsum.photos/id/14/200/300','Voluptas quia quis expedita consequatur. Omnis voluptas fugit ab dignissimos architecto. Ducimus earum sint nulla architecto autem beatae. Nam consequatur ab vero aut eligendi cum et.','2021-08-18 08:00:00','2021-08-18 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(33,'f7dda346-3f27-4eb0-b25c-f5d12ee87a16','East Rosariofurt','https://picsum.photos/id/1/200/300','Et eveniet aliquam aut distinctio sapiente eum officiis. Numquam eum adipisci sed voluptate alias. Vero ratione totam ab voluptates iste.','2022-04-02 08:00:00','2022-04-02 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(34,'5f660614-2628-4416-92f3-307e46e8e907','Alanfort','https://picsum.photos/id/108/200/300','Quibusdam numquam blanditiis aut quas eos sint. Reprehenderit et voluptas qui. Laborum et culpa quaerat laborum.','2022-03-15 08:00:00','2022-03-15 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(35,'0109b3f8-5f72-4132-bf4d-431fa0d7b55c','East Laurie','https://picsum.photos/id/193/200/300','Sit pariatur non cumque unde. Aut laboriosam iusto ipsam aut.','2022-03-21 08:00:00','2022-03-21 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(36,'733aca3b-98f4-4905-b05e-8992a8b2fff3','Prohaskaburgh','https://picsum.photos/id/95/200/300','Maxime repudiandae ad eum cupiditate tempora eaque et rem. Velit incidunt aut molestiae fuga minus vero aut. Inventore enim vel qui velit nihil sunt eum. In eaque tempora ut consequatur earum ipsa.','2021-02-03 08:00:00','2021-02-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(37,'3fe2686f-63dc-4659-a9ef-0f4fb159a953','South Alfredachester','https://picsum.photos/id/94/200/300','Dolorem rerum porro ut magnam voluptatem. Vero eligendi nesciunt aut quod. Deleniti voluptas eius molestiae deserunt laborum et. Sint quia non explicabo nulla.','2022-04-15 08:00:00','2022-04-15 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(38,'16c10678-2870-492d-8938-0d9cc1e7f23a','Lake Mikaylafurt','https://picsum.photos/id/169/200/300','Ut laborum temporibus rerum recusandae numquam. Ullam aperiam sunt consequatur cumque odio iste quae officia. Blanditiis modi in totam qui inventore placeat.','2022-03-19 08:00:00','2022-03-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(39,'9dcdf39d-2d7b-4ea3-abf1-31dd2e684fe7','Goldnerborough','https://picsum.photos/id/46/200/300','Totam nihil perspiciatis ut voluptatem architecto eum minus. Maiores atque ipsa itaque. Velit illum reiciendis consequatur dolor minus velit aut pariatur. Dicta consectetur sint itaque sed delectus iste quos.','2021-02-24 08:00:00','2021-02-24 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(40,'0e05de23-bd3e-4b54-b9bd-1bf2e7ef420f','Valentineton','https://picsum.photos/id/134/200/300','Dignissimos corporis error voluptatibus aut. Nisi eos sequi nulla deleniti rerum. Tenetur tempora in non quis. Velit est omnis temporibus.','2021-09-26 08:00:00','2021-09-26 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(41,'484d01b1-05ce-4922-8318-31e3548c1b50','Aliviaside','https://picsum.photos/id/61/200/300','Est sint iste nihil. Odit quas ea voluptatibus voluptatum. Aliquam a qui in reiciendis totam et. Et reprehenderit corrupti natus libero eligendi.','2021-09-03 08:00:00','2021-09-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(42,'cf970696-7218-43be-91b2-2b3cb93d03d6','South Inesshire','https://picsum.photos/id/35/200/300','Non quasi soluta deserunt molestiae est itaque esse. Iste enim molestiae maxime dolores enim aut fugiat.','2021-05-18 08:00:00','2021-05-18 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(43,'ff52085f-d657-448b-a5ec-71567bd7d1c9','Port Orastad','https://picsum.photos/id/140/200/300','Assumenda qui enim aliquam quo. Magnam quasi labore aliquam et. Nesciunt perferendis sequi quis sed qui aut omnis.','2022-06-18 08:00:00','2022-06-18 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(44,'1b22c0ca-252d-4e11-ad32-430c3552f108','Rosinamouth','https://picsum.photos/id/114/200/300','Officia debitis eum voluptatem numquam fuga sed. Laborum esse suscipit velit ut et unde voluptatem quod. Aliquid sapiente doloremque maxime labore qui velit amet. Non ex dolores in aspernatur rerum perferendis dicta.','2022-03-19 08:00:00','2022-03-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(45,'f7868b5b-fe12-47ed-807d-3c5e0a08a1d0','Malloryfurt','https://picsum.photos/id/199/200/300','Eos eaque dolores omnis qui. Voluptates ducimus at dolorum et autem hic accusantium. Sint quis eos excepturi nemo blanditiis. Optio perferendis corrupti aperiam dolor eveniet.','2021-08-09 08:00:00','2021-08-09 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(46,'2907b650-e3ea-420f-844b-3b378205ae77','New Brycen','https://picsum.photos/id/175/200/300','Et qui omnis sequi molestias aut tempora. Consequatur qui id perspiciatis est recusandae beatae. Quia fuga velit ut et sed. Dolor est reprehenderit voluptas velit dolore.','2022-02-28 08:00:00','2022-02-28 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(47,'cb25ef27-aa83-4e06-b2cf-5f27c867acbd','Lakinmouth','https://picsum.photos/id/163/200/300','Et est voluptatem vitae. Voluptas hic molestiae nihil voluptatem ullam ullam. Magni dolorem dolores et voluptas enim molestiae. Nostrum quidem repellendus omnis esse eaque. Voluptatem sit architecto harum amet ratione molestias ipsam tempora.','2020-10-20 08:00:00','2020-10-20 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(48,'21714a57-d538-41a8-b02d-2f6923c863c5','West Miraclemouth','https://picsum.photos/id/26/200/300','Ut est inventore doloremque ad occaecati sed quaerat. Velit nesciunt libero consequatur aut eos. Consequuntur quaerat est quia optio. Libero nam culpa dignissimos iure.','2021-05-23 08:00:00','2021-05-23 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(49,'6b7462c2-141b-490b-a74f-868edb801209','North Merl','https://picsum.photos/id/167/200/300','Labore ipsum dignissimos quia sed nulla ut ipsam vero. Tenetur aperiam labore quis earum omnis numquam quaerat. Hic rerum non qui aliquid praesentium rem.','2021-06-12 08:00:00','2021-06-12 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(50,'a555e443-d9ec-4a55-8abc-7d76fe30dcf8','West Nealchester','https://picsum.photos/id/36/200/300','Inventore ipsum fugiat quia reprehenderit ipsum aut. Sit voluptatem nihil asperiores eos sunt. Enim vel vel laboriosam exercitationem minima natus sequi aliquid. Rem vitae non iure ut explicabo.','2021-03-14 08:00:00','2021-03-14 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(51,'85b2e10c-4294-4886-ba13-c966d38a9487','Daviston','https://picsum.photos/id/195/200/300','Error commodi minima reprehenderit non similique eius omnis voluptatem. Ipsum repellendus natus velit magni amet ea delectus. Qui aut voluptate beatae et esse.','2022-04-25 08:00:00','2022-04-25 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(52,'d7b935a9-eca9-4a31-962e-88ff9e4aee09','Danielleville','https://picsum.photos/id/166/200/300','In qui repellendus perferendis illum. Autem dolorem vel veritatis aut non autem eligendi. Harum dolores qui quo officia similique. Est debitis recusandae tempore non et nam.','2021-04-04 08:00:00','2021-04-04 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(53,'767e4192-552d-4e13-b2db-6c65558e9a2b','South Gabrielleport','https://picsum.photos/id/158/200/300','Perspiciatis alias fugit hic natus molestias. Nulla eos distinctio ut ducimus maiores explicabo. Voluptate amet quasi eius voluptatem dignissimos ut. Voluptas repudiandae ab libero enim odio eaque. Accusamus et repudiandae ea voluptatibus.','2022-05-27 08:00:00','2022-05-27 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(54,'8bf0e93b-ed0b-43bd-8488-83d61638ff4c','Port Keaton','https://picsum.photos/id/115/200/300','Aliquid sapiente eveniet est rerum nisi recusandae. Quia nostrum aut eos doloremque consequatur vel et. Tempora ex deserunt natus aut animi.','2022-08-25 08:00:00','2022-08-25 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(55,'84023dca-713e-41ad-9e16-bf0c56a66faf','New Mariloufort','https://picsum.photos/id/27/200/300','Est sit iusto quia adipisci omnis magnam dolorem. Harum dolore illo ea voluptatem. Quidem ut sunt eum et deserunt iste porro error. Omnis sequi suscipit dolorem cumque quis nihil. Labore aperiam iusto ea ut rerum cum sit.','2021-04-10 08:00:00','2021-04-10 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(56,'39219ed1-694c-4ab5-8c49-7ef76fb585eb','Ottiliefurt','https://picsum.photos/id/159/200/300','Magni aut ut soluta ut enim. Rerum et harum ut libero delectus consequatur sunt voluptate. Quasi minus beatae unde autem et ullam.','2021-01-27 08:00:00','2021-01-27 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(57,'a7dd916c-b527-480e-9a5c-1db5dd920842','Port Orpha','https://picsum.photos/id/11/200/300','Velit nulla iusto minima aut. Consequatur repellat ab eaque tempore est. Explicabo unde aperiam eos reiciendis qui alias. Id officiis doloremque excepturi minus nemo.','2022-04-04 08:00:00','2022-04-04 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(58,'7eaa4b22-2860-40ca-b018-adef31e9fcab','South Ezekiel','https://picsum.photos/id/161/200/300','Quasi beatae numquam fuga ea beatae corrupti. Ullam eveniet numquam officia excepturi. Libero vel reiciendis suscipit odio culpa illo quos. Rerum voluptas commodi a et eum alias quidem. Cupiditate architecto omnis dolores eos labore possimus.','2021-08-31 08:00:00','2021-08-31 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(59,'65895407-7200-4166-9df0-18eb0f1dfc0a','McLaughlinchester','https://picsum.photos/id/25/200/300','Aliquam voluptate expedita assumenda omnis numquam culpa. Corporis eligendi laudantium sed quidem. Ullam ullam numquam maiores in qui sed.','2022-08-03 08:00:00','2022-08-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(60,'9ad15be5-6f48-44da-af40-0387f91dc0e7','Lisaton','https://picsum.photos/id/21/200/300','Culpa ut delectus sed molestiae omnis quia distinctio voluptates. Accusamus cum aut sit consequuntur laudantium hic. Corrupti qui unde molestias error et reiciendis. Cupiditate minima aut pariatur odio et.','2022-01-14 08:00:00','2022-01-14 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(61,'86921b99-2f6d-47fd-90e4-3a6ff0627def','Wyattport','https://picsum.photos/id/87/200/300','Nihil officiis laudantium ut quia pariatur. Aliquam incidunt modi saepe et est ullam ea.','2022-01-24 08:00:00','2022-01-24 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(62,'2120ba6f-d127-4cb6-a199-453c2f836db7','West Amiyaview','https://picsum.photos/id/65/200/300','Facere ut sint esse animi voluptas ea saepe voluptates. Et dolore minima officia quod et est. Consequatur id et illum incidunt.','2021-12-09 08:00:00','2021-12-09 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(63,'47c6f59a-fac9-4b4a-ad28-403e24c51ba8','Lake Erlingshire','https://picsum.photos/id/20/200/300','Est expedita voluptatem officia expedita fuga quia et. Voluptatem laudantium sint harum cum. Sed voluptatem ipsum ut cupiditate.','2022-01-02 08:00:00','2022-01-02 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(64,'7614be73-0d73-4e20-9c16-9228f7e88ecc','Boland','https://picsum.photos/id/34/200/300','Occaecati sit quis et aperiam excepturi. Quisquam explicabo doloremque eveniet non ut. Ullam laboriosam tempora velit eaque vitae aut. Id iusto assumenda at voluptas veritatis.','2022-07-08 08:00:00','2022-07-08 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(65,'6fdbc16c-4267-4cf8-96b0-3acba16ce053','Ortizville','https://picsum.photos/id/196/200/300','Tempora ad sed vel sapiente aut quasi. Non minus mollitia odio quo et maxime. Voluptatibus vero iste est est nobis quis eum. Et consequatur eaque eius saepe explicabo.','2021-02-26 08:00:00','2021-02-26 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(66,'d859daca-27cb-49e0-8b92-ec6e0d72b84b','Port Lennafort','https://picsum.photos/id/163/200/300','Sed et fugit quo voluptas dolor provident dolorum. Odit quia nulla eligendi autem exercitationem hic et.','2021-04-03 08:00:00','2021-04-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(67,'fb9f87c5-2a81-49d8-b1bb-e8d3de8ef920','Elwinfurt','https://picsum.photos/id/58/200/300','Quo voluptas voluptatum voluptas tempore eos aspernatur. Quo et ea aspernatur rerum sed. Et explicabo iste neque at.','2021-02-21 08:00:00','2021-02-21 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(68,'92e6b950-7eaa-4a89-bd31-e2d42c433f5d','West Marcos','https://picsum.photos/id/112/200/300','Libero dolore et autem necessitatibus. Quae vel provident sed dolores accusantium sapiente molestiae. Quod aut aut rem vero molestiae.','2021-05-31 08:00:00','2021-05-31 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(69,'3a44fd8c-7b90-434f-84e2-c05f7056e668','North Phyllisburgh','https://picsum.photos/id/101/200/300','Nam placeat quae ut. Corrupti unde vitae non ut nam. Voluptatem explicabo autem et quia neque impedit ut. Quo quia vel qui est inventore. Possimus quasi adipisci eum qui provident.','2021-09-01 08:00:00','2021-09-01 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(70,'2157736d-9749-467f-b042-41ba6057da78','Naomiside','https://picsum.photos/id/60/200/300','Cumque quibusdam ut earum iure sunt cupiditate sit et. Fuga voluptatem enim aut eius. Blanditiis ut qui explicabo vero itaque. Delectus non autem quis id aut ducimus.','2022-02-08 08:00:00','2022-02-08 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(71,'f87036b6-cfe8-46c7-9de7-fc52d4c3c494','Hahnberg','https://picsum.photos/id/130/200/300','Aut quasi sit earum voluptatem dolorem non velit. Non error aut sit hic dolorum praesentium. Vel omnis blanditiis non consequuntur consequatur velit.','2022-02-27 08:00:00','2022-02-27 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(72,'c935e573-c746-4ec9-9081-50a4b0497bc5','Mariettachester','https://picsum.photos/id/15/200/300','Ad consequatur qui soluta nulla. Et voluptatem non est quis rerum. Ducimus cum blanditiis fuga qui nihil.','2022-06-09 08:00:00','2022-06-09 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(73,'764bb219-9cda-4038-871a-a25390ee7938','Howellhaven','https://picsum.photos/id/130/200/300','Non et exercitationem enim atque consequatur labore sunt. At deleniti non optio explicabo eaque ut quos. Distinctio molestiae sit rerum et cupiditate consequatur illum. Blanditiis ea pariatur inventore reprehenderit deserunt dolor et. Quo velit eos adipisci deserunt cumque quae.','2021-11-24 08:00:00','2021-11-24 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(74,'f0f70c97-597b-444e-b636-177b1f3d973e','Lakinmouth','https://picsum.photos/id/99/200/300','Sed dolorem eos placeat asperiores. Quia suscipit sit consequuntur provident sunt vitae. Similique sequi doloremque nostrum laudantium qui voluptatem. Quod soluta et fuga eos rerum est vel.','2021-01-16 08:00:00','2021-01-16 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(75,'490e8238-b89f-4809-b17a-560df74e6d32','Lake Waltonborough','https://picsum.photos/id/173/200/300','Esse consequuntur dolorem consequatur perspiciatis quibusdam. Qui nihil esse consequatur voluptas quos rem. Et qui et libero in dolor et. Aut est suscipit culpa optio et blanditiis est.','2021-05-16 08:00:00','2021-05-16 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(76,'73e2bfa9-846d-46e4-820b-92928903e7cd','South Boydchester','https://picsum.photos/id/128/200/300','Beatae optio ea et tenetur. Voluptate assumenda cumque debitis rerum qui. Perferendis eos incidunt et quos consequuntur occaecati.','2021-02-22 08:00:00','2021-02-22 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(77,'505c5191-1a5a-4f4f-a4e0-3d85f76edbfb','Allybury','https://picsum.photos/id/35/200/300','Consequuntur sapiente laborum aut aut. Molestias necessitatibus dolores eos fugit. Illum sed sit qui quam neque.','2021-10-07 08:00:00','2021-10-07 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(78,'3a42d72d-b81e-4f44-b1c5-0b15a8393b0f','New Metaport','https://picsum.photos/id/170/200/300','Minus optio molestiae voluptas omnis. Rerum in ab velit et quas praesentium molestias doloribus. Et ut dolorem velit omnis exercitationem quidem. Nihil consequuntur nisi ipsam et ut aut. Nesciunt nihil quod qui veritatis voluptates natus ut.','2022-02-27 08:00:00','2022-02-27 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(79,'4b76612b-dfa9-4f63-8473-d672a6eca6c4','Tillmanview','https://picsum.photos/id/174/200/300','A est enim nemo tempore. Rerum molestiae in impedit odit.','2021-03-16 08:00:00','2021-03-16 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(80,'cb6f0852-f8e3-457d-9600-31ec6c7d0303','O\'Keefeburgh','https://picsum.photos/id/71/200/300','Et veniam itaque accusantium nulla et. Deserunt et culpa atque et asperiores voluptas ea. Dolorem dicta possimus consequuntur quidem quia aut ducimus veniam.','2021-12-07 08:00:00','2021-12-07 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(81,'45878a98-4f0e-4ae8-9683-006ecb4f5933','East Alice','https://picsum.photos/id/22/200/300','Cum sunt ut et. Velit assumenda natus quis in qui. Impedit et cupiditate corporis fuga nam provident est.','2021-07-30 08:00:00','2021-07-30 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(82,'0ef8a8e2-fc3e-4c48-8da1-3c1742b0b1ff','Norvalville','https://picsum.photos/id/26/200/300','Natus impedit occaecati hic qui minima dicta. Vero nobis non qui doloribus fuga dolores ut. Magni temporibus esse non ipsa asperiores.','2021-08-26 08:00:00','2021-08-26 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(83,'1cd24b6b-7248-45c8-8385-5e75f6cdd142','Wolfftown','https://picsum.photos/id/144/200/300','Aut maxime soluta sint molestiae illo enim exercitationem nam. Earum voluptatem aut voluptate qui temporibus quasi. Quasi minima enim consequatur omnis veritatis a. Voluptatem dicta distinctio aut. Odio exercitationem dolorum et officiis maiores aut aliquam.','2021-04-18 08:00:00','2021-04-18 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(84,'20c45f26-a373-4b47-ae53-66bdcfac28e9','Rennerfort','https://picsum.photos/id/87/200/300','Ad ut eum eum et iure voluptatem. Maxime quis ut corrupti atque. Non qui temporibus excepturi deserunt. Et numquam quia facilis aspernatur.','2021-02-08 08:00:00','2021-02-08 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(85,'e53af035-7f14-4bfc-a2c1-8dff516c0ff1','Harberberg','https://picsum.photos/id/107/200/300','Quam quasi et quis magnam vero praesentium. Voluptatem ducimus enim qui quia incidunt.','2021-04-10 08:00:00','2021-04-10 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(86,'833c24eb-2d73-4667-9688-b0c1059c5b87','Micahfurt','https://picsum.photos/id/160/200/300','Vel fugiat esse illum perferendis quisquam quis illo. Sapiente doloribus beatae et asperiores expedita atque aspernatur sit. Non aut impedit officia dolor.','2021-04-19 08:00:00','2021-04-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(87,'e278a0b7-04d6-4218-91f6-3aed6bead713','Ethelynmouth','https://picsum.photos/id/71/200/300','Quo ea eveniet sunt qui voluptatibus voluptatibus quia recusandae. Quia est aut officia voluptatem officiis at. Velit dolorum aliquid atque officia accusantium eos id.','2021-05-17 08:00:00','2021-05-17 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(88,'31ed97fa-273a-4b37-8dc9-25519354510a','Lake Elvie','https://picsum.photos/id/164/200/300','Quo temporibus amet consequuntur officia optio exercitationem. Sapiente quam fugit aut consequuntur. Sunt velit impedit possimus provident aut eos exercitationem accusantium. Autem laborum enim vel neque doloremque.','2021-10-07 08:00:00','2021-10-07 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(89,'fcbc3fe4-24ec-494e-87c2-f107b7e94f58','Damienstad','https://picsum.photos/id/45/200/300','Expedita aut nihil odio vero velit laudantium earum accusamus. Nihil aliquid et nam. Incidunt aut doloremque incidunt temporibus eum nam tempora. Sint iste ducimus nostrum accusantium magnam soluta. Enim reiciendis tempore illo tempore.','2021-10-19 08:00:00','2021-10-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(90,'cf0fd69b-c1d8-41e7-8f59-ea4cbdbde48e','Icieburgh','https://picsum.photos/id/172/200/300','Pariatur magni nisi sunt harum. Reprehenderit blanditiis dignissimos voluptatem ea ab et.','2021-10-29 08:00:00','2021-10-29 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(91,'4b152931-1565-480f-adad-77d2289cd720','West Dock','https://picsum.photos/id/43/200/300','Laudantium et aut iste id quis. Repellendus reiciendis et et qui sapiente facilis modi dolorum. Perspiciatis occaecati amet expedita ex.','2021-04-17 08:00:00','2021-04-17 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(92,'cd70a2cb-f7f8-437c-a035-e6267a38f022','Kuphalshire','https://picsum.photos/id/105/200/300','Id natus consectetur vel omnis consequatur. Voluptates rerum voluptatum eius impedit iure suscipit deleniti. Ab qui sed alias rem veritatis ea.','2022-04-29 08:00:00','2022-04-29 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(93,'23d9911e-0877-4922-ae69-3da4ba363904','Luciousburgh','https://picsum.photos/id/182/200/300','Sint nostrum commodi tempore labore. Nostrum ducimus quae alias numquam in. Enim et quos corporis quis itaque maxime voluptate.','2022-03-17 08:00:00','2022-03-17 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(94,'f12f04ac-be27-43a8-9283-11dc71a0dd31','Kubville','https://picsum.photos/id/156/200/300','Placeat sint natus non incidunt et tempora ipsa. Aspernatur blanditiis molestiae quis nemo unde fuga. Dignissimos reprehenderit delectus nostrum vel veniam est voluptas. Dolor alias dolor doloribus ut autem suscipit laudantium enim.','2021-03-30 08:00:00','2021-03-30 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(95,'08addb14-2b5f-45de-bc65-a667db8357c4','Port Marcelina','https://picsum.photos/id/136/200/300','Omnis placeat sequi perferendis magni. Autem tenetur ut sed quas quam. Quasi qui quaerat consequuntur est rerum quasi.','2021-11-19 08:00:00','2021-11-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(96,'e94566e8-87b6-4b68-b784-a7f908834fe0','North Gavinland','https://picsum.photos/id/160/200/300','Molestiae officiis et voluptatibus ipsa qui rerum quis porro. Omnis aut aliquid qui error velit. Quibusdam explicabo eum impedit laboriosam minima maxime. Fuga ex voluptas veniam in.','2022-02-09 08:00:00','2022-02-09 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(97,'dcccbcc9-28f1-4963-9b9f-5d8da607b698','Hudsonmouth','https://picsum.photos/id/186/200/300','In cupiditate ut laudantium sit quidem facilis. Odit id voluptas optio. Ea nulla id officia fugiat.','2021-01-14 08:00:00','2021-01-14 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(98,'a11c9d7c-059b-489e-b98a-ca55aada507d','Quigleyfurt','https://picsum.photos/id/15/200/300','Quidem illo tempora expedita corporis corrupti. Et omnis nihil ipsam. Sit consequuntur eligendi facere. Est nihil reprehenderit rerum ullam et.','2022-01-19 08:00:00','2022-01-19 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(99,'153364bc-4da4-4279-9aa4-85703676bd80','North Otha','https://picsum.photos/id/32/200/300','Ut qui architecto atque ut. Et qui sed sint et.','2020-11-03 08:00:00','2020-11-03 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09'),
(100,'b6e7f1c7-7a06-4185-988a-4b726c0db25e','Kamrynborough','https://picsum.photos/id/142/200/300','Dolore illum similique architecto et harum. Quasi laudantium deserunt voluptatibus qui odit id reprehenderit. Sequi natus rem ut ullam. Alias enim dolores qui nihil autem. Aut qui quae aspernatur omnis nihil numquam.','2020-12-17 08:00:00','2020-12-17 11:00:00','2021-09-01 07:11:09','2021-09-01 07:11:09');

/*Table structure for table `event_register` */

DROP TABLE IF EXISTS `event_register`;

CREATE TABLE `event_register` (
  `evreg_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `evreg_user_id` bigint unsigned NOT NULL,
  `evreg_event_id` bigint unsigned NOT NULL,
  `evreg_lat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evreg_lng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`evreg_id`),
  UNIQUE KEY `event_register_evreg_user_id_evreg_event_id_unique` (`evreg_user_id`,`evreg_event_id`),
  KEY `event_register_evreg_event_id_foreign` (`evreg_event_id`),
  CONSTRAINT `event_register_evreg_event_id_foreign` FOREIGN KEY (`evreg_event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE,
  CONSTRAINT `event_register_evreg_user_id_foreign` FOREIGN KEY (`evreg_user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `event_register` */

insert  into `event_register`(`evreg_id`,`evreg_user_id`,`evreg_event_id`,`evreg_lat`,`evreg_lng`,`created_at`,`updated_at`) values 
(42,128,1,NULL,NULL,'2021-10-31 19:16:43','2021-10-31 19:16:43');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `gender` enum('male','female') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'male',
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;