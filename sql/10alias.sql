# backtick으로 숫자
SELECT  EmployeeID,CONCAT(FirstName, '',LastName)`full name` FROM employees;

# 공급자의 이름, supplietName  주소 address city country
# 전화번호 별칭 phone-=  phone number 조회
# supplierName address phone number
# 오전 10:41 2023-10-06
SELECT * FROM products;
SELECT * FROM categories;
SELECT p.ProductName,c.CategoryID
FROM products AS p JOIN categories AS c
    ON p.CategoryID = c.CategoryID


