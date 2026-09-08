USE world;

DESC city;
DESC country;

/* inner join */

SELECT city.name AS cityname, country.name AS countryname
FROM city
INNER JOIN country
ON city.countrycode = country.code;


/* natural join */

SELECT *
FROM city
JOIN country;


/* equi join */

SELECT c.name AS country, ci.name AS city
FROM country c
JOIN city ci
ON c.code = ci.countrycode;


/* non-equi join */

SELECT country.name AS country,
       country.population AS countrypop,
       city.name AS city,
       city.population AS citypop
FROM country
JOIN city
ON country.population < city.population;


/* left join */

SELECT city.name AS city,
       country.name AS country
FROM city
LEFT JOIN country
ON city.countrycode = country.code;


/* right join */

SELECT city.name AS city,
       country.name AS country
FROM city
RIGHT JOIN country
ON city.countrycode = country.code;


/* full outer joins */

SELECT city.name AS city,
       country.name AS country
FROM city
LEFT JOIN country
ON city.countrycode = country.code

UNION

SELECT city.name AS city,
       country.name AS country
FROM city
RIGHT JOIN country
ON city.countrycode = country.code;


/* cross join */

SELECT city.name AS city,
       country.name AS country
FROM city
CROSS JOIN country;


/* self join */

SELECT c1.name,
       c2.name,
       c1.continent,
       c2.continent,
       c1.population AS p1,
       c2.population AS p2,
       ABS(c1.population - c2.population) AS pop_diff
FROM country c1
JOIN country c2
ON c1.continent = c2.continent
WHERE c1.name < c2.name;