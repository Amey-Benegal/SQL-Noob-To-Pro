CREATE TABLE My_Emp(
            Emp_ID NUMBER(7),
            Name VARCHAR(20),
            Salary NUMBER(4),
            Hire_Date DATE
            )
            
INSERT INTO My_Emp VALUES ( 1, 'John', 3000, '21-03-20');
INSERT INTO My_Emp ( Emp_ID ,Name,Salary ,Hire_Date) VALUES ( 2, 'Sonny', 7000, '27-05-20');
INSERT INTO My_Emp VALUES ( 3, 'Tom', 5240, SYSDATE);
INSERT INTO My_Emp VALUES ( 5, 'Jhonn', 3500, '21-03-19');

UPDATE My_Emp
SET Salary = Salary+500
WHERE Emp_ID = 1;


SAVEPOINT Before_Delete;
DELETE FROM My_Emp;
ROLLBACK TO SAVEPOINT Before_Delete;
SELECT * FROM My_Emp;


COMMIT;

CREATE TABLE test(
            Emp_ID NUMBER(7) PRIMARY KEY,
            Name VARCHAR(20) NOT NULL,
            Salary NUMBER(4),
            Hire_Date DATE
            )
            TRUNCATE TABLE test;
            
            DESCRIBE test;