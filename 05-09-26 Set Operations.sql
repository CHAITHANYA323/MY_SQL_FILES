USE world;

-- =====================================
-- UNION
-- =====================================

SELECT name, continent
FROM country
WHERE continent = 'Asia'

UNION

SELECT name, continent
FROM country
WHERE continent = 'Europe';


-- =====================================
-- UNION with Population
-- =====================================

SELECT name, population
FROM country
WHERE population > 100000

UNION

SELECT name, population
FROM country
WHERE population < 500000;


-- =====================================
-- UNION between city and country
-- =====================================

SELECT name, population
FROM city

UNION

SELECT name, population
FROM country;


-- =====================================
-- UNION ALL
-- =====================================

SELECT name, continent
FROM country
WHERE continent = 'Asia'

UNION ALL

SELECT name, continent
FROM country
WHERE continent = 'Europe';


-- =====================================
-- UNION ALL - Same condition
-- =====================================

SELECT name
FROM city
WHERE countrycode = 'IND'

UNION ALL

SELECT name
FROM city
WHERE countrycode = 'IND';


-- =====================================
-- INTERSECT
-- =====================================

SELECT name, population
FROM country
WHERE population > 100000

INTERSECT

SELECT name, population
FROM country
WHERE population < 500000;


-- =====================================
-- INTERSECT using AND equivalent
-- =====================================

SELECT name, population
FROM country
WHERE population > 1000000
  AND population < 5000000;


-- =====================================
-- EXCEPT
-- =====================================

SELECT name, continent, population
FROM country
WHERE continent = 'Asia'

EXCEPT

SELECT name, continent, population
FROM country
WHERE continent = 'Asia'
  AND population > 5000000;