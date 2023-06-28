rename table petowners to owners;

alter table owners change ownerslastname lastname varchar(25) not null;

alter table owners add column dateofbirth date not null;	

alter table owners drop dateofbirth;



desc owners;

insert into owners (firstname, lastname, age, dateofbirth)
values ('John', 'Martin', '34','1989-03-24');
insert into owners values ('Jim', 'Long', '20','2003-03-14'), ('Mikel', 'Mart', '32','1991-03-24');

select * from owners;
