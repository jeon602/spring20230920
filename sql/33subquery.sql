use w3schools;
SELECT Price from products where ProductName = 'Ipoh coffee';
SELECT ProductName,Price from products where Price > 46.00;

SELECT ProductName, Price From products
where price > (select Price FROM products where ProductName = 'Ipoh coffee');

SELECT BirthDate from employees where LastName = 'Leverling';
SELECT LastName, FirstName, BirthDate from employees where BirthDate < '1963-08-30';

SELECT LastName, FirstName, BirthDate from employees where BirthDate < (SELECT BirthDate from employees where LastName= 'Leverling');  -- 위 코드와 같은 내용 11 줄은 서브쿼리를 이용한 코드,

-- subquery는 외부에 사용되는 쿼리가 쿼리의 조회 결과가 행1 열도1인 것(단일 값)인 것.
-- 행 1개 열 1개 인 ....  equal. 부등호 사용 가능 하나의 값을 대신하는 쿼리 ,
SELECT BirthDate from employees where LastName = 'Leveling';


-- 행 여러게 열 1개
SELECT ShipperID from orders WHERE OrderDate = '1996-07-08';

SELECT CustomerName FROM customers where Country = 'mexico';


-- 행과 열이 여러 개인 ...
SELECT CustomerID, CustomerName FROM customers WHERE Country = 'mexico';



-- 예 ) 행 1개 열 1 개: 'Tofu' 상품을 공급하는 공급자 명 출력
SELECT SupplierID from products where ProductName = 'tofu';

SELECT SupplierID, SupplierName from suppliers WHERE SupplierID = 6;
SELECT SupplierID, SupplierName from suppliers WHERE SupplierID = (SELECT SupplierID from products where ProductName = 'tofu');

SELECT p.SupplierID, s.SupplierName from suppliers s join products p On s.SupplierID where p.ProductName = 'tofu';


-- 여러 행 열1 개 : 멕시코 고객이 주문한 일자들 조회
SELECT CustomerID from customers where Country = 'mexico';
SELECT OrderDate FROM orders where CustomerID IN (2,3,13,58,80);
SELECT OrderDate FROM orders where CustomerID IN (SELECT CustomerID from customers where Country = 'mexico');

SELECT CustomerID From customers where Country = 'china';



# 1번 카테고리에 있는 상품이 주문된 주문번호 (Orderdetails products

# SELECT OrderDetailIS from products where ProductID = '1';
# select OrderDetailID

SELECT ProductID FROM products where CategoryID = 1;
SELECT * FROM orderdetails where ProductID in (select ProductID from products where CategoryID = 1);
-- 1번 카테고리에 있는 상품이 주문된 날짜를 확인하고 싶으면,
SELECT OrderDate from orders
where OrderID in (select OrderID from orderdetails where ProductID in(select  ProductID from products where CategoryID));


SELECT *
FROM orders o join orderdetails od On o.OrderID = od.OrderID
    join products p On od.ProductID = p.ProductID
where p.CategoryID = 1;


