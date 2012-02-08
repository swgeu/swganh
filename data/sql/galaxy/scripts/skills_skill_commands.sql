
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE TABLE IF NOT EXISTS `skills_skill_commands` (
  `skill_id` int(11) NOT NULL,
  `skill_command_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`,`skill_command_id`),
  KEY `IDX_B26E8E4F5585C142` (`skill_id`),
  KEY `IDX_B26E8E4F33E1689A` (`skill_command_id`),
  CONSTRAINT `FK_B26E8E4F33E1689A` FOREIGN KEY (`skill_command_id`) REFERENCES `skill_command` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_B26E8E4F5585C142` FOREIGN KEY (`skill_id`) REFERENCES `skill` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DELETE FROM `skills_skill_commands`;
    
/*!40000 ALTER TABLE `skills_skill_commands` DISABLE KEYS */;
INSERT INTO `skills_skill_commands` (`skill_id`,`skill_command_id`) VALUES 
 (11,1),
 (11,2),
 (11,3),
 (11,4),
 (11,5),
 (11,6),
 (11,7),
 (11,8),
 (11,9),
 (11,10),
 (11,11),
 (11,12),
 (11,13),
 (11,14),
 (11,15),
 (11,16),
 (11,17),
 (11,18),
 (11,19),
 (11,20),
 (12,21),
 (12,22),
 (12,23),
 (12,24),
 (12,25),
 (13,26),
 (14,27),
 (15,28),
 (16,29),
 (17,30),
 (17,31),
 (17,32),
 (18,33),
 (18,34),
 (19,35),
 (19,36),
 (19,37),
 (20,38),
 (20,39),
 (20,40),
 (21,41),
 (21,42),
 (22,43),
 (22,44),
 (23,45),
 (23,46),
 (24,47),
 (24,48),
 (25,49),
 (26,50),
 (27,51),
 (28,52),
 (31,53),
 (31,54),
 (32,55),
 (33,56),
 (34,57),
 (34,58),
 (35,59),
 (36,60),
 (37,61),
 (38,62),
 (39,63),
 (40,64),
 (41,65),
 (42,66),
 (43,67),
 (44,68),
 (45,69),
 (45,70),
 (46,71),
 (47,72),
 (48,73),
 (51,74),
 (51,75),
 (51,76),
 (51,77),
 (51,78),
 (51,79),
 (51,80),
 (52,81),
 (53,82),
 (54,83),
 (54,84),
 (55,85),
 (56,86),
 (56,87),
 (57,88),
 (58,89),
 (58,90),
 (59,91),
 (60,92),
 (61,93),
 (62,94),
 (63,95),
 (64,96),
 (65,97),
 (66,98),
 (67,99),
 (68,100),
 (71,101),
 (71,102),
 (688,102),
 (71,103),
 (688,103),
 (72,104),
 (72,105),
 (73,106),
 (74,107),
 (75,108),
 (76,109),
 (77,110),
 (78,111),
 (79,112),
 (80,113),
 (81,114),
 (81,115),
 (82,116),
 (82,117),
 (83,118),
 (84,119),
 (85,120),
 (86,121),
 (87,122),
 (88,123),
 (91,124),
 (91,125),
 (91,126),
 (91,127),
 (91,128),
 (91,129),
 (91,130),
 (91,131),
 (91,132),
 (91,133),
 (91,134),
 (92,135),
 (92,136),
 (92,137),
 (92,138),
 (92,139),
 (92,140),
 (92,141),
 (92,142),
 (93,143),
 (93,144),
 (94,145),
 (94,146),
 (95,147),
 (95,148),
 (96,149),
 (96,150),
 (97,151),
 (97,152),
 (97,153),
 (97,154),
 (97,155),
 (98,156),
 (98,157),
 (98,158),
 (99,159),
 (99,160),
 (99,161),
 (100,162),
 (100,163),
 (100,164),
 (101,165),
 (101,166),
 (101,167),
 (102,168),
 (102,169),
 (102,170),
 (103,171),
 (103,172),
 (103,173),
 (104,174),
 (104,175),
 (104,176),
 (105,177),
 (105,178),
 (105,179),
 (105,180),
 (106,181),
 (106,182),
 (106,183),
 (107,184),
 (107,185),
 (107,186),
 (108,187),
 (108,188),
 (110,189),
 (110,190),
 (110,191),
 (110,192),
 (110,193),
 (110,194),
 (110,195),
 (111,196),
 (111,197),
 (112,198),
 (112,199),
 (112,200),
 (112,201),
 (113,202),
 (113,203),
 (113,204),
 (113,205),
 (114,206),
 (114,207),
 (114,208),
 (115,209),
 (115,210),
 (115,211),
 (115,212),
 (116,213),
 (116,214),
 (116,215),
 (116,216),
 (117,217),
 (117,218),
 (117,219),
 (117,220),
 (117,221),
 (117,222),
 (118,223),
 (118,224),
 (118,225),
 (118,226),
 (119,227),
 (119,228),
 (119,229),
 (119,230),
 (119,231),
 (120,232),
 (120,233),
 (120,234),
 (121,235),
 (121,236),
 (121,237),
 (122,238),
 (122,239),
 (122,240),
 (123,241),
 (123,242),
 (123,243),
 (123,244),
 (124,245),
 (124,246),
 (124,247),
 (125,248),
 (125,249),
 (125,250),
 (125,251),
 (126,252),
 (126,253),
 (127,254),
 (127,255),
 (129,256),
 (129,257),
 (129,258),
 (130,259),
 (130,260),
 (130,261),
 (149,261),
 (167,261),
 (529,261),
 (548,261),
 (131,262),
 (131,263),
 (132,264),
 (132,265),
 (133,266),
 (133,267),
 (134,268),
 (134,269),
 (135,270),
 (135,271),
 (135,272),
 (158,272),
 (177,272),
 (519,272),
 (530,272),
 (549,272),
 (136,273),
 (137,274),
 (137,275),
 (137,276),
 (160,276),
 (179,276),
 (532,276),
 (551,276),
 (138,277),
 (139,278),
 (139,279),
 (140,280),
 (140,281),
 (141,282),
 (141,283),
 (142,284),
 (142,285),
 (143,286),
 (143,287),
 (144,288),
 (145,289),
 (145,290),
 (146,291),
 (148,292),
 (148,293),
 (148,294),
 (148,295),
 (149,296),
 (149,297),
 (149,298),
 (150,299),
 (150,300),
 (151,301),
 (152,302),
 (152,303),
 (153,304),
 (153,305),
 (154,306),
 (155,307),
 (156,308),
 (157,309),
 (158,310),
 (158,311),
 (159,312),
 (159,313),
 (160,314),
 (160,315),
 (161,316),
 (161,317),
 (162,318),
 (162,319),
 (163,320),
 (164,321),
 (164,322),
 (165,323),
 (167,324),
 (167,325),
 (167,326),
 (167,327),
 (167,328),
 (169,330),
 (169,331),
 (170,332),
 (170,333),
 (171,334),
 (171,335),
 (172,336),
 (172,337),
 (173,338),
 (173,339),
 (174,340),
 (175,341),
 (175,342),
 (176,343),
 (177,344),
 (177,345),
 (178,346),
 (179,347),
 (179,348),
 (180,349),
 (180,350),
 (181,351),
 (181,352),
 (182,353),
 (182,354),
 (183,355),
 (183,356),
 (184,357),
 (184,358),
 (186,359),
 (186,360),
 (186,361),
 (186,362),
 (187,363),
 (187,364),
 (187,365),
 (206,365),
 (225,365),
 (244,365),
 (188,366),
 (189,367),
 (189,368),
 (190,369),
 (191,370),
 (191,371),
 (192,372),
 (192,373),
 (192,374),
 (215,374),
 (234,374),
 (253,374),
 (521,374),
 (193,375),
 (194,376),
 (194,377),
 (217,377),
 (236,377),
 (255,377),
 (195,378),
 (195,379),
 (196,380),
 (196,381),
 (197,382),
 (197,383),
 (198,384),
 (198,385),
 (199,386),
 (199,387),
 (200,388),
 (200,389),
 (201,390),
 (201,391),
 (202,392),
 (203,393),
 (203,394),
 (205,395),
 (205,396),
 (205,397),
 (206,398),
 (206,399),
 (207,400),
 (207,401),
 (208,402),
 (209,403),
 (209,404),
 (210,405),
 (210,406),
 (211,407),
 (211,408),
 (212,409),
 (213,410),
 (213,411),
 (214,412),
 (214,413),
 (215,414),
 (215,415),
 (216,416),
 (217,417),
 (217,418),
 (218,419),
 (219,420),
 (219,421),
 (220,422),
 (221,423),
 (221,424),
 (222,425),
 (224,426),
 (224,427),
 (224,428),
 (225,429),
 (225,430),
 (226,431),
 (226,432),
 (227,433),
 (227,434),
 (228,435),
 (229,436),
 (229,437),
 (230,438),
 (230,439),
 (231,440),
 (232,441),
 (234,442),
 (236,443),
 (238,444),
 (240,445),
 (240,446),
 (243,447),
 (243,448),
 (243,449),
 (244,450),
 (244,451),
 (245,452),
 (245,453),
 (246,454),
 (247,455),
 (247,456),
 (248,457),
 (249,458),
 (250,459),
 (251,460),
 (252,461),
 (253,462),
 (255,463),
 (257,464),
 (259,465),
 (262,466),
 (262,467),
 (262,468),
 (281,468),
 (300,468),
 (263,469),
 (263,470),
 (263,471),
 (263,472),
 (282,472),
 (415,472),
 (263,473),
 (282,473),
 (264,474),
 (283,474),
 (264,475),
 (283,475),
 (264,476),
 (283,476),
 (265,477),
 (266,478),
 (272,479),
 (273,480),
 (274,481),
 (275,482),
 (275,483),
 (281,484),
 (282,485),
 (282,486),
 (284,487),
 (285,488),
 (291,489),
 (292,490),
 (293,491),
 (293,492),
 (294,493),
 (294,494),
 (300,495),
 (301,496),
 (567,496),
 (303,497),
 (304,498),
 (305,499),
 (307,500),
 (309,501),
 (319,502),
 (319,503),
 (321,504),
 (329,505),
 (330,506),
 (331,507),
 (332,508),
 (333,509),
 (338,510),
 (338,511),
 (338,512),
 (338,513),
 (339,514),
 (339,515),
 (342,516),
 (343,517),
 (344,518),
 (345,519),
 (346,520),
 (347,521),
 (348,522),
 (349,523),
 (350,524),
 (351,525),
 (352,526),
 (353,527),
 (354,528),
 (355,529),
 (357,530),
 (491,531),
 (497,531),
 (495,532),
 (496,533),
 (498,533),
 (499,534),
 (499,535),
 (509,536),
 (515,537),
 (516,538),
 (517,539),
 (518,540),
 (519,541),
 (520,542),
 (521,543),
 (522,544),
 (528,545),
 (528,546),
 (529,547),
 (529,548),
 (529,549),
 (530,550),
 (532,551),
 (534,552),
 (536,553),
 (537,554),
 (538,555),
 (539,556),
 (541,557),
 (542,558),
 (543,559),
 (545,560),
 (547,561),
 (547,562),
 (547,563),
 (547,564),
 (547,565),
 (548,566),
 (548,567),
 (548,568),
 (549,569),
 (550,570),
 (551,571),
 (552,572),
 (553,573),
 (554,574),
 (555,575),
 (557,576),
 (558,577),
 (560,578),
 (561,579),
 (562,580),
 (564,581),
 (566,582),
 (569,583),
 (575,584),
 (604,585),
 (610,586),
 (612,587),
 (614,588),
 (617,589),
 (618,590),
 (620,591),
 (623,592),
 (623,593),
 (623,594),
 (625,595),
 (626,596),
 (626,597),
 (627,598),
 (628,599),
 (629,600),
 (630,601),
 (630,602),
 (631,603),
 (632,604),
 (633,605),
 (634,606),
 (634,607),
 (635,608),
 (635,609),
 (636,610),
 (636,611),
 (637,612),
 (637,613),
 (638,614),
 (639,615),
 (639,616),
 (640,617),
 (640,618),
 (646,619),
 (649,620),
 (652,621),
 (655,622),
 (658,623),
 (661,624),
 (664,625),
 (667,626),
 (670,627),
 (673,628),
 (676,629),
 (677,629),
 (678,629),
 (679,629),
 (680,629),
 (681,629),
 (682,629),
 (683,629),
 (684,629),
 (685,629),
 (676,630),
 (677,630),
 (678,630),
 (679,630),
 (680,630),
 (681,630),
 (682,630),
 (683,630),
 (684,630),
 (685,630),
 (676,631),
 (677,631),
 (678,631),
 (679,631),
 (680,631),
 (681,631),
 (682,631),
 (683,631),
 (684,631),
 (685,631),
 (676,632),
 (677,632),
 (678,632),
 (679,632),
 (680,632),
 (681,632),
 (682,632),
 (683,632),
 (684,632),
 (685,632),
 (676,633),
 (677,633),
 (678,633),
 (679,633),
 (680,633),
 (681,633),
 (682,633),
 (683,633),
 (684,633),
 (685,633),
 (676,634),
 (677,634),
 (678,634),
 (679,634),
 (680,634),
 (681,634),
 (682,634),
 (683,634),
 (684,634),
 (685,634),
 (676,635),
 (677,635),
 (678,635),
 (679,635),
 (680,635),
 (681,635),
 (682,635),
 (683,635),
 (684,635),
 (685,635),
 (676,636),
 (677,636),
 (678,636),
 (679,636),
 (680,636),
 (681,636),
 (682,636),
 (683,636),
 (684,636),
 (685,636),
 (680,637),
 (682,638),
 (682,639),
 (683,640),
 (683,641),
 (685,642),
 (688,643),
 (875,643),
 (688,644),
 (906,644),
 (688,645),
 (689,646),
 (877,646),
 (689,647),
 (865,647),
 (689,648),
 (864,648),
 (689,649),
 (908,649),
 (689,650),
 (866,650),
 (690,651),
 (861,651),
 (691,652),
 (863,652),
 (692,653),
 (863,653),
 (693,654),
 (864,654),
 (694,655),
 (899,655),
 (694,656),
 (905,656),
 (695,657),
 (901,657),
 (695,658),
 (905,658),
 (696,659),
 (901,659),
 (696,660),
 (906,660),
 (697,661),
 (902,661),
 (702,662),
 (921,662),
 (703,663),
 (895,663),
 (704,664),
 (886,664),
 (705,665),
 (894,665),
 (707,666),
 (745,666),
 (910,666),
 (707,667),
 (745,667),
 (888,667),
 (707,668),
 (745,668),
 (861,668),
 (707,669),
 (745,669),
 (876,669),
 (707,670),
 (745,670),
 (707,671),
 (745,671),
 (915,671),
 (707,672),
 (745,672),
 (914,672),
 (708,673),
 (746,673),
 (870,673),
 (708,674),
 (746,674),
 (870,674),
 (708,675),
 (746,675),
 (868,675),
 (708,676),
 (746,676),
 (878,676),
 (709,677),
 (747,677),
 (867,677),
 (710,678),
 (748,678),
 (867,678),
 (711,679),
 (749,679),
 (868,679),
 (712,680),
 (750,680),
 (869,680),
 (713,681),
 (751,681),
 (903,681),
 (713,682),
 (751,682),
 (909,682),
 (713,683),
 (751,683),
 (907,683),
 (714,684),
 (752,684),
 (909,684),
 (714,685),
 (752,685),
 (903,685),
 (714,686),
 (752,686),
 (907,686),
 (715,687),
 (753,687),
 (903,687),
 (715,688),
 (753,688),
 (909,688),
 (715,689),
 (753,689),
 (908,689),
 (716,690),
 (754,690),
 (904,690),
 (716,691),
 (754,691),
 (912,691),
 (717,692),
 (774,692),
 (880,692),
 (718,693),
 (775,693),
 (887,693),
 (719,694),
 (776,694),
 (889,694),
 (720,695),
 (777,695),
 (881,695),
 (721,696),
 (759,696),
 (882,696),
 (722,697),
 (760,697),
 (897,697),
 (723,698),
 (761,698),
 (896,698),
 (724,699),
 (762,699),
 (884,699),
 (726,700),
 (764,700),
 (916,700),
 (726,701),
 (764,701),
 (913,701),
 (726,702),
 (764,702),
 (923,702),
 (726,703),
 (764,703),
 (890,703),
 (726,704),
 (764,704),
 (861,704),
 (726,705),
 (764,705),
 (726,706),
 (764,706),
 (871,706),
 (727,707),
 (765,707),
 (900,707),
 (727,708),
 (765,708),
 (874,708),
 (727,709),
 (765,709),
 (881,709),
 (728,710),
 (766,710),
 (871,710),
 (729,711),
 (767,711),
 (872,711),
 (730,712),
 (768,712),
 (872,712),
 (731,713),
 (769,713),
 (873,713),
 (732,714),
 (770,714),
 (911,714),
 (733,715),
 (771,715),
 (911,715),
 (734,716),
 (772,716),
 (911,716),
 (735,717),
 (773,717),
 (900,717),
 (735,718),
 (773,718),
 (912,718),
 (740,719),
 (778,719),
 (883,719),
 (741,720),
 (779,720),
 (742,721),
 (780,721),
 (885,721),
 (743,722),
 (781,722),
 (892,722),
 (861,723),
 (861,724),
 (861,725),
 (862,726),
 (862,727),
 (862,728),
 (862,729),
 (862,730),
 (862,731),
 (862,732),
 (864,733),
 (865,734),
 (866,735),
 (866,736),
 (866,737),
 (868,738),
 (869,739),
 (870,740),
 (870,741),
 (872,742),
 (873,743),
 (874,744),
 (874,745),
 (874,746),
 (881,747),
 (891,748),
 (893,749),
 (918,750),
 (919,751),
 (919,752),
 (920,753),
 (922,754),
 (924,755),
 (925,756),
 (926,757),
 (927,758),
 (927,759),
 (928,760),
 (929,761),
 (930,762),
 (931,763),
 (932,764),
 (933,765),
 (933,766),
 (934,767),
 (935,768),
 (935,769),
 (938,770),
 (986,771),
 (992,772),
 (993,773),
 (994,774),
 (995,775),
 (996,776),
 (997,777),
 (998,778),
 (999,779),
 (1000,780),
 (1001,781),
 (1002,782),
 (1003,783),
 (1004,784),
 (1005,785),
 (1006,786),
 (1007,787),
 (1008,788),
 (1009,789),
 (1012,790),
 (1012,791),
 (1012,792),
 (1031,792),
 (1050,792),
 (1012,793),
 (1031,793),
 (1050,793),
 (1012,794),
 (1031,794),
 (1050,794),
 (1013,795),
 (1013,796),
 (1013,797),
 (1013,798),
 (1032,798),
 (1051,798),
 (1013,799),
 (1032,799),
 (1051,799),
 (1013,800),
 (1032,800),
 (1051,800),
 (1013,801),
 (1013,802),
 (1013,803),
 (1032,803),
 (1051,803),
 (1014,804),
 (1014,805),
 (1015,806),
 (1015,807),
 (1016,808),
 (1016,809),
 (1017,810),
 (1017,811),
 (1018,812),
 (1037,812),
 (1056,812),
 (1018,813),
 (1037,813),
 (1056,813),
 (1019,814),
 (1038,814),
 (1057,814),
 (1019,815),
 (1038,815),
 (1057,815),
 (1020,816),
 (1039,816),
 (1058,816),
 (1020,817),
 (1039,817),
 (1058,817),
 (1021,818),
 (1040,818),
 (1059,818),
 (1022,819),
 (1062,819),
 (1022,820),
 (1023,821),
 (1023,822),
 (1024,823),
 (1024,824),
 (1025,825),
 (1025,826),
 (1026,827),
 (1026,828),
 (1026,829),
 (1026,830),
 (1026,831),
 (1026,832),
 (1026,833),
 (1045,833),
 (1064,833),
 (1027,834),
 (1027,835),
 (1027,836),
 (1027,837),
 (1027,838),
 (1027,839),
 (1046,839),
 (1065,839),
 (1028,840),
 (1028,841),
 (1028,842),
 (1028,843),
 (1028,844),
 (1028,845),
 (1047,845),
 (1066,845),
 (1029,846),
 (1029,847),
 (1029,848),
 (1029,849),
 (1029,850),
 (1029,851),
 (1048,851),
 (1067,851),
 (1029,852),
 (1029,853),
 (1031,854),
 (1031,855),
 (1032,856),
 (1032,857),
 (1032,858),
 (1032,859),
 (1033,860),
 (1033,861),
 (1034,862),
 (1034,863),
 (1035,864),
 (1035,865),
 (1035,866),
 (1036,867),
 (1036,868),
 (1036,869),
 (1041,870),
 (1042,871),
 (1043,872),
 (1043,873),
 (1044,874),
 (1045,875),
 (1045,876),
 (1045,877),
 (1045,878),
 (1045,879),
 (1045,880),
 (1045,881),
 (1046,882),
 (1046,883),
 (1046,884),
 (1046,885),
 (1046,886),
 (1047,887),
 (1047,888),
 (1047,889),
 (1047,890),
 (1047,891),
 (1048,892),
 (1048,893),
 (1048,894),
 (1048,895),
 (1048,896),
 (1050,897),
 (1050,898),
 (1051,899),
 (1051,900),
 (1051,901),
 (1051,902),
 (1051,903),
 (1052,904),
 (1052,905),
 (1053,906),
 (1053,907),
 (1053,908),
 (1054,909),
 (1054,910),
 (1055,911),
 (1055,912),
 (1060,913),
 (1061,914),
 (1062,915),
 (1063,916),
 (1064,917),
 (1064,918),
 (1064,919),
 (1064,920),
 (1064,921),
 (1064,922),
 (1065,923),
 (1065,924),
 (1065,925),
 (1065,926),
 (1066,927),
 (1066,928),
 (1066,929),
 (1066,930),
 (1067,931),
 (1067,932),
 (1067,933),
 (1067,934),
 (1068,935),
 (1068,936),
 (1068,937),
 (1068,938),
 (1068,939),
 (1068,940),
 (1068,941),
 (292,944),
 (281,945),
 (272,946),
 (273,947),
 (274,948),
 (275,949);
/*!40000 ALTER TABLE `skills_skill_commands` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
