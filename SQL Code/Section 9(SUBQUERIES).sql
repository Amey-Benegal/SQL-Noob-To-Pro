-- SUBQUERIES --

-- DISPLAY ALL EMPLOYEE NAMES, HIRE_DATES AND DEPT_IDs hired after Emp Name Lee --

SELECT Last_name, Hire_Date, Department_ID
FROM EMPLOYEES
WHERE Hire_Date > (SELECT Hire_Date
                   FROM Employees
                   WHERE Last_Name = 'Lee');
                   
-- DISPLAY LAST_NAME, SALARY, DEPT_NAME, FOR ALL EMPLOYEES WHO EARN > = AVG SALARY ORDER BY SALARY --

SELECT E.Last_Name, E.Salary, D.Department_Name
FROM Employees E
JOIN Departments D USING (Department_ID)
WHERE Salary >= (SELECT AVG(Salary)
                 FROM Employees)
ORDER BY 2;

-- DISPLAY ALL THE NAMES OF EMP, SALARY, EMAIL WHO WORK WITH EMPLOYEES HAVING THEIR LAST NAME STARTING WITH 'J' --

SELECT Last_Name, Salary, Email
FROM Employees
WHERE DEPARTMENT_ID IN (SELECT Department_ID
                      FROM Employees
                      WHERE Last_Name LIKE 'J%');
                      
-- DISPLAY THE LIST OF EMPLOYEES WHOSE SALARY IS MORE THAN THE SALARY OF EMPLOYEES IN DEPT 110 --

SELECT Last_Name, Salary, Department_ID
FROM Employees
WHERE Salary > ANY(SELECT  Salary
                    FROM Employees
                    WHERE Department_ID = 110)
                    ORDER BY 3;

 -- QUERY TO DISPLAY LAST_NAME, JOB_ID , DEPT_ID OF ALL EMPL WHOSE JOB_ID AND DEPT_ID IS SAME AS LEE's
 
 SELECT Last_Name, Job_ID,Department_ID
 FROM Employees
 WHERE (Job_ID,Department_ID) = (SELECT Job_ID,Department_ID
                                 FROM Employees
                                 WHERE Last_Name = 'Lee');


