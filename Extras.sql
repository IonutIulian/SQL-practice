/* EXTRAS*/


select * from owners;
select * from pets;
select * from owners order by dateofbirth;
select * from owners order by age;
select * from owners order by age desc;

select * from owners order by age desc limit 2;

select max(age) from owners;

select o.ownerid ,firstname, lastname, count(petid)
from owners o inner join pets p on o.ownerid=p.ownerid
group by o.ownerid ,firstname, lastname;

select o.ownerid ,firstname, lastname, count(petid)
from owners o inner join pets p on o.ownerid=p.ownerid
group by o.ownerid ,firstname, lastname
having count(petid)>1;

  -- Aliases

select o.ownerid , firstname, lastname, race , o.dateofbirth owners, p.dateofbirth pets
from owners o inner join pets on o.ownerid=p.ownerid;
