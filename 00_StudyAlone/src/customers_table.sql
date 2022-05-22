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

-- select top => 위에 00번까지 read
-- select * from table_name fetch first 3 rows only;
-- percent 로 일부만 볼 수도 있음
-- where도 당근 사용가능
-- top문은 order by 와 마찬가지로 마지막에
-- like => '_a%' 'a_%' 'a%o'

-- *(%):0~ // ?(_):1 // []: inside one of them // !(^)=not // -:decide the range // #: numeric character
--SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
--FROM Orders
--INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

--Join: (inner) Join// Left (Outer) join // right (outer) join// full (outer) join
-- Self Join == 수업에서 배운거 // where로 연결점 찾아주는 것

-- Union -> 합쳐서 distict values갑을 select if, duplicate valeus 뽑고 싶으면 Union all
-- Group by (기준) :: count/ max/ min/ sum/ avg
-- Having :: where에서 count/ max/ min/ sum/ avg을 못 쓰니깐 쓰기 위한 조건문을 받음
-- exists :: where에 붙어 조건이 존재하는가를 판단 -> ture or false -> ture면 list보여줌


--any(where) // all(where/having) => boolean
-- where 000=any():: 조건중 하나만 해도 okay // select all 000 // where 000=all() :: 다 그래야함
-- select into : 새로운 테이블에 copy
-- insert into : 기존 테이블에 copy => insert into 000 select ...


