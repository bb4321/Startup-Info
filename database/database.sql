
create database startup;

user startup;


CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  `qualification` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;




CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `gender` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
  `experience` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `pass` text,
  `email` text,
  `mobile` text,
  `addr` text,
  `dob` text,
  `field` text,
  `pin` text,
  `location` text,
  `imagess` longblob,
  `status` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;



CREATE TABLE `resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` text,
  `jobdes` text,
  `name` text,
  `email` text,
  `phone` text,
  `aresume` text,
  `status` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


CREATE TABLE `notification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
   `cname` text,
  `field` text,
  `jobdes` text,
  `email` text,
  `location` text,
  `lastdate` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

CREATE TABLE `apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` text,
  `jobdes` text,
  `field` text,
  `name` text,
  `email` text,
  `phone` text,
  `aresume` text,
  `status` text,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

