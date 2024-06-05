-- create a stored procedures to resuse a query later
CREATE PROCEDURE last_salary()
SELECT * 
FROM employees_salary
WHERE salary < 50000
;
CALL last_salary();