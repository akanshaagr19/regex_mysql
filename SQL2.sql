use sakila;
select * from actor;
select * from actor where first_name="Nick" or actor_id=3;
show tables;
select * from actor_info  	
	where film_info like "Animation%" 
	and first_name="goldie";
    
select * from actor_info  	
	where film_info like "Animation%" 
	or first_name="goldie" and first_name="nick";
    
select *from film_list;

select category,rating,title
from film_list where category like 'sci-fi'
and rating like 'pg';

select category,rating,title
from film_list where category like 'sci-fi' 
or category like 'family' 
and rating like 'pg';   #AND condition will be solved first and then the OR operator

select category,rating,title
from film_list where (category like 'sci-fi' 
or category like 'family') and rating like 'pg';    #paranthesis will give the priority to inner statement and then the AND operator

select 2+2*3;
select (2+2)*3 ;  # paranthessis will be executed first

#BETWEEN 
select * from actor
where actor_id between 2 and 5;

select * from actor
where actor_id >= 2 and actor_id<=5;   #inclusive of end values

select * from actor
where actor_id between 5 and 2;  #between is used to define the range and will take the smaller value first then the higher values

select * from actor
where first_name between "B" and "D";   #it will return the names with B, C but no D as the ASCII will increase with the full name 

select * from actor
where first_name > "D"; 

##IN Operator 

select * from actor 
where actor_id=1 or actor_id=5;  #manual way to get the data based on IDs 

select * from actor 
where actor_id in (1,5);  #getting the data based on IDs using IN operator

select * from actor 
where actor_id in (1,5,10,15);

select * from actor
where actor_id !=1;

select * from actor
where not(actor_id=1);

select * from actor
where actor_id between 2 and 7 and
 (first_name='Nick' or first_name='ed');
 
select * from actor where last_name not like '%A%' or last_name not like '%E%';

select *from actor where first_name not in ('grace','mathew','joe') and actor_id<15;
select *from actor where first_name not like '%I%' and last_name not like '%A%' and (actor_id between 10 and 20);
select * from actor where actor_id = 10;














