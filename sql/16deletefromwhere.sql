# DELETE FROM  TableName WHERE 조건 + where절 꼭 !!!!!!확인 또 확인,,,,

SELECT * FROM employees where LastName = '손';-- 눈으로 꼭 체크하고 (삭제하려는 데이터가 있는지 , 맞는지)
DELETE FROM employees where LastName ='손';
-- 예) 직원테이블에 입력한 레코드 지우기
-- 예) 고객테이블 - 상품 테이블 (20231010 화요일)  상품과 직원 레코드 지워보기

# select * From employees where EmployeeID = '5';
# DELETE FROM employees where EmployeeID = '5';
# 꼭 삭제할 데이터 확인 후 delete from ((TableName))

# SELECT * FROM products where ProductName = '';
# DELETE FROM products where ProductName = '';
CREATE TABLE Persons (
                         PersonID int,
                         LastName varchar(255),
                         FirstName varchar(255),
                         Address varchar(255),
                         City varchar(255)
);