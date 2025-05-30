--1-- The total number of employees in the company
SELECT
	COUNT (*) AS Total_no_of_employees
FROM 
	employees_data;

--2-- The total number of employees per department
SELECT
	ed.DEPARTMENT_ID,
	jd.Job_title,
	COUNT (*) AS Total_employees_per_department
FROM
	employees_data AS ed
INNER JOIN
	job_data AS jd
ON ed.JOB_ID = jd.Job_id
GROUP BY
	ed.DEPARTMENT_ID,
	jd.Job_title;

--3-- The top 3 departments with the highest number of employees
SELECT
	TOP 3
	ed.DEPARTMENT_ID,
	jd.Job_title,
	COUNT (*) AS Total_employees_per_department
FROM
	employees_data AS ed
INNER JOIN
	job_data AS jd
ON ed.JOB_ID = jd.Job_id
GROUP BY
	ed.DEPARTMENT_ID,
	jd.Job_title
ORDER BY
	Total_employees_per_department DESC;

--4-- The oldest and newest employee (with hire date and all info about them)
SELECT
	*
FROM 
	employees_data
WHERE HIRE_DATE = (SELECT MIN(hire_date) FROM employees_data)
				OR
	  HIRE_DATE = (SELECT MAX(hire_date) FROM employees_data);

--5-- The oldest and newest employees in each department (using CTE and ROW NUMBER)
WITH Employees_CTE AS (
SELECT 
	ed.*,
	jd.job_title,
	ROW_NUMBER () OVER (PARTITION BY jd.job_title ORDER BY ed.hire_date ASC) AS Oldest,
	ROW_NUMBER () OVER (PARTITION BY jd.job_title ORDER BY ed.hire_date DESC) AS Newest
FROM
	employees_data AS ed
INNER JOIN 
	job_data AS jd
ON ed.JOB_ID = jd.Job_id
)
SElECT *
FROM Employees_CTE
WHERE Oldest = 1
	  OR
	  Newest = 1;

--6-- The total number of information technology programmers
SELECT
	COUNT (*) AS Total_IT_programmers
FROM
	employees_data AS ed
INNER JOIN
	job_data AS jd
ON ed.JOB_ID = jd.Job_id
WHERE
	jd.Job_title LIKE 'Information_technology_programmer';

--7-- The year difference between the oldest and newest hire date
SELECT
	DATEDIFF(YY, MIN(hire_date), MAX(hire_date)) AS Year_difference
FROM 
	employees_data;

--8-- Employees in various departments that earn below average salary
SELECT
	ed.Employee_id,
	ed.First_name,
	ed.Last_name,
	ed.Department_id,
	jd.Job_title,
	ed.Salary
FROM
	employees_data AS ed
INNER JOIN
	job_data AS jd
ON ed.JOB_ID = jd.Job_id
WHERE ed.SALARY < (SELECT AVG(salary) FROM employees_data);

--9--Update email column to lower case letters
UPDATE employees_data
SET EMAIL = LOWER(EMAIL);

--10-- Deleting the empty commission column from the employee data table
ALTER TABLE employees_data
DROP COLUMN COMMISSION_PCT; 

