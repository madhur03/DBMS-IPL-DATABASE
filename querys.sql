//UPDATE
//1.
UPDATE hotel 
SET room_no=420, room_type='SUPER DELUXE SUIT'
WHERE name='BABYLON INTERNATIONAL';

select * from hotel;

//2.
UPDATE sponsor 
SET name='VIDEOCON D2H', fund=10000000, period=2 
WHERE team_name='MUMBAI INDIANS';

select * from sponsor;

//3.
UPDATE support_staff 
SET name='SANJAY BANGAR', FIELD='BATTING'
WHERE team_name='MUMBAI INDIANS';

select * from support_staff;

//4.
UPDATE match 
SET venue='MOHALI', date_of_match=to_date('25-04-21','dd-mm-yy')  
WHERE name='KINGS XI PUNJAB' and team_name='KOLKATA KNIGHT RIDERS';

select * from match;

//nvl and nullif query
=> to display the venue, name of first team out of all the matches, and if the venue has no data it shows 'NO DATA ENTERED'. Also, if both first and the second team are same then display NULL for name of first team(alias used for column names)

QUERY=> select nvl(venue,'NO DATA ENTERED') "Venue", nullif(name,team_name) from match;

//data to be inserted before running the above query
insert into match values('KOLKATA KNIGHT RIDERS','KOLKATA KNIGHT RIDERS','Eden Gardens',to_date('05-05-21','dd-mm-yy'));
insert into match values('KOLKATA KNIGHT RIDERS','MUMBAI INDIANS',null,to_date('03-05-01','dd-mm-yy'));


DELETE QUERIES:-
i) Delete the data from sponsor if name of sponsor company is SAMSUNG.

select * from sponsor;
Delete from sponsor where name='SAMSUNG';
select * from sponsor;

ii) Delete from support staff if the no_of_titles of team is zero.

select * from support_staff;
select * from team;
Delete from support_staff where team_name in(select name from team where no_of_titles =0);
select * from support_staff;

iii) Delete from previous records if that skill level of player is greater than 8.

select * from previousRecords;
select * from player;
Delete from previousRecords where franchise_player_id in(select franchise_player_id from player where skill_level>8);
select * from previousRecords;

iv)Delete from injury records if name of palyer has word RO.

select * from injury_records;
select * from player;
Delete from injury_records where franchise_player_id in(select franchise_player_id from player where name like'%RO%');
select * from injury_records;


SELECT QUERIES:-

CORRELATED:
i.Select the player with highest skill level in every Participating team along with his skill_level.

select name ,skill_level from player p where skill_level = (select max(skill_level) from player d where d.team_name=p.team_name);

Select Querys for data retrieval:

i) Display the name of team, head coach, fund and period of a sponsor associated by that team using join query. 

=> Select team.team_name, head_coach, fund, period from team, sponsor where team.team_name = sponsor.team_name order by team_name;


ii) Display no. of matches, average and total runs by Rohit Sharma using uncorrelated query.   

=> Select no_of_matches, average, total_runs from previousRecords where franchise_player_id in (Select franchise_player_id from player where name='Rohit Sharma');


iii) Display venue in which playing teams won at least 2 titles. 

=> Select venue from match minus
   Select venue from match, team where match.team_name = team.team_name and no_of_titles < 2;


iv) Display the total no.of.sponsors per team along with the team name.

=> Select count(Name) as No_of_sponsors, team_name from sponsor group by team_name;   


v) Display the no of owners in those professions which have exactly 1 owner. 
 
=> Select count(owner_id) as No_of_owners, profession from owner group by profession having count(owner_id)=1; 


vi) Perform a left outer join on players and injury_records of players based on their id and list the name, id, team name and injury description.

=> Select Franchise_player_id, team_name , name , description from player left join injury_records on player.Franchise_player_id = injury_records.Franchise_player_id;





