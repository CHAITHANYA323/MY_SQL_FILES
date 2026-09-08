use world;


/* =========================
   SUB QUERY
   ========================= */

/* Inner Query */
select avg(population)
from country;


/* Outer Query */
select name, population
from country
where population > 25434098.1172;


/* Single Row Subquery - AVG */
select name, population
from country
where population > (
    select avg(population)
    from country
);


/* Single Row Subquery - MAX */
select name, population
from country
where population = (
    select max(population)
    from country
);


/* =========================
   MULTIPLE ROW SUBQUERIES
   ========================= */

/* ANY */
select name, population, countrycode
from city
where population > any (
    select population
    from city
    where countrycode = 'USA'
);


/* IN */
select name, countrycode
from city
where countrycode IN (
    select code
    from country
    where continent = 'Asia'
);


/* =========================
   MULTIPLE COLUMN SUBQUERY
   ========================= */

select name
from country
where (continent, region) = (
    select continent, region
    from country
    where name = 'India'
);


/* =========================
   CORRELATED SUBQUERY
   ========================= */

select c1.name, c1.continent, c1.population
from country c1
where population > (
    select avg(c2.population)
    from country c2
    where c1.continent = c2.continent
);


/* =========================
   NESTED SUBQUERY
   ========================= */

select name
from city
where countrycode = (
    select code
    from country
    where capital = (
        select id
        from city
        where name = 'New Delhi'
    )
);


/* =========================
   EXISTS
   ========================= */

/* Countries which have at least one city */
select name
from country c
where exists (
    select 1
    from city ci
    where ci.countrycode = c.code
);


/* =========================
   NOT EXISTS
   ========================= */

/* Countries which do not have any city */
select name
from country c
where not exists (
    select 1
    from city ci
    where ci.countrycode = c.code
);