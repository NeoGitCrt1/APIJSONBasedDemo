-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: apijson.cn    Database: sys
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `apijson_privacy`
--

DROP TABLE IF EXISTS `apijson_privacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apijson_privacy` (
  `id` bigint(15) NOT NULL COMMENT '唯一标识',
  `certified` tinyint(2) NOT NULL DEFAULT '0' COMMENT '已认证',
  `phone` bigint(11) NOT NULL COMMENT '手机号，仅支持 11 位数的。不支持 +86 这种国家地区开头的。如果要支持就改为 VARCHAR(14)',
  `balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `_password` varchar(20) NOT NULL COMMENT '登录密码',
  `_payPassword` int(6) NOT NULL DEFAULT '123456' COMMENT '支付密码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户隐私信息表。\n对安全要求高，不想泄漏真实名称。对外名称为 Privacy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apijson_privacy`
--

LOCK TABLES `apijson_privacy` WRITE;
/*!40000 ALTER TABLE `apijson_privacy` DISABLE KEYS */;
INSERT INTO `apijson_privacy` VALUES (38710,1,13000038710,33376.00,'666666',123456),(70793,0,13000070793,56000.00,'apijson',123456),(82001,1,13000082001,94976.33,'123456',123456),(82002,1,13000082002,6917.38,'123456',123456),(82003,1,13000082003,6900.20,'123456',123456),(82004,0,13000082004,2000.00,'123456',123456),(82005,0,13000082005,1923.00,'123456',123456),(82006,0,13000082006,2000.00,'123456',123456),(82009,0,13000082009,2000.00,'123456',123456),(82012,0,13000082012,0.00,'123456',123456),(82020,0,12345678900,0.00,'123456',123456),(82021,0,12345678901,0.00,'123456',123456),(82022,0,12345678902,0.00,'123456',123456),(82023,0,12345678903,0.00,'123456',123456),(82024,0,12345678904,0.00,'123456',123456),(82025,0,12345678905,0.00,'123456',123456),(82026,0,12345678906,0.00,'123456',123456),(82027,0,12345678907,0.00,'123456',123456),(82028,0,12345678908,0.00,'123456',123456),(82029,0,12345678909,0.00,'123456',123456),(82030,0,12345678910,0.00,'123456',123456),(82031,0,12345678911,0.00,'123456',123456),(82032,0,12345678912,0.00,'123456',123456),(82033,0,12345678913,0.00,'123456',123456),(82034,0,12345678914,0.00,'123456',123456),(82035,0,12345678915,0.00,'123456',123456),(82036,0,12345678916,0.00,'123456',123456),(82037,0,12345678917,0.00,'123456',123456),(82038,0,12345678918,0.00,'123456',123456),(82039,0,12345678919,0.00,'123456',123456),(82040,0,13000082019,0.00,'123456',123456),(82041,0,13000082015,0.00,'123456',123456),(82042,0,13000082016,0.00,'123456',123456),(82043,0,13000082017,0.00,'123456',123456),(82044,0,13000082018,0.00,'123456',123456),(82045,0,13000082020,0.00,'123456',123456),(82046,0,13000082010,0.00,'123456',123456),(82047,0,13000082021,0.00,'123456',123456),(82048,0,13000038711,0.00,'123456',123456),(82049,0,13000038712,0.00,'123456',123456),(82050,0,13000038713,0.00,'123456',123456),(82051,0,13000038714,0.00,'123456',123456),(82052,0,13000038715,0.00,'123456',123456),(82053,0,13000038720,0.00,'123456',123456),(82054,0,13000038721,0.00,'123456',123456),(82055,0,13000082030,0.00,'123456',123456),(82056,0,13000082040,0.00,'123456',123456),(82057,0,13000038730,0.00,'123456',123456),(82058,0,13000038750,0.00,'123456',123456),(82059,0,13000082033,0.00,'123456',123456),(82060,0,13000082050,0.00,'123456',123456),(90814,1,13000090814,0.00,'123456',123456),(93793,1,13000093793,3000.00,'apijson',123456),(93794,0,99999999999,0.00,'123456',123456),(1490109742863,0,13000082100,0.00,'123456',123456),(1490109845208,0,13000082101,0.00,'123456',123456),(1490420651686,0,13000038716,0.00,'123456',123456),(1490427139175,0,13000038717,0.00,'123456',123456),(1490427577823,0,13000082102,0.00,'123456',123456),(1490584952968,0,13000038790,0.00,'123456',123456),(1490973670928,0,13000082051,0.00,'123456',123456),(1492936169722,0,13000093794,0.00,'123456',123456),(1493480142628,0,13000038888,0.00,'123456',123456),(1493747512860,0,13000038777,0.00,'123456',123456),(1493747777770,0,13000038778,0.00,'123456',123456),(1493748594003,0,13000038779,0.00,'123456',123456),(1493748615711,0,13000038780,0.00,'123456',123456),(1493749090643,0,13000038781,0.00,'123456',123456),(1493836043151,0,13000038999,0.00,'123456',123456),(1493883110132,0,13000039999,0.00,'123456',123456),(1493890214167,0,13000031000,0.00,'123456',123456),(1493890303473,0,13000031001,0.00,'123456',123456),(1493890303474,0,13000088888,0.00,'123456',123456),(1497792972314,0,13000082111,0.00,'654321',123456),(1499057230629,0,13000082011,0.00,'123456',123456),(1500825221910,0,13000099999,0.00,'123456',123456),(1502639062900,0,13000082222,0.00,'123456',123456),(1502639424119,0,13000082333,0.00,'12345678',123456),(1507220582167,0,13000011111,0.00,'123456',123456),(1508072071492,0,13000071492,0.00,'123456',123456),(1508072105320,0,13000082008,0.00,'123456',123456),(1508072160401,0,13000082007,0.00,'123456',123456),(1508072202871,0,13000082031,0.00,'123456',123456),(1510495628760,0,13000082000,0.00,'123456',123456),(1511407581570,0,17610725819,0.00,'123123',123456),(1511761906715,0,13708222312,0.00,'123456',123456),(1511965911349,0,13000093333,0.00,'123456',123456),(1512387063078,0,15858585858,0.00,'123456',123456),(1512531601485,0,18210847727,0.00,'5816136',123456),(1514623064133,0,13000038725,0.00,'123456',123456),(1514625918255,0,13000038726,255.00,'123456',123456),(1514626163032,0,13000038727,4951.37,'123456',123456),(1514858422969,0,13000082041,164.00,'123456',123456),(1515565976140,0,15009257563,0.00,'qazwsx',123456),(1518218350585,0,18663689263,0.00,'cherish751220',123456),(1519778917280,0,15000536915,0.00,'123456',123456),(1520242280259,0,18917212395,0.00,'123456',123456),(1521274648008,0,18989491914,0.00,'123456',123456),(1521371722416,0,13000088889,0.00,'123456',123456),(1521374327542,0,13000056789,0.00,'123456',123456),(1523626157302,0,15603313259,0.00,'15603313259',123456),(1523935772553,0,15603313258,0.00,'15603313258',123456),(1524042900591,0,15222297100,0.00,'123456',123456),(1524298730523,0,17854217949,0.00,'123456',123456),(1524878698882,0,13917451840,0.00,'123456',123456),(1525677515673,0,13390935538,10000.00,'123456',123456),(1527495857924,0,13142033345,15.00,'qweasd',123456),(1527498229991,0,13142033342,0.00,'qweasd',123456),(1527821445610,0,13142033346,0.00,'qweasd',123456),(1528250827953,0,15122820115,0.00,'123456',123456),(1528254173621,0,15225556855,200.00,'lmt970208',123456),(1528255497767,0,15822798927,0.00,'111111',123456),(1528264711016,0,15620878773,0.00,'111111',123456),(1528339692804,0,15122541683,0.00,'568599',123456),(1528344980598,0,15188899797,0.00,'123456',123456),(1528356470041,0,15620878772,0.00,'111111',123456),(1531969715979,0,13800138000,10000.00,'123456',123456),(1532188114543,0,13977757845,20360.00,'123456',123456),(1532439021068,0,18779607703,0.00,'15879684798qq',123456),(1533835176109,0,13977757846,1700.00,'123456',123456),(1534926301956,0,17602120205,0.00,'123456',123456),(1538504264944,0,13000087654,0.00,'123456',123456),(1538504500574,0,13000087655,0.00,'123456',123456),(1538987952996,0,18662327672,0.00,'123456',123456),(1541583762603,0,18689846285,0.00,'jyt123456',123456),(1544276209348,0,13000087656,1050.00,'123456',123456),(1544503822963,0,13000082968,0.00,'123456',123456),(1545707526805,0,13533039558,0.00,'123456',123456),(1545895694424,0,13533039550,357.00,'123456',123456),(1547177436600,0,18980210241,0.00,'123456',123456),(1548068043688,0,17181595855,0.00,'0812563993gg',123456),(1553095415917,0,13185236871,0.00,'123456',123456),(1553527700480,0,13189758117,0.00,'3802489',123456),(1559129626356,0,13000000000,0.00,'123456',123456),(1560409157504,0,18030546471,0.00,'123456789',123456),(1561539257158,0,15870873323,0.00,'123qwe',123456),(1563605318975,0,13590330481,0.00,'123456',123456),(1570529238569,0,15669090286,0.00,'jiaojun2jj',123456),(1571629309520,0,17051059209,0.00,'123456',123456),(1592544225995,0,18979117764,0.00,'apijson1122',123456),(1594366766076,0,18861507756,0.00,'123456',123456),(1606355327749,0,15801485371,0.00,'23507209',123456),(1607327721514,0,13007730773,0.00,'aw07734',123456),(1612026209696,0,13000083333,0.00,'123456',123456);
/*!40000 ALTER TABLE `apijson_privacy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-31  1:15:57
