-- SELECT : 데이터 조회 (읽기, 검색, 가져오기 ) 테이블 형식으로 저장되어 있음 행 91개 열 7?
SELECT * FROM w3schools.customers;
SELECT * FROM w3schools.employees; -- 6 column
SELECT * FROM w3schools.products; -- row : 77 column :

SELECT * FROM categories;
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM shippers;
SELECT * FROM suppliers;

-- SELECT 다음에는 column 명을 나열,
-- * FROM 다음에는 table 명을 나열하면 된다.
-- 총 7개의 열 중에

SELECT CustomerID, CustomerName, Country
FROM customers;
SELECT LastName, FirstName
FROM employees;
-- 전체 컬럼을 조회할 때

-- 예1) 직원(emploees)의 lastname , firstname 조회
SELECT CustomerName, Country, CustomerID
FROM customers;

--  예2) 상품(product)의 이름(productName), 단위 (unit),price 조회
SELECT ProductName, Unit, Price
FROM products;
select * from products;

-- 예3) 공급자 (suppliers)의 이름 (supplierName), address 국가 country 조회
SELECT SupplierName, Address, Country
FROM suppliers;

-- 고객테이블의 국가 컬럼 조회
SELECT Country from customers;

-- 중복된 데이터는 한 번 만 나 오 게 하 고 싶 으 면 DISTINCT
SELECT DISTINCT Country FROM customers; -- 21개

SELECT City, Country FROM customers; -- 91개
SELECT DISTINCT City, Country FROM customers; -- 69개 w2schools - count - > 행의 수

SELECT COUNT(Country) FROM customers; -- 91
SELECT COUNT(DISTINCT Country) FROM customers; -- 21
-- 전체 행의 수를 알 고 싶 으 면
SELECT COUNT(*) FROM customers; -- 91
SELECT COUNT(*) FROM employees; -- 9
SELECT COUNT(*) FROM suppliers; -- 29

-- 예1 _  공급자들이 있는 나라 수 suppliers's country
SELECT COUNT(Country) FROM suppliers; -- 29
-- 예2 -  주문 건수  orders 건수
SELECT COUNT(*) FROM orders; -- 830
-- 예3 - 몇 개의 카테고리가 존재하는 지 .
SELECT COUNT(*) FROM categories; -- 8
-- 예4 - 고객이 있는 도시의 수
SELECT COUNT(DISTINCT City) FROM customers; -- 69



