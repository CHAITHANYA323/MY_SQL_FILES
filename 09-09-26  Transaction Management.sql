USE world;

/* Begin or Start Transaction */

BEGIN;

UPDATE country
SET population = population + 10000
WHERE code = 'IND';

COMMIT;


SELECT name, population
FROM country
WHERE code = 'IND';


ROLLBACK;

SELECT name, population
FROM country
WHERE code = 'IND';




/* SAVEPOINT */

BEGIN;

UPDATE country
SET population = population + 50000
WHERE code = 'IND';

SAVEPOINT sp1;


UPDATE country
SET population = population + 30000
WHERE code = 'JPN';

SAVEPOINT sp2;


UPDATE country
SET population = population + 180000
WHERE code = 'USA';


ROLLBACK TO SAVEPOINT sp1;