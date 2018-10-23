-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2018 at 09:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

-- ------- Only execute the statements without sql comments (non-commented) ---------------


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `LRTs_Apps`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `participants_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `exam_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--


-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `id` int(11) NOT NULL,
  `word` text CHARACTER SET utf8 NOT NULL,
  `category` char(1) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET= utf8;

--
-- Dumping data for table `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `participants`
--

CREATE TABLE `participants` (
  `id` int(11) NOT NULL,
  `experience` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `current_occupation` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `org/univ` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `day_birth` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `participants`
--

-- Not needed: It is DOONE above
-- ALTER TABLE `participants ` CHANGE `linked-in` `age` varchar(50) NOT NULL;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `answers`
  ADD PRIMARY KEY (`participants_id`);

--
-- Indexes for table `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT for table `participants`
--
ALTER TABLE `participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


--- --- Alters by Osama --- ---
ALTER TABLE exam ADD test tinyint(2) NOT NULL;

ALTER TABLE `answers` ADD `words_correct` SMALLINT(2) NOT NULL ;

ALTER TABLE `answers` ADD `nw_correct` SMALLINT(2) NOT NULL ;

ALTER TABLE `answers` ADD `score` DOUBLE(3,3) NOT NULL ;
--- --- End of alters  By Osama --- ---


-- -- -- -- ***************** The inserts for test #3 	  *****************
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('121', 'يُكَفِي', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('122', 'سَّلامَة', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('123', 'وَقَان', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('124', 'قُتِلِ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('125', 'عَكَسَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('126', 'مَعْكُوش', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('127', 'عَزِيزٌ', 'w', '', '3'); 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('128', 'أُخْ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('129', 'إحْتِذَاَك', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('130', 'نَشَرَ', 'w', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('131', 'عَدَمَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('132', 'خَسْمِیَة', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('133', 'ذَّات', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('134', 'عانَى', 'w', '', '3'); 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('135', 'مُفَاوَكَة', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('136', 'يَعْنِّي', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('137', 'أَسْنُورِیَة', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('138', 'زِوَاءْ', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('139', 'عُلِمَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('140', 'قُوَّة', 'w', '', '3'); 

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('141', 'مَرْمُوسَة', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('142', 'صَفِّ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('143', 'وُجِّهَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('144', 'رَفَخ', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('145', 'طُلِبَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('146', 'عُنْصُرُ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('147', 'تَخَمِیف', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('148', 'خَرُوجُ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('149', 'مَسْئولِيَّة', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('150', 'غَسْغَسَة', 'n', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('151', 'يَتَعَلَّقُ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('152', 'قَفْوَت', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('153', 'سَلَّطَة', 'w', '', '3'); 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('154', 'بِشَادّ', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('155', 'هَّمَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('156', 'طَلَّیثْ', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('157', 'فَضَّلَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('158', 'صَعَّبَ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('159', 'فَكَّرْ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('160', 'عَافِل', 'n', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('161', 'إضافَةً', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('162', 'نُدْقَة', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('163', 'قَدَرة', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('164', 'رُظورْ', 'n', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('165', 'شَبَكَةِ', 'w', '', '3');

-- ==================== To make the order as in ACLing 2017 paper ==================== 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('166', 'فَنَّانُ', 'w', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('167', 'یَحْشَجْ', 'n', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('168', 'إِذْ', 'w', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('169', 'أَكْثَر', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('170', 'بَيَانٌ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('171', 'يَجْعَل', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('172', 'مُدَّة', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('173', 'تَحْدِيد', 'w', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('174', 'إسْتَلْمَج', 'n', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('175', 'أَسَاسِيٌّ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('176', 'وَحَّدْ', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('177', 'مُحاولةً', 'w', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('178', 'آجِّیف', 'n', '', '3');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('179', 'إحْتِلال', 'w', '', '3');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('180', 'مَدْيَنة', 'w', '', '3');

------ §§§§§§§§§§§§§§§§§§§§§§§§§§
UPDATE `exam` SET `word` = 'يُكَفِي' WHERE `exam`.`id` = 121;
UPDATE `exam` SET `word` = 'سَّلامَة' WHERE `exam`.`id` = 122;
UPDATE `exam` SET `word` = 'عَزِيزٌ' WHERE `exam`.`id` = 127;

UPDATE `exam` SET `word` = 'ذَّات' WHERE `exam`.`id` = 133;
UPDATE `exam` SET `word` = 'عانَى' WHERE `exam`.`id` = 134;
UPDATE `exam` SET `word` = 'يَعْنِّي' WHERE `exam`.`id` = 136;

UPDATE `exam` SET `word` = 'قُوَّةُ' WHERE `exam`.`id` = 140;
UPDATE `exam` SET `word` = 'خَرُوجُ' WHERE `exam`.`id` = 148;
UPDATE `exam` SET `word` = 'مَسْئولِيَّة' WHERE `exam`.`id` = 149;

UPDATE `exam` SET `word` = 'سَلَّطَة' WHERE `exam`.`id` = 153;
UPDATE `exam` SET `word` = 'إضافَةً' WHERE `exam`.`id` = 161;

UPDATE `exam` SET `word` = 'فَنَّانُ' WHERE `exam`.`id` = 166;

UPDATE `exam` SET `word` = 'بَيَانٌ' WHERE `exam`.`id` = 170;

UPDATE `exam` SET `word` = 'مِدَة' WHERE `exam`.`id` = 172;

UPDATE `exam` SET `word` = 'أَسَاسِيٌّ' WHERE `exam`.`id` = 175;

UPDATE `exam` SET `word` = 'مُحاولةً' WHERE `exam`.`id` = 177;

UPDATE `exam` SET `word` = 'إحْتِلالٌ' WHERE `exam`.`id` = 179;

UPDATE `exam` SET `word` = 'مَدْيَنة' WHERE `exam`.`id` = 180;

-- Here
UPDATE `exam` SET `word` = 'إِخُّ' WHERE `exam`.`id` = 128;
UPDATE `exam` SET `word` = 'قِدْرَة' WHERE `exam`.`id` = 163;
UPDATE `exam` SET `word` = 'أذٍ' WHERE `exam`.`id` = 168;
UPDATE `exam` SET `word` = 'أَكْثِر' WHERE `exam`.`id` = 169;
UPDATE `exam` SET `word` = 'وَحَّدَ' WHERE `exam`.`id` = 176;

-- ================ Arabic Teacher Review =============
UPDATE `exam` SET `word` = 'قُتِلَ' WHERE `exam`.`id` = 124;
UPDATE `exam` SET `word` = 'سَلَطَة' WHERE `exam`.`id` = 153;
UPDATE `exam` SET `word` = 'هَمَّ' WHERE `exam`.`id` = 155;
UPDATE `exam` SET `word` = 'قَدَرة' WHERE `exam`.`id` = 163;
-- ================ Passive Voice =============
UPDATE `exam` SET `word` = 'يُعْنَى' WHERE `exam`.`id` = 136;
-- -- -- -- ***************** End of inserts for test #3  *****************


-- -- -- -- +++++++++++++++++++ The inserts for test #2
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('61', 'يَكْفِي', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('62', 'سَلامَة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('63', 'وَقَان', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('64', 'قَتَلَ', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('65', 'عَكَسْ', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('66', 'مَعْكُوش', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('67', 'عَزِيز', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('68', 'أخ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('69', 'إحْتِذَاَك', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('70', 'نَشْر', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('71', 'عَدَم', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('72', 'خَسْمِیَة', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('73', 'ذَاتْ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('74', 'عَانَى', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('75', 'مُفَاوَكَة', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('76', 'يَعْنِي', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('77', 'أَسْنُورِیَة', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('78', 'زِوَاءْ', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('79', 'عِلْم', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('80', 'قُوَّة', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('81', 'مَرْمُوسَة', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('82', 'صَفّْ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('83', 'وَجَّهَ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('84', 'رَفَخ', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('85', 'طَلَب', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('86', 'عُنْصُر', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('87', 'تَخَمِیف', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('88', 'خُروُج', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('89', 'مَسْؤُولِيَّة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('90', 'غَسْغَسَة', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('91', 'يَتَعَلَّق', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('92', 'قَفْوَت', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('93', 'سُلْطَة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('94', 'بِشَادّ', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('95', 'هُمْ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('96', 'طَلَّیثْ', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('97', 'فَضْل', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('98', 'صَعْب', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('99', 'فِكْر', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('100', 'عَافِل', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('101', 'إِضَافَة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('102', 'نُدْقَة', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('103', 'قُدْرَة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('104', 'رُظورْ', 'n', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('105', 'شَبَكَة', 'w', '', '2');

-- ==================== To make the order as in ACLing 2017 paper ==================== 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('106', 'فَنّان', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('107', 'یَحْشَجْ', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('108', 'إِذْ', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('109', 'أَكْثَر', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('110', 'بَيَان', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('111', 'يَجْعَل', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('112', 'مُدَّة', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('113', 'تَحْدِيد', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('114', 'إسْتَلْمَج', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('115', 'أَسَاسِيّ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('116', 'وَحَّدْ', 'w', '', '2');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('117', 'مُحاوَلَة', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('118', 'آجِّیف', 'n', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('119', 'إحْتِلال', 'w', '', '2');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('120', 'مَدِينَة', 'w', '', '2');

---- §§§§§§§§§§§§§§§§§§§
UPDATE `exam` SET `word` = 'أَخْ' WHERE `exam`.`id` = 68;
UPDATE `exam` SET `word` = 'صَفْ' WHERE `exam`.`id` = 68;

-- -- -- -- ************** End of inserts for test #2 **************


-- -- -- -- The inserts for test 1
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('1', 'یكفي', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('2', 'سلامة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('3', 'وقان', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('4', 'قتل', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('5', 'عكس', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('6', 'معكوش', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('7', 'عزیز', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('8', 'أخ', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('9', 'إحتذاك', 'n', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('10', 'نشر', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('11', 'عدم', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('12', 'خسمیة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('13', 'ذات', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('14', 'عانى', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('15', 'مفاوكة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('16', 'یعني', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('17', 'أسنوریة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('18', 'زواء', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('19', 'علم', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('20', 'قوة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('21', 'مرموسة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('22', 'صفّ', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('23', 'وجه', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('24', 'رفخ', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('25', 'طلب', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('26', 'عنصر', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('27', 'تخمیف', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('28', 'خروج', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('29', 'مسؤولیة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('30', 'غسغسة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('31', 'یتعلق', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('32', 'قفوت', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('33', 'سلطة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('34', 'بشاد', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('35', 'هم', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('36', 'طلیث', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('37', 'فضل', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('38', 'صعب', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('39', 'فكر', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('40', 'عافل', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('41', 'إضافة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('42', 'ندقة', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('43', 'قدرة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('44', 'رظور', 'n', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('45', 'شبكة', 'w', '', '1');

-- ID changes start from here
-- ==================== To make the order as in ACLing 2017 paper ==================== 
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('46', 'فَنّان', 'w', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('47', 'یحشج', 'n', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('48', 'إذ', 'w', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('49', 'أكثر', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('50', 'بیان', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('51', 'یجعل', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('52', 'مدة', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('53', 'تحدید', 'w', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('54', 'إستلمج', 'n', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('55', 'أساسي', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('56', 'وحد', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('57', 'محاولة', 'w', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('58', 'آجیف', 'n', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('59', 'إحتلال', 'w', '', '1');
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('60', 'مدینة', 'w', '', '1');

-- #####################Delete All Wrong Orders###############
/*
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('46', 'فنان', 'w', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('47', 'یحشج', 'n', '', '1');

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('48', 'إذ', 'w', '', '1');


INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('49', 'أكثر', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('50', 'بیان', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('51', 'یجعل', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('52', 'مدة', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('53', 'تحدید', 'w', '', '1')

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('54', 'إستلمج', 'n', '', '1')

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('55', 'أساسي', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('56', 'وحد', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('57', 'محاولة', 'w', '', '1')

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('58', 'آجیف', 'n', '', '1')

INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('59', 'إحتلال', 'w', '', '1')
INSERT INTO `exam` (`id`, `word`, `category`, `level`, `test`) VALUES ('60', 'مدینة', 'w', '', '1')
*/

--- --- --- --- --- Update IDs for the first 9 stimuli, due to bug --- --- --- --- ---
UPDATE `exam` SET `id` = '1000' WHERE `exam`.`id` = 1;
UPDATE `exam` SET `id` = '2000' WHERE `exam`.`id` = 2;
UPDATE `exam` SET `id` = '3000' WHERE `exam`.`id` = 3;
UPDATE `exam` SET `id` = '4000' WHERE `exam`.`id` = 4;
UPDATE `exam` SET `id` = '5000' WHERE `exam`.`id` = 5;
UPDATE `exam` SET `id` = '6000' WHERE `exam`.`id` = 6;
UPDATE `exam` SET `id` = '7000' WHERE `exam`.`id` = 7;
UPDATE `exam` SET `id` = '8000' WHERE `exam`.`id` = 8;
UPDATE `exam` SET `id` = '9000' WHERE `exam`.`id` = 9;

--
UPDATE `exam` SET `word` = 'صف' WHERE `exam`.`id` = 22;
UPDATE `exam` SET `word` = 'فنان' WHERE `exam`.`id` = 46;
-- -- -- -- End of inserts for test 1

-- ================ ============= ============= Additional Review /Apply to Sever ============= ============= =============
UPDATE `exam` SET `word` = 'وَحِّدْ' WHERE `exam`.`id` = 116;

UPDATE `exam` SET `word` = 'يُكَّفِي' WHERE `exam`.`id` = 121;

UPDATE `exam` SET `word` = 'أَذٍ' WHERE `exam`.`id` = 168;

UPDATE `exam` SET `word` = 'وَحَّدَ' WHERE `exam`.`id` = 176;
-- ================