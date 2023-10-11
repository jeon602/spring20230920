SELECT * FROM customers;
SELECT * FROM employees ORDER BY BirthDate LIMIT 2;
SELECT * FROM products ORDER BY Price DESC LIMIT 10;


#가장 어린 직원 3명 조회
SELECT * FROM employees ORDER BY BirthDate DESC LIMIT 3;
#2번 카테에서 가장 저렴한 상품
SELECT * FROM products WHERE CategoryID =2 ORDER BY Price LIMIT 1;


# limit에 n:n 개
# limit에 n,m n개 부터 m개 n은 0부터
SELECT ProductName,Price FROM products ORDER BY  Price LIMIT 0,3;
SELECT ProductName,Price FROM products ORDER BY  Price LIMIT 1,3; -- 1번 부터 3개
SELECT ProductName,Price FROM products ORDER BY  Price LIMIT 3,3; -- 3번 부터 3개......
# 페이지를 나누기 할 때 사용한다

SELECT CustomerID,CustomerName FROM customers ORDER BY CustomerID; -- 91개의 데이터 중에서 예) 게시판 중에서 상위 n개만 보여주고 3번째에서는 n0개 다음부터 보여주려고 할 때
SELECT CustomerID,CustomerName FROM customers ORDER BY CustomerID limit 0,10;
SELECT CustomerID,CustomerName FROM customers ORDER BY CustomerID limit 10,10; -- 2페이지 10개
SELECT CustomerID,CustomerName FROM customers ORDER BY CustomerID limit 20,10; -- 3페이지 10개
SELECT CustomerID,CustomerName FROM customers ORDER BY CustomerID limit 90,10; -- 마지막 페이지는 10개

#공급자를 한 페이지에 5개씩 공급자 번호 순으로 보여줄 때 3페아지 한 코드
SELECT SupplierID FROM suppliers WHERE SupplierID ORDER BY SupplierID DESC LIMIT 10,5;
SELECT  *FROM suppliers ORDER BY SupplierID LIMIT 10,5;
# 한페이지가 n개의 ㅣ레코드를 보여주면 m번 째 페이지 조회
# LIMIT(m-1)*n,n





