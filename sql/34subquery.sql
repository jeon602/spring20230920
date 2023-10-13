use w3schools;

-- 상관쿼리(: 외부쿼리의 컬럼이 내부쿼리에 사용될 때)와
-- 비상관쿼리(: 외부쿼리의 컬럼이 내부쿼리에 사용되지 않을 때)로 구분,,, 33번sql에서 한 것들이 비상관쿼리..
-- 각 공급자가 있는 나라의 고객수는?


SELECT * FROM suppliers;


SELECT COUNT(*) FROM customers WHERE Country = 'UK';

#  윗 코드를 비상관 쿼리로 바꾸면,,,
SELECT COUNT(*)FROM customers WHERE Country = (SELECT Country FROM suppliers WHERE SupplierID = 1);
SELECT COUNT(*)FROM customers WHERE Country = (SELECT Country FROM suppliers WHERE SupplierID = 2);
SELECT COUNT(*)FROM customers WHERE Country = (SELECT Country FROM suppliers WHERE SupplierID = 3);



SELECT
     (SELECT COUNT(*) FROM customers WHERE Customers.Country =s.Country )
FROM suppliers s;
-- 공급자의 쿼리  s에 컨트리가 들어감.

SELECT
    s.suppierID,(SELECT COUNT(*) FROM customers WHERE Customers.Country =s.Country ) AS 'Number Of Customers'
FROM suppliers s;

-- 예제 각 직원보다 나이가 많은 직원의 수 (LastName, NumerOfREmp)
SELECT * FROM employees;

# SELECT s, (SELECT (*) FROM employees WHERE employees.LastName = a.LastName )AS 'Number OF Employees' FROM employees a;
SELECT LastName,(SELECT Count(*) FROM employees e2 where e1.Birthdate> e2.BirthDate) NumberOFEmp FROM employees e1;


-- leetcode Employees Earning Moer than THeir MAnger




SELECT salary (SELECT (*)FROM  employees ee where ee.salary >em.salary)  salary FROM employees em;