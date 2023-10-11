SELECT CustomerName, City, Country FROM customers where Country = 'spain';
SELECT CustomerName,City,Country FROM customers WHERE City = 'Madrid';
SELECT CustomerName,City,Country FROM customers WHERE City = 'Madrid' and Country = 'spain';
# SELECT CustomerName,City,Country FROM customers WHERE City = 'Madrid' and Country != 'spain'; 존재할 수 없음
# SELECT CustomerName,City,Country FROM customers WHERE City != 'Madrid' and Country = 'spain'; 스페인이지만, 마드리드는 아닌 고객, ----값 호출 가능.
SELECT CustomerName,City,Country FROM customers WHERE City != 'Madrid' and Country != 'spain'; -- 스페인도 마드리드도 아닌, 고객 =====> 스페인이 아닌 사람.91-5 = 86

SELECT CustomerName,City,Country FROM customers WHERE NOT (City = 'Madrid' and  Country= 'Spain'); -- 88명
SELECT CustomerName, City, Country FROM customers where City != 'Madrid' OR Country != 'Spain';
SELECT CustomerName, City, Country FROM customers WHERE City ='Madrid' OR Country = 'Spain';
SELECT CustomerName, City, Country FROM customers WHERE City ='Madrid' OR Country = 'UK'; -- 오후 2:12 2023-10-05

SELECT * FROM products WHERE Price>=10.00 AND Price <=20.00;

SELECT  * FROM customers where CustomerName >= 'c' and CustomerName < 'd';
select * from employees where BirthDate >= '1958-01-01' and BirthDate <'1959-01-01';




# 스웨덴이나 이탈리아에 있는 공급자들 조회
# 1963년 8월생 직원 조회
# 가격이 100.00~200.00포함 사이의 상품 조회
# 1997년에 주문한 주문  조회

select *from products;
select * from suppliers WHERE Country = 'Sweden' or Country = 'Italy'; -- 4명
select * from employees WHERE BirthDate >= '1963-08-01' and BirthDate <'1963-09-01';
SELECT * from products where Price >=100 and Price <= 200;
SELECT * from orders where OrderDate <'1998-01-01'and OrderDate>='1997-01-01';

# 여러 연산자 조합시 괄호 사용해서 우선순위 결정해줄 것
# 10달러 미만, 100달러 이상
SELECT *FROM products where Price <10 OR Price >= 100 AND CategoryID = 1;
# select * from products where (Price<10 OR Price>= 100 AND (CategoryID ) = 1;
