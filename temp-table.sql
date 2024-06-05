-- Temp table let me to create temporary table to use it only in my memory

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50), 
last_name varchar(50), 
fav_anime varchar(100) 
);
-- checking the temporary table
SELECT * FROM temp_table;

-- adding some values to it
INSERT INTO temp_table
values ('Ulrich', 'Gero', 'Naruto Shippuden');

-- checking the values that has been added into the talbe

SELECT *
FROM temp_table;

-- adding data from real table into my temporary table
-- and by doing this, I will duplicate the data.
CREATE TEMPORARY TABLE salary_over_50k
SELECT * FROM employees_salary
WHERE salary >= 50000;
-- checking the data
SELECT * FROM salary_over_50k; 

CREATE TEMPORARY TABLE salary_over_40k
SELECT * FROM employees_salary
WHERE salary < 55000;

SELECT * FROM salary_over_40k;