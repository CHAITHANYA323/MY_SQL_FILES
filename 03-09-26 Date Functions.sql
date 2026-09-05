/* =========================================================
   MYSQL DATE FUNCTIONS
   ========================================================= */


/* 1. CURRENT DATE & TIME FUNCTIONS */

/* NOW() - returns current date and time */
SELECT NOW() AS date_time;


/* CURTIME() - returns current time */
SELECT CURTIME() AS current_time;


/* CURDATE() - returns today's date */
SELECT CURDATE() AS current_date;


/* SYSDATE() - returns current date and time */
SELECT SYSDATE() AS system_date_time;



/* =========================================================
   2. DATE EXTRACTION FUNCTIONS
   ========================================================= */


/* YEAR() - extracts year from a date */
SELECT YEAR(NOW()) AS current_year;

SELECT YEAR(CURDATE()) AS current_year_all;


/* MONTH() - extracts month number from a date */
SELECT MONTH(CURDATE()) AS current_month;


/* MONTHNAME() - returns month name */
SELECT MONTHNAME(CURDATE()) AS current_month_name;


/* DAY() - returns day of the month */
SELECT DAY(CURDATE()) AS current_day;


/* DAYOFMONTH() - returns day of the month */
SELECT DAYOFMONTH(CURDATE()) AS day_of_month;


/* DAYNAME() - returns weekday name */
SELECT DAYNAME('2026-09-03') AS weekday_name;



/* =========================================================
   3. DATE DIFFERENCE FUNCTION
   ========================================================= */


/* DATEDIFF() - returns difference between two dates */
SELECT DATEDIFF('2026-09-03', '2026-09-14') AS date_difference;



/* =========================================================
   4. DATE ADDITION FUNCTION
   ========================================================= */


/* DATE_ADD() - adds an interval to a date */
SELECT DATE_ADD('2026-09-03', INTERVAL 4 DAY) AS added_date;



/* =========================================================
   5. DATE SUBTRACTION FUNCTION
   ========================================================= */


/* DATE_SUB() - subtracts an interval from a date */
SELECT DATE_SUB('2026-09-03', INTERVAL 4 DAY) AS subtracted_date;



/* =========================================================
   6. DATE FORMAT FUNCTION
   ========================================================= */


/*
   DATE_FORMAT() - converts date into a formatted string

   %Y - 4 digit year
   %y - 2 digit year
   %m - month number
   %M - full month name
   %d - day of month
   %W - full weekday name
   %w - weekday number
   %H - hour (00-23)
   %h - hour (01-12)
   %i - minutes
   %s - seconds
   %p - AM/PM
*/


/* Month/Day/Year */
SELECT DATE_FORMAT(NOW(), '%m/%d/%y') AS form1;


/* Day-Month-Year Hour:Minute:Second */
SELECT DATE_FORMAT(NOW(), '%d-%m-%y %H:%i:%s') AS form2;


/* Hour:Minute:AM/PM */
SELECT DATE_FORMAT(NOW(), '%h:%i:%p') AS form3;



/* =========================================================
7. STRING TO DATE FUNCTION
   ========================================================= */


/* STR_TO_DATE() - converts string into date */
SELECT STR_TO_DATE('03 09 2026', '%d %m %Y') AS form4;