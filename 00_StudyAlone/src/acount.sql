create table acount(
	id number(3) primary key,
	acount_id varchar2(15 char) not null,
	acount_password varchar2(30 char) not null
);

select * from acount;

create sequence acount_seq;
