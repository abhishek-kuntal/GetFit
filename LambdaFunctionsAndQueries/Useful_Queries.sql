USE Fitness;



SELECT * FROM users;
SELECT * FROM chats;
SELECT * FROM gym;
SELECT * FROM friends;
SELECT * FROM  nutrionist_client;

/*Authentication*/
/*We will probably use IAM for this*/

/*Verify user*/


SELECT 'User Verified' as result from users where username ='prashant'
and pwd='prashantnyu' and user_status=1;



/*Identify User*/

SELECT username,CASE
        WHEN user_type = 1 THEN 'Patient'
        ELSE 'Nutritionist'
    END AS user_type from users where user_status=1;
    
    
/*Get User Info by id and username*/

SELECT * FROM users where id=3 and user_status=1;
SELECT * FROM users where username='prashant' and user_status=1;

#Get Pending Requests for Nutrionist 
SELECT u.username Nutrionist_Name,u.id,u2.Username Client_Name,u2.id FROM nutrionist_client nc join
users u on u.id=nc.nutritionist_id join
users u2 on u2.id=nc.client_id
where u.id=3
and nc.status=2;

#Get Accepted Requests for Nutrionist
SELECT u.username Nutrionist_Name,u.id,u2.Username Client_Name,u2.id FROM nutrionist_client nc join
users u on u.id=nc.nutritionist_id join
users u2 on u2.id=nc.client_id
where u.id=3
and nc.status=1;

#Get Pending Requests for Client
SELECT u.username Nutrionist_Name,u.id,u2.Username Client_Name,u2.id FROM nutrionist_client nc join
users u on u.id=nc.nutritionist_id join
users u2 on u2.id=nc.client_id
where u2.id=1
and nc.status=3;

#Get Accepted Requests for Client
SELECT u.username Nutrionist_Name,u.id,u2.Username Client_Name,u2.id FROM nutrionist_client nc join
users u on u.id=nc.nutritionist_id join
users u2 on u2.id=nc.client_id
where u2.id=1
and nc.status=1;

#Get Friends
SELECT u.username Username,u.id,u2.username Friend_Username,u2.id FROM friends f join
users u on u.id=f.userid join
users u2 on u2.id=f.friendid
where u.id=2
and u2.user_status=1
UNION 
SELECT u2.username Username,u2.id,u.username Friend_Username,u.id FROM friends f join
users u on u.id=f.userid join
users u2 on u2.id=f.friendid
where u2.id=2
and u.user_status=1
;

#Get Chats 
SELECT u.username Username,u.id,u2.username Friend_Username,u2.id, c.chat_message FROM chats c join
users u on u.id=c.senderid join
users u2 on u2.id=c.Recieverid
where u.id=4 or u2.id=4
order by Message_timestamp asc;


