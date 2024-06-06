SELECT *
FROM employees_salary;

SELECT *
FROM employees_demogra;
-- triggers and events

DELIMITER $$
CREATE TRIGGER employee_insert -- trigger name
	AFTER INSERT ON employees_salary -- table name
    FOR EACH ROW
BEGIN
	INSERT INTO employees_demogra (employee_id, first_name, last_name)
    VALUE (New.employee_id, New.first_name, New.last_name);
END $$
DELIMITER ;

INSERT INTO employees_salary (employee_id, first_name, last_name, salary, role)
VALUE(21, 'Amel', 'Gero', 75000, 'CEO'); 


-- EVENTS
-- Events are like an update that happend when something occur
DELIMITER $$
CREATE EVENT retire_employee
ON SCHEDULE EVERY 30 SECOND
DO
BEGIN
DELETE FROM employees_demogra
WHERE age >= 60;

END $$
DELIMITER ;
