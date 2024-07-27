
create database online_transport_system;

use online_transport_system;

create table signup_tbl
(
Admin_Id int primary key auto_increment not null,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(50),
Pass varchar(8),
contact bigint(10)
);

create table user_signup_tbl

(
User_Id int primary key auto_increment not null,
First_Name varchar(50),
Last_Name varchar(50),
Email varchar(50),
Pass varchar(8),
contact bigint(10)
);

create table Branch_Manager
( 
Manager_Id int primary key auto_increment not null,
Manager_Name varchar(50),
Branch_Name varchar(50),
Address varchar(100),
Email varchar(50),
Contact bigint (10)
);


create table Driver_Registration
(
Driver_Id int primary key auto_increment not null,
Driver_Nameuser_signup_tblbookingdriver_registrationmanage_vehiclefeedback varchar(50),
Contact bigint(10),
Address varchar(100),
Experience varchar(100),
photo varchar(500),
Licence_No bigint(12)
);

create table Customer_Registration
(
Cust_Id int primary key auto_increment not null,
First_Name varchar(50),
Last_Name varchar(50),
Contact bigint(10),
Email varchar(50),
Address varchar(100)
);


create table Manage_Vehicle
(
Vehicle_No int primary key auto_increment not null,
Vehicle_Year int (9),
Vehicle_Color varchar(50),
Vehicle_Img varchar(500),
Booked_date date,
Model varchar (50),
Cust_Name varchar (50),
Driver_Name varchar (50),
Route varchar (50),
Driver_Contact bigint(10)
);

create table Transport_Info 
(
uni_Slip_No int primary key auto_increment not null,
Model varchar (20),
Vehicle_No int (9),
Units varchar(50),
Destination varchar (100),
Trip_Start_Date date,
Trip_End_Date date,
Driver_Name varchar (50),
Cust_Name varchar(50),
Cust_Address varchar(100),
Contact bigint (10),
Transport_Amount float(4)
);

create table Bookingcustomer_registration
(
Cust_Id int (9),
Cust_Name varchar(50),
Address varchar(100),
Contact bigint(10),
Vehicle_No int(9),
Units varchar (50)
);

create table Payment
(
payer_id int(9),
payer_name varchar(20),
email varchar(50),
card_no bigint(12),
Amount float(4,2),
cvv int(10)
);

create table Query_tbluser_signup_tbl 
(
Cust_Id int (9),
Cust_Name varchar(50),
Email varchar(50),
Contact bigint(10),
Quefeedback varchar (100)
);

create table Feedback
(
Cust_Id int(9),
Cust_Name varchar(50),
Email varchar(50),
Contact bigint(10),
Feedback varchar(100)
);

create table upi_payment
(
UPI_Id bigint(10),
amount float(4,2)
);

Drop database online_transport_system; 
Drop table payment;