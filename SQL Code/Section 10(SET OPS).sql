SELECT Job_ID,Department_ID
FROM JOBS

UNION

SELECT Jobs,Department_ID
FROM DEPARTMENTS;


 
SELECT (Department_ID)
FROM Departments

MINUS

SELECT (Department_ID)
FROM Employees;


-- 


