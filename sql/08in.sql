-- In 하나라도 같으면

SELECT * from customers where Country = 'UK'or Country = 'Spain' or Country = 'italy';
SELECT * from customers where Country in ('UK','Spain','Italy');

# 카테고리 3.4에 해당하는 상품들
# 1996년 7월 4일 5일에 주문한 주문들
# 런던이나 마드리드, sevilla 에 있는 고객들

SELECT * FROM products WHERE CategoryID IN (3,4);
SELECT * FROM orders WHERE OrderDate between '1996-07-04' and '1996-07-05';
# 런던이나 마드리드, sevilla 에 있는 고객들 --------------------다시 풀어보기


