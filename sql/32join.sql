use w3schools;
SELECT * FROM employees e1 JOIN employees e2;
SELECT e1.LastName, e1.BirthDate, e2.LastName, e2.BirthDate
FROM employees e1 JOIN employees e2
WHERE e1.BirthDate <e2.BirthDate
AND e2.LastName = 'Leverling';



-- Ipoh coffee 보다 비싼 상품 명 조회
SELECT * FROM products where ProductName = 'Ipoh Coffee';

Select ProductID, ProductName,Price FROM products
where ProductName = 'Ipoh Coffee';
SELECT ProductID,ProductName, Price FROM products where Price >46.00;
SELECT p1.ProductId, p1.ProductName, p1.Price from products p1 Join products p2 WHERE p1.Price>p2.Price AND p2.ProductName = 'Ipoh Coffee';


