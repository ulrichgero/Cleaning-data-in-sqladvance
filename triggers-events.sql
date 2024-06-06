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