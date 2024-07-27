CREATE TABLE `booking` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Vehicle_No` varchar(20) DEFAULT NULL,
  `Units` varchar(50) DEFAULT NULL,
  `Driver_Id` int(10) DEFAULT NULL,
  `Driver_Name` varchar(45) DEFAULT NULL,
  `T_Bill` float DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `branch_manager` (
  `Manager_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Manager_Name` varchar(50) DEFAULT NULL,
  `Branch_Name` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Manager_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


CREATE TABLE `customer_registration` (
  `Cust_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Cust_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;


CREATE TABLE `driver_registration` (
  `Driver_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Experience` varchar(100) DEFAULT NULL,
  `photo` varchar(500) DEFAULT NULL,
  `Licence_No` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Driver_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;


CREATE TABLE `feedback` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Feedback` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `forgotpass` (
  `email` int(9) DEFAULT NULL,
  `pass` varchar(8) DEFAULT NULL,
  `npass` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `manage_vehicle` (
  `Vehicle_No` int(11) NOT NULL AUTO_INCREMENT,
  `Vehicle_Year` int(9) DEFAULT NULL,
  `Vehicle_Color` varchar(50) DEFAULT NULL,
  `Vehicle_Img` varchar(500) DEFAULT NULL,
  `Booked_date` date DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Route` varchar(50) DEFAULT NULL,
  `Driver_Contact` bigint(10) DEFAULT NULL,
  `Rate` int(11) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_No`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `payment` (
  `payer_id` int(9) DEFAULT NULL,
  `payer_name` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `card_no` bigint(12) DEFAULT NULL,
  `Amount` bigint(20) DEFAULT NULL,
  `cvv` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `query` (
  `Cust_Id` int(9) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Quefeedback` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `signup_tbl` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pass` varchar(8) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

CREATE TABLE `transport_info` (
  `uni_Slip_No` int(11) NOT NULL AUTO_INCREMENT,
  `Model` varchar(20) DEFAULT NULL,
  `Vehicle_No` varchar(20) DEFAULT NULL,
  `Units` varchar(50) DEFAULT NULL,
  `Destination` varchar(100) DEFAULT NULL,
  `Trip_Start_Date` date DEFAULT NULL,
  `Trip_End_Date` date DEFAULT NULL,
  `Driver_Name` varchar(50) DEFAULT NULL,
  `Cust_Name` varchar(50) DEFAULT NULL,
  `Cust_Address` varchar(100) DEFAULT NULL,
  `Contact` bigint(10) DEFAULT NULL,
  `Transport_Amount` float DEFAULT NULL,
  PRIMARY KEY (`uni_Slip_No`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `upi_payment` (
  `UPI_Id` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `user_signup_tbl` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Pass` varchar(8) DEFAULT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;








