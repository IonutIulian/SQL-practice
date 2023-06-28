/*DATA QUERY LANGUAGE */

select * from owners;

select firstname, lastname from owners;

alter table owners add column city varchar(40) not null;


/*with filters-where*/

select * from owners where age=20;
insert into owners values ('Mike','Smith','25','1998-04-14'), ('Mirt','Smoit','27','1996-05-24');

select * from owners where dateofbirth > '1997-01-01';

select * from owners where firstname in ('Mike','Mirt');

select * from owners where firstname not in ('Mike','Mirt');

select * from owners;

select * from owners where firstname != 'John';

update owners set city = 'Bacau' where lastname = 'Long';

select * from owners where age != 27;

select * from owners where age between 30 and 40;


select * from owners where firstname like 'm%';

select * from owners where firstname like '%m%';

select * from owners where firstname like '%e';
select * from owners where dateofbirth like '198%';
insert into owners (firstname, lastname, age, dateofbirth,city)
values ('John', 'Martin', '34','1989-03-24','Bacau');

select * from owners;
select * from owners where dateofbirth like '%-03-%';

select * from owners where firstname like '%ik%' and age >30;

select * from owners where firstname like '%ik%' or age >30 and city = 'Bacau';

select * from owners where (firstname like '%ik%' or age >30) and city = 'Bacau';

select sum(age) from owners;

select avg(age) from owners;

select min(age) from owners;
select max(age) from owners;
select count(*) from owners;
select count(city) from owners;