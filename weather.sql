DROP TABLE IF EXISTS `w`;

CREATE TABLE `w` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `temp` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

LOCK TABLES `w` WRITE;

INSERT INTO `w` VALUES (1,'2020-05-15',20),(2,'2020-05-01',21),(3,'2020-05-26',23),(4,'2020-05-21',25),(5,'2020-05-22',27),(6,'2020-05-16',15),(7,'2020-05-30',19),(8,'2020-05-06',18),(9,'2020-05-05',17),(10,'2020-05-27',16),(11,'2020-05-14',17);

UNLOCK TABLES;


select * from w w1, w w2 where datediff(w1.date,w2.date)=1 and w1.temp>w2.temp;

/*
+----+------------+------+----+------------+------+
| id | date       | temp | id | date       | temp |
+----+------------+------+----+------------+------+
|  6 | 2020-05-16 |   25 |  1 | 2020-05-15 |   20 |
|  5 | 2020-05-22 |   27 |  4 | 2020-05-21 |   25 |
|  8 | 2020-05-06 |   18 |  9 | 2020-05-05 |   17 |
|  1 | 2020-05-15 |   20 | 11 | 2020-05-14 |   17 |
+----+------------+------+----+------------+------+
4 rows in set (0.00 sec)
*/
