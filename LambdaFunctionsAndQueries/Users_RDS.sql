USE Fitness;

CREATE TABLE users
(
	Id int NOT NULL AUTO_INCREMENT,
    Username varchar(255) NOT NULL,
	LastName varchar(255) ,
    FirstName varchar(255) NOT NULL,
    DateOfBirth date,
    Phone_No varchar(25),
    Address varchar(255),
    Zipcode varchar(100),/*Specially kept Zipcode to find nearby Gyms*/
    Email_Id varchar(255),
    Pwd varchar(20),
    /*patient columns*/
    
    Weight float,
    Height float,
    Food_Preference varchar(1000), /* Veg, Non-Veg, VEGAN. DropDown Box*/
    Special_Preference varchar(1000),
    Goal_Weight float,
    Goal_Plan varchar(100), /* 4 week, 8 week, 12 week*/
    /*nutritionist columns*/
    
    average_fees float,
    self_description varchar(500), /*Nutrionist describes himself*/
    
    /*Active user*/
    user_status tinyint, /*1: Active, 2: Inactive*/
    user_type tinyint, /*1: Patient, 2: Nutritonist*/
    PRIMARY KEY (ID)
);

CREATE TABLE friends
(
	Userid int,
    Friendid int,
    Status tinyint,
    Friendship_Time datetime
);

CREATE TABLE chats
(
	Senderid int,
	Recieverid int,
    Chat_message varchar(255),
    Message_timestamp datetime
);

CREATE TABLE gym
(
	Gym_Name varchar(255),
    Address varchar(255),
    Zipcode varchar(100)
);

drop table nutrionist_client;

CREATE TABLE nutrionist_client
(
	nutritionist_id int,
    client_id int,
    status tinyint /*1: both have accepted, 2: Client has Proposed Interested, 3: Nutrionist has Proposed interest*/
);


SELECT * FROM users;
SELECT * FROM chats;
SELECT * FROM gym;
SELECT * FROM friends;
SELECT * FROM  nutrionist_client;