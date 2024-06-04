-- Windows function

SELECT dem.gender,
dem.first_name, 
dem.last_name, 
SUM(salary) OVER(partition by gender)
FROM simpleDB.employees_salary sal
JOIN simpleDB.employees_demogra dem
 ON sal.employee_id = dem.employee_id;