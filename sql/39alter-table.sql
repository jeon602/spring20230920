use w3schools;

# alter_table 테이블 수정 : 대부분 컬럼 추가 , 변경 , 삭제 (삭제는 드문 경우 )
#  컬럼의 제약ㅣ NOTNULL UNIQUE , PRIMART KEY DEFAULT FOREIGN KEY 의 경우 컬럼을 수정할 때 주의해야 할 점


ALTER TABLE products
ADD COLUMN col1 INT;
ALTER TABLE products
ADD COLUMN col2 VARCHAR(10);

ALTER TABLE products ADD COLUMN col3 VARCHAR(10) AFTER ProductName;
#

ALTER TABLE products
ADD COLUMN  col4 VARCHAR(10) FIRST ;

ALTER TABLE products
ADD COLUMN col5 INT(10)
    NOT NULL DEFAULT 1 REFERENCES  employees(EmployeeID);
-- 직원 테이블에 salary 컬럼 마지막에 추가  + data type은 dec(10,20) null 허용 안하고 기본값은 0.00
ALTER TABLE employees
ADD COLUMN salary DEC(10,2) NOT NULL DEFAULT 0.00;
ALTER TABLE products
    DROP COLUMN col1;


-- 컬럼 삭제


-- 예   products 테이블에서 col2 컬럼 삭제
 ALTER TABLE products
 DROP COLUMN  col2;

-- 컬럼 변경
ALTER TABLE products
MODIFY COLUMN col3 INT;
DESC products;

INSERT INTO products(col4)
value ('pizza');
SELECT * FROM products ORDER BY ProductID DESC ;

ALTER TABLE products
MODIFY COLUMN col4 INT; -- XX

ALTER TABLE products
    MODIFY COLUMN col4 varchar(10);


ALTER TABLE products
MODIFY COLUMN col4 varchar(3);


