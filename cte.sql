-- CTE
-- Let first use some aggragate function to check the salary by gender

SELECT dem.gender, 
AVG(salary), 
MAX(salary), 
MIN(salary), 
COUNT(salary) 
FROM employees_demogra dem
JOIN employees_salary sal
  ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- Applying CTE to the query

WITH CTE_example AS (
SELECT dem.gender, 
AVG(salary) avg_sal, 
MAX(salary) max_sal, 
MIN(salary) min_sal, 
COUNT(salary) 
FROM employees_demogra dem
JOIN employees_salary sal
  ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT avg(avg_sal)
FROM CTE_example
;