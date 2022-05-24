/*
SQLyog Ultimate v12.4.3 (64 bit)
MySQL - 10.4.22-MariaDB-log : Database - db_slider_puzzle
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_slider_puzzle` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `db_slider_puzzle`;

/*Table structure for table `tb_progres_3x3` */

DROP TABLE IF EXISTS `tb_progres_3x3`;

CREATE TABLE `tb_progres_3x3` (
  `id_user` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `button1` char(2) DEFAULT NULL,
  `button2` char(2) DEFAULT NULL,
  `button3` char(2) DEFAULT NULL,
  `button4` char(2) DEFAULT NULL,
  `button5` char(2) DEFAULT NULL,
  `button6` char(2) DEFAULT NULL,
  `button7` char(2) DEFAULT NULL,
  `button8` char(2) DEFAULT NULL,
  `button9` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  CONSTRAINT `3x3_user` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_progres_3x3` */

/*Table structure for table `tb_progres_4x4` */

DROP TABLE IF EXISTS `tb_progres_4x4`;

CREATE TABLE `tb_progres_4x4` (
  `id_user` int(11) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `button1` char(2) DEFAULT NULL,
  `button2` char(2) DEFAULT NULL,
  `button3` char(2) DEFAULT NULL,
  `button4` char(2) DEFAULT NULL,
  `button5` char(2) DEFAULT NULL,
  `button6` char(2) DEFAULT NULL,
  `button7` char(2) DEFAULT NULL,
  `button8` char(2) DEFAULT NULL,
  `button9` char(2) DEFAULT NULL,
  `button10` char(2) DEFAULT NULL,
  `button11` char(2) DEFAULT NULL,
  `button12` char(2) DEFAULT NULL,
  `button13` char(2) DEFAULT NULL,
  `button14` char(2) DEFAULT NULL,
  `button15` char(2) DEFAULT NULL,
  `button16` char(2) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  CONSTRAINT `4x4_user` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_progres_4x4` */

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) DEFAULT NULL,
  `username_user` varchar(255) DEFAULT NULL,
  `password_user` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tb_user` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
