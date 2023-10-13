SELECT CustomerName, Country, City FROM customers
UNION
SELECT SupplierName, Country, City, Address FROM suppliers;

-- 직원의 lastname과 firstname을 name이라는 하나의 컬럼으로 조회하시오....


SELECT LastName from employees;
SELECT FirstName FROM employees;
SELECT LastName Name FROM employees
UNION ALL
SELECT FirstName FROM employees;


-- Full OUTER Join

USE mydb1;
SELECT * FROM my_table44_a a Left Join my_table45_b b On a.col1 = b.col1;

SELECT * FROM my_table44_a a Right Join my_table45_b b On a.col1 = b.col1;

SELECT * FROM my_table44_a a Left Join my_table45_b b On a.col1 = b.col1
UNION
SELECT * FROM my_table44_a a Right Join my_table45_b b On a.col1 = b.col1;


-- LEFT OUTER join
