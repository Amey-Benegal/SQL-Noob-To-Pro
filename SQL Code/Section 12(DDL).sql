-- CREATING TABLES AND PLAYING WITH THEM --

CREATE TABLE Dept (
            
            Deptid NUMBER(7),
            DeptName VARCHAR2(20)
            
            );
            
DESCRIBE Dept;

CREATE TABLE Emp (

            Emp_ID NUMBER(8),
            Last_Name VARCHAR2(10),
            Hire_Date DATE DEFAULT SYSDATE,
            Dept_ID NUMBER(4)
            
            );
            
DESCRIBE Emp;

INSERT INTO Emp (Emp_ID,Last_Name,Dept_ID) VALUES ( 20, 'Bbob', 7);
SELECT * FROM Emp;

SELECT DEPARTMENT_ID,SALARY
FROM EMPLOYEES
WHERE SALARY > 3000
GROUP BY DEPARTMENT_ID, Salary;
