-- where은 레코드 선택 (솎아내기)
SELECT * FROM customers WHERE CustomerID = 1;
SELECT * FROM customers where CustomerID = 2;
SELECT * FROM customers WHERE Country = 'USA';
SELECT *
FROM customers
WHERE Country = 'Mexico';

SELECT * FROM customers WHERE Country ='mexico';
SELECT * FROM customers WHERE Country = 'MEXCICO'; -- 대소문자 구분 안함 (소속된 곳의 버전에 따라 다를 수 있음 - 유동적으로 적용)
SELECT * FROM customers WHERE Country = 'FRANCE';  -- 문자열은 '' 사용 . ""이건 (intellij의 경우 )불가능  숫자형식은 따옴표 없이
SELECT *  FROM customers where CustomerID = 3; -- 그런데 따옴표를 사용해도 무관
SELECT * FROM customers WHERE CustomerID = '3';

-- where 절이 레코드를 솎아낸다는 것*****

-- 예1) 영국(UK)에 사는 고객들 조회
SELECT * FROM customers WHERE Country = 'UK';
SELECT COUNT(*) FROM customers WHERE Country = 'UK'; -- 7
-- 예2) 1번 카테고리에 속한 상품들 조회 products
SELECT * FROM products WHERE CategoryID = 1;
-- 예3) Osaka 에 있는 공급자들 조회
SELECT * FROM suppliers WHERE City = 'Osaka'; -- 1명

-- 미국에 사는 고객의 이름들 조회
SELECT CustomerName FROM customers WHERE Country = 'USA';
-- 미국에 사는 고객의 이름과 고객번호 조회
SELECT CustomerID, CustomerName FROM customers WHERE Country = 'UK';
-- 예)  2번 카테고리에 있는 상품 명과 가격 조회
SELECT ProductName, Price FROM products WHERE CategoryID = 2;
-- 예) 일본에 있는 공급자의 이름과 전화번호 조회
SELECT SupplierName, Phone FROM suppliers  WHERE country = 'japan';
-- 예) 2번 카테고리의 이름 조회
SELECT  CategoryName
FROM categories
WHERE CategoryID = '2';
