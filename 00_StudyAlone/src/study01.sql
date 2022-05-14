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

-----------------------------------------------------
-- 관계형 데이터 베이스(JOIN)

create table author(
	id number(11) primary key,
	name varchar2(20 char) not null,
	profile varchar2(200 char) not null
);

INSERT INTO author VALUES (1,'egoing','developer');
INSERT INTO author VALUES (2,'duru','database administrator');
INSERT INTO author VALUES (3,'taeho','data scientist, developer');

create table topic(
	id number(11) primary key,
	title varchar2(30 char) not null,
	description varchar2(30 char) not null,
	created date not null,
	author_id number(11) not null
);

create sequence topic_seq;

INSERT INTO topic VALUES (topic_seq.nextval,'MySQL','MySQL is...',to_date('2018-01-01','YYYY-MM-DD'),1);
INSERT INTO topic VALUES (topic_seq.nextval,'Oracle','Oracle is ...',to_date('2018-01-03','YYYY-MM-DD'),1);
INSERT INTO topic VALUES (topic_seq.nextval,'SQL Server','SQL Server is ...',to_date('2018-01-20','YYYY-MM-DD'),2);
INSERT INTO topic VALUES (topic_seq.nextval,'PostgreSQL','PostgreSQL is ...',to_date('2018-01-23','YYYY-MM-DD'),3);
INSERT INTO topic VALUES (topic_seq.nextval,'MongoDB','MongoDB is ...',to_date('2018-01-30','YYYY-MM-DD'),1);


select * from author;
select * from topic;

select * from topic join author 
on topic.author_id = author.id;

select a.id, a.title, a.description, a.created, b.name, b.profile
from topic a, author b 
where a.author_id = b.id;



