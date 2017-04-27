/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.6.20 : Database - saldo
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `deposit` */

CREATE TABLE `deposit` (
  `ID` int(1) NOT NULL AUTO_INCREMENT,
  `DEPO` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `deposit` */

insert  into `deposit`(`ID`,`DEPO`) values (1,1193000);

/*Table structure for table `saldo_gh` */

CREATE TABLE `saldo_gh` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TGL_ORDER` text,
  `ITEM` varchar(200) DEFAULT NULL,
  `HARGA` int(20) DEFAULT NULL,
  `ONGKIR` int(20) DEFAULT NULL,
  `TOTAL` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `saldo_gh` */

insert  into `saldo_gh`(`ID`,`TGL_ORDER`,`ITEM`,`HARGA`,`ONGKIR`,`TOTAL`) values (33,'2017-1-11 9:29','barang1',90000,8000,98000),(34,'2017-1-11 9:37','barang2',76000,9000,85000),(35,'2017-1-24 10:43','barang 3',80000,20000,100000);

/*Table structure for table `saldo_history` */

CREATE TABLE `saldo_history` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TGL_ORDER` text,
  `ITEM` varchar(200) DEFAULT NULL,
  `HARGA` int(20) DEFAULT NULL,
  `ONGKIR` int(20) DEFAULT NULL,
  `TOTAL` int(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `saldo_history` */

insert  into `saldo_history`(`ID`,`TGL_ORDER`,`ITEM`,`HARGA`,`ONGKIR`,`TOTAL`) values (2,'2017-1-11 8:50','barang1',50000,6000,56000),(3,'2017-1-11 8:57','barang 3',90000,3000,93000),(4,'2017-1-11 9:13','56000',45000,8000,53000),(5,'2017-1-11 9:29','barang1',90000,8000,98000),(6,'2017-1-11 9:37','barang2',76000,9000,85000),(7,'2017-1-24 10:43','barang 3',80000,20000,100000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
