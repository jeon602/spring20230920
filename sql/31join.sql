Use w3schools;


# 주문한 적 없는 고객을 출력하라
SELECT DISTINCT CustomerID FROM orders ORDER BY 1;
SELECT CustomerName FROM customers WHERE CustomerID NOT IN (select DISTINCT CustomerID from orders ORDER BY 1);

SELECT * FROM customers c join orders o ON c.CustomerID = o.CustomerID;
# inner조인 더하기 오른쪽 아이디 _

SELECT * FROM customers c LEFT JOIN orders o On c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL;


