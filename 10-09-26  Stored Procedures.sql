USE world;

-- Procedures without parameters

DELIMITER //

CREATE PROCEDURE show_countries()
BEGIN
    SELECT name, continent, population
    FROM country;
END //

DELIMITER ;

CALL show_countries();


-- IN parameter
-- IN parameter data goes outside to procedure

DELIMITER //

CREATE PROCEDURE get_country(IN country_code CHAR(3))
BEGIN
    SELECT name, continent, population
    FROM country
    WHERE code = country_code;
END //

DELIMITER ;

CALL get_country('USA');


-- OUT parameter

DELIMITER //

CREATE PROCEDURE get_population(
    IN country_code CHAR(3),
    OUT total_population BIGINT
)
BEGIN
    SELECT population
    INTO total_population
    FROM country
    WHERE code = country_code;
END //

DELIMITER ;

-- Create a variable
SET @total_pop = 0;

CALL get_population('JPN', @total_pop);

SELECT @total_pop;


-- INOUT parameter

DELIMITER //

CREATE PROCEDURE increase_amount(INOUT amount INT)
BEGIN
    SET amount = amount + 1000;
END //

DELIMITER ;

SET @amount = 9000;

CALL increase_amount(@amount);

SELECT @amount;