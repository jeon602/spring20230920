SELECT * FROM customers;
SELECT CustomerName, Country FROM customers WHERE Country = 'Germany';
SELECT CustomerName, Country FROM customers WHERE NOT Country = 'Germany';
-- 독일 이 아닌 .. 고객[ 91- 11 = 80 (독일이 아닌)
-- 1) 1번 카테고리에 속하지 않는 상품들 조회
SELECT * FROM products WHERE not CategoryID = 1;  -- 65

-- 2) Japan에 있지 않는 공급자들 조회

SELECT * FROM suppliers;
SELECT * FROM suppliers WHERE NOT Country = 'Japan'; -- 27


SELECT