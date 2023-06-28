
/*PRIMARY KEY AND FOREIGN KEY*/

alter table owners add column ownerid int primary key auto_increment;

alter table owners modify ownerid int auto_increment first;
desc owners;
insert into owners (firstname , lastname , age, dateofbirth,city) values ('Vali','Mitoc',39,'1983-06-07','Bistrita');

select * from owners;

create table pets 
(petid int not null auto_increment,
race varchar(45) not null,
dateofbith date not null,
ownerid int not null,
primary key(petid),
constraint fk_pets_owners foreign key (ownerid) references owners(ownerid)
);

select * from owners;
select * from pets;
insert into pets ( race, dateofbith,ownerid) values ('sheperd', '2018-04-05',6);
insert into pets ( race, dateofbith,ownerid) values ('malinoix', '2017-04-05',4),
('pitbul', '2020-04-05',2),('hamster', '2019-04-05',5),('cat', '2016-04-05',6);

/* JOINS*/

select * from owners cross  join pets;
select * from owners inner join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is null;
select * from owners left join pets on owners.ownerid = pets.ownerid where pets.ownerid is not null;-- rezultate identice cu inner join
select * from owners right join pets on owners.ownerid = pets.ownerid;
