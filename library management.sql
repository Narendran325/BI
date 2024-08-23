create database library_demo;

use library_demo;

create table readers (reader_id varchar(50) ,fname varchar(30), mname varchar(30),itname varchar(30),
city varchar(15),mobileno varchar(10),occupation varchar(10),dob date, primary key(reader_id));

insert into readers(reader_id,fname,mname,itname,city,mobileno ,occupation,dob)
values ('C00001','ramesh','chandra','sharma','delhi',9543198324,'service','2002-12-26'),
('C00002','ram','null','yathav','pune',9545298324,'prduction','2001-08-06'),
('C00003','rahu','bhathi','sharma','goa',9543198454,'hr','2002-07-31'),
('C00004','rajj','kishan','singh','cbe',9548598324,'sales','2002-06-21'),
('C00005','vijay','kumar','rao','hyd',9123198324,'finance','2002-05-11');

delete from readers where reader_id='C00001';

select * from readers;

create table book(bid varchar(6),bname varchar(40), bdomain varchar(30),primary key (bid));

insert into book(bid,bname,bdomain)
values ("B0001","life in jumgle","adventure"),
("B0002","la la land","comdey"),
("B0003","life of pie","sci-fi"),
("B0004","james bond","action"),
("B0005","mission impossible","thriller");

select * from book;

create table active_readers(account_id varchar(6),reader_id varchar(6),bid varchar(6),atype varchar(10),astatus varchar(10),
constraint activereaders_acnumber_pk  primary key (account_id), 
constraint account_readerid_fk foreign key (reader_id) references readers(reader_id),
constraint account_bid_fk foreign key (bid) references book(bid));

insert into active_readers(account_id,reader_id,bid,atype,astatus)
values('A00001','C00001','B00001','premium','active'),
('A00002','C00002','B00002','regular','inactive'),
('A00003','C00003','B00001','regular','active'),
('A00004','C00002','B00003','premium','inactive'),
('A00005','C00004','B00005','regular','terminated');

select * from active_readers where astatus ='active';

show tables;