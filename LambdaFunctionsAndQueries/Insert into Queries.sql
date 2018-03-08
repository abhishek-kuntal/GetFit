/*New User*/

TRUNCATE TABLE users;
/*Patient*/
INSERT INTO `Fitness`.`users`
(`Username`,`LastName`,`FirstName`,`DateOfBirth`,`Phone_No`,`Address`,`Zipcode`,`Email_Id`,`Pwd`,`Weight`,`Height`,`Food_Preference`,
`Special_Preference`,`Goal_Weight`,`Goal_Plan`,`average_fees`,`self_description`,`user_status`,`user_type`)
VALUES
('preethi','sekaran','preethi','1992/02/12','3478192820','New Jersey','07305','prs123@nyu.edu','preethinyu','52','162.64','Non-Veg',
'Want to lose weight without letting go of non-veg','69','4-week Plan',NULL,NULL,'1','1');

INSERT INTO `Fitness`.`users`
(
`Username`,`LastName`,`FirstName`,`DateOfBirth`,`Phone_No`,`Address`,`Zipcode`,`Email_Id`,`Pwd`,`Weight`,`Height`,`Food_Preference`,
`Special_Preference`,`Goal_Weight`,`Goal_Plan`,`average_fees`,`self_description`,`user_status`,`user_type`)
VALUES
(
'prashant','patel','prashant','1992/02/12','3478192820','New Jersey','07305','pnp347@nyu.edu','prashantnyu','62','167.64','Veg',
'Want to increase weight without eating non-veg','69','4-week Plan',NULL,NULL,'1','1'
);



INSERT INTO `Fitness`.`users`
(
`Username`,`LastName`,`FirstName`,`DateOfBirth`,`Phone_No`,`Address`,`Zipcode`,`Email_Id`,`Pwd`,`Weight`,`Height`,`Food_Preference`,
`Special_Preference`,`Goal_Weight`,`Goal_Plan`,`average_fees`,`self_description`,`user_status`,`user_type`)
VALUES
(
'dsp372','patil','durvesh','1992/02/12','3478192820','Queens','11410','dsp372@nyu.edu','durveshnyu','81','162','Non-Veg',
'Want to decrease weight without doing lots of exercise. can diet.','69','12-Week Plan',NULL,NULL,'1','1'
);


/*Nutrionist*/

INSERT INTO `Fitness`.`users`
(
`Username`,`LastName`,`FirstName`,`DateOfBirth`,`Phone_No`,`Address`,`Zipcode`,`Email_Id`,`Pwd`,`Weight`,`Height`,`Food_Preference`,
`Special_Preference`,`Goal_Weight`,`Goal_Plan`,`average_fees`,`self_description`,`user_status`,`user_type`)
VALUES
(
'abhishekkuntal','sawant','abhishek','1992/02/12','3478192820','Queens','11410','ak1347@nyu.edu','abhisheknyu',NULL,NULL,NULL,
NULL,NULL,NULL,35,'The best f***ing nutritonist you will ever see','1','2'
);



select * from users;

/*Add Friends*/

TRUNCATE TABLE friends;

INSERT INTO `Fitness`.`friends`
(`Userid`,
`Friendid`,
`Status`,
`Friendship_Time`)
VALUES
(1,
2,
1,
NOW());


INSERT INTO `Fitness`.`friends`
(`Userid`,
`Friendid`,
`Status`,
`Friendship_Time`)
VALUES
(2,
4,
1,
NOW());



Truncate TABLE chats;

/*Chats*/
INSERT INTO `Fitness`.`chats`
(`Senderid`,
`Recieverid`,
`Chat_message`,
`Message_timestamp`)
VALUES
('1',
'2',
'I cant believe you also are on this app. Isnt this awesome??????? ',
NOW());

INSERT INTO `Fitness`.`chats`
(`Senderid`,
`Recieverid`,
`Chat_message`,
`Message_timestamp`)
VALUES
('2',
'4',
'I like this app a lot. What about you?',
NOW());


INSERT INTO `Fitness`.`chats`
(`Senderid`,
`Recieverid`,
`Chat_message`,
`Message_timestamp`)
VALUES
('4',
'2',
'Me too. Isnt this cool?',
NOW());


INSERT INTO `Fitness`.`chats`
(`Senderid`,
`Recieverid`,
`Chat_message`,
`Message_timestamp`)
VALUES
('3',
'2',
'Me too. Isnt this cool?',
NOW());



TRUNCATE TABLE gym;

/*Gym*/
INSERT INTO `Fitness`.`gym`
(`Gym_Name`,
`Address`,
`Zipcode`)
VALUES
('Fitness Planet',
'Jersey',
'07306');


INSERT INTO `Fitness`.`gym`
(`Gym_Name`,
`Address`,
`Zipcode`)
VALUES
('Fitness Daily',
'Jersey',
'07309');

INSERT INTO `Fitness`.`gym`
(`Gym_Name`,
`Address`,
`Zipcode`)
VALUES
('Planet Fitness',
'Jersey',
'07314');



TRUNCATE TABLE nutrionist_client;

INSERT INTO `Fitness`.`nutrionist_client`
(`nutritionist_id`,
`client_id`,
`status`)
VALUES
(3,
4,
1);


INSERT INTO `Fitness`.`nutrionist_client`
(`nutritionist_id`,
`client_id`,
`status`)
VALUES
(3,
2,
2);


INSERT INTO `Fitness`.`nutrionist_client`
(`nutritionist_id`,
`client_id`,
`status`)
VALUES
(3,
1,
3);



