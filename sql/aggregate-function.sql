use w3schools;
#  집계함수 , 집합함수, 그룹함수
SELECT * FROM products;
-- MAX 최대값
SELECT MAX(Price) from products; -- 263.5

SELECT * FROM products ORDER BY Price DESC;-- MAX 그룹함수가 여러레코드 중에
SELECT ProductName, MAX(Price) FROM products;

-- 금요일 subquery

SELECT * FROM products where Price = (SELECT MAX(Price) FROM products); -- 그룹함수에서 사용한 컬럼과 price의 컬럼이 같다고 생각하면 안된다.

-- MIN 최소값
SELECT MIN(Price) FROM products; -- 2.50
SELECT * FROM products WHERE Price= (SELECT MIN(Price) FROM products);


-- 예 ㅣ 가장 어린 직원 명 조회
-- 예 ㅣ 가장 나이 많은 직원 명 조회
SELECT MAX(BirthDate) FROM employees; -- 2020-01-01
SELECT MIN(BirthDate) from employees; -- 1952-02-19

select * FROM employees WHERE BirthDate = (SELECT MIN(BirthDate)from employees);
select * FROM employees WHERE BirthDate = (SELECT MAX(BirthDate)from employees);

-- COUNT 갯수
SELECT * FROM employees;-- 13

SELECT COUNT(EmployeeID) FROM employees;
SELECT COUNT(LastName) FROM employees;
SELECT COUNT(FirstName) FROM employees;
-- null은 모든 집계함수에서 포함하지 않는다.... null은 다시 메뉴얼을 확인 할 것,,,,
INSERT INTO employees(LastName) value ('흥민');
SELECT * FROM employees ORDER BY 1 DESC;
SELECT MIN(BirthDate) FROM employees;
SELECT MAX(BirthDate) FROM employees;


INSERT INTO products (ProductName) value ('coffee');
SELECT * FROM products ORDER BY 1 desc;
SELECT MIN(Price) from products; -- 2.50

-- null이면 0으로 계산하도록
SELECT MIN(IFNULL(Price,0)) from products; -- 0.00

SELECT *  FROM products where IFNULL(Price,0) = (SELECT MIN(IFNULL(Price,0))FROM products);


-- SUM: 합

SELECT * FROM products;
SELECT SUM(Price) from products; -- null은 포함XX

#  ORDERDETAILS
SELECT SUM(Od.Quantity) FROM orders o JOIN orderdetails od ON o.OrderID = od.OrderID where o.OrderDate = '1996-07-04';  -- 27개
-- 예 96년 7월 4일의 매출액 (producttable참고) 구하기
SELECT * FROM products;
SELECT SUM(Price) FROM products;



# SELECT o.OrderDate, p.ProductName, p.Price
SELECT SUM(p.Price * od.Quantity)
FROM orders o JOIN orderdetails od ON o.OrderID = od.OrderID JOIN products p ON  od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

# AVG : 평균

SELECT AVG(Price) FROM products; -- 29.351447
SELECT SUM(Price) FROM products; -- 2230.71
SELECT COUNT(ProductID) from products; -- 79
SELECT  Count (Price) from products; -- 76



