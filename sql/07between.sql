# between
SELECT * FROM products where Price>= 10 AND Price<= 13;
SELECT * FROM products WHERE Price BETWEEN  10 AND 13;
#  등호를 사용한 것과 같이 값 포함됨

SELECT * FROM products WHERE Price >= 10 AND Price < 13;
SELECT * from products where Price BETWEEN 10 AND  12.99;

# 문자, 날짜 형식에도 사용이 가능하다.
SELECT * FROM products where Price between '10' AND '13';
SELECT * FROM customers where CustomerName between 'a'and 'b';
SELECT * from orders where OrderDate between '1996-01-01' AND '1996-12-31';

# price 가 30~40 포함) 사이의 상품 조회
#  1998년 2월에 주문한 주문조회
# 1958년 9월에 태어난 직원 조회

SELECT * FROM products where Price between '30' AND '40'; -- 13
SELECT * from orders where OrderDate between '1998-02-01' and '1998-02-28'; -- 54
SELECT * from employees where BirthDate between '1958-09-01' and '1958-09-30'; -- 1명
# SELECT * from employees where BirthDate between '1958-09-01' and '1958-09-30'; -- 1명 날짜에 물음 표




