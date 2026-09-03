USE world;

SHOW TABLES;

SELECT * FROM city;

SELECT * FROM country;

SELECT * FROM countrylanguage;


/* ORDER BY - used to sort the result */
SELECT name, population
FROM country
ORDER BY population DESC
LIMIT 15;


/* DISTINCT - removes duplicates and returns unique values */
SELECT DISTINCT continent
FROM country;

SELECT DISTINCT language
FROM countrylanguage;


/* GROUP BY - creates groups */
SELECT continent, COUNT(*) AS total_countries
FROM country
GROUP BY continent
HAVING total_countries > 30;


/* ARITHMETIC OPERATOR */
SELECT name, population, population + 1000 AS updated_pop
FROM country;

SELECT name, population, population * 2 AS updated_pop
FROM country;


/* ASSIGNMENT OPERATOR */
SET @num = 10;

SELECT @num;

SET @num = 20;

SELECT @num;


/* ENUM */
SELECT @enum + 5;


/* LOGICAL OPERATORS */
SELECT name, continent, population
FROM country
WHERE continent = 'Asia'
AND population > 1000000;

SELECT name, continent
FROM country
WHERE continent = 'Europe'
OR continent = 'Africa';

SELECT name, continent, population
FROM country
WHERE NOT continent = 'Asia';


/* BITWISE OPERATOR */
SELECT 6 & 3 AS result;

SELECT 6 << 3;


/* LIKE */
SELECT name
FROM country
WHERE name LIKE 'A%';

SELECT name
FROM country
WHERE name LIKE '_e%';

SELECT name
FROM country
WHERE name LIKE '%land';


/* ISNULL */
SELECT name, headofstate
FROM country
WHERE headofstate IS NULL;

SELECT name, headofstate
FROM country
WHERE headofstate IS NOT NULL;


/* ISNULL()
   1 -> NULL
   0 -> NOT NULL
*/
SELECT name, headofstate, ISNULL(headofstate)
FROM country;