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
-----------------------------------------------------------------------------
select *from sakila.city where (city_id =3 or city_id=4)And country_id=60;

select fid,title from film_list
where FID<7 and (FID=4  or fid =6);


select fid,title from film_list
where FID<7 and not (FID=4 or fid=6);

##We do not use % in the starting as this will take the time to execute the query.

##sorting #orderbyclause => sort ascending and descending 
select *from film_list order by category; ##ascending by default

select *from film_list order by category ;
desc film_list;
select *from film_list order by 4; #sorting by column number

select fid,title from film_list order by 2;  ##sorting through particular column through 1 or 2 only
select fid,title,category from film_list order by price;

select* from address order by district;  #order by if there is any missing values that will be coming on top
select district, address,address_id from address order by district;  
select district, address,address_id from address order by district,address_id;
select district, address,address_id from address order by district,address_id desc; 
select district, address,address_id from address order by district desc ,address_id ;


##-----limit clause will show initial 3 records when we do not want to see the complete data 
select * from address limit 3; 

select *from address order by district,address_id limit 3;
##limit can used at the end of the statement

##offset ##3 will be offset and next 2 records will be shown 
select * from address limit 3,2;
select * from address limit 5 offset 3;

#table => dual dummy table => already present in the system where logics can performed 
select 1+2 from dual ;
select now() from dual ;

-- pseudo column => column => specific meaning, already available with the system

-- concat , concat_ws , substr
-- string functions
-- Length 

select char_length("akansha");
Select length("akansha");

-- concate
select concat("h","-",1) from dual;

-- concate ws
select concat_ws("-","hey","akansha") from dual;

-- upper and lower to change the case of the string 
select upper("akansha");

-- substr function to extract the string substr() or substring() can be used 
select substr("hello",2);
select substr("hello",-2);

select substr("hello",2,3);
select substr(substr("hello",1,3),2);  -- very useful 

-- instr("data",str) function to return the index position 
select instr("hello","e");
select instr("hello","ez");

-- locate() to find the location(string,data)
select locate("el","hello");
select locate("a","rajasthan",3);

-- Ltrim left side white spaces removed
select ltrim("                      -----xyz");

-- rtrim to remove white space from the right side
select rtrim("----xyz                  ");

-- trim 
select trim("          xyz             ");

-- trim with leading 
select trim(leading " " from  "          zyz       ");

-- trim with trailing 
select trim(trailing " " from  "        xyz          ");

-- both() , from both the side, we can remove space and characters as well with trim method.
-- it will not remove middle character or white spaces only left and right will be removed.
select trim(both "z" from " zzzz  xyz");

-- lpad(str,len,padstr), string, length of the string and padstr will be the string to be added
select lpad("hello" ,6, "#");
select lpad("hello123" ,6, "#");

-- rpad to add the padstr to the right
select rpad("hello" ,6, "#");
select rpad("hell" ,8, "#");

-- replace(str,from_str,to_str)
select replace("akansha","s","k");

use sakila;
select * from language;
desc language;
select count(*) from language;

-- DML - data manipulation language (CRUD operatios - Create, retrieve, update , delete 
select 


















