CREATE TABLE `customer` (
  `customer ID` int(11) NOT NULL,
  `First Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Date of Birth` date DEFAULT NULL,
  `Profile created date and time` datetime DEFAULT NULL,
  PRIMARY KEY (`customer ID`),
  CONSTRAINT `order number` FOREIGN KEY (`customer ID`) REFERENCES `order` (`Order number`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `adress` (
  `Street address` blob,
  `Apartment number` int(11) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `Zip` char(1) DEFAULT NULL,
  `customer ID` int(11) DEFAULT NULL,
  KEY `customer ID_idx` (`customer ID`),
  CONSTRAINT `customer ID` FOREIGN KEY (`customer ID`) REFERENCES `customer` (`customer ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `order` (
  `Order number` int(11) NOT NULL,
  `Order placed date and time` datetime DEFAULT NULL,
  `customer ID` int(11) DEFAULT NULL,
  `product ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Order number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `product` (
  `product ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Current price` float DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Created on date and time` datetime DEFAULT NULL,
  `Update on date and time` datetime DEFAULT NULL,
  `order number` int(11) DEFAULT NULL,
  PRIMARY KEY (`product ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `order_details` (
  `quantity` varchar(45) DEFAULT NULL,
  `price per quantity` double DEFAULT NULL,
  `order number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
