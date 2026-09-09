USE world;

/* Views */

CREATE VIEW country_details AS
SELECT name, code, population
FROM country;

SELECT * FROM country_details;


CREATE VIEW asian_countries AS
SELECT name, continent, region, population, code
FROM country
WHERE continent = 'Asia';

SELECT * FROM asian_countries;


/* Altering a View */

ALTER VIEW country_details AS
SELECT name, code, population, region
FROM country;

SELECT * FROM country_details;


ALTER VIEW asian_countries AS
SELECT name, continent, region, population, code
FROM country
WHERE continent = 'Asia'
  AND population > 500000;

SELECT * FROM asian_countries;


/* Dropping a View */

DROP VIEW asian_countries;

SELECT * FROM asian_countries;