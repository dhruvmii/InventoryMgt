--Ques17 Calculate the median salary
WITH RankedSalaries AS (
    SELECT salary,
           RANK() OVER (ORDER BY salary) AS r,
           COUNT(*) OVER () AS total_rows
    FROM Employees
)
SELECT AVG(salary) AS median_salary
FROM RankedSalaries
WHERE r = (total_rows + 1) / 2 OR r = (total_rows + 2) / 2;























