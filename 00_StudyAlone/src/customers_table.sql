-- SQL exercise --
-- "Customers" table => W3schools

drop table customers cascade constraint purge;

create table customers(
	customer_ID number(3) primary key,
	customer_name varchar2(30 char) not null,
	contact_name varchar2(30 char) not null, 
	address varchar2(30 char) not null,
	city varchar2(20 char) not null,
	postalcode varchar2(10 char) not null,
	country varchar2(10 char) not null
);

select * from customers;

create sequence customers_seq;

insert into CUSTOMERS values(customers_seq.nextval,'Alfreds Futterkiste','Maria Anders','Obere Str. 57','Berlin','12209','Germany');
insert into CUSTOMERS values(customers_seq.nextval,'Ana Trujillo Emparedados y','Ana Trujillo','Avda. de la Constitucion 2222','Mexico D.F.','05021','Mexico');
insert into CUSTOMERS values(customers_seq.nextval,'Antonio Moreno Taqueria','Antonio Moreno','Mataderos 2312','Mexico D.F.','05023','Mexico');
insert into CUSTOMERS values(customers_seq.nextval,'Around the Horn','Thomas Hardy','120 Hanover Sq.','London','WA1 1DP','UK');
insert into CUSTOMERS values(customers_seq.nextval,'Berglunds snabbkop','Christina Berglund','Berguvsvagen 8','Lulea','S-958 22','Sweden');


-- not equal => <>
-- where not (condition) => not 'condition' // except 'condition'
-- order by 1.asc	2.desc

-- field**
-- null :  can't use comparison operators instead "is null" or "is not null"