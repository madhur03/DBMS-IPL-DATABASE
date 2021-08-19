create table owner(owner_id char(5) constraint wn_pk primary key,
                   name varchar(20) not null,
                   profession varchar(20));

create table hotel(name varchar(30),
location varchar(30),
room_no number(5),
room_type varchar(20),
constraint hotl_pk primary key(name, location));


create table team(name varchar(30) constraint tm_pk primary key,
                  state varchar(15) not null,
                  no_of_titles integer not null, 
                  head_coach varchar(20) unique not null,
                  owner_id constraint tm_fk1 references owner,
                  pool char(1) not null,
                  check(no_of_titles >= 0 and no_of_titles <13),
                  check(pool in ('A','B')));



create table sponsor(name varchar(30) constraint spn_pk primary key,
                     fund integer not null,
                     period integer not null,
                     team_name varchar (30),
                     foreign key(team_name) references team(name));



create table support_staff(staff_id number(4) constraint stf_pk primary key,
                           name varchar(30) not null,
                           field char(15) not null,
                           team_name varchar(30),
                           foreign key(team_name) references team(name));


create table player(franchise_player_id char(10) constraint plyr_pk primary key,
name varchar(40) not null,
position number(2),
hotel_name varchar(30),
location varchar(30),
skill_level number(3),
team_name varchar(30),
FOREIGN KEY (team_name) REFERENCES team (name),
FOREIGN KEY (hotel_name, location) REFERENCES hotel (name, location));


create table previousRecords(franchise_player_id constraint prvRec_fk references player,
average number(3,2),
total_wickets number(5),
total_runs number(10),
no_of_matches number(5),
constraint prvRec_pk primary key(franchise_player_id));





create table injury_records(franchise_player_id constraint inj_fk references player,
                            description varchar(20),
                            date_of_injury DATE,
                            details varchar(20),
                            constraint inj_pk primary key(description, franchise_player_id));




create table match(name constraint mt_fk1 references team,
                   team_name varchar(30),
                   foreign key(team_name) references team (name),
                   venue varchar(20),
                   date_of_match date,
                   constraint mt_pk primary key(name, team_name)); 
