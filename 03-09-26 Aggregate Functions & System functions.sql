USE world;


/* =========================================================
   AGGREGATE FUNCTIONS
   ========================================================= */


/* COUNT() - counts the number of records */
SELECT COUNT(*) AS tot_countries
FROM country;

SELECT COUNT(DISTINCT continent) AS total_continents
FROM country;


/* SUM() - calculates the sum of all numerical values */
SELECT SUM(population) AS total_population
FROM country;


/* AVG() - returns the average value */
SELECT AVG(population) AS average_population
FROM country
WHERE population > 100000;


/* MAX() - returns the greatest value */
SELECT MAX(population) AS max_population
FROM country
WHERE population > 100000;


/* MIN() - returns the smallest value */
SELECT MIN(population) AS min_population
FROM country
WHERE population > 100000;




/* =========================================================
   SYSTEM FUNCTIONS
   ========================================================= */


/* VERSION() - returns the current MySQL version */
SELECT VERSION();


/* DATABASE() - returns the name of the current database */
SELECT DATABASE();


/* USER() - returns the current MySQL user */
SELECT USER();


/* LAST_INSERT_ID() - returns the last AUTO_INCREMENT ID */
SELECT LAST_INSERT_ID();


/* DESC - describes the structure of a table */
DESC city;


/* INSERT a new record into the city table */
INSERT INTO city(name, countrycode, district, population)
VALUES ('test_city', 'IND', 'AP', 654367898);