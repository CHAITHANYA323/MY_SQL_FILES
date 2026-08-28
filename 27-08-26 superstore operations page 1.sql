create database chaithu;
use chaithu;
select *from superstore;
select category, country, segment from superstore;
select country from superstore;

#it will display multiple repeated counntries 
#DISTINCT:
#distinct is used to remove the duplicates and return only unqiue values

select distinct country from superstore;
select distinct country,segment,category from superstore;

#ORDER BY:
#Order by is used to stort the result either in ascending (or) descending order

select distinct country from superstore order by country asc;
select distinct sales from superstore order by sales desc;
select distinct country,sales from superstore order by country,sales asc;
select distinct counntry,sales from superstore order by country,sales desc;