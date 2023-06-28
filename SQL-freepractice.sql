show databases;

create database petclicnic;

create table owners (
firstname varchar(25) ,
lastname varchar(25) 

);
/* adaugarea coloana*/
alter table owners add column age int not null;
/* stergere coloana*/
alter table owners drop age;
alter table owners drop column age;

desc owners;

alter table owners modify firstname varchar(25) not null;
alter table owners modify lastname char(25) not null;

alter table owners change lastname ownerslastname char(27) not null;
alter table owners rename to petowners;

drop table petowners