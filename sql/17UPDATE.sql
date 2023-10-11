# 20231011 9시 45분  UPDATE SET FORM
SELECT *from products; -- 바꾸고자 하는 레코드를 where 로 넣고,
SELECT *from products WHERE ProductID; -- 바꾸고자 하는 레코드를 where 로 넣고,
UPDATE products SET ProductID = '차이즈',
                    Unit = '10박스'
                    Price = 36.00
                WHERE ProduteID 1;

#     1번 고객의 이름 수정하기
#     5번 직원이 notees 변경하기
#     1번 공급자의 전화번호 , 주소 변경하기
update suppliers set
                     Phone = '0109999888',
                     Address ='신촌'
        WHERE SupplierID = 1;
# 곱하기 2 내개 변경할 상품이 맞는지 확인 할 것.
SELECT * FROM products;
SELECT * FROM products WHERE ProductID = 1;

UPDATE products
SET ProductName = '차이즈',
    Unit = '10 박스',
    Price = 36.00
WHERE ProductID = 1;

UPDATE products
SET ProductName = '두부김치'; -- where 꼭 쓸 것!!!!!!

-- 예) 11번 고객의 이름 수정하기
SELECT * FROM customers
WHERE CustomerID = 11;

UPDATE customers
SET
    CustomerName = '손흥민'
WHERE CustomerID = 11;
-- 예) 5번 직원이 notes 변경하기
SELECT * FROM employees
WHERE EmployeeID = 5;

UPDATE employees
SET notes = '새로운 설명들!@!@!@'
WHERE EmployeeID = 5;
-- 예) 1번 공급자의 전화번호, 주소 변경하기
SELECT * FROM suppliers
WHERE SupplierID = 1;

UPDATE suppliers
SET
    Phone = '01099998888',
    Address = '신촌'
WHERE SupplierID = 1;

--
SELECT * FROM products
WHERE CategoryID = 1;

UPDATE products
SET Price = Price * 2
WHERE CategoryID = 1;
