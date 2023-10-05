-- 작다 , 크다 , 크거나 같다 작거나 같다
SELECT * FROM products WHERE Price < 10.00;

SELECT * FROM products WHERE Price > 10.00;
SELECT * FROM products WHERE Price >= 10.00;

SELECT * FROM products WHERE Price <= 10.00;

SELECT * FROM products WHERE Price = 10.00;

SELECT * FROM products WHERE not Price = 10.00;
SELECT * FROM products WHERE not Price = 10.00;
--  같지 않다는 not, ! 를 사용하면 된다
SELECT * FROM products WHERE Price != 10.00; -- 같지 않다
SELECT * FROM products WHERE Price <> 10.00; -- 같지 않다

SELECT * FROM customers WHERE CustomerName = 'Alfreds Futterkiste';
SELECT * FROM customers WHERE CustomerName < 'D';
SELECT * FROM customers WHERE CustomerName >= 'R';
SELECT * FROM customers WHERE CustomerName <= 'R';
SELECT * FROM employees;
SELECT * FROM employees WHERE BirthDate >= '1960-01-01';
SELECT * FROM employees WHERE BirthDate < '1960-01-01';
