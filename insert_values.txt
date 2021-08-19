insert into owner values('10001', 'MUKESH AMBANI', 'BUSINESSMAN');
insert into owner values('10002', 'PREETI ZINTA', 'ACTOR');
INSERT INTO OWNER VALUES('10003', 'SHAHRUKH KHAN', 'ACTOR');

insert into hotel values('THE IVY PALACE', 'MUMBAI', 303, 'KING');
insert into hotel values('BABYLON INTERNATIONAL', 'PUNJAB', 107, 'SUITE');

insert into team values('MUMBAI INDIANS', 'MAHARASHTRA', 5, 'MAHELA JAYAWARDENE', '10001', 'A');
insert into team values('KINGS XI PUNJAB', 'PUNJAB', 0, 'ANIL KUMBLE', '10002', 'B');
INSERT INTO TEAM VALUES('KOLKATA KNIGHT RIDERS', 'WEST BENGAL', 2, 'BRENDON MCCULLUM', '10003', 'B');

insert into sponsor values('SAMSUNG', 80000000, 7, 'MUMBAI INDIANS'); 
insert into sponsor values('EbixCash', 8900000, 5, 'KINGS XI PUNJAB'); 

insert into support_staff values(2313, 'ROBIN SINGH', 'BATTING', 'MUMBAI INDIANS');
insert into support_staff values(2124, 'WASIM JAFFER', 'BATTING', 'KINGS XI PUNJAB');

insert into player values('7271827181', 'ROHIT SHARMA', 1, 'THE IVY PALACE', 'MUMBAI', 9, 'MUMBAI INDIANS');
insert into player values('6352617899', 'KL RAHUL', 1, 'BABYLON INTERNATIONAL', 'PUNJAB', 7, 'KINGS XI PUNJAB');

insert into previousRecords values('7271827181',32,15,5480,207);
insert into previousRecords values('6352617899',47,0,2978,88);

insert into injury_records values('7271827181','Hamstring injury',to_date('12-05-2020','dd-mm-yy'),'Mild muscle pull or strain');
insert into injury_records values('6352617899','Appendicitis surgery',to_date('05-01-2021','dd-mm-yy'),'Pain in lower right abdomen');

insert into match values('MUMBAI INDIANS','KINGS XI PUNJAB','Wankhede Stadium',to_date('20-04-2021','dd-mm-yy'));
insert into match values('KINGS XI PUNJAB','KOLKATA KNIGHT RIDERS','Eden Gardens',to_date('23-04-2021','dd-mm-yy'));
