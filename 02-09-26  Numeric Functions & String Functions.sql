 use world;

/*round()*/
select round(100000.0000,3);

select name, lifeexpectancy, round(lifeexpectancy,0) AS roundedvalue
from country;


/*ceil() - rounds up to the nearest number*/
select ceil(21.45);


/*floor() - rounds down to the nearest number*/
select floor(21.45);

select name, gnp, ceil(gnp)
from country;

select name, gnp, floor(gnp)
from country;


/*power() - exponentiation*/
select power(4,2);

select name, population, power(population,2)
from country;


/*sqrt() - finds sqrt*/
select sqrt(16);

select name, population, sqrt(population)
from country;


/*ABS() - returns the positive values of number*/
select ABS(20-25);

select name, gnp, gnpold, abs(gnp-gnpold) AS diff
from country;


/*mod() - returns the remainder*/
select mod(10,3);

select name, population, mod(population,3) AS remainder
from country;


/*sign() - returns positive value (1), negative (-1), nochange(0)*/
select sign(20-25);

select sign(25-20);

select sign(25-25);


/*rand() - generates random numbers*/
select rand(1668986);


/*greatest() - compares values and return highest value*/
select greatest(26256,31);

select name, gnp, gnpold, greatest(gnpold,gnp) AS highestvalue
from country;


/*least() - compares values and return least value*/
select name, gnp, gnpold, least(gnpold,gnp) AS leastvalue
from country;


/*sin(), cos(), tan()*/
select sin(RADIANS(30));

select tan(radians(45));




/*String functions*/

/* upper() - converts text to uppercase
   lower() - converts text to lowercase */

select upper('sankalp');
select lower('Ravi');

select name, lower(name) from country;
select name, upper(name) from country;


/* length() returns length of a text */

select length('srividya');

select name, length(name) from country limit 5;


/* char_length() - returns the no. of characters in a string */

select length('codegnan');       /* counts in bytes in memory */
select char_length('codegnan');


/* left() - returns character from left side of a string
   right() - returns character from right side of a string */

select left('dhanush', 3);
select right('dhanush', 3);


/* substring() - extracts part of a string
   substring(string, start, length) */

select substring('srividya', 3, 5);


/* trim() - removes spaces from string */

select trim('darshini     hsjgjkknk');


/* replace() - replaces one string with another
   replace(string, old, new) */

select replace('sutherland', 'suther', 'is');


/* concat() - combines the strings */

select concat('varshitha', ' ', 'A');

select name, concat(continent, '-', name) from country;


/* locate() - returns position */

select locate('united', name) from country;


/* concat_ws() - combines string with separator */

select concat_ws('-', name, continent, region) from country;


/* lpad() - adds characters to left
   lpad(string, length, adding char) */

select lpad('suryasai', 12, '*');


/* rpad() - adds characters to right
   rpad(string, length, adding char) */

select rpad('suryasai', 9, '*');