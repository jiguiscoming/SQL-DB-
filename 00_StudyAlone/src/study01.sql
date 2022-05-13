-- 핵심은 CRUD (Creat Read Update Delete)
-- 관계형 데이터 베이스

create table opentutorials(
	id number(2) primary key,
	title varchar2(20 char) not null,
	description varchar2(30 char) not null,
	created date not null,
	author varchar2(15 char) not null,
	profile varchar2(200 char) not null
);

create sequence opentutorials_seq;

insert into opentutorials values(
opentutorials_seq.nextval, 
'MySQL', 
'My SQL is', 
to_date('2018-01-10', 'YYYY-MM-DD'), 
'egoing', 
'developer');

update opentutorials
set description = 'My SQL is...'
where id = 1;


insert into opentutorials values(
opentutorials_seq.nextval, 
'ORACLE', 
'Oracle is...', 
to_date('2018-01-15', 'YYYY-MM-DD'), 
'egoing', 
'developer');

insert into opentutorials values(
opentutorials_seq.nextval, 
'SQL Server', 
'SQL Server is...', 
to_date('2018-01-18', 'YYYY-MM-DD'), 
'duru', 
'database administrator');

insert into opentutorials values(
opentutorials_seq.nextval, 
'PostgreSQL', 
'PostgreSQL is...', 
to_date('2018-01-20', 'YYYY-MM-DD'), 
'taeho', 
'data scientist, developer');


insert into opentutorials values(
opentutorials_seq.nextval, 
'MongoDB', 
'MongoDB is...', 
to_date('2018-01-30', 'YYYY-MM-DD'), 
'egoing', 
'developer');

select * from OPENTUTORIALS;