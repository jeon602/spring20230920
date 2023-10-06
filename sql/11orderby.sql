SELECT * FROM employees;
SELECT *
FROM employees
ORDER BY BirthDate;
# SELECT EmployeeID, BirthDateFROM employees;

























# 고객을 국가명 오름차순으로 조회
SELECT Country FROM customers Order By Country ASC;
# 가격이 비싼 상품이 먼저 조회되도록 코드 작성

SELECT * FROM products WHERE CategoryID = 1 ORDER BY Price DESC;

# 가장 어린 직원이 먼저 조회되도록
SELECT * FROM employees where BirthDate ORDER BY BirthDate DESC;










































