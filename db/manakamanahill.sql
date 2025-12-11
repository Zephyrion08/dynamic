-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2025 at 04:22 AM
-- Server version: 10.6.24-MariaDB
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acehotel_manakamanahill`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_applicants`
--

CREATE TABLE `tbl_applicants` (
  `id` int(11) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `current_address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `position` varchar(100) NOT NULL,
  `myfile` varchar(50) NOT NULL,
  `qualification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_applicants`
--

INSERT INTO `tbl_applicants` (`id`, `parent`, `fullname`, `current_address`, `mobile`, `phone`, `email`, `sortorder`, `position`, `myfile`, `qualification`) VALUES
(1, '', 'Juan Francisco', '', '', '', 'sahas@longtail.info', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_articles`
--

CREATE TABLE `tbl_articles` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_articles`
--

INSERT INTO `tbl_articles` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `upcoming`) VALUES
(21, 0, 'about-us', 'About Us', 'About Us', '<div class=\"row\">\r\n	<div class=\"col-lg-6 col-md-12 mb-30 animate-box\" data-animate-effect=\"fadeInUp\">\r\n		<div class=\"section-subtitle\">\r\n			Manakamana Hillcrest Resort</div>\r\n		<div class=\"section-title\">\r\n			Enjoy a Luxury Experience</div>\r\n		<p>\r\n			Nestled in the serene hills near the sacred Manakamana Temple, Manakamana Hillcrest Resort is a haven of peace, comfort, and breathtaking natural beauty. Offering panoramic views of the majestic Himalayas and lush green valleys, the resort is an ideal escape for spiritual seekers, wellness enthusiasts, and those looking to unwind in luxurious surroundings.</p>\r\n		<p>\r\n			Located just steps away from the Manakamana Cable Car station (operating daily from 8:00 AM to 5:00 PM), the resort also offers easy access to nearby attractions like Buddha Park, a peaceful spot for reflection and scenic walks.</p>\r\n		<div class=\"reservations\">\r\n			<div class=\"icon\">\r\n				&nbsp;</div>\r\n			<div class=\"text\">\r\n				<p>\r\n					Reserve Now</p>\r\n				<a data-original-=\"\" href=\"tel:+9779851405139\">+9779851405139</a></div>\r\n		</div>\r\n	</div>\r\n	<div class=\"col-lg-6 col-md-12 animate-box\" data-animate-effect=\"fadeInUp\">\r\n		<div class=\"img-exp about\">\r\n			<div class=\"about-img\">\r\n				<div class=\"img\">\r\n					<img alt=\"\" class=\"img-fluid\" src=\"/userfiles/images/hotel-exterior.jpg\" /></div>\r\n			</div>\r\n			<div id=\"circle\">\r\n				<svg enable-background=\"new 0 0 300 300\" height=\"300px\" version=\"1.1\" viewbox=\"0 0 300 300\" width=\"300px\" x=\"0px\" xml:space=\"preserve\" xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" y=\"0px\"> <defs> <path d=\" M 150, 150 m -60, 0 a 60,60 0 0,1 120,0 a 60,60 0 0,1 -120,0 \" id=\"circlePath\"></path> </defs> <circle cx=\"250\" cy=\"100\" fill=\"none\" r=\"75\"></circle> <g> <use fill=\"none\" xlink:href=\"#circlePath\"></use> <text fill=\"#000\"> <textpath xlink:href=\"#circlePath\"> . Manakamana . Hillcrest . Resort</textpath> </text> </g> </svg></div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', 0, '', 1, 'About Us', 'Manakamana Hillcrest Resort, luxury resort Nepal, Himalayan views, Manakamana Temple stay, sustainable hospitality, cultural retreat, nature escape, personalized service, serene hills, Nepal luxury travel, eco friendly resort, natural beauty\r\n', 'Manakamana Hillcrest Resort offers luxury, Himalayan views, and cultural warmth near Manakamana Temple, blending sustainability with personalized service.\r\n', 0, '2025-10-08 12:20:54', '2025-11-16 15:06:35', 2, 0, 0x613a313a7b693a303b733a31313a224a61534b412d322e6a7067223b7d, '', '', 0),
(20, 0, 'manakamana-hillcrest-resort', 'Manakamana Hillcrest Resort', 'Enjoy a Luxury Experience', '<p>\r\n	Nestled in the serene hills near the sacred Manakamana Temple, Manakamana Hillcrest Resort is a haven of peace, comfort, and breathtaking natural beauty. Offering panoramic views of the majestic Himalayas and lush green valleys, the resort is an ideal escape for spiritual seekers, nature lovers, and those simply looking to unwind in a luxurious setting.</p>\r\n<p>\r\n	What truly sets Manakamana Hillcrest Resort apart is its commitment to sustainability, local culture, and personalized service.</p>\r\n', 0, '', 1, 'Manakamana Hillcrest Resort', 'Manakamana Hillcrest Resort, luxury resort Nepal, Himalayan views, Manakamana Temple stay, eco friendly resort, sustainable hospitality, cultural retreat, nature escape, personalized service, serene hills, Nepal luxury travel, panoramic view, nature', 'Experience luxury at Manakamana Hillcrest Resort with Himalayan views, cultural warmth, and sustainable hospitality near the sacred Manakamana Temple.\r\n', 0, '2025-10-07 15:32:28', '2025-11-13 12:43:07', 1, 1, 0x613a313a7b693a303b733a32343a22766a64744b2d686f74656c2d6578746572696f722e6a7067223b7d, '', '', 0),
(23, 0, 'pool-sauna-policies', 'Pool & Sauna Policies', 'Pool & Sauna Policies', '<p>\r\n	<style type=\"text/css\">\r\n.bullet-default li{\r\nlist-style:circle;\r\nlist-style-position: inside;\r\n}	\r\n#line-horiz {\r\nborder-bottom: 2px solid black;\r\ncolor: #000;\r\n}	</style>\r\n</p>\r\n<p>\r\n	<strong>Swimming Pool Rules</strong></p>\r\n<ul class=\"bullet-default\">\r\n	<li>\r\n		Swim at your own risk. No lifeguard on duty</li>\r\n	<li>\r\n		Children under 12 must be accompanied by an adult.</li>\r\n	<li>\r\n		Shower before entering the pool.</li>\r\n	<li>\r\n		No diving allowed. The pool is not deep enough for safe diving.</li>\r\n	<li>\r\n		No running, pushing, or rough play.</li>\r\n	<li>\r\n		Proper swim attire is required. No street clothes or underwear allowed in the pool.</li>\r\n	<li>\r\n		No food or glass containers in the pool area.</li>\r\n	<li>\r\n		No pets allowed in the pool area.</li>\r\n	<li>\r\n		Keep the noise level down. Be considerate of other guests.</li>\r\n	<li>\r\n		Report any emergencies or concerns to hotel staff immediately.</li>\r\n	<li>\r\n		Pool hours: 8 am to 8 pm. Please respect these hours.</li>\r\n	<li>\r\n		Management reserves the right to refuse admission or remove any person for violation of these rules.</li>\r\n</ul>\r\n<hr id=\"line-horiz\" />\r\n<p>\r\n	<strong>Sauna &amp; Steam Room</strong></p>\r\n<p>\r\n	<em>(Operation Hours: 10 am to 6 pm)</em></p>\r\n<p>\r\n	For Your Safety and Enjoyable Experience</p>\r\n<p>\r\n	To ensure a safe, comfortable, and hygienic environment for all our guests, please adhere to the following rules when using our sauna and steam room facilities:</p>\r\n<ul class=\"bullet-default\">\r\n	<li>\r\n		Consult Your Doctor: If you have any medical conditions (e.g., heart issues, high/low blood pressure, diabetes), are pregnant, or on medication, please consult your physician before use.</li>\r\n	<li>\r\n		Age Restriction: Children under 16 years of age are not permitted in the sauna or steam room.</li>\r\n	<li>\r\n		Time Limit: Limit your sessions to 10-15 minutes at a time. Take breaks and cool down between sessions.</li>\r\n	<li>\r\n		Hydrate: Drink plenty of water before, during, and after your session to prevent dehydration.</li>\r\n	<li>\r\n		Shower First: Always shower thoroughly with soap and water before entering the sauna or steam room.</li>\r\n	<li>\r\n		Proper Attire: Swimwear is required. Nudity is not permitted.</li>\r\n	<li>\r\n		Use a Towel: Always sit on a clean towel in both the sauna and steam room.</li>\r\n	<li>\r\n		No Food or Drink: Food, glass containers, and alcoholic beverages are strictly prohibited in this area. Only water in a plastic bottle is allowed.</li>\r\n	<li>\r\n		No Shaving/Grooming: Personal grooming activities are not allowed.</li>\r\n	<li>\r\n		Keep Doors Closed: Please close doors securely to maintain temperature and humidity.</li>\r\n	<li>\r\n		Quiet Zone: Please respect other guests by keeping noise to a minimum.</li>\r\n	<li>\r\n		Report Issues: Report any concerns or equipment malfunctions to hotel staff immediately.</li>\r\n	<li>\r\n		Emergency: If you feel unwell, exit immediately and seek assistance.</li>\r\n</ul>\r\n<p>\r\n	<strong>Prohibited:</strong></p>\r\n<ul class=\"bullet-default\">\r\n	<li>\r\n		Use under the influence of alcohol or drugs.</li>\r\n	<li>\r\n		Guests with open wounds or contagious conditions.</li>\r\n	<li>\r\n		Exercising or stretching.</li>\r\n	<li>\r\n		Touching hot surfaces or heating elements.</li>\r\n</ul>\r\n<hr id=\"line-horiz\" />\r\n', 0, '', 1, 'Pool & Sauna Policies', 'swimming pool rules, sauna guidelines, steam room safety, policies, resort wellness, guest etiquette, pool hours, sauna restrictions, steam hygiene, Manakamana Hillcrest, Nepal resort , wellness facilities, Hygienic, Rules and Regulation\r\n', 'Follow Manakamana Hillcrest rules for pool, sauna, and steam room. Safe, hygienic, and relaxing wellness facilities for every guest.\r\n', 0, '2025-10-30 16:15:45', '2025-11-16 12:41:19', 3, 0, 0x613a303a7b7d, '', '', 0),
(24, 0, 'health-fitness-policies', 'Health & Fitness Policies', 'Health & Fitness Policies', '<style type=\"text/css\">\r\n.border-room{\r\nbox-shadow: -1px 3px 32px 4px rgb(131 134 137);\r\n    -webkit-box-shadow: -1px 3px 32px 4px rgb(135 138 140 / 45%);\r\n    padding: 20px;\r\n	padding-left: 0px;\r\n}\r\n.bullet-default li{\r\nlist-style:circle;\r\nlist-style-position: inside;\r\n}\r\ndiv .box-black p{\r\nbackground-color: #2b2f33;\r\n    padding-block: 0.8rem;\r\npadding-left: 30px;\r\n    max-width: 239px;\r\n    color: #fff;\r\n    border-radius: 0 10px 10px 0;\r\n}\r\n.top-par{\r\n	padding-left: 40px;\r\n}\r\n.box-black{\r\n    margin-bottom:2rem;\r\n}</style>\r\n<div class=\"border-room\">\r\n	<div class=\"top-par\">\r\n		<p>\r\n			<u><strong>Fitness Center Guidelines for Guests</strong></u></p>\r\n		<p>\r\n			<strong>Dear Valued Guest,</strong></p>\r\n		<p>\r\n			Welcome to our Fitness Center! We hope you enjoy your workout during your stay. To ensure a safe, comfortable, and enjoyable experience for all, please observe the following guidelines.</p>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>1. Operating Hours:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				The Fitness Center is open daily from <strong>8:00 AM</strong> to <strong>7:00 PM in summer</strong> and <strong>6:00 PM in winter</strong>.</li>\r\n			<li>\r\n				Please note that the facility is not supervised outside of these hours.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>2. Age Restriction:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				Guests must be <strong>16 years or older</strong> to use the fitness center facilities.</li>\r\n			<li>\r\n				Children under 16 are permitted only with <strong>direct adult supervision and management approval</strong>.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>3. Appropriate Attire:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				For your safety and hygiene, please wear <strong>appropriate athletic clothing and closed-toe athletic shoes</strong> at all times.</li>\r\n			<li>\r\n				<strong>Open slippers, sandals, or bare feet</strong> are not permitted inside the fitness center.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>4. Health and Safety:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				<strong>Consult your physician:</strong> Before beginning any exercise program, especially if you have pre-existing medical conditions or concerns.</li>\r\n			<li>\r\n				<strong>Use at your own risk:</strong> The resort is not responsible for injuries that may occur from improper use of equipment or disregarding guidelines.</li>\r\n			<li>\r\n				<strong>Wipe down equipment:</strong> Please use the provided sanitizing wipes or spray and towel to clean equipment before and after each use.</li>\r\n			<li>\r\n				<strong>Stay Hydrated:</strong> A water dispenser is available. Please use personal water bottles.</li>\r\n			<li>\r\n				<strong>Report Issues:</strong> Immediately report any broken or malfunctioning equipment to resort staff.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>5. Equipment Usage:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				Please read and follow the instructions on each machine carefully.</li>\r\n			<li>\r\n				If you are unsure how to use a piece of equipment, please ask resort staff for assistance. Do not attempt to use equipment you are unfamiliar with.</li>\r\n			<li>\r\n				Return weights and other accessories to their designated racks after use.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>6. Etiquette &amp; Respect:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				<strong>Share Equipment:</strong> Please be mindful of other guests and limit your time on popular equipment during busy periods.</li>\r\n			<li>\r\n				<strong>No Food or Drinks:</strong> Only water in a sealed bottle is permitted inside the fitness center.</li>\r\n			<li>\r\n				<strong>Personal Belongings:</strong> Please use the lockers provided for your bags and personal items. Do not leave valuables unattended.</li>\r\n			<li>\r\n				<strong>Noise Level:</strong> Please keep noise levels to a minimum. Avoid loud conversations, shouting, or dropping weights heavily.</li>\r\n			<li>\r\n				<strong>Mobile Phones:</strong> Please set your mobile phone to silent mode. If taking calls, please do so outside the fitness area.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"box-black\">\r\n		<p>\r\n			<strong>7. Towels and Water:</strong></p>\r\n		<ul class=\"bullet-default\">\r\n			<li>\r\n				Fresh towels are provided for your use. Please place used towels in the designated laundry bins.</li>\r\n			<li>\r\n				Drinking water is available. Please use the dispenser responsibly.</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"top-par\">\r\n		<p>\r\n			We appreciate your cooperation in helping us maintain a clean, safe, and pleasant environment for everyone.</p>\r\n		<p>\r\n			<strong>Thank you,<br />\r\n			Manakamana Hillcrest Management</strong></p>\r\n	</div>\r\n</div>\r\n', 0, '', 1, 'Health & Fitness Policies', 'fitness center, gym facilities, workout guidelines, resort wellness, exercise safety, guest health, training equipment, athletic attire, workout etiquette, resort amenities, Ilam Nepal resort, Manakamana Hillcrest\r\n', 'Stay active at Manakamana Hillcrest Fitness Center with modern equipment, towels, lockers, and safe workout guidelines in a welcoming environment.\r\n', 0, '2025-10-30 17:20:53', '2025-11-14 14:58:04', 4, 0, 0x613a303a7b7d, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` text NOT NULL,
  `content` text NOT NULL,
  `blog_date` date NOT NULL,
  `archive_date` date NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(50) NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `source` mediumtext NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `linksrc` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `linktype` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `slug`, `title`, `author`, `brief`, `content`, `blog_date`, `archive_date`, `sortorder`, `status`, `image`, `banner_image`, `source`, `type`, `viewcount`, `meta_keywords`, `meta_description`, `added_date`, `linksrc`, `linktype`, `upcoming`) VALUES
(4, 'a-historical-tale-of-divinity', 'A Historical Tale of Divinity', 'Manakamana Hillcrest Resort', 'A historical tale of divinityA historical tale of divinity', '<p>\r\n	The region surrounding Manakamana Hillcrest Resort is steeped in legend and spiritual significance. The nearby Manakamana Temple, dedicated to Goddess Bhagwati, draws pilgrims from across Nepal and beyond.</p>\r\n<p>\r\n	Guests often explore local sites like Mahadev Cave and Lakhan Thapa Cave, each echoing stories of devotion and history. These places offer not just sightseeing, but a deeper connection to Nepal&rsquo;s cultural soul.</p>\r\n<p>\r\n	Staying at Hillcrest means being part of this narrative where divine tales meet modern comfort. It&rsquo;s a journey through time, wrapped in the tranquility of the hills.</p>\r\n', '2025-09-15', '0000-00-00', 0, 1, 'cZGFH-2.jpg', '2NSw8-1.jpg', '', 0, 0, 'Manakamana Temple, Goddess Bhagwati, Mahadev Cave, Lakhan Thapa Cave, spiritual journey Nepal, cultural heritage, sacred sites, Nepal pilgrimage, Hillcrest Resort surroundings, divine legends, Nepali history, hillside tranquility\r\n', 'Explore Manakamana Temple, Mahadev Cave, and Lakhan Thapa Cave near Hillcrest Resort—where spiritual legends and cultural heritage meet hillside serenity.\r\n', '2025-09-24 13:30:11', '', '0', 0),
(5, 'manakamana-hillcrest-resort', 'Manakamana Hillcrest Resort', 'Manakamana Hillcrest Resort', 'asdasd', '<p>\r\n	Manakamana Hillcrest Resort is more than a place to stay it&rsquo;s a sanctuary where comfort meets culture. Perched in the hills near the revered Manakamana Temple, the resort offers panoramic views of the Himalayas and a peaceful escape from city life.</p>\r\n<p>\r\n	Each room is thoughtfully designed to reflect Nepali warmth, with modern amenities and serene mountain or pool views. Guests can unwind in the spa, enjoy local and international cuisine, or simply relax by the pool bar.</p>\r\n<p>\r\n	Whether you&#39;re here for a romantic getaway, a family retreat, or a corporate event, Hillcrest delivers a soulful experience rooted in hospitality and nature. It&rsquo;s where every moment feels personal, and every stay becomes a memory.</p>\r\n', '2025-10-28', '0000-00-00', 2, 1, 'ImhFi-1.jpg', 'rMwDX-1.jpg', '', 0, 0, 'Manakamana Hillcrest Resort, luxury resort Nepal, Himalayan views, Manakamana Temple stay, cultural retreat, eco friendly resort, Nepali hospitality, romantic getaway, family retreat, corporate events, spa and dining, hillside escape\r\n', 'Manakamana Hillcrest Resort blends luxury, culture, and Himalayan views near Manakamana Temple, offering spa, dining, and soulful hospitality in nature.\r\n', '2025-10-08 13:24:57', '', '0', 0),
(7, 'the-cable-car-experience', 'The Cable Car Experience', 'Manakamana Hillcrest Resort', '', '<p>\r\n	Nestled near the sacred Manakamana Temple, our resort offers guests a unique opportunity to experience the iconic Manakamana Cable Car. This scenic ride glides above lush valleys and riverbanks, connecting travelers to both spiritual heritage and natural beauty.</p>\r\n<p>\r\n	For many, the cable car isn&rsquo;t just transportation it&rsquo;s a moment of reflection, a chance to witness Nepal&rsquo;s landscape from above. Guests staying at Manakamana Hillcrest can enjoy easy access to the bottom station, making it a seamless part of their itinerary.</p>\r\n<p>\r\n	Whether you&#39;re visiting for pilgrimage or leisure, the cable car adds a sense of adventure to your stay. It&rsquo;s a perfect blend of tradition, tranquility, and thrill all within reach of your room.</p>\r\n', '2025-10-28', '0000-00-00', 1, 1, 'Kf5mx-3.jpg', 'zjk6F-3.jpg', '', 0, 0, 'Manakamana Cable Car, Nepal cable car ride, spiritual journey Nepal, Himalayan views, Manakamana Temple access, scenic valley ride, Nepal adventure, cultural heritage, tranquil escape, Hillcrest Resort experience\r\n', 'Experience the Manakamana Cable Car with Hillcrest Resort—scenic valleys, Himalayan views, and seamless access to Nepal’s spiritual and natural beauty.\r\n', '2025-10-28 16:27:16', '', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogcomment`
--

CREATE TABLE `tbl_blogcomment` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_conbined_news`
--

CREATE TABLE `tbl_conbined_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `home_image` text NOT NULL,
  `gallery` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `display` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` int(11) NOT NULL,
  `author` varchar(200) NOT NULL,
  `banner_image` varchar(300) NOT NULL,
  `source` mediumtext NOT NULL,
  `meta_description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_configs`
--

CREATE TABLE `tbl_configs` (
  `id` int(11) NOT NULL,
  `sitetitle` varchar(200) NOT NULL,
  `icon_upload` varchar(200) NOT NULL,
  `logo_upload` varchar(200) NOT NULL,
  `fb_upload` varchar(255) NOT NULL,
  `twitter_upload` varchar(255) NOT NULL,
  `gallery_upload` varchar(255) NOT NULL,
  `contact_upload` varchar(255) NOT NULL,
  `other_upload` varchar(255) NOT NULL,
  `facility_upload` varchar(240) NOT NULL,
  `offer_upload` varchar(255) NOT NULL,
  `sitename` varchar(50) NOT NULL,
  `location_type` tinyint(1) NOT NULL DEFAULT 1,
  `location_map` mediumtext NOT NULL,
  `location_image` varchar(250) NOT NULL,
  `fiscal_address` tinytext NOT NULL,
  `mail_address` tinytext NOT NULL,
  `contact_info` tinytext NOT NULL,
  `address` varchar(100) NOT NULL,
  `email_address` tinytext NOT NULL,
  `breif` text NOT NULL,
  `copyright` varchar(200) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `site_keywords` tinytext NOT NULL,
  `site_description` tinytext NOT NULL,
  `fb_messenger` text NOT NULL,
  `google_anlytics` text NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `robot_txt` text NOT NULL,
  `schema_code` tinytext NOT NULL,
  `book_type` tinyint(4) NOT NULL DEFAULT 1,
  `hotel_page` varchar(200) NOT NULL,
  `hotel_code` tinytext NOT NULL,
  `booking_code` tinytext NOT NULL,
  `template` varchar(100) NOT NULL,
  `admin_template` varchar(100) NOT NULL,
  `headers` text DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `search_box` text DEFAULT NULL,
  `search_result` text DEFAULT NULL,
  `action` tinyint(1) NOT NULL DEFAULT 0,
  `contact_info2` varchar(100) NOT NULL,
  `pobox` varchar(50) NOT NULL,
  `pixel_code` mediumtext NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `whatsapp_a` varchar(100) NOT NULL,
  `upcoming` int(11) NOT NULL,
  `upcomingcontent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_configs`
--

INSERT INTO `tbl_configs` (`id`, `sitetitle`, `icon_upload`, `logo_upload`, `fb_upload`, `twitter_upload`, `gallery_upload`, `contact_upload`, `other_upload`, `facility_upload`, `offer_upload`, `sitename`, `location_type`, `location_map`, `location_image`, `fiscal_address`, `mail_address`, `contact_info`, `address`, `email_address`, `breif`, `copyright`, `meta_title`, `site_keywords`, `site_description`, `fb_messenger`, `google_anlytics`, `linksrc`, `robot_txt`, `schema_code`, `book_type`, `hotel_page`, `hotel_code`, `booking_code`, `template`, `admin_template`, `headers`, `footer`, `search_box`, `search_result`, `action`, `contact_info2`, `pobox`, `pixel_code`, `whatsapp`, `whatsapp_a`, `upcoming`, `upcomingcontent`) VALUES
(1, 'Manakamana Hillcrest Resort', 'DtLbu-favicon.png', 'WYUQQ-logo.png', '', '3Z7oi-gallery.jpg', '', 'C7K6r-contact.jpg', 'tR7Ek-gallery.jpg', 'iqiSx-facility.jpg', 'sfbCj-gallery.jpg', 'Manakamana Hillcrest Resort', 1, 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3525.9761738597067!2d84.5822797747255!3d27.90270447607117!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort!5e0!3m2!1sen!2snp!4v1761461910024!5m2!1sen!2snp', 'aHQyy-map.jpg', 'Manakamana Cable Car Premises. Sahid Lakhan Gaupalika, Ward No. 2 Manakamana, Gorkha, Nepal', 'ktm location', '+977 9851405139', '', 'info@manakamanahillcrest.com', '', '©  {year} Manakamana Hillcrest Resort - Official Site. | ', 'Manakamana Hillcrest Resort', 'Manakamana Hillcrest Resort, Cable Car, Manakamana Temple, Religious Place, Family Friendly Resort, Himalayan view resort, Sustainable resort Nepal, wellness retreat Nepal, hotel near Manakamana Cable Car, serene hill, spiritual getaway Nepal,', 'Nestled in the serene hills near the sacred Manakamana Temple, Manakamana Hillcrest Resort is a haven of peace, comfort, and breathtaking natural beauty. ', '', '<!-- Google tag (gtag.js) -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=G-2Q5JY7NVMV\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'G-2Q5JY7NVMV\');\r\n</script>', '#', 'User-agent: *\r\nDisallow: /cgi-bin/', '', 2, 'result.php', 'QmLox96', 'uk3ot92', 'web', 'blue', '', '', 'Develop By Amit prajapati', 'Develop By Amit prajapati', 0, '064-590101,064-590102 ', '2769', '', '987568562222', '+9779851405139', 0, 'We are coming, get ready for the best travel experience with us.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_name` varchar(50) NOT NULL,
  `country_no_code` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_name`, `country_no_code`, `status`) VALUES
(1, 'United States', '+1', 1),
(2, 'Canada', '+1', 1),
(3, 'Mexico', '+52', 1),
(4, 'Afghanistan', '+93', 1),
(5, 'Albania', '+355', 1),
(6, 'Algeria', '+213', 1),
(7, 'Andorra', '+376', 1),
(8, 'Angola', '+244', 1),
(9, 'Anguilla', '+1-264', 1),
(10, 'Antarctica', '+672', 1),
(11, 'Antigua and Barbuda', '+1-268', 1),
(12, 'Argentina', '+54', 1),
(13, 'Armenia', '+374', 1),
(14, 'Aruba', '+297', 1),
(15, 'Ascension Island', '+247', 1),
(16, 'Australia', '+61', 1),
(17, 'Austria', '+43', 1),
(18, 'Azerbaijan', '+994', 1),
(19, 'Bahamas', '+1-242', 1),
(20, 'Bahrain', '+973', 1),
(21, 'Bangladesh', '+880', 1),
(22, 'Barbados', '+1-246', 1),
(23, 'Belarus', '+375', 1),
(24, 'Belgium', '+32', 1),
(25, 'Belize', '+501', 1),
(26, 'Benin', '+229', 1),
(27, 'Bermuda', '+1-441', 1),
(28, 'Bhutan', '+975', 1),
(29, 'Bolivia', '+591', 1),
(30, 'Bophuthatswana', '+27', 1),
(31, 'Bosnia-Herzegovina', '+387', 1),
(32, 'Botswana', '+267', 1),
(33, 'Bouvet Island', '+47', 1),
(34, 'Brazil', '+55', 1),
(35, 'British Indian Ocean', '+246', 1),
(36, 'British Virgin Islands', '+1284', 1),
(37, 'Brunei Darussalam', '+673', 1),
(38, 'Bulgaria', '+359', 1),
(39, 'Burkina Faso', '+226', 1),
(40, 'Burundi', '+257', 1),
(41, 'Cambodia', '+855', 1),
(42, 'Cameroon', '+237', 1),
(44, 'Cape Verde Island', '+238', 1),
(45, 'Cayman Islands', '+1-345', 1),
(46, 'Central Africa', '+236', 1),
(47, 'Chad', '+235', 1),
(48, 'Channel Islands', '+44', 1),
(49, 'Chile', '+56', 1),
(50, 'China, Peoples Republic', '+86', 1),
(51, 'Christmas Island', '+61', 1),
(52, 'Cocos (Keeling) Islands', '+61', 1),
(53, 'Colombia', '+57', 1),
(54, 'Comoros Islands', '+269', 1),
(55, 'Congo', '+242', 1),
(56, 'Cook Islands', '+682', 1),
(57, 'Costa Rica', '+506', 1),
(58, 'Croatia', '+385', 1),
(59, 'Cuba', '+53', 1),
(60, 'Cyprus', '+357', 1),
(61, 'Czech Republic', '+420', 1),
(62, 'Denmark', '+45', 1),
(63, 'Djibouti', '+253', 1),
(64, 'Dominica', '+1-767', 1),
(65, 'Dominican Republic', '+1-809', 1),
(66, 'Easter Island', '+56', 1),
(67, 'Ecuador', '+593', 1),
(68, 'Egypt', '+20', 1),
(69, 'El Salvador', '+503', 1),
(70, 'England', '+44', 1),
(71, 'Equatorial Guinea', '+240', 1),
(72, 'Estonia', '+372', 1),
(73, 'Ethiopia', '+251', 1),
(74, 'Falkland Islands', '+500', 1),
(75, 'Faeroe Islands', '+298', 1),
(76, 'Fiji', '+679', 1),
(77, 'Finland', '+358', 1),
(78, 'France', '+33', 1),
(79, 'French Guyana', '+594', 1),
(80, 'French Polynesia', '+689', 1),
(81, 'Gabon', '+241', 1),
(82, 'Gambia', '+220', 1),
(83, 'Georgia Republic', '+995', 1),
(84, 'Germany', '+49', 1),
(85, 'Gibraltar', '+350', 1),
(86, 'Greece', '+30', 1),
(87, 'Greenland', '+299', 1),
(88, 'Grenada', '+1-473', 1),
(89, 'Guadeloupe (French)', '+590', 1),
(90, 'Guatemala', '+502', 1),
(91, 'Guernsey Island', '+44', 1),
(92, 'Guinea Bissau', '+245', 1),
(93, 'Guinea', '+224', 1),
(94, 'Guyana', '+592', 1),
(95, 'Haiti', '+509', 1),
(96, 'Heard and McDonald Isls', '+672', 1),
(97, 'Honduras', '+504', 1),
(98, 'Hong Kong', '+852', 1),
(99, 'Hungary', '+36', 1),
(100, 'Iceland', '+354', 1),
(101, 'India', '+91', 1),
(102, 'Iran', '+98', 1),
(103, 'Iraq', '+964', 1),
(104, 'Ireland', '+353', 1),
(105, 'Isle of Man', '+44', 1),
(106, 'Israel', '+972', 1),
(107, 'Italy', '+39', 1),
(108, 'Ivory Coast', '+225', 1),
(109, 'Jamaica', '+1-876', 1),
(110, 'Japan', '+81', 1),
(111, 'Jersey Island', '+44', 1),
(112, 'Jordan', '+962', 1),
(113, 'Kazakhstan', '+7', 1),
(114, 'Kenya', '+254', 1),
(115, 'Kiribati', '+686', 1),
(116, 'Kuwait', '+965', 1),
(117, 'Laos', '+856', 1),
(118, 'Latvia', '+371', 1),
(119, 'Lebanon', '+961', 1),
(120, 'Lesotho', '+266', 1),
(121, 'Liberia', '+231', 1),
(122, 'Libya', '+218', 1),
(123, 'Liechtenstein', '+423', 1),
(124, 'Lithuania', '+370', 1),
(125, 'Luxembourg', '+352', 1),
(126, 'Macao', '+853', 1),
(127, 'Macedonia', '+389', 1),
(128, 'Madagascar', '+261', 1),
(129, 'Malawi', '+265', 1),
(130, 'Malaysia', '+60', 1),
(131, 'Maldives', '+960', 1),
(132, 'Mali', '+223', 1),
(133, 'Malta', '+356', 1),
(134, 'Martinique (French)', '+596', 1),
(135, 'Mauritania', '+222', 1),
(136, 'Mauritius', '+230', 1),
(137, 'Mayotte', '+262', 1),
(139, 'Micronesia', '+691', 1),
(140, 'Moldavia', '+373', 1),
(141, 'Monaco', '+377', 1),
(142, 'Mongolia', '+976', 1),
(143, 'Montenegro', '+382', 1),
(144, 'Montserrat', '+1664', 1),
(145, 'Morocco', '+212', 1),
(146, 'Mozambique', '+258', 1),
(147, 'Myanmar', '+95', 1),
(148, 'Namibia', '+264', 1),
(149, 'Nauru', '+674', 1),
(150, 'Nepal', '+977', 1),
(151, 'Netherlands Antilles', '+599', 1),
(152, 'Netherlands', '+31', 1),
(153, 'New Caledonia (French)', '+687', 1),
(154, 'New Zealand', '+64', 1),
(155, 'Nicaragua', '+505', 1),
(156, 'Niger', '+227', 1),
(157, 'Niue', '+683', 1),
(158, 'Norfolk Island', '+672', 1),
(159, 'North Korea', '+850', 1),
(160, 'Northern Ireland', '+44', 1),
(161, 'Norway', '+47', 1),
(162, 'Oman', '+968', 1),
(163, 'Pakistan', '+92', 1),
(164, 'Panama', '+507', 1),
(165, 'Papua New Guinea', '+675', 1),
(166, 'Paraguay', '+595', 1),
(167, 'Peru', '+51', 1),
(168, 'Philippines', '+63', 1),
(169, 'Pitcairn Island', '+64', 1),
(170, 'Poland', '+48', 1),
(171, 'Polynesia (French)', '+689', 1),
(172, 'Portugal', '+351', 1),
(173, 'Qatar', '+974', 1),
(174, 'Reunion Island', '+262', 1),
(175, 'Romania', '+40', 1),
(176, 'Russia', '+7', 1),
(177, 'Rwanda', '+250', 1),
(178, 'S.Georgia Sandwich Isls', '+500', 1),
(179, 'Sao Tome, Principe', '+239', 1),
(180, 'San Marino', '+378', 1),
(181, 'Saudi Arabia', '+966', 1),
(182, 'Scotland', '+44', 1),
(183, 'Senegal', '+221', 1),
(184, 'Serbia', '+381', 1),
(185, 'Seychelles', '+248', 1),
(186, 'Shetland', '+44', 1),
(187, 'Sierra Leone', '+232', 1),
(188, 'Singapore', '+65', 1),
(189, 'Slovak Republic', '+421', 1),
(190, 'Slovenia', '+386', 1),
(191, 'Solomon Islands', '+677', 1),
(192, 'Somalia', '+252', 1),
(193, 'South Africa', '+27', 1),
(194, 'South Korea', '+82', 1),
(195, 'Spain', '+34', 1),
(196, 'Sri Lanka', '+94', 1),
(197, 'St. Helena', '+290', 1),
(198, 'St. Lucia', '+1758', 1),
(199, 'St. Pierre Miquelon', '+508', 1),
(200, 'St. Martins', '+590', 1),
(201, 'St. Kitts Nevis Anguilla', '+1869', 1),
(202, 'St. Vincent Grenadines', '+1784', 1),
(203, 'Sudan', '+249', 1),
(204, 'Suriname', '+597', 1),
(205, 'Svalbard Jan Mayen', '+47', 1),
(206, 'Swaziland', '+268', 1),
(207, 'Sweden', '+46', 1),
(208, 'Switzerland', '+41', 1),
(209, 'Syria', '+963', 1),
(210, 'Tajikistan', '+992', 1),
(211, 'Taiwan', '+886', 1),
(212, 'Tahiti', '+689', 1),
(213, 'Tanzania', '+255', 1),
(214, 'Thailand', '+66', 1),
(215, 'Togo', '+228', 1),
(216, 'Tokelau', '+690', 1),
(217, 'Tonga', '+676', 1),
(218, 'Trinidad and Tobago', '+1-868', 1),
(219, 'Tunisia', '+216', 1),
(220, 'Turkmenistan', '+993', 1),
(221, 'Turks and Caicos Isls', '+1649', 1),
(222, 'Tuvalu', '+688', 1),
(223, 'Uganda', '+256', 1),
(224, 'Ukraine', '+380', 1),
(225, 'United Arab Emirates', '+971', 1),
(226, 'Uruguay', '+598', 1),
(227, 'Uzbekistan', '+998', 1),
(228, 'Vanuatu', '+678', 1),
(229, 'Vatican City State', '+379', 1),
(230, 'Venezuela', '+58', 1),
(231, 'Vietnam', '+84', 1),
(232, 'Virgin Islands (Brit,1)', '+1284', 1),
(233, 'Wales', '+44', 1),
(234, 'Wallis Futuna Islands', '+681', 1),
(235, 'Western Sahara', '+212', 1),
(236, 'Western Samoa', '+685', 1),
(237, 'Yemen', '+967', 1),
(238, 'Yugoslavia', '+381', 1),
(239, 'Zaire', '+243', 1),
(240, 'Zambia', '+260', 1),
(241, 'Zimbabwe', '+263', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_download`
--

CREATE TABLE `tbl_download` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `image` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_download`
--

INSERT INTO `tbl_download` (`id`, `slug`, `title`, `status`, `sortorder`, `image`) VALUES
(1, 'asdasd', 'asdasd', 1, 1, 'T8z6W-abs.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` text NOT NULL,
  `image` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `event_stdate` date NOT NULL,
  `event_endate` date NOT NULL,
  `type` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_gr` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `content_gr` text NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `title_gr`, `content`, `content_gr`, `status`, `sortorder`, `added_date`) VALUES
(66, 'What amenities are included in the rooms?', '', '<p>\r\n	Rooms include Wi-Fi, air conditioning, LED TV, minibar (on request), tea kettle, safe deposit box, rain shower, hair dryer, and more.</p>\r\n', '', 1, 4, '2025-04-08 10:43:58'),
(67, 'What is the check-in and check-out time?', '', '<p>\r\n	Check-in is after 2:00 PM and check-out is before 12:00 PM. Early check-in or late check-out is subject to availability.</p>\r\n', '', 1, 9, '2025-03-07 12:52:28'),
(68, 'What types of rooms are available?', '', '<p>\r\n	We offer Deluxe Single, Double/Twin, Family Rooms, and Interconnected Family Rooms. All rooms feature modern amenities and scenic views.</p>\r\n', '', 1, 6, '2025-10-28 17:00:17'),
(69, 'Do you offer room service?', '', '<p>\r\n	Yes, 24-hour room service is available for food, beverages, and essentials.</p>\r\n', '', 1, 5, '2025-10-28 17:01:09'),
(70, 'What wellness facilities are available?', '', '<p>\r\n	We offer sauna, steam bath, and a fully equipped fitness center with clear guest guidelines.</p>\r\n', '', 1, 3, '2025-10-28 17:02:07'),
(71, 'What payment methods are accepted?', '', '<p>\r\n	We accept MasterCard, Visa, Amex, and FonePay. Cash payments are also welcome.</p>\r\n', '', 1, 1, '2025-10-28 17:03:08'),
(72, 'Is Wi-Fi available throughout the resort?', '', '<p>\r\n	Yes, high-speed fiber internet is available in all rooms and public areas.</p>\r\n', '', 1, 8, '2025-10-28 17:03:43'),
(73, 'What landmarks are near Manakamana Hillcrest Resort?', '', '<p>\r\n	Nearby attractions to Manakamana Hillcrest Resort include Manakamana Temple, just 550 ft from your search (straight-line distance) away.</p>\r\n', '', 1, 2, '2025-10-30 14:55:50'),
(74, 'Are pets allowed at Manakamana Hillcrest Resort?', '', '<p>\r\n	No, pets aren&rsquo;t allowed at Manakamana Hillcrest Resort.</p>\r\n', '', 1, 7, '2025-10-30 14:56:37'),
(75, 'How much does it cost to stay at Manakamana Hillcrest Resort?', '', '<p>\r\n	Room rates at Manakamana Hillcrest Resort typically range from 130 to 200 USD per night, depending on room type, season, and availability.</p>\r\n', '', 1, 0, '2025-10-30 14:57:00'),
(76, 'Where is Manakamana Hillcrest Resort located?', '', '<p>\r\n	Manakamana Hillcrest Resort is located within the Manakamana Cable Car Premises, in Sahid Lakhan Gaupalika, Ward No. 2, Manakamana, Gorkha District, Nepal.</p>\r\n', '', 1, 10, '2025-10-30 14:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `parentId` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `brief` text NOT NULL,
  `icon` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `parentId`, `image`, `brief`, `icon`, `status`, `sortorder`, `added_date`) VALUES
(21, 'LED Television', 17, 'BNaUQ-led-tv.png', '', '', 1, 7, '2025-04-17 09:08:23'),
(22, 'Private Balcony', 17, 'ZvzIt-balcony.png', '', '', 1, 9, '2025-04-17 09:08:41'),
(51, 'Stationery', 25, 'KZZm7-stationery.png', '', '', 1, 21, '2025-10-29 13:16:56'),
(17, 'Room Amenities', 0, '', '', '', 1, 1, '2025-04-17 09:06:20'),
(18, 'Comfortable King Bed', 17, 'lzYTu-bed.webp', '', '', 1, 2, '2025-04-17 09:07:14'),
(52, 'High Speed Internet', 25, 'uQYVw-Wifi.png', '', '', 1, 22, '2025-10-29 13:19:47'),
(23, 'Mini Bar', 17, 'xyhMU-mini.png', '', '', 1, 11, '2025-04-17 09:09:01'),
(24, 'Tea & Coffee Maker', 17, '9eL37-hot-drink.png', '', '', 1, 13, '2025-04-17 09:09:12'),
(25, 'Hall Amenities', 0, '', '', '', 1, 4, '2025-04-17 15:29:30'),
(26, 'Projector', 25, 'qrPrb-projector.png', '', '', 1, 3, '2025-04-17 15:30:23'),
(27, 'PA System With Microphone', 25, 'LUS5T-microphone.png', '', '', 1, 5, '2025-04-17 15:31:29'),
(28, 'Computer/Laptop', 25, '7KYqn-laptop.png', '', '', 1, 6, '2025-04-17 15:31:41'),
(29, 'Whiteboard', 25, 'Nvpvo-blackboard.png', '', '', 1, 8, '2025-04-17 15:31:59'),
(30, 'Flip Chart', 25, 'aXz6R-flip-chart.png', '', '', 1, 10, '2025-04-17 15:32:22'),
(31, 'Soft (Pin) Board', 25, '4KfH5-hanging-whiteboard.png', '', '', 1, 12, '2025-04-18 12:49:20'),
(32, 'Printing Services', 25, 'LGjTc-print.png', '', '', 1, 14, '2025-04-18 12:49:50'),
(33, 'Writing Pads With Pencils', 25, 'Xh1DJ-book.png', '', '', 1, 15, '2025-04-18 12:50:32'),
(34, 'Photography', 25, 'sTvXO-camera.png', '', '', 1, 17, '2025-04-18 12:50:50'),
(35, 'Videography', 25, 'JdmfL-videography.png', '', '', 1, 19, '2025-04-18 12:51:04'),
(36, 'High Speed Internet', 17, '6c59c-wifi.png', '', '', 1, 16, '2025-04-18 14:51:16'),
(37, 'Air Conditioner', 17, 'jsFgM-air-conditioner.png', '', '', 1, 18, '2025-04-18 14:51:30'),
(38, 'Bathrobe', 17, 'uM0OB-bathrobe.png', '', '', 1, 20, '2025-04-18 14:51:42'),
(39, 'Bathtub', 17, 'T88rv-bathtub.png', '', '', 1, 21, '2025-04-18 14:51:56'),
(40, 'Iron & Iron Board', 17, 'MJBHf-ironing-board.png', '', '', 1, 22, '2025-04-18 14:54:27'),
(50, 'LED Screen', 25, 'WwvWx-tv.png', '', '', 1, 20, '2025-10-29 13:16:01'),
(42, 'Complimentary Toiletries', 17, 'Vh9KV-toiletries.png', '', '', 1, 23, '2025-04-18 14:55:04'),
(43, 'Separate Living Room', 17, 'HVy8j-living.png', '', '', 1, 24, '2025-04-18 14:55:31'),
(44, 'Cold/Hot Shower ', 17, 'M182k-shower.png', '', '', 1, 25, '2025-04-18 14:55:51'),
(45, 'Slipper', 17, 'NJsJT-slippers.png', '', '', 1, 26, '2025-04-18 14:56:34'),
(46, 'Hairdryer', 17, 'qhjvd-Hair Dryer.png', '', '', 1, 27, '2025-04-18 15:00:52'),
(47, 'Work Desk', 17, 'Jnn6s-Work Desk.png', '', '', 1, 28, '2025-04-18 15:01:06'),
(48, 'Twin Bed', 17, 'iQzWM-Twin Bed.png', '', '', 1, 29, '2025-04-18 15:02:03'),
(49, 'Fruit Basket', 17, 'jpibF-Twin Bed.png', '', '', 1, 30, '2025-04-18 15:03:27'),
(53, 'Wardrobe', 17, '6Am0W-closet.png', '', '', 1, 31, '2025-10-30 15:25:34'),
(54, 'Luggage Rack', 17, 'pFb96-luggage-locker.png', '', '', 1, 32, '2025-10-30 15:27:34'),
(55, 'Hot Tea/Water Kettle', 17, '2sk0T-kettle.png', '', '', 1, 33, '2025-10-30 15:28:52'),
(56, 'Refrigerator', 17, 'QUezJ-fridge.png', '', '', 1, 34, '2025-10-30 15:29:26'),
(57, 'Safe Deposit Box', 17, 'EchUX-safe-box.png', '', '', 1, 35, '2025-10-30 15:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galleries`
--

CREATE TABLE `tbl_galleries` (
  `id` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `title` varchar(250) NOT NULL,
  `image` varchar(50) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_galleries`
--

INSERT INTO `tbl_galleries` (`id`, `slug`, `title`, `image`, `detail`, `status`, `sortorder`, `registered`, `type`) VALUES
(17, 'restaurant', 'Restaurant', '', '', 1, 2, '2025-11-17 15:26:07', 1),
(18, 'wellness', 'Wellness', '', '', 1, 1, '2025-11-17 15:54:29', 1),
(14, 'home-gallery', 'Home Gallery', '', '', 1, 6, '2025-11-13 16:32:52', 2),
(15, 'exterior', 'Exterior', '', '', 1, 5, '2025-11-16 16:10:28', 1),
(16, 'interior', 'Interior', '', '', 1, 4, '2025-11-17 11:42:00', 1),
(19, 'room', 'Room', '', '', 1, 3, '2025-11-17 15:59:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery_images`
--

CREATE TABLE `tbl_gallery_images` (
  `id` int(11) NOT NULL,
  `galleryid` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `detail` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_gallery_images`
--

INSERT INTO `tbl_gallery_images` (`id`, `galleryid`, `title`, `image`, `status`, `detail`, `sortorder`, `registered`) VALUES
(243, 19, 'Interconnected Family Room', 'NX2ji-1.jpg', 1, '', 10, '2025-11-17 16:07:09'),
(240, 19, 'Interconnected Family Room', 'zMGYJ-1.jpg', 1, '', 7, '2025-11-17 16:05:08'),
(239, 19, 'Deluxe Family Room', 'iQlNd-2.jpg', 1, '', 5, '2025-11-17 16:04:20'),
(225, 17, 'Basera Restaurant', 'B6SfT-LON05111.jpg', 1, '', 4, '2025-11-17 15:52:41'),
(223, 17, 'Food', '8BuLY-LON04598.jpg', 1, '', 6, '2025-11-17 15:27:37'),
(224, 17, 'Basera Restaurant', 'g09mo-1.jpg', 1, '', 3, '2025-11-17 15:52:41'),
(242, 19, 'Interconnected Family Room', 'JloyY-3.jpg', 1, '', 12, '2025-11-17 16:07:09'),
(241, 19, 'Interconnected Family Room', 'kiUfz-2.jpg', 1, '', 11, '2025-11-17 16:07:09'),
(238, 19, 'Deluxe Family Room', '4ZeS5-3.jpg', 1, '', 6, '2025-11-17 16:04:20'),
(251, 16, 'Interior', 'VehZS-3.jpg', 1, '', 13, '2025-11-17 16:42:16'),
(250, 16, 'Interior', 'rXcIE-2.jpg', 1, '', 12, '2025-11-17 16:42:16'),
(248, 15, 'Drone View', '4AM3D-1.jpg', 1, '', 3, '2025-11-17 16:17:53'),
(231, 18, 'Swimming Pool', '808qS-LON05058.jpg', 1, '', 1, '2025-11-17 15:56:16'),
(222, 17, 'Basera Restaurant', 'Ijve5-LON04527.jpg', 1, '', 1, '2025-11-17 15:27:37'),
(252, 18, 'Swimming Pool', 'xOCwa-1.jpg', 1, '', 2, '2025-11-17 16:44:07'),
(237, 19, 'Deluxe Family Room', 'ySyjD-1.jpg', 1, '', 4, '2025-11-17 16:01:49'),
(236, 19, 'Interconnected Family Room', 'xEnPn-2.jpg', 1, '', 9, '2025-11-17 16:01:49'),
(235, 19, 'Interconnected Family Room', 'bZjfn-3.jpg', 1, '', 8, '2025-11-17 16:01:49'),
(234, 19, 'Deluxe Family Room', '31Y0x-2.jpg', 1, '', 2, '2025-11-17 15:59:31'),
(233, 19, 'Deluxe Family Room', 'EM8uI-1.jpg', 1, '', 1, '2025-11-17 15:59:31'),
(232, 19, 'Deluxe Family Room', 'eJSDF-3.jpg', 1, '', 3, '2025-11-17 15:59:31'),
(230, 18, 'Gym', 'bsGlu-LON04437.jpg', 1, '', 6, '2025-11-17 15:56:16'),
(229, 18, 'Swimming Pool', 'uR3G4-LON05219.jpg', 1, '', 3, '2025-11-17 15:56:16'),
(228, 18, 'Wellness', 'VEB4N-LON04443.jpg', 1, '', 5, '2025-11-17 15:56:16'),
(180, 14, 'Drone View', 'nq8nJ-4.jpg', 1, '', 1, '2025-11-13 16:33:32'),
(181, 14, 'Drone View', 'FBoW2-9.jpg', 1, '', 2, '2025-11-13 16:33:32'),
(182, 14, 'Drone View', 'RkYAE-1.jpg', 1, '', 3, '2025-11-13 16:33:32'),
(183, 14, 'Exterior', 'GSkkz-10.jpg', 1, '', 4, '2025-11-13 16:34:02'),
(184, 14, 'Exterior', 'kAsFK-12.jpg', 1, '', 5, '2025-11-13 16:34:02'),
(185, 14, 'Exterior', 'x3aTY-11.jpg', 1, '', 6, '2025-11-13 16:34:02'),
(186, 14, 'Corridor', '0dZxt-4.jpg', 1, '', 8, '2025-11-13 16:34:41'),
(187, 14, 'Interior', 'MFnW9-2.jpg', 1, '', 9, '2025-11-13 16:34:41'),
(188, 14, 'Reception', 'deGga-8.jpg', 1, '', 7, '2025-11-13 16:34:41'),
(189, 14, 'Bathroom', 'YDfdO-10.jpg', 1, '', 12, '2025-11-13 16:35:39'),
(190, 14, 'Interconnected Family Room', 'V9vk6-7.jpg', 1, '', 10, '2025-11-13 16:35:39'),
(191, 14, 'Deluxe Family Room', 'qH74B-1.jpg', 1, '', 11, '2025-11-13 16:35:39'),
(192, 14, 'Food', 'GRQUw-5.jpg', 1, '', 15, '2025-11-13 16:36:28'),
(193, 14, 'Food', 'inMhZ-7.jpg', 1, '', 16, '2025-11-13 16:36:28'),
(194, 14, 'Multicuisine Restaurant', 'CtDEa-3.jpg', 1, '', 14, '2025-11-13 16:36:28'),
(195, 14, 'Multicuisine Restaurant', 'F9iS3-1.jpg', 1, '', 13, '2025-11-13 16:36:28'),
(196, 14, 'Wellness Center', 'AHsw6-8.jpg', 1, '', 17, '2025-11-13 16:37:56'),
(197, 14, 'Wellness Center', 'vXzOS-9.jpg', 1, '', 18, '2025-11-13 16:37:56'),
(198, 14, 'Swimming Pool', 'qCBeM-3.jpg', 1, '', 19, '2025-11-13 16:37:56'),
(199, 14, 'Gym', '9HU5Q-7.jpg', 1, '', 20, '2025-11-13 16:37:56'),
(200, 14, 'Swimming Pool', 'lHrxl-5.jpg', 1, '', 21, '2025-11-13 16:37:56'),
(201, 16, 'Corridor', 'JD7AB-LON05131.jpg', 1, '', 1, '2025-11-17 11:42:46'),
(202, 16, 'Corridor', 'rMsvZ-LON05188.jpg', 1, '', 2, '2025-11-17 11:42:46'),
(203, 16, 'Corridor', 'IHicU-LON05184.jpg', 1, '', 3, '2025-11-17 11:42:46'),
(204, 16, 'Interior', 'LVPkh-LON05121.jpg', 1, '', 4, '2025-11-17 11:42:46'),
(205, 16, 'Interior', 'Y4JA3-LON05124.jpg', 1, '', 5, '2025-11-17 11:42:46'),
(220, 17, 'Basera Restaurant', '4k1vi-LON04525.jpg', 1, '', 2, '2025-11-17 15:27:37'),
(249, 16, 'Interior', 'cx7NV-1.jpg', 1, '', 11, '2025-11-17 16:42:16'),
(247, 15, 'Drone View', 'jH3eZ-3.jpg', 1, '', 2, '2025-11-17 16:17:53'),
(246, 15, 'Drone View', 'IdVFA-2.jpg', 1, '', 1, '2025-11-17 16:17:53'),
(218, 17, 'Food', 'MfqvV-LON04573.jpg', 1, '', 5, '2025-11-17 15:27:37'),
(226, 18, 'Wellness', '3UA5u-LON04444.jpg', 1, '', 4, '2025-11-17 15:56:16'),
(213, 16, 'Reception', 'J2SHo-LON04786.jpg', 1, '', 6, '2025-11-17 11:49:29'),
(214, 16, 'Reception', 'syaZt-LON04796.jpg', 1, '', 7, '2025-11-17 11:49:29'),
(215, 16, 'Reception', 'G67dY-LON04805.jpg', 0, '', 8, '2025-11-17 11:49:29'),
(216, 16, 'Reception', 'ON161-LON04807.jpg', 1, '', 9, '2025-11-17 11:49:29'),
(217, 16, 'Lobby Area', 'A6s08-LON04828.jpg', 1, '', 10, '2025-11-17 11:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_type`
--

CREATE TABLE `tbl_group_type` (
  `id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_type` varchar(20) NOT NULL,
  `authority` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=>Frontend,2=>Personality,3=>Backend,4=>Both',
  `description` tinytext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `permission` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_group_type`
--

INSERT INTO `tbl_group_type` (`id`, `group_name`, `group_type`, `authority`, `description`, `status`, `permission`) VALUES
(1, 'Administrator', '1', 1, '', 1, 'a:25:{i:0;s:2:\"74\";i:1;s:3:\"306\";i:2;s:1:\"1\";i:3;s:1:\"2\";i:4;s:1:\"3\";i:5;s:1:\"4\";i:6;s:2:\"25\";i:7;s:2:\"23\";i:8;s:2:\"24\";i:9;s:3:\"310\";i:10;s:2:\"20\";i:11;s:1:\"5\";i:12;s:2:\"11\";i:13;s:2:\"17\";i:14;s:2:\"27\";i:15;s:3:\"300\";i:16;s:3:\"301\";i:17;s:1:\"9\";i:18;s:2:\"19\";i:19;s:2:\"28\";i:20;s:2:\"12\";i:21;s:2:\"16\";i:22;s:2:\"15\";i:23;s:2:\"14\";i:24;s:2:\"13\";}'),
(2, 'General Admin', '1', 1, '', 1, 'a:20:{i:0;s:2:\"74\";i:1;s:1:\"1\";i:2;s:1:\"2\";i:3;s:1:\"3\";i:4;s:1:\"4\";i:5;s:2:\"25\";i:6;s:2:\"23\";i:7;s:2:\"24\";i:8;s:3:\"310\";i:9;s:2:\"20\";i:10;s:1:\"5\";i:11;s:2:\"11\";i:12;s:2:\"17\";i:13;s:2:\"27\";i:14;s:3:\"301\";i:15;s:2:\"19\";i:16;s:2:\"28\";i:17;s:2:\"12\";i:18;s:2:\"14\";i:19;s:2:\"13\";}');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_itinerary`
--

CREATE TABLE `tbl_itinerary` (
  `id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `day` varchar(100) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL,
  `hotel1` varchar(200) NOT NULL,
  `hotel2` varchar(200) NOT NULL,
  `hotel3` varchar(200) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_itinerary`
--

INSERT INTO `tbl_itinerary` (`id`, `package_id`, `title`, `day`, `slug`, `image`, `content`, `breakfast`, `lunch`, `dinner`, `hotel1`, `hotel2`, `hotel3`, `sortorder`, `status`) VALUES
(1, 13, 'asdasd', 'test', 'asdasd', '', '<p>\r\n	asd</p>\r\n', 0, 0, 0, '', '', '', 1, 1),
(3, 17, '6:00 AM – Wake Up / Light Breakfast', '1', '6-00-am-wake-up-light-breakfast', '', '<p>\r\n	Eat something light but energizing (oatmeal, banana, coffee) Hydrate</p>\r\n', 0, 0, 0, '', '', '', 2, 1),
(4, 17, '6:45 AM – Depart for Trailhead', '2', '6-45-am-depart-for-trailhead', '', '<p>\r\n	Double-check gear</p>\r\n<p>\r\n	Drive or walk to trailhead</p>\r\n', 0, 0, 0, '', '', '', 4, 1),
(5, 17, '7:30 AM – Begin Hike', '3', '7-30-am-begin-hike', '', '<p>\r\n	Warm-up, set a steady pace</p>\r\n<p>\r\n	Enjoy early light and cooler temps</p>\r\n', 0, 0, 0, '', '', '', 7, 1),
(6, 17, '9:00 AM – Short Break', '4', '9-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar) Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 10, 1),
(9, 16, '6:00 AM – Wake Up / Light Breakfast', '1', '6-00-am-wake-up-light-breakfast', '', '<p>\r\n	Eat something light but energizing (oatmeal, banana, coffee) Hydrate</p>\r\n', 0, 0, 0, '', '', '', 5, 1),
(10, 16, '6:45 AM – Depart for Trailhead', '2', '6-45-am-depart-for-trailhead', '', '<p>\r\n	Double-check gear</p>\r\n<p>\r\n	Drive or walk to trailhead</p>\r\n', 0, 0, 0, '', '', '', 8, 1),
(11, 16, '7:30 AM – Begin Hike', '3', '7-30-am-begin-hike', '', '<p>\r\n	Warm-up, set a steady pace</p>\r\n<p>\r\n	Enjoy early light and cooler temps</p>\r\n', 0, 0, 0, '', '', '', 11, 1),
(12, 16, '9:00 AM – Short Break', '4', '9-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar)</p>\r\n<p>\r\n	Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 13, 1),
(13, 16, '11:00 AM – Reach Midpoint / Summit / Viewpoint', '5', '11-00-am-reach-midpoint-summit-viewpoint', '', '<p>\r\n	Enjoy the scenery</p>\r\n<p>\r\n	Take photos</p>\r\n<p>\r\n	Eat light lunch or extended snack.</p>\r\n', 0, 0, 0, '', '', '', 16, 1),
(14, 16, '1:00 AM – Short Break', '6', '1-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar)</p>\r\n<p>\r\n	Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 19, 1),
(15, 17, '11:00 AM – Reach Midpoint / Summit / Viewpoint', '5', '11-00-am-reach-midpoint-summit-viewpoint', '', '<p>\r\n	Enjoy the scenery</p>\r\n<p>\r\n	Take photos</p>\r\n<p>\r\n	Eat light lunch or extended snack.</p>\r\n', 0, 0, 0, '', '', '', 14, 1),
(16, 17, '1:00 AM – Short Break', '6', '1-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar)</p>\r\n<p>\r\n	Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 17, 1),
(17, 20, '6:00 AM – Wake Up / Light Breakfast', '1', '6-00-am-wake-up-light-breakfast', '', '<p>\r\n	Eat something light but energizing (oatmeal, banana, coffee) Hydrate</p>\r\n', 0, 0, 0, '', '', '', 3, 1),
(18, 20, '6:45 AM – Depart for Trailhead', '2', '6-45-am-depart-for-trailhead', '', '<p>\r\n	Double-check gear</p>\r\n<p>\r\n	Drive or walk to trailhead</p>\r\n', 0, 0, 0, '', '', '', 6, 1),
(19, 20, '7:30 AM – Begin Hike', '3', '7-30-am-begin-hike', '', '<p>\r\n	Warm-up, set a steady pace</p>\r\n<p>\r\n	Enjoy early light and cooler temps</p>\r\n', 0, 0, 0, '', '', '', 9, 1),
(20, 20, '9:00 AM – Short Break', '4', '9-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar)</p>\r\n<p>\r\n	Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 12, 1),
(21, 20, '11:00 AM – Reach Midpoint / Summit / Viewpoint', '5', '11-00-am-reach-midpoint-summit-viewpoint', '', '<p>\r\n	Enjoy the scenery</p>\r\n<p>\r\n	Take photos</p>\r\n<p>\r\n	Eat light lunch or extended snack.</p>\r\n', 0, 0, 0, '', '', '', 15, 1),
(22, 20, '1:00 AM – Short Break', '6', '1-00-am-short-break', '', '<p>\r\n	Hydrate, snack (trail mix, energy bar)</p>\r\n<p>\r\n	Check map and progress</p>\r\n', 0, 0, 0, '', '', '', 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs`
--

CREATE TABLE `tbl_logs` (
  `id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `userid` int(11) NOT NULL,
  `user_action` int(11) NOT NULL,
  `ip_track` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_logs`
--

INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1, 'Log has been cleared.', '2025-10-08 12:44:20', 1, 6, '::1'),
(2, 'Slideshow [test]Data has added successfully.', '2025-10-08 12:44:46', 1, 3, '::1'),
(3, 'Slideshow [slide 1] Edit Successfully', '2025-10-08 12:44:55', 1, 4, '::1'),
(4, 'Slideshow [slide 2]Data has added successfully.', '2025-10-08 12:45:10', 1, 3, '::1'),
(5, 'Sub Package Image [Restaurant]Data has added successfully.', '2025-10-08 12:48:10', 1, 3, '::1'),
(6, 'Sub Package Image [Restaurant]Data has added successfully.', '2025-10-08 12:48:10', 1, 3, '::1'),
(7, 'Sub Package Image [Durbar]Data has added successfully.', '2025-10-08 12:48:44', 1, 3, '::1'),
(8, 'Sub Package Image [Durbar]Data has added successfully.', '2025-10-08 12:48:44', 1, 3, '::1'),
(9, 'SocialNetworking [booking]Data has added successfully.', '2025-10-08 12:50:42', 1, 3, '::1'),
(10, 'SocialNetworking [agoda]Data has added successfully.', '2025-10-08 12:51:19', 1, 3, '::1'),
(11, 'SocialNetworking [tripadvisor]Data has added successfully.', '2025-10-08 12:51:35', 1, 3, '::1'),
(12, 'SocialNetworking [ctrip]Data has added successfully.', '2025-10-08 12:51:46', 1, 3, '::1'),
(13, 'SocialNetworking [make my trip]Data has added successfully.', '2025-10-08 12:51:56', 1, 3, '::1'),
(14, 'Sub Package \'Deluxe Family\' has added successfully.', '2025-10-08 13:17:37', 1, 3, '::1'),
(15, 'Changes on Config \'Lumbini Palace\' has been saved successfully.', '2025-10-08 13:21:39', 1, 4, '::1'),
(16, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-08 13:23:57', 1, 4, '::1'),
(17, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-08 13:24:06', 1, 4, '::1'),
(18, 'User [Manakamana Hillcrest Resort  ] Edit Successfully', '2025-10-08 13:24:18', 1, 4, '::1'),
(19, 'Blog [Manakamana Hillcrest Resort]Data has added successfully.', '2025-10-08 13:24:57', 1, 3, '::1'),
(20, 'Login: superadmin logged in.', '2025-10-09 10:43:55', 1, 1, '113.199.253.186'),
(21, 'Services [Room Service]Data has added successfully.', '2025-10-09 10:48:02', 1, 3, '113.199.253.186'),
(22, 'Services [Corporate Events & wedding destination] Edit Successfully', '2025-10-09 10:49:38', 1, 4, '113.199.253.186'),
(23, 'Services [Corporate Events & wedding destination] Edit Successfully', '2025-10-09 10:51:43', 1, 4, '113.199.253.186'),
(24, 'Slideshow [Enjoy a Luxury Experience] Edit Successfully', '2025-10-09 10:53:24', 1, 4, '113.199.253.186'),
(25, 'Slideshow [Unparalleled Beauty] Edit Successfully', '2025-10-09 10:56:18', 1, 4, '113.199.253.186'),
(26, 'Slideshow [Unparalleled Beauty] Edit Successfully', '2025-10-09 11:04:25', 1, 4, '113.199.253.186'),
(27, 'Slideshow [Unparalleled Beauty] Edit Successfully', '2025-10-09 11:09:44', 1, 4, '113.199.253.186'),
(28, 'Services [Parking Space]Data has added successfully.', '2025-10-09 11:23:23', 1, 3, '113.199.253.186'),
(29, 'Services [Parking Space] Edit Successfully', '2025-10-09 11:24:48', 1, 4, '113.199.253.186'),
(30, 'Services [Spa & Wellness]Data has added successfully.', '2025-10-09 11:27:27', 1, 3, '113.199.253.186'),
(31, 'Login: superadmin logged in.', '2025-10-09 13:17:15', 1, 1, '27.34.27.46'),
(32, 'Package Activities Edit Successfully', '2025-10-09 13:17:24', 1, 4, '27.34.27.46'),
(33, 'Changes on Sub Package \'Scenic & Adventure\' has been saved successfully.', '2025-10-09 13:19:04', 1, 4, '27.34.27.46'),
(34, 'Changes on Sub Package \'Spiritual & Religious\' has been saved successfully.', '2025-10-09 13:19:10', 1, 4, '27.34.27.46'),
(35, 'Login: superadmin logged in.', '2025-10-09 15:26:57', 1, 1, '160.250.254.253'),
(36, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-09 15:27:05', 1, 4, '160.250.254.253'),
(37, 'Menu [Activities] Edit Successfully', '2025-10-09 15:29:26', 1, 4, '160.250.254.253'),
(38, 'Virtual Tour \'room\' has added successfully.', '2025-10-09 16:05:13', 1, 3, '160.250.254.253'),
(39, '360 Image \'outside\' has added successfully.', '2025-10-09 16:05:26', 1, 3, '160.250.254.253'),
(40, '360 Image \'hike\' has added successfully.', '2025-10-09 16:05:35', 1, 3, '160.250.254.253'),
(41, 'Hotspot \'hike\' has added successfully.', '2025-10-09 16:05:52', 1, 3, '160.250.254.253'),
(42, 'Changes on Popup \'manakamanahillcrest\' has been saved successfully.', '2025-10-09 16:14:03', 1, 4, '160.250.254.253'),
(43, 'Services [Corporate Events & wedding destination] Edit Successfully', '2025-10-09 16:14:31', 1, 4, '160.250.254.253'),
(44, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-09 16:15:21', 1, 4, '160.250.254.253'),
(45, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-09 16:15:42', 1, 4, '160.250.254.253'),
(46, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-09 16:15:56', 1, 4, '160.250.254.253'),
(47, 'Login: superadmin logged in.', '2025-10-09 16:30:32', 1, 1, '160.250.254.253'),
(48, 'Login: superadmin logged in.', '2025-10-10 11:49:52', 1, 1, '160.250.254.253'),
(49, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-10 11:50:19', 1, 4, '160.250.254.253'),
(50, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-10 11:51:29', 1, 4, '160.250.254.253'),
(51, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-10 11:52:58', 1, 4, '160.250.254.253'),
(52, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-10 11:54:35', 1, 4, '160.250.254.253'),
(53, 'Login: superadmin logged in.', '2025-10-10 12:54:25', 1, 1, '160.250.254.253'),
(54, 'SocialNetworking [instagram] Edit Successfully', '2025-10-10 13:06:58', 1, 4, '160.250.254.253'),
(55, 'SocialNetworking [facebook] Edit Successfully', '2025-10-10 13:07:13', 1, 4, '160.250.254.253'),
(56, 'SocialNetworking [instagram] Edit Successfully', '2025-10-10 13:07:44', 1, 4, '160.250.254.253'),
(57, 'SocialNetworking [linkedin] Edit Successfully', '2025-10-10 13:08:11', 1, 4, '160.250.254.253'),
(58, 'SocialNetworking [Facebook] Edit Successfully', '2025-10-10 13:08:26', 1, 4, '160.250.254.253'),
(59, 'SocialNetworking [Instagram] Edit Successfully', '2025-10-10 13:08:37', 1, 4, '160.250.254.253'),
(60, 'SocialNetworking [Linkedin] Edit Successfully', '2025-10-10 13:08:53', 1, 4, '160.250.254.253'),
(61, 'Login: superadmin logged in.', '2025-10-10 13:27:09', 1, 1, '113.199.252.182'),
(62, 'Login: superadmin logged in.', '2025-10-10 14:49:36', 1, 1, '160.250.254.253'),
(63, 'Login: superadmin logged in.', '2025-10-10 14:50:30', 1, 1, '160.250.254.253'),
(64, 'Login: superadmin logged in.', '2025-10-10 14:52:02', 1, 1, '160.250.254.253'),
(65, 'Changes on Sub Package \'Deluxe Single\' has been saved successfully.', '2025-10-10 15:32:45', 1, 4, '160.250.254.253'),
(66, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-10 15:36:46', 1, 4, '160.250.254.253'),
(67, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-10 15:36:55', 1, 4, '160.250.254.253'),
(68, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-10 15:38:17', 1, 4, '160.250.254.253'),
(69, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-10 15:39:41', 1, 4, '160.250.254.253'),
(70, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-10 15:41:08', 1, 4, '160.250.254.253'),
(71, 'Sub Package \'Deluxe Triple Room\' has added successfully.', '2025-10-10 15:42:40', 1, 3, '160.250.254.253'),
(72, 'Menu [Deluxe Single] Edit Successfully', '2025-10-10 15:49:54', 1, 4, '160.250.254.253'),
(73, 'Menu [Deluxe Single Room] Edit Successfully', '2025-10-10 15:50:05', 1, 4, '160.250.254.253'),
(74, 'Menu [Deluxe Twin Room] Edit Successfully', '2025-10-10 15:50:24', 1, 4, '160.250.254.253'),
(75, 'Menu [Deluxe Triple Room] Edit Successfully', '2025-10-10 15:50:54', 1, 4, '160.250.254.253'),
(76, 'Menu [Deluxe Family Room] Edit Successfully', '2025-10-10 15:51:09', 1, 4, '160.250.254.253'),
(77, 'Changes on Sub Package \'Deluxe Triple Room\' has been saved successfully.', '2025-10-10 15:51:47', 1, 4, '160.250.254.253'),
(78, 'Changes on Sub Package \'Deluxe Triple Room\' has been saved successfully.', '2025-10-10 15:59:42', 1, 4, '160.250.254.253'),
(79, 'Login: superadmin logged in.', '2025-10-10 16:51:38', 1, 1, '160.250.254.253'),
(80, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-10 16:52:35', 1, 4, '160.250.254.253'),
(81, 'Changes on Sub Package \'Gorkha Durbar\' has been saved successfully.', '2025-10-10 16:56:33', 1, 4, '160.250.254.253'),
(82, 'Changes on Sub Package \'Gorkha Durbar\' has been saved successfully.', '2025-10-10 16:58:00', 1, 4, '160.250.254.253'),
(83, 'Sub Package \'Board Meeting Hall\' has added successfully.', '2025-10-10 17:30:38', 1, 3, '160.250.254.253'),
(84, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-10 17:31:08', 1, 4, '160.250.254.253'),
(85, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-10 17:31:35', 1, 4, '160.250.254.253'),
(86, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-10 17:33:08', 1, 4, '160.250.254.253'),
(87, 'Login: superadmin logged in.', '2025-10-11 19:01:50', 1, 1, '27.34.27.46'),
(88, 'Login: superadmin logged in.', '2025-10-12 10:59:17', 1, 1, '27.34.27.46'),
(89, 'User [Manakamana Hillcrest Resort  shakya] Edit Successfully', '2025-10-12 10:59:30', 1, 4, '27.34.27.46'),
(90, 'Login: superadmin logged in.', '2025-10-12 11:14:36', 1, 1, '160.250.254.253'),
(91, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-12 11:16:30', 1, 4, '160.250.254.253'),
(92, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:17:48', 1, 4, '160.250.254.253'),
(93, 'Sub Package Image [Board Meeting Hall]Data has added successfully.', '2025-10-12 11:18:55', 1, 3, '160.250.254.253'),
(94, 'Sub Package Image [Board Meeting Hall]Data has added successfully.', '2025-10-12 11:18:55', 1, 3, '160.250.254.253'),
(95, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-12 11:19:44', 1, 4, '160.250.254.253'),
(96, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:24:01', 1, 4, '160.250.254.253'),
(97, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:24:25', 1, 4, '160.250.254.253'),
(98, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:24:57', 1, 4, '160.250.254.253'),
(99, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:26:14', 1, 4, '160.250.254.253'),
(100, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:26:33', 1, 4, '160.250.254.253'),
(101, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-12 11:28:10', 1, 4, '160.250.254.253'),
(102, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-12 11:28:32', 1, 4, '160.250.254.253'),
(103, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:28:51', 1, 4, '160.250.254.253'),
(104, 'Menu [Gorkha Durbar Hall] CreatedData has added successfully.', '2025-10-12 11:29:32', 1, 3, '160.250.254.253'),
(105, 'Menu [Board Meeting Hall] CreatedData has added successfully.', '2025-10-12 11:30:02', 1, 3, '160.250.254.253'),
(106, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-12 11:30:38', 1, 4, '160.250.254.253'),
(107, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-12 11:30:46', 1, 4, '160.250.254.253'),
(108, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-12 11:36:40', 1, 4, '160.250.254.253'),
(109, 'Login: superadmin logged in.', '2025-10-16 13:16:01', 1, 1, '160.250.255.115'),
(110, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-10-16 13:35:24', 1, 3, '160.250.255.115'),
(111, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-10-16 13:35:24', 1, 3, '160.250.255.115'),
(112, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-10-16 13:35:24', 1, 3, '160.250.255.115'),
(113, 'Sub Package Image [v]Data has added successfully.', '2025-10-16 13:35:24', 1, 3, '160.250.255.115'),
(114, 'Gallery Image [Deluxe Twin Room] Edit Successfully', '2025-10-16 13:35:36', 1, 4, '160.250.255.115'),
(115, 'Sub Package Image [Deluxe Triple Room]Data has added successfully.', '2025-10-16 13:36:12', 1, 3, '160.250.255.115'),
(116, 'Sub Package Image [Deluxe Triple Room]Data has added successfully.', '2025-10-16 13:36:12', 1, 3, '160.250.255.115'),
(117, 'Sub Package Image [Deluxe Triple Room]Data has added successfully.', '2025-10-16 13:36:12', 1, 3, '160.250.255.115'),
(118, 'Sub Package Image [Deluxe Triple Room]Data has added successfully.', '2025-10-16 13:36:12', 1, 3, '160.250.255.115'),
(119, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-10-16 13:36:53', 1, 3, '160.250.255.115'),
(120, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-10-16 13:36:53', 1, 3, '160.250.255.115'),
(121, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-10-16 13:36:53', 1, 3, '160.250.255.115'),
(122, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-10-16 13:36:53', 1, 3, '160.250.255.115'),
(123, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-16 13:46:16', 1, 4, '160.250.255.115'),
(124, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-16 13:48:36', 1, 4, '160.250.255.115'),
(125, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-16 13:49:30', 1, 4, '160.250.255.115'),
(126, 'Changes on Sub Package \'Deluxe Triple Room\' has been saved successfully.', '2025-10-16 13:50:20', 1, 4, '160.250.255.115'),
(127, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-16 13:50:49', 1, 4, '160.250.255.115'),
(128, 'Features  [Air Conditioning]Data has deleted successfully.', '2025-10-16 13:51:06', 1, 6, '160.250.255.115'),
(129, 'Features  [Free Wi-Fi]Data has deleted successfully.', '2025-10-16 13:51:49', 1, 6, '160.250.255.115'),
(130, 'Features  []Data has deleted successfully.', '2025-10-16 13:51:49', 1, 6, '160.250.255.115'),
(131, 'Features  []Data has deleted successfully.', '2025-10-16 13:51:56', 1, 6, '160.250.255.115'),
(132, 'Features  [Daily Housekeeping]Data has deleted successfully.', '2025-10-16 13:51:56', 1, 6, '160.250.255.115'),
(133, 'Features  []Data has deleted successfully.', '2025-10-16 13:51:56', 1, 6, '160.250.255.115'),
(134, 'Features  []Data has deleted successfully.', '2025-10-16 13:52:07', 1, 6, '160.250.255.115'),
(135, 'Features  []Data has deleted successfully.', '2025-10-16 13:52:07', 1, 6, '160.250.255.115'),
(136, 'Features  []Data has deleted successfully.', '2025-10-16 13:52:07', 1, 6, '160.250.255.115'),
(137, 'Features  []Data has deleted successfully.', '2025-10-16 13:52:07', 1, 6, '160.250.255.115'),
(138, 'Login: superadmin logged in.', '2025-10-16 16:39:49', 1, 1, '160.250.255.115'),
(139, 'Login: superadmin logged in.', '2025-10-26 12:41:16', 1, 1, '160.250.254.7'),
(140, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-26 12:44:00', 1, 4, '160.250.254.7'),
(141, 'Login: superadmin logged in.', '2025-10-28 12:02:31', 1, 1, '160.250.254.7'),
(142, 'Menu [Spa] CreatedData has added successfully.', '2025-10-28 12:03:37', 1, 3, '160.250.254.7'),
(143, 'Services [Corporate Events & Wedding Destinationa] Edit Successfully', '2025-10-28 12:05:28', 1, 4, '160.250.254.7'),
(144, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-28 12:05:33', 1, 4, '160.250.254.7'),
(145, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-28 12:05:57', 1, 4, '160.250.254.7'),
(146, 'Services [Fitness Center]Data has added successfully.', '2025-10-28 12:07:05', 1, 3, '160.250.254.7'),
(147, 'Services [Swimming Pool]Data has added successfully.', '2025-10-28 12:08:11', 1, 3, '160.250.254.7'),
(148, 'Services [Nearby Excursions]Data has added successfully.', '2025-10-28 12:08:33', 1, 3, '160.250.254.7'),
(149, 'Menu [Gym] CreatedData has added successfully.', '2025-10-28 12:09:35', 1, 3, '160.250.254.7'),
(150, 'Login: superadmin logged in.', '2025-10-28 12:14:20', 1, 1, '27.34.27.46'),
(151, 'Services [Airport Pick & Drop]Data has added successfully.', '2025-10-28 12:16:55', 1, 3, '160.250.254.7'),
(152, 'Services [Welcome Drink]Data has added successfully.', '2025-10-28 12:17:19', 1, 3, '160.250.254.7'),
(153, 'Services [High Speed Internet] Edit Successfully', '2025-10-28 12:18:01', 1, 4, '160.250.254.7'),
(154, 'Services [Welcome Drink (on Arrival)] Edit Successfully', '2025-10-28 12:18:33', 1, 4, '160.250.254.7'),
(155, 'Services [Airport Pick & Dropoff] Edit Successfully', '2025-10-28 12:18:40', 1, 4, '160.250.254.7'),
(156, 'Services [24hrs Room Service]Data has added successfully.', '2025-10-28 12:19:02', 1, 3, '160.250.254.7'),
(157, 'Services [24hrs Security]Data has added successfully.', '2025-10-28 12:23:20', 1, 3, '160.250.254.7'),
(158, 'Services [Doctor on Call]Data has added successfully.', '2025-10-28 12:23:38', 1, 3, '160.250.254.7'),
(159, 'Services [Power Backup]Data has added successfully.', '2025-10-28 12:23:53', 1, 3, '160.250.254.7'),
(160, 'Services [Parking Space]Data has added successfully.', '2025-10-28 12:24:33', 1, 3, '160.250.254.7'),
(161, 'Services [Fitness Center]Data has added successfully.', '2025-10-28 12:24:51', 1, 3, '160.250.254.7'),
(162, 'Services [Wellness Center]Data has added successfully.', '2025-10-28 12:25:25', 1, 3, '160.250.254.7'),
(163, 'Services [Cards Accepted]Data has added successfully.', '2025-10-28 12:26:03', 1, 3, '160.250.254.7'),
(164, 'Services [Concierge Service]Data has added successfully.', '2025-10-28 12:26:21', 1, 3, '160.250.254.7'),
(165, 'Servicess  [Parking Space]Data has deleted successfully.', '2025-10-28 12:28:36', 1, 6, '160.250.254.7'),
(166, 'Services  [Parking Space]Data has deleted successfully.', '2025-10-28 12:28:36', 1, 6, '160.250.254.7'),
(167, 'Services [Meeting Hall]Data has added successfully.', '2025-10-28 12:28:48', 1, 3, '160.250.254.7'),
(168, 'Servicess  [Room Service]Data has deleted successfully.', '2025-10-28 12:29:06', 1, 6, '160.250.254.7'),
(169, 'Services  [Room Service]Data has deleted successfully.', '2025-10-28 12:29:06', 1, 6, '160.250.254.7'),
(170, 'Services [Swimming Pool]Data has added successfully.', '2025-10-28 12:31:29', 1, 3, '160.250.254.7'),
(171, 'Services [Sauna]Data has added successfully.', '2025-10-28 12:32:50', 1, 3, '160.250.254.7'),
(172, 'Servicess  [Wellness Center]Data has deleted successfully.', '2025-10-28 12:33:44', 1, 6, '160.250.254.7'),
(173, 'Services  [Wellness Center]Data has deleted successfully.', '2025-10-28 12:33:44', 1, 6, '160.250.254.7'),
(174, 'Services [Spa]Data has added successfully.', '2025-10-28 12:34:09', 1, 3, '160.250.254.7'),
(175, 'Services [Steam]Data has added successfully.', '2025-10-28 12:36:27', 1, 3, '160.250.254.7'),
(176, 'Servicess  [Coffee Shop]Data has deleted successfully.', '2025-10-28 12:37:04', 1, 6, '160.250.254.7'),
(177, 'Services  [Coffee Shop]Data has deleted successfully.', '2025-10-28 12:37:04', 1, 6, '160.250.254.7'),
(178, 'Services [Coffee Shop]Data has added successfully.', '2025-10-28 12:37:51', 1, 3, '160.250.254.7'),
(179, 'Services [Lawn Party Area]Data has added successfully.', '2025-10-28 12:41:42', 1, 3, '160.250.254.7'),
(180, 'Services [Event Hall] Edit Successfully', '2025-10-28 12:42:08', 1, 4, '160.250.254.7'),
(181, 'Services [Elevator]Data has added successfully.', '2025-10-28 12:43:39', 1, 3, '160.250.254.7'),
(182, 'Services [Travel Desk]Data has added successfully.', '2025-10-28 12:43:55', 1, 3, '160.250.254.7'),
(183, 'Services [Fire Extinguisher]Data has added successfully.', '2025-10-28 12:44:14', 1, 3, '160.250.254.7'),
(184, 'Services [Luggage Storage]Data has added successfully.', '2025-10-28 12:44:56', 1, 3, '160.250.254.7'),
(185, 'Services [24hrs Reception]Data has added successfully.', '2025-10-28 12:46:14', 1, 3, '160.250.254.7'),
(186, 'Login: superadmin logged in.', '2025-10-28 13:07:34', 1, 1, '160.250.254.7'),
(187, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-28 13:08:52', 1, 4, '160.250.254.7'),
(188, 'Services [Airport Pick & Dropoff] Edit Successfully', '2025-10-28 13:13:03', 1, 4, '160.250.254.7'),
(189, 'Services [Airport Pick & Dropoff] Edit Successfully', '2025-10-28 13:14:27', 1, 4, '160.250.254.7'),
(190, 'Services [Welcome Drink (on Arrival)] Edit Successfully', '2025-10-28 13:15:03', 1, 4, '160.250.254.7'),
(191, 'Services [High Speed Internet] Edit Successfully', '2025-10-28 13:15:27', 1, 4, '160.250.254.7'),
(192, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:15:55', 1, 4, '160.250.254.7'),
(193, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:16:26', 1, 4, '160.250.254.7'),
(194, 'Services [Mountain View] Edit Successfully', '2025-10-28 13:17:37', 1, 4, '160.250.254.7'),
(195, 'Services [Coffee Shop] Edit Successfully', '2025-10-28 13:20:15', 1, 4, '160.250.254.7'),
(196, 'Services [Event Hall] Edit Successfully', '2025-10-28 13:21:30', 1, 4, '160.250.254.7'),
(197, 'Services [Event Hall] Edit Successfully', '2025-10-28 13:21:54', 1, 4, '160.250.254.7'),
(198, 'Services [Swimming Pool] Edit Successfully', '2025-10-28 13:25:46', 1, 4, '160.250.254.7'),
(199, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:26:04', 1, 4, '160.250.254.7'),
(200, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:27:32', 1, 4, '160.250.254.7'),
(201, 'Services [Swimming Pool] Edit Successfully', '2025-10-28 13:27:43', 1, 4, '160.250.254.7'),
(202, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:28:57', 1, 4, '160.250.254.7'),
(203, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:29:25', 1, 4, '160.250.254.7'),
(204, 'Services [24hrs Room Service] Edit Successfully', '2025-10-28 13:30:53', 1, 4, '160.250.254.7'),
(205, 'Services [Swimming Pool] Edit Successfully', '2025-10-28 13:31:32', 1, 4, '160.250.254.7'),
(206, 'Login: superadmin logged in.', '2025-10-28 13:57:01', 1, 1, '160.250.254.7'),
(207, 'Changes on Sub Package \'Interconnected Deluxe Suite\' has been saved successfully.', '2025-10-28 13:59:09', 1, 4, '160.250.254.7'),
(208, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-28 13:59:33', 1, 4, '160.250.254.7'),
(209, 'Login: superadmin logged in.', '2025-10-28 14:45:24', 1, 1, '160.250.254.7'),
(210, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-28 15:34:27', 1, 4, '160.250.254.7'),
(211, 'Menu [Deluxe Triple Room] Edit Successfully', '2025-10-28 15:35:19', 1, 4, '160.250.254.7'),
(212, 'Menu [Deluxe Deluxe Room] Edit Successfully', '2025-10-28 15:36:11', 1, 4, '160.250.254.7'),
(213, 'Menu [Deluxe Family Room] Edit Successfully', '2025-10-28 15:36:24', 1, 4, '160.250.254.7'),
(214, 'Menu [Interconnected Family Suite] Edit Successfully', '2025-10-28 15:36:50', 1, 4, '160.250.254.7'),
(215, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-28 15:37:21', 1, 4, '160.250.254.7'),
(216, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-28 15:37:35', 1, 4, '160.250.254.7'),
(217, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-28 15:58:18', 1, 4, '160.250.254.7'),
(218, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-28 16:05:55', 1, 4, '160.250.254.7'),
(219, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-28 16:07:00', 1, 4, '160.250.254.7'),
(220, 'Menu [About us] CreatedData has added successfully.', '2025-10-28 16:12:09', 1, 3, '160.250.254.7'),
(221, 'Menu [Rooms & Suites] CreatedData has added successfully.', '2025-10-28 16:12:29', 1, 3, '160.250.254.7'),
(222, 'Menu [Multicuisine Restaurant] CreatedData has added successfully.', '2025-10-28 16:13:14', 1, 3, '160.250.254.7'),
(223, 'Menu [Event Hall] CreatedData has added successfully.', '2025-10-28 16:13:36', 1, 3, '160.250.254.7'),
(224, 'Blog [A historical tale of divinity]Data has added successfully.', '2025-10-28 16:17:20', 1, 3, '160.250.254.7'),
(225, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:18:02', 1, 4, '160.250.254.7'),
(226, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:19:51', 1, 4, '160.250.254.7'),
(227, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:20:03', 1, 4, '160.250.254.7'),
(228, 'Blog  [A historical tale of divinity]Data has deleted successfully.', '2025-10-28 16:20:08', 1, 6, '160.250.254.7'),
(229, 'Blog [A historical tale of divinity dsijbnd] Edit Successfully', '2025-10-28 16:21:00', 1, 4, '160.250.254.7'),
(230, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:21:20', 1, 4, '160.250.254.7'),
(231, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:23:09', 1, 4, '160.250.254.7'),
(232, 'Blog [A historical tale of divinity] Edit Successfully', '2025-10-28 16:23:50', 1, 4, '160.250.254.7'),
(233, 'Blog [The cable car experience]Data has added successfully.', '2025-10-28 16:27:16', 1, 3, '160.250.254.7'),
(234, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-10-28 16:28:05', 1, 4, '160.250.254.7'),
(235, 'Blog [The cable car experience] Edit Successfully', '2025-10-28 16:37:57', 1, 4, '160.250.254.7'),
(236, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-10-28 16:38:56', 1, 4, '160.250.254.7'),
(237, 'Blog [The Cable Car Experience aa] Edit Successfully', '2025-10-28 16:39:26', 1, 4, '160.250.254.7'),
(238, 'Blog [The Cable Car Experience] Edit Successfully', '2025-10-28 16:39:30', 1, 4, '160.250.254.7'),
(239, 'Blog [A Historical Tale of Divinity a] Edit Successfully', '2025-10-28 16:39:46', 1, 4, '160.250.254.7'),
(240, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-10-28 16:39:49', 1, 4, '160.250.254.7'),
(241, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-10-28 16:40:38', 1, 4, '160.250.254.7'),
(242, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-10-28 16:42:21', 1, 4, '160.250.254.7'),
(243, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-10-28 16:43:38', 1, 4, '160.250.254.7'),
(244, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-10-28 16:44:51', 1, 4, '160.250.254.7'),
(245, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-28 16:47:07', 1, 4, '160.250.254.7'),
(246, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-28 16:47:23', 1, 4, '160.250.254.7'),
(247, 'Login: superadmin logged in.', '2025-10-28 16:58:31', 1, 1, '160.250.254.7'),
(248, 'Changes on FAQ \'What is the check-in and check-out time?\' has been saved successfully.', '2025-10-28 16:59:53', 1, 4, '160.250.254.7'),
(249, 'FAQ \'What types of rooms are available?\' has added successfully.', '2025-10-28 17:00:17', 1, 3, '160.250.254.7'),
(250, 'Changes on FAQ \'What amenities are included in the rooms?\' has been saved successfully.', '2025-10-28 17:00:41', 1, 4, '160.250.254.7'),
(251, 'FAQ \'Do you offer room service?\' has added successfully.', '2025-10-28 17:01:09', 1, 3, '160.250.254.7'),
(252, 'FAQ \'What wellness facilities are available?\' has added successfully.', '2025-10-28 17:02:07', 1, 3, '160.250.254.7'),
(253, 'FAQ \'What payment methods are accepted?\' has added successfully.', '2025-10-28 17:03:08', 1, 3, '160.250.254.7'),
(254, 'FAQ \'Is Wi-Fi available throughout the resort?\' has added successfully.', '2025-10-28 17:03:43', 1, 3, '160.250.254.7'),
(255, 'Login: superadmin logged in.', '2025-10-29 11:32:50', 1, 1, '160.250.254.7'),
(256, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-29 11:41:19', 1, 4, '160.250.254.7'),
(257, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-29 11:41:27', 1, 4, '160.250.254.7'),
(258, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-29 11:41:35', 1, 4, '160.250.254.7'),
(259, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-29 11:41:42', 1, 4, '160.250.254.7'),
(260, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-29 11:42:17', 1, 4, '160.250.254.7'),
(261, 'Login: superadmin logged in.', '2025-10-29 12:32:10', 1, 1, '160.250.254.7'),
(262, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-29 12:40:03', 1, 4, '160.250.254.7'),
(263, 'Offers [Panoramic Views] Edit Successfully', '2025-10-29 12:58:08', 1, 4, '160.250.254.7'),
(264, 'Offers [Panoramic Views] Edit Successfully', '2025-10-29 12:58:40', 1, 4, '160.250.254.7'),
(265, 'Offers [Opening Soon]Data has added successfully.', '2025-10-29 12:59:25', 1, 3, '160.250.254.7'),
(266, 'Offers [Opening Soon] Edit Successfully', '2025-10-29 13:01:54', 1, 4, '160.250.254.7'),
(267, 'Offers [Opening Soon] Edit Successfully', '2025-10-29 13:04:37', 1, 4, '160.250.254.7'),
(268, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-29 13:14:25', 1, 4, '160.250.254.7'),
(269, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-29 13:14:45', 1, 4, '160.250.254.7'),
(270, 'Features [LED Screen]Data has added successfully.', '2025-10-29 13:16:01', 1, 3, '160.250.254.7'),
(271, 'Features [Stationery]Data has added successfully.', '2025-10-29 13:16:56', 1, 3, '160.250.254.7'),
(272, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-29 13:17:33', 1, 4, '160.250.254.7'),
(273, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-29 13:18:56', 1, 4, '160.250.254.7'),
(274, 'Features [High Speed Internet]Data has added successfully.', '2025-10-29 13:19:47', 1, 3, '160.250.254.7'),
(275, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-29 13:20:41', 1, 4, '160.250.254.7'),
(276, 'Sub Package \'Cultural & Market\' has added successfully.', '2025-10-29 13:24:31', 1, 3, '160.250.254.7'),
(277, 'Changes on Sub Package \'Cultural & Market\' has been saved successfully.', '2025-10-29 13:24:43', 1, 4, '160.250.254.7'),
(278, 'Sub Package Image [tes]Data has added successfully.', '2025-10-29 13:30:09', 1, 3, '160.250.254.7'),
(279, 'SubPackage Gallery Image [tes]Data has deleted successfully.', '2025-10-29 13:30:20', 1, 6, '160.250.254.7'),
(280, 'SocialNetworking [Linkedin] Edit Successfully', '2025-10-29 13:34:38', 1, 4, '160.250.254.7'),
(281, 'SocialNetworking [Instagram] Edit Successfully', '2025-10-29 13:36:10', 1, 4, '160.250.254.7'),
(282, 'SocialNetworking [Booking] Edit Successfully', '2025-10-29 13:39:11', 1, 4, '160.250.254.7'),
(283, 'SocialNetworking [Agoda] Edit Successfully', '2025-10-29 13:39:27', 1, 4, '160.250.254.7'),
(284, 'SocialNetworking [Tripadvisor] Edit Successfully', '2025-10-29 13:39:41', 1, 4, '160.250.254.7'),
(285, 'SocialNetworking [Make my trip] Edit Successfully', '2025-10-29 13:40:03', 1, 4, '160.250.254.7'),
(286, 'SocialNetworking [Trip]Data has added successfully.', '2025-10-29 13:40:23', 1, 3, '160.250.254.7'),
(287, 'SocialNetworking [Agoda] Edit Successfully', '2025-10-29 13:42:59', 1, 4, '160.250.254.7'),
(288, 'SocialNetworking [Trip] Edit Successfully', '2025-10-29 13:43:22', 1, 4, '160.250.254.7'),
(289, 'Login: superadmin logged in.', '2025-10-29 14:30:06', 1, 1, '160.250.254.7'),
(290, 'Login: superadmin logged in.', '2025-10-29 14:30:10', 1, 1, '160.250.254.7'),
(291, 'Login: superadmin logged in.', '2025-10-29 15:37:46', 1, 1, '160.250.254.7'),
(292, 'Services [Spa & Wellness] Edit Successfully', '2025-10-29 15:44:55', 1, 4, '160.250.254.7'),
(293, 'Services [Spa & Wellness] Edit Successfully', '2025-10-29 15:45:39', 1, 4, '160.250.254.7'),
(294, 'Services [Spa & Wellness] Edit Successfully', '2025-10-29 15:45:48', 1, 4, '160.250.254.7'),
(295, 'Services [Fitness Center] Edit Successfully', '2025-10-29 15:47:53', 1, 4, '160.250.254.7'),
(296, 'Menu [Spa & Wellness] Edit Successfully', '2025-10-29 15:48:38', 1, 4, '160.250.254.7'),
(297, 'Login: superadmin logged in.', '2025-10-29 15:48:49', 1, 1, '160.250.254.7'),
(298, 'Menu [Fitness Center] Edit Successfully', '2025-10-29 15:48:53', 1, 4, '160.250.254.7'),
(299, 'User [Manakamana Hillcrest Resort  shakya] Edit Successfully', '2025-10-29 15:57:16', 1, 4, '160.250.254.7'),
(300, 'Changes on Sub Package \'Cultural & Market\' has been saved successfully.', '2025-10-29 16:11:31', 1, 4, '160.250.254.7'),
(301, 'Changes on Sub Package \'Scenic & Adventure\' has been saved successfully.', '2025-10-29 16:11:40', 1, 4, '160.250.254.7'),
(302, 'Changes on Sub Package \'Spiritual & Religious\' has been saved successfully.', '2025-10-29 16:11:49', 1, 4, '160.250.254.7'),
(303, 'Services [Spa & Wellness] Edit Successfully', '2025-10-29 17:14:43', 1, 4, '160.250.254.7'),
(304, 'Services [Fitness Center] Edit Successfully', '2025-10-29 17:16:37', 1, 4, '160.250.254.7'),
(305, 'Services [Swimming Pool] Edit Successfully', '2025-10-29 17:17:30', 1, 4, '160.250.254.7'),
(306, 'Services [Swimming Pool] Edit Successfully', '2025-10-29 17:17:57', 1, 4, '160.250.254.7'),
(307, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-10-29 17:21:07', 1, 4, '160.250.254.7'),
(308, 'Login: superadmin logged in.', '2025-10-30 11:13:39', 1, 1, '160.250.254.7'),
(309, 'Login: superadmin logged in.', '2025-10-30 11:13:46', 1, 1, '160.250.254.7'),
(310, 'Login: superadmin logged in.', '2025-10-30 11:14:05', 1, 1, '160.250.254.7'),
(311, 'Login: superadmin logged in.', '2025-10-30 11:27:02', 1, 1, '27.34.27.46'),
(312, 'Changes on Article \' Manakamana Temple\' has been saved successfully.', '2025-10-30 11:30:01', 1, 4, '160.250.254.7'),
(313, 'Article \'Bakreshwor Mahadev Temple\' has added successfully.', '2025-10-30 11:33:45', 1, 3, '160.250.254.7'),
(314, 'Changes on Article \' Manakamana Temple\' has been saved successfully.', '2025-10-30 11:34:47', 1, 4, '160.250.254.7'),
(315, 'Article \'Lakhan Thapa Cave\' has added successfully.', '2025-10-30 11:36:22', 1, 3, '160.250.254.7'),
(316, 'Itinerary [asdasd]Data has deleted successfully.', '2025-10-30 11:37:53', 1, 6, '27.34.27.46'),
(317, 'Article \'Gorakhnath Cave\' has added successfully.', '2025-10-30 11:39:03', 1, 3, '160.250.254.7'),
(318, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-30 11:43:10', 1, 4, '27.34.27.46'),
(319, 'Services [Spa & Wellness] Edit Successfully', '2025-10-30 11:53:40', 1, 4, '160.250.254.7'),
(320, 'Services [Spa & Wellness] Edit Successfully', '2025-10-30 12:00:44', 1, 4, '160.250.254.7'),
(321, 'Services [Nearby Excursionsvv] Edit Successfully', '2025-10-30 12:02:02', 1, 4, '160.250.254.7'),
(322, 'Services [Nearby Excursions] Edit Successfully', '2025-10-30 12:02:22', 1, 4, '160.250.254.7'),
(323, 'Article \'Bharatpur Airport\' has added successfully.', '2025-10-30 12:12:41', 1, 3, '160.250.254.7'),
(324, 'Article \'Manakamana Cable Car\' has added successfully.', '2025-10-30 12:16:06', 1, 3, '160.250.254.7'),
(325, 'Changes on Article \' Manakamana Temple\' has been saved successfully.', '2025-10-30 12:21:25', 1, 4, '160.250.254.7'),
(326, 'Changes on Article \'Bakreshwor Mahadev Temple\' has been saved successfully.', '2025-10-30 12:22:52', 1, 4, '160.250.254.7'),
(327, 'Changes on Article \'Lakhan Thapa Cave\' has been saved successfully.', '2025-10-30 12:25:26', 1, 4, '160.250.254.7'),
(328, 'Changes on Article \'Gorakhnath Cave\' has been saved successfully.', '2025-10-30 12:25:43', 1, 4, '160.250.254.7'),
(329, 'Changes on Article \'Manakamana Cable Car\' has been saved successfully.', '2025-10-30 12:25:58', 1, 4, '160.250.254.7'),
(330, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-30 12:29:25', 1, 4, '160.250.254.7'),
(331, 'Changes on Article \'Manakamana Cable Car\' has been saved successfully.', '2025-10-30 12:32:04', 1, 4, '160.250.254.7'),
(332, 'Changes on Article \'Gorakhnath Siddha Cave\' has been saved successfully.', '2025-10-30 12:34:08', 1, 4, '160.250.254.7'),
(333, 'Changes on Article \'Gorakhnath Siddha Cave\' has been saved successfully.', '2025-10-30 12:36:07', 1, 4, '160.250.254.7'),
(334, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-30 12:37:26', 1, 4, '160.250.254.7'),
(335, 'Changes on Article \'Bakreshwor Mahadev Temple\' has been saved successfully.', '2025-10-30 12:41:09', 1, 4, '160.250.254.7'),
(336, 'Changes on Article \'Lakhan Thapa Cave\' has been saved successfully.', '2025-10-30 12:41:22', 1, 4, '160.250.254.7'),
(337, 'Changes on Article \'Gorakhnath Siddha Cave\' has been saved successfully.', '2025-10-30 12:41:33', 1, 4, '160.250.254.7'),
(338, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-30 12:41:49', 1, 4, '27.34.27.46'),
(339, 'Changes on Article \'Manakamana Cable Car\' has been saved successfully.', '2025-10-30 12:42:03', 1, 4, '160.250.254.7'),
(340, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-30 12:42:10', 1, 4, '27.34.27.46'),
(341, 'Changes on Article \'Manakamana Cable Car\' has been saved successfully.', '2025-10-30 12:48:57', 1, 4, '160.250.254.7'),
(342, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-30 12:49:34', 1, 4, '160.250.254.7'),
(343, 'Testimonial [Sanskar]Data has added successfully.', '2025-10-30 12:52:18', 1, 3, '160.250.254.7'),
(344, 'Testimonial [Sanskar] Edit Successfully', '2025-10-30 12:55:03', 1, 4, '160.250.254.7'),
(345, 'Testimonial [Vickygor] Edit Successfully', '2025-10-30 12:55:17', 1, 4, '160.250.254.7'),
(346, 'Services [Nearby Excursions] Edit Successfully', '2025-10-30 13:44:21', 1, 4, '160.250.254.7'),
(347, 'Login: superadmin logged in.', '2025-10-30 14:38:58', 1, 1, '160.250.254.7'),
(348, 'Changes on Article \' Manakamana Temple\' has been saved successfully.', '2025-10-30 14:41:34', 1, 4, '160.250.254.7'),
(349, 'Testimonial [Vickygor] Edit Successfully', '2025-10-30 14:43:20', 1, 4, '160.250.254.7'),
(350, 'Testimonial [Vickygor] Edit Successfully', '2025-10-30 14:43:38', 1, 4, '160.250.254.7'),
(351, 'Testimonial [Vickygor] Edit Successfully', '2025-10-30 14:44:57', 1, 4, '160.250.254.7'),
(352, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-10-30 14:48:09', 1, 6, '160.250.254.7'),
(353, 'Sub Gallery Image  []Data has deleted successfully.', '2025-10-30 14:48:11', 1, 6, '160.250.254.7'),
(354, 'Sub Gallery Image  [Interior 1]Data has deleted successfully.', '2025-10-30 14:48:11', 1, 6, '160.250.254.7'),
(355, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(356, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(357, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(358, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(359, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(360, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:48:45', 1, 3, '160.250.254.7'),
(361, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:49:04', 1, 3, '160.250.254.7'),
(362, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:49:04', 1, 3, '160.250.254.7'),
(363, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:49:04', 1, 3, '160.250.254.7'),
(364, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:49:04', 1, 3, '160.250.254.7'),
(365, 'Sub Gallery Image [Manakamana Hill Crest]Data has added successfully.', '2025-10-30 14:49:04', 1, 3, '160.250.254.7'),
(366, 'Gallery Image [Hotel] Edit Successfully', '2025-10-30 14:50:41', 1, 4, '160.250.254.7'),
(367, 'Gallery [Interior]Data has added successfully.', '2025-10-30 14:50:55', 1, 3, '160.250.254.7'),
(368, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(369, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(370, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(371, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(372, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(373, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(374, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(375, 'Sub Gallery Image [v]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(376, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-10-30 14:51:26', 1, 3, '160.250.254.7'),
(377, 'FAQ \'What landmarks are near Manakamana Hillcrest Resort?\' has added successfully.', '2025-10-30 14:55:50', 1, 3, '160.250.254.7'),
(378, 'FAQ \'Are pets allowed at Manakamana Hillcrest Resort?\' has added successfully.', '2025-10-30 14:56:37', 1, 3, '160.250.254.7'),
(379, 'FAQ \'How much does it cost to stay at Manakamana Hillcrest Resort?\' has added successfully.', '2025-10-30 14:57:00', 1, 3, '160.250.254.7'),
(380, 'FAQ \'Where is Manakamana Hillcrest Resort located?\' has added successfully.', '2025-10-30 14:57:48', 1, 3, '160.250.254.7'),
(381, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-30 15:00:57', 1, 4, '160.250.254.7'),
(382, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-30 15:01:14', 1, 4, '160.250.254.7'),
(383, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-30 15:01:31', 1, 4, '160.250.254.7'),
(384, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-30 15:01:41', 1, 4, '160.250.254.7'),
(385, 'Menu [Privacy Policy] CreatedData has added successfully.', '2025-10-30 15:02:13', 1, 3, '160.250.254.7'),
(386, 'Features [Wardrobe]Data has added successfully.', '2025-10-30 15:25:34', 1, 3, '160.250.254.7'),
(387, 'Features [Luggage Rack]Data has added successfully.', '2025-10-30 15:27:34', 1, 3, '160.250.254.7'),
(388, 'Features [Hot Tea/Water Kettle]Data has added successfully.', '2025-10-30 15:28:52', 1, 3, '160.250.254.7'),
(389, 'Features [Refrigerator]Data has added successfully.', '2025-10-30 15:29:26', 1, 3, '160.250.254.7'),
(390, 'Features [LED television with Cable Network] Edit Successfully', '2025-10-30 15:30:46', 1, 4, '160.250.254.7'),
(391, 'Features [Safe Deposit Box]Data has added successfully.', '2025-10-30 15:32:07', 1, 3, '160.250.254.7'),
(392, 'Features [Cold/Hot Shower ] Edit Successfully', '2025-10-30 15:32:50', 1, 4, '160.250.254.7'),
(393, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-30 15:35:05', 1, 4, '160.250.254.7'),
(394, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-30 15:35:21', 1, 4, '160.250.254.7'),
(395, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-30 15:36:52', 1, 4, '160.250.254.7'),
(396, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-30 15:38:10', 1, 4, '160.250.254.7'),
(397, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-30 15:39:12', 1, 4, '160.250.254.7'),
(398, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-30 15:40:18', 1, 4, '160.250.254.7'),
(399, 'Article \'test\' has added successfully.', '2025-10-30 15:58:33', 1, 3, '160.250.254.7'),
(400, 'Changes on Article \'test2\' has been saved successfully.', '2025-10-30 15:59:23', 1, 4, '160.250.254.7'),
(401, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:00:20', 1, 4, '160.250.254.7'),
(402, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:03:49', 1, 4, '160.250.254.7'),
(403, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:03:58', 1, 4, '160.250.254.7'),
(404, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:05:12', 1, 4, '160.250.254.7'),
(405, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:05:52', 1, 4, '160.250.254.7'),
(406, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:10:00', 1, 4, '160.250.254.7'),
(407, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:11:46', 1, 4, '160.250.254.7'),
(408, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:13:29', 1, 4, '160.250.254.7'),
(409, 'Changes on Article \'test22\' has been saved successfully.', '2025-10-30 16:15:18', 1, 4, '160.250.254.7'),
(410, 'Article \'Privacy Policy\' has added successfully.', '2025-10-30 16:15:45', 1, 3, '160.250.254.7'),
(411, 'Menu [Privacy Policy] Edit Successfully', '2025-10-30 16:15:55', 1, 4, '160.250.254.7'),
(412, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:19:29', 1, 4, '160.250.254.7'),
(413, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:25:47', 1, 4, '160.250.254.7'),
(414, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:30:00', 1, 4, '160.250.254.7'),
(415, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:41:34', 1, 4, '160.250.254.7'),
(416, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:42:01', 1, 4, '160.250.254.7'),
(417, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:44:12', 1, 4, '160.250.254.7'),
(418, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:48:27', 1, 4, '160.250.254.7'),
(419, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:49:51', 1, 4, '160.250.254.7'),
(420, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:50:19', 1, 4, '160.250.254.7'),
(421, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:50:39', 1, 4, '160.250.254.7'),
(422, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:52:39', 1, 4, '160.250.254.7'),
(423, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:54:10', 1, 4, '160.250.254.7'),
(424, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:54:55', 1, 4, '160.250.254.7'),
(425, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:56:00', 1, 4, '160.250.254.7'),
(426, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 16:57:15', 1, 4, '160.250.254.7'),
(427, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:07:33', 1, 4, '160.250.254.7'),
(428, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:11:03', 1, 4, '160.250.254.7'),
(429, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:12:51', 1, 4, '160.250.254.7'),
(430, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:15:19', 1, 4, '160.250.254.7'),
(431, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:15:40', 1, 4, '160.250.254.7'),
(432, 'Menu [Guest Leisure & Wellness Guidelines] Edit Successfully', '2025-10-30 17:18:42', 1, 4, '160.250.254.7'),
(433, 'Menu [Wellness Facilities Guest Handbook] Edit Successfully', '2025-10-30 17:19:32', 1, 4, '160.250.254.7'),
(434, 'Menu [Wellness Policies] Edit Successfully', '2025-10-30 17:20:00', 1, 4, '160.250.254.7'),
(435, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:20:22', 1, 4, '160.250.254.7'),
(436, 'Article \'Guest Handbook\' has added successfully.', '2025-10-30 17:20:53', 1, 3, '160.250.254.7'),
(437, 'Menu [Guest Handbook] CreatedData has added successfully.', '2025-10-30 17:21:14', 1, 3, '160.250.254.7'),
(438, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:22:14', 1, 4, '160.250.254.7'),
(439, 'Changes on Article \'Privacy Policy\' has been saved successfully.', '2025-10-30 17:22:36', 1, 4, '160.250.254.7'),
(440, 'Changes on Article \'Spa & Pool Policies\' has been saved successfully.', '2025-10-30 17:24:16', 1, 4, '160.250.254.7'),
(441, 'Menu [Spa & Pool Policies] Edit Successfully', '2025-10-30 17:24:25', 1, 4, '160.250.254.7'),
(442, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-10-30 17:24:51', 1, 4, '160.250.254.7'),
(443, 'Menu [Health & Fitness Policies] Edit Successfully', '2025-10-30 17:25:00', 1, 4, '160.250.254.7'),
(444, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-10-30 17:28:04', 1, 4, '160.250.254.7'),
(445, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-10-30 17:28:53', 1, 4, '160.250.254.7'),
(446, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-10-30 17:30:17', 1, 4, '160.250.254.7');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(447, 'Login: superadmin logged in.', '2025-10-31 11:15:46', 1, 1, '160.250.254.7'),
(448, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-10-31 11:27:15', 1, 4, '160.250.254.7'),
(449, 'Changes on Article \'Spa & Pool Policies\' has been saved successfully.', '2025-10-31 11:30:38', 1, 4, '160.250.254.7'),
(450, 'Changes on Article \'About Us\' has been saved successfully.', '2025-10-31 11:32:38', 1, 4, '160.250.254.7'),
(451, 'Changes on Article \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-31 11:34:14', 1, 4, '160.250.254.7'),
(452, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 11:37:09', 1, 4, '160.250.254.7'),
(453, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 11:38:37', 1, 4, '160.250.254.7'),
(454, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 11:39:04', 1, 4, '160.250.254.7'),
(455, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 11:39:13', 1, 4, '160.250.254.7'),
(456, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 11:39:22', 1, 4, '160.250.254.7'),
(457, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 11:41:10', 1, 4, '160.250.254.7'),
(458, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 11:44:01', 1, 4, '160.250.254.7'),
(459, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 11:45:20', 1, 4, '160.250.254.7'),
(460, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-10-31 11:50:39', 1, 4, '160.250.254.7'),
(461, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-10-31 11:53:06', 1, 4, '160.250.254.7'),
(462, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-10-31 11:54:31', 1, 4, '160.250.254.7'),
(463, 'services Meta Data Edit Successfully', '2025-10-31 11:56:49', 1, 4, '160.250.254.7'),
(464, 'services Meta Data Edit Successfully', '2025-10-31 11:56:54', 1, 4, '160.250.254.7'),
(465, 'Testimonial Meta Data Edit Successfully', '2025-10-31 11:58:33', 1, 4, '160.250.254.7'),
(466, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-10-31 12:00:57', 1, 4, '160.250.254.7'),
(467, 'Blog [The Cable Car Experience] Edit Successfully', '2025-10-31 12:01:41', 1, 4, '160.250.254.7'),
(468, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-10-31 12:02:18', 1, 4, '160.250.254.7'),
(469, 'Blog Meta Data Edit Successfully', '2025-10-31 12:03:21', 1, 4, '160.250.254.7'),
(470, 'Blog Meta Data Edit Successfully', '2025-10-31 12:05:22', 1, 4, '160.250.254.7'),
(471, 'Video  [Hotel Ichchha | Overview - YouTube]Data has deleted successfully.', '2025-10-31 12:05:44', 1, 6, '160.250.254.7'),
(472, 'Video  []Data has deleted successfully.', '2025-10-31 12:05:47', 1, 6, '160.250.254.7'),
(473, 'Video  [Regenta Resort and Spa Chitwan, Nepal - YouTube]Data has deleted successfully.', '2025-10-31 12:05:47', 1, 6, '160.250.254.7'),
(474, 'Offers Meta Data Edit Successfully', '2025-10-31 12:08:03', 1, 4, '160.250.254.7'),
(475, 'Gallery Meta Data Edit Successfully', '2025-10-31 12:09:33', 1, 4, '160.250.254.7'),
(476, 'Services [Spa & Wellness] Edit Successfully', '2025-10-31 12:12:28', 1, 4, '160.250.254.7'),
(477, 'Services [Corporate Events & Wedding Destinatio] Edit Successfully', '2025-10-31 12:13:37', 1, 4, '160.250.254.7'),
(478, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:13:43', 1, 4, '160.250.254.7'),
(479, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:27:06', 1, 4, '160.250.254.7'),
(480, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 12:27:23', 1, 4, '160.250.254.7'),
(481, 'Login: superadmin logged in.', '2025-10-31 12:27:50', 1, 1, '27.34.27.227'),
(482, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 12:28:11', 1, 4, '160.250.254.7'),
(483, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 12:28:50', 1, 4, '160.250.254.7'),
(484, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:31:20', 1, 4, '27.34.27.227'),
(485, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:31:42', 1, 4, '27.34.27.227'),
(486, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-10-31 12:32:10', 1, 4, '27.34.27.227'),
(487, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:33:25', 1, 4, '27.34.27.227'),
(488, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:40:07', 1, 4, '27.34.27.227'),
(489, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:41:49', 1, 4, '160.250.254.7'),
(490, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:42:29', 1, 4, '160.250.254.7'),
(491, 'Services [Spa & Wellness] Edit Successfully', '2025-10-31 12:42:38', 1, 4, '160.250.254.7'),
(492, 'Services [Nearby Excursions] Edit Successfully', '2025-10-31 12:43:02', 1, 4, '160.250.254.7'),
(493, 'Services [Nearby Excursions] Edit Successfully', '2025-10-31 12:43:14', 1, 4, '160.250.254.7'),
(494, 'Services [Fitness Center] Edit Successfully', '2025-10-31 12:43:58', 1, 4, '160.250.254.7'),
(495, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-10-31 12:44:09', 1, 4, '160.250.254.7'),
(496, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-10-31 12:44:22', 1, 4, '160.250.254.7'),
(497, 'Gallery Image [Hotel] Edit Successfully', '2025-10-31 12:48:59', 1, 4, '160.250.254.7'),
(498, 'Gallery Image [Hotel] Edit Successfully', '2025-10-31 12:49:10', 1, 4, '160.250.254.7'),
(499, 'Gallery Image [Interior] Edit Successfully', '2025-10-31 12:49:14', 1, 4, '160.250.254.7'),
(500, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:53:17', 1, 4, '160.250.254.7'),
(501, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:54:31', 1, 4, '160.250.254.7'),
(502, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:56:42', 1, 4, '160.250.254.7'),
(503, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:57:36', 1, 4, '160.250.254.7'),
(504, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:58:58', 1, 4, '160.250.254.7'),
(505, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 12:59:21', 1, 4, '160.250.254.7'),
(506, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:00:59', 1, 4, '160.250.254.7'),
(507, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:02:22', 1, 4, '160.250.254.7'),
(508, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:04:12', 1, 4, '160.250.254.7'),
(509, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:05:36', 1, 4, '160.250.254.7'),
(510, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:06:07', 1, 4, '160.250.254.7'),
(511, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 13:06:49', 1, 4, '160.250.254.7'),
(512, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:07:09', 1, 4, '160.250.254.7'),
(513, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:11:22', 1, 4, '160.250.254.7'),
(514, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:11:59', 1, 4, '160.250.254.7'),
(515, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 13:12:13', 1, 4, '160.250.254.7'),
(516, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:12:28', 1, 4, '160.250.254.7'),
(517, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:12:45', 1, 4, '160.250.254.7'),
(518, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:13:11', 1, 4, '160.250.254.7'),
(519, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:13:21', 1, 4, '160.250.254.7'),
(520, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:13:47', 1, 4, '160.250.254.7'),
(521, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-10-31 13:15:58', 1, 4, '160.250.254.7'),
(522, 'Changes on Sub Package \'Cultural & Market\' has been saved successfully.', '2025-10-31 13:17:37', 1, 4, '160.250.254.7'),
(523, 'Changes on Sub Package \'Scenic & Adventure\' has been saved successfully.', '2025-10-31 13:18:02', 1, 4, '160.250.254.7'),
(524, 'Changes on Sub Package \'Spiritual & Religious\' has been saved successfully.', '2025-10-31 13:18:12', 1, 4, '160.250.254.7'),
(525, 'Changes on Sub Package \'Cultural & Market\' has been saved successfully.', '2025-10-31 13:18:20', 1, 4, '160.250.254.7'),
(526, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:22:11', 1, 4, '160.250.254.7'),
(527, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:22:30', 1, 4, '160.250.254.7'),
(528, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 13:23:12', 1, 4, '160.250.254.7'),
(529, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:23:27', 1, 4, '160.250.254.7'),
(530, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-10-31 13:35:55', 1, 4, '160.250.254.7'),
(531, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:36:03', 1, 4, '160.250.254.7'),
(532, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-10-31 13:36:13', 1, 4, '160.250.254.7'),
(533, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-10-31 13:36:22', 1, 4, '160.250.254.7'),
(534, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-10-31 13:36:37', 1, 4, '160.250.254.7'),
(535, 'Login: superadmin logged in.', '2025-11-03 14:17:11', 1, 1, '113.199.251.172'),
(536, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-03 14:24:00', 1, 4, '113.199.251.172'),
(537, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-03 14:26:36', 1, 4, '113.199.251.172'),
(538, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-03 14:27:07', 1, 4, '113.199.251.172'),
(539, 'Changes on Article \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-03 14:27:31', 1, 4, '113.199.251.172'),
(540, 'Changes on Article \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-03 15:03:28', 1, 4, '113.199.251.172'),
(541, 'Login: superadmin logged in.', '2025-11-03 16:00:55', 1, 1, '160.250.255.180'),
(542, 'Login: superadmin logged in.', '2025-11-05 13:30:18', 1, 1, '160.250.255.180'),
(543, 'Login: admin logged in.', '2025-11-07 12:25:26', 1, 1, '160.250.255.180'),
(544, 'Login: admin logged in.', '2025-11-11 14:56:27', 1, 1, '160.250.254.60'),
(545, 'Login: admin logged in.', '2025-11-12 13:00:13', 1, 1, '103.10.28.206'),
(546, '360 Image \'Swimming Pool\' has added successfully.', '2025-11-12 13:01:24', 1, 3, '103.10.28.206'),
(547, '360 Image \'Entrance\' has added successfully.', '2025-11-12 13:02:40', 1, 3, '103.10.28.206'),
(548, '360 Image \'Reception\' has added successfully.', '2025-11-12 13:03:05', 1, 3, '103.10.28.206'),
(549, 'Login: admin logged in.', '2025-11-12 13:07:33', 1, 1, '160.250.254.184'),
(550, 'Login: superadmin logged in.', '2025-11-12 13:13:00', 1, 1, '27.34.25.205'),
(551, 'Login: admin logged in.', '2025-11-12 14:37:33', 1, 1, '103.10.28.206'),
(552, 'Login: admin logged in.', '2025-11-12 14:42:06', 1, 1, '103.10.28.206'),
(553, '360 Image \'Inter connecting room (top floor)\' has added successfully.', '2025-11-12 14:45:29', 1, 3, '103.10.28.206'),
(554, '360 Image \'Interconnecting room (top floor ) Bathroom\' has added successfully.', '2025-11-12 14:48:11', 1, 3, '103.10.28.206'),
(555, '360 Image \'Inter connecting room (top floor) Balcony\' has added successfully.', '2025-11-12 14:53:05', 1, 3, '103.10.28.206'),
(556, '360 Image \'Ground floor (Lift area)\' has added successfully.', '2025-11-12 14:56:55', 1, 3, '103.10.28.206'),
(557, '360 Image \'Lobby area\' has added successfully.', '2025-11-12 14:57:34', 1, 3, '103.10.28.206'),
(558, 'Login: admin logged in.', '2025-11-12 15:06:16', 1, 1, '103.10.28.206'),
(559, 'Login: admin logged in.', '2025-11-12 15:21:04', 1, 1, '103.10.28.206'),
(560, '360 Image \'Garden Area\' has added successfully.', '2025-11-12 15:25:13', 1, 3, '103.10.28.206'),
(561, '360 Image \'Exterior area 2\' has added successfully.', '2025-11-12 15:36:41', 1, 3, '103.10.28.206'),
(562, '360 Image \'Exterior area\' has added successfully.', '2025-11-12 15:37:11', 1, 3, '103.10.28.206'),
(563, '360 Image \'Main Entrance \' has added successfully.', '2025-11-12 15:37:55', 1, 3, '103.10.28.206'),
(564, '360 Image \'Parking \' has added successfully.', '2025-11-12 15:38:13', 1, 3, '103.10.28.206'),
(565, '360 Image \'Temple Entrance\' has added successfully.', '2025-11-12 15:38:57', 1, 3, '103.10.28.206'),
(566, 'Changes on 360 Image \'Temple Entrance\' has been saved successfully.', '2025-11-12 15:39:07', 1, 4, '103.10.28.206'),
(567, '360 Image \'Tharu Dance Area \' has added successfully.', '2025-11-12 15:39:36', 1, 3, '103.10.28.206'),
(568, 'Changes on 360 Image \'Tharu Dance Area \' has been saved successfully.', '2025-11-12 15:39:45', 1, 4, '103.10.28.206'),
(569, 'Hotspot \'Main Entrance - Temple Entrance\' has added successfully.', '2025-11-12 15:43:04', 1, 3, '103.10.28.206'),
(570, 'Hotspot \'Temple Entrance-Main Entrance\' has added successfully.', '2025-11-12 15:43:40', 1, 3, '103.10.28.206'),
(571, 'Login: superadmin logged in.', '2025-11-12 15:49:01', 1, 1, '160.250.254.184'),
(572, 'Slideshow [We\'re Opening Soon] Edit Successfully', '2025-11-12 15:51:55', 1, 4, '160.250.254.184'),
(573, 'Changes on Hotspot \'Temple Entrance-Main Entrance\' has been saved successfully.', '2025-11-12 15:54:16', 1, 4, '103.10.28.206'),
(574, 'Changes on Hotspot \'Temple Entrance-Main Entrance\' has been saved successfully.', '2025-11-12 15:54:37', 1, 4, '103.10.28.206'),
(575, 'Changes on Hotspot \'Temple Entrance-Main Entrance\' has been saved successfully.', '2025-11-12 15:55:46', 1, 4, '103.10.28.206'),
(576, 'Changes on Hotspot \'Temple Entrance-Main Entrance\' has been saved successfully.', '2025-11-12 15:55:59', 1, 4, '103.10.28.206'),
(577, '360 Image \'Resturant\' has added successfully.', '2025-11-12 16:00:42', 1, 3, '103.10.28.206'),
(578, 'Changes on 360 Image \'Resturant\' has been saved successfully.', '2025-11-12 16:00:52', 1, 4, '103.10.28.206'),
(579, '360 Image \'Lobby\' has added successfully.', '2025-11-12 16:01:12', 1, 3, '103.10.28.206'),
(580, '360 Image \'Exterior(Swimming Pool )\' has added successfully.', '2025-11-12 16:02:00', 1, 3, '103.10.28.206'),
(581, '360 Image \'Lobby Entrance\' has added successfully.', '2025-11-12 16:03:12', 1, 3, '103.10.28.206'),
(582, 'Hotspot \'Lobby Entrance - Main Entrance\' has added successfully.', '2025-11-12 16:03:53', 1, 3, '103.10.28.206'),
(583, 'Hotspot \'Main Entrance -Lobby Entrance\' has added successfully.', '2025-11-12 16:04:37', 1, 3, '103.10.28.206'),
(584, 'Changes on Hotspot \'Main Entrance -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:05:15', 1, 4, '103.10.28.206'),
(585, 'Changes on Hotspot \'Main Entrance -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:05:37', 1, 4, '103.10.28.206'),
(586, 'Changes on Hotspot \'Main Entrance -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:06:04', 1, 4, '103.10.28.206'),
(587, 'Changes on Hotspot \'Main Entrance -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:06:20', 1, 4, '103.10.28.206'),
(588, 'Changes on Hotspot \'Lobby Entrance - Main Entrance\' has been saved successfully.', '2025-11-12 16:06:47', 1, 4, '103.10.28.206'),
(589, 'Changes on Hotspot \'Lobby Entrance - Main Entrance\' has been saved successfully.', '2025-11-12 16:07:06', 1, 4, '103.10.28.206'),
(590, 'Changes on Hotspot \'Lobby Entrance - Main Entrance\' has been saved successfully.', '2025-11-12 16:07:16', 1, 4, '103.10.28.206'),
(591, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:07:23', 1, 4, '160.250.254.184'),
(592, 'Changes on Hotspot \'Lobby Entrance - Main Entrance\' has been saved successfully.', '2025-11-12 16:07:26', 1, 4, '103.10.28.206'),
(593, 'Changes on Hotspot \'Lobby Entrance - Main Entrance\' has been saved successfully.', '2025-11-12 16:07:36', 1, 4, '103.10.28.206'),
(594, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:08:20', 1, 4, '160.250.254.184'),
(595, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:09:03', 1, 4, '160.250.254.184'),
(596, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:10:42', 1, 4, '160.250.254.184'),
(597, 'Hotspot \'Lobby Entrance - Lobby \' has added successfully.', '2025-11-12 16:10:50', 1, 3, '103.10.28.206'),
(598, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:11:53', 1, 4, '160.250.254.184'),
(599, 'Hotspot \'Lobby -Lobby Entrance\' has added successfully.', '2025-11-12 16:12:12', 1, 3, '103.10.28.206'),
(600, 'Changes on Hotspot \'Lobby Entrance - Lobby \' has been saved successfully.', '2025-11-12 16:12:26', 1, 4, '103.10.28.206'),
(601, 'Changes on Hotspot \'Lobby Entrance - Lobby \' has been saved successfully.', '2025-11-12 16:12:33', 1, 4, '103.10.28.206'),
(602, 'Changes on Hotspot \'Lobby Entrance - Lobby \' has been saved successfully.', '2025-11-12 16:12:57', 1, 4, '103.10.28.206'),
(603, 'Changes on Hotspot \'Lobby -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:14:58', 1, 4, '103.10.28.206'),
(604, 'Changes on Hotspot \'Lobby -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:15:14', 1, 4, '103.10.28.206'),
(605, 'Changes on Hotspot \'Lobby -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:15:23', 1, 4, '103.10.28.206'),
(606, 'Changes on Hotspot \'Lobby -Lobby Entrance\' has been saved successfully.', '2025-11-12 16:15:32', 1, 4, '103.10.28.206'),
(607, 'Hotspot \'Lobby Entrance -Exterior area 2\' has added successfully.', '2025-11-12 16:19:03', 1, 3, '103.10.28.206'),
(608, 'Login: superadmin logged in.', '2025-11-12 16:19:19', 1, 1, '113.199.253.213'),
(609, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:20:19', 1, 4, '113.199.253.213'),
(610, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:21:31', 1, 4, '103.10.28.206'),
(611, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:21:48', 1, 4, '103.10.28.206'),
(612, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:21:52', 1, 4, '113.199.253.213'),
(613, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:21:57', 1, 4, '103.10.28.206'),
(614, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:22:10', 1, 4, '103.10.28.206'),
(615, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-12 16:22:15', 1, 4, '113.199.253.213'),
(616, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:22:23', 1, 4, '103.10.28.206'),
(617, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:22:48', 1, 4, '103.10.28.206'),
(618, 'Hotspot \'Exterior area 2 - Lobby entrance\' has added successfully.', '2025-11-12 16:23:44', 1, 3, '103.10.28.206'),
(619, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:24:03', 1, 4, '103.10.28.206'),
(620, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:24:23', 1, 4, '103.10.28.206'),
(621, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:24:33', 1, 4, '103.10.28.206'),
(622, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:24:45', 1, 4, '103.10.28.206'),
(623, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:25:11', 1, 4, '103.10.28.206'),
(624, 'Changes on Hotspot \'Lobby Entrance -Exterior area 2\' has been saved successfully.', '2025-11-12 16:25:31', 1, 4, '103.10.28.206'),
(625, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:25:51', 1, 4, '103.10.28.206'),
(626, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:26:08', 1, 4, '103.10.28.206'),
(627, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:26:32', 1, 4, '103.10.28.206'),
(628, 'Changes on Hotspot \'Exterior area 2 - Lobby entrance\' has been saved successfully.', '2025-11-12 16:26:46', 1, 4, '103.10.28.206'),
(629, 'Changes on 360 Image \'Exterior area 2\' has been saved successfully.', '2025-11-12 16:27:07', 1, 4, '103.10.28.206'),
(630, 'Changes on 360 Image \'Exterior area 2\' has been saved successfully.', '2025-11-12 16:27:19', 1, 4, '103.10.28.206'),
(631, 'Hotspot \'Exterior area 2- Exterior area\' has added successfully.', '2025-11-12 16:28:18', 1, 3, '103.10.28.206'),
(632, 'Login: admin logged in.', '2025-11-12 16:28:21', 1, 1, '103.10.28.206'),
(633, 'Changes on Hotspot \'Exterior area 2- Exterior area\' has been saved successfully.', '2025-11-12 16:28:31', 1, 4, '103.10.28.206'),
(634, 'Changes on Hotspot \'Exterior area 2- Exterior area\' has been saved successfully.', '2025-11-12 16:28:44', 1, 4, '103.10.28.206'),
(635, 'Changes on Hotspot \'Exterior area 2- Exterior area\' has been saved successfully.', '2025-11-12 16:28:56', 1, 4, '103.10.28.206'),
(636, 'Changes on Hotspot \'Exterior area 2- Exterior area\' has been saved successfully.', '2025-11-12 16:29:07', 1, 4, '103.10.28.206'),
(637, 'Hotspot \'Exterior area - Exterior area 2\' has added successfully.', '2025-11-12 16:30:08', 1, 3, '103.10.28.206'),
(638, 'Changes on Hotspot \'Exterior area - Exterior area 2\' has been saved successfully.', '2025-11-12 16:30:40', 1, 4, '103.10.28.206'),
(639, 'Changes on Hotspot \'Exterior area - Exterior area 2\' has been saved successfully.', '2025-11-12 16:31:02', 1, 4, '103.10.28.206'),
(640, 'Changes on Hotspot \'Exterior area - Exterior area 2\' has been saved successfully.', '2025-11-12 16:31:16', 1, 4, '103.10.28.206'),
(641, 'Changes on Hotspot \'Exterior area - Exterior area 2\' has been saved successfully.', '2025-11-12 16:31:29', 1, 4, '103.10.28.206'),
(642, 'Changes on 360 Image \'Exterior area\' has been saved successfully.', '2025-11-12 16:31:46', 1, 4, '103.10.28.206'),
(643, 'Changes on 360 Image \'Exterior area\' has been saved successfully.', '2025-11-12 16:31:59', 1, 4, '103.10.28.206'),
(644, 'Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has added successfully.', '2025-11-12 16:33:06', 1, 3, '103.10.28.206'),
(645, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:33:33', 1, 4, '103.10.28.206'),
(646, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:35:23', 1, 4, '103.10.28.206'),
(647, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:35:43', 1, 4, '103.10.28.206'),
(648, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:36:15', 1, 4, '103.10.28.206'),
(649, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:36:29', 1, 4, '103.10.28.206'),
(650, 'Changes on Hotspot \'Exterior area - Exterior area ()Swimming Pooll)\' has been saved successfully.', '2025-11-12 16:36:38', 1, 4, '103.10.28.206'),
(651, '360 Image \'test\' has added successfully.', '2025-11-12 16:36:56', 1, 3, '103.10.28.206'),
(652, 'Hotspot \'Exterior (Swimming pool) - Exterior area\' has added successfully.', '2025-11-12 16:37:40', 1, 3, '103.10.28.206'),
(653, 'Changes on 360 Image \'test\' has been saved successfully.', '2025-11-12 16:37:41', 1, 4, '103.10.28.206'),
(654, 'Hotspot \'Exterior area - Parking \' has added successfully.', '2025-11-12 16:40:36', 1, 3, '103.10.28.206'),
(655, 'Changes on Hotspot \'Exterior area - Parking \' has been saved successfully.', '2025-11-12 16:40:59', 1, 4, '103.10.28.206'),
(656, 'Changes on Hotspot \'Exterior area - Parking \' has been saved successfully.', '2025-11-12 16:41:10', 1, 4, '103.10.28.206'),
(657, 'Changes on Hotspot \'Exterior area - Parking \' has been saved successfully.', '2025-11-12 16:41:24', 1, 4, '103.10.28.206'),
(658, 'Hotspot \'Parking - Exterior area \' has added successfully.', '2025-11-12 16:43:39', 1, 3, '103.10.28.206'),
(659, 'Changes on Hotspot \'Parking - Exterior area \' has been saved successfully.', '2025-11-12 16:44:16', 1, 4, '103.10.28.206'),
(660, 'Changes on 360 Image \'Parking \' has been saved successfully.', '2025-11-12 16:44:25', 1, 4, '103.10.28.206'),
(661, 'Changes on 360 Image \'Parking \' has been saved successfully.', '2025-11-12 16:44:33', 1, 4, '103.10.28.206'),
(662, 'Changes on Hotspot \'Parking - Exterior area \' has been saved successfully.', '2025-11-12 16:44:41', 1, 4, '103.10.28.206'),
(663, 'Changes on Hotspot \'Parking - Exterior area \' has been saved successfully.', '2025-11-12 16:44:53', 1, 4, '103.10.28.206'),
(664, 'Changes on 360 Image \'Parking \' has been saved successfully.', '2025-11-12 16:44:58', 1, 4, '103.10.28.206'),
(665, 'Changes on 360 Image \'Parking \' has been saved successfully.', '2025-11-12 16:45:18', 1, 4, '103.10.28.206'),
(666, 'Changes on Hotspot \'Parking - Exterior area \' has been saved successfully.', '2025-11-12 16:45:33', 1, 4, '103.10.28.206'),
(667, 'Changes on 360 Image \'Parking \' has been saved successfully.', '2025-11-12 16:45:58', 1, 4, '103.10.28.206'),
(668, 'SubPackage Gallery Image [Restaurant]Data has deleted successfully.', '2025-11-12 16:46:18', 1, 6, '160.250.254.184'),
(669, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-12 16:46:34', 1, 6, '160.250.254.184'),
(670, 'SubPackage Gallery Image [Restaurant]Data has deleted successfully.', '2025-11-12 16:46:34', 1, 6, '160.250.254.184'),
(671, 'Hotspot \'Parking -Garden  Area \' has added successfully.', '2025-11-12 16:46:43', 1, 3, '103.10.28.206'),
(672, 'Sub Package Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-12 16:46:53', 1, 3, '160.250.254.184'),
(673, 'Sub Package Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-12 16:46:53', 1, 3, '160.250.254.184'),
(674, 'Sub Package Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-12 16:46:53', 1, 3, '160.250.254.184'),
(675, 'Sub Package Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-12 16:46:53', 1, 3, '160.250.254.184'),
(676, 'Sub Package Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-12 16:46:53', 1, 3, '160.250.254.184'),
(677, 'Changes on Hotspot \'Parking -Garden  Area \' has been saved successfully.', '2025-11-12 16:46:56', 1, 4, '103.10.28.206'),
(678, 'Changes on Hotspot \'Parking -Garden  Area \' has been saved successfully.', '2025-11-12 16:47:08', 1, 4, '103.10.28.206'),
(679, 'Changes on Hotspot \'Parking -Garden  Area \' has been saved successfully.', '2025-11-12 16:47:20', 1, 4, '103.10.28.206'),
(680, '360 Image \'Manakamana Gate\' has added successfully.', '2025-11-12 16:48:41', 1, 3, '103.10.28.206'),
(681, 'Hotspot \'Lobby Entrance - Garden area\' has added successfully.', '2025-11-12 16:51:15', 1, 3, '103.10.28.206'),
(682, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 16:53:56', 1, 4, '103.10.28.206'),
(683, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 16:54:09', 1, 4, '103.10.28.206'),
(684, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 16:54:25', 1, 4, '103.10.28.206'),
(685, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 16:54:38', 1, 4, '103.10.28.206'),
(686, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 16:54:52', 1, 4, '103.10.28.206'),
(687, 'Hotspot \'Garden area -  Lobby Entrance\' has added successfully.', '2025-11-12 16:56:23', 1, 3, '103.10.28.206'),
(688, 'Changes on Hotspot \'Garden area -  Lobby Entrance\' has been saved successfully.', '2025-11-12 16:57:00', 1, 4, '103.10.28.206'),
(689, 'Changes on Hotspot \'Garden area -  Lobby Entrance\' has been saved successfully.', '2025-11-12 16:57:10', 1, 4, '103.10.28.206'),
(690, 'Changes on Hotspot \'Garden area -  Lobby Entrance\' has been saved successfully.', '2025-11-12 16:57:17', 1, 4, '103.10.28.206'),
(691, 'Changes on Hotspot \'Garden area -  Lobby Entrance\' has been saved successfully.', '2025-11-12 16:57:24', 1, 4, '103.10.28.206'),
(692, 'Changes on Hotspot \'Garden area -  Lobby Entrance\' has been saved successfully.', '2025-11-12 16:57:35', 1, 4, '103.10.28.206'),
(693, '360 Image \'Restaurant Passage\' has added successfully.', '2025-11-12 16:58:27', 1, 3, '103.10.28.206'),
(694, 'Changes on 360 Image \'Restaurant Passage\' has been saved successfully.', '2025-11-12 17:02:06', 1, 4, '103.10.28.206'),
(695, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-12 17:02:26', 1, 4, '103.10.28.206'),
(696, 'Services [Spa & Wellness] Edit Successfully', '2025-11-12 17:08:56', 1, 4, '160.250.254.184'),
(697, 'Services [Spa & Wellness] Edit Successfully', '2025-11-12 17:09:13', 1, 4, '160.250.254.184'),
(698, 'Services [Spa & Wellness] Edit Successfully', '2025-11-12 17:09:24', 1, 4, '160.250.254.184'),
(699, 'Services [Spa & Wellness] Edit Successfully', '2025-11-12 17:09:36', 1, 4, '160.250.254.184'),
(700, 'Changes on 360 Image \'Reception \' has been saved successfully.', '2025-11-12 17:12:13', 1, 4, '103.10.28.205'),
(701, 'Services [Fitness Center] Edit Successfully', '2025-11-12 17:12:25', 1, 4, '160.250.254.184'),
(702, 'Changes on 360 Image \'Reception  1\' has been saved successfully.', '2025-11-12 17:13:10', 1, 4, '103.10.28.205'),
(703, 'Changes on 360 Image \'Reception Entrance\' has been saved successfully.', '2025-11-12 17:14:01', 1, 4, '103.10.28.205'),
(704, 'Changes on 360 Image \'Reception  \' has been saved successfully.', '2025-11-12 17:14:11', 1, 4, '103.10.28.205'),
(705, 'Hotspot \'Reception - Lobby area\' has added successfully.', '2025-11-12 17:15:04', 1, 3, '103.10.28.205'),
(706, 'Changes on Hotspot \'Reception - Lobby area\' has been saved successfully.', '2025-11-12 17:15:38', 1, 4, '103.10.28.205'),
(707, 'Changes on Hotspot \'Reception - Lobby area\' has been saved successfully.', '2025-11-12 17:16:47', 1, 4, '103.10.28.205'),
(708, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-12 17:17:43', 1, 4, '160.250.254.184'),
(709, 'Image  [Reception - Lobby area]Data has deleted successfully.', '2025-11-12 17:17:48', 1, 6, '103.10.28.205'),
(710, 'Hotspot \'Reception - Lobby area\' has added successfully.', '2025-11-12 17:18:12', 1, 3, '103.10.28.205'),
(711, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-12 17:18:17', 1, 4, '160.250.254.184'),
(712, 'Changes on Hotspot \'Reception - Lobby area\' has been saved successfully.', '2025-11-12 17:18:26', 1, 4, '103.10.28.205'),
(713, 'Changes on Hotspot \'Reception - Lobby area\' has been saved successfully.', '2025-11-12 17:18:33', 1, 4, '103.10.28.205'),
(714, 'Changes on Hotspot \'Reception - Lobby area\' has been saved successfully.', '2025-11-12 17:18:41', 1, 4, '103.10.28.205'),
(715, 'Hotspot \'Lobby area - Reception \' has added successfully.', '2025-11-12 17:19:12', 1, 3, '103.10.28.205'),
(716, 'Changes on Hotspot \'Lobby area - Reception \' has been saved successfully.', '2025-11-12 17:19:42', 1, 4, '103.10.28.205'),
(717, 'Changes on Hotspot \'Lobby area - Reception \' has been saved successfully.', '2025-11-12 17:19:49', 1, 4, '103.10.28.205'),
(718, 'Changes on Hotspot \'Lobby area - Reception \' has been saved successfully.', '2025-11-12 17:19:58', 1, 4, '103.10.28.205'),
(719, 'Changes on 360 Image \'Lobby area\' has been saved successfully.', '2025-11-12 17:20:13', 1, 4, '103.10.28.205'),
(720, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-12 17:20:39', 1, 4, '160.250.254.184'),
(721, 'Hotspot \'Lobby area -  Ground floor (Lift area)\' has added successfully.', '2025-11-12 17:21:50', 1, 3, '103.10.28.205'),
(722, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-12 17:22:21', 1, 4, '160.250.254.184'),
(723, '360 Image \'1st Floor (Lift area)\' has added successfully.', '2025-11-12 17:24:03', 1, 3, '103.10.28.205'),
(724, 'Changes on Hotspot \'Lobby area -  1st Floor (Lift area)\' has been saved successfully.', '2025-11-12 17:24:28', 1, 4, '103.10.28.205'),
(725, 'Services [Nearby Excursions] Edit Successfully', '2025-11-12 17:25:22', 1, 4, '160.250.254.184'),
(726, 'Changes on Hotspot \'Lobby area -  1st Floor (Lift area)\' has been saved successfully.', '2025-11-12 17:25:39', 1, 4, '103.10.28.205'),
(727, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-12 17:26:11', 1, 4, '103.10.28.205'),
(728, 'Login: admin logged in.', '2025-11-13 12:25:11', 1, 1, '103.10.28.212'),
(729, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:26:39', 1, 4, '103.10.28.212'),
(730, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:26:47', 1, 4, '103.10.28.212'),
(731, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:26:54', 1, 4, '103.10.28.212'),
(732, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:27:00', 1, 4, '103.10.28.212'),
(733, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:27:10', 1, 4, '103.10.28.212'),
(734, 'Changes on Hotspot \'Lobby area -  Ground floor (Lift )\' has been saved successfully.', '2025-11-13 12:28:19', 1, 4, '103.10.28.212'),
(735, 'Hotspot \'Ground floor (lift area) - lobby area\' has added successfully.', '2025-11-13 12:28:57', 1, 3, '103.10.28.212'),
(736, 'Hotspot \'Ground floor (lift area) - lobby area\' has added successfully.', '2025-11-13 12:30:58', 1, 3, '103.10.28.212'),
(737, 'Changes on Hotspot \'Ground floor (lift area) - lobby area\' has been saved successfully.', '2025-11-13 12:31:24', 1, 4, '103.10.28.212'),
(738, 'Changes on Hotspot \'Ground floor (lift area) - lobby area\' has been saved successfully.', '2025-11-13 12:31:30', 1, 4, '103.10.28.212'),
(739, 'Changes on Hotspot \'Ground floor (lift area) - lobby area\' has been saved successfully.', '2025-11-13 12:31:50', 1, 4, '103.10.28.212'),
(740, 'Login: superadmin logged in.', '2025-11-13 12:35:42', 1, 1, '160.250.254.184'),
(741, 'Changes on Article \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-13 12:43:07', 1, 4, '160.250.254.184'),
(742, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-13 13:08:18', 1, 6, '160.250.254.184'),
(743, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-13 13:08:20', 1, 6, '160.250.254.184'),
(744, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:20', 1, 6, '160.250.254.184'),
(745, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:22', 1, 6, '160.250.254.184'),
(746, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:22', 1, 6, '160.250.254.184'),
(747, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-13 13:08:22', 1, 6, '160.250.254.184'),
(748, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:25', 1, 6, '160.250.254.184'),
(749, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-13 13:08:25', 1, 6, '160.250.254.184'),
(750, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:25', 1, 6, '160.250.254.184'),
(751, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 13:08:25', 1, 6, '160.250.254.184'),
(752, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(753, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(754, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(755, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(756, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(757, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 13:10:54', 1, 3, '160.250.254.184'),
(758, 'Login: admin logged in.', '2025-11-13 13:22:47', 1, 1, '103.10.28.212'),
(759, '360 Image \'4th floor (Lift area)\' has added successfully.', '2025-11-13 13:27:08', 1, 3, '103.10.28.212'),
(760, '360 Image \'Garden view room \' has added successfully.', '2025-11-13 13:29:53', 1, 3, '103.10.28.212'),
(761, 'Login: admin logged in.', '2025-11-13 13:40:22', 1, 1, '103.10.28.212'),
(762, '360 Image \'Ground floor Corridor\' has added successfully.', '2025-11-13 13:51:41', 1, 3, '103.10.28.212'),
(763, '360 Image \'Fourth Floor Corridor\' has added successfully.', '2025-11-13 13:57:38', 1, 3, '103.10.28.212'),
(764, 'Changes on 360 Image \'4th Floor (Corridor)\' has been saved successfully.', '2025-11-13 14:04:15', 1, 4, '103.10.28.212'),
(765, 'Hotspot \'4th Floor (Corridor)- 4th floor (lift area)\' has added successfully.', '2025-11-13 14:32:19', 1, 3, '103.10.28.212'),
(766, 'Changes on Hotspot \'4th Floor (Corridor)- 4th floor (lift area)\' has been saved successfully.', '2025-11-13 14:33:55', 1, 4, '103.10.28.212'),
(767, 'Changes on Hotspot \'4th Floor (Corridor)- 4th floor (lift area)\' has been saved successfully.', '2025-11-13 14:34:19', 1, 4, '103.10.28.212'),
(768, 'Changes on Hotspot \'4th Floor (Corridor)- 4th floor (lift area)\' has been saved successfully.', '2025-11-13 14:34:32', 1, 4, '103.10.28.212'),
(769, 'Changes on Hotspot \'4th Floor (Corridor)- 4th floor (lift area)\' has been saved successfully.', '2025-11-13 14:35:20', 1, 4, '103.10.28.212'),
(770, 'Hotspot \'$th floor (Lift area) - 4th floor (Corridor)\' has added successfully.', '2025-11-13 14:36:51', 1, 3, '103.10.28.212'),
(771, 'Changes on Hotspot \'4th floor (Lift area) - 4th floor (Corridor)\' has been saved successfully.', '2025-11-13 14:37:18', 1, 4, '103.10.28.212'),
(772, 'Changes on Hotspot \'4th floor (Lift area) - 4th floor (Corridor)\' has been saved successfully.', '2025-11-13 14:37:29', 1, 4, '103.10.28.212'),
(773, 'Login: superadmin logged in.', '2025-11-13 14:37:32', 1, 1, '160.250.254.184'),
(774, 'Changes on Hotspot \'4th floor (Lift area) - 4th floor (Corridor)\' has been saved successfully.', '2025-11-13 14:37:36', 1, 4, '103.10.28.212'),
(775, 'Changes on Hotspot \'4th floor (Lift area) - 4th floor (Corridor)\' has been saved successfully.', '2025-11-13 14:37:50', 1, 4, '103.10.28.212'),
(776, 'SubPackage Gallery Image [Deluxe Triple Room]Data has deleted successfully.', '2025-11-13 14:40:36', 1, 6, '160.250.254.184'),
(777, 'SubPackage Gallery Image [Deluxe Triple Room]Data has deleted successfully.', '2025-11-13 14:40:38', 1, 6, '160.250.254.184'),
(778, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:38', 1, 6, '160.250.254.184'),
(779, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:40', 1, 6, '160.250.254.184'),
(780, 'SubPackage Gallery Image [Deluxe Triple Room]Data has deleted successfully.', '2025-11-13 14:40:40', 1, 6, '160.250.254.184'),
(781, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:40', 1, 6, '160.250.254.184'),
(782, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:42', 1, 6, '160.250.254.184'),
(783, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:42', 1, 6, '160.250.254.184'),
(784, 'SubPackage Gallery Image [Deluxe Triple Room]Data has deleted successfully.', '2025-11-13 14:40:42', 1, 6, '160.250.254.184'),
(785, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:40:42', 1, 6, '160.250.254.184'),
(786, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 14:41:05', 1, 3, '160.250.254.184'),
(787, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 14:41:05', 1, 3, '160.250.254.184'),
(788, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 14:41:05', 1, 3, '160.250.254.184'),
(789, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 14:41:05', 1, 3, '160.250.254.184'),
(790, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-13 14:42:41', 1, 6, '160.250.254.184'),
(791, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:43', 1, 6, '160.250.254.184'),
(792, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-13 14:42:43', 1, 6, '160.250.254.184'),
(793, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:46', 1, 6, '160.250.254.184'),
(794, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-13 14:42:46', 1, 6, '160.250.254.184'),
(795, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:46', 1, 6, '160.250.254.184'),
(796, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:49', 1, 6, '160.250.254.184'),
(797, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:49', 1, 6, '160.250.254.184'),
(798, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-13 14:42:49', 1, 6, '160.250.254.184'),
(799, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:42:49', 1, 6, '160.250.254.184'),
(800, 'Login: admin logged in.', '2025-11-13 14:45:50', 1, 1, '103.10.28.212'),
(801, 'Changes on 360 Image \'3rd Floor (Corridor)\' has been saved successfully.', '2025-11-13 14:46:23', 1, 4, '103.10.28.212'),
(802, 'Changes on 360 Image \'3rd floor (Lift area)\' has been saved successfully.', '2025-11-13 14:46:33', 1, 4, '103.10.28.212'),
(803, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-13 14:50:08', 1, 3, '160.250.254.184'),
(804, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-13 14:50:08', 1, 3, '160.250.254.184'),
(805, 'SubPackage Gallery Image [Deluxe Single]Data has deleted successfully.', '2025-11-13 14:50:15', 1, 6, '160.250.254.184'),
(806, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:18', 1, 6, '160.250.254.184'),
(807, 'SubPackage Gallery Image [Deluxe Single]Data has deleted successfully.', '2025-11-13 14:50:18', 1, 6, '160.250.254.184'),
(808, 'SubPackage Gallery Image [Deluxe Single]Data has deleted successfully.', '2025-11-13 14:50:21', 1, 6, '160.250.254.184'),
(809, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:21', 1, 6, '160.250.254.184'),
(810, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:21', 1, 6, '160.250.254.184'),
(811, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:24', 1, 6, '160.250.254.184'),
(812, 'SubPackage Gallery Image [Deluxe Single]Data has deleted successfully.', '2025-11-13 14:50:24', 1, 6, '160.250.254.184'),
(813, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:24', 1, 6, '160.250.254.184'),
(814, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 14:50:24', 1, 6, '160.250.254.184'),
(815, 'Changes on 360 Image \'4rd floor (Lift area)\' has been saved successfully.', '2025-11-13 14:52:53', 1, 4, '103.10.28.212'),
(816, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-13 14:54:42', 1, 3, '160.250.254.184'),
(817, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-13 14:54:42', 1, 3, '160.250.254.184'),
(818, 'Slideshow [Video 1] Edit Successfully', '2025-11-13 14:55:45', 1, 4, '160.250.254.184'),
(819, '360 Image \'Sauna and Steam area\' has added successfully.', '2025-11-13 14:57:15', 1, 3, '103.10.28.212'),
(820, 'Changes on Hotspot \'4th floor (Lift area) - Sana and Steam area\' has been saved successfully.', '2025-11-13 14:58:56', 1, 4, '103.10.28.212'),
(821, 'Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has added successfully.', '2025-11-13 15:00:00', 1, 3, '103.10.28.212'),
(822, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-13 15:00:22', 1, 4, '103.10.28.212'),
(823, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-13 15:00:38', 1, 4, '103.10.28.212'),
(824, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-13 15:00:47', 1, 4, '103.10.28.212'),
(825, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-13 15:01:00', 1, 4, '103.10.28.212'),
(826, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-13 15:03:06', 1, 4, '160.250.254.184'),
(827, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-13 15:03:19', 1, 4, '160.250.254.184'),
(828, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-13 15:03:37', 1, 4, '160.250.254.184'),
(829, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-13 15:03:48', 1, 4, '160.250.254.184'),
(830, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:08:19', 1, 3, '160.250.254.184'),
(831, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:08:19', 1, 3, '160.250.254.184'),
(832, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:08:19', 1, 3, '160.250.254.184'),
(833, 'Hotspot \'3rd Floor (Corridor)- \' has added successfully.', '2025-11-13 15:08:46', 1, 3, '103.10.28.212'),
(834, 'Changes on Hotspot \'3rd Floor (Corridor)- Inter connecting room(Top floor)\' has been saved successfu', '2025-11-13 15:10:11', 1, 4, '103.10.28.212'),
(835, 'Changes on Hotspot \'3rd Floor (Corridor)- Inter connecting room(Top fl\' has been saved successfully.', '2025-11-13 15:10:30', 1, 4, '103.10.28.212'),
(836, 'Changes on Hotspot \'3rd Floor (Corridor)- Inter connecting room(Top fl\' has been saved successfully.', '2025-11-13 15:10:51', 1, 4, '103.10.28.212'),
(837, 'Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corridor)\' has added successfully.', '2025-11-13 15:11:55', 1, 3, '103.10.28.212'),
(838, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-13 15:11:56', 1, 6, '160.250.254.184'),
(839, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 15:11:59', 1, 6, '160.250.254.184'),
(840, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-13 15:11:59', 1, 6, '160.250.254.184'),
(841, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 15:12:01', 1, 6, '160.250.254.184'),
(842, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-13 15:12:01', 1, 6, '160.250.254.184'),
(843, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-13 15:12:01', 1, 6, '160.250.254.184'),
(844, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:12:28', 1, 4, '103.10.28.212'),
(845, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:12:33', 1, 3, '160.250.254.184'),
(846, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:12:33', 1, 3, '160.250.254.184'),
(847, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 15:12:33', 1, 3, '160.250.254.184'),
(848, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:12:35', 1, 4, '103.10.28.212'),
(849, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:12:41', 1, 4, '103.10.28.212'),
(850, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:12:49', 1, 4, '103.10.28.212');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(851, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:12:58', 1, 4, '103.10.28.212'),
(852, 'Changes on Hotspot \'Inter connecting room(Top floor)- 3rd Floor (Corri\' has been saved successfully.', '2025-11-13 15:13:16', 1, 4, '103.10.28.212'),
(853, 'Hotspot \'Inter connecting room -Inter connecting room balcony\' has added successfully.', '2025-11-13 15:14:39', 1, 3, '103.10.28.212'),
(854, 'Changes on Hotspot \'Inter connecting room -Inter connecting room balco\' has been saved successfully.', '2025-11-13 15:15:30', 1, 4, '103.10.28.212'),
(855, 'Changes on Hotspot \'Inter connecting room -Inter connecting room balco\' has been saved successfully.', '2025-11-13 15:15:37', 1, 4, '103.10.28.212'),
(856, 'Changes on Hotspot \'Inter connecting room -Inter connecting room balco\' has been saved successfully.', '2025-11-13 15:15:50', 1, 4, '103.10.28.212'),
(857, 'Hotspot \'Inter connecting room balcony- Inter connecting room\' has added successfully.', '2025-11-13 15:16:59', 1, 3, '103.10.28.212'),
(858, 'Changes on Hotspot \'Inter connecting room -Inter connecting room balcony\' has been saved successfull', '2025-11-13 15:18:48', 1, 4, '103.10.28.212'),
(859, 'Changes on Hotspot \'Inter connecting room-Inter connecting room balcony\' has been saved successfully', '2025-11-13 15:19:55', 1, 4, '103.10.28.212'),
(860, 'Changes on Hotspot \'Inter connecting room-Interconnecting room balcony\' has been saved successfully.', '2025-11-13 15:20:12', 1, 4, '103.10.28.212'),
(861, 'Changes on Hotspot \'Interconnecting room-Interconnecting room balcony\' has been saved successfully.', '2025-11-13 15:20:29', 1, 4, '103.10.28.212'),
(862, 'Changes on Hotspot \'Interconnecting room-Interconnecting room balcony\' has been saved successfully.', '2025-11-13 15:20:40', 1, 4, '103.10.28.212'),
(863, 'Changes on Hotspot \'Interconnecting room balcony- Interconnecting room\' has been saved successfully.', '2025-11-13 15:21:15', 1, 4, '103.10.28.212'),
(864, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 15:21:16', 1, 3, '160.250.254.184'),
(865, 'Changes on Hotspot \'Interconnecting room balcony- Interconnecting room\' has been saved successfully.', '2025-11-13 15:21:25', 1, 4, '103.10.28.212'),
(866, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-13 15:21:32', 1, 3, '160.250.254.184'),
(867, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-13 15:21:32', 1, 3, '160.250.254.184'),
(868, 'Changes on Hotspot \'Interconnecting room balcony- Interconnecting room\' has been saved successfully.', '2025-11-13 15:21:36', 1, 4, '103.10.28.212'),
(869, 'Changes on Hotspot \'Interconnecting room balcony- Interconnecting room\' has been saved successfully.', '2025-11-13 15:21:46', 1, 4, '103.10.28.212'),
(870, 'Changes on Hotspot \'Interconnecting room balcony- Interconnecting room\' has been saved successfully.', '2025-11-13 15:22:02', 1, 4, '103.10.28.212'),
(871, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-13 15:22:19', 1, 3, '160.250.254.184'),
(872, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-13 15:22:19', 1, 3, '160.250.254.184'),
(873, 'Hotspot \'Interconnecting room-Interconnecting room bathroom\' has added successfully.', '2025-11-13 15:24:07', 1, 3, '103.10.28.212'),
(874, 'Changes on Hotspot \'Interconnecting room-Interconnecting room bathroom\' has been saved successfully.', '2025-11-13 15:24:36', 1, 4, '103.10.28.212'),
(875, 'Changes on Hotspot \'Interconnecting room-Interconnecting room bathroom\' has been saved successfully.', '2025-11-13 15:24:48', 1, 4, '103.10.28.212'),
(876, 'Changes on Hotspot \'Interconnecting room-Interconnecting room bathroom\' has been saved successfully.', '2025-11-13 15:24:57', 1, 4, '103.10.28.212'),
(877, 'Hotspot \'Interconnecting bathroom-Interconnecting room \' has added successfully.', '2025-11-13 15:25:56', 1, 3, '103.10.28.212'),
(878, 'Changes on Hotspot \'Interconnecting bathroom-Interconnecting room \' has been saved successfully.', '2025-11-13 15:26:26', 1, 4, '103.10.28.212'),
(879, 'Changes on 360 Image \'Interconnecting room (top floor ) Bathroom\' has been saved successfully.', '2025-11-13 15:26:49', 1, 4, '103.10.28.212'),
(880, 'Changes on 360 Image \'Interconnecting room (top floor ) Bathroom\' has been saved successfully.', '2025-11-13 15:27:10', 1, 4, '103.10.28.212'),
(881, 'Changes on 360 Image \'Interconnecting room (top floor ) Bathroom\' has been saved successfully.', '2025-11-13 15:27:22', 1, 4, '103.10.28.212'),
(882, 'Changes on 360 Image \'Interconnecting room (top floor ) Bathroom\' has been saved successfully.', '2025-11-13 15:27:34', 1, 4, '103.10.28.212'),
(883, 'Changes on 360 Image \'Inter connecting room (top floor)\' has been saved successfully.', '2025-11-13 15:28:09', 1, 4, '103.10.28.212'),
(884, 'Changes on 360 Image \'Inter connecting room (top floor)\' has been saved successfully.', '2025-11-13 15:28:17', 1, 4, '103.10.28.212'),
(885, 'Changes on 360 Image \'Inter connecting room (top floor)\' has been saved successfully.', '2025-11-13 15:28:24', 1, 4, '103.10.28.212'),
(886, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-13 15:33:11', 1, 4, '160.250.254.184'),
(887, 'Changes on Hotspot \'Reception - Reception Entrance\' has been saved successfully.', '2025-11-13 15:36:16', 1, 4, '103.10.28.212'),
(888, '360 Image \'Restaurant\' has added successfully.', '2025-11-13 15:41:52', 1, 3, '103.10.28.212'),
(889, 'Hotspot \'Exterior area- Restaurant Passage\' has added successfully.', '2025-11-13 15:44:04', 1, 3, '103.10.28.212'),
(890, 'Changes on Hotspot \'Exterior area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:44:52', 1, 4, '103.10.28.212'),
(891, 'Changes on Hotspot \'Exterior area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:45:02', 1, 4, '103.10.28.212'),
(892, 'Changes on Hotspot \'Exterior area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:45:18', 1, 4, '103.10.28.212'),
(893, 'Changes on Hotspot \'Exterior area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:45:29', 1, 4, '103.10.28.212'),
(894, 'Gallery Image [Exterior] Edit Successfully', '2025-11-13 15:45:40', 1, 4, '160.250.254.184'),
(895, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:45:46', 1, 6, '160.250.254.184'),
(896, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:48', 1, 6, '160.250.254.184'),
(897, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:45:48', 1, 6, '160.250.254.184'),
(898, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:52', 1, 6, '160.250.254.184'),
(899, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:52', 1, 6, '160.250.254.184'),
(900, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:45:52', 1, 6, '160.250.254.184'),
(901, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:55', 1, 6, '160.250.254.184'),
(902, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:55', 1, 6, '160.250.254.184'),
(903, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:45:55', 1, 6, '160.250.254.184'),
(904, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:55', 1, 6, '160.250.254.184'),
(905, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:58', 1, 6, '160.250.254.184'),
(906, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:58', 1, 6, '160.250.254.184'),
(907, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:58', 1, 6, '160.250.254.184'),
(908, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:45:58', 1, 6, '160.250.254.184'),
(909, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:45:58', 1, 6, '160.250.254.184'),
(910, 'Changes on Hotspot \'Exterior area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:46:03', 1, 4, '103.10.28.212'),
(911, 'Hotspot \'Restaurant passage-Exterior area\' has added successfully.', '2025-11-13 15:47:24', 1, 3, '103.10.28.212'),
(912, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(913, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(914, 'Sub Gallery Image [Restaurant View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(915, 'Sub Gallery Image [Garden]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(916, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(917, 'Sub Gallery Image [Building]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(918, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(919, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(920, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(921, 'Sub Gallery Image [Building]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(922, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(923, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 15:47:27', 1, 3, '160.250.254.184'),
(924, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:43', 1, 6, '160.250.254.184'),
(925, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:46', 1, 6, '160.250.254.184'),
(926, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:46', 1, 6, '160.250.254.184'),
(927, 'Changes on Hotspot \'Restaurant passage-Exterior area\' has been saved successfully.', '2025-11-13 15:47:47', 1, 4, '103.10.28.212'),
(928, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:48', 1, 6, '160.250.254.184'),
(929, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:48', 1, 6, '160.250.254.184'),
(930, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:48', 1, 6, '160.250.254.184'),
(931, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:51', 1, 6, '160.250.254.184'),
(932, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:51', 1, 6, '160.250.254.184'),
(933, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:51', 1, 6, '160.250.254.184'),
(934, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:51', 1, 6, '160.250.254.184'),
(935, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:53', 1, 6, '160.250.254.184'),
(936, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:53', 1, 6, '160.250.254.184'),
(937, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:53', 1, 6, '160.250.254.184'),
(938, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:53', 1, 6, '160.250.254.184'),
(939, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:53', 1, 6, '160.250.254.184'),
(940, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(941, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(942, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(943, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(944, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(945, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(946, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(947, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(948, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(949, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(950, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(951, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:56', 1, 6, '160.250.254.184'),
(952, 'Changes on Hotspot \'Restaurant passage-Exterior area\' has been saved successfully.', '2025-11-13 15:47:56', 1, 4, '103.10.28.212'),
(953, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(954, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(955, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(956, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(957, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(958, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(959, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:47:58', 1, 6, '160.250.254.184'),
(960, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(961, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(962, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(963, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(964, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(965, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(966, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(967, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:48:01', 1, 6, '160.250.254.184'),
(968, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(969, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(970, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(971, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(972, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(973, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(974, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(975, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(976, 'Sub Gallery Image  [v]Data has deleted successfully.', '2025-11-13 15:48:04', 1, 6, '160.250.254.184'),
(977, 'Changes on Hotspot \'Restaurant passage-Exterior area\' has been saved successfully.', '2025-11-13 15:48:28', 1, 4, '103.10.28.212'),
(978, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(979, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(980, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(981, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(982, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(983, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(984, 'Sub Gallery Image  [Interior]Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(985, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(986, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(987, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:48:31', 1, 6, '160.250.254.184'),
(988, 'Gallery Image [Interior] Edit Successfully', '2025-11-13 15:48:42', 1, 4, '160.250.254.184'),
(989, 'Changes on Hotspot \'Restaurant passage-Exterior area\' has been saved successfully.', '2025-11-13 15:48:45', 1, 4, '103.10.28.212'),
(990, 'Hotspot \'Restaurant passage-Restaurant \' has added successfully.', '2025-11-13 15:49:48', 1, 3, '103.10.28.212'),
(991, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:01', 1, 4, '103.10.28.212'),
(992, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:10', 1, 4, '103.10.28.212'),
(993, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:20', 1, 4, '103.10.28.212'),
(994, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:27', 1, 4, '103.10.28.212'),
(995, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:38', 1, 4, '103.10.28.212'),
(996, 'Changes on Hotspot \'Restaurant passage-Restaurant \' has been saved successfully.', '2025-11-13 15:50:50', 1, 4, '103.10.28.212'),
(997, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(998, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(999, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(1000, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(1001, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(1002, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-13 15:51:07', 1, 3, '160.250.254.184'),
(1003, 'Gallery Image [Interior] Edit Successfully', '2025-11-13 15:51:26', 1, 4, '160.250.254.184'),
(1004, 'Hotspot \'Restaurant - Restaurant passage\' has added successfully.', '2025-11-13 15:51:43', 1, 3, '103.10.28.212'),
(1005, 'Changes on Hotspot \'Restaurant - Restaurant passage\' has been saved successfully.', '2025-11-13 15:53:02', 1, 4, '103.10.28.212'),
(1006, 'Changes on Hotspot \'Restaurant - Restaurant passage\' has been saved successfully.', '2025-11-13 15:53:17', 1, 4, '103.10.28.212'),
(1007, 'Changes on Hotspot \'Restaurant - Restaurant passage\' has been saved successfully.', '2025-11-13 15:53:27', 1, 4, '103.10.28.212'),
(1008, 'Changes on Hotspot \'Restaurant - Restaurant passage\' has been saved successfully.', '2025-11-13 15:53:34', 1, 4, '103.10.28.212'),
(1009, 'Changes on Hotspot \'Restaurant - Restaurant passage\' has been saved successfully.', '2025-11-13 15:53:42', 1, 4, '103.10.28.212'),
(1010, 'Hotspot \'Restaurant passage- Garden area\' has added successfully.', '2025-11-13 15:54:20', 1, 3, '103.10.28.212'),
(1011, 'Changes on Hotspot \'Restaurant passage- Garden area\' has been saved successfully.', '2025-11-13 15:54:43', 1, 4, '103.10.28.212'),
(1012, 'Changes on Hotspot \'Restaurant passage- Garden area\' has been saved successfully.', '2025-11-13 15:54:51', 1, 4, '103.10.28.212'),
(1013, 'Changes on Hotspot \'Restaurant passage- Garden area\' has been saved successfully.', '2025-11-13 15:55:08', 1, 4, '103.10.28.212'),
(1014, 'Hotspot \'Garden area- Restaurant passage\' has added successfully.', '2025-11-13 15:56:53', 1, 3, '103.10.28.212'),
(1015, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:35', 1, 6, '160.250.254.184'),
(1016, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:38', 1, 6, '160.250.254.184'),
(1017, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:38', 1, 6, '160.250.254.184'),
(1018, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:40', 1, 6, '160.250.254.184'),
(1019, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:40', 1, 6, '160.250.254.184'),
(1020, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:40', 1, 6, '160.250.254.184'),
(1021, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:43', 1, 6, '160.250.254.184'),
(1022, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:43', 1, 6, '160.250.254.184'),
(1023, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:43', 1, 6, '160.250.254.184'),
(1024, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:43', 1, 6, '160.250.254.184'),
(1025, 'Changes on Hotspot \'Garden area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:57:45', 1, 4, '103.10.28.212'),
(1026, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:45', 1, 6, '160.250.254.184'),
(1027, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:45', 1, 6, '160.250.254.184'),
(1028, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:45', 1, 6, '160.250.254.184'),
(1029, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:45', 1, 6, '160.250.254.184'),
(1030, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:45', 1, 6, '160.250.254.184'),
(1031, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1032, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1033, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1034, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1035, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1036, 'Sub Gallery Image  [Manakamana Hill Crest]Data has deleted successfully.', '2025-11-13 15:57:48', 1, 6, '160.250.254.184'),
(1037, 'Changes on Hotspot \'Garden area- Restaurant passage\' has been saved successfully.', '2025-11-13 15:57:52', 1, 4, '103.10.28.212'),
(1038, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:20', 1, 3, '160.250.254.184'),
(1039, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:20', 1, 3, '160.250.254.184'),
(1040, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:20', 1, 3, '160.250.254.184'),
(1041, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:39', 1, 3, '160.250.254.184'),
(1042, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:39', 1, 3, '160.250.254.184'),
(1043, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 15:58:39', 1, 3, '160.250.254.184'),
(1044, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-11-13 15:58:56', 1, 3, '160.250.254.184'),
(1045, 'Hotspot \'Restaurant passage-Parking\' has added successfully.', '2025-11-13 15:59:20', 1, 3, '103.10.28.212'),
(1046, 'Changes on Hotspot \'Restaurant passage-Parking\' has been saved successfully.', '2025-11-13 15:59:45', 1, 4, '103.10.28.212'),
(1047, 'Changes on Hotspot \'Restaurant passage-Parking\' has been saved successfully.', '2025-11-13 15:59:53', 1, 4, '103.10.28.212'),
(1048, 'Changes on Hotspot \'Restaurant passage-Parking\' has been saved successfully.', '2025-11-13 16:00:11', 1, 4, '103.10.28.212'),
(1049, 'Changes on Hotspot \'Restaurant passage-Parking\' has been saved successfully.', '2025-11-13 16:00:20', 1, 4, '103.10.28.212'),
(1050, 'Changes on Hotspot \'Restaurant passage-Parking\' has been saved successfully.', '2025-11-13 16:00:29', 1, 4, '103.10.28.212'),
(1051, 'Sub Gallery Image  [Deluxe Room]Data has deleted successfully.', '2025-11-13 16:00:41', 1, 6, '160.250.254.184'),
(1052, 'Hotspot \'Parking-Restaurant passage\' has added successfully.', '2025-11-13 16:01:14', 1, 3, '103.10.28.212'),
(1053, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1054, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1055, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1056, 'Sub Gallery Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1057, 'Sub Gallery Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1058, 'Sub Gallery Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1059, 'Sub Gallery Image [Deluxe Room]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1060, 'Sub Gallery Image [Interconnected Family Suite]Data has added successfully.', '2025-11-13 16:02:15', 1, 3, '160.250.254.184'),
(1061, 'Gallery Image [Deluxe Family Room] Edit Successfully', '2025-11-13 16:02:33', 1, 4, '160.250.254.184'),
(1062, 'Gallery Image [Deluxe Family Room] Edit Successfully', '2025-11-13 16:02:43', 1, 4, '160.250.254.184'),
(1063, 'Gallery Image [Deluxe Family Room] Edit Successfully', '2025-11-13 16:02:48', 1, 4, '160.250.254.184'),
(1064, 'Changes on Hotspot \'Parking-Restaurant passage\' has been saved successfully.', '2025-11-13 16:02:50', 1, 4, '103.10.28.212'),
(1065, 'Gallery Image [Deluxe Family Room] Edit Successfully', '2025-11-13 16:02:52', 1, 4, '160.250.254.184'),
(1066, 'Gallery Image [Deluxe Family Room] Edit Successfully', '2025-11-13 16:02:57', 1, 4, '160.250.254.184'),
(1067, 'Sub Gallery Image  [Deluxe Room]Data has deleted successfully.', '2025-11-13 16:03:13', 1, 6, '160.250.254.184'),
(1068, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 16:03:16', 1, 6, '160.250.254.184'),
(1069, 'Sub Gallery Image  [Deluxe Room]Data has deleted successfully.', '2025-11-13 16:03:16', 1, 6, '160.250.254.184'),
(1070, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 16:03:23', 1, 6, '160.250.254.184'),
(1071, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-13 16:03:23', 1, 6, '160.250.254.184'),
(1072, 'Sub Gallery Image  [Deluxe Room]Data has deleted successfully.', '2025-11-13 16:03:23', 1, 6, '160.250.254.184'),
(1073, 'Changes on Hotspot \'Parking-Restaurant passage\' has been saved successfully.', '2025-11-13 16:03:32', 1, 4, '103.10.28.212'),
(1074, 'Changes on Hotspot \'Parking-Restaurant passage\' has been saved successfully.', '2025-11-13 16:03:54', 1, 4, '103.10.28.212'),
(1075, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 16:04:36', 1, 3, '160.250.254.184'),
(1076, 'Gallery Image [Interconnected Family Room] Edit Successfully', '2025-11-13 16:04:51', 1, 4, '160.250.254.184'),
(1077, 'Login: admin logged in.', '2025-11-13 16:04:55', 1, 1, '103.10.28.212'),
(1078, 'Gallery [Restaurant]Data has added successfully.', '2025-11-13 16:07:00', 1, 3, '160.250.254.184'),
(1079, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:07:33', 1, 3, '160.250.254.184'),
(1080, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:07:33', 1, 3, '160.250.254.184'),
(1081, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:07:33', 1, 3, '160.250.254.184'),
(1082, 'Login: superadmin logged in.', '2025-11-13 16:07:57', 1, 1, '160.250.254.184'),
(1083, 'Sub Gallery Image [Lobby]Data has added successfully.', '2025-11-13 16:09:36', 1, 3, '160.250.254.184'),
(1084, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-13 16:09:36', 1, 3, '160.250.254.184'),
(1085, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-13 16:09:36', 1, 3, '160.250.254.184'),
(1086, 'Gallery Image [Lobby] Edit Successfully', '2025-11-13 16:10:00', 1, 4, '160.250.254.184'),
(1087, 'Gallery Image [Reception] Edit Successfully', '2025-11-13 16:10:12', 1, 4, '160.250.254.184'),
(1088, 'Gallery [Activities]Data has added successfully.', '2025-11-13 16:11:00', 1, 3, '160.250.254.184'),
(1089, 'Gallery Image [Wellness Center] Edit Successfully', '2025-11-13 16:11:18', 1, 4, '160.250.254.184'),
(1090, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1091, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1092, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1093, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1094, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1095, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:14:23', 1, 3, '160.250.254.184'),
(1096, 'Sub Gallery Image [Sauna]Data has added successfully.', '2025-11-13 16:17:43', 1, 3, '160.250.254.184'),
(1097, 'Sub Gallery Image [Steam]Data has added successfully.', '2025-11-13 16:17:43', 1, 3, '160.250.254.184'),
(1098, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-11-13 16:17:43', 1, 3, '160.250.254.184'),
(1099, 'Hotspot \'Ground floor-Garden view room\' has added successfully.', '2025-11-13 16:19:35', 1, 3, '103.10.28.212'),
(1100, 'Changes on Hotspot \'Ground floor-Garden view room\' has been saved successfully.', '2025-11-13 16:20:31', 1, 4, '103.10.28.212'),
(1101, 'Changes on Hotspot \'Ground floor-Garden view room\' has been saved successfully.', '2025-11-13 16:20:40', 1, 4, '103.10.28.212'),
(1102, 'Changes on Hotspot \'Ground floor-Garden view room\' has been saved successfully.', '2025-11-13 16:20:54', 1, 4, '103.10.28.212'),
(1103, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:21:17', 1, 3, '160.250.254.184'),
(1104, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:21:17', 1, 3, '160.250.254.184'),
(1105, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:21:17', 1, 3, '160.250.254.184'),
(1106, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:21:17', 1, 3, '160.250.254.184'),
(1107, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:21:17', 1, 3, '160.250.254.184'),
(1108, '360 Image \'Garden view balcony\' has added successfully.', '2025-11-13 16:22:38', 1, 3, '103.10.28.212'),
(1109, 'Hotspot \'Garden view room- Ground floor\' has added successfully.', '2025-11-13 16:24:17', 1, 3, '103.10.28.212'),
(1110, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-13 16:24:36', 1, 4, '160.250.254.184'),
(1111, 'Hotspot \'Garden view room- Garden view balcony\' has added successfully.', '2025-11-13 16:25:33', 1, 3, '103.10.28.212'),
(1112, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-13 16:25:49', 1, 4, '160.250.254.184'),
(1113, 'Hotspot \'Garden view balcony-Garden view room\' has added successfully.', '2025-11-13 16:26:30', 1, 3, '103.10.28.212'),
(1114, '360 Image \'Garden view room (Bathtoom))\' has added successfully.', '2025-11-13 16:30:08', 1, 3, '103.10.28.212'),
(1115, 'Changes on 360 Image \'Garden view room (Bathtoom)\' has been saved successfully.', '2025-11-13 16:30:48', 1, 4, '103.10.28.212'),
(1116, 'Hotspot \'Garden view room-Garden view room  bathroom\' has added successfully.', '2025-11-13 16:32:02', 1, 3, '103.10.28.212'),
(1117, 'Changes on Hotspot \'Garden view room-Garden view room  bathroom\' has been saved successfully.', '2025-11-13 16:32:33', 1, 4, '103.10.28.212'),
(1118, 'Changes on Hotspot \'Garden view room-Garden view room  bathroom\' has been saved successfully.', '2025-11-13 16:32:41', 1, 4, '103.10.28.212'),
(1119, 'Changes on Hotspot \'Garden view room-Garden view room  bathroom\' has been saved successfully.', '2025-11-13 16:32:50', 1, 4, '103.10.28.212'),
(1120, 'Gallery [Home Gallery]Data has added successfully.', '2025-11-13 16:32:52', 1, 3, '160.250.254.184'),
(1121, 'Gallery Image [Home Gallery] Edit Successfully', '2025-11-13 16:33:00', 1, 4, '160.250.254.184'),
(1122, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 16:33:32', 1, 3, '160.250.254.184'),
(1123, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 16:33:32', 1, 3, '160.250.254.184'),
(1124, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-13 16:33:32', 1, 3, '160.250.254.184'),
(1125, 'Hotspot \'Garden view bathroom-Garden view room \' has added successfully.', '2025-11-13 16:33:45', 1, 3, '103.10.28.212'),
(1126, 'Changes on Hotspot \'Garden view bathroom-Garden view room \' has been saved successfully.', '2025-11-13 16:33:59', 1, 4, '103.10.28.212'),
(1127, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-11-13 16:34:02', 1, 3, '160.250.254.184'),
(1128, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-11-13 16:34:02', 1, 3, '160.250.254.184'),
(1129, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-11-13 16:34:02', 1, 3, '160.250.254.184'),
(1130, 'Changes on Hotspot \'Garden view bathroom-Garden view room \' has been saved successfully.', '2025-11-13 16:34:14', 1, 4, '103.10.28.212'),
(1131, 'Changes on Hotspot \'Garden view bathroom-Garden view room \' has been saved successfully.', '2025-11-13 16:34:40', 1, 4, '103.10.28.212'),
(1132, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-13 16:34:41', 1, 3, '160.250.254.184'),
(1133, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-13 16:34:41', 1, 3, '160.250.254.184'),
(1134, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-13 16:34:41', 1, 3, '160.250.254.184'),
(1135, 'Changes on Hotspot \'Garden view bathroom-Garden view room \' has been saved successfully.', '2025-11-13 16:35:22', 1, 4, '103.10.28.212'),
(1136, 'Sub Gallery Image [Bathroom]Data has added successfully.', '2025-11-13 16:35:39', 1, 3, '160.250.254.184'),
(1137, 'Sub Gallery Image [Interconnected Family Room]Data has added successfully.', '2025-11-13 16:35:39', 1, 3, '160.250.254.184'),
(1138, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-13 16:35:39', 1, 3, '160.250.254.184'),
(1139, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:36:28', 1, 3, '160.250.254.184'),
(1140, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-13 16:36:28', 1, 3, '160.250.254.184'),
(1141, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:36:28', 1, 3, '160.250.254.184'),
(1142, 'Sub Gallery Image [Multicuisine Restaurant]Data has added successfully.', '2025-11-13 16:36:28', 1, 3, '160.250.254.184'),
(1143, 'Sub Gallery Image [Sauna]Data has added successfully.', '2025-11-13 16:37:56', 1, 3, '160.250.254.184'),
(1144, 'Sub Gallery Image [Steam]Data has added successfully.', '2025-11-13 16:37:56', 1, 3, '160.250.254.184'),
(1145, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:37:56', 1, 3, '160.250.254.184'),
(1146, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-11-13 16:37:56', 1, 3, '160.250.254.184'),
(1147, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-13 16:37:56', 1, 3, '160.250.254.184'),
(1148, 'Gallery Image [Wellness Center] Edit Successfully', '2025-11-13 16:38:40', 1, 4, '160.250.254.184'),
(1149, 'Gallery Image [Wellness Center] Edit Successfully', '2025-11-13 16:38:50', 1, 4, '160.250.254.184'),
(1150, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-13 16:43:08', 1, 4, '160.250.254.184'),
(1151, 'Changes on 360 Image \'Basement (Lift area)\' has been saved successfully.', '2025-11-13 17:06:28', 1, 4, '103.10.28.212'),
(1152, 'Sub Package Image [Bathroom]Data has added successfully.', '2025-11-13 17:06:45', 1, 3, '160.250.254.184'),
(1153, 'SubPackage Gallery Image [Deluxe Single Room]Data has deleted successfully.', '2025-11-13 17:07:37', 1, 6, '160.250.254.184'),
(1154, 'Sub Package Image [Amenities]Data has added successfully.', '2025-11-13 17:07:51', 1, 3, '160.250.254.184'),
(1155, 'SubPackage Gallery Image [Deluxe Single Room]Data has deleted successfully.', '2025-11-13 17:08:19', 1, 6, '160.250.254.184'),
(1156, 'Hotspot \'Ground floor corridor-Basement (Lift area)\' has added successfully.', '2025-11-13 17:10:00', 1, 3, '103.10.28.212'),
(1157, 'Changes on Hotspot \'Ground floor corridor-Basement (Lift area)\' has been saved successfully.', '2025-11-13 17:10:20', 1, 4, '103.10.28.212'),
(1158, 'Changes on Hotspot \'Ground floor corridor-Basement (Lift area)\' has been saved successfully.', '2025-11-13 17:10:28', 1, 4, '103.10.28.212'),
(1159, 'Hotspot \'Basement (Lift area)-Ground floor corridor\' has added successfully.', '2025-11-13 17:11:24', 1, 3, '103.10.28.212'),
(1160, 'Changes on Hotspot \'Basement (Lift area)-Ground floor corridor\' has been saved successfully.', '2025-11-13 17:11:39', 1, 4, '103.10.28.212'),
(1161, 'Changes on Hotspot \'Basement (Lift area)-Ground floor corridor\' has been saved successfully.', '2025-11-13 17:12:06', 1, 4, '103.10.28.212'),
(1162, 'Login: superadmin logged in.', '2025-11-13 18:42:04', 1, 1, '103.129.134.45'),
(1163, 'Login: superadmin logged in.', '2025-11-14 11:04:23', 1, 1, '160.250.254.184'),
(1164, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-11-14 11:20:43', 1, 4, '160.250.254.184'),
(1165, 'Services [Corporate Events & Wedding Destination] Edit Successfully', '2025-11-14 11:20:51', 1, 4, '160.250.254.184'),
(1166, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-14 11:22:06', 1, 4, '160.250.254.184'),
(1167, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-14 11:24:15', 1, 4, '160.250.254.184'),
(1168, 'Services [Sauna & Steam] Edit Successfully', '2025-11-14 11:24:54', 1, 4, '160.250.254.184'),
(1169, 'Menu [Sauna & Steam] Edit Successfully', '2025-11-14 11:25:15', 1, 4, '160.250.254.184'),
(1170, 'Menu [Sauna & Steam] Edit Successfully', '2025-11-14 11:26:25', 1, 4, '160.250.254.184'),
(1171, 'Services [Sauna & Steam] Edit Successfully', '2025-11-14 11:27:48', 1, 4, '160.250.254.184'),
(1172, 'Blog [The Cable Car Experience] Edit Successfully', '2025-11-14 11:34:04', 1, 4, '160.250.254.184'),
(1173, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-11-14 11:34:19', 1, 4, '160.250.254.184'),
(1174, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-11-14 11:34:36', 1, 4, '160.250.254.184'),
(1175, 'Blog [The Cable Car Experience] Edit Successfully', '2025-11-14 11:36:04', 1, 4, '160.250.254.184'),
(1176, 'SubPackage Gallery Image [Deluxe Single Room]Data has deleted successfully.', '2025-11-14 11:52:25', 1, 6, '160.250.254.184'),
(1177, 'SubPackage Gallery Image [Deluxe Single Room]Data has deleted successfully.', '2025-11-14 11:52:28', 1, 6, '160.250.254.184'),
(1178, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:52:28', 1, 6, '160.250.254.184'),
(1179, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-14 11:52:39', 1, 3, '160.250.254.184'),
(1180, 'Sub Package Image [Deluxe Single Room]Data has added successfully.', '2025-11-14 11:52:39', 1, 3, '160.250.254.184'),
(1181, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:52:59', 1, 6, '160.250.254.184'),
(1182, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:53:03', 1, 6, '160.250.254.184'),
(1183, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:53:03', 1, 6, '160.250.254.184'),
(1184, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-14 11:53:13', 1, 3, '160.250.254.184'),
(1185, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-14 11:53:13', 1, 3, '160.250.254.184'),
(1186, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:55:31', 1, 6, '160.250.254.184'),
(1187, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:55:33', 1, 6, '160.250.254.184'),
(1188, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:55:33', 1, 6, '160.250.254.184'),
(1189, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:55:35', 1, 6, '160.250.254.184'),
(1190, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:55:35', 1, 6, '160.250.254.184'),
(1191, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:55:35', 1, 6, '160.250.254.184'),
(1192, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-14 11:55:46', 1, 3, '160.250.254.184'),
(1193, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-14 11:55:46', 1, 3, '160.250.254.184'),
(1194, 'Sub Package Image [Deluxe Family Room]Data has added successfully.', '2025-11-14 11:55:46', 1, 3, '160.250.254.184'),
(1195, 'SubPackage Gallery Image [Deluxe Family Room]Data has deleted successfully.', '2025-11-14 11:56:07', 1, 6, '160.250.254.184'),
(1196, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-14 11:58:28', 1, 6, '160.250.254.184'),
(1197, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-14 11:58:30', 1, 6, '160.250.254.184'),
(1198, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:30', 1, 6, '160.250.254.184'),
(1199, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:33', 1, 6, '160.250.254.184'),
(1200, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:33', 1, 6, '160.250.254.184'),
(1201, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-14 11:58:33', 1, 6, '160.250.254.184'),
(1202, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:35', 1, 6, '160.250.254.184'),
(1203, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:35', 1, 6, '160.250.254.184'),
(1204, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 11:58:35', 1, 6, '160.250.254.184'),
(1205, 'SubPackage Gallery Image [Deluxe Twin Room]Data has deleted successfully.', '2025-11-14 11:58:35', 1, 6, '160.250.254.184'),
(1206, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-14 11:58:48', 1, 3, '160.250.254.184'),
(1207, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-14 11:58:48', 1, 3, '160.250.254.184'),
(1208, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-14 11:58:48', 1, 3, '160.250.254.184'),
(1209, 'Sub Package Image [Deluxe Twin Room]Data has added successfully.', '2025-11-14 11:58:48', 1, 3, '160.250.254.184'),
(1210, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:24', 1, 6, '160.250.254.184'),
(1211, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:45', 1, 6, '160.250.254.184'),
(1212, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:45', 1, 6, '160.250.254.184'),
(1213, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:47', 1, 6, '160.250.254.184'),
(1214, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:47', 1, 6, '160.250.254.184'),
(1215, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:47', 1, 6, '160.250.254.184'),
(1216, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:51', 1, 6, '160.250.254.184'),
(1217, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:51', 1, 6, '160.250.254.184'),
(1218, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:51', 1, 6, '160.250.254.184'),
(1219, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:51', 1, 6, '160.250.254.184'),
(1220, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:54', 1, 6, '160.250.254.184'),
(1221, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:54', 1, 6, '160.250.254.184'),
(1222, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:54', 1, 6, '160.250.254.184'),
(1223, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:54', 1, 6, '160.250.254.184'),
(1224, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:54', 1, 6, '160.250.254.184'),
(1225, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1226, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1227, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1228, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1229, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1230, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:57', 1, 6, '160.250.254.184'),
(1231, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1232, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1233, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1234, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1235, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1236, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1237, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:02:59', 1, 6, '160.250.254.184'),
(1238, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1239, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1240, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1241, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1242, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1243, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1244, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1245, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:03:02', 1, 6, '160.250.254.184'),
(1246, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1247, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1248, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1249, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1250, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1251, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1252, 'SubPackage Gallery Image [Interconnected Family Suite]Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1253, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1254, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:03:05', 1, 6, '160.250.254.184'),
(1255, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184'),
(1256, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184'),
(1257, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184'),
(1258, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184'),
(1259, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1260, 'Sub Package Image [Interconnected Family Suite]Data has added successfully.', '2025-11-14 12:03:24', 1, 3, '160.250.254.184'),
(1261, 'Sub Package Image [Food]Data has added successfully.', '2025-11-14 12:05:47', 1, 3, '160.250.254.184'),
(1262, 'Sub Package Image [Food]Data has added successfully.', '2025-11-14 12:05:47', 1, 3, '160.250.254.184'),
(1263, 'Sub Package Image [Food]Data has added successfully.', '2025-11-14 12:06:59', 1, 3, '160.250.254.184'),
(1264, 'SubPackage Gallery Image [Food]Data has deleted successfully.', '2025-11-14 12:07:04', 1, 6, '160.250.254.184'),
(1265, 'SubPackage Gallery Image [Food]Data has deleted successfully.', '2025-11-14 12:07:48', 1, 6, '160.250.254.184'),
(1266, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:07:48', 1, 6, '160.250.254.184'),
(1267, 'Sub Package Image [Foddd]Data has added successfully.', '2025-11-14 12:07:58', 1, 3, '160.250.254.184'),
(1268, 'Gallery Image [Food] Edit Successfully', '2025-11-14 12:08:04', 1, 4, '160.250.254.184'),
(1269, 'SubPackage Gallery Image [Durbar]Data has deleted successfully.', '2025-11-14 12:10:26', 1, 6, '160.250.254.184'),
(1270, 'SubPackage Gallery Image [Durbar]Data has deleted successfully.', '2025-11-14 12:10:28', 1, 6, '160.250.254.184'),
(1271, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:10:28', 1, 6, '160.250.254.184'),
(1272, 'Sub Package Image [Gorkha Durbar Hall]Data has added successfully.', '2025-11-14 12:10:41', 1, 3, '160.250.254.184'),
(1273, 'Sub Package Image [Gorkha Durbar Hall]Data has added successfully.', '2025-11-14 12:10:41', 1, 3, '160.250.254.184'),
(1274, 'Sub Package Image [Gorkha Durbar Hall]Data has added successfully.', '2025-11-14 12:10:41', 1, 3, '160.250.254.184'),
(1275, 'SubPackage Gallery Image [Board Meeting Hall]Data has deleted successfully.', '2025-11-14 12:10:47', 1, 6, '160.250.254.184'),
(1276, 'SubPackage Gallery Image [Board Meeting Hall]Data has deleted successfully.', '2025-11-14 12:10:49', 1, 6, '160.250.254.184'),
(1277, 'SubPackage Gallery Image []Data has deleted successfully.', '2025-11-14 12:10:49', 1, 6, '160.250.254.184'),
(1278, 'Sub Package Image [Board Meeting Hall]Data has added successfully.', '2025-11-14 12:11:02', 1, 3, '160.250.254.184'),
(1279, 'Sub Package Image [Board Meeting Hall]Data has added successfully.', '2025-11-14 12:11:02', 1, 3, '160.250.254.184'),
(1280, 'Sub Package Image [Board Meeting Hall]Data has added successfully.', '2025-11-14 12:11:02', 1, 3, '160.250.254.184'),
(1281, 'Package Events & Hall Edit Successfully', '2025-11-14 12:12:39', 1, 4, '160.250.254.184'),
(1282, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-11-14 12:15:03', 1, 4, '160.250.254.184'),
(1283, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-11-14 12:15:14', 1, 4, '160.250.254.184'),
(1284, 'Package Rooms & Suites Edit Successfully', '2025-11-14 12:16:49', 1, 4, '160.250.254.184'),
(1285, 'Package Rooms & Suites Edit Successfully', '2025-11-14 12:17:28', 1, 4, '160.250.254.184'),
(1286, 'Blog [Manakamana Hillcrest Resort] Edit Successfully', '2025-11-14 12:18:49', 1, 4, '160.250.254.184'),
(1287, 'Blog [A Historical Tale of Divinity] Edit Successfully', '2025-11-14 12:19:45', 1, 4, '160.250.254.184'),
(1288, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:20:31', 1, 4, '160.250.254.184'),
(1289, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-14 12:20:43', 1, 4, '160.250.254.184'),
(1290, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-14 12:20:59', 1, 4, '160.250.254.184'),
(1291, 'Services [Poolside Bar]Data has added successfully.', '2025-11-14 12:24:37', 1, 3, '160.250.254.184'),
(1292, 'Servicess  [Spa]Data has deleted successfully.', '2025-11-14 12:24:46', 1, 6, '160.250.254.184'),
(1293, 'Services  [Spa]Data has deleted successfully.', '2025-11-14 12:24:46', 1, 6, '160.250.254.184'),
(1294, 'Services [Terrace Garden]Data has added successfully.', '2025-11-14 12:25:49', 1, 3, '160.250.254.184'),
(1295, 'Services [Wheelchair Friendly]Data has added successfully.', '2025-11-14 12:27:40', 1, 3, '160.250.254.184'),
(1296, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-14 12:34:30', 1, 4, '160.250.254.184'),
(1297, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:47:42', 1, 4, '160.250.254.184'),
(1298, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:49:39', 1, 4, '160.250.254.184'),
(1299, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:50:10', 1, 4, '160.250.254.184'),
(1300, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:51:11', 1, 4, '160.250.254.184'),
(1301, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:51:35', 1, 4, '160.250.254.184'),
(1302, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:52:09', 1, 4, '160.250.254.184'),
(1303, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:52:19', 1, 4, '160.250.254.184'),
(1304, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:52:47', 1, 4, '160.250.254.184'),
(1305, 'Login: superadmin logged in.', '2025-11-14 12:53:17', 1, 1, '113.199.249.161'),
(1306, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:53:56', 1, 4, '160.250.254.184'),
(1307, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:54:07', 1, 4, '160.250.254.184'),
(1308, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-14 12:54:11', 1, 4, '113.199.249.161'),
(1309, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:54:16', 1, 4, '160.250.254.184'),
(1310, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:57:57', 1, 4, '160.250.254.184'),
(1311, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-14 12:58:12', 1, 4, '160.250.254.184'),
(1312, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-14 12:59:51', 1, 4, '160.250.254.184'),
(1313, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-14 13:00:56', 1, 4, '160.250.254.184'),
(1314, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-14 13:01:09', 1, 4, '160.250.254.184'),
(1315, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-14 13:08:59', 1, 4, '160.250.254.184'),
(1316, 'Services [Restaurant]Data has added successfully.', '2025-11-14 13:11:26', 1, 3, '160.250.254.184'),
(1317, 'Services [Safe Deposits]Data has added successfully.', '2025-11-14 13:11:52', 1, 3, '160.250.254.184'),
(1318, 'Services [Nearby Excursions] Edit Successfully', '2025-11-14 13:16:28', 1, 4, '160.250.254.184'),
(1319, 'Services [Nearby Excursions] Edit Successfully', '2025-11-14 13:16:55', 1, 4, '160.250.254.184'),
(1320, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 13:41:50', 1, 4, '160.250.254.184'),
(1321, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 13:43:17', 1, 4, '160.250.254.184'),
(1322, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 13:45:02', 1, 4, '160.250.254.184'),
(1323, 'Login: admin logged in.', '2025-11-14 13:48:16', 1, 1, '103.10.28.208'),
(1324, 'Login: superadmin logged in.', '2025-11-14 14:32:08', 1, 1, '160.250.254.184'),
(1325, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:36:32', 1, 4, '160.250.254.184'),
(1326, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:36:54', 1, 4, '160.250.254.184'),
(1327, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:46:17', 1, 4, '160.250.254.184'),
(1328, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:48:21', 1, 4, '160.250.254.184'),
(1329, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:48:34', 1, 4, '160.250.254.184'),
(1330, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:48:49', 1, 4, '160.250.254.184'),
(1331, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:49:08', 1, 4, '160.250.254.184'),
(1332, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:49:49', 1, 4, '160.250.254.184'),
(1333, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:53:43', 1, 4, '160.250.254.184'),
(1334, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:54:01', 1, 4, '160.250.254.184'),
(1335, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:54:13', 1, 4, '160.250.254.184'),
(1336, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:55:17', 1, 4, '160.250.254.184'),
(1337, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:55:42', 1, 4, '160.250.254.184'),
(1338, 'Login: admin logged in.', '2025-11-14 14:56:36', 1, 1, '103.10.28.208'),
(1339, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:56:42', 1, 4, '160.250.254.184'),
(1340, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:57:48', 1, 4, '160.250.254.184'),
(1341, 'Changes on Article \'Health & Fitness Policies\' has been saved successfully.', '2025-11-14 14:58:04', 1, 4, '160.250.254.184'),
(1342, '360 Image \'Top floor corridor\' has added successfully.', '2025-11-14 14:58:47', 1, 3, '103.10.28.208'),
(1343, 'Services [Daily Newspaper]Data has added successfully.', '2025-11-14 14:58:53', 1, 3, '160.250.254.184'),
(1344, 'Login: admin logged in.', '2025-11-14 15:08:01', 1, 1, '103.10.28.208'),
(1345, '360 Image \'Gym\' has added successfully.', '2025-11-14 15:08:58', 1, 3, '103.10.28.208'),
(1346, '360 Image \'sauna\' has added successfully.', '2025-11-14 15:11:23', 1, 3, '103.10.28.208'),
(1347, '360 Image \'Steam\' has added successfully.', '2025-11-14 15:12:09', 1, 3, '103.10.28.208'),
(1348, 'Hotspot \'$th floor lift area-Gym\' has added successfully.', '2025-11-14 15:14:25', 1, 3, '103.10.28.208'),
(1349, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:14:56', 1, 4, '103.10.28.208'),
(1350, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:15:54', 1, 4, '103.10.28.208'),
(1351, 'Hotspot \'Gym-4th Floor (lift area)\' has added successfully.', '2025-11-14 15:16:51', 1, 3, '103.10.28.208'),
(1352, 'Changes on Hotspot \'Gym-4th Floor (lift area)\' has been saved successfully.', '2025-11-14 15:17:32', 1, 4, '103.10.28.208'),
(1353, 'Hotspot \'Sauna area- Sauna\' has added successfully.', '2025-11-14 15:18:57', 1, 3, '103.10.28.208'),
(1354, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:19:46', 1, 4, '103.10.28.208'),
(1355, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:20:19', 1, 4, '103.10.28.208'),
(1356, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:20:31', 1, 4, '103.10.28.208'),
(1357, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:21:03', 1, 4, '103.10.28.208'),
(1358, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:21:14', 1, 4, '103.10.28.208'),
(1359, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:21:21', 1, 4, '103.10.28.208'),
(1360, 'Changes on Hotspot \'Sauna area- Sauna\' has been saved successfully.', '2025-11-14 15:21:30', 1, 4, '103.10.28.208'),
(1361, 'Hotspot \'Sauna -Steam and Sauna area\' has added successfully.', '2025-11-14 15:24:43', 1, 3, '103.10.28.208'),
(1362, 'Changes on Hotspot \'Sauna -Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:25:22', 1, 4, '103.10.28.208'),
(1363, 'Changes on Hotspot \'Sauna -Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:25:32', 1, 4, '103.10.28.208'),
(1364, 'Changes on Hotspot \'Sauna -Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:25:41', 1, 4, '103.10.28.208'),
(1365, 'Hotspot \'Sauna and Steam area-Steam \' has added successfully.', '2025-11-14 15:27:08', 1, 3, '103.10.28.208'),
(1366, 'Changes on Hotspot \'Sauna and Steam area-Steam \' has been saved successfully.', '2025-11-14 15:27:40', 1, 4, '103.10.28.208'),
(1367, 'Changes on Hotspot \'Sauna and Steam area-Steam \' has been saved successfully.', '2025-11-14 15:28:04', 1, 4, '103.10.28.208'),
(1368, 'Changes on Hotspot \'Sauna and Steam area-Steam \' has been saved successfully.', '2025-11-14 15:28:11', 1, 4, '103.10.28.208'),
(1369, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:28:43', 1, 4, '103.10.28.208'),
(1370, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:28:55', 1, 4, '103.10.28.208'),
(1371, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:29:17', 1, 4, '103.10.28.208'),
(1372, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:29:27', 1, 4, '103.10.28.208'),
(1373, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:29:35', 1, 4, '103.10.28.208'),
(1374, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:30:01', 1, 4, '103.10.28.208'),
(1375, 'Changes on Hotspot \'Sauna and Steam area -4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:30:11', 1, 4, '103.10.28.208'),
(1376, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:30:44', 1, 4, '103.10.28.208'),
(1377, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:30:58', 1, 4, '103.10.28.208'),
(1378, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:31:08', 1, 4, '103.10.28.208'),
(1379, 'Changes on Hotspot \'4th floor lift area-Gym\' has been saved successfully.', '2025-11-14 15:31:17', 1, 4, '103.10.28.208'),
(1380, 'Hotspot \'Steam-Steam and Sauna area\' has added successfully.', '2025-11-14 15:32:30', 1, 3, '103.10.28.208'),
(1381, 'Changes on Hotspot \'Steam-Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:32:48', 1, 4, '103.10.28.208'),
(1382, 'Changes on Hotspot \'Steam-Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:32:58', 1, 4, '103.10.28.208'),
(1383, 'Changes on Hotspot \'Steam-Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:33:08', 1, 4, '103.10.28.208'),
(1384, 'Changes on Hotspot \'Sauna -Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:35:45', 1, 4, '103.10.28.208'),
(1385, 'Changes on Hotspot \'Sauna -Steam and Sauna area\' has been saved successfully.', '2025-11-14 15:36:09', 1, 4, '103.10.28.208'),
(1386, 'Login: admin logged in.', '2025-11-14 15:41:57', 1, 1, '160.250.254.184'),
(1387, 'Changes on 360 Image \'Steam ROOM\' has been saved successfully.', '2025-11-14 15:43:49', 1, 4, '103.10.28.208'),
(1388, 'Services [Wheelchair Friendly] Edit Successfully', '2025-11-14 15:44:23', 1, 4, '160.250.254.184'),
(1389, 'Changes on 360 Image \'Garden view room (BathRoom)\' has been saved successfully.', '2025-11-14 15:44:24', 1, 4, '103.10.28.208'),
(1390, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:45:42', 1, 4, '103.10.28.208'),
(1391, 'Gallery Image [Wellness] Edit Successfully', '2025-11-14 15:45:58', 1, 4, '160.250.254.184'),
(1392, 'Hotspot \'3rd floor(Corridor)\' has added successfully.', '2025-11-14 15:46:30', 1, 3, '103.10.28.208'),
(1393, 'Changes on Hotspot \'3rd floor(Corridor)\' has been saved successfully.', '2025-11-14 15:46:50', 1, 4, '103.10.28.208'),
(1394, 'Changes on Hotspot \'Interconnecting bathroom-Interconnecting room \' has been saved successfully.', '2025-11-14 15:47:37', 1, 4, '103.10.28.208'),
(1395, 'Hotspot \'4th floor (Lift area)\' has added successfully.', '2025-11-14 15:49:36', 1, 3, '103.10.28.208'),
(1396, 'Changes on Hotspot \'4th floor (Lift area)\' has been saved successfully.', '2025-11-14 15:49:58', 1, 4, '103.10.28.208'),
(1397, 'Hotspot \'Top floor corridor\' has added successfully.', '2025-11-14 15:51:29', 1, 3, '103.10.28.208'),
(1398, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:51:48', 1, 4, '103.10.28.208'),
(1399, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:52:15', 1, 4, '103.10.28.208'),
(1400, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:52:29', 1, 4, '103.10.28.208'),
(1401, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:52:39', 1, 4, '103.10.28.208'),
(1402, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:52:51', 1, 4, '103.10.28.208'),
(1403, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:53:02', 1, 4, '103.10.28.208'),
(1404, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:53:11', 1, 4, '103.10.28.208'),
(1405, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 15:53:24', 1, 4, '103.10.28.208'),
(1406, 'Hotspot \'Ground Floor (Lift area)\' has added successfully.', '2025-11-14 15:55:03', 1, 3, '103.10.28.208'),
(1407, 'Changes on Hotspot \'Ground Floor (Lift area)\' has been saved successfully.', '2025-11-14 15:55:29', 1, 4, '103.10.28.208'),
(1408, 'Changes on Hotspot \'Ground Floor (Lift area)\' has been saved successfully.', '2025-11-14 15:55:59', 1, 4, '103.10.28.208'),
(1409, 'Changes on Hotspot \'Ground Floor (Lift area)\' has been saved successfully.', '2025-11-14 15:56:06', 1, 4, '103.10.28.208'),
(1410, 'Hotspot \'Basement (Lift area)\' has added successfully.', '2025-11-14 15:56:50', 1, 3, '103.10.28.208'),
(1411, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 15:57:31', 1, 4, '103.10.28.208'),
(1412, 'Changes on 360 Image \'Sauna\' has been saved successfully.', '2025-11-14 15:58:31', 1, 4, '103.10.28.208'),
(1413, 'Changes on 360 Image \'Steam room\' has been saved successfully.', '2025-11-14 15:58:38', 1, 4, '103.10.28.208'),
(1414, 'Changes on 360 Image \'Garden view room (Bathroom)\' has been saved successfully.', '2025-11-14 15:58:46', 1, 4, '103.10.28.208'),
(1415, 'Changes on 360 Image \'Garden area\' has been saved successfully.', '2025-11-14 15:58:54', 1, 4, '103.10.28.208'),
(1416, 'Changes on 360 Image \'Ground floor corridor\' has been saved successfully.', '2025-11-14 15:59:04', 1, 4, '103.10.28.208'),
(1417, 'Hotspot \'Ground floor corridor\' has added successfully.', '2025-11-14 16:00:14', 1, 3, '103.10.28.208'),
(1418, 'Changes on Hotspot \'Ground floor corridor\' has been saved successfully.', '2025-11-14 16:00:27', 1, 4, '103.10.28.208'),
(1419, 'Changes on Hotspot \'Ground floor corridor\' has been saved successfully.', '2025-11-14 16:00:43', 1, 4, '103.10.28.208'),
(1420, 'Changes on Hotspot \'Ground floor corridor\' has been saved successfully.', '2025-11-14 16:00:52', 1, 4, '103.10.28.208'),
(1421, 'Changes on Hotspot \'Ground floor corridor\' has been saved successfully.', '2025-11-14 16:01:37', 1, 4, '103.10.28.208'),
(1422, 'Changes on FAQ \'What wellness facilities are available?\' has been saved successfully.', '2025-11-14 16:01:42', 1, 4, '160.250.254.184'),
(1423, 'Hotspot \'Basement (Lift area)\' has added successfully.', '2025-11-14 16:02:39', 1, 3, '103.10.28.208'),
(1424, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:02:50', 1, 4, '103.10.28.208'),
(1425, 'Changes on FAQ \'Where is Manakamana Hillcrest Resort located?\' has been saved successfully.', '2025-11-14 16:03:05', 1, 4, '160.250.254.184'),
(1426, 'Hotspot \'Ground floor (Lift area)\' has added successfully.', '2025-11-14 16:04:13', 1, 3, '103.10.28.208'),
(1427, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:04:28', 1, 4, '103.10.28.208'),
(1428, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:04:39', 1, 4, '103.10.28.208'),
(1429, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:04:53', 1, 4, '103.10.28.208'),
(1430, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:04:59', 1, 4, '103.10.28.208'),
(1431, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:05:09', 1, 4, '103.10.28.208'),
(1432, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:05:16', 1, 4, '103.10.28.208'),
(1433, 'Changes on Hotspot \'Ground floor (Lift area)\' has been saved successfully.', '2025-11-14 16:05:29', 1, 4, '103.10.28.208'),
(1434, 'Hotspot \'Top floor corridor\' has added successfully.', '2025-11-14 16:06:30', 1, 3, '103.10.28.208'),
(1435, 'Login: superadmin logged in.', '2025-11-14 16:06:35', 1, 1, '113.199.254.236'),
(1436, 'Changes on FAQ \'How much does it cost to stay at Manakamana Hillcrest Resort?\' has been saved succes', '2025-11-14 16:06:42', 1, 4, '160.250.254.184'),
(1437, 'Changes on Hotspot \'Top floor corridor\' has been saved successfully.', '2025-11-14 16:06:45', 1, 4, '103.10.28.208'),
(1438, 'Hotspot \'4th floor (Lift area)\' has added successfully.', '2025-11-14 16:07:32', 1, 3, '103.10.28.208'),
(1439, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:09:36', 1, 4, '103.10.28.208'),
(1440, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:09:50', 1, 4, '103.10.28.208'),
(1441, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:10:02', 1, 4, '103.10.28.208'),
(1442, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:10:10', 1, 4, '103.10.28.208'),
(1443, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:10:17', 1, 4, '103.10.28.208'),
(1444, 'Changes on Hotspot \'Basement (Lift area)\' has been saved successfully.', '2025-11-14 16:10:26', 1, 4, '103.10.28.208'),
(1445, 'Hotspot \'Top floor corridor\' has added successfully.', '2025-11-14 16:11:10', 1, 3, '103.10.28.208'),
(1446, 'Hotspot \'4th floor (Lift area)\' has added successfully.', '2025-11-14 16:11:50', 1, 3, '103.10.28.208'),
(1447, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-14 16:12:59', 1, 4, '160.250.254.184'),
(1448, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-11-14 16:14:18', 1, 4, '160.250.254.184'),
(1449, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-14 16:18:59', 1, 4, '160.250.254.184'),
(1450, '360 Image [test]Data has deleted successfully.', '2025-11-14 16:23:05', 1, 6, '103.10.28.208'),
(1451, 'Changes on 360 Image \'Interconnecting room (top floor)\' has been saved successfully.', '2025-11-14 16:23:34', 1, 4, '103.10.28.208'),
(1452, '360 Image [outside]Data has deleted successfully.', '2025-11-14 16:23:59', 1, 6, '103.10.28.208'),
(1453, '360 Image [hike]Data has deleted successfully.', '2025-11-14 16:24:10', 1, 6, '103.10.28.208'),
(1454, 'Changes on 360 Image \'Interconnecting room (top floor) Balcony\' has been saved successfully.', '2025-11-14 16:46:51', 1, 4, '103.10.28.208'),
(1455, 'Login: superadmin logged in.', '2025-11-14 17:07:30', 1, 1, '160.250.254.184'),
(1456, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-11-14 17:10:20', 1, 4, '160.250.254.184'),
(1457, 'Changes on Article \'Bharatpur Airport\' has been saved successfully.', '2025-11-14 17:10:34', 1, 4, '160.250.254.184'),
(1458, 'Changes on 360 Image \'Ground floor corridor\' has been saved successfully.', '2025-11-14 17:11:36', 1, 4, '103.10.28.208'),
(1459, 'Hotspot \'Temple Entrance\' has added successfully.', '2025-11-14 17:12:41', 1, 3, '103.10.28.208'),
(1460, 'Changes on Hotspot \'Temple Entrance\' has been saved successfully.', '2025-11-14 17:13:15', 1, 4, '103.10.28.208'),
(1461, 'Hotspot \'Manakamana Gate\' has added successfully.', '2025-11-14 17:14:40', 1, 3, '103.10.28.208'),
(1462, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:15:00', 1, 4, '103.10.28.208'),
(1463, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:15:15', 1, 4, '103.10.28.208'),
(1464, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:15:52', 1, 4, '103.10.28.208'),
(1465, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:16:15', 1, 4, '103.10.28.208'),
(1466, 'Changes on Hotspot \'Temple Entrance\' has been saved successfully.', '2025-11-14 17:17:12', 1, 4, '103.10.28.208'),
(1467, 'Changes on Hotspot \'Main Entrance\' has been saved successfully.', '2025-11-14 17:17:56', 1, 4, '103.10.28.208'),
(1468, 'Changes on Hotspot \'Main Entrance\' has been saved successfully.', '2025-11-14 17:18:34', 1, 4, '103.10.28.208'),
(1469, 'Changes on Hotspot \'Main Entrance\' has been saved successfully.', '2025-11-14 17:18:51', 1, 4, '103.10.28.208'),
(1470, 'Changes on Hotspot \'Main Entrance\' has been saved successfully.', '2025-11-14 17:19:04', 1, 4, '103.10.28.208'),
(1471, 'Changes on Hotspot \'Main Entrance - Temple Entrance\' has been saved successfully.', '2025-11-14 17:19:39', 1, 4, '103.10.28.208'),
(1472, 'Changes on Hotspot \'Temple Entrance\' has been saved successfully.', '2025-11-14 17:19:51', 1, 4, '103.10.28.208'),
(1473, 'Changes on Hotspot \'Temple Entrance\' has been saved successfully.', '2025-11-14 17:20:08', 1, 4, '103.10.28.208'),
(1474, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:20:51', 1, 4, '103.10.28.208'),
(1475, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:21:03', 1, 4, '103.10.28.208'),
(1476, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:21:13', 1, 4, '103.10.28.208'),
(1477, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:21:27', 1, 4, '103.10.28.208'),
(1478, 'Changes on Hotspot \'Manakamana Gate\' has been saved successfully.', '2025-11-14 17:21:43', 1, 4, '103.10.28.208'),
(1479, 'Changes on Hotspot \'Lobby Entrance\' has been saved successfully.', '2025-11-14 17:22:01', 1, 4, '103.10.28.208'),
(1480, 'Changes on Hotspot \'Lobby Entrance - Garden area\' has been saved successfully.', '2025-11-14 17:22:37', 1, 4, '103.10.28.208'),
(1481, 'Login: superadmin logged in.', '2025-11-16 11:31:29', 1, 1, '160.250.254.184'),
(1482, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 11:32:01', 1, 4, '160.250.254.184'),
(1483, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-16 11:33:03', 1, 4, '160.250.254.184'),
(1484, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-16 11:33:27', 1, 4, '160.250.254.184'),
(1485, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-16 11:33:48', 1, 4, '160.250.254.184'),
(1486, 'Login: admin logged in.', '2025-11-16 11:40:19', 1, 1, '160.250.254.184'),
(1487, 'Services [High Speed Internet] Edit Successfully', '2025-11-16 11:40:40', 1, 4, '160.250.254.184'),
(1488, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-16 11:40:57', 1, 4, '160.250.254.184'),
(1489, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-16 11:50:11', 1, 4, '160.250.254.184'),
(1490, 'Login: superadmin logged in.', '2025-11-16 11:51:12', 1, 1, '160.250.254.184'),
(1491, 'Menu [Sauna & Pool Policies] Edit Successfully', '2025-11-16 11:55:49', 1, 4, '160.250.254.184'),
(1492, 'Articles  [test22]Data has deleted successfully.', '2025-11-16 11:56:04', 1, 6, '160.250.254.184'),
(1493, 'Testimonial [Sanskar] Edit Successfully', '2025-11-16 11:56:29', 1, 4, '160.250.254.184'),
(1494, 'Changes on Article \'Sauna & Pool Policies\' has been saved successfully.', '2025-11-16 11:56:53', 1, 4, '160.250.254.184'),
(1495, 'Menu [Sauna & Pool Policies] Edit Successfully', '2025-11-16 11:57:04', 1, 4, '160.250.254.184'),
(1496, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 11:59:52', 1, 4, '160.250.254.184'),
(1497, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-16 12:00:08', 1, 4, '160.250.254.184'),
(1498, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:01:55', 1, 4, '160.250.254.184'),
(1499, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:03:02', 1, 4, '160.250.254.184'),
(1500, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-16 12:05:15', 1, 4, '160.250.254.184'),
(1501, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:05:20', 1, 4, '160.250.254.184'),
(1502, 'Services [Events & Wedding Destination] Edit Successfully', '2025-11-16 12:05:29', 1, 4, '160.250.254.184'),
(1503, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:05:50', 1, 4, '160.250.254.184'),
(1504, 'Services [Fitness Center] Edit Successfully', '2025-11-16 12:06:14', 1, 4, '160.250.254.184'),
(1505, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:09:04', 1, 4, '160.250.254.184'),
(1506, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:09:23', 1, 4, '160.250.254.184'),
(1507, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:09:37', 1, 4, '160.250.254.184'),
(1508, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:13:57', 1, 4, '160.250.254.184'),
(1509, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:20:30', 1, 4, '160.250.254.184'),
(1510, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:21:08', 1, 4, '160.250.254.184'),
(1511, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:21:52', 1, 4, '160.250.254.184'),
(1512, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:24:47', 1, 4, '160.250.254.184'),
(1513, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:27:38', 1, 4, '160.250.254.184'),
(1514, 'Services [Fitness Center] Edit Successfully', '2025-11-16 12:28:19', 1, 4, '160.250.254.184'),
(1515, 'Services [Fitness Center] Edit Successfully', '2025-11-16 12:30:46', 1, 4, '160.250.254.184'),
(1516, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:31:37', 1, 4, '160.250.254.184'),
(1517, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:34:18', 1, 4, '160.250.254.184'),
(1518, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:35:01', 1, 4, '160.250.254.184'),
(1519, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:37:07', 1, 4, '160.250.254.184'),
(1520, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:40:07', 1, 4, '160.250.254.184'),
(1521, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:40:27', 1, 4, '160.250.254.184'),
(1522, 'Changes on Article \'Pool & Sauna Policies\' has been saved successfully.', '2025-11-16 12:41:12', 1, 4, '160.250.254.184'),
(1523, 'Changes on Article \'Pool & Sauna Policies\' has been saved successfully.', '2025-11-16 12:41:19', 1, 4, '160.250.254.184'),
(1524, 'Menu [Sauna & Pool Policies] Edit Successfully', '2025-11-16 12:41:30', 1, 4, '160.250.254.184'),
(1525, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:50:36', 1, 4, '160.250.254.184'),
(1526, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:50:59', 1, 4, '160.250.254.184'),
(1527, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:51:24', 1, 4, '160.250.254.184'),
(1528, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:51:42', 1, 4, '160.250.254.184'),
(1529, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 12:52:54', 1, 4, '160.250.254.184'),
(1530, 'Menu [Pool & Sauna Policies] Edit Successfully', '2025-11-16 12:54:11', 1, 4, '160.250.254.184'),
(1531, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 12:56:30', 1, 4, '160.250.254.184'),
(1532, 'Services [Fitness Center] Edit Successfully', '2025-11-16 12:56:44', 1, 4, '160.250.254.184'),
(1533, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 12:56:58', 1, 4, '160.250.254.184'),
(1534, 'Changes on Sub Package \'Multicuisine Restaurant\' has been saved successfully.', '2025-11-16 12:59:16', 1, 4, '160.250.254.184'),
(1535, 'Login: admin logged in.', '2025-11-16 12:59:39', 1, 1, '160.250.254.184'),
(1536, 'Changes on Sub Package \'Gorkha Durbar Hall\' has been saved successfully.', '2025-11-16 12:59:59', 1, 4, '160.250.254.184'),
(1537, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 13:11:37', 1, 4, '160.250.254.184'),
(1538, 'Services [Fitness Center] Edit Successfully', '2025-11-16 13:11:49', 1, 4, '160.250.254.184'),
(1539, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 13:12:02', 1, 4, '160.250.254.184'),
(1540, 'Features [LED Television] Edit Successfully', '2025-11-16 13:13:14', 1, 4, '160.250.254.184'),
(1541, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:20:51', 1, 4, '160.250.254.184'),
(1542, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:21:18', 1, 4, '160.250.254.184'),
(1543, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:22:04', 1, 4, '160.250.254.184'),
(1544, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:22:44', 1, 4, '160.250.254.184'),
(1545, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:23:37', 1, 4, '160.250.254.184'),
(1546, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:25:13', 1, 4, '160.250.254.184'),
(1547, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:26:13', 1, 4, '160.250.254.184'),
(1548, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-16 13:27:23', 1, 4, '160.250.254.184'),
(1549, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-16 13:28:37', 1, 4, '160.250.254.184'),
(1550, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-16 13:29:11', 1, 4, '160.250.254.184'),
(1551, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 13:37:55', 1, 4, '160.250.254.184'),
(1552, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-16 13:38:14', 1, 4, '160.250.254.184'),
(1553, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-16 13:38:42', 1, 4, '160.250.254.184'),
(1554, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-16 13:39:02', 1, 4, '160.250.254.184'),
(1555, 'Login: admin logged in.', '2025-11-16 14:17:24', 1, 1, '103.10.28.203'),
(1556, '360 Image \'Station \' has added successfully.', '2025-11-16 14:18:25', 1, 3, '103.10.28.203'),
(1557, '360 Image \'Station 2\' has added successfully.', '2025-11-16 14:20:39', 1, 3, '103.10.28.203'),
(1558, 'Changes on 360 Image \'Station 2\' has been saved successfully.', '2025-11-16 14:25:48', 1, 4, '103.10.28.203'),
(1559, 'Changes on 360 Image \'Station \' has been saved successfully.', '2025-11-16 14:28:34', 1, 4, '103.10.28.203'),
(1560, '360 Image \'Station point\' has added successfully.', '2025-11-16 14:49:57', 1, 3, '103.10.28.203'),
(1561, 'Login: admin logged in.', '2025-11-16 14:59:22', 1, 1, '160.250.254.184'),
(1562, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-16 15:02:17', 1, 4, '160.250.254.184'),
(1563, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-16 15:03:41', 1, 4, '160.250.254.184'),
(1564, 'Changes on Article \'About Us\' has been saved successfully.', '2025-11-16 15:06:35', 1, 4, '160.250.254.184'),
(1565, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 15:26:13', 1, 4, '160.250.254.184'),
(1566, 'Services [Fitness Center] Edit Successfully', '2025-11-16 15:27:12', 1, 4, '160.250.254.184'),
(1567, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 15:28:33', 1, 4, '160.250.254.184'),
(1568, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 15:31:17', 1, 4, '160.250.254.184'),
(1569, 'Services [Sauna & Steam] Edit Successfully', '2025-11-16 15:32:13', 1, 4, '160.250.254.184'),
(1570, 'Services [Experiences Within Hillcrest] Edit Successfully', '2025-11-16 15:33:58', 1, 4, '160.250.254.184'),
(1571, 'Login: superadmin logged in.', '2025-11-16 15:39:06', 1, 1, '160.250.254.184'),
(1572, 'User [Super admin  ] Edit Successfully', '2025-11-16 15:40:06', 1, 4, '160.250.254.184'),
(1573, 'Login: superadmin logged in.', '2025-11-16 15:40:09', 1, 1, '160.250.254.184'),
(1574, 'User [Manakamana Hillcrest Resort  shakya] Edit Successfully', '2025-11-16 15:40:56', 1, 4, '160.250.254.184'),
(1575, 'Login: admin logged in.', '2025-11-16 15:41:41', 1, 1, '160.250.254.184'),
(1576, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 15:43:53', 1, 4, '160.250.254.184'),
(1577, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 15:46:23', 1, 4, '160.250.254.184'),
(1578, 'Changes on Sub Package \'Deluxe Twin Room\' has been saved successfully.', '2025-11-16 15:48:21', 1, 4, '160.250.254.184'),
(1579, 'Changes on Sub Package \'Deluxe Single Room\' has been saved successfully.', '2025-11-16 15:48:32', 1, 4, '160.250.254.184'),
(1580, 'Changes on Sub Package \'Deluxe Family Room\' has been saved successfully.', '2025-11-16 15:48:59', 1, 4, '160.250.254.184'),
(1581, 'Changes on Sub Package \'Interconnected Family Suite\' has been saved successfully.', '2025-11-16 15:49:18', 1, 4, '160.250.254.184'),
(1582, 'Gallery [Exterior2]Data has added successfully.', '2025-11-16 16:10:28', 1, 3, '160.250.254.184'),
(1583, 'Services [Room Service] Edit Successfully', '2025-11-16 16:17:08', 1, 4, '160.250.254.184'),
(1584, 'Changes on Sub Package \'Basera Restaurant\' has been saved successfully.', '2025-11-16 16:20:39', 1, 4, '160.250.254.184'),
(1585, 'Menu [Restaurant] Edit Successfully', '2025-11-16 16:20:57', 1, 4, '160.250.254.184'),
(1586, 'Changes on Sub Package \'Gorkha Hall\' has been saved successfully.', '2025-11-16 16:22:26', 1, 4, '160.250.254.184'),
(1587, 'Menu [Gorkha Durbar Hall] Edit Successfully', '2025-11-16 16:22:34', 1, 4, '160.250.254.184'),
(1588, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 16:25:10', 1, 4, '160.250.254.184'),
(1589, 'Services [Outdoor Swimming Pool] Edit Successfully', '2025-11-16 16:25:39', 1, 4, '160.250.254.184'),
(1590, 'Menu [Gorkha Hall] Edit Successfully', '2025-11-16 16:28:13', 1, 4, '160.250.254.184'),
(1591, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-16 16:31:50', 1, 4, '160.250.254.184'),
(1592, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-16 16:33:33', 1, 4, '160.250.254.184'),
(1593, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-16 16:33:52', 1, 4, '160.250.254.184'),
(1594, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-16 16:35:00', 1, 4, '160.250.254.184'),
(1595, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-16 16:36:29', 1, 4, '160.250.254.184'),
(1596, 'Services [Basera Restaurant] Edit Successfully', '2025-11-16 17:06:25', 1, 4, '160.250.254.184'),
(1597, 'Services [Poolside Bar (Alia Bar)] Edit Successfully', '2025-11-16 17:06:41', 1, 4, '160.250.254.184'),
(1598, 'Services [Poolside Bar (Aila Bar)] Edit Successfully', '2025-11-16 17:07:04', 1, 4, '160.250.254.184'),
(1599, 'Sub Package \'Darbar Hall\' has added successfully.', '2025-11-16 17:10:25', 1, 3, '160.250.254.184'),
(1600, 'Changes on Sub Package \'Darbar Hall\' has been saved successfully.', '2025-11-16 17:10:52', 1, 4, '160.250.254.184'),
(1601, 'Sub Package Image [Darbar Hall]Data has added successfully.', '2025-11-16 17:11:36', 1, 3, '160.250.254.184'),
(1602, 'Sub Package Image [Darbar Hall]Data has added successfully.', '2025-11-16 17:11:36', 1, 3, '160.250.254.184'),
(1603, 'Sub Package Image [Darbar Hall]Data has added successfully.', '2025-11-16 17:11:36', 1, 3, '160.250.254.184'),
(1604, 'Menu [Durbar Hall] CreatedData has added successfully.', '2025-11-16 17:12:30', 1, 3, '160.250.254.184'),
(1605, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:12:46', 1, 4, '160.250.254.184'),
(1606, 'Menu [Durbar Hall] Edit Successfully', '2025-11-16 17:12:59', 1, 4, '160.250.254.184'),
(1607, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:15:11', 1, 4, '160.250.254.184'),
(1608, 'Changes on Sub Package \'Gorkha Hall\' has been saved successfully.', '2025-11-16 17:15:39', 1, 4, '160.250.254.184'),
(1609, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:16:48', 1, 4, '160.250.254.184'),
(1610, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:16:59', 1, 4, '160.250.254.184'),
(1611, 'Changes on Sub Package \'Board Meeting Hall\' has been saved successfully.', '2025-11-16 17:22:01', 1, 4, '160.250.254.184'),
(1612, 'Changes on Sub Package \'Gorkha Hall\' has been saved successfully.', '2025-11-16 17:22:56', 1, 4, '160.250.254.184'),
(1613, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:23:16', 1, 4, '160.250.254.184'),
(1614, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:23:20', 1, 4, '160.250.254.184'),
(1615, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:24:34', 1, 4, '160.250.254.184'),
(1616, 'Login: superadmin logged in.', '2025-11-16 17:25:09', 1, 1, '160.250.254.184'),
(1617, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:29:14', 1, 4, '160.250.254.184'),
(1618, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-16 17:31:30', 1, 4, '160.250.254.184'),
(1619, 'Login: superadmin logged in.', '2025-11-17 11:02:58', 1, 1, '160.250.254.184'),
(1620, 'Login: superadmin logged in.', '2025-11-17 11:16:51', 1, 1, '160.250.254.184'),
(1621, 'Changes on Sub Package \'Durbar Hall\' has been saved successfully.', '2025-11-17 11:33:46', 1, 4, '160.250.254.184'),
(1622, 'Changes on Sub Package \'Gorkha Hall\' has been saved successfully.', '2025-11-17 11:34:41', 1, 4, '160.250.254.184'),
(1623, 'Gallery [Interior2]Data has added successfully.', '2025-11-17 11:42:00', 1, 3, '160.250.254.184'),
(1624, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-17 11:42:46', 1, 3, '160.250.254.184'),
(1625, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-17 11:42:46', 1, 3, '160.250.254.184'),
(1626, 'Sub Gallery Image [Corridor]Data has added successfully.', '2025-11-17 11:42:46', 1, 3, '160.250.254.184'),
(1627, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-17 11:42:46', 1, 3, '160.250.254.184'),
(1628, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-17 11:42:46', 1, 3, '160.250.254.184'),
(1629, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1630, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1631, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1632, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1633, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1634, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 11:46:58', 1, 3, '160.250.254.184'),
(1635, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 11:47:12', 1, 6, '160.250.254.184'),
(1636, 'Sub Gallery Image [Exterior]Data has added successfully.', '2025-11-17 11:47:52', 1, 3, '160.250.254.184'),
(1637, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-17 11:49:29', 1, 3, '160.250.254.184'),
(1638, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-17 11:49:29', 1, 3, '160.250.254.184'),
(1639, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-17 11:49:29', 1, 3, '160.250.254.184'),
(1640, 'Sub Gallery Image [Reception]Data has added successfully.', '2025-11-17 11:49:29', 1, 3, '160.250.254.184'),
(1641, 'Sub Gallery Image [Lobby Area]Data has added successfully.', '2025-11-17 11:49:29', 1, 3, '160.250.254.184'),
(1642, 'Gallery Image  [Exterior]Data has deleted successfully.', '2025-11-17 11:59:34', 1, 6, '160.250.254.184'),
(1643, 'Gallery Image  [Interior]Data has deleted successfully.', '2025-11-17 11:59:37', 1, 6, '160.250.254.184'),
(1644, 'Gallery Image  []Data has deleted successfully.', '2025-11-17 11:59:37', 1, 6, '160.250.254.184'),
(1645, 'Gallery Image [Exterior] Edit Successfully', '2025-11-17 11:59:42', 1, 4, '160.250.254.184'),
(1646, 'Gallery Image [Interior] Edit Successfully', '2025-11-17 11:59:47', 1, 4, '160.250.254.184'),
(1647, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 12:04:54', 1, 6, '160.250.254.184'),
(1648, 'Sub Gallery Image  [Exterior]Data has deleted successfully.', '2025-11-17 12:06:32', 1, 6, '160.250.254.184'),
(1649, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 12:07:57', 1, 6, '160.250.254.184'),
(1650, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 12:07:57', 1, 6, '160.250.254.184'),
(1651, 'Login: superadmin logged in.', '2025-11-17 14:37:35', 1, 1, '160.250.254.184'),
(1652, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-17 15:05:57', 1, 4, '160.250.254.184'),
(1653, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-17 15:06:10', 1, 4, '160.250.254.184'),
(1654, 'Login: superadmin logged in.', '2025-11-17 15:19:43', 1, 1, '160.250.254.184'),
(1655, 'Gallery [Restaurant2]Data has added successfully.', '2025-11-17 15:26:07', 1, 3, '160.250.254.184'),
(1656, 'Changes on Config \'Manakamana Hillcrest Resort\' has been saved successfully.', '2025-11-17 15:27:07', 1, 4, '160.250.254.184'),
(1657, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1658, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1659, 'Sub Gallery Image [Basera Restaurant]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1660, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1661, 'Sub Gallery Image [Basera Restaurant]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1662, 'Sub Gallery Image [Food]Data has added successfully.', '2025-11-17 15:27:37', 1, 3, '160.250.254.184'),
(1663, 'Services [Poolside Bar (Aila Bar)] Edit Successfully', '2025-11-17 15:47:59', 1, 4, '160.250.254.184'),
(1664, 'Services [24hrs Reception] Edit Successfully', '2025-11-17 15:48:15', 1, 4, '160.250.254.184'),
(1665, 'Services [Poolside Bar (Aila Bar)] Edit Successfully', '2025-11-17 15:48:52', 1, 4, '160.250.254.184'),
(1666, 'Sub Gallery Image [Restaurant]Data has added successfully.', '2025-11-17 15:52:41', 1, 3, '160.250.254.184'),
(1667, 'Sub Gallery Image [Restaurant]Data has added successfully.', '2025-11-17 15:52:41', 1, 3, '160.250.254.184'),
(1668, 'Gallery Image  [Restaurant]Data has deleted successfully.', '2025-11-17 15:53:12', 1, 6, '160.250.254.184'),
(1669, 'Sub Gallery Image  [Food]Data has deleted successfully.', '2025-11-17 15:53:25', 1, 6, '160.250.254.184'),
(1670, 'Gallery Image [Restaurant] Edit Successfully', '2025-11-17 15:53:37', 1, 4, '160.250.254.184'),
(1671, 'Sub Gallery Image  [Food]Data has deleted successfully.', '2025-11-17 15:53:46', 1, 6, '160.250.254.184'),
(1672, 'Gallery [Wellness2]Data has added successfully.', '2025-11-17 15:54:29', 1, 3, '160.250.254.184'),
(1673, 'Sub Gallery Image [Wellness]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184'),
(1674, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184'),
(1675, 'Sub Gallery Image [Wellness]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184'),
(1676, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184'),
(1677, 'Sub Gallery Image [Gym]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184'),
(1678, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-17 15:56:16', 1, 3, '160.250.254.184');
INSERT INTO `tbl_logs` (`id`, `action`, `registered`, `userid`, `user_action`, `ip_track`) VALUES
(1679, 'Gallery Image  [Wellness]Data has deleted successfully.', '2025-11-17 15:56:41', 1, 6, '160.250.254.184'),
(1680, 'Gallery Image [Wellness] Edit Successfully', '2025-11-17 15:56:51', 1, 4, '160.250.254.184'),
(1681, 'Gallery [Room2]Data has added successfully.', '2025-11-17 15:59:05', 1, 3, '160.250.254.184'),
(1682, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 15:59:31', 1, 3, '160.250.254.184'),
(1683, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 15:59:31', 1, 3, '160.250.254.184'),
(1684, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 15:59:31', 1, 3, '160.250.254.184'),
(1685, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 16:01:49', 1, 3, '160.250.254.184'),
(1686, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 16:01:49', 1, 3, '160.250.254.184'),
(1687, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 16:01:49', 1, 3, '160.250.254.184'),
(1688, 'Gallery Image [Interconnected Family Room] Edit Successfully', '2025-11-17 16:02:46', 1, 4, '160.250.254.184'),
(1689, 'Gallery Image [Interconnected Family Room] Edit Successfully', '2025-11-17 16:02:53', 1, 4, '160.250.254.184'),
(1690, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 16:04:20', 1, 3, '160.250.254.184'),
(1691, 'Sub Gallery Image [Deluxe Family Room]Data has added successfully.', '2025-11-17 16:04:20', 1, 3, '160.250.254.184'),
(1692, 'Sub Gallery Image [Interconnected Family Room]Data has added successfully.', '2025-11-17 16:05:08', 1, 3, '160.250.254.184'),
(1693, 'Sub Gallery Image [Interconnected Family Room]Data has added successfully.', '2025-11-17 16:07:09', 1, 3, '160.250.254.184'),
(1694, 'Sub Gallery Image [Interconnected Family Room]Data has added successfully.', '2025-11-17 16:07:09', 1, 3, '160.250.254.184'),
(1695, 'Sub Gallery Image [Interconnected Family Room]Data has added successfully.', '2025-11-17 16:07:09', 1, 3, '160.250.254.184'),
(1696, 'Gallery Image  [Rooms]Data has deleted successfully.', '2025-11-17 16:07:23', 1, 6, '160.250.254.184'),
(1697, 'Gallery Image [Room] Edit Successfully', '2025-11-17 16:07:27', 1, 4, '160.250.254.184'),
(1698, 'Gallery Image [Basera Restaurant] Edit Successfully', '2025-11-17 16:07:40', 1, 4, '160.250.254.184'),
(1699, 'Gallery Image [Basera Restaurant] Edit Successfully', '2025-11-17 16:07:56', 1, 4, '160.250.254.184'),
(1700, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 16:09:27', 1, 6, '160.250.254.184'),
(1701, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 16:09:36', 1, 3, '160.250.254.184'),
(1702, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 16:11:10', 1, 3, '160.250.254.184'),
(1703, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 16:11:15', 1, 6, '160.250.254.184'),
(1704, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 16:15:16', 1, 6, '160.250.254.184'),
(1705, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:16', 1, 6, '160.250.254.184'),
(1706, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:18', 1, 6, '160.250.254.184'),
(1707, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 16:15:18', 1, 6, '160.250.254.184'),
(1708, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:18', 1, 6, '160.250.254.184'),
(1709, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:21', 1, 6, '160.250.254.184'),
(1710, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:21', 1, 6, '160.250.254.184'),
(1711, 'Sub Gallery Image  []Data has deleted successfully.', '2025-11-17 16:15:21', 1, 6, '160.250.254.184'),
(1712, 'Sub Gallery Image  [Drone View]Data has deleted successfully.', '2025-11-17 16:15:21', 1, 6, '160.250.254.184'),
(1713, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 16:17:53', 1, 3, '160.250.254.184'),
(1714, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 16:17:53', 1, 3, '160.250.254.184'),
(1715, 'Sub Gallery Image [Drone View]Data has added successfully.', '2025-11-17 16:17:53', 1, 3, '160.250.254.184'),
(1716, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-17 16:42:16', 1, 3, '160.250.254.184'),
(1717, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-17 16:42:16', 1, 3, '160.250.254.184'),
(1718, 'Sub Gallery Image [Interior]Data has added successfully.', '2025-11-17 16:42:16', 1, 3, '160.250.254.184'),
(1719, 'Sub Gallery Image  [Swimming Pool]Data has deleted successfully.', '2025-11-17 16:43:56', 1, 6, '160.250.254.184'),
(1720, 'Sub Gallery Image [Swimming Pool]Data has added successfully.', '2025-11-17 16:44:07', 1, 3, '160.250.254.184'),
(1721, 'Login: superadmin logged in.', '2025-11-17 17:27:48', 1, 1, '160.250.254.184'),
(1722, 'Package Events Hall Edit Successfully', '2025-11-17 17:33:43', 1, 4, '160.250.254.184'),
(1723, 'Package Event Hall Edit Successfully', '2025-11-17 17:33:52', 1, 4, '160.250.254.184');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logs_action`
--

CREATE TABLE `tbl_logs_action` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `bgcolor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_logs_action`
--

INSERT INTO `tbl_logs_action` (`id`, `title`, `icon`, `bgcolor`) VALUES
(1, 'Login', 'icon-sign-in', 'bg-blue'),
(2, 'Logout', 'icon-sign-out', 'primary-bg'),
(3, 'Add', 'icon-plus-circle', 'bg-green'),
(4, 'Edit', 'icon-edit', 'bg-blue-alt'),
(5, 'Copy', 'icon-copy', 'ui-state-default'),
(6, 'Delete', 'icon-clock-os-circle', 'bg-red');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mainservices`
--

CREATE TABLE `tbl_mainservices` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `linksrc` varchar(150) NOT NULL,
  `parentOf` int(11) NOT NULL DEFAULT 0,
  `linktype` varchar(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `upcoming` int(11) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `name`, `linksrc`, `parentOf`, `linktype`, `status`, `sortorder`, `added_date`, `type`, `icon`, `upcoming`, `image`) VALUES
(59, 'About', 'about-us', 0, '0', 1, 1, '2025-09-18 16:21:50', 1, '', 0, ''),
(60, 'Rooms', 'rooms-suites', 0, '0', 1, 2, '2025-09-18 16:22:14', 1, '', 0, ''),
(61, 'Deluxe Single Room', 'deluxe-single-room', 60, '0', 1, 11, '2025-09-18 16:22:25', 1, '', 0, ''),
(62, 'Deluxe Twin Room', 'deluxe-twin-room', 60, '0', 1, 12, '2025-09-18 16:22:35', 1, '', 0, ''),
(63, 'Interconnected Family Suite', 'interconnected-family-suite', 60, '0', 1, 14, '2025-09-18 16:22:45', 1, '', 0, ''),
(64, 'Deluxe Family Room', 'deluxe-family-room', 60, '0', 1, 13, '2025-09-18 16:22:55', 1, '', 0, ''),
(65, 'Restaurant', 'basera-restaurant', 0, '0', 1, 3, '2025-09-18 16:23:08', 1, '', 0, ''),
(66, 'Events', 'events-hall', 0, '0', 1, 4, '2025-09-18 16:23:18', 1, '', 0, ''),
(67, 'Blog', 'blog', 0, '0', 1, 5, '2025-09-18 16:23:28', 1, '', 0, ''),
(68, 'Offers', 'offers', 0, '0', 1, 6, '2025-09-18 16:23:37', 1, '', 0, ''),
(69, 'Activities', 'activities', 0, '0', 0, 7, '2025-09-18 16:23:49', 1, '', 0, ''),
(70, 'Services', '#', 0, '0', 1, 8, '2025-10-08 12:24:33', 1, '', 0, ''),
(71, 'Facilities', 'facilities', 70, '0', 1, 1, '2025-10-08 12:25:05', 1, '', 0, ''),
(72, 'Gallery', 'gallery', 0, '0', 1, 9, '2025-10-08 12:26:12', 1, '', 0, ''),
(73, 'Photo Gallery', 'gallery', 72, '0', 0, 1, '2025-10-08 12:26:37', 1, '', 0, ''),
(74, 'Video Gallery', 'video', 72, '0', 0, 2, '2025-10-08 12:27:13', 1, '', 0, ''),
(75, 'Contact', 'contact-us', 0, '0', 1, 10, '2025-10-08 12:27:30', 1, '', 0, ''),
(76, 'Faq', 'faq', 0, '0', 1, 15, '2025-10-08 12:38:55', 2, '', 0, ''),
(77, 'Gorkha Hall', 'gorkha-hall', 66, '0', 1, 11, '2025-10-12 11:29:32', 1, '', 0, ''),
(78, 'Board Meeting Hall', 'board-meeting-hall', 66, '0', 1, 13, '2025-10-12 11:30:02', 1, '', 0, ''),
(79, 'Sauna & Steam', 'service/sauna-steam', 70, '0', 1, 2, '2025-10-28 12:03:37', 1, '', 0, ''),
(80, 'Fitness Center', 'service/fitness-center', 70, '0', 1, 3, '2025-10-28 12:09:35', 1, '', 0, ''),
(81, 'About us', 'about-us', 0, '0', 1, 11, '2025-10-28 16:12:09', 2, '', 0, ''),
(82, 'Rooms & Suites', 'rooms-suites', 0, '0', 1, 12, '2025-10-28 16:12:29', 2, '', 0, ''),
(83, 'Multicuisine Restaurant', 'multicuisine-restaurant', 0, '0', 1, 13, '2025-10-28 16:13:14', 2, '', 0, ''),
(84, 'Event Hall', 'events-hall', 0, '0', 1, 14, '2025-10-28 16:13:36', 2, '', 0, ''),
(85, 'Pool & Sauna Policies', 'pool-sauna-policies', 0, '0', 1, 16, '2025-10-30 15:02:13', 2, '', 0, ''),
(86, 'Health & Fitness Policies', 'health-fitness-policies', 0, '0', 1, 17, '2025-10-30 17:21:14', 2, '', 0, ''),
(87, 'Durbar Hall', 'durbar-hall', 66, '0', 1, 12, '2025-11-16 17:12:30', 1, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_metadata`
--

CREATE TABLE `tbl_metadata` (
  `id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_metadata`
--

INSERT INTO `tbl_metadata` (`id`, `module_id`, `page_name`, `meta_title`, `meta_keywords`, `meta_description`, `added_date`, `modified_date`, `sortorder`) VALUES
(1, 12, 'Contact', '', '', '', '2025-10-10 11:50:19', '', 0),
(2, 20, 'services', 'Our Services', 'corporate events, wedding destination Nepal, spa and wellness, fitness center, outdoor swimming pool, nearby excursions, Manakamana Hillcrest, luxury resort services, group events, wellness retreat, leisure activities, adventure, natural beauty\r\n', 'Explore Manakamana Hillcrest services: weddings, corporate events, spa, fitness, pool, and excursions, all designed for relaxation, wellness, and leisure.\r\n', '2025-10-31 11:56:49', '', 0),
(3, 17, 'testimonial', 'Testimonial', 'guest testimonials, Manakamana Hillcrest reviews, customer feedback, resort experiences, hospitality excellence, Nepal resort ratings, traveler stories, client satisfaction, authentic reviews, luxury resort feedback, suggestion, Services, \r\n', 'Read authentic guest testimonials of Manakamana Hillcrest Resort, where travelers share experiences of comfort, hospitality, and memorable stays in Nepal.\r\n', '2025-10-31 11:58:33', '', 0),
(4, 28, 'faq', 'FAQ', 'Manakamana Hillcrest Resort FAQ, guest questions, resort information, check-in and check-out, Wi-Fi availability, room types, amenities, spa and wellness, nearby attractions, payment methods, family-friendly resort Nepal\r\n', 'Find answers to common questions about Manakamana Hillcrest Resort check-in, amenities, dining, wellness, nearby attractions, and guest services.\r\n', '2025-10-31 12:03:21', '', 0),
(5, 301, 'nearby', 'Nearby Landmarks', 'Bharatpur Airport, Manakamana Temple, Bakreshwor Mahadev Temple, Lakhan Thapa Cave, Gorakhnath Siddha Cave, Manakamana Cable Car, nearby attractions, spiritual sites, cultural heritage, Hillcrest Resort surroundings, natural beauty, panoramic view\r\n', 'Discover nearby attractions from Manakamana Hillcrest—Manakamana Temple, caves, cable car, and cultural sites, all within easy reach of the resort.\r\n', '2025-10-31 12:05:22', '', 0),
(6, 29, 'offers', 'Offer', 'Manakamana Hillcrest Resort offers, Nepal resort deals, luxury packages, seasonal discounts, honeymoon packages, family getaway offers, wellness retreat deals, corporate event packages, holiday specials, exclusive resort promotions\r\n', 'Discover exclusive offers at Manakamana Hillcrest Resort—luxury packages, seasonal deals, and special promotions for couples, families, and groups.\r\n', '2025-10-31 12:08:03', '', 0),
(7, 5, 'gallery', 'Gallery ', 'Manakamana Hillcrest Resort gallery, resort photos Nepal, luxury resort images, Himalayan views, hotel interiors, dining and lounge photos, wedding venue gallery, spa and wellness images, poolside views, cultural retreat visuals, rooms, activities\r\n', 'Browse the Manakamana Hillcrest Resort gallery—luxury rooms, dining, spa, pool, and Himalayan views captured to inspire your next stay in Nepal.\r\n', '2025-10-31 12:09:33', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mlink`
--

CREATE TABLE `tbl_mlink` (
  `mod_class` varchar(50) NOT NULL,
  `m_url` tinytext NOT NULL,
  `act_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_mlink`
--

INSERT INTO `tbl_mlink` (`mod_class`, `m_url`, `act_id`) VALUES
('Article', 'qs', 16),
('Package', 'asd', 15),
('Subpackage', 'sdf', 46),
('Package', 'our-rooms', 2),
('Subpackage', 'deluxe-single-room', 1),
('Subpackage', 'super-deluxe-room', 2),
('Subpackage', 'junior-suite-room', 3),
('Subpackage', 'suite-room', 4),
('Package', 'dining', 3),
('Subpackage', 'bhojan-kakchya', 5),
('Package', 'hall', 4),
('Subpackage', 'buddha-sadan-hall', 6),
('Article', 'temple-bell-boutique-hotel-spa', 18),
('Subpackage', 'yak-and-yeti-bar', 7),
('Subpackage', 'aanti', 8),
('Article', 'teset', 19),
('Subpackage', 'deluxe-double-room', 9),
('Subpackage', 'deluxe-triple-room', 10),
('Package', 'rooms-suites', 5),
('Subpackage', 'deluxe-single-room', 11),
('Package', 'events-hall', 6),
('Subpackage', 'gorkha-hall', 12),
('Package', 'restaurant', 7),
('Subpackage', 'basera-restaurant', 13),
('Article', 'manakamana-hillcrest-resort', 20),
('Subpackage', 'deluxe-twin-room', 14),
('Article', 'about-us', 21),
('Subpackage', 'interconnected-family-suite', 15),
('Package', 'activities', 8),
('Subpackage', 'scenic-adventure', 17),
('Subpackage', 'spiritual-religious', 16),
('Subpackage', 'deluxe-family-room', 18),
('Subpackage', 'board-meeting-hall', 19),
('Subpackage', 'cultural-market', 20),
('Article', 'pool-sauna-policies', 23),
('Article', 'health-fitness-policies', 24),
('Subpackage', 'durbar-hall', 21);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_modules`
--

CREATE TABLE `tbl_modules` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL,
  `link` varchar(50) NOT NULL DEFAULT 'dashboard',
  `mode` varchar(20) NOT NULL,
  `icon_link` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `upcoming` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `properties` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_modules`
--

INSERT INTO `tbl_modules` (`id`, `parent_id`, `name`, `link`, `mode`, `icon_link`, `status`, `upcoming`, `sortorder`, `added_date`, `properties`) VALUES
(1, 74, 'User Mgmt', 'user/list', 'user', 'icon-users', 1, 1, 1, '2013-04-04', ''),
(2, 0, 'Menu Mgmt', 'menu/list', 'menu', 'icon-list', 1, 1, 2, '2011-06-05', 'a:1:{s:5:\"level\";s:1:\"3\";}'),
(3, 0, 'Articles Mgmt', 'articles/list', 'articles', 'icon-adn', 1, 1, 2, '2013-02-22', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(4, 0, 'Slideshow Mgmt', 'slideshow/list', 'slideshow', 'icon-film', 1, 1, 2, '2013-02-22', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(5, 0, 'Gallery Mgmt', 'gallery/list', 'gallery', 'icon-picture-o', 1, 0, 6, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";s:9:\"simgwidth\";s:4:\"1920\";s:10:\"simgheight\";s:4:\"1080\";}'),
(6, 0, 'News Mgmt', 'news/list', 'news', 'icon-list-alt', 0, 0, 19, '2020-02-12', 'a:2:{s:8:\"imgwidth\";s:3:\"300\";s:9:\"imgheight\";s:3:\"300\";}'),
(7, 0, 'Event Mgmt', 'events/list', 'events', 'icon-bullhorn', 0, 0, 10, '2020-12-20', ''),
(8, 0, 'Advertisement Mgmt', 'advertisement/list', 'advertisement', 'icon-indent', 0, 0, 4, '0000-00-00', 'a:8:{s:9:\"limgwidth\";s:3:\"100\";s:10:\"limgheight\";s:3:\"200\";s:9:\"timgwidth\";s:3:\"300\";s:10:\"timgheight\";s:3:\"400\";s:9:\"rimgwidth\";s:3:\"500\";s:10:\"rimgheight\";s:3:\"600\";s:9:\"bimgwidth\";s:3:\"700\";s:10:\"bimgheight\";s:3:\"800\";}'),
(9, 0, 'Video Mgmt', 'video/list', 'video', 'icon-hdd-o', 1, 0, 13, '2000-10-10', ''),
(10, 0, 'Poll Mgmt', 'poll/list', 'poll', 'icon-exchange', 0, 0, 22, '0000-00-00', ''),
(11, 0, 'Social / OTA Mgmt', 'social/list', 'social', 'icon-google-plus', 1, 1, 6, '2013-02-22', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(12, 0, 'Setting Mgmt', 'setting/list', 'settings', 'icon-gear', 1, 1, 21, '2013-02-22', ''),
(13, 12, 'Preference Mgmt', 'preference/list', 'preference', 'icon-gear', 1, 0, 1, '0000-00-00', 'a:18:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";s:9:\"simgwidth\";s:2:\"50\";s:10:\"simgheight\";s:2:\"50\";s:10:\"fbimgwidth\";s:4:\"1200\";s:11:\"fbimgheight\";s:3:\"630\";s:9:\"timgwidth\";s:4:\"1200\";s:10:\"timgheight\";s:3:\"630\";s:9:\"gimgwidth\";s:4:\"1920\";s:10:\"gimgheight\";s:4:\"1080\";s:9:\"cimgwidth\";s:4:\"1920\";s:10:\"cimgheight\";s:4:\"1080\";s:9:\"oimgwidth\";s:4:\"1920\";s:10:\"oimgheight\";s:4:\"1080\";s:9:\"fimgwidth\";s:4:\"1920\";s:10:\"fimgheight\";s:4:\"1080\";s:10:\"ofimgwidth\";s:4:\"1920\";s:11:\"ofimgheight\";s:4:\"1080\";}'),
(14, 12, 'Office Info/Location', 'location/list', 'location', 'icon-gear', 1, 0, 2, '0000-00-00', ''),
(15, 12, 'Modules Mgmt', 'module/list', 'module', 'icon-gear', 0, 0, 3, '0000-00-00', ''),
(16, 12, 'Properties Mgmt', 'properties/list', 'properties', 'icon-gear', 1, 0, 4, '0000-00-00', ''),
(17, 0, 'Testimonial', 'testimonial/list', 'testimonial', 'icon-list-alt', 1, 0, 6, '2025-04-25', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(18, 0, 'Subscribers Mgmt', 'subscribers/list', 'subscribers', 'icon-comments', 0, 0, 14, '2015-05-17', ''),
(19, 0, 'Offers Mgmt', 'offers/list', 'offers', 'icon-tags', 1, 0, 18, '2015-05-20', 'a:4:{s:9:\"bimgwidth\";s:4:\"1920\";s:10:\"bimgheight\";s:4:\"1080\";s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(20, 0, 'Services Mgmt', 'services/list', 'services', 'icon-exchange', 1, 0, 5, '2015-08-09', 'a:2:{s:8:\"imgwidth\";s:2:\"50\";s:9:\"imgheight\";s:2:\"50\";}'),
(21, 0, 'Movies Mgmt', 'movies/list', 'movies', 'icon-list', 0, 0, 15, '2015-10-30', ''),
(22, 0, 'Theaters', 'theaters/list', 'theaters', 'icon-film', 0, 0, 17, '2015-11-01', ''),
(23, 25, 'Package Mgmt', 'package/list', 'package', 'icon-exchange', 1, 0, 5, '2016-06-17', 'a:6:{s:8:\"imgwidth\";s:5:\"1920`\";s:9:\"imgheight\";s:4:\"1080\";s:12:\"subbimgwidth\";s:4:\"1920\";s:13:\"subbimgheight\";s:4:\"1080\";s:11:\"subimgwidth\";s:4:\"1920\";s:12:\"subimgheight\";s:4:\"1080\";}'),
(24, 25, 'Features Mgmt', 'features/list', 'features', 'icon-gear', 1, 0, 1, '2016-11-16', ''),
(25, 0, 'Package Mgmt', 'package/list', '', 'icon-bullhorn', 1, 0, 4, '2016-11-16', ''),
(26, 0, 'Activity Mgmt', 'activity/list', 'activity', '\r\nicon-hand-o-left', 0, 0, 7, '0000-00-00', 'a:4:{s:8:\"imgwidth\";s:3:\"800\";s:9:\"imgheight\";s:3:\"600\";s:9:\"simgwidth\";s:3:\"400\";s:10:\"simgheight\";s:3:\"350\";}'),
(27, 0, 'Blog Mgmt', 'blog/list', 'blog', '\r\nicon-list-alt', 1, 0, 8, '2025-04-25', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(28, 0, 'Popup', 'popup/list', 'popup', 'icon-list', 1, 0, 20, '2020-02-13', 'a:2:{s:8:\"imgwidth\";s:3:\"100\";s:9:\"imgheight\";s:3:\"300\";}'),
(29, 0, ' News/Events Mgmt', 'combinednews/list', 'combinednews', 'icon-tags', 0, 0, 14, '2020-09-05', 'a:2:{s:8:\"imgwidth\";s:3:\"350\";s:9:\"imgheight\";s:3:\"240\";}'),
(30, 0, 'Product Mgmt', 'product/list', 'product', 'icon-list', 0, 0, 1, '2021-11-25', ''),
(55, 0, 'Applicant Mgmt', 'applicant/list', 'applicant', 'icon-adn', 0, 1, 10, '2024-12-19', ''),
(74, 0, 'Users', '', '', 'icon-users', 1, 1, 1, '2021-10-03', ''),
(300, 0, 'FAQ', 'faq/list', 'faq', 'icon-list', 1, 0, 8, '2023-08-31', ''),
(301, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 1, 0, 8, '2023-08-29', 'a:2:{s:8:\"imgwidth\";s:4:\"1920\";s:9:\"imgheight\";s:4:\"1080\";}'),
(302, 0, 'Vacancy Mgmt', 'vacency/list', 'vacency', 'icon-list', 0, 0, 7, '2023-08-28', ''),
(303, 0, 'Main service Mgt', 'mservices/list', 'mservice', 'icon-list', 0, 0, 6, '2023-09-01', 'a:2:{s:8:\"imgwidth\";s:2:\"12\";s:9:\"imgheight\";s:2:\"12\";}'),
(304, 0, 'OTA Mgmt', 'ota/list', 'ota', 'icon-google-plus', 0, 0, 12, '0000-00-00', 'a:2:{s:8:\"imgwidth\";s:2:\"14\";s:9:\"imgheight\";s:2:\"13\";}'),
(305, 0, 'Nearby ', 'nearby/list', 'nearby', 'icon-list', 0, 0, 8, '2023-08-29', ''),
(306, 74, 'User Group', 'usergroup/list', 'usergroup', 'icon-gears', 1, 1, 3, '2023-10-10', ''),
(309, 0, 'Download Mgmt', 'download/list', 'download', 'icon-gear', 0, 0, 7, '2024-03-28', ''),
(310, 0, 'Virtual Tour', 'virtualtour/list', 'virtualtour', 'icon-list', 1, 0, 4, '2025-01-23', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_nearby`
--

CREATE TABLE `tbl_nearby` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` text NOT NULL,
  `content` text NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `linksrc` tinytext NOT NULL,
  `google_embeded` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `meta_title` tinytext NOT NULL,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `type` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `homepage` int(11) NOT NULL DEFAULT 0,
  `image` blob NOT NULL,
  `date` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `distance` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_nearby`
--

INSERT INTO `tbl_nearby` (`id`, `parent_id`, `slug`, `title`, `sub_title`, `content`, `linktype`, `linksrc`, `google_embeded`, `status`, `meta_title`, `meta_keywords`, `meta_description`, `type`, `added_date`, `modified_date`, `sortorder`, `homepage`, `image`, `date`, `category`, `distance`) VALUES
(4, 0, '', ' Manakamana Temple', 'Ancient Temple of Fulfilled Desires', '<p>\r\n	Manakamana Temple sits peacefully on a hill and is one of Nepal&rsquo;s most respected religious sites. It&rsquo;s dedicated to Goddess Bhagwati and offers beautiful views of the valleys and Himalayas. Many visitors come here to feel the spiritual energy and enjoy the calm surroundings. The name &ldquo;Manakamana&rdquo; means &ldquo;wish of the heart,&rdquo; symbolizing hope and devotion.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d3525.953482981846!2d84.5815912247255!3d27.90340077607072!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x39951f36313173a1%3A0x419b37da0e2d746a!2sManakamana%20Temple%2C%20Manakamana!3m2!1d27.9042125!2d84.58404689999999!5e0!3m2!1sen!2snp!4v1761803072466!5m2!1sen!2snp', 1, '', '', '', 0, '2025-10-07 16:21:13', '2025-10-30 14:41:34', 4, 0, 0x613a303a7b7d, '', '', '240 m'),
(5, 0, '', 'Bakreshwor Mahadev Temple', 'Serenity in the Hills', '<p>\r\n	Just a short hike from the main temple area, Bakreshwor Mahadev Temple is a peaceful spiritual spot surrounded by lush greenery. It is dedicated to Lord Shiva and provides a calm retreat for meditation and reflection. The scenic walk to the temple also offers a chance to admire the natural beauty of the Manakamana region.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d17598.33939342822!2d84.58494353532969!3d27.91018880469049!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x39951913f906d1bb%3A0xd38af16a810bb1e7!2sBakreshori%20Temple%2C%20WH9V%2B9XJ%2C%20Bakrang!3m2!1d27.9184591!2d84.5948827!5e0!3m2!1sen!2snp!4v1761803189331!5m2!1sen!2snp ', 1, '', '', '', 0, '2025-10-30 11:33:45', '2025-10-30 12:41:09', 3, 0, 0x613a303a7b7d, '', '', '2.3 km'),
(6, 0, '', 'Lakhan Thapa Cave', 'The Origin of Faith', '<p>\r\n	Named after Lakhan Thapa, the first priest of Manakamana Temple, this cave holds deep historical and cultural significance. It is believed that Goddess Manakamana first appeared here, marking the beginning of the temple&rsquo;s spiritual story. The short trail leading to the cave is perfect for guests who enjoy nature walks combined with local legend.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d11744.770057542326!2d84.58795050458559!3d27.916745166435803!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x399519a83b0d4a2f%3A0x998e95a2c5707a0b!2sSidhha%20lakhan%20thapa%20cave%2C%20WHCW%2B9H9%2C%20Bakrang!3m2!1d27.920903799999998!2d84.5964858!5e0!3m2!1sen!2snp!4v1761803438308!5m2!1sen!2snp', 1, '', '', '', 0, '2025-10-30 11:36:22', '2025-10-30 12:41:22', 2, 0, 0x613a303a7b7d, '', '', '2.3 km'),
(7, 0, '', 'Gorakhnath Siddha Cave', 'A Sacred Meditation Site', '<p>\r\n	Located near Manakamana Temple, Gorakhnath Cave is dedicated to the revered sage Gorakhnath, who is believed to have meditated here centuries ago. The site offers a tranquil and spiritual environment, allowing visitors to experience Nepal&rsquo;s mystical traditions while enjoying serene views of the surrounding hills.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d14102.888529586282!2d84.57893589345024!3d27.91049916706307!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x399519f68a2a7a21%3A0x9ebc3b405e0a62f!2sGorakhnath%20Siddha%20Cave%2C%20WH9V%2B9G7%2C%20Bakrang!3m2!1d27.918409999999998!2d84.59378509999999!5e0!3m2!1sen!2snp!4v1761806904458!5m2!1sen!2snp', 1, '', '', '', 0, '2025-10-30 11:39:03', '2025-10-30 12:41:33', 1, 0, 0x613a303a7b7d, '', '', '2.2 km'),
(8, 0, '', 'Bharatpur Airport', 'Gateway to the Hills', '<p>\r\n	Located approximately 67.9 km from the resort, Bharatpur Airport serves as the nearest air connection for guests traveling from Kathmandu or Pokhara. The scenic drive from the airport to Manakamana takes about an hour, following the picturesque Trishuli River and offering glimpses of rural life and green hills along the way.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d225855.8756642616!2d84.34240540570418!3d27.80983068125511!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x3994fb28bdc01095%3A0xe3a546b17da5024d!2sBharatpur%20Airport%2C%20Bharatpur!3m2!1d27.6785769!2d84.4296105!5e0!3m2!1sen!2snp!4v1761805603200!5m2!1sen!2snp', 1, '', '', '', 0, '2025-10-30 12:12:41', '2025-11-14 17:10:34', 5, 0, 0x613a303a7b7d, '', '', '67.9 km'),
(9, 0, '', 'Manakamana Cable Car', 'A Scenic Journey Above the Hills', '<p>\r\n	The Manakamana Cable Car is one of Nepal&rsquo;s most popular attractions, offering an unforgettable 10-minute ride from Kurintar to the hilltop temple. As you ascend over the Trishuli River and forested hills, breathtaking views unfold beneath you. It&rsquo;s a smooth, safe, and scenic experience ideal for pilgrims and sightseers alike.</p>\r\n', 0, '', 'https://www.google.com/maps/embed?pb=!1m24!1m8!1m3!1d3525.968631473595!2d84.58268607547436!3d27.90293592607103!3m2!1i1024!2i768!4f13.1!4m13!3e0!4m5!1s0x39951f0004390a0f%3A0x7c2164964f8c3196!2sManakamana%20Hillcrest%20Resort%2C%20WH3M%2B3WQ%2C%20Manakamana!3m2!1d27.9027045!2d84.5848547!4m5!1s0x39951ff13463019f%3A0xd6ab14bddfcdc211!2sManakamana%20Cable%20Car%2C%20Manakamana%20Cable%20Car%2C%20Manakamana!3m2!1d27.903412399999997!2d84.5854746!5e0!3m2!1sen!2snp!4v1761806796508!5m2!1sen!2snp', 1, '', '', '', 0, '2025-10-30 12:16:06', '2025-10-30 12:48:57', 0, 0, 0x613a303a7b7d, '', '', '450 m');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `author` varchar(100) NOT NULL,
  `brief` mediumtext NOT NULL,
  `content` mediumtext NOT NULL,
  `news_date` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `source` longtext NOT NULL,
  `type` int(11) NOT NULL,
  `viewcount` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` varchar(250) NOT NULL,
  `meta_description` varchar(250) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offers`
--

CREATE TABLE `tbl_offers` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `list_image` varchar(255) NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `rate` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `brief` tinytext NOT NULL,
  `content` longtext NOT NULL,
  `offerpopup` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `offer_date` varchar(50) NOT NULL,
  `start_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_offers`
--

INSERT INTO `tbl_offers` (`id`, `slug`, `title`, `image`, `list_image`, `adults`, `children`, `linksrc`, `linktype`, `rate`, `discount`, `brief`, `content`, `offerpopup`, `status`, `added_date`, `offer_date`, `start_date`, `sortorder`, `type`) VALUES
(4, 'panoramic-views', 'Panoramic Views', 'YOUQl-offer1.jpg', 'aieGt-offer1.jpg', 0, 0, '', 0, 0, 0, '', '', '1', 0, '2025-04-29 10:21:59', '2026-01-31', '2025-04-29', 1, 3),
(5, 'opening-soon', 'Opening Soon', 'a5rZC-offer2.jpg', 's6wae-offer2.jpg', 0, 0, '', 0, 0, 0, '', '', '1', 0, '2025-10-29 12:59:25', '2025-12-30', '2025-10-22', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offer_child`
--

CREATE TABLE `tbl_offer_child` (
  `offer_id` int(11) NOT NULL,
  `offer_pax` varchar(200) NOT NULL,
  `offer_usd` varchar(10) NOT NULL,
  `offer_inr` varchar(10) NOT NULL,
  `offer_npr` varchar(10) NOT NULL,
  `offer_no` int(11) NOT NULL,
  `multi_offer_title` varchar(255) NOT NULL,
  `multi_offer_npr` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ota`
--

CREATE TABLE `tbl_ota` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package`
--

CREATE TABLE `tbl_package` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(250) NOT NULL,
  `sub_title` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `header_image` text NOT NULL,
  `banner_image` mediumtext NOT NULL,
  `detail` longtext NOT NULL,
  `content` mediumtext NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_package`
--

INSERT INTO `tbl_package` (`id`, `slug`, `title`, `sub_title`, `image`, `header_image`, `banner_image`, `detail`, `content`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`) VALUES
(5, 'rooms-suites', 'Rooms & Suites', 'Rooms & Suites', '', '', 'a:1:{i:0;s:11:\"oMmIa-1.jpg\";}', '', '', '', '', '', 1, 1, '2025-09-24 15:42:23', '2025-11-14 12:17:28', 1),
(6, 'events-hall', 'Event Hall', 'Events & Hall', '', '', 'a:1:{i:0;s:11:\"e9Sw9-1.jpg\";}', '', '', '', '', '', 1, 3, '2025-09-24 16:04:25', '2025-11-17 17:33:52', 0),
(7, 'restaurant', 'Restaurant', 'An Experience for the Senses', '', '', 'a:0:{}', '', '', '', '', '', 1, 2, '2025-10-07 15:19:38', '2025-10-07 15:19:38', 0),
(8, 'activities', 'Activities', 'Activities', '', '', 'a:0:{}', '', '', '', '', '', 1, 0, '2025-10-09 12:13:57', '2025-10-09 13:17:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_package_sub`
--

CREATE TABLE `tbl_package_sub` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(200) NOT NULL,
  `detail` longtext NOT NULL,
  `image` mediumtext NOT NULL,
  `header_image` text NOT NULL,
  `be_room_type` text NOT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `three60_image` varchar(255) NOT NULL,
  `rojai_room_id` varchar(255) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `feature` blob NOT NULL,
  `content` mediumtext NOT NULL,
  `facility_title` varchar(255) NOT NULL,
  `number_room` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `discount` int(11) NOT NULL,
  `people_qnty` int(11) NOT NULL,
  `onep_price` int(11) NOT NULL,
  `twop_price` int(11) NOT NULL,
  `threep_price` int(11) NOT NULL,
  `oneb_price` int(11) NOT NULL,
  `twob_price` int(11) NOT NULL,
  `threeb_price` int(11) NOT NULL,
  `extra_bed` varchar(10) NOT NULL,
  `short_title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `serve` varchar(255) NOT NULL,
  `theatre_style` varchar(255) NOT NULL,
  `class_room_style` varchar(255) NOT NULL,
  `shape` varchar(255) NOT NULL,
  `round_table` varchar(255) NOT NULL,
  `clusture` varchar(255) NOT NULL,
  `cocktail` varchar(255) NOT NULL,
  `seats` varchar(20) NOT NULL,
  `meta_title` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `modified_date` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0,
  `below_content` mediumtext NOT NULL,
  `seminar` varchar(50) NOT NULL,
  `meeting` varchar(50) NOT NULL,
  `events` varchar(50) NOT NULL,
  `conference` varchar(50) NOT NULL,
  `catering` varchar(50) NOT NULL,
  `celebration` varchar(50) NOT NULL,
  `organic_food` varchar(50) NOT NULL,
  `occupancy` varchar(50) NOT NULL,
  `view` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `service` varchar(50) NOT NULL,
  `live_music` varchar(50) NOT NULL,
  `bed` varchar(50) NOT NULL,
  `room_size` varchar(50) NOT NULL,
  `room_service` varchar(50) NOT NULL,
  `airport_pickup` varchar(50) NOT NULL,
  `private_balcony` varchar(50) NOT NULL,
  `checkinout` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_package_sub`
--

INSERT INTO `tbl_package_sub` (`id`, `slug`, `title`, `sub_title`, `detail`, `image`, `header_image`, `be_room_type`, `image2`, `image3`, `source_vid`, `three60_image`, `rojai_room_id`, `image4`, `feature`, `content`, `facility_title`, `number_room`, `currency`, `discount`, `people_qnty`, `onep_price`, `twop_price`, `threep_price`, `oneb_price`, `twob_price`, `threeb_price`, `extra_bed`, `short_title`, `time`, `location`, `serve`, `theatre_style`, `class_room_style`, `shape`, `round_table`, `clusture`, `cocktail`, `seats`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `sortorder`, `added_date`, `modified_date`, `type`, `below_content`, `seminar`, `meeting`, `events`, `conference`, `catering`, `celebration`, `organic_food`, `occupancy`, `view`, `size`, `service`, `live_music`, `bed`, `room_size`, `room_service`, `airport_pickup`, `private_balcony`, `checkinout`) VALUES
(11, 'deluxe-single-room', 'Deluxe Single Room', '', '', 'a:1:{i:0;s:16:\"b39th-Family.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a31373b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31313a7b693a303b733a323a223337223b693a313b733a323a223437223b693a323b733a323a223436223b693a333b733a323a223435223b693a343b733a323a223434223b693a353b733a323a223336223b693a363b733a323a223537223b693a373b733a323a223430223b693a383b733a323a223231223b693a393b733a323a223533223b693a31303b733a323a223536223b7d7d7d, '<p class=\"mb-30\">\r\n	Experience comfort and tranquility in our Deluxe Single Room a serene retreat designed for solo travelers. Thoughtfully furnished with warm d&eacute;cor, modern amenities, and large windows overlooking the lush hills, it offers an ideal setting for relaxation and reflection. Every detail, from the plush bedding to the soothing lighting, creates a sense of calm that perfectly complements the peaceful surroundings of Manakamana.</p>\r\n<div class=\"row\">\r\n	<div class=\"row\">\r\n		<h6>\r\n			Inclusions</h6>\r\n		<p>\r\n			# Resort Guest Priority: Resort guests are granted priority entry.<br />\r\n			# Rate is inclusive of bed &amp; breakfast, VAT, and a two-way cable car ticket.</p>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-in</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						<p class=\"ti-check mb-0\">\r\n							​</p>\r\n					</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-in after 2:00 PM</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						<p class=\"ti-check mb-0\">\r\n							​</p>\r\n					</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Early check-in subject to availability</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-6\">\r\n			<h6>\r\n				Check-out</h6>\r\n			<ul class=\"list-unstyled page-list mb-30\">\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						<p class=\"ti-check mb-0\">\r\n							​</p>\r\n					</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Check-out before noon</p>\r\n					</div>\r\n				</li>\r\n				<li>\r\n					<div class=\"page-list-icon\">\r\n						<p class=\"ti-check mb-0\">\r\n							​</p>\r\n					</div>\r\n					<div class=\"page-list-text\">\r\n						<p>\r\n							Express check-out</p>\r\n					</div>\r\n				</li>\r\n			</ul>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Special check-in instructions</h6>\r\n			<p>\r\n				Check-in begins at 2:00 PM, and early check-in is subject to availability. Guests are required to present a valid photo ID or passport along with their booking confirmation upon arrival. Special requests, including extra beds, honeymoon setups, or allergy-friendly rooms, are subject to availability. Kindly note that resort policies regarding pets, smoking, pool timings, and facility usage apply during your stay.</p>\r\n		</div>\r\n		<div class=\"col-md-12\">\r\n			<h6>\r\n				Children and extra beds</h6>\r\n			<p>\r\n				# Below 5 years: Complimentary stay.<br />\r\n				# 5-11 years: 50% discount on meals when sharing existing bed.<br />\r\n				# 12 years and above: Full adult charges.<br />\r\n				# Extra bed available upon request, with additional charge.</p>\r\n		</div>\r\n	</div>\r\n	<style type=\"text/css\">\r\n.list-unstyled {\r\n    padding-left: 0;\r\n    list-style: none;\r\n    color: #222;\r\n}	</style>\r\n</div>\r\n', '', 0, '\\$', 0, 0, 90, 0, 0, 0, 0, 0, '', 'Deluxe Single Room', '', '', '', '', '', '', '', '', '', '', 'Deluxe Single Room', 'Deluxe Single Room, solo traveler retreat, luxury room Nepal, Manakamana Hillcrest, serene hills view, modern amenities, peaceful stay, Himalayan escape, tranquil lodging, warm décor, personalized comfort, nature getaway, private space, comfortable', 'Relax in the Deluxe Single Room at Manakamana Hillcrest, a serene retreat with warm décor, modern amenities, and lush hill views for solo travelers.\r\n', 1, 7, '2025-09-24 15:59:16', '2025-11-16 15:48:32', 5, '', '', '', '', '', '', '', '', '1 Pax', '', '', '', '', '', '343 sq.ft.', '', '', '', ''),
(12, 'gorkha-hall', 'Gorkha Hall', '', '', 'a:1:{i:0;s:11:\"qLnem-1.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31303a7b693a303b733a323a223236223b693a313b733a323a223237223b693a323b733a323a223238223b693a333b733a323a223239223b693a343b733a323a223330223b693a353b733a323a223331223b693a363b733a323a223332223b693a373b733a323a223333223b693a383b733a323a223334223b693a393b733a323a223335223b7d7d693a31373b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p class=\"mb-30\">\r\n	The Gorkha Hall is a spacious and elegant venue designed to host conferences, seminars, and social gatherings with ease. Covering over 1,600 sq. ft. of hall space along with a dedicated pre-function area, it offers the flexibility to welcome both large and mid-sized groups. Its adaptable layout supports a variety of seating styles, from theatre and classroom to U-shape and round table arrangements, ensuring your event is tailored to your needs.</p>\r\n<p class=\"mb-30\">\r\n	With modern facilities and professional support, the hall provides a polished setting where every detail is taken care of, making it ideal for both business and celebratory occasions.</p>\r\n<!--<div class=\"row\">\r\n	<h6>\r\n		Features:</h6>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Spacious, air-conditioned hall</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Customizable seating & stage setups</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Event planning & decoration support</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Modern sound and lighting system</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						On-site catering with tailored menus</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Ample parking and guest facilities</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>-->', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Ceremony & Banquet Space', '', '', '', '120 Pax', '86 Pax', '60 Pax', '72 Pax', '', '33 Pax', '', 'Gorkha Hall', 'Gorkha Hall, event venue Nepal, Manakamana Hillcrest, conference hall, seminar venue, social gatherings, business events, wedding hall, modern facilities, professional support, spacious event space, hillside resort venue, flexible arrangement\r\n', 'Host conferences, seminars, or celebrations at Gorkha-Durbar Hall, a spacious venue with modern facilities, flexible layouts, and professional support.\r\n', 1, 10, '2025-09-24 16:09:51', '2025-11-17 11:34:41', 6, '', '', '', '', '', '', '', '', '', '', '1657.5 Sq.ft.', '', '', '', '', '', '', '', ''),
(13, 'basera-restaurant', 'Basera Restaurant', '', '', 'a:0:{}', '', '', '', '', '', '', '', '', 0x613a303a7b7d, '<div class=\"col-md-12 text-center\">\r\n	<p class=\"mb-30\">\r\n		Delight in a unique culinary journey at Basera restaurant, where global flavors meet local inspiration. Our restaurant offers both indoor and outdoor seating with spectacular views of the surrounding hills. Guests can enjoy a curated menu featuring Nepali, Indian, Continental, and Asian cuisines all prepared with fresh ingredients and authentic techniques. Whether it&rsquo;s a sunrise breakfast, a leisurely lunch, or a candlelit dinner, every meal here is a celebration of taste and tranquility.</p>\r\n</div>\r\n<div class=\"col-md-12\">\r\n	<div class=\"row\">\r\n		<div class=\"col-md-10\">\r\n			<h6>\r\n				Breakfast &amp; Rate</h6>\r\n			<p class=\"mb-30\">\r\n				American: &#36;12 per person | Indian: &#36;10 per person | Continental: &#36;10 per person | Asian: &#36;10 per person</p>\r\n			<h6>\r\n				Occupancy</h6>\r\n			<p class=\"mb-30\">\r\n				Indoor: 68 pax | Outdoor Bar: 30 pax</p>\r\n		</div>\r\n		<div class=\"col-md-2\">\r\n			<!--<h6>\r\n				For QR Menu</h6>\r\n			<p class=\"mb-30\">\r\n				<img alt=\"img\" src=\"/manakamanahillcrest/userfiles/images/random.png\" style=\"width:100px;height:100px\" /></p>--></div>\r\n	</div>\r\n</div>\r\n', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'An Experience for the Senses', '', '', '', '', '', '', '', '', '', '', 'Basera Restaurant', 'Hillcrest Dining & Lounge, Manakamana Hillcrest Resort, multicuisine restaurant Nepal, Nepali cuisine, Indian cuisine, Continental dining, Asian flavors, indoor outdoor seating, hillside views, fresh ingredients, authentic techniques, luxury dining\r\n', 'Savor global flavors at Hillcrest Dining & Lounge with Nepali, Indian, Continental, and Asian cuisines, fresh ingredients, and stunning hillside views.\r\n', 1, 1, '2025-10-07 15:20:15', '2025-11-16 16:20:39', 7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 'deluxe-twin-room', 'Deluxe Twin Room', '', '', 'a:1:{i:0;s:14:\"965m5-twin.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a31373b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31323a7b693a303b733a323a223337223b693a313b733a323a223336223b693a323b733a323a223437223b693a333b733a323a223432223b693a343b733a323a223434223b693a353b733a323a223537223b693a363b733a323a223438223b693a373b733a323a223436223b693a383b733a323a223435223b693a393b733a323a223430223b693a31303b733a323a223234223b693a31313b733a323a223231223b7d7d7d, '<p bis_size=\"{\" class=\"mb-30\">\r\n	Perfect for couples or friends, our Deluxe Double/Twin Room blends elegance with functionality. The room features contemporary interiors with touches of Nepali craftsmanship, a cozy seating corner, and a private balcony that opens to sweeping mountain or poolside views. Whether you are on a leisure getaway or a spiritual journey, this room promises a restful stay with all the comforts of home and the charm of a hillside resort.</p>\r\n<div class=\"row\">\r\n	<h6>\r\n		Inclusions</h6>\r\n	<p>\r\n			# Resort Guest Priority: Resort guests are granted priority entry.<br />\r\n			# Rate is inclusive of bed & breakfast, VAT, and a two-way cable car ticket.</p>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-in</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-in after 2:00 PM</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Early check-in subject to availability</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-out</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-out before noon</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Express check-out</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Special check-in instructions</h6>\r\n		<p>\r\n			Check-in begins at 2:00 PM, and early check-in is subject to availability. Guests are required to present a valid photo ID or passport along with their booking confirmation upon arrival. Special requests, including extra beds, honeymoon setups, or allergy-friendly rooms, are subject to availability. Kindly note that resort policies regarding pets, smoking, pool timings, and facility usage apply during your stay.</p>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Children and extra beds</h6>\r\n		<p>\r\n			# Below 5 years: Complimentary stay.<br />\r\n			# 5-11 years: 50% discount on meals when sharing existing bed.<br />\r\n			# 12 years and above: Full adult charges.<br />\r\n			# Extra bed available upon request, with additional charge.</p>\r\n	</div>\r\n</div>\r\n<style type=\"text/css\">\r\n.list-unstyled {\r\n    padding-left: 0;\r\n    list-style: none;\r\n    color: #222;\r\n}</style>\r\n', '', 0, '\\$', 0, 0, 120, 0, 0, 0, 0, 0, '', 'Deluxe Twin Room', '', '', '', '', '', '', '', '', '', '', 'Deluxe Twin Room', 'Deluxe Double Room, Twin Room Nepal, Manakamana Hillcrest, couples retreat, friends getaway, hillside resort, Nepali craftsmanship, mountain view room, poolside view, cozy seating, private balcony, leisure stay, spiritual journey, Modern Amenities\r\n', 'The Deluxe Double/Twin Room at Manakamana Hillcrest offers Nepali design, cozy seating, and a private balcony with mountain or poolside views.\r\n', 1, 6, '2025-10-07 15:45:00', '2025-11-16 15:48:21', 5, '', '', '', '', '', '', '', '', '2 Pax', '', '', '', '', '', '343 sq.ft.', '', '', '', ''),
(15, 'interconnected-family-suite', 'Interconnected Family Suite', '', 'asdasd', 'a:1:{i:0;s:19:\"JFTbj-Connected.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a31373b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31333a7b693a303b733a323a223439223b693a313b733a323a223433223b693a323b733a323a223430223b693a333b733a323a223437223b693a343b733a323a223336223b693a353b733a323a223434223b693a363b733a323a223432223b693a373b733a323a223536223b693a383b733a323a223339223b693a393b733a323a223233223b693a31303b733a323a223337223b693a31313b733a323a223534223b693a31323b733a323a223537223b7d7d7d, '<p bis_size=\"{\" class=\"mb-30\">\r\n	For larger families or groups, our Interconnected Family Suite offer the ideal balance of space and privacy. Each room is individually equipped with full amenities yet connected through an internal doorway for easy access and togetherness. Enjoy a relaxed ambiance with panoramic views, cozy furnishings, and modern conveniences an excellent choice for guests traveling together who wish to stay close while maintaining personal comfort.</p>\r\n<div class=\"row\">\r\n	<h6>\r\n		Inclusions</h6>\r\n	<p>\r\n			# Resort Guest Priority: Resort guests are granted priority entry.<br />\r\n			# Rate is inclusive of bed & breakfast, VAT, and a two-way cable car ticket.</p>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-in</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-in after 2:00 PM</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Early check-in subject to availability</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-out</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-out before noon</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Express check-out</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Special check-in instructions</h6>\r\n		<p>\r\n			Check-in begins at 2:00 PM, and early check-in is subject to availability. Guests are required to present a valid photo ID or passport along with their booking confirmation upon arrival. Special requests, including extra beds, honeymoon setups, or allergy-friendly rooms, are subject to availability. Kindly note that resort policies regarding pets, smoking, pool timings, and facility usage apply during your stay.</p>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Children and extra beds</h6>\r\n		<p>\r\n			# Below 5 years: Complimentary stay.<br />\r\n			# 5-11 years: 50% discount on meals when sharing existing bed.<br />\r\n			# 12 years and above: Full adult charges.<br />\r\n			# Extra bed available upon request, with additional charge.</p>\r\n	</div>\r\n</div>\r\n<style type=\"text/css\">\r\n.list-unstyled {\r\n    padding-left: 0;\r\n    list-style: none;\r\n    color: #222;\r\n}</style>\r\n', '', 0, '\\$', 0, 0, 150, 0, 0, 0, 0, 0, '', 'Interconnected Family Suite', '', '', '', '', '', '', '', '', '', '', 'Interconnected Family Suite', 'Interconnected Family Suite, family suite Nepal, Manakamana Hillcrest, group stay resort, spacious suite, panoramic views, cozy furnishings, modern amenities, family privacy, connected rooms, hillside resort, Nepal luxury travel\r\n', 'The Interconnected Family Suite at Manakamana Hillcrest offers space, privacy, and comfort with panoramic views, modern amenities, and cozy furnishings.\r\n', 1, 4, '2025-10-08 13:17:37', '2025-11-16 15:49:18', 5, '', '', '', '', '', '', '', '', '6 Pax', '', '', '', '', '', '343 sq.ft.', '', '', '', ''),
(16, 'spiritual-religious', 'Spiritual & Religious', '', '', 'a:1:{i:0;s:16:\"ihfOJ-hiking.jpg\";}', '', '', '', '', '', '', '', '', 0x613a303a7b7d, '<p style=\"text-align: center;\">\r\n	Hiking is a recreational outdoor activity that involves walking in natural environments, typically on trails or footpaths. It ranges from short, easy walks in local parks to multi-day treks through remote wilderness areas.Hiking offers physical exercise, mental relaxation, and a chance to connect with nature &mdash; making it a popular activity for people of all ages and fitness levels.</p>\r\n', '', 0, '\\$', 0, 0, 250, 0, 0, 0, 0, 0, '', 'Spiritual & Religious', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 9, '2025-10-09 12:14:54', '2025-10-31 13:18:12', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 'scenic-adventure', 'Scenic & Adventure', '', '', 'a:1:{i:0;s:14:\"uNJsO-bike.jpg\";}', '', '', '', '', '', '', '', '', 0x613a303a7b7d, '<p style=\"text-align: center;\">\r\n	Hiking is a recreational outdoor activity that involves walking in natural environments, typically on trails or footpaths. It ranges from short, easy walks in local parks to multi-day treks through remote wilderness areas.Hiking offers physical exercise, mental relaxation, and a chance to connect with nature &mdash; making it a popular activity for people of all ages and fitness levels.</p>\r\n', '', 0, '\\$', 0, 0, 250, 0, 0, 0, 0, 0, '', 'Scenic & Adventure', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 8, '2025-10-09 12:15:28', '2025-10-31 13:18:02', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 'deluxe-family-room', 'Deluxe Family Room', '', '', 'a:1:{i:0;s:16:\"rHwXD-single.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d693a31373b613a323a7b693a303b613a313a7b693a303b733a31343a22526f6f6d20416d656e6974696573223b7d693a313b613a31323a7b693a303b733a323a223437223b693a313b733a323a223534223b693a323b733a323a223434223b693a333b733a323a223433223b693a343b733a323a223432223b693a353b733a323a223430223b693a363b733a323a223234223b693a373b733a323a223337223b693a383b733a323a223231223b693a393b733a323a223339223b693a31303b733a323a223439223b693a31313b733a323a223536223b7d7d7d, '<p bis_size=\"{\" class=\"mb-30\">\r\n	Designed with families in mind, our Deluxe Family Room provides ample space, modern comforts, and a welcoming atmosphere. The warm wooden finishes and soft tones create a homely environment, while thoughtful amenities ensure convenience for every member of the family. It&rsquo;s the perfect setting to create lasting memories together whether you&rsquo;re unwinding after temple visits or enjoying quality time indoors.</p>\r\n<div class=\"row\">\r\n	<h6>\r\n		Inclusions</h6>\r\n	<p>\r\n			# Resort Guest Priority: Resort guests are granted priority entry.<br />\r\n			# Rate is inclusive of bed & breakfast, VAT, and a two-way cable car ticket.</p>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-in</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-in after 2:00 PM</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Early check-in subject to availability</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<h6>\r\n			Check-out</h6>\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Check-out before noon</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					<p class=\"ti-check mb-0\">\r\n						​</p>\r\n				</div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Express check-out</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Special check-in instructions</h6>\r\n		<p>\r\n			Check-in begins at 2:00 PM, and early check-in is subject to availability. Guests are required to present a valid photo ID or passport along with their booking confirmation upon arrival. Special requests, including extra beds, honeymoon setups, or allergy-friendly rooms, are subject to availability. Kindly note that resort policies regarding pets, smoking, pool timings, and facility usage apply during your stay.</p>\r\n	</div>\r\n	<div class=\"col-md-12\">\r\n		<h6>\r\n			Children and extra beds</h6>\r\n		<p>\r\n			# Below 5 years: Complimentary stay.<br />\r\n			# 5-11 years: 50% discount on meals when sharing existing bed.<br />\r\n			# 12 years and above: Full adult charges.<br />\r\n			# Extra bed available upon request, with additional charge.</p>\r\n	</div>\r\n</div>\r\n<style type=\"text/css\">\r\n.list-unstyled {\r\n    padding-left: 0;\r\n    list-style: none;\r\n    color: #222;\r\n}</style>\r\n', '', 0, '\\$', 0, 0, 120, 0, 0, 0, 0, 0, '', 'Deluxe Family Room', '', '', '', '', '', '', '', '', '', '', 'Deluxe Family Room', 'Deluxe Family Room, family stay Nepal, Manakamana Hillcrest, spacious resort room, homely comfort, modern amenities, wooden finishes, family retreat, temple visit stay, Nepal hillside resort, family-friendly lodging, separate living room, cozy room\r\n', 'The Deluxe Family Room at Manakamana Hillcrest offers space, comfort, and modern amenities, creating a homely retreat for memorable family stays.\r\n', 1, 5, '2025-10-10 15:42:40', '2025-11-16 15:48:59', 5, '', '', '', '', '', '', '', '', '3 Pax', '', '', '', '', '', '343 sq.ft.', '', '', '', ''),
(19, 'board-meeting-hall', 'Board Meeting Hall', '', '', 'a:1:{i:0;s:11:\"S6H2T-2.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a363a7b693a303b733a323a223530223b693a313b733a323a223531223b693a323b733a323a223236223b693a333b733a323a223239223b693a343b733a323a223532223b693a353b733a323a223238223b7d7d693a31373b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p>\r\n	The Board Meeting Hall offers a private and professional setting designed for small, high‑level gatherings. With space for 14 to 16 participants in a boardroom-style arrangement, it is ideal for executive meetings, strategic planning, and focused discussions. The hall is equipped with modern presentation facilities, ensuring smooth communication and effective decision-making.</p>\r\n<p>\r\n	Its compact layout creates an atmosphere of concentration and efficiency, allowing participants to engage without distraction. Whether hosting a leadership session, client meeting, or confidential discussion, the Board Meeting Hall provides the right balance of comfort, privacy, and functionality to support productive outcomes.</p>\r\n<!--<div class=\"row\">\r\n	<h6>\r\n		Features:</h6>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Spacious, air-conditioned hall</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Customizable seating & stage setups</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Event planning & decoration support</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Modern sound and lighting system</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						On-site catering with tailored menus</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Ample parking and guest facilities</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>-->', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Decisions That Shape Tomorrow', '', '', '', '', '', 'Up to 16 Pax', '', '', '', '', 'Board Meeting Hall', 'Board Meeting Hall, executive meeting venue, Manakamana Hillcrest, private boardroom, strategic planning space, leadership session, client meeting hall, confidential discussion, modern presentation facilities, professional event space Nepal,privacy', 'The Board Meeting Hall at Manakamana Hillcrest offers a private, professional space with modern facilities for executive meetings and focused discussions.\r\n', 1, 8, '2025-10-10 17:30:38', '2025-11-16 17:22:01', 6, '', '', '', '', '', '', '', '', '', '', '360 sq.ft', '', '', '', '', '', '', '', ''),
(20, 'cultural-market', 'Cultural & Market', '', '', 'a:1:{i:0;s:18:\"H0MHy-climbing.jpg\";}', '', '', '', '', '', '', '', '', 0x613a303a7b7d, '<p style=\"text-align: center;\">\r\n	Hiking is a recreational outdoor activity that involves walking in natural environments, typically on trails or footpaths. It ranges from short, easy walks in local parks to multi-day treks through remote wilderness areas.Hiking offers physical exercise, mental relaxation, and a chance to connect with nature &mdash; making it a popular activity for people of all ages and fitness levels.</p>\r\n', '', 0, '\\$', 0, 0, 250, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 7, '2025-10-29 13:24:31', '2025-10-31 13:18:20', 8, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 'durbar-hall', 'Durbar Hall', '', '', 'a:1:{i:0;s:11:\"6tKUv-2.jpg\";}', '', '', '', '', '', '', '', '', 0x613a323a7b693a32353b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b613a31333a7b693a303b733a323a223532223b693a313b733a323a223531223b693a323b733a323a223530223b693a333b733a323a223335223b693a343b733a323a223334223b693a353b733a323a223333223b693a363b733a323a223332223b693a373b733a323a223331223b693a383b733a323a223330223b693a393b733a323a223239223b693a31303b733a323a223238223b693a31313b733a323a223237223b693a31323b733a323a223236223b7d7d693a31373b613a323a7b693a303b613a313a7b693a303b733a303a22223b7d693a313b733a303a22223b7d7d, '<p class=\"mb-30\">\r\n	Durbar Hall is a sophisticated venue designed for conferences, seminars, and social gatherings. With 693 sq. ft. of space and a dedicated pre-function area, it offers a refined atmosphere for both corporate and celebratory events. The hall&rsquo;s elegant design and attentive service ensure a seamless experience from start to finish.</p>\r\n<p class=\"mb-30\">\r\n	Seating arrangements are flexible to suit your event style. Choose from a U-shape setup for up to 25 guests, classroom style for 35, or theatre layout accommodating up to 55 guests.</p>\r\n<!--<div class=\"row\">\r\n	<h6>\r\n		Features:</h6>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Spacious, air-conditioned hall</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Customizable seating & stage setups</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Event planning & decoration support</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n	<div class=\"col-md-6\">\r\n		<ul class=\"list-unstyled page-list mb-30\">\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Modern sound and lighting system</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						On-site catering with tailored menus</p>\r\n				</div>\r\n			</li>\r\n			<li>\r\n				<div class=\"page-list-icon\">\r\n					 </div>\r\n				<div class=\"page-list-text\">\r\n					<p>\r\n						Ample parking and guest facilities</p>\r\n				</div>\r\n			</li>\r\n		</ul>\r\n	</div>\r\n</div>-->', '', 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', 'Classic Event Space', '', '', '', '55 Pax', '35 Pax', '25 Pax', '33 Pax', '', '', '', '', '', '', 1, 9, '2025-11-16 17:10:25', '2025-11-17 11:33:46', 6, '', '', '', '', '', '', '', '', '', '', '693 sq.ft', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(5) NOT NULL,
  `group_id` varchar(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `module_id` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_popup`
--

CREATE TABLE `tbl_popup` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `source` varchar(250) NOT NULL,
  `linktype` varchar(150) NOT NULL,
  `linksrc` varchar(250) NOT NULL,
  `position` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `slug` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_popup`
--

INSERT INTO `tbl_popup` (`id`, `title`, `date1`, `date2`, `image`, `source`, `linktype`, `linksrc`, `position`, `status`, `sortorder`, `type`, `slug`) VALUES
(2, 'manakamanahillcrest', '2024-09-10', '2028-01-26', 'a:1:{i:0;s:13:\"3IH8F-pop.jpg\";}', '', '0', 'offer-list/step-into-luxury', 1, 0, 1, 1, 'manakamanahillcrest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_thumb` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `img_jpg` varchar(255) NOT NULL,
  `img_png` varchar(255) NOT NULL,
  `img_svg` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(255) NOT NULL,
  `modified_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_room_price`
--

CREATE TABLE `tbl_room_price` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `one_person` int(11) NOT NULL,
  `two_person` int(11) NOT NULL,
  `three_person` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `icon` varchar(255) NOT NULL,
  `linksrc` varchar(255) NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `service_type` tinyint(1) NOT NULL,
  `brief` varchar(250) NOT NULL,
  `meta_title` tinyint(4) NOT NULL,
  `meta_keywords` int(11) NOT NULL,
  `meta_description` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `slug`, `title`, `sub_title`, `image`, `icon`, `linksrc`, `linktype`, `content`, `status`, `added_date`, `sortorder`, `type`, `service_type`, `brief`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(61, 'coffee-shop', 'Coffee Shop', '', 'a:1:{i:0;s:27:\"698hI-Z34qW-coffee-shop.png\";}', '', '', 0, '<p>\r\n	Ideal place to relax, read, or catch up with friends. Warm ambiance and aromatic flavors await you.</p>\r\n', 1, '2025-10-28 12:37:51', 10, 0, 1, '', 0, 0, 0),
(62, 'lawn-party-area', 'Lawn Party Area', '', 'a:1:{i:0;s:14:\"O3rDD-hall.png\";}', '', '', 0, '', 1, '2025-10-28 12:41:42', 22, 0, 1, '', 0, 0, 0),
(37, 'high-speed-internet', 'High Speed Internet', '', 'a:1:{i:0;s:14:\"PG10E-Wifi.png\";}', '', '', 0, '<p>\r\n	Stay connected with our high-speed fibre internet available throughout the resort. Perfect for work or streaming</p>\r\n', 1, '2025-10-07 15:47:47', 3, 0, 1, '', 0, 0, 0),
(36, 'mountain-view', 'Mountain View', '', 'a:1:{i:0;s:18:\"fAMZz-mountain.png\";}', '', '', 0, '<p>\r\n	Wake up to breathtaking Himalayan vistas from your room. Every sunrise and sunset is a memory to cherish.</p>\r\n', 1, '2025-10-07 15:47:35', 8, 0, 1, '', 0, 0, 0),
(35, 'events-wedding-destination', 'Events & Wedding Destination', 'Elegant spaces for every occasion.', 'a:3:{i:0;s:11:\"ZEiP7-3.jpg\";i:1;s:11:\"kijTb-2.jpg\";i:2;s:11:\"ZvAnO-1.jpg\";}', '', 'gorkha-durbar-hall', 0, '<p>\r\n	We specialize in creating unforgettable moments whether you&#39;re planning a high-powered corporate retreat or the wedding of your dreams. With world-class amenities, elegant venues, and exceptional service, our resort is the perfect destination for both business and celebration.</p>\r\n<hr id=\"system_readmore\" style=\"border-style: dashed; border-color: orange;\" />\r\n<p>\r\n	<img alt=\"\" src=\"/manakamanahillcrest/userfiles/images/hotel-exterior.jpg\" style=\"width: 1052px; height: 766px;\" /></p>\r\n', 1, '2025-09-20 19:08:28', 1, 0, 2, 'We specialize in creating unforgettable moments whether y', 0, 0, 0),
(57, 'swimming-pool', 'Swimming Pool', '', 'a:1:{i:0;s:23:\"Oj6NZ-swimming-pool.png\";}', '', '', 0, '<p>\r\n	Relax in our outdoor swimming pool and enjoy refreshing drinks from the lively pool bar.</p>\r\n', 1, '2025-10-28 12:31:29', 7, 0, 1, '', 0, 0, 0),
(58, 'sauna', 'Sauna', '', 'a:1:{i:0;s:16:\"xSize-bucket.png\";}', '', '', 0, '', 1, '2025-10-28 12:32:50', 15, 0, 1, '', 0, 0, 0),
(56, 'event-hall', 'Event Hall', '', 'a:1:{i:0;s:22:\"S9VkA-Meeting Hall.png\";}', '', '', 0, '<p>\r\n	Host your meetings & weddings in our modern event hall. Equipped with professional amenities & flexible seating.</p>\r\n', 1, '2025-10-28 12:28:48', 11, 0, 1, '', 0, 0, 0),
(60, 'steam', 'Steam', '', 'a:1:{i:0;s:15:\"9BAcl-sauna.png\";}', '', '', 0, '', 1, '2025-10-28 12:36:27', 16, 0, 1, '', 0, 0, 0),
(41, 'sauna-steam', 'Sauna & Steam', 'Relax. Refresh. Renew.', 'a:3:{i:0;s:16:\"xFKlG-sauna3.jpg\";i:1;s:15:\"Hf4vF-sauna.jpg\";i:2;s:16:\"OmtIE-sauna2.jpg\";}', '', '', 0, '<p style=\"text-align: center;\">\r\n	Unwind in our dedicated Sauna &amp; Steam zone a tranquil retreat nestled in the serene hills of Manakamana. Whether you&#39;re seeking warmth, detox, or a moment of quiet, our facilities offer a peaceful escape to soothe your body and mind.</p>\r\n<p style=\"text-align: center;\">\r\n	Enjoy revitalizing steam and sauna sessions designed to promote relaxation, improve circulation, and leave you feeling refreshed.</p>\r\n<p style=\"text-align: center;\">\r\n	<strong>Operation Hours:</strong> 10 AM to 6 PM</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Steam\" src=\"/assets/userfiles/images/steam.jpg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Sauna\" src=\"/assets/userfiles/images/sauna.jpg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Steam\" src=\"/assets/userfiles/images/steam2.jpg\" style=\"width: 100%;\" /></div>\r\n</div>\r\n<p style=\"text-align: center;\">\r\n	<a class=\"btn mt-20\" href=\"https://www.manakamanahillcrest.com/pool-sauna-policies\">Policy Guidelines</a></p>\r\n<style type=\"text/css\">\r\n.btn {\r\n  display: inline-block;\r\n  font-family: \"Open Sans\", sans-serif;\r\n  background-color: #000;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  padding: 12px 30px;\r\n  border-radius: 4px;\r\n  font-size: 16px;\r\n  letter-spacing: 1px;\r\n  border: 2px solid #000;\r\n  transition: all 0.3s ease;\r\n}\r\n.btn:hover {\r\n  background-color: #fff;\r\n  color: #000;\r\n}</style>\r\n', 1, '2025-10-09 11:27:27', 11, 0, 2, '', 0, 0, 0),
(42, 'fitness-center', 'Fitness Center', 'Wellness made routine.', 'a:1:{i:0;s:13:\"cBPAQ-gym.jpg\";}', '', '', 0, '<p>\r\n	Stay active and energized during your stay at our modern Fitness Center, equipped with a range of high-quality machines and free weights for all fitness levels.</p>\r\n<p>\r\n	Whether you prefer a gentle warm-up, strength training, or a full-body workout, our gym offers a clean, safe, and motivating environment to help you maintain your routine.</p>\r\n<p>\r\n	<strong>Operating Hours:</strong> 8:00 AM &ndash; 7:00 PM (Summer) | 8:00 AM &ndash; 6:00 PM (Winter)</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-6\">\r\n		<img alt=\"Swimming Pool\" src=\"/assets/userfiles/images/gym.jpg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"col-md-6\">\r\n		<img alt=\"Swimming Pool\" src=\"/assets/userfiles/images/shower.jpg\" style=\"width: 100%;\" /></div>\r\n</div>\r\n<p style=\"text-align: center;\">\r\n	<a class=\"btn mt-20\" href=\"https://www.manakamanahillcrest.com/health-fitness-policies\">Policy Guidelines</a></p>\r\n<style type=\"text/css\">\r\n.btn {\r\n  display: inline-block;\r\n  background-color: #000;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  padding: 12px 30px;\r\n  border-radius: 4px;\r\n  font-size: 16px;\r\n  letter-spacing: 1px;\r\n  border: 2px solid #000;\r\n  transition: all 0.3s ease;\r\n}\r\n.btn:hover {\r\n  background-color: #fff;\r\n  color: #000;\r\n}</style>\r\n', 1, '2025-10-28 12:07:05', 16, 0, 2, '', 0, 0, 0),
(43, 'outdoor-swimming-pool', 'Outdoor Swimming Pool', 'Refresh with a view.', 'a:4:{i:0;s:15:\"qLqpY-pool3.jpg\";i:1;s:15:\"XCWMN-pool5.jpg\";i:2;s:15:\"Ts13H-pool7.jpg\";i:3;s:15:\"JP3px-pool2.jpg\";}', '', '', 0, '<p>\r\n	Take a refreshing dip in our outdoor swimming pool, surrounded by the resort&rsquo;s scenic beauty and peaceful ambiance.</p>\r\n<p>\r\n	Perfect for relaxation or a leisurely swim, the pool area also features aila bar, offering refreshing drinks and light snacks throughout the day.</p>\r\n<p>\r\n	Enjoy stunning mountain views as you unwind by the water, soak up the sun, or simply relax with your favorite beverage.</p>\r\n<p>\r\n	<strong>Pool Hours: </strong>8:00 AM &ndash; 8:00 PM</p>\r\n<div class=\"row\">\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Swimming Pool\" src=\"/assets/userfiles/images/pool.jpg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Swimming Pool\" src=\"/assets/userfiles/images/pool2.jpg\" style=\"width: 100%;\" /></div>\r\n	<div class=\"col-md-4\">\r\n		<img alt=\"Swimming Pool\" src=\"/assets/userfiles/images/pool3.jpg\" style=\"width: 100%;\" /></div>\r\n</div>\r\n<p style=\"text-align: center;\">\r\n	<a class=\"btn mt-20\" href=\"https://www.manakamanahillcrest.com/pool-sauna-policies\">Policy Guidelines</a></p>\r\n<style type=\"text/css\">\r\n.btn {\r\n  display: inline-block;\r\n  background-color: #000;\r\n  color: #fff;\r\n  text-decoration: none;\r\n  font-weight: bold;\r\n  padding: 12px 30px;\r\n  border-radius: 4px;\r\n  font-size: 16px;\r\n  letter-spacing: 1px;\r\n  border: 2px solid #000;\r\n  transition: all 0.3s ease;\r\n}\r\n.btn:hover {\r\n  background-color: #fff;\r\n  color: #000;\r\n}</style>\r\n', 1, '2025-10-28 12:08:11', 20, 0, 2, '', 0, 0, 0),
(44, 'experiences-within-hillcrest', 'Experiences Within Hillcrest', 'Adventure at your doorstep.', 'a:1:{i:0;s:11:\"jXyqK-1.jpg\";}', '', '', 0, '<p>\r\n	Manakamana Hillcrest Resort is ideally located for guests eager to explore the cultural and natural treasures of the region. Begin your journey with a visit to the sacred Manakamana Temple and Bakeshwar Mahadev, both steeped in spiritual significance. For nature lovers, scenic hikes lead to hidden caves, Dhunge Dhara (stone spouts), and tranquil forest trails.</p>\r\n<p>\r\n	Start your day with a breathtaking sunrise over the Himalayan foothills, or unwind at the peaceful Buddha Park, a serene space for reflection and photography. Just a short distance away, White Lake offers a quiet escape with its calm waters and lush surroundings, perfect for a meditative stroll or picnic.</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p class=\"mt-30\">\r\n	<img alt=\"Dhunge Dhara\" src=\"/assets/userfiles/images/experience1.jpg\" style=\"width: 100%;\" /> <!--<p class=\"mt-30\">\r\n	<img alt=\"Stupa\" src=\"/manakamanahillcrest/userfiles/images/experience2.jpg\" style=\"width: 100%;\" /></p>--></p>\r\n', 1, '2025-10-28 12:08:33', 24, 0, 2, '', 0, 0, 0),
(45, 'airport-pick-dropoff', 'Airport Pick & Dropoff', '', 'a:1:{i:0;s:24:\"Xg42L-Airport Pickup.png\";}', '', '', 0, '<p>\r\n	Enjoy hassle-free travel with our airport transfer service. Our team ensures a smooth journey from airport to resort.</p>\r\n', 0, '2025-10-28 12:16:55', 1, 0, 1, '', 0, 0, 0),
(46, 'welcome-drink-on-arrival', 'Welcome Drink (on Arrival)', '', 'a:1:{i:0;s:23:\"w3ifz-Welcome Drink.png\";}', '', '', 0, '<p>\r\n	Be greeted with a refreshing welcome drink upon arrival. Start your stay with a touch of relaxation and delight.</p>\r\n', 1, '2025-10-28 12:17:19', 2, 0, 1, '', 0, 0, 0),
(47, 'room-service', 'Room Service', '', 'a:1:{i:0;s:28:\"7blAN-24hrs Room Service.png\";}', '', '', 0, '<p>\r\n	Enjoy round-the-clock room service, available whenever you need it. Comfort &amp; care are just a call away.</p>\r\n', 1, '2025-10-28 12:19:02', 9, 0, 1, '', 0, 0, 0),
(48, '24hrs-security', '24hrs Security', '', 'a:1:{i:0;s:23:\"u2h3B-CCTV Security.png\";}', '', '', 0, '', 1, '2025-10-28 12:23:20', 14, 0, 1, '', 0, 0, 0),
(49, 'doctor-on-call', 'Doctor on Call', '', 'a:1:{i:0;s:24:\"5LXIQ-Doctor on Call.png\";}', '', '', 0, '', 1, '2025-10-28 12:23:38', 13, 0, 1, '', 0, 0, 0),
(50, 'power-backup', 'Power Backup', '', 'a:1:{i:0;s:22:\"3XgnZ-Power Backup.png\";}', '', '', 0, '', 1, '2025-10-28 12:23:53', 20, 0, 1, '', 0, 0, 0),
(51, 'parking-space', 'Parking Space', '', 'a:1:{i:0;s:23:\"eH8bz-Parking Space.png\";}', '', '', 0, '', 1, '2025-10-28 12:24:33', 23, 0, 1, '', 0, 0, 0),
(52, 'fitness-center', 'Fitness Center', '', 'a:1:{i:0;s:24:\"PRJd5-Fitness Center.png\";}', '', '', 0, '', 1, '2025-10-28 12:24:51', 26, 0, 1, '', 0, 0, 0),
(69, 'terrace-garden', 'Terrace Garden', '', 'a:1:{i:0;s:25:\"RvwXz-patio-furniture.png\";}', '', '', 0, '', 1, '2025-11-14 12:25:49', 18, 0, 1, '', 0, 0, 0),
(54, 'cards-accepted', 'Cards Accepted', '', 'a:1:{i:0;s:24:\"u1GYI-Cards Accepted.png\";}', '', '', 0, '', 1, '2025-10-28 12:26:03', 28, 0, 1, '', 0, 0, 0),
(55, 'concierge-service', 'Concierge Service', '', 'a:1:{i:0;s:27:\"eyaiX-Concierge Service.png\";}', '', '', 0, '', 1, '2025-10-28 12:26:21', 27, 0, 1, '', 0, 0, 0),
(63, 'elevator', 'Elevator', '', 'a:1:{i:0;s:18:\"1UdEK-Elevator.png\";}', '', '', 0, '', 1, '2025-10-28 12:43:39', 19, 0, 1, '', 0, 0, 0),
(64, 'travel-desk', 'Travel Desk', '', 'a:1:{i:0;s:21:\"5WPCN-Travel Desk.png\";}', '', '', 0, '', 1, '2025-10-28 12:43:55', 17, 0, 1, '', 0, 0, 0),
(65, 'fire-extinguisher', 'Fire Extinguisher', '', 'a:1:{i:0;s:27:\"boO0w-Fire Extinguisher.png\";}', '', '', 0, '', 1, '2025-10-28 12:44:14', 21, 0, 1, '', 0, 0, 0),
(66, 'luggage-storage', 'Luggage Storage', '', 'a:1:{i:0;s:25:\"FK3bv-Luggage Storage.png\";}', '', '', 0, '', 1, '2025-10-28 12:44:56', 25, 0, 1, '', 0, 0, 0),
(67, '24hrs-reception', '24hrs Reception', '', 'a:1:{i:0;s:19:\"30xaR-Reception.png\";}', '', '', 0, '<p>\r\n	Our front desk is open around the clock to assist you with check-ins, travel queries, and personalized requests.</p>\r\n', 1, '2025-10-28 12:46:14', 6, 0, 1, '', 0, 0, 0),
(68, 'poolside-bar-aila-bar', 'Poolside Bar (Aila Bar)', '', 'a:1:{i:0;s:21:\"avudg-bar-counter.png\";}', '', '', 0, '<p>\r\n	Sip, relax, &amp; unwind at our poolside bar. Whether you&#39;re craving a refreshing cocktail, a chilled mocktail, or light bites.</p>\r\n', 1, '2025-11-14 12:24:37', 5, 0, 1, '', 0, 0, 0),
(70, 'wheelchair-friendly', 'Wheelchair Friendly', '', 'a:1:{i:0;s:20:\"FsOgh-wheelchair.png\";}', '', '', 0, '<p>\r\n	Smooth access across rooms, dining, and outdoor areas designed for comfort, safety, and inclusivity.</p>\r\n', 1, '2025-11-14 12:27:40', 4, 0, 1, '', 0, 0, 0),
(71, 'basera-restaurant', 'Basera Restaurant', '', 'a:1:{i:0;s:20:\"QKJ6r-Restaurant.png\";}', '', '', 0, '', 1, '2025-11-14 13:11:26', 12, 0, 1, '', 0, 0, 0),
(72, 'safe-deposits', 'Safe Deposits', '', 'a:1:{i:0;s:22:\"RL3RU-Safe Deposit.png\";}', '', '', 0, '', 1, '2025-11-14 13:11:52', 29, 0, 1, '', 0, 0, 0),
(73, 'daily-newspaper', 'Daily Newspaper', '', 'a:1:{i:0;s:25:\"zItgZ-Daily Newspaper.png\";}', '', '', 0, '', 1, '2025-11-14 14:58:53', 24, 0, 1, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshow`
--

CREATE TABLE `tbl_slideshow` (
  `id` int(11) NOT NULL,
  `title` tinytext NOT NULL,
  `sub_title` tinytext NOT NULL,
  `image` tinytext NOT NULL,
  `linksrc` tinytext NOT NULL,
  `linktype` tinyint(1) NOT NULL DEFAULT 0,
  `content` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `m_status` tinyint(1) NOT NULL DEFAULT 1,
  `added_date` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `source` varchar(250) NOT NULL,
  `source_vid` varchar(255) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `class` varchar(100) NOT NULL,
  `mode` int(11) NOT NULL,
  `upcoming` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_slideshow`
--

INSERT INTO `tbl_slideshow` (`id`, `title`, `sub_title`, `image`, `linksrc`, `linktype`, `content`, `status`, `m_status`, `added_date`, `sortorder`, `type`, `source`, `source_vid`, `url_type`, `thumb_image`, `url`, `host`, `class`, `mode`, `upcoming`) VALUES
(93, 'Unparalleled Beauty', 'slide 2', 'CxYOp-5.jpg', '', 0, '<h1>\r\n	Discover our exclusive luxury resortt</h1>\r\n', 1, 0, '2025-10-08 12:45:10', 3, 0, '', '', '', '', '', '', '', 1, 0),
(91, 'Video 1', 'We\'re Opening Soon', '', '', 0, '', 1, 0, '2025-10-07 15:28:38', 1, 0, '', 'A45X5-Web.mp4', '', '', '', '', '', 2, 0),
(92, 'Unparalleled Beauty', 'slide 1', 'Jb2PJ-2.jpg', '', 0, 'A Unique Chalet Resort', 1, 0, '2025-10-08 12:44:46', 2, 0, '', '', '', '', '', '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slideshows_withouttlist`
--

CREATE TABLE `tbl_slideshows_withouttlist` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_networking`
--

CREATE TABLE `tbl_social_networking` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `linksrc` tinytext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_social_networking`
--

INSERT INTO `tbl_social_networking` (`id`, `title`, `image`, `icon`, `type`, `linksrc`, `status`, `sortorder`, `registered`) VALUES
(7, 'Booking', 'f99Mg-booking.png', '', 2, '#', 1, 1, '2025-10-08 12:50:42'),
(6, 'Facebook', '', 'ti-facebook', 1, 'https://www.facebook.com/profile.php?id=61550283189443', 1, 1, '2025-10-08 10:48:12'),
(4, 'Instagram', '', 'ti-instagram', 1, 'https://www.instagram.com/manakamanahillcrestresort/', 1, 2, '2025-10-08 10:47:43'),
(5, 'Linkedin', '', 'fa-brands fa-linkedin', 1, 'https://www.linkedin.com/company/resorts-by-manakamana-cable-car-pvt-ltd/?viewAsMember=true', 1, 3, '2025-10-08 10:47:56'),
(8, 'Agoda', 'GBMen-agoda.png', '', 2, 'https://www.agoda.com/en-nz/manakamana-hillcrest-resort/hotel/darechok-np.html?cid=1844104&ds=eND%2FuhebiyW6W8Tz', 1, 2, '2025-10-08 12:51:19'),
(9, 'Tripadvisor', '6tMW7-ta.png', '', 2, '#', 1, 3, '2025-10-08 12:51:35'),
(10, 'ctrip', 'mJEVs-ctrip.png', '', 2, '#', 0, 6, '2025-10-08 12:51:46'),
(11, 'Make my trip', 'O5cuf-may.png', '', 2, '#', 1, 4, '2025-10-08 12:51:56'),
(12, 'Trip', 'WQVub-trip.png', '', 2, 'https://us.trip.com/hotels/gorkha-hotel-detail-131555829/manakamana-hillcrest-resort/', 1, 5, '2025-10-29 13:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subpackage_images`
--

CREATE TABLE `tbl_subpackage_images` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `subpackageid` int(11) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `registered` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `tbl_subpackage_images`
--

INSERT INTO `tbl_subpackage_images` (`id`, `title`, `subpackageid`, `detail`, `status`, `sortorder`, `registered`, `image`) VALUES
(218, 'Multicuisine Restaurant', 13, '', 0, 7, '2025-11-12 16:46:53', 'iqFyU-1.jpg'),
(219, 'Multicuisine Restaurant', 13, '', 1, 6, '2025-11-12 16:46:53', 'Aqgdd-5.jpg'),
(220, 'Multicuisine Restaurant', 13, '', 1, 2, '2025-11-12 16:46:53', 'X2Kzk-4.jpg'),
(221, 'Multicuisine Restaurant', 13, '', 1, 4, '2025-11-12 16:46:53', 'JwgP1-3.jpg'),
(222, 'Multicuisine Restaurant', 13, '', 1, 3, '2025-11-12 16:46:53', 'Rxnxp-2.jpg'),
(248, 'Bathroom', 11, '', 1, 19, '2025-11-13 17:06:45', 'NrBmg-bath.jpg'),
(249, 'Amenities', 11, '', 1, 18, '2025-11-13 17:07:51', 'FZ2LS-amenities.jpg'),
(250, 'Deluxe Single Room', 11, '', 1, 13, '2025-11-14 11:52:39', '3PjXi-2.jpg'),
(251, 'Deluxe Single Room', 11, '', 1, 16, '2025-11-14 11:52:39', 'mF7h1-1.jpg'),
(252, 'Deluxe Family Room', 18, '', 1, 28, '2025-11-14 11:53:13', 'mO1ca-2.jpg'),
(253, 'Deluxe Family Room', 18, '', 1, 29, '2025-11-14 11:53:13', 'SWvMq-1.jpg'),
(254, 'Deluxe Family Room', 18, '', 1, 31, '2025-11-14 11:55:46', '9VfBG-3.jpg'),
(256, 'Deluxe Family Room', 18, '', 1, 30, '2025-11-14 11:55:46', 'Vh4n0-1.jpg'),
(257, 'Deluxe Twin Room', 14, '', 1, 26, '2025-11-14 11:58:48', 'uT7L9-4.jpg'),
(258, 'Deluxe Twin Room', 14, '', 1, 22, '2025-11-14 11:58:48', 'k86yY-2.jpg'),
(259, 'Deluxe Twin Room', 14, '', 1, 27, '2025-11-14 11:58:48', '1Fmud-3.jpg'),
(260, 'Deluxe Twin Room', 14, '', 1, 1, '2025-11-14 11:58:48', 'ySUBA-1.jpg'),
(261, 'Interconnected Family Suite', 15, '', 1, 25, '2025-11-14 12:03:24', 'NyANi-3.jpg'),
(262, 'Interconnected Family Suite', 15, '', 1, 24, '2025-11-14 12:03:24', 'IE5uP-2.jpg'),
(263, 'Interconnected Family Suite', 15, '', 1, 17, '2025-11-14 12:03:24', 'PVE5h-4.jpg'),
(264, 'Interconnected Family Suite', 15, '', 1, 20, '2025-11-14 12:03:24', 'Btxjj-1.jpg'),
(265, 'Interconnected Family Suite', 15, '', 1, 21, '2025-11-14 12:03:24', 'f1L9N-5.jpg'),
(266, 'Interconnected Family Suite', 15, '', 1, 23, '2025-11-14 12:03:24', 'DCwt3-6.jpg'),
(269, 'Food', 13, '', 1, 10, '2025-11-14 12:06:59', 'eqLlf-a.jpg'),
(270, 'Food', 13, '', 1, 8, '2025-11-14 12:07:58', 'gDhf9-b.jpg'),
(271, 'Gorkha Durbar Hall', 12, '', 1, 5, '2025-11-14 12:10:41', '3uv9w-1.jpg'),
(272, 'Gorkha Durbar Hall', 12, '', 1, 11, '2025-11-14 12:10:41', 'gxNq7-2.jpg'),
(273, 'Gorkha Durbar Hall', 12, '', 1, 14, '2025-11-14 12:10:41', 'NY07Z-3.jpg'),
(274, 'Board Meeting Hall', 19, '', 1, 9, '2025-11-14 12:11:02', 't1UPF-1.jpg'),
(275, 'Board Meeting Hall', 19, '', 1, 12, '2025-11-14 12:11:02', '1tFpH-2.jpg'),
(276, 'Board Meeting Hall', 19, '', 1, 15, '2025-11-14 12:11:02', 'bcif6-3.jpg'),
(277, 'Darbar Hall', 21, '', 1, 1, '2025-11-16 17:11:36', 'LXZMk-1.jpg'),
(278, 'Darbar Hall', 21, '', 1, 2, '2025-11-16 17:11:36', '3fFw6-2.jpg'),
(279, 'Darbar Hall', 21, '', 1, 3, '2025-11-16 17:11:36', 'ozrNL-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscribers`
--

CREATE TABLE `tbl_subscribers` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `mailaddress` varchar(250) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `parentOf` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(225) NOT NULL,
  `linksrc` text NOT NULL,
  `content` mediumtext NOT NULL,
  `rating` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `country` varchar(100) NOT NULL,
  `via_type` varchar(200) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `parentOf`, `name`, `image`, `linksrc`, `content`, `rating`, `sortorder`, `status`, `country`, `via_type`, `type`) VALUES
(1, 0, 'Vickygor', 'UlMjh-tripaadvisor.png', '#', '<p>\r\n	From the moment we arrived, the staff made us feel genuinely welcome with a refreshing drink and a smile. The room was spacious, spotless, and offered stunning mountain views that made every morning magical. We especially loved the pool bar &mdash; sipping cocktails while watching the sunset was unforgettable. The food was delicious, and the service was prompt throughout our stay. Highly recommended for anyone seeking peace, comfort, and a touch of luxury in the hills.</p>\r\n', 3, 1, 1, 'Highly recommended!', 'Tripadviser', 0),
(2, 0, 'Sanskar', 'IZLof-Booking.png', '#', '<p>\r\n	Clean rooms, great service, and beautiful surroundings. Will visit again! The team went above and beyond to make sure we were comfortable, and the overall experience was exceptional from start to finish.</p>\r\n', 4, 2, 1, 'Amazing Stay', 'Booking', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `optional_email` longtext NOT NULL,
  `hall_email` varchar(200) NOT NULL,
  `hr_email` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(65) NOT NULL,
  `accesskey` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `group_id` int(11) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `facebook_uid` varchar(255) NOT NULL,
  `facebook_accesstoken` varchar(255) NOT NULL,
  `facebook_tokenexpire` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` date NOT NULL,
  `permission` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `middle_name`, `last_name`, `contact`, `email`, `optional_email`, `hall_email`, `hr_email`, `username`, `password`, `accesskey`, `image`, `group_id`, `access_code`, `facebook_uid`, `facebook_accesstoken`, `facebook_tokenexpire`, `status`, `sortorder`, `added_date`, `permission`) VALUES
(1, 'Manakamana Hillcrest Resort', '', 'shakya', '', 'info@manakamanahillcrest.com', 'support@longtail.info', 'statshakya@gmail.com', 'statshakya@gmail.com', 'admin', '85a7b83955e2b8e689f7275c51d9f953', 'tKb2sznHq3by2gXbviePlcllU', '', 2, 'IKLxivj8RW', '', '', '2021-04-29 05:40:38', 1, 1, '2014-03-26', 0x613a32313a7b693a303b733a313a2231223b693a313b733a313a2232223b693a323b733a313a2233223b693a333b733a323a223235223b693a343b733a323a223234223b693a353b733a323a223233223b693a363b733a313a2234223b693a373b733a333a22333032223b693a383b733a333a22333033223b693a393b733a313a2235223b693a31303b733a323a223237223b693a31313b733a333a22333030223b693a31323b733a333a22333031223b693a31333b733a323a223131223b693a31343b733a333a22333034223b693a31353b733a323a223137223b693a31363b733a323a223230223b693a31373b733a323a223238223b693a31383b733a323a223132223b693a31393b733a323a223133223b693a32303b733a323a223134223b7d),
(2, 'Super admin', '', '', '', 'info@manakamanahillcrest.com', 'support@longtail.info', 'support@longtail.info', 'support@longtail.info', 'superadmin', '4ef961d430016feab913571a25818e97', 'lRCZcdMC5qw6VWfrIBkNKWV4J', '', 1, '', '', '', '2023-11-09 10:05:54', 1, 0, '0000-00-00', 0x613a32363a7b693a303b733a323a223734223b693a313b733a313a2231223b693a323b733a333a22333036223b693a333b733a313a2232223b693a343b733a313a2233223b693a353b733a323a223235223b693a363b733a323a223234223b693a373b733a323a223233223b693a383b733a313a2234223b693a393b733a333a22333032223b693a31303b733a333a22333033223b693a31313b733a313a2235223b693a31323b733a323a223237223b693a31333b733a333a22333030223b693a31343b733a333a22333031223b693a31353b733a333a22333035223b693a31363b733a323a223131223b693a31373b733a323a223137223b693a31383b733a333a22333034223b693a31393b733a323a223230223b693a32303b733a323a223139223b693a32313b733a323a223238223b693a32323b733a323a223132223b693a32333b733a323a223133223b693a32343b733a323a223134223b693a32353b733a323a223136223b7d),
(3, 'asdasd', 'asdasd', 'asdasd', '', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'stat@gmail.com', 'asdas', '80c9ef0fb86369cd25f90af27ef53a9e', 'XZtQjE8Rse66xhHG6sSVqzyDZ', '', 3, '', '', '', '0000-00-00 00:00:00', 1, 2, '2024-01-10', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vacency`
--

CREATE TABLE `tbl_vacency` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `post` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `pax` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `date1` date NOT NULL,
  `date2` date NOT NULL,
  `archive_date` date DEFAULT NULL,
  `sortorder` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(50) NOT NULL,
  `type` int(11) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_vacency`
--

INSERT INTO `tbl_vacency` (`id`, `title`, `post`, `location`, `slug`, `pax`, `content`, `date1`, `date2`, `archive_date`, `sortorder`, `status`, `image`, `type`, `meta_keywords`, `meta_description`, `added_date`) VALUES
(9, 'Asst. Laundry Manager', 'Manager', 'Kathmandu, Nepal', 'asst-laundry-manager', '1', '<p>\r\n	Bachelor</p>\r\n', '0000-00-00', '2023-08-31', '0000-00-00', 1, 1, '', 0, '', '', '2023-08-28 15:12:02'),
(10, 'Painter / Plumber', 'Painter / Plumber', 'Kathmandu, Nepal', 'painter-plumber', '1', '<p>\r\n	<span style=\"color: rgb(71, 61, 53); font-family: Roboto, sans-serif; font-size: 20px; background-color: rgb(247, 246, 246);\">Painter / Plumber</span></p>\r\n', '0000-00-00', '2023-09-22', '0000-00-00', 3, 1, '', 0, '', '', '2023-08-29 11:42:43'),
(12, 'Sales Executive', 'Sales Executive', 'patan', 'sales-executive', '1', '<p>\r\n	asdasd</p>\r\n', '0000-00-00', '2023-09-15', '0000-00-00', 2, 1, '', 0, '', '', '2023-09-03 15:03:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `id` int(11) NOT NULL,
  `source` varchar(200) NOT NULL,
  `url_type` varchar(50) NOT NULL,
  `title` longtext NOT NULL,
  `thumb_image` longtext NOT NULL,
  `url` varchar(255) NOT NULL,
  `host` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `class` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_360_images`
--

CREATE TABLE `tbl_vt_360_images` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `hfov` int(11) NOT NULL,
  `pitch` int(11) NOT NULL,
  `yaw` int(11) NOT NULL,
  `type` text NOT NULL,
  `panorama` longblob NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` datetime(6) NOT NULL,
  `virtual_tour_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_360_images`
--

INSERT INTO `tbl_vt_360_images` (`id`, `title`, `hfov`, `pitch`, `yaw`, `type`, `panorama`, `status`, `sortorder`, `added_date`, `virtual_tour_id`) VALUES
(6, ' Deluxe room (Interconnecting room) ', 120, 0, -110, '', 0x4e597959782d494d475f32303235313130355f3136303834345f30305f3033322d4844522d456469742d322d456469742e4a5047, 1, 6, '2025-11-12 14:45:29.000000', 1),
(7, ' Deluxe room  (Bathroom)', 120, 0, 150, '', 0x33455430742d494d475f32303235313130355f3136313532315f30305f3033342d4844522d456469742e4a5047, 1, 5, '2025-11-12 14:48:11.000000', 1),
(8, ' Deluxe room  (Balcony)', 120, 0, 0, '', 0x316a4845502d494d475f32303235313130355f3136323230325f30305f3033392d4844522d456469742d456469742e4a5047, 1, 4, '2025-11-12 14:53:05.000000', 1),
(9, 'Ground floor (Lift area)', 120, 0, 0, '', 0x50693458422d494d475f32303235313130355f3136343531325f30305f3034372d4844522d456469742e4a5047, 1, 22, '2025-11-12 14:56:55.000000', 1),
(10, 'Lobby area', 120, 0, -140, '', 0x4e357762462d494d475f32303235313130355f3136343730385f30305f3035302d456469742d322e4a5047, 1, 24, '2025-11-12 14:57:34.000000', 1),
(11, 'Garden area', 120, 0, 0, '', 0x51427267462d47617264656e20417265612e4a5047, 1, 9, '2025-11-12 15:25:13.000000', 1),
(12, 'Exterior area 2', 130, 0, 130, '', 0x34413862642d4578746572696f72206172656120322e4a5047, 1, 11, '2025-11-12 15:36:41.000000', 1),
(13, 'Exterior area', 120, 0, 130, '', 0x304168647a2d4578746572696f7220617265612e4a5047, 1, 12, '2025-11-12 15:37:11.000000', 1),
(15, 'Parking ', 125, 0, 220, '', 0x56457749492d5061726b696e672e4a5047, 1, 13, '2025-11-12 15:38:13.000000', 1),
(16, 'Temple Entrance', 120, 0, 0, '', 0x6f696273482d54656d706c6520456e7472616e63652e4a5047, 1, 27, '2025-11-12 15:38:57.000000', 1),
(17, 'Tharu Dance Area ', 120, 0, 0, '', 0x4f49366e732d54686172752044616e636520417265612e4a5047, 1, 8, '2025-11-12 15:39:36.000000', 1),
(19, 'Reception  ', 120, 0, 0, '', 0x43446a775a2d494d475f32303235313130355f3136343933355f30305f3035312d456469742d456469742d456469742e6a7067, 1, 25, '2025-11-12 16:01:12.000000', 1),
(20, 'Exterior(Swimming Pool )', 120, 0, 0, '', 0x75537341762d494d475f32303235313130365f3137323430325f30305f3231342d4844522d456469742e6a7067, 1, 10, '2025-11-12 16:02:00.000000', 1),
(21, 'Reception Entrance', 120, 0, 0, '', 0x67383459622d494d475f32303235313130365f3137323932315f30305f3232322d456469742d456469742d456469742e6a7067, 1, 26, '2025-11-12 16:03:12.000000', 1),
(23, 'Manakamana Gate', 130, 0, 0, '', 0x596158484f2d4d616e616b616d616e6120476174652e6a7067, 1, 31, '2025-11-12 16:48:41.000000', 1),
(24, 'Restaurant Passage', 120, 0, 0, '', 0x55515053692d52657374617572616e7420506173736167652e6a7067, 1, 15, '2025-11-12 16:58:27.000000', 1),
(25, 'Basement (Lift area)', 120, 0, 0, '', 0x38746765792d31737420466c6f6f7220284c6966742061726561292e4a5047, 1, 23, '2025-11-12 17:24:03.000000', 1),
(26, '4th Floor (Lift area)', 120, 0, 160, '', 0x51736a6c4c2d34746820666c6f6f7220284c6966742061726561292e6a7067, 1, 20, '2025-11-13 13:27:08.000000', 1),
(27, 'Garden view room ', 100, 0, 0, '', 0x355a5262682d47617264656e207669657720726f6f6d202e6a7067, 1, 19, '2025-11-13 13:29:53.000000', 1),
(28, 'Ground floor corridor', 120, 0, 0, '', 0x52784954782d494d475f32303235313130365f3137313733325f30305f3230352d456469742d456469742e4a5047, 1, 16, '2025-11-13 13:51:41.000000', 1),
(29, '3rd Floor (Corridor)', 100, 0, 0, '', 0x59534b6a312d494d475f32303235313130355f3136303435395f30305f3032372d456469742e4a5047, 1, 7, '2025-11-13 13:57:38.000000', 1),
(30, 'Sauna and Steam area', 120, 0, 0, '', 0x3961594c5a2d5361756e6120616e6420537465616d20617265612e6a7067, 1, 3, '2025-11-13 14:57:15.000000', 1),
(31, 'Restaurant', 120, 0, 0, '', 0x6941534c302d494d475f32303235313130365f3136353935375f30305f3230322d456469742d456469742e6a7067, 1, 14, '2025-11-13 15:41:52.000000', 1),
(32, 'Garden view balcony', 120, 0, 0, '', 0x68733047522d494d475f32303235313130365f3137323035365f30305f3231302d456469742e4a5047, 1, 17, '2025-11-13 16:22:38.000000', 1),
(33, 'Garden view room (Bathroom)', 120, 0, 0, '', 0x49517447692d47617264656e207669657720726f6f6d202842617468726f6f6d29202e6a7067, 1, 18, '2025-11-13 16:30:08.000000', 1),
(34, '3rd Floor (Lift area)', 120, 0, 0, '', 0x5a6a7557452d546f7020666c6f6f7220436f727269646f722e6a7067, 1, 21, '2025-11-14 14:58:47.000000', 1),
(35, 'Gym', 120, 0, 0, '', 0x6e654741712d494d475f32303235313130365f3132313632375f30305f3133382d4844522d456469742e6a7067, 1, 2, '2025-11-14 15:08:58.000000', 1),
(36, 'Sauna', 120, 0, 0, '', 0x6d4d3631612d494d475f32303235313130365f3132323035385f30305f3134392d4844522d456469742e6a7067, 1, 0, '2025-11-14 15:11:23.000000', 1),
(37, 'Steam room', 120, 0, 0, '', 0x476b4f66362d537465616d20726f6f6d2e6a7067, 1, 1, '2025-11-14 15:12:09.000000', 1),
(38, 'Manakamana Cable Station', 120, 0, -157, '', 0x5a394644502d494d475f32303235313130365f3131313532325f30305f3132382831292d456469742d456469742e6a7067, 1, 29, '2025-11-16 14:18:25.000000', 1),
(39, 'Manakamana Cable Station Temple', 120, 0, 0, '', 0x6b4e34446a2d494d475f32303235313130365f3131333134365f30305f3133342831292d456469742d456469742e6a7067, 1, 28, '2025-11-16 14:20:39.000000', 1),
(40, 'Manakamana Cable Station Entrance', 120, 0, 120, '', 0x3369495a722d494d475f32303235313130365f3131303333365f30305f3132372d456469742e6a7067, 1, 30, '2025-11-16 14:49:57.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_hotspots`
--

CREATE TABLE `tbl_vt_hotspots` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `hotspot_pitch` float NOT NULL,
  `hotspot_yaw` float NOT NULL,
  `hotspot_type` varchar(50) NOT NULL,
  `hotspot_text` text NOT NULL,
  `scene_id` varchar(50) NOT NULL,
  `target_yaw` float NOT NULL,
  `target_pitch` float NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` varchar(50) NOT NULL,
  `three60_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_hotspots`
--

INSERT INTO `tbl_vt_hotspots` (`id`, `title`, `hotspot_pitch`, `hotspot_yaw`, `hotspot_type`, `hotspot_text`, `scene_id`, `target_yaw`, `target_pitch`, `status`, `sortorder`, `added_date`, `three60_id`) VALUES
(5, 'Reception  Entrance', -24, 27, 'scene', '', '21', 0, 0, 1, 1, '2025-11-12 16:04:37', 16),
(6, 'Reception', 0, 7, 'scene', '', '19', 3, 0, 1, 2, '2025-11-12 16:10:50', 21),
(7, 'Reception Entrance', 0, 220, 'scene', '', '21', -122, 0, 1, 3, '2025-11-12 16:12:12', 19),
(8, 'Exterior area 2', -10, -25, 'scene', '', '12', 0, 0, 1, 4, '2025-11-12 16:19:03', 21),
(9, 'Reception Entrance', 2, -145, 'scene', '', '21', 159, 0, 1, 5, '2025-11-12 16:23:44', 12),
(10, 'Exterior area', 0, 95, 'scene', '', '13', 100, 0, 1, 6, '2025-11-12 16:28:18', 12),
(11, 'Exterior area 2', 0, 180, 'scene', '', '12', -155, 0, 1, 7, '2025-11-12 16:30:08', 13),
(12, ' Exterior area (Swimming Pool)', -5, -78, 'scene', '', '20', 177, 0, 1, 8, '2025-11-12 16:33:06', 13),
(13, ' Exterior area', 0, 0, 'scene', '', '13', 0, 0, 1, 9, '2025-11-12 16:37:40', 20),
(14, ' Parking ', -5, -20, 'scene', '', '15', 0, 0, 1, 10, '2025-11-12 16:40:36', 13),
(15, ' Exterior area ', 0, 78, 'scene', '', '13', 0, 0, 1, 11, '2025-11-12 16:43:39', 15),
(16, 'Garden  Area ', 0, 228, 'scene', '', '11', 0, 0, 1, 12, '2025-11-12 16:46:43', 15),
(17, 'Garden area', -5, -89, 'scene', '', '11', -164, 0, 1, 13, '2025-11-12 16:51:15', 21),
(18, 'Reception  Entrance', 5, 12, 'scene', '', '21', 0, 0, 1, 14, '2025-11-12 16:56:23', 11),
(20, ' Lobby area', 0, 50, 'scene', '', '10', -103, 0, 1, 15, '2025-11-12 17:18:12', 19),
(21, ' Reception ', 0, 85, 'scene', '', '19', -142, 0, 1, 16, '2025-11-12 17:19:12', 10),
(22, ' Ground floor (Lift )', 0, -110, 'scene', '', '9', 0, 0, 1, 17, '2025-11-12 17:21:50', 10),
(23, 'Basement (Lift area)', -12, 5, 'scene', '', '25', -45, 0, 1, 18, '2025-11-13 12:28:57', 9),
(24, 'lobby area', 0, -130, 'scene', '', '10', 82, 0, 1, 19, '2025-11-13 12:30:58', 9),
(25, '3rd floor (Lift area)', 0, 153, 'scene', '', '34', 0, 0, 1, 20, '2025-11-13 14:32:19', 29),
(26, ' Sauna and Steam area', -3, 80, 'scene', '', '30', -143, 0, 1, 21, '2025-11-13 14:36:51', 26),
(27, '4th floor (Lift area)', -9, 22, 'scene', '', '26', 163, 0, 1, 22, '2025-11-13 15:00:00', 30),
(28, ' Deluxe room ', 0, 3, 'scene', '', '6', 0, 0, 1, 23, '2025-11-13 15:08:46', 29),
(29, ' 3rd Floor (Corriod)', 0, 103, 'scene', '', '29', -172, 0, 1, 24, '2025-11-13 15:11:55', 6),
(30, ' Deluxe room  (Balcony)', 0, -90, 'scene', '', '8', 0, 0, 1, 25, '2025-11-13 15:14:39', 6),
(31, 'Deluxe room', 0, 163, 'scene', '', '6', 130, 0, 1, 26, '2025-11-13 15:16:59', 8),
(32, ' Deluxe room (Bathroom)', 0, 125, 'scene', '', '7', -156, 0, 1, 27, '2025-11-13 15:24:07', 6),
(33, ' Deluxe room ', 0, -3, 'scene', '', '6', 0, 0, 1, 28, '2025-11-13 15:25:56', 7),
(34, 'Restaurant passage', -8, -160, 'scene', '', '24', -128, 0, 1, 29, '2025-11-13 15:44:04', 13),
(35, 'Exterior area', -5, 65, 'scene', '', '13', 0, 13, 1, 30, '2025-11-13 15:47:24', 24),
(36, 'Restaurant ', 0, 192, 'scene', '', '31', -60, 0, 1, 31, '2025-11-13 15:49:48', 24),
(37, ' Restaurant passage', -5, -175, 'scene', '', '24', 0, 0, 1, 32, '2025-11-13 15:51:43', 31),
(38, ' Garden area', 0, 214, 'scene', '', '11', 0, 0, 1, 33, '2025-11-13 15:54:20', 24),
(39, 'Restaurant passage', -20, -119, 'scene', '', '24', 0, 0, 1, 34, '2025-11-13 15:56:53', 11),
(40, 'Parking', -9, -50, 'scene', '', '15', 0, 0, 1, 35, '2025-11-13 15:59:20', 24),
(41, 'Restaurant passage', 0, 149, 'scene', '', '24', 157, 0, 1, 36, '2025-11-13 16:01:14', 15),
(42, 'Garden view room', 0, -104, 'scene', '', '27', 0, 0, 1, 37, '2025-11-13 16:19:35', 28),
(43, 'Ground floor', 0, -148, 'scene', '', '28', 120, 0, 1, 38, '2025-11-13 16:24:17', 27),
(44, 'Garden view balcony', 0, 16, 'scene', '', '32', 69, 0, 1, 39, '2025-11-13 16:25:33', 27),
(45, 'Garden view room', 0, -107, 'scene', '', '27', -105, 0, 1, 40, '2025-11-13 16:26:30', 32),
(46, 'Garden view room  bathroom', 0, -132, 'scene', '', '33', -167, 0, 1, 41, '2025-11-13 16:32:02', 27),
(47, 'Garden view room ', 0, 119, 'scene', '', '27', 0, 0, 1, 42, '2025-11-13 16:33:45', 33),
(48, 'Basement (Lift area)', 0, 129, 'scene', '', '25', 0, 0, 1, 43, '2025-11-13 17:10:00', 28),
(49, 'Ground floor corridor', 0, -83, 'scene', '', '28', -79, 0, 1, 44, '2025-11-13 17:11:24', 25),
(50, 'Gym', -5, 11, 'scene', '', '35', 170, 0, 1, 45, '2025-11-14 15:14:25', 26),
(51, '4th Floor (lift area)', -4, -12, 'scene', '', '26', 134, 2, 1, 46, '2025-11-14 15:16:51', 35),
(52, ' Sauna', 0, -100, 'scene', '', '36', 90, 0, 1, 47, '2025-11-14 15:18:57', 30),
(53, 'Steam and Sauna area', -8, -30, 'scene', '', '30', 0, 0, 1, 48, '2025-11-14 15:24:43', 36),
(54, 'Steam ', -5, -170, 'scene', '', '37', -158, 0, 1, 49, '2025-11-14 15:27:08', 30),
(55, 'Steam and Sauna area', -8, 30, 'scene', '', '30', 0, 0, 1, 50, '2025-11-14 15:32:30', 37),
(56, '3rd Floor(Corridor)', 0, -98, 'scene', '', '29', 0, 0, 1, 51, '2025-11-14 15:46:30', 34),
(57, '4th floor (Lift area)', 0, -1, 'scene', '', '26', 115, 0, 1, 52, '2025-11-14 15:49:36', 34),
(58, '3rd floor (Lift area)', 2, 179, 'scene', '', '34', -44, 0, 1, 53, '2025-11-14 15:51:29', 26),
(59, 'Ground Floor (Lift area)', -9, -1, 'scene', '', '9', -49, 0, 1, 54, '2025-11-14 15:55:03', 34),
(60, 'Basement (Lift area)', -16, -1, 'scene', '', '25', -39, 0, 1, 55, '2025-11-14 15:56:50', 34),
(61, 'Ground floor (Lift area)', -8, 179, 'scene', '', '9', -49, 0, 1, 56, '2025-11-14 16:00:14', 26),
(62, 'Basement (Lift area)', -18, 179, 'scene', '', '25', -32, 0, 1, 57, '2025-11-14 16:02:39', 26),
(63, 'Ground floor (Lift area)', -6, 14, 'scene', '', '9', -51, 0, 1, 58, '2025-11-14 16:04:13', 25),
(64, '3rd floor (Lift area)', 2, 14, 'scene', '', '34', -45, 0, 1, 59, '2025-11-14 16:06:30', 25),
(65, '4th floor (Lift area)', 10, 14, 'scene', '', '26', 115, 0, 1, 60, '2025-11-14 16:07:32', 25),
(66, '3rd floor (Lift area)', 0, 5, 'scene', '', '34', -44, 0, 1, 61, '2025-11-14 16:11:10', 9),
(67, '4th floor (Lift area)', 10, 5, 'scene', '', '26', 110, 0, 1, 62, '2025-11-14 16:11:50', 9),
(68, 'Manakamana Cable Station Entrance', -6, 5, 'scene', '', '40', 178, 0, 1, 63, '2025-11-14 17:12:41', 23),
(69, 'Manakamana Cable Station Entrance', 0, 180, 'scene', '', '39', 190, 0, 1, 64, '2025-11-14 17:14:40', 16),
(70, 'Manakamana Gate', 2, -1, 'scene', '', '23', -125, 0, 1, 65, '2025-11-16 15:02:26', 40),
(71, 'Manakamana Cable Station', -5, 152, 'scene', '', '38', -155, 0, 1, 66, '2025-11-16 15:06:23', 40),
(72, 'Manakamana Cable Station  Entrance', 0, -11, 'scene', '', '40', -19, 0, 1, 67, '2025-11-16 15:08:51', 38),
(73, 'Manakamana Temple Station', 0, -157, 'scene', '', '39', 0, 0, 1, 68, '2025-11-16 15:13:57', 38),
(74, 'Manakamana Cable Station', 0, -152, 'scene', '', '38', -4, 0, 1, 69, '2025-11-16 15:15:21', 39),
(75, 'Temple Entrance', 0, -32, 'scene', '', '16', 0, 0, 1, 70, '2025-11-16 15:18:20', 39),
(76, 'Temple Entrance', -2, -154, 'scene', '', '16', 140, 0, 1, 71, '2025-11-16 17:09:16', 21),
(77, 'Tharu Dance area', -17, 190, 'scene', '', '17', -167, 0, 1, 72, '2025-11-17 14:23:20', 11),
(78, 'Garden area', 2, 0, 'scene', '', '11', 0, 0, 1, 73, '2025-11-17 14:26:39', 17);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vt_virtual_tour`
--

CREATE TABLE `tbl_vt_virtual_tour` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sortorder` int(11) NOT NULL,
  `added_date` datetime NOT NULL,
  `scene_fade_duration` int(11) NOT NULL,
  `image_width` varchar(255) NOT NULL,
  `image_height` varchar(255) NOT NULL,
  `hotspot_icon` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_vt_virtual_tour`
--

INSERT INTO `tbl_vt_virtual_tour` (`id`, `title`, `status`, `sortorder`, `added_date`, `scene_fade_duration`, `image_width`, `image_height`, `hotspot_icon`) VALUES
(1, 'room', 1, 1, '2025-10-09 16:05:13', 500, '1200', '600', 0x31734e37692d62696b652e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_download`
--
ALTER TABLE `tbl_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_itinerary`
--
ALTER TABLE `tbl_itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_offer_child`
--
ALTER TABLE `tbl_offer_child`
  ADD KEY `offer_id` (`offer_id`);

--
-- Indexes for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package`
--
ALTER TABLE `tbl_package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vt_360_images`
--
ALTER TABLE `tbl_vt_360_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtual_tour_id` (`virtual_tour_id`);

--
-- Indexes for table `tbl_vt_hotspots`
--
ALTER TABLE `tbl_vt_hotspots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `three60_id` (`three60_id`);

--
-- Indexes for table `tbl_vt_virtual_tour`
--
ALTER TABLE `tbl_vt_virtual_tour`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_applicants`
--
ALTER TABLE `tbl_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_articles`
--
ALTER TABLE `tbl_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_blogcomment`
--
ALTER TABLE `tbl_blogcomment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_conbined_news`
--
ALTER TABLE `tbl_conbined_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_configs`
--
ALTER TABLE `tbl_configs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT for table `tbl_download`
--
ALTER TABLE `tbl_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_galleries`
--
ALTER TABLE `tbl_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_gallery_images`
--
ALTER TABLE `tbl_gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tbl_group_type`
--
ALTER TABLE `tbl_group_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_itinerary`
--
ALTER TABLE `tbl_itinerary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_logs`
--
ALTER TABLE `tbl_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1724;

--
-- AUTO_INCREMENT for table `tbl_logs_action`
--
ALTER TABLE `tbl_logs_action`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mainservices`
--
ALTER TABLE `tbl_mainservices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_metadata`
--
ALTER TABLE `tbl_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_modules`
--
ALTER TABLE `tbl_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `tbl_nearby`
--
ALTER TABLE `tbl_nearby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_offers`
--
ALTER TABLE `tbl_offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_ota`
--
ALTER TABLE `tbl_ota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_package`
--
ALTER TABLE `tbl_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_package_sub`
--
ALTER TABLE `tbl_package_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_popup`
--
ALTER TABLE `tbl_popup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_room_price`
--
ALTER TABLE `tbl_room_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_slideshow`
--
ALTER TABLE `tbl_slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `tbl_slideshows_withouttlist`
--
ALTER TABLE `tbl_slideshows_withouttlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_social_networking`
--
ALTER TABLE `tbl_social_networking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_subpackage_images`
--
ALTER TABLE `tbl_subpackage_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;

--
-- AUTO_INCREMENT for table `tbl_subscribers`
--
ALTER TABLE `tbl_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vacency`
--
ALTER TABLE `tbl_vacency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_vt_360_images`
--
ALTER TABLE `tbl_vt_360_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_vt_hotspots`
--
ALTER TABLE `tbl_vt_hotspots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `tbl_vt_virtual_tour`
--
ALTER TABLE `tbl_vt_virtual_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_vt_360_images`
--
ALTER TABLE `tbl_vt_360_images`
  ADD CONSTRAINT `tbl_vt_360_images_ibfk_1` FOREIGN KEY (`virtual_tour_id`) REFERENCES `tbl_vt_virtual_tour` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_vt_hotspots`
--
ALTER TABLE `tbl_vt_hotspots`
  ADD CONSTRAINT `tbl_vt_hotspots_ibfk_1` FOREIGN KEY (`three60_id`) REFERENCES `tbl_vt_360_images` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
