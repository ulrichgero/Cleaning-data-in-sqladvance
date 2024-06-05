-- create a stored procedures to resuse a query later

-- create a procedure to check who earns the smaller salary
CREATE PROCEDURE last_salary()
SELECT * 
FROM employees_salary
WHERE salary < 50000;

CALL last_salary();

-- storing two different procedure
CREATE PROCEDURE last_salary2()
SELECT * 
FROM employees_salary
WHERE salary < 50000;
SELECT *
FROM employees_salary
WHERE salary >= 50000;
CALL last_salary2();
-- using the delimiter to store more procedure
DELIMITER $$
CREATE PROCEDURE last_salary3()
BEGIN
SELECT *
	FROM employees_salary
	WHERE salary < 50000;
	SELECT *
	FROM employees_salary
	WHERE salary >= 50000;
END $$ -- end of my delimiter that starts with $$ 
DELIMITER ; -- to change my delimiter back to semi-colon

CALL last_salary3();