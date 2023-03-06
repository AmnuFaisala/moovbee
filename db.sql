/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - moovbe
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`moovbe` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `moovbe`;

/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `bus_id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_model` varchar(255) DEFAULT NULL,
  `bus_name` varchar(255) DEFAULT NULL,
  `bus_number` varchar(255) DEFAULT NULL,
  `bus_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

insert  into `bus`(`bus_id`,`bus_model`,`bus_name`,`bus_number`,`bus_time`) values 
(1,'Swift Scania p-series','KSRTC','KL-14-A-5052','9.0 am'),
(2,'Swift Scania A-series','KSRTC','KL-14-A-5250','10.0 am'),
(3,'Swift Scania A-series','KSRTC',NULL,NULL);

/*Table structure for table `driver` */

DROP TABLE IF EXISTS `driver`;

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `bus_id` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `license_number` varchar(255) DEFAULT NULL,
  `driver_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`driver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `driver` */

insert  into `driver`(`driver_id`,`bus_id`,`driver_name`,`license_number`,`driver_phone`) values 
(1,NULL,'gghh','vbbnn','hhhj'),
(2,NULL,'meenu','lnh64578','9838272'),
(3,NULL,'ugjichi','igxiggixy','668657537'),
(4,NULL,'ghh',' v ','088'),
(6,NULL,'gg','vvv','96'),
(9,NULL,'vbh','vbb','999');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`user_name`,`password`) values 
(1,'admin_user','123admin789');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
