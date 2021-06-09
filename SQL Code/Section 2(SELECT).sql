-- Query to display emp_id, job_id, hire_date, dept_id fro each employee --

SELECT EMPLOYEE_ID, JOB_ID, HIRE_DATE, DEPARTMENT_ID
FROM EMPLOYEES;

-- Query to display all the coulumns of the Regions table --
SELECT * FROM REGIONS;


SELECT First_Name||' '||Last_Name AS "Name" , Salary AS " Monthly Income ", Salary*12 AS "Yearly Income"
FROM EMPLOYEES;


SELECT Last_Name, Salary, Department_Id, Salary*12 AS "Annual Salary", Commission_Pct, Salary*COMMISSION_PCT
FROM EMPLOYEES;

-- QUERY TO DISPLAY FULL NAME(LAST NAME + FIRST NAME), SALARY, DEPT_ID FOR ALL EMPLOYEES --

SELECT Last_Name|| ' ' ||First_Name AS "Full Name", SALARY, DEPARTMENT_ID
FROM EMPLOYEES;

-- QUERY TO DIPLAY UNIQUE JOB_ID FROM EMPLYEES TABLE--
SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES
ORDER BY 1 ASC;

-- QUERY TO DESCRIBE EMPLOYEES TABLE--
DESCRIBE EMPLOYEES;

SELECT Job_Id, Last_Name
FROM EMPLOYEES;