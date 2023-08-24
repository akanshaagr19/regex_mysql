show databases;
use sakila;
show tables;
-- comment 
describe actor;
-- dql statement 
select * from actor;
select actor_id,first_name from actor;
describe actor_info;
-- projection and selection 
select actor_id,actor_id+5 from actor_info;
select * from actor_info;
-- where clause for a condition 
select * from actor_info where actor_id=2;
select actor_id,first_name from actor_info where actor_id=2;
select actor_id,first_name 
	from actor_info where actor_id>2; -- this is both projection and selection
select first_name from actor_info where actor_id>2;
select * from actor_info where first_name="ED";
-- dql statement 
select database();
use sakila;
select database();
show tables;
show columns from actor_info;


desc actor;
select * from actor;
select * from sakila.actor;
select name from sakila.language;
select * from language where name = 'English';
select * from language where language_id !=3;
select * from language where name <'E';
select * from language where name >'E';
select * from language where name > 'I';
select first_name from actor where first_name >'b';

#-- Mysql- data is insensitive and uses character set 
#-- pattern 

select * from film;
select * from film where title like 'A%R'; -- % 0 or 0 se jyada character, it will give the films starting from A and ends R
select * from film where title like '%DINOSAUR%';
select * from film where title like '%family%';

select * from film where description like '%drama%';
Select title,description,release_year from film where title like 'A%les';

Select * from film where title like 'A_E%'; -- _ will represent one charater, % 0 or more character
select title, film_id,release_year,description from film where title like '_C%';
select title, film_id,release_year,description from film where title like 'A%AN';
select title, film_id,release_year,description from film where title like '%T___';
select title, film_id,release_year,description from film where title like '_F_I%egg';
select title, film_id,release_year,description from film where title like '__A__%';


